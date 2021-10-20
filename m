Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6514B43499F
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 13:02:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 616BD3841AC
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 07:02:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="adZYeE0w";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="BzR8Dfyo";
	dkim-atps=neutral
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id E56FD383E59
	for <USRP-users@lists.ettus.com>; Wed, 20 Oct 2021 07:01:18 -0400 (EDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19K6kQab015004;
	Wed, 20 Oct 2021 06:01:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : date :
 message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version : subject; s=PPS11062020;
 bh=nYKFChbpCK+Yxy/K8WJPmExtdW63l0aQ5ZINKGVijgU=;
 b=adZYeE0w3IeMeViUy9gxMzgkvCCPjLd1hDxlDr0xn3UHN1v3pINnv1OKgVicKtBKFwMa
 1HuK+VZJrPFNACWNjxfgYwHoxo9My+s0Zduf7RlY91YGDf56SJDEDZU/c9exT6i3gUXN
 IlNM+SXM3UgqXqZP3aln8lpRgyhM4H9huuXAEpN+xc8O9Ej05MxK1TVNlyzOR9y9eGXv
 ysdpPZxN2x1vdmdVqm6Z33AL5518/kEvWCvK77XPRil3QTriIWNlkuI9qkqxfJEECNXt
 3Zjdx7y5A+yAvTy2dQQc19uIQ1lPBi8dLb/IxIZlHi5uuwbopCLCM0TRszhnzi10/9PX UQ==
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2049.outbound.protection.outlook.com [104.47.51.49])
	by mx0b-00010702.pphosted.com with ESMTP id 3bte4n8d6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Oct 2021 06:01:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WqQA/SMWwWtFvYLc8xoCHdkCMTCGQBjZWlEOwYjczE1yvKqAZZWnSsgtyPYmJ+RVsvvEUMJaStVDBgigy/fdHxMCG9eRRzUf6vZ7up0cK93hnxZ4TW2kDIKFgXvlao4TESKoKuuOJXfoUujZtTe8376cZOoq0jY1PveA8c5zJ9BwV4bikn1zdvYXCc1I7m5SlSDQcHeribBikLe08gk2Ln8guYvbtOQOi9D9zw5E5l/7YzC19OcXh7BZFlb4YjKTj6tw5bpwhMQ+IGc55gjBdts9mxQdX6mHWSazBK7g7d2NRjEXzWVScz+ujHCDqwAC/2AKC4rO8lMBodLZxs6yWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nYKFChbpCK+Yxy/K8WJPmExtdW63l0aQ5ZINKGVijgU=;
 b=QRCCuLebOMM2VQJkfAePp/HADDIJh20icVgkkfEGOTRUWNWc+UjUsEf+pNW3IrlJCOW9iVUpzxIzeHYuHWmR9xNrmI9kum/dLR8McKX4z5yMr9lfpGzs+P9ZD6/oP26FKD3+W4GAsJ3QAEQiD2I5UnBQU7w/8tM3V5rvDIUzB4+pcsZ5A1h1/PFjuZyRNA16Eyyb4q92jvz9lnkbj0XMo+ZqoAxTcu0H/BYyP7BL8Ne2t9MkgOuhD2TKA+XQsYGM3ij7431Av80R59Zy6TnhQMMb1O0iU1yFdlrC7wI4cDMY/Dc7QrdPLj5iQD73YuzjZlzBzgGaRZ2VVdthaMldkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nYKFChbpCK+Yxy/K8WJPmExtdW63l0aQ5ZINKGVijgU=;
 b=BzR8Dfyo0f2+oiLpRJndjp+gVyvYrBl4gBo2ZZLGkWLSTeYCzZQzECitnZ/dcCAJ8o/CBP0rdm/i4pyLfoUthYlUZDnm045QDoMElmcqDVD/5zoq3XKQXZiPtjENrUxlqa3gWQEuQgmzlDsN8by6i1PgcrlQ14wzAaPzK+o96o0=
