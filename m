Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC639EBA4C
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 20:46:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2249386101
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 14:46:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733859989; bh=jeRBqkWKWI5c7PqThgerz3OWzmAwvEqSzlbSXP4Mjf8=;
	h=To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Xo1cTvyEBZ/OuFQ0pE08sRGVrvi6sxTt1uXsDkC9lqSPNq/Q7duxAbO/OhAo7oO3C
	 lZ1jYUHBiQYbHhHRWUmMBx6UiVy6ZiL7R5/suyzu7nxTBMe4NK+40Dsnmei0aGxh/F
	 75xeuUbCJ5z0Jz1C0ufTwevDxEZxAKVbHT+siKGwBSpg73V8ps+Kl0TQ6257HTswZK
	 VC1CJfCV8NyKA5HUvF0fMJ9ZDZ45zA4UZE3XvR0X9PULbxM9aq8uCPLav71DRMauiz
	 +Yhzs/N7C7M4/6fdqWIkYKl2wPc5cuXC1FEjZO1pi2QopDwXT1IBBgEDikVawksctm
	 YHUXHx8V8YIUA==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2094.outbound.protection.outlook.com [40.107.244.94])
	by mm2.emwd.com (Postfix) with ESMTPS id E90133860A8
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 14:45:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iastate.edu header.i=@iastate.edu header.b="QNor8koO";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xoL0GY61860KuyXmaWAgnwZEJzLh3nOBNba9EctfQVGTU6CpVIWImffJwXNgGWydGNMse+8aN9v8qPd2E8ID8WVqYT0bT4anIMcBP67dd3siowEJqn4xHCRQHLYwBv7baJ9vWSDDiqZhRiF5Onn7IEX6ld2rGyUVhgNoNLmFHR7BrKG/FoBWMPfaDS/KzZ2f7HXSIrigUIqqB3sWbBeft0XOu4SWE6Tx+rRGHcgVQoDY9M9xi0ZnHrkhJfqy2Pi9wFFp/NPAR8PMir3lS9B5ReYWgY1e+H0+DCIbnaHCD2ZU0+fmpFEWMIYdMfOk32ILzDGnXBxMDVrmWWC+ffwL8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6yjTti+MpfCTDIZ8FTc1bIvXVLbSlZhgNwSINDWpFKw=;
 b=hqAyyTfp4iASPMTgXyuZSDc65hxVuxoSJNj4SfATEVrocfO3XtY5junmhR9ZcJve9kFMARqhhy4yo+74eqW7ufDBhsGlqGhG12SP5iajOv1u80As1ODAQ4MbP9T4vDqyBZx0B+3AlL7Aqe+hY305FWTFWq/PLiV5vxfe6EoQAzEtcSBfXo1OVdyUnSZRHkFhEPrQS3QYD3W+OWBJFej++jjOcFNFIvquRZjZxKLB1L5ODCLIojmGW0qlqI6Hl3j8gPRyq91q6eAE6y0WVQ4Qw3JUk/nXkWcBKERR65OQArk09GvXioB60FbxAnrPm1wD5Trq5/8Wx5b5uhdbDOHEag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iastate.edu; dmarc=pass action=none header.from=iastate.edu;
 dkim=pass header.d=iastate.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iastate.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6yjTti+MpfCTDIZ8FTc1bIvXVLbSlZhgNwSINDWpFKw=;
 b=QNor8koOvowxUSTayoY/IXi8Dm6pMIzQHexzfefal7LE0fY+2ASl6xrSkJ/0pBCWFghU6GAg3fzVzkpuRHdh/krHqMfsYmPKxbfIFrEAe9pzTq2j5Cl/0/RavmW4RwrN2XuVHiejuv62jNalo+1fluFZ0GgdA3i25jVRsU8GU/inRSh+vcOTeQCnkc3pKDNPwAmr0z0mFsdli3UfxbjWkPfnELrT6GyZrYXBsHeCyAuR0/jNmFiEgellqkqFus7OSD7ThZfaGOQAlY0kOM3R+IP78rwy+48bUdnwRm2NNdFbwnlVbRT6EbCqhlBTBP6ZD82qzAHk1dogaqZVePndvA==
