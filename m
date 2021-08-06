Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D890D3E3217
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 01:27:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAA463841F8
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 19:27:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="DfbOGnwQ";
	dkim-atps=neutral
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2114.outbound.protection.outlook.com [40.107.94.114])
	by mm2.emwd.com (Postfix) with ESMTPS id 687F93841DE
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 19:26:26 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUvRAuuOmfaO2bwG3zvErFXzF3nwlAbCX6zDeR1rnqLH8oTOzzATrR09todopv7fne5bELcHMgdHj/8yGIXaLDNq3JZbBk1GIRfBMQtpNqYx9sCHcLPFRTnfsRpWNpPV7bdTJqQTsb93qyKMwppOR96LXJC35/OeBj4OvTEetSTXlOSXqjMpBIeNw/4UkkzqxMVKo1xfIEF+GxrzjRv52asATsdbO/BVKufwgeWSxHcOhHXdt4IH+XD36sQ/yPz2Ah35aiZEckFFlO/B1wqB0AoaIczT/yzXfP1sKilIgFeFhq802fIq4XzJ7X008QOpHCN8uNXoGQt7d0UKVqDrPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bh8U4V+FVK/neaDXKkKUb1Lhq4F2J+zNDnN1KX15G9M=;
 b=C65r71ZLr8qxH+yKisM2z5Rg6iWsQnkLUWTOPe4TaDEjEjOBIB5ciYwsTFRLaNE9OFuD5rjM6Rmq6ybBBbI/gKiuYyOkcR3/dFTJ1dI02t0wquo15kltJhUMxaZuxwCyneZrqSwGx4bhNsTCK4aID5eSFw9ysJbnBikM53miI31nyGD3GBTZCRchs7/uCrBfqGoR40SbLAkqfNU61YrqS4IS7kgDYcBI0iBOPzFByqRs4c//O1yrMynhk+twxYt/IAY3Za7YGdG+qFyLy0GK/h6y9AUYX19dxLVpSi8jXm/BQi0E5ZMHf1pengYMKMlAv6DNKLI+8JZ/PNy40vPGAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bh8U4V+FVK/neaDXKkKUb1Lhq4F2J+zNDnN1KX15G9M=;
 b=DfbOGnwQgcvUJ3ntmbDSyAvS35qjLoq46gcr1HT4sb/GkDQA70JteL3YAXzUamER2/0mikrgTBx9QfGfcL5it6kSCjoN6eXK2aa8SRoVl8Nj5CiCcwCmEoMWogCywvm3x9UKuFzlmM3fcgBBcWmhDLe08bL36HK+9prQ9zSoWDw=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN7PR05MB4034.namprd05.prod.outlook.com (2603:10b6:406:83::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.6; Fri, 6 Aug
 2021 23:26:24 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf%6]) with mapi id 15.20.4394.016; Fri, 6 Aug 2021
 23:26:24 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Too Many Samples in a Single Burst
