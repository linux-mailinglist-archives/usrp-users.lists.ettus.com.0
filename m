Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C5E65FC9A
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 09:20:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F138384522
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 03:20:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672993249; bh=YCQPMJ/+tT0Oc4TFaOC1KfAvbxenKKTon5j2dC9ybrI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oxXhLUnuhGvuQFJZ0CPEP5YEPmBPXpW7xZKF/nSsTwPpAuZ0oL6jHckqQxMCpE6+N
	 Hg2CSd5SMEz5aJR2gDpqGvFf3lE5bQkoUa4TaZaiDjYgMfDyTPmtbMljTar6imN2EX
	 oqOsvSQws4RvrT/vvhNkCZA0GBqtR3ec+7pndZtZaEm7YHs6Hmd89P3v4dD4ZTf4Yz
	 QiiV3ohgCV4ddzWZEQQq/hQbHEhOZrosAn4SiIXepb5GdwUmD3WuCgBfAypAgsaIy1
	 6nj41/Rxz90qm565tpt7C7A1n+ugmaFHtCJohGpT5bsV/lFHqS89jVIM7rYI3X7kkj
	 yODul4xiMIQAw==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2100.outbound.protection.outlook.com [40.107.6.100])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DB03383E84
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 03:19:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="Dabl6S2o";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Da+TkLR3EfjXH4Lqr9lDZR+L2Z5YT9w8LwU7tOqFA+7taYjzsBWtRQX/IE1Szv1sZlt36AxPVvO0ervMiIwnbMrv+V7zzyOD2wYIn7jUQLz8uMhB+reuxg31MzvLcuNil5hbm0SQhO8PMiJa4ibcMv7fzdDwx83/+7te5aXyuK2yo2BGapVNhpFYcF2zGwaJyf2fLc+uxkvKQzNZanZMsVenZ1pDYLKva1IphPHJ6IOIJuHQh55jqtQQTP5WNIHa0yB5pYD32300dVVsIctALeRuAT/1AVWdkqUdJz/biR9zBh3cnqQZpnSU/lnXj3zhb9QFwxf649+9ZHaCt1EvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vd9j969aotYdw+VSR2Cu4BwKBBGldqNKreXg3Jg030I=;
 b=fiO35192ErSL2ZWmjuqEWcarVQ5JeEuf4PqAkGs6GW+RsuaURbAUVM+33Y1TcNLnnbdqJU0QhK+pV2kds7OP0eJXmOvK86M3zMqehxTEfFRhnURY3qsUq0V1+yvLkpwnbnoVeR0BRkq0u3S/LOhVAPOuip4kOIudqHsuMTGNLq4+HwFdLM2FF0OBI5yEAPyZV/ShSRCYRh3/9pdRGetSsasJmBUd+SmoFLxC4WVxtsUeMAr/yfNjW1Q8yAZLzvaCyQF/tnduWhN2RKSUI+C1IfLZx0fEw7+wJpgSIm5z3QAD3Q8jrE8f9s31ga6dxLS2Vn32zLYQBTUCVP8vBQBFWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vd9j969aotYdw+VSR2Cu4BwKBBGldqNKreXg3Jg030I=;
 b=Dabl6S2ofMx3mzeSELYJve0wG1mEHvcjh0GWYZzJSCB6rYR1C1/f5kj76Ovun9SeEiV3U2WSZLd+X7Y8mBmNQfAmuZXULKFYEb1yd7GUhFHanonhcadu2iGPYCSs+qucwM8x7bf5muNqnoOthL/5LmcjmqvjCnJF1WrYIZLcD3k=
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:9f::17)
 by DB9P250MB0402.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:330::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 08:19:23 +0000
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::9c21:4214:5578:7ede]) by GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::9c21:4214:5578:7ede%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 08:19:22 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RfNoc Equivalent of get/set_master_clock_rate
Thread-Index: AQHZIabTCKjYALwyjk6ycxsTNV2qzA==
Date: Fri, 6 Jan 2023 08:19:22 +0000
Message-ID: 
 <GV1P250MB0785CAC2260FCF243F59BAEE90FB9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P250MB0785:EE_|DB9P250MB0402:EE_
