Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C328C86CC53
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 16:05:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD7FE385106
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 10:05:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709219155; bh=cqUhDJXjXsgyR3fq873MRic39O+iARuflkdcZyS/tW8=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mHokAPiYDUBNpWy1HzxUjPI+M04DhmGiezTet67MJQqlyskLKQniGKOmcR32BWZFg
	 vLh6qhvwochEmFLf7epLNrdyhQMKqBzN2xlpZ/nXlgA6Q3xtAoYGJ5NzAmZiORUoBj
	 HtAj+Br6AeEiUs1pSM5bBH2+mxz0cLPP8dn7ZvYz9pS/NudKJxPNm9FZnWN2gdodXy
	 iW6n8/R5bMnJztAlSqEpF8VB7tRNX8dd3KIyGNyQIWz6ySWgGeHOPbN/4ZTmePQc51
	 DXRstuGbRG1iqQuBBav17bW4DWqe5B9EzjsQyvH2QLqe712gwn+vdw7iIROII2Ksuq
	 PCLMvR9sSdr5Q==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2095.outbound.protection.outlook.com [40.107.105.95])
	by mm2.emwd.com (Postfix) with ESMTPS id 18443384C23
	for <usrp-users@lists.ettus.com>; Thu, 29 Feb 2024 10:05:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="htSqy75z";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSr0ybsEED2ItC8FNV7tWAJMUIozArqsxw+L6ewfN6v0NFoULSV/+XcrMSFz3p4e0CTFeiHdodYuLZ6fQ13JmPnTZ78bAqt0zhWwBqNz+Y+5UQNky4d90zqnrYuEOSx4HKct/Eey13Bdad+mXeLORmZM2qM5uLcR79FYDXS4fTPmKt/5SJX6TGOt+PmGvandMZvA+BO8Ft+TC8AWrwv7+YH1b3ApDJWMn5K7awTMakiajhzEqfCEFOzu9TXIaKkil6v0N5pMLp8bGKGIDo8JO1DuyXJuD4GPniHcmddUdXTXbS+5sGFIropKB676U3QCMao/OgW80vuYyumv2skGvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLDjf6qfALkx45NOvxhZbrT4VTyAeaaei+A2y9/CCUU=;
 b=nCzOpaEaDodj1J8tADI0YWvhT6L1/KZjJAiWdDHCWog8EfiF7gZx7lVLsEl0fHrP8bPZlhUJ4oq4glkKAymtPIkafaD6BHlguz7v6X0wle1xaAaB/GBFVd24OmNwMXfFC9qKvx+o38cvose6aSWkdDtL6WATRMFU64Jp321QE0SZAe6inEAG0Mzw18pCGYuRaeOaZ27ORHXa6t4YPE0s+8lBshkpsiOACfYIkW0SfqfXgFox3dx1CfVjsaLkZcI7+X2ToMe++jCRitZKwSwaweIQA1o6NsYM+5QQiO3JHoNd0MrNVHuUsMh6eRxbwI/StaZIEkqWv7vqEnQsgjFWbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uLDjf6qfALkx45NOvxhZbrT4VTyAeaaei+A2y9/CCUU=;
 b=htSqy75z/nfWaTOlvpllXtrH1x6BSZlnyeAsRTMNVFEVjUuf7OMeizxgzubwpAPE1xnSji9sDFabu9/VUBlBixz26n9wTZjveuf0LacTA9rcs+J3CoWqaB7jy4EFfPGkTkSgozanfhEEkTKbK5Gg7PrIypQ3Vga+dSXthJ0f0v4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AS8P190MB1239.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e4::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7316.33; Thu, 29 Feb 2024 15:05:19 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4%7]) with mapi id 15.20.7316.039; Thu, 29 Feb 2024
 15:05:19 +0000
Date: Thu, 29 Feb 2024 16:05:17 +0100
To: zhou <hwzhou@yahoo.com>
Message-ID: <aka6xamd3wy2ulbzyegu6hhdd6vbdrts3x44h7v5hnfdn7e4c5@jgm4phejyom7>
Mail-Followup-To: zhou <hwzhou@yahoo.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
 <1464756341.27900.1708721099612@mail.yahoo.com>
 <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x>
 <165749366.400969.1708941965618@mail.yahoo.com>
