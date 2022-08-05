Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3569058A96B
	for <lists+usrp-users@lfdr.de>; Fri,  5 Aug 2022 12:23:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA211383CD6
	for <lists+usrp-users@lfdr.de>; Fri,  5 Aug 2022 06:23:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659694985; bh=41+ZhtTHX5LQBq6CsNHlLnwjvP8mCfJ1H/ucM+JDfK0=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=n2NS4lRsxVDl46R24EbcAwKXdUDpwawJKEJBpxAPfM6PzBulda5TVVK+eSIoxPG70
	 ZGDj//nNadVsM5sH7SKj9aftJ38vhmtV/j+yT1uoMtiVl8KJNc0TEhkorQ2b01ivkj
	 A/aHHH7d6jf2I2GCA/huZJEzF4Q8nIeUVPAuFKbHF/3NK6IlJEJ+Ubfk+9laAoVydg
	 +ahBFlsCFKzkL+LLR6pll5mXHIorXv2Xg6eTZiMtB8j7jdYQ+AKjgEQwpOS6l9GtgS
	 gC9w4RvdcPFRC2s70KaTfWtzJ0RLyPiqFPmd9JZX3tSez5kRKt1jF1ABwcz5WLWxF9
	 EhPbjNPRY6SXA==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2130.outbound.protection.outlook.com [40.107.20.130])
	by mm2.emwd.com (Postfix) with ESMTPS id AE2EE383AE7
	for <usrp-users@lists.ettus.com>; Fri,  5 Aug 2022 06:21:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="R+FUycfp";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kptQPuO3ngCHclwP27EjKpwZG+ujwK0XWOSsB1b7TkHYIQplQDGAjKikpcLCwCFf3z4fhGG1YoFfxia1dXaxA/AvTtMV1ty8K9brSLAqileqEkgsx1vAkOWpaBuqC+g9kHnXuR+x8tCoWeTQGKAY/CCaMbJ+yPC9RVarz+3KvB52eFcgPouLLj54wTi6q4RejDlvxTyHcUt9BHLPNeOosdIRW/jXn4J9oKxoFo1dXpkDnpDQ8TlfRK+C5s1R8XGeAL//0FsAaYpJ8OPXPrppGROw1MZ3E97ay+wEwUEiogqs6pu+kdF5yw/iq1mQuLtPCeVu71uWmyRLN+29BqjbDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fD73/MHq3GewYz7DiS9Rim9GE8gsamYnAK/8GI4UV5g=;
 b=OrYUcZzLXAM1/AvAIGWbDVHRZiZt6gNFIuBUIa+m1KHPWk56mKwDfGXxJUZSd+DnrN5DGGfg0nYUOegBOiawjtODKQbK0TSm5FVxGOCv246R0GLrIhuV4S1jrFkA0kd77pTtjnrIa/lTxTY2yjJWcRnXipLAmgY2gue2ZErIj3awBxtV/7Lu7eauA22aUYoSxosXG65EOYIP15q2e6DoBtHjRZ94gDV8e5p2Yuec95SC4QsbUZpDBbGXBmq+LABp/ObdWzHGt/aVuSY5gUJFUbQRhKbuhsCezbBC304f6ZqVNp80/d0VZIEp3kmlM4MQYkX64HVHC0Gb1RU7XCVHzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fD73/MHq3GewYz7DiS9Rim9GE8gsamYnAK/8GI4UV5g=;
 b=R+FUycfpWmzJzLJ6IZN5EULlQ1V22J2vtGoCyvwV6TXUZvGnUke/ZP1zJr3OBjw/OxbZcbyYGuwUwTpLeJ0EEqDhOU6LEDIsp1+Gy2LyqsF0UgKA+F5/M+EXtZdJX3E4PvO/a0E9UxXekIEdB/iEuPA0r9d128HbP7m0OZyKeWQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 PR3P190MB0857.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:81::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.16; Fri, 5 Aug 2022 10:21:08 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228%4]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 10:21:08 +0000
Date: Fri, 5 Aug 2022 12:21:07 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220805102107.ogg3xokfrckvyeju@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
 <5aefd8b6-fddb-6011-290c-3055f5f1e5c8@gmail.com>
