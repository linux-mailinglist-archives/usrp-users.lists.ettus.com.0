Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NnEL4MLeWnyugEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 20:01:23 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D41DE9988A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 20:01:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AF98389675
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 14:01:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769540481; bh=Yx/aKyiMYvAV38P7c6qDOqnXZWxvx0+vAG+LD7i2by0=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KNtYFuTzTWaCvHLkZ6Cb3XDcy4YH17uIIU9cDDK3pTwK+OqHBJ3saLlMEkRDcoWgz
	 RmUdUlVkhSRM3Kc9pnSEjaWXWEzFgn1ynkbigxLmQ8of2Vkcqm7JmSZg0c03JqJXxi
	 dh7Y8/mXH+iWfzgYbn05Z7tyBws3kIhkV03qBg7WDpA64hQ6cD3Cq23TCXykl9IcOR
	 tAHWFhIRG+sFwtnlLl7p2i8C4cAHJS3kXYD32BDR5btyIt/oX4KeH7mt3Sziwp/PUE
	 nYu136ZdNmxw6439YEVT38kZ1EKnvxwtpOMfXx1YuVH0UcQVS/JxrvVQQ+YPgnL/9k
	 jKcHgh6gc8EZA==
Received: from CH1PR09CU001.outbound.protection.outlook.com (mail-northcentralusazon11011012.outbound.protection.outlook.com [40.107.199.12])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FC083894BF
	for <usrp-users@lists.ettus.com>; Tue, 27 Jan 2026 14:00:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="rTSOEXpW";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bd5U3mA2I1KbTE8+StHvQnupph6yjtIzxVaFvX/P1yHgG7jBvkul4Yt8FYkXRRDsNPKAaEnReg4dnllv5iNkFgJ/rkAy91VTB1mviqBDbvBOvfUusqOSLTVpGVph7czYAILWnoyCiXcjhGLTY2DDJCT8qKAsAlokqpDarL3TVS/mMrAiySHyjMPfh+2Y+xl5R0P02u21M0MTwhI4HbcZyRAGheM5Dny4pbAWJ7I6NDzDEZQ8zCEjD4OPiLGfQI2IhFY+rRTg6gPRyycy09v9zjEdpPfLJu/UCWF6Gl/RREQIDXe/wa4tQ9O7E6QHln4e4KIzXqny7R1v1uT2ORKRHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7m18PxFf2Zi8v33xPqba3CS/pU0MFf7BvxLc/teNYbk=;
 b=nRPVBfBmB1LI5d1dlp8semiWP5W7qGQCFAa4MpWAUrDYPg+XYFqMsvydT9tQEsslsIWByyuCagM+9TK2EyDpbuAd9szbN2bX39ULHiQsbo9XFrQgHcq1aoGPh6mCghJB2gc8KOTv/tzZtXhlf165Gbfi9+aIMaTZ61/IbOnpbYRdYxMPhjDCOrNZYWmBUAUMEmNT1P9BnmwFMzLIuNKPCZfbnOtSG+u/Evti50CeEX5o/9bhGFOfIHPEhc8PDOVF8EwR5nefaTFhWvTTqILcdAUa6bZMZQcwZ/Zy6pgI+bHbi+r1TDXAYxxC9FwwVdc6Z6ibCX25ltWnFZygjuAtHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7m18PxFf2Zi8v33xPqba3CS/pU0MFf7BvxLc/teNYbk=;
 b=rTSOEXpWxOxSNXk8TY13YuDWSSLZvUMGeL6aC4YS2nZ4XCN322KnPsbqHj+7G7xKNUFMhUN2vtfctlUtdrfRY3Lgz1GsmT+VZQD3Vkkazfni9Msl1cu1LEGAufjp4hWcKYFQpwG4Iuri2ZrHr+ziZqsqpXCbk+sAEC3GHkUYb28=
