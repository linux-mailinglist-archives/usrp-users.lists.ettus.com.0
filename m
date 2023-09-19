Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B937A5B3B
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 09:38:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89AD53851D8
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 03:38:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695109091; bh=jfjngXFqRFhI32XxY8x+LNpWrdfsCM+u4iJr8IQQfho=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=wDFQtg/bYVkKNycmFc6TzeHMqB6USXe1dTOrw4SN1dYnoVJZxXYdEx2Pgaf1i1Yqk
	 u4vwgwBXNiXj0JuDbG6pJcU7sXXCugKvU7HbaMuYs9ZuG6Yo2jRebMaF+fC2plaRaP
	 b1Zb2AhBbDL5tVT4GIHZ8idPygEG1dsb7Ofo7VjnVQ4v9TLrYrBHFBsTVC7cYfJFwD
	 G6/uABjopExILRxsfj9jtBpYOac0oG0TBHDhNNM9+IVDdCznkX5D0EbpmGKQfdLvf8
	 234Sv0xTVYX+4bfoDBYiG0dxQPKQ5AIPPGgEStP56fdZ/0rYUze1ALzdOoPu8SHmm6
	 GUcPvyPnS/ZBw==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2075.outbound.protection.outlook.com [40.107.222.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 2092C385077
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 03:37:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aseblr.onmicrosoft.com header.i=@aseblr.onmicrosoft.com header.b="pw0IFoo/";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0bOOrRf58qRJq1LsDmSWylcbWLlKVq1bfcVqgj8QvW4haazmEmEpZzuT05XltxU+4Jc1hjRzevj1SSQv0uee2UR4rhmGC6/3EkymXjGLlwNz7Ihari/7V/+aHnh1bVAs7SieF+vOZWIcd3bjwejzEg2w2FJ5HR9wt53MKaWuQ/5RIFvb4oLbqlAgy3q1a25F2qVOZGjCJEsoM7fcPz1yz1OeJfZ2dHl+CcwP6eI7oeVz6a50s3MR5Ym36RZ7/DfaQaw+QmoYlPIoTc95eaUFq/IhUe1XiPrwuqYoBqZIwEzKlsTuOtmHxkceHpe0woEZhSUblCXnc//YgL05fH4RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TxpPFuTEbGBcjy5xguwcQxviEIn4+N3kUMDvruLSkZU=;
 b=KxD621R4br9NiAbCF14VMXdJoTjBlY9fUhwLzLOAqDg/TVztm0IbqB3DwjYK387HjE2FTt0WxCoqp/ajRNix0lhrSSuDTFfQ71iSJYuAtDYeTTZ5Ka6F6j5H1njbc7uscU5Cm5JJ60/w+EEXzR+YSmOXiHzCWQ/nUR8bQjL3l5+/6xtEhgo1joKExqWKnUl0zjNw9nx5dJyALcbWWW6fb6DCRpzOyE9+JtNV2AcSLQ0eHEKl1ighmgu7pHDce1QckgDNFwESFra6T0lLY6r00qHvgptpYwyqj6FSB0FLBOAdvFcov3AgwZi8nK6kZrJIWGAAgBYYCc1oi9Jr/4+zSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bl.students.amrita.edu; dmarc=pass action=none
 header.from=bl.students.amrita.edu; dkim=pass
 header.d=bl.students.amrita.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aseblr.onmicrosoft.com; s=selector2-aseblr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TxpPFuTEbGBcjy5xguwcQxviEIn4+N3kUMDvruLSkZU=;
 b=pw0IFoo/T6TQe4tswnJYhjlTDuw3m70q3g4QiZtoxtbm9r1PcpZdS8pYjK71TUx/4dgB8LpFBRbW7whRFk0RbQKwlpiD0tqqsk58X/8zhkx7xmivmmFFlqjgMm2dh4AFhtD+gbmhex/tK/Yw01iVHvQqWY0xuvdjtKZnrlBFMTo=
Received: from MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:cc::9)
 by PN3PR01MB7349.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:90::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Tue, 19 Sep
 2023 07:37:45 +0000
