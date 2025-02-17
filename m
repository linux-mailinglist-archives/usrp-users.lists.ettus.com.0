Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E51FA38750
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 16:16:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E296C385C94
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 10:16:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739805370; bh=4yjvDaRvlFHzBie00T4fWMoPcCVQU7py6vbng9nBmi8=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=O6Fr67Qa+0THriJ1wpZMJroXqQMcwIPH1Z2kKCkA6bNIzuOmQFLsQs938uWTXy0MS
	 HSPHE9tF779Ad//2vwLoTFBA87zhiAr1EaxAW8cI3fljvlrKmQ5XIht5I7EdF46vMp
	 wJv4LXmYn3Np7stcSQxAe3ZRqnfqnnd4pbfuC6tdyXXqWNL6tLb/xOlGn7aYw330kb
	 M316NmPjrSsnMODHNgJVNZr1nrd6FtfSUx3rhA1ZDFFPrFFhyGwGsxIFGmpwnZUXWD
	 sC03yBxLi2/N80fudbz5qk0MYqwyqZm5+yXSSyXxxUdnrFrT2MBrz8Jtv81/1eTyUh
	 Tt5CoorSGXtyg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0089.outbound.protection.office365.us [23.103.209.89])
	by mm2.emwd.com (Postfix) with ESMTPS id 34848385C11
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 10:16:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="NQo52OAx";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=FJGM13ommgeN0AqLnOmt+oM0wJW1eipZN7ZYmzy8yrga+a1vql7MOjkj7Ttg2axIei6VXKLE9BLJfxDCe5dR0QqOlTpWcsLQV8kqZC6rDkDzlNEudUTq8LfqNLW/rLATxonoXjPjUpi8LDiDGNyRGJjkSaam/90E8dAM5GoaFZDSNIXtVVavdrormmHZHGtPpFT3931xmF0PkvvavW2sHGGdko2R53lJMxRxYxoupdUijQYg/3EUZzg3MTmLG6rPtv6WKcnJIT4Xd7Zaic+XZS2+z3AYIjKwdlIRUGQh5j6mypue4meofj/uZSaUQyFgcy1Xe5von3ImwsaUjf0J8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Almu8nWQrSyBwL+4pnKuRqhu5s2LvsTNvtzw8XXWPdY=;
 b=qLUD3paS2/tK9uABMRxiz+iYmN+jZhuzAoP1hg9N8VC+T6B+QhsXFcZ2nLxCziAotOTpdminTIRXpSOKsYA7wkukzUDdBT+uWKyJzhGGPqlI0JfyGFLbXhBqIK5n9Vap5G9KaZsm2Tj4uYuXhSu99pjfVnvDBw5OuhIgVWkmEwaiyf+VQLdWHsDJw+OwHpOoNd1g3eEIO1C9UKn6aa8JzZUkF6GGvV9Yh4lpW3mdB5dYhx7cDDC8VST7SsWaMtdTyLc9h4pmxD3sU9uTPoQaBr1iJKEPX1jn244iuiT24oXJXSjg5BWO7jxKjHPct3Llu4DxcVqbqiadGgHKdOJFhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Almu8nWQrSyBwL+4pnKuRqhu5s2LvsTNvtzw8XXWPdY=;
 b=NQo52OAx1HVecL64O+/7UZ/83a4+lCodwd3USjI8esoAKwaRgk+RQ1pGugs9/sjeIVt+DAayWinSI1KlCmyFq7hL9fxf3YPSqIzgtCVFFpXpqXEEhcmpajoQ9VixNZV+j2eKVzqS/23guJ/EFhY/obNIEfy+z0xgr5zx5L/PvcAKr0GbLrYiV/DGmz7TJG6vEYFVjMswNGDXOdRModztz2dykTFuH6UwY7Zslwmh28rqykhCld0X24qrf5gxhmjmfLBDWaSuk1FIGph6t/8LeLfqQfCn6tPbF/ZNDXRsBZ5SSHrEtgf8vlRicsak8RWV1hH5mwvqv34+1zwVgrpIlQ==
Received: from SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:173::9)
 by SA1P110MB2085.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1aa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.24; Mon, 17 Feb
 2025 15:16:02 +0000
Received: from SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5230:8ea3:f498:529]) by SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5230:8ea3:f498:529%5]) with mapi id 15.20.8422.021; Mon, 17 Feb 2025
 15:16:01 +0000
