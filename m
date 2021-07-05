Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 558903BBC0B
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jul 2021 13:16:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 292D63841D0
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jul 2021 07:16:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="eDIjHx2r";
	dkim-atps=neutral
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2098.outbound.protection.outlook.com [40.107.22.98])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C00B3841DC
	for <usrp-users@lists.ettus.com>; Mon,  5 Jul 2021 07:15:49 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pj3O899ZqakxzQpv0jNBdvOqt3vc3lQGMzK+RC614xb1Y5+zhhn+VtGU6S4PGRv68lx0XpMOmV+0TrrK6aPRRUVefGjKT2EvyZOvsnbA4+8HWthLuHwES6DhEAKjYzTBNO/Yyy1ouWymfEJSpQx7dRcOxbTDodA2I9P3fG4e9Fhqd7zBA+zwcYMZxu1WnuLivmcIV6ZX9OWZZcITBUkAn6mMQqDpvFog9g6n1qYSUgoQ19eSm8/2pIHmkfgrYJtP+3+EFyeH9Go76P2Zj+adrCOJnNmiKwJJM8SsemKAaYSBadarQ65LKfM4+r4JtaGqefXLg8fqYhGTnFEFmBofdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dH34iHDddjYvtQhGfQQ3VZAzTxUXDLDC7h2ygqGgcBc=;
 b=RLnL/sume2JLV88lNqrWKARea5UROPmrys8TpQarmm7+uT1TfSw5615D4ugt2EMsXcWb+oltcouvfFH8Z31JYWJaNMN/L9QIx641RFh5Bkxuh240tTbmfgJubMN9F1g9tlOKdebuNK/ZQJHRGB/bzE9jMP7kzTwc2Wga3ChEP1fwKTd5tFH0fT6BKOfOO6+YnZ8M/30UzsGbj2ACFfeQb11e4dlM8RXv85Qf5g9VVg1jxTrhytVHvjNRP1XGhg2M2XHPLcisr6uqHMDiCbQHsLFMaZUaUNpGffK7NVJypV+qkLDMU0fQ+TTd+POKp3wz7FJDzW7o7TJwfDwAWynwjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dH34iHDddjYvtQhGfQQ3VZAzTxUXDLDC7h2ygqGgcBc=;
 b=eDIjHx2rSukr2CJeb/xJzD6dJhxr/qwXmstlzKXglzkbn0Of1+C8FalRhIpK4LxufW+vXVkSZqvG8r4oob1Aypmbwlhtf5X7aQSpVqzCtHsJfw8NU46lAxKNwKa7DrEetGcab33a1XNwbMwMw3rWz1ZNpdh18vBZI7FjhzLQ3M8=
Authentication-Results: outlook.com; dkim=none (message not signed)
 header.d=none;outlook.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1654.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3fe::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Mon, 5 Jul
 2021 11:15:48 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237%3]) with mapi id 15.20.4287.033; Mon, 5 Jul 2021
 11:15:47 +0000
Date: Mon, 5 Jul 2021 13:15:47 +0200
To: Oscar Pablo <oscar_pabloo@outlook.com>
Message-ID: <20210705111547.4rrurvdl7yl5dudt@barbe>
Mail-Followup-To: Oscar Pablo <oscar_pabloo@outlook.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
 <20210702144145.hgwtczc2zruignh6@barbe>
 <TYYP286MB1407FECBCE067E3C500D0362F01E9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <TYYP286MB1407FECBCE067E3C500D0362F01E9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
