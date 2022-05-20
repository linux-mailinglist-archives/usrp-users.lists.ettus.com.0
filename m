Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E1652EA6E
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 13:01:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8400384A9B
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 07:01:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653044513; bh=VspNsR01r9T2cp3+KTrmycws1clHMPdp+YnKI921xfM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ft+lQA0Z2L1KYJodkwJ8x47attt6YkocY9RaBAggS09o67pEq5eizBjtrc3EtKTeG
	 4D+uT1Jm4jlCGQ0aGpp8MXeMOCF3eKIp+uPJW1CmAptMuadbjW4HZgNffXUiW7cXJT
	 xJgYUuvgGi1EDx2+xY9f9XhYwNkMRWe3saVgsJ7qU6N+0+LxrSqyh+jXu6hxNlIG8b
	 T3RA0eFVOwRmnoUxhPepKTw5DS6fhfBLP07tzJzDG3svN2YbnKFTl5InM73Y2YhUuB
	 HgZGsVsj3lbvbwKPAtedrQB9ZR7y0sz+FPFNoWsx8LVAO0ODRInKa3hohEf0KQegIt
	 FjyNfglluuhNw==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A76D384A9B
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 07:00:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="p9zqwLkC";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.18])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D66B8120067;
	Fri, 20 May 2022 11:00:46 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2106.outbound.protection.outlook.com [104.47.70.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id B7F8434007F;
	Fri, 20 May 2022 11:00:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYKOJ9m51NCBeUUPYtWX8V8dm0Yv3b3Vg+T20Sg5bm2dpZiqDic6xL+srTMN3b9G6CGaxdAUJd8R1DLH5hRKSgLOK+sLHqv006GHijPW+AsRbwm1zl/0fxw93xSGp8IGak11zD9PMjLQbokBvSeFEpemKEVL7g0fhiWK1wEi/7FKoEt6NvbX/9LgiCWuoktB+AhWlJ9UDdzqnTmlYWh2lTCKKm+sQlnp0TKDx9BJpOsMyXRmcx2OvWo3q8947/BFRSLjaPwDJscNfJIhyasJmv5SivL8xb4rVi3XqRvtXRvu1haQpHGZ4dqcx0BX4LCSY/iNU6Dnjf311QCqh+AX7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tj5PoW2xHosFuJQJ3HotvCj7hhsKM6tIcr1w68jh76M=;
 b=M6Z7VQXVfFjeAfBdufQdEjNIbM2XTYNS+kEWPXGetJr8wg29lefZByTU9cSNQhOeudc0L/rNcMIes/1+oFIH6ZlXcHMUukYMtB7MRzGiuZhCzi+5e0REDWDkdSHkh233bm91CeqtPzrwwVHT1Y71aOjsfRVfXmRlnmHYFNxYveUzf/U2n0NlrcCTvGDrNTNDS8lH3nUwQDOTWaHPqbGujMAv598dUpLBSBEK5ojhoWAGDW/dNz6mLLPo7O24T9F+dmjeg7Vx5rjNPmgGm61OxLMYOPSPe84a4Fi7y6FDo+YKwA3D9IDhF/1hzDWbtRhQanfnF6GIAkS7Dt1Agidq0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tj5PoW2xHosFuJQJ3HotvCj7hhsKM6tIcr1w68jh76M=;
 b=p9zqwLkCg3HAnxX3LyTQnUypkHNxinFz6VfZkxz6qkFd/8arsgMJrphBuqZCuwshLAXAltcVFKJ0GT6umO+bg3AspWIUMCEmatxNjjqZpi2VLeUdg2UCiGjpqJTyT/v5GOJNdkCyGTKymCvYVHkwfb057huKbsKWwzi/MsbmbHg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB4813.namprd12.prod.outlook.com (2603:10b6:208:1bb::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Fri, 20 May
 2022 11:00:43 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d1bd:5f90:24e0:23fb]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d1bd:5f90:24e0:23fb%7]) with mapi id 15.20.5273.016; Fri, 20 May 2022
 11:00:42 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 TDC measurement errors
