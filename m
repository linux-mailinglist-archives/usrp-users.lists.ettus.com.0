Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0874B96279
	for <lists+usrp-users@lfdr.de>; Tue, 23 Sep 2025 16:10:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46554386121
	for <lists+usrp-users@lfdr.de>; Tue, 23 Sep 2025 10:10:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758636638; bh=zA8nq75Q45q84KbiZcrIpbh8K/qlfB93tQQd8+LjW0s=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=T3uaSQztPp7a8c9kqHZMXfcFcwENkxJETzrsPKxx0gQAM9IezlvNfK6pcZpv6iY1/
	 bC2tm4D+01RerAQ6drgunwtp2DKyJoOSOox2mn+kKld+zlrn/9lOAOxwZd/qe4Vv8d
	 AgOt+ExSKImsaspHixu70Y05UgNveRKriFLPo5KjwNIIZcx9RxqkPy9SFBCUqV9QFv
	 0VvQ5okJbn3FF/GXDiScg6Mq4fj8qtaXZ5mFHkgtmQIL0CQOu56eH+WfJ/CCLj8sMz
	 F8UYgJJwarsj19+7RCnzI+YV2Uw3dl1k8aIxleFhtIzqdzDmrDxJmg/i+DDdCG1Gp4
	 BHJSH1zH20UTQ==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id ED077385F7E
	for <usrp-users@lists.ettus.com>; Tue, 23 Sep 2025 10:09:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="OahkQOHV";
	dkim=pass (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="VnFGjpU6";
	dkim-atps=neutral
Received: from pps.filterd (m0484889.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NCDuJI022451
	for <usrp-users@lists.ettus.com>; Tue, 23 Sep 2025 14:09:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=gvpbQS6aXMVTBEbVzEBfcBpQ07SD
	zCg2z03qyOTldoM=; b=OahkQOHVZXlkGiKxbBXUe2gSFDNQz1WHPcMTUW8zIVJm
	K0M08jD+hBQLTuzj+TA6a6fdDRI599/lWekf5v5MmaMwto8z/5h0jnZSNeoyOUNd
	vtrl7eJb39F4Hg+j+Jl5nF8n4g3b2lAeQ06j8SLo064wjEyqgg5m8dxdUlCDzl8f
	lxRw4hC61hmtHMbgpFGYD6yjURqgmZIEaKqYXKx+SBeGyUV2eRGoDcoW2nxmOzIn
	p+bZI+jmtjK2nJriYBBLW2KEyFZ6ed0VGqiWk0/4wzEqzQGvT3luOr6A8X2pwQcd
	ZhAfDP1zvX5Q74t1q3ovpDJkLEeOrZzw1TttBltnAA==
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012044.outbound.protection.outlook.com [52.101.43.44])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 49b591jrbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 23 Sep 2025 14:09:35 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uI0wEMrDj70Op43JVGbLsiXB/REucAa2svd5LYf9sd8Dcjfc42d8tWkUlwd6KFUpdlc2944DM1Re6zZ8DzftC86IAc7BZKKKAAtq5dq1yO/QRnHcK9VgP9QzIfUqlEbmcUXs3zle0IWeqbAaBZQ/R1Xmp4GmQXd3cNzgXg4DkngtjAB1Geo3nOoVZtyK6c+cJ1HOGgr2QQjWSG+Pe7zmRZt5O9eICSWZh0Xv8Dcpt3aEu9Xa0Adh9qYeOGGSKwmHm/MEgH+lmocBHh7K4UR0/w02lh1pmkh3UjPy9q2nXNbooyJfErX2mSmfcbOOiE4RLo6ulZzIxdXb6p1cV2AWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gvpbQS6aXMVTBEbVzEBfcBpQ07SDzCg2z03qyOTldoM=;
 b=i+lypNi31vAhc8BFAdoygnH5R0QxSt1FXOrifP2oL2JBzNy7yl9AJS5Wad75dsll2xLJ4vzRgCiEAtCqRzebKMwzmSXVe0ZW680kGc54UPnRIzKDYXKDthqYB3T0bVNg9q6qyUI/rS/eLmWVI8eC8xqbbUxng7Ed4IKb208/Z8quX8/WrvwKpbiDM+fr0ud85YgghcI4Zx6ZHwstMP/hPwmpAcNPFIMhJExSjV+zHZ8ZRwEe3CxzGQgeDJVCm0vT4CVQ4xotj3co9aTZ/k9p5nhXQFUnY03WVAyFPTVC0KEj8FE4NNid6JYKqbzg8XcigQRWj8epVv3c5rMo1c1Peg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gvpbQS6aXMVTBEbVzEBfcBpQ07SDzCg2z03qyOTldoM=;
 b=VnFGjpU6U6fvidDrbkrjRy+noRZZVGiPUAzRdR3tnKVNtc1P7KcDxYvov+LwC4pRvB8cHqPMpPvKUe+7UpQTeciu6aXOS7WGxgNaB2NiPf7UsB973WCXEKjjp+1oijHhiRWeIFXV+SdQfgFF5eUg60/crNzaTlvqkQ0hFBgKXIKvm5VucVWL8951yp9v0dXlTQcjXzRdKcY7WwsT9V1VcL5Qcpgl8cvQHN9j5MjP5ZQCuMB3wOOBTEFkMgXFZsBP5cqveg2LBuguSf9ZqLINJtv4mHm13XaREejdk11CIj89bVcBkM5GiiiPhRrZD4AXHsUL3xQRnOfgJZ6WZhGUxA==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by SA1PR10MB7555.namprd10.prod.outlook.com (2603:10b6:806:378::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.18; Tue, 23 Sep
 2025 14:09:32 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9%6]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 14:09:32 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Rx antenna Tx/Rx with full duplex streaming state
Thread-Index: AQHcLJOuDc2jUbiDfU+cmUBPFIlCsQ==
Date: Tue, 23 Sep 2025 14:09:32 +0000
Message-ID: 
 <CH0PR10MB51798275B2E7A519E2A260BE991DA@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <CAB__hTS_UJDzk+NgQoObHMt2F0G2S0gc-_4qHZQ-DJjmbDfuYA@mail.gmail.com>
In-Reply-To: 
 <CAB__hTS_UJDzk+NgQoObHMt2F0G2S0gc-_4qHZQ-DJjmbDfuYA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=8e4ec945-a3b4-4c78-8a6a-4f041ea2308c;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2025-09-23T13:53:45Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Tag=10,
 0, 1, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|SA1PR10MB7555:EE_
x-ms-office365-filtering-correlation-id: d39418ff-87b9-4c0d-deec-08ddfaaad164
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|7053199007|13003099007|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?bWVEeTFqUG1UMm1kMU1Vc01OUU55MHdYTXBycFBGeHBkTEZOa0FrUkZyM2FF?=
 =?utf-8?B?MlJFMm01MEVHRzltVjJTbUJvTnh0WnA1cXAxWHRlbXFIMVhPVmFLR0drUTE1?=
 =?utf-8?B?cm9BVWZlaWl5Q0lGZDdKS09OaFFJWjMwWXlXTVgza0NEVVF3cFVSMlRoMExO?=
 =?utf-8?B?Y21GRWlYSjI3b3NDMVErcUpHQlNkclJYVHpXRU5uVHZhdHNZQ2ppUmZHVXhB?=
 =?utf-8?B?cW9PdEc3bEsxL1JtQkdNSi9ES0dGS3NtbHUxdW9Lbk9UM3dIeXB0cGRRWmFm?=
 =?utf-8?B?WWZIMFJmcnp3cUtYYTZ3eFhCMkpTV1BHbUgvbXY3bVNGYmh6c3JIcWJXYjFo?=
 =?utf-8?B?bW9oNWhHdEMrKzFyQnpVZjMvVzc3c3lUZ3luMllrUTNwM3BldllocktHd3JI?=
 =?utf-8?B?VXZ5clBSTmdYV0NyeUcwcTBaMCs0NDlsYzBwVksvZ1pzVmx2Z0hpSW4vTWh6?=
 =?utf-8?B?WC9LRFBjc3NuWWQ0RjhSUmkyYk5yTUpJRWp3djc4SDQxZHRTUmY4bGI1THh6?=
 =?utf-8?B?Y2FzTC9PdUh6aWhER1pvWE81OWQwZmFRcWtPclNQRnR3dDhiVS83SWR3dTcz?=
 =?utf-8?B?aTVpT0lBTXRaMW5jSk1CZzJVckIzL1VTUDhIVzdSVFlyTytwZ00wR3JBLzhQ?=
 =?utf-8?B?dXZHVkVrb0t0OWYxelpvcjFmbDFYZFYrL2puZ1BSdUl0eTRoU0hEaE9qOTNX?=
 =?utf-8?B?OEFkMHhXU29qMXl4M3dCREVwZ1U5UGZzcmNMOG4wbGJnQjBRZEN5OWZNOWhX?=
 =?utf-8?B?QWdleXJrV1owb3pDdSsvMlcrd3pCaHRhYmZTK2VWNXl5bkVwN2o3dklpSmkw?=
 =?utf-8?B?bklMTkxseU5kRWoxSklrWkJpNkJ5dEg3THF0UWdGYlNTZm9Tai9MTHF3OGpp?=
 =?utf-8?B?WFZDdUtPOVQ4Z0duZnNDL080cjAyV2prcG03ZElGY1phWC95YUt0NTFCc1pp?=
 =?utf-8?B?TXZqbWRmL1NGcG43VU0wd0ZBVnZWMEZ3VlhRVWx2OTZWM0NUUnNnc0ZPOTRa?=
 =?utf-8?B?cFlxT0puQXg4My9Udk8vVkVoa2xYYlBVeUNjU1ZMdU92V2FjanF3VjFUcGEv?=
 =?utf-8?B?VEtWVTRaazBNaWlxbWVWZ3dpV29HNzZyT1RyRmUrU29IOUZHSHJtOXRhZWRI?=
 =?utf-8?B?Wm9DREYyN1dhWFU4UHNUWXlnYWZvQzkwZDJBcklxQVdWVkt0SXZiT2NWWHYy?=
 =?utf-8?B?NC9yeXN4YU5ZelNzU0xqN3dZM1BKTTlQWkNNYUV5NS9WTFhlNTlMQkhiRmRN?=
 =?utf-8?B?TDlwbGtWeTY5VUY4dVEwV0JuUFFhSm8rOUFhaGNIdWNnTG9qODRqQitEcjNY?=
 =?utf-8?B?bTQyN2NCTkhtOUJ0TUZWczJxeHoyT1YvcTZrdTd6Zjc4WXdSeGQrVEtMeVdx?=
 =?utf-8?B?TjVuMzUyRndYVFFYMEI2dk45RjVBTnh6K1V1emZMYURNS281V2R4QWhVK0E5?=
 =?utf-8?B?WkJPZjRRbW1ydHdWNkZsK2dwMEIyZEJ5ampZdjM4dlVPYTZ2VG80akFBWE8y?=
 =?utf-8?B?WHpzNzA2eU9BSVZ1OHI0R3B2KzFEbkdQK1lEZytRQlUrNFB2NHAydzFnYklG?=
 =?utf-8?B?bmtvVnNSbldkNXNQbWpZN0FRdnVEYjZndUZROERlUTVVZ0J4WlRlRzNBT0JH?=
 =?utf-8?B?SUtobXJ6RTd5MFJuY0J0cjFBUWw5T2tHZWpoS0pPOGlVTHRMNHQyRDZjUDdW?=
 =?utf-8?B?enFPTXNQR0p5UzA0OE5sd2twTGVaUm1HOXVHYmplWG54dVNNRkFkNE85bXlo?=
 =?utf-8?B?NG53VFR2YURBdE95L3NmckU1OHdPeU9sQllHMDAvYzVKNDJIUE1Oemx1M0F3?=
 =?utf-8?B?ajczWG16dGR6ditsNWRxT2YraEJKdWhuYStaWUVMZ1pYTVltWk1keTdPQXg1?=
 =?utf-8?B?aEdsQ1VMTHdMWk40eTl2N3A3ajhiN25yWlMweit0VkgvTE0yTGp0bmEwZnov?=
 =?utf-8?B?L3RMTDlrcG1DNnVMT3U4ekwyT2RiNEp0bnYxUXQwKzYyTTBqRmpXUm9OMS83?=
 =?utf-8?Q?f3etUSqyaS0J2/2BXyOvhFFlYPuuRY=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(7053199007)(13003099007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bzBjQTAycXhHSjYrWG40b0tya2lEdWxtbmdjTDhvaG5NVTR3UlNiOHZlKytQ?=
 =?utf-8?B?OWxhSXNiNVV5VGxhdkZQSStRcnNkWS9sL3NHTVh5T0ExQmJ3Q3VQWktpcjlC?=
 =?utf-8?B?ZFdkVVFTN0ZZUUlzTXJseVJJaklZS1ZBSlRrZWUxNkZncHlyeXhMZ2l1T3BX?=
 =?utf-8?B?NG9iTkxYSWRFSkRRWmZ3bkZzMEJ0ak4xRFJVMUNSdjAyWG9mVlhJVzB0Mkxn?=
 =?utf-8?B?WEhTYUpPK2NoVE5TMGtweXo4elgvZHk0WTJPQ2xCZ3F5clFUaStCQWNJWE1s?=
 =?utf-8?B?dTkwRUprQ1pCdStHREtxbk94VGFocTZsWjExY1c3RkRGcUFyQ1JVV2tjeHo5?=
 =?utf-8?B?dmdkdFk0RHRuN0h2OStBTHo3UVo4cVd1Y2N0VWNQQVlpclplTFZ1bEcwQnpE?=
 =?utf-8?B?eUpDRXU0ZFpoNjhQVXo0bEVHQkdmR1pnU0ExL0Zxcm1xY3ExV3RDaDhGM1hE?=
 =?utf-8?B?bnBJTTlUMUk4NXdzb3pBdEF5c0hkOVBQSCsrNTFEOGZuMzFnazZ3cmp0NTRh?=
 =?utf-8?B?OVIwRDk3ZjBieFpCSmFJaktsV0l4UHUxN1k2eVpCVTNxNDN0R3VMZnZHbURv?=
 =?utf-8?B?dlVsemkxRTh2bm91MHNSS0hreVZndkdobFhjYklLdXdkeTZtd3N3YjVMeE1N?=
 =?utf-8?B?aU1JWXhDcW1TaUxqRUc5NUZZTWNqMXlaeHMwei9TNis0QTNuczh2TE5WSjlW?=
 =?utf-8?B?ejczY1hKcWtmaXY3ZkJEQUZVVmJmaTBrMHNwa05tWG1lQjZrOHJ1Ty9FcmJI?=
 =?utf-8?B?TmJnakZwYlo5NVQ2Q2dtN3k2SHlwN1dyMyt2K0IzSG5qcDZ6cHRMcWxldEdF?=
 =?utf-8?B?OElPalU0cGZKYURnUGV5dGZrNDMyS3c1SWhkSWVWSWRzRGg0UGhPZ2Z0RDdL?=
 =?utf-8?B?Z280TC91QncwVHU2QmRVUU1RcFFvT2ljZzB2WEc3aUZJcjJHOEtmVTVTMi9V?=
 =?utf-8?B?d3RWWGlmc0ZvSHNOUFRrRXpPZWt6Vllhd0o0dlJ6aktmSFdSakNWRTVFMlkx?=
 =?utf-8?B?UHNJbmpRNkdMWnN1dDBPd2JqcERraFg3VGF3WjNBenZnZGUxMkdSM0d0V2NQ?=
 =?utf-8?B?QW1WbkFPV2Yxb013emJ4eGMwTGtwVXQzRlpzNXZVVUMyYS9hS3A4SERjZitR?=
 =?utf-8?B?emtIaUpmYTZBTmUvVzFPZStHTjdDN0xOQzUxSGJ0a3RKTXJtRTRVb2VWeHYr?=
 =?utf-8?B?ZnN5YzA0MFVnSDh5enEwVS9ZdHFpckx1NHVwNk43anNiS0Y3VnBFSlAwNjY1?=
 =?utf-8?B?Y0VkK3hoUmxYdUs3bktZRk1peWF5L3lMNTRsQmdySGM2N0FZMzdWak9MV2Ev?=
 =?utf-8?B?Z1haQjl3OUtDU2ZOTHF4OGdyZEFWTFpFRHBMdDlTZG5IcG1KVkIyVTFTZlRk?=
 =?utf-8?B?QmpuU1hVMTVndWs0b0E5a0JIMnM5Z0VLV0JsOGgyQVptZkhlMC9mdWpZY2U2?=
 =?utf-8?B?d1dKeFdNSzNaQXhKUUtYRzg3V3pOYXVQcDVWaHlEQ2FiQmdnajJ2ZThaNEtO?=
 =?utf-8?B?Mmt2RG9MRjFtWXA4WExqZmpiWTNZdjVtWFJFajBCbzlNSnR1Y1Q0Tm4wWGR5?=
 =?utf-8?B?ZVlOSGpMTThGMXNIbXdvRk0rVDgwd2lSM1Y1S2k2VjFjNVNVNW9IUm5HMUMw?=
 =?utf-8?B?NWZpSUJRdUFEbnRFOHRPMDlFRXdFem1aeTkwSStjTDRLYjdGSjYya1ZIUlR6?=
 =?utf-8?B?MFVmQjBHSHBCaEMvM1NqdnFKdHpxTUYrK0Y5QzhHY3RxTlpZcTE1cG1Nekto?=
 =?utf-8?B?RVB6ei91Zi94WXVrY3dmS3dFMmd2Wlg3OWZwL3hnd3dUUVBTL0VYVjBEajM5?=
 =?utf-8?B?NHlMSHZ0N0c2TDR2V3FuaUFURkNyYUlOblBrRkVDKy9OQjJ2eStaR2hHOTRO?=
 =?utf-8?B?eTBsaXRTK2N1cDBlSWR0UCs4WWR3S204NHdqQlVDTTVMWncyRXpFbVZMVWdh?=
 =?utf-8?B?MjY5WXpOVEw2STVOYjgzRXpJNForekhjbm9taEoyWVNVWXphYXFtc0RCWTJh?=
 =?utf-8?B?ZXdKcWVielV6QjdFRVhwYkJZOStDRUY4Z0RwaEhnQkVmQnRDWThMd2hhejE3?=
 =?utf-8?B?TGVLNHFyY0lWMzRsTzA3c2FUY0hrekpEalY4R0N4a0Z0bTZNblJ3R0k1RE5i?=
 =?utf-8?B?d1hrTENJUElSUTA4Q2kxWEpQTUFJZy9hQURFSUFVdU5iQUQySjlQY211TEJJ?=
 =?utf-8?B?YWc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d39418ff-87b9-4c0d-deec-08ddfaaad164
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2025 14:09:32.0838
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UuN6G+1k0Trd45Npc+ryPixrFl0Gi/CCP0McQoyNDDfLH7frKzoBycZY0WPkKID4bedy3UiIwFdgoJBVnc9jp7/M282HVFT7vDyPuTAj+lI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7555
X-Proofpoint-GUID: 4DWSGZ2voc56-Nk9Q5XKrxhqPB2IiVa6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDEwOCBTYWx0ZWRfXzBJLx5XhTDTl 3yKFb4i9mZEx3ZwPQtzG0/vPgIKffDlWCUIyCix+OIG0dbpUxa7LQV4cLl7FNgyvXfxKDqtjzHV YwzpL73UfUa+BYSeY32fcbX2WYyGCtuc5H5IYLnquo+jdYzZbdNf8/te5Rq3kMX0MF6p1VyhfqV
 RGDW9go+v7UC8o2C4uMkKJzfp+m7aW7tl1IxMNTUAnIVIlgqsGCZQ980GvxW+0WZiDQtXpL0XeL QmQPQPgc9IRZvzs0p2cedwXciqO8nr6kTlbDjjEF92UJGZ+oSHymlwDlmy5+6WVyRIrLKa9FVAg yWgf7Ou/zMIOm9rwGP7hY8j2Gb7bvreg+t7vbcZHHjPl5WviXXpFqBPdC6H9Zyhhl+RTDMzDOkv tfTUR9/0
X-Authority-Analysis: v=2.4 cv=VJzdn8PX c=1 sm=1 tr=0 ts=68d2aa1f cx=c_pps a=JJOFz727VvkGy7wKLfv01w==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10 a=ZPWZ4rD8_x8A:10 a=NEAV23lmAAAA:8 a=etiEgX_XAAAA:8 a=uN7ze0LdFC77vXGzmPkA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=C6Ui-OwO1A4lh8VZy6oA:9 a=pTKNMV7P6aV6jLuh:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-ORIG-GUID: 4DWSGZ2voc56-Nk9Q5XKrxhqPB2IiVa6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 adultscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509220108
Message-ID-Hash: 4PZJYQUC6QTYHC6MPRP7NAS3HGXYSON4
X-Message-ID-Hash: 4PZJYQUC6QTYHC6MPRP7NAS3HGXYSON4
X-MailFrom: prvs=8361faeeca=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx antenna Tx/Rx with full duplex streaming state
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHV2KLFGDIVACEYFHBTPD7SULCCG7JYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============6216003685373939072=="

--===============6216003685373939072==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB51798275B2E7A519E2A260BE991DACH0PR10MB5179namp_"

--_000_CH0PR10MB51798275B2E7A519E2A260BE991DACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iLA0KDQpMb29raW5nIGludG8gdGhlIHpieF9jcGxkX2N0cmwuY3BwIGl0IGxvb2tzIGxp
a2UgdGhlIFJYIEFudDEgc3dpdGNoIGlzIG5vdCBtb3ZlZCBhd2F5IGZyb20gdGhlIFRYL1JYIHBv
cnQ6DQpodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91aGQvYmxvYi9tYXN0ZXIvaG9z
dC9saWIvdXNycC9kYm9hcmQvemJ4L3pieF9jcGxkX2N0cmwuY3BwI0wzMjItTDMyNQ0KYW5kIGh0
dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9ob3N0L2xpYi91
c3JwL2Rib2FyZC96YngvemJ4X2NwbGRfY3RybC5jcHAjTDI3Ni1MMjc3DQoNCkZvciB0aGUgVFgg
cGFydCBJ4oCZZCBoYXZlIHRvIGxvb2sgdXAgd2hhdCB0aGUgYW1wbGlmaWVycyBpbiB0aGUgYW50
ZW5uYSBzZXR0aW5ncyBtZWFuIGV4YWN0bHksIHRob3VnaC4NCg0KL01hcnRpbg0KDQpGcm9tOiBS
b2IgS29zc2xlciB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQpT
ZW50OiBNb25kYXksIFNlcHRlbWJlciAxNSwgMjAyNSAxMDoyMyBQTQ0KVG86IHVzcnAtdXNlcnMg
PHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogW0VYVEVSTkFMXSBbVVNSUC11
c2Vyc10gUnggYW50ZW5uYSBUeC9SeCB3aXRoIGZ1bGwgZHVwbGV4IHN0cmVhbWluZyBzdGF0ZQ0K
DQpIaSwNCkkgYW0gd29uZGVyaW5nIGlmIGFueW9uZSBrbm93cyB3aGF0IGhhcHBlbnMgd2l0aCB0
aGUgVHggYW5kIFJ4IHN3aXRjaGVzIGluIHRoZSBjYXNlIG9mIHRoZSBSeCBhbnRlbm5hIHNldHRp
bmcgb2YgVHgvUnggZm9yIGEgZnVsbC1kdXBsZXggc3RyZWFtaW5nIHN0YXRlLiBJbiBwYXJ0aWN1
bGFyLCBJJ20gaW50ZXJlc3RlZCBpbiB0aGUgY2FzZSBvZiB0aGUgWDQxMC9aQlggd2hlcmUgdGhl
IHN3aXRjaGVzIGluIHF1ZXN0aW9uIGFyZSBTdyAxIChSeCkgYW5kIFN3IDExIChUeCkuICBJdCBz
ZWVtcyB0aGF0IGlmIHRoZSBzdHJlYW1pbmcgc3RhdGUgd2VyZSBSeCBvbmx5LCBib3RoIG9mIHRo
ZXNlIHN3aXRjaGVzIHdvdWxkIHJvdXRlIHRoZSBUeC9SeDAgcG9ydCB0byB0aGUgUnggcGF0aC4g
QnV0LCBmb3IgdGhlIGNhc2Ugb2Ygc2ltdWx0YW5lb3VzIFR4L1J4IHN0cmVhbWluZywgSSBleHBl
Y3QgdGhhdCBTdyAxMSAoVHgpIGlzIGNoYW5nZWQgdG8gdGhlIFR4IHBhdGguIFdoYXQgSSdtIHVu
Y2xlYXIgYWJvdXQgaXMgd2hhdCBoYXBwZW5zIHRvIFN3IDEgKFJ4KS4gIERvZXMgdGhpcyBjaGFu
Z2UgdG8gdGhlIFJ4MSBwb3J0IG9yIGRvZXMgaXQgcmVtYWluIG9uIHRoZSBUeC9SeDAgcG9ydD8N
ClJvYg0K

--_000_CH0PR10MB51798275B2E7A519E2A260BE991DACH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpBcHRvczt9DQovKiBTdHlsZSBEZWZpbml0
aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJn
aW46MGluOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IkFwdG9zIixzYW5zLXNl
cmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5
Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWls
U3R5bGUxOQ0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToi
QXB0b3MiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0K
CXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNpemU6MTEuMHB0Ow0KCW1zby1m
YXJlYXN0LWxhbmd1YWdlOkVOLVVTO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWlu
IDExLjBpbjsNCgltYXJnaW46NzAuODVwdCA3MC44NXB0IDU2LjdwdCA3MC44NXB0O30NCmRpdi5X
b3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0
ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEw
MjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNo
YXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAv
Pg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFu
Zz0iREUiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWst
d29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMi
PkhpIFJvYiw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86
cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVO
LVVTIj5Mb29raW5nIGludG8gdGhlIHpieF9jcGxkX2N0cmwuY3BwIGl0IGxvb2tzIGxpa2UgdGhl
IFJYIEFudDEgc3dpdGNoIGlzIG5vdCBtb3ZlZCBhd2F5IGZyb20gdGhlIFRYL1JYIHBvcnQ6PG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48
YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91aGQvYmxvYi9tYXN0ZXIv
aG9zdC9saWIvdXNycC9kYm9hcmQvemJ4L3pieF9jcGxkX2N0cmwuY3BwI0wzMjItTDMyNSI+aHR0
cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFzdGVyL2hvc3QvbGliL3Vz
cnAvZGJvYXJkL3pieC96YnhfY3BsZF9jdHJsLmNwcCNMMzIyLUwzMjU8L2E+PG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxl
PSJmb250LXNpemU6MTEuMHB0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5hbmQNCjxhIGhy
ZWY9Imh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9ob3N0
L2xpYi91c3JwL2Rib2FyZC96YngvemJ4X2NwbGRfY3RybC5jcHAjTDI3Ni1MMjc3Ij4NCmh0dHBz
Oi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9ob3N0L2xpYi91c3Jw
L2Rib2FyZC96YngvemJ4X2NwbGRfY3RybC5jcHAjTDI3Ni1MMjc3PC9hPjxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5Gb3Ig
dGhlIFRYIHBhcnQgSeKAmWQgaGF2ZSB0byBsb29rIHVwIHdoYXQgdGhlIGFtcGxpZmllcnMgaW4g
dGhlIGFudGVubmEgc2V0dGluZ3MgbWVhbiBleGFjdGx5LCB0aG91Z2guPG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIg
c3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPi9NYXJ0
aW48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4t
VVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25l
O2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGlu
Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9u
dC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYi
PkZyb206PC9zcGFuPjwvYj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4w
cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4gUm9iIEtvc3Ns
ZXIgdmlhIFVTUlAtdXNlcnMgJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0Ow0KPGJy
Pg0KPGI+U2VudDo8L2I+IE1vbmRheSwgU2VwdGVtYmVyIDE1LCAyMDI1IDEwOjIzIFBNPGJyPg0K
PGI+VG86PC9iPiB1c3JwLXVzZXJzICZsdDt1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSZndDs8
YnI+DQo8Yj5TdWJqZWN0OjwvYj4gW0VYVEVSTkFMXSBbVVNSUC11c2Vyc10gUnggYW50ZW5uYSBU
eC9SeCB3aXRoIGZ1bGwgZHVwbGV4IHN0cmVhbWluZyBzdGF0ZTxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjwvZGl2Pg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNw
OzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhpLDxvOnA+PC9vOnA+PC9wPg0KPC9k
aXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SSBhbSB3b25kZXJpbmcgaWYgYW55b25l
IGtub3dzIHdoYXQgaGFwcGVucyB3aXRoIHRoZSBUeCBhbmQgUnggc3dpdGNoZXMgaW4gdGhlIGNh
c2Ugb2YgdGhlIFJ4IGFudGVubmEgc2V0dGluZyBvZiBUeC9SeCBmb3IgYSBmdWxsLWR1cGxleCBz
dHJlYW1pbmcgc3RhdGUuIEluIHBhcnRpY3VsYXIsIEknbSBpbnRlcmVzdGVkIGluIHRoZSBjYXNl
IG9mIHRoZSBYNDEwL1pCWCB3aGVyZSB0aGUgc3dpdGNoZXMgaW4gcXVlc3Rpb24NCiBhcmUgU3cg
MSAoUngpIGFuZCBTdyAxMSAoVHgpLiZuYnNwOyBJdCBzZWVtcyB0aGF0IGlmIHRoZSBzdHJlYW1p
bmcgc3RhdGUgd2VyZSBSeCBvbmx5LCBib3RoIG9mIHRoZXNlIHN3aXRjaGVzIHdvdWxkIHJvdXRl
IHRoZSBUeC9SeDAgcG9ydCB0byB0aGUgUnggcGF0aC4gQnV0LCBmb3IgdGhlIGNhc2Ugb2Ygc2lt
dWx0YW5lb3VzIFR4L1J4IHN0cmVhbWluZywgSSBleHBlY3QgdGhhdCBTdyAxMSAoVHgpIGlzIGNo
YW5nZWQgdG8gdGhlIFR4IHBhdGguIFdoYXQNCiBJJ20gdW5jbGVhciBhYm91dCBpcyB3aGF0IGhh
cHBlbnMgdG8gU3cgMSAoUngpLiZuYnNwOyBEb2VzIHRoaXMgY2hhbmdlIHRvIHRoZSBSeDEgcG9y
dCBvciBkb2VzIGl0IHJlbWFpbiBvbiB0aGUgVHgvUngwIHBvcnQ/Jm5ic3A7PG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Sb2I8bzpwPjwvbzpwPjwv
cD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_CH0PR10MB51798275B2E7A519E2A260BE991DACH0PR10MB5179namp_--

--===============6216003685373939072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6216003685373939072==--