To: "cyberphox@gmail.com" <cyberphox@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Reading/Write registers - Timeout
Thread-Index: AQHbgUN3OXKH9U466k+NB+cv8mQx9rNLmbYA
Date: Mon, 17 Feb 2025 15:16:01 +0000
Message-ID: 
 <SA1P110MB1754C2446AE77DCEF0A297D7B7FBA@SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM>
References: CAFOi1A4eJ+OaBm0Kbw5C-f1JeTMUaytgM0oyJSjaX85aFHizjw@mail.gmail.com
 <oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y@lists.ettus.com>
In-Reply-To: <oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1P110MB1754:EE_|SA1P110MB2085:EE_
x-ms-office365-filtering-correlation-id: e08908c2-d146-4c4c-e0b0-08dd4f65fd67
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|41320700013|1800799024|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?TzJUcFk2OFVyZEhnazdxNVBZSFhTN2J5c1NmeXRuRVdoamFXNTl2amovVGVS?=
 =?utf-8?B?Q3NRcWhjUzBhYjBXNEdJUDZSVjVTUmU1Y3pCNkpETi9IQm9MSzZIMW1ZUWUx?=
 =?utf-8?B?S0V0WGd2NW1YRzVFajNubnUwRlAvb1FDa0l1SzNaSTYvTHZqUUJidE15a3NE?=
 =?utf-8?B?THEzeVpieFNoeWJadU82d1dxM2FHU1g0ZVBBSkxJMHFmRUxpZUk4VkhXa2FM?=
 =?utf-8?B?VTVWdnJLUmdPbXc4aElBdGpFUG5raWdneU5qWngzV2k3Q0NjdDhUYXdET2FJ?=
 =?utf-8?B?TXY0MUMxTC9hanQ3RWhhWjZxRzRqVU1wODk2V1N1RDVVWnBJUU1IeThlWlRt?=
 =?utf-8?B?TFlNYjF4OHZSK1dLdWhxd1FHdjlDTVZFd2JtcU5oM256eWkydDBmQTN0RHVJ?=
 =?utf-8?B?V1ZuMWs1aVVkUGdnRWwycG00QVhSdWZqSERSbURMU0EvMENQNlhSLytvQlFv?=
 =?utf-8?B?dkdDdDNOVXBHTWZpWG04T1VwV21HVVVDa04yWks3ZW5ZYy9xOWRhcERyd1FB?=
 =?utf-8?B?N3ZxQWRHTnpzazJKek5lZHhQVEowQUpvQTdjbThZQ3Y2T2xZWisvaUthOWxC?=
 =?utf-8?B?S01CdXk0SzhRWVFTcjV6RHd5SGpTV0YyRVpETGd5OVRwQVI0akNQM0VkWnN6?=
 =?utf-8?B?NDJ0Ly90SHdtT0t6VHl6cXR1c05YTlFLV3M4c2hYNTNOaENjZUtIMnlwOHIv?=
 =?utf-8?B?UUZoVmJta2x2MmtZOUJrTFlWcGI0UUk0bXAxT1pxUUk0Q2JrU21hM0t4bE43?=
 =?utf-8?B?ZWhSMGEvVnJKVGdtRkw3UWZsNFZFbWQxMTh6bDZJMTUySUtDR2lwcUVVbWpk?=
 =?utf-8?B?dkFsVGNRL0dCZHoxWTNWT0x6SHF2Yys1WU5raWhpZTFDazljQXlRRE5pajAx?=
 =?utf-8?B?M25MaEZwUFFNS05UYmFoUVFLa2M2aDRTWWRQWnU5UHV4c0F6bVdmMkxPeDNN?=
 =?utf-8?B?dG1pa0dFT1RPUFdvOTJ4OHB0RWdKMTZVZUg5aG1IQnNPMVRNMnBwWkh1ZEQw?=
 =?utf-8?B?cHJPVk1ydDEyRFE1dDdpcDBTVGtvMUl6MUlQTDhCVStaY2Nzb1gzbDd3WE0r?=
 =?utf-8?B?NmFzYXk4ZmNBQnhKSmEvTmpaZjlqZk8rVHhwSS9UWXZYcldvVmh4UHFqZnk2?=
 =?utf-8?B?c1V5SXM3U0VIbW1seUJmdUNIUmZ1S3I1cVVQSHh6SlZJeUZqTlUxVzRHejFZ?=
 =?utf-8?B?ZGVNc0dzNURYZVRnOXBLNFBSZkk4aFBWU3NGR2RnaWFUQmtYaE90amE4UlBR?=
 =?utf-8?B?Q1ZrcE4zdzl6eFZGNlphbTVKN0lGOTVZV2Q3eVNvTXA0ZkYxei9OSWhSbm9j?=
 =?utf-8?B?YjFKenZvR2p5QUxDYk1QbTgxMS9OSkt2UU85anpISjZyc0tlakdoL2hlVlow?=
 =?utf-8?B?NWw3V21ta3lKZzk2ZXZXK2t1eDBrcmZMSWRvUFlGV3F3V1poK2xwekd3R0t2?=
 =?utf-8?B?WGdSV2JuMFBNM0dIY2Vway9JTXZIdXA3UW9PWkdTSng1SXlnYTNmZjhjRlB3?=
 =?utf-8?B?akNZMTdxZUZ3RHV3c0NXSmc4ZmtsSFhYUkVHbVZGUktaaVY3WE1YbDRzMEpG?=
 =?utf-8?B?NEVFR1JtcW5mWEh4MEY3blhsbzNDZEhrZTlnVmlvOTdQbWdXK2dMK2VlNGJB?=
 =?utf-8?B?N0VnWFJGS21Gb1FycVdoSk8wM3pHaXl1dHhHNURyOEZydmVDT1FrcGRMNDY4?=
 =?utf-8?B?dDRKYnhIODgwVWwvMlRac1AxK255b3hGcFJ6bCt5TEo1YlE5T1M2Q3hGWHRQ?=
 =?utf-8?B?YUZoWi8rMmNmRlFHSXV2aXdzRm1nWi9SUldlRFY3a1ZmZ1JvRnJDQ2RlNjFC?=
 =?utf-8?B?Q096RjU2bWkrdDBHUXhGSTF4ZTNRd3dFRUZMYUg0Z3U5a1RXUDZNYkcrRmVU?=
 =?utf-8?B?V0FDeC9xZVpKT0ZLdVF5VUMrUnh0T0VPdG14MUdFTFYzUGZtNlJMck9iSzZm?=
 =?utf-8?Q?AgJsm+SymZeJlaeQ5D3PPsG6n5lBq3h6?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(8096899003)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dGxMQ1h0S2JCMzNldnU5RVdhUjViZ0xMVVBSQkp6Z3lpU3ZmL1J4UXovU01x?=
 =?utf-8?B?d05XeUtqWFJ1T3R4WEhzalZKMUJGeVJyTkFWT2F3eTZPTE95RlRqY081c3Z0?=
 =?utf-8?B?TFBaUGRya2pYdGZjYm43MXNmYmsvVG1hMVlPTUl5aGpNRXlmK0tlRjVXZGN4?=
 =?utf-8?B?QWU2TWNsL0I2L0FFaWVSR2dDSHNGb1JOTzhWNXY0OTNhYlJORGJZbEtJQlhK?=
 =?utf-8?B?TTIvaFlGTnZ1Njh0UXN4SXNIVkU5ZkF4dlNlMUJEZnpPTUJ2ckZJeERoS1Fl?=
 =?utf-8?B?MGE0cnBadnMwN3NBeXIreTM4Ty9CNGh1OWprMXVLZzZUWmMrRDY0WjFDTFEx?=
 =?utf-8?B?QWRGdFVWd3gyYjZTVVN2aUZTMCt6dDhjRkhuRWJYWFlQZzMrZm5OTWZXL3Nl?=
 =?utf-8?B?U05lOUlhVzFwWEU0OXhvNjNpTE9yVXVzNUY1UDl1REVBSUUvdVZjUEJ4MjNC?=
 =?utf-8?B?RTdFbG04UkhUbUVHZ1RyQnpPeFZVdFg0YTF0bHJnZWJsTFZrOEZkR1FybU90?=
 =?utf-8?B?Wmk3NTQvdXYwY3dTR1hTSm1NdVVsYXBzMnVyNjJ6RU1XWU5rWlBOMjZjMWhI?=
 =?utf-8?B?Yk9kWGRzdzQ3aTlWaDl1c2hXdUxiSWpOM0JTTjgzMmlXQzlFbjc3QVVvck16?=
 =?utf-8?B?KzNCU1hoeE9HOEJsZ1A5V3FxeHg4UzBma0YrRk1hRkRiTUo0c05JbW1jMitL?=
 =?utf-8?B?allnNjRmV2RhZVIveTJoLzYzUmUxLzI0dFZncyt1cFlZT2pNZDVka05NRFZI?=
 =?utf-8?B?ZE9VTkRqbDlRQzlXQ0VyUk92OUR6ajZYcXJmRlYxQUZmRGZISExKZjY1UEJS?=
 =?utf-8?B?QWRnRFFBOXpldjd5b2ZucHJXcjJsbVNDbnFjZi9tNkU3Lzg1Wkdpa0lmLzlp?=
 =?utf-8?B?SkVyakViVDB3b0pGZW8yV1RNamlzR29JUGNKNlNEVjhFRmZ4Q2RsbkhVV1VF?=
 =?utf-8?B?VDNIeTRrUGhBTnlBenFhYXBEbEtBRHVsVzg2MG9waUdKZktxTkl4UlBsUER3?=
 =?utf-8?B?ZVdvb0lBUmJxaDlSQnBzWGoraUJ4UDkzaWZncTI0REtHREVhR1FaY3BNblN5?=
 =?utf-8?B?OFRaSlR5dGNsaW5weWI3bVVid3IxdXNtQ2dMOW1BSmVxOUN4c3hLQjdtLzVK?=
 =?utf-8?B?R1dqUGZ5QmFoUGpSYlF3b3FBSEJRS2Jib0ZaNWJZWU03c2ZUL1dlbWRxZ1BY?=
 =?utf-8?B?NWNGSEtaYzVTczg0UG1XaW9LZi9xaXZrSjVEa1U1cTFBTk1lQ0JvL2pFcmc4?=
 =?utf-8?B?OWtCc2QxbEdCMytsYnAyNXdFdDBEdG1qemNNMlZmQVU0M1BkYW9MajNHVkJl?=
 =?utf-8?B?SlVIK3IySzlwNjV4MWFLd1RyU1ZQR0dreThGV0ZIVGk0OHBVU1E1amF2aGhM?=
 =?utf-8?B?Q3FwOEtSakhBUU1RMnRCdlpyTGMvaXljclk5T3JCcE42WDZiV1dqa2tCQjFi?=
 =?utf-8?B?YUh1VDlXQm9UbU1sc05qdjgvMHczT0NmSHkvcDlUMFpFNUlQN0dacnN3a2p1?=
 =?utf-8?B?OUVRSldxRmVhelptQ1NNUWo2eGF1ZENtN1pyOHJmN21NZ1IrQlZaaHJCbGNi?=
 =?utf-8?B?ckFRL0ZmVlZhZ0xTaTJlVFRMMnhvMTA3cUlxQjVSYk9vNkE2ZGlRQkdTNE5s?=
 =?utf-8?B?Ry9xb3ZCdTJJUEEzUjU4U3BXVnpEYTN5Tmxhbkx2WGFFUk1rWWNoekNvMDFV?=
 =?utf-8?B?WTdEQUV0anIwMVpHako2QlRzRlAyOWlscTBJQVUzaEtxamZqMWxhajArMGJV?=
 =?utf-8?B?UFFOZUd6WWhJcURrd0FUNndyTEM2cUlWZ1hEQTRUcXB5bnpZRERIVG55QzRv?=
 =?utf-8?B?WExLWFNaRG8wZkh1S0FaKzF0Q21FNlAyNXZhdjRIVE05emYwMFlUVFAxSDln?=
 =?utf-8?B?QlBja0JicExwemYwRnVxSUFFTFZtMGI5VzJDcTNTK1UxTVROa0F1Rm9jTS9n?=
 =?utf-8?B?azFlV2lOQlF6ZUlDRHpzeVJ1ajhxQ3FqYm1DVGNBeEp2cVJGV2ZwYmhBQ1lL?=
 =?utf-8?B?T0plck1WRXlhdDF4TEZkOEQ3TWpXZFVoVGlYL2RzMCtJZ2tPVXhvc1pIa0F0?=
 =?utf-8?Q?GWP4jb?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e08908c2-d146-4c4c-e0b0-08dd4f65fd67
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2025 15:16:01.7926
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1P110MB2085
Message-ID-Hash: FCWZJ2TNOPL33A2IJ4B3HFNTHJUGE4ZY
X-Message-ID-Hash: FCWZJ2TNOPL33A2IJ4B3HFNTHJUGE4ZY
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/USUWQZMMIODVBSFZMFDCIBWYFUYBCIWT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============5631980639680669819=="