Received: from DM8PR04MB8007.namprd04.prod.outlook.com (2603:10b6:5:314::20)
 by DM8PR04MB8199.namprd04.prod.outlook.com (2603:10b6:8:2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.17; Wed, 20 Oct 2021 11:01:15 +0000
Received: from DM8PR04MB8007.namprd04.prod.outlook.com
 ([fe80::61fc:37a:892f:c6b9]) by DM8PR04MB8007.namprd04.prod.outlook.com
 ([fe80::61fc:37a:892f:c6b9%7]) with mapi id 15.20.4608.018; Wed, 20 Oct 2021
 11:01:15 +0000
From: Jan Schirok <jan.schirok@ni.com>
To: Piotr Krysik <perper@o2.pl>, USRP List <USRP-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] Questions regarding USRP X410
Thread-Index: AQHXxYrn4gaqJQZHEEeI5hM4gs1kCavblJYQ
Date: Wed, 20 Oct 2021 11:01:15 +0000
Message-ID: 
 <DM8PR04MB8007C257B528B9B71771E41E9EBE9@DM8PR04MB8007.namprd04.prod.outlook.com>
References: <e6736e55-740d-dbae-1b5e-16baa9766af9@o2.pl>
In-Reply-To: <e6736e55-740d-dbae-1b5e-16baa9766af9@o2.pl>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: o2.pl; dkim=none (message not signed)
 header.d=none;o2.pl; dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 079749ef-7273-44be-c35c-08d993b8efe4