Received: from MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::3207:49fd:79b9:8d1b]) by MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::3207:49fd:79b9:8d1b%6]) with mapi id 15.20.6792.026; Tue, 19 Sep 2023
 07:37:45 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP codebase walkthrough/understanding
Thread-Index: AQHZ6swt1o5kGdA6h02sTaLKg4Mtkw==
Date: Tue, 19 Sep 2023 07:37:44 +0000
Message-ID: 
 <MA0PR01MB9218A5503D87BFF14F28AB9AB6FAA@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <MA0PR01MB92187ECC43DC43A0A4050C2FB6E8A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB92187E3CD217ED05912CBA5BB6F1A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: 
 <MA0PR01MB92187E3CD217ED05912CBA5BB6F1A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bl.students.amrita.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0PR01MB9218:EE_|PN3PR01MB7349:EE_
x-ms-office365-filtering-correlation-id: 2659add3-87ba-4fa0-a5f3-08dbb8e35071
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /BZfDeGJmZlEpiREoM+kfK2uyAyoxLK0sToxAYghuDQojSqk/3MhDTo6nGYuNhVx5QgPGlANMnVinWK8t1S9E4MViqBCOCzOIcbCYEyAf9Gat4GX/zyfspAEIxcoMAA1NC1WygSD8CrUK17RxaGRUkrDO/tejidZ0zuAiwv9SOk5IRy6OXG4BG4q4IVY4UIAs0YKfbBzIX3dBC5zfs6M5GCkYFFVpl5e3gSjA+qj8UlHeWQrgjEHspcD9e6D1mC1/2DXUhGGGyMH3Qu/TosiwmXtwjnoXgHA71g4pwl9oeLWC44Axgpa66JVE87MohphrhKwEXAu8nU26NxwwrOYZ36XtzBmtNvY7Z9bTVe50ihsfW/3665K0D70dX6+B8Lko3iUgmUN0UBF8b0pGi4nb5AprjkdbKsAFSL9YV7JSUYl5GLmG83bgrRd1ku4QiJDXOWkslJYGAXu77HGVnqY7MDlTDF6o4PLv20qcQV0sIIQ/wnpfGFiuWE55Nse8Un5iLDAwLa+nVE8uVbFnveyCXnJUbqkDz+RhhGB7kpA1hjjVCy0BwBEYWH7K4+BCU/AMdmzMcJNkJRQottDSgupIBHOvXN3odKBRzb8MoudOKl5m/oiNrvpEvVsbjoCoxHz
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(396003)(376002)(39850400004)(366004)(1800799009)(186009)(451199024)(19627405001)(2906002)(5660300002)(52536014)(8936002)(8676002)(55016003)(41300700001)(786003)(6916009)(316002)(64756008)(66446008)(66476007)(76116006)(3480700007)(75432002)(91956017)(66946007)(66556008)(71200400001)(478600001)(53546011)(6506007)(7696005)(26005)(83380400001)(9686003)(38100700002)(41320700001)(33656002)(38070700005)(86362001)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Iv3iS+N/5xhv2DKgf9MtGNk2/jtlMNN2Qx2u5gXIMd0+bVD26qJN2FCcbc?=
 =?iso-8859-1?Q?cpDJAR4EmJOrRbEeN/yqXVm98De2PsHXB9mKxya6GfNjE8N7QEBiZES2x8?=
 =?iso-8859-1?Q?5kpyWjFULUQp1xZaQgWfDiLQGKJujjV3Ame+sx0Nx5iRnYWO/sceo7V0eC?=
 =?iso-8859-1?Q?sv2/WaPhx5+ih90iYooUWcIv+bM0J+fWRJES6X50c9L4S1u4TqSlJNbQPf?=
 =?iso-8859-1?Q?U8WSi3BaTIHY5rAOOMgJxn9n0OKfWsDmI1WOouGvV29ukimy42ZvnrbVAR?=
 =?iso-8859-1?Q?jiYB89/Nci/RR39LJzotnD72IXC76kOrKcrM7DYIHfGBxE59MQm29IeYdS?=
 =?iso-8859-1?Q?5feKZDu0trFwwTcQ/Q3qX6TQrQCm9p4R/C1etO8kp1mJWsBAC+CKuBwrts?=
 =?iso-8859-1?Q?+7ZCVfMFbbTLxZPyMFUOIJAUyG44zgeCrVe7jpf7h/waqt4sTA4/mvnpkZ?=
 =?iso-8859-1?Q?INbyZjxqiyshdrDtam4mJ2DaeBCXga+opnhTu70Z1G5Jrme0UCee16aNG0?=
 =?iso-8859-1?Q?dmpLW4pdklyddBoetZ5mC/XD+UazARsh8/tEpStsToyizIKo/vJmPW/SKO?=
 =?iso-8859-1?Q?2dndeasO7N45ewZhcVDMSiv2qc3KTrglB50IL2Lwxl7K/S2JzyR02XdlDU?=
 =?iso-8859-1?Q?eMjF7rl2x58QlHJWggPC8rQFQKHRdFYZ63b1k/c4bhcDoz1SSiiKypmzq/?=
 =?iso-8859-1?Q?2lyrKEEYnyCNkE7AcmZGQfuswR7aa5tglcEGMp7ZbCROI3FasA9fVpwIth?=
 =?iso-8859-1?Q?GjwaIyxzBN4MZQwWQKiTurK4Ei1teD2r69V4PTA+0Z19xraxQWPwApxeWr?=
 =?iso-8859-1?Q?MNRaLpi+G9n7NRoDfeDTiASva1Bp24/X++TbGHB6DpTmf5eZn5BV9xY8NS?=
 =?iso-8859-1?Q?3dBEdsGHwUuXiqJRaqChNm27+XsLUo5Pa/l9CxFKGBg9rKx6s8JAIDXT7/?=
 =?iso-8859-1?Q?o6PJtQLfXqvVRo6wJKb+dfpJWJebWhkIvRHcSvSOnIY/XYJmZHW+O3fwp7?=
 =?iso-8859-1?Q?0rqiA/jImXfYD/ISJ8baF1Z0oHoUpWES/E/m2+217RYJi8uxZADEXMk9PL?=
 =?iso-8859-1?Q?q+YeNmsrjVVOJyzu8+utreZDuK4iMs/TKSoI6TuRIoUOpddImjzKeRqz2e?=
 =?iso-8859-1?Q?f+iFolmQOocgrSxhicejYtS2MLpYBmobFqztdKOsteoBNMJsqj/vvv9PNL?=
 =?iso-8859-1?Q?J5ToQ7u+scLNtcRdquIVNdbotgclEaWnMPD2We/Q8h6i5YOBup6+uZ+GF4?=
 =?iso-8859-1?Q?y8FnRcmpYFywghJy6Xbdf9eT6gyvbdO9LHFj+H0++FiavpHZQDnTg5/QtU?=
 =?iso-8859-1?Q?YvRR7trgzk40lr18hZUhdGh7U7Fx99AamU0RATxN0H+N6M2KznLQRBMu20?=
 =?iso-8859-1?Q?expqZBS8BTuBzHuQPU4IEYgZM4q3GLi7APVrXg+YAoY8I4JAm4HphpOtQM?=
 =?iso-8859-1?Q?V/Yr3YaG5UjxsgsMd8KrypjF4t6WWQSVgLLpvvKyN7YPTcfD9UZDnqkRHX?=
 =?iso-8859-1?Q?Gh+DTxeV619MZ/V0iQzhNRWyY/tMSRRg17ZVicGAXs/Tc07V7y8xCeCJ2E?=
 =?iso-8859-1?Q?oUBPphbmRo2Vf1SSux64QhnK2UU9o+erj8rdv++89n7g7tcIoifdK4vrRs?=
 =?iso-8859-1?Q?mqGC97njKm1vt6TFXZ5gyKRASeUf1KNc5ln3Yw8YxdN++z+EsctOnEXiwz?=
 =?iso-8859-1?Q?2BWGH6p6NzFHbOe0ToA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: bl.students.amrita.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2659add3-87ba-4fa0-a5f3-08dbb8e35071
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 07:37:44.9373
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ebbbcd62-c0a9-46ff-a92c-5f2300087164
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mwj2nHOTdH/ZDZFEnEpMS6MKleyvAo1/pX2bKsYxeT5CADzC7L65QlHQVOYQgFTr/+NWNrinlkjUEmaEbJUNvNiqDBYNH6mGsKdLODUJZJCRAvyHDXOaWPi7eSm0N1cT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PR01MB7349
Message-ID-Hash: IWV23ZGJWWZMEOFKJ6DGFHEACPY2PVW5
X-Message-ID-Hash: IWV23ZGJWWZMEOFKJ6DGFHEACPY2PVW5
X-MailFrom: bl.en.p2vld22009@bl.students.amrita.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP codebase walkthrough/understanding
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VUONHTT6NAVVKWVK6BVZNQ3HQIIWJ2D5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Jeyakumar K-[BL.EN.P2VLD22009] via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Jeyakumar K-[BL.EN.P2VLD22009]" <bl.en.p2vld22009@bl.students.amrita.edu>
Content-Type: multipart/mixed; boundary="===============8852511585074918564=="