Received: from SA1PR09MB9130.namprd09.prod.outlook.com (2603:10b6:806:28c::16)
 by SJ0PR09MB10780.namprd09.prod.outlook.com (2603:10b6:a03:515::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 18:59:54 +0000
Received: from SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::131b:6464:70c1:f79]) by SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::131b:6464:70c1:f79%5]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 18:59:54 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [EXTERNAL] Re: [USRP-users] TX DRAM buffer
Thread-Index: AQHcjx93T9evDZaSP0azPNmhNYsLK7VmGPwAgAA+uyM=
Date: Tue, 27 Jan 2026 18:59:54 +0000
Message-ID: 
 <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com>
In-Reply-To: 
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9130:EE_|SJ0PR09MB10780:EE_
x-ms-office365-filtering-correlation-id: 27b12e8f-61e7-4db5-b58f-08de5dd641de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|1800799024|41320700013|366016|7053199007|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 =?utf-8?B?UmdqbTd6MzZSeUtWZEhLSlhXME5qR1Y5b0lxeXErdjZsWHBFR3Q3TEIzQlk1?=
 =?utf-8?B?YWFGZm1PUlNpVUV1TjlwV1hXRG1HS3c5TWNXZDIzSVdQZWpRUnoxNVcvLzRJ?=
 =?utf-8?B?TWdRWHNPVjh2emNUYTdtRXpLdk1lR1dQZWZuWEtEa29UbWg3TXpZVWw4L1JX?=
 =?utf-8?B?TG1ESndYSzVNbTF3bmRYR0ZsTmhGSnBidnNESW1xRSthNUxXMEJ0VHhiWDFv?=
 =?utf-8?B?T2U2ZXZ6aEhWMWFmUm1aY00zRW1xdk9ReTlyNGFzRVFhcXRvVFRJOG1rTVhV?=
 =?utf-8?B?cThHekozNEc1S216STVzN3JnS1F2d09aZWZBU2JSM1Z6TWcwUElHNkVrYy9L?=
 =?utf-8?B?Nm1GS1Z4NXlocnVWYWI0ektRM0FYT1k3TElIVUlTcm1CeWRwdDBuN01PcHY3?=
 =?utf-8?B?RFgrYjNCUkorNmJoM1hxUWVCWVRHOUhla2xRRXMydE9WdWNoZklqWVZ2TkdI?=
 =?utf-8?B?VWNGNXJ1cU1QZkp6SldEcEJlODB5dCs4YkF2SkZKWlFRL0o5d09FU3hCeFpB?=
 =?utf-8?B?d3hrdmZYRm8ySTFFVmxjUVZEUkhMN3NYdEJMU3dWUnBvaFkvc2NLYXBtTHYv?=
 =?utf-8?B?elNhaExvVWx6NTlXWVdWd3RPbTQ2ZHNNZTc5eHBob3NjdFpQeXM4eXB6VTRN?=
 =?utf-8?B?WnU0YThwdGJvZkpYWVo4MVVRSVRRZ1htQ2sydm8za0hYVjQ1ZmtnTGNVUVNW?=
 =?utf-8?B?bmU5TWRPbjNxbEZWL1hvWlh2c2hkVVV6N2c4QXAza1ZZSmlzVktieldlRVNu?=
 =?utf-8?B?dXdta2JJaTJHbnRyS2dQTEVaT0wvK01Pdmx4U3BPN0RZRk1PNC84M2xIazYx?=
 =?utf-8?B?YUUyOCtHTjBuZG9jZ0hBTTR3aGRrUGZ2WGxWMlE3UzNqZC91Z0NabUhidXJq?=
 =?utf-8?B?QzEvYnRrc0hTMkE2VWc0dm51Q3lmL0dsczlBSnFwNjlnNXFDRDJxVGdkRHhQ?=
 =?utf-8?B?NUVibjR6VldFS1BmdEF5Q2dnYnZMVlJYYWlkcU9pdTg2R3N1UUNRMHdPRlNm?=
 =?utf-8?B?YmM4OE5BcEZTU0lYcjVWamU3Vmt6ZE5lN1ZRQ0ZSc0FJQnhiclU5YlJ4N1M4?=
 =?utf-8?B?dXRseDV3WDlqRy9SZkRYU2FLMldGeEprLzI1VWN2VW9XTEd6QTFIRTJDOGJa?=
 =?utf-8?B?aWY5eDdKWFFUNHI0YnNSa0JSbGRubjB0UlhLU3JWUXMwbEd1bmtjY1Q2T1ZC?=
 =?utf-8?B?dnlPZkxPT0VGWHFSVnk0a0xVVm1LQ0puTDQ3ZnpuNTNsQXVlRFNtOEo0Nkdy?=
 =?utf-8?B?WVJVRDlzRTFQK040dWxQdVUyZEhDMmd4Ylk1SDdlK2xMbWtlNjN0NU93ZGRF?=
 =?utf-8?B?N0ZlQzhRT0xWbWJ5M2g0T1FkUXFLRTQ1TmlXMzdBSWI3NERNL094OURIRUNy?=
 =?utf-8?B?WG12SytnMWFaWE1iV0YrV0FlTWRZelZJeks3RCsxeW43QU9tL2Vzbmk4RkRj?=
 =?utf-8?B?c0UwcUdWTHZHNEc0Y3ZHUjZIbUM2OHBwNmhBbzBzTVVEZ3hEaENyR0tzM2JH?=
 =?utf-8?B?cWM5UTlKUFZsZHJvbGRuWURVLzNtR2tTRnhqYWl4eURhK29menErZjFBbGU0?=
 =?utf-8?B?TDU1R1hVNU1remYxM2VqVXJTSFhnTzlSaHRhRzVCTTgvUUJSTFVlR01vNzk4?=
 =?utf-8?B?YUJSdGIzUlZOREpFc1UyOXVGcUlFV3RwWUdmdFRxQWpFRnVmRk9zdTlITUNt?=
 =?utf-8?B?T1Q5UjR3QzQ1OTdoK1pMM3NVMHA5Mm5iWFF4Z1R2TFRCRjVvSmd4VzV3Nlli?=
 =?utf-8?B?aTR5RUNyUlpZMFJUSVBjZUNTOExjM2hleWJaUXgreEZqODZodHFoak5IU2Z2?=
 =?utf-8?B?RWRyM2Y2enhRc0dORWlVdnhZYlp2cGdZYmJYdFl3ZjdrZ1NXVHV2UnBMMlJj?=
 =?utf-8?B?R2E3a1liOTFRMkdkQlBuSW1DVTJGa09WZ2NFOWRRSHZPTHZQZ1NodXFYMW9q?=
 =?utf-8?B?YTVvSk9vamd5L091RS9IbU1LRlliaDNXR283dUdFS1BFaFQ0VEw5NXczT2I3?=
 =?utf-8?B?WFpEa282bndmREFGMkVKd3pIUmhxMHBXL2tBajB5UVhDRWpKR3BualpKaEdR?=
 =?utf-8?B?V3F3TGtwYlFONmY3ME94MG9ubmRHNWhWZ25JS2I4YlY0dzB4NDB2TEpZcktV?=
 =?utf-8?B?anRodzRsaHExWVhqckRUQkVUdmFrTkFmN0wwVkJKNFdRZVd2L3E2aVZiWUdP?=
 =?utf-8?Q?mVoYa/m7LW6RdIIULKLiD+I=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9130.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(1800799024)(41320700013)(366016)(7053199007)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eTV3Nk15QU5hTUdDTDhFT0VFMEFHVVpnU1YzSFlpVnVhVy9ucmFTZDg4WW9K?=
 =?utf-8?B?T0Q5RkxZY1BjTSs5UjhjRUlKUDJoZ1VnMHpyd2RrWlFYVU5KVjYvNFRRWWhP?=
 =?utf-8?B?MS9BSmlvS0x0dGlJeUtUbWFuZ29HanBYUDkxNXVmUFpOM2ttTnhBUXNIMkhG?=
 =?utf-8?B?OFdMWWQrMjBNdmZjTTVzekZ6MmNVbWt3UmtLdUFLNFN4V1RVS3FYdjNtRUIv?=
 =?utf-8?B?RGxDc2VCTHI1cE5ZU3pHM1ZLSlNKQWJVR0gvQzJDRjBqM1VlWlFLOXFYK2xJ?=
 =?utf-8?B?NXBwVGxQYWlJUW4wNnMwSWZaK3VpMzhNMG1KK1EwUEt3bVZzS2JYNWIyU0VL?=
 =?utf-8?B?cUNJQjFKc0RVUnY3SE9ZNXEvN2RBSGxmd1I4aVFQRmwwcm96Vzd1TDc3Z3U0?=
 =?utf-8?B?L3VSUXdhUUFFekMxSDQwbTVnZ2oyMVVxNGFBR1FFOWVJclhIMnlEcE1CbDFy?=
 =?utf-8?B?bkxqYUpCM1l6ZmtXOTQ2N1pqT2wwbkZUOXhkdy9mdW85NXdaalp4dGtLL3FV?=
 =?utf-8?B?elpSNG82b0xDVWhqNGE2SS81Yjd1RmpBRHFKNkpvRGxRSUl6VGVKUmdlSkNa?=
 =?utf-8?B?QXlZd2JDNDBTd1RYak9qdE1SZTN3R2dPVEE3aUd5VExyaDZBcFVVNUtEWDJv?=
 =?utf-8?B?Rjd4UmFlMU9lUWF6UVhNNkZsTzhIMU12NHh0eHBrbkRHV2RmL250VnlPSDA4?=
 =?utf-8?B?dWtTbHd0R1U2Nlpja1ExYkdVc1UraVRBeEZrQ3VKSHZ2eGl4TVZTS24yRzYy?=
 =?utf-8?B?M3VJM2FBMlg4RGNFK2ovVFRpcGIrbWVaa29MRVFGaVNxTGhxZmN6KzJib3E1?=
 =?utf-8?B?NUZLUU5ET0ZDR2EzZGlUSnkwa1FHbncwejRxek5seG5qYmd4ejhMRDBTWS82?=
 =?utf-8?B?MTdCKzFrZWdvb3dGR0lPK1RIbE5DdWN6TVYvb0t1OHE4TkxFeWI4a0hKVlQv?=
 =?utf-8?B?ZE84MDJNdjc0eDlFV25IRzBUaVY0MGVyZkh4ZCtGd2JqeHNSTkl4YlhZZ01s?=
 =?utf-8?B?N3dLOFdDZnlRaE9ONDRiZU44TURvNlJwM1dOeGh4VmJMVzJPbDJmSFFOblFQ?=
 =?utf-8?B?Z2NLZVJFQS81dEw5RktsZTI5R2FpN09yQjA1cGE4Y0lSWEhuTnVsc3FXY1Bs?=
 =?utf-8?B?VUJwNmcyTlUzV1gxVm8zNFdJSnJjTFVZelZrTzRkOUtlR1FheEtwZXhHOThV?=
 =?utf-8?B?ZWNaVzdYaGRkUFRPeDE2T3RvOTFjdnI5cjVoZm8yNm9kenp2NDdTeGlZeXVE?=
 =?utf-8?B?d0dVeXVXRFZRNnhPcVFVcVhtRkNGRlFZRDhVQ3dwbVh2Q1BEclBzMGV0MDQw?=
 =?utf-8?B?LzRSSEFES1cwNENHY0o4SUZvNUphRktvOU4xRWdxZWkwS09udWt5Sy9VNVha?=
 =?utf-8?B?eURRUUZmSEJoWkJoaHlsNk91eE5BZlphVUxnYnRoZVRPcXg4VnYyRzJINld5?=
 =?utf-8?B?alMvODhNSDRHb2xaYUZLQmx0WUVYRDF6ODNlTFlhK1ptQy9wYmxUWFFiNzFG?=
 =?utf-8?B?Tkd6RW5VaVZjSFZoVUJzZW53UTVkQU4wdloxOW02b0QrUkJIdmF2NnBsYkhJ?=
 =?utf-8?B?QjJOd1VONTJVSklKcFNkU3ZUR3VYcFVLVm9XRGY2UVNBVktkSjBVRkE3YUdv?=
 =?utf-8?B?Tzk0UHZrbkJEU1RQZXZCSmJpcUlwdE4zRVNyMnJEdWxCeHlhMzNQeVZSWjI0?=
 =?utf-8?B?bVlDZmlmUmRxRElySXV6MjFoQi8xMFJLeHZabWRSTmI0MTZhRlNTQXYwSi8w?=
 =?utf-8?B?VXZxblF1bWI3VytIbVV6RklpblIveG1LREozazExc2lTNC9acmtNdTJpUTBT?=
 =?utf-8?B?OUhuNURaN0FPdGNDUFF1VlVMeGVPa1FYcWNPUWZuL0JxRWRXZm54alo0djZ0?=
 =?utf-8?B?bkZYNkdKem1kMXV0dUYzS3pVQ1RHeHlGU0hFdGV3eHVFMmtheVMwdlZpNHNY?=
 =?utf-8?B?a09YVDhyT0kxZXRLaHNTQ3daZWtMRi95YmpTbW9uN283NlRTZEJ3Q1dsZWlq?=
 =?utf-8?B?K1U0SGladmxzTWdOUU9oeFZpVGpRclJidlcrY3lnK3ZhalJ5WWVLM3ZCWUR2?=
 =?utf-8?B?SkVaemJreGVlcWhsWDcvTHFnTjFXSjg5dXBaTGdyUFYvbHRoMGNCa1ZzamJv?=
 =?utf-8?B?U3p4cnBxN2NEZGRGYUdvREdyU1lUQlN4UFhRaFlDUVUwT20rcGtLaisvK2ZP?=
 =?utf-8?B?MEI5dUE5MllWYlY2WDljYVRJc1ZhL1FHOUJHWGQ0ejJYM0FaNEovdXJ0S3Fs?=
 =?utf-8?B?NnVacVZPbDlQZUF2RE9QSnN0aHJJL2h1eFMyNUorTHNRSHdFWDhNMzhISlhK?=
 =?utf-8?Q?o6A3ancuVoc4Bcylt3?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9130.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b12e8f-61e7-4db5-b58f-08de5dd641de
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2026 18:59:54.2137
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB10780
Message-ID-Hash: EAZZLZOZGOV7AFK47DT2UG6QQACPX5SO
X-Message-ID-Hash: EAZZLZOZGOV7AFK47DT2UG6QQACPX5SO
X-MailFrom: eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VAPTYYPO7VXNH3JLUG77UTGU2HZUFSXG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6706230604204441536=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,aerospacecloud.onmicrosoft.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,SA1PR09MB9130.namprd09.prod.outlook.com:mid]
X-Rspamd-Queue-Id: D41DE9988A
X-Rspamd-Action: no action