Received: from SN6PR04MB5406.namprd04.prod.outlook.com (2603:10b6:805:102::22)
 by CH0PR04MB7939.namprd04.prod.outlook.com (2603:10b6:610:f6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Tue, 10 Dec
 2024 19:45:50 +0000
Received: from SN6PR04MB5406.namprd04.prod.outlook.com
 ([fe80::b473:f36d:5020:cb72]) by SN6PR04MB5406.namprd04.prod.outlook.com
 ([fe80::b473:f36d:5020:cb72%6]) with mapi id 15.20.8207.024; Tue, 10 Dec 2024
 19:45:50 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Running cron job on USRP N320
Thread-Index: AQHbSztRxQxPjgllYkucMKBhxipLgQ==
Date: Tue, 10 Dec 2024 19:45:50 +0000
Message-ID: 
 <SN6PR04MB54066A7703EDAD4B62C03BD3C13D2@SN6PR04MB5406.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iastate.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR04MB5406:EE_|CH0PR04MB7939:EE_
x-ms-office365-filtering-correlation-id: a91ab770-e938-4983-6f05-08dd1953404d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?6WwnuG5EBbFCdnpvfWCY5vYMZat1tBRc16xXJeHjABmS/NztCaR2dnBMyS?=
 =?iso-8859-1?Q?uYRjp7+Yq6Cfvl/Qa7ww5j3nk6i6TbJiIVM6xjATXjGzoj5pOjrGTl7khP?=
 =?iso-8859-1?Q?4iR82qhwimskK/iqCYfGhevrhVp0WscQYK7Ia6Yco4EfsIm4y44TMo/XMM?=
 =?iso-8859-1?Q?dH4y+8nSous+82YZ34+S2K0WP6Ca8xh7VZsSmQsKNAYX5WilFj/U6OK2At?=
 =?iso-8859-1?Q?wYFrTuGw70YqP1DNhxqzjtF/lIftvork5qls7WrIHUmvmTKN2q3w7Itdov?=
 =?iso-8859-1?Q?ljPEDUp2vqUfNnmkgI+0xHnXASE2//UGNFqHekLYdLZ5TF0bf3WWE5IFCa?=
 =?iso-8859-1?Q?MoiYywekZjyHcdgW6GAEF1X4olCPMYjE5fWmU20dcENiYrpkX72jbzRD7P?=
 =?iso-8859-1?Q?0F43vRMDo6YJSpKqUCYr+tiFE2NKJ9DSwtAtdUAAguQjYvI7qAY9tGhcI+?=
 =?iso-8859-1?Q?OfiiiDGxZl+GRr6F9VFAKlxgpn1M2dqw2FUQL8uU81hXK/NZksztKjo9Xj?=
 =?iso-8859-1?Q?+J628llrOKfPlh3bQ3Ir0NTtvqk/O6sqwrzOIaboLDmuvRZxLuuHn1AqWG?=
 =?iso-8859-1?Q?pEPyzlfUjusdnnjzcKqGdtFvMud4+pimr9m2YEcW55YjKBPSqBmKx1ZwpA?=
 =?iso-8859-1?Q?pHnrN2Ua/Xjn3hGHSXLe+VPbhCmZGby/CqPGsdmz6p4vAEDllol5WLgL6u?=
 =?iso-8859-1?Q?cnPXohOXpumJPrDx+rnQZaZmT/daduyErZCVZvB0BifAKkezV5gNrOwvK3?=
 =?iso-8859-1?Q?9eYquD3hJHKfqSXY9RP8Q1ueYPoydtrxWnmGJZ2Cy4sbG9VarlAoop95+P?=
 =?iso-8859-1?Q?InZPKda7aT+dNeJYdMvLXg/RpW8kA1kzr8g47cN8eQbyr8uikRe/og1lCW?=
 =?iso-8859-1?Q?QoYaJGFvuk9MuzIQkZKz/SUg0TB5/Fp4lCOJrTc4vcUPCgFjfv1xli7ke/?=
 =?iso-8859-1?Q?XWUuNniJiymfcwY2TD4nhlVrcfGii74pMvLNhlp0ThAZ3Kph9vKRW7FNpH?=
 =?iso-8859-1?Q?2CLrFAK+CEJp0hsixfOB22XgAATbdEP7FvYHaQpvDZEzpwvCBKoxv/ZDZX?=
 =?iso-8859-1?Q?vqf3vH2LvWiRlwa1dVqEeQfyx0v5fRiG0vZ7HbJhucOi4NLu2BqiFK8sXx?=
 =?iso-8859-1?Q?bMAEyWP7fv0MMUTcovXCKfCc4dbCaWCE5MD3Sfe+yU7Ja8e+rbP6cKxhwS?=
 =?iso-8859-1?Q?IUj7pEh23wJhLlFlf+qdpUr+0mKEzhCiZhjWFH2usv/KrgUJP6jpFMkVK4?=
 =?iso-8859-1?Q?PY4hyHVRNO1IscpSllwMHE1K0DA1qLX4lJVeW+87mlF2Sk2vDFpFA58Rot?=
 =?iso-8859-1?Q?Llx5n5tNBX1taMIfnLBEDRU3m0utzDRDXQoXyi7K7eETlaxUZGDRflofBW?=
 =?iso-8859-1?Q?vBfkT5IqWJePwWfTVt6OQqvF487gDT5jMzqMhaWY/4buzCWLx1qB4HA2lW?=
 =?iso-8859-1?Q?tGKXhGdZnRrKDNp1mWuf2vtV5I/OiCm0M/mzkw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5406.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?IjgQ+wUb1jAmXo10IW6skiqbhxeIibTDxS6Td6Bz8vxe11s/9F2aSnI9ah?=
 =?iso-8859-1?Q?XcT2XkL3TtpqO/IheMUaUmYNIfObPSFzrbc/C4/MZRHjh8jb2DEWyWRnBZ?=
 =?iso-8859-1?Q?7X2GuitIkGZUJyxWlZa+ID5wd0Lmf3sO5dVx3juaHcS/wOps6/movO1AGq?=
 =?iso-8859-1?Q?b1MvQhDhS4ep2/ulq+HAgweTz1cV+hC09jNjvuJOO7GxilpMp0682tz2rC?=
 =?iso-8859-1?Q?ZC4PphjA2TcIcAJH7xmeK9YUj7pbA/UEEFc+VvKfPB2SGfZvb73UA7p82r?=
 =?iso-8859-1?Q?3JHcQFyOiSyGu9+yF3tVoiXYdpHmBQo++tZi6WaR4WEEBG5zGJ2JcC89Bg?=
 =?iso-8859-1?Q?9hEvBGQZWSRg3lP1YWGAStMrzttpHyujnqxboiHm5YQmgec6e4zWQ4vdxe?=
 =?iso-8859-1?Q?VdKuyNbF3ErNjg4WnemXWB27O+hEm8BvV22/bsQYNaQiUaDEP6leadosl7?=
 =?iso-8859-1?Q?379PRJhETZcTS3YFX1lhzgpT+MX8VMv3N8EAFIVvKTRkYsYAqYAH+T4OWV?=
 =?iso-8859-1?Q?1/w935Qo4FP9IXudMmK0x7bZu4Wj+4KaoaosQcNBcMq1xtWi40TwSL35ji?=
 =?iso-8859-1?Q?bfiF45MQTxlibAMIKRfdr7JlYAbvgA+iKK5h58zKuru6Mm16HVwiKJQpuC?=
 =?iso-8859-1?Q?/+K5v9njIXp6ccifTt5+Obt4w2a4M0CPKUaFoUXnlqEawAMHeRlDkwTUC5?=
 =?iso-8859-1?Q?z13E3DFDMWx3ThqTl8SPaEbItbTTR/QN3E6dUEuOaMmoReO3MxO2TBlPVx?=
 =?iso-8859-1?Q?WPCph3yIzIDsO2zkuOPMdg9O9HQE4TXiuFx3PGcS7rWmQxB/2cFyMXcI0X?=
 =?iso-8859-1?Q?ZDI/bUbymS+xCLplZr/4MXMq9u2EjCR1yrY4wE6P1JWsfFV33sxYCdfe87?=
 =?iso-8859-1?Q?HnNwi4mhYGQvI8GV2v4c0Mw1VEX5G3b1vuPPwaEXw4r9G3lxInZGsZb9kO?=
 =?iso-8859-1?Q?T0mE5BzQDPK1WrKRf2fX5iRPbiHgS2agsuUsUP5k2W/a5ppWTVYSGxeu+S?=
 =?iso-8859-1?Q?3L4OJzo/MiZwNGJ494X6THWAFVVeSw6ihhGHJwanQPSiBxx7/L0Qbxa8Mm?=
 =?iso-8859-1?Q?uZuz25oUpSF7tQjCt6+iPeIRIgVbUcph+c9IQCavncGWE25ZUZOLW7sVtO?=
 =?iso-8859-1?Q?X0LOfVsl4YZLmm2uHf+zczXddydoI8/3lzhdgrmM0qKi0mnpRLdmW7uM4F?=
 =?iso-8859-1?Q?zvSQAk8dxn7t4M0IssRJ9zZTksa68trLcXTs8n0ro6Lk8SFUsaqRBlfcx3?=
 =?iso-8859-1?Q?jpfvCPdyXNlqzvIx/bBJJ4llCSk3WiiquAOk//Upn9J4rWjyueTJbyjOra?=
 =?iso-8859-1?Q?zHKODRSe6B5UAYkdE0RdwZc11No6/x2jM/LqLSui8rf4ojI22R/tHRwJKl?=
 =?iso-8859-1?Q?HLcBTt5IsxePS/fon4dXImA0VQfAJvkd+YFIs6EpW/1yd8OM59bMYjNRlA?=
 =?iso-8859-1?Q?T9U5C2zEHDod76OWqW4E9kI/hp6H1KQJT+KHtuUoYIfBI7I+DOdbRRw3cA?=
 =?iso-8859-1?Q?6pXGnw3UiiiRmex24m15xA3PQNUcV736thhDYrcpzFjTR4RCTYDucROaVk?=
 =?iso-8859-1?Q?RbXky/4yHTmW4NwViRrG85NehL8VxM91jO5JO1v0esJhKOflJM7f0bigfB?=
 =?iso-8859-1?Q?uFkRq4zVZey6Q=3D?=
MIME-Version: 1.0
X-OriginatorOrg: iastate.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5406.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a91ab770-e938-4983-6f05-08dd1953404d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2024 19:45:50.7679
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0347d89a-0174-4dd3-adeb-3339c89c35f5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3fCmpF3DbhyZSZuPclW4VDb/4/CDnOMo55CRI/6ssp7SkQRMt9+xkcu/wp3tbB6j9kv8c2hqSkAnt1yhLKCBZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR04MB7939
Message-ID-Hash: VIAYKKRLTA4SXMN5IMUS4572OOK3QBJ7
X-Message-ID-Hash: VIAYKKRLTA4SXMN5IMUS4572OOK3QBJ7
X-MailFrom: jboateng@iastate.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Ofori Boateng, Joshua [E CPE]" <jboateng@iastate.edu>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Running cron job on USRP N320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PMATD6HVLTLABVC3DZQWEWPVUGEYLY7Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Ofori Boateng, Joshua [E CPE] via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Ofori Boateng, Joshua [E CPE]" <jboateng@iastate.edu>
Content-Type: multipart/mixed; boundary="===============0928597316114154197=="

--===============0928597316114154197==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR04MB54066A7703EDAD4B62C03BD3C13D2SN6PR04MB5406namp_"

--_000_SN6PR04MB54066A7703EDAD4B62C03BD3C13D2SN6PR04MB5406namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello folks,

I am working on a project with USRP N320 and want to run a cron job to rebo=
ot the device after a specific period. I wonder if anyone has tried doing s=
omething similar?


Thank you.
Best,
Joshua


Graduate Research Assistant
Department of Electrical and Computer Engineering
Iowa State University
Ames, IA.

--_000_SN6PR04MB54066A7703EDAD4B62C03BD3C13D2SN6PR04MB5406namp_
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
Hello folks,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I am working on a project with USRP N320 and want to run a cron job to rebo=
ot the device after a specific period. I wonder if anyone has tried doing s=
omething similar?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thank you.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Best,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Joshua</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: &quot;Calibri Light&quot;, &quot;Helvetica Light=
&quot;, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);">
Graduate Research Assistant</div>
<div style=3D"font-family: &quot;Calibri Light&quot;, &quot;Helvetica Light=
&quot;, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);">
Department of Electrical and Computer Engineering</div>
<div style=3D"font-family: &quot;Calibri Light&quot;, &quot;Helvetica Light=
&quot;, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);">
Iowa State University</div>
<div style=3D"font-family: &quot;Calibri Light&quot;, &quot;Helvetica Light=
&quot;, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);">
Ames, IA.</div>
</div>
</body>
</html>

--_000_SN6PR04MB54066A7703EDAD4B62C03BD3C13D2SN6PR04MB5406namp_--

--===============0928597316114154197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0928597316114154197==--
