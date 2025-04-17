Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C6EA921CD
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 17:40:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6DA03385EF7
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 11:40:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744904436; bh=mlzjRigbd4S9BJGTJj4DPrVLGC9GKHEZ4hK87x8kpmc=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Wh7DlH452w+r5Kmu76420n9LXIDOCT3zX3z1OB49RTLOfNdfqH0ObM9Jt+n5xYECU
	 PP8nqAyY9GymB2Nw+y1+enO8iGxHSQU4sYhmoKIhaXTUOKIOo+C0+qCurAz1Ag5I7j
	 sYro+NCPV0TUkJHBKNn6GHPI6e2YynFbaHn5m5aU/anvGXHZc7O8kdcnDV/xwlak/H
	 rfgZ9onixmiHyY87J6gKJAYUJWvwQC8vxIyaFv967SIoFSx7rb5aNLvJcoAkehjLtf
	 kaAoyU/L2AC66Fd0Pp2QdI4qGE8/GlN5AByffCrkpdGCOdY9GIqVbgv0oBx0dzxBqh
	 QBjtgSD8C/jtw==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2128.outbound.protection.outlook.com [40.107.20.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 9FC2E385E9A
	for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 11:39:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=student.uclouvain.be header.i=@student.uclouvain.be header.b="HkgviZ4S";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NhnJ3U6Pt2vxh+n0pqr/wu56RTfZFHv80k2dR61vJjV2cKzCvpxxTCz+TJIX/g/TiTnzVyyTolkTKH4OG+a48zVo0gxT7fkS+9QSbv+Urubjnhs9lB6t45S09rEIHL78q8MkZamI/ef7TFUygAlXyD2al1mYtoU+m0IyKt8DdKWVMjlWkiYfnXMxewggo7TixZIOPrLOkAy+HnYQ5QqDLyMRlc4YZCjleISEBvNuf4dlMHzj5UvdezXmlC824CYbC/K7vHruXKQGzZPzaAV4o9jtOrGTZ4If9DzScorIkZ5spZPCz4V/4cKIU5rW6wTLG9g67bJC3GbE0Wo5zo7Vuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iY4qVo7qGI7W1fez/KOAp6o2oT8D8Cs7ykq0+DA7XYo=;
 b=NQNxwwhPg99E1/R0MOpqRkwx1wJmQUrK7XAQa9/Q90LcTYtQj4tB3/xhNSPQXL8tcvyx7W17XcwRshZQ+ApqcqORaY8TP20Jg7Ke+nX6IGZPWGqpzdfAvlP+SmBHb7WtVJf4V5VqJUcL+ETgzxYYTQOMbWfH9gnVSmES2oebUhpXFZFTUmx3fLjXSGA+U+2jMYNHdbifD0jXIIdd95b/Pd99xt1RH9YtY3i6SuR+4dt51WGbvZ2vqyKrejcyGnwcZRBepNtzMZ/IFi2vUAZTMTye5MletTKfZvHaIzJEsBy2KXCghijkf3yMU37kSi5709sx7oq2eszEW9q7HUuKcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.uclouvain.be; dmarc=pass action=none
 header.from=student.uclouvain.be; dkim=pass header.d=student.uclouvain.be;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uclouvain.be;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iY4qVo7qGI7W1fez/KOAp6o2oT8D8Cs7ykq0+DA7XYo=;
 b=HkgviZ4SRGBWFFZSjWHy1LHEzxn7NLZWBITTfqpDayaxUUpiTiGMIfQKCuyjIVPM2SHUZo0pYAlBWHtKIionNvmm8rHuBmDvEB9af3jYheNY7eGYC6+khw/eSnv/+ePgnkXHzml//mSmCCnt2RWpQNqDe41L04G5vhc11f7DqR0cv5sbYctwBaSarTLQ2u+Oc6xpTkPkVwSJkPOIyFcI44ApLbKiQUFf0+VefDktm4tJd3TYcpsULc2rMmEkFHPssRyWs9tyzxp92leygAapCIzkGkLwUJZhtiUaES9nDmzqipr5E1M4P6yaZLCMOB43A49KCdN4Dyddz/3M2KCODA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=student.uclouvain.be;
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com (2603:10a6:10:2d1::9)
 by DB9PR03MB7567.eurprd03.prod.outlook.com (2603:10a6:10:2c4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Thu, 17 Apr
 2025 15:39:53 +0000
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d]) by DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d%4]) with mapi id 15.20.8655.022; Thu, 17 Apr 2025
 15:39:53 +0000
