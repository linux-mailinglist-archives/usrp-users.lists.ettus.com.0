Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D826A54FB1
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 16:54:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 886F5385E37
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 10:54:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741276458; bh=1WGlOhIm781A8dLMZlwnjTY0dfF8oG4D2bSp5jJpnsI=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=YJo8ZvGgH0C6mkGKDxEUEcWHdrjx3uN0xkslPzTIfcVBKSYU1ez4zUVzN4uP9Qush
	 g5udgo/JiwR7kTn4cJxrlpE4uyAw9Gga5Xyan4KYnOYbEMsrxgGN4FoOmsRiuZZWHo
	 1ekbHdo4Ec4W+6XxlvNenla8jYfCQHVdKf5mHV5Hluv2IyPDG8wR3RzDjF1Nnjv1CJ
	 UG+e5eRgIYujUTJiyC9eayrzz2J0SEpde4duX0Q4JYNL20foo82EIkOla95uyvMOXh
	 KZBpLflrZTP9tykefvteBeFLuvpWSorr6Wf342khWgP4qR9eT4Pd5LMS+ijoIRa4mM
	 042UGloWms0LQ==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2102.outbound.protection.outlook.com [40.107.22.102])
	by mm2.emwd.com (Postfix) with ESMTPS id C2FBD3857E8
	for <usrp-users@lists.ettus.com>; Thu,  6 Mar 2025 10:53:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="nLVDePxO";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tUF4B/R3Jg6NFTg4o2L+fU3/WjY9nZsHKsQACmg72H2kgHFGxtIp7jHLHwko0vMwr195Tz8iXuxbxHx/KAXm3wVOsdfIHgqZn/BfrbmkHrTxajcV9jwtlJO8sxhHOnP0ua3FyiD76C0Ajf7YY5phkSu890WUIX8uhnKzEN6D1SHhEywtiL2rOF718Aw2GADyx5CvyqrRUpKJQwjejTOv9LmWwNGBp02plETo2gNAxVyw/eJbRhNLTR7jQBrLW9LtLLlzRB58XyagcmFifKJpod11sraY29a+jILXeMyYfjfppcnC2P+KWP+ocsfGJz1ZKypluKoqEaKlKrMJoam/aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QMkgeaVRBB8aLnDRnejDWS47RaiX4vQ9VDLJ2OYc57w=;
 b=Gj/u+4dI56kGy+wWfp/DR7vYAuPX0HBHhNLfwC4aKL08UPq73bpxaThlTKr7Zf1vOU+Ly5vGeBIiwudTgvzLuHxgjJon+7fAy4KXocYJOxhSizp4whjz1UVDNGDGXS3lDBTZnTy0hFqzIPcG+bVH9oJF40hYp81huPwMcWm5NESb7ihcZef//3GrJkErqPCnmwpDHzJYDDTMRILV2wKcMUchHPRL8tg6s6FauAGEG20kLYK2QE1kr5ROwY4MfqyFNerkjMytEvOpFYAQ/rEUFjLg2tdbAPkgkffr1pBwddudfKNWJNMCrB5nxd+q7j5OSNRwDqOTYlBcBt4eKz1Xcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMkgeaVRBB8aLnDRnejDWS47RaiX4vQ9VDLJ2OYc57w=;
 b=nLVDePxOyiWGIPtvo8uAtI4JFCeYlayslxrmJZTx5ZYgkidMLtTx8ujhHE/t0h0tb9oO85Yv3/kOaMcdrqa455O0KgkmlQzH10cI1mlirZh25g+ESAZAV9Eoty25aBT69M+KKzmN3K6ObLJTX619u9E7H2OqRZgkX9MTpWzgtWs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PR3P190MB0860.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:8c::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.17; Thu, 6 Mar 2025 15:53:46 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957%7]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 15:53:45 +0000
