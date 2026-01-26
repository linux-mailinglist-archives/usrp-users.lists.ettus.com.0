Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DtaNX0/d2mMdQEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 11:18:37 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC7D86A8D
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 11:18:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E413038A1D0
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 05:18:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769422715; bh=mQ2L9QBQe5TDjo9+NoAGN6e2ej2OCc4XIqxUd8vZLkE=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EM5ie0afhOIwynw77xoHW0aWpYIaFDpFcfjPuD1RLR4MMCXgtCN7yM6eJkKx7IM7d
	 mzUKsuDWTa8C7g98Dl66S0cfMQdA3S3+ZEr8ruari1QCggXZDKNzUaIbrlpNyljhAh
	 usOucqYy/Rt7wl9sx+0cKFdnPPo0a1nsAbEETqzmLXJOzY0HCrycuCM7ob32zbe2Uy
	 sAYko/qUQi6LdaxmUDGyhPC8ihfkowAp3wWT9bmRQA35xgg5Ro4bVS06QQMUb1TNA3
	 vMtoTqWidBI6q6VfpMdJLWc2XodhEahoYLR7+1j0AZZK/Wn458XSzZ3ff74JsR2FKq
	 kSPvdkAzUqafg==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 4018038B446
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 05:17:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="RIiG+KUL";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="HzmweGRY";
	dkim-atps=neutral
Received: from pps.filterd (m0484887.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 60Q2Woqn005704
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 10:17:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=zajzRck6AiQiseuMkAnSUNkV3UWJ
	9eNzCWtZz+1Pbu0=; b=RIiG+KULTDgwdy3DYCEfLWpCN1Pcg6Yp/j7cGqg6v4bc
	pfSf0qqUT1AJlKnUpAi8gJOrOsNrQxCq/x8OJKFk3ktoJnz14rkSPjQ4EzkgbGHk
	HN5TpRvHfjE4lhk3J0aWDxsrh6S2C+bJkCSzt5o1/LQErHIIZYuRHPs/VlBRjQwj
	pCO1kqBhTux88AQ0OYCl/1bm92zRHOo2FVOfEb5BakideRGOy0ZlC2rOfmROB2qB
	xbGk7Vp2C4C5Ttfv33cCKwEMfQuBCepqcAHlNkwJ49UC5iqJsalclt7OPDJ7p6JO
	M4fJyMM+LPYQuv/XWEKxK52oR5nwf7ITOWAPpD8EBQ==
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010007.outbound.protection.outlook.com [52.101.193.7])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4bwyjxjhvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 10:17:34 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FkKNX6PyMEL4cfcGvgVFuHyYQoMFmCCM+tS3xTPiSwyNYftY0K4x0lBzgQenckNuyKm5hLcFvj7K6YWJaDMzw341doyalcNkjPkBuZN/vfJBcxe3v5liJZ6Yzi7YHk/ajIWqhymss7Dynp52hf55sf//n+A/l+IF1aRt6vijJVJxTiTLk7/esl6OQ6C7O3qnxOBVDit+XFtI/I+FW0lKOImsPDALnL3iLHZc7+UtK2xrBXLBrmg8wTlCG8tg0mMUut43U7mbJLfVlumq5KogYhPw1udG5VsDkAlgG8gCRhxazAA2YiSqkR+Etq5dX4Rw2GXzH1oGnQjj1JiFpj06QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sXBcucErZEMwEey9ZoHkSD/Rb2WC2iJeSsewYiNquSA=;
 b=dxq8EiXvbhrVudL376picYHmR9zwoOeTU+LUKQPdl7fqH2tq+5jnvIa0fdxqkcrh1nF9qn6bJhAt5OPi8WwQJNNIabAn55nqYUF0/7irM0t+DAmoSdIlupjVvDIpNeDb9IqmiYJCCVnUTTCDxW+LUlLUiN3YtD7UsIUGy4zxemS144lUmJWAwobj3lqg1ThOA3hLc7SKwuCB85tDFcTdPhOH9lrhBd8qVDZ7e6q07IH4ONkXAC9guLrqEryWnM0uEBQ3Q6SVDYQql9WM4ZBar0J9G894spAXJb0FkHhthAZbqr+6ctTfSUv4fNIXC9/vVr4HYLohvzDkcJEjuvS7NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXBcucErZEMwEey9ZoHkSD/Rb2WC2iJeSsewYiNquSA=;
 b=HzmweGRYUhdL/4ADlOAftGQDOzJw3V/yK6MXQc6QgC/HurSNVsb5Q5/4MqERDalEkTH9SLzLCxUUZL0zQBJoGhaYs6A0WaTIOk5xTZmzQ5usRMEMl5PXe1x8rvmKgJ878xyWFBEASA2OCUr+8vpV5YdvjyvGPtAQ0w9ElcCI4gjmTQHGYIzPXLi0tn2hurv0mvTi8/Fu9ESWsqD/stbF2TznLXY2Zn8tf5F5UqpjpOUwfCvWkebhZ68tkqG8H4SxdSiXK5EVsOQb6fHW3aw2uZWtKay0XAXg67XHOqhdHGW92dVeqXcCiT31JQ6xwno/Z/YNTlJN6QzZJ67b8PSVqA==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by CY5PR10MB6012.namprd10.prod.outlook.com (2603:10b6:930:27::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Mon, 26 Jan
 2026 10:17:32 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705%4]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 10:17:27 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Split x410 rx channels to separate hosts