--===============8852511585074918564==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MA0PR01MB9218A5503D87BFF14F28AB9AB6FAAMA0PR01MB9218INDP_"

--_000_MA0PR01MB9218A5503D87BFF14F28AB9AB6FAAMA0PR01MB9218INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

Do we have any videos or can someone help me with a code walk through of US=
RP github codebase.

I have taken this project as my final year MTech project and would like to =
add AI capabilities after understanding the code.

Many thanks for your support.

Thanks
Jeyakumar K

________________________________
From: Jeyakumar K-[BL.EN.P2VLD22009] <bl.en.p2vld22009@bl.students.amrita.e=
du>
Sent: 12 September 2023 11:25
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: Help to build and push bitstream to FPGA of USRP codebase

Can someone please help here.

Thanks
Jeyakumar
________________________________
From: Jeyakumar K-[BL.EN.P2VLD22009]
Sent: 05 September 2023 21:37
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Help to build and push bitstream to FPGA of USRP codebase

Dear Users,

I tried my best following the instructions provided in build manual but the=
 build failed with several attempts.

As part of my final year major project, I have expressed interest to work o=
n ettus fpga open source git reporsitory for USRP hardware build on FPA and=
 add more features.

Hence can anyone guide me to understand source code at high level and how t=
o build them in vivado. I really appreciate all your support !

