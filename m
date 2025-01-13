Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E42B6A0C241
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2025 20:58:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0A203861CD
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2025 14:58:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736798317; bh=MBPzkMdceT1kJZpUSlDz//EEpVMGJG1mmEmmr7XDFTc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WCJXDcOZ3JImFusdRBaQbUHK08+KWNjNZLdhJ1a0P0lXJnVMvvKB0P6QXyRnHdwn1
	 aiHwWT0B6/oKu6yySIEafvNsdrWL+Om8EqrBlvPmwEYhk3Yac/qvV3q3+QHe0bl+en
	 6zg5noCQZgbpv7TKDCFBzV9jpdcPcSlM9xGxXzuuip8n1Lx8SfaQWHyJVSTvG7UIMp
	 8Sqpa3lsVFLsBZr2Uzgz+brfAmQGCTShW0/X0+uFpUrXQVlobbbtVbIgKrzbgyb+/O
	 MWyAGGbXPfcht2wHeRDb6ChyMHTdpknglgMxaVXEwl8DPmzI5VPxj9FBhCWn2NpwoA
	 oXtnAsLp8CKAA==
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2098.outbound.protection.outlook.com [40.107.220.98])
	by mm2.emwd.com (Postfix) with ESMTPS id 07E5E385C05
	for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2025 14:57:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=mtmail.mtsu.edu header.i=@mtmail.mtsu.edu header.b="lKL66dLG";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ln1JxXVeFRvP1R9uzEb0yEEX/m50sG7QthKAf052h1z/6XcYnuwmUQWu2RjRBAMvwK53VUvMw/Wes1YORn5foirpj83g1IbIbPVeOXEJ6P6XnnqCIhkwuWJC1EYSmBdFJej3PFnN6m8yeva6Qcp+pn3eQ1xXmhILDuuM5/pxHVxnfRvh3+rCxdlRxGXeS6YWtFiks7lOpH2JpZ1LOSw18bEYTsXrPFLPYotUAuTei/b55wWIG/UZq6xn1QZE0f4QpRym27i2WkU+kpK7GY0qYxiQhaydYDEkrmqbpEVZjQqPpyC7h6FxOk6NbVjeM3b1xXWdENngvDbVqdjAWuZzfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rP8myf7p42+NLYPZjmxwtkLhQkqowjRLYQk261J/YRI=;
 b=fPPo1hJe8iXyBCmvFQWCQiu9S6JIzer5GFf5PD0cpzv9wQT0RjtZNfx+0YRHv2vL+PEYpvr/RNK0jX7RuFBieJUEkmgN1Bh5hB79dJBmBSmG3DiBmASwhLfvrWXyl0u6PmwYBbuu2CmwXR69q27eASBH2MgdbzTyQr6OV3GxyhstCNwKKJ0OqskS48zIT8/r6ydl0ae/HXNZOPIJwUX006enz/7WJbwLchS3dmGKGDxhabeWnmygh0bCjVdUEI2BM+m45C+fLsnrYGFW+kWE9quHKHtOcJK2QY9WknOOAn61ggPpv0CK6Fs14l2SXi0GwhjoTnMDnBk5fVSeOHUp6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mtmail.mtsu.edu; dmarc=pass action=none
 header.from=mtmail.mtsu.edu; dkim=pass header.d=mtmail.mtsu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mtmail.mtsu.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rP8myf7p42+NLYPZjmxwtkLhQkqowjRLYQk261J/YRI=;
 b=lKL66dLGqHhmwH+3VArXUzd9qhDqLb7BK/azZjLVlawHaO/YJY1wj/vbUML4q+0q2eqd4hpvGpuO0zvOrqvGdVEeQxVEHPucAkcYCk1riTWkZGTtLZ3+IDcaO5navrJGD+TZ7MhWa9qmY3N+1IQIu9N80r9+USGxw9XaPp0I3+w=
