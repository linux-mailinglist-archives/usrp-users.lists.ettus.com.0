Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B164916F9E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 19:53:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD5C03854D4
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 13:53:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719337990; bh=DFLABlYGYqdFN2iD2dMy/hz/vout6JsimyMpzhLkyR0=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=G57FvGq+AKcgWaj+9zh7cUWEMCkBY2IEnYqVntenB00LKtSNHPI/esIDbL/BPoNa+
	 8XNy25Agid4y2RVQ+By85lwuBL9Vrv62IGaztM6LZsaphqj1Wae2HYYNFkJSWh2SS9
	 aynWLX8Su4CH0TGs8l/TL9lyr1aoGlpvBtOyyrX/tobNG7PU0eJG+XZQNZ+ArCO2/x
	 yNeNLGG3Cv83Rh4H0x7NcMwxK42e3O2k2F9XoYoFEzSYNJYZ91GnA/OcDa9SumV9c2
	 cV7SX0Hy0w6+C3OLz6jeKmK/yJM/5pdwImDctgRc8+7m3+IgsAzSegB07kMqja+BYE
	 9rVr1Lb8HuPuQ==
Received: from mx0f-0020b901.pphosted.com (mx0f-0020b901.pphosted.com [67.231.155.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 81D0938545D
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 13:52:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=jpl.nasa.gov header.i=@jpl.nasa.gov header.b="kcvAwqur";
	dkim=pass (1024-bit key; unprotected) header.d=JPL365PROD.onmicrosoft.com header.i=@JPL365PROD.onmicrosoft.com header.b="qowBcyNM";
	dkim-atps=neutral
Received: from pps.filterd (m0196084.ppops.net [127.0.0.1])
	by mx0e-0020b901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 45P9pLmr000435
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 17:52:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jpl.nasa.gov; h=from : to : subject
 : date : message-id : content-type : mime-version; s=InSight1906;
 bh=RPprBJo5PVECWHrZ5zSYriBaBloJ9I4cE7p7RthL5gk=;
 b=kcvAwqur8FZrqWNKnwcCXfB4KHmysnEdNIaH1giWn8pZ0NOVbVAyDNOKJr/M2icWuUqu
 YTBMMSMInHTvBQsA1i+vghfwisFUm1UYeUD3m3M1MKtvN8Cgw1r5SqbcxkXWiCeMkakk
 97zIN5RkmeZTeke9k7/etiAjKMlJ8Jj15yomzbi9B47dVqhflVvvbuAg9xuBx2FQb9CH
 UOG/5V0JHi97wd/4abUYxe/lhhtnXiBVcSlpaHkwN3wxE0Pw8m0j9t6e8pdTgneldQQI
 OAys/qbqy14aanRzM2LO2vgRYQtwhKHi59uI+ES9gQws1i1xGQgZDNNdTtBYAVjHNVGM IQ==
Received: from mail.jpl.nasa.gov (smtp.jpl.nasa.gov [128.149.137.102])
	by mx0e-0020b901.pphosted.com (PPS) with ESMTPS id 3ywpc4h2eg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 17:52:30 +0000
Received: from ice-ex-mdc02.RES.AD.JPL (ice-ex-mdc02.jpl.nasa.gov [128.149.155.142])
	by smtp.jpl.nasa.gov (Sentrion-MTA-4.5.9/Sentrion-MTA-4.5.9) with ESMTPS id 45PHqTE5104442
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits) verified FAIL)
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 17:52:29 GMT
Received: from ice-ex-sn01.RES.AD.JPL (137.79.100.48) by
 ice-ex-mdc02.RES.AD.JPL (128.149.155.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 10:52:29 -0700
Received: from ice-ex-sn02.RES.AD.JPL (137.79.100.49) by
 ice-ex-sn01.RES.AD.JPL (137.79.100.48) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 10:52:28 -0700
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (137.78.153.23)
 by ice-ex-sn02.RES.AD.JPL (137.79.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 10:52:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGqrSGk9UJCKw0XLtxR6I6P2evtOn21/8RNpYphfGuDaSO6VJB3CbZ+u2dQJr5ypB0IZqwgGcLa+kbegHKjNTHvDH7se40yTe9yjnvrDc06yuP6w8WbtUZUy2gmmKJU6r4iXL97prGVdZjaqeWKLxgJehIbn+3EF2CzsXa95tMzq5iqUpFFnYH0VZDvsW//yLycIjqVYMXpmEfiCXh9HXs40I+3jqybJMY7/XAZhi2x6FajAUlBQs0mHlDQQOjq+1Myl043XUXRNUYxVQnWqtwKtNgbYde1ukRX4F1NeVhojR2OqOLIS1se2D/p2kiQPzd56Tr/yN1CpSBvlfHZbMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RPprBJo5PVECWHrZ5zSYriBaBloJ9I4cE7p7RthL5gk=;
 b=KCA4pHzhojHyElFObymaCoOC5Tz1gZIQfVSGtoQIAfmVIvEbPjQduawugrDUoCR2WGM0ONsFdHIfRiWQt0OGksHRXlLAu6w6WV+Yw8O+CKl5wRWjQ8WppkcfONDZo7nKBy/fVvBDbEiO8T1LMHdJYzWYmnHuY9b+4p2liopzUdQmV16qMkSOp72B0k94GIGhEs7On9SeS6v2qpgdvyUFlkGYdaB9sTxldF2uflwk9wLGRMP1LCaxns1BClGyAMjW64TwXYa9JCmKuR1Mmb6MstTXZ2ngGYgtie8zsFHy+Z3WLMCd52vy2JULUClGbGG4cZTfiwWyBLZIm5+z0PGf0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jpl.nasa.gov; dmarc=pass action=none header.from=jpl.nasa.gov;
 dkim=pass header.d=jpl.nasa.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=JPL365PROD.onmicrosoft.com; s=selector1-JPL365PROD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPprBJo5PVECWHrZ5zSYriBaBloJ9I4cE7p7RthL5gk=;
 b=qowBcyNMdjo8Xfs9BIunojGavjeztQG0N7+ROsu1oX1uZCc2V2bhhcJZETMkHhWV3TU+O1xawHx4e+vujXxFYhRoxUXUxvEaHumiB4hQAB+O7Np5VJQLO3HRUBde4XpOzzu75dJGsNzYgVSEID1Y6YghYuYvYIXw4Sg/0CR8x6g=
Received: from SA1PR09MB9275.namprd09.prod.outlook.com (2603:10b6:806:282::21)
 by DM8PR09MB6408.namprd09.prod.outlook.com (2603:10b6:5:2f3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Tue, 25 Jun
 2024 17:52:25 +0000
Received: from SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::94b3:3302:6aa:9d45]) by SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::94b3:3302:6aa:9d45%4]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 17:52:25 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Ettus KB: Missing CE clocks
Thread-Index: AQHaxyPfV9u4kaUbcE6BtG6SqkfvRw==
Date: Tue, 25 Jun 2024 17:52:21 +0000
Message-ID: <SA1PR09MB92757320D99AD9548CA581F092D52@SA1PR09MB9275.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9275:EE_|DM8PR09MB6408:EE_
x-ms-office365-filtering-correlation-id: 966d0e9f-2ba5-4bde-f4bc-08dc953f92b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230038|1800799022|366014|38070700016;
x-microsoft-antispam-message-info: =?us-ascii?Q?NvZAx/sHjBG1QWP2Z+rowGq5hx+WADWkVCE4//GALobbmepkxZLJNMsxUlLv?=
 =?us-ascii?Q?KNr/vpk1PUaJuPrOJJ4i8jyv9JUk2m37nVak4av0+CBCnMuu1onQQpJ/V8hn?=
 =?us-ascii?Q?0tIav0eKAxrK+KR1UtJQdQS7T1SMJYy1ilsMuogWou0zcoVqMrfxPhX5jvKH?=
 =?us-ascii?Q?HMDLIanzij09IuQgF7Ch+tZ0wdR1bnpfJwzx6kbBZNCMCB1XpZD/7/lgtimm?=
 =?us-ascii?Q?DbcM2XLz1ZdDjUAVSCqhL9QxRkBspE2GcvYijB5/XjB80bsLPEbbtOBOTz/9?=
 =?us-ascii?Q?p8XMhFZPTP1EE1TMX6zDFpC4HadfT/sl1MCNtHNXPSW5fF83jBsUQ3U5ziMN?=
 =?us-ascii?Q?TGyTjK5sgFPQ1w8zsCx5ltxyydp9OO/1+Ak+MBzzXcrf+tjfh97/fyO+js/W?=
 =?us-ascii?Q?rYrSjeS7sM6QP/OBABwmYqujZWwNN3XZlpPFqrT+aCviChCn/+jCPT8VyWTg?=
 =?us-ascii?Q?Jeot8jI2D315R5w3ELN1gSu44q2emfBQgSStzj5Sofm0BpCa1TlVIRijLhuV?=
 =?us-ascii?Q?602oiynkDwjd0bBdRFu5o33xVWRWpdxxwe4NHNIQb64UZFbBDllHI/cghz0I?=
 =?us-ascii?Q?Tqqbsrf/Vbc/w+D16XfdCQDCE1ewsElYP0d4uAcnuy32VOf2tyeKWHCvrbSK?=
 =?us-ascii?Q?4q5xe+huZMtmOc6r8UBkjO8gH2p6g/s50QZSDDGIUQS0XXBQWzpYt5SVTTdR?=
 =?us-ascii?Q?9lqq6RXgQxnA23F+vBxl4S6+att98kxAn4bYx8WQdW7mlMcJ+D6MtUbWLbwS?=
 =?us-ascii?Q?XxsCa9yA2mq26+rh4CCBnjtXK9cEZx+D5ZyvWLhB+e6Kx+4KrweCmI/LmgWB?=
 =?us-ascii?Q?EUHVIYkruAQTBmX6Qu4XqtHUqPzfETxDuIR3WB5ugtHTwgeDTPsjQm7lHQst?=
 =?us-ascii?Q?0VEGG5dfr5m21MEeT1z7ei3wAtL9WW9ebE5+YuxZzRAUsm6wROdlLPmTc+yk?=
 =?us-ascii?Q?0BWpQUWRMBWtAN/nTREiW6i3g4GEZCA/lAlFKoGhL/Wbyyk6LZWQVZCElRXV?=
 =?us-ascii?Q?xGa1xkhu2DhCBei0/DA7Do6VfvdejbHP2S0/RQqrjvZ6kT6MyODN1plI4aMV?=
 =?us-ascii?Q?ct9736d5b2XaqrbJqb7+4ZVgeG8SpQD9eAICiXGcHHUjRnEY7kerESJesrVP?=
 =?us-ascii?Q?oBSnHxM5e9tjQ5SXIB2QEwIZOLB0t9dvbKBjZp+U+3ujv+BaxJvykr/rK77H?=
 =?us-ascii?Q?TxUdyDvASBzySzRcvT2Y3rbCXAoa6DhnjI1my7K2xLI0GNEurbetNWpA9g1w?=
 =?us-ascii?Q?+767+2Re1D6yRNQkZdtD2EcNSlGv1gOVh3Tyby78P5b3qvE9Nh8vqCEXB9tB?=
 =?us-ascii?Q?9nOTl0cKT1cmp8T3vW4BeU1q?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9275.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230038)(1800799022)(366014)(38070700016);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uYqkb3ehk1hf98H4lgqpys0uDyivxDzru8TuG+4dXh9MPtsUJSOZqk2DQNUP?=
 =?us-ascii?Q?WWCGDZvY4XtFqiDccRE28JtU/BN9ZHUwNUVyEYYyDMr8JMUiQMLl3epsGCpY?=
 =?us-ascii?Q?afLmszb7PSUQ6RufKgL6JbvEWfUZnsflrGRY+g7HU2C5BAOkDTTH5MxGNIEz?=
 =?us-ascii?Q?jaOy1L+y4oF9Hmao6DCRN7dK1HGzDdQnavAzn1HDIE5+m2u5Knsi1fHdOg9f?=
 =?us-ascii?Q?k8WqYpd++qILpdRoZI6pyuFvaoCfvhrVyzafBN6Y+8tb/EyEoJyJJAo3SmWz?=
 =?us-ascii?Q?0Rr2D/TOpjxhb7KFoGxm/25cAitFW59mlJtb0TQe7/YmQ61k9WHCxZZd8k4a?=
 =?us-ascii?Q?q92anyVuu6KA2y1Jaq7oakiNbze0A+PG4vnnUmsc5x8ZueMd6qwhfnik/zK4?=
 =?us-ascii?Q?5yh5b92D9lmH5wEm+Wm3PL7RB+lh/bhbILh0ux0B888fo9wuA4VZOiL34B2V?=
 =?us-ascii?Q?meaFOp2La8ayifnPVNZVF4JzoBzC1ya44+lGc1XQnWRYTuear4A8FrWgDxxV?=
 =?us-ascii?Q?P3aQO1EjvCylqDldNT2QfPgTYbp5n877FZNZpJxkCvIV286swofihHcq5lPz?=
 =?us-ascii?Q?4XEcstY3u/+YhdsKP+TjvCXdPVT+1bhf81I0FIDyxvwy2iaYUuoJQZ6MYJsJ?=
 =?us-ascii?Q?kv/G0eaUhrAI8qTTQUY+Tl+HvULqFwCK0rsGB9DDVoBmiopQcPuuXRBx84Xu?=
 =?us-ascii?Q?lIcd3uNWdd6NqkMtUffBdtOm5ohY7MiEjgTxPq/q9g5keIPEClMWGWEcyyY7?=
 =?us-ascii?Q?P462nacXBskOWIZa+Pb6/imncDHSn32tunpI86+QhYWahJNsB+71KfEvodqk?=
 =?us-ascii?Q?ej+E1oFOiTtJdR6VknH0PplfBzel2J4ZAtaS2iqN35q9xGLiRia8I4CE5PKi?=
 =?us-ascii?Q?3MA6jcQjkB9eI2HkiUjCjCGK3B27IXdDYa7+jixKTq5Nb4IPzonaMIL2mj4t?=
 =?us-ascii?Q?+RK3u2JRh9rYpO7bG+DSkAjzldKoi1Ccw9XVB3mRhBwAah2fEyTiXtifY3tn?=
 =?us-ascii?Q?LRooVDFi0qZPcgALMM+D7Pt9z5pvfNgCsCckupbZq1e3hPjJBRgAUbQ7/CUT?=
 =?us-ascii?Q?286xWDXz762xBf6mwot5RPzEQdk/XYlN76WmWamM3yFv1xo8yTqyhgh20qYi?=
 =?us-ascii?Q?shiObyzBBMzLT7KX4cMKSvWRypDtvhX/iNnPapNfx50JarkhvaLtFsJZG3H/?=
 =?us-ascii?Q?AL9AlPoInNpwHGhrWc1gR6InHe7YGtGIZmnrM1eVoV0/P5yMDG+i/fsmE0Dx?=
 =?us-ascii?Q?GWkqHKYRcwm7SbLLt0U6UNlB2mbqCySX3FVmLzPR+4TMEBsayESmgvZ9IqFh?=
 =?us-ascii?Q?JQOwwUzH2ZnDe65kkb7Qm3DUWxhJIZJu3TkJGm6xJVXqlvAmBUsY0lcKrfq0?=
 =?us-ascii?Q?3pOwhTxMwJ5iPhaENAhkOGcf9220FmXarTjS8Ql9PXaDKBRwdk4GMGy3Fx5z?=
 =?us-ascii?Q?P5tp9AlOqi7jy3UyDkzcslib4CPXVLH9zGsaIvKvBNYtJXW9k4E/8EnLKJ/6?=
 =?us-ascii?Q?OJeC7+beXiPvpTAJWJNqsuPt4AdoHJRPC2njittIbPriwBIGpqE4vom2Xh1+?=
 =?us-ascii?Q?dImfS5ogibj7m9TVvdvBdszCjM8UT4k8fsXE+7zV3DOZCkwpGbmK0ZAv7ZaS?=
 =?us-ascii?Q?eA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9275.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 966d0e9f-2ba5-4bde-f4bc-08dc953f92b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 17:52:25.6586
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 545921e0-10ef-4398-8713-9832ac563dad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR09MB6408
X-OriginatorOrg: jpl.nasa.gov
X-Source-IP: ice-ex-mdc02.jpl.nasa.gov [128.149.155.142]
X-Source-Sender: zachary.s.rohde@jpl.nasa.gov
X-AUTH: Authorized
X-Proofpoint-GUID: SZ_026cxOJdBXpqsfryBAiiygMarox5h
X-Proofpoint-ORIG-GUID: SZ_026cxOJdBXpqsfryBAiiygMarox5h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-25_13,2024-06-25_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 clxscore=1015 bulkscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2406180000 definitions=main-2406250131
Message-ID-Hash: NIAFMOH54KHIXZS2USE6O3LW7SVYPCX3
X-Message-ID-Hash: NIAFMOH54KHIXZS2USE6O3LW7SVYPCX3
X-MailFrom: zachary.s.rohde@jpl.nasa.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus KB: Missing CE clocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NIAFMOH54KHIXZS2USE6O3LW7SVYPCX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rohde, Zach (US 333G) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Content-Type: multipart/mixed; boundary="===============0591174472552270431=="

