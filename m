Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CB32DB07D
	for <lists+usrp-users@lfdr.de>; Tue, 15 Dec 2020 16:52:01 +0100 (CET)
Received: from [::1] (port=40246 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kpCcH-00016u-65; Tue, 15 Dec 2020 10:51:57 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:43303)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <andreas.hagstrom@testteknik.se>)
 id 1kpCcD-000145-EJ
 for usrp-users@lists.ettus.com; Tue, 15 Dec 2020 10:51:53 -0500
Received: by mail-qt1-f181.google.com with SMTP id 2so5032806qtt.10
 for <usrp-users@lists.ettus.com>; Tue, 15 Dec 2020 07:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=testteknik-se.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=0+GY5MHROn86ZUAkRlk2nzXByt4s7KTYySP8sw8YkIw=;
 b=QgAh51/xCUYSBcSZQZis7xqSdN86yk/71kfWSdIV5iqd9vJXbAs3uxqo+Uy63u4hZ8
 UD5U9rLp6L3MS6+hq6MRUJIevqeMZIKfF5hf0ObQdFZ5DePbNqymgjMDyIQ76IjnSN4S
 1VuB2N2kFYl+kfxhBFOQaDZFQQyf4bTRszWk8x2c1EqJD843xz2XbGrQVY+iLNKSqkIz
 Y7b1ZbcZAaWpAE1cIm/QPZune+kfV9TpyFaBEvhLcWl2woePwEIphcIrNchNcs/loyCL
 AUdr7LoHfndOTe9i76XU2ZKWCLlJ3KdTBYMDdPxRxOzPtyghWbMcDe1WBgb79MaZgMDf
 h+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0+GY5MHROn86ZUAkRlk2nzXByt4s7KTYySP8sw8YkIw=;
 b=GMK0Irl6i+CqpB3ULhTQYiSqZG042zHTccxPTW/zkD9PdfbLU8o6+ySTPsA1LJeAFJ
 OHmATcXp9OYFhmv2fjxjy1kGG+ra+Hu+9x3PvX9DjeiKjMMouFUNssXFRrKXFmPVwekb
 eQzpRykn1+6lacfoDVxjr8n9iAoa7bIOHuWkqfIQS9HputyQ+sX9FqOGH2l2zTLKdHqR
 02sXWoDVSHeTvJC7RSZ5zonKO2BMROljxIwdwPIo81NkA/vy6T5eOK7rA7YU3pYBLIp7
 lV4AJkcPJjuOg6D/gwPk//p4SyTiMC1NIlBaBX4bKnxusnTCBySBD0uPgYWuzTQFzQQ4
 UG8w==
X-Gm-Message-State: AOAM533oYXNf0aHp93v5haQK6zQBwvJbofXWplV2oE9FPOriz3tuemK4
 h++7xSLfAGRtVjrGgLKiIVeT49/LWKXmf6PMfsogmH5bRLo=
X-Google-Smtp-Source: ABdhPJzSlnu361eRSjLENbowhEcRGq6+kEHDlVVSHZXqDCvxAwlC/tiKHKPxKyPOLiLaI4SN8HyNgkNXwr+nebMW0z0=
X-Received: by 2002:ac8:4648:: with SMTP id f8mr37366389qto.5.1608047472415;
 Tue, 15 Dec 2020 07:51:12 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 15 Dec 2020 16:51:01 +0100
Message-ID: <CAKo1dg-ebX_Ofu2fQ2AdnR0eg1WQg00K3uTDCH2iRK1nWaTF6Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Problems with UHD installation on Windows:
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
From: =?utf-8?q?Andreas_Hagstr=C3=B6m_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Andreas_Hagstr=C3=B6m?= <andreas.hagstrom@testteknik.se>
Content-Type: multipart/mixed; boundary="===============0945481926389391216=="
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

--===============0945481926389391216==
Content-Type: multipart/alternative; boundary="0000000000006030ac05b682ba7a"

--0000000000006030ac05b682ba7a
Content-Type: text/plain; charset="UTF-8"

Hello, I had some issues with the communication with my B200 so I
uninstalled UHD and tried to upgrade to the latest version of UHD (4.0).
But the installation seem to fail to install uhd.dll to PATH. I tried to
install it both to local user and globally, but I get the error "Path to
long". I after that tried to go back to UHD 3.15 but I now seems to get the
same error message. I also tried to do it manually but the path doesn't
seems to work that way either.

That is the first problem, so i copied a version of uhd.dll to the working
directory of the examples to see if I would be able to run those. But after
trying that I seems to get the error that UHD can't access the start
procedure of libusb_set_option in UHD.dll. If I understand correctly that
is the library to access the USB streams to and from the USRP. The drivers
I'm using is the official ones from NI for the USRP-2901 which i'm
emulating a B200 from. This part I have not modified since the working
installation so I'm not sure how this part would have gotten broken.

Is there some known issues with this kind of configurations that would
cause these problems?
I'm currenty on Windows 10 Pro Version 2004.

--0000000000006030ac05b682ba7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, I had some issues with the communication with =
my B200 so I uninstalled UHD and tried to upgrade to the latest version of =
UHD (4.0). But the installation seem to fail to install uhd.dll to PATH. I =
tried to install it both to local user and globally, but I get the error &q=
uot;Path to long&quot;. I after that tried to go back to UHD 3.15 but I now=
 seems to get the same error message. I also tried to do it manually but th=
e path doesn&#39;t seems to work that way either. <br></div><div><br></div>=
<div>That is the first problem, so i copied a version of uhd.dll to the wor=
king directory of the examples to see if I would be able to run those. But =
after trying that I seems to get the error that UHD can&#39;t access the st=
art procedure of libusb_set_option in UHD.dll. If I understand correctly th=
at is the library to access the USB streams to and from the USRP. The drive=
rs I&#39;m using is the official ones from NI for the USRP-2901 which i&#39=
;m emulating a B200 from. This part I have not modified since the working i=
nstallation so I&#39;m not sure how this part would have gotten broken.=C2=
=A0 <br></div><div><br></div><div>Is there some known issues with this kind=
 of configurations that would cause these problems?</div><div>I&#39;m curre=
nty on Windows 10 Pro Version 2004.<br></div></div>

--0000000000006030ac05b682ba7a--


--===============0945481926389391216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0945481926389391216==--

