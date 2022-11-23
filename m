Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC832636B14
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 21:26:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADB28384336
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 15:26:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669235167; bh=DyeThzjqdhAMshTZmuex8YVA9TEws6zNGDZI1Q7D9L4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iJ06w4Y/j8kic3l2mBJH5qAbG+k49s1K+7u83xyzbrynQ1goMjuTIfckOAGoQL5Nz
	 1EsUnffziI4DK4u6EtRu60LFKvjAHBkSW7t92/sA9ORgV+NRwk1XffGMVDJRTn7Q04
	 XalEKEZK+aBhvIZrdcvohzrMOTEPe4TkMIkOadJ6ub1qFX0jB6qbQKyQDX6b6PqZJQ
	 pCVnlIG8LB32yWu1pQLLdG2vRXif8rOhRKRzPs/VQ50tr20vBt3PpXieU3llpzpes2
	 4A7RO8krTKPmA/rAx5xqDPM6NZjDl2FuDKAIQs3l9dXcaKbutUnQYM/6BI0FLTZkIc
	 +U6j+wYlxErqw==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B9277383FB1
	for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 15:24:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="WN/esKNl";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id a27so11970690qtw.10
        for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 12:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y63d4NNvCG+VYmjPaMzvPKMt+zM1OI6B/mvSgYrSvp8=;
        b=WN/esKNlzP2EImz3PAn7Wm4DR6tdKQEZ89n5gVqOPtD0PB9P+0zTpPqH3N96XONv83
         jNCU6d7Ww3LdIZT1EQ2ASgI0LuYULpdRRLNLhKzPQAMVvbLvhkDYURA/RGYatPRztgbd
         pOavmlAb+LC2cN3lE4FxavQ8HQ0OGY1QWWpD+Fgxd1JeT6NPUXuRhghGwNSITWHeOBqU
         BZ+swf0K/KU6R2Lcl/fEEcEpxb2XGq5jUNPfpEOhSw60ZR0M0SZAf8H7zSJyWzfUWFBO
         clv02YZdB6pvUp1mypEx6z3g9dQeJ0Icfo+BBRwG1796GTNI4bTgffRWr4zFFyNBo7hV
         +KGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y63d4NNvCG+VYmjPaMzvPKMt+zM1OI6B/mvSgYrSvp8=;
        b=0oauBHhxptQ456ZEfI2+kentXCQkiNTtRjbc/ljuOzMIsjy22cdCRON2FJ7k1JltXO
         qxw8rL7kP3QvoFqDOQuSZmfhb6+cbVgHEx3zC3gnbPRxPi4UtaAfwPwUONq0gYixLYbi
         veiV3F55oagifEQ0yfY72OOKCijjFPIbI/L4Fougo7HNXFTbK1qBNDWbgk52QvANEqi4
         NKCaIuydah41Pd1Gs1bcKN6SsxGhxujXc9TwqKHbJ0vcegh1/4EFqkcQ6pXMhlqfhESE
         8lIC0x9PeyHuZD1Kgq97VyXyLwyOZLRUxlVn45OzY5kFt6DVKgYnT9skuqyqyFfHiGLO
         0a3Q==
X-Gm-Message-State: ANoB5pl18gj8GO5kSjkU5GTzoJgZCkCkhyHG30vXc5awGvZTDTHX1Mps
	QW619YFx50nB+rp+PRGdrHhC8bmgOMMWS7mpCriUI3RPkigJpQ==
X-Google-Smtp-Source: AA0mqf7DVjxT7b842EmQu052ehGO4oCl+NXpOEo4oozOf1qusDlMASlTdlgZyEZbBFnf6GiGTxyEz8HFUm4Zs3upyA0=
X-Received: by 2002:ac8:520b:0:b0:3a5:4502:3da5 with SMTP id
 r11-20020ac8520b000000b003a545023da5mr28254245qtn.658.1669235086855; Wed, 23
 Nov 2022 12:24:46 -0800 (PST)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Wed, 23 Nov 2022 21:24:35 +0100
Message-ID: <CAKHaR3=mKYwV0c2FnKPrkY1nr3f-sDhE5PRXQSsnOnv5a=NFEA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: JUTREURDX5T6LBVTPUEZNJNKVGKC4YS4
X-Message-ID-Hash: JUTREURDX5T6LBVTPUEZNJNKVGKC4YS4
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JUTREURDX5T6LBVTPUEZNJNKVGKC4YS4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3211348269033344034=="

--===============3211348269033344034==
Content-Type: multipart/alternative; boundary="0000000000006621f305ee2914e3"

--0000000000006621f305ee2914e3
Content-Type: text/plain; charset="UTF-8"

Hi,
i am using a XG-100 FPGA and moved from UHD4.0 to UHD4.2 and found out that
master clock rate changed from 125 to 122.88MHz. in my application i need
radio clock to be 125MHz but it seems it's not possible, at least with the
100 MHz bandwidth variant.
is there anything i can do to restore sampling frequency to 125 MHz?
thanks,

Dario Pennisi

--0000000000006621f305ee2914e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i am using a XG-100 FPGA and moved from UHD4.0 to =
UHD4.2 and found out that master clock rate changed from 125 to 122.88MHz. =
in my application i need radio clock to be 125MHz but it seems it&#39;s not=
 possible, at least with the 100 MHz bandwidth variant.</div><div>is there =
anything i can do to restore sampling frequency to 125 MHz?</div><div>thank=
s,</div><div>=C2=A0<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span style=
=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">Da=
rio Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-se=
rif;font-size:13.3333px"><br></div></div></div></div></div>

--0000000000006621f305ee2914e3--

--===============3211348269033344034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3211348269033344034==--
