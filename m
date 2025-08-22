Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D19FAB3117E
	for <lists+usrp-users@lfdr.de>; Fri, 22 Aug 2025 10:19:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10E2F3868D4
	for <lists+usrp-users@lfdr.de>; Fri, 22 Aug 2025 04:19:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755850747; bh=cnoaD61MMIsAT/DVZa7c6kXH7LCngg96V+LUClJQv8s=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kpbcH4JLMF9KT4tKKs6qbbPuVf1grc/FeSwz8pVIFxsDDVNq7kcnORvsihkYfERO0
	 IsSEPX56yXiWjbD22qKdNc9zHUvBSQFJfxqukXoVeS4VEphg4tXPgk71PLvI3SYues
	 ilz9CCDGUlibXdF2fpOiHsflaTuwfZlErr5ks3wpprvLXpvAvIvClgB/ZK2gdGGfYo
	 T468ACRWpBLIlSxb5rV++y8wE0pqd472WU1hcp53pW/Mv+xFbkRF/cTsEkR1WPXVDx
	 kxk3uhoMNnA1Bm9SMzlL3OFGu3T7eufraY8GfkaXaNngTBZlO85wa0D/6TYhILM+k5
	 tyuIEQVZOxxYg==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id E88EE3867E5
	for <usrp-users@lists.ettus.com>; Fri, 22 Aug 2025 04:18:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="s5+K1gNT";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="DG53SJ02";
	dkim-atps=neutral
Received: from pps.filterd (m0484881.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M3FkCi017407
	for <usrp-users@lists.ettus.com>; Fri, 22 Aug 2025 08:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=sguJehVSxknqJGWrsX6dvkgIHGWD
	cmYTY53AoziJMj4=; b=s5+K1gNT51+R3bWf9NhIkKR++VQOkQt45bH5T3p0l626
	cC9taEPxNAVsV8U6CR3wME6lobFbjw+h7NaeGsIw1uA+4ZkmBBLscCqOqkzfOy6g
	xgm27q7t7WWHGNr8/A+eqYYeWHb76abBE9SC7JmcUvoDYKareWEaqOpCM04UzGcs
	oCEWhkv/hTeeOQSlGGeZTYJO/ugW2qYERB/bi01zog9O4Ni61gBNcNfLs5cfqHJv
	cz+xvtm2jGdjmXhdveHh6TjDWcuMD8xStR+19Cb0WHicd1sEdxR783jwukn6ldqR
	vqWkYOvhd68uoUy6N3bIIdwsWbGse5M19vq0I3Cspw==
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04on2064.outbound.protection.outlook.com [40.107.101.64])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 48p1uxfhw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 22 Aug 2025 08:18:10 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k2urcEmYWBrddOxOtOd+IdvdE9DuEwbEuEa4J1h7cv7PQ+FWRcuDQ8eyUzaNuH49+cMLGJ5PIxIT6qvaKI3CFCcrWQirkDlkXK4kWYMWZBOFgWGiiUueQJdTnd3OAKC/khk5Nu72ZdS+iIDHc/inCJf/mxnIMhc6nIn2HAQCL2KI355lkE9PjAa5WHr1Jhj+HGWnOPSJ/8ttrQGtLg1vxCAZ45sz+4+Vigm2Y/acYlQ8RPa7tGojgqm5xsxdf9A2uLBdOANQHeXij8uJXgEHOlQv/rudrJdhiMVPXokf6RV+FY630Vo9RWr+V1jUeTl3ks8DPNt03YslCBup3/th/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U7+jwd43cxX6df0FryRBEctiqMEoRKf7Oy7zA6nsM7o=;
 b=nCP/6U5CdRTcrn9ihwpsGwF+W49okzn3A9LgmrnOb0XNq7cqdkwhphNr7yNE6apVb3WjRmC6bv2MugHPb3QD5DlHfKMc0M0uF0SS3Yp+g9q1JsHU+FiDK5NAopbrFrN6XPRy4oxWcZ6ZcnsVP0tL3+oDoma0Hu50i37nfplhpAWM8uqif7kAyNz+MmkzIUkWCrWbCbMGHZitvinjggtNtTHcgYeAg97+nJPTGrb+gc+E1e6GJ1BNeM4xieoRC5cjo5pDWaYQcC21nmINM7PRGghk19fyMi/QdEm76jguFc2qH837IFj4HA91QVOd+hST8zf+pCX7mbWYnR9+6OeAUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7+jwd43cxX6df0FryRBEctiqMEoRKf7Oy7zA6nsM7o=;
 b=DG53SJ02Fps4Pt4Eu+3pJxXpQrH55FYYiI9Fht7DhqAvbDvRyrnRiBZLdfLgyCAm2NVX33+paVX/UUo4mhtxeuSGttC7teDqM9dQt1/BcYd/JwU8U6MlRcHvIsnI+3ppCU1kepx7U1MIW3ArqM7SvkuupwqwO+bwKNQHCpuiy4emRnRgnKc3xPT3bC6JUnHTmFRLPQqtbIP0UkeiwjBghbSEa/kyvf0c3m1d4WWrNypwOzeRszCkm7iAWpM2boAAw4od7rksN+dn0RMnQnsgjIYPmbSAlCPBy+YE4eddr4F9GdieLRB/29WzF6zmbBpx2oLkbt7HN+edZK9LCCClgQ==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by PH3PPF9212BFFB8.namprd10.prod.outlook.com (2603:10b6:518:1::7b8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Fri, 22 Aug
 2025 08:18:08 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9%5]) with mapi id 15.20.9052.014; Fri, 22 Aug 2025
 08:18:07 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Error with ettus x440: Failure to create rfnoc_graph.
