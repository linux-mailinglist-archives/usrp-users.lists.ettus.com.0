Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFAE7FC48A
	for <lists+usrp-users@lfdr.de>; Tue, 28 Nov 2023 21:01:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C9123856BD
	for <lists+usrp-users@lfdr.de>; Tue, 28 Nov 2023 15:01:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701201666; bh=ooS/ao7RR6IR0phvNw4o9E1sQg872siKQH/9eYGCMrM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Nm+r8vcfs1TqqSwQF5qXk3nbo7eJe4HGD8XDKOX1PonlnYZbMvcgg4RvuXGrgFBtm
	 dJFYt6Iy6RdjlvxFZcbYEoat2VDaN8vi7YqO6rjDzSIxYmyNQyrf1DhOg0O9ZYJoAl
	 UaOGKJM37+rEunt42m7tlRnWRRXzvOfEP1yKrHDlxlxHVt1xw6YZ7c6XzY9XbXltR8
	 bhvq30A5zBB8t7O+bmF/bW6ieMLEaAd/sqc+6oq+n63FnyNpBT9enjufnEf+hQ2k67
	 PWhZ/UVCyE205saiW72PZhhu7jjNqfjNNUkOu4TNjYozxf+UX7YxR9D6RtnaZVeK4h
	 XBqUMPjkLPZkA==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12olkn2096.outbound.protection.outlook.com [40.92.22.96])
	by mm2.emwd.com (Postfix) with ESMTPS id 7409D3850B0
	for <usrp-users@lists.ettus.com>; Tue, 28 Nov 2023 15:00:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="Y8ekXe1c";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H25vJVFAmkQedAmk+RmSUrrX9nyPWPfX0ByD5DdyIOwfUhG8DKQDzEdZFzFm524DCzKPDsabfC/tymurwwwmznatD8OQwgiqf+K86Z1P757CId//QnTyyGJjzGWJMCZ5uUj+TmT9XOAmcbEQNrC60xifdx8rwTDMohFYRqLCKhXwTZZ3dmr2HkcVbhyiVBO+y5ii7nl9FEVF6Y79AKp9qd9QfpGRClTZlYYwgfvY8deW7kD2RGinp89Nfa223JO5bF8BJjUlqBc7hYZfAU/6UMUT+xeIU/OaFF8UjEf6cbCmOTcSki/FGmvhOlglOsL2fR9BRu88CwoX0+Jwpr2fCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQIXOJYAW6BUZrbB6XRobYh2JqgZ8nOe2qT37cWaYq4=;
 b=YRVSRPB8huIdOVMVzf9RjgFZddUsLodIeWM7BnhIFmXbVrEI2TKjOhb0H1tCCwogfx+Cr9GB4d95oUq79YDadot3TXFqF2LHcrgbh6gaJrK0X7/3Qr5TSJp5XAZAxM8pPHkx+HL9yBywWq70g8jQMKkSAHkpyH+JMelXFtjajS13ZlQpnDybGoTwPYidNtkMvU99K2v5yEWpF/I4/8DK1t5xFAjtmEFT1ueikE/hN/BDC5bs+wY9OR6+FyY9hGSO45ZBD4RH2yLUJTksQ2HKQI9T+jxjVLJo8wNKQjbZGJ5VNZXEY16g0tGdFcP6i8zGqpaCQZG3dt8gZIrwXLsv+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lQIXOJYAW6BUZrbB6XRobYh2JqgZ8nOe2qT37cWaYq4=;
 b=Y8ekXe1cvGBfC1OWy5nc1B5mJaqMsjjACxZhqeOrkwzOhJapkzy3y2WTiaEVNjTWhhS15xSQ9SLJoHmO3adeGYfl6IpBw+VYTZkreA1hjLdKuoGHyzhbd3mvV+JcXwJGB3h+8nEG+f0ln0aWP4lySgPRcmB11Hqginvm42JEWLDL5Fy0dzOjFEV7K8w63hc8XN2mUlYXZ2E1SP+1Q7HHA9xnG8bFjr4Ms0llvwOXzkuCqGOPr7t4CQX/p9jPn0F3WKo2FeoR3nQLCmHQawEZBzVnlFPe7om+Suz9FwJryy4lgi/lFkfkGiuocxNkPKljo23Z73rVXNyhxg0VTY6SWQ==
