Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5B28B5BD7
	for <lists+usrp-users@lfdr.de>; Mon, 29 Apr 2024 16:48:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26AA8385266
	for <lists+usrp-users@lfdr.de>; Mon, 29 Apr 2024 10:48:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714402124; bh=0GVRD8EGI9YI9ecTlEH8aHPscBjBLbxn4rBBeo/U2l4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0JEqB7UWOMZpVHGdbsQtDpCC6l/hd7LttC1FfRbhK7a5QnGwQTHHJmzsok5Uk330p
	 O3FPgf3M/Rv+bes1/LigY9/m8T7Ghw7F3nFMw8PtljThHFmhi78kn1Cq70wEWx3IWj
	 5ThrwTVpukGJg3kfjW6pEEIqhKtqWJCkTgRuvmckpF2tYGZLt2KdDOhA4DsGi7BHy9
	 7ghND65nw24g0lsL0gheOOKvk+HIuLwqcxRIaeQoJeAX7hfBcp7ag4uOdbe1GIAaYA
	 X4lTNGNupy8i0gzdlRklQPWYy9QPNHlnAxwkbLS1Qd3ke/2PGfdozKioc0v2J6EZkj
	 QRacI5DJ2j1Aw==
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A32243851C6
	for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2024 10:48:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oLnGRbC7";
	dkim-atps=neutral
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2dac77cdf43so58143471fa.2
        for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2024 07:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1714402090; x=1715006890; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JFxOhUG70FqA7xv3Ty4YnXjfQDKouGXRzotgAwI/ngE=;
        b=oLnGRbC72/J2/eRje7lWNFnEpqS+0KhQ0Pfujo0qlL5GRa1jWtSUoLGDx4XPAgTj0e
         +brAhNZf8eheXV4kbCrZ8xtE4eQbNyS+8nJCtUjefUlkY/6SE71AWCvFnEgu4gXniCo0
         HOj6Y2Impuk6oqnH5r/nPGA5R4HVCHHLi09KZ+zgVeOGP8Zza1kMInQgVKFsE0rfSuRc
         ZlOShF2EjVhekaJD1fBAjut7Ww5TDJ256D4vNZbS3Yx5XXzJsaEdsY616PHONMNI6hTU
         9Zu+Mw+So3+xufWzgHWHEvoXUaXunK2jpSHGSrwcp1fZtc9IDa+KQLibgnfu0ThWWR96
         sxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714402090; x=1715006890;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JFxOhUG70FqA7xv3Ty4YnXjfQDKouGXRzotgAwI/ngE=;
        b=qyuJqapCV3EZfd0iiDtrBCA4kzpnYKrOE+onJZ+ezWqwezNmIWiAsOLoVhU/JJUz3J
         VRve75AwJHBoATX2xaOPEatDCAYdZHpDdj4PG/F2GbhZZExwz2Fw1GSX8+gxNep0Eitf
         ihCrHDBPVqNi5ahfNP7yTZtEjA3HAcE7KsZEb3KtGrUFk4WQa1vSFRE7UIYCy0RSMh/5
         VRGDy1Y3NJ1gnENfXv0W9HJXIlk19G1oYnhIfJOJWUo2ln6ah7tJ7YfxqW9ZxlUAU7JF
         tqWY9faTW7hnMVlogqf3j8uW+moD7sN8/nM/ZrGdVaT7Fh/udWtf2jOUORfaRtTxax/F
         yeAA==
X-Gm-Message-State: AOJu0YyVUxw2n3dUAT3sJJJ/sk5mDyCPQVLwegdlabwsEmiwWjpBhtV8
	zpmxBJ/dQIVtET//F60spbvAI5v9+GVVavEgMnisKlPemXpsFMkBO8C4qLQqrGme7XQXLfSrKEE
	DvnoIwR8vBYrUeuAShuxJL05fY7N38Zcd5wLj1W/WoEairjOQdVfAmg==
X-Google-Smtp-Source: AGHT+IHp7nB1/gfT51xcFR+XjN39ebQGMunmow/fJ7tWgv4qpfrZc5p9grbsXMgC9nGu1K5eX/UbOYuwAdyyao0RFks=
X-Received: by 2002:a05:651c:4ca:b0:2d9:f7f8:3e87 with SMTP id
 e10-20020a05651c04ca00b002d9f7f83e87mr8925891lji.32.1714402090412; Mon, 29
 Apr 2024 07:48:10 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 29 Apr 2024 09:47:33 -0500
Message-ID: <CACaXmv_JFz79vW0pJBQ=6pb+3oHP3G63hn5P=VbGpuSYnpvZKA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: O4OJ43KYPMFFFZRIAJ46XXL76DJXOKBS
X-Message-ID-Hash: O4OJ43KYPMFFFZRIAJ46XXL76DJXOKBS
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR 2024 on Friday May 31 at WPI in Worcester, MA, USA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O4OJ43KYPMFFFZRIAJ46XXL76DJXOKBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0958146906757266659=="

--===============0958146906757266659==
Content-Type: multipart/alternative; boundary="0000000000009a1c2106173d57f1"

--0000000000009a1c2106173d57f1
Content-Type: text/plain; charset="UTF-8"

The New England Workshop on Software Defined Radio (NEWSDR) is being held
at Worcester Polytechnic Institute (WPI) on Friday May 31, in Worcester,
Massachusetts, USA.

There will also be a tutorial session on the evening before on Thursday May
30.

The event is free, but advance registration is required.

To learn more about this event, as well as to register for free,
please visit our website at the link below.

Please also consider submitting a poster presentation for the networking
sessions.
We are actively looking for submissions.

https://newsdr.org/workshops/newsdr2024/

--0000000000009a1c2106173d57f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The New England Workshop on Software Defined Radio (NEWSDR=
) is being held</font></div><font face=3D"verdana, sans-serif">at Worcester=
 Polytechnic Institute (WPI) on Friday May 31, in Worcester, Massachusetts,=
 USA.</font><br><br><font face=3D"verdana, sans-serif">There will also be a=
 tutorial session on the<span class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"></span> evening before on Thursday May 30.</font><br><b=
r><font face=3D"verdana, sans-serif">The event is free, but advance registr=
ation is required.</font><br><br><font face=3D"verdana, sans-serif">To lear=
n more about this event, as well as to register for free,</font><br><font f=
ace=3D"verdana, sans-serif">please visit our website at the link below.</fo=
nt><br><br><font face=3D"verdana, sans-serif">Please also consider submitti=
ng a poster presentation for the networking sessions.</font><br><font face=
=3D"verdana, sans-serif">We are actively looking for submissions.</font><br=
><br><font size=3D"4" style=3D"" face=3D"monospace"><a href=3D"https://news=
dr.org/workshops/newsdr2024/">https://newsdr.org/workshops/newsdr2024/</a><=
br></font><div class=3D"gmail_default" style=3D""><font face=3D"verdana, sa=
ns-serif"></font></div><br></div>

--0000000000009a1c2106173d57f1--

--===============0958146906757266659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0958146906757266659==--
