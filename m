Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B139F69DC
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2024 16:19:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37864385AA9
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2024 10:19:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734535168; bh=fFdzbR/Fo+gr6xTXOvyMCG3teFKUO9l92GwaAZb0V84=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ZthRV4udqJCD9CN0LC0Bv9VbpkGTpC6VfJtD1XN5utEuSM03LosLHCMl/dk5U8FyL
	 3y211kRDi06jTgvLMJaFMFa0vo8Bt0QqoLrlI+DygvmZcEXuk11RKWYHemVPmWxWyz
	 KXpdfyNO6frI9+ngnqA/drs2Jp94qW48dGaoM+R/mF8dUVNBV+TEjAwabl+TivYMZX
	 KE98tMt+c9Nct6LMXMkQRwROQSoBJwPKLIs+JLeYkNHOZJNL47S9r/9tL10XS23HqJ
	 bcaIW1jZvkbl+fwXNw0QZvYOsYZa67NLEpng+c8v08Nr5QLxoP10ywtddAdBwqA2eR
	 N4XoWDh4jqSsQ==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 16AEB3859DF
	for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 10:18:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="tchEi64V";
	dkim=pass (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="S77TCJJP";
	dkim-atps=neutral
Received: from pps.filterd (m0144091.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BIFEO1s010072
	for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 15:18:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=gZ6x9JadsrBO85PWna2DQVKqmbji
	J5/R7AFY+HP1EgE=; b=tchEi64VzH7L1vbT6mh5ehAHNuhsIkxhOUJOv7B1shlD
	MarqiStrJ5Ol8hOq/F+SluzATBDgisYYqDuqM6lrQUq4L8QUg9rNvKqTvW8/laFl
	VmfbUXEB6OCiUkvbgeEHFmOFagxPx7Dioi0plQeDvOyS3UFfFKikMvIyMxI0YNhl
	KcMiei4nz6cN1dxBCapqVo0wTz1WXz3nlwhYWYrF/ZYk9+mWBV/tkwcKpuWVFraX
	9DT63g7JirbQFoWz1V6EhwHOryidOu86rjkoueGZMvKacAk67HqlUvEBPCyFgqkF
	ba/kzGdXrJePstHBNdV+IWFPa3i1E4Tf1aa8/jHYWw==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2040.outbound.protection.outlook.com [104.47.58.40])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 43m0nh8b1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 15:18:27 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OFt+219GuLtEvGPgTziAuYGd+jPT0chDiLY09Kd29bvzYYsdzCIrs+KXexkglO8wXjtt2mraukpTypte8Pen4WsJk8hg9KLY7XQgSGuUBMkFtwCUlWCZ++maqeQ03FZevWNTQkRKKZANE2N76ha0kiMB2Q3lUTBbZNT5Ppj5KzJ6eL3yxv2G+f2XTeYeFQzWzF6tYNylqTYhG/WTm3JWv7P+Tb4ZwlVblwtmDM0AQHzMoPzjsjZ5yH2WgOt2j2lAdWBQQB4iRoOdOHLr+ndyoVvNf5wmeCiU3+gdHZfLNKYOeuafAi5QK4BHcE3hpC5d9ZamRgi3Hmw2dQqAhj9qVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZ6x9JadsrBO85PWna2DQVKqmbjiJ5/R7AFY+HP1EgE=;
 b=LcPUy2tB6PrZgrgUZm7o3K4TVAX+TxOiPFibiaIzBTWkYohqB4inuNjCNlPvARPgWbjvaWYy4bVPGZC4UkREPfFotz240qqCJC3x1GHRAT+2JNnKnrsxUhzsVvh4fupNI9JORauM5MzHeQ6bQe/0OmIsa/lXBNo+hXsjE9QCFA7Md+D37po3ETVq3FvNFvLuZ2gw/unZKGW5KKKPrdHKN124YpUTRsSjJxnaV7W8mQ/KzpPjkJM/MqagiOIX8gHSt20OZvJ9Ksy7IFt/XrewvE6KfDxN82b2bgOW2cJRs/oOiAw0TdGKzMlBIwfBA+QJ8wWWUU3OuxKPjNdOpMCPDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZ6x9JadsrBO85PWna2DQVKqmbjiJ5/R7AFY+HP1EgE=;
 b=S77TCJJP/d5BD9gzZ6FnM6t0R/URq4ze4XVJ9/V/xEpPHBrBMV44hx85cN6rchWZuva0aqWTsc36FsiTNMMgCmA5TBjuGAlD3qd+MHeIIdh87rufGfdKlzoXSXAuIxqgkMKmVp9gn1abbDIzfyGWTkuwSW/BPJqV8lvFWUlFQlG/m4xZjhzdG5UeWj2JvvA8A1iNeLTPYARL3tGZ4vs2qz/wMXmDLveUUo4l/MTXagftQkXzPGm2GYUkG5XRpXO3kJSzW95Zv7UsSmQodkZ9CXQ+9O4/WGKbyNjYMh3NFHKTHv9vY44bIxIj0V1u6bvCnE4MY3oM4xvxuARjBHnhvQ==
Received: from PH0PR10MB4678.namprd10.prod.outlook.com (2603:10b6:510:3b::8)
 by SJ2PR10MB7655.namprd10.prod.outlook.com (2603:10b6:a03:547::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.12; Wed, 18 Dec
 2024 15:18:23 +0000
Received: from PH0PR10MB4678.namprd10.prod.outlook.com
 ([fe80::1b28:a9c1:f709:cbc6]) by PH0PR10MB4678.namprd10.prod.outlook.com
 ([fe80::1b28:a9c1:f709:cbc6%5]) with mapi id 15.20.8272.005; Wed, 18 Dec 2024
 15:18:23 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] USRPN310 not connecting
Thread-Index: AQHbUWAUI6BX+nvFa0muam6iGqhK9Q==
Date: Wed, 18 Dec 2024 15:18:23 +0000
Message-ID: 
 <PH0PR10MB46784514FA4F3B576848845499052@PH0PR10MB4678.namprd10.prod.outlook.com>
References: 
 <CAP=wbzPCCOD_cFR-Grtp0JsqR0JJLLOeDin3gGmbYkUEy6jzZw@mail.gmail.com>
In-Reply-To: 
 <CAP=wbzPCCOD_cFR-Grtp0JsqR0JJLLOeDin3gGmbYkUEy6jzZw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=89ae644f-6b2f-45fb-bebd-ad1a0946e101;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2024-12-18T15:17:38Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR10MB4678:EE_|SJ2PR10MB7655:EE_
x-ms-office365-filtering-correlation-id: c9701ab5-4776-438d-55d7-08dd1f773683
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|10070799003|7053199007|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?M2JnNE5CS0pleDNzdEtHLzlTVWdzWk1CWUViSU83c0FCUmYwRmVOYlE1ZTRJ?=
 =?utf-8?B?ejkzQ2NtRHlWRFhKbk1ibVdwRndzK3VZTVVNTUE5Z2dFeWx3aVBycUNkK0FU?=
 =?utf-8?B?K2M1YWZHaTZ3QlJvVVIrTVUvQitYbUZXMkh2NVE0M0dsZldwbGxMN0cwdm9u?=
 =?utf-8?B?VG9ySUMyVUN6OERBNHo5YTRpQStmczc4cUdnbUVRZ2duQWs0V2FEelBqVisx?=
 =?utf-8?B?Z1JHZnJHMnVCWmdReGl1OE1TMi9xTFVlYmpZaDVVQ3JWdTh1MEJXZVFyYzZm?=
 =?utf-8?B?aFNZWC9nSVRpVlNCQVRxRTZhdFZCQThwM3ZhVEp0RU04VGZZVy90NWZCa3Zw?=
 =?utf-8?B?aE5sUG9HOFQ4cEY0dDZEVkRwTStjYncrRG1GUmJmNE5TL29RdVVKdkxMVnZF?=
 =?utf-8?B?ODlzZEhDL0ZsZThvK1FKcnJOdmdoM2laWU9TVnhkNWs1OEd6c1hydmhpMjh4?=
 =?utf-8?B?aGdaQnNTd1h4WmN3UTY1Y1lkcFJTRlE4c2QzR2NhaW1lakNnLzM2NFQxaVVB?=
 =?utf-8?B?Mjh1NmR4L3hubWh5M0R1MkpGUG9UaUVjY1VzSjZNdG5yamt2WjhsTTIrT1oy?=
 =?utf-8?B?REREQkE3dlF1VVAyOTZIeTFHbzZoaUFKc3JCMi80NUptdnBPaDNma1ZLRmo0?=
 =?utf-8?B?VVpjRmN0NU9RM3dscmpZS245WnFEcHV0NDNQZXBRMnlFRWF6U3R1UnBsZm45?=
 =?utf-8?B?ZS96eU84bm1GRXFZSzNDZ0oyaisxR3N0eG4wM1l6QTkxMUVGS0swa1Btb3cz?=
 =?utf-8?B?M0NLaVZlcUFncWp1cWswaFZJMHNlWDVScjFLL05XbDZLMjFtcWhNSWhJbXFR?=
 =?utf-8?B?YzNXcStXUVNycEwvUWc0czAxdzN6TFF1cm5XUnJWb0xNZ1p2eWVFa3g3UGVo?=
 =?utf-8?B?SWNtTXhYaXE2TTZDdDI4ZUM2ZFJiZkVPTWE4OVdaSjh2N090TC9TaWNiR2pB?=
 =?utf-8?B?a3JmL1NJSDZVZkdMcHJpbnp6Nnp5Y0xlWTdMTTk0S1hMSkg3SW5rRzNZUHdr?=
 =?utf-8?B?QVN2SkUxOGZFZkw5MHVZckxoTWVYSElTQ0VZVEhaK09aNDJDYjFtZWtkaG9N?=
 =?utf-8?B?RzhMc01LT3pUMkphcDRZbDU4VVhxd3cwZzJFQi84Mm53anBhUGYwL0tDRDd0?=
 =?utf-8?B?dEIvTjJma2lLNFpTUTRJclVtaTV4QmI3enhRVWdVM1V6RCtpbmtmYXVZcVBk?=
 =?utf-8?B?VGJNREptZG95V1BMcnZ1V294aktzeGtTaTUzWGpVRWJZR3hlUnJsaURoUks4?=
 =?utf-8?B?ZkR5N3BHeFRoQWxhblZaL21HZzcrYkpxekdrTm5YYVYwRjNvdnVKQ3FhdmZW?=
 =?utf-8?B?T2FTa3cvVjZBVzNXVXkzUFViYmFUd3NkbEtjREgwcW4zdHRuY01INk5nY3Rq?=
 =?utf-8?B?MG1Gd2JVUVFGZVR4WWM1TjloQkh5UG0xMVdzdDJ0VWUyMHoxSXlkVHU2RTRC?=
 =?utf-8?B?L2tmd1dxVklsNXB2RmhtV3BnM3FLVmhyUzFybW1tVTZ0VEVVUTVSTnVRZGJE?=
 =?utf-8?B?UkRKdEN5MjBhWVlWZ0dEUXpXVEFVS0xWTXMwRTFrYUtjMVVaanUrWWVYczJt?=
 =?utf-8?B?VVZ6K3M0VGJKVzRyQXRSOUF2cG1kTG5BMlJBRWlVMzR5NmhmdUZ2bGl4UDhx?=
 =?utf-8?B?TTFsUFRIZE5FME96ajNidGtlOVBCZk9Jc29sYzNiMjdZRDY5RzVXa1VIT2ph?=
 =?utf-8?B?cDRCdVRzaXVsbzRzbHR3TUNybzZEbFU4c2hFKysxKy94UVorSUlzK0ZwS0RD?=
 =?utf-8?B?SU1RaFFOVUV5RVlCcnJFYkM1cGpkN210Z01KYXVxdStFVnlxYlFaK28vam55?=
 =?utf-8?B?SkRzZk96UDlYc0FQTFBTSTRRdWp4WFZURHlvWTBlZDc4Q1JVblNrN3RLZnRQ?=
 =?utf-8?B?L01kSXRzT3E4OERTcm1zY3hlZzU3VFBrbnBvT1BXVVZ1Rmc9PQ==?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4678.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Zkl2WWdaRE5KTzB1Wk9ydmE3dHFlUzR4SnlRd3U0cGJqSG9KRGxEcjNTMjVt?=
 =?utf-8?B?N2tONHQ0a0ZianU5QVBrQkhRTDhOeW9PQit5UjlIbHRCRElEQXlUNmFWY2VP?=
 =?utf-8?B?K1dqZU54Y3hSMmR2Z3FtVkdGRTQ5UGs0bTV4TnNJN0lEa29FczBoYVo2NWtR?=
 =?utf-8?B?UDVScEQwRHVYV1dNZjRpMEIySjM2aXZ3MkdzVmNHTjl1UnJ5SndVblRyMXAw?=
 =?utf-8?B?Tlh6RW5qTXVWc2lKRG9LbytOZzFXN3dWVmFCSlJHTER5dy9NNkxaOHMyZW0v?=
 =?utf-8?B?ekIweXMrRmpoV0kwS2RlRXIxZHVVbi9uZjljQlpmZG9jT1FQRjVDMEVOVTNT?=
 =?utf-8?B?WkdjV1pzUDJ5Wnl3akZra0x5VlNhV1F4a3BSdlJzRWNlSlZnOG1TUFlneHJ0?=
 =?utf-8?B?ZHZubHYwWEFIcFFUT0lLZWVmMnZrVjVrR2tVNVZ6dWNNRVNaWTNTZHVYZDl6?=
 =?utf-8?B?WXNLd1pzc1ZVMHlwZ3NwWjlyaEU0MlM4NGZ4NzJnNlFKNjM3THZBOHNSU2Er?=
 =?utf-8?B?WUhhR2dtN0RpdWFYTDc5Q21rcGszOUY1azVxMXJoYlgwak5wYUo2aG5RZ3g3?=
 =?utf-8?B?ZzAvcVFNZVFXWlVMUEx6RHNrTUlHQ3dBaEhoMkhrRHVhLzllSFV5VDBYYWtU?=
 =?utf-8?B?czFETGpJZDNrOC9ZMEtQK0hTR05EWW51WWI2bHJEcC9VUTA0Vjd4ajVvRy9N?=
 =?utf-8?B?MTEvdTlDc2VNWWJTdC9MTFI3a21nVlpyU3dVWDBMeVU3TkFVZTNaNGsxOGxj?=
 =?utf-8?B?eExsZk9tTDIrSkIvYnUvVW9rS2VYTFh2TGFId2owMFltRmxzNFFleFdWKzVB?=
 =?utf-8?B?S1VQSDY2MFpmalJ2MVRKc3lIbkl3MlU3VzhTWnNlbndtTk5aZEpyK3FvV2tT?=
 =?utf-8?B?Wmp5bCtML1FXUDlZR0d6dFNDclF4b2xBWE5QMXJUbk05aW5rdkppblNubm9V?=
 =?utf-8?B?T2ltY2h0UENIS0JES1N1SCs2dEIzQmFXWWRybkVzcUxzV01wU01OemVBY204?=
 =?utf-8?B?NnVSUkkwdjBpVzEycEhwYmg2SnpjektOMnNSY2RYZ0F5UWtrNDZxZEI0d1R0?=
 =?utf-8?B?ektwdGhzcStFeEhhY2V6NXhIRkFHQnZOVWNrQjVUS2Erbk1scGs5TThiSmYy?=
 =?utf-8?B?TE83MnY0aFJ2OHFDeUlidnhTVkFTRVluM0hidVJTMWdDOXdpZTcrS3gzb21p?=
 =?utf-8?B?UCs0SXMwM0pYSTNadWl0ZmowNm9MZ1h4TGdDUGhwNm9mbHRYNExJZUZNQXh2?=
 =?utf-8?B?bi9BREJJY0hRNkE4WEZ1VExDSUJjMndDL0I2cHhqV01JczIraDd3ZnBFcVV5?=
 =?utf-8?B?TTQ3WVgwYlEwVU5oalFKMzlINURvVkF2UkI5UDdmNWFNVHBPSW9ndTV4eFN0?=
 =?utf-8?B?ejg4a3pDcW1IUkFsWklOT0U2TDUwVzJhd1RhOHpHNDVSRHdDZUpKdkxPNDNx?=
 =?utf-8?B?TlRzM3NOa1RDcTY2L2hPZXVhakZISmFqK3RkbkxMV3lHekUveWVHc1FtWnJE?=
 =?utf-8?B?RjBublUvQTJDbW9OcmNqa1VZQXNBK2NmaEl0VHFZTkxmbVFWcEY4UjdZeHZy?=
 =?utf-8?B?QU1TMkpoWlJsRjRCcytpMXo2YXFEMGp1b3VnM3lEbm9xUW1pSHBVdnUxNVpP?=
 =?utf-8?B?ditrVXZHMmIvbVZiMkoxUjVEMzd6VmtzTEU3WFhzMVNYQytDRWpoZGpRTklH?=
 =?utf-8?B?aG92b2M3SldLcE0wQmE2cER6K3ZpdXJwa3BXR29ibjNxdzVUeVJIbkNFeXJK?=
 =?utf-8?B?V3p5QjVQVG5rSkdiNitGeW9oN3cvYjY0RmlONFlCcitOWTA1M2dyVFptU1V5?=
 =?utf-8?B?MW1lVWdEQUVaa05qaHJwdzhSb1NpOTdZSVoyOFVidXU0UlhHNDc0d2QzNWY1?=
 =?utf-8?B?TDQweFROUnpKY0xNY0NtbWx1L2NnQ1ZYRlFTWXpUQzVXQWRpMGsyVG1VcFZ0?=
 =?utf-8?B?V1ZOcXcxVDczd1Y0Z0h0TkdyVVpOaVdNTnpiWGFsZ1NRaGhidGhZWk5neldJ?=
 =?utf-8?B?WEZiWGRjeXVvejFFbVZxVEZwWDFMbnh3SkFXNEp5RlFNZG1zeE5sbE1GWG5u?=
 =?utf-8?B?OXcvck9lNklYMTNTUXZyNmNnVTNzc3c4R2dqN1BvL3BvdGFCSVFNVGp6cGM3?=
 =?utf-8?B?Qmo5YmxtSk9KV1pOa2ZhSnVMODZLVXRHSE51bVpoeHoyeUJlTWtQaXViQ1Vm?=
 =?utf-8?B?TUFCd1hzWGVrMEVsWDhCWHcrODcxQjVIZUY2dzQxM2xUWWVKLzdJajl4d3RC?=
 =?utf-8?B?OTFsUDcyWXNlcnJjSmthRWVwNUdRPT0=?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4678.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9701ab5-4776-438d-55d7-08dd1f773683
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 15:18:23.2509
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inc5QMweaKZ6L3nyOh3NsbN1eAkZ+FZbKhoaPKy4XcBEEI+iaNKgQpsivlysONcbIHExtWNsioVhaexvpn9X7CgpH27Akn2llB5f7FxZai4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB7655
X-Proofpoint-GUID: Cbpa2czP2Cr-ATyFLVso-jnnN5Asrz76
X-Proofpoint-ORIG-GUID: Cbpa2czP2Cr-ATyFLVso-jnnN5Asrz76
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-11_11,2024-12-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 adultscore=0 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412180119
Message-ID-Hash: FD2X6E3STYWT6ZELBY2HDWGYXDT4DA64
X-Message-ID-Hash: FD2X6E3STYWT6ZELBY2HDWGYXDT4DA64
X-MailFrom: prvs=908252399c=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRPN310 not connecting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6G3F57COM4NMU3DSCS2UZBTKXW6Y7XR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============0459089425481823963=="

--===============0459089425481823963==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR10MB46784514FA4F3B576848845499052PH0PR10MB4678namp_"

--_000_PH0PR10MB46784514FA4F3B576848845499052PH0PR10MB4678namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVwZW5kaW5nIG9uIHdoYXQgZXhhY3RseSBkb2Vzbid0IHdvcmsgeW91IGNhbiB0cnkgdG8gdXBk
YXRlIHRoZSBmaWxlIHN5c3RlbSBvbiB0aGUgZGV2aWNlOg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20v
VVNSUF9OMzAwL04zMTAvTjMyMC9OMzIxX0dldHRpbmdfU3RhcnRlZF9HdWlkZSNVcGRhdGluZ190
aGVfTGludXhfRmlsZV9TeXN0ZW0NCg0KWW91IHNob3VsZCBiZSBhYmxlIHRvIHNzaCBpbnRvIHRo
ZSBzeXN0ZW0uIElmIHRoYXQgd29ya3MgYW5kIG9ubHkgVUhEIGlzIHVuYWJsZSB0byBmaW5kIHRo
ZSBkZXZpY2UgdGhlbiBzb21ldGhpbmcgaXMgd3Jvbmcgd2l0aCB0aGUgaGFyZHdhcmUgZGVtb24u
IElmIHlvdSBjYW5ub3QgZXZlbiBjb25uZWN0IHZpYSBzc2ggdGhlbiBpdCBpcyBtb3N0IHByb2Jh
Ymx5IGFuIGlzc3VlIHdpdGggdGhlIG5ldHdvcmsgY29ubmVjdGlvbi4gVGhlcmUgaXMgYSBzZXJp
YWwgY29uc29sZSBhdmFpbGFibGUgd2hpY2ggeW91IGNhbiB1c2UgdG8gZGVidWcgaW4gdGhhdCBj
YXNlLiBUaGlzIGlzIGV4cGxhaW5lZCBpbiB0aGUga25vd2xlZGdlIGJhc2UgYXJ0aWNsZSwgdG9v
Lg0KDQovTWFydGluDQoNCkZyb206IE11aGFtbWVkIE11c3RhcWltIDxhYmFjdXM4MkBnbWFpbC5j
b20+DQpTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDE4LCAyMDI0IDEwOjAxIEFNDQpUbzogdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NClN1YmplY3Q6IFtFWFRFUk5BTF0gW1VTUlAtdXNlcnNd
IFVTUlBOMzEwIG5vdCBjb25uZWN0aW5nDQoNCkhpIEV2ZXJ5b25lLCAgSSBoYXZlIFVTUlAgTjMx
MCwgd2hlbiBJIGNvbm5lY3QgaXQgdG8gbXkgbGFwdG9wL1BDIGl0IGlzIG5vdCBzaG93aW5nDQpI
aSBFdmVyeW9uZSwNCkkgaGF2ZSBVU1JQIE4zMTAsIHdoZW4gSSBjb25uZWN0IGl0IHRvIG15IGxh
cHRvcC9QQyBpdCBpcyBub3Qgc2hvd2luZyB0aGF0IGl0IGlzIGNvbm5lY3RlZCwgd2hpbGUgdGhl
IG90aGVyIE9uZSBpcyBjb25uZWN0aW5nIGZpbmUgYW5kIEkgd2FzIGFibGUgdG8gdXNlIGl0Lg0K
DQpJcyB0aGVyZSBhIHdheSBJIGNhbiByZXNldCBNWSBVU1JQIE4zMTA/Pw0KDQoNCkJlc3QgUmVn
YXJkcywNCg==

--_000_PH0PR10MB46784514FA4F3B576848845499052PH0PR10MB4678namp_
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
PHNwYW4gbGFuZz0iRU4tVVMiPkRlcGVuZGluZyBvbiB3aGF0IGV4YWN0bHkgZG9lc24ndCB3b3Jr
IHlvdSBjYW4gdHJ5IHRvIHVwZGF0ZSB0aGUgZmlsZSBzeXN0ZW0gb24gdGhlIGRldmljZToNCjxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Imh0dHBz
Oi8va2IuZXR0dXMuY29tL1VTUlBfTjMwMC9OMzEwL04zMjAvTjMyMV9HZXR0aW5nX1N0YXJ0ZWRf
R3VpZGUjVXBkYXRpbmdfdGhlX0xpbnV4X0ZpbGVfU3lzdGVtIj48c3BhbiBsYW5nPSJFTi1VUyI+
aHR0cHM6Ly9rYi5ldHR1cy5jb20vVVNSUF9OMzAwL04zMTAvTjMyMC9OMzIxX0dldHRpbmdfU3Rh
cnRlZF9HdWlkZSNVcGRhdGluZ190aGVfTGludXhfRmlsZV9TeXN0ZW08L3NwYW4+PC9hPjxzcGFu
IGxhbmc9IkVOLVVTIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPllvdSBzaG91bGQgYmUgYWJsZSB0byBz
c2ggaW50byB0aGUgc3lzdGVtLiBJZiB0aGF0IHdvcmtzIGFuZCBvbmx5IFVIRCBpcyB1bmFibGUg
dG8gZmluZCB0aGUgZGV2aWNlIHRoZW4gc29tZXRoaW5nIGlzIHdyb25nIHdpdGggdGhlIGhhcmR3
YXJlIGRlbW9uLiBJZiB5b3UgY2Fubm90IGV2ZW4gY29ubmVjdCB2aWEgc3NoIHRoZW4gaXQgaXMg
bW9zdCBwcm9iYWJseSBhbiBpc3N1ZQ0KIHdpdGggdGhlIG5ldHdvcmsgY29ubmVjdGlvbi4gVGhl
cmUgaXMgYSBzZXJpYWwgY29uc29sZSBhdmFpbGFibGUgd2hpY2ggeW91IGNhbiB1c2UgdG8gZGVi
dWcgaW4gdGhhdCBjYXNlLg0KPC9zcGFuPlRoaXMgaXMgZXhwbGFpbmVkIGluIHRoZSBrbm93bGVk
Z2UgYmFzZSBhcnRpY2xlLCB0b28uPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPi9NYXJ0aW4gPG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjExLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3Nw
YW4+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUx
IDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5
OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIGxh
bmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxp
YnJpJnF1b3Q7LHNhbnMtc2VyaWYiPiBNdWhhbW1lZCBNdXN0YXFpbSAmbHQ7YWJhY3VzODJAZ21h
aWwuY29tJmd0Ow0KPGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgRGVjZW1iZXIgMTgsIDIw
MjQgMTA6MDEgQU08YnI+DQo8Yj5Ubzo8L2I+IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJy
Pg0KPGI+U3ViamVjdDo8L2I+IFtFWFRFUk5BTF0gW1VTUlAtdXNlcnNdIFVTUlBOMzEwIG5vdCBj
b25uZWN0aW5nPG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBz
dHlsZT0ibXNvLWxpbmUtaGVpZ2h0LWFsdDouNzVwdCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
LjBwdDtjb2xvcjp3aGl0ZSI+SGkgRXZlcnlvbmUsJm5ic3A7IEkgaGF2ZSBVU1JQIE4zMTAsIHdo
ZW4gSSBjb25uZWN0IGl0IHRvIG15IGxhcHRvcC9QQyBpdCBpcyBub3Qgc2hvd2luZw0KPG86cD48
L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGkg
RXZlcnlvbmUsJm5ic3A7PG86cD48L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+SSBoYXZlIFVTUlAgTjMxMCwgd2hlbiBJIGNvbm5lY3QgaXQgdG8gbXkgbGFwdG9wL1BDIGl0
IGlzIG5vdCBzaG93aW5nIHRoYXQgaXQgaXMgY29ubmVjdGVkLCB3aGlsZSB0aGUgb3RoZXIgT25l
IGlzIGNvbm5lY3RpbmcgZmluZSBhbmQgSSB3YXMgYWJsZSB0byB1c2UgaXQuPG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPklzIHRoZXJlIGEgd2F5
IEkgY2FuIHJlc2V0IE1ZIFVTUlAgTjMxMD8/PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QmVzdCBSZWdhcmRzLCZuYnNwOzxvOnA+PC9vOnA+
PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_PH0PR10MB46784514FA4F3B576848845499052PH0PR10MB4678namp_--

--===============0459089425481823963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0459089425481823963==--
