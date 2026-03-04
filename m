Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDMUDkd/qGmYvAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 04 Mar 2026 19:51:51 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC32206A67
	for <lists+usrp-users@lfdr.de>; Wed, 04 Mar 2026 19:51:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B37C9386311
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2026 13:51:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772650308; bh=eFb0e5px0LJZfpZYq/tnSQNP0zAzsBUV+sLHIIodnHY=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=DLYvXG6ofcQ79cLqCngoPv8V5gzGJOQZSGKE2TBdJufW1b/0nwrrQJYYtcXAde55v
	 DKLWnnZ0YN4h2KR/UVrDaS5iFau5+yDfaua3oc7yrrqPh/X9QTSPTjA4au/PNGrysF
	 jwUlLyzRfiFcss1hKNJlc/VcTiqbuS4bgn93WvufBUkm1isGRct7VCiHkowP2T1n8J
	 I5y9+Sf+wI6pUTheGvH74RumW2WohhHBc3JG2wvQHrkY1HxZWb0WehLGnkzQuQ4pHn
	 vB3T7Gyy6BGAdgscR/JG2W7+L1IWE6bHIpQwQNOeFHhMxBSn1KmuCaP14lWJR7xARr
	 7NWSmXqH6sWMg==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id CF113386175
	for <usrp-users@lists.ettus.com>; Wed,  4 Mar 2026 13:51:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="up8K4L7j";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="jU7qqhz7";
	dkim-atps=neutral
