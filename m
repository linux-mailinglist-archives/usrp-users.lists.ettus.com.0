Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B92095821CE
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 10:13:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2810A383B18
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 04:13:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658909596; bh=j2+Rl+W2lJ803W3aLWa3JzY6jhCSn5crC4vJtKtiXMU=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Bkqw+TShVUwtrhz5OVWgpiaT+4EXp2i3ph/j7tjoCbUmyrnRRBo+8HtBd8+juExCE
	 8PJ7/vRMKsfiHXWj2d+5n5PqHrDL+zp5VO3dGlh+qCD5+FsR/IhPRusBewFSJeMt0Y
	 X81eWaAVA1p07zZJpM75kRRHrAmQN23mA+EL9oei+f4bjNVQfCp7pzxwT+NyubT/1t
	 HT0DMnIjyB6VWyCDywrGu+SIWmGQ1VVVc/hL1At3eiUwqz66m8RHkJiVZgoCU50UsT
	 0XITWzLw7eEViGMaq6jykmANY+y/cdzdh1RxExHbhB8g0B9TcKhTEWEq9V8qeDsorg
	 qVE9SJo/L7nmA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80128.outbound.protection.outlook.com [40.107.8.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 5054E381437
	for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 04:12:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="bo54QTqS";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jvO+lVyghn9ED+YERtrFXdck4jBHD/CvBJQeBcqQ22WdgrX9OWocAYcjPIUp/yWnddn1sqFnEgqHH94nxA9BVCisEkpF0YxHia/GtyZpTU6BIj/a5xjqWXbJmskIziq6G/9uiz1Wt8ldmne0Jq/9GanTACSKGsv3h7zB4knxgqbgHdglKQXvfizmmZAiva2iRzYzCDmI2l484yD5XOwf/Ks5Y6r0o0iCRq8AeFGq+btZUfEgR8bOahZLdJoLjb51z5Lg7uujPbV/yCKEayeON/3F3iTwsQWsNo3uQuOGw6c41mszj7kAAx5Vo2WyheKrfjaflt+OkO4XU9Xeo/ZiEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e/ja/QJpupO7kdv6gLcBVFN98LrnEwZpk0tZnf1KSfg=;
 b=C3k6XXaLA2nERX/xXjalJSXdFHRDlQET/vJxxSBqsSY0OligtO7+yqC2woMWhNEPhBFnh3GpIvR0dfeNRaM+b/JeaNpmzPFVKDjDBwBimTQ8qDBL4iyVy6YKN46pfJCFAtHU8zn2NL8zj+v4FFuLQNBrFPWiyZJQGCsQ3mrycHzmVPp+/UTC6r5x0/0Hol5mPxbWVgpikp0j+eFH3z0ktO4/27slagwMNbpAccOFitVGb/QdIKWLM6ZqmggUYAeLuxq5/vKJxDgzJeY8AOSyd5jp7mo2lvWYciYaD9FeaQ2+627l4Th94VnYaeFNeDca2rYZJMjVNo/e6f3VCKtNKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/ja/QJpupO7kdv6gLcBVFN98LrnEwZpk0tZnf1KSfg=;
 b=bo54QTqSW37YrqM3b6yCIE+OgauubdaPrqTXvMnKxSJ0I22Y7BH9HCZh+wW6bFeD1dQDQvbhL1p41aJGc/IvKn4n0fFEvS3+h95qd+UYAdI+K0KT+Xqe/aU1xbcqxQPNyVe8BHWfCgS0Oh+Z7TKDMSYzlWhKHQZstw/jbYj9mt8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 DB9P190MB1369.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:22d::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Wed, 27 Jul 2022 08:12:05 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::3d8a:cf3c:ebfb:aa18]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::3d8a:cf3c:ebfb:aa18%7]) with mapi id 15.20.5458.024; Wed, 27 Jul 2022
 08:12:05 +0000