Received: from SA0PR19MB4602.namprd19.prod.outlook.com (2603:10b6:806:b9::15)
 by PH7PR19MB7803.namprd19.prod.outlook.com (2603:10b6:510:24a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 20:00:10 +0000
Received: from SA0PR19MB4602.namprd19.prod.outlook.com
 ([fe80::d05a:974a:dd05:6930]) by SA0PR19MB4602.namprd19.prod.outlook.com
 ([fe80::d05a:974a:dd05:6930%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 20:00:10 +0000
From: =?iso-8859-1?Q?Alejandra_Medina_D=EDaz?= <unisabel2019@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: NPM problem
Thread-Index: AQHaIjURwIs6fYKLs0CKQYCIBxtGPQ==
Date: Tue, 28 Nov 2023 20:00:10 +0000
Message-ID: 
 <SA0PR19MB460276F5EC169D037C7B1FF3CEBCA@SA0PR19MB4602.namprd19.prod.outlook.com>
Accept-Language: es-MX, es-ES, en-US
Content-Language: es-MX
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [lRUtZNnTEED4pNT3O5lq27AYMWwwgyep]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA0PR19MB4602:EE_|PH7PR19MB7803:EE_
x-ms-office365-filtering-correlation-id: f3379e66-3cfe-4fa0-c3ea-08dbf04ca094
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yF1C+WGeWeFPS5o2RvKX2Mbo+lzW1C/J8Vum7l1H2OJiegIC05m7075dSX/ogyltHyeGm8uVD59kIDR5JgHCYCWuHHEhDjaColmYK+JYzpx2sflvI/iESQQXe9r9DLCnazEZrK13IWaIyttANTnCAqTJxwVbPUfqL79ESMIM/6GPfOjtQpwTIDHG0Ivszj0kXSGLrXaD9XP3QV1ArdFWVFrj0rI6nYp7KKEvxKichc4HhnkaQJq8M3t1I8m9rdfQJpHtAzGiiR4FUqI1g1IDbYo6ChimUoJ+CMCZplL9fI8Nnm4GMUjpC5QTaCGASduU1ixBNnP1uRJKcwZs4CxWL4BdN5yj6/f0QDsDV9KaR1aVyzAk+tp10b0fN423GKS095Ae7ivSNLorniCDsDHKqyk2RxhVARyHaXXbQl2FSFTvgo+Ln4nQPyO7BYB4vE8Py1TMWf3nG5vqjN9kEGUVEIj7bEHlKn9fANwK46D+Tn2Z9R3irwy21hT+waIFkNuaMl3p0HHlxmIrxyIV+w4G1br7j3EAg5TyBEymn3TzE0DlXuajpnprUNIkROo/VfM/
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Czuqdxp4Ma12lcF4uo71Ys4X6YBhOW0bxzGAWOELBfA5+dJRdsiEGubujW?=
 =?iso-8859-1?Q?RaY49sQEcC98gGm4jdHuS6rT/af4sphomlptNf3oqLUzUUp6Ge2GoQ6U6Y?=
 =?iso-8859-1?Q?jhNlFN5n9snxmEN+HJld5+kHdRncJtBuO8VHj4o73WkBWIcft7FzO/8XC9?=
 =?iso-8859-1?Q?T/vodR2+hFwUaMB3utJ0FJx02WU+HD4bPZPDp815SncMuWXWUlXEiMU8C7?=
 =?iso-8859-1?Q?CXi1/0w6FF8QWyGuZWpd3b/ffxqoACh9UfBg8h/WMsTVn1D9euCKI5Sly2?=
 =?iso-8859-1?Q?2dVBvFMBiywZngPtE740/geBnH9OlOFe9L4bh9Gk8QGGOePnH+K8nJd0/y?=
 =?iso-8859-1?Q?3eGfTCKFcpMKtz3pa/KXr89970TvEquzAkVDIPzFg/q7z4SO7BvJ5Mo2DH?=
 =?iso-8859-1?Q?YbzBm7/qydvXboON/zRCShznlE+I+BysQuwjJw0C4LLqnNQHBo8mayUZ/T?=
 =?iso-8859-1?Q?I9Yqc1hjb0w9EIVtiLwsrmF+FQaRMbDqEdqlJOUrusrahDzfPtX+IbAhVi?=
 =?iso-8859-1?Q?y/1Q8kuPc6PejbTx0mf/6LlhDs0RHtkz1q/iHWfjr6MS9jZIOXJ7F16Ouq?=
 =?iso-8859-1?Q?Z8Uhz0s2jkf8ermXnNP/SZ085LJOn0cGaNimtNpfkgz0si7wZ3rG0fFfI6?=
 =?iso-8859-1?Q?EZd3u2M1m5g6xmQkY+sZOfL5QlOT4+GVcen9xoiI6BYbue1cpk61NARJME?=
 =?iso-8859-1?Q?jtl+BBBEwoZ4f/S5WXc2dxFLKt1P3P0fxLihAN9hEpbO7Ib2fDmuderUqR?=
 =?iso-8859-1?Q?ztd/D/MhfVGo/oT7JbcbBFluf3yr/HTw5UD501/cCQ3haRWXUrZbDnNpra?=
 =?iso-8859-1?Q?3x/brCE3e5IWKBd7TMwhEgYtT+TZLDqSwutEKjw0RGxzEb3dBDQ8lFjEfo?=
 =?iso-8859-1?Q?ZC6i1XH/agaWV+chS3XKK0VjzVkg573AQK8wUXW8z5a6ug7jGNis4cRpMl?=
 =?iso-8859-1?Q?Cm+VyACagnf+L6IE/tal1zitbONdk6gHkGzYhWjgR8EFe7wTckkbQ05Bgy?=
 =?iso-8859-1?Q?VyOndlQMET9+8k5QBKiXUWQaVVzvWQSwKZvvM4Bbr5xE59beRklJGeaNwM?=
 =?iso-8859-1?Q?4fbRkSaQJwor8p1i6pwxEvwYuYm8C8GrhEYi/4K65Iuc5qpY6AaYSvM6bn?=
 =?iso-8859-1?Q?bdxECl+7AsSNJdCIGT3qOfJOIfqrgAWQWueFxPqBRqnNq1m2CWtYBmrZ+N?=
 =?iso-8859-1?Q?phiWDTmDE+GvTL6walpXDpQTR7XFyoUP0lcQST0FZAePQFF/m0Vd6ZMzdQ?=
 =?iso-8859-1?Q?RAz7Ax0XJcPfaU16K3TUHR+NCp3K0H0Vgk7lHsEBs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-e7757.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA0PR19MB4602.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f3379e66-3cfe-4fa0-c3ea-08dbf04ca094
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2023 20:00:10.4991
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR19MB7803
Message-ID-Hash: UWA3BDDB42W7L4UJOOQG3SH5W4UIIJOP
X-Message-ID-Hash: UWA3BDDB42W7L4UJOOQG3SH5W4UIIJOP
X-MailFrom: unisabel2019@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NPM problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W44VMMIKJG2NGN4AF6XHDFTFUB46SM6W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7623868067661147830=="

--===============7623868067661147830==
Content-Language: es-MX
Content-Type: multipart/alternative;
	boundary="_000_SA0PR19MB460276F5EC169D037C7B1FF3CEBCASA0PR19MB4602namp_"

--_000_SA0PR19MB460276F5EC169D037C7B1FF3CEBCASA0PR19MB4602namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm starting using USRP X440 with a fm receiver I used before with others U=
SRPs, but when I execute the .grc I got:

Generating: '/home/lab03/Downloads/analizer1.py'

Executing: /usr/bin/python3 -u /home/lab03/Downloads/analizer1.py
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.2.0.1-0-g32=
1295fb
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
0.182.30.35,type=3Dx4xx,product=3Dx410,serial=3D32B5D9F,fpga=3DX4_200,claim=
ed=3DFalse,addr=3D10.182.30.35
[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0.=
 Please update the version of MPM on your USRP device.
Traceback (most recent call last):
  File "/home/lab03/Downloads/analizer1.py", line 392, in <module>
    main()
  File "/home/lab03/Downloads/analizer1.py", line 370, in main
    tb =3D top_block_cls()
  File "/home/lab03/Downloads/analizer1.py", line 87, in __init__
    self.uhd_usrp_source_0 =3D uhd.usrp_source(
RuntimeError: RuntimeError: MPM minor compat number mismatch. Expected: 4.2=
 Actual: 4.0. Please update the version of MPM on your USRP device.

I already checked the manual from the oficial web page "USRP Hardware drive=
r and USRP Manual" and I could do some but not the expected, now I got Actu=
al:5.3.



--_000_SA0PR19MB460276F5EC169D037C7B1FF3CEBCASA0PR19MB4602namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div><span class=3D"elementToProof" style=3D"text-decoration: none; color: =
rgb(0, 0, 0);"><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-family: Aptos=
, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; =
font-size: 12pt; line-height: 1.5; color: rgb(0, 0, 0);">I'm
 starting using USRP X440 with a fm receiver I used before with others USRP=
s, but when I execute the .grc I got:<span class=3D"Apple-converted-space">=
&nbsp;</span><br>
</span></span>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);" dir=3D"ltr"><spa=
n data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; li=
ne-height: 1.5; color: rgb(0, 0, 0);"><br>
</span></div>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><span data-ogsc=
=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)" style=3D"font-family:=
 Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; line-=
height: 1.5; color: rgb(29, 28, 29); background-color: rgb(255, 255, 255);"=
>Generating:
 '/home/lab03/Downloads/analizer1.py'</span></div>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);" dir=3D"ltr"><spa=
n data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)" style=3D"f=
ont-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: =
15px; line-height: 1.5; color: rgb(29, 28, 29); background-color: rgb(255, =
255, 255);"><br>
</span></div>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><span data-ogsc=
=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)" style=3D"font-family:=
 Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; line-=
