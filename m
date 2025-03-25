Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E7EA6EDBA
	for <lists+usrp-users@lfdr.de>; Tue, 25 Mar 2025 11:31:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E43A3385DF1
	for <lists+usrp-users@lfdr.de>; Tue, 25 Mar 2025 06:31:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742898715; bh=vO3xHtUhACAyb5v+pea7w1te2qqvWgO/4e843H3m3mg=;
	h=To:Date:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=jlm1S28TYqeicA4CA5DrGoK7Z3WZrKTsKgSiLQk1YKpY83AQkY7y3PHnvYijDGnNf
	 wLWHrRBPRniCAnvMcXRwCbjew2HFoqaOuee/w9DtoBh7lT9K9tYQmLwJ1i+6+8wTVv
	 e3m0F1moVxZY4vMzRb1gCxBJDPDKESWo82GgWiaQRz0cMsjf6cD0i8NuQbb4cs/WVd
	 rU8/53dv7XnkvA390UR3VNW4ve32l35gpq0WFnaQM5xvUdVZ+Hwmeem0vfTzvqPCIF
	 xnj7dyOY1hSBPpCr9YVMsfpNKJLUrQS4snwpdTOCTK+xkyKGrWjldTZTBXvYgRZQkB
	 5CsKX7oEnivzw==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2139.outbound.protection.outlook.com [40.107.21.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 783FA385B3A
	for <usrp-users@lists.ettus.com>; Tue, 25 Mar 2025 06:31:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aerospacelab.onmicrosoft.com header.i=@aerospacelab.onmicrosoft.com header.b="ld3pLFpf";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SLppmb20NLAuUt/egmyS6ODyOc7pYi0Ab0fQ11rE2wKkSGkRugNHWkNl7kTSt2X/Li4sAzg9Q4+KeLxjXQ4RzndfW7IQW+IiMIfyp3Vvw5vkKALwuWkVsRGX0oa+sS/+I5Kua1vTKCm7FGI1SWTaPRLGSgFtDVcuXu8lrPm64O/AmbdsIi+3Jxe5YiAq90qT/3aoofElX65JDoxmh2JRRhG9brhVfl5Sp8a8+GIfACZozOly1YIGezQewPt2Yw1pQzKld+7P3BNXRtEJEVSXtb9f0fk9CqU+e8Mod9w8EpwHFp0Fes5KtQiuoCt0dbD6e0e0y/AfwsczR1OVCJ7QDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cjgyBkCt7QPTB4JfLFbRkmOkbN3o4D090pEG/zJD1iU=;
 b=gKk4Lh0mnhuVV+yE8pc0cY1kQbolZfBPYyJ8ITLKF96UuniuA1d9qJZ2brAgii26rUJULsZsrbN6WuuL+gAY8MP/tMsvcPA2iUoZ4PwSqxCyy9dY4cuo5Uz5nMSTEI0ZIWE82s1EVY9m+o2cykpXXa07jlWoWfZV8S/mLUqWJiN2GBKXOlgNYC3q9VQbwTsGDNF4PmeFuNeVAIWb83qF8u9v+AKS9BqYqgEkVUdjQe7F8NQd209xFXuze9bkkyrAQ2XaFPyo978dOI336be6qCz1THulYsDiV9XX3mFNCbUFXPSFd+PZwy7gQhJYBIb0J932HefNRT13nFjEw3T+YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.79.222.204) smtp.rcpttodomain=lists.ettus.com
 smtp.mailfrom=aerospacelab.com; dmarc=pass (p=reject sp=none pct=100)
 action=none header.from=aerospacelab.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacelab.onmicrosoft.com; s=selector2-aerospacelab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cjgyBkCt7QPTB4JfLFbRkmOkbN3o4D090pEG/zJD1iU=;
 b=ld3pLFpfig1cSJihu8hXzOmNZKJoUODQR6z3Gv2+PoOnYk8iYOd766ObfbP68o48vmcPujEHR/b3YXH9hgHCFZv8dX2w5rDVlyny6eVaR84BT+BTQzYXfrHyJ+xARa4aS0xqIxplkcqKOeMRXcv6Zqczb/JmQKViKq2VDiY7JZM=