Received: from pps.filterd (m0484890.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 624B4lu3023207
	for <usrp-users@lists.ettus.com>; Wed, 4 Mar 2026 18:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=KT4RLJljZR+JbVsSIChQVPhIO8y/
	kybullTiUc3S4r8=; b=up8K4L7jxV4TaSCOM28e5dRosAmWcySNpzMXE3/DxMLO
	noM/3ADw2eQ867X5aXRxeuq/NUgVlJJUXx9cg20XDEFuII9KAKXbU0XgEeXQ75h3
	LHN3BsPLd3wOB6TvNYi8yrI+BYE9AxYTdZnTddB2RSQlxlQDaOjRX8acs/7EN48k
	n0SCMRPnXK+FK34Q1MKFWevQ440MiNK0NIlr39XIALEs58l2dADxWAlxlhyO9duG
	klcKaBUe9JoTFc+fYMshthJPYzvoab/tZlWN4S2eaiwfqYi5GyOzzbQNQQ1slRO5
	V+NtEVC33GPcFo5BEaktOxNAjFvndjW8XukrFJ8tpA==
Received: from ph8pr06cu001.outbound.protection.outlook.com (mail-westus3azon11012044.outbound.protection.outlook.com [40.107.209.44])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4cpkj33gma-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 04 Mar 2026 18:51:32 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l0z/r2ij5AX+Oj/8r1RijS4nXKUdGZX6W5UvpoGmtzSsdt1/cNvSjllAqBixwS8UK1DFGaiVE7/4sAc4SL7T1vzSoM7OGJOwiYDG/twv/veC64RUxqZWRFDH1MJaPQOkZbPen/BBaRmZDq9hG7bsgQ56HiqlIqqMkHreqBvQi4g/zMMkspD/m9C5UR3Zt3WOwfcFFwcuUPKFZwK+LPvaSvQ2N80PwyTvmqIQ+EeHmZC+bK6Pags/tq3BcpjFoM9RhRYfJXWFK6+1eFtHYuuz9SEcGv2QhJ2dIvELUq9FLm0+DNknsV4W2M45WjlcZx3HWcB/cKp1nKCxuwGwPYm3iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hANtUIg6cTZgQHfPnh2cHWl8Fh1VlI1WZP0eSJgfyOw=;
 b=idE8r5+y79kq7cwVLHoRlG67cbM3W4ISs/kpgxduZ1F1sI8LYCb3bO7Ik4EhdVQKE0/JInnAgu+bEiS7tTxn5+JYv3iKYbWjpVpXfaEvPxJbbs4EPl86Ioa8bjMpavsVCBlPLjIFghEqQEJjQTx7rziUzV8Nlt0qmbbjfBCYfmcxBqV6R+mTwF5Wx8Bceiapfj7kQQzCrpyoa/xCtMjyuny5YA+RJUAfUEtvIZLkocjf/Xm0ZYWcKTpmA+v83ZiEKm9O14g3Q1y83ssNuIrZpDpnWgihscIz8qHfK9H7Ounp4QlgPYaNzhRGV867GruA+0QSO0yGwyrWfWqy8+rTnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hANtUIg6cTZgQHfPnh2cHWl8Fh1VlI1WZP0eSJgfyOw=;
 b=jU7qqhz77Ssg5CSrRUgJVx8OppsGAfB9VLtzw8jNJD09aw2XFGfqCzq3SuZ8Lr4jW6lAvAWUv1mxGZOUbmL91R91oUc2R5RfOB2Po5kZWyXtMv9Bc8a2qaM2QVbxLDtBHBNBRMVPYh15hpQoXtv02MTUkVxaRJ362IoJbzDTiM5B87FBXR1WyGXX/TGm9UNM8wcZJPi6PpEC+ZcGkfBcIkq/W++2t4qaaqlg60aY6/OSeyxntf5wqldjdp5mHdR1T4LVhriuFRoi5eebynBYAgE1VymiiP7A04rTL+T9mVxVX2vKXFZxmZ07AFANSVVbFY+U5q1VTev4vge2hZX+kQ==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by DS4PPFAEF42CAE1.namprd10.prod.outlook.com (2603:10b6:f:fc00::d40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 18:51:30 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 18:51:29 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440: Could not find appropriate gain for performing ADC self
 cal
Thread-Index: AQHcqzOU6IK1tFLOLEeqCnZzlrZldbWesKsj
Date: Wed, 4 Mar 2026 18:51:29 +0000
Message-ID: 
 <CH0PR10MB5179630FED3F1AEF917D9312997CA@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <SJ0PR09MB912686CBC2CC3BA97673827BEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB912686CBC2CC3BA97673827BEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|DS4PPFAEF42CAE1:EE_
x-ms-office365-filtering-correlation-id: 4b41f9fd-354a-4fd6-e42a-08de7a1f0c14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|38070700021|8096899003|7053199007;
x-microsoft-antispam-message-info: 
 Qev7vwu7dcGd7KialuhuL0FTmT7yG0fPS3BFWKImTUG9CvvM0UxgLRXhMZ66U60fFSyLR62gDI8XqpWHS0CVx6FoLbUiE/nazjPz7pK8BvO7kaIj8NG+3kpmvMEFKbWesTB4h8aLtcpXqzT5Fh/E42WHwCJvOIxOk3GzIQABCniAPPrPuFWZBJ6TMCZVxgodLK12BuPFsWzckn9mZ2g+/IHvmkAGKcV/oSMJtMqjQU3+I4m5glXg1a7tVQwS4PYyfY/uHIdldvk5lp1CdFvObAzSFVXmkAh+kdiaDuYn1o1305hcPtnXcxUS4/AuR9XhGEHaJ8K5/bDaGeOk5qwtxq1ACgrJtcZeFMrEuxJTiFl4BCT7lrhezhu4H93i2NQJzGT71y+MW+VED498rbU9RgcQtzCT6YP6lSvMShUkXouSnyDHsZqLpc/mdKQ9hqpQPHPURtjXXjKg/y50VJ7XU0uN9uB5w5KnpCV8rQOxC8zblP5i6UQHBLNwHJ+zWKSUHHzQtMcCx4k06R5o8gTm3vhOZYhYlhOKEoBKoTJ49uicaCwEO5u2uJ4sGCCYPCxvnnt83iXBmgkyDtdaJiN3noqlfcABK7DRrdKnvayOVRYl60CYsSzGs1mAFrnn+J4POV5Ze9QZigvz5nHjxEv9QeYZU4RBbuaGWuPe22zVjEM5SQD3i2+FK48fD9Bl/79BE1CKPb4/XA3bwQvHQEnEKlXQoDaJaJC7AqoxEc5BUL8QbTCF4uQsZ12VOUbXsC7X2vOHZxJGi86qXnG9UTsYrSwWSqhgeB4EKoNNnk3hnec=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021)(8096899003)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aTVqWjlRbUpjVE9pRFVDTEtBL094Q1VQYnRWRGRBb1NVVEZsdDVTR2pPVlZH?=
 =?utf-8?B?c0pDZzZsQ0k2MlpmcGtTa1h6ZVhZWWVIdlJMNktGaWpmMkw3REJWcEI3WlN2?=
 =?utf-8?B?MVcwbFkvNUFtV0wzQ2RYdDEvbndKWlFvVlh4U21zUWFHdnFia3VDeUNEakox?=
 =?utf-8?B?UWNubjVRMmZEN21JQk1lRWJSdkM1bXZ5cjh0aGhBMDZKT3NBTzlha0FWdlk0?=
 =?utf-8?B?R29iMnpleUU1cHRZS2lYYTVJNHQ2MlA2dytUMVk5a1ZFRUxJYzJXeWRYeHVS?=
 =?utf-8?B?UUp3RFNlWXFCVnlJTlhiNk9SbU9iTjJudHl2YUVYaHR3QXRGdEMzbGtpQlNY?=
 =?utf-8?B?N1RGQW53ZWVmdVFjZE5LWnMzL1hXdmhrMGV4MzZkUm90K3FVamVuUG5DUGZi?=
 =?utf-8?B?RGJwdXNIdmk5ZkprUm1DTWIrb0dSekhVcHVseWlMY3IvblcvcU03QXlRU2Zq?=
 =?utf-8?B?M1NmREVOemw2RVNINkEwQ2xhei9TcXk5TVBIeDE1N25xc1hwUGJiRGVGdVFq?=
 =?utf-8?B?Z2MyQTJuWWhxSGtMczBGakJyQkRnY1hjNU9RSlJzR2xiOTQyblVrREJuTXM4?=
 =?utf-8?B?MDNkVitYL2huMm9ySjdBTkdIOGxtRitwdlJJQklUdzhHRUJqQlJhWEpUbWJp?=
 =?utf-8?B?UkIrZ29FMHlWbjNCanFzUVI2R3Y4TkQ2Q2lGL3k3amFqYjVlOU5VQ3dGQmRt?=
 =?utf-8?B?MDR0VTFnckJ6NjhHS2lJTlc3ZWxIUHpOV3dyVng1UUtHaVRDRENuSDBielRQ?=
 =?utf-8?B?akdEbXlveUZqd3RuWlBKeHlaUGJIUVFQaHd1c0UyamtDWi9Fd0dGbW5HSUFI?=
 =?utf-8?B?emV2ZEtvTzRUUTdvM2dxdW54YVBNdjV1bXNiNk9sblI3SDBISUlNNU1WcGQx?=
 =?utf-8?B?TWU1UDlEcXlDQ0NhYVBmV2ZZYnU4Y0FDNXVncDc4SWZpYWtrdkFBWTJ4VmRp?=
 =?utf-8?B?N0s5TDJBTSswSG9VeU1qMk55dTFtalptUFdBUWluWWFzVThQRVpERXUyMXFp?=
 =?utf-8?B?MkVZQUVnVmovazI1Q2JRMlFxcGc1dDRBaDc4OUhRM1pLTER3aG96SWdKVkNu?=
 =?utf-8?B?Nnl0RWV4Mmt1Nzd2cW9KWGlVZmxYa0JYSUlIUEZuakJmcFQ1SGdPdGZIaWNq?=
 =?utf-8?B?QXpWSDVFWDBwWTkxN3NhTURFb3FZeXBDVVdTWEVlWFpoMXMxOFpwM004bXR2?=
 =?utf-8?B?dlYydFo2dWl4eUwyZHdMbTAwSWRuK1JUcGFObkhuaWU1dDcvNG1OcFloMkJ6?=
 =?utf-8?B?SVE5Y1Rvbmx4VGFZYkR5aUk2Z3BFemkrSk82TW1xWDdOTGlTeTNhS1F0VEFx?=
 =?utf-8?B?aWVOSytZNWJtbVFVeTkrR3pzd0s0U21RdHVIbVU4blhwNzUvWWZ3OWd4cGZF?=
 =?utf-8?B?aTBRY1k4T1NhQk8ybHprb0tsRkp0cnZHZ3JoWk1kME9nQ25ZaUpTSDcxNEJJ?=
 =?utf-8?B?ZDVPcEM4aERSWmhKSENmYlczWEFaWVc5MUNtYXljWFJpc3hPRTdsMlpvQjM2?=
 =?utf-8?B?T0pvbi9hM2FKdWo0aGFiWUpTY2FQNFRiOFcvcHdOLzJlU0JtQk9aL041byt2?=
 =?utf-8?B?QjIzMDVXY2RPdEtvS0xhRVo4V3RvZ2dhVG5QM2dpKy9mQ21ZdXFYbmdXeHZF?=
 =?utf-8?B?VE4zQU5LSnc4TGZFZUE3NVdyVUJkWVQ1K3d4Z0tjbkFJWGliNVVQaUk0MlI5?=
 =?utf-8?B?Ym9BUUVlRTk5TXVmZUJLYStXNGh3VEpxRmdBMHNLdFp4M1VyUzlhcFd2U1Fp?=
 =?utf-8?B?QVVVbkpHUy9TeVY1dG1GTzVwaHZGaGNIMlNmNEJJQ0tWQVUwKzJTS3N2QVlu?=
 =?utf-8?B?U0xyQ243WjRoNTMyU1lUanoxUHNVakNSVHY2dklCSVdmVjVxNTdiZitYL2Rh?=
 =?utf-8?B?clg1Nmw2Uy9MYjN6N3MvYU5KWnArcUhyN2N4NUJORkdweGh0S3V6OUo5Q3lI?=
 =?utf-8?B?dWdoQ1k0N3R1UC9UeW9pTi9YU3VlMzhuNi84dGxpZWRUOHAvZ0RtU1Y0dTdo?=
 =?utf-8?B?M3ZDMXBKTEtnM1ZTRmZzSGRiRk5PQ0pBRmVjTWpGanhOdnBqaWlpWFJRbFdM?=
 =?utf-8?B?U3RjRXlHSTRjYjk0eGdxcys5bmZ6ZnVLUkNwM2FybmJaNVNwK0Vua2piK213?=
 =?utf-8?B?T21YMVpxM1JucGdBT1RJdkpiVEd6cnArVTdEbFhES0R0K3hCWURTY21FOU45?=
 =?utf-8?B?KzVYdG40OStEbXE3c1pPTVFRNnpiNVFVY3ZMMjhJdm04T25zc1hTSTBmeHhm?=
 =?utf-8?B?c1RmSG1lTm1Qb0E4MzRtS1FzQWhpUUFwNnBMVUdCcFVucXlmZzVVR0g0Z2dm?=
 =?utf-8?B?YnhBc1JnWGcyMm9mR2U5alZiMkNmb21tZG1lbW5kVGs0U2dKWEp1bzhxVzBX?=
 =?utf-8?Q?M15GnG+PGWzJ+gALX1H/8Gl8SJ5Bn5pgguKVWGXCmuauj?=
x-ms-exchange-antispam-messagedata-1: PAMnbMmI1DCuIQ==
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b41f9fd-354a-4fd6-e42a-08de7a1f0c14
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 18:51:29.8354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1yXBHPM+W8DKN3Ys6uRPdRz9GqTjKHaFLrO68TYK2RyE8lBaMUb9wUyQJqQGgjjOm9FNHjU7gMbeuUfi4of8GL+Y+hOI2l3Ik3VIFyWEbIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFAEF42CAE1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE1MyBTYWx0ZWRfX+cQO6twCzfAD sWUGOfnyzpPXtnkzvp5IvGSPgK609Y9zTh8ApqXXYYHc4K/ecWn+UKcFnwY/JJVr89tIdWxVU5X wF8UtNYzHijnNWvC6Us0uhQQ9rBPQ02PrLqen8mjDVykTyuWjgVv8K/5mfLHEWsMvHjykD9/0lb
 i+y+PlQiDWHHrC8OT4bNNNMl6UuKUn/orFkbfEw+ZTtq49yZQYvzhm+1SYWZXnlT+xk9aErGcF6 lxOyM73JbMIAfeYjM7U9Ioz2oK52/871tUe/lIqrXMFDBpmg8+x4EXLxgbdZxcUXd+WewFAmYEG VVYNJ1OqbcvtC53whZYXcm565sXuEcSigVMgP0O2HrMTU0qr7+fp3CYYoLWluFvx+RL8HMHqIw+
 xbJMJXSmnKlk6m6TR3uGu6pwIlGLjSRVDN6zdsTdFkfKRgLIkPTdHnlifaMpXC2gHD5Ot/XClIy GF1rQp0z6yyd8kdVUVg==
X-Authority-Analysis: v=2.4 cv=SI1PlevH c=1 sm=1 tr=0 ts=69a87f34 cx=c_pps a=rlKp08D5gBKtwCtLUzcdEg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=vjhoQbBNYuW6rkOA:21 a=xqWC_Br6kY4A:10 a=Yq5XynenixoA:10 a=ZPWZ4rD8_x8A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22 a=SDIZ3FJ79mIEoUtHsglc:22 a=qHnpajyiAAAA:20 a=RpNjiQI2AAAA:8 a=8CGCo7kxAAAA:8 a=etiEgX_XAAAA:8 a=pNW3P0H_6qD11QG32M8A:9 a=QEXdDO2ut3YA:10 a=yxvHZJhp1Br9zMNbgjkA:9 a=2q4O/K3rjNU7EHYdBHB6dYyilSc=:19
 a=VRo8943Gqmmh-9zx:21 a=_W_S_7VecoQA:10 a=uyKDLsAT3yn652Fg1vMC:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=gnNuOjCqZ2Tg-SG9DWp8:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: dJ1Zu2ZR1tJzzlTbzm_VYvhtkO6pfZw1
X-Proofpoint-ORIG-GUID: dJ1Zu2ZR1tJzzlTbzm_VYvhtkO6pfZw1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2602130000 definitions=main-2603040153
Message-ID-Hash: XTNHSXLQ5LXFYV7YPQQ24DNHKYXV72XJ
X-Message-ID-Hash: XTNHSXLQ5LXFYV7YPQQ24DNHKYXV72XJ
X-MailFrom: prvs=45233425a7=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440: Could not find appropriate gain for performing ADC self cal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBTHU2AUYPXQ45FVUM4KGM23TBWX7DE5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============7671529704818875425=="
X-Rspamd-Queue-Id: 5DC32206A67
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[martin.anderseck@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aero.org:email,emwd.com:dkim,CH0PR10MB5179.namprd10.prod.outlook.com:mid]
X-Rspamd-Action: no action

--===============7671529704818875425==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB5179630FED3F1AEF917D9312997CACH0PR10MB5179namp_"

--_000_CH0PR10MB5179630FED3F1AEF917D9312997CACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, this really points towards some hardware issue.
How do we get to this error: The ADC Selfcal is shared code between X410 an=
d X440. We play a tone with our DACs through the loopback towards the ADC t=
o be calibrated. On the ADC side we configure a threshold value that we nee=
d to hit with the calibration tone. Therefore, in X410 we increase the gain=
 until that's the case. In X440 we don't have any gain stages. Therefore we=
 can only check if we are above the configured threshold. If that's not the=
 case we throw this error because then we know that the cal tone is not lou=
d enough to create a good calibration. We have a utility to check which thr=
eshold values your ADCs achieve:
https://github.com/EttusResearch/uhd/blob/master/host/utils/x4xx_query_adc_=
threshold.py

This may give you an idea about how bad the erroneous ADC really is compare=
d to the others. From our experience this isn't an intermittent kind of iss=
ue, so RMA seems to be the way forward. I cannot say how often this occurs =
in the field - we have mainly seen it during development when daughterboard=
 connections were bad. Using the cal_ch_list argument helps to open a UHD s=
ession by skipping the calibration for that one channel. But even without t=
his argument the second session after startup/clocking change will work any=
way because it will have tried the ADC Selfcal already in the session befor=
e. The erroneous channel will never have been calibrated completely, though.

I hope that helps understanding what is going on.

/Martin

________________________________
From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Tuesday, March 3, 2026 6:33 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] X440: Could not find appropriate gain for =
performing ADC self cal



