Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D21D25476DC
	for <lists+usrp-users@lfdr.de>; Sat, 11 Jun 2022 19:26:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CC973842CE
	for <lists+usrp-users@lfdr.de>; Sat, 11 Jun 2022 13:26:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654968371; bh=UctKrE9xVE4LB/uFOMx2LsTs4Snlw87hwaydUxsm7ZU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=b+Ff2S8s8N7uzm1dsSnfpOTxpJ4T4jGgmJsEne4DSj+6szpU3rM1vuJoRzMwnlI7e
	 YKLPGyzHYMIRqcXkjCmBbTZs0XUoj2XcEeRy6V2XElM0BvoVeGFbkGJjoFBMIFIn+a
	 N+L9LefsCFLiscyjA+SB0nwaJzgobZgiJEZORNBHsVMo4VpiL8QcX+S98SZiuDo86M
	 YvCvSoc8vPHapsnydQc7Z/WXwJaL3DEhkX3veAvCWeKdVHh6tU0UzanThDUrthHRxA
	 OlEy+HMBUl2X4GRPLEZfeOmwpFQyHK2korSfGo8dBwyHI3/bIkE9LHPPd2RGG4+b02
	 KjZD6FcpjzwpA==
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01olkn2023.outbound.protection.outlook.com [40.92.98.23])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DE75383E50
	for <usrp-users@lists.ettus.com>; Sat, 11 Jun 2022 13:25:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="R2MWaGsN";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PflnMdWRwiQ9VoKaUn1v1SNKggKuMpsf8p2zEkn4T5VEmsu3xUgc2WsJIyHIfjR77LaMVJ9LIc/JOYEIfFqaf66tZt03M6/6EVa+mhJn4v2O1zHNIsBMi8gIFc29DesrZmS0GsPQ3FkbMcgH2bsZHt9rrsLYEXrx4ZeYy8iQQsR+v+wrNgQJZE2vXtL43gPoPZZIsdZh9eCJwFrfVGhfM8Yfq+/RdFst7lBZRWBTYVz0KI0jj1Fd1aoQePSrfJyO7zrI4A7BfNeBhqc89j0Xa/sxREhl4QPQFT1kyLkxqA3FSL2USWWSr+NfPP8RrT0mePt8WY3JcIq5PQBtTobI1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5azS0y48JMMq+sGsl91GiFpvPExloF4poNbv1jgRcMc=;
 b=BjJPex+vPl66L9J1wgXvvGCf8ch5+VB+blo/ODgp3YSgCOF3shyTLh8gN+zrZLWiXhxJ0ZYYqR9jZzQFh5CikBkqoJ4KXbtE3SsYnh2+0ADpawrCQVLXPmnvdzDv31o0B/exEjXtfuecdwfJ572dfVrORgbyWvL6/7c7ZNFYPt+7mdpkVeX8kxYdrFws16c2QcifHxqt+dKlCsJnDyO39IkEjdObT66B0Xcg25sErc4gPLT1Z5+kmrIxTZkYd7qwv0mmXHAvA3bssKxpvRGFEzs2+FfHiDLKfgPIn8CUTAzxugOJDoL5alrf8av1igMUcpt6dLX2aQy8GbL540IoTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5azS0y48JMMq+sGsl91GiFpvPExloF4poNbv1jgRcMc=;
 b=R2MWaGsN2MnPAdeLaRmgMbpRDGAetDdy+16QavxqeuewAD/LbiyTBH99NpN5hJT5X3tij5v5UZqphZsme6m7A+7V7ZCw2IfZzmUiE/BCOwUsrspkv6HPlPdiujZhUMUZEUnTysYlWOSFwJmP6PDO0bBG1OtUEv5tiNwcVmCH2Ql7hpsyhLBjQW99hIKSY/WjigNYtz61Xfnm6bvFszX+C1NCbU+3yrBWVs+nbbKSxaPnN2ujeVQBKiQxQnwvrFHNUocWglM19aqvJKOguoCXtSLSkW4fBovAyF1fNochKWxsi2U4LsJn9Nb6tj7GgViWiMIrmwlX5f+2siAo7qiFCw==
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:9c::5) by
 TYCP286MB2687.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:246::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Sat, 11 Jun 2022 17:24:57 +0000
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3d46:b088:968d:3333]) by TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3d46:b088:968d:3333%9]) with mapi id 15.20.5332.016; Sat, 11 Jun 2022
 17:24:57 +0000