Received: from DUZP191CA0040.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f8::18)
 by VI0PR10MB9073.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:23a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 10:31:28 +0000
Received: from DB3PEPF0000885D.eurprd02.prod.outlook.com
 (2603:10a6:10:4f8:cafe::7a) by DUZP191CA0040.outlook.office365.com
 (2603:10a6:10:4f8::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.42 via Frontend Transport; Tue,
 25 Mar 2025 10:31:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.79.222.204)
 smtp.mailfrom=aerospacelab.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=aerospacelab.com;
Received-SPF: Pass (protection.outlook.com: domain of aerospacelab.com
 designates 20.79.222.204 as permitted sender)
 receiver=protection.outlook.com; client-ip=20.79.222.204;
 helo=de2-emailsignatures-cloud.codetwo.com; pr=C
Received: from de2-emailsignatures-cloud.codetwo.com (20.79.222.204) by
 DB3PEPF0000885D.mail.protection.outlook.com (10.167.242.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.20 via Frontend Transport; Tue, 25 Mar 2025 10:31:28 +0000
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (104.47.30.109) by de2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 25 Mar 2025 10:31:27 +0000
Received: from AM7PR10MB3238.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:10e::10)
 by DB8PR10MB3784.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:16d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 10:31:25 +0000
Received: from AM7PR10MB3238.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a96b:6f67:211a:965e]) by AM7PR10MB3238.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a96b:6f67:211a:965e%3]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 10:31:25 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [X440] CPLD update
Thread-Index: AQHbnXBvb+kaQwxxdE2EzDWAfiV0aw==
Date: Tue, 25 Mar 2025 10:31:25 +0000
Message-ID: <AM7PR10MB32382EC180D4F91C141F096C98A72@AM7PR10MB3238.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aerospacelab.com;
x-ms-traffictypediagnostic: 
	AM7PR10MB3238:EE_|DB8PR10MB3784:EE_|DB3PEPF0000885D:EE_|VI0PR10MB9073:EE_