--===============6706230604204441536==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB9130FE71184277820E79EAA8EC90ASA1PR09MB9130namp_"

--_000_SA1PR09MB9130FE71184277820E79EAA8EC90ASA1PR09MB9130namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLiAgSSBzYXcgbm90ZXMgdGhhdCBzZWVtIHRvIGluZGljYXRlIHRoYXQgb3B0aW9uLiBB
bnlvbmUgYXQgRXR0dXMvTkkgY2FyZSB0byBjaGltZSBpbiBhcyB0byBob3cgdG8gZG8gaXQ/ICBJ
IGZvdW5kIGFuIGV4YW1wbGUgZm9yIEUzMjAgdGhhdCBzaG93cyBhbiBSRk5vQyAueW1sIHdpdGgg
YSBkcmFtIEZJRk8uICBJIGNvdWxkIG1ha2Ugb25lIGZvciBOMzIwLCBidXQgaXQgaXMgbm90IGNs
ZWFyIGhvdyB0byB1c2UgaXQgZnJvbSBnbnVyYWRpby4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpGcm9tOiBSb2IgS29zc2xlciA8cmtvc3NsZXJAbmQuZWR1Pg0KU2VudDogVHVl
c2RheSwgSmFudWFyeSAyNywgMjAyNiA2OjQ1IEFNDQpUbzogRXVnZW5lIEdyYXl2ZXIgPGV1Z2Vu
ZS5ncmF5dmVyQGFlcm8ub3JnPg0KQ2M6IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPg0KU3ViamVjdDogW0VYVEVSTkFMXSBSZTogW1VTUlAtdXNlcnNdIFRYIERSQU0gYnVm
ZmVyDQoNCg0KRG8gbm90IG9wZW4gbGlua3Mgb3IgYXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNv
Z25pemUgdGhlIHNlbmRlci4gSWYgdW5zdXJlLCBjbGljayB0aGUgUmVwb3J0IFBoaXNoIGJ1dHRv
biBvciBmb3J3YXJkIHRoZSBlbWFpbCB0byBPUFNFQy4NCg0KSGkgRXVnZW5lLA0KSSAidGhpbmsi
IHRoYXQgdGhlIHJlcGxheSBibG9jayBjYW4gYWN0IGFzIGEgRklGTyBpbiByZWNlbnQgVUhEIGlt
YWdlcy4gIEJ1dCwgdGhlcmUgaXMgYSBwb3NzaWJpbGl0eSBJIGFtIHdyb25nIHN1Y2ggdGhhdCB0
aGVyZSBpcyBhIGJ1aWxkLXRpbWUgcGFyYW1ldGVyIHRoYXQgaXMgbmVlZGVkIHRvIGNvbmZpZyB0
aGlzLiAgQW5vdGhlciBvcHRpb24gd291bGQgYmUgRFBESyBpZiB5b3UgYXJlIG5vdCBhbHJlYWR5
IHVzaW5nIGl0Lg0KUm9iDQoNCk9uIE1vbiwgSmFuIDI2LCAyMDI2IGF0IDc6MDDigK9QTSBFdWdl
bmUgR3JheXZlciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8bWFpbHRvOmV1Z2VuZS5ncmF5dmVy
QGFlcm8ub3JnPj4gd3JvdGU6DQpIaSwNCg0KVGhlIGRlZmF1bHQgVFggYnVmZmVyIGZvciBOMzJ4
IGlzIDEyOGsgc2FtcGxlcyA9IDUxMiBrQi4gIFRoZSBib3ggaGFzIDEgR0Igb2YgRFJBTS4gIEkg
YW0gZ2V0dGluZyBvY2Nhc2lvbmFsIHVuZGVyZmxvd3Mgd2hlbiBzdHJlYW1pbmcgYXQgMjAwIE1z
cHMsIGV2ZW4gdGhvdWdoIHRoZSBDUFUgaXMgbm90IHZlcnkgbG9hZGVkIGFuZCBlYXNpbHkgbWVl
dHMgdGhlIGF2ZXJhZ2UgdGhyb3VnaHB1dC4NCg0KSSBoYXZlIGRvbmUgYWxsIHRoZSB1c3VhbCBz
dHVmZiDigJQgaXNvbGF0ZWQgY29yZXMsIHBpbiB0aHJlYWRzIHRvIGNvcmVzLCBldGMuDQoNCklz
IHRoZXJlIGEgd2F5IHRvIGluY3JlYXNlIHRoZSBkZWZhdWx0IERSQU0gYnVmZmVyIHNpemUgdy9v
dXQgcmVidWlsZGluZyB0aGUgRlBHQSBpbWFnZT8NCg0KVGhhbmtzLg0KDQpFdWdlbmUgR3JheXZl
ciwgUGguRC4NClByaW5jaXBhbCBFbmdpbmVlcg0KMzEwLTMzNi0xMjc0DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20+DQo=