height: 1.5; color: rgb(29, 28, 29); background-color: rgb(255, 255, 255);"=
>Executing:
 /usr/bin/python3 -u /home/lab03/Downloads/analizer1.py</span></div>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><span data-ogsc=
=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)" style=3D"font-family:=
 Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; line-=
height: 1.5; color: rgb(29, 28, 29); background-color: rgb(255, 255, 255);"=
>[INFO]
 [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.2.0.1-0-g321295fb=
</span><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-family: Aptos, Aptos_=
EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-siz=
e: 12pt; line-height: 1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">[INFO] [MPMD] Initializing
 1 device(s) in parallel with args: mgmt_addr=3D10.182.30.35,type=3Dx4xx,pr=
oduct=3Dx410,serial=3D32B5D9F,fpga=3DX4_200,claimed=3DFalse,addr=3D10.182.3=
0.35</span><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-family: Aptos, Ap=
tos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font=
-size: 12pt; line-height: 1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">[ERROR] [MPMD]
 MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0. Please update=
 the version of MPM on your USRP device.</span><span data-ogsc=3D"rgb(0, 0,=
 0)" style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: r=
gb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">Traceback (most
 recent call last):</span><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-fa=
mily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, s=
ans-serif; font-size: 12pt; line-height: 1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">&nbsp;&nbsp;File &quot;/home/lab03/Downloads/analize=
r1.py&quot;,
 line 392, in &lt;module&gt;</span><span data-ogsc=3D"rgb(0, 0, 0)" style=
