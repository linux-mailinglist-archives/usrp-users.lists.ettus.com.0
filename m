Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDD34F1041
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 09:48:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BBE8384860
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 03:48:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649058513; bh=uDDpc0kh+iKVbtwMDeIdJmazsVOMLjyiSfF+7mUXD3U=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EIGI6okSY80C/uNKUEsyixH8dvS8LtS8z0UzbFLMox4bBpYP6yHaagkb3/hwWHV3K
	 N8EmxdWG0VGx/2TYLKB8HMmTyJ8flY9X26pNWnhYkAaT4RvMgkX+TDdpbc+dWuJILJ
	 umedNLwCbWTxDPv1I/0f8gIvFaEmeUldtrwOAcIkgKuVlAzV3ykeW6uyITx0adSJNZ
	 Q3hn8sPtj88bSaoYG602cMt/12EGl4WvT3PLGgnxDXxZ5mgubEilkNpuy+1taCcBW/
	 oFQtecopPeUg6RFynqfGmO+Ofg/VFj39+9CS828PSquO4hV7OJGQ3C4Aa9jq+xKmVy
	 KtwJR2OUVxWRw==
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2106.outbound.protection.outlook.com [40.107.225.106])
	by mm2.emwd.com (Postfix) with ESMTPS id 4107E38422E
	for <usrp-users@lists.ettus.com>; Mon,  4 Apr 2022 03:47:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="IDYp3hPG";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6EgC5oQMChFWzfG/hDLDf1/FDW/at1a+zrtIqfSY6oi7v3keqDjzTSyeMi6EgGNuQW7gmrhv2eZdDuqg81zNibiMijAjLceWeR+hTRh1t+ILr+TMUIW8Y943867W5iPdKyLNwxgHl17QDh8N53Rs3OmIUN/tu20fA8G4JHcGz4sVWHlcBM1kLq6ikZgh8R4qWgbxcbzduC5qoHOlqwhEoBod3d/+fwTfAs6nuiFaCiUOwUorsgyyhEH1Ik/Kbe7Mxal47/hpwsS0cHFW8X9ZtuGTcUWHR/pqIcvw0qCpwkCih6W5Pk0bSr5QD9t5ErLq/c2xckCsXPGGSJPIUaH4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xoP+UICASoKa7XC406VfZztcIxJk1k7QQreTPacg0wE=;
 b=HS2afO1aMI7sZThyer0i297TDqHgohgpwYRL9yNoBIYUrdU1uTPyAa0E3c5c8WXlk0TarBYej+GH2nydm339XJIzZ5Esy7GC8n95UBk7s6MDGgSlROdxbXp9Nx3mwVPSLa4NdgcC/vZB3UK8Ceyy54K4O1qbIuuX820xCZXyfkLudweCPYQIHlB83uOSxYA0kamAOQUkmHhbFmHqE3eW6ouJkj4zy3gTuU1iQmymW14l4Zh0rsx28tiw7geLu3VCxfUu5ZMZ0Sgp7QmY8sN9P5HULXUmB/E09c0bCwNNCIaOq//CRdXWmW6kGlMOEGM/W0vRnhvfMeCqOc9yNu0oZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xoP+UICASoKa7XC406VfZztcIxJk1k7QQreTPacg0wE=;
 b=IDYp3hPGUKrN96YD2rz/ipm43QPzxgnD9VF4IuTYkOo5hM5OMer5+jU87GX6njsiDwwcbQO7tjZLCFx1XpL7KmJPuCCTZC/BCsy/8rkrqTskhUoFIFmfPitVwxf6tJoCQ5xmLRs9rQuiezSqPEseXiyVJEyAhDheO8LMOm9NrnaFg65rHTTqQF3dSojpoilveXx+UEdwODSQNcxqbSfXKDuVj/2BLKeNBY3z3TMRy8nDDe51aOdXgXQ0ktMya5BSmsn/M1nvoh0R2jWeg79hiMWlt+y70YDRutIFhPlsGoA5SyHZa8K5Y33EAMCze30/Dh0Jq/GoC37D6CZmw54O4w==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 SVAP279MB0095.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:7::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5123.16; Mon, 4 Apr 2022 07:47:30 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::341e:80a8:c827:a79b]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::341e:80a8:c827:a79b%3]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 07:47:30 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 USB - serial problem