Thread-Index: AQHcEz1KIDIFt65iT0myhKxKEZU9og==
Date: Fri, 22 Aug 2025 08:18:07 +0000
Message-ID: 
 <CH0PR10MB5179864C795BF05493B60A7E993DA@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 CH0PR10MB5179F6CDC06E17C3A7AE5FF09932A@CH0PR10MB5179.namprd10.prod.outlook.com
 <EyqwXIECdCjm5ws9Hhc2V4wISRqDCqh8FV79Y6oi68@lists.ettus.com>
In-Reply-To: <EyqwXIECdCjm5ws9Hhc2V4wISRqDCqh8FV79Y6oi68@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=5573d004-8fec-4dd7-924c-c8d1daf8152c;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2025-08-22T07:33:38Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|PH3PPF9212BFFB8:EE_
x-ms-office365-filtering-correlation-id: 07ef7819-6383-42ad-91d7-08dde1546cfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018|7053199007;
x-microsoft-antispam-message-info: 
 =?utf-8?B?V1lZZG9xd1BjenVFODZVQXdyWE9MOTFRUHNCTitaUFBYbXVrREZCdmR5VVdM?=
 =?utf-8?B?WUkwczlRTERYYURNdHVDYkNRWVNMUVdnMUphdGF5L0tvOC9uRTZpMEZONVd2?=
 =?utf-8?B?di91UjBhQ2VkNG9ZcHFUNG1NSmR6MjRkM2tzU3dsRCs3NXBxY2ZFUjV1OWZU?=
 =?utf-8?B?N1h3aEp5QjlYbGFUKzFlWlFwcllPY0dCNFV6eTgySFdWMjQ3d2NkS3BmTVls?=
 =?utf-8?B?Y1pVRy9Da2FpbG5oVlNtSk1UWlc4WWNRV2UvUnJjUFltZlR2MkZ3SS9yRG1k?=
 =?utf-8?B?emlBa2F2OW1wYitsQVNNQkV5VldPM1lrQlJjVlYvVnB1aDVKMUpNZzcvbVVj?=
 =?utf-8?B?eldjQ0MrY2dHR29jeTNscFdEVlpxSnZlekFJVEJ1NzZxYjRVVE5hbmlQZE1o?=
 =?utf-8?B?VEd6Nms3d1BsNXgyTnY2emtBRTdsbUFtMzlFQ2FJUTZFZW1FL29WS3FKMm1O?=
 =?utf-8?B?Nk5wWFZDUVJ3YmNPd2JrQkM0dmhFeHpKYVVqMUVzNjlhdm5Bc2QvNmZmdjhI?=
 =?utf-8?B?MVo2eVk3bWxSTUxBMHhGMkc3Vjh2blp3L1dKbGp6RE9JK3NwdWdSUzZqdHVi?=
 =?utf-8?B?VGdneTVTU0ZnTC9Ud1RLb2E4UHhTMTg0a05mcHMxUFducGZyZ08zKzUzUlQ2?=
 =?utf-8?B?R092VWxGN1dnUU5hVTFvOXlheHJmYlU2TlB4WGM0SHZyeEJpblJWZ1c0Q0JS?=
 =?utf-8?B?anBmdWZNZ1BIaFZiSFJ2WUhVWmJYcGVXYnBkV2ROQklEQjY2RG8rcDY4NlBR?=
 =?utf-8?B?NFpmenJvbEdjMnJybjJOUlZsbUdKNE5adE9odzYwL2RwcVpjQjhzWloxZmxU?=
 =?utf-8?B?SzNNUGdXUmRvcTVVN3dsc1dRRVhkbkpBRUhFcXovY05zbjNoTVc4WkdiRU9x?=
 =?utf-8?B?WElxZXFHSXVjM0tXajRhblpXQzFlQjVzTDBPWlFoUzhTbGxZcU1ZRDBtVXRG?=
 =?utf-8?B?L0FqZzA1Q3FDcjVCMHJDQWZ2RldaZHY4WFA0akpwNGV3V25qTWdnSnBWaG5a?=
 =?utf-8?B?bkhnSGpIRjhDTm9vTm9qVGkwUURRdkFlWTVoaytTZHI2VUpRUk1rMkhWRHZ2?=
 =?utf-8?B?RDBsSXVvNUNmMnpvYWpEdlFER05ZeUdBZnhEU0dEdi9SR3cvMGg4bkUzaUU2?=
 =?utf-8?B?cWxDRCtIdWg4WXgzY1gydzdHK01iNjBwSFloT1VKZ08xNHNSdDZVRE1objFY?=
 =?utf-8?B?SzhmVzdkZmRWOEVPUVR0cVFaWUkwV0xTa1RxaTZTYVAvbEV2Mm5idlRaNWtD?=
 =?utf-8?B?aWllWFRSWnZabXcvTkVRTnBPRjhKei91UzVadUJHQVV6bmxzcWNyMXA4bU1Z?=
 =?utf-8?B?empSazl3TUwwcmZ3QXNpdXgvQjJaV2lxSVI2Mnh3VmdxaXJzOTRYNTV0SHd3?=
 =?utf-8?B?UlVObzBuNHlscE93NXhibGlmTjN4bmxZbU9KWDJOTmx6NnFNeGNLZXJlRHZ2?=
 =?utf-8?B?YXVuZTNBWm5wRlM0Z3JxTkNOL2VpdkZ6K1ZESmtCMGlQdjRraHhQaVYwcHRz?=
 =?utf-8?B?NG84MGg3TFZBbnJBQkpVdEUyUFpoaGF0NHJGQ3FBNWFUVEV2cDFmaTFWalYx?=
 =?utf-8?B?SkduY2g2Y3p1RG1hNGFObVphaTZ1NXhGbkV6TnQxdGtNOWVQWTcvM0ExTWVM?=
 =?utf-8?B?NkxxZjRpRnNsclc0WW9MRHljbUxNaWNFL1A4RGZzMzBTblQ2eDA5UEVKTHBE?=
 =?utf-8?B?bEMzdi8xNjRsdk1md3BYTk8zbW5EMm5XMjB4MThhSHlvTHVpL2h1UTBxelZk?=
 =?utf-8?B?WUpaeG9DSG5BWnR3Vk82Z2tGZzd2OGFLRTh0MWkvRnlOTkxsaTBORkdRVE4x?=
 =?utf-8?B?SUxMb2RrOHRzM1JydHh5ekJPcS9ETmFSZE1TRFUwSGdiRFhzOXhwcDZ5NEx4?=
 =?utf-8?B?aTdkZzFZSU1DSFFIUmtHMXVuT1JoU1dKZnVsVlA0a2lEN2w3bGdqR25zVVUy?=
 =?utf-8?Q?aw+c71io+Zc=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TldGSXBZTmNYL3BEUkE4dUc1VGVoZkkzMktzQWNUS2o3eGdxS09QMU1PZFY4?=
 =?utf-8?B?b3AwZGVvd0drdmZLTC85UVg0WTJxT2laVVdsM0krWWRWMUsxbVZjcGh4a0Nz?=
 =?utf-8?B?UUxqaVZZZjArdG9LVVhBWkxBK05nc2NWcmNJUElMMmV2UEVldzlxclNTNWVR?=
 =?utf-8?B?V21BRjZMcXliRGhkNTJXalNYNnE1MUJ2TWYxZXlyenN3WXhVU0wzeUZCR0pL?=
 =?utf-8?B?S1dwa1lPMUNWZWZLZnlzREZCSE5samNyNnJacGxjWDNwRHB6WWVLZ3h3TzZn?=
 =?utf-8?B?UGJ4bWdObnZDR0dTdTZnOEZxSmZ0VzVLeFFvMlVGTkUzRjROcnR5MVhXZFEr?=
 =?utf-8?B?RzNENzdzczhrc2w5M2dkWFNEdzlPd0VWdGZKMlhvSzQyOEdGUVozZTNLRVRL?=
 =?utf-8?B?bFF1QzZHRW0xYUNSbStQVjdSa1BuOFgwUEd4YWgxbjlZRnVwak5FRGpiQ05Z?=
 =?utf-8?B?MStUK2p6SkM0M1dGM0kxQzBFSXoyTFNuTFpYS0xyL1ltcVRUWXg4SUdYMXht?=
 =?utf-8?B?K0ovT2RkSVpMcmxKa1luSWxuME1XL1lNVTBvOGFFVFVMOEhuZFZxNGxDVTlD?=
 =?utf-8?B?ajV5cmo2bVBsd1I1QXZMbElLRCtBRllSYUVlZHc1RTMxSGJpTXBiSW1BNXI0?=
 =?utf-8?B?V00xVGJ3ZGVKQ3ovRERPNkdkZ0lRWTJHVC9zZEhWNHlHZVJsYWFoM0RQOUU5?=
 =?utf-8?B?enRMRVdGMXFSZTAvQTFHckU5S2Ntd2ZDM2wybjVtMExXQlRuN0t6MXlSRjMv?=
 =?utf-8?B?L3FCTEsvKzFWM0t2QkhRaXhQVUswQktvaTdOZy90ZFRxZkJ1UlFiN0tpTUV2?=
 =?utf-8?B?SEFJSDRHaExZeDNNdFY0Y25XWVVpSVVCWUJxbFR3ZXluL0FkamRjSEVZbzlB?=
 =?utf-8?B?TDFjWkd1dFdsbXk0OXhaekVSUlFNOTJxandwZGNmMzdoYXRGNFhmK3hLcUxz?=
 =?utf-8?B?N01EbWttc1RCUWE3ZGtZY3Z2STk2Y0IyN3dvRHhHUXBySk9raytSSDBDQzla?=
 =?utf-8?B?d1lmbWh0bHhlbkRWNTRmYUNqVmFRMGdvN3lCMjU1d3F3SU1kZUlxL3A3Sngw?=
 =?utf-8?B?ZXRINUdyZm1NdWNvaDNPWDBDVTZ6OTZsQnJsMTRTczdRbzQ4cHdDQ0lJazZV?=
 =?utf-8?B?MmpJbTEzOUZuNXdXeWlOUmcwSU1vejB1V3hTZUozZ25PaFg4UTJkV2ZvUDVj?=
 =?utf-8?B?YjhCMEVGa2dvdWV2OEdyNXk1ZXRTL1ZiK1crbk9QMlBwbTBzMkFCWUtVSGM5?=
 =?utf-8?B?dldWbEJTRVJzem9TRmFRVHBwZklNMjB6R2syWm5ZdVFYUmw0MmpsaVozcUJu?=
 =?utf-8?B?Y3ZUOFRWaTRyZS9TODhXdXRSNlpvVVp6N214bklYSFVqbEs1NGpMNzIyRDcr?=
 =?utf-8?B?UVNTUWVQY2RuYlFjNDNHOHlMZGlacVR3VEtiaFdIUUJ5MGZHbU5LanYvOG1w?=
 =?utf-8?B?dCszSzJDNTRrUFZab3JXMHM3dTVNcjRqNFdzako1eUlPV0hoUmtoZXFxczNR?=
 =?utf-8?B?c2xzb0NwWlJGTGVtelNjTGhrL1o5MUlPOFNWSWlHZ0hnNDRuNVYwdHVQRkR4?=
 =?utf-8?B?R0p5M3BaTHJGTk41TENUSzhYSmx1ME83OUx0ektFTkR1V3NObGNUR2dhVXdF?=
 =?utf-8?B?S0l6ZzdyY1RINjRUencvMHNsSUl6eEFJVGwrbDRtbUp6RzM2dGdSNGF0NklE?=
 =?utf-8?B?RWtWVW9Sa2t1NEtDb1JOKzZmY1p3Mm5WeElCczZ3NmQwdVpsaGZxN25pWGZO?=
 =?utf-8?B?QVA0RzFrTjRBaG5XZGZMS0hBUVh4Ulh6QldPUUhCRExkT1FLdUdDL0dSczJ2?=
 =?utf-8?B?UkppallsZ216SUE3Vi9qS0ZJZ0d5S3pBN0NNQWhYQnBicWdCcXJaU2tYcGJP?=
 =?utf-8?B?aDk3NElzOTBNcFpwRS9uS2srVWxvOVZQdmxQanR5UDVOam1VNHZ2dkEyMzBY?=
 =?utf-8?B?NnR3N3JRVzk1ZWR0M2M0TjQxeTFxSWtYekh0MjNvNktBbG5UdHgxcnRjUUh0?=
 =?utf-8?B?WHVSaUhzSFRpS0NnRmlMTmczTEcxNnUzYTVxRGx6NFdIcXl6bEtUQWhFOFZ0?=
 =?utf-8?B?ZWN4bFJsRk5BVGJtWUFFQmsxTCtEVEZLS01EUjMzejlhMWc0aDNLdjl5ZGVP?=
 =?utf-8?B?d1JFa3k5QmVmYk50VzFWcXJrbE1vOS9zQVdTSjdEaXdyZy9lVTlvdUN0Z29G?=
 =?utf-8?B?UXc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ef7819-6383-42ad-91d7-08dde1546cfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 08:18:07.8104
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z0TmzSxTtngA1CYNCJEhzY/vXPL1WQ4sWAXZYf8jZ/7Vi0Eu6a+Cgdql9Zn2snr73z5y9bmx9fZbXnFycupt5/ohVqwEwNbkAOO4jp5GVT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF9212BFFB8
X-Proofpoint-ORIG-GUID: z8nN-1DiTGZS7HxPS4qDmWRidudzwghK
X-Authority-Analysis: v=2.4 cv=ZKyOWX7b c=1 sm=1 tr=0 ts=68a827c3 cx=c_pps a=4wFjn6NnaH9estTEyqFxJA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=2OwXVqhp2XgA:10 a=ZPWZ4rD8_x8A:10 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8 a=nJ3zDl93ErHkFF4HuWUA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=n9ZFJHNE5GPUM5DYwdgA:9 a=o9dsNLb0rzgN0q7k:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDA3NyBTYWx0ZWRfXy8YNnyF5X93R +aMl0VEPbzWx8F0ZXkGqClQebBVm9tW/T4jkDSX5JdGBk8n4zHlCXVtVlnfbQ9e0SOF6SNS43fi JXdPoXv6XritbOsXiWyH9599XH8xyVETfbpdXX6veHFXUGKmYMYkob3Enxajfr99qlfh9IAahwp
 2wxGj8QKylt6wefp1jSVsk7G2TlK27x6Tos3b0SA7dfgnLyjfzVGRrt7ZsDvBubAkIahBLgUkQ3 7M8E4IkDU1YBuoBeHDUe8/kMRfW3vBFo9Wntyc0bm7mBYFjCwPf50kCLDy/7GE/YO7gvK83QBhh FavyvDOmV9W80WmTQVBAKTybLkY6vBtOm90sh2gUbHfRBgt97yHitXAhg3BSZ3ZtW/7nkffsJ+T
 ODhZKcmzJlkF2dIuihRoUccjOl+i6Ag12IwI8yT0U4On4v59nXCTZJG4TrT3C8dd8RpSPmq+