Thread-Index: AQHcjqz4cIip9WW4gUSvAwKaIMnH4g==
Date: Mon, 26 Jan 2026 10:17:27 +0000
Message-ID: 
 <CH0PR10MB5179C574997A68BAD40F1A789993A@CH0PR10MB5179.namprd10.prod.outlook.com>
References: <iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g@lists.ettus.com>
In-Reply-To: <iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=e2397cc2-e15b-4eb4-8f24-7a061fd15026;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-01-26T10:13:40Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|CY5PR10MB6012:EE_
x-ms-office365-filtering-correlation-id: 2954c1dd-9083-4b72-9902-08de5cc41b59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|8096899003|7053199007|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?anhEU3c4OTFHYnl6c09lVW96eWhqZXdXOCtIK21LVGloZlZDaXRmTi81cjJB?=
 =?utf-8?B?N3pSbEJGL0F0MmVGclRrNDRET3p0S3JqVGdaYTFLU0dCT244OXFSOSs3K2FZ?=
 =?utf-8?B?MGhtNTFUd3NVYlhCMkc4K2RDUE5uSVhSS0V0SjN3MUZVb0EranVlNVdXRTYr?=
 =?utf-8?B?aEpuLzhMWDRuSjdEYnpDL2RTYkx0UFordDJ4b1BiRytHT3V1d0UvNnIyU2lr?=
 =?utf-8?B?bHNubjJVUkY0UmdzY0x5MEQyWm1rc201M1pWT2pZcjd2ZmpmY1hSdGxwOHRr?=
 =?utf-8?B?Z0w5SFdaM2xwMW1pNVNlZ3ovV0dRRTY3WUhtTjZkMElwMXBXaGZSOThWTE41?=
 =?utf-8?B?Ny9iUmRRK2s5aUtCQzkwQ2dJN3BQdEdoWWJUYng5bDBCMUpKdEFxVXhGcE5D?=
 =?utf-8?B?Mlh2eXFtd2psL253Umw2a2ZzQVRFUEQzVXZjTFhuOGRxbDN0RkM4dVg0VEtm?=
 =?utf-8?B?TzVxV1lWdUxhYmhtUUp5RC8yWHhMUFdOblZhdFc5QmV5RWIyQnE1bUpsSCtr?=
 =?utf-8?B?ajF5WldVTFNpeUtoYnJjVUJtNTFFcncrVnRGVm42bnA5WWhZNEp5MGs1ZnE3?=
 =?utf-8?B?YjVOTS9YL0ZKb0pram1MUFNmWmVIQ1ZISFBpS0dDMEx5QmwrM3hQR1VOM3Vt?=
 =?utf-8?B?b2xHdTRpYkRsYWF6WWE4YmcvOS9STi9qTjRPUkpHTUFXVURnV0FrcUpjd0xk?=
 =?utf-8?B?Wmh2eHRFTzJ3ejg5SUs3L1cyem00N0Jwd2IrTkxLN1VXV0k4UjN2TkRhRmVm?=
 =?utf-8?B?ZUxEaXpHNFk5aU9iSFFFeGt6NmtpMjRyYXpOVGp2RmZlQWxOaXk2djRVaWo5?=
 =?utf-8?B?NFphaklpQTVTM01tTXdDS1NZY25nOExhZUhmeUl5ZkloVExuR3BJZURFbWR4?=
 =?utf-8?B?OHVlbW1ITzgweE9zR0JsNGRwWE1PSXNlTnJVNE4vQmswUkNFSlZHOHZNVXFn?=
 =?utf-8?B?b3cwK0J1aXI1djZUaEROMUY3VzZ5K0g4VmxnOVlxa2R2Qm9CelFoSVZobU5D?=
 =?utf-8?B?SjMwWG1lWC92VWtWNGE5QjZDZ1Vid3BlbDFRU3NVVklxTDJ6V1lxemNUNUEy?=
 =?utf-8?B?dWkwQUxlcElhMHNjMklKRStseFlJcHV5ZkNMVHZMMi9oYXphVVl0ZTJCdVlv?=
 =?utf-8?B?TTFKeEFLYUUyVUpwTUZkQVp5UWdTTXo2VGppWThyMG96SGdHM3Bmc0NLM0JH?=
 =?utf-8?B?S3JJZTRkUVV0bzcyZzE1WnNSYzlnMDdCdE4wZnBFRFYzb2YxOXo5cHVtY3VJ?=
 =?utf-8?B?eHRld29uREVWSXExeVRrNGxGTytqQjZJa3JFWXE2ZTZuaytXc1c5LzF1TWhO?=
 =?utf-8?B?Q09iVysyVkNwVDVyamRFNnVZazhOZytlR3VKUVRNbVN5R1NXbXBpREl0ZDAr?=
 =?utf-8?B?RGdGbWViSmg3SGFMdjYwdk1GckFoL0FsRTFQbGRHeEFTMTRIMjR5bjRkb2wx?=
 =?utf-8?B?a05EWmNOaWxtRk5NdWpVbVh3bmRmajIvOGJzUlRGdWF6d2hWZ0Y1Zy9yak82?=
 =?utf-8?B?QlplcGx1R0czSHZMdSs0dGdYQW8vaDZrZFlhQlFKbGErYm41K0lPZHJpNkh5?=
 =?utf-8?B?bVlERGRpaUVSaTc1bUhqaktzcUhrcHJHQ01MSVNNbWpKZ0hRQzd4d3hROG9m?=
 =?utf-8?B?cUx6US9WM085bFlYMFBtMWpsQmlIN2JsSDRBbEt4TG4ydGxBUEN4L3lmYlFj?=
 =?utf-8?B?cXlpZlV0Mi94TGNoSzBBRTF0cmpuMGhmN0lYQWlmOHU0T3JLbkYwVlhiRkdz?=
 =?utf-8?B?QlBTdTFEd2N3NWhUYm0xR0R4ZFRoV0YxU3F6Q0I0ekFhejZmUU1QQjVjQWRy?=
 =?utf-8?B?UE4yOENoWTRRZzhRMG9wNUc1YlNpTkN3ZUg5enNIUnR4TkNSK0UvZE1jSFZv?=
 =?utf-8?B?MnRLRDhRTmNiM1hab0FtZTZVNFI4alo5OUExLythdzFpMGxZM2g3ZmZIYmwz?=
 =?utf-8?B?R2NPdG5Kb0dzbW5KK0dJeE1iRWRGRXFSWlh6STczVmFIWmZ1alVEODdvbktj?=
 =?utf-8?B?Y1N0REs4U0s4VFNFZXorTWZwVE1jalVPZnJzQUkxWnVmZjM5R2lLM0RwL2g0?=
 =?utf-8?B?Z2tHNUhxb1U1ZTVGaEtYRUVsRk5VenlIemFjSnJES21DenBVMElaZTNEZDJ0?=
 =?utf-8?Q?eqo+u/ATo8ZeywGBqB8xQRoxe?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(8096899003)(7053199007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?QWZheHl5R3hVR1B5VVJJRitUQW9HNkg2WCt2YzlWWk8rTTV4OVBZNjVJVVNH?=
 =?utf-8?B?L3lFNTVqcUJCT0RrK2FCRmRBb0duOUdHZytPRWFkZFI4VXNwcW1KekZKNGRj?=
 =?utf-8?B?MHlTVGpaZ2FrK0I0UDVOTkdBM1AvcUhFUjBOS25BZEpTTWdLNWdUeUxpMU4y?=
 =?utf-8?B?dDVoL0F6Ymw0RzFQTmh3bUVSOUxEWjZOa0Zwd3lQOVR1c0h1R2N1Y0dFeENz?=
 =?utf-8?B?NzhpMmpsQ3o3SjI1SC9ISU0weWxZMW05TU5zdzdHK3Q4YVczTjhxSmFsUHZq?=
 =?utf-8?B?VlQxUW1PeCtWQTdzVFAzeEh4OVlwQjhCejZ4TU0zbmJRTTVCMTh4RUlPSXd2?=
 =?utf-8?B?Q3VUSmtJT1RMNncvVG1nRDZiRmpHcFhLQXdOM0ZMVlJlSlNuQTMrUkQxU0xa?=
 =?utf-8?B?QmE4blJqdFZIVlBYZGZIVUszM0ZQM0JtWThaNitMZlJqZnZSdW9MRmxlVTIr?=
 =?utf-8?B?Y3NMcmdZYk4weXRMUVVYaU1zOC93WFdOdnBsb214aXpSM0t6cDhFSEdnOTRU?=
 =?utf-8?B?L05VRVhlZ21mclcrZkowVGgyWFoyRHJGVGpnUU8zTUNHRlpNTG5lOElEK1Ey?=
 =?utf-8?B?SjZJM3JNdCtxM1RpZDZBR3NqOWpzVmNIQjIzaEduVmJqc3ZHRVZlTEVaOWFv?=
 =?utf-8?B?R2pkK3diSjRGaGFqUXZGTXcrTkx2UTllc0VBcTRiNVFKcW5nMFhNTjJjTGUx?=
 =?utf-8?B?eUE3U0pHRGpCZVRiU0xXSXZEWkFxanVSN1RQNlJiNXVlSlVtbjEvb1lmZkJE?=
 =?utf-8?B?cWpGTmFObmsyWlBjZFNOOWJ4TW5paCtLeGZaaXJmVE5vaHlLSE4wNktlSUFo?=
 =?utf-8?B?bm41MDlwZ0FnYjkxWHZPdDZDblNDK2xJdnhrbnY2MHVjbVZFOXZxZEQyR1Mr?=
 =?utf-8?B?K2gyUVoxOWx5cU9vMGF4ZjFaTzJkeGk4RFZFTHZCVnZKTHVLbUIvSjdjK0Fm?=
 =?utf-8?B?MFhkMHRxN0FEamZVL3JhdGxEZWJMRDBlQUJ1akJmZjZEaXVXSUJLbDUvVTRS?=
 =?utf-8?B?dXBvUm9wdkRVUldaUnMxSm4zenMxWXliVE5HNEhTZ3lCdzM3WWJuOGdKV293?=
 =?utf-8?B?Z0x4Ky9OQUU4SmRUY2RJOWIrT21UVU1pYVU4cGZJQTRJZlM3UlZPSTlJYm1W?=
 =?utf-8?B?K1JzbTJZNmJJYzRWSktmQUtQWXFRZW8zQlN1dThNQXBhbkVFamp5bUFIQURk?=
 =?utf-8?B?OFhHMkVIYlJiOWZRR21HVkJEQjlvdHlMRFVaU01TdXpNTklrckt4aXNtQmJV?=
 =?utf-8?B?cmQrT0M5KzQwbTEwd21INm52bzdqRmU3cnhPZVp5RC94NVU3bmRiOTVzeXRk?=
 =?utf-8?B?TVNjcGlwOUxBVENLcElWdTRnQzdUQkFUK3F0T0dndDlNSzVjOWludDFjUmhY?=
 =?utf-8?B?Z2IveTYraE9OaHFnVU1ERGx6aUE3cTlMaXVNeldQZXVSOENVSFR5c2lIdWlG?=
 =?utf-8?B?dnkzSTVBb2wxQm40RjJFVzdJcllDUlM0Mjh1ZTNDRThwcStRVGdBUEtKaHVw?=
 =?utf-8?B?N3NzVUJZQ0RnRzBMOGZ6L0d6ZWVTZ3Y5cWppUzZBTCs1WStTcncyQzA0QWNS?=
 =?utf-8?B?aXk0QVh2bVpPY1RCcXpBdjVnYVFTNjFLczcxU0lOTmEyWTZ0MXFmdUFGa01G?=
 =?utf-8?B?OG8xYVZWb05uYVg2NE5QRDNhNkFjYm84UllIRGc4d0VqekY2bURPdEErU21E?=
 =?utf-8?B?TkxtcGtsWFN3NDRzOFYweWg2aHZwMzlvamZHRUw5M1NWa2V3ZzR3dnVDS1pD?=
 =?utf-8?B?a0hxeTVLYm0rUExTSVhKbFZpM05UYkNTb0NGbmJ4YVdPWHRrN2FLRVF5ejFI?=
 =?utf-8?B?emkzTGcwcjk0Wm5CcG1wWk9ZWDJWWXpoemsrS2d1dVd6anVjQzNSSXh0NXQx?=
 =?utf-8?B?NThSMXk0NXR4WjFFOUw0dHV1ZWtIKzE3dmRZWGF1eWVXV1dJMTR5TE1OYTVE?=
 =?utf-8?B?VjZjM01iamZrTHg2TjkxUTFjZCtPUFhwcWwyQXV6NzUrNnB3Vk9XNlVLZklJ?=
 =?utf-8?B?RTFTa0ZlY1dwQmk2ZHJGZHNIMDVVNFNXRk9WT0lMOWZTUys4TWFwYnNlMGZ6?=
 =?utf-8?B?REc1cUtYM1IxSDlQUENBcXgwZFE1TnJIUEhoT3U4bE5aRklKZTZ1REJNZjlH?=
 =?utf-8?B?TEdnY1RxazAvY2JWbkowQTlPTzJYQlEzbGlBN3gzU2h2eW5Kd0thT3NkRFZu?=
 =?utf-8?B?Z3dSV3VCN0ljR3c1ZXBKLzBObUxNc3JMVmdPUFZRUllQQ0V1RlFVSStGQWdj?=
 =?utf-8?B?OXVXWW5oNUxFemNEOXI5Vk9ubEo2Q0QxVlV3bXZ5RlVXLzRuZzErK3kxYTVo?=
 =?utf-8?B?RnlUQVFGVFdJcEN5UEh1Z3lEdWdSVzdHcXdOOGZvNDhRRmVXeUZ6QT09?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2954c1dd-9083-4b72-9902-08de5cc41b59
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 10:17:27.5347
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IcfE0lp1UN49jKtKEw5je7hqnEwodyf335+EQkrLSx6le7TnIfU6LKxhldWd+tjPKf1RB5UCsCqhe59hKgT5pAY5A0nHSpmEB0wv5IeHojY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6012
X-Proofpoint-GUID: 1d17XPWIZgL8DxnIn1lwrPYqhPZEg57o
X-Proofpoint-ORIG-GUID: 1d17XPWIZgL8DxnIn1lwrPYqhPZEg57o
X-Authority-Analysis: v=2.4 cv=Oq1CCi/t c=1 sm=1 tr=0 ts=69773f3f cx=c_pps a=4LksaTFCu4UF49iUfNHgJg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=etiEgX_XAAAA:8 a=RpNjiQI2AAAA:8 a=pGLkceISAAAA:8 a=Z29jpgQE3dXYzciYALwA:9 a=QEXdDO2ut3YA:10 a=TH8YdOdv28UA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=UHBhlXX3NmendQ8iHX4A:9 a=8sOQ3D8hPFxRIbEM:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NyBTYWx0ZWRfXyFBpM4YqS4w4 Hh2ZLTZ5pBKytFqLkCUDR7ANXzogYlpnQmnl3ZPxccFF2Th8Kyr3GYPyVJF1FBf7XaDzgs6vzPK E/YAyMMNG59HmrFOQ9yaYbj4rU57B6jecYoxhkoUVsqTFAbgASvcMTVsVTHNdp+ujB9giD+KotY
 1fySNa6qaMos9pzWtUcLWLydGGNPwgqLQjC/b+/sESNXeSW/IZqlQFllQYcH9gnebjv7vrJIrve Kxonvx3XGRQEZSB2/FU6vTCt1ADWty3zuPMblXuCKLnFcxr1W62YUvIMyTKgO1jJ697P0ptx/dz ssEGpnRjtycO91ETeGMMIhRApKd3DFEi/cxLbX/+OxyuHCfPpDDElFdoaBHM8N2ogLKbhqRtI9O
 HPyOur13lH0waQSh62CwWRw3zWC+SW3G/qgkgiODCXi18SnhLjxK4neuf4yBKeRqm8mdEXp11Rf teD4QVytlyFaoNS6Cmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 adultscore=0 suspectscore=0 priorityscore=1501 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2601150000 definitions=main-2601260087
Message-ID-Hash: IID2W7DFQSSLVUC263YIBTYNK35JPXCZ
X-Message-ID-Hash: IID2W7DFQSSLVUC263YIBTYNK35JPXCZ
X-MailFrom: prvs=2486723acd=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split x410 rx channels to separate hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NBW2J4QSWU2UBK6WS4VLYFCTGC7YVUQA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============5128591765292361742=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DMARC_NA(0.00)[ettus.com];
	TO_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[martin.anderseck@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emerson.com:replyto,CH0PR10MB5179.namprd10.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 3DC7D86A8D
X-Rspamd-Action: no action

--===============5128591765292361742==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB5179C574997A68BAD40F1A789993ACH0PR10MB5179namp_"

--_000_CH0PR10MB5179C574997A68BAD40F1A789993ACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Remote streaming is exactly meant to serve that purpose. The documentation =
how that can be achieved is here: https://files.ettus.com/manual/page_strea=
m.html#stream_remote
You have to setup a streamer for each channel and configure the individual =
target addresses in the stream args.

/Martin

From: carmixdev@gmail.com <carmixdev@gmail.com>
Sent: Monday, January 26, 2026 9:41 AM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] Split x410 rx channels to separate hosts




Hi, I would like to know if is it possible on X410 using for example the X4=
_200 firmware(splitting to 4 SFP+) to send separate RX channel traffic on s=
eparate hosts.

I need to process each channel on a separate workstation in order to improv=
e the system performance

--_000_CH0PR10MB5179C574997A68BAD40F1A789993ACH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi,<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Remote streaming is exactly meant to serve that purpose. The document=
ation how that can be achieved is here:
<a href=3D"https://files.ettus.com/manual/page_stream.html#stream_remote">h=
ttps://files.ettus.com/manual/page_stream.html#stream_remote</a><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">You have to setup a streamer for each channel and configure the indiv=
idual target addresses in the stream args.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
carmixdev@gmail.com &lt;carmixdev@gmail.com&gt;
<br>
<b>Sent:</b> Monday, January 26, 2026 9:41 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Split x410 rx channels to separate =
hosts<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white"><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<p>Hi, I would like to know if is it possible on X410 using for example the=
 X4_200 firmware(splitting to 4 SFP+) to send separate RX channel traffic o=
n separate hosts.<o:p></o:p></p>
<p>I need to process each channel on a separate workstation in order to imp=
rove the system performance<o:p></o:p></p>
</div>
</body>
</html>

--_000_CH0PR10MB5179C574997A68BAD40F1A789993ACH0PR10MB5179namp_--

--===============5128591765292361742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5128591765292361742==--
