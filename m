Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C083860571
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 23:09:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5BA33850C3
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 17:09:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708639769; bh=vDYUXKIocHCYHP/MKopQi7ZzIoob+EFTHye+T291Auc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=qKfaDbaRMb+HBZer1ttLz9UcnWMb6LqH+i1W+D86Em1CebZglOHcJxPhKVkzJEHFW
	 fNvkcYrhoLBDGoLRwx1l7mL6ccl/BR6OnaHXPBP3NYbKaqretafe01ykq84htFtFvh
	 W9u2JTm5c+QHf0Rzjcwc6XptHOpFjbYrnbVUYp3muCVkWxaCBtdlx8kDGrDMmuPcxd
	 L9Dp9lm5xS8+5qqPEIvqDcMGT07eWUlIgNPrf+EHYnbq0qqXLf/gMOoWSVKrgzDCcb
	 KP/fDJvtsxFhIoIGsbPoj4Wl5wf4dfcqlwUXhAGNbsc4+wAlgBC2ucucGcJhkgUFdT
	 ISLNafpQ2rEcw==
Received: from mx0f-0020b901.pphosted.com (mx0f-0020b901.pphosted.com [67.231.155.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C845384EBD
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 17:08:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=jpl.nasa.gov header.i=@jpl.nasa.gov header.b="6WiX8QPr";
	dkim=pass (1024-bit key; unprotected) header.d=JPL365PROD.onmicrosoft.com header.i=@JPL365PROD.onmicrosoft.com header.b="OIaJ4gSM";
	dkim-atps=neutral
Received: from pps.filterd (m0196084.ppops.net [127.0.0.1])
	by mx0e-0020b901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 41MLl5fM022798
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 22:08:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jpl.nasa.gov; h=from : to : subject
 : date : message-id : content-type : mime-version; s=InSight1906;
 bh=u2+QZ/Rj1qXB8L8IG0+09mNaCiFgNQFxpGS6E2D9ZJ4=;
 b=6WiX8QPrkvTpx/ZmFCEFPK5sL6GlAv7F58TiKOXqnB7/aQ9SkjMz/YiQvKClllCOMYS+
 wwG+ZBZYfEdZtaqu82PrvYoFoGBPVtlEeBq/WsFigsFhGhjKY/9KIA+/J4e+TmdPZNiT
 D/oFgDVgmPEYdvNlNMVJiRKdiOQ32YIlkDby6sOegD0zBXAjLGZKkh2U6pNcB7S3gSlm
 /F7OuaD+/BXd0YCbG8byOymvnRH7ocB7ppSewt0MzeE+GqKzQ7rKP/Nk+vgIDZCQUthf
 XMXJigjcVmcT8FCHmsRuc/lRoyv5eo0nGU8ZTIgj9m0ZEvUalUDArfpGrcsousmaWXJv Yg==
Received: from mail.jpl.nasa.gov (smtp.jpl.nasa.gov [128.149.137.102])
	by mx0e-0020b901.pphosted.com (PPS) with ESMTPS id 3wamhy985a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 22:08:30 +0000
Received: from ice-ex-mdc02.RES.AD.JPL (ice-ex-mdc02.jpl.nasa.gov [128.149.155.142])
	by smtp.jpl.nasa.gov (Sentrion-MTA-4.5.9/Sentrion-MTA-4.5.9) with ESMTPS id 41MM8TPx024408
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits) verified FAIL)
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 22:08:29 GMT
Received: from ice-ex-sn02.RES.AD.JPL (137.79.100.49) by
 ice-ex-mdc02.RES.AD.JPL (128.149.155.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 14:08:28 -0800
Received: from ice-ex-sn01.RES.AD.JPL (137.79.100.48) by
 ice-ex-sn02.RES.AD.JPL (137.79.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 14:08:28 -0800
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (137.78.153.23)
 by ice-ex-sn01.RES.AD.JPL (137.79.100.48) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 14:08:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcwL2IeJL33AHoPIFMVqbHASEyvPer7Q24Kl8lP+obeRKOKep1S/zIJzR1F8/legDh8C6cdUd/Ezhpu6UJkycp9xg21GrZIxT17mIwyduwsecMSCvDwLcpJC+iB4lC4SJLMkWCB+b7hxdCnEl6lQ9vY5dA6wnfKiQIOjpez8diXyKmLAgVQ0Fx9L9leRPFXCzbzs8VWnIbK37B7xHczHb/gR/oKPbmC0yQdqbWvaMB9wc3pXBI4wLxVrkzdpGDHf6DYNOmVvKeqq7KHeom8MjO1MjyozO3EZbDNSTnbxJLCZJoUw7xhTGMlSRismZIqhJ/ifykIT5Exyudcz1oKgLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u2+QZ/Rj1qXB8L8IG0+09mNaCiFgNQFxpGS6E2D9ZJ4=;
 b=nT15ly9Bkbs9gG8nt3BAx54TZNNDaKA5v4YFun9dXPzqPPCTeiJC4blyV6g6pjRlNd9fQRzzK4H2BiAkWG+hoyAIvQz3sZt3dKb9RO0Iq0Fv5CEfB/bj2wia+qxT/hC2npPpUOH1jAIWxyxoRTxhqDGeXU4KN4j4tdP1lrBDLQ5JDjLcNTobTqzxAarbsTOsTeyWVad50KTsW7kkTUo0jQnSLXKOcEeNFeeS2GB9KKIM+UwLszi+mP2inUjdNjBkDgSrVScPK9z5ryrfNPii7n1rKI8HbTbJR1FuRSnZlZzOA+wdxfOVv6OAhd8e75n11/02wUFE/TCGo7MT1sQPPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jpl.nasa.gov; dmarc=pass action=none header.from=jpl.nasa.gov;
 dkim=pass header.d=jpl.nasa.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=JPL365PROD.onmicrosoft.com; s=selector1-JPL365PROD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2+QZ/Rj1qXB8L8IG0+09mNaCiFgNQFxpGS6E2D9ZJ4=;
 b=OIaJ4gSMPRtyCjMqb+01YsFLk4wDvCVOsIsDBfiv+HIwzPNMfdjy60pCacctZF+7lYFalyG0XMBSRpUbeqDEKL3GHoqhoJTqcVJW/Cq6aooOfCvAfeMsH+hix6A+gr1mFiUppLoUCY25Wpqq21bEz0I/qxamxIoA3k7vjqrcqqQ=
Received: from SA1PR09MB9275.namprd09.prod.outlook.com (2603:10b6:806:282::21)
 by SJ0PR09MB10469.namprd09.prod.outlook.com (2603:10b6:a03:50f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.24; Thu, 22 Feb
 2024 22:08:25 +0000
Received: from SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::7a:7fef:a423:496a]) by SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::7a:7fef:a423:496a%4]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 22:08:25 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Multiple Streamers
Thread-Index: AQHaZdpW2Xkk3x2LfU6gYKMT5CfG8A==
Date: Thu, 22 Feb 2024 22:08:21 +0000
Message-ID: <SA1PR09MB9275DEEA7594782B53D7CEC392562@SA1PR09MB9275.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9275:EE_|SJ0PR09MB10469:EE_
x-ms-office365-filtering-correlation-id: bfb9d55e-bedd-4f02-e5d3-08dc33f2ca9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 02WDb1xep9QgMBJCxhuxuNvZzUl8RXTAtVwVW8Zi6cp6XABOBv4MXEyGFdLxQd+LyvkuEqoOdLIlUMmgFRuFlAue+kBKi7KvTSRuQA/W6pp9mxW+kHCj7fn6+iI3m5Bym4rT7LA6fSF7EpGhSgmcp22RtVMh/KktRNJ8ZfJIOz+WnZ0BY7Uq/u1+67DWeLUC9zaOw/zhUVRFDOfI7SfTlT35EixOndh8VvQKUiKNWTJLore6OrzjPhnPqHYtXEiLvHiNUtkOouKJ5pwhoHCoctJ7nTuCMd7HnBTcrG2v4VGYZtgpIDDnH4hzivI5nNoDs35nz8oAOyH6s4CsqXbr0vVNaAus1yXVlQxsBmkMWT+A3Qe/2pBcwY6rpncSMa3iT4s94Hb+J5rI/Ot8QyepcwTQMDP93SjF4nUE3793+AHbkUZ/FekHbPpOz1zkmUTF3n/r0dtrJLK37Nd95BANPMuf91S1aG6QuymnFMA2bDl2SByBPJc+E7U9uhNiPTpx+8xHqJOunv+wADzJ9YrK3flxjdiD04yOCVA3CmAJ+9lvlkd9Wf7YioaSOM64G5OEMxiU3OYcrrdsgsPOuu8CcE4WlOKegE5Jh4kj7ADDgYI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9275.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(230273577357003)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?JDbh8hvWX6ZXZF+tD1Bzs3ykjlO5cdC8FMGFQjbc7/697XS0fLviBrIj?=
 =?Windows-1252?Q?Kr03Fp/V2bG4WtT/k2mvE60xTTEH+W1vR+C+4zHkQ8X5YkGUlAB45XUI?=
 =?Windows-1252?Q?8Dos+cNkRp8CcQt/ysPu0bDdMKnCTrZV+0AIKyYUkIzZnh5XKGc+Sb8T?=
 =?Windows-1252?Q?0sCelB/nxFPsa+g7JmtQogivUbjUUzSGsPoM1aAFq7x5IQ4gpxniDDTd?=
 =?Windows-1252?Q?4VKiS9KjoV/4qIeBAoYxRGb5zxxaqHwRYf6/VuwtZPxOS1AgBcbLW82G?=
 =?Windows-1252?Q?LdKQPQyt2tkum4wpJFKayaVHtkk3CfrqJT2ipfieoYYb32MF5rCyPULx?=
 =?Windows-1252?Q?dwmLnOCeHU7g8PCWerqE3nqTOdTAbmXJTZImFJasgdleFw3lq94tzw3R?=
 =?Windows-1252?Q?vQhE25oloczVpe48uO2FYUVeRLvsK3ERKfb2mCyfXoZVWhJPq5g+MySU?=
 =?Windows-1252?Q?3zx8awUTGr+R4MzKwN9p6cK9jcTAuoCcD+JMuPLxzW3rgOn75SI+kM0N?=
 =?Windows-1252?Q?cDjPbCt4kq6EEiVeRjcSZeizziliCAlYZmzs29sy9R9P3nj2dKowZZH0?=
 =?Windows-1252?Q?zMZHfaHmi4sVrwzAEhvJrLoWiCn5g1fTwzJrBvrhefCVf+IfIx9EMlfJ?=
 =?Windows-1252?Q?mM7NttuL2lkyPBBS0YPilDAIyexy2X0kh8hvmPR+MbIIHhTkU74frRjH?=
 =?Windows-1252?Q?plqNh2abeMRRFOWmjidVx9g3DHh6ykTMytbFsWbwXUETBtdoHIfCII/M?=
 =?Windows-1252?Q?rrc4MqyecVQwIUXF/XySMMhfYRRQDbfFpFe3iWHf9cjR2o0tPNrOWcfZ?=
 =?Windows-1252?Q?X6zg6JNZAvGYispCAdreR+D3bRqY39I9ez60j+KX4q7cx1TYH4Oy7wn8?=
 =?Windows-1252?Q?jgnKlxeLDMhtzxOItlhqZsMGduxAn9xvRqq9vnXXNhbFUfKWAHHpSiul?=
 =?Windows-1252?Q?tkzwDUCYXOx3ZYuhcW6hPqrrpl/MaNq0y1BnaZMiuVPLEGhIClPdSpT6?=
 =?Windows-1252?Q?UfvIt/FZZ6Px5cM+pj7yKVDheTCuKXivIHIrJeEz+jP5FE2W3UHxDoCh?=
 =?Windows-1252?Q?kCzeqdXmeWbJvElCmXXIJaEnDMrJ6zMAkmla/FYKqrQJuXlj0Xgjtq1O?=
 =?Windows-1252?Q?I/Mwq2LJjxxibYpuo2x1ZARxtOYnS0OeR4rpnrzP+I7R45olczuO+z0b?=
 =?Windows-1252?Q?i9lA9LnAHyGD/YH7BSqmBUxjgKVwtYDAHw6k4ECME+0CZjgo3ImBW3CL?=
 =?Windows-1252?Q?h2icm8t7KbGrBb2rQ8PeGilx9wNZHL9lZTjULUfsy+riUQRayzM4ncDK?=
 =?Windows-1252?Q?oT+alFne5/HZF9MBiw4Q2iV8UXZ3k9UJpdv9gO5ZV8hVSj4+IaN8OwwI?=
 =?Windows-1252?Q?1Q/lgwbJFshteySy3Yoq175UdyEd4vCuLpiL4K24Ir97X+3mqphpqREq?=
 =?Windows-1252?Q?ce6kuIyBFb6u2MrpUZhZGObuiT9Wm+bB5QMjvk2GNIOhrR//zj11U3Sv?=
 =?Windows-1252?Q?JiZLS2vN8aUdQzIOmjakJihVz3cZrmI5izmulA+OpuXhHEcSsEwogs+D?=
 =?Windows-1252?Q?VcWiW7aJM0rv2bTSLxlWQ7PI5m/jqj4f5lt6ssfTbyRe10WD0w+LTVE7?=
 =?Windows-1252?Q?05QMtVJqpaY1Ne4VCS+TsDPfAa9+4KQcCnapltYGomKrSLlNIi+3jbzl?=
 =?Windows-1252?Q?buxIuJZ7uDKKOpvsQAsfWZRZQmmhLWAc6vztZkri33bs5CKekz2gsg?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9275.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfb9d55e-bedd-4f02-e5d3-08dc33f2ca9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 22:08:25.3964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 545921e0-10ef-4398-8713-9832ac563dad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB10469