X-Proofpoint-GUID: z8nN-1DiTGZS7HxPS4qDmWRidudzwghK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 malwarescore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508220077
Message-ID-Hash: KC5CP6Q6I4UXOSMH6N5AKTRBNVDKGKK4
X-Message-ID-Hash: KC5CP6Q6I4UXOSMH6N5AKTRBNVDKGKK4
X-MailFrom: prvs=73296c96ae=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error with ettus x440: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ODWY5OTVBL6YOOUJ63J24MKHS72NECQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============3772181662313734093=="

--===============3772181662313734093==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB5179864C795BF05493B60A7E993DACH0PR10MB5179namp_"

--_000_CH0PR10MB5179864C795BF05493B60A7E993DACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rub=C3=A9n,

You say that you have basically done the same on both devices. But what str=
ikes me: In the erroneous device your printout looks like this:

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.heads-v=
4.8.0.0-0-g308126a4

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.0.3,type=3Dx4xx,product=3Dx440,serial=3D34B2ACC,name=3Dni-x4xx-34B2A=
CC,fpga=3DX4_400,claimed=3DFalse,addr=3D192.168.0.3

However, in the good device it looks like this:

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.8.0.0-0-g30=
8126a4

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D34B2ACC,name=3Dni-x4xx-34B2ACC=
,fpga=3DX4_400,claimed=3DFalse