X-MS-Office365-Filtering-Correlation-Id: d103e5d7-d872-41b7-85a8-08dd6b88339e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?5By+KBLzuLDsvdYpRwUxhHZ/lowvcg5MhEA9kQ2i8rnYFwH1BrXPgrAW+DqI?=
 =?us-ascii?Q?zEGK/J2qXU3XX4dr8tvF38ykb+s+bPyDD470xJtRnACl91hkStR7/4CBBLZB?=
 =?us-ascii?Q?ZcwULnLgvDJtLv0IyOSL7oM0Oa/ytgew6lLqKp2nKD4f67mD6bwMaCkW1f9p?=
 =?us-ascii?Q?YtxgADASaI2QlBmylYpSNxtJVUZW85xinXt+UzN1r+Yrw1PC/1lGefieHcj2?=
 =?us-ascii?Q?o4arObi2m5KxPnWnG/7NqBr3c9dINs1mrGFmOklfWyWfUaoVzfw/1yKKpWKz?=
 =?us-ascii?Q?He6sstKxspucT4OtSp5B/3ZQlrJmyp/ktXJqpoZsQ3M91po0MxJ2JO3K4JbN?=
 =?us-ascii?Q?ybyscBf74cmjJgPHUN9cYIBXcHkaWgNKynGyDJ3Ea4oZb2G1ubDrU1DUGLmi?=
 =?us-ascii?Q?ZjrUgG7cH9bA7JfL3A7v6L0jD6EkckhMGMxq/l5KV6D7Jj15oGkTqCV+gcZW?=
 =?us-ascii?Q?pIjGal4HTjW3Lcq9i/VWx9pSHgZwMHSSgZ7ebmDHSaon1ARIB1awMVjoJ5OV?=
 =?us-ascii?Q?307uxbR3xrATVY3aFMuJR8SINtr19GQoIGPK8+Hy+0M2UYasAZrdtWYivQrz?=
 =?us-ascii?Q?exZzma0n5aJUzvvT+ppPxH2YyRzRJxq/ZMx5/I4fBia+opxVIdZQlHQMl34v?=
 =?us-ascii?Q?BJZKXO2iExnrTI2Wnpj2liD3/hyty3zRkmpowd3FX1eBcYIXjwkGXAv/zIw+?=
 =?us-ascii?Q?rYj/fJEesMNffEFQmm20+ym2AoDiF7vBU6paO88WJNn2GqvSSABBMX2gK9s2?=
 =?us-ascii?Q?ILrTXZ9DdeqOY8BCZvR1HlNIptGY0w6IVm6Cdiar/9ZoFD3maEsghFLSWohh?=
 =?us-ascii?Q?mjngU4VqVVjzXlwHlC5vBeDbWaxNGPZdlZmOLtJx0JHUAlAHtirR706rNW+i?=
 =?us-ascii?Q?MZnFz0o5Iqyki9c96njotf4N8eytOEkkVyBTNlRjW8YdfXVUq2QIWJn28xmt?=
 =?us-ascii?Q?7LSJnP/5U4Jg6qOJYBuMP+xFnbwlp3NgYfclj3pm7k+v82+e8adgbFt1FKJB?=
 =?us-ascii?Q?gLA2JIAiNUV12MpwVdOVanKIjjSva+orJbiG78YQYa5A8+aLyC3oTur3abzo?=
 =?us-ascii?Q?M8SDUK1eUSVx6emk73fGQkg6oPwfm8yo2TUreslBgM1Kms+7VVDYbnDLT9tP?=
 =?us-ascii?Q?GF/5dU2QXllGJQI/StyPSl46MorIj9sphMSsXdMxp89x7If8Bw+GCCpA9Ig2?=
 =?us-ascii?Q?Fj/W1A4oIyRFS/O1FFK4ws4pmgb6kC0H3paXbS08FiJYZwWV/rvTl/LRfdDg?=
 =?us-ascii?Q?EolB7p88ZroP6G/njYWJ2LEdQxllFWOrctX7osj0RV5b2e8ryBG2d+yC5kiA?=
 =?us-ascii?Q?Ny4RIb1676+49lAnooyzDesak+Qm8BpvblbzhqJFt3ESJh0/8maFHTGHfjSJ?=
 =?us-ascii?Q?JTTd12T/OcjFYeD3xjLfk1a+B/2pqKvSU7wXPcF+AYQrqc73dxfTOoctt1ZT?=
 =?us-ascii?Q?O/tEjPSbaHjKpLohmx88V5/EtmwIvE+rnrhs20MNld2+p+uOAXXvtg=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR10MB3238.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1102;
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR10MB3784
X-CodeTwo-MessageID: 5ee9f65b-a926-4179-b830-19511ca77794.20250325103127@de2-emailsignatures-cloud.codetwo.com
References: 
 <6e952327-49fe-4d74-a7e0-c776b8146ac6.957d5327-c032-481c-971a-4c5ad06e7b08.104c3dd3-14e7-4b70-84da-15204d1da4aa@emailsignatures365.codetwo.com>
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cbdf880b-a762-48aa-f66b-08dd6b8831f9
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|376014|14060799003|36860700013|82310400026|1800799024|13003099007|4053099003|4076899003|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?jkdwAyXWXVeRxuZxODfLbw5fwIihgwhU09smffJrpZfGnmEUyqMdlzMij3vl?=
 =?us-ascii?Q?Wb5/7kUam1T7mOhE1m2geTKOywK9JzvldkeNz82cYur8LFmCIfKD5aZXWcQb?=
 =?us-ascii?Q?APOn+5HlIMKUzIUzXoPXSEmYuKpinUdg9JUXK1kfCH4f++KqayAPzrOsDlRP?=
 =?us-ascii?Q?TX6CsPdj6VoHB1Zk67QqARBJi00OaaMd3eH7g+aCCatdakLB4sSVr/SUh8OJ?=
 =?us-ascii?Q?N0uQDD5S4G8Czqtqhq9ZYKSBgHa7ia+sh5V12JaE8AmvyF8rZZfox8cp2lDj?=
 =?us-ascii?Q?rzdHCBlW/F4iZjHBJZ+ArXDXRNaxGOAqnQ6Pu5ARGqvgGhHoWUlf9yWzxqHm?=
 =?us-ascii?Q?v8DaTM6yK2EHBAoqlxllbdxPaYIqEqV+piOL9u02n2iAldNOvWOBGv5iKedu?=
 =?us-ascii?Q?QT6lfKOWAhnm3W9p12pw/OFnhtvjsizaTMBMO+MIZUtU2LU2MFqF7QdrFQHP?=
 =?us-ascii?Q?EVjr292n7FRfK3BVXMaKw9INrVDHEXPY3xHvyBTGByb22FvxBCYHs22MMeID?=
 =?us-ascii?Q?w07fWYCWVyHosDtdOV3eQr8GI0eE+GQPMCbm7GRtxAlDReskhNznczJBelo5?=
 =?us-ascii?Q?JtKMO73SLrrxMI2gfUvhgoseJAj/IN7nM2Q3kzoPPXzodL8HRc54lIxUH7uy?=
 =?us-ascii?Q?4caSTsVLOFJ5Jjt/XyvuJ0vsk7D+xuUgs0T6RIZIXeCsJY5RnDG1syvPrLcy?=
 =?us-ascii?Q?6BgzcmWHrUS5BwFJ1C7CmA3HU9hKC2564wYZAKqGHlaF54RSjDH0q1WU7q66?=
 =?us-ascii?Q?N42KRYdDXXOgd8a66yHqWYjHX4AYnAnMMxiFcjY/HnZSVj8pwA8kWI4fMSKi?=
 =?us-ascii?Q?KaOucPZaQhDQLUqpI872UZMhqLWczt8A1L+/qLrqSaBJRTUEpqK47frX2WO1?=
 =?us-ascii?Q?1DXE6jSWyg5u3bpcKfpCJvOImt68rI7swZnSkRvGkj9CpCe0Tzk+7vIjPaAr?=
 =?us-ascii?Q?SE1Y+ok/dorbr91zaRPms7egQE4Sgjg2A4LfgHD87AVsSJSN6680LprkJ2da?=
 =?us-ascii?Q?IGjdUekvyhzgR2rVnWxKtUVnIvYx9LifGekXZBVSJqXv8XFMDj3dQYETLM/E?=
 =?us-ascii?Q?n/VxUzqFUhwsnWvQVkYPJyKhvHGDh2Ol0vaB4XUQYHefIOay34Ifpk6qnD5t?=
 =?us-ascii?Q?yHIItxuqnilgjcoxLUEzaJfmiSS3MDdcokme+9YzzSrzaFq89XxMLeD079ym?=
 =?us-ascii?Q?1aBDKrqvARLq/sHq5VVwdnjGVWy6acrHJZbm9djqetK/PDLQq0XoOePgHa5B?=
 =?us-ascii?Q?cgZvv/xxj709WEwoems/bkjBd0sD2/VfjsEtbZqgKgpWk5cIObjrIS8MDNZx?=
 =?us-ascii?Q?ko49AEH7GdZDuIrV3IJzaJY5eiOEDCk/Ov5Xu38ptuBZpe8v8z6xL9d+gwRy?=
 =?us-ascii?Q?rvNE3SC1FhHsHGdE5nH2HHTi2LgLq8jZ6vKt3p6echu12Yzumty6Ah5My8Ax?=
 =?us-ascii?Q?4cOeb2StIf0=3D?=