Message-ID: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
Date: Thu, 17 Apr 2025 17:39:51 +0200
User-Agent: Mozilla Thunderbird
From: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Content-Language: fr, en-US
To: usrp-users@lists.ettus.com
X-ClientProxiedBy: PA7P264CA0510.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:3da::13) To DU2PR03MB7862.eurprd03.prod.outlook.com
 (2603:10a6:10:2d1::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR03MB7862:EE_|DB9PR03MB7567:EE_
X-MS-Office365-Filtering-Correlation-Id: a729c96d-4e2e-440a-0306-08dd7dc618ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|10070799003|376014|1800799024|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SEZEUk8rVkI3V3hWRTNYbFoyUXhJQXA0OU4yaTI1NE5jeTBYaEEyOXptV2R0?=
 =?utf-8?B?eEFlbElJTnNRb3NIK3hUYTRyemk4UmlYS3VlWFRldnlSaDJZVC82Vlk4MXFm?=
 =?utf-8?B?UndVU04zeUVLa3hHdHI5OEdhbFpFaytzWDRnVTVFREtMekxlVGNXbkxCOW9K?=
 =?utf-8?B?c21RUk1RL3JaZUJXOUZ5UURyV00xZnc5Sk4yclhOV3RKa3lmNjBhRXVxd0U4?=
 =?utf-8?B?S1J4SlQwNkZPSmYwMDNPSXRiMXRJbHg5b1c5WjQ0NC81bjZ1eURIdi9WRTBp?=
 =?utf-8?B?Ny80ZDYwakJsZGMyM3RYYStUc01MczJmK25uU1NKWGFOcUcxM3c1dW9CYzBo?=
 =?utf-8?B?b1huMnh5OG41bER0d2RiZTk0OXZUQzBHdHlMQWp0eWhYS05qczRoa1dPNnZH?=
 =?utf-8?B?aGc3Ymo5Z1E0TTQ5NjFEQkh4ZFQ3WDhwVFliWlRyaGNCQXBqTUE3QUo0MWlC?=
 =?utf-8?B?Y1VSQk9wNUlTMVJCVjloS1pRa3ovR1JLSmN0MVVXZk0zMzVza3UxRWU0bUxr?=
 =?utf-8?B?U1hiYUs2ZzFmNDEreW4zNG1ITEM0OHhUVzUrbFo0NHZtamk3QkJRK2N4K0sz?=
 =?utf-8?B?T0cwK2RDWDA3RzE5ck4yL0VZOFlLZW9XWmZlcW95WG9JeEZlSmQ5ZlQwTGx1?=
 =?utf-8?B?Y2Q4aENJbUtrWXg1RHkxVU5JWEpOUlpqWDlidWZ2akowMFM2UFY2UVlCTGN4?=
 =?utf-8?B?ZE9vWXAzZU5NQWQyamQxYjJteFNXekN1a2JtdU9MRUhOdmlGcFJ0amp5NHMw?=
 =?utf-8?B?QS9IaWRPRGtDTmthWUhmVlZFcDZtR3VKQ0NqSFZLT1lPZWljM1J6WERMN3F5?=
 =?utf-8?B?dUNPVGRYdGpoU3h2VTVHclI5ci85K1FQUThpb1dwbTh6N2tRS2l1UXRWdGYy?=
 =?utf-8?B?WUptaDRpc0tVcW1tZmdtUUM5MHI4KzM4VjNyVEs0RnNibzhtNmRaVC9pamNV?=
 =?utf-8?B?aGNsM1JsWmJrbGo4RkpQVkRxNDFScVNqZFBxTERsZHpDWFlNU05Xek8wa0dr?=
 =?utf-8?B?aGIrQXBlcy9SeVJzaEowN1hkT0RZVVA4N2xSaDRlWTR6c2ZRVHBrbEFrSHJ0?=
 =?utf-8?B?emE0VVRKdmFqdGJvM1VEcW9FS1FlWlZwcWpFd0hIVTFVN3RBcGRmL3JBZkFT?=
 =?utf-8?B?VUx0eFZqZFJYOFVuY1Z4UzdMS2piZEVuZUJYaFJ0TmRVdDRWNmpMRUppVXUr?=
 =?utf-8?B?dXIyaEE0U0pFdjB0RzJya3JYbTJQRnFGOWtqVTEyRUdyWCtWTlpkZHR5K1NV?=
 =?utf-8?B?YTBCM280QTI5QzJ1c1h0MGM0N0dxMVkza3poMFpGVUpqWFJzOUNzMTdxdFZi?=
 =?utf-8?B?ckFqay9ZQUc1SHFPRDVJVHRjcitBSDBxSTVvS0QwYWRiT0RDT09NUDFxZnMw?=
 =?utf-8?B?V0dmZkpsdkRKMnJBaHdlenVidVFxeEJLVmRqQm9OOHYwZ1N3azROM0ZuTFQ3?=
 =?utf-8?B?ZUtFZnpQVnRRand0Y2ZTQXcyWGp0RmdoSDI0NWhEMHhnMzRVV2Z5R1BhTytZ?=
 =?utf-8?B?UXhPVFVqcWdRSzJOWHhQY1A5QVhsR3BCVzFMVkNwTEs3Z3RhZE9VWEF5SDdT?=
 =?utf-8?B?U2srZ0djWFg2STA3Wnd4VjVNY0lJd1hDbEJmMnBsRmZ3WUFlT2tLbDJJeC9U?=
 =?utf-8?B?anU3Mys0eWRBUk1ETXcrSWFjbU9IQTFnTXZtN0QvRDEzY1JQeUR2YWRRT0Ir?=
 =?utf-8?B?aFhwRm1lQm1zejIxL001N3g2ZkNzNmg5MC9hT25jTUpEbXU0ODlUaXZDcWMz?=
 =?utf-8?B?Q3pxeHVxcHlmK2FLNjdxR25rNStjWHp2cFY4Kzc1OWhTZWZ3NjFCTTlGQzVm?=
 =?utf-8?Q?Z6xyVUjQ5lLEXFpGIMaLrmO6UQQExCIOuvC9o=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR03MB7862.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(8096899003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?djJGZThweHBDSmJ3amZocVFJUXZkbFBsN1MrNGR0OGFta3Y2UkFlSHdDZ0FG?=
 =?utf-8?B?NUhOTXpoZXpqMTh0ZTUrUU94M3d3cWF5Tld2TGE1b3FZUDl0aCtub3p6a0Vx?=
 =?utf-8?B?NXUxaUZLVkhFYWduNGRkdlVieVNENDdjQml2NFBOTVNad21aN2xDT3ZrVk5C?=
 =?utf-8?B?Qmd3R3kyZTU1K2xaWC8xMFE3d2hXdG90SkJwZUcxeVphTldnKzR6VzVVZGZ4?=
 =?utf-8?B?MExFWVd4WHI0d3pHSWRLTVFGVFp2eVlTTUthdmpscVFEK1B5WmVrbldGWTJ4?=
 =?utf-8?B?OERmNnNmMUE0V2o1K3E3cXVVWUxvYXRBUW5VUFh3NUNMaXJkS05OQmtWYi90?=
 =?utf-8?B?MTlBZU4wcTFuL1FXd0RiLzFTYVlCaGw0WEdXL1gwZmY3SkZlaW9zeXVhUVBj?=
 =?utf-8?B?Ly82eG5WbzJ5ZEp3MlNtbFZ6MzQrWmppcklNK3lQTG1DQ1RCL1U0MEJWK2lC?=
 =?utf-8?B?eEp1aXZ1cW14Uk5tM3lrcUlETTNEaEJPTi9DYzAwMWVDUHcvd0lrTDNWcWtO?=
 =?utf-8?B?UHJtNEdHMlRFeTNhSUVIQjlmVytZejlmdXN4TUNDb2twa0U3QnhSbDlBSFFY?=
 =?utf-8?B?QUo4Zk8yK05wZFBVVlVWMG5oMUZEYmxBVWxCc2lJZnYySTljNkNRVU9ZeGtP?=
 =?utf-8?B?dzJpMVJDQ0dCcmhhQ1dVQ2F2Y1dwQzdNRFU5MWc5Rmhac1hHbGs3OFF6ekF4?=
 =?utf-8?B?MHZ0bXV5MnhtemhaRFhOQWZmaWNwL1Mrbnl3aE4vcUVZNzZLQ1Yxakp4MzNq?=
 =?utf-8?B?c2VaQjg1S3VQRkV5M2IxaG9ONHdQTDV1dlpjWlM1Z1FJc1FJbm94dm9uem82?=
 =?utf-8?B?QzJFUzA2N3d5dnZSejhTK3A1K0IvK3ZyRUp4ckFBbjd2VlozZ1RmYjBMV0Rs?=
 =?utf-8?B?ZmhPUXYzVzczak81SmQzeXBFUGpYT0xtWEs4Y3g3MzVSdGgwUlNVcGV3NXkv?=
 =?utf-8?B?VlFtVTdCMnAzdENxUHVGUWVscXRkdDBmVG5XY2dJOG5jMThSOExUUGdhVUFZ?=
 =?utf-8?B?aENCajRFeGcwaEtDZDZianZYTGREdGJHSm14T3lWMmpoOU52SDVvbzhabGdQ?=
 =?utf-8?B?WXFDUE9laE9ET3BIeXVTNG1JNlQxOGhXSzRHcEVVejhJY0RQOVNYRFNjRlVz?=
 =?utf-8?B?V0RHdFdYVzY3WUFyaFpkRFNkcVJ1SWxhWkZnRXVaenp0ZElyTGJYUldEWDdN?=
 =?utf-8?B?bmN6aVdvVzVQUGM3aXNqN2NMYy9BVEZCOUFSeVZFRGJLOVBjWmt0aEhENW1B?=
 =?utf-8?B?YW9KTE9Sc0JiQmVEQkRkYWZjRWlldGJ1bVAxSkd5ZURvZGpETXZESXcvVDZq?=
 =?utf-8?B?VzVkOHovSVZlTWhsaTZsc0t1c0pYV3IyeHlaZUFaNU1kZkpKRXZwR2FCNlFE?=
 =?utf-8?B?MXpHOGt3WmM1NnU5ZkdoUkU0M29vdjB3bjMvemYydWdYb1c3ekpGeERtZ1NF?=
 =?utf-8?B?a1dlQitOaFM1SE1iQ1FYTUNRQU5EQUxPK05xQ2tPM29PaTlEaWhmeUx3VlYw?=
 =?utf-8?B?ekhpS0M1STc0Q01XYkZWc1dKbUQzVlB1ZTVMQUtHeDlPS0ZiOGpKaGJYRVkw?=
 =?utf-8?B?UGFLYlRsbEY3TkREblZCVDVwU3VYYlpxQXJySGlqWEJ5eTh2RVZ1aWpGS3E1?=
 =?utf-8?B?bytsNDUyM1NKQ3RZOU5sc09jQ1BiZndVSlJqYTQ1WW03dTVTS2h2M05SbTJq?=
 =?utf-8?B?YjI0UEVmNnRTek5tN0hXSzBnRVNOcnFCL2NHRVZSS1UxbzlpaHZmdFh0dVRM?=
 =?utf-8?B?T2t3SUNGVDIyNitZUXkrRGlqanlmaUxRdVY1OEoxNW01dzhUaDlITWRYS1Vm?=
 =?utf-8?B?aWI5eEJWcFpleW1ySGV2TWUrc0dmM1I0dU14WDVpSjBtMHNUNHpFR1p0NGR6?=
 =?utf-8?B?bU1BQTdTL1ZhblJBeS9CVDRqR2JZcE9qRkc5SWR1ZGZaWW1TK1dXMm5ablkv?=
 =?utf-8?B?R21aNkxra29Sa3FlbWJtZUFkRVZPL1RGQXJsZ2hZeFhqeEJmTlFVQXRrZnRS?=
 =?utf-8?B?bll4NCtKUlgwdnNid1JSckdzL2dOeThjWlB0VmZmcko3VW9nK0JSNk1JVS9F?=
 =?utf-8?B?dGRhOVF1citWYXZxbnVYdUthL1ovZ3k3cCs5dWxIZ1dScEVERzA2V2dWVHNy?=
 =?utf-8?B?UVgrSGdnUG5mL1NBNitjMm9kdUNoUVRuV0JIYzM1TUUzbTZoZ2MvUzh0Ui9N?=
 =?utf-8?B?SkZpTkdrTUpJUjg5ekkyRlVCdVEyR1pYQnlUbk1USXBXeDdGWGdTYlFOYXNM?=
 =?utf-8?Q?QF5OZcnzFw0ng26P8AWsCTCPVjy1NXyqrSeRo1oWcc=3D?=
X-OriginatorOrg: student.uclouvain.be
X-MS-Exchange-CrossTenant-Network-Message-Id: a729c96d-4e2e-440a-0306-08dd7dc618ba
X-MS-Exchange-CrossTenant-AuthSource: DU2PR03MB7862.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 15:39:52.9908
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7ab090d4-fa2e-4ecf-bc7c-4127b4d582ec
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: leZIbr6pmUMWWr6vfhtzzgboqlAcX0vbxEK/QoVHTZxrg5FU1mEq+8F5xjcDFR5wIVwBll3kS5ttUgC1a1HU43X3OZCRrgm9dh1RnOTKEZguOYjuWU1NfGUVLFGqZozl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB7567
Message-ID-Hash: DX26PW6RQMIXGU2LZGKHNCEIZUI4H3ZW
X-Message-ID-Hash: DX26PW6RQMIXGU2LZGKHNCEIZUI4H3ZW
X-MailFrom: quentin.prieels@student.uclouvain.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help with AXI-Stream Output in Schmidl & Cox RFNoC Module: deadlock when marking some samples as no valid
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DX26PW6RQMIXGU2LZGKHNCEIZUI4H3ZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6119745548114432373=="

--===============6119745548114432373==
Content-Type: multipart/alternative;
 boundary="------------R0vsCeyhDck0cVZrmh94msl1"
Content-Language: fr, en-US

--------------R0vsCeyhDck0cVZrmh94msl1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm currently implementing a Schmidl & Cox OOT module on a USRP X310 as=20
part of my master's thesis. (For those interested, the code is available=20
here=20
<https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latency>=20
(https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency).)

The purpose of this block is to detect the beginning of an OFDM frame =E2=
=80=94=20
specifically, just after the Schmidl & Cox preamble. I want the block to=20
forward *only* the "valid" samples (i.e., those that are part of the=20
actual OFDM frame). So when I call |rx_stream->recv()|, only actual data=20
packets should be received by my UHD application.

My first idea was to control the |tvalid| signal of the AXI-Stream=20
interface: setting it to |0| when the data was not a "valid" OFDM=20
sample, and asserting it (|1|) only when the data was valid. However,=20
this seems to cause some kind of deadlock. My UHD application always=20
times out and receives no data. Interestingly, when I output zero-valued=20
samples instead of deasserting the |tvalid| signal, I can see that my=20
synchronization mechanism is working as expected. This suggests the=20
issue likely lies in my use of AXI signals or a misunderstanding of the=20
RFNoC protocol.

_Note_: my configured SPP (samples per packet, here 200) is smaller than=20
the length of the actual OFDM frame, which consists of thousands of=20
complex samples.

So here's my main question:
Given a continuous stream of data (currently configured as packets with=20
200 samples each, where every packet is valid), how can I output *only a=20
subset* of this stream =E2=80=94 a specific sequence of continuous sample=
s=20
(potentially spread across multiple packets) =E2=80=94 such that only thi=
s valid=20
subset is received by the UHD application? Alternatively, how can I mark=20
only part of the stream as valid for the receiver, while discarding the=20
rest?

(For those interested in the code, this behavior corresponds to when=20
|output_select| is set to |2'b01| in the following module: detector.sv=20
<https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga=
/ofdm/rfnoc_block_schmidl_cox/detector.sv>=20
(https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga=
/ofdm/rfnoc_block_schmidl_cox/detector.sv)=20
, which controls forwarding of input data only when in the |FORWARDING|=20
state.)

Thank you all for your help,
Quentin



--------------R0vsCeyhDck0cVZrmh94msl1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p><font face=3D"Aptos">Hello everyone,</font></p>
    <p><font face=3D"Aptos">I'm currently implementing a Schmidl &amp; Co=
x
        OOT module on a USRP X310 as part of my master's thesis. (For
        those interested, the code is available <a href=3D"https://github=
.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latency">here</a>
        (</font><font face=3D"Aptos"><a class=3D"moz-txt-link-freetext" h=
ref=3D"https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latenc=
y">https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency</a=
>)</font><font face=3D"Aptos">.)</font></p>
    <p><font face=3D"Aptos">The purpose of this block is to detect the
        beginning of an OFDM frame =E2=80=94 specifically, just after the
        Schmidl &amp; Cox preamble. I want the block to forward <strong d=