=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rgb(0, 0, 0=
);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;main()</span><span data-ogsc=
=3D"rgb(0, 0, 0)" style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MS=
FontService, Calibri, Helvetica, sans-serif; font-size: 12pt; line-height: =
1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">&nbsp;&nbsp;File &quot;/home/lab03/Downloads/analize=
r1.py&quot;,
 line 370, in main</span><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; line-height: 1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;tb =3D top_block_cls()</span=
><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-family: Aptos, Aptos_Embedd=
edFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12p=
t; line-height: 1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">&nbsp;&nbsp;File &quot;/home/lab03/Downloads/analize=
r1.py&quot;,
 line 87, in __init__</span><span data-ogsc=3D"rgb(0, 0, 0)" style=3D"font-=
family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica,=
 sans-serif; font-size: 12pt; line-height: 1.5; color: rgb(0, 0, 0);"><br>
</span><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)"=
 style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; =
font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-color=
: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;self.uhd_usrp_source_0
 =3D uhd.usrp_source(</span></div>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><span data-ogsc=
=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)" style=3D"font-family:=
 Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; line-=
height: 1.5; color: rgb(29, 28, 29); background-color: rgb(255, 255, 255);"=
>RuntimeError:
 RuntimeError: MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0.=
 Please update the version of MPM on your USRP device.</span></div>
<div style=3D"text-decoration: none; color: rgb(0, 0, 0);" dir=3D"ltr"><spa=
n data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 255)" style=3D"f=
ont-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: =
15px; line-height: 1.5; color: rgb(29, 28, 29); background-color: rgb(255, =
255, 255);"><br>
</span></div>
<span class=3D"elementToProof" style=3D"text-decoration: none; color: rgb(0=
, 0, 0);"><span data-ogsc=3D"rgb(29, 28, 29)" data-ogsb=3D"rgb(255, 255, 25=
5)" style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-seri=
f; font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">I
 already checked the manual from the oficial web page &quot;USRP Hardware d=
river and USRP Manual&quot;&nbsp;</span><span data-ogsc=3D"rgb(29, 28, 29)"=
 data-ogsb=3D"rgb(255, 255, 255)" style=3D"font-family: Slack-Lato, Slack-F=
ractions, appleLogo, sans-serif; font-size: 15px; line-height: 1.5; color: =
rgb(29, 28, 29); background-color: rgb(255, 255, 255);">and
 I could do some but not the expected, now I got Actual:5.3.</span></span><=
br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div><br>
</div>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_SA0PR19MB460276F5EC169D037C7B1FF3CEBCASA0PR19MB4602namp_--

--===============7623868067661147830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7623868067661147830==--
