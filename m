Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7697D4A9D80
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 18:14:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91EE5385BDE
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 12:14:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="TkoveNIi";
	dkim-atps=neutral
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0057.outbound.protection.office365.us [23.103.209.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A026385AE3
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 12:12:43 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=CGNxRgq+c5+ycYFeMMJGGrJKr3LrfcVElPbUlMZffl/rRCzky2qfyv3docd+Wi+UMRRBEM0UxHXvT+2RH7sTZxRohjnT7H+KqQxaPJXcvSHhKh8V/DfqZxFydnKjmfsP2rYRYjCE6S9PrZR1VbfLxQtRGqzSz4PWDMWw1wZPWUdyaSknuBVAJ6tr2wStTjU0e29fIRY7Ahs0BtI46y2BMrFCfqbjVHNt2hr+1C6DcrQEPag4Wg7jbeFvemF8rJ1X7E8mBeOHjvXu/wpy5e+oDSqoojod/3ApL1BoOpYUQTO8WljzmQ1CCQ9r6ylnSQSgRyLIf1nKsMu9dRyxVbnr2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EHrm4y87HaQHmTY6YHue/h+mtAWqUFEc0yXaL57iSsM=;
 b=REf0/ZQIBla294BIyZNcZsv37JDTV0+tT96bTUsoLwKo3X7UOPRmENJ2hbGXevAfHDuOx+QPBVQe0Z78/SsTLuRc+INMiTiwCrfQq6a+UbHCXSipPRSOL7tTs+akd17iSE6khx0zYMFUfHLdnnpn18MaKX5B1NKn6a2TdMcqIP2mdq6cO4jivrlYW2sdR6umeb9nqINbQ9D0Ym1EFGS+Vuo2dOqJg75gq+9Pa2avcUvrEWGlVicH5CDrl50ma+/GQqEsJzieFAeRpiy54dZWYHL//WljU13e6JXKLCbgwb/WcqGrL+6FK2eKeimbUubT/9OTFDWGkynEQVlJOdgrrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EHrm4y87HaQHmTY6YHue/h+mtAWqUFEc0yXaL57iSsM=;
 b=TkoveNIiPnXI3rGtKrN0i6rkPltj4doUPeEjTzFKC4t6tZp1EeWAJAgy7nJ68Munzh9nYCXeVdWcR/R0R/+SnAsORVtODAh+i0MQMI+d2fGLSSqH3r3cHdsAvT0I8KvxCarM/8Wm+r1bwvKyAVSWnJz+bc/KP7VelAzKG0BWqd0GtG2QZsSq9AWgYufCkLVyrOOeZoBqEvTVbpHzPeELmyuFh/o5jaXix9LbBjXRK2KCM7vuMz/yr3OQDg5CU/XkAlqxvzg4fAiFtucxXSDTq67bAlQAwhKc21jKCACdCwQHjdidUtKJu0hOyYraQ5EHiP2KpI7rKg8GzuplOzkf5w==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1252.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:189::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 17:11:41 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.4951.016; Fri, 4 Feb 2022
 17:11:41 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Jim Palladino <jim@gardettoengineering.com>, Dustin Widmann
	<dw2zq@virginia.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: AQHYGeLJhXQImns6uEGxDA4tHuSCqayDkziAgAAMbDA=
Date: Fri, 4 Feb 2022 17:11:41 +0000
Message-ID: 
 <PH1P110MB16651B03DE879BD8955F7E96B7299@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4dce492-6e64-4fc2-60be-08d9e80169ce
x-ms-traffictypediagnostic: PH1P110MB1252:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB125231DB2A623CFF3ED786E8B7299@PH1P110MB1252.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MY/kve8rqCdSr2swgVunzQO6itddPOe6nF26rHB8wrXU87kllBnVCrDsTdJ8x4suaRTnaicDYCJVVGjjun4tU4747Cx2hNy1QyaVuWDrHX5KC6snX3mHttJLOyxXzTuo/uIwkg1YoXAx3RK5bUuRGmNSOEbM5TPh/10wAP7I0Ms+UWapm4BLEFaPGNTX78eeWZOn+tnKcKcU3LpqbEGPfeuH6qB8cgZHULFMnMb2HBb8Rr++l346+QvnbDJeE9WCSDU+IJR6hmM6mYGSYucFw9T2FYuKkA4MJnTRtlUzzbt9XASkHO4y0rxLPnR1npryBd7W9UqkbPfid7GNtycE2S3yGGyseS5FIighBUlcKLfKu8U0Ejx/RHgCKGVG/mYlEKgdOGLQF2JdewmW6btuFX+5FL6Vx8F6d0aeRSTET4r6ZuaSe93WuKSivwRu1dNU9M9eDL/NNlG1B55KK4VZm7WF+G/3DvCKePGpBJxe328lHMsIsLxMRV9CzCn5RWc6OBg0/jf/fBLFQpXKW182J+LsZH2NmcF1E/8/el4xtjDq0X3/w7hzWKbelVyVr5BPSktb899N7vfKSAwhZ8gPseMaosH0DVb2iatzMoFJwjQcWR8g6/uCvaBdSc/nnqgabZKxK9OpDPZJoQ46zOhpYA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(376002)(396003)(39830400003)(136003)(346002)(5660300002)(52536014)(7696005)(6506007)(83380400001)(186003)(33656002)(2906002)(76116006)(64756008)(8936002)(66446008)(66556008)(71200400001)(66946007)(122000001)(9686003)(8676002)(66476007)(38070700005)(38100700002)(316002)(86362001)(508600001)(55016003)(110136005)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 m703n8aOxXlHrt+julf9VRSpvfsXshR2nxBCKlpeLBZ4cn+fmV2D/geg5890wvur4LOfZGt/D7RKsV5kBaGRs5kjcvfcrf0tcxB7LXp12Xh8Z0Q6s9zNf6HSki4n9HIC0RtXMZeIKS3X/NkjHafZ5gGob8b2nmPucwIEvTMEVtA3QiVGXJbHXzKt2fszZRgYRKtgQl5MsB0UHW6Djz2uNQ==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b4dce492-6e64-4fc2-60be-08d9e80169ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 17:11:41.6285
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1252
Message-ID-Hash: ZAFSBI4GS7RXUFRS5RQEDN32TXT26R56
X-Message-ID-Hash: ZAFSBI4GS7RXUFRS5RQEDN32TXT26R56
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U5FGKBSETZKP4JKW2BX4GI2AVWYHOT7N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8707990682670626678=="

--===============8707990682670626678==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB16651B03DE879BD8955F7E96B7299PH1P110MB1665NAMP_"

--_000_PH1P110MB16651B03DE879BD8955F7E96B7299PH1P110MB1665NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Seeing the same behavior using UHD 4.1.0.1 on my N320 and E320, using inter=
nal clock and time sources:

$ ./lib/uhd/examples/test_timed_commands --args addr=3D192.168.10.2

Creating the usrp device with: addr=3D192.168.10.2...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-g=
f633b497
...
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Rhodium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Rhodium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Rhodium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Rhodium


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
Difference between paired reads: 2285.387207 us

Testing control timed command:
Span      : 100000.000000 us
Now       : 467446.240234 us
Response 1: 469725.122070 us
Response 2: 471973.376465 us
Difference of response time 1: -97721.118164 us
Difference of response time 2: -195472.863770 us
Difference between actual and expected time delta: -97751.745605 us

About to start streaming using timed command:
Received packet: 100 samples, 0 full secs, 0.579987 frac secs
Stream time was: 0 full secs, 0.579987 frac secs
Difference between stream time and first packet: 0.000000 us

Done!

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

$ ./lib/uhd/examples/test_timed_commands --args addr=3D192.168.20.2

Creating the usrp device with: addr=3D192.168.20.2...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-g=
f633b497
...
Using Device: Single USRP:
  Device: E300-Series Device
  Mboard 0: e320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: E3xx
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: E3xx
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: E3xx
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: E3xx


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
Difference between paired reads: 2122.163125 us

Testing control timed command:
Span      : 100000.000000 us
Now       : 432457.750000 us
Response 1: 434731.875000 us
Response 2: 436887.437500 us
Difference of response time 1: -97725.875000 us
Difference of response time 2: -195570.312500 us
Difference between actual and expected time delta: -97844.437500 us

About to start streaming using timed command:
Received packet: 100 samples, 0 full secs, 0.550922 frac secs
Stream time was: 0 full secs, 0.550922 frac secs
Difference between stream time and first packet: 0.000000 us

Done!


--_000_PH1P110MB16651B03DE879BD8955F7E96B7299PH1P110MB1665NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Seeing the same behavior using UHD 4.1.0.1 on my N32=
0 and E320, using internal clock and time sources:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">$ ./lib/uhd/examples/test_timed_commands --args addr=
=3D192.168.10.2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Creating the usrp device with: addr=3D192.168.10.2..=
.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107=
100; UHD_4.1.0.HEAD-0-gf633b497<o:p></o:p></p>
<p class=3D"MsoNormal">...<o:p></o:p></p>
<p class=3D"MsoNormal">Using Device: Single USRP:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Device: N300-Series Device<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Mboard 0: n320<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; RX Channel: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX DSP: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Subdev: Rhodium<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; RX Channel: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX DSP: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Dboard: B<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Subdev: Rhodium<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; TX Channel: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX DSP: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Subdev: Rhodium<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; TX Channel: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX DSP: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Dboard: B<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Subdev: Rhodium<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Testing support for timed commands on this hardware.=
.. pass<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Perform fast readback of registers:<o:p></o:p></p>
<p class=3D"MsoNormal">Difference between paired reads: 2285.387207 us<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Testing control timed command:<o:p></o:p></p>
<p class=3D"MsoNormal">Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 u=
s<o:p></o:p></p>
<p class=3D"MsoNormal">Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 467446.240=
234 us<o:p></o:p></p>
<p class=3D"MsoNormal">Response 1: 469725.122070 us<o:p></o:p></p>
<p class=3D"MsoNormal">Response 2: 471973.376465 us<o:p></o:p></p>
<p class=3D"MsoNormal">Difference of response time 1: -97721.118164 us<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Difference of response time 2: -195472.863770 us<o:p=
></o:p></p>
<p class=3D"MsoNormal">Difference between actual and expected time delta: -=
97751.745605 us<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">About to start streaming using timed command:<o:p></=
o:p></p>
<p class=3D"MsoNormal">Received packet: 100 samples, 0 full secs, 0.579987 =
frac secs<o:p></o:p></p>
<p class=3D"MsoNormal">Stream time was: 0 full secs, 0.579987 frac secs<o:p=
></o:p></p>
<p class=3D"MsoNormal">Difference between stream time and first packet: 0.0=
00000 us<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Done!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">$ ./lib/uhd/examples/test_timed_commands --args addr=
=3D192.168.20.2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Creating the usrp device with: addr=3D192.168.20.2..=
.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107=
100; UHD_4.1.0.HEAD-0-gf633b497<o:p></o:p></p>
<p class=3D"MsoNormal">...<o:p></o:p></p>
<p class=3D"MsoNormal">Using Device: Single USRP:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Device: E300-Series Device<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Mboard 0: e320<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; RX Channel: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX DSP: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; RX Channel: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX DSP: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; TX Channel: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX DSP: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;&nbsp;TX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; TX Channel: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX DSP: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Testing support for timed commands on this hardware.=
.. pass<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Perform fast readback of registers:<o:p></o:p></p>
<p class=3D"MsoNormal">Difference between paired reads: 2122.163125 us<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Testing control timed command:<o:p></o:p></p>
<p class=3D"MsoNormal">Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 u=
s<o:p></o:p></p>
<p class=3D"MsoNormal">Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 432457.750=
000 us<o:p></o:p></p>
<p class=3D"MsoNormal">Response 1: 434731.875000 us<o:p></o:p></p>
<p class=3D"MsoNormal">Response 2: 436887.437500 us<o:p></o:p></p>
<p class=3D"MsoNormal">Difference of response time 1: -97725.875000 us<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Difference of response time 2: -195570.312500 us<o:p=
></o:p></p>
<p class=3D"MsoNormal">Difference between actual and expected time delta: -=
97844.437500 us<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">About to start streaming using timed command:<o:p></=
o:p></p>
<p class=3D"MsoNormal">Received packet: 100 samples, 0 full secs, 0.550922 =
frac secs<o:p></o:p></p>
<p class=3D"MsoNormal">Stream time was: 0 full secs, 0.550922 frac secs<o:p=
></o:p></p>
<p class=3D"MsoNormal">Difference between stream time and first packet: 0.0=
00000 us<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Done!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB16651B03DE879BD8955F7E96B7299PH1P110MB1665NAMP_--

--===============8707990682670626678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8707990682670626678==--
