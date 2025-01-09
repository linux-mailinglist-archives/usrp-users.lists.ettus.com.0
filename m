Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B76EA0711D
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2025 10:15:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C572385E75
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2025 04:15:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736414103; bh=nFfFIKV1oGZ6Iu7SrU5t2QzWWti+6Kq0kNAacr7o4rg=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IXehfn/bAutiQE+wYKbhsAiYGAYjM02SZIDVYGSZeWtt+DUl5m58B7PZYdycvYHu5
	 uV90uYxeuyx3cjfayzPQMDYzyPOWS503ndLRG2Hs/dD7WgqJwElYwpvixhhL3kICGg
	 D7xB2Cy1j+bXvorNlHj1Ect042k4rSifLRbEH8MU7bAVvOPtl4X6hsZs955CTorO4k
	 s8LEr/JQb9/JZ8XAxCB+F4xdOx8v0ny9DfSGrv0g96TgvdmndJBhGayjpsjLEvzg/t
	 Z6F4f6/iphWTM/uWn1i/zqyqMrs+2C3goNY6hkNcfuQIzEeFva0fyjHU9nYKMMacrm
	 aH/cHzEgst+fw==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2135.outbound.protection.outlook.com [40.107.105.135])
	by mm2.emwd.com (Postfix) with ESMTPS id F327F385AEE
	for <usrp-users@lists.ettus.com>; Thu,  9 Jan 2025 04:14:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="jJx1KEh4";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MG6L5+VHQYRw9ue2hX4+vAEGXVMackHyFR4FAJimHdXaBoFO/4CHOPZe4NGDqbsCQd6dtZRxzYwjueNPcQJE69T0xB3zBB62nl4KQgb1fDbeWw9Z4HF4GEuekdy/Vw4E8zQFH+AzuKMcUvT/05897NruZlb4/JF1Q6XpTshYVFndID47G4wNfxs+RvXrq7/iKo5alkuPMLTepVqrDiCRXfNE5DA5uxipxfSRiC7kcYGh9zdOh67iXCTrzKCyyrOp9XZIskj4ziIHOKsipJjqsnZqAA809VFHTzKKNJ1w/yfU9M0LH663XH9vcBXxOGk0BKZmJY3j/eoKcbRKi6J2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eJp303SGCWXG+plCX2YYf/V93AiBanjvkuO7vS/nYWM=;
 b=HhAwjNOPyieFwxdcn4p6W9bPNynvRfHdobPq/FjQvPea5/4UFTRSWTwLw21/JWhffXtSXd1CztnVc9UUDxbngsqQ0zhEcbMRB3ZNm6nYMvD9pPG8+tOt2tt9XtGeCZlDj9RMnapUPnkeKcI+3IjZ0eGOUsZ4d75M0wkfC8KpilRIm61uQwYSvV2zTrZOMbzt/QsDdbbYl7uMUYJiqvvfLHSAHcH+xHdAZqIfGuzvd69GqVt+vxKL/qsYG+Y6YZa6bAGDZSDf7OzmaWXnotIL14fBC8mnL38e9RDlgusXNOGU73Ytb0ZtJhv/MTh0WkyVt38flOqmouT4/OyFhC+FAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJp303SGCWXG+plCX2YYf/V93AiBanjvkuO7vS/nYWM=;
 b=jJx1KEh46nY2/KhAbPYeH/napMpxuZKa/BBAagng0HoxApUUbWyNp32oImkK3yv+EjVNAq2Sq44udTAbT4w4Czw3JvIfo0es9PGj90uU2pPyVat4GPgrXHolOO8E434GVSW3t7ODJZL0uaL5luMj09hsL/bJC+9JTu7b/s/SK8I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 VE1P190MB0909.EURP190.PROD.OUTLOOK.COM (2603:10a6:800:1b0::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.11; Thu, 9 Jan 2025 09:14:19 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957%7]) with mapi id 15.20.8314.020; Thu, 9 Jan 2025
 09:14:18 +0000