X-OriginatorOrg: jpl.nasa.gov
X-Source-IP: ice-ex-mdc02.jpl.nasa.gov [128.149.155.142]
X-Source-Sender: zachary.s.rohde@jpl.nasa.gov
X-AUTH: Authorized
X-Proofpoint-GUID: WuQ0iP8X8AKSU4BD76ucjAFXLAN12WqV
X-Proofpoint-ORIG-GUID: WuQ0iP8X8AKSU4BD76ucjAFXLAN12WqV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-22_15,2024-02-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 adultscore=0 mlxlogscore=999
 impostorscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311290000 definitions=main-2402220171
Message-ID-Hash: OIZKCZNIFMFLEKQHH62UWHKHSRRNUCFB
X-Message-ID-Hash: OIZKCZNIFMFLEKQHH62UWHKHSRRNUCFB
X-MailFrom: zachary.s.rohde@jpl.nasa.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Multiple Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OIZKCZNIFMFLEKQHH62UWHKHSRRNUCFB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rohde, Zach (US 333G) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Content-Type: multipart/mixed; boundary="===============5332512360616684854=="

--===============5332512360616684854==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB9275DEEA7594782B53D7CEC392562SA1PR09MB9275namp_"

--_000_SA1PR09MB9275DEEA7594782B53D7CEC392562SA1PR09MB9275namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