Thread-Index: AQHXixlt7MMSt7rLTUiLfYIQFhPkbw==
Date: Fri, 6 Aug 2021 23:26:24 +0000
Message-ID: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69a1bd18-6ebf-4624-34a9-08d959319b72
x-ms-traffictypediagnostic: BN7PR05MB4034:
x-microsoft-antispam-prvs: 
 <BN7PR05MB4034D661D747F11A131CD29BD5F39@BN7PR05MB4034.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wf0xmF1DePOkrXvt8aKwg6HO8egdofKpFj9gxcneOEAGvfRYRk4WA9DyN1BISaXjwJCa9kmzZ2IsGxL3h8D9cU5KRY2WP2aPo6qi7eK/39X3paBHeC7s6vK40OEU4F3KhHYfp/EPlknQI9TYaX7yZd46ZSc1EQjF2diGAT9W1x/qydQXapqIsdUwPEhGMdKRaJ+QxuGMQMuJLK6a0u/jwea02wf7jceB5SuBli4UJvgEG3aaH6nyKRcMRua5i2KcyBUSluXhF6sLiSd5HE+zyE7b6eQH5DSGx/QydnrabHyfmhRERFdJzLeyWZuyWMu98xyO88PzGSrRQ7rxbccEupQASQZSIXiWIhEkmkAZa1B1L+T4L/DiZ5vjefE5mcr8u10RgPPWZYtk4bYF25w7GUO6BvYUqm4qYDDtuibX4HLBiNWwQNRhuzl9HZC2E4IyGNZLNALvZhEh7xf5nM5Zik0kLbLnV1nLywD1Nm5mICVgfX7XUUH5mJixiOViv19UxM+fqOySaWFmmu6/UL3B2NLF20mgn/quIqUI4Wjpd/N2gPlpRWaAYJ6FFDJ0YvUd64bwmpd5X5L5l4BqbtooPUoL+wdOjsFNDO3mvy0gYLd2QrKGlQCmWpJwHSB06hs9MB+j8Kgx3xPYz6RsZUQyYXl5ZbmCT3CNhg1Zj83uQOkscKDPUpSP0PudvvpvfSNrwHrFfu4Td+vTxeV8PRINoQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(42606007)(366004)(136003)(346002)(396003)(39830400003)(376002)(38100700002)(6506007)(7696005)(2906002)(316002)(83380400001)(55016002)(91956017)(66946007)(6916009)(9686003)(66476007)(76116006)(508600001)(66446008)(66556008)(64756008)(5660300002)(38070700005)(71200400001)(8936002)(52536014)(26005)(9326002)(122000001)(186003)(33656002)(8676002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?OKyBB22r0gifV97XndE3iIdKNph18s6ZT9L9tLgs41E0bcpz0ExVxrRz?=
 =?Windows-1252?Q?TA679LKXFibbTCDZVIzLxYneMSk5JvbG/7a15NIukR82avYDIP76mb1F?=
 =?Windows-1252?Q?76Rl5Zm6i1kgMakQRrTpbaZAPFrJOmdjmxWiX8zIuLRyj6CUZy7MBmN+?=
 =?Windows-1252?Q?P8QL1APvF14JlGP8h0LuZldG0x81cwwZtvjcY98OwxSttg5kfOtIgRoU?=
 =?Windows-1252?Q?9FKmo4XuwidslcMH/4A5Wu2mQ+eGplihxcxkEcz9yquKADjsDG2gg3hc?=
 =?Windows-1252?Q?1RlX6nY3mjinSaflRVuFgqb2bonK9pXIrfO7Qcv6HuZoBnX5NSWjEChM?=
 =?Windows-1252?Q?V0nhbbCjYaoJ6W/YS9Kl5EL2QfAIzROXSpPi0oAkFKvzAavUUAkj0X+M?=
 =?Windows-1252?Q?/v/NU0fn+bKezxbxLrvF8G1B8632nUyLjJs4usmHQuIMK4qch0BaU/7R?=
 =?Windows-1252?Q?wypm4LFBhSyQV9OcA4SENgAK9X2TUdKeNfgj5xXXj4f1J4fpNbicqW9c?=
 =?Windows-1252?Q?AK4SYw/DgcE3lVoGr5Qti8PXoA1QcTfyd1TQMc7FAhZ9ntNJ3d+BUsvR?=
 =?Windows-1252?Q?s5wodK/7V69+Wzm2lstv5OPN0aEU5Kix9h3Pw3Ixq3ywvVVg8U7Z/hHU?=
 =?Windows-1252?Q?rzzCp2rFKi4S3Rkh5HPDanZNoazmlZ+G48oPpdZ5oBDJD6xhLBtcQ3xq?=
 =?Windows-1252?Q?plJMBupczhr5cBbmC3wo9JK5hBgFlNRWkhrBxF1KhHC0mYqwtdI6PD7l?=
 =?Windows-1252?Q?nzWFBPwtdzAquUbhr43JG00JvxaRBeGXXVIM5y2h3DxAoe5KQwRjgD7p?=
 =?Windows-1252?Q?kKt86igLzTaB7GWqOcDvIUpFdWzzyiztFUGxJ37ZTx6KQRCe1a2+MuYZ?=
 =?Windows-1252?Q?hvPEXUG63IAIEYo8AA6wGuJZE02rRScKfMtxhjtbVD8841ioIByQ7pcE?=
 =?Windows-1252?Q?dIyphbb0DUs/EM3Eq92rPm74OkwdbTJ8IrDuUuS0ynWYdMm5r+T3Y6MP?=
 =?Windows-1252?Q?sURpEOBl5N2SAZev4hXA01uhe+HTvvM9V1PdDENnF5o8hT4EAf4FUT/t?=
 =?Windows-1252?Q?HA7eLjH6GwvjuQsuc++h7Urm/OvdYbkcRJ7szYYeWU+zArY5nPrtluvI?=
 =?Windows-1252?Q?QIKcdWgnL/kn4ylVrBClvXQdJys3G0vR2YVsl7IReN+phiyGdCVw0maa?=
 =?Windows-1252?Q?Xsi9XCgMtsqek72831ov10qrsDW7IroytHd7+VxqRfXYzHsggwnBgcxU?=
 =?Windows-1252?Q?SGA4eHM4dRpawajS4st3WPipumE62OXhVsYDVIV3+E5B0OxnLSULyFSF?=
 =?Windows-1252?Q?a+3bwg3zbsZTI+5AEfngHVLk+zQVk2LaqHOdi4hWQFA5Yc/siKt7fSJ1?=
 =?Windows-1252?Q?6h1AmzkoBbM7/MEsg4wTt1s55Wdzl14vVFWX+ucCIFgt5ppZMv2haopo?=
 =?Windows-1252?Q?a7EX73ok0QOObve0K4Srwg=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a1bd18-6ebf-4624-34a9-08d959319b72
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 23:26:24.4199
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: we9M1Kku4v3fJWOb1UedAnays/JJowWk6+5Dd+vGTpAOlLjWP0G1rLKRJQPWXDh11qg1IL5mSMheKK12Xw72Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR05MB4034
Message-ID-Hash: VGROEVUIGW2J6WCCZCFHAZHSVPO374G6
X-Message-ID-Hash: VGROEVUIGW2J6WCCZCFHAZHSVPO374G6
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XI6JAB2IMVACX3VLQ5JSB22KHW7UGBW4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4730317319967279105=="

--===============4730317319967279105==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39BN7PR05MB4500namp_"

--_000_BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


Hello,

In trying to test the =91rx_multi_samples=92 example with all four channels=
 on an n310. I run into an error of =93Requesting too many samples in a sin=
gle burst=94 when I attempt a longer record (really anything over a few sec=
onds). Seems to be my nsamps value, but I am unsure how to remedy the issue=
. Below is my argument and the terminal output for an attempt to receive fo=
r 10 seconds:

./rx_multi_samples --args "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgp=
sdo,clock_source=3Dgpsdo" --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channe=
ls "0,1,2,3" --nsamps 625000000

Creating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Dg=
psdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3218B5F
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 2
    RX DSP: 0
    RX Dboard: B
    RX Subdev: Magnesium
  RX Channel: 3
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 2
    TX DSP: 0
    TX Dboard: B
    TX Subdev: Magnesium
  TX Channel: 3
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Magnesium

Setting RX Rate: 6.250000 Msps...
Actual RX Rate: 6.250000 Msps...

Setting device timestamp to 0...

Begin streaming 625000000 samples, 1.500000 seconds in the future...
[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 12500000000, maximum is 268435455.
[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.
Error: ValueError: Requested too many samples in a single burst.

Thanks,
Jonathan

--_000_BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39BN7PR05MB4500namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In trying to test the =91rx_multi_samples=92 example=
 with all four channels on an n310. I run into an error of =93Requesting to=
o many samples in a single burst=94 when I attempt a longer record (really =
anything over a few seconds). Seems to be
 my nsamps value, but I am unsure how to remedy the issue. Below is my argu=
ment and the terminal output for an attempt to receive for 10 seconds:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">./rx_mu=
lti_samples --args &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsd=
o,clock_source=3Dgpsdo&quot; --rate 6.25e6 --subdev &quot;A:0 A:1 B:0 B:1&q=
uot; --channels &quot;0,1,2,3&quot; --nsamps 625000000
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Creatin=
g the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo=
,clock_source=3Dgpsdo...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2=
de<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.=
10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,addr=3D192=
.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.PeriphManager] init() called with device args `clock_source=3Dgpsdo,ti=
me_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Using D=
evice: Single USRP:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
Device: N300-Series Device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
Mboard 0: ni-n3xx-3218B5F<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
RX Channel: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
RX Channel: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX DSP: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
RX Channel: 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
RX Channel: 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX DSP: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; RX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
TX Channel: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
TX Channel: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX DSP: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
TX Channel: 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
TX Channel: 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX DSP: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; TX Subdev: Magnesium<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Setting=
 RX Rate: 6.250000 Msps...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Actual =
RX Rate: 6.250000 Msps...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Setting=
 device timestamp to 0...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Begin s=
treaming 625000000 samples, 1.500000 seconds in the future...<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[ERROR]=
 [RFNOC RADIO] Requesting too many samples in a single burst! Requested 125=
00000000, maximum is 268435455.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[RFNOC RADIO] Note that a decimation block will increase the number of samp=
les per burst by the decimation factor. Your application may have requested=
 fewer samples.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Error: =
ValueError: Requested too many samples in a single burst.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoNormal">Jonathan</p>
</div>
</body>
</html>

--_000_BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39BN7PR05MB4500namp_--

--===============4730317319967279105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4730317319967279105==--