x-ms-office365-filtering-correlation-id: 9a134910-d987-408b-0b5a-08daefbeb78c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Afd2QTRoAB/lwZeRXXoZD0ydGnVAfZNpmYKsJwmvkqROiEzJbbxUGm8mag0b5qQ0xHqF0paU0CL6Wb0XpVoneU4VESXv2TbYpZcArm7fWRFjforS+hMXVDQXkemNK99/HvlH4XQozVZwvX9ZSJylxsfSFXw9ROqSaRak4+10CfsNho/DQNehdEvAKcUbuv75rrsaXB9Hl+Ci0cH6hmQGVPiSOXdV32JJzFZolYXfe4Mpig+n0etPJ2wUblYf2ZTlur+vCpZ3uESd5sYXWJv0ppZJANcciNLHZuMjF/IcGfbnINzktD14AEywyhEHquvhiXgFmS+GsSbKBGIURXAWw6RMqrdmNtWF8qvFbRX2aCHA/ApPr299l7QoaiM0RLyFTcfO8nI6Jt07Aj9OwVoywTMd65ZJxxtwagmnFFTFSAFqpXnUK62FBEIbw0tvERXaZYjXFx9SdXegQ1s+4umYeL+vQRpvGyG4sNPWziHsyT1zwfAFJP/i4O4tP3AXXN+v+QnGeFqnp9dl2ovnt8TiMIbTMNeNDlp7n6CnAN4GnV9SdH/N58RlYgUvUtsxepDZygeDleJk57rLVPRzjs1uBAoR3zhFZnh0+VttdbOvNKWOkhzn5eUbyZH3cUCvIWYzFttAoyLj/E4/zHUn7X8k32uZ9/uX1Pw8joWoeDyQHCGSkOB3b2dofbapOZApIi9xw9Q7jM0/nTbJymX9c0bYjZlTBqk6j4/1HkoU8OfCP30=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P250MB0785.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(6029001)(366004)(396003)(346002)(376002)(136003)(39840400004)(451199015)(9686003)(186003)(66574015)(26005)(38070700005)(38100700002)(166002)(86362001)(55016003)(83380400001)(19627405001)(122000001)(316002)(91956017)(8936002)(66446008)(41300700001)(52536014)(8676002)(5660300002)(66946007)(66476007)(66556008)(64756008)(66899015)(76116006)(966005)(478600001)(7696005)(6916009)(6506007)(71200400001)(33656002)(15974865002)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ueGeSts0De+p0ng9TAyM4wZPn0F2qLnFytMCByjH1ztrWBF+y3lEb5pmk/?=
 =?iso-8859-1?Q?206+BFxIs+eVzqWq5K6gDLTdaX9pUEsS68wXYZZA++pwkg5GCWx7gsE+f3?=
 =?iso-8859-1?Q?+XDLu9Ay9+OFU4OPfpOzIZ0F4XDjDZ/2n6AR52tGaBt/QFrbB8ARRoXDVu?=
 =?iso-8859-1?Q?xojy1oKsEVndnfAsjCDdY0smOGOOmSS/qy36pUvFklpg14TuF5Kze+fbsn?=
 =?iso-8859-1?Q?9C4+KfBx/W8pP8k9lPgwUmREWhFqBBdAMq6yIpngRwdFwTkHmfhx3FCSeW?=
 =?iso-8859-1?Q?h3gBWhOpuV5V1h/6hYri8OmcpyN2sGhhcKITLA30QqtuAvTsbryCczLZgP?=
 =?iso-8859-1?Q?cNlPryWCRKAs1jKM1U4knQX53cUwbCLfkD8/V5IFDKaC4NBcN0uy7/6TqU?=
 =?iso-8859-1?Q?WBAVw2d8uWfAF7u0rURi3BOsibXPov4DyxQDu91BjcOTmrFSZP5zJaQRY6?=
 =?iso-8859-1?Q?RF5GLYptkdmSk61dD7WS1GE3/eycpmMWOEx5PhTdGbEmxWT1lw2evedV9G?=
 =?iso-8859-1?Q?UItlCgdD9wbt/zLmHnYo00DhHid/nmTRhoumYOL5YZrRgZBifw2z3DdBOW?=
 =?iso-8859-1?Q?h9nNJCOdLgFc9VJMFTHkyydwoajt+TIL1XA13RwtFu9j8mRN6MC9hGhbQM?=
 =?iso-8859-1?Q?3uSJU8IxZL/0hRA5pCvz/YrjVw1G5S8KHNGlNIp3uN0K5FLOLi6bS34mQ1?=
 =?iso-8859-1?Q?4643BpUc520JhkEQHpe0LKMnf26LTCHWI/L13aeGETvsGoreqLyt+6ybIv?=
 =?iso-8859-1?Q?MoladUpZe90NtVWDkZEr8IA5UnTkvQS9qbxuOI+9FSrG/lF2ezJZaMGpZw?=
 =?iso-8859-1?Q?x5oFj2h6eryDE2JA+2xmdc9VvnKG+WrkdGZOUR7sz8AgFBALOB7RgaHrtw?=
 =?iso-8859-1?Q?LHTYUIuZMdF9sEom3a33AR6tUr0z4/kdVjOQf1XyP1L0d42bgX1g/EyOYy?=
 =?iso-8859-1?Q?OnTu1AxyLFF+AQOw9Zf4aLvpfU1hvHCiBYd/KKvY0n79QNmaypZLQGCZ5T?=
 =?iso-8859-1?Q?X2reuQydWlVL2XhaRLHRN6nPZr7JmatMmHr7w4vCs5dJcjqwbNaUF9uF5z?=
 =?iso-8859-1?Q?e+mgc70reNAYsE34tYuvjN9yxzJDYDT4pljgNuCRhhWL3/vJo7UsgVeGaR?=
 =?iso-8859-1?Q?exHgm7mhk60pXPoiXjaaNL+1xKUzPNSu1i8+l2hISVdsRb4HH/4lxyIwmN?=
 =?iso-8859-1?Q?1JuEdaHXK2wdgo8g1C1FG7gyT+/BW2gd+DlVGVyEEiwxeT/OCZgCn4zTlB?=
 =?iso-8859-1?Q?xTJIC1KzeWYADEZZ8NX5gcXqNlsMAF1Z3ajzFEzUOy20HvsxjesY0D9PrM?=
 =?iso-8859-1?Q?/YXn3lOrNVPa5dnjGdhHDqu7XHUd8tiQdpgLfWgu6EKBNMouFJjP/rRyA5?=
 =?iso-8859-1?Q?il12b+ymU/aLyGO3/tvxiWoILYeRurmLAlzlHfBJ2Iy+z14rFClZnqihDw?=
 =?iso-8859-1?Q?E8ruxzX0fU30PIOEakFurnbtXYCg8xUYg/cX/zv77lg65yuyvpZ8ytFgzv?=
 =?iso-8859-1?Q?LHMuwadxehVXrFm0qwTL8tdTRGpFV9TCAuPPHjUeR6xe67Tm36RKh57oGz?=
 =?iso-8859-1?Q?F9ZfNOWcNfqcqnWuZM0YzwoKVDLBPQAaaWHnCtWvHyC1HO9A9cEoXjMLhw?=
 =?iso-8859-1?Q?e8VffmtQKUuOh4OtUy79dHNGwNNob5/7d+k3F8ErAvZryeGZAzDrCbqlKI?=
 =?iso-8859-1?Q?yu0woQ/TAvRV7I6AKYo=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a134910-d987-408b-0b5a-08daefbeb78c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 08:19:22.8110
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OrSjbGzQtXCfjxWemkBiPD6bnGdX8TCcD9wqW7cbmMEZHGQ7ZcQKwArMHzlO88zOn6TCUeetUcMNxCZypvFKm0AE7BUufN7GJ2AO8o3+b4E8WwGnJqP5ISNpoCvw7Vqee8jtgDIWtPv3DeS3KGj3+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P250MB0402
Message-ID-Hash: SGNWMRS3DZUA7GBKZCPIB3B57WVHFZTD
X-Message-ID-Hash: SGNWMRS3DZUA7GBKZCPIB3B57WVHFZTD
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RfNoc Equivalent of get/set_master_clock_rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SWAIY2XQD2S5EL4YXNX45ZVCPSCINCQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3963986051584816575=="

