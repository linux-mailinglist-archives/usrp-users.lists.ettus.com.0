Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD46C4E3D61
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 12:19:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B35F385098
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 07:19:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="qINdXYCY";
	dkim-atps=neutral
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130091.outbound.protection.outlook.com [40.107.13.91])
	by mm2.emwd.com (Postfix) with ESMTPS id D099C384889
	for <usrp-users@lists.ettus.com>; Tue, 22 Mar 2022 07:14:33 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dhdLpETyU3LUmiV4/5clauNjJFENrOgB3C5Yv7YlGpglQEKXkMfOStnlnFxdQV+bFwfkmPTX8uGJzeSFNsO6n1X5Qi8BJyFHXXScHfI8JdrmrNmcgUFqzkZDn+FdWhIdFQZYeWeDAVJCZ9iOVWgF6jF2BY9Om6lXCrWSyGXFZetP7vUbgL9OwdKG7lZekmIP7GiVb1sY6L0kGS3NKzgk+kZE7g4IIFk2uL3WnJvJJDGmTYz9eQ/+9Lepc5sQSf3oojEU5pOocZj6QFHUdbB9mevo0zznmaWumHsxcDi5gVtObQaiIRuDrl78NL+yOvAdLOsX85C8FUgzR2nS01UK/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pNVupoRZHJpVdX8FmtRHCIWIv0j6yx0pDjx7ePfXAPo=;
 b=g0Z5rcdzAvMrOo234zAbIanH0MVkL+Safo12jZk+Zf8v3I043gA0ePPWhpehQGaemuC/BrC6LvP1x1oIhqxTk9C+ohk11b2Jq6zDqQWYh5C33Zlt+p84Z+8FuWWfWVGGcCLwusfIHGX68+PdcPz8ESR3G+IkvrF1fYsn2jBjp2cdJJn6kMLISy2yCdX9KHTt05/wNSl+t+kwzN1z3KobSwGy71NbdOEEF/Xhmr30RVaObq2a0044EnkqmmlxPvTv/6LRDWc5J6BNuE1+1Yxz6oaVmUxBDwJuvRN0NSt8d2MBIXcYx9RZiWezhCLZbUC4vMjp6c1HDCmyD5LWuKL1FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNVupoRZHJpVdX8FmtRHCIWIv0j6yx0pDjx7ePfXAPo=;
 b=qINdXYCY90knsuig49LT/JgVXuXI7zJy+Zt1h3EPA1n1/u+q3Eu+Om52I4zCWVpqLWtnMqGTBoEuxdiKT/KxSQS6hgu0XHxML0qEIZrNBG4leRWQfYvuRWl+QIHPDgEd7MMyFdDMZknCGpc+BZ9n4FHNLoFs+aEb0q5eXRwDFpM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by AS1P250MB0477.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:4a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 22 Mar
 2022 11:14:31 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::110b:d2d3:74fc:94e7]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::110b:d2d3:74fc:94e7%9]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 11:14:31 +0000
Message-ID: <bd140791-6e23-6f4c-c03e-c21d9f8c6959@ant.uni-bremen.de>
Date: Tue, 22 Mar 2022 12:14:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com>
 <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com>
 <CAB__hTRYBFJ_Wkucxz=XLScaVV53DE_R63caFZtSTfQYzUVpTw@mail.gmail.com>
 <CAFche=g=yhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.gmail.com>