That indicates that there is something different between those devices. The=
 bad one uses the external address which is surprising because if I run uhd=
_usrp_probe locally on my device it will not even work with the external ad=
dresses but only with the loopback device address 127.0.0.1 (or `localhost`=
). What is the argument string that you used for the two devices? Anything =
at all or did UHD pick this automatically (it might have had reasons=E2=80=
=A6)? Please try to login to the device via SSH or serial console and run `=
uhd_usrp_probe --args addr=3D127.0.0.1` to see what it looks like then. If =
that works on the currently erroneous device then it boils down to somethin=
g in the network configuration. When running this on a remote host, however=
, it must work with the external-facing IP address of the device, though, n=
o question, if the IP configuration is okay.

/Martin

From: Rub=C3=A9n Serrano via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, August 21, 2025 4:39 PM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] Re: Error with ettus x440: Failure to crea=
te rfnoc_graph.




Hi Martin,

=C2=B7 Yes, the output on the erroneous device has been generated by runnin=
g that command when i am logged into the device via SSH.

=C2=B7 I have checked the Ip configurations, which they are 192.168.0.3 for=
 the good device, 192.168.0.4 for the erroneous, 192.168.0.10 for the host =
(which only have 1 because i plugged and unplugged the devices so they have=
 been tested separately) and DHCP 192.168.0.255.

