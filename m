Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B29823BA24D
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 16:42:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1F3E384737
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 10:42:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="xOv/CbdX";
	dkim-atps=neutral
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140108.outbound.protection.outlook.com [40.107.14.108])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F096384737
	for <usrp-users@lists.ettus.com>; Fri,  2 Jul 2021 10:41:48 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g2imdMOlHut08f0hDOoULvlRvyPpIXtKST5O5yIXaNxIM+Uor8k9dBpJwx+hYsAlUUhR/4eKyZ3kJOVJMmNypaSDBUelZHXMe4qzRLxFEDZyE3kUjT/YWeycSeHA8MC1oNoIdS84O1ov8DI3MnvjXiCWYDKfQgoB5TOi00yAuwZ8gRPtP1dUFId+HaQ/6He0zKzy23z6WSdJ93vRxrjBWF939K/8q/Zm/wQknlr7IXawvhZyaLgN96VpLgKvl0DjTJn4NvghfrOIB6XrOXJmWFEuXtxnDLcVsJumy493H1mxAC8KTnMab36UYQ23gDCZ2FGLnEX/EIjDECuk1OYc5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wK7z89hncd3W81k5jBeSefLIcWVBhPCO7zLpMiKprJI=;
 b=aAWSS9eNf5EQw4PJPs0oNFd4N7JZzlP5vpTvAvb2Lm1m3lt098+yGE4Czgc7P0dMlILlhb6yCSVyo3GyLjOgeADg1mICnd0YO9/17EswYmzVR/B2oliwxxbHULm60H0NWdLNelxXAxwURYd8jzHfKLB4/51Aurv1DFS4Kg2PBfF70rXcrF8wNT9+aqtLPpRPElAqYXMT1NoyCkYQy9p8RBMP2bZsK1DBR7LRhdzCS0miH3ZKp763Q0ICKiYHxxbxAxkv4ChXkwW5XR6caTSQdLS26tCx3pvoBFL2hxvlJCxvuXiW+VBLUdnaO/adDB1PgF4E0vVX/xbI3ACwpK2Dhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wK7z89hncd3W81k5jBeSefLIcWVBhPCO7zLpMiKprJI=;
 b=xOv/CbdXj/GkED5nO7D+xr/HdI3qYWV082kKxl1z33eAhmCJdTw0BpeY+xHphQ5nqYbkvmQTPJnY24LauABKNJarJ3nHxH4csX79Zx5DVNfuxSm/KcIA1/Fc3jgAmtMsOzl/WoK/Uc/jAcTaYdVoSyqMJWMw94Emg10nSHC0YTE=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1447.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3f1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.29; Fri, 2 Jul
 2021 14:41:47 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237%3]) with mapi id 15.20.4287.027; Fri, 2 Jul 2021
 14:41:46 +0000
