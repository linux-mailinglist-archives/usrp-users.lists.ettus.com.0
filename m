Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17494773928
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 10:50:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 341633849D1
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 04:50:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691484623; bh=5gicLQUzMwNiY/7ThEb1reLGeiLLr/rAYbxA+Aon1NA=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=QQEYBkXEzitdPy/rm3untxoEXzNQCJhc7nte7nUTHCANg1XM6rilF1ajwG9CRmv4d
	 QYQq3ujn4OVlQmvu+VSNXZqk1KYFah4DZfSuw+u6HUgTiUdNxHouCEDDs7Z9x1oRUU
	 SdzejimHFGEE9r1q/tmKm5JjSTtVYqpb6qrH5zCYx2Yh4QmfTgvWdxXyGZf4Y4yEfP
	 NDrloGr0xy1Wc9YfWu4i3bc97cARevuy8OHDD50UlDUFFUlqFoL0ZvW6B61GzmSvsw
	 jZC/UdxDjC5buoE6wG7K3PI3C4RjBNSCTege7Q+j+bWQ+Ihsh96ep9WE2KIgxsZc+P
	 qmOnJHL7Ddpeg==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2135.outbound.protection.outlook.com [40.107.21.135])
	by mm2.emwd.com (Postfix) with ESMTPS id CFF49383C09
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 04:50:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="WBMvgmV9";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/LFYQ3/6UnsYXO0qfSYPAX2GhBgvMll5oCZrUfiiQ6cBowykYaQOmv8nfc+O4Ndt6dQNlfubrg07n1TFlJQ3MtAC92rlYZMAT/krrPG0WLidmniAYBr5Zws1whsIJbptD1tRJoKdGq94Dnp342JVMNMXdyg/jLwznrGoyjtfdwV55X8ekbpf5ezKfWhmP/cqBXarWGrkMsHRArU/G9gduHjHzDHpwi1qOjhYi6r9ynkBZCQutttnx3T9oA7OQBBFI/fgtLWWl2Eri7Ok5ubHjN5bwNdmm0kj1yk6xvtuXwmyIdwLA4f9vUI5pgN/vLAXy8u1ZkxNMUomNL0yGw0uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TcQtJL8yvPMzo3JAC6X4UEsjv/YmURD0b/HzT9BiH44=;
 b=DWIFVC9O15C0ev1BmT9Q5/+i+idSNkGwf1L9tNi7GNIKyrGhcgz+6QHP9AiCdcV53VnBOMAnkvucw0WpTjNJAx0kjqOatKuZmh6vu/qwBIa+sQsnmfPCDvY21h6cE0t+ECuD+Oju6+O5oRj7GyS92V0KjpRF0HauBFX7kslIA2SzagIPEgUaX+2XYgOZB+zEy6Dr1jYSgQlbwb3JAmrD5yiWupvWwNDPwgN6GRU0HANtf5cgYUcXzJd+GOg2WnMx5EggLqDmod0+cEVk56JH12NlIm0cKFArl9qjZukRr3puyKU/5qdLq81udYRzKTnzadf+ZhX5xZ4lZNCjJ8DAeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcQtJL8yvPMzo3JAC6X4UEsjv/YmURD0b/HzT9BiH44=;
 b=WBMvgmV97tESQ0gqF3xzD7B7DDl1H0CV8xEdn2wGQIhaT29UgA7ffnAUKGE4K4taSq+7UfJ87bHvr1HQCkBkBzLLeMBitjy9fus6wSsijCwRvMWWwKkRWIgMIhPGk3r/nEivsmi0nvCOeUecZaRrDe+AkehMwkDJT47szfwvn1Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PA4P190MB1229.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:bc::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.27; Tue, 8 Aug 2023 08:50:06 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::cdc0:e362:b943:dee4]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::cdc0:e362:b943:dee4%4]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 08:50:06 +0000
