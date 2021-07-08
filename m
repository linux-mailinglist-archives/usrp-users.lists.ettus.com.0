Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9953C1B94
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 00:42:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 652B93814DF
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 18:42:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=lunet.onmicrosoft.com header.i=@lunet.onmicrosoft.com header.b="clBYvLfc";
	dkim-atps=neutral
Received: from mta-2.lboro.ac.uk (mta-2.lut.ac.uk [158.125.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D6740383E87
	for <usrp-users@lists.ettus.com>; Thu,  8 Jul 2021 18:42:02 -0400 (EDT)
Received: from itsex-2.lboro.ac.uk ([158.125.160.17] helo=itsex-2.lunet.lboro.ac.uk)
	by mta-2.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1m1ci3-000138-5B
	for usrp-users@lists.ettus.com; Thu, 08 Jul 2021 23:41:35 +0100
Received: from itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) by
 itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.10; Thu, 8 Jul 2021 23:41:33 +0100
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e1a::209) by itsex-2.lunet.lboro.ac.uk
 (2001:630:301:d314::160:17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.10 via
 Frontend Transport; Thu, 8 Jul 2021 23:41:33 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwbMcAJXGCoagnQrQWw7X3/3PXbRkBoKTdeqTJh+YFwaCGMw9dIrLe8Vtyl4t1vOQvFYLqEYNEW54hfiBmUPBjYtYuY5ofovbjVKqhuT2bHuItFQFUxM4qM/gViIudK0SG6pKSnAzyjJGcVSFg1u72b5XzwLXXmxRee8jOfzF0qk7je+SxbpvJDQCN3Y2D4IBebxdAIHpP4iQ99tzqlTtocGRqtASnVhhU5dU6e47xM+hcHoMGVnG4r6kupZg6O5Si4ErvsMh8xdPvzO3dHV4vzQL8NKWXkxsndoL1xMIdUjq8ne5lX1UaeWft+ZV+DqO9q4QWRR79MflZj5xsWTCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPINfyxPnKHlW8XAqVv27ezgdOm5pnwEdD+Est/yl8U=;
 b=Vw5i7zBKrijcuZa/rS2LD9hDx4WA9W53JymnKMzFgdl9iv1L892YvLVMbGPHX5p4oQT+/htWOuRsLSSEbDboAlKpEEYUgMrmqmiqPd+mz1vfxZaPPnzk+KQ/g7nFXgdMXG1qrSb+jdGN2bQQNx8dh3Odjwx1AXLOUYag2/zs39v+aPykdZKMR+ffXrR+KZRktdhYga8Du4cvjnEVDbvqYfb4SHWDb87TwbV/fUNOrO+zxobkAWZe8be0OtQqKuIn286TFexHz8SVcZJXIX9B1Leo0L5qsQqN3w7tkSDmAIBzoBrRD+Tz++S+HZT6ExYNceeAoZSlymGbrkkqiujTPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lboro.ac.uk; dmarc=pass action=none header.from=lboro.ac.uk;
 dkim=pass header.d=lboro.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lunet.onmicrosoft.com;
 s=selector2-lunet-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPINfyxPnKHlW8XAqVv27ezgdOm5pnwEdD+Est/yl8U=;
 b=clBYvLfcRtWnWy0Mde2at497+4uUqZSy6Uj48nCZCGx/XljA98/WaQJxUoNhLf8rwagQGCDCwEjvp12a1MISwA9ZZ5WO0qNCY9tLjx713gBLgQqqB9nRk6GQNIXfqqQR1ifKyormDohPa5wkxfqrag3W+51/JUXa4QUDk2qjP+s=
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by VI1PR0402MB3757.eurprd04.prod.outlook.com (2603:10a6:803:18::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21; Thu, 8 Jul
 2021 22:41:31 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::70d1:64f6:b14b:19b0]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::70d1:64f6:b14b:19b0%7]) with mapi id 15.20.4287.035; Thu, 8 Jul 2021
 22:41:31 +0000