From: pro jason <jason_proj@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RuntimeError: fx3 is in state 5
Thread-Index: AQHYfbdWBVDQmiQon0O82rzH/iMhtA==
Date: Sat, 11 Jun 2022 17:24:56 +0000
Message-ID: 
 <TYCP286MB0991FC2C970A3D059A08DD35FDA99@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: d41ce43f-492b-f0fe-6115-4bcc0c05f580
x-tmn: [wdxLI7gIfB3/rx5flcifijDtwengVq7X]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 694e607b-9498-4019-decf-08da4bcf4e50
x-ms-traffictypediagnostic: TYCP286MB2687:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0wgJoaxQGKH4jil8Gb3+To+50Fflp31h7WEcjuPOSf3jdhNFivPdH07u+Bm85uzx1kfXKQiBzJq1HKsHxHAY/mkd/LUWCXrOF4miekWj38un20+fnYHRbUTShKbaYmpgbvKT8FRpL09ODycZvETNuZvJ8t1jte5gI5B6CTqlY7gdrqeMoPxGlIAF3qSxFWO7+MB3bADipTzSq1WoS+IoqeVfU3KbO/E6Ku2xI1UCKBWM7U/3gpEhkW1JzW65rBc0iJY+uP7wqzDUNQlQ2KoZKb2t4Kc/NWOJGP/bEuuow/zLugHQc9nPpm6DvjSwXFysP3Ue3muh9/r6mcPqXpkGhlNYXADrWFSI2pSGpVAKyK2n+KWTY1lDJTpYUtodngxvLj0+83t6BIvST3pzMROHek6IPEgMBtcCZ08C5OHMV3YFhSo9VFYOUS+vfG5JsW54+krsHzHAgLd9lkvfrsKnrd9Tl4B/h6+MkvPVJjGtTxUzC7fuqt+ACFEJWg2+H3KZ+J2BjOh6hFABEw0r28bnEOO7QOrJJo5r037W3/V2qnYgAzkL4hYXywVVaxdeAiVYhWwlMG0xLC+jBKaRfS+8Qg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?7Vk5UUXBa4Rk9bAurIf4Q9bEhearFaqZRw8Qt903R92szeRoPcG487Wt6Y?=
 =?iso-8859-1?Q?nrO1BlI66kOtzKYgClJ1X216448a2lmOqllY6KoB4cZbVpxFW0V7yH4pCp?=
 =?iso-8859-1?Q?0yhbn6UMeDWjHgsqVgfSB1yDHjztSh6bHUPH3CGlwUaTosZLUEA5fm2KBL?=
 =?iso-8859-1?Q?4Sl9pmNKw9HRm8HIwNqO7ICBeB3kQU4R41p4a7XjntMajEcye+/GK9JL0G?=
 =?iso-8859-1?Q?9Cw6ooSG+teFuxGfH6qycqJEC8zygyn7SGkXatY8e+RD/W9zijXAHFpVnO?=
 =?iso-8859-1?Q?IKo9l/mLeQnLSDPoJO6XRFPh4kjHV7/sIfz+Vxyq1RW7nWsfb9x5SkCODW?=
 =?iso-8859-1?Q?0PSOBMkgpWLz8L7jchz/Z6lnkoGATK5480Q1OMqmYnfw9bVvZQqAoe0gUQ?=
 =?iso-8859-1?Q?Y2+6qvdO+tv9oPdq07Ei/2DPbJ0bMVZDtLGVUDhcUea1tERim3tZvNrArd?=
 =?iso-8859-1?Q?AdvHCAJj5X1e8Ts9uGJ219ImNmuay/uW9lYW86cp2buiBrXZiEss6Wb/wl?=
 =?iso-8859-1?Q?E+aErGZ193JIn+zTOpeMyDsnVapL1hcjgbUiRjw4iiLxgEsEauDnA/kqzV?=
 =?iso-8859-1?Q?B8Il9mRR9wXvqX/32Mtpp5PiqKOPe2EjXwARXI2jwYfgYLrOJC3QJirUL7?=
 =?iso-8859-1?Q?ceJIGLU3pqgzQR+eYJHE5padTzn8Zs2QQbP2fyYo+kQslG3EvVr6fxwQgi?=
 =?iso-8859-1?Q?tKs1sol5AS0gya5ttM6otsX3neMVnz6rRlZgVapdJQk+ZFNk4abVM1hvSW?=
 =?iso-8859-1?Q?w46FNfC0v5HA+jYW9Os3lexq1VGT5xU5uiDEIc0fE05Y4hM4hSBfXSb1c+?=
 =?iso-8859-1?Q?i/0/7r8rPqC++xuHhjJS4yDlKQoB76G3lGhBfusvbmzefBVs1EXAAl+oq9?=
 =?iso-8859-1?Q?nMZpI4W6jclG9SqtC82BYhDdWefOz6V+LauIZYfFvufBeS3YH8xn65Ml03?=
 =?iso-8859-1?Q?+ssjwyy4/i9XK62izgC/3wxJL0hsS/tWIHLfvtDGDwja7Fh+1S3Sv9ZlXb?=
 =?iso-8859-1?Q?W+pn/qO4ZzCmLUD4JM8tR9C2ng6VbejOsDsFdGc/FCM1cX94X8dPvKxIBx?=
 =?iso-8859-1?Q?h0YI3dpHFKD+W1rFJMZ2xAlhMXYwm9J2yEgQpeoa2nn/Ec0l595H2ZpPzm?=
 =?iso-8859-1?Q?424OiMlNjl5lC0ri0Pi5fwF1lWTACctqTUoJYNc4N9d48D3csBHQ7hvh+U?=
 =?iso-8859-1?Q?m3sdNgt4MLcoqp3x9h1S8qn6CRvmghGhFqRuHwQbnNU+gzHvNIA+FWkfsB?=
 =?iso-8859-1?Q?CbqRMrMa4RPWVJzLkplT7X5DUK692IyaguVuHDbdi3K1n0sQNDVJGHGmj/?=
 =?iso-8859-1?Q?OEiKgSZ+z4/Er+7Zr+5TYEnxY0VDnUvJ71SuckprUXp4u+XbJfegj8ALCz?=
 =?iso-8859-1?Q?sW7JKzy3wDxqwnKUOfoE8bKts3fNwxClJTeRBDFdJu1vuCk3p9IdotBOXe?=
 =?iso-8859-1?Q?/vye9kUIwDrLZ/jISp/DWn0ObGVyxnP+hr4ZpuB2+TUK9OjctzlSVgzs7Q?=
 =?iso-8859-1?Q?A=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 694e607b-9498-4019-decf-08da4bcf4e50
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2022 17:24:56.9958
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCP286MB2687
Message-ID-Hash: UHEZSBPTEUSX6SKVOZKJLSO2FHTMLW3U
X-Message-ID-Hash: UHEZSBPTEUSX6SKVOZKJLSO2FHTMLW3U
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4MOXCSYPRFKDENCIENGQWCJ7IHA46SW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7791242002496093448=="

