Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 005DDBCBA7D
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 06:48:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1AC0385B23
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 00:48:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760071716; bh=0s5PokUJKFMDuKBtusDvbA1EnFo13z+SCdkzliz0uq4=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=omkxFanCwuJQJuM+lSN1+nakbWn3L8J5QIfX3Qyx5yf/Q2/ErsvauI6Xi5E/DFU1B
	 7l8K36RmqPRPMBmSMUMjHTe1U1Y6X3bcE7fODhW1iSnth/79KSTzGel4MD4x5ym5KT
	 fC8NEzddLcQIn65zJ5mAUlh4PJQ4dIkwDJUaC9HeuraABx1C+DYS/gQFiIqE3BBHvt
	 0+KL5b8MiyrHmt7LcRax4y624strQKMWbqo2+ws2kYX5wBPumF8RQBHPrPnY3/hgL0
	 V6PUyRhqBtqt3EqpF+lHcdiAg4JwrftFgnshEfMe5RjyNvJqGe0laoVDyAc1EHe4Q7
	 fRQZZM/PLW5bQ==
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 676CA38584E
	for <usrp-users@lists.ettus.com>; Fri, 10 Oct 2025 00:48:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vvdntech.in header.i=@vvdntech.in header.b="TeG1hURf";
	dkim-atps=neutral
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-930ae1b2627so891431241.2
        for <usrp-users@lists.ettus.com>; Thu, 09 Oct 2025 21:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vvdntech.in; s=google; t=1760071683; x=1760676483; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MxsN5z6DSe40fhGSCQTL2SmYM3T6Gk3hWhLgMrSa3NM=;
        b=TeG1hURfNdUzrIgRmqrFEeU12F2iazpZXMLZE1EaSnalaXl0M2ADQGPdZ5lUU9bsQ9
         dBsfqXjY7mi4JJDTjGKZAIi9UCe7t3cfN9P6Vywu6mkHlwSfrVACzXu9anG9ZvLm8Egf
         yy00qS/tsXOxuOdHFiOzotsBJ9s9Tfe+YcTaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760071683; x=1760676483;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MxsN5z6DSe40fhGSCQTL2SmYM3T6Gk3hWhLgMrSa3NM=;
        b=oT8YGlzkL6MUL6viPtfQIBNGkLS/PL418nBzaVVrbdkmO9UBlI05XdWde+jlYEcheR
         r0HzQowqPMCNAX1DoBCyAgzj3/vVsGScqtZwIdoxjuFCeP7yu3Yn4R2vz/o4C0z4HR0U
         1hG9FZtNqQwFxEEjc6+TN9H+MPauHnFfqxoJ4yLpIW7O7G6ydJ211nqvRX/5Itjj6ij4
         W0KnSxfl25lKu3+l6Nba+axdvsPGTiMqTs9icpafrZ6fXOvHGDfrK8dzsUJOUWbDEwd4
         vzvAibLQcb1aITLyHLaFy79wurQVtEn/o30Ag1X5Qy8j8RdLb6wfCo4LQPVNIsbZh5+o
         /nzw==
X-Gm-Message-State: AOJu0YzdQ6QSq2CiHhLI/+wM+zF85iQU6hLbQgD4dmJbg769YXRKW9bv
	/KOfDbQbzl2OHPywaPn7CS2kFQ10BO9dm2XotDMhC6fKipyEJvSEO9kzSoxKFg9bsj7PxNOKSxU
	LIi2AnYRyZu7Jmd+MgwYQtaG0t9IlS02pQuEZfDJiLT+EHblbs5UrAcL3ADR0De4a/lBiIui/Rq
	6+TbkMgr2F07gkcV4LKB5BCNPhmWPwXryBO55I+xAlrsg4kxg=
X-Gm-Gg: ASbGncutpfrn8RTvb+pTrq9cOeErK4gkWHxBLxA2Hx5rI6SxWsKKldDIQ4ySfNK4x2x
	A7DKA3CQykcpIGuHkY4Pvva5dAlMhVYvfEhpy7qfcs1/cV8lxe8sLKh2u5z1bxtJ0TlKgzAb1ti
	V2uMo/jgz/syUcIoDqQoI2tNsXhSa4ChjvOKNNzvjVfjsmbJJDpmQfblskwDww6auX5ik4+4kuE
	vOR7k0sg3Dp/W6FVt2zlxD3wLRflfcXBd/9xeoktGXpoSY=