X-Forefront-Antispam-Report: 
	CIP:20.79.222.204;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de2-emailsignatures-cloud.codetwo.com;PTR:de2-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(35042699022)(376014)(14060799003)(36860700013)(82310400026)(1800799024)(13003099007)(4053099003)(4076899003)(8096899003);DIR:OUT;SFP:1102;
X-OriginatorOrg: aerospacelab.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 10:31:28.1760
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d103e5d7-d872-41b7-85a8-08dd6b88339e
X-MS-Exchange-CrossTenant-Id: f33c67b4-96c2-4efb-a920-7ae1e05a51c5
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f33c67b4-96c2-4efb-a920-7ae1e05a51c5;Ip=[20.79.222.204];Helo=[de2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR10MB9073
Message-ID-Hash: LISVOBTBD6FYTKOHW5LDZY773VX7DKZG
X-Message-ID-Hash: LISVOBTBD6FYTKOHW5LDZY773VX7DKZG
X-MailFrom: thomas.dhondt@aerospacelab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [X440] CPLD update
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LISVOBTBD6FYTKOHW5LDZY773VX7DKZG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Thomas D'Hondt via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas D'Hondt <thomas.dhondt@aerospacelab.com>
Content-Type: multipart/mixed; boundary="===============1964747975904821987=="

--===============1964747975904821987==
Content-Type: multipart/alternative;
	boundary="_000_AM7PR10MB32382EC180D4F91C141F096C98A72AM7PR10MB3238EURP_"
Content-Language: en-US

--_000_AM7PR10MB32382EC180D4F91C141F096C98A72AM7PR10MB3238EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I have just successfully updated the filesystem of my Ettus X440 using the =
dd tool.
I now would like to update the CPLD to the matching version.

Following the X440 user manual, I took a look at the files located in /lib/=
firmware/ni/ on the X440 file system.
However, I noticed that there are two files that match the X440:

 *
cpld-x440-10m04.rpd
 *
cpld-x440-10m08.rpd

As far as I can tell, the manual does not mention the 10m04 and 10m08 varia=
nts.

What is the difference between both versions? And which one should I instal=
l on my device?

Thanks in advance for your assistance!

Thomas D'hondt

Thomas D'Hondt
Embedded Software Engineer
| thomas.dhondt@aerospacelab.com
[cid:240315_aerospacelab_mailbanner_brand_bd3dd1c7-bc8a-46fa-ab29-0da2ce397=
538.png]
Rue Andr=E9 Dumont 14B | 1435 Mont-Saint-Guibert | Belgium
www.aerospacelab.com<http://www.aerospacelab.com/>

The content of this email is confidential and intended for the recipient sp=
ecified in message only. It is strictly forbidden to share any part of this=
 message with any third party, without a written consent of the sender. If =
you received this message by mistake, please reply to this message and foll=
ow with its deletion, so that we can ensure such a mistake does not occur i=
n the future.



--_000_AM7PR10MB32382EC180D4F91C141F096C98A72AM7PR10MB3238EURP_
Content-Type: multipart/related;
	boundary="_d12a42dd-f5b9-48f9-a66e-87016325fa33_"

--_d12a42dd-f5b9-48f9-a66e-87016325fa33_
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
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hello everyone,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I have just successfully updated the filesystem of my Ettus X440 using the =
dd tool.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I now would like to update the CPLD to the matching version.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Following the X440 user manual, I took a look at the files located in /lib/=
firmware/ni/ on the X440 file system.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
However, I noticed that there are two files that match the X440:</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:2}" style=3D"margin-top: 0px; margin-bottom: 0px;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0); list-s=
tyle-type: &quot;- &quot;;">
<div class=3D"elementToProof">cpld-x440-10m04.rpd &nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0); l=
ist-style-type: &quot;- &quot;;">
<div class=3D"elementToProof">cpld-x440-10m08.rpd&nbsp;</div>
</li></ul>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
As far as I can tell, the manual does not mention the 10m04 and 10m08 varia=
nts.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
What is the difference between both versions? And which one should I instal=
l on my device?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Thanks in advance for your assistance!</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Thomas D'hondt</div>
=0A=
=0A=
=0A=
<p style=3D"FONT-SIZE: 10pt; MARGIN-BOTTOM: 5pt; FONT-FAMILY: ARIAL; MARGIN=
-TOP: 0pt">=0A=
</p><table id=3D"0.jkfrduw0jg" style=3D"width: 660px;" cellspacing=3D"0" ce=
llpadding=3D"0"><tbody><tr><td valign=3D"top" colspan=3D"1" style=3D"width:=
 660px;"><span data-codetwo-visible=3D"Social links" style=3D""><p class=3D=