Date: Tue, 8 Aug 2023 10:50:04 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20230808085004.v75hgpwwsbsoste4@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <000606bb86184761902823fdb9093d73@iis.fraunhofer.de>
Content-Disposition: inline
In-Reply-To: <000606bb86184761902823fdb9093d73@iis.fraunhofer.de>
X-ClientProxiedBy: AM0PR02CA0095.eurprd02.prod.outlook.com
 (2603:10a6:208:154::36) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|PA4P190MB1229:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fc584f3-65b8-46e0-fd7c-08db97ec76d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QSbBC9CgvW9gUc/CgCTo77aw66bL3Sso9NKHJ81CLMbxeqFvGP4LdXD/+8zde+U4CgmYxmMBI8omW+bkq12wfJkX5iwdhxtC2L/kIj8p9mC11a1tZQ8kgjYhPcwAYmkuJ/2bMp0QJFaPRmUcGoGS7cIV09rl8SBqeadQGMMWYSz25z/naXKh30+HfhH1G17rWvp9wabTdZG+rLHzp8LODaaA5OLmlah+jRdyXFxmHiWgR8avUwgwylswV2YqVJBvuEWKAglRip3OgLpwWK4TlEo24wrXU1/5pYNQbZat6HiJ7zeTkWUkQqdq10OAXj5RS3PA01juTZ0SaPLqTZPoZL3aS0/7huRLdpVRfOOZ6GSpNulWLAKF1G38CNu68U2nDjsLJtzUliubz57of94n/eVQOZIXgd72Sg3o4v3wtbivdmEhWAkPPES+oOaAGQXaTsWEpiTB6h2PMzPBYPeVT0uHZ4cSqFMW/juYopYWMh35RtVy1qZ1jy0Azdd/zN2oUoy6ZgFubX/XhTZ6R6nhNMWMUYxqOw7wJzybPDiKiwDJI4QPjBMeA7+z+bh+nLTK
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(7916004)(366004)(396003)(39860400002)(376002)(136003)(346002)(451199021)(1800799003)(186006)(83380400001)(786003)(316002)(33716001)(66476007)(41300700001)(66556008)(6916009)(6506007)(66946007)(1076003)(38100700002)(8936002)(8676002)(53546011)(6486002)(5660300002)(52116002)(6512007)(9686003)(478600001)(86362001)(4744005)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N0tlTFRVUkU4SE5DdThlZEZlSWY3WS9xNE5aSVlGVnI1WGRJOStyK3UzQU81?=
 =?utf-8?B?ZmhjeDZhNTdobFI5UEhRQ21jT0U2b3g4VjZQRWpLWFczazhJcTg3bnpuN0hv?=
 =?utf-8?B?TU5IVFlpZDgvdDEvUHJua0wrQXJMQ0ZwUUE1UFVvcGRvbStvWkF3dndXaXps?=
 =?utf-8?B?ZjhKV1ArYXFndXhWNlpJbWwrNjVxWC8wNHR3ajhaajR0MzhPWGY5bVU2UGty?=
 =?utf-8?B?c1ljQ1JKd2Q0QjZ5L1hpbElhWmtOaytEbmhEeXRzQUc1aE4rR3BYa3NnS0d3?=
 =?utf-8?B?S3FPeHZza3dvMWpsaTBDT05PNGdUT1lrYnlXWTM5RzhCYXNTTDc0M2dSNWxR?=
 =?utf-8?B?UGxDbyszeVcreUtXRU5wbXhxajRmRit1UDJ3SlN1VmNGMDlwNmF4WmpMaFJk?=
 =?utf-8?B?Sk9qUGRtU09FUWc4TzUvMjFLWUhwTnJqUFQyaC9IUFUvTm5XODBzR1BTOU1t?=
 =?utf-8?B?cm5YZERodDZDSThrVTQ5TGtGRERtL3REd0NOL3NFWUZhTGgwdyttMXQ1MEpr?=
 =?utf-8?B?dEhLN0RuSTBvUDRPV3NMTEFHOHhMSE5SSTFRclBKZjlzWXBWdjBzWWRjdGxr?=
 =?utf-8?B?cjY4R0s2L3JiOE1vQUhoQXJpMlFvMWwxQyt2TE15cElYME1IbHVzbUd5eUZP?=
 =?utf-8?B?YnpsL04rTzQxRW1TRlFKa3N4QXZjaGlpQ0hCUEY5SkN1cGRJbVdXQVdNWEJI?=
 =?utf-8?B?SnZkbS91bnc1ZjBDeS94M1pHU1kvTlpPYnlDT1gwdTE2d2txdkQ1Z00vT3dK?=
 =?utf-8?B?eTNxejZ4QTJtenBvZFRXZVhsWU1XaWNDemRQdTFaTmpybTU2bTU2TnFaYWN5?=
 =?utf-8?B?eUxLUDRtY2JvYTZMMGVROSs3T3Q5KytvTVpNU0VxOS9ZK3NOUm5uMmt2N0h1?=
 =?utf-8?B?dmhHR0RaSHp1OFdwanpRUW84MC9INDNCOW81cDdac2RoU2xNRk5Kem5Ib1FB?=
 =?utf-8?B?SUNJTlk2b1R4VkZmRzhlVVBnQkY5Mmk3Z1RtSmxZc3JqRVJqaGhMZTBXUUs0?=
 =?utf-8?B?Rld0MFRrc1R1dVhVOUhBM2lGTis2NEszTDFJNlNERFBOOXRGYVJXYUs2Tms5?=
 =?utf-8?B?Nkk1aGw2aFhZYjlLNWhMZXo1YXlBNW4wMFhRa1J6OG5OQkpKWm5YbGNjUjVJ?=
 =?utf-8?B?WnNyVWpxVllFKzVYM05hS3FxTlREOTNaSlRxcVRHSDVxVkRVdTN0MlBUSHd4?=
 =?utf-8?B?Z1hoUnREdXRqUXBQbGZrUWNSTU9lV3N6SnBBSHk1R1dZcmc3cGhWY21iRjhy?=
 =?utf-8?B?ZjFZSjVVMUwxbzlhWG1aY1VTWkJwZERRakM2bzcwdGM2UWNFL0xIaktOUk5T?=
 =?utf-8?B?ckdJbVRxajhSQmxmNDF3dEtPdldYSkU1MEUvSzhYNTc2eFh0U1BUMjdIWlU1?=
 =?utf-8?B?czNidFgyQ1Z5WDl0eHg3VEpqMGIvQnY1UitFdG10cGh1V09zenF4eVdNWi9I?=
 =?utf-8?B?V1BDNlB6WWVnMEdBTG1QaUtsa3VFTGZKRTVWQnByOWcybUdqYkU2cHBscnNp?=
 =?utf-8?B?NmlvcDNabzNqQTM1elVyN1RrbUlGdXMzdE51aGc0REU4cmNZMks5c1lGL3lz?=
 =?utf-8?B?NElvTHduTExxd2xFNXNIT0FGRkxObWdOSmNaSk1Wa05SMWoxZXhEVTluSXM0?=
 =?utf-8?B?UUhXNDQxM3kvcmI4RnVGcU90TEliSE0rK1ZCUG1FNU9tOU53V1Fna0xDaHEv?=
 =?utf-8?B?b2xtbDV3aWlsTXJ0alpRUitlMVNtS0NXRlZwRzJUd3REVVIvcklCRU1URlNJ?=
 =?utf-8?B?ZjNYZTVqUFRyY1RtVXJyTHJUT3VtckVUdlpEd0l6Nm9GSkx1K2xwcjQwNlBu?=
 =?utf-8?B?eW05cVgzd1BrK1JZYXFPUGgxTllqRWNaRGU3b3pZUmNXais3U1gyYW40SEQ1?=
 =?utf-8?B?TXIxS2ZkZTVjQ3ZJZTVyZDlFM1pxd2toTTdNTml0WmhWY0ptZEl1eGFEVXJL?=
 =?utf-8?B?SlVqZXR1VWx3RlUvZzkyUDZyMWRqM2N6c1N1N0hxOTk3NEFFV2YrQ0liVldE?=
 =?utf-8?B?NnNDalFrRHJyVk40UURtT0dhZWR3ZFFQZklvQnBGdVRwajZOZ1R3bFc1KzJ2?=
 =?utf-8?B?RVJzdS9uNWNTK1EyeDZWTVhMS3NNQVRHTnlST1VUazhRYmpUUnVmK1VBaHNC?=
 =?utf-8?B?cjFpaUEya0ZWM3ZBbmZaMllMUFBEQ3I5RllCYW05dytlTUYxRkZtd1dxbUE0?=
 =?utf-8?B?MEFFNFF3VG0xUStkWG9oV2dDVzlqaUFXaWtpZTd6UmdlSkdDeW01MWpwUXpK?=
 =?utf-8?B?TGpTa2J5MUVTR0I0Q0NwbmtWbkl3PT0=?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fc584f3-65b8-46e0-fd7c-08db97ec76d3
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 08:50:06.6065
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gYPoigUbmMFTGaM7An9+7DlB6zHxKX7nQG5xlR8KEjjBQfdntRsE+EhaqVTR1m8gbG/3ZMxPQhk+zIvAzogdTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4P190MB1229
Message-ID-Hash: WHQKGOZWP6CO2Q6P6SJZUGOTATKADN5H
X-Message-ID-Hash: WHQKGOZWP6CO2Q6P6SJZUGOTATKADN5H
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.3: RFNoC image builder "ModuleNotFoundError: No module named 'uhd'"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHQKGOZWP6CO2Q6P6SJZUGOTATKADN5H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gTHVjYSwNCg0KT24gMjAyMy0wOC0wOCAwODowMyArMDAwMCwgQmFjaG1haWVyLCBMdWNh
IHdyb3RlOg0KPiBJIHJlY2VudGx5IGluc3RhbGxlZCB0aGUgVUhEIDQuMyBvdmVyIG15IHBhY2th
Z2UgbWFuYWdlcjoNCj4gICAgICAgICAgICAgIHN1ZG8gYXB0IGluc3RhbGwgbGlidWhkLWRldg0K
PiANCj4gV2hlbiB0cnlpbmcgdG8gc3RhcnQgdGhlIFJGTm9DIGltYWdlIGJ1aWxkZXIsIEkgZ2V0
IHRoZSBmb2xsb3dpbmcgZXJyb3I6DQo+ICAgICAgICAgICAgICByZm5vY19pbWFnZV9idWlsZGVy
IC1GIH4vZGV2L3VoZC9mcGdhIC15IC4vbjMxMF9yZm5vY19pbWFnZV9jb3JlLnltbCAtdCBOMzEw
X1hHDQo+IFRyYWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToNCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgRmlsZSAiL3Vzci9iaW4vcmZub2NfaW1hZ2VfYnVpbGRlciIsIGxpbmUg
MjksIGluIDxtb2R1bGU+DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZnJvbSB1aGQuaW1nYnVpbGRlciBpbXBvcnQgaW1hZ2VfYnVpbGRlcg0KPiBNb2R1bGVOb3RG
b3VuZEVycm9yOiBObyBtb2R1bGUgbmFtZWQgJ3VoZCcNClsuLi5dDQo+IEl0IHNlZW1zIGxpa2Ug
bm90aGluZyBpcyBpbnN0YWxsZWQgaW4gLi4uL3B5dGhvbjMvLi4uIG9yIC4uLi9weXRob24zLjEx
Ly4uLi4gVGhlIE9TIEkgdXNlIGlzIERlYmlhbiAxMiB3aXRoIFB5dGhvbjMuMTEuIENvdWxkIHRo
aXMgYmUgYSBwcm9ibGVtPyBJIHdvdWxkIGJlIHZlcnkgaGFwcHkgdG8gaGVhciBoZWxwLg0KDQpZ
b3UgYWxzbyBuZWVkIHRvIHB1bGwgcHl0aG9uMy11aGQgdG8gZ2V0IHRoZSBVSEQgcHl0aG9uIEFQ
SSwNCmkuZS4gc3VkbyBhcHQgaW5zdGFsbCBweXRob24zLXVoZC4NCkl0IHNlZW1zIHRoYXQgaXQg
aXMgbm90IHB1bGxlZCBieSBkZWZhdWx0IPCfpLcuDQoNClJlZ2FyZHMNCi0tIA0KDQpDw6lkcmlj
IEhhbm5vdGllcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