I have been running tests with multiple TX channels so that each channel ca=
n run at a different sample rate, using multiple calls to get_tx_stream() t=
o generate a unique streamer for each thread. This has been successful usin=
g the X440 and results in no errors or warnings.

My question is the documentation<https://files.ettus.com/manual/classuhd_1_=
1device.html#a66d1bf289dd03a03df3860f3eee578c0> states: =93Note: There can =
always only be one streamer. When calling get_tx_stream() a second time, th=
e first streamer must be destroyed beforehand.=94 Is this true? Why am I no=
t seeing any undefined behavior or errors/warnings?

In the documentation for multi_usrp_rfnoc<https://github.com/EttusResearch/=
uhd/blob/master/host/lib/usrp/multi_usrp_rfnoc.cpp#L78>, I noticed a docume=
ntation stub that mentioned, =93If there is only ever one Tx streamer, this=
 will work as expected. For multiple streamers, only the last streamer's as=
ync messages will make it through.=94 So, it seems the documentation is sor=
t of contradicting one another on whether multiple TX streams are allowed.

Thanks,
Zach

--_000_SA1PR09MB9275DEEA7594782B53D7CEC392562SA1PR09MB9275namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-0=
0AA00C14882" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" x=
mlns=3D"http://www.w3.org/TR/REC-html40">
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have been running tests with multiple TX channels =
so that each channel can run at a different sample rate, using multiple cal=
ls to get_tx_stream() to generate a unique streamer for each thread. This h=
as been successful using the X440
 and results in no errors or warnings.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My question is <a href=3D"https://files.ettus.com/ma=
nual/classuhd_1_1device.html#a66d1bf289dd03a03df3860f3eee578c0">
the documentation</a> states: =93Note: There can always only be one streame=
r. When calling get_tx_stream() a second time, the first streamer must be d=
estroyed beforehand.=94 Is this true? Why am I not seeing any undefined beh=
avior or errors/warnings?</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the <a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/host/lib/usrp/multi_usrp_rfnoc.cpp#L78">
documentation for multi_usrp_rfnoc</a>, I noticed a documentation stub that=
 mentioned, =93If there is only ever one Tx streamer, this will work as exp=
ected. For multiple streamers, only the last streamer's async messages will=
 make it through.=94 So, it seems the
 documentation is sort of contradicting one another on whether multiple TX =
streams are allowed.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoNormal">Zach</p>
</div>
</body>
</html>

--_000_SA1PR09MB9275DEEA7594782B53D7CEC392562SA1PR09MB9275namp_--

--===============5332512360616684854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5332512360616684854==--