Content-Disposition: inline
In-Reply-To: <165749366.400969.1708941965618@mail.yahoo.com>
X-ClientProxiedBy: AM0PR10CA0123.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:e6::40) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|AS8P190MB1239:EE_
X-MS-Office365-Filtering-Correlation-Id: e1ccc0d6-76b0-4589-bae8-08dc3937d82f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3Lq69pd+6sGH1wjXy7TJWVjZ74DGd0PGYvJ/tnfTT9IzEL6HYe8zGrKMXlQFDEsdZi0i7WJxAWE27Rm9Q3ACjpWYqSoHtP44frxmJP8LYlvU37CRmgrsbfH+U+7oOfmkQDRFxt9zlzyktP1JBAXsorkhk2RwFi7I36shT3chOG0XWhK1XMsbdtYfh1tz1ewQwKxVN1dQis+pXLgCb1lhoiemibPzxCSCC9rD7VY8SepbrRT8RbWkZAVCTjsi54aR64Y2lgC3sejUVLjs2e6kDkXeA3C2SA6tXbtguK56bUzA/cMpXD5KnE5A29MXiN6uTUgQ/7BwGI07tWWoNHT1Xy1v0WjeCf6tvkoLZbB7+bQ5TT7xc4MHV1Po6oKdqEc+ucCApQIBzP6E5QQ4THbI52W8wO62t2xjf4rPdjDQPmK8gEN6aW28GKL60Cf00K1GwzjxOO2Hy1a/+pn3pKF8UWjXZEq7gRyDhCNGLZkHNcYeJtSx8VWhIvbtHIzuVH1B7XTlaDq74QuvfgUdPzv4Ym/8vS4cnOfeFGtEsT/vNw5HCkXvQgPysrcVlxzbzbkdp0fPsQRUqUS6HHqkfauSeMGpv+8OAOjiJzCK/Vx4w7oLvgbjl+dE2J5F+HNCINc8rPGfcLruHfAtDGNRH4mRWg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?2qyP/wYHi3Gu0N9yWgwZqC20ywKjVKBI7DviR8yIs0sjegTA4O0II0N1X+?=
 =?iso-8859-1?Q?Gl0zi/w5hdn568kqaqMqlyHofhl4S2IuUYyynuTm41xXoRr1nTXKyOccYn?=
 =?iso-8859-1?Q?3cNEKI3NNZvNABGJgEWAiiFetiM6QeFHzJ2g8WcYUIZAGFeb2qAyBdhdkW?=
 =?iso-8859-1?Q?p3akZjl7RW0s9hMMGC4tGvOM4JubWwSPcExenJ6/dvQK0L42MkEABfrtDQ?=
 =?iso-8859-1?Q?IzeAs6Ras/bBxYd8Nx/2T6kwVN4eDzBgdL+q/86u8NzSbiXrgedFhlM8MY?=
 =?iso-8859-1?Q?5cdRWmLVri19J9XsvCl8kxTvhy4wJyMcBTWw4OXru3ObPNL56cJDWuLwSd?=
 =?iso-8859-1?Q?GUaS0Pmec/w1pf8yjNI5ONMjcNJyjGT5F9TzoPDcN80Ap9+1FBTlGDSXLb?=
 =?iso-8859-1?Q?I3fgcl1PFcGRU54uEs/PyTYP3WiInAvORiYEurXdubJUTkHaKxzISXe2qP?=
 =?iso-8859-1?Q?2tnx6j+amM78WnUA07x0z4Oa6i2TmjSQw5XFH16kQ3T0ib87SeqTs7RK+F?=
 =?iso-8859-1?Q?edm1yZs6Gml2PKjq5e2itWIDPKVrQYiU5if/T7VBIKAoovYULXhygcehae?=
 =?iso-8859-1?Q?HQ7+fO2EpsBTPWwvniuB9WLHhk8+b16H5ZssKN23tNyDfPePCVgAtpH6BF?=
 =?iso-8859-1?Q?Hw7Xdc7Qn/4KIBHF98UvNjxcDHqNUFIUP0nUpFuTr3UQMqPfqUDZW1N0/9?=
 =?iso-8859-1?Q?3mgmLnWdpQNbcmJ3G1Z2D1q17Hnnf5STgQ8KN2tY9Eqm/4BAYOa/L1Zlg4?=
 =?iso-8859-1?Q?qa11M0Sx1N8Pkfe0aaNR3hvAK1TSANjii29LowtFeP6Zhs7972xV4aCBKA?=
 =?iso-8859-1?Q?uKLpcuYhGeywhVYu0nDkZ0Ollejz/LdIMhgcDk71dW1igp84+yuTUJCtTa?=
 =?iso-8859-1?Q?IzbvPEa8IJV99OCz+X7uRkzoe1/XNs9dMTiB3kGW/w4JW+objWSTr0h0Pw?=
 =?iso-8859-1?Q?8zz8iISp+qpHqm5pflHzn2w1lullIeWc+2/aQ3D6HU2SWjiEbw0cGGL9tC?=
 =?iso-8859-1?Q?OKn96DXG+qkPpU3fKr/CpHzr8C4QjCsiHPIxSSL+pHQEUY7ll4GUYIASQx?=
 =?iso-8859-1?Q?p5IHsiKRyPAoEf+P6CnioS7INQtUlNQWeqJreQkyOZ36BQTf5gAj1EBz81?=
 =?iso-8859-1?Q?xvToHxKeqpgyhqnGz5peBUR3AFGvBHtrKm0QdVPOCa5+AxApudR32vI8HA?=
 =?iso-8859-1?Q?Q8pNvg2LugdNbaFwE0SHlOlzOJcDphom/Ni98Lt3L8fSYfgVtfHLnlD/4J?=
 =?iso-8859-1?Q?AfZFuXxl/AFIEVZ1vs0d5sJxFMnHa3Flgv1O/KpU6nii2QsXoi2/Is3ukY?=
 =?iso-8859-1?Q?C9Q59j8y6eWghsAwtiDJfewa1o54HESnktr43tEPm2VSfkRBeQl/dpZgx0?=
 =?iso-8859-1?Q?TOBUG3D5izMCDJM7OqyszQpNG949X83STj5d22PY3p2a8ithnD4b4U22Te?=
 =?iso-8859-1?Q?lGXJHhSg+myHcF52t049BnSsecriQoH46ORE1x6SIKLdooQQPflOC6GCU+?=
 =?iso-8859-1?Q?G3StMMY8tU4LDvyr1ohc8fp6oyOu0dneilVNBxDnGtYpzbSd4Jf2iuPYpZ?=
 =?iso-8859-1?Q?EFVj1UItTdqA/R3KG0Wh8NxyZqsmSGETUvyDJpMPTDJ256hmp8LNOz/HF7?=
 =?iso-8859-1?Q?bk8HN3eK/IaAH6dIl2xT9VXNBP29UDff6drcjEI2X/VqDWro4c3P+H5/a/?=
 =?iso-8859-1?Q?nPrfzaaBqSMHvri1f2xfu3niGZnbDX4MiFX+PaqJt0Zsj2z+/CHmnnFOt9?=
 =?iso-8859-1?Q?RvpQ=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: e1ccc0d6-76b0-4589-bae8-08dc3937d82f
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 15:05:19.4298
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NzDNlYcQjsFZmEAk6ESUj1DGc5BeIzmGVi8BMJCCisgIPGG1NOz3I3q9BOjmm7uXCOP8obUEOTElUbX7UjUC0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1239
Message-ID-Hash: F2FP3J423XWPIV2XCR3P5EUQFMUDDPTH
X-Message-ID-Hash: F2FP3J423XWPIV2XCR3P5EUQFMUDDPTH
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F2FP3J423XWPIV2XCR3P5EUQFMUDDPTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Hongwei,

On 2024-02-26 10:06 +0000, zhou wrote:
> For X310 USRPs, you need to loopback connect the antenna ports.=20

Could you direct me to where you got that info?
I never encountered it, and I am not able to find it in the Ettus docs.
Doing proper calibration is important,
so we should ensure that the Ettus docs give the correct procedure...

Kind regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