Date: Wed, 27 Jul 2022 10:12:03 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220727081203.m6mhcf7otru6ql36@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20220726092245.yxepcz2hvgdql2fq@barbe>
 <ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs@lists.ettus.com>
X-ClientProxiedBy: AS9PR06CA0542.eurprd06.prod.outlook.com
 (2603:10a6:20b:485::9) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8989b798-c2e1-48d3-fc0a-08da6fa7b108
X-MS-TrafficTypeDiagnostic: DB9P190MB1369:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WWZAE8Uz6BvSTDH4XTBdk9doiSD7bawYaWGcVceV3gilzA6dIg8vOzEICnO5tXF8VCkBU+OFKtYkY7yTgPt+hcfvUk6qbTGXB97WDP9VrIMoYer4dkXjy2BOVBkqocLdBeksE0qPFqtMVBRl9mAOi5cV3gZCcggOm5eUsDnERATioBig3OaEMaIaamb7uBLu2caT03DM8EVQgAwOevutTigMkLbO4JbAVLxK6ewZqq+2cyegISxX5bwZ1b/G7IEKLHg7x2TVMZX4sEJWmtYQSCK3YFUN9uxUDfkI0j8itbgsP72eYyUGmo8uJrPCt6JCD2ae0muUZ8bF/20flPtBZGs1lpaH/qwj2kMPGYpDR/qFVHQo2aaT/hDO2QDD1/SGrWcZhdx84zftWKGsW6XOWjM5Jdcev962xgJAzgIURxGwUHxOpf86cXb5oM9ysuKTGpYe9VrmQiKtxgaITMe9HKRh+aKS1C4EELS7jSOkN4IxY/9VOaJCJsGUTbhRlGVesOGvVpw9nJIJnwjVRRE6kMYUqyG3xHS1WHljXnzBPi/KgrilPmx2PZEVkM9J90R0Ot+RAQERcXJHoK5Mc8loID6ydokROwAXDA+/2J5QObu5rtIzvvqUoTRVZZU+tBS5PvGv/aI+EngCQ+bK0iyRhD5CGcER3kjjoGuWBA0oui/nSmcC0C22KdEU1lKPgg0MC+LuXgBpAsfiJut0bpsHlOr7N7TsfhY/LnT3+tvrL4U9pf8M1/EYE5fMdLdoA+Yv
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(39860400002)(346002)(376002)(136003)(366004)(396003)(1076003)(186003)(52116002)(41300700001)(41320700001)(53546011)(6506007)(86362001)(38100700002)(6512007)(2906002)(83380400001)(9686003)(8676002)(66556008)(316002)(66946007)(66476007)(33716001)(6486002)(4744005)(5660300002)(786003)(478600001)(6916009)(8936002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OFo1REVjQUdBc0lmTU5wVTY4a2Mrc1Y3V3Q0UzdxR3ZvOGZSeXNWSUk5S0pB?=
 =?utf-8?B?N2xFZ2tjdTRERzZXNmZnWWEzUXFhUFdUSFMvS2JabWNLczVINW1mdHMzQnJ1?=
 =?utf-8?B?emlwWUdhNjBZOHZYUlA5QlNVMmt1djVMcW9xeDVES0YxV1ptZzlRc256Z0Nv?=
 =?utf-8?B?dUxuZGhUS0JNbFBFTU8vd2dzelIzNHFxTUZQTjFBQVcvR095OE1pTG9ZSjkr?=
 =?utf-8?B?YjBkUDA5WnJoVXplVWRaL2F0ejJFTmR4b0pwZkdBcFJiV2N5UTRSd0ZuNHcy?=
 =?utf-8?B?YW5XS0d1Z0E1Y3RIb2pKdjd3cEZ4UjVhTmtTRk9HSkZlc29lNHhOYmRSWlhQ?=
 =?utf-8?B?OEtQOFRzU3QvdFVMU3lvblc2VlorV1FMaXpEdEZTWng2Z3FWbWpwYkE2R3ov?=
 =?utf-8?B?VmNKQ2JUb3hEc2JKSk11QTdXMW1rUG1wZHNiT29sSG5EbGxTVm05M1l3VjZG?=
 =?utf-8?B?SXZlVzZVemtGenhzbzIvdFpOdTFNUm84T29PREs1K3orMUZHSG9HZDZNTHNv?=
 =?utf-8?B?REgwZTl1ZCtWbDZ2aGJPbGpyYnFrRVFLUURJdmJ6WkEzdzFCV0N5VWZQTmdW?=
 =?utf-8?B?ZTNPZ1ZOM3pnYkhqOGptdndWZ2N1WXoxUGZabHpQc2l0MXNDYzF6TFRGWUwv?=
 =?utf-8?B?OU1laXVCNDIvNDMyWkd0RWplYjZpbTRRdG56UmlDRVZ1M1F1NjRlT3kzQk80?=
 =?utf-8?B?KzcvbGlpb1NKb0RCWHpTUW1QQkFrRjBNSytEYTlxQkN5VUhGd1QzVTVEYVFh?=
 =?utf-8?B?Y2llZE9udFg4N2ozS1NNWkN4cnoyb2NYclBpUmtsWmdzUkQzZktJeGVhV2Fo?=
 =?utf-8?B?WWl4eW1PWU9sbUJld3VDQ1luaWM0UEF2WTU3ekFiOGRkR00rQzdRVzI2WUFm?=
 =?utf-8?B?cFFFMUk4UzdaZ1Z3YU9KRURHZkc0REZaLzdhWVlqRWdZNG12RzJFNzhSakc4?=
 =?utf-8?B?YXU5K0dTclBIZ2x0VzYyeGF3eTY0cUVXeWFQUElGeFVLbnJOR3ZnR05Td3k2?=
 =?utf-8?B?OUZ3Q1l6ZDVWaXA4N3cvQUt0NEEyK2daNDNaZENaMC9QdFlPM0VYT2xhd0Ra?=
 =?utf-8?B?Q1BpaXU5bUdDb3FKUnI3R21HQ3NZMjFUclkzdFJHbzc3aDNlS1hnSVBtMEdM?=
 =?utf-8?B?aDdWTzFaVWdpZlc2dmhwUkxodFdEZzZpS2wxOEl5L1NPdnNxOEs4VmV3cHcx?=
 =?utf-8?B?VmxubDJOeVdTSUc2SVNLSS94aVBJREpqdkdGR1BBRVBuMmxtdVprbFFDY3pL?=
 =?utf-8?B?Rk1vYWdNeTdPZUtPRXVCT09hd2NrRFU5cjBiZCtjTW1iK004NTc4a2pDdmVH?=
 =?utf-8?B?S1lSdU0yNUpTcExjMEdBalUzSWcxVG0rNmR3TkZnY3pSNkNqcVpQd0FoK1M3?=
 =?utf-8?B?SmJzMW5ZeFJ1R3VNTGdLQXlNSFVkbytLVExJeExmeStNT1J1eC8vWW9Ieitw?=
 =?utf-8?B?bytoRUllRkhMcDUxaU5NWnZsUE5vU3UxNnZwdStxVkxFVTlJc0tYR2pYM0lw?=
 =?utf-8?B?c0V5WHhXZVQ2TTFlSytHNWJheDF1ME93S0JpeVhORWo2b1Zib0RsQkdpS256?=
 =?utf-8?B?ZDVRS2JaRTRxQUFVWU1IOVEreUFpT25TYXN1ZHgzM09wN0t5SjhRTUZGYXVq?=
 =?utf-8?B?R0dEekUybkhlUDBWL0g0bGZEb1hPbnlZRHlRSHcrNitWZnlXQkNPMTVmMzhz?=
 =?utf-8?B?WUVaZG02S213eDZGOUpFNkw1aCs0ZGtlTEpDTmloekhtaXY3TTZVSElzbnBm?=
 =?utf-8?B?RGh3MVZFU095eFg0MEx3dkxzeGxReUsrT3Y0NDlZZkxtblAxUzA3WU5LRFAv?=
 =?utf-8?B?YkZBUUxrVGN3dFJHWkQ0SXQ2WW5SNURXWHY4WGk1M1E0Kys1eW1UU1B3c3lH?=
 =?utf-8?B?WEhYZVNibFFLNWhObmljQXlYbmNqckNqU3o0aTZNbHlrMFU0WVhya3JOd3Fu?=
 =?utf-8?B?cVBVdHdhdlRxQms5SXcvMTd2czMweko2allqSmgrNVhPNkR5SVZBTXVDc2VW?=
 =?utf-8?B?UExYYnhrR25NcEdiUjJwRTRYOTJQU3RxcWtrTnlMQjd3cDZrdFljbXErZGpm?=
 =?utf-8?B?UjNvS3lDYUhLZHBkbE5yQnRhc1pvcU1LS3NyN3FMTWxRR1U3V1A5R0xvUGo4?=
 =?utf-8?B?dTdncVI4RUQzMEVpNi9jbWtsQ085QlZOMWc1dGY2U2VISjB1dlV1SkRSNDRy?=
 =?utf-8?B?ZUV4K1luS3ZoQVZkREhLYmFtSlpKS3RSUkhRSk5GVXNWa1lIb1Q2UzdQcXZx?=
 =?utf-8?B?Yis4OGpVWFh3MnBxMmZSR1ZXcDFnPT0=?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8989b798-c2e1-48d3-fc0a-08da6fa7b108
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 08:12:04.8754
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mQxLuuX7hrHpEzOWMWQJeTr8ysxnM60gu5tSNm9MpkFXHjNC23cYFV7XjKimHMXqhrRoQB9P+lcxtZd9b3jewQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P190MB1369
Message-ID-Hash: IVEXVZOXRM4NVRSSFWURACVMBYBE3RDJ
X-Message-ID-Hash: IVEXVZOXRM4NVRSSFWURACVMBYBE3RDJ
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting low number of samples (USRP N310)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVEXVZOXRM4NVRSSFWURACVMBYBE3RDJ/>
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

T24gMjAyMi0wNy0yNiAxOTo1MSArMDAwMCwgc2t5dW5nLS0tIHZpYSBVU1JQLXVzZXJzIHdyb3Rl
Og0KPiBIb3dldmVyLCBpdCBzdGlsbCBnaXZlIG1lIHRoZSDigJxFUlJPUl9DT0RFX09WRVJGTE9X
IChPdXQgb2Ygc2VxdWVuY2UNCj4gZXJyb3Ip4oCdLg0KPiANCj4gQ3VycmVudGx5LCB0aGUgVVNS
UCBpcyBjb25uZWN0ZWQgdG8gdGhlIGhvc3QgdmlhIHN3aXRjaC4gRG8geW91IHRoaW5rDQo+IEkg
bmVlZCB0byBjb25maWd1cmUgdGhlIHN3aXRjaCBpbiBhbnkgc3BlY2lmaWMgd2F5Pw0KDQpJZiB5
b3UgaGF2ZSBhIGNvbmZpZ3VyYWJsZSBzd2l0Y2gsIG1heWJlLi4uDQpJTU8sIHRoZSBiZXN0IHdh
eSB0byBmaW5kIG91dCBpZiB0aGUgc3dpdGNoIGlzIGF0IGZhdWx0IGlzIHRvIHJlbW92ZSBpdCwN
CmkuZS4gdHJ5aW5nIHdpdGggYSBkaXJlY3QgY29ubmVjdGlvbiBiZXR3ZWVuIHRoZSBob3N0IGFu
ZCB0aGUgVVNSUC4NCg0KUmVnYXJkcw0KLS0gDQoNCkPDqWRyaWMgSGFubm90aWVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
