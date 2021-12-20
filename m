Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD7047A7BD
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 11:26:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C03ED384ADE
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 05:26:55 -0500 (EST)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-oln040092067049.outbound.protection.outlook.com [40.92.67.49])
	by mm2.emwd.com (Postfix) with ESMTPS id E00E3384523
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 05:25:48 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LaBXmdSH0uz99yoLvTZ5K6q73T11A6E5QZ1qYudeqjgaqAe+vtPMySIa6NLE891G8rKpCeL3vQ48ohW/Bp9o3NYXedCT9kODHuRwtvLPRCfmh+HZWHhS6gHgBCoaZqFpBt379XhkxnQxxwN6i1Ry/m4yR2QE1aYtlSlhTWhXyqeTRIXI4NzvkqitvIUPKBx8/8Xed6LmoKl7HVilQxAd6TP4yrG8O9l6bqWKewml6X/JMzhsTnVFYQJNWkLHXyHDG2MfCT9ZGoTzHBwkdhLrztPMBm96ChmXy1S5P4mBfA0KHwEiADCP1uazO9XIjlHiIaaoFIK5Bm07f9qHXpCpIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pudFFg2X3zHXrpNEH2ru12L3IKUwFJrg9ekWGHW124I=;
 b=CiqFhg9yia5jHhIN1nM8jtRssTTbwKnNm5J5ld9I7GvszfMrbOd7V+GUd9h53aUUxvH9pqJJmJQ9Jpv2B3S7PUGg4VXnoirmyVyluOlipnucgzq64tf3HPN1yf9HmGer8kEbzn3cQGjyj/yU0XI7H5egdKq0+nIrvG/+oeNlTt3mPZiOQzOFzgsVHFuGo5mKfbJxE5fsFTDzhzIHWjIIIai2L54TSu/ZOPJA4WAAEG0Asyf5pWANqhhvF+tnJUqkUPWcUtEq0UZTj6h9IbJfBbiAj3pVfSO+rSKbb6TZSPj505fh6mL0C8kg5GBrnayR935EcY6ZgczuQnLgI9USsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB8PR09MB3708.eurprd09.prod.outlook.com (2603:10a6:10:11a::12)
 by DB7PR09MB2505.eurprd09.prod.outlook.com (2603:10a6:10:46::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Mon, 20 Dec
 2021 10:25:40 +0000
Received: from DB8PR09MB3708.eurprd09.prod.outlook.com
 ([fe80::5142:53d2:1433:ee1]) by DB8PR09MB3708.eurprd09.prod.outlook.com
 ([fe80::5142:53d2:1433:ee1%5]) with mapi id 15.20.4801.020; Mon, 20 Dec 2021
 10:25:40 +0000
Message-ID: 
 <DB8PR09MB370832A1BDA187238CCD6A5D957B9@DB8PR09MB3708.eurprd09.prod.outlook.com>
Date: Mon, 20 Dec 2021 11:25:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
To: usrp-users@lists.ettus.com
Content-Language: en-US
From: Michael Hermann <michael.hermann@hotmail.de>
X-TMN: [RQFFUigew8qogvvoa0HmAUdUwC/D4HrULnr9PaclEh1iWRIxW8m2nuM0XUVV3cLL]
X-ClientProxiedBy: AS9PR0301CA0050.eurprd03.prod.outlook.com
 (2603:10a6:20b:469::19) To DB8PR09MB3708.eurprd09.prod.outlook.com
 (2603:10a6:10:11a::12)
X-Microsoft-Original-Message-ID: 
 <f8447b7e-ac90-893b-1567-e710dfcd3a26@hotmail.de>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc7a515e-4e00-4c91-a64c-08d9c3a3121a
X-MS-TrafficTypeDiagnostic: DB7PR09MB2505:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9+pjmoAX4Z6A8i57ced8FkjzvGOezjo/bkh3T4PvWdnPWDWp12cbK7+VzQD1jWhPcY0QTTMps5vtKzj50m5F///PX4DbIofTPv8rz2mwd494Usz3GQiFV7uzQzx5+9ZfNeL7oq9DtEP9cnBmJylofrmi8Pqc+Pf1Tdvuyr40s785Th1yEkjqcb/wSyN9o3vLDyUvp3T5YICAX3Qpq/z6PDRWVBXjqwhmf8aODfEsNzBIKsidGEtznmPELloYm06KHLdh1QYjG7mxNJclMms4TJKEKQTeGiQRcF8C9kccCtcP8xCH3D/6ChYKm6Wy/hOn5PXjNTNE2fZcayz5vBH0pj00P9+DZYHt8oyXtYqJdrR+h9UXJ9QVAKaje3juTUHH8e8mZevEWA3a0+4YW1yD3JWvY1WuqrzWc6VWCFbhYSbKAP4oSSoMLvBpPmAtQk+LUMFluyHV8I4StQDMIGcYWXSwqi9aiheM1iRNnhasWo8l3Ie1UQzGWDCRKiofjgRbPSVArH1kFNh6WuOU2KGCy4GbFkuULbnt6FhLBK00tc3H0bXBIltVsGMJ0Ffyk8q6ufiDvCkoM6mvioSy/OzGjg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OTVhazBoQ1JvUUQ5Rm1TSkRvZlhVYnlQNnE3S2o0eVpJM0pTR0EyTFlXSE0r?=
 =?utf-8?B?ak1hNENCL0hvZ09QVWVMdGwwdmZZQTUvc1JES0xqTzI4cm91ZkYrbXdlaTNs?=
 =?utf-8?B?Mjd2TVVDSTU5c28yQ2Y1NDRjbVE2MHdEOGVrclhVaC9GTEV5ek5zMzcvZjFL?=
 =?utf-8?B?MUIrOGFlZ1hkVmNGNENmQy9iQk9GR2h5OTVuZHlaa1hndENlVi9Ea1ZnRjRV?=
 =?utf-8?B?TzNyREVNZXM1WURnNmFHNE5oLzZBcmdheXRIcTJiM3JDVitEMFNkazYrS1VZ?=
 =?utf-8?B?VEJuQ0xmbTZMUWxVU01wcEpMZitKNVlLclJRdGVqeElSS2VRa2FJaDA0Tmp0?=
 =?utf-8?B?RXlzeFdGeEpCUldMUGgwVzBWcjNzSTF2ZUFIRmFpMXZFYnR1R3dVUjJWYTNm?=
 =?utf-8?B?RkVHQW9OQWx5ODAvZVdrdkZMRHQ2dEI0SXk0Mmdmem44bktraWJuWXRNQ0V6?=
 =?utf-8?B?SWFYMXZ6YmNQUlJOY3M4Z3VhNnFNbVBEQmFzRkxNWm1BS2NZYmVES1RBMjA2?=
 =?utf-8?B?cmh6bWhjS1pLTk4wL0VrVHpGaStCVU04K1NTS3c0V1E2MHd5aWw5UVlraVhP?=
 =?utf-8?B?ZER2cG5PU3dMSld2TUVQQUozMDFTN1NmR2NkWEVTRm50Ri8wYnczSjJydDda?=
 =?utf-8?B?cXo0djM4R3hFWmtUdmpVNEdNdS9wYm5tM1VmSEZIN1d2UUU4S28zVWhGTFg0?=
 =?utf-8?B?TUxLL2c1eVI5OEpVcWgxejFCcGtXTTZoL2xkQTF2bUhhMHRxZjFoQkNFdXUr?=
 =?utf-8?B?cDZYbHJCTkM3WERDVnVVVlh0dm95bFNMM09yR2Z2bWo4ekRVeU5mZEZEekI2?=
 =?utf-8?B?VlBVVHUvUXlrUXJrZkplVWNQU0VLTlNHY2hzMXdiTHlOREIrUmp5bk1WdFBh?=
 =?utf-8?B?RFdXVm12Zm1MaDZNeFp1UFUyZGlmK0pTclIrcmV0d3lmc2VBMU93OG81SGJn?=
 =?utf-8?B?YmRzMzJUWXdLTWdHRkI0UE0xdmdESXFBNThPbVpYUnU3VW1CUnkvVzU3VE9U?=
 =?utf-8?B?cFNaRTRyUzRjU3JvYlZnMHNXNyt1eXBwRi9iV1d0cmVkQVJoWVIzaXVpaDNr?=
 =?utf-8?B?bkRSRm1wTE9uWXlySEFldUJDWUFOUklRT1c3N21jZTh3TFFpQnZ5TWJEazhC?=
 =?utf-8?B?OUc1WmRQZm9qSWVybmdVc0Q5YzliY21XSlU4M0taajY5alZQTzdzbXZOMkVs?=
 =?utf-8?B?U0JUeHBNL1lWc2JuWDl1L0tlZG1rS1F4R2pQL0xzSUs2UFVpemZyZTduYWlU?=
 =?utf-8?B?ek5OdjFYS2gyVVhZeEUrSjcySGFrK2xiZUhvaUlGR2dkOHpBOXZGQmhBNWUz?=
 =?utf-8?B?MmdBOW8xd2YwNXhQQWIvRXJQaEx4SUd6WUUzK1BiVlpONU8rYjZtM1pob2RL?=
 =?utf-8?B?L1hSNW9WaHNlanc9PQ==?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-64da6.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: dc7a515e-4e00-4c91-a64c-08d9c3a3121a
X-MS-Exchange-CrossTenant-AuthSource: DB8PR09MB3708.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2021 10:25:40.3438
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR09MB2505
Message-ID-Hash: 2TQHVKIJEGW2MKDTRLTZMXYBNUSOWIKJ
X-Message-ID-Hash: 2TQHVKIJEGW2MKDTRLTZMXYBNUSOWIKJ
X-MailFrom: michael.hermann@hotmail.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] gr-ettus FPGA-only flowgraphs in GNUradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4FJ5PSR4A4OMRYNZ3XHZHQKWDSQF3AWX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCmkgYW0gY3VycmVudGx5IHdvcmtpbmcgb24gYSBzbWFsbCBwcm9qZWN0IHVzaW5n
IGFuIFVTUlAgWDMxMCBjb21iaW5lZCANCndpdGggVUhEIDQuMCwgZ3ItZXR0dXMgMy44IGFuZCBH
TlVyYWRpbyAzLjggb24gVWJ1bnR1IDIwLjA0Lg0KVGhlIGZpbmFsIGdvYWwgd291bGQgYmUgdG8g
aW1wbGVtZW50IHRoZSBmb2xsb3dpbmcgZmxvd2dyYXBoIG9uIGFuIEZQR0EgDQp3aXRob3V0IHRy
YW5zZmVycmluZyBkYXRhIHRvIHRoZSBob3N0IGluIGJldHdlZW46DQoNClJYIFJhZGlvICggLT4g
RERDKSAtPiBGSVIgKC0+IERVQykgLT4gVFggUmFkaW8NCg0KSSBmb2xsb3dlZCB0aGUgd29ya3No
b3AgZXhhbXBsZSBhbmQgaW1wbGVtZW50ZWQgdGhlIGdhaW4gYmxvY2sgDQpzdWNjZXNzZnVsbHkg
YW5kIGl0IHdvcmtzIGZvciB0aGUgbWVudGlvbmVkIGV4YW1wbGVzLiBJIHRyaWVkIHRvIA0KaW1w
bGVtZW50IHRoZSBhYm92ZSBtZW50aW9uZWQgZmxvd2dyYXBoIHdpdGggdGhlIGdhaW4gYmxvY2sg
aW5zdGVhZCBvZiBhIA0KRklSIGZpbHRlciBmb3IgdGVzdGluZyBwdXJwb3Nlcy4gVGhpcyBzZXR1
cCBkb2VzIG5vdCBzZWVtIHRvIHdvcmsgDQpjb3JyZWN0bHkgZXZlbiB0b3VnaCBHTlVyYWRpbyBk
b2VzIG5vdCBkaXNwbGF5IGFueSBlcnJvcnMgbWVzc2FnZXMuIFRoZSANClRYIFJhZGlvIGRvZXMg
bm90IHRyYW5zbWl0IGEgc2lnbmFsLCBldmVuIGlmIHRoZXJlIGlzIGFuIGlucHV0IG9uIHRoZSBS
WCANClJhZGlvIFBhcnQuIFdlaXJkbHkgZW5vdWdoLCBpZiBpIHVzZSB0aGUgZm9sbG93aW5nIGZs
b3dncmFwaA0KDQpSWCBSYWRpb8KgIC0+IEREQyAtPiBSWCBTdHJlYW1lciAtPiBUWCBTdHJlYW1l
ciAtPiBnYWluIC0+IERVQyAtPiBUWCBSYWRpbw0KDQp0aGUgc2V0dXAgd29ya3MgYW5kIHN1Y2Nl
c3NmdWxseSByZWxheXMgdGhlIHNpZ25hbCBidXQgcm91dGVzIHRoZSBkYXRhIA0KdGhyb3VnaCB0
aGUgaG9zdCB3aGljaCBpIHdhbnQgdG8gYXZvaWQgc2luY2UgdGhlIGdvYWwgaXMgdG8gZnVsbHkg
DQpwcm9jZXNzIHRoZSBzaWduYWwgb24gdGhlIEZQR0EuDQoNCkdyZWV0aW5ncyBhbmQgdGhhbmtz
IGluIGFkdmFuY2UsDQpNaWNoYWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