x-ms-traffictypediagnostic: DM8PR04MB8199:
x-microsoft-antispam-prvs: 
 <DM8PR04MB8199633293FD3E703157C4A29EBE9@DM8PR04MB8199.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 zB/x+UlsZi/nEqnTYRwmkpAYNqw2da/+TmSAv8/NEihiElq5+rv03rZNjZOOc+EqOprK3nDQgVjj2Q3BjHM6MxENXOHlU86O8/pAcG9gmHR2BhJpy52NsvYW5XZy2O1QeIH00pwTClZqbXwbN7LYoa77cmHkYhSXdWcA0ycMhr7oMkX8Ew18UuWYGfb0AZJsvqUWgdyAp4UV+96iNlUW1oQxRwI7t5LP+puZoQGKX7N4tDphEPhUJ7I93yPwSBvSOvNMefs2EvWg3YHO/28EIEoRz8xyrlFUxQjPMiqUfSsFcaRyT7WSzzCbwm0mYeIOMXMiys81FfJgn0X9m7RzRudPthGSduPjQZ9XEzTdeb9gB/YwZ1nUAFJMnN6wsY7UnfueH2ECLm0vKdieGPgX65LC4t6gNMdHvGo4zb0e1hOyB5Ixrr34SFCahChYU8q6zyN24UaT1KNjIW2YB2sU8MPkjkkfdnEqHD4T82BZzeQW6PrM4Iz2oDxRkgbn/oiAHskz5wlkQWnMP7UnX5Zo5Qt7tsyQlkMFRA0ikWyrt3KypNw3+DqAbq+0VKBb3ULgCtWirlvysaM4TIx3ua7r128MwDQNyPQt8llSjSc3wgGhteI3pMqQOuoOlU9+v9dqlWeUJ9CQK/+BShSwWyhIpPUDXZ3VpN++stBKaStGp9GqSHSwJvEM79TYoMCurHI5cvjFLDDU72xSnuoT85ik30rZ/N4HUL927wFLQokmrQYIjGcZO0FKBOgOmxi3Dpamq4fmf0kPuZ6PKm/PSenF4NuSyDnJozqx4tqRcIHWkM0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8007.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(44832011)(5660300002)(33656002)(110136005)(9686003)(8936002)(52536014)(7696005)(38070700005)(6506007)(66476007)(186003)(64756008)(66946007)(71200400001)(966005)(66556008)(76116006)(55016002)(508600001)(316002)(53546011)(8676002)(66446008)(86362001)(38100700002)(26005)(122000001)(83380400001)(66574015)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?M24xU0NtY211Nmlma2MxOWZZSDJ3cnpmSDczeDYxSmFLL1Z6S1NVd0U4Wktk?=
 =?utf-8?B?UkNYMkRkam5VUWhESGV5R1hlK2tVZFU2R2tjL0xGcmJFTXNLdDVnQ0xtcmoy?=
 =?utf-8?B?Y2J4aVR6dGZocnUrcTJHU3NBQWN1ZVZBS1I2U2dEaklwOVBxZUJYSjVtdnA3?=
 =?utf-8?B?U1RvdTRoT1NnTm5jWHFHVWM2WnRaV05KaUx2Q0NZRFdRbmhWd09jLzJiYk9C?=
 =?utf-8?B?Q2JCbllLelZSRktSZWcrOHBUQU9rZlQ2MkV6Q3RDUEF3U1NUOXJ4RXJBYWEw?=
 =?utf-8?B?VDVmQU5HaWt3RU4rUkdjNERRdWl3ekNDaXpnaTlSM1A3YkhLWVVUTGs2SFEw?=
 =?utf-8?B?YVZtOUtyNGhTR25pTktwN2NrclpFbGIzL2l5WW5wYm1VUWFTZG5QZDlSUElt?=
 =?utf-8?B?c04rdWJxd2IwZk5vZWovcHdqQUp3ZGZxaW9tQ2Y3Y2RPN2swRSt4QVhkeGdt?=
 =?utf-8?B?WStVNjEySTQxYVJRRzlNK25ybGt5QWZCOTUwK1ZrUVE4cDlFZ0lCc21TYkI2?=
 =?utf-8?B?OEp0VE9DdzJMR1E4d0N0ZFR4UGdIRjJPcnByNkR4UFBMaWVncTBJVG14ZUVK?=
 =?utf-8?B?UEhpRGtjc1NhbzcrTitkamZwemNLemQvUExZRlUwbytyaWRLeDV0Y3ZhTnpu?=
 =?utf-8?B?NmJOVjI5Qzd3ZzV4WkJyVXJ0RnF0bGFwU2E3QmZGL1RjRCtMZWdzaG1iak93?=
 =?utf-8?B?U3Q1T2JvazVoVUM4OFVOU093dnkvN1MxWEZ0Vml3WWk3UkdPcXlzUjM3enJ2?=
 =?utf-8?B?Q2NxK3l0dUt4RWpSWmNoQUhhR0V3Njd5c0lDUEt0R0drNk5XSlArUDhUVTFr?=
 =?utf-8?B?Umt4UFRpbmZvTWxORk4zWXNQRTRPUVYyUWNob0xJVjdNcXhTQlZjcXFDZkRJ?=
 =?utf-8?B?S0t6M3RNL0gwSjNkazJWUk1ndVRvbmt5akRpcWhwZTV2Qys3TlBEQUxQUGxV?=
 =?utf-8?B?YTdQNzViQk9BY1BaUUp4eDlveUpUcFZIQnJUSmI1K3RFQjVTOU1weUZLOURU?=
 =?utf-8?B?MDlzU0RZaHBUcHJLWDBNTDJyM1J0bEF1dVovYW5rUjlGcmYvUlJod2d2bVhW?=
 =?utf-8?B?bmVZRDk4ODRWRjdSMENGYTVMYXdKclU3SGI1NnJFTW81SVA4OUdkMlVkZDlC?=
 =?utf-8?B?eGZROHF2bkk5K2JaeFowdEJjSVFiSEFZMU5yMk8wYWRPTE5YY1dmcU5FeUd3?=
 =?utf-8?B?TDZ6YVRDVHRkRXpwV0FnTEZ2ajNJamNNNnFKdW9ONzFESXcyckZzMEZpQldM?=
 =?utf-8?B?cUo1RzAvZ0RFVng0TXJxMHE4eU9LRU9nbGt5NnhLM2gxS2dodTExK3NmV201?=
 =?utf-8?B?a09WY3ZFTHRMdWErRUlUdW9neXNnTk9xQjNveGZQN2VCemU5M2pObmJBdUR2?=
 =?utf-8?B?eWo4TzlPVGNONjdHSk1Ud0NwSmZUNTh0TDFZKzNWcHg4T3BhSU1nWDdZbTJ1?=
 =?utf-8?B?YlpucHpSRXlMbmhwc2dLdW5qVE5URW1OdVFCQ1JCZ01rMTM0Q1BZMXBXV3h0?=
 =?utf-8?B?M0o5ME1zN2tjRmV2RmIxd3JwUGo0NVc0dmNnRTVLdHozQ1oreWkycmpvN0lN?=
 =?utf-8?B?cnZzQ1V2NHlMZGlERmhuVW1oc05kVXJXK0pVc0hUaHlsNStrMDh5Y01Ud3l3?=
 =?utf-8?B?MzBqZVpDRDU1RUtVYWE0NEwrcWRFL2YybHpGaWtyUnFJdzV0Q0FMQmNsLzJo?=
 =?utf-8?B?YVIrUDVUYnEzR3M2TFVxeXBMVWxzbGVXd3MxV2ZYOWsydmVzL0xiaklJeXFN?=
 =?utf-8?Q?kdrb8AYzwlLrL1TLuN0owXkgcJ2jc3n0pJsoHPI?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8007.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 079749ef-7273-44be-c35c-08d993b8efe4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2021 11:01:15.6234
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jan.schirok@ni.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB8199
X-Proofpoint-ORIG-GUID: hBR67_uodoozWdOb8FK2h-neM7Mxgp6S
X-Proofpoint-GUID: hBR67_uodoozWdOb8FK2h-neM7Mxgp6S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-20_04,2021-10-20_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1011
 adultscore=0 malwarescore=0 phishscore=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 suspectscore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110200061