X-Originating-IP: [2a02:1811:371b:2300:b4bd:16b5:7b9:5f66]
X-ClientProxiedBy: AM9P195CA0030.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:21f::35) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:b4bd:16b5:7b9:5f66) by AM9P195CA0030.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:21f::35) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend Transport; Mon, 5 Jul 2021 11:15:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: acb06a00-1143-4fd0-411e-08d93fa63d69
X-MS-TrafficTypeDiagnostic: AS8P190MB1654:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB16546433B8732F384E2A89A5F01C9@AS8P190MB1654.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cwsWugeGWFrEYkAdR1HsdRcdObA11IMGuYr8tFZkfaZzpom+GWoCd4qG2SM/vofB1qKoAo07pVaVzfbxS1lQWuX4SPXFN3kFm5gSGt65tjIqjQ+nKxRYUwcblI98MFZUgCcU/8akO/lcp2PwhjXZ6V8Rv/t7EmOM0u+H2RmxDWzKuXTU9RFTrXPizC4XSx7wmyYWqqF218jEiFwaP7ANV5g3O1Jpqo1tCjIqYpHrVAcZW0tp8vIwqRYM+TOiuIGld4fVrdmCGyirNHlUpr97pXyRftyEH67agRvXQtwXevbeQFdXFSnq9mElAsuZ3kkNRg+MB2Efjr7wdKtCZkBzDvtJfrpo2IB3qT/MFFEPIdqMF05Oc4GG2b/bRfcnL1Lk9efWjzdsYTTs3n+NVyrpbeT76/GeVsgJs76U6TdYp0hfEuE19Q0B1uNC+43xRP/ziessZ212gVIioQhHWA0+UNRXETzgiNH2BXtpQzljwrwh2yjdwE5F+HnruJyYTXKzAeI40qC5CEfy3pjZbZ/AOnit0tZLjfLtlUzBtWxK1ecJ8oge8Zp8KXyEg1hTOamBVpv3OBjwPdUzf1HT0pty5EtDM02zR7iYouDGG1gv+vXAJm1+Wbm7jkOilZ8k8HKeYwFSWUiQWYCS6ngw+fawAF7WGtUxlwh3VX/Nm6GhGIeuyF5mzAtJFDjQJhdSc06wZUL2MvQ9xFrTbiUbX0C9Kb6TvAgiLQ4tyOL2GfZ9AchpRLXME+pfTQ2kC/rSr/vnfF6pQE6+jWLrdrA7mWGFpgW8G/Xu24KhNkRJIEFFio4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(136003)(396003)(376002)(366004)(39860400002)(346002)(83380400001)(786003)(316002)(66556008)(66476007)(5660300002)(4326008)(2906002)(478600001)(34580700001)(66946007)(6496006)(53546011)(52116002)(8936002)(38100700002)(9686003)(33716001)(1076003)(4744005)(6486002)(86362001)(6916009)(966005)(186003)(16526019)(8676002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?IODTXaf1RDjccZueIMCDLwI+DR5HJBQGDfzW6dWglH9XwE7VjkbLqq6QJ6?=
 =?iso-8859-1?Q?w3fF5zfb2GFFNly6GS8ampOhdE52r8R4ybVEcGiGCPBBUOkUFrcqipRmYa?=
 =?iso-8859-1?Q?wzSwdIrSv68r2nCHF3jdmN2uuaEzQTRkDrsGyGEgGzVSYH6yRMw4JPGWem?=
 =?iso-8859-1?Q?vo5E36aBvHLJmn9jHO9vuJX1+IOiTo2TphUxELixviIxjKldJmoNzwF9Hg?=
 =?iso-8859-1?Q?J2zXQQVZOxrHBVyDiUPKOLfwzFoG7CcH+MLUDr29iTJADmPCPXArE7WiV5?=
 =?iso-8859-1?Q?GJBbKi9jn9OSBSW6vdcWWYlMsw0bHPxP9gj0Qfz5XKU291bMYRNNGvjjh6?=
 =?iso-8859-1?Q?hz2cey2N71zJ69zTLySGNiESKlCQ7YTJl/uVihYB2oLLPifBq5CIetMGN4?=
 =?iso-8859-1?Q?LIvNp8Kgo+0tMYQVS8VzVFJRVXZqbGKfyyhkZ4EqdkyMt91B3W/ZVFj+ae?=
 =?iso-8859-1?Q?4PCb7PjsEo5OXUhSV8oL831tw2pFUh6khc8Xuw0f4EpUlwkHUKCRlKMpFu?=
 =?iso-8859-1?Q?fgfyzsU7kEtelXsOfFuY2M11No48Vt9JN2pYhMh+UqY2qPOFVmAgh50IDh?=
 =?iso-8859-1?Q?CQfu7sApcNyWZRf/4tCzpO0TV+McWKnwf53Hl8T69FCUsTKWVlvwXQ/Cv0?=
 =?iso-8859-1?Q?1P4ZZ1LYx5zbbIXAc2yfT2N8phC6Faa1l2hroSZPZquQz503ArbAWFO2jd?=
 =?iso-8859-1?Q?XHG3AOBGlF/MvWVd2NSCX/5exKuFdXp2ijQBQC9OTA3LTtMSgo8lCeA413?=
 =?iso-8859-1?Q?y9rUS/nIG2wg5BJm85iWpYaLjwJtjldlpE/yNNWzvJsbBvkS4WqOEbWxHU?=
 =?iso-8859-1?Q?lccOtJFEl6ZTZvOZCZdRZ6Yl9VYqTBu4atVk2bBRgihauADWPxexcbur/d?=
 =?iso-8859-1?Q?JLdoG5LZ/we6kNhDZb211K1lSlEm1fdc44Ggf3n7pEkokzMzN23MUQz9t3?=
 =?iso-8859-1?Q?brG67dBFGTrdBD/rJrhvclT7Bl4L0WgqcLyhIOdo1NIKwy/c8LRABrSMql?=
 =?iso-8859-1?Q?NAxA4b0vJefxlvaGBD38/Rm+EYnc3GGq+gqbgqPH6RX2EzE7kZEvd2p8k6?=
 =?iso-8859-1?Q?c4/FEMXb2FPbcKXn8cnxN0VUM9OLoxEM5YbKGTAscKPgbxY15YZzgXnrY3?=
 =?iso-8859-1?Q?l4716c5scFsnwK+xB62YErbZflHafKiilUp3VNSAEVTgeTKqmriuxfBxjk?=
 =?iso-8859-1?Q?NRLFP3rKtTLYuU8iSN4kn36VxSOzKd59513ssXBfTyr32HHS//Gqh8FiMj?=
 =?iso-8859-1?Q?Erxndxs4oraVGnLXoSzf81sqF2sD1BsHjLt0tN7xYsYV6IZFpKDg1qzSvD?=
 =?iso-8859-1?Q?9kgTpVJ1ZxNGZW+h/PB6D6K52DwAftlRCmgN6Y56tMAzljn1R4K78plIG9?=
 =?iso-8859-1?Q?e+J9T9VqEhWNF/XcZkQc8BND2rmZufCQnMk9MBefH2BaiDx1+N3ZJyOAEa?=
 =?iso-8859-1?Q?d5NcjqCQno9NDC5p?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: acb06a00-1143-4fd0-411e-08d93fa63d69
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2021 11:15:47.9145
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Fof47Vd4BPgoQsTXsbKPHboEXPhXORNUfyaM0wVff5aK4YuUXoRrmWViQ2Fipe02CltGaC/yEM5x4/PhXinWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1654
Message-ID-Hash: TOWO4BCJI2TNTR6TNLXZJC2TDBQ67A7S
X-Message-ID-Hash: TOWO4BCJI2TNTR6TNLXZJC2TDBQ67A7S
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TOWO4BCJI2TNTR6TNLXZJC2TDBQ67A7S/>
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

On 03/07/21 00:34, Oscar Pablo wrote:
> this use what time to call .set_time_unknown_pps()?

If you mean which initial value, then it set to 0 [1].
If you mean which time source,
then it depends on the "Mbx: Time Source" block parameter.

> and after sync how to get the timed sync sample and set the transmit time?
> for example we want to get the samples at the same time for different usrp
> and transmit at the same time for different usrp.

I am not sure what you want, but:
The USRP block uses the multi_usrp API.
If you specify multiple USRPs in the GnuRadio USRP block,
and sync them (by sharing PPS), then UHD API should take care of
aligning the packets. Ie they will transmit/receive at the same time.

[1] https://github.com/gnuradio/gnuradio/blob/5547665ee92f748a7ee47d64dfbf1=
33db77fcfce/gr-uhd/grc/gen_uhd_usrp_blocks.py

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