Hi,

I get the following error about every fourth time I start the software.

-------
Error during initialization of block 0/Radio#0! [ERROR] [RFNOC::GRAPH] Caug=
ht exception while initializing graph: RuntimeError: Could not find appropr=
iate gain for performing ADC self cal Error: RuntimeError: Failure to creat=
e rfnoc_graph.
-------

UHD 4.9.0.1
I see it with either uhd_usrp_probe OR rx_samples_to_file.

NOTE: there may be an actual hardware problem with one of the channels (TBD=
).

Anyone seen this?

Thanks.


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_CH0PR10MB5179630FED3F1AEF917D9312997CACH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
</head>
<body>
<div>Unfortunately, this really points towards some hardware issue.&nbsp;</=
div>
<div>How do we get to this error: The ADC Selfcal is shared code between X4=
10 and X440. We play a tone with our DACs through the loopback towards the =
ADC to be calibrated. On the ADC side we configure a threshold value that w=
e need to hit with the calibration
 tone. Therefore, in X410 we increase the gain until that's the case. In X4=
40 we don't have any gain stages. Therefore we can only check if we are abo=
ve the configured threshold. If that's not the case we throw this error bec=
ause then we know that the cal tone
 is not loud enough to create a good calibration. We have a utility to chec=
k which threshold values your ADCs achieve:</div>
<div>https://github.com/EttusResearch/uhd/blob/master/host/utils/x4xx_query=
_adc_threshold.py</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;"><br>
</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;">This may give you an idea about how bad the erroneous ADC really is comp=
ared to the others. From our experience this isn't an intermittent kind of =
issue, so RMA seems to be the way
 forward. I cannot say how often this occurs in the field - we have mainly =