--===============3963986051584816575==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_GV1P250MB0785CAC2260FCF243F59BAEE90FB9GV1P250MB0785EURP_"

--_000_GV1P250MB0785CAC2260FCF243F59BAEE90FB9GV1P250MB0785EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

the multi_usrp class has methods get_master_clock_rate, set_master_clock_ra=
te and get_master_clock_rate_range, see
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd75=
80630b2baa4e4c90df3a36d9f0

Is there an equivalent in the RfNoC world, i.e. getting/setting the master =
clock rate with either the graph or a block control from the device? Search=
 through the UHD RfNoc documentation did not show up any results.

Thank you,
Max


Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzende der Gesel=
lschafterdelegation: Dr. Undine Kr=E4tzig

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_GV1P250MB0785CAC2260FCF243F59BAEE90FB9GV1P250MB0785EURP_
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
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0">Hello,</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0">the multi_u=
srp class has methods get_master_clock_rate,
 set_master_clock_rate and get_master_clock_rate_range, see<br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0"><a href=3D"=
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd75=
80630b2baa4e4c90df3a36d9f0" id=3D"LPNoLPOWALinkPreview">https://files.ettus=
.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd7580630b2baa4e4c90df3=
a36d9f0</a><br>
</span></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1 elementToProof">
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Is there an equivalent in the RfNoC world, i.e. getting/setting the master =
clock rate with either the graph or a block control from the device? Search=
 through the UHD RfNoc documentation did not show up any results.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Max<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzende der Gesellschafterdelegation:
 Dr. Undine Kr=E4tzig <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_GV1P250MB0785CAC2260FCF243F59BAEE90FB9GV1P250MB0785EURP_--

--===============3963986051584816575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3963986051584816575==--
