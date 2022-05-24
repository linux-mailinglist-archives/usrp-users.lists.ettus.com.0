Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42945532EE1
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 18:25:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF1CB384A1D
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 12:25:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653409549; bh=kowEOh+tkqYLMmsIFFa7vh+0KezazIBhYMb7kDoF8MM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0ISJ7/2nh94Lasu5TQDayt+Sa0iMJoBhj8iHS1kncd3tZTNdnhKiluMvhutzAGbOh
	 e0hE6uWgYyMDOr7MnaWCAhjKCTBCnFwWeDpEIME0W8j9pVafrhBeoqxnxCPu2iEbHh
	 ySe7lho2hhI0E7YUMlKruvOltWtQuSFSzydA8aGuOILbWRjs+Ji3zJZodj5wZAT8rT
	 2WP4bdMTueMLP2BRFIAY505NYndp7CJGM3Z0FQboeApYzOj3Bo+Zd/6TWm5bG0qCJH
	 OpG8/uHQEuOhudeU4QAxvw+vPoYJTpDXunLsANWdRQ2dzw53P9sDtRSYXXFkHlMz2S
	 JJqaSKhmOb+Ng==
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 13C183849E3
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 12:24:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="LOtGIgsJ";
	dkim-atps=neutral
Received: by mail-io1-f51.google.com with SMTP id p74so15223683iod.8
        for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 09:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=9qTmHTsdCTzJGTJfHwIjPO4HVe8H/mbCzfW4e47ehHI=;
        b=LOtGIgsJpTdpnXC10pvIBa38Eyqya8KfTWbBIZ9A3vW/tSUPjJpUFsxI3XxXCSB0o6
         PKN5ZZeGviAEitpBHSySknvmYPt9TsGVY02+uIMWr7n6WIVsVc9EyuqeYMjbILAm1QwS
         DfviFYBBPn6UrxPPVFp+v8PPMNTv7733S8xREjsw1arioaMlVAF6Suogoxc5YmjOXp7q
         cSmiDiXAbfJBekiXi46tY3SbhXkh/DbDmXMRHmCc26XvI64Ljk479onT5mZpbpi/xcZw
         Zlgeg/xK8/xhe9lNuNBXCMXy+ACJNAOkA454uT6HF96vzSiKn3KEWZy3UxhLB0Wqll+M
         I97w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9qTmHTsdCTzJGTJfHwIjPO4HVe8H/mbCzfW4e47ehHI=;
        b=Qyf2tTsVfDz0xbeQu3a/PEQ26FKJui9wbJB6xrBP2YFVa9hanf/3dMtwjAJIzEB+Ck
         XAUoXD69SiHpMWShbFSKmtsJluvMKwNq9fOh9l9kFRsgFd9cQ83FkOXOYZKBCUAWkeTH
         clKyu3sXu8a/gE/gyBfSm6tJ5F6vEnYD3ILQVYkkbET2bo/U5CZ2bSXjciuhNvG2m7Er
         ysQ94wja8vikjEuzncX0eAZ3q7A7ofxk52QLmVbNSljBm9csndOHUttYBL2vs37PqhO/
         NAAF2+xTWF81R1JDB8SmxTxOTHNLlh9V5agDklqKKgcjT4MyNQ2gcKbwPKd6saJsRLoo
         nxUw==
X-Gm-Message-State: AOAM5318HGQum3fD8PeQQdcukkxWLrXe9A1W+0XoGSKBCaPr0bOIKP/K
	ms1rmDSr+8JQOqJ3eBop+r5gmxgX46NT91JyIdr1RXD3yUaT8vu9
X-Google-Smtp-Source: ABdhPJx8WXx8HS7evOsT2DWJAVichL2xOE1gqa+3V4mqiQaZQmtxyQ2uPHarRnp8zdA3Ey+056T0Gi4w8RYz9w5nw54=
X-Received: by 2002:a6b:8e41:0:b0:65e:45c0:b946 with SMTP id
 q62-20020a6b8e41000000b0065e45c0b946mr11719847iod.168.1653409485090; Tue, 24
 May 2022 09:24:45 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 24 May 2022 11:24:09 -0500
Message-ID: <CACaXmv-LxYOpHxPd0UCvHFN9mBmLrGYxr4L-FM5JigjwGvMy+w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: K7KJ4OI7JJKYKVIAG6ZI4CXR2EOH5NDY
X-Message-ID-Hash: K7KJ4OI7JJKYKVIAG6ZI4CXR2EOH5NDY
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reminder -- NEWSDR -- Friday June 3
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K7KJ4OI7JJKYKVIAG6ZI4CXR2EOH5NDY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8432016186786536615=="

--===============8432016186786536615==
Content-Type: multipart/alternative; boundary="0000000000000708f505dfc46582"

--0000000000000708f505dfc46582
Content-Type: text/plain; charset="UTF-8"

*** NEWSDR is coming next Friday June 3 ***

We're very excited that the 12th annual New England Workshop on
Software-Defined Radio (NEWSDR 2022) will be held next week!

The event features various speakers, panel sessions, discussion forums, and
an SDR "Spectrum Painting" competition.

The event is 100% virtual and free, but advance registration is required.

Registration is open through this Friday May 27.

Please register here:
https://forms.gle/CEbSFtaxBu8iARo87

Please see our website for more information about the agenda.
https://newsdr.org/workshops/newsdr2022/

Please join our Slack workspace:
https://newsdr.org/ways-to-connect/

--0000000000000708f505dfc46582
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"mono=
space">*** NEWSDR is coming next Friday June 3 ***<br><br>We&#39;re very ex=
cited that the 12th annual New England Workshop on Software-Defined Radio (=
NEWSDR 2022)=C2=A0will be held next week!<br><br>The event features various=
 speakers, panel sessions, discussion forums, and an SDR &quot;Spectrum Pai=
nting&quot; competition.<br><br>The event is 100% virtual and free, but adv=
ance registration is required.<br><br>Registration is open through this Fri=
day May 27.<br><br>Please register here:<br><a href=3D"https://forms.gle/CE=
bSFtaxBu8iARo87">https://forms.gle/CEbSFtaxBu8iARo87</a><br><br>Please see =
our website for more information about the agenda.<br><a href=3D"https://ne=
wsdr.org/workshops/newsdr2022/">https://newsdr.org/workshops/newsdr2022/</a=
><br><br>Please join our Slack workspace:<br><a href=3D"https://newsdr.org/=
ways-to-connect/">https://newsdr.org/ways-to-connect/</a><br></font><br></d=
iv></div>

--0000000000000708f505dfc46582--

--===============8432016186786536615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8432016186786536615==--
