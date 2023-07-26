Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D5A7640BC
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 22:48:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95E47384A9D
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 16:48:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690404528; bh=HthY9YS0B2XRwxB6BwyDwTH3xKfU5ETapLnj3KARwYQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FeBvud0IAeXAW1r1/LfxTPVenr0jqNIY7sKkK60k4lolR/rJlpxYuc4Q/rF5FCoC6
	 6fHbo9kZScSsKO4Jf1oUQiTnOLx7JODikVsOszjXh6TEqtmKfuTmszlCaj5l/kTH1z
	 XG6iwNz+M4CVeB314diN+wjNTNYg9Mv2KMxMW9flUGVNFZgEqlkEh2Wa9jSGa549od
	 xSWQj7PHGNBJ4wcnSeWOAjkJSFco19MT6xzmPY6bu5xQLcqsOxhtaUC8sNvwXAbqxR
	 mu4ejlivadJqHaVrB6bpusOS+ZIND3tYfTlmdBLJjPmNutjoRi7RxY1uiurDMNquLI
	 XYPmHmz7StBGw==
Received: from mx0f-00007b01.gpphosted.com (mx0f-00007b01.gpphosted.com [67.231.155.183])
	by mm2.emwd.com (Postfix) with ESMTPS id A08293849E4
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 16:48:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="naR3+9NC";
	dkim-atps=neutral
Received: from pps.filterd (m0326552.ppops.net [127.0.0.1])
	by mx0f-00007b01.gpphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36QIHrIg006533
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 20:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from : to : subject :
 date : message-id : content-type : mime-version; s=pps1;
 bh=bq6YXzZJeACg03S47kmHGTelUF7dhGMNwYUzbRoXp+Y=;
 b=naR3+9NCcWaLjBjFIRJv+qMpZBRJgukbXb3tH4k4vm+ZM3x3sfExCgRgIBM29pZoMC3I
 98wjxzrRFCtfU09koBq6+PEBWeIdOe3kl44y4nWU7bImkWe0HuENW6YT6py6P2zpGzeT
 IL31fLYxwYCTNtY40S8co4+ByQk6maWkjDgj3jkuUm5kGphaeTuccpHhA3+8EFQu6vx1
 pqzMUIsmtTSCtPESyCHBE/M5EkJni0p1CRZLHTpQPHJSSGLVFq8WI6GN5rwHigkqbCny
 a/YdQ6w9sFrv5zr0a+HHLX843SnQv0X2tGI6a+vErnSzY1BLO/eiQP3CM8nDMoiV4xh2 Mg==
Received: from smtpyrhmv1.mitre.org ([192.52.194.175])
	by mx0f-00007b01.gpphosted.com (PPS) with ESMTPS id 3s33d644xp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 20:48:00 +0000