Thread-Index: AdhH9sfWDXFvJQC/RWuhgTAu+EymTQ==
Date: Mon, 4 Apr 2022 07:47:30 +0000
Message-ID: 
 <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e825af77-a5a3-4361-6203-08da160f5f6b
x-ms-traffictypediagnostic: SVAP279MB0095:EE_
x-microsoft-antispam-prvs: 
 <SVAP279MB00955751CF230BD3F73537C1A0E59@SVAP279MB0095.NORP279.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 V02oISkoqmMygbCaUlVvCC+AypeO5NhyPE3iq4Sbl4/5271/iX+WnbY2oafFjlhWs79VK4/4gK3Y+zsfPVimNC9dh5IShwdPivZC0qpPPSLAgAW0MJ0BGTM/tgGrFf/YN262kussrrCh5y4XxcWfYRMSr4Jby4KYr2UkM9YHLCVp340Trt22zQjjbmuGy1a75SprcJXNdK+qAvOxnjW+AzXtG1PjzCwag235C8S1tTl75OooSy5vlDNBXAF9NUZ4BAfKiyIQQjVkeUtXGw+sb0dG58BfrYWUnAaONkgJbc6P2wPe2lN7OYjnxTcq+V6Y/w8abvd84CGFj979Sg/8S2HBZDfXKy5llSIwWLdEWzLsp2+o1SZPCn2HV7zL9oWB5/530Yq9BMt3vJO6v1iPTTXuPZM3t1EY/NSAbnw6vMkDeY/Y80XvPvMF7v1togvAReHPjxtAwNd0u9+RyizPYUycCeQ0z5n9uoDgTuPNi6V4OEgLrn3WO3U8at+Yyp0djb0O5AC+O+Sas2z3WHG9CgAhHJ5fPwzzpV2BYoN3sy8i38zi46Fw07XlVO7Kn/OFiHiYk5vIv6JBTAKezA2JbABlLgE+Pbl+nXenUcQlMQYlpHbo+lYvTUCH0zo+YafmE3Yv6fjVvBCfkd0tlsUygAiGDqGPNZXb/b7eAMK9WI2CWEKjUmtwK8vzkJHWxMwTrehsm7rAoGbEdlNOIaBf/w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(396003)(39840400004)(136003)(366004)(346002)(376002)(508600001)(71200400001)(55016003)(186003)(26005)(122000001)(86362001)(5660300002)(8936002)(33656002)(38100700002)(52536014)(6916009)(316002)(6506007)(66556008)(66446008)(64756008)(8676002)(66476007)(38070700005)(9686003)(66946007)(7696005)(76116006)(2906002)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?MVdWt72bipLoZuxvWX0/wxFjFpv44IkmxGzNuHlY9neZBMkKnPu+fLC02n?=
 =?iso-8859-1?Q?ie+l6Z59nEvkKQc1DBQLLHGO/szzuOVa59+zRedxKB2zLjXF1TeYLWWGEh?=
 =?iso-8859-1?Q?mPjNH6CIKkQTVmwc690TqBrb3mJj8SpaHsXQfoPyz7ADN/PeE125/iXzOR?=
 =?iso-8859-1?Q?wzoQ4rUHSwa56420OUhCQjzvbqRWm93oKgNkk3xyHF02ktAOhXBdiz5sL2?=
 =?iso-8859-1?Q?kwjmpOkqI9ZsOEkEvc9GQ3mz1iU7A0OtDIzx6Xoy/tifIJcHzp2vcwNWQI?=
 =?iso-8859-1?Q?rCrELPUdQ22syg+rV3cG9Yk7TQ64iUX0GF070IeNUbHARc6Gz3y7kNoda+?=
 =?iso-8859-1?Q?+W4kYGvZzq2eDuCGR4ZgPUug9XZtq+aBP6Bm/N2d6lUeDAevVW8B58/Cxi?=
 =?iso-8859-1?Q?yXBkc+XGHnJcinH+ayHqMgLSfzTjUFDdxdrVhN3KAiYUebCUNe6q8qs5fU?=
 =?iso-8859-1?Q?UThFrqq8KzdsXOUblQDDk3X7dlB73mzFDiWXwp1dMDGjc4tYoN1irzaqW8?=
 =?iso-8859-1?Q?84ZCEHt0Elw8NXgZUGUGz7jGOQb+P2nuNMiManRjCo53rBULwFUsqueC7H?=
 =?iso-8859-1?Q?WDr0w0vqWPNyMQr4NTjqrgL7HJ4o730qnCgqD+1VBZSfEjUm2dYqI249Mo?=
 =?iso-8859-1?Q?mHxGZ5LbHINo1JLzhY6uJ/CKf4D2GbcwlGTqt95lfblG0VGep5oxdPn1K7?=
 =?iso-8859-1?Q?SPry4OdfN8rDDpygnF2Y0jxybP32BrtzM4228k0n1dlxlHUtJqPYrYiJyU?=
 =?iso-8859-1?Q?jhMl9fkq3zxOP6EMBze6bo8kqyjY96eeknVqjR2MfCpGHdKcq78tfGOArp?=
 =?iso-8859-1?Q?Xq+j4IdCQlOnkuR5MtiY3zOwL5Wj+Qp1EFq0I9gQyNsl9PkOxkUDSsyIfT?=
 =?iso-8859-1?Q?5OCsnRGw64zHgSNQraDbqzu0DOKR1h3iXqkhj3FtydFxIiYuRd+9SHCl+K?=
 =?iso-8859-1?Q?9mI84elJ+nNi0eRu4O/HMaNnxap/8bFLdiqkXRgBHEDljL13A5itycqHgn?=
 =?iso-8859-1?Q?PHc9i8c/VS/9wHIFjVREMYiEUE2Tk1C+sxhIguluICavkeLdyDHS1gv8m8?=
 =?iso-8859-1?Q?6kwxnwN4DT5M7oBbGAPbBSOObWWOlW8lK6D5qLxBE9UW61X5F7urQA3vou?=
 =?iso-8859-1?Q?uCoaY9uI6TLvyTVx/xVnRf8ENkhY5M2frtYuaZORgHZuF3/+UYgwX+PP7M?=
 =?iso-8859-1?Q?g+avB/9CpTUExn8hP/ykiJZxnaPHi/rulVZPySZ1sw/1ISOrNI9DkGSPKX?=
 =?iso-8859-1?Q?hSE11bPKbHHizInkl5A4XdftjdPnJ8lrrRNAvzx9jlqebUno3TjbSwd4LI?=
 =?iso-8859-1?Q?3DZ/8Fpx0FTAQPwRpW1SPFI1chBhDs4d4wnUxz0KeogRMVgazGY7KIrmRN?=
 =?iso-8859-1?Q?TFAiCh666GCMK9aFCcsBxiFaaaHRaZINHW2ZF/wmLcPg7ijwHJ2IM26nHg?=
 =?iso-8859-1?Q?L4ypUlZBZ/2ZE32eftwbfUBIiBs4keWwBg5sC7qjgER1VW5FcKBc3+6SeU?=
 =?iso-8859-1?Q?J5Xj8tsrldDrVSuFQPiM64rXQojfHid8fwrSt9Q90Y7NVf4eFX45C6G+vM?=
 =?iso-8859-1?Q?tbh7hq49V2lpgB4tRHVDKODG0HnW8wQ6U+dIy2mOYUvICE0k1dPrGLKADr?=
 =?iso-8859-1?Q?dCwSiaWPley7nXHNqDxo4BOe1+wMcKxCqFnO+0fb+aTa8yXhKHsD443qAX?=
 =?iso-8859-1?Q?T2b9qM5UTTkkNtYe98yD7fexRwX0uomEtM1WJFJzzfoCvdGPsiMF5NzKk+?=
 =?iso-8859-1?Q?bWpxSQNlnL+5J3GsS9Ptsep6/U0YiLmaXSzHmKUCxZQu4y?=
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e825af77-a5a3-4361-6203-08da160f5f6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2022 07:47:30.6758
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aoIx6gbqu+UVNsFPJnKkrg3XdNfEXUFZhsQDllcL6hXheV9cQTQw3O14N2zTMd/J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SVAP279MB0095
Message-ID-Hash: GUB3ORMNVHF6YM2K2W5TV672DL5R46LX
X-Message-ID-Hash: GUB3ORMNVHF6YM2K2W5TV672DL5R46LX
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3GCL2ZRW4DNUUU7QX4RRTCJ7S2FIW4P6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0953188864453368755=="