"MsoNormal" style=3D""><span style=3D"font-size: 14pt; color: rgb(47, 70, 1=
30); font-family: &quot;Criteria CF Medium&quot;;"><b style=3D"font-size: 1=
2pt;"><br></b></span></p><p class=3D"MsoNormal" style=3D""><span style=3D"f=
ont-size: 14pt; color: rgb(47, 70, 130); font-family: &quot;Criteria CF Med=
ium&quot;;"><b style=3D"font-size: 12pt;">Thomas D'Hondt<br style=3D"font-s=
ize: 12pt;"></b></span><span style=3D"font-size: 11pt;"><font color=3D"#3c3=
c3b" face=3D"IBM Plex Sans, sans-serif"><span style=3D"font-size: 9pt;"><sp=
an style=3D"font-size: 10pt;"><b>Embedded Software Engineer</b></span></spa=
n><br style=3D"font-size: 10pt;"></font></span><span style=3D"font-size: 10=
pt; color: black; font-family: &quot;IBM Plex Sans Light&quot;, sans-serif;=
"> | </span><span style=3D"font-family: &quot;IBM Plex Sans Light&quot;, sa=
ns-serif;"><font color=3D"#2f4682"><span style=3D"font-size: 11pt;"><span s=
tyle=3D"font-size: 9pt;"><span style=3D"font-size: 10pt;">thomas.dhondt@aer=
ospacelab.com</span></span><br></span></font></span><img src=3D"cid:240315_=
aerospacelab_mailbanner_brand_bd3dd1c7-bc8a-46fa-ab29-0da2ce397538.png" bor=
der=3D"0" id=3D"0.0yi10jezzyvo" alt=3D"240315_aerospacelab_mailbanner_brand=
.png" width=3D"480" height=3D"96" style=3D"width: 480px; height: 96px;"><sp=
an style=3D"font-family: &quot;IBM Plex Sans Light&quot;, sans-serif;"><fon=
t color=3D"#2f4682"><span style=3D"font-size: 11pt;"><br></span></font></sp=
an><span style=3D"font-family: &quot;IBM Plex Sans Light&quot;, sans-serif;=
 font-size: 10pt;"><font color=3D"#3c3c3b">Rue Andr&#xE9; Dumont 14B | 1435=
 Mont-Saint-Guibert | Belgium<br></font></span><a href=3D"http://www.aerosp=