Received: from smtpxrhmv1.mitre.org (smtpxrhmv1.mitre.org [192.52.194.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by smtpyrhmv1.mitre.org (Postfix) with ESMTPS id 94590413DC9
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 16:48:00 -0400 (EDT)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2107.outbound.protection.outlook.com [104.47.65.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpxrhmv1.mitre.org (Postfix) with ESMTPS id 6410F413DC7
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 16:48:00 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ePpNQqVbGdEKutWIU3dnMpwT/h/xA7FI29QbVIrscMdVsU06GH52bQ1Eu/Gtw3PKuy1zbgeisMDgR6K2cvnGkVDnJqB02SnSodfVNM3gtaZNlixr+/G3dqfBS9MRmcFEkHDx7e8zj3naZm4p76g3e8MDYiomSgYv1nJegomaWknBto+wt+1/hU0UvhNG51CUiEJmwtuxUAUpx41zmuSK2hpxM6BVaXAdW1NCg3w9lvs9CH1w3eBvMz0ydjnl9iraLFmEurUTU5bs6Q1n5w5i/JXlHrqfIasE0znap1//7HtY8D96aGB1WjqtLDrFeDh4iU5dD9xS+yhkznkEzwmb+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bq6YXzZJeACg03S47kmHGTelUF7dhGMNwYUzbRoXp+Y=;
 b=mQOGklkhlSB3rJgfifhqXwauJ4j+Md42bfZ8WcAycaPLL7d0l/Jv7jxobbp5IRWFnoRomLUOOL4BK3feUcaLvO8VRkW7F+SMMOZGgsHVxS3CE6mjukeTGfWoGbYH1IJ1/Ze3a4pVEs+IC6JUEr+UN2xF8aZ7HPPJXc+FZHQatMKRFH9GYWYMWmSRkUsCvEUorsjDEjkPfGMkP3VL58mzgh9YDQuOY1aiNX2MsBHEMN7kdhlKkdCZVHNTdCVejthJwj2XcRJe3i4slz5ojIR8h48gtWKpM5hk0JAJao+arqnJ0qn1Aol04jT6HT+k5Qx+u3hQRFp0+I2QWD+PCy4SrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from PH0PR09MB7433.namprd09.prod.outlook.com (2603:10b6:510:6a::13)
 by SJ0PR09MB9858.namprd09.prod.outlook.com (2603:10b6:a03:461::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Wed, 26 Jul
 2023 20:47:59 +0000
Received: from PH0PR09MB7433.namprd09.prod.outlook.com
 ([fe80::98d7:7f9c:e53c:3ff7]) by PH0PR09MB7433.namprd09.prod.outlook.com
 ([fe80::98d7:7f9c:e53c:3ff7%4]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 20:47:58 +0000
From: David J Li <dli@mitre.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 correct choice for coherent 4 channel RX w/ 1 TX ?
Thread-Index: AdnAAl3ZKZMLza6JRCOmj/ku85fM6g==
Date: Wed, 26 Jul 2023 20:47:58 +0000
Message-ID: 
 <PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR09MB7433:EE_|SJ0PR09MB9858:EE_
x-ms-office365-filtering-correlation-id: 38a28875-f24a-4512-3e66-08db8e19988b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 zysqskE71VOwtkYiUc8o0NpDDAo17tr9slC90WrKbcpbhgoAr1jH2GYmPL1secagc0qmz418tp7dTESbwdbijYmiHEfPbmbIrCwiPahO9N5NYdsZH1iQc4VHGQYEpmAFeZhhrSYw/Q4Inb8WB6mx2Vw/f0vJFosBR87BDDuh2yl2GKQxbHMjnF1XhZS9l4xyE12KJ7zAenbjBkX5A2sgekyAnyTvHxwc1qGfMt9288hIMJhs/D1OT7bnnLBX6bWRYDbMHFIptW0s99QYCVqVmHilar4QFkmeXwGWa1A2/jMlb4ZfTVRBDaiXpKFv98mOR5Vtl8t5m+pDjXYUE6CkWr9kAQFtGDsegnHYuL1DvndwouDNvQDnY67hq2EiFfgYiMpK02FjL8L2Myi45MBojCO/IPk1fM5poI3B5FyVY6wPV6pcxV093ZLp/1pcLJw5N8Bqx+apqGSQdfsNmQJAzeaX/suiLA8NJXJlOKsoty4kmtx60uti57xHtHFPQIBjnpidh+0zHYS49wUs7MO8Gl59qjUOBxgUtqaj3XyLqunyQAgo8O8IAv9aLNJTl78V9rFPqwxN+A4BO55tCvQh3GibFmNSqly67J0N2mmDQ3uzZhN8RkTAIMLqliLvz6sm
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR09MB7433.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(451199021)(6506007)(26005)(8936002)(8676002)(33656002)(122000001)(66446008)(64756008)(6916009)(66556008)(498600001)(66946007)(76116006)(66476007)(9686003)(55016003)(71200400001)(7696005)(38100700002)(2906002)(38070700005)(86362001)(52536014)(186003)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?tEHcGy41ZKMmQHp7DV+A5LdRs7Nks8PhDoDb2osE2Kxu8wvgfTv+fiuoZAKU?=
 =?us-ascii?Q?rhNG7Y7Ir+mhtWO1waj7bDFL7SU5iCUxVSYJUEkuqu+xFkOxiplFZu2NnHir?=
 =?us-ascii?Q?3RDF676yqCmDXT52EzzwGjqTttFdjUu6bW2ImgcJbwGkq9qo61GvJrnB6rEr?=
 =?us-ascii?Q?Adzxf4unkgHGA4EN4w7yOTEGz8c3fNHYf7Ehg4njM9b7gpOUiiKVGrY5yIC8?=
 =?us-ascii?Q?kaLpzXeRf8FMeSQWfTsO5KvlmV0Y27ZnzgjX5BuQCgmqTI3rA3APCGf6NVAL?=
 =?us-ascii?Q?6n35RjA5fD5Mplc3fBo/8vbMd4ZcYD+085+5E8kwZpOOP23UddxEbT+PP7/L?=
 =?us-ascii?Q?elH5L+MqdyhTv/1JoWM97/Z0kgJelH5DqfMxEV9Y2SrZc4hZZCUrTG93bOwl?=
 =?us-ascii?Q?xEk9lSCrokE/8vz/9/tGfgxd1j1gw7ad2byYsGSJ5BtilKLMVsP1nrSvk1fx?=
 =?us-ascii?Q?limzNA+t+QxMY4U+kcGKgbURExlhsJYMVsbpBOgNo6ar29vcqgd9us9j7m3q?=
 =?us-ascii?Q?cWnHsWxdVOs9FnndKaBA/rXCLtGXeDMW/4iRD8H+RXBQ6UbE8fl1jJHCC5Xk?=
 =?us-ascii?Q?13LaKzMv0uwhceu11HZlVFfm/CjXmwHVu2s0+edTxnCt052LubFxqT7RhJj5?=
 =?us-ascii?Q?SgX7w2WOkBraVAj1eJ1N5+vMY8XcVnauDud6nrKWF8ypSZpoxvnaNjdeitJn?=
 =?us-ascii?Q?J7PJqjFzORH30Os5cxg+ukWmmx7hp9Qf080tXoSd8s6eldAM/U8twkcnStf1?=
 =?us-ascii?Q?8zgU0A6vl7YstBSTqfC0xe3WwvkAvA3oePfzO1I0QnRgReyLxtP3VJH59AhX?=
 =?us-ascii?Q?wd4k/QJjp+bgZQ324OcINCPbd9g7N0BCv/sPRqmM/ibWYJIu/DSZO2goCJVI?=
 =?us-ascii?Q?g4M98s8d2O67tCmm7neKdkQ6piJ08nyjiWhLKvKZe4f2G+BrAaExnFlRhBcX?=
 =?us-ascii?Q?6SETYhTvz3qcoPG0hU1j9EolzsjJ6PUHUwLf2Ya4UW4KPy3sbFSRsdt9/slO?=
 =?us-ascii?Q?1uoFIwASndhnTwY0gPsbUJ0QXh16O3lA5OktGm4TFDgtr7es8CtIuQPWOba6?=
 =?us-ascii?Q?JmGkuXn7se2Rhmyt452e5XtNEzJ4RuRhzhA4syckdGOURBqEdW39E08LNiU0?=
 =?us-ascii?Q?LnU9w2igSDgRXyL6LgUDAo773uGGtJ1ibYCiWv0rldEM7ui7erGlAr+/OMKg?=
 =?us-ascii?Q?BYhmCmuTizXlANCTnzNsjdiKqRmzUOUEC3Hp8raSYBvaZjw8uSrOeg3iCYdl?=
 =?us-ascii?Q?wkaIcsB8435ir0uginNebf+7T8oi5fbJpYlyv+tPxccJN7ptPbLBVQc3wlpQ?=
 =?us-ascii?Q?xsiX7zbEH/ZsKQnq1i8LlyiUepXPWGCr/h9aNAwZw9OS+xHaZXE7pjI6kRfA?=
 =?us-ascii?Q?F6D9v97kAnD/bADDiFT/mzQbYoWi/lser6pIH+Ay2YNhMYJKOG3AW5Utr6G4?=
 =?us-ascii?Q?VudBlK2OT/fBOYzGdJlmwgQeGv8eGzMjzh11JCULkzpFBmzStSZT4pJFve28?=
 =?us-ascii?Q?eLSc6pleqO+he4OLN8PEX8+SxqErG6aKlvHp2QJIJFxPvp2v8W7F7iziJ5/d?=
 =?us-ascii?Q?EUxKn7G+J32DGHklhnM=3D?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	qjMKwOuf+B7UK8yXDSao5l4A1vtZXkOhKp7V+8yE56pI2hgwo8QgXDKouHrAhLclzRGao+8A9bx5qX2jv3ox7YUb8jXjSfDwipP3qKtKM9WvvR/ufFKUastPfbLncsMPC6ENbZ2cPJvioua7iSVKjHyIzL7MFNSjKnBBg7oyMlfYkX7aMaOi/73+wSgPoohWWDXDKMXVeAtbQsTwa7s1EM+sH4i05YI6rQGg/QUC4+WK8u5InYtPNtUCWInUqCOdA0vF8hddChMJMssaFnbwtEwkKXzzoa+4xfprtvcG1ZtRVP32N0cH6OhQFNgUq9EmNQo/nIFYDYF7YB6p4X6sVqB5wzpYb/uTBpKrikURZWi7s6nCRQFLwTk6bBiSwsvSNt708GD+YQRCMsaVp9hOQ6g9It9n32xQSTSm7a40f9e3F3Vn2QQ94ZYL+epPtvGOE/r7Zxj8hW+q6El0yz2PTJ/X53kkQ+XDCWZCXRTOIWuvAWIEpB/hwWGLDROotm8UJ1R+wAz80yxhMsVnFL4+6Up6S1cEg3CkyhpmzODZ5zeRHArapPRprMk1v31igwV62bAUDkDxi5dBv31r6DHDNQeKF0i7h9lIHncTVaaiWKqa55sY5TbW6D5XgFpEGYjJUgwb6887AKiBZ6Omh8RHrjHapSsHRAjEqD42cp3p7e+anLCQFJDseckdzdnU1ESDmtzfHPHqQkLhotY2QreF2UJtmOUsSCJh2Hp+UyTWErUNjLaN9VT1XknbpS4Vyz67LRdoyxgovAr324jBsUYnqZ7liG5cM1U+MTSWXZLEqnU=
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR09MB7433.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38a28875-f24a-4512-3e66-08db8e19988b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 20:47:58.7079
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB9858
X-Proofpoint-Virus-Version: vendor=nai engine=6500 definitions=10783 signatures=596816
Message-ID-Hash: UZDVR4DQRZF7K57LT4CVQNWVAI6GAQHB
X-Message-ID-Hash: UZDVR4DQRZF7K57LT4CVQNWVAI6GAQHB
X-MailFrom: prvs=2571c9e455=dli@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 correct choice for coherent 4 channel RX w/ 1 TX ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BSG3TT5P7HTZATKLPUOQSSLCCEEG3BD7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6849728436155728523=="

--===============6849728436155728523==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR09MB7433546CE3D5D14F18D7005DA800APH0PR09MB7433namp_"

--_000_PH0PR09MB7433546CE3D5D14F18D7005DA800APH0PR09MB7433namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm currently using a USRP N310 for an application that requires coherent 4=
 channel RX w/ the ability to TX on 1 channel as well. In the past, I've us=
ed USRP X310s to do 4 channel coherent RX and found the calibration process=
 for that to be relatively straight forward using the TwinRX cards. It was =
simply phase aligned input signals into each RX port and computing the cons=
tant phase offset between channels and just adjusting for that factor in my=
 processing digitally.

My understanding is that this is more complicated w/ the N310. The procedur=
e as I understand is that during initialization the N310 external LO needs =
to be set at 5 GHz. After initialization, the external LO can be set to 2 t=
imes the desired center freq, but that there is still a 180 deg ambiguity b=
etween channels which would need to be figured out via calibration w/ a pha=
se aligned input signal. Is this correct? Is there some way to shorten or o=
ptimize this procedure?

Second question would be if the process is simpler on different USRP models=
 akin to how the X310 w/ TwinRX cards work where you just need to compute s=
ome calibration values once at powerup and afterwards those values hold pre=
tty true for a long time as long as your gain/center freq don't change. Hav=
ing the requirement of being able to TX on at least 1 channel prevents me f=
rom using an X310 w/ TwinRX cards.

Thanks,
-David

--_000_PH0PR09MB7433546CE3D5D14F18D7005DA800APH0PR09MB7433namp_
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m currently using a USRP N310 for an applica=
tion that requires coherent 4 channel RX w/ the ability to TX on 1 channel =
as well. In the past, I&#8217;ve used USRP X310s to do 4 channel coherent R=
X and found the calibration process for that to
 be relatively straight forward using the TwinRX cards. It was simply phase=
 aligned input signals into each RX port and computing the constant phase o=
ffset between channels and just adjusting for that factor in my processing =
digitally.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My understanding is that this is more complicated w/=
 the N310. The procedure as I understand is that during initialization the =
N310 external LO needs to be set at 5 GHz. After initialization, the extern=
al LO can be set to 2 times the desired
 center freq, but that there is still a 180 deg ambiguity between channels =
which would need to be figured out via calibration w/ a phase aligned input=
 signal. Is this correct? Is there some way to shorten or optimize this pro=
cedure?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Second question would be if the process is simpler o=
n different USRP models akin to how the X310 w/ TwinRX cards work where you=
 just need to compute some calibration values once at powerup and afterward=
s those values hold pretty true for
 a long time as long as your gain/center freq don&#8217;t change. Having th=
e requirement of being able to TX on at least 1 channel prevents me from us=
ing an X310 w/ TwinRX cards.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">-David<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH0PR09MB7433546CE3D5D14F18D7005DA800APH0PR09MB7433namp_--

--===============6849728436155728523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6849728436155728523==--