Date: Fri, 2 Jul 2021 16:41:45 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210702144145.hgwtczc2zruignh6@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
X-Originating-IP: [2a02:1811:371b:2300:e32c:e81d:f99d:4d03]
X-ClientProxiedBy: AM0PR01CA0088.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::29) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:e32c:e81d:f99d:4d03) by AM0PR01CA0088.eurprd01.prod.exchangelabs.com (2603:10a6:208:10e::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend Transport; Fri, 2 Jul 2021 14:41:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 352f5169-812f-4b81-e065-08d93d6784ac
X-MS-TrafficTypeDiagnostic: AS8P190MB1447:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB144731BE71F9B7968984DA9AF01F9@AS8P190MB1447.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jnkfOndjNix75sy/s+KimfxRik56QZshjc0RlJRy4UAFMvPTsKikmcPoyBCd+kcMFhba3iE8qdY9u/lgRthGO3ib642HmoA+tzd8h6VHlJeVENiRjo+zSAE4FPhcr9za/C6dhC1SbA6DHtjKxXBBUpKUbZbcWSlMaFcgu07mM/4P+HZapvC1P6ecqnf51mR3v6wYBUXwjBnjbGIxz4/1jl6RVlGf1Fjcn4k+z3OI0jouLbgeiZC2kd3a5mnKGNFIWhfiOqAQYynFJohhXa5ATywF6l4q1WY0wmgudQD8NjYtCTqS5btASuNuwae/bMsntOBTs9Cc7tTc14E2jXIIcgDN+Pp8WJPvAWFdzfG7o2DcnFutXHidmSJqpIFOAfjP138oE50K/Kx3OA+OAOjeZN4PkoqpPUmkgMclqkfI2I2jzmX14euX6vMPJZTgEgI6c7pkrwFkc3I00F8tt0fRaOxQtEsUHhoNfE7C4Hley051eLbnknaSRxg4ttGaIdj0iNE0O+czZZxLDL5Ehr62pErGaaDPXXnxS/SCZD2VUXCBpbf0UVxJ/AINHUShfJZDmKc4SCC6xUgKpk3HNkah6OVPaa0bVuG4VUquy5FgzfjBEZRv5rKGEUNvxDV3VnMayaQ/8jojIMiehRGynEZn2LFuwMUj71qnOB9OjSIScRlmrQaSSlMMLFq/qUx1AhIn4DX7/dTGEmjAPlWJv64U9tFXSHtzw0VWgTpEJiCxgCKHwlQfA/7N9OQQsG/8TYBGNvQR2nidnizri49nMX7fyw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(346002)(376002)(39860400002)(366004)(396003)(136003)(478600001)(966005)(2906002)(786003)(316002)(1076003)(4744005)(66556008)(66946007)(5660300002)(33716001)(66476007)(9686003)(86362001)(83380400001)(53546011)(52116002)(6486002)(6496006)(16526019)(38100700002)(8676002)(8936002)(186003)(6916009);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?YJxPueel9cZXETsnN+moTRbqx4Llyape/v3Z0ze8bScxK9tJJg1umJyPJb?=
 =?iso-8859-1?Q?z4x8ktXYK9ASy0VEjOTfxbydH8TmEv0WlkW0IhjXE4+AJG/IlVYm2dydnm?=
 =?iso-8859-1?Q?N++9LR6JtvjahgCzsvnd81MAJjFS2nVlwZgtj6OePWCdqV5+H8Khp48h5Z?=
 =?iso-8859-1?Q?0ap+/rbG5KEeJQWcVXNy+1YyIaw4rnHOBns7vXmH3VJP2ltayt9m/YIVyo?=
 =?iso-8859-1?Q?CjcqBdshMmAzVXg+sI+wgTKWT5ZWkuWxxyg5erA5ceYVSyKt2Jre2vfdZ2?=
 =?iso-8859-1?Q?WABPoDgVokS3n+BMTYT1NiB/4pMwjed6v4OTvB8rMGjjgrXyeAnBWY0CLX?=
 =?iso-8859-1?Q?bMEGUDXBy9Utjo3l5hVECEnwUqxZeJ1r6/M4q1ppYXHdd/MfuOdCcJbA2W?=
 =?iso-8859-1?Q?pRhrSjMFZbJx81VTqMbzAAUhyhmKDoMRGAR1FpjzYydIO3rRdLABnSCXL+?=
 =?iso-8859-1?Q?/sanvFBwawvZ1EsWfIPsFwU2iBq9HYLAeS0txCeCPu9F0FRvO+VWl3yUto?=
 =?iso-8859-1?Q?Hhvy/O29OfRGfgfP9D2do2hxhLlBqkgQzvGDAHm8Lys1DGXMllRF2PSwXF?=
 =?iso-8859-1?Q?vMkoDoMt7cGK/a/wQ05eaROVIhTeuemASGEzwyjeQg1Wu1wyRk7BAuJtWa?=
 =?iso-8859-1?Q?84ZXC5kmDl6eYEvo4DLzeWRg9BhD7TYBRO/SmU/Sz++TuhfWXtr4SN7x+s?=
 =?iso-8859-1?Q?TnIKbEyry4FzO9VnNPICNs/sriY3ublxXrGz4Yjj759+SwHOr9+Y8lEfVU?=
 =?iso-8859-1?Q?9gSqQvWdAVe4tD9Yd8jfux3P0tPxXaZgOOicts5tamOJJ+gP4ap3mjmu6c?=
 =?iso-8859-1?Q?LyqDkLaoZTfggdpyJOKmhqEMv1jhAnJnQ3Bk2p/CU7+Mi3ruKo6i168fBM?=
 =?iso-8859-1?Q?GJyIN2puamogqsRPAP5NetKE2tqfJ13Qvc7Kl4vbPHxH9tt+jYITX7IJWM?=
 =?iso-8859-1?Q?RWHR9tQENtBgqkqbdbY8DCjAjycRxBY8iifegHZUGGP1iEiLexRPaahbDt?=
 =?iso-8859-1?Q?3zfkuKWJ91e0OEPm8aeIORV1yOHN79vNqP8xmA1v7s1R1AAVwb708mrgIt?=
 =?iso-8859-1?Q?+wcFDflgCQTXBEueL+NsT+wuDbVU/ADW4jsWb+4+uuanmGhxI13rG7n/bD?=
 =?iso-8859-1?Q?kRBftaqKRUuXO9zgoW/7JWRwjtlpVR3e/IqqTERkjfvlSdrWLpEVAnFyG3?=
 =?iso-8859-1?Q?29tStVIvH5VEJHpR5/bHUC4TdsmQga1KtO8DdTTxz/3dnYMC/+LKwTL7Hv?=
 =?iso-8859-1?Q?zR0RvbTtyQ7uCmd0zzZKB74r9ejVS0ZaOtRk4UxReh4YlXSbZ4TcTU5g4Z?=
 =?iso-8859-1?Q?hsEkPR6QXnHdJbEHQKW2y1kFrl+Et3al1ScIBeKGur9iUocK5o+Q0YPfBm?=
 =?iso-8859-1?Q?oh9+bSqjtm8liecDpK1Yj555yv2aaaOtDBONEsSXIAzyLmaxgaXj5t/pga?=
 =?iso-8859-1?Q?cNLWn63fSdzcuWMU?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 352f5169-812f-4b81-e065-08d93d6784ac
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2021 14:41:46.8704
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dYr4IpD0flgzAhH8OJfV8CnOb/4SB+c9DT2cfvI9IeH3EWxPtQOTqDeKNrXrr5BewwqtJxTQAudmyRKyH5nDMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1447
Message-ID-Hash: NDJ2BLAQGXZYFP4BBIAQLBTADG7XI3NS
X-Message-ID-Hash: NDJ2BLAQGXZYFP4BBIAQLBTADG7XI3NS
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NDJ2BLAQGXZYFP4BBIAQLBTADG7XI3NS/>
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

Hi Oscar,

On 02/07/21 13:03, Oscar Pablo wrote:
> i know how to use pps to sync more than one usrps in c++.
> but how to do this in gnuradio.
> i find there is a sync option in the usrp block which contains
> "unknown pps", "pc time" what is unknown pps?

"Unknown PPS" uses multi_usrp.set_time_unknown_pps() [1]
to sync the usrp block.

That is the one you should use when trying to synchronize
multiple USRPs with a shared PPS signal.

[1] https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a41=
3014bf3aea4a8ea2d268b4a3b390e9

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
