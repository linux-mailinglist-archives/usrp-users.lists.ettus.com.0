Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3EE2A839D
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 17:37:10 +0100 (CET)
Received: from [::1] (port=44634 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaiG3-0002eC-LR; Thu, 05 Nov 2020 11:37:07 -0500
Received: from mail-qt1-f169.google.com ([209.85.160.169]:46291)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kaiG0-0002Yi-33
 for USRP-users@lists.ettus.com; Thu, 05 Nov 2020 11:37:04 -0500
Received: by mail-qt1-f169.google.com with SMTP id r8so1485054qtp.13
 for <USRP-users@lists.ettus.com>; Thu, 05 Nov 2020 08:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=GSOcUVMv5F7Y5Qrr1LWREGwAmrRUYBg6SF0n1IbHsbQ=;
 b=Zb7ROyaHduVrPsD8pFb+qv8lw07gYnaI7nbbiseEaX4txy3sk6G+jxa+na0A8VdVqK
 NUsNMX9W9SSo0cF5FT0oPq8r5tEYa3uSIH4/cuCCjQzHzb0Vh35scqyIo1u80Dmp4s60
 7/TLajQj1HgeQ7MY/SetgwRI2DbrQTuOH2Aqhsla1+TXlZgyPbID0YNEkNWKWBdqxdno
 zdocrawFfaEcPlwht04D6F1Jm2kj8lCakedNOy96cqy8nTrwdLQDm3VrGyvYISLJ7/GD
 MHY58j6V06OGUb5TiUeD2gJODE7TGPzUVecX5d5kOoZvkTLAAHjOnmW7ypxekSsOVk25
 HIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=GSOcUVMv5F7Y5Qrr1LWREGwAmrRUYBg6SF0n1IbHsbQ=;
 b=l1qsjEdnggnn05aBj0KSaLBD/nlp94twgan/amKiWTBe/UYxfB1FcQ3g5O1i3Qptnl
 Cc2hN5TJqX0LeeYXZa/kfrPD32/586SR33D7NyzhZgQdPxnY7DOLltd2bP3Hj71M95qL
 h6lZqLfoVi+zXJFp07VYUdw4q2afyRmx6pmqootgSnT8sq/gOn9J5lVps7xmaE6mXKBk
 nQvXgprJTN4p3hjOjlfFIkgs7CEl1+n83UCc3Bu7VwYu8pVlnRf/HHjl6/aXtQTN7sEY
 dibeUn9/x23gtjBY91UQ/xA91QCMdifnqNwFLk8vPWuyoLRx1m82qZ01uRh+avggE0dI
 Lm4g==
X-Gm-Message-State: AOAM532OMUIxWQaCzVkdTlIpBxHo+am4PGSy8rEDrA8G7AG9nT+L94O4
 v0m/c1Zbc6BQ9Tm/uF72K9Y=
X-Google-Smtp-Source: ABdhPJzD85xjUAEW9cWbL5rOniSz11xAzLUYcAaY61q8zklwigJfBpurh/9HW079lvTwXv43tFZyig==
X-Received: by 2002:aed:26e3:: with SMTP id q90mr2651814qtd.121.1604594183615; 
 Thu, 05 Nov 2020 08:36:23 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id b197sm1369159qkg.65.2020.11.05.08.36.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 08:36:23 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 5 Nov 2020 11:36:22 -0500
Message-Id: <0D23DE77-8694-4C39-905F-A7FE8585EA94@gmail.com>
References: <1604578102.815714.8740.55788@mail.rambler.ru>
Cc: Usrp Users <USRP-users@lists.ettus.com>
In-Reply-To: <1604578102.815714.8740.55788@mail.rambler.ru>
To: =?utf-8?B?0JDQvdC00YDQtdC5INCQ?= <andrew4010@rambler.ru>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] UHD Binary installation
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4037834260217869615=="
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


--===============4037834260217869615==
Content-Type: multipart/alternative; boundary=Apple-Mail-47610A62-F110-4C14-B6F9-F421512AD405
Content-Transfer-Encoding: 7bit


--Apple-Mail-47610A62-F110-4C14-B6F9-F421512AD405
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

https://files.ettus.com/manual/page_install.html#install_linux_ourbins_ubunt=
u

Uninstall the versions installed by your package manager first.=20

Sent from my iPhone

> On Nov 5, 2020, at 7:09 AM, =D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9 =D0=90 vi=
a USRP-users <usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello
>=20
> Ubuntu 18.04 default installation package is 3.10.3.=20
> Can UHD 3.15 be installed on Ubuntu 18.04?
>=20
> Thank you
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-47610A62-F110-4C14-B6F9-F421512AD405
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><a href=3D"https://files.ettus.com/manual/p=
age_install.html#install_linux_ourbins_ubuntu">https://files.ettus.com/manua=
l/page_install.html#install_linux_ourbins_ubuntu</a><div><br></div><div>Unin=
stall the versions installed by your package manager first.&nbsp;<br><br><di=
v dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=
=3D"cite">On Nov 5, 2020, at 7:09 AM, =D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9 =D0=
=90 via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div></div><d=
iv>Hello</div><div><br data-mce-bogus=3D"1"></div><div>Ubuntu 18.04 default i=
nstallation package is 3.10.3.&nbsp;<br>Can UHD 3.15 be installed on Ubuntu 1=
8.04?<br></div><div><br data-mce-bogus=3D"1"></div><div>Thank you</div><span=
>_______________________________________________</span><br><span>USRP-users m=
ailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span>http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br></di=
v></blockquote></div></body></html>=

--Apple-Mail-47610A62-F110-4C14-B6F9-F421512AD405--


--===============4037834260217869615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4037834260217869615==--