Thread-Index: AQHYXkP+Y4fg2AyFmESoC+vAlJapH60WthdagAAKXwCAAARmGoABrkdPgA87Ez0=
Date: Fri, 20 May 2022 11:00:42 +0000
Message-ID: 
 <MN2PR12MB33128BE0CE1FE723814651A2B8D39@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <7e208111-f0c0-6713-fe95-c4a6ea38d060@gmail.com>
 <MN2PR12MB3312462A2E9190A0F5590D9DB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB33126482C2E5860798E206F7B8C99@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB33126482C2E5860798E206F7B8C99@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14a2c3cd-2d97-408e-5ee5-08da3a4ffbc6
x-ms-traffictypediagnostic: MN2PR12MB4813:EE_
x-microsoft-antispam-prvs: 
 <MN2PR12MB4813A148F066A22E5185BEB1B8D39@MN2PR12MB4813.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +pcXH0mwfPZLalpzKrDZxkMhg3PYo8M3puwqdXoKtwQGDZ7a1KsFBAY8pOyvxbpGoTT1uwXToHQJRDl1IUWs0iPcWS8+u9ZWaVURuvvd+IF3c8iMA46EvtQTaIOhLZy7MMFrEA60WbRtOHXZ/8V7R3ATU+TpeAcQYGtBT308bSwPFtarUhsr2ygnrjDpnD9X2OEVdNGE1seBhns2heIDz3iWiR2O+C3whxGttMKsxPVuzKTrfeiK2/QeporXDBLfvoVSdYouh4tDFj+NSMDBaimHZ3M0yVqrXfeoSch96Xzn8TvTIgr8QUv5q3JNAaCykuPezCza3q0u2yNTbORl5NEdPf3ofzldrsEUOrdN2cXOQAsCctT7AkVf3mhl69kpdPWzkUeXIuvLp1Adn84D4A7GaLzvsvti2YAvwToTBgpl+BgRV9zKmwV0Ks6JtHrDnoOhlf4Bnj2CHJ1RtFlaGz1JvjLJGrk7TR9dd0gCrq6qKDjkITyjrkdyAsx+A3m7/XbVF0LoL1ZF0UmgInkcopTspcJERBR++drpnJPpjwCA1qOJeS7la/6KGnBnneDi2+q804WAm6hSbg6a2qs0VZKyE00h09qEh8pSn/wBLjreR53Xv4gaToAiohkg25o5Gb9vmvoX5rm3pgiCKMyJxzn+LdBmR2EcC2c6AP5r8fvf96RL+npLFe8v7Jlo6auIZRJFtWByNPa7TKSelIbLpw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(136003)(39830400003)(396003)(346002)(366004)(9686003)(5660300002)(38100700002)(55016003)(86362001)(186003)(83380400001)(41300700001)(2906002)(38070700005)(33656002)(8936002)(508600001)(53546011)(64756008)(122000001)(26005)(8676002)(66946007)(66556008)(6506007)(316002)(110136005)(7696005)(52536014)(66446008)(66476007)(19627405001)(76116006)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?yxHpIXBIOZ2Dugk3xePEWiVH6bQFPq3uJ+a4fNbvq7LBKjtQC4Lcko2rJ9Ix?=
 =?us-ascii?Q?QtrIAAdk+XQnfJ3L21Cbj48lqub2XGzUs4O7gXC4Ft7YkkNjzW7dsAheMhpY?=
 =?us-ascii?Q?8SL6z2NKpJXHdGaWSvmTJy+hDWIzYPMd/YTMsnXvXqTXx3YljQ4pkltPMCEG?=
 =?us-ascii?Q?ThcBR691gVmX+IxLjiFHnA4kU9M56U6dADtzroIgCUSZ5RVCyY8VfD/OZpl+?=
 =?us-ascii?Q?t8MDDtSSV6ktGJstrbBRB2gyG+tdn1gmxNnoasA4MDhVo7+tUVV42Tp7dMEM?=
 =?us-ascii?Q?36zg5KTULj57zV460lSWCRNmdGfS37QPTXlwXKXuLuQEikyOEzQ9LoAcuqx9?=
 =?us-ascii?Q?ujuv6kMyPuClPUCXQuzJ7m9V1l1SZn2wGOEqqcDzcX0oecM7vQn+ne9pielg?=
 =?us-ascii?Q?FMlMrLQP76udiKKDDaeClcz+HiouqL6BLLrmrC60hMzHAKQ/VePzxUyo0bxK?=
 =?us-ascii?Q?4uKaWCcdRjddblHYLgP7ELapZnTz5jKd8iLM3C7u+V26wsD37v9o/G9WGhAe?=
 =?us-ascii?Q?bRaPm5BaHjCUPJUhJeBJX1nNr65HtXVngG1xS+PYeqmtawKaMYiewKFgfZwW?=
 =?us-ascii?Q?ztu4gIwvAaakfFYQpn84l8kLMqfwdfo5k/cGIxCTvHrhR0+RBQQBRKzCdFhf?=
 =?us-ascii?Q?HehFF2yQX0r64xRohUTldVb5U4DvKoaZ5XSFuZB5rDKOPi65I8QXkKW2I3vF?=
 =?us-ascii?Q?BtFdHL0/vzKbkCxe8RyZM98GBznt3+wNTBvrkERR39psnvrLXLCyuH2+RyWp?=
 =?us-ascii?Q?kh7wFWKGw+HIh78p4xrOk3GRqiza/ocBW5oVTrXg+Elnpth3jKCmGrCogbm4?=
 =?us-ascii?Q?iPSnAoB1MN9OuNscxvtiphj3FHMfW6CDmtNMFSauKwGfgRB8dlsj8BZpGT+B?=
 =?us-ascii?Q?xs6Dz24qItk7blI9jTiAgS6tbCdVwFEmNx0Gj4ajRD+Jil5fSWNkTOQNjpel?=
 =?us-ascii?Q?IDLHbQNnhjT/W6kHen/FhKTAsXSxazY33D4qKpfYB6evN7YR5pKVlILv4tWM?=
 =?us-ascii?Q?28j/5308yl6jGW17RYIs/xIeRBxO1+1MJLN59k0K43OmptLez41PQVQ5podc?=
 =?us-ascii?Q?BA4MnRZlV7FpDh6hblOGILuTOfG4CCO7Qbey8auDQE9LLuZk11EQD5/Kf+w4?=
 =?us-ascii?Q?mZxMffIiIMBNLAMme8aTU9rStRQWJL08yhKEwM0PaEs84zh2x7/ot7c4gY6T?=
 =?us-ascii?Q?ItO43lg6W2vy+GQDjJVa2No4L6XLlXIjty+dVDFf6iDFBnIASKI8U0PccWeT?=
 =?us-ascii?Q?18x69W3paWs3RBdkNVXWR1PqyrGimOZ/AJ8II8ivzI3cmLi/a38Iy6Q1kkfR?=
 =?us-ascii?Q?ooqloUgHPUq2Lnmk/PWEw6iq3vUj9DTfw9hKbyXD9C2PIvU7hRNAMiQzSnd/?=
 =?us-ascii?Q?5zdd2PhlxtFZS8BYY1hLH0mXI1TCHdFlujWDjd18tIESiLRDoSzj0LK22I4s?=
 =?us-ascii?Q?RdW4zQtcJUGkoWkBaVdWr5pAINcQpswZDKND4WLra1FFkETwP/p5ji7xnpSK?=
 =?us-ascii?Q?p6YUsdn6s4zhU3M/sY7idH558/MNXl3sKnlBrLmIMAcBOmfmor6xA4LL2LrW?=
 =?us-ascii?Q?So5jH/jQjg3UaEqca4X1eD1WE+6F9wIWa+206c3meLbSRzQqbeMq8a9XYJ0Y?=
 =?us-ascii?Q?soFePasWfEShF3ScX5GgGjUFPJQ/mBOF0lo1iTPjudsWXkq4yfFygB5RsYZn?=
 =?us-ascii?Q?2q9LcGoW2eWhTpaYjQ1SpZ2W1FDG570tW/6WXSdpx9YJhslJwNxG7CODRhqy?=
 =?us-ascii?Q?EetSvYi6dU8srd5GFcMz5c+HNvYpPKk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a2c3cd-2d97-408e-5ee5-08da3a4ffbc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 11:00:42.6630
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tcXWNHvsHVjHbgecMR74YNLNTjAqso3IqwvYh3cjtlMWEqgh5n2zrnOHGReM+zAaPWpxD9OUd06e5luVX/GwWTf5h+dG0dzOoyT4NhJmDh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4813
X-MDID: 1653044447-FknOpGTQQIUK
Message-ID-Hash: TUT63CN2ZKC6NJHOJTK3BIW4EBZKHUKA
X-Message-ID-Hash: TUT63CN2ZKC6NJHOJTK3BIW4EBZKHUKA
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZUTDKU7YLMCBAUP5WFDISQLCQWI2OQU4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8911812200011770547=="