=C2=B7 Also the subnet and subnet mask are configurated the same for all th=
e network (ettus devices and host).

I am going to check out the manual that you send to me via link and see if =
i have set up anything wrong.

Also in my first tries to make the devices run, I have configured the set u=
p as you remarked in the reply, but suddenly when all goes wrong I only hav=
e tested the devices with the RJ45 connection. I will try to let the config=
uration as you recommended, but when i did i had the same issue.

Thank you so much for the quick reply.

--_000_CH0PR10MB5179864C795BF05493B60A7E993DACH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-ligatures:none;
	mso-fareast-language:DE;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Hi Rub=C3=A9n,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">You say that you have basically done the same on bot=
h devices. But what strikes me: In the erroneous device your printout looks=
 like this:<o:p></o:p></span></p>
<pre><code><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C++ version 11.4.0;=
 Boost_107400; UHD_4.8.0.heads-v4.8.0.0-0-g308126a4</span></code><span lang=
=3D"EN-US"><o:p></o:p></span></pre>
<pre><code><span lang=3D"EN-US">[INFO] [MPMD] Initializing 1 device(s) in p=
arallel with args: <b>mgmt_addr=3D192.168.0.3</b>,type=3Dx4xx,product=3Dx44=
0,serial=3D34B2ACC,name=3Dni-x4xx-34B2ACC,fpga=3DX4_400,claimed=3DFalse,<b>=
addr=3D192.168.0.3</b></span></code><b><span lang=3D"EN-US"><o:p></o:p></sp=
an></b></pre>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">However, in the good device it looks like this:<o:p>=
</o:p></span></p>
<pre><code><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C++ version 11.4.0;=
 Boost_107800; UHD_4.8.0.0-0-g308126a4</span></code><span lang=3D"EN-US"><o=