Date: Thu, 9 Jan 2025 10:14:06 +0100
To: usrp-users@lists.ettus.com
Message-ID: <gembijbfsj5m3pjamhfexpqdknmqbgpeeb2p64ouhonqdckn4q@gdyl6g2yzo6x>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <89a4b5930a3e4d4693aa8bbb9f4b66ed@foi.se>
 <sjh5ltvrjm6mus2dcylql3wz5iorwyofyjz2ip6n37hnugaxmf@znijngdsrgjr>
 <c028b761bca24e1891f0cb0149f5cd1d@foi.se>
Content-Disposition: inline
In-Reply-To: <c028b761bca24e1891f0cb0149f5cd1d@foi.se>
X-ClientProxiedBy: AM4PR07CA0006.eurprd07.prod.outlook.com
 (2603:10a6:205:1::19) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|VE1P190MB0909:EE_
X-MS-Office365-Filtering-Correlation-Id: b1798c9d-ff17-4e59-97ce-08dd308dfeb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|376014|52116014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?Oyc1wSlPWZCxM1yDUfENYWBPXbQ+Fx5k7CRo9s6UYacTbn67J8LCwJkuKY?=
 =?iso-8859-1?Q?/1CbTDj4RibQD/4vBvjopotWhRguYoJ6c7dYaQvyQgZola7FS4EDqBt3nN?=
 =?iso-8859-1?Q?9yNYbsr1+GXRfRSvsiVgPM77X4WnRW7mcW0Y9HC/8Dbh5DGajAM59p/SAa?=
 =?iso-8859-1?Q?wK8qos1KXY07Sb8RCGoyDYkYuQIZKKpesmVyPAojNN4H1iIMrrOvSf4vLB?=
 =?iso-8859-1?Q?ZaC7cyAjlcTTbpCUeJVTXhNA/b7gqzENkvmSE7MDB/RA9MD8soixejBCMO?=
 =?iso-8859-1?Q?pcCDbSl48BlmlbvMv46/t2QwkRSr14/WBEr92aa5d4cvjXA69xDKraNaqg?=
 =?iso-8859-1?Q?B5yrnGsBBpxMKSrU618knV8mragt6DUJp0iUywG3JfWkKaHnDPrqPVPOsu?=
 =?iso-8859-1?Q?hnpNJXtyprfOZN0mOp2UPLaNBJuHNRO7gHq6SZjuaMXZcgKdCLTrS+8iRF?=
 =?iso-8859-1?Q?kjyXqOqEueKhFlpiyffAcyod0ST8HE027bvY5wVH2mJki6MDL0cJvYm4XK?=
 =?iso-8859-1?Q?NP08CZJh6h/kX96h17kmyYmJOnppsJlUyo490QtpRHYtL3HC8030DnXwOq?=
 =?iso-8859-1?Q?eB5reTfiKDj/0QfBxZw35iAbz/NaNAzfheyHkKB11P9rzZ7Go3DQmByxRJ?=
 =?iso-8859-1?Q?E/g03zOvd/ItubIVQatkUMaTGobUg3Z7zYP3byIzk3QXRWuMR6xroSg2EY?=
 =?iso-8859-1?Q?/qDmOJe6nuBtT1WrHlBfN6PNPoQnnWMNiHmqaFENwZyo8H7w2jiqq9opLP?=
 =?iso-8859-1?Q?PPpvNNiHQ8dv3K9Je5AjakdYyrqifWYVMcXd9NbzOOOKINZjaYRrmqXR3r?=
 =?iso-8859-1?Q?nxz6NK7KJYSMbimxY0js/RuYrqOviXJs/GPcH0mYm5zcx5wl/qy66kzxjk?=
 =?iso-8859-1?Q?P1JojQS3TWQwe+Z2F5W1iDhtA/MF6VWga5TizG210hPRWaYQk7NZh9wwoO?=
 =?iso-8859-1?Q?iffwtfpWZxsExNJvsAjcB78YDC8mHLI/Ipy7Gl65wKvY9VjXgCho+EGMCg?=
 =?iso-8859-1?Q?fn1KUcLJGOfGKZ/BbOcVu0j67j/m+2FfvnLRB4bHhYbKsh8ltwUWbkQdBz?=
 =?iso-8859-1?Q?lPudnaPYSrla+YRWU50pt2N143QzSlOYNjV9AxaKD0Cbe1pUnJvfKjMQx5?=
 =?iso-8859-1?Q?NO9ltvRIOm4Zjtkr2UB6rjO1wehxFhkqZRkjgLOZA12c4RKsaNBHDKtShG?=
 =?iso-8859-1?Q?hpIgENNQxfDBfUz5wCOuQM4Aw93HN0riS7GZHQdwLcn5MKhbupaLmkplOl?=
 =?iso-8859-1?Q?w2jM2/ALONEQ5aKxM9P0219aPHCo9Sh9gv1oKVYuh/kPtuP/vw89W+YyHe?=
 =?iso-8859-1?Q?FXyPuS2IDxUkg0C89RtQ1prxA19K9bcs1sEbx+n6EA9UNYBvwwgNGnQati?=
 =?iso-8859-1?Q?XHeosObEK0OGSugBvFK6t8OYI2jLTMGfOORwCFs0IQnIBDxFCx740SEp9G?=
 =?iso-8859-1?Q?znoMA6WmLXdthpnZ?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(52116014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?aJImg7vuXYi+7iZnhFWmhtkyku6HbVpRROwiE6wdRSIf+CBVwsG9fUHCGR?=
 =?iso-8859-1?Q?YXFabcvxVxlRqureY5RyKU9rM9KcZL5qX8dfgg5aeCWP3LlE0dJP660AOZ?=
 =?iso-8859-1?Q?Se1z9eGEQveBgcEnAzocBZ5FjLRvQR3jqXoQLlOhQttwGO+FGbsaiQQJ4i?=
 =?iso-8859-1?Q?rErgNj61gc/ZRUz40D+eiGrO1ZJgsg8HROOs2oJ3xkF0LSUUql8XthHmy+?=
 =?iso-8859-1?Q?BuoT5t9NUxQp3JzJJo5+xokobT99VvBOGf4foR9K0xBeJETn7mMGFhnEPt?=
 =?iso-8859-1?Q?E+QHuriXSiG9rxaD0fmSNOtN6dAEFdz/X7kbVFFS4aiJGfo5RfX3dRVU0C?=
 =?iso-8859-1?Q?e2tgbufxP6JqoyA3FyjKEzOPHwwNA+CIMPABYkRl0dvRstxaWezU/q5iOD?=
 =?iso-8859-1?Q?EfAFzhMNP1sjK5JI0aprj0Gk8S2xpWasGxYXI0KgPnz9X2UjfUNFJuhLAC?=
 =?iso-8859-1?Q?b6D8yyhWOpDiZs2Kman2Bl/xKb59lfi+GtKWyH1f13xCYjWOZZsLCAd0Lh?=
 =?iso-8859-1?Q?OrjllqnJLuzlwPLzulHeD1uajdNIUsxkFJVDVBn2jf0isF1uzrpB1bSc/c?=
 =?iso-8859-1?Q?pGMq8Y6Sj3z7/FYw4YBzbcgYWFIBVyIpZzGw+TcF+9FanEHzCTJKg9k6mj?=
 =?iso-8859-1?Q?ztehfLaaKpkcY9Tb0q8+jKhJ784aU+UK7rE/vfG+Ly8gcCI7unnIMJ/DJX?=
 =?iso-8859-1?Q?8qKvjtIjCCkI9xp0tRKn1DVPU4gJubVojyzxU1C4cDWF/OrZZNunCJG4SQ?=
 =?iso-8859-1?Q?vdObJ4KjHXdhpidNGXA0zPNkt71Ym9rEiPUlAK1r+lRc4PxDvYtjO62hsl?=
 =?iso-8859-1?Q?4+qoWzXObdtJ4zW44wxT1LUBmPNGiCwDvyzHo9RfqvavpwXZ+D6R9wT4bC?=
 =?iso-8859-1?Q?8c5JJmr8O5w1D2VuRaoR5Be8XiPaLtTIofyN/reLGbzgZ8auoYKqAZSIDc?=
 =?iso-8859-1?Q?6ntXh0BWJHTkcR8EvHh1QEQgw51xr2KAgGNhQ6wKdQUi7A5WulKXOHaKtl?=
 =?iso-8859-1?Q?ORmyWzpkTa+4V/4+nTQ9uKzBfLuHmnKVQA+pkb6u+vD57mSysbVcF9Ph9n?=
 =?iso-8859-1?Q?GzCf8lLfZ4VzSCYuL4DQGCldJ6PLisEE0zTLDn4tVZ4JmXpdC28Z0K1SbI?=
 =?iso-8859-1?Q?Lml19Kbb89gU0SPI/fDqEabskioN5BMjMx0crIpgq8fPM6NVVUJ4uEFPq9?=
 =?iso-8859-1?Q?JxR/msV9AdwFJcLUSgtFwA4vPic5trALjViKmoH7sgsUt5C1NkzeLtOZ4G?=
 =?iso-8859-1?Q?VvUMQUiI2sZYIqRc6wEGpSv0T9v77Z4GQvY3L0aaapdukI5TLcq2b+83TE?=
 =?iso-8859-1?Q?/04+CMSa8cL6b+xFRL14yOMMf18Ne3mbrmSwTQCjncoBbUp86dcheTyvqM?=
 =?iso-8859-1?Q?ilJKKeonwv5zyEh9pnDs3rg6yg8tZ6WgIOQeohQqBn/OsZ5LvRQ57Ga2Eg?=
 =?iso-8859-1?Q?bLHC3Fn6J8/tjmJdE+c8jp2NpP7AmVq9iUH6kJy+fjGai7p9ejjtr5M7gP?=
 =?iso-8859-1?Q?dY/X3kqHAmVdtzGi4PHztHbAs3J8rdBprO2p3LxRLzV7LeKStJK7kz2jNN?=
 =?iso-8859-1?Q?yvGjAIYNlXWC2VOLV8FddXw/vwpuNYtJdW6mVGLE6RdTJThGzGyi+iwkNk?=
 =?iso-8859-1?Q?DP/d+T2prpe9pLKvf0UYIj518C4q2j1TaQ7UYEQ8qP0cgn9LpSHGA1heAV?=
 =?iso-8859-1?Q?4OmE41iMitQ3oK/jvpsfkGT3rmdRP2YfNHzaWX+i1BGV9rdNVsjD+zurgV?=
 =?iso-8859-1?Q?300w=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: b1798c9d-ff17-4e59-97ce-08dd308dfeb5
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 09:14:18.0143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nMV8K0k3yaWRUXr1/sihXXMBNQO2Vtey31ndBY/AF2fRSZPFVKPY24BJg9227Hw6IXzc9in84QaLNlU7ctNEog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1P190MB0909
Message-ID-Hash: P6OQEIZEVUUCMAW7CQVXPY537ZKWE2JD
X-Message-ID-Hash: P6OQEIZEVUUCMAW7CQVXPY537ZKWE2JD
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem sending samples with tx_samples_from_file to two USRP2/USRPN210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P6OQEIZEVUUCMAW7CQVXPY537ZKWE2JD/>
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

On 2025-01-07 11:29 +0000, Per Zetterberg wrote:
> Thanks C=E9dric!
>=20
>=20
> Now I get a signal from both USRPs, great!
>=20
>=20
> I still get get the below error. Maybe it doesn't matter....
>=20
>=20
>   in ~usrp2_fifo_ctrl_impl
>   at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:49
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
> ^[[A^C^C[WARNING] [UHD] Exception caught in safe-call.
>   in ~usrp2_fifo_ctrl_impl
>   at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:49
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks

I do not know for sure.
But if it is only happening after you stop the script by pressing CTRL-C,
I would not worry too much about it.

Best
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