--===============8911812200011770547==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33128BE0CE1FE723814651A2B8D39MN2PR12MB3312namp_"

--_000_MN2PR12MB33128BE0CE1FE723814651A2B8D39MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I believe I've figured out what is causing the TDC errors. I (or one of my =
coworkers) will created an "issue" in the UHD github repo, but I wanted to =
post some more info here if someone else runs into this.

I found that I could reproduce the TDC measurement errors at least somewhat=
 consistently with the following command:

while true; do uhd_usrp_probe --args=3D"force_reinit=3D1,master_clock_rate=
=3D200000000"; done

I don't think the master clock rate matters -- that is just what I selected=
, but the force_reinit forces the clocks to get setup each time. That was t=
he important part in reproducing the error. If I let this run while the UHD=
 4.1.0.4 or prior filesystem is installed on an N320, I have not been able =
to reproduce the TDC error ever. Using the filesystem from UHD 4.1.0.5-rc1 =
and later and running the above command results in ocassional TDC errors. T=
hey occur randomly, but if I leave it running, I'll usually see at least a =
few per hour. I tended to leave it running over night and I'd check for err=
ors the next morning.

It looks like the problem is related to a change made in the LMK04848 confi=
guration in MPM. In UHD commit d7ee3dcf4a7478a17a094a1be2cba37b98843963, it=
 looks like some register writes were changed to decrease PLL lock time. It=
 looks like these registers set the amount of time that the phase detector =