seen it during development when daughterboard connections were bad. Using t=
he cal_ch_list argument helps to open a UHD session by skipping the calibra=
tion for that one channel. But even
 without this argument the second session after startup/clocking change wil=
l work anyway because it will have tried the ADC Selfcal already in the ses=
sion before. The erroneous channel will never have been calibrated complete=
ly, though.</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;"><br>
</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;">I hope that helps understanding what is going on.&nbsp;</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;"><br>
</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;">/Martin&nbsp;</div>
<div></div>
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block;width:98%">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><font color=3D"#000000" style=3D"font=
-size: 11pt;" face=3D"Calibri, sans-serif" data-ogsc=3D""><b>From:</b> Euge=
ne Grayver &lt;eugene.grayver@aero.org&gt;<br>
<b>Sent:</b> Tuesday, March 3, 2026 6:33 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] X440: Could not find appropriate ga=
in for performing ADC self cal</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"display: none !important; visibility: hidden; font-size: 1px;=
 line-height: 1px; height: 0px; max-height: 0px; opacity: 0; overflow: hidd=
en;">
</div>
<div style=3D"display: none !important; visibility: hidden; font-size: 1px;=
 line-height: 1px; max-height: 0px; opacity: 0; overflow: hidden;">
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
I get the following error about every fourth time I start the software.</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
-------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
Error during initialization of block 0/Radio#0! [ERROR] [RFNOC::GRAPH] Caug=
ht exception while initializing graph: RuntimeError: Could not find appropr=
iate gain for performing ADC self cal Error: RuntimeError: Failure to creat=
e rfnoc_graph.</div>
<div id=3D"x_Signature" class=3D"x_elementToProof">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
-------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
UHD 4.9.0.1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
I see it with either uhd_usrp_probe OR rx_samples_to_file.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
NOTE: there may be an actual hardware problem with one of the channels (TBD=
).</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
Anyone seen this?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
Thanks.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"x_elementToProof">
310-336-1274</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB5179630FED3F1AEF917D9312997CACH0PR10MB5179namp_--

--===============7671529704818875425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7671529704818875425==--