Received: from IA0PR02MB9266.namprd02.prod.outlook.com (2603:10b6:208:435::16)
 by LV3PR02MB10737.namprd02.prod.outlook.com (2603:10b6:408:289::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 19:57:36 +0000
Received: from IA0PR02MB9266.namprd02.prod.outlook.com
 ([fe80::b071:720c:54f4:d81e]) by IA0PR02MB9266.namprd02.prod.outlook.com
 ([fe80::b071:720c:54f4:d81e%7]) with mapi id 15.20.8335.015; Mon, 13 Jan 2025
 19:57:36 +0000
From: Namira Tahsin <nt4t@mtmail.mtsu.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Confirmation Regarding Windows Version 
Thread-Index: AQHbZfTORTP/imYx9UOD9A+KmMzCQA==
Date: Mon, 13 Jan 2025 19:57:36 +0000
Message-ID: 
 <IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2@IA0PR02MB9266.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mtmail.mtsu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR02MB9266:EE_|LV3PR02MB10737:EE_
x-ms-office365-filtering-correlation-id: 28cd58fc-bb2b-4a04-3b9e-08dd340c86ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?UJ1Qn5+p9/JSzzsimmp80sNJpkKaehdq47dWUzbXNDGV/AvIuHXRlJfjN+?=
 =?iso-8859-1?Q?eAK/kzmrPkAbFci6x1A5HnIYaUHMb1DpsGGl63uNCfxfLofZQQdG2JQo6t?=
 =?iso-8859-1?Q?2LR3LEkE0ix7IsSXRDCa986F8/n8tr2mO/INgzX3LUvP5ILl8qoCwee01p?=
 =?iso-8859-1?Q?F/xO6wqrhOW2syM8mD1Mvgk59iqSPi9qhnBK6mbrAN7ruCOPYiq4hJpvXM?=
 =?iso-8859-1?Q?KywAcF6K4d2Y+zlQI3FUuqrVtPhrpBaaf6MxZ63r7iqcMHoLGr3uSJcV0U?=
 =?iso-8859-1?Q?V3dUlog3VcNVOCLY2Gpk1BHucEinrdXsAXHUSyrhbNKejmt2JzLXhXCqiS?=
 =?iso-8859-1?Q?sAp9JaZcxmYVePG9rRfF9MBh7mPq+5L2RekrWmvJEYiPhCm2ga3nd1wEB2?=
 =?iso-8859-1?Q?AKM6Z1wrlwZVtlKAx9Yh6n70ymRSWmplkJp5w43Bd1H7j0mtSQLnd12FSk?=
 =?iso-8859-1?Q?VRaFLwxdXIViLY+G2KQiyRLl0axCc4zDFwAR3EUUXjjCwF8lpiqRdWLU8J?=
 =?iso-8859-1?Q?JxRtA1nhHKyeSFPxcx7rXAxCtsfTMxY4G/kRjI3ZklbMNdD7Al/axbvVzJ?=
 =?iso-8859-1?Q?5cC0ydWOyZCwcg2o+Mv4xF7+Ym1JkJamM5SbbSM5Q7SlN1ShYH8vvFuvS1?=
 =?iso-8859-1?Q?rukE2djJRWxwFLe6F8DMATn+nh3zdoIWZUlu+BIXXYTZOFk2+4vOkrJ1fD?=
 =?iso-8859-1?Q?+NsOVdMeBv7ihPDRtr5Mrt2+gtdfd/O4DYn3cIS7Qi3Bj1wsCaIdFWS2Lx?=
 =?iso-8859-1?Q?0Qlrwa2byl22YbRmh9JvU8f8PoPtN0KjIKv03SNmIRwgwVDIWsLqDrX9pL?=
 =?iso-8859-1?Q?h5NKgANKxArQiMLLADOQBYhqunqYMChqVvQ+Gg2UDDlKdoxNk/HPl035tP?=
 =?iso-8859-1?Q?VJG2lU/gaixZvt9KxbtQyrQ0hGu2jzbjzkGjbEpkwpDEXmESucZp1h1Ndw?=
 =?iso-8859-1?Q?g3bumjiVQg26Ol+OpEt0oXbl3zN56WMedjvb1Dm6eW0JFvH+wLVfJXQsXv?=
 =?iso-8859-1?Q?4PGyJOmtICbfZMdXkJGscvyM/MZNd/dliw9q1yuHo5NDzjgrViPU5nKZT0?=
 =?iso-8859-1?Q?Q6nChebS8QRWI/DMG+iajy4e8gZVgmQGimBbksZfYmN2yijWhcRHfIT2s1?=
 =?iso-8859-1?Q?8QJ75uOLlN+7CvO87tGQARr3tE1hZiOfZnSQdpzrz50hOfj4YKzkVjElO5?=
 =?iso-8859-1?Q?YEFNt4196D7zqe9rwrLdk3jvYxl1NE7AAAp87RogmIv/dwj1Z2VjakoAOO?=
 =?iso-8859-1?Q?wMY41WjXifRTc+Qcv78Hu3DaGUtnn4sma3irkkl/wDTqOIhRInC79UsNxm?=
 =?iso-8859-1?Q?l7YOBSewl6WayGpQ6ewCUQ6ykQg8+IViKtRtEbOxK1Fsa0t0iVsNAqVYb+?=
 =?iso-8859-1?Q?z9IJJ5YAbz0f1uNYpIMbw5f/eEqoNk1JL+CYfBgcYmKowF6+a+0ScgeXAS?=
 =?iso-8859-1?Q?6b5OsqhROcXA2Zx3OpPD++ljjIrmyM4kKO2mCNYDOg6MBaehPZYDX6bHDS?=
 =?iso-8859-1?Q?Zeu4Apob1XkBs8WUdGY5Py?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR02MB9266.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?2yaC4rJrZzoG5byzaL+zLnu5Im7+tICq7lEt9Tgfmffvrv7HyBOXDnHpb4?=
 =?iso-8859-1?Q?+EUSw/b7jTbCmE9eC/x1Vf7XZ086TPKY0d6U+gmtmQhKGieHWHXOuAEkWn?=
 =?iso-8859-1?Q?CTEMunXmSI9kF6gSy5MsEodgTE9SmheWNh79OzYl20/QjWKO0G7G+FCGwu?=
 =?iso-8859-1?Q?cn2Cm1vzBHPqiQCaaM6j/lcjqyPp8AySunwDMDVon1e9EF2/SyOEpBEcm7?=
 =?iso-8859-1?Q?kAxem5A6y6ibc3Fjlh7DCsRssM5OPoWtPa3EaWKkt+DYrM2c3OoMGCH13D?=
 =?iso-8859-1?Q?NV1OeC6h24EgLN3bbP0w8ATGECLHso4hOYgIy6fVZQX7okg6vQ22zn/Eq6?=
 =?iso-8859-1?Q?rllS/gO0/shpEX2D+iGScNHcWMAGIArYtKDxoKt3YMvf1pny2liZUZxxQ6?=
 =?iso-8859-1?Q?X4AKYWA+dwGoYOXoaqde522QjH7OXl77jJ4zfuecjINHgsFSzi9z0r91ZX?=
 =?iso-8859-1?Q?oYtv5vX4spU2iNyeYzIncwB+IyS0lZD7+qI3FBaDhP2LdUeOobQD+pBCNo?=
 =?iso-8859-1?Q?xxYXIsygFavX4Jd1k7L0PoB8QFC48BcquX8B3wIxux6hnWR0J5baQdBezn?=
 =?iso-8859-1?Q?Z1Ja5UAgZJWjPy61rZj6y2/zUzwOqnQN3t+V8NQIgEtavJdkikUv7bKyD4?=
 =?iso-8859-1?Q?2sYnHhExMrZBpW7w9+3ai4Swq4WrZRfqHpDPvU50pk6Q9hlXx9ETNWzD/0?=
 =?iso-8859-1?Q?trA1bw7nJcmpS5JrbdeKpD2Fj0AY6e3lyef9QrIhHLPC5E7QdE2Z5MjXxy?=
 =?iso-8859-1?Q?v1Irt18QX1BDaV58cR950zJPYrAxV7Ps3pIzS3lcOHvVsBlG9k5ZC+NKWE?=
 =?iso-8859-1?Q?jYXMtiMUuryGlzdAaeMqXzj1G0UaThkbPaxfvasvdkZWqqoWJ/vtWQI2SC?=
 =?iso-8859-1?Q?WK4QsI0N1CQeI99gNkB9iF0F9GwPB2ouMQGqbvidPNXbXslma7pK7/at/k?=
 =?iso-8859-1?Q?TG8A+2PuuRfSegEgBDIdmODO1vs7A2BHNAI63XP4FCXJlNVlXCw4s2xpxx?=
 =?iso-8859-1?Q?Azh81sG8VtBkq787zv1qjAbUpZQDnz+SsnmwhOQRI4MPaZSCv9An39nW/j?=
 =?iso-8859-1?Q?+Cf2R2D81iocFCCB235XUHFJqr5L5pPmIErFhZWeRxgehJcrvT5miExQ9U?=
 =?iso-8859-1?Q?YnQRB1jBrApeZP/egmmYZlcG+T+DdZmYxhOK9ZFWwj/Cv2kEB241yhONqu?=
 =?iso-8859-1?Q?ybEat+g11oGqDLct5V4zK+3S+jCKmYGACrmPy7rHv2DL3w70Ld0doYDdxJ?=
 =?iso-8859-1?Q?EJ69bgX67TZuO73XrTZyubN1KJL5iNGAnaA9ruvPGa9QFn8gx9+HgQW0Kg?=
 =?iso-8859-1?Q?hGytPgyOmgLc0o80cqK8v7ciRFQCtdju/gvdsDpDSAmg+tu804e7672uYX?=
 =?iso-8859-1?Q?te/qJFBGNzC6TiyXn1xdTxZbME3Ahzg6QiKm+5sbEi4Ynj7+nYizSQQW2+?=
 =?iso-8859-1?Q?RkHHfeyNww96QHs/ZykuqVONgKjiKQsmPjSVxCGfoRXt+Vx7qoPv28JDKm?=
 =?iso-8859-1?Q?JUse0JF/NMwsp6vgLh7ib81Y28YYKn5tIly50qXjo10SWv5wJnhmHeh6I5?=
 =?iso-8859-1?Q?UjPKIfoHAJNo0z+c+zmxPfQTEMlExg1mGDYhqNwAe/uIAPRrYtwBljdyAC?=
 =?iso-8859-1?Q?kQwMZ8lSYy3GKGNgMIPWlPE5d/ENkBEsMk?=
MIME-Version: 1.0
X-OriginatorOrg: mtmail.mtsu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR02MB9266.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cd58fc-bb2b-4a04-3b9e-08dd340c86ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 19:57:36.4453
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 762ebf40-80b2-40ba-86fe-6dd409acb499
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sCp/6J0P1YMPpldZ2saFcfRJ+WFJ3vtUfAY7yUM3iuVqpM+yyralrt3xLd/7lH9JpnCLsTqoZvJtw2pwN7/sug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR02MB10737
Message-ID-Hash: XKTM2P56K2FKQSKBR4HB473JQXPZCONC
X-Message-ID-Hash: XKTM2P56K2FKQSKBR4HB473JQXPZCONC
X-MailFrom: nt4t@mtmail.mtsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Confirmation Regarding Windows Version 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5EFVKSLTWOBPQFEFON6YLMJY6LI7Q2OV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0753814310202124534=="

--===============0753814310202124534==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2IA0PR02MB9266namp_"

--_000_IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2IA0PR02MB9266namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have started with the software setup part of N210 USRP. I am using Window=
s 11 now and in the installment guide I saw that it only fully supported wi=
ndows 7,8,8.1 and 10. So, can I work with Windows 11? Also what would be th=
e most convenient option to work with? Windows or Linux?

Thank You.

Best Regards,
Namira Tahsin

--_000_IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2IA0PR02MB9266namp_
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
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I have started with the software setup part of N210 USRP. I am using Window=
s 11 now and in the installment guide I saw that it only fully supported wi=
ndows 7,8,8.1 and 10. So, can I work with Windows 11? Also what would be th=
e most convenient option to work
 with? Windows or Linux?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thank You.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Best Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Namira Tahsin</div>
</body>
</html>

--_000_IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2IA0PR02MB9266namp_--

--===============0753814310202124534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0753814310202124534==--
