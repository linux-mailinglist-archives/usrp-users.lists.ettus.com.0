Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ABE9C1BE4
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 12:11:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 579813865BF
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 06:11:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731064281; bh=Y6u+ZFZRX9BHGJSIchN1LsQ5koJBqVBnwIr3O2aQJhU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IL5H1PH/gZ2gJMU61XS5R7TX/oJxxKnl9jGb/wafObbB7E1vdhmfwcvVRem5fPxUA
	 X6g0qnzNsfxsY+dxhJIRxF0B2simy0z6G0Y6zsmrxjhyaf7SNFTLQ4zNVrZVDTHsqi
	 iJbA3qJWg8nYacvULCyR1RKzdztjk2b4Lt9GKEiiPzyotqG+17V+Zvnfw7QvgPpIne
	 oqP7ZLMe/r7FHGRlia90er5rSEz6wHdVvQ6hQvs3cswShVyw8/DYCXqZG42799PoTS
	 92sl4n59umos2xmZ2VkEMpfXDpOkKh2D4Bn1SKl2XhrsIGGJOHMgXti7K+fUnZy5qB
	 yFWycD20onzGw==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2104.outbound.protection.outlook.com [40.107.239.104])
	by mm2.emwd.com (Postfix) with ESMTPS id 70F683865B5
	for <usrp-users@lists.ettus.com>; Fri,  8 Nov 2024 06:10:55 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fud79gYXAqE9vzsrow6RFSnHWDU1mWeH2jdbpWEUVOSGsBt7BfX3/JmSdS0lhG1+tuRgSbfkXzjPihwC0EO7PX6PsxGSfqPtr944scQSUz5DIwSWBayacoExr8Xq2/HJGXrRcD3LIeXEqYteFFsYV1Rjc7u5BzVcoMl9Pu2mHkNE7G3pP550aPhlPI2+MBI2++K/vUMalmhZGggAJgtAy+Cth5w5fUTJGDyn1EX6zxlXg49M9UUjVpWsrKF0fSbgpkxqHgZ1Cvgp+Y2wkIxJTms/9Xl+vpqTA8pFFtOQPVUTU2S3qnaIuhG7gAvfC5BEusdOtZxpgTqm8LrfapwCXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T5DifqJ+ZryxRSfy0bVB7aRgcG0Bnk5wkhPVGcLy0dg=;
 b=yO/AZPaXKKQ5eNavfTivE9vDZYoZlVcSETHGUMGsur6d/LM1Dz4Wu04PjtD2n1cNIYuh+Tc+9A3EE2kFGs3dX6CO25/lU95F3Qr4igiNHi6zT9Q2b08W9iFmwh+eoREPW9XqeiJb7Mc/VzfEbnTaw9oCd6f4UPKMvJn+MDBUCo7C7qqEhhKlAFir7zHXHZQTKAnqhYhD0k4usnt/sdzWODVLFk/koKz31lvZqgMH+Me05R1AniiVIhhUAN3icewo2MKbps398l4SzwPJog79AflLpvzZVoGMxLNCM5QXOjP/h4oW9iZ1WLE2XVIj95gxNDczxlnyxjow0Uic0r/OGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cyronics.com; dmarc=pass action=none header.from=cyronics.com;
 dkim=pass header.d=cyronics.com; arc=none
Received: from PN3P287MB0291.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:d4::11)
 by PN2P287MB0673.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:15b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21; Fri, 8 Nov
 2024 11:10:51 +0000