error must be within a certain window before Lock Detect is asserted. I'm g=
uessing that the reduction in time required to declare lock (number of cloc=
k cycles) might be too aggressive. It works most of the time, but not alway=
s.

Making the following edits to /usr/lib/python3.7/site-packages/usrp_mpm/dbo=
ard_manager/lmk_rh.py seems to fix the issue. Note that this file must be e=
dited on the N320.

Replace:
            (0x15B, 0xC7), # PLL1 PFD: negative slope for active filter / C=
P =3D 750 uA
            (0x15C, 0x0F), # PLL1 DLD Count [13:8]

With:
            (0x15B, 0x27), # PLL1 PFD: negative slope for active filter / C=
P =3D 750 uA
            (0x15C, 0x10), # PLL1 DLD Count [13:8]

This just undoes the change made in the commit mentioned above and requires=
 more time before the LMK04848 to declares lock. Maybe some value in betwee=
n would be a better choice, but I'm leaving it this way for now. I haven't =
seen any TDC errors so far.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Tuesday, May 10, 2022 2:02 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; USRP-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 TDC measurement errors

Just passing on that I updated an N320 to UHD 4.2.0.0 and ran into the TDC =
error pretty quickly. I now reverted that radio to 4.1.0.2 and have not see=
n that error "yet".

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Monday, May 9, 2022 1:08 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 TDC measurement errors

Thanks, Marcus. I cannot say with 100% certainty, but we had most radios on=
 UHD 4.1.0.2 before and nobody here remembers seeing those errors (ever) un=
til we updated all of them to 4.1.0.5. There have always been issues (accor=
ding to the others I talked to) with radios not starting properly with some=
 odd error or another that would magically go away with the next attempt. I=
t could be that some of those errors were related to this problem and were =
presented to the user differently, but I can't say for sure.  If I get a fr=
ee N320 at some point, I might try reverting it to 4.1.0.2 and keep an eye =
on its behavior.

Thanks
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Monday, May 9, 2022 12:04 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 TDC measurement errors

On 2022-05-09 11:32, Jim Palladino wrote:
Sorry to bring it up again, but this is really becoming an issue for us, in=
 that we can't seem to use our N320 radios reliably with this TDC measureme=
nt error issue. When the TDC error occurs, our program or even uhd_usrp_pro=
be immediately errors out and exits. If anyone has seen this or has any tho=
ughts on why this might be happening or how to fix it, that would be greatl=
y appreciated.

Thanks,
Jim
Jim:

I'm sorry this is happening to your N320s.   Can you confirm that it DOES N=
OT happen on previous releases?  I don't have an N320 here to test with.

I've rattled some internal Ettus/NI cages, but I cannot offer a concrete re=
sponse time.