--===============5631980639680669819==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1P110MB1754C2446AE77DCEF0A297D7B7FBASA1P110MB1754NAMP_"

--_000_SA1P110MB1754C2446AE77DCEF0A297D7B7FBASA1P110MB1754NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW55IGNoYW5jZSB5b3XigJlyZSB1c2luZyB0aW1lZCBjb21tYW5kcyBlbHNld2hlcmUgaW4geW91
ciBhcHBsaWNhdGlvbj8gSUlSQywgdGhlcmUgaXMgb25lIGNvbW1hbmQgRklGTywgYW5kIGEgdGlt
ZWQgY29tbWFuZCB0aGF0IGlzIHdhaXRpbmcgdG8gc3RhcnQgd2lsbCBibG9jayBhbnl0aGluZyB0
aGF0IGNvbWVzIGluIGJlaGluZCBpdCwgZXZlbiBpZiB5b3UgZGlkbuKAmXQgaW50ZW5kIGZvciB0
aG9zZSBvdGhlciBhY3Rpb25zIHRvIHdhaXQuIEV4Y2VwdCBmb3IgdGltZWQgc3RyZWFtZXIgdHJh
bnNmZXJzLCB3aGljaCBhcmUgaGFuZGxlZCB0aHJvdWdoIGEgc2VwYXJhdGUgbWVjaGFuaXNtLCBJ
IGJlbGlldmUuDQoNCknigJltIHdvcmtpbmcgZnJvbSBoYXp5IG1lbW9yeSwgc29tZWJvZHkgcGxl
YXNlIGNoaW1lIGluIGlmIHRoaXMgaXMgaW5hY2N1cmF0ZS4uDQoNCi1EYXZpZA0KDQpGcm9tOiBj
eWJlcnBob3hAZ21haWwuY29tIDxjeWJlcnBob3hAZ21haWwuY29tPg0KU2VudDogTW9uZGF5LCBG
ZWJydWFyeSAxNywgMjAyNSA4OjU0IEFNDQpUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
ClN1YmplY3Q6IFtVU1JQLXVzZXJzXSBSZTogUmVhZGluZy9Xcml0ZSByZWdpc3RlcnMgLSBUaW1l
b3V0DQoNCg0KVGhhbmtzIGZvciB5b3VyIHJlcGx5Lg0KDQpUbyBhbnN3ZXIgeW91ciBsYXN0IHF1
ZXN0aW9uIGFuZCBnaXZlIHlvdSBzb21lIGNvbnRleHQuDQoNClRoZSBhYmlsaXR5IHRvIG1vbml0
b3IgRklGTyBzdGF0dXMgd291bGQgYmUgZm9yIGRlYnVnIHB1cnBvc2UuIFRoZSBhcHBsaWNhdGlv
biB3ZSBoYXZlIHRoYXQgaXMgaW50ZXJmYWNpbmcgdG8gYSBjdXN0b20gUkZOT0MgYmxvY2sgdmlh
IFVIRCBjYW4gZ2V0IGFyZSBzdHVjayAocmFuZG9tbHkgb3ZlciBzb21lIHBlcmlvZCBvZiB0aW1l
KSBhbmQgSSBhbSB0cnlpbmcgdG8gZmluZCBvdXQgaWYgd2UgYXJlIGdldHRpbmcgc3R1Y2sgaW4g
VUhEIGxheWVycyBvciBpZiBzb21ldGhpbmcgaXMgaGFwcGVuaW5nIGF0IG91ciBlbmQuDQoNCldl
IGRvIGhhdmUgYSB0cnkgY2F0Y2ggdG8gaGFuZGxlIOKAnG9wX3RpbWVvdXTigJ0gKGFuZCBzdGQ6
OmV4Y2VwdGlvbikgd2hlbiB1c2luZyBwZWVrMzIgYW5kIHBva2UzMi4gSSBoYXZlIG5vdCBzZWVu
IHRoaXMgZ2V0IHRyYXBwZWQuDQoNCk1hbnkgdGhhbmtzIGZvciB5b3VyIGhlbHANCg0KDQoNCg0K
DQoNCg0KDQoNCg0K