Thanks
Jeyakumar

--_000_MA0PR01MB9218A5503D87BFF14F28AB9AB6FAAMA0PR01MB9218INDP_
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
Dear all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Do we have any videos or can someone help me with a code walk through of US=
RP github codebase.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have taken this project as my final year MTech project and would like to =
add AI capabilities after understanding the code.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Many thanks for your support.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jeyakumar K</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b> Jeyakumar K-[BL.=
EN.P2VLD22009] &lt;bl.en.p2vld22009@bl.students.amrita.edu&gt;<br>
<b>Sent:</b> 12 September 2023 11:25<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: Help to build and push bitstream to FPGA of USRP codeba=
se</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family: Calibri, Arial, Helve=
tica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Can someone please help here.</div>
<div class=3D"x_elementToProof" style=3D"font-family: Calibri, Arial, Helve=
tica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family: Calibri, Arial, Helve=
tica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thanks</div>
<div class=3D"x_elementToProof" style=3D"font-family: Calibri, Arial, Helve=
tica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Jeyakumar</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
style=3D"font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b> Jeyakumar K-[B=
L.EN.P2VLD22009]<br>
<b>Sent:</b> 05 September 2023 21:37<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Help to build and push bitstream to FPGA of USRP codebase</=
font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Dear Users,</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I tried my best following the instructions provided in build manual but the=
 build failed with several attempts.</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
As part of my final year major project, I have expressed interest to work o=
n ettus fpga open source git reporsitory for USRP hardware build on FPA and=
 add more features.</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hence can anyone guide me to understand source code at high level and how t=
o build them in vivado. I really appreciate all your support !</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thanks</div>
<div class=3D"x_x_elementToProof" style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Jeyakumar</div>
</div>
</div>
</body>
</html>

--_000_MA0PR01MB9218A5503D87BFF14F28AB9AB6FAAMA0PR01MB9218INDP_--

--===============8852511585074918564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8852511585074918564==--