acelab.com/" style=3D"background-color: rgb(255, 255, 255); font-size: 13.3=
333px;"><span style=3D"font-size: 10pt; font-family: &quot;IBM Plex Sans Li=
ght&quot;, sans-serif; color: rgb(47, 70, 130);">www.aerospacelab.com</span=
></a></p></span><p class=3D"MsoNormal" style=3D"font-family: Arial; color: =
rgb(60, 60, 59); font-size: 13.3333px;"></p></td></tr><tr><td valign=3D"top=
" style=3D"width: 660px; font-family: Arial; font-size: 10pt;" class=3D""><=
span style=3D"color: rgb(127, 127, 127); font-family: &quot;IBM Plex Sans L=
ight&quot;, sans-serif; font-size: 12px;"><i>The content of this email is c=
onfidential and intended for the recipient specified in message only. It is=
 strictly forbidden to share any part of this message with any third party,=
 without a written consent of the sender. If you received this message by m=
istake, please reply to this message and follow with its deletion, so that =
we can ensure such a mistake does not occur in the future.</i></span></td><=
/tr></tbody></table><p>&nbsp;</p>=0A=
</body>
</html>

--_d12a42dd-f5b9-48f9-a66e-87016325fa33_
Content-Description: 
 240315_aerospacelab_mailbanner_brand_bd3dd1c7-bc8a-46fa-ab29-0da2ce397538.png
Content-Type: image/png; name=
	"240315_aerospacelab_mailbanner_brand_bd3dd1c7-bc8a-46fa-ab29-0da2ce397538.png"
Content-Disposition: inline; filename=
	"240315_aerospacelab_mailbanner_brand_bd3dd1c7-bc8a-46fa-ab29-0da2ce397538.png"
Content-Transfer-Encoding: base64
Content-ID: 
 <240315_aerospacelab_mailbanner_brand_bd3dd1c7-bc8a-46fa-ab29-0da2ce397538.png>

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

--_d12a42dd-f5b9-48f9-a66e-87016325fa33_--

--_000_AM7PR10MB32382EC180D4F91C141F096C98A72AM7PR10MB3238EURP_--

--===============1964747975904821987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1964747975904821987==--