X-Google-Smtp-Source: AGHT+IFpYNHhXw1YUFLqpPXdjn5AHXehvbQfPXAPhxEXjdH4HuoW9rtgnI52nBMepqQPXPLnGubJmrAR+QsIv3/Hm6I=
X-Received: by 2002:a05:6102:3e8e:b0:5d5:f6ae:38fa with SMTP id
 ada2fe7eead31-5d5f6ae3e9bmr1874526137.39.1760071683289; Thu, 09 Oct 2025
 21:48:03 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 10 Oct 2025 10:17:52 +0530
X-Gm-Features: AS18NWArA6GgaD9kMBv5ex8KRO5t2osF-hzE0TA_3x7RPw-twsi6fRv2cHZwah8
Message-ID: <CAPP35V-i5rN5708jiaeBS7Ud2RWYKmVCsYirBiMxB6ROufHhUg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ITGCI3UZLCBC5YSW4ECBEPKHEWWKARLD
X-Message-ID-Hash: ITGCI3UZLCBC5YSW4ECBEPKHEWWKARLD
X-MailFrom: ravi.paswan@vvdntech.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP Integration with Xilinx/Vivado
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITGCI3UZLCBC5YSW4ECBEPKHEWWKARLD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ravi Paswan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ravi Paswan <ravi.paswan@vvdntech.in>
Content-Type: multipart/mixed; boundary="===============0604380302883530886=="

--===============0604380302883530886==
Content-Type: multipart/alternative; boundary="00000000000076499b0640c69ffa"

--00000000000076499b0640c69ffa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I am reaching out to gather any available technical guidance, reference
designs or documentation that could assist in enabling smooth connectivity
and workflow between the USRP platform and AMD/Xilinx Vivado tool
integration.

--=20
_Disclaimer:=C2=A0_=C2=A9 2025 VVDN Technologies Pvt. Ltd. This e-mail cont=
ains=20
PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of the=
=20
addressee(s). If you are not the intended recipient, please notify the=20
sender by e-mail and delete the original message. Further, you are not to=
=20
copy, disclose, or distribute this e-mail or its contents to any other=20
person and any such actions are unlawful.__
__

--00000000000076499b0640c69ffa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi all,</div><div>I am reaching out to gather an=
y available technical guidance, reference designs or documentation that cou=
ld assist in enabling smooth connectivity and workflow between the USRP pla=
tform and AMD/Xilinx Vivado tool integration.</div><div><br></div></div><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-le=
ft:0cm;color:rgb(34,34,34);font-size:12pt;font-family:&quot;Times New Roman=
&quot;,serif"><span style=3D"color:rgb(31,73,125)"></span></p></div></div><=
/div>

<br>
<div style=3D"text-align:left"><i style=3D"font-family:georgia,serif;font-s=
ize:small;color:rgb(80,0,80)">Disclaimer:=C2=A0</i><i style=3D"font-family:=
georgia,serif;color:rgb(80,0,80);font-size:12px;text-align:justify">=C2=A9 =
2025 VVDN Technologies Pvt. Ltd. This e-mail contains PRIVILEGED AND CONFID=
ENTIAL INFORMATION intended solely for the use of the addressee(s). If you =
are not the intended recipient, please notify the sender by e-mail and dele=
te the original message. Further, you are not to copy, disclose, or distrib=
ute this e-mail or its contents to any other person and any such actions ar=
e unlawful.</i></div><div style=3D"text-align:left"><img src=3D"https://vvd=
nnewdev.vvdncloud.com/images/it/event_signature.png"><i style=3D"font-famil=
y:georgia,serif;color:rgb(80,0,80);font-size:12px;text-align:justify"></i><=
/div>
--00000000000076499b0640c69ffa--

--===============0604380302883530886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0604380302883530886==--
