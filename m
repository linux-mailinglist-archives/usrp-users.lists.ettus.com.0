Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C039228C19
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 00:42:59 +0200 (CEST)
Received: from [::1] (port=44728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jy0yM-0006lx-IT; Tue, 21 Jul 2020 18:42:54 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:36691)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1jy0yI-0006fB-M9
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 18:42:50 -0400
Received: by mail-ot1-f48.google.com with SMTP id 72so397337otc.3
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 15:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=W94RlboTZvwQakoBTZPliffN/lHYFyNdOYYgkeFiofU=;
 b=Lj+BOaapa1W7JijpW0URpM5iwY2hSdueDpl7b59zI6fDiUdoqDYXTQLilhc0hMtGjD
 IgJ+h9Z5BMx1vg6jpYfxcHqFBwUbfpM1HBhkZQxR5r/0QtpujinVoqnOQ4YgET3FahdV
 RfjIPSGuuGK1PpLCgK4REbF/d5uo3bMqCfE+MhovHLYaFQsArEBKS9XrZMzDbjSooCfM
 xRHbVHzCAKdlf/f0ugFJbKrBmalOWHeA0K7l+yTfyWfIoLaTPw6scpxf+4j6CmoWAhte
 1MPDlHQPrrNxBFRD2obKiCpgCyY6qq/Hjo2xjrtlOEHmyzp4+6MD0tQeoFN9viR80T78
 lUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W94RlboTZvwQakoBTZPliffN/lHYFyNdOYYgkeFiofU=;
 b=l9pYMqUmExHGtCkBJXkKfcfsdX+lWJ/hOjupEdWPuk+9QrSi+65geQXmJbIXowbuXb
 oMT4kuziBIfYV0dXF9zWHGd7Npq1GIBO8G7L2PLtZ6kQJXid96vzQt3BwJ/C/rikW254
 +FYN2SFq8P+CMFzctv9WtcIVto+06eyRzADA4uRTx3fkgHKFHdQqtZoUsQkobQ6jlzDa
 0+T8J5sIHC3+GnEjJ4dJWk9Vpp+SnQGkDf+3N8fGXUptxXRbTVql3t8rmgYz9f1JLjMo
 eWSCp+myyp35tO7LASI22gCG8faGIN0JU7rA8ZbB+eO3gcOwhuTw2HXH/o1W2x3+vRLk
 E1gw==
X-Gm-Message-State: AOAM531I59O2GsG1UyC03Cd8j18bFwBEyLHjkw3Uf6wtZqQYIY3JwZcV
 fI/SBgUI60yFX6jbiSK6Xf7KUJzlD+3NNjJ3DNpCP3B9rwREaQ==
X-Google-Smtp-Source: ABdhPJwNBXdMZUPJKF8HS7H5Aw7zJsAQOifGnv0k6t61q6kg6B1Zcaq0YXer0q+Jpy9wKo0udNKZcHLgKKEhOQbMgUY=
X-Received: by 2002:a9d:654b:: with SMTP id q11mr27364007otl.248.1595371329618; 
 Tue, 21 Jul 2020 15:42:09 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 21 Jul 2020 17:41:33 -0500
Message-ID: <CACaXmv8Wrpzbn=HmacL871KWcNVCbkH+r-FzZMu41s_B4jBqwA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Virtual NEWSDR 2020 -- Wednesday August 12
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============1233852711158821130=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1233852711158821130==
Content-Type: multipart/alternative; boundary="00000000000063156805aafb5518"

--00000000000063156805aafb5518
Content-Type: text/plain; charset="UTF-8"

We would like to announce the 10th annual New England Workshop on
Software-Defined Radio (NEWSDR 2020) on Wednesday August 12.  This year's
event will be run virtually.  The event program includes keynote speaker Dr
Tom Rondeau of DARPA, exciting "fireside chats" on topics such as spectral
coexistence, Internet-of-Things with 5G, and open-source software in SDR,
and various poster presentations.  The event is made possible by generous
sponsorship from MathWorks, NI/Ettus Research, Analog Devices, MediaTek,
Lynk, and Verizon.  Advance registration is required but is completely
free.  More details and registration available on the event website.

https://newsdr.org/workshops/newsdr2020/

--00000000000063156805aafb5518
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">We would like to announce the 10th annual New England Workshop =
on Software-Defined Radio (NEWSDR 2020) on Wednesday August 12.=C2=A0 This =
year&#39;s event will be run virtually.=C2=A0 The event program includes ke=
ynote speaker Dr Tom Rondeau of DARPA, exciting &quot;fireside chats&quot; =
on topics such as spectral coexistence, Internet-of-Things with 5G, and ope=
n-source software in SDR, and various poster presentations.=C2=A0 The event=
 is made possible by generous sponsorship from MathWorks, NI/Ettus Research=
, Analog Devices, MediaTek, Lynk, and Verizon.=C2=A0 Advance registration i=
s required but is completely free.=C2=A0 More details and registration avai=
lable on the event website.<br><br><a href=3D"https://newsdr.org/workshops/=
newsdr2020/">https://newsdr.org/workshops/newsdr2020/</a><br><br><br></div>=
</div>

--00000000000063156805aafb5518--


--===============1233852711158821130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1233852711158821130==--