________________________________
From: Jim Palladino <jim@gardettoengineering.com><mailto:jim@gardettoengine=
ering.com>
Sent: Monday, May 2, 2022 12:59 PM
To: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] N320 TDC measurement errors

Hello,

Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different radios maybe once a day or so. I've se=
en it when using either external time and clock sources or internal (doesn'=
t seem to matter which).

Here is an example of the output of a uhd_usrp_probe when this occurs.
----------------------
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[DEBUG] [MPMD] Claiming mboard 0
[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=
=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'. RP=
C address: 192.168.40.2
[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3DTrue,=
connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboard_1_p=
id=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,eeprom_=
version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.clean,=
fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_version=
=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D16962,p=
roduct=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40.2,s=
erial=3D31EDED4,type=3Dn3xx
[DEBUG] [MPMD] Found 8 motherboard sensors.
[DEBUG] [MPMD] Initializing mboard 0
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Check yo=
ur clock rates for incompatibilities.
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[ERROR] [RPC] TDC measurement out of expected range!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out of ex=
pected range!
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC me=
asurement out of expected range!
----------------------

If I run uhd_usrp_probe again immediately, it always seems to work fine. I =
don't think this is specific to any of the 3 valid master clock rates, but =
I've seen this happen after a fresh reboot of an N320 with a uhd_usrp_probe=
 -- so it should have been set to default parameters. I also feel like it h=
appens after a radio hasn't been in use for a while, but I'm not sure if th=
at is always the case.

Does anyone have any idea what might cause this?

Thanks,
Jim




_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



--_000_MN2PR12MB33128BE0CE1FE723814651A2B8D39MN2PR12MB3312namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I believe I've figured out what is causing the TDC errors. I (or one of my =
coworkers) will created an &quot;issue&quot; in the UHD github repo, but I =
wanted to post some more info here if someone else runs into this.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I found that I could reproduce the TDC measurement errors at least somewhat=
 consistently with the following command:<br>
<br>
while true; do uhd_usrp_probe --args=3D&quot;force_reinit=3D1,master_clock_=
rate=3D200000000&quot;; done<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I don't think the master clock rate matters -- that is just what I selected=
, but the force_reinit forces the clocks to get setup each time. That was t=
he important part in reproducing the error. If I let this run while the UHD=
 4.1.0.4 or prior filesystem is
 installed on an N320, I have not been able to reproduce the TDC error ever=
. Using the filesystem from UHD 4.1.0.5-rc1 and later and running the above=
 command results in ocassional TDC errors. They occur randomly, but if I le=
ave it running, I'll usually see
 at least a few per hour. I tended to leave it running over night and I'd c=
heck for errors the next morning.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It looks like the problem is related to a change made in the LMK04848 confi=
guration in MPM. In UHD commit&nbsp;d7ee3dcf4a7478a17a094a1be2cba37b9884396=
3, it looks like some register writes were changed to decrease PLL lock tim=
e. It looks like these registers set
 the amount of time that the phase detector error must be within a certain =
window before Lock Detect is asserted. I'm guessing that the reduction in t=
ime required to declare lock (number of clock cycles) might be too aggressi=
ve. It works most of the time, but
 not always.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Making the following edits to&nbsp;/usr/lib/python3.7/site-packages/usrp_mp=
m/dboard_manager/lmk_rh.py seems to fix the issue. Note that this file must=
 be edited on the N320.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Replace:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (0x15B, 0xC7), # PLL1 PFD: negati=
ve slope for active filter / CP =3D 750 uA<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (0x15C, 0x0F), # PLL1 DLD Count [=
13:8]<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
With:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (0x15B, 0x27), # PLL1 PFD: negati=
ve slope for active filter / CP =3D 750 uA<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (0x15C, 0x10), # PLL1 DLD Count [=
13:8]<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This just undoes the change made in the commit mentioned above and requires=
 more time before the LMK04848 to declares lock. Maybe some value in betwee=
n would be a better choice, but I'm leaving it this way for now. I haven't =
seen any TDC errors so far.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Tuesday, May 10, 2022 2:02 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; USRP-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Just passing on that I updated an N320 to UHD 4.2.0.0 and ran into the TDC =
error pretty quickly. I now reverted that radio to 4.1.0.2 and have not see=
n that error &quot;yet&quot;.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jim Palladino &lt;j=
im@gardettoengineering.com&gt;<br>
<b>Sent:</b> Monday, May 9, 2022 1:08 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks, Marcus. I cannot say with 100% certainty, but we had most radios on=
 UHD 4.1.0.2 before and nobody here remembers seeing those errors (ever) un=