--===============0591174472552270431==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB92757320D99AD9548CA581F092D52SA1PR09MB9275namp_"

--_000_SA1PR09MB92757320D99AD9548CA581F092D52SA1PR09MB9275namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I noticed in the RFNoC Frequency Asked Questions<https://kb.ettus.com/RFNoC=
_Frequently_Asked_Questions#What_are_the_clock_frequencies.3F> article, tha=
t the N300/N310, N32X, X410, and X440 clock tables do not contain the CE cl=
ocks that are present in these radios.

N300/N310 CE: 266.66667 MHz (from n3xx_clocking.v)
N32x CE: 266.66667 MHz (from n3xx_clocking.v)
X410 CE: 266.66667 MHz (from x4xx.v)
X440 CE: 266.66667 MHz (from x4xx.v)

-Zach

--_000_SA1PR09MB92757320D99AD9548CA581F092D52SA1PR09MB9275namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I noticed in the <a href=3D"https://kb.ettus.com/RFN=
oC_Frequently_Asked_Questions#What_are_the_clock_frequencies.3F">
RFNoC Frequency Asked Questions</a> article, that the N300/N310, N32X, X410=
, and X440 clock tables do not contain the CE clocks that are present in th=
ese radios.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">N300/N310 CE: 266.66667 MHz (from n3xx_clocking.v)<o=
:p></o:p></p>
<p class=3D"MsoNormal">N32x CE: 266.66667 MHz (from n3xx_clocking.v)<o:p></=
o:p></p>
<p class=3D"MsoNormal">X410 CE: 266.66667 MHz (from x4xx.v)<o:p></o:p></p>
<p class=3D"MsoNormal">X440 CE: 266.66667 MHz (from x4xx.v)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Zach<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA1PR09MB92757320D99AD9548CA581F092D52SA1PR09MB9275namp_--

--===============0591174472552270431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0591174472552270431==--
