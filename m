Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E76A6ED82
	for <lists+usrp-users@lfdr.de>; Tue, 25 Mar 2025 11:24:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D33E8385B41
	for <lists+usrp-users@lfdr.de>; Tue, 25 Mar 2025 06:24:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742898292; bh=SHiVzkXkIhgkNO4HnhzLGOboJ9JWflonrU2cQMlLWm8=;
	h=To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=xxwZWRlCO7RBomfLdfzrhmLLjLnXySI2vULztKDbLWG/+S0nwHzVHVwaS1N7mKUFE
	 STZUqZtNHg24h6oJU+tav53FcDaKQ/RL1N1ky38mu624DvyopeL1VzJCpHOqptCY2z
	 3/dYLquTBpQaSZMKvcnBDpFuNUB0Onlyd5fG0i8RFIMwRnURP1qUCuf5utc9oglwqR
	 bP54YWH0nxRdRrWOOUlK2zlqIRDyJKZbMrD46s+sX7v4qljeyuzJieDefYchw8Pt6y
	 QdqNB9Wfwjho/eoE5rlvUCC+tEL0Mbm2Tw4mcozE1bLe3FwG9YEVcUQIeYimNEW92y
	 rB0fV7Ocd8vMA==
Received: from mx0a-000c9b01.pphosted.com (mx0a-000c9b01.pphosted.com [205.220.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 369EF385686
	for <usrp-users@lists.ettus.com>; Tue, 25 Mar 2025 06:24:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=fiu.edu header.i=@fiu.edu header.b="PkRf8/f3";
	dkim-atps=neutral
Received: from pps.filterd (m0234721.ppops.net [127.0.0.1])
	by mx0a-000c9b01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52P9vOqj021713;
	Tue, 25 Mar 2025 10:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fiu.edu; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	Nov2020; bh=/QBaXMUGTyxmYGLWHYn7uporA/sf+QWEtOONmdbu4iM=; b=PkRf
	8/f31Bo+WFR/SotYR6u7m3qpt5bFaqoo6mGxdr5d+iTyDKHTK2qphvXHLOhuSgPh
	9dEq11bKkzPhyKYoSmjuPR/J3jH3PLyPeUIsrYMZh8l2JEK5vN29cvr9pAL/Xwjj
	Nb9b49c+cNV/bRqRrqKdY1kahexFIXRRF20F6JGGBKoDpOaLneqsHTXGNAxcYrqx
	cH0yBJaP7+4z8hLG4Zpm4YSlMKUA7Q5G+Pejnf7D8XBbW5X3BzFDDep2WxbA2H7o
	6CLlnFb/ZZshy4HXDVp8yhKI/TTxcOc8WUMcYDuD1MsAIFtq2HrRe6av5UAO4+dd
	ahyeSJdG7vHGEurZIw==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazlp17011030.outbound.protection.outlook.com [40.93.14.30])
	by mx0a-000c9b01.pphosted.com (PPS) with ESMTPS id 45kf6b9t6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Mar 2025 10:24:07 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IDE10/NIgMZefFSbd+5oqhZQUYKB1j5cafHBWTqohqKfz5KGlx87cYaKQ01eGlNJ0cP4IJOBr/6BSLu7GTJH8oP/J8CVqVjRVTrtLvD61YrBRxrXQ49wV9L1e1QApjpJFyn19aYLRY7ajQibD3wR1l+wvoG2wIC5DE/RuTjE6ewNYRyey+RwpzwbChGHh9Pi7v/08K0FakI+sksEupU4I0EtSceUhxw10FM9VjuhoYGLb8E5M5zwFkPnQdQh+67aR505LMoRlRlHvvhNb8mAaJW3vb7OBHziXfOWTwlVev0ctFE6u01qdZajAZ+2zJgh+0KGSr9JrbC6NOsUbza3OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/QBaXMUGTyxmYGLWHYn7uporA/sf+QWEtOONmdbu4iM=;
 b=FSl5cA+3AF2Vjmu3X5IO/R5WjSByjakrmLVQVsafAKBWBAH3O25bNS123QRt5EHb+mY0wHXY/d0PfBchqFzc7Il6JpY2SFC57mkVrnkx9wfz9nUZNVmmqfEEB8y7CNoAc014gexOXWTytQ8WMSXP20o9DUrSF/kwLYGDWkmwimhRJzZ9Dz3WNUE3+Fc+TjaNAMIzsXN+rhptIy1pUX4ZcKG2oipfYJtJZLOYSgth0e1j+yO0ZzFPddsoSK/W3a3/aDBL02t7UntmxKkmw6rGtGVcdf2azxJDX9vtwXAzo4U4izM6lekkeSh+F9uLx7IqxUGMIj47nc1wpsy6EECQWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fiu.edu; dmarc=pass action=none header.from=fiu.edu; dkim=pass
 header.d=fiu.edu; arc=none
Received: from DM6PR05MB5977.namprd05.prod.outlook.com (2603:10b6:5:3e::14) by
 SJ0PR05MB7504.namprd05.prod.outlook.com (2603:10b6:a03:28d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 10:24:05 +0000
Received: from DM6PR05MB5977.namprd05.prod.outlook.com
 ([fe80::f5f:8977:cd03:f53d]) by DM6PR05MB5977.namprd05.prod.outlook.com
 ([fe80::f5f:8977:cd03:f53d%6]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 10:23:17 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: RX Streaming on Multiple Channels
Thread-Index: AdudbxRmwxTUNOMOTD64ZclsCrZlCQ==
Date: Tue, 25 Mar 2025 10:23:17 +0000
Message-ID: 
 <DM6PR05MB59770CF04DDCB0AE72CB47388CA72@DM6PR05MB5977.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR05MB5977:EE_|SJ0PR05MB7504:EE_
x-ms-office365-filtering-correlation-id: a09d924e-cab0-4bb1-78d4-08dd6b870efd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|4053099003|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?3StloPkB+b1CL/77rJXt2sL/z0wYwwsk3/hvcqQXWyeZJcrQkDU2Jj+o59kz?=
 =?us-ascii?Q?1PAFS6Y1CToRJ1BNamnva0SC9NYl8J6d4USk3Sx0Y/uHW2YfiW290yWFg/jt?=
 =?us-ascii?Q?xBSjn91xivCCLAI6nqVrcjh1rPDMgX5isPqSxR3oSXOIN49fskVYKjtNbHOY?=
 =?us-ascii?Q?VCbvkoKWNLe5ZaqwG4QpmMXqtV85zJ5+WdndcZx/N1gL908wX42FyUVGs3o1?=
 =?us-ascii?Q?a8pdyVB36Zv163RZjv4Booj+KTEdo6iYvi4w6mRdem/Ra2OLYizNfA5N4oFN?=
 =?us-ascii?Q?Rb3jxofEcKuMjBADt2yP6YSMfdjCTUh6X5ybmGR1+0I/Hfm0JDUfHypuxPUQ?=
 =?us-ascii?Q?0MZh14MjYs/Q0o5VM2EnNz/TS7xRy7U69e1t3rdossNURazoxOy/H3S9wEwh?=
 =?us-ascii?Q?XP1EUK5jY8Aa1Rf7DV+oFiMGmOEQUKnYZxWRObWe0HQkt4HMYpbEUU6qcMw1?=
 =?us-ascii?Q?OzTM/45AJIV3TUr+mLKkocd/vByl9nuF3hZN1/mKEmbZ0yUZo1lZ5QW1i6oW?=
 =?us-ascii?Q?0+Bda5paEj23AO6uFB0h/F3FfYYiTsAEoG7/8ciRgON/Bl+RiMyzgqaN37oj?=
 =?us-ascii?Q?7jKEVpkc3tKfp04kFfzqDu8v0lb/AcCCSeilfy23nrb7xS/18V4XYGt7+Sfw?=
 =?us-ascii?Q?C4i0AW6+t2rtdx92hT8AprKnneVvpjl4gxoUmWPxhaL0AIfr3LGDo38XKa0S?=
 =?us-ascii?Q?zY4NDw+/nr+NkyPyfb7NLO1Vr3+H+FsQaJKebLJ1za5kXgzhM6mdJmYcYTM8?=
 =?us-ascii?Q?YMxP2y5rxKJZ8M6yk9d8NiZuPnQYmfL0DCdCP03VnSb//y8w18+ssBsror6t?=
 =?us-ascii?Q?hTr28/ke2IKA0f5YZ86gpWMpy9KBjiPZOY+0M92wQv3JEHSul2tkdwJyphl6?=
 =?us-ascii?Q?/hoN4ZQXUV9wiQOPLf/9Oleqf1cMjdGN6+O02VcHYWDsQD9Zeim9G8AtnEpw?=
 =?us-ascii?Q?6O//PkVVzshEPRazHt4JpaK/SfT/c8VtXtcilBdsbDpFz2GxQ1xWox2Zk9uW?=
 =?us-ascii?Q?KuaSVrQcOJA6YB4vR58ibLrEIZGl+LWoZnQ1iPT/1b9OzF7uaaJ6dEjyCUtb?=
 =?us-ascii?Q?pIExfWeySv/Kryv0oqfDosG8WIpbKAcASEBTp2fe/Pc8q75XhV0JoEA+jqLE?=
 =?us-ascii?Q?pAmjaMOZyRUViE7AhjhCtKiDT8Mj5hdOZqeUFCPFPxIz50gNnB11uYgaH2Yd?=
 =?us-ascii?Q?KsXw1LQ4fXiozvLWocBxUzsEkxKWK6rjFBz1pY4BHhYHHdWxYBQ10spUpD2W?=
 =?us-ascii?Q?SLuugxexDyoPKaPF7LhZBy5KPnZA17/fbD8zu/t3HNZTSVb5biA5ifcnd6s1?=
 =?us-ascii?Q?3oWxaYHAZmJRnIoGAHZwIS/l+MOpujEvy+4EEpXbHwV2xyRQrHO4Nf9+v+Ki?=
 =?us-ascii?Q?cpWUJApAbwyfGKg1flWNs31UaWCpeP2OR6nbn0NDsUmT9F1dD/q1uPbiOBSg?=
 =?us-ascii?Q?ru8EFDDyYrw=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5977.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(4053099003)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ZAVJt/RXg8wfdihvPnqt4zXhBY6Rz202dzPtUhqpIAl52rDvpaTlZ9yJt7Dy?=
 =?us-ascii?Q?8OttKUaXAE+NxSsdc+wq9KXaaK3KDcduUfbJhCXRXgQgMv5TH4UaUXCHlZDd?=
 =?us-ascii?Q?oUbdJU7Tg395EwjfQipy7eQv08+DvvvYxPfPfha1Z/v/5vebdZ8S1yzTpVNy?=
 =?us-ascii?Q?LUiYNjXG8Oulu/48h5+tHzFzFginlh+DbbDX1ECnbDcOLNAwMzDiz00tFDH7?=
 =?us-ascii?Q?AtNRLmvGuNEUfhVMbB57OR+QqvF0KZw7ocH222NAjugXXHyDstXkJsVg6tYp?=
 =?us-ascii?Q?ERm4pue3TwiIX+ASU7qj23urYs7U/1KUfkZepjUzlhPyiQbe4xi7tPCvHZml?=
 =?us-ascii?Q?JVfH3C+idfipyJFqkDDTkxvZNDhbBX67+VzB7iUuqbZ6dR+XKyDBR9YXu1rj?=
 =?us-ascii?Q?UYSn3AEV3EhcupzzWu1wsa+RwqZNYIL2J33CNACs88F2JaB8aQeTDasl4V04?=
 =?us-ascii?Q?8KVCbIgnW44iui/SXtvwej3C/RkKETHf3yNcbXsPP1xBMjK55XA/Gycm0PO6?=
 =?us-ascii?Q?fVA2UuQMUw+R8ny37dXH5S+ixxiUWzLXlsm5vfCvq78KFwwmItqEFkbd+JwZ?=
 =?us-ascii?Q?VxYt8zFThhfxTl3WA+JQ8Exz0gNtFKwbyDLedJmRX94VR1xS/0PiEPUeaaCJ?=
 =?us-ascii?Q?dkLCg0+B9rarChENRV01C5y6IsdlRSP7EXrVjGQP86hruw+8I2SURR75OYNp?=
 =?us-ascii?Q?YdQwCu9skKPYUJP3kXtvPVG3jKfF/KpqrhL9G3fzkoabooTKHmSxQVVl6Nnr?=
 =?us-ascii?Q?QfjlTuoX/T0JORFfX0ICqXzJW4DifMZo9YSJE/y3ZcgZQftO/rwYIbyI7rCt?=
 =?us-ascii?Q?Gdnn+14qI94B/Rt5CTOW0N5fDoLQiMSM7sLXmUMc6vkBJA6OqSH+4iH5lZTv?=
 =?us-ascii?Q?DKJL1QwJGplIzJzbNF746TwyAJ6SyPTH1wunwoE7tMUK0swLicRUMlSF1SZX?=
 =?us-ascii?Q?Ky0zdTFSipNd/Q7v7STfE8qCxFg8se5hBqRnHuYjNEbF5FV/ArUJbR3N1uPe?=
 =?us-ascii?Q?vJ26+I8RpruvBfWmIzrh652y3Bon2r8bNgZuIN6qydArlkHDJ5zuM/9vLkvN?=
 =?us-ascii?Q?1UQI+n0pVUL1VjkqGphev4k+MkbagT6dqr6AWXqPCMvyMGgkQrSpl5nlo3ZR?=
 =?us-ascii?Q?ZfJYDQFg7sGSTdJhyulLJqQaJEmKsPr/RbxPt+aHJuQ3NptzRaGdg2blaZcI?=
 =?us-ascii?Q?ANrKqONYn7X1ui3giZqpbRAIdrwy6PqA2oYCowGbtZZ4NXNOqo1mKNtU9jxC?=
 =?us-ascii?Q?ZQMsKcnzQ+jFiWGYSnluw+iWJ1kH5plgZnMSuZq/mmAr5bSHRHIM7qL2fk3/?=
 =?us-ascii?Q?/tub6LtA81Ts9ONGJcv8jSZyyTkIA+5Xe0BDsyelIVlQqnscnEJjA6qMb+5C?=
 =?us-ascii?Q?FxY+A0PEFF2T3bN4EQBcbUcVYEwSskQuwo/AO0eIS17FKfjdAj2F+dJPLqMk?=
 =?us-ascii?Q?aR+lVg5d9++28HUa8Hs+Ywm/yhaQ+mfChY4xs1CtqIg0JxxCNwUrf7tqvOEK?=
 =?us-ascii?Q?t45A2lMc7A5wKUbbA+Tu6KBMT7oONfB5phxcR1SHTA32Nkh65veY7vMynA9e?=
 =?us-ascii?Q?vL/m/0btqEc4tMGIcIg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: fiu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5977.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a09d924e-cab0-4bb1-78d4-08dd6b870efd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2025 10:23:17.2282
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ac79e5a8-e0e4-434b-a292-2c89b5c28366
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kg0FxlD3bDJUE6aD09pgstLt9fnGV49VLs/TcjklKk9OoXyB1EsXSqcdnsaKEsXPUObZv74qGoaARSjCihV9IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR05MB7504
X-Proofpoint-ORIG-GUID: -x5yIJtwBLgiarSQbMZIkvLZQ7JzeTnY
X-Authority-Analysis: v=2.4 cv=VsgjA/2n c=1 sm=1 tr=0 ts=67e28448 cx=c_pps a=uiDhKFZJcG2N7b6OoV3sKg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=Vs1iUdzkB0EA:10
 a=H5OGdu5hBBwA:10 a=x7bEGLp0ZPQA:10 a=etiEgX_XAAAA:8 a=stDhAlG6jiU6zKIrf2QA:9 a=CjuIK1q_8ugA:10 a=TH8YdOdv28UA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=3daCaSOf8i_3DadI:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=lqcHg5cX4UMA:10 a=LgBa6h_1rCb7rcWJtasA:9 a=HXjIzolwW10A:10 a=T6a71-JsGAwA:10 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-GUID: -x5yIJtwBLgiarSQbMZIkvLZQ7JzeTnY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_04,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 mlxlogscore=955
 clxscore=1015 priorityscore=1501 phishscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250072
X-Proofpoint-FIU-O365: True
Message-ID-Hash: 2UQSESWXYMI5TP2RTUOGYMEHQVLKMETV
X-Message-ID-Hash: 2UQSESWXYMI5TP2RTUOGYMEHQVLKMETV
X-MailFrom: asans008@fiu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Arnaldo Sans <asans008@fiu.edu>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RX Streaming on Multiple Channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PJUZ4BAGAHH2EP66WOXRXQM7PT6HS3JS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arnaldo Sans via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arnaldo Sans <asans008@fiu.edu>
Content-Type: multipart/mixed; boundary="===============1693190967867729665=="

--===============1693190967867729665==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_";
	type="multipart/alternative"

--_004_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_
Content-Type: multipart/alternative;
	boundary="_000_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_"

--_000_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good morning,

Hope everyone is doing well.  I am attempting to stream data to multiple RX=
s on an on x310.  More specifically, I am using TX/RX and RX2 at RFA [0, 1]=
.  I was reviewing the on-line "USRP Hardware Driver and USRP Manual" (http=
s://files.ettus.com/manual/page_stream.html) material.  Specifically, the s=
ection on "Introduction to Streaming".  The authors provide a snippet of co=
de illustrating how to manage a RX streaming for a signal port (below is th=
e python code).

import uhd
import numpy as np
usrp =3D uhd.usrp.MultiUSRP("type=3Dx300")
stream_args =3D uhd.usrp.StreamArgs("fc32", "sc16")
stream_args.args =3D "spp=3D200" # Note this setting is not valid for all U=
SRPs
rx_streamer =3D usrp.get_rx_stream(stream_args)
rx_metadata =3D uhd.types.RXMetadata()
recv_buffer =3D np.zeros(rx_streamer.get_max_num_samps(), dtype=3Dnp.comple=
x64)
stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
stream_cmd.stream_now =3D True
rx_streamer.issue_stream_cmd(stream_cmd)
while run_condition:
samps =3D rx_streamer.recv(recv_buffer, rx_metadata)
stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.stop_cont)
rx_streamer.issue_stream_cmd(stream_cmd)

I have attempted to modify the above snippet to support RX streaming into t=
wo separate ports on the RFA (TX/RX and RX2 at RFA [0, 1]) and I have not b=
een successful.  Below is the error message I am receiving, and I am having=
 trouble deciphering what it's trying to tell me.


.... line 207, in main
    rx_streamer.issue_stream_cmd(uhd.libpyuhd.types.stream_cmd, [0,1])

TypeError: issue_stream_cmd(): incompatible function arguments. The followi=
ng argument types are supported:
    1. (self: uhd.libpyuhd.usrp.rx_streamer, arg0: uhd.libpyuhd.types.strea=
m_cmd) -> None

Invoked with: <uhd.libpyuhd.usrp.rx_streamer object at 0x7faf1abc54b0>, <cl=
ass 'uhd.libpyuhd.types.stream_cmd'>, [0, 1]


Is there a snippet of code available that illustrates how to RX Streaming o=
n Multiple Channels?  Alternatively, any guidance on how to approach this e=
rror message will be very welcomed.

Thank you!

Regards,
AJ
Graduate Researcher
College of Electrical & Computing Engineering
Florida International University
10555 West Flagler Street
Room 3863B
Miami, FL 33174
Phone: 305-336-2541 | Email: asans008@FIU.edu<mailto:asans008@FIU.edu>

[cid:image001.png@01DB9D4B.5689C8A0]

--_000_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"Book Antiqua";
	panose-1:2 4 6 2 5 3 5 3 3 4;}
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#96607D;
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Good morning,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hope everyone is doing well.&nbsp; I am attempting t=
o stream data to multiple RXs on an on x310.&nbsp; More specifically, I am =
using TX/RX and RX2 at RFA [0, 1].&nbsp; I was reviewing the on-line &#8220=
;USRP Hardware Driver and USRP Manual&#8221; (<a href=3D"https://files.ettu=
s.com/manual/page_stream.html">https://files.ettus.com/manual/page_stream.h=
tml</a>)
 material.&nbsp; Specifically, the section on &#8220;<b>Introduction to Str=
eaming&#8221;.&nbsp; </b>The authors provide a snippet of code illustrating=
 how to manage a RX streaming for a signal port (below is the python code).=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>import uhd<o:p></o:=
p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>import numpy as np<=
o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>usrp =3D uhd.usrp.M=
ultiUSRP(&quot;type=3Dx300&quot;)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>stream_args =3D uhd=
.usrp.StreamArgs(&quot;fc32&quot;, &quot;sc16&quot;)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>stream_args.args =
=3D &quot;spp=3D200&quot; # Note this setting is not valid for all USRPs<o:=
p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>rx_streamer =3D usr=
p.get_rx_stream(stream_args)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>rx_metadata =3D uhd=
.types.RXMetadata()<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>recv_buffer =3D np.=
zeros(rx_streamer.get_max_num_samps(), dtype=3Dnp.complex64)<o:p></o:p></i>=
</b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>stream_cmd =3D uhd.=
types.StreamCMD(uhd.types.StreamMode.start_cont)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>stream_cmd.stream_n=
ow =3D True<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>rx_streamer.issue_s=
tream_cmd(stream_cmd)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>while run_condition=
:<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>samps =3D rx_stream=
er.recv(recv_buffer, rx_metadata)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>stream_cmd =3D uhd.=
types.StreamCMD(uhd.types.StreamMode.stop_cont)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>rx_streamer.issue_s=
tream_cmd(stream_cmd)<o:p></o:p></i></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have attempted to modify the above snippet to supp=
ort RX streaming into two separate ports on the RFA (TX/RX and RX2 at RFA [=
0, 1]) and I have not been successful.&nbsp; Below is the error message I a=
m receiving, and I am having trouble deciphering
 what it&#8217;s trying to tell me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>&#8230;. line 207, =
in main<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>&nbsp;&nbsp;&nbsp; =
rx_streamer.issue_stream_cmd(uhd.libpyuhd.types.stream_cmd, [0,1])<o:p></o:=
p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i><o:p>&nbsp;</o:p></=
i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>TypeError: issue_st=
ream_cmd(): incompatible function arguments. The following argument types a=
re supported:<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>&nbsp;&nbsp;&nbsp; =
1. (self: uhd.libpyuhd.usrp.rx_streamer, arg0: uhd.libpyuhd.types.stream_cm=
d) -&gt; None<o:p></o:p></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i><o:p>&nbsp;</o:p></=
i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><i>Invoked with: &lt;u=
hd.libpyuhd.usrp.rx_streamer object at 0x7faf1abc54b0&gt;, &lt;class 'uhd.l=
ibpyuhd.types.stream_cmd'&gt;, [0, 1]<o:p></o:p></i></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a snippet of code available that illustrate=
s how to RX Streaming on Multiple Channels?&nbsp; Alternatively, any guidan=
ce on how to approach this error message will be very welcomed.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;background:white"><i><=
span style=3D"font-size:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;c=
olor:#1F4E79;mso-ligatures:none">Regards,</span></i><span style=3D"font-siz=
e:12.0pt;mso-ligatures:none"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><i><span style=3D"font=
-size:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;mso-l=
igatures:none">AJ</span></i></b><span style=3D"font-size:12.0pt;mso-ligatur=
es:none"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><i><span style=3D"font=
-size:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;mso-l=
igatures:none">Grad<span style=3D"background:white">uate Researcher</span><=
/span></i></b><span style=3D"font-size:12.0pt;mso-ligatures:none"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><i><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;mso-liga=
tures:none">College of Electrical &amp;
</span></i><i><span style=3D"font-size:12.0pt;font-family:&quot;Times New R=
oman&quot;,serif;color:#1F4E79;background:white;mso-ligatures:none">Computi=
ng</span></i><i><span style=3D"font-size:12.0pt;font-family:&quot;Times New=
 Roman&quot;,serif;color:#1F4E79;mso-ligatures:none">&nbsp;Engineering&nbsp=
;</span></i><span style=3D"font-size:12.0pt;mso-ligatures:none"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"background:white"><i><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;mso-liga=
tures:none">Florida International University</span></i><span style=3D"font-=
size:12.0pt;mso-ligatures:none"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><i><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;mso-liga=
tures:none">10555 West Flagler Street</span></i><span style=3D"font-size:12=
.0pt;mso-ligatures:none"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><i><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;backgrou=
nd:white;mso-ligatures:none">Room 3863B</span></i><span style=3D"font-size:=
12.0pt;mso-ligatures:none"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><i><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Book Antiqua&quot;,serif;color:#1F4E79;mso-liga=
tures:none">Miami, FL 33174</span></i><span style=3D"font-size:12.0pt;mso-l=
igatures:none"><o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:12.0pt;font-family:&quot=
;Book Antiqua&quot;,serif;color:#1F4E79;mso-ligatures:none">Phone:</span></=
i><i><span style=3D"font-size:12.0pt;font-family:&quot;Book Antiqua&quot;,s=
erif;color:#1F4E79;mso-ligatures:none">
</span></i><i><span style=3D"font-size:12.0pt;font-family:&quot;Book Antiqu=
a&quot;,serif;color:#1F4E79;mso-ligatures:none">305-336-2541 |</span></i><i=
><span style=3D"font-size:12.0pt;font-family:&quot;Book Antiqua&quot;,serif=
;color:#1F4E79;mso-ligatures:none">
</span></i><i><span style=3D"font-size:12.0pt;font-family:&quot;Book Antiqu=
a&quot;,serif;color:#1F4E79;mso-ligatures:none">Email:</span></i><i><span s=
tyle=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;colo=
r:#333333;background:white;mso-ligatures:none">
</span></i><i><u><span style=3D"font-size:12.0pt;font-family:&quot;Book Ant=
iqua&quot;,serif;color:#0563C1;background:white;mso-ligatures:none"><a href=
=3D"mailto:asans008@FIU.edu"><span style=3D"color:blue">asans008@FIU.edu</s=
pan></a></span></u></i><span style=3D"font-size:12.0pt;mso-ligatures:none">=
<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;mso-ligatures:none"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:&quot;Calibri&quot;,sans-serif;color:black"><img border=3D"0" width=3D"26=
4" height=3D"49" style=3D"width:2.75in;height:.5104in" id=3D"Picture_x0020_=
1" src=3D"cid:image001.png@01DB9D4B.5689C8A0"></span><o:p></o:p></p>
</div>
</body>
</html>

--_000_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_--

--_004_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=15242;
	creation-date="Tue, 25 Mar 2025 10:23:15 GMT";
	modification-date="Tue, 25 Mar 2025 10:23:16 GMT"
Content-ID: <image001.png@01DB9D4B.5689C8A0>
Content-Transfer-Encoding: base64

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
8P8A7fsDInY/0Y8AAAAASUVORK5CYII=

--_004_DM6PR05MB59770CF04DDCB0AE72CB47388CA72DM6PR05MB5977namp_--

--===============1693190967867729665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1693190967867729665==--
