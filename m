Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA55C1424C4
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jan 2020 09:05:12 +0100 (CET)
Received: from [::1] (port=47180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itS3V-0003If-98; Mon, 20 Jan 2020 03:05:05 -0500
Received: from mail-eopbgr1380135.outbound.protection.outlook.com
 ([40.107.138.135]:63360 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <sourin.mondal@vehere.com>)
 id 1itS3R-0003De-Vz
 for usrp-users@lists.ettus.com; Mon, 20 Jan 2020 03:05:02 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAjfwkWJzhkx/4ssTwFtFGZUesrn/4uk7ws60fx7OBH3kf11PUi2cV3eaSaWMfG14Y61pE2+p1XSynhjHEOOmThc2+E9ln9DX9K7S9emoBmvJO1Y+Fiad7OUXuI4TAwJa2m6GhBbd8CgkMencWoX1YZ9V7UYeKzgXb2+x+e8UC4/cEf75gK90eIuyHVwtHz3vc+2bXfsEcJznH/6hUiYmUtkyJ2Hu/J2/6c/aIbNEHK4mZvDUT/5Sp/rwb/vUMr/5sTQUE5/f3v+dPpbQBQuD4VSdUWfYEKSl06cXBzMr7Kn5kgoHDJu5vpRfJ/IUEyqrzlKWZ6ylxyWxBhtl+gEtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7PcRtxOkeZRiDR+AJOZ6A0Prz+mlfQUrALOGezk7bs=;
 b=DIV1rmrnVGk2oLQWAcZ1t+DEc6YSamM+CfFukOEMv/eei3J+KhT3I686qt01Yq27F6rZ4RGdyHiu1lxAy2S2QRd83Ysy9VAlyDbyoOvAczAhfi4zsTUPuiJWL9rEjI245CSlJLhkv6rCyMPVJxgjyu6YVEwMpWmf1TrC+neMdVrOlrNsqWXBwOmNg/YUt53wjQ1g3GUqPcZM0nC3pbgCqLa4XcdTmJHA1bUqkHEO1elcZMe1p/bOOG+hP+1PxC9nT9hvoF+6Hz9KEd7yRPszBsE0UTQlOj1Mbo2qanO7mKfFLAm0T7TcJe5oBdXFAYzAVBFm2mUdnuc2m15AL6KZew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7PcRtxOkeZRiDR+AJOZ6A0Prz+mlfQUrALOGezk7bs=;
 b=UTJ+U1VKWCo5dLckFk20B29HrZLELBR45HmkRusYikNBUQV+A9Dh0aEFXt6etQ2pb2//CDB1RPDxw23bg6HcL/etlWJ3GU9t1ej7C1knBE/xka6nsjjVyzePnflL/StS75mrty9VMP9Ta+KFT6LhG55QU3PFcDp9vZxqm0Y0PSk=
Received: from BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM (20.178.169.212) by
 BMXPR01MB0918.INDPRD01.PROD.OUTLOOK.COM (10.174.218.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Mon, 20 Jan 2020 08:04:17 +0000
Received: from BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::7984:e506:fdaf:8504]) by BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::7984:e506:fdaf:8504%7]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 08:04:17 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: phase-aligning two USRPs without Octoclock
Thread-Index: AQHVz2bE3GcysuM9wU272v0JQcfgjg==
Date: Mon, 20 Jan 2020 08:04:17 +0000
Message-ID: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sourin.mondal@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 477df7ad-f2ea-4e6f-71c7-08d79d7f58fb
x-ms-traffictypediagnostic: BMXPR01MB0918:
x-microsoft-antispam-prvs: <BMXPR01MB091863B58849B441A137692A8B320@BMXPR01MB0918.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(136003)(366004)(376002)(39830400003)(189003)(199004)(76116006)(26005)(66446008)(66556008)(66946007)(66476007)(19627405001)(64756008)(4744005)(7696005)(186003)(33656002)(52536014)(5660300002)(86362001)(6916009)(8936002)(81166006)(81156014)(55236004)(8676002)(316002)(2906002)(508600001)(71200400001)(55016002)(6506007)(9686003)(966005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BMXPR01MB0918;
 H:BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 40f1DyU+WedvsdTuTKanXspbqFIYIbHFMeoTlxeFOHnyUIaylfgRWSZMDXNpH/duFgj4/jA2xJ2DlKzJdK7KeRlllB6272LxuG+qFG6u8X+ueQIcQUS2XqKGgRi0zmtiQTvvnFRgdehYpqrKqTAa9no++L3wsHbjAD0wUimyYRqV2DojZ9wsm0opGI0XK/04SvBlLN4zKDuu/oIfTrU67WZFO5P/P6BUW84JmdD5WMNZtYQE1qVBMAUFNrAOSSYseXc+bmvTFWrCmpJSyC4Jo8IXET1DGg0puk1OwHCX5asTKZLCKBxPRE8+TqsP9y2qm2Eco0bsm9EAmWk70GOBwnI5SduVA2avxaN/Jn9VB6TEJFmYzGaNpOVXFoAd/C3vQ0TAiyKU0yY2obfbU8U25mkqNh8g8KU7WymUHI7qA/wd8qcx+edFcZcQ7SXFwUf2XBXm4QGjlEKxuO1qcAi5U08th8k5kpwIFOf+W/Va6YbNZ3PFbY9Ku5pMOxioxDoGYTVMpHAeN/PZB2RbpMiI/w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 477df7ad-f2ea-4e6f-71c7-08d79d7f58fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 08:04:17.3336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PyObbGqysG5vO1/Uu3cUfe/EJNCkCeNvRGP/oPYRbVBVek1o8v+JtSm/guC68dZkmBgnVjMIAmGpxsqdjwYzjOtdbFFGiazsRxQM/7GgyZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB0918
Subject: [USRP-users] phase-aligning two USRPs without Octoclock
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
Content-Type: multipart/mixed; boundary="===============8155326081826525047=="
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

--===============8155326081826525047==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB23606E790CA4146BE699BFF58B320BMXPR01MB2360INDP_"

--_000_BMXPR01MB23606E790CA4146BE699BFF58B320BMXPR01MB2360INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Following link (fig. 2) shows the cris-cross connections inside USRP to syn=
chronize (phase align) 4 channels of the USRP.

https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_=
TwinRX%E2%84%A2

If I want to synchronize (phase align) all channels of two USRPs, is there =
any solution for the synchronization without using Octoclock-G method ?

Regards,
Sourin

--_000_BMXPR01MB23606E790CA4146BE699BFF58B320BMXPR01MB2360INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important">Following link (fig. 2) shows the cris-cross =
connections inside USRP to synchronize
 (phase align) 4 channels of the USRP.&nbsp;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important"><a href=3D"https://kb.ettus.com/Direction_Fin=
ding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2">https://kb.ettus.=
com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2</=
a><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important">If I want to synchronize (phase align) all ch=
annels of two USRPs,<span style=3D"font-family: Roboto, Arial, sans-serif; =
background-color: rgb(255, 255, 255); display: inline !important">&nbsp;is
 there any solution for the <span style=3D"font-family: Roboto, Arial, sans=
-serif; background-color: rgb(255, 255, 255); display: inline !important">
synchronization without using&nbsp;</span><span style=3D"font-family: Robot=
o, Arial, sans-serif; background-color: rgb(255, 255, 255); display: inline=
 !important">Octoclock-G method ?</span></span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important"><span style=3D"font-family: Roboto, Arial, sa=
ns-serif; background-color: rgb(255, 255, 255); display: inline !important"=
><span style=3D"font-family: Roboto, Arial, sans-serif; background-color: r=
gb(255, 255, 255); display: inline !important"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important"><span style=3D"font-family: Roboto, Arial, sa=
ns-serif; background-color: rgb(255, 255, 255); display: inline !important"=
><span style=3D"font-family: Roboto, Arial, sans-serif; background-color: r=
gb(255, 255, 255); display: inline !important">Regards,</span></span></span=
></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-ser=
if; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255)=
; display: inline !important"><span style=3D"font-family: Roboto, Arial, sa=
ns-serif; background-color: rgb(255, 255, 255); display: inline !important"=
><span style=3D"font-family: Roboto, Arial, sans-serif; background-color: r=
gb(255, 255, 255); display: inline !important">Sourin</span></span></span><=
/div>
</body>
</html>

--_000_BMXPR01MB23606E790CA4146BE699BFF58B320BMXPR01MB2360INDP_--


--===============8155326081826525047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8155326081826525047==--