--===============0953188864453368755==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB008348E9ECCB13A1DEABCA68A0E59OL1P279MB0083NORP_"

--_000_OL1P279MB008348E9ECCB13A1DEABCA68A0E59OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Currently using the E310 SDR together with UHD 4.1.0.4, original image file=
 downloaded using the tool uhd_images_downloader. I have tried to connect t=
wo different USB-serial converters to the radio. Both returns something lik=
e this in dmesg, and no /dev/tty*** is created:

[ 1516.703188] usb 1-1-port3: attempt power cycle
[ 1517.382889] usb 1-1.3: new full-speed USB device number 26 using ci_hdrc
[ 1517.822885] usb 1-1.3: device not accepting address 26, error -32
[ 1517.922941] usb 1-1.3: new full-speed USB device number 27 using ci_hdrc
[ 1518.362912] usb 1-1.3: device not accepting address 27, error -32
[ 1518.373791] usb 1-1-port3: unable to enumerate USB device

lsusb shows this line: Bus 001 Device 023: ID 1a86:7523 QinHeng Electronics=
 HL-340 USB-Serial adapter (WeMos D1 in this case)

This is probably caused by lack of drivers? Previously we used the old 3.8 =
image, where USB serial converters were added without problems. Is it possi=
ble to add support to the new image as well?