From: Johannes Demel <demel@ant.uni-bremen.de>
In-Reply-To: <CAFche=g=yhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.gmail.com>
X-ClientProxiedBy: AM7PR02CA0001.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::11) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d976eef-f21d-4071-5d37-08da0bf52323
X-MS-TrafficTypeDiagnostic: AS1P250MB0477:EE_
X-Microsoft-Antispam-PRVS: 
	<AS1P250MB0477342BDE6D51ED3A67E6D0A9179@AS1P250MB0477.EURP250.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SPcqMi+NTEioNoXxcBYazRqfk5+4BcOuCLaC9fv6jSkEqgpi2Zs8F8+lj9hwnLi6hKhAVBDEhwXTnUumYDVY/Fda4shVUJp2N6EyivmVd/FSY6AebiypUDScXkGBDMVCn0t/Y1I9AH7ho6JOV9vraU0lhh3RQ0ppoTn7Sop8TZZ+b7FFFspB7mWrthu8CVuiXYK03W0ybg/gc3wtgYFNVq22OU/xPXjbrSUuudGPqdpLeDyUiqi0+UEKmsupqqViW96TZnINmpZ32mZ26IjnCTF3gy4l2mb5a6IwkOGKzT4DElyPO8CnFsKqMKqVtHAdZuNfvbkIyPMErSs6hB5DfVsE/ihEK50Rb5baUjD6teqED4+m3jbz8abe+EbnH0BTd1wWf7je/x4o2p98han7JwM3e4lhvRIdPxIjaJG6NFKY4zJ2n9u6PPqKCqJmluHLqKleLCOR/IJcRodAUR0iRja6kXiOdIO8AZMyYVanvF4lDhmd/0ExTgfCvsQQDULkTcAGb60zQdvn6GGF8G1kdSiC4q+YWSsF0mp8mkNNRkWBMFAqPd0ZQM1XgYlDCe1UZjuSAqpE80gBKZBGROdiOWq32TVSoUKbD4BmlmWZFi2TdnMU9tTjbeswftoKN8BpY8BbF2EmIQIcRSYAMbU28y3vDDfM6OEZYvSvisfD15Jh6Fh3DU8b8jsVj6+F5w4G5iWqgOhi0YbzABXAOVt9UD9BcV6OGv3YqKSMYK1RzL7QwmO9SDNS8ubjSfWS/cG2WRQ6x9ynn5eJbdzgizNKCshMbdCFq3SqcC3uv1UJyliHQKIRz90v3tuBpIrRTAyrN9p09J972gWPAaOEWITAtw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(396003)(136003)(376002)(346002)(366004)(86362001)(31696002)(53546011)(508600001)(52116002)(2616005)(6916009)(316002)(83380400001)(786003)(186003)(5660300002)(31686004)(8936002)(6512007)(6506007)(66946007)(66556008)(8676002)(66476007)(6486002)(38100700002)(966005)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?anNoZWo2d2EreVM4NWFLVXRXOUNLck5sTlVBKy85aG9kMXhZSldGRGNRSnBa?=
 =?utf-8?B?bXNSV1hFRW9ZWTBBamJuTlVIY1hoR0daUit2V2RGQ0lsc1pydXVtdjJLUzNR?=
 =?utf-8?B?Z2dEVmVHZXYxVThhb29yRXlkMVJMWTFjK0dITGJXTzdNNG5jcDJaaDBIMEVo?=
 =?utf-8?B?aHFnU05FdCtWL0hMNHlqZWNMdC9od3g1WHBYWjhxSnNKbS9VWHFaMUlYTlk3?=
 =?utf-8?B?cXZ6ZU5Ydks5SUR6WGhXNjAxK2dJdWsyT0g1MGhUV1YyZHpsYWJsbHd4dzlB?=
 =?utf-8?B?RDlYeGZxYUhxRnlHQ2JzM0h3bFBDRGtTeXV5dHcyV2RBMlB5N2tncXZrcGZI?=
 =?utf-8?B?Vkx2QVcyOFpjMUlsS2h2Y2x4dGtBa1ZnYjd0Z21raml1K2UyOW1odFhydGtt?=
 =?utf-8?B?SE5Eay9tNm1oTkQ5MDlEVCtzQlJlQkhLUzBlZXliTHV4TGo0MnduY1ZuZ2pp?=
 =?utf-8?B?dUQ0M2JmQ05HcGFPYVVwN3hSNmxwdzZTTVBGMWJ2T3RoU0JWNUczSnM5SERR?=
 =?utf-8?B?WWJDdVpXWlJUbHZRSVdSNmdqdUFsd1E4SGhtSzhhMGpDMkN3VHRDc1FaSis5?=
 =?utf-8?B?UTllRERHZDRzWmx0NFg0RHhSVk5YcFh1R3BuaWlUbTdaL3Z4U1NaSkhSeFJ4?=
 =?utf-8?B?OTlYSDNmaW9UVkNKaEdNQ3Ezb0JucW5XQ3liSytEc1dOVmNNT1ZQbHZ5OVFC?=
 =?utf-8?B?YmZpM1FOeE5sdmNOMVZSUTBUcnpHTlVMaFNRUVBTdEZiZSt5Z0JUajByRjBr?=
 =?utf-8?B?U0RsMHBkMkF5VUxQL0J3WnIyTHNoSTJYeUZ4KzlmVEt4SnpocVhPd0ZDbGJk?=
 =?utf-8?B?MzZxbmZvSDJGeDNSMUtxR0dZR2MzNTR1dytFcEZJeE50SDZnaUgzRXF6QmZL?=
 =?utf-8?B?TVFXUUpiR3lBS0VuaXBXWHhSMTN3V0o5RE05SFhNSUhhWGZjR3dQTmFFRmx6?=
 =?utf-8?B?YVdaZERvMDRYaElDd25odWJCdk9ZYWpPMmVJR1BnUlJ4UGV5K2MxMm9TbXkw?=
 =?utf-8?B?aUFMTDZhNi91K0l0QkptNERWVlNkQ2pQVkxEYVR2K3cxek1KQnQySklOMCtU?=
 =?utf-8?B?MjVaUFptWHk0bzlNZzRkeDlwYTkvb3BTZ2x2SldBQ0d1SkNvT0NTeHNlS3Y5?=
 =?utf-8?B?WWdRUU9uMEFObWNmZkQ4RlhtNXEzRkIwSmZzUEg4VHR6aUZNTmJobWw5Z09z?=
 =?utf-8?B?czZnRFFJaURodVNXMVFML1ZyaWsrVFNJY0pJWDduNm14TlliaDRpUUJkVGo2?=
 =?utf-8?B?ZWZyWi9PUDdVRGd0UlphemRoN09OT01WUExFMFZrbmN2Z2ltMjNVUkd4aXhv?=
 =?utf-8?B?MGh5Z2dxQ3BQZEZNM282d2t1WDdQV3J4dVlyTVBiOGdEaFhibG05ekVKWXk1?=
 =?utf-8?B?d2ZVbVhNcXRqbHQ0TklvVmJUVDRhakVQYS9obHR3YW1ZRFFQZmFaWTdJR3dz?=
 =?utf-8?B?UU1TakFPUFNiNFExS0ZjV3lHYU1XNU9PUjVqcG1SQWoyVTNCUmlpTjlvMW1V?=
 =?utf-8?B?V0JFUko1ZEpRZmVBYlVRUFNkb3Y2QjNNcG9LbWtXNytmOVZ2bHdWc0kvUVRp?=
 =?utf-8?B?Uk94VENzTUZpd2Y3V3hyZlppMVlQNlJycnE2QW5UQ2xoOWpUSFJ4N3JWN0hP?=
 =?utf-8?B?R1NFRmxpTU9sYjNwUDdyNTB0K05FMEwzUVRuZGlHWWk4ZzBRZnhGRVNTcU1F?=
 =?utf-8?B?a1ZkTlB5R2wxNFZpZU9qbml4RSt5ZXJ1engrNTRXWEVKRnQ2SUMrL3NES2tr?=
 =?utf-8?B?WFRIdVRaQXRraDJpd1VUM3MrV3ROZDZFM2ZQVmJUVTBDeFVwRGF0TURzcFNt?=
 =?utf-8?B?U2JydUszT3Z0c3M2VWlWelVycjlCdzhMVEkrWUt5UmdzMStSOU5WZVArUllj?=
 =?utf-8?B?UWc0eUp1YitJOGxYMkRMMXRyVTUweDNHRmxyck5ZNHNza3NmVEJxU1hGRC95?=
 =?utf-8?B?eFRMaGRDRTVDWWJsWk1DTXdCcS9kMlY2UitTY3l4bnpHbWdVL2F4RURWck5B?=
 =?utf-8?B?eTRlbWErZDFQbElHbXhwYlBTdzJPN0l5bE15eDVmcUZ3K2hIek8vMFRWVzFI?=
 =?utf-8?B?a1NNRjQyd3RJZ1JnaEkzR2RERmZPc1QwemVtUT09?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d976eef-f21d-4071-5d37-08da0bf52323
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2022 11:14:31.2178
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /7ZpdSF7CojSOfk3rWylQPSB9XNBtctJdNexsMAVWOWWSbQDcJK8VYl0Ej7tMexeDuigts+dK8JYrzav8xqssQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P250MB0477
Message-ID-Hash: PI2GHDSL2FUGDN3OGB7JZZHLUAS44XOU
X-Message-ID-Hash: PI2GHDSL2FUGDN3OGB7JZZHLUAS44XOU
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PI2GHDSL2FUGDN3OGB7JZZHLUAS44XOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgV2FkZSwNCg0KdGhhbmtzIGZvciB0aGF0IGhpbnQuIEkgdHJpZWQgdG8gY2hhbmdlIHRoZSBo
b3N0bmFtZSBvbiBzb21lIE4zMTBzIGluIA0KdGhlIHBhc3QgYW5kIG5vdyBJIGFtIGFibGUgdG8u
DQoNClRoZSBkb2NzIHNob3VsZCBjb250YWluIHRoYXQgaW4NCmh0dHBzOi8vZmlsZXMuZXR0dXMu
Y29tL21hbnVhbC9wYWdlX3VzcnBfbjN4eC5odG1sDQp1bmRlciBTU0ggY29ubmVjdGlvbi4gVGhh
dCdzIHdoZXJlIEkgd2FzIHJlYWRpbmcgYWJvdXQgaXQuIEFuZCBJIGd1ZXNzIA0KdGhlIGRvY3Mg
bmVlZCBhIFVIRDQgdXBkYXRlIHRoZXJlIGFzIHdlbGwuIFRoZXkgc3RpbGwgcG9pbnQgdG8gY29u
ZmlnIA0KZmlsZXMgaW4gYC9ldGMvc3lzdGVtZC9uZXR3b3JrL2AuDQoNCkNoZWVycw0KSm9oYW5u
ZXMNCg0KT24gMjEuMDMuMjIgMjM6NDQsIFdhZGUgRmlmZSB3cm90ZToNCj4gSGkgYWxsLA0KPiAN
Cj4gWW91IGNhbiBjaGFuZ2UgdGhlIGhvc3RuYW1lIGJ5IGNyZWF0aW5nIGEgZmlsZSAvZGF0YS9u
ZXR3b3JrL2hvc3RuYW1lIA0KPiB3aXRoIHRoZSBkZXNpcmVkIGhvc3RuYW1lLg0KPiANCj4gT24g
Ym9vdCwgc3lzdGVtZCBydW5zIC9zYmluL3VzcnBfaG9zdG5hbWUgdG8gY29uZmlndXJlIHRoZSBo
b3N0bmFtZS4gSXQgDQo+IGxvb2tzIGZvciB0aGUgL2RhdGEvbmV0d29yay9ob3N0bmFtZSBmaWxl
LiBJZiBpdCBkb2Vzbid0IGZpbmQgaXQsIHRoZW4gDQo+IGl0IHVzZXMgYSBkZWZhdWx0IHdpdGgg
dGhlIHNlcmlhbCBudW1iZXIuDQo+IA0KPiBUaGFua3MsDQo+IA0KPiBXYWRlDQo+IA0KPiBPbiBN
b24sIE1hciAyMSwgMjAyMiBhdCA1OjExIFBNIFJvYiBLb3NzbGVyIDxya29zc2xlckBuZC5lZHUg
DQo+IDxtYWlsdG86cmtvc3NsZXJAbmQuZWR1Pj4gd3JvdGU6DQo+IA0KPiAgICAgcGVyaGFwcyBp
biB0aGUgZmlsZSAvZGF0YS9uZXR3b3JrL2V0aDAubmV0d29yaz8NCj4gDQo+ICAgICBPbiBNb24s
IE1hciAyMSwgMjAyMiBhdCAxMDo0MyBBTSBNYXJjdXMgRC4gTGVlY2gNCj4gICAgIDxwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbSA8bWFpbHRvOnBhdGNodm9uYnJhdW5AZ21haWwuY29tPj4gd3JvdGU6
DQo+IA0KPiAgICAgICAgIE9uIDIwMjItMDMtMjEgMTA6MzQsIFRvYmlhcyBLcm9uYXVlciB3cm90
ZToNCj4+ICAgICAgICAgVGhlcmUgaXMgbm8gL2V0Yy9ob3N0bmFtZSBpbiAvZGF0YS4uLi4NCj4+
ICAgICAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pg0KPiAgICAgICAgIEhtbW0uDQo+IA0KPiAgICAg
ICAgIEFjY29yZGluZyB0bzoNCj4gDQo+ICAgICAgICAgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20v
bWFudWFsL3BhZ2VfdXNycF9lM3h4Lmh0bWwjZTMxeF9taWdyYXRpb24gPGh0dHBzOi8vZmlsZXMu
ZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfZTN4eC5odG1sI2UzMXhfbWlncmF0aW9uPg0KPiAN
Cj4gICAgICAgICBZb3Ugc2hvdWxkIGJlIGFibGUgdG8ganVzdCBtb2RpZnkgL2V0Yy9ob3N0bmFt
ZSwgYnV0IHRoaXMNCj4gICAgICAgICBkb2Vzbid0IHdvcmsgYWNyb3NzIHJlYm9vdC7CoCBFdmVu
IG9uIG15IEUzMTAuDQo+IA0KPiAgICAgICAgIENsZWFybHksICpzb21ldGhpbmcqIGlzIHJlY29u
c3RydWN0aW5nIGl0IG9uIHJlYm9vdCwgSSBqdXN0DQo+ICAgICAgICAgY2FuJ3QgaW1tZWRpYXRl
bHkgZGV0ZXJtaW5lIGV4YWN0bHkgd2hhdC4NCj4gDQo+IA0KPiAgICAgICAgIF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ICAgICAgICAgVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gICAgICAgICA8
bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPiAgICAgICAgIFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4g
ICAgICAgICA8bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPg0KPiANCj4g
ICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ICAg
ICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
PiAgICAgPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCj4gICAgIFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
Cj4gICAgIDxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20+DQo+IA0KPiAN
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
