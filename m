Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 124795358A5
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 07:09:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC89C3845E7
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 01:09:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653628147; bh=YvoU/AFtT1iuKQ8ckFkWL0jQYEE2s1HL9TCrVytV9IE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YkKxmBJPL2N9HUXqImmS6xpn3XTgAVA/GFMV6gShQzveURNhBvnwds95GYcWdGVDA
	 bBhiHTuBhQLH+VZonnGPuTRjuuRt2fjIEEBplJiiT0KVBB6luthONcwdrhMUXAH2Mz
	 Ivu37T1vQCCnF3zv8eSSepbYtZ4ENBDDLLRCZEBNaK5A0nN95xDy2m+numf/f04gtj
	 5aSd5VsNUKK8AZfhASnFNMcRG84rlZG4J+xxiYCt//lqeRuRLpIesXQWkwMVYM4WsF
	 j2aFkfNsbUIRupkJToGb5Ez6TPxOH2jGWtwKWotiRpZ9jxDiReAmE8TJSCPdgw6h1K
	 d7TABRbzmcJWA==
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B3D33844F0
	for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 01:08:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="nVhRCfEg";
	dkim-atps=neutral
Received: by mail-il1-f173.google.com with SMTP id l13so1758838ilj.0
        for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 22:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=xyauNsyl0OS1J6ngv514MWT0MfxXQTg9dhKI00Xa1Tk=;
        b=nVhRCfEgXLhOtQRC1Zuml4UeO7BKzOducBcZ+Xru1OowxQ4l8zHpn1vZ5LynWbvUuT
         mVP+dhgTpAXDTagxVmGUF+Ce75c+caWXYa5G2lMA5TUpNtesTdQwiQXWGeOJNPZP9K4O
         IR0vXNnpn/dOADPdTxP/mECexDGV+vqL/EuSu4husx9SX4HmbT7S5YunxGeXXvEfqUNX
         8tPgpBBcr512IwsS2DLG2QkqxWyoHBKmlkytkP0dfjzhO31URVkv63GgbZl/W1zGhEyj
         1CBtFaCC29h2qYuiy9nOM3EctLFYfDWcgNT/jRpFdDmpXD/HKWSRYQw1u9gFrDT+A3H3
         V3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xyauNsyl0OS1J6ngv514MWT0MfxXQTg9dhKI00Xa1Tk=;
        b=h1Ru8cTwROYP8hy1h0hgGseZICA3xV+VvPHEZ9G6vkWAyERguA+cnK5wQgmdGV6onJ
         PHz3Ly8BPWxZ6fVtgutcGadUQbBvx8FgmBC4dBPhdWDVZcsb0Kj1M5OO8+VPFaM48KI3
         Oni6e12CnyulbzInLmQXygN7+TNo0aUki5tWRgzAuv0uiUjAHAVEKZgHVHNWQh8HtOoG
         mF0j7CdTVUdYIwgBoFVfIDTtxS71Ru3AeBbGkYhjVPN2c3IlHlTk9QqHmURB+wVD9v5K
         9Im7knr3y5agzGBC/hwjpJhT76anJX+YFNWDACvNJdXLmgTCpUBpBSSGbM4cjAdQThkh
         kieA==
X-Gm-Message-State: AOAM533ueZmZ5WcwfCFHl2SPGi395RafYNl95N/mJZcfCFsRMtalID9O
	3N3buiEywtvd9lMmAEUvTugjaiu9yoLSeCH588Hc3gE+JbQZjKvl
X-Google-Smtp-Source: ABdhPJxg5xMevlWsY1i6/qSPCYGMywVA0+IHffhZF/qi9cxw2PRZ718RS5nZvIGDAedTTQkjxlIoeCD2pfUH0KFI4nM=
X-Received: by 2002:a05:6e02:1baf:b0:2d1:c76f:47a0 with SMTP id
 n15-20020a056e021baf00b002d1c76f47a0mr9050756ili.134.1653628080257; Thu, 26
 May 2022 22:08:00 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 27 May 2022 00:07:00 -0500
Message-ID: <CACaXmv8rRwjVGo_WnD=01=0rbugyZBUs8q4o29-wJZbeYk56Sg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: O2TYGRIAW4T2IBLN7QFHOH25YYYEO6OF
X-Message-ID-Hash: O2TYGRIAW4T2IBLN7QFHOH25YYYEO6OF
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reminder -- NEWSDR -- Friday June 3 (next week!)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O2TYGRIAW4T2IBLN7QFHOH25YYYEO6OF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8953846862778286746=="

--===============8953846862778286746==
Content-Type: multipart/alternative; boundary="000000000000508fde05dff74af0"

--000000000000508fde05dff74af0
Content-Type: text/plain; charset="UTF-8"

*** NEWSDR is coming next Friday June 3 ***

The 12th annual New England Workshop on Software-Defined Radio (NEWSDR
2022) is only one week away!!

The event features various speakers, panel sessions, discussion forums, and
an SDR "Spectrum Painting" competition.

The event is 100% virtual and free, but advance registration is required.

The registration deadline has been extended through Monday May 30.

Please register here:
https://forms.gle/CEbSFtaxBu8iARo87

The abstract submission deadline has also been extended through Monday May
30 for the poster and elevator pitch sessions.

Please submit abstracts here:
https://forms.gle/E6nLSsh9JhjFAED36

Please see our website for more information about the agenda.
https://newsdr.org/workshops/newsdr2022/

Please join our Slack workspace:
https://newsdr.org/ways-to-connect/

--000000000000508fde05dff74af0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">*** NEWSDR is coming next Friday June 3 ***</font></div><f=
ont face=3D"verdana, sans-serif"><br>The 12th annual New England Workshop o=
n Software-Defined Radio (NEWSDR 2022) is only one week away!!<br><br>The e=
vent features various speakers, panel sessions, discussion forums, and an S=
DR &quot;Spectrum Painting&quot; competition.<br><br>The event is 100% virt=
ual and free, but advance registration is required.<br><br>The registration=
 deadline has been extended through Monday May 30.<br><br>Please register h=
ere:<br><a href=3D"https://forms.gle/CEbSFtaxBu8iARo87">https://forms.gle/C=
EbSFtaxBu8iARo87</a></font><span style=3D"font-family:verdana,sans-serif"><=
/span><font face=3D"verdana, sans-serif"><br></font><font face=3D"verdana, =
sans-serif"><br>The abstract submission deadline has also been extended thr=
ough Monday May 30 for the poster and elevator pitch sessions.<br><br>Pleas=
e submit abstracts here:<br><a href=3D"https://forms.gle/E6nLSsh9JhjFAED36"=
>https://forms.gle/E6nLSsh9JhjFAED36</a><br><br>Please see our website for =
more information about the agenda.<br><a href=3D"https://newsdr.org/worksho=
ps/newsdr2022/">https://newsdr.org/workshops/newsdr2022/</a><br><br>Please =
join our Slack workspace:<br><a href=3D"https://newsdr.org/ways-to-connect/=
">https://newsdr.org/ways-to-connect/</a><br></font><div class=3D"gmail_def=
ault" style=3D""><br></div></div>

--000000000000508fde05dff74af0--

--===============8953846862778286746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8953846862778286746==--