Date: Thu, 6 Mar 2025 16:53:44 +0100
To: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Message-ID: <ndvfv4gyhxiiciggelyb4wxqal4iskwl42zqwm3dpqyqmobvlv@iluybtxe234d>
Mail-Followup-To: Quentin Prieels <quentin.prieels@student.uclouvain.be>,
	usrp-users@lists.ettus.com
References: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
Content-Disposition: inline
In-Reply-To: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
X-ClientProxiedBy: AS4PR10CA0011.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dc::14) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|PR3P190MB0860:EE_
X-MS-Office365-Filtering-Correlation-Id: e280f9b8-a810-4219-1855-08dd5cc713c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|52116014|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?XzLfJM1Ovb7UCyrIUpUKtAs9JN9lfp+5AA7uRpWhzttN/YC+koH3JUZb5p?=
 =?iso-8859-1?Q?zIkF0/cJqVhgRNOCcATmMruwMqFNNp7UJFrBzUR63T3p/lBtYqIHOdWEs/?=
 =?iso-8859-1?Q?SgwEfHumMSFMAEOE4fo/vdkX/b5XFWbmQBXFI4WCtOZ1zVHtyy2UNHtEok?=
 =?iso-8859-1?Q?1vljGaXe1s83qDJCFCvsS7VAWSS/5CUs1CV2ZejPoNPpusJUJIZDfv7LEV?=
 =?iso-8859-1?Q?Luk6oqZKc8qxDFIvwL4UTOplepBIoeqUVwIsvPlhC7tA3JjMl0OVRh0AQ2?=
 =?iso-8859-1?Q?6C2lZ5cj9ZUQCgL8DGvaeRhF0uDfLRiOJgaNQ6MqtxIbOAb4pxLR7GeFn8?=
 =?iso-8859-1?Q?Fh+6Kq4gWIS6FGhvgMG6M+QYzkHO40qsiYjK7ZTvTdIsYkiMRH0ZNMsLul?=
 =?iso-8859-1?Q?6FRX+OORoc7BtMvw9Q88FXpD83z+sz1JKl4cN+rN+2QWcOErUDqRMcgXx8?=
 =?iso-8859-1?Q?5OXSm3wDIrADGJL+CalLO1MZrikWbKmrRhIft4besDfy364X3Kf4ilPK8f?=
 =?iso-8859-1?Q?GBvOaKhEPPobiYSZlEOSKttLsGpWbP+KXKQFj38wLyfZ/aCl7MMGwPFGeR?=
 =?iso-8859-1?Q?U8rVLIoaKrnCiM29Tql0WnmQHJGacDo8pnybo+cECK6xunBaahW5AFYBRc?=
 =?iso-8859-1?Q?CTKH1NSu+2pp6wLCyOvttVxmt60WHBIdkCGAmuZryZaOhd+Do7yFqZMwnQ?=
 =?iso-8859-1?Q?Vw/3QKS/5dqTYxUESnoJtwWRx46mCwm+XVfSEGEpPWylwehOqP5dGzKpgd?=
 =?iso-8859-1?Q?1XSEwDFwBa7dB1EHfiLNsX4XqwhUxIATf6BEwt8alKr+5ksqDePp080ZfF?=
 =?iso-8859-1?Q?jYiVr2D2/hpeNTpLeFpX8xSpwtBl2+W6sEanHsquFHiewSMtr0QMI92tmD?=
 =?iso-8859-1?Q?5MwBnV4QZaVDYMsoe+a5vjOKWTzkpsT3Wnrg6e8O4QEPNhugSbSx6tC7yi?=
 =?iso-8859-1?Q?S6QnQpefbQ8GqJ+dwzVQa+JNSyIOEMkU9ebR9U0ZG1pfGLbZw20EpoyAF3?=
 =?iso-8859-1?Q?/5FWbl20SMsNKPm1Lwy5hDY/bC0wXXzB11gyILBmUmxilWReStelIt3V1x?=
 =?iso-8859-1?Q?N+N4/e55LDspZux+C82LlfYVLgI0WPL7EIarHIIKIDfkXummxitfRu2aNW?=
 =?iso-8859-1?Q?yEW/OcdH3J2wWvDfvOsNAF4ZuvFCVKvMkXJkqbDeWCQVZA3tl7vY+5CFK+?=
 =?iso-8859-1?Q?dBwNPXKru6BCWpUTw+TOqdx9ZLr0E9ZgWgVqYnv70DInfhVyvbifEIlKVE?=
 =?iso-8859-1?Q?lbsmdHk+2iRoWk0Pu58oAndDK5eFvV3PGbs5C0OA0MA6RaJgRf1qDg7nWc?=
 =?iso-8859-1?Q?M/GcIvS28p5wEMpMFvh0bsp6AQUNj7ekUnD3K7gkoHvwJ7A3Y+aiW2iPwd?=
 =?iso-8859-1?Q?M0rQsE6TN8FIqVQl5L82qOh+zO/DBwxoO9BddmBS+Y3v7HxZPU4ygBatoZ?=
 =?iso-8859-1?Q?HWype8Tw91OVpp3F?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(1800799024)(366016)(10070799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?Egc25/40DrVPZWJOeuqKMKZ2dZubKqhFO6/QmipgjFSoI0AddSd9RBzxGX?=
 =?iso-8859-1?Q?1lZgyIOsFNroWKCur1p2o07tMI3+2AP1c5nkDsVz7vthvKL3HfuGL7lZjq?=
 =?iso-8859-1?Q?hpy7bdk1fMa318diV5ZJP5zr3/+A7Ze61ef2AJd67wUJqUgSV45jUoVCur?=
 =?iso-8859-1?Q?roP4DtwmVylTwyYcnzlWHeNqDWexo4YiRUqqVuALqRqGxXW0Gro8cvfspL?=
 =?iso-8859-1?Q?tVv4hNJK3dn6LVX+6aSyLVXEEVhs+MLVBDjdhcTTGD8UEN2hT9kNYNkKUU?=
 =?iso-8859-1?Q?S5FTW4vqoGwZRxEJ0THbkTaYHrmuHyPtf50+0O+ha185lb2FhLocU8Pkzn?=
 =?iso-8859-1?Q?NMvTcPxhE/KsEsfzrqMRuJH3ijEoXWz47xwttKBhxo7bO4LlaP3wlxDfIU?=
 =?iso-8859-1?Q?jN3B1bfx0iul6BbeFQyPPLpq7uxomhteHt0VNlPE45kdULg/VWG2jnolLD?=
 =?iso-8859-1?Q?V8A/gpyOdOjA/DlYSu0VOCT9BEnGXNsjonaiDImaSkxtHV1fpm2ro2Iq/N?=
 =?iso-8859-1?Q?qve8ndrhfsZthOfF95ka5Hac0uvNbwG+aPDFP8z0n58Zj5MOyIuEIjcEau?=
 =?iso-8859-1?Q?2/Amq9hSvoZwTpFVE/Lyggn1NiAObXcKo7/e1qz69iRVEX6RyNVdD0NUjc?=
 =?iso-8859-1?Q?UO2cqMjNaJmPAiwWIQRdaLDY4yBGluTpeCIZtvRzZtWubKusnwq+wXrQBB?=
 =?iso-8859-1?Q?+/kcTXurdji67eoI9Ba+VI6092pmlXwdA+VuFAO3I8ZSz4ZDens1BQiHUP?=
 =?iso-8859-1?Q?RVWonsnhrNTE7rEtAr7u6h/5j1l/KFrQUiGDmu3zqoYKb8CBCmHJrZxRm6?=
 =?iso-8859-1?Q?UMR5evHh/rOw8tluGKkxpuXpwqsqZJIrZd7N3HUK6vBBx4Tl9bzowlHTVL?=
 =?iso-8859-1?Q?NGH02rRUrsPAQ/YnJzpue2YnI6M6i7rEklssiOFRw+19YC3J/p8GzXIbbG?=
 =?iso-8859-1?Q?0kDMbZYxNYAQIwwiQy3G3vHEylP2S/DRXpYvxDk8nfyK/pIdpQKOnKBagw?=
 =?iso-8859-1?Q?QN5hv5cmo4AXOz2PAVYw2BNzc8wJmwJjhm5Iz58uHa5NN2OZ78BasUmXNk?=
 =?iso-8859-1?Q?bU/7vonHQ08tyXZyGxfMaVDwF20+ZnlZLx2pRGTPQL/n5ADr7vgMUR83cQ?=
 =?iso-8859-1?Q?tbJGeXDYVwHNNrVUXSTpUB7buwzsCM8crFrdYqHsDMxEZeTjwF5DO/X8gA?=
 =?iso-8859-1?Q?4Faw7KR/M3VXdWHjVwY44IUTqiYX7dFGcu/VGHuIlipBJuoxwPkwiOeQQQ?=
 =?iso-8859-1?Q?mWJ8J8qwweFjcaf3A0AeSuDYmpPURkLNmKRnL4P1DcCNeIz7XwfrDmFVJE?=
 =?iso-8859-1?Q?UzCd6RGHY2nqcTz6BpQFOBu0lNyUVUS/c0nCctDbf6xOH1AHz+kbLAn2In?=
 =?iso-8859-1?Q?PAiPS21nN7DJEaAUx+x2VF952prHUXnna17RX4XyIi5KBGZAgAlSX3U1UB?=
 =?iso-8859-1?Q?AwCbSXAoQ03w6TdABenvUhCHbYiVWv6Da12DOgaTvqvfWh4ESD3wbHmM4n?=
 =?iso-8859-1?Q?HNf45Vt06dG9CskCR/hxq7bi5g7+CjkmsQfbtX+1C2H9jWofN1tkmvlWeh?=
 =?iso-8859-1?Q?T+H/mDKYXNddpqI1x6KtMKcoOmEr0V+3avYTT+vV7GREnhj6ydzJwrUEbj?=
 =?iso-8859-1?Q?zvdvkMr5RnuWdvb5NlLQfrYoeo9WEBNZXLMtyJphLuFvv0EIDyokkWu02g?=
 =?iso-8859-1?Q?wrYgJ8WgxIkybFnHjO85baCwby+3wQVz4C5qowoPdDV2yQubdEOCw+AWlN?=
 =?iso-8859-1?Q?oltw=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: e280f9b8-a810-4219-1855-08dd5cc713c9
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 15:53:45.8390
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GkkYdvvBv3w3FnwpQMruLDod9Y4m44PW/MlCZ3IIjk/7iR3Q9IKuWtCBcBS+yiAwt3AOUoRNl2T80GKrQmjzcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P190MB0860
Message-ID-Hash: J7BWIYDAG4DLF4N3XOISDSGSPHTNNWQI
X-Message-ID-Hash: J7BWIYDAG4DLF4N3XOISDSGSPHTNNWQI
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM Reciever chain on USRPx310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J7BWIYDAG4DLF4N3XOISDSGSPHTNNWQI/>
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

On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
Hello Quentin,

On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
> As part of a research project, I'm looking to implement an OFDM receiver =
on
> the FPGA of a USRPx310 (and more specifically, the synchronisation stage).
> According to my research, some RFNoC blocks with this function already
> perform this function. Where can I find them?

AFAIR, there are some RFNoC blocks in a branch over the old FPGA repo:
https://github.com/EttusResearch/fpga/tree/rfnoc-ofdm
for example:
https://github.com/EttusResearch/fpga/blob/rfnoc-ofdm/usrp3/lib/rfnoc/ofdm_=
peak_detector.v
Apart from Schmidl&Cox, I don't see anything merged into the default branch.

Never used them. Don't know how accurate they are.
Note that they are 7-8 years old...

Best
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