--_000_SA1P110MB1754C2446AE77DCEF0A297D7B7FBASA1P110MB1754NAMP_
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
cmlmO30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5
Ow0KCWZvbnQtZmFtaWx5OiJBcHRvcyIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30N
Ci5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6
ZToxMS4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1h
cmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6
V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpz
aGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5k
aWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRp
dCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48
L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjNDY3
ODg2IiB2bGluaz0iIzk2NjA3RCIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYg
Y2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdCI+QW55IGNoYW5jZSB5b3XigJlyZSB1c2luZyB0aW1lZCBjb21tYW5k
cyBlbHNld2hlcmUgaW4geW91ciBhcHBsaWNhdGlvbj8gSUlSQywgdGhlcmUgaXMgb25lIGNvbW1h
bmQgRklGTywgYW5kIGEgdGltZWQgY29tbWFuZCB0aGF0IGlzIHdhaXRpbmcgdG8gc3RhcnQgd2ls
bCBibG9jayBhbnl0aGluZyB0aGF0IGNvbWVzIGluIGJlaGluZCBpdCwgZXZlbiBpZiB5b3UNCiBk
aWRu4oCZdCBpbnRlbmQgZm9yIHRob3NlIG90aGVyIGFjdGlvbnMgdG8gd2FpdC4gRXhjZXB0IGZv
ciB0aW1lZCBzdHJlYW1lciB0cmFuc2ZlcnMsIHdoaWNoIGFyZSBoYW5kbGVkIHRocm91Z2ggYSBz
ZXBhcmF0ZSBtZWNoYW5pc20sIEkgYmVsaWV2ZS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQiPknigJltIHdvcmtpbmcgZnJvbSBoYXp5IG1lbW9yeSwgc29tZWJvZHkg
cGxlYXNlIGNoaW1lIGluIGlmIHRoaXMgaXMgaW5hY2N1cmF0ZS4uPG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij4tRGF2aWQ8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4m
bmJzcDs8L286cD48L3NwYW4+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRv
cDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90Oyxz
YW5zLXNlcmlmIj4gY3liZXJwaG94QGdtYWlsLmNvbSAmbHQ7Y3liZXJwaG94QGdtYWlsLmNvbSZn
dDsNCjxicj4NCjxiPlNlbnQ6PC9iPiBNb25kYXksIEZlYnJ1YXJ5IDE3LCAyMDI1IDg6NTQgQU08
YnI+DQo8Yj5Ubzo8L2I+IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJyPg0KPGI+U3ViamVj
dDo8L2I+IFtVU1JQLXVzZXJzXSBSZTogUmVhZGluZy9Xcml0ZSByZWdpc3RlcnMgLSBUaW1lb3V0
PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpw
PiZuYnNwOzwvbzpwPjwvcD4NCjxwPlRoYW5rcyBmb3IgeW91ciByZXBseS48bzpwPjwvbzpwPjwv
cD4NCjxwPlRvIGFuc3dlciB5b3VyIGxhc3QgcXVlc3Rpb24gYW5kIGdpdmUgeW91IHNvbWUgY29u
dGV4dC4gPG86cD48L286cD48L3A+DQo8cD5UaGUgYWJpbGl0eSB0byBtb25pdG9yIEZJRk8gc3Rh
dHVzIHdvdWxkIGJlIGZvciBkZWJ1ZyBwdXJwb3NlLiBUaGUgYXBwbGljYXRpb24gd2UgaGF2ZSB0
aGF0IGlzIGludGVyZmFjaW5nIHRvIGEgY3VzdG9tIFJGTk9DIGJsb2NrIHZpYSBVSEQgY2FuIGdl
dCBhcmUgc3R1Y2sgKHJhbmRvbWx5IG92ZXIgc29tZSBwZXJpb2Qgb2YgdGltZSkgYW5kIEkgYW0g
dHJ5aW5nIHRvIGZpbmQgb3V0IGlmIHdlIGFyZSBnZXR0aW5nIHN0dWNrIGluIFVIRCBsYXllcnMN
CiBvciBpZiBzb21ldGhpbmcgaXMgaGFwcGVuaW5nIGF0IG91ciBlbmQuIDxvOnA+PC9vOnA+PC9w
Pg0KPHA+V2UgZG8gaGF2ZSBhIHRyeSBjYXRjaCB0byBoYW5kbGUg4oCcb3BfdGltZW91dOKAnSAo
YW5kIHN0ZDo6ZXhjZXB0aW9uKSB3aGVuIHVzaW5nIHBlZWszMiBhbmQgcG9rZTMyLiBJIGhhdmUg
bm90IHNlZW4gdGhpcyBnZXQgdHJhcHBlZC4NCjxvOnA+PC9vOnA+PC9wPg0KPHA+TWFueSB0aGFu
a3MgZm9yIHlvdXIgaGVscDxvOnA+PC9vOnA+PC9wPg0KPHA+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8cD48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHA+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8cD48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0K
PC9ib2R5Pg0KPC9odG1sPg0K

--_000_SA1P110MB1754C2446AE77DCEF0A297D7B7FBASA1P110MB1754NAMP_--

--===============5631980639680669819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5631980639680669819==--