--===============7791242002496093448==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYCP286MB0991FC2C970A3D059A08DD35FDA99TYCP286MB0991JPNP_"

--_000_TYCP286MB0991FC2C970A3D059A08DD35FDA99TYCP286MB0991JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

One of our b200mini-i is not working properly. The faults are as follows:

uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD-0-g=
46a70d85
[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200=
_fw.hex...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200mini=
_fpga.bin...
Error: RuntimeError: fx3 is in state 5

We tried to replace the computer or USB cable, but the fault still exists. =
Is there a solution? If the hardware is damaged, which chip is likely to fa=
il?

Best regards,
Jason

--_000_TYCP286MB0991FC2C970A3D059A08DD35FDA99TYCP286MB0991JPNP_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
One of our b200mini-i is not working properly. The faults are as follows:</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
uhd_usrp_probe
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEA=
D-0-g46a70d85</div>
<div>[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp=
_b200_fw.hex...</div>
<div>[INFO] [B200] Detected Device: B200mini<br>
</div>
<div>[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b20=
0mini_fpga.bin...</div>
<div>Error: RuntimeError: fx3 is in state 5</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
We tried to replace the computer or USB cable, but the fault still exists. =
Is there a solution? If the hardware is damaged, which chip is likely to fa=
il?
<div><br>
</div>
Best regards,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jason</div>
</body>
</html>

--_000_TYCP286MB0991FC2C970A3D059A08DD35FDA99TYCP286MB0991JPNP_--

--===============7791242002496093448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7791242002496093448==--