:p></o:p></span></pre>
<pre><code><span lang=3D"EN-US">[INFO] [MPMD] Initializing 1 device(s) in p=
arallel with args: <b>mgmt_addr=3D127.0.0.1</b>,type=3Dx4xx,product=3Dx440,=
serial=3D34B2ACC,name=3Dni-x4xx-34B2ACC,fpga=3DX4_400,claimed=3DFalse</span=
></code><span lang=3D"EN-US"><o:p></o:p></span></pre>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">That indicates that there is something different bet=
ween those devices. The bad one uses the external address which is surprisi=
ng because if I run uhd_usrp_probe locally
 on my device it will not even work with the external addresses but only wi=
th the loopback device address 127.0.0.1 (or `localhost`). What is the argu=
ment string that you used for the two devices? Anything at all or did UHD p=
ick this automatically (it might
 have had reasons=E2=80=A6)? Please try to login to the device via SSH or s=
erial console and run `uhd_usrp_probe --args addr=3D127.0.0.1` to see what =
it looks like then. If that works on the currently erroneous device then it=
 boils down to something in the network configuration.
 When running this on a remote host, however, it must work with the externa=
l-facing IP address of the device, though, no question, if the IP configura=
tion is okay.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Rub=C3=A9n Serrano via USRP-users &lt;usrp-users@lists.ettus.com&gt;
<br>
<b>Sent:</b> Thursday, August 21, 2025 4:39 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: Error with ettus x440: Failure =
to create rfnoc_graph.<o:p></o:p></span></p>
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
<p>Hi Martin,<o:p></o:p></p>
<p>=C2=B7 Yes, the output on the erroneous device has been generated by run=
ning that command when i am logged into the device via SSH.
<o:p></o:p></p>
<p>=C2=B7 I have checked the Ip configurations, which they are 192.168.0.3 =
for the good device, 192.168.0.4 for the erroneous, 192.168.0.10 for the ho=
st (which only have 1 because i plugged and unplugged the devices so they h=
ave been tested separately) and DHCP
 192.168.0.255.<o:p></o:p></p>
<p>=C2=B7 Also the subnet and subnet mask are configurated the same for all=
 the network (ettus devices and host).<o:p></o:p></p>
<p>I am going to check out the manual that you send to me via link and see =
if i have set up anything wrong.<o:p></o:p></p>
<p>Also in my first tries to make the devices run, I have configured the se=
t up as you remarked in the reply, but suddenly when all goes wrong I only =
have tested the devices with the RJ45 connection. I will try to let the con=
figuration as you recommended, but
 when i did i had the same issue. <o:p></o:p></p>
<p>Thank you so much for the quick reply.<o:p></o:p></p>
</div>
</body>
</html>

--_000_CH0PR10MB5179864C795BF05493B60A7E993DACH0PR10MB5179namp_--

--===============3772181662313734093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3772181662313734093==--