--_000_SA1PR09MB9130FE71184277820E79EAA8EC90ASA1PR09MB9130namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBI
ZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsiIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpUaGFua3MuJm5ic3A7IEkgc2F3IG5vdGVzIHRo
YXQgc2VlbSB0byBpbmRpY2F0ZSB0aGF0IG9wdGlvbi4gQW55b25lIGF0IEV0dHVzL05JIGNhcmUg
dG8gY2hpbWUgaW4gYXMgdG8gaG93IHRvIGRvIGl0PyZuYnNwOyBJIGZvdW5kIGFuIGV4YW1wbGUg
Zm9yIEUzMjAgdGhhdCBzaG93cyBhbiBSRk5vQyAueW1sIHdpdGggYSBkcmFtIEZJRk8uJm5ic3A7
IEkgY291bGQgbWFrZSBvbmUgZm9yIE4zMjAsIGJ1dCBpdCBpcyBub3QgY2xlYXIgaG93IHRvIHVz
ZSBpdCBmcm9tIGdudXJhZGlvLjwvZGl2Pg0KPGRpdiBpZD0iYXBwZW5kb25zZW5kIj48L2Rpdj4N
CjxociBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7d2lkdGg6OTglIiB0YWJpbmRleD0iLTEi
Pg0KPGRpdiBpZD0iZGl2UnBseUZ3ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGlicmks
IHNhbnMtc2VyaWYiIHN0eWxlPSJmb250LXNpemU6MTFwdCIgY29sb3I9IiMwMDAwMDAiPjxiPkZy
b206PC9iPiBSb2IgS29zc2xlciAmbHQ7cmtvc3NsZXJAbmQuZWR1Jmd0Ozxicj4NCjxiPlNlbnQ6
PC9iPiBUdWVzZGF5LCBKYW51YXJ5IDI3LCAyMDI2IDY6NDUgQU08YnI+DQo8Yj5Ubzo8L2I+IEV1
Z2VuZSBHcmF5dmVyICZsdDtldWdlbmUuZ3JheXZlckBhZXJvLm9yZyZndDs8YnI+DQo8Yj5DYzo8
L2I+IHVzcnAtdXNlcnMgJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0Ozxicj4NCjxi
PlN1YmplY3Q6PC9iPiBbRVhURVJOQUxdIFJlOiBbVVNSUC11c2Vyc10gVFggRFJBTSBidWZmZXI8
L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pg0KPHAgc3R5bGU9ImJhY2tn
cm91bmQtY29sb3I6IzVFOEFCNDsgY29sb3I6I2ZmZmZmZjsgZm9udC1zaXplOjEwcHQhaW1wb3J0
YW50OyBwYWRkaW5nOjFlbSI+DQo8c3Ryb25nPkRvIG5vdCBvcGVuIGxpbmtzIG9yIGF0dGFjaG1l
bnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIuIElmIHVuc3VyZSwgY2xpY2sgdGhl
IFJlcG9ydCBQaGlzaCBidXR0b24gb3IgZm9yd2FyZCB0aGUgZW1haWwgdG8gT1BTRUMuDQo8L3N0
cm9uZz48L3A+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgZGlyPSJsdHIiPkhpIEV1Z2VuZSwNCjxk
aXY+SSAmcXVvdDt0aGluayZxdW90OyB0aGF0IHRoZSByZXBsYXkgYmxvY2sgY2FuIGFjdCBhcyBh
IEZJRk8gaW4gcmVjZW50IFVIRCBpbWFnZXMuJm5ic3A7IEJ1dCwgdGhlcmUgaXMgYSBwb3NzaWJp
bGl0eSBJIGFtIHdyb25nIHN1Y2ggdGhhdCB0aGVyZSBpcyBhIGJ1aWxkLXRpbWUgcGFyYW1ldGVy
IHRoYXQgaXMgbmVlZGVkIHRvIGNvbmZpZyB0aGlzLiZuYnNwOyBBbm90aGVyIG9wdGlvbiB3b3Vs
ZCBiZSBEUERLIGlmIHlvdSBhcmUgbm90IGFscmVhZHkgdXNpbmcgaXQuPC9kaXY+DQo8ZGl2PlJv
YjwvZGl2Pg0KPC9kaXY+DQo8YnI+DQo8ZGl2IGNsYXNzPSJ4X2dtYWlsX3F1b3RlIHhfZ21haWxf
cXVvdGVfY29udGFpbmVyIj4NCjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJ4X2dtYWlsX2F0dHIiPk9u
IE1vbiwgSmFuIDI2LCAyMDI2IGF0IDc6MDDigK9QTSBFdWdlbmUgR3JheXZlciAmbHQ7PGEgaHJl
Zj0ibWFpbHRvOmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnIj5ldWdlbmUuZ3JheXZlckBhZXJvLm9y
ZzwvYT4mZ3Q7IHdyb3RlOjxicj4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgY2xhc3M9InhfZ21haWxf
cXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7IGJvcmRlci1sZWZ0OjFweCBz
b2xpZCByZ2IoMjA0LDIwNCwyMDQpOyBwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxkaXYgY2xhc3M9Inhf
bXNnLTMwODk2NjU4NzcxOTA0NDM2MDMiPg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2IHN0eWxlPSJm
b250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxD
YWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAs
MCwwKSI+DQpIaSw8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0Vt
YmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjxicj4NCjwvZGl2Pg0KPGRp
diBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9u
dFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNv
bG9yOnJnYigwLDAsMCkiPg0KVGhlIGRlZmF1bHQgVFggYnVmZmVyIGZvciBOMzJ4IGlzIDEyOGsg
c2FtcGxlcyA9IDUxMiBrQi4mbmJzcDsgVGhlIGJveCBoYXMgMSBHQiBvZiBEUkFNLiZuYnNwOyBJ
IGFtIGdldHRpbmcgb2NjYXNpb25hbCB1bmRlcmZsb3dzIHdoZW4gc3RyZWFtaW5nIGF0IDIwMCBN
c3BzLCBldmVuIHRob3VnaCB0aGUgQ1BVIGlzIG5vdCB2ZXJ5IGxvYWRlZCBhbmQgZWFzaWx5IG1l
ZXRzIHRoZSBhdmVyYWdlIHRocm91Z2hwdXQuPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWls
eTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhl
bHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8
YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVk
Rm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkkgaGF2ZSBkb25lIGFsbCB0aGUgdXN1
YWwgc3R1ZmYg4oCUIGlzb2xhdGVkIGNvcmVzLCBwaW4gdGhyZWFkcyB0byBjb3JlcywgZXRjLiZu
YnNwOyZuYnNwOzwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1i
ZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJp
ZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2
IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250
U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29s
b3I6cmdiKDAsMCwwKSI+DQpJcyB0aGVyZSBhIHdheSB0byBpbmNyZWFzZSB0aGUgZGVmYXVsdCBE
UkFNIGJ1ZmZlciBzaXplIHcvb3V0IHJlYnVpbGRpbmcgdGhlIEZQR0EgaW1hZ2U/PC9kaXY+DQo8
ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNG
b250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsg
Y29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5
OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVs
dmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NClRo
YW5rcy48L2Rpdj4NCjxkaXYgaWQ9InhfbV8tODIxMTk4NDE1MDUyNjM4MjExOVNpZ25hdHVyZSI+
DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3Nf
TVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJw
dDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFt
aWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmks
SGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4N
CkV1Z2VuZSBHcmF5dmVyLCBQaC5ELjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0
b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRp
Y2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KUHJpbmNp
cGFsIEVuZ2luZWVyPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19F
bWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNl
cmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQozMTAtMzM2LTEyNzQ8L2Rp
dj4NCjwvZGl2Pg0KPC9kaXY+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIDxhIGhyZWY9Im1haWx0
bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPg0KdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj4NCnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCjwv
ZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9o
dG1sPg0K

--_000_SA1PR09MB9130FE71184277820E79EAA8EC90ASA1PR09MB9130namp_--

--===============6706230604204441536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6706230604204441536==--