Message-ID-Hash: 545KT4E6US6LV2IMAWVWVGNXAFGRZBON
X-Message-ID-Hash: 545KT4E6US6LV2IMAWVWVGNXAFGRZBON
X-MailFrom: prvs=59271ad8d6=jan.schirok@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions regarding USRP X410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SX53W2H46K7MWLZ66B7Z4DHGHQGSX5GF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

SGkgUGlvdHIsDQoNCmZvciBYNDEwLCB0aGUgb3RoZXIgQURDcy9EQUNzIGFyZSB1bnVzZWQvbGVm
dCB1bmNvbm5lY3RlZC4gV2UncmUgdXNpbmcgNCBBRENzIGFuZCA0IERBQ3Mgb24gdGhhdCBwcm9k
dWN0Lg0KR2l2ZW4gdGhlIGNvbXBsZXhpdHkgb2YgdGhlIGRhdWdodGVyYm9hcmQgdG8gaGF2ZSBz
ZWFtbGVzcyBjb3ZlcmFnZSBvZiAxTSB0byA3LjIgR0h6IHdpdGhvdXQgTnlxdWlzdCBnYXBzIGFu
ZCB0aGUgdGFyZ2V0ZWQgZm9ybSBmYWN0b3Igb2YgdGhlIFg0MTAsIHRoYXQncyBhIHRyYWRlLW9m
ZiB3ZSBoYWQgdG8gbWFrZS4NCkZvciB0aGUgYWN0dWFsIHVwL2Rvd24gY29udmVyc2lvbiAoc2Vl
aW5nIHRoZSBjb21wbGV4aXR5IHBlciBjaGFubmVsKSwgSSdkIHJlY29tbWVuZCBodHRwczovL2Zp
bGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV96YnguaHRtbA0KDQpUaGUgcGhhc2VzIGJldHdlZW4g
VFggYW5kIFJYIGNoYW5uZWxzIG9mIHRoZSBkZXZpY2UgYWNyb3NzIG11bHRpcGxlIHJlYm9vdHMg
b2YgWDQxMCBhcmUgY3VycmVudGx5IG5vdCByZXBlYXRpbmcvY29oZXJlbnQuDQpXZSdyZSBhY3Rp
dmVseSBsb29raW5nIGludG8gdGhlIG1hdHRlciBiZWNhdXNlIGl0IGlzIGEgaGlnaCB3YW50IGZl
YXR1cmUuDQpXZSBjYW5ub3QgbWFrZSBwcm9taXNlcyBpbiB0ZXJtcyBvZiBwZXJmb3JtYW5jZSBh
cyBvZiBub3cgdGhvdWdoLg0KDQpIb3BlIHRoaXMgaGVscHMNCkphbg0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogUGlvdHIgS3J5c2lrIDxwZXJwZXJAbzIucGw+DQpTZW50OiBN
aXR0d29jaCwgMjAuIE9rdG9iZXIgMjAyMSAxMDoxNw0KVG86IFVTUlAgTGlzdCA8VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+DQpTdWJqZWN0OiBbRVhURVJOQUxdIFtVU1JQLXVzZXJzXSBRdWVz
dGlvbnMgcmVnYXJkaW5nIFVTUlAgWDQxMA0KDQpIaSBhbGwsDQoNCkknbSBjb25zaWRlcmluZyB0
byBwdXJjaGFzZSBhIFVTUlAgWDQxMCBmb3Igb25lIG9mIHJlc2VhcmNoIHByb2plY3RzLg0KDQpJ
IGhhdmUgc29tZSBxdWVzdGlvbnM6DQoNCi0gWDQxMCBoYXMgNCBSeCBhbmQgNCBUeCBjaGFubmVs
cyB3aXRoIHN1cGVyaGV0ZXJvZHluZSBwYXRocyAtIHNvIHRoZXJlIGFyZSBubyBxdWFkcmF0dXJl
IGlucHV0cyBvciBvdXRwdXRzLiBSRlNvQyBaVTI4RFIgKHdoaWNoIGlzIGF2YWlsYWJsZSBvbg0K
WkNVMTExIGJvYXJkIHRoYXQgSSBoYXZlIHNvbWUgZXhwZXJpZW5jZSB3aXRoKSBoYXMgOCBBREMg
aW5wdXRzIGFuZCA4IERBQyBvdXRwdXRzLiBJZiBvbmx5IGhhbGYgKDQpIG9mIEFEQ3MgYW5kIERB
Q3MgYXJlIHVzZWQgaW4gWDQxMCB3aGF0IGhhcHBlbnMgdG8gdGhlIG90aGVyIGhhbGY/IEFyZSB0
aGV5IHVuY29ubmVjdGVkPw0KDQotIGlzIGl0IGNvbmZpcm1lZCBpbiBwcmFjdGljZSB0aGF0IGl0
IGNhbiBrZWVwIGNvbnN0YW50ICh+IHdpdGhvdXQgdGVtcGVyYXR1cmUgZHJpZnQpIHBoYXNlIG9m
ZnNldCBiZXR3ZWVuIFJ4IGFuZCBUeCBjaGFubmVscyBmcm9tIGFjcm9zcyBtdWx0aXBsZSBydW5z
IG9mIHRoZSBkZXZpY2U/DQoNCkJlc3QgUmVnYXJkcywNClBpb3RyIEtyeXNpaw0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCk5hdGlvbmFsIElu
c3RydW1lbnRzIERyZXNkZW4gR21iSDsgR2VzY2jDpGZ0c2bDvGhyZXIgKE1hbmFnaW5nIERpcmVj
dG9yKTogS2V2aW4gU2NodWx0ejsgU2l0eiAoUmVnaXN0ZXJlZCBPZmZpY2UpOiBEcmVzZGVuOyBI
UkIgKENvbW1lcmNpYWwgUmVnaXN0ZXIgTm8uKTogMjIwODE7IFJlZ2lzdGVyZ2VyaWNodCAoUmVn
aXN0cmF0aW9uIENvdXJ0KTogRHJlc2Rlbg0KDQpUaGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVu
dHMgYXJlIGludGVuZGVkIG9ubHkgZm9yIHRoZSBwZXJzb24gdG8gd2hvbSB0aGlzIGVtYWlsIGlz
IGFkZHJlc3NlZCBhbmQgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGFuZC9vciBwcml2aWxlZ2Vk
IGluZm9ybWF0aW9uLiBJZiB5b3UgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciwgcGxlYXNl
IGRvIG5vdCBkaXNjbG9zZSB0aGUgY29udGVudHMgdG8gYW55b25lLCBidXQgbm90aWZ5IHRoZSBz
ZW5kZXIgYnkgcmV0dXJuIGVtYWlsIGFuZCBkZWxldGUgdGhpcyBlbWFpbCAoYW5kIGFueSBhdHRh
Y2htZW50cykgZnJvbSB5b3VyIHN5c3RlbS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