From: Ming You <M.You@lboro.ac.uk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Regarding RFNoC FIR Filter block
Thread-Index: AQHXdES3QyYW9SuZxE6wa57cQlSgmg==
Date: Thu, 8 Jul 2021 22:41:31 +0000
Message-ID: <VE1PR04MB6653DA41666B704DD2D9DC30BA199@VE1PR04MB6653.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 958d2962-5b42-4631-7a70-08d94261880f
x-ms-traffictypediagnostic: VI1PR0402MB3757:
x-microsoft-antispam-prvs: <VI1PR0402MB3757B78744A48D2CCC85DE12BA199@VI1PR0402MB3757.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fjrlIs1DW5ijREy3oPCNFxtQRHed890pZ3k5zDYSMTURsPDqqO6/oq3rwtCSnUZy7ianITVPDuFhl02RIz2iG5vCKXF4NdplQ78e4Ik6qAkKWHwK1bnScbFUg5jSGdtJWQeuDvGYSmRoD4P0Rj4kHrkqo91kFNPk/aU+0HQ9Th8Udh2BjmBVmgbG62simmWuRn7SiZV/7ycgXbKsEVbPOZe2hUqm0BXtEuNE+8PD6W8DgT1c5+8HxSAIufQT/jU81RMER9CtKAe1pZTo3iZ9irhNVD8zIxSODwbUj85v7JJ3EIUjZC0mTGd583BoDCtw9NFDybyzuhmNVtpNkdNi5CWxXGuMOMEJLgIu4HOSxEHo043X48NH23+zcJYZJqkIaykuNiZyMuwNJRoox2f4eVOXXI0DYBXc+hjshwzh//meakb8Y+kontq8nXQwEbAYs4HHQKVlYCFdvOrtgKq7OjyshcvHc16Ej2lHesnL3zNhLjTuL+AMKFKbdjGBiZQBMa8tXu+DGzNBl6Tnyd7aEWGyahNG0BXncKKMMkSwUzv8NjFHvq68BA/wZBeOMWPv2RBn8k8b02i42KZ1Q9Ulmbjx4rDWdaVP0d0T0R6Nx3FJ8486XFwvoZkzkGrpSxJb2yDNcYY9bOIfeKfBLa/MZg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39840400004)(136003)(346002)(376002)(396003)(66946007)(91956017)(83380400001)(66556008)(8936002)(66446008)(316002)(38100700002)(5660300002)(52536014)(478600001)(786003)(6916009)(122000001)(76116006)(64756008)(66476007)(55016002)(7696005)(55236004)(186003)(8676002)(9686003)(26005)(6506007)(2906002)(86362001)(33656002)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Q00UOae0kwzwCtAxi/jQV45fgY0TQtehhEpkRoFdb5MuUPmcOYGjhA9J/N?=
 =?iso-8859-1?Q?MwMJwsvw8r8P8EvfG4hMf5YsU4clmAG1PYFQJB90a17kheqHPWuBQdxT1I?=
 =?iso-8859-1?Q?3+tfYrZNbLsnBSzrVdUJDfzP+haliPFT4izIWSX5p2uADUwbZO/Udzx/Ey?=
 =?iso-8859-1?Q?vJFZ7pCj9wjEJ4h8/XYqDZXRT3ctztmh4e8RVLs7qAxvsjxcqcBoZMWAHB?=
 =?iso-8859-1?Q?Cservkgn4lK3HsfnCrYTi0B4XX8ooNQjUcRjF0X0MXfluMADSS1lZ+55Em?=
 =?iso-8859-1?Q?RYAgBlI3ehjt5Lyl8OnTcf7yOjPSAvYmQu/zNU1EkpPMqXdsM6OwYai1yY?=
 =?iso-8859-1?Q?G8JhOO1URUYut4+zFRGtt4C2yp4LABWGlJfbYflw2jxQYUgCXKq0katfDW?=
 =?iso-8859-1?Q?K8eVNTvi7pRWroCf6VaIu4Jl8u2Qo13uE1MUAYWlxUlfjbmGkf2GgWRfMg?=
 =?iso-8859-1?Q?34B9UDalz7TUBA/Hghs7TrtEx6fWNEEeLlZ4RGAyZ4GR9QHCWJnoCtgC6J?=
 =?iso-8859-1?Q?kYCUs8MyXPiN4bS3A142QjPLngkcS4z4X7Qll3dZe/qoHlholXgtmyBgoZ?=
 =?iso-8859-1?Q?o5NFluYYhQlazUykW405OKKSkUEJqgm3VHUQe0Fp+DvCSt4P7Q4OpAiZsP?=
 =?iso-8859-1?Q?yb/CInGHtBGlEm9R6AZ1fFAURprfmjAx8zJDRwdyxbcbM7weYxLXN7ntQj?=
 =?iso-8859-1?Q?WjsddB1sko+49Q0uuPsQ/kTMWoBLRVGgmQZDpYf8KWR3FlDPe35+QiMxfs?=
 =?iso-8859-1?Q?IviUg4S5BwTiDAqEdAOh/I62AGbTMCmeFjTjLx54th3CKndjpGS3Xh+zff?=
 =?iso-8859-1?Q?b8HHk/htm+UQKXw2gZ6SM8TEkdB+wCTyxjWeLe8+mAt2P5QeNEbbYHMo1X?=
 =?iso-8859-1?Q?uGmyAg307I32jjRQzp00T4vfWRIx5VUawjnSxK1BI0rYaiiP4L+wdLdYMW?=
 =?iso-8859-1?Q?KB3LDqBp4YEvGlKwAePrPq/UKrNUPGTaIvjMJdrNfs0dm2PHrCzg0smf+G?=
 =?iso-8859-1?Q?smxd9EgXzH+N0BFevHDXIhDWvTNBIREz0fmDgkILbeXuiQcc6EOZ/RvDf4?=
 =?iso-8859-1?Q?NJ6vwdvPOFFKL4coNvnwn2Q05/PflM9sIoS6Q2moJ+AO7HrQ/Jynm1zByi?=
 =?iso-8859-1?Q?VETVMak/osuIdofRV1aC6vTvIqjp491IH+kY8SLUNwAC0RGd6xUsIgVRUr?=
 =?iso-8859-1?Q?Y/oq9aDNTXms+9eSc8YQaHKl24A2Swdz7xy3kaPIcQSVBmasVeDjW0sa1A?=
 =?iso-8859-1?Q?EdW0tz+06SPeYs7JsxfsvM0jEiPa/3BSLtuvqU2eBIN3iRpADWsbkagUvg?=
 =?iso-8859-1?Q?RAUufIT1t4F06rmSjFMgp16I3F5BT2VdxH3J1hACAKGY2F4=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 958d2962-5b42-4631-7a70-08d94261880f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2021 22:41:31.0373
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rjBUDZ6dtJrsWBJjLe2PvuQkN1TN7nq21Qs1DnrV+/AZpSuqaPcgVFnGsUVdKkf285Afi8sZIZkU4P5NRZzSGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3757
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: 195dab84dd009241acb5fef2f7581d41
X-Lboro-Creds: scanned on mta-2.lboro.ac.uk
Message-ID-Hash: EVTP2UX3H4HZVCEZ76K2TWWSQIPLYA5Z
X-Message-ID-Hash: EVTP2UX3H4HZVCEZ76K2TWWSQIPLYA5Z
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Regarding RFNoC FIR Filter block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EVTP2UX3H4HZVCEZ76K2TWWSQIPLYA5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear ALL,

I am trying to modify the RFNoC fir filter block to a static coeffs. fir, and I've managed to use the Vivado simulator to monitor the simulation waveforms generated by the testbench code. 

Strange things to me are that:

1. When enabling the reloadable feature (i.e., RELOADABLE_COEFFS =1), and enabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=1), everything will work alright and the outputs are expected.
2. When enabling the reloadable feature (i.e., RELOADABLE_COEFFS =1), and disabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=0), there are some outputs but not expected.
3. When disabling the reloadable feature (i.e., RELOADABLE_COEFFS =0), and disabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=0), there are outputs but the outputs are simply XXXX.

Can anyone tell me how to correctly configure the rfnoc_block_fir_filter or its sub-modules, so that it can work with static coeffs.? Or this rfnoc block is intended to work only under reloadable+embedded setup, while the static coeff. was initially ok to use but later not maintained? 

Thank you for your time and kind help in advance!

Ming
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