til we updated all of them to 4.1.0.5. There have always been issues (accor=
ding&nbsp;to the others I talked to)
 with radios not starting properly with some odd error or another that woul=
d magically go away with the next attempt. It could be that some of those e=
rrors were related to this problem and were presented to the user different=
ly, but I can't say for sure.&nbsp; If
 I get a free N320 at some point, I might try reverting it to 4.1.0.2 and k=
eep an eye on its behavior.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &=
lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, May 9, 2022 12:04 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_x_x_moz-cite-prefix">On 2022-05-09 11:32, Jim Palladino wro=
te:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Sorry to bring it up again, but this is really becoming an issue for us, in=
 that we can't seem to use our N320 radios reliably with this TDC measureme=
nt error issue. When the TDC error occurs, our program or even uhd_usrp_pro=
be immediately errors out and exits.
 If anyone has seen this or has any thoughts on why this might be happening=
 or how to fix it, that would&nbsp;be&nbsp;greatly appreciated.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
</blockquote>
Jim:<br>
<br>
I'm sorry this is happening to your N320s.&nbsp;&nbsp; Can you confirm that=
 it DOES NOT happen on previous releases?&nbsp; I don't have an N320 here t=
o test with.<br>
<br>
I've rattled some internal Ettus/NI cages, but I cannot offer a concrete re=
sponse time.<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-ser=
if" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jim Palladino
<a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:jim@gardettoenginee=
ring.com">
&lt;jim@gardettoengineering.com&gt;</a><br>
<b>Sent:</b> Monday, May 2, 2022 12:59 PM<br>
<b>To:</b> <a class=3D"x_x_x_moz-txt-link-abbreviated" href=3D"mailto:USRP-=
users@lists.ettus.com">
USRP-users@lists.ettus.com</a> <a class=3D"x_x_x_moz-txt-link-rfc2396E" hre=
f=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hello,</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different
 radios maybe once a day or so. I've seen it when using either external tim=
e and clock sources or internal (doesn't seem to matter which).</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Here is an example of the output of a uhd_usrp_probe when this occurs.</div=
>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
----------------------</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[DEBUG] [MPMD] Claiming mboard 0</div>
<div>[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,prod=
uct=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'.=
 RPC address: 192.168.40.2</div>
<div>[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3D=
True,connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboar=
d_1_pid=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,ee=
prom_version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.c=
lean,fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_ver=
sion=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D169=
62,product=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40=
.2,serial=3D31EDED4,type=3Dn3xx</div>
<div>[DEBUG] [MPMD] Found 8 motherboard sensors.</div>
<div>[DEBUG] [MPMD] Initializing mboard 0</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Che=
ck your clock rates for incompatibilities.</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [RPC] TDC measurement out of expected range!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out =
of expected range!</div>
</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span>Error: RuntimeError: Error during RPC call to `init'. Error message: =
TDC measurement out of expected range!</span><br>
</div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">----------------------</span><br>
</span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">If I run uhd_usrp_probe again immediately, it always seems to work f=
ine. I don't think this is specific to any of the 3 valid master clock rate=
s, but I've seen this happen after
 a fresh reboot of an N320 with a uhd_usrp_probe -- so it should have been =
set to default parameters. I also feel like it happens after a radio hasn't=
 been in use for a while, but I'm not sure if that is always the case.&nbsp=
;</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><span style=3D"background-color:rgb(255,255,255); display:inline!imp=
ortant">Does anyone have any idea what might cause this?</span><br>
</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Thanks,</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Jim</span></span></div>
<div class=3D"x_x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
</div>
<br>
<fieldset class=3D"x_x_x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_x_x_moz-quote-pre">________________________________________=
_______
USRP-users mailing list -- <a class=3D"x_x_x_moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_x_x_moz-txt-link-abbreviated"=
 href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.et=
tus.com</a>
</pre>
</blockquote>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33128BE0CE1FE723814651A2B8D39MN2PR12MB3312namp_--

--===============8911812200011770547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8911812200011770547==--