ata-start=3D"679" data-end=3D"687">only</strong> the &quot;valid&quot;
        samples (i.e., those that are part of the actual OFDM frame). So
        when I call <code data-start=3D"777" data-end=3D"796">rx_stream-&=
gt;recv()</code>,
        only actual data packets should be received by my UHD
        application.</font></p>
    <font face=3D"Aptos">My first idea was to control the <code data-star=
t=3D"899" data-end=3D"907">tvalid</code> signal of the
      AXI-Stream interface: setting it to <code data-start=3D"958" data-e=
nd=3D"961">0</code> when the data was not a &quot;valid&quot; OFDM
      sample, and asserting it (<code data-start=3D"1025" data-end=3D"102=
8">1</code>)
      only when the data was valid. However, this seems to cause some
      kind of deadlock. My UHD application always times out and receives
      no data. Interestingly, when I output zero-valued samples instead
      of deasserting the <code data-start=3D"1246" data-end=3D"1254">tval=
id</code>
      signal, I can see that my synchronization mechanism is working as
      expected. This suggests the issue likely lies in my use of AXI
      signals or a misunderstanding of the RFNoC protocol.<br>
    </font>
    <p><font face=3D"Aptos"><u>Note</u>: my configured SPP (samples per
        packet, here 200) is smaller than the length of the actual OFDM
        frame, which consists of thousands of complex samples.</font></p>
    <p data-start=3D"1585" data-end=3D"2052" class=3D""><font face=3D"Apt=
os">So
        here's my main question:<br data-start=3D"1612" data-end=3D"1615"=
>
        Given a continuous stream of data (currently configured as
        packets with 200 samples each, where every packet is valid), how
        can I output <strong data-start=3D"1752" data-end=3D"1769">only a
          subset</strong> of this stream =E2=80=94 a specific sequence of
        continuous samples (potentially spread across multiple packets)
        =E2=80=94 such that only this valid subset is received by the UHD
        application? Alternatively, how can I mark only part of the
        stream as valid for the receiver, while discarding the rest?</fon=
t></p>
    <p data-start=3D"2054" data-end=3D"2389" class=3D""><font face=3D"Apt=
os">(For
        those interested in the code, this behavior corresponds to when
        <code data-start=3D"2123" data-end=3D"2138">output_select</code> =
is
        set to <code data-start=3D"2149" data-end=3D"2156">2'b01</code> i=
n
        the following module: <a href=3D"https://github.com/quentinprieel=
s/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/det=
ector.sv">detector.sv</a>
(<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/quentinpri=
eels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/=
detector.sv">https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/=
latency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv</a>)
        , which controls forwarding of input data only when in the <code =
data-start=3D"2369" data-end=3D"2381">FORWARDING</code> state.)</font></p=
>
    <p data-start=3D"2391" data-end=3D"2429" class=3D""><font face=3D"Apt=
os">Thank
        you all for your help,<br data-start=3D"2419" data-end=3D"2422">
        Quentin</font></p>
    <p><br>
    </p>
    <br>
  </body>
</html>

--------------R0vsCeyhDck0cVZrmh94msl1--

--===============6119745548114432373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6119745548114432373==--