lsb_release -a
LSB Version:      n/a
Distributor ID:   Alchemy
Description:       Alchemy 2021.04
Release:              2021.04
Codename:        Alchemy-Zeus

BR
Jorn

--_000_OL1P279MB008348E9ECCB13A1DEABCA68A0E59OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently using the E310 SDR together with UHD 4.1.0=
.4, original image file downloaded using the tool uhd_images_downloader. I =
have tried to connect two different USB-serial converters to the radio. Bot=
h returns something like this in dmesg,
 and no /dev/tty*** is created:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[ 1516.703188] usb 1-1-port3: attempt power cycle<o:=
p></o:p></p>
<p class=3D"MsoNormal">[ 1517.382889] usb 1-1.3: new full-speed USB device =
number 26 using ci_hdrc<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1517.822885] usb 1-1.3: device not accepting addre=
ss 26, error -32<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1517.922941] usb 1-1.3: new full-speed USB device =
number 27 using ci_hdrc<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1518.362912] usb 1-1.3: device not accepting addre=
ss 27, error -32<o:p></o:p></p>
<p class=3D"MsoNormal">[ 1518.373791] usb 1-1-port3: unable to enumerate US=
B device<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">lsusb shows this line: Bus 001 Device 023: ID 1a86:7=
523 QinHeng Electronics HL-340 USB-Serial adapter (WeMos D1 in this case)<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is probably caused by lack of drivers? Previous=
ly we used the old 3.8 image, where USB serial converters were added withou=
t problems. Is it possible to add support to the new image as well?<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">lsb_release -a<o:p></o:p></p>
<p class=3D"MsoNormal">LSB Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; n/a<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Distributor ID:&nbsp;&nbsp; Alchemy<o:p></o:p></p>
<p class=3D"MsoNormal">Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alc=
hemy 2021.04<o:p></o:p></p>
<p class=3D"MsoNormal">Release:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021.04<o:p></o:p></p>
<p class=3D"MsoNormal">Codename:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Alchemy-Zeus<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BR<o:p></o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
</div>
</body>
</html>

--_000_OL1P279MB008348E9ECCB13A1DEABCA68A0E59OL1P279MB0083NORP_--

--===============0953188864453368755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0953188864453368755==--