Received: from PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
 ([fe80::c4cc:88c0:917e:1ac2]) by PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
 ([fe80::c4cc:88c0:917e:1ac2%7]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 11:10:51 +0000
From: Nidhi Panda <nidhi.panda@cyronics.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Replay block use for continuously stream data.
Thread-Index: AQHbMcxVXsQ80Pgcr0SbYFM7M+nPkQ==
Date: Fri, 8 Nov 2024 11:10:51 +0000
Message-ID: 
 <PN3P287MB02912CA9923EA294EFE33AAA935D2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cyronics.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN3P287MB0291:EE_|PN2P287MB0673:EE_
x-ms-office365-filtering-correlation-id: 87a2832f-fac8-4975-8d2b-08dcffe60162
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|586017|376014|34036016|1800799024|41320700013|366016|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?bfHyQI6g06hpxVyDFTXLf1+Aeh72ig2350uJjxfVAevD/OdOiiO/NQXUIZ?=
 =?iso-8859-1?Q?FSRUdFPWl2dB+HUNI//WMNuQax9xooj4baJ54BdyfG9neoyaKzTEMr1iX0?=
 =?iso-8859-1?Q?Bmfa6TcI4XPtbihrJrEaNGFJq2ZTfPW1Y+zBSpCr1iul+JAfJK4U3Bpkha?=
 =?iso-8859-1?Q?KNOZ7dPIKejpbqvrWuwy0v8AJCJa/1U/vAvsCoPLZdnDhhpKoqHwAPthFm?=
 =?iso-8859-1?Q?zUriCyfLIJXUtY6u+phNf9Dzi27MAM4ojwU1Ux6Xd3hZYXWGjZjTshxpar?=
 =?iso-8859-1?Q?l/bdMZ5fEcvGBQt1id/eAXVf7vZj4Cg5JLPZApYjy6vovetwLh+LwN0V+6?=
 =?iso-8859-1?Q?l6l80R7IXOHEKsMMYX0WiIE154OEtEYd6F3UF8fMsjewXfvSBcbCykpX/A?=
 =?iso-8859-1?Q?TCKDlD43hpRGYqEj/UsL8Zhi0cFzlbrB4xUFVTZUL6ZL0idICmGVhz0sXe?=
 =?iso-8859-1?Q?SyWsyBlLFTIODLA9RCOu0OCAkJ/8Emi2x8hFHd+yB9g1rB5KEhtybNneYL?=
 =?iso-8859-1?Q?C6L8N0avsX3ZICst5sd2DF40p9I9uTTBtm0wswn3Sylv7OtYijCI1tcor8?=
 =?iso-8859-1?Q?Q6utKqWO02JvQqjLMQyZ20y5yfc3prIcH5QA2VODLNZcRJpJklcgJrNXsm?=
 =?iso-8859-1?Q?R3b2BNlbJTtI4tUS3rnhlQrl9P+gSJs7q2mBcXENtMtQEqIP5OB6vLleXh?=
 =?iso-8859-1?Q?zaoVPxn47TjHCS1nis2x/RNAbHzfbC88FKN5xuWBau5Df87Qi6KsSSdVlf?=
 =?iso-8859-1?Q?6iF1N/UQ23IazVvcZbWIE9b5s27L+Pm+vldVuP24GsyFFidLsVniOAD05/?=
 =?iso-8859-1?Q?Xrg825OMdy7+jBmy93jZWu9DilDZc/T52m5eZ1JdTrTQOvIL5PZH3hgHwJ?=
 =?iso-8859-1?Q?R797Jrxe/x6kRZyRS1/6+h0sH92R/nL7zv4xoV/vxijbSL/DcMMUSbRYNJ?=
 =?iso-8859-1?Q?NIKSk6M3lIt2hVS8LGesgwS9wE5bD/kCj09oNr5OAPYhDeaeyupTumamZs?=
 =?iso-8859-1?Q?XYxiLy1rOWxMRz7Ojo8cHzkSSrxHevjmkGmqpcD2xxf93JUfcoz3XjZnqi?=
 =?iso-8859-1?Q?pRI4sPCrSdtiMOuhQUu4otGgo6wgl6gFNLHfW14Xm7e//NX5SznRNvmm72?=
 =?iso-8859-1?Q?K8TwxRj+hz+4tzoZPdiOwJ9g5lmFNa96MZDJ+WO3JOOASXsgoaC52PYmGD?=
 =?iso-8859-1?Q?l4rcAZ48+r7PChc/2woLacsk3lWjCBfGq1CjXIVDsdZMjQWJ6Y1ME10wp1?=
 =?iso-8859-1?Q?dO6xqpUfxrxE0VtnOV48OzjFSdt3MGLeXGWXP1vixZuZm1IJvF9nr8wjsD?=
 =?iso-8859-1?Q?klQEz2cdRlu+hPk1P0CAn/yJhWMwkbF5zexocB/kn+P6ZiHa+/8YpZ4t4G?=
 =?iso-8859-1?Q?FaASQTMhad2BjMJDzHDjYk3vIe97wSp6dYTfBVep22ue5kWvQLZyY=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PN3P287MB0291.INDP287.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(586017)(376014)(34036016)(1800799024)(41320700013)(366016)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?d3f624Frhpcuck0xoEXkgEerAgsGjP9KFGSuzmKE29GHYFkHC3UqbfpUKs?=
 =?iso-8859-1?Q?92nfuCD9pU9hA/qs53quzzg75aIOZAntnf4Byq6iuh+MeBW3uGRQ9cmVWD?=
 =?iso-8859-1?Q?tZuM6713FRKsHeYp0bPxejNFiqV/RNP2aY1edrv8/soBnaDnYpWTau28SV?=
 =?iso-8859-1?Q?B682caCztj9sxUf8Qto/iGjQd02ZKVhDfmajhNNwvBY/Sx0/wGR9ANMi6Q?=
 =?iso-8859-1?Q?cuTDeLxoe504R+XGZ0KVBct7nflbfB/ksVZjyw62H1wZYqFo4ppv+mhtua?=
 =?iso-8859-1?Q?iDzDR1Yf5iLLtSQGseX8HXfiqJShKH10UClRn7mwesgAQmpf9pkwsmKEax?=
 =?iso-8859-1?Q?LDNrQmJBpr4+hoOD5znBOBO1sMDfEWfecvzA3wPvtix2yo8GNmS9MODDtr?=
 =?iso-8859-1?Q?O4okqcmygHeip7HtsX8+m/d165TXPCRBmoU35yBbkSaTWs4viv0cAd7fqq?=
 =?iso-8859-1?Q?5pnFk5OWA+AVZO6kJAAYqoM7cWT9CC5kzO6WzYJV74GhAQPec075tLHf5A?=
 =?iso-8859-1?Q?lvxWxbwlAvw5iavNg9DDLo2He2lRal17uuebZqVGT56c3DCO613j0LM9N/?=
 =?iso-8859-1?Q?F9X77Iq25FxR5cfCwsZz9XX5KehBvW7qg8ixE2/0N1dczx49jCN1U5FCUM?=
 =?iso-8859-1?Q?YFPXFmh8wlGbIZ1L0zD3ZtaK+/BUHBvs7z2afAP46yzFCvUammfW+XY21j?=
 =?iso-8859-1?Q?/ct0oY7Aex6NbR7zyab39UK7zUG4M0IONPc7ub+bH8d3COrYq8KqznFTBk?=
 =?iso-8859-1?Q?nv6EQwvI5B+sXqsGMQazggaO0EEHNWUZSBAggXirYXlK+6Q9qChfVP5CPL?=
 =?iso-8859-1?Q?nFDsufSIpMg7pz594HqAFbpOGdB//EfzHC76PQ2fgGmUTgRT1p+TL/iCer?=
 =?iso-8859-1?Q?o3L7ktfvcuLAEVrht13KK4TGiUD2MjYgBlhO1ZfYJyZOZtglhmpGCawcyH?=
 =?iso-8859-1?Q?pMWLJoMgzwBgGkpmO7zTLLgdw9JxoJvDfgsKsCLhYfqLYN9AWYmH0+tWe4?=
 =?iso-8859-1?Q?7VOQg05EwoXZTDVVCIK/G9g/c+78+N/wg7pwA8GmWEST4QVzbivAnvxr4z?=
 =?iso-8859-1?Q?z/oi5+wzZpJDyrw3dQITka8ZeuxngS4fchnrbnnMoqN6UeNOTi0PnFQ9jH?=
 =?iso-8859-1?Q?s/RL7myhBjvWUnXFttjIvq6BCNbxijWEA6W6VL1C+I2ls52wMSyF4NdiJ0?=
 =?iso-8859-1?Q?DIb57jbTn/02Zw7QZT7mXFmrHU6X7ym6oOHkw0BY9gsKeNsbz+XTCLCmsL?=
 =?iso-8859-1?Q?TzwBewZAk7mEUHYHA9LnZNnK5KaiwAk2xUI0VwJHCmi34WJkotN+etFCq6?=
 =?iso-8859-1?Q?3IvHUG6/iXiPKY93Nu6/1lq+p2kgA25vfANaAAjKGeJB3Lj6r4piPOPYGc?=
 =?iso-8859-1?Q?oZybIGNCq8EdgIfztgwNjnzxFdb5piplmQSstx14WgXQfSVgQmsSGoDfyl?=
 =?iso-8859-1?Q?CnOZoIS6kLgiFuP4qUp4UlxFmModYl+VL7YA3mJrhBdJlNbbWGj+Lx5+Cd?=
 =?iso-8859-1?Q?zKU2GFSn4UuLiAJ0RT77Dp92gdAOU7KoXc6+oT+3KbUJzqF9jLLCcfx+0t?=
 =?iso-8859-1?Q?I66pV12XbZ7GgOJGwD0nYfL0YqLBl/ryKl82YA/METxaaTOCbHr1pUROGS?=
 =?iso-8859-1?Q?hgf8L5JcyZd2KGfYQJmpAiTdWsTTaK9KTS?=
MIME-Version: 1.0
X-OriginatorOrg: cyronics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 87a2832f-fac8-4975-8d2b-08dcffe60162
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2024 11:10:51.0274
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be1a3fdc-e532-4f10-81f4-e383b8410e95
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EuuESI+mzN7KhWVjzW3HFV5B4IZL8lnvnI7IPk+ekJPIQyGgsbI+e0HyCFYFEUJglp9CLZyR/HH2txzyS589vheWMgo9RMcU/p1QoDam6Y4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB0673
Message-ID-Hash: 3POXIIK4HGEI7TBTEUTXWAF5UNXMDKPV
X-Message-ID-Hash: 3POXIIK4HGEI7TBTEUTXWAF5UNXMDKPV
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Replay block use for continuously stream data.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PXNGBPSBJZRWWII2AZNSDPUPEAQ43VEB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2078309393272091686=="

--===============2078309393272091686==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN3P287MB02912CA9923EA294EFE33AAA935D2PN3P287MB0291INDP_"

--_000_PN3P287MB02912CA9923EA294EFE33AAA935D2PN3P287MB0291INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,

I am using USRP x300 device. I want to receive data continuously store it o=
n ddr memory and transmit it after variable time delay. I know there will b=
e constraint on the maximum time (because of ddr size) I can wait before st=
arting transmission and I am ok with it. But after a fixed time delay the r=
eception and transmission must be continuous.

I read about Replay block and as per my understanding we can store the rece=
ived samples for a fixed time duration and transmit it in a continuous mode=
 or a fix number of samples once.


  1.
Is it possible to continuously receive and transmit at the same time using =
replay block. How to do that?

Regards,
Nidhi


--_000_PN3P287MB02912CA9923EA294EFE33AAA935D2PN3P287MB0291INDP_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hello all,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I am using USRP x300 device. I want to receive data continuously store it o=
n ddr memory and transmit it after variable time delay. I know there will b=
e constraint on the maximum time (because of ddr size) I can wait before st=
arting transmission and I am ok
 with it. But after a fixed time delay the reception and transmission must =
be continuous.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I read about Replay block and as per my understanding we can store the rece=
ived samples for a fixed time duration and transmit it in a continuous mode=
 or a fix number of samples once.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<ol start=3D"1" style=3D"list-style-type: decimal;" data-editing-info=3D"{&=
quot;applyListStyleFromLevel&quot;:false,&quot;orderedStyleType&quot;:1}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div class=3D"elementToProof">Is it possible to continuously receive and tr=
ansmit at the same time using replay block. How to do that?</div>
</li></ol>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Nidhi<br>
<br>
</div>
</body>
</html>

--_000_PN3P287MB02912CA9923EA294EFE33AAA935D2PN3P287MB0291INDP_--

--===============2078309393272091686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2078309393272091686==--