Content-Disposition: inline
In-Reply-To: <5aefd8b6-fddb-6011-290c-3055f5f1e5c8@gmail.com>
X-ClientProxiedBy: AM6PR05CA0023.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::36) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d3c0a0f-00ae-4bcd-37ce-08da76cc3651
X-MS-TrafficTypeDiagnostic: PR3P190MB0857:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	B3K0dAeyMfSjg01VG0jrrvu2EDLY0w0vu9pTufmkZXcT4spSbyiYb83P68UBHKagBzd8HKjdeFINsz701K18UlgufB9Fo9zOAUd/8/A+9BmyoznwXmo5f9GSrJt434qSoSBlg5wifUezwHnEGOEl2+RsZI8Eq7zKNlsZWXB9/dLaCRR5CW+6XqgCsv4y56/TUlR+bt8wm3x6nSuWIMAknEu8b1DtIv0qX6goM9DlK/s86thCOqltx1JVIBXQefqRPibkOgR0b8++LL0NZBVPDEjTOaNKx1IKiLY2UINsyf/BLdYw+kZhMkjuD0QXarexia+qWAthNcaZ8ktMj8gvnwnlWnNsgPh29R3n6Ce5UqktD7/etzWJrDykziwiyGJ8i7mDZCq4ylnx4OCyhy4aodVTJAJzoR5Xq5n1VRMOKakdHhZtfZUlOcCcqwlE5ADuccbixYpGmE+DVb4fk+ZqAspvq7+3Ga530huJVLeTkZ68Sbgy89fUEFQfKubOu/ZrypYFEZtrqfK1vZI1v0O0etFY8T87SqKULdMAelMqcnu1/q46ykw+Ez4DfmLl1yCaoWCIrlZFMt0s0SgVo2QeODtwdUuRUnGMomy/XDrnSrCKib4gUEZuGwOc0yoptXLjCQRB01Wi2PfL8kuGRS6hvz22mNE+hXdOzC29OJ3nRvWjkbHv78L9UELOmchbYkUpn0u6JmKGNppW3X5X7R2AQVmvujJdt/qVm5gFB/gmsljFio0DNDiPeIRxud7gUwwRqbPDpQSvSU8DTuYtiwyk7Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(136003)(39860400002)(396003)(376002)(366004)(346002)(38100700002)(1076003)(186003)(6506007)(66574015)(6486002)(966005)(52116002)(53546011)(9686003)(6512007)(478600001)(41300700001)(66946007)(8676002)(66476007)(66556008)(86362001)(33716001)(6916009)(786003)(316002)(5660300002)(83380400001)(41320700001)(2906002)(8936002)(4744005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?eP6BWCzCn/Ksa1R6KXAhy9R9OKcVcU3oCcDQTxApYgCTnjlcGvH7TFl57O?=
 =?iso-8859-1?Q?nisAKZhnpy2K8xNJGcNFI1N7Y8MaEbVLJQ1pkfPiueIcdcffb/xATnh3B3?=
 =?iso-8859-1?Q?F+C/s/frrNeuZHE7a/ePDW0++qABETbEuoYm9tNC8NfCF8wzHM6O/AJUMj?=
 =?iso-8859-1?Q?wDJx7NqUCGdZtwGyUlSrRy0wEkyran6IVlGjRO9nNiUGmIInGFM3sLsG18?=
 =?iso-8859-1?Q?zrLYyZCdulTYo0i7JhibfGISxA47h3bm4f7tUwXvBTMnbrCjQW8pxs0aAt?=
 =?iso-8859-1?Q?Ke//okRWGPaANUldB5XmP/cxs3/xr8ZQvnRPo68G76XYxqOPJHXwY2QOIf?=
 =?iso-8859-1?Q?rf1+jl0sq4BJj/+vHAz26/SigwCwYhbPdfIETLL3SKEGmUA4QW8y0xYIpF?=
 =?iso-8859-1?Q?zggIemECTsniu6KEoWaa3t0Ti2s2dusZp7zuqHDa8Tq8W6LRi9upQrkB20?=
 =?iso-8859-1?Q?lYo3NCJJzy3ReDW0zIyTzoXrYFRp57W8jFzPQjFrRdV/89osvukSz0nTqq?=
 =?iso-8859-1?Q?VCMDoxnm5zv0vlphSYvLVMitonaL6EY5EUn3N8i8A+HlIA/qxlhuysebVH?=
 =?iso-8859-1?Q?lxNvqde/Hu1THCWcEwjE7CXwvROcR+iGozDjrbmCmt9LbnzRU+mfFebehv?=
 =?iso-8859-1?Q?6cFlmDzHmNSMSsww9Ej9DMYYPSb9hSkL0KNcZHsMtDuUu6W3aH+nwee1wa?=
 =?iso-8859-1?Q?+X5mfv9JVoEwwq6OI0W6LgVFp715IIPpjIjvfYm4NEiv3gKgv8qwsusOQw?=
 =?iso-8859-1?Q?SQvLMIhf1n6N/dGDEwEZFeOOmuIKHM9TWypZ7s7iHgbc3NYgUaZoIiQRH9?=
 =?iso-8859-1?Q?vVzw52iqq0uE2lkYFpaHf7X8V01ow4IAWIXo4qn2od/6L6uIq008Xhk5nD?=
 =?iso-8859-1?Q?ZqNg6JTqn3y37INqmxniJ3m1L2y3BgEvr1ZYXimI1TMX3Af/88uuUglS9H?=
 =?iso-8859-1?Q?UOyycp2CMl3fuZskSQO1xGzDhQefYgkCa+eK4YNF4uCydUVIxR5hDVeKW6?=
 =?iso-8859-1?Q?EWoMv55WoyYj3I9YQgqeNe4LEQieJWqYJB0BZna8+DFQeRNE3WJ08DXYPm?=
 =?iso-8859-1?Q?/dUjnGYdzmPuc9riF4X2FxGw0R+zFtz6ZNljjNIUqLSe5I0qu1jO9RehKW?=
 =?iso-8859-1?Q?yGtUzlUVxlqy766phyjEw4vMbFV7pz/TvwLD/NaDX5RXad1X6Uv+jCaoab?=
 =?iso-8859-1?Q?q9yyHsRNK/2+8dWvgZf1Yew9a1apIDElSutgELJOEhTKGbfZFMgQUyt0/m?=
 =?iso-8859-1?Q?ZMsWO9+Vt+ccu16YXHuTEFXT84hu6Rk9EfjCYEg9ZkZfEKQ9qelkrm7SlL?=
 =?iso-8859-1?Q?U+kAfClBpT52oyPsq+QfGCHzqpoTsUh96aG+oF1t9FYYRXCkJpB7/RLwxu?=
 =?iso-8859-1?Q?Oc+eP/dx+T97Ypxg2paNPMzN51eOkKO1f/ozX8r9m9OL/jo/LMK2pI/JsQ?=
 =?iso-8859-1?Q?qhQBE4O7e+OcnTCcIfOPkeaFAc5j4FS5DCyxeK3Xep+Wkfsuwo03p7m+vK?=
 =?iso-8859-1?Q?+p7H9t9SZoV6XfnRZz491B2uVRU40MqYOqY2b14XR2joZSvSmH/1XbFio9?=
 =?iso-8859-1?Q?sr9T7RstTjkYUs2kmcQfJpa6q4pNBGNanYHgFxZHIJnszK4u14Hn7vD2gn?=
 =?iso-8859-1?Q?sSfWfTXUpS7u6T0LX9I6EUowJYYLDWKVOPYn2UVGBBUVscUOH1IC8FjQBF?=
 =?iso-8859-1?Q?ClZcX3mPc2UQ+brNZ8ojFCj1kTdbfZYJdtPYXFiH8PRqWNxPlsYo/ry68e?=
 =?iso-8859-1?Q?wU3g=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3c0a0f-00ae-4bcd-37ce-08da76cc3651
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 10:21:08.5544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IqF91poSSFj5PJhODnJk4JdlKIRWtL41ud1TBeaw/Wv+LfCH7a3zWdIlK2YFR70jCGmPK/+6PEyy/DOKocqcWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P190MB0857
Message-ID-Hash: FPYJL5IW46USA3VPLIHZHHOXIFHDKWFA
X-Message-ID-Hash: FPYJL5IW46USA3VPLIHZHHOXIFHDKWFA
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FPYJL5IW46USA3VPLIHZHHOXIFHDKWFA/>
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

On 2022-08-04 08:50 -0400, Marcus D. Leech wrote:
> On 2022-08-04 07:59, henry.powell.xx@gmail.com wrote:
> >=20
> > Sorry for misunderstanding. I think this is my fault. But as i mentioned
> > my first question, when i say cable connection, i mean i connected tx
> > port to rx port with cable. To see the device settings clearly, i did
> > this. Also, I have b200.

Sorry, I forgot that part.

> Make certain that you have at least 30dB attenuation in that cable.
> Otherwise you risk one of two things:
>=20
> =A0 o Severe distortion and non-linearity at the receiver
> =A0 o Severe damage of the receiver
>=20
> The power output of an RF amplifier will necessarily vary across its
> frequency range.=A0I would expect that over 100MHz to 6GHz
> that would be perhaps 5-10dB.

For the B200, there is some data on RF performance:
https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf

Hope that's help.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
