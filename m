Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A70A13C7793
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 21:59:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D1703845FF
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 15:59:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=lunet.onmicrosoft.com header.i=@lunet.onmicrosoft.com header.b="EKeiVZlL";
	dkim-atps=neutral
Received: from mta-2.lboro.ac.uk (mta-2.lut.ac.uk [158.125.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id BAAE5384228
	for <usrp-users@lists.ettus.com>; Tue, 13 Jul 2021 15:58:07 -0400 (EDT)
Received: from itsex-1.lboro.ac.uk ([158.125.160.16] helo=itsex-1.lunet.lboro.ac.uk)
	by mta-2.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1m3OXY-0002el-D0; Tue, 13 Jul 2021 20:58:05 +0100
Received: from itsex-4.lunet.lboro.ac.uk (2001:630:301:d314::160:15) by
 itsex-1.lunet.lboro.ac.uk (2001:630:301:d314::160:16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.10; Tue, 13 Jul 2021 20:57:57 +0100
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e1e::205) by itsex-4.lunet.lboro.ac.uk
 (2001:630:301:d314::160:15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.10 via
 Frontend Transport; Tue, 13 Jul 2021 20:57:57 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQBJBqelTWtu5Ngb0ykrH772bv3lQ0wK7Wpbyqm0IazdmPM6vho0tX6loanlL4e3trjWb6PHkH5kt8tZnKQ+xrvzj6Vs0BJdVou80w+lL33Tv/XHo/g2GefYKrrPt/NLcGe8WiL/1IMNXjlv1sj30tV9FHUh57Zwu+S9IrWfTZvVJKEw1f1iOQB9OsTetP8w9OhOvdfngbW93oO3RJuj5zT4Hj+dbcovY9Mpf9zREMcXYLmNPVP/bZXIkvbRvyKsSmICuWzioE3N1yHzU1WeXH2zI6sby365gQfeQZsFWA+FLxMpWor6P5yK/WZtqcZHMWfZPTDoVYOghe9TS4t+Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=97IQmsngm8BLLrixmk6+56wj2zZO8sy2sUX7vuu/9F0=;
 b=Z7ZPR7sU/4x+c4oSUkOAaxDpPdq9/5Jj2Xvn7GfyhPS0j5aIk/5RSd8xV6NnlYNcAHN74GvwEj5BFpuprJKp5UUYEQzv7M0FontTYMZ/wRhFLyIna0VV3FJHY6PUYrvSYjkwMcApARHNs4VzAjP+uwuq15FZ7tljT2aMUgwZAYIMB9XdrtwZsHurEmHrzBCicPiw0Ki4/WB1/ypF6GO1UjV3lee9sfDJNekJXf5GeZenl5VcVqcUKw4ufA8RdsGN+KgVnh4aXS+Vvs0kQ6qEFPW8xtiHCDUWXn6AItA0vBPsCPOSOnrU4gpdrMHuzG4pr74D1Cwod0kMC4dBnN7Qdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lboro.ac.uk; dmarc=pass action=none header.from=lboro.ac.uk;
 dkim=pass header.d=lboro.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lunet.onmicrosoft.com;
 s=selector2-lunet-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=97IQmsngm8BLLrixmk6+56wj2zZO8sy2sUX7vuu/9F0=;
 b=EKeiVZlL7P0Bq7k2PhDslmipzsaSq5hpDcejLnGVFF4ZwvF1qmu7c/4OAJS4n+0+3fHV9NrU3Nyu5DShoRYyOzEPckYWudX5Lv6wyUD7ilRVYZGVly2nkn2wvdSOF/jagKmxGHS4KqqEIn+6dqtIemfDIe5kCUNuzYt0z1/K7r4=
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by VI1PR04MB6224.eurprd04.prod.outlook.com (2603:10a6:803:100::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Tue, 13 Jul
 2021 19:57:50 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::70d1:64f6:b14b:19b0]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::70d1:64f6:b14b:19b0%7]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 19:57:50 +0000
From: Ming You <M.You@lboro.ac.uk>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] Regarding RFNoC FIR Filter block
Thread-Index: AQHXdES3QyYW9SuZxE6wa57cQlSgmqs/oaGAgAGIAjA=
Date: Tue, 13 Jul 2021 19:57:50 +0000
Message-ID: <VE1PR04MB6653226B36C4080A243D6696BA149@VE1PR04MB6653.eurprd04.prod.outlook.com>
References: <VE1PR04MB6653DA41666B704DD2D9DC30BA199@VE1PR04MB6653.eurprd04.prod.outlook.com>,<CAFche=jYZ6DUGd2hX3GXNmvetJ8Ji-BZyN7VBbKuQVsejE9QJQ@mail.gmail.com>
In-Reply-To: <CAFche=jYZ6DUGd2hX3GXNmvetJ8Ji-BZyN7VBbKuQVsejE9QJQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c29891a5-47fc-47ec-9a78-08d946387ea6
x-ms-traffictypediagnostic: VI1PR04MB6224:
x-microsoft-antispam-prvs: <VI1PR04MB6224184248A78859D7E0A5E9BA149@VI1PR04MB6224.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kb60koc7sQe7ZeFAMAhmMPE0zgn0+N6QWJo9DPhdYPZ7g9t7Wx+jOIgSzUWeJItDiv7fFfSZZa2aAJRtckeJYdAWu+ohBnxujB29fvvxPnm+GGe2Gc372j2+B+7zB7p6jLCgPIxVlsTkYzMGWXl51gxW+lDerJSPteo7rqt3EIiJobnoWGTAKFAFvNpa8kusamWAK4wSERKg2Pqp8YEGxJpmy4+mf2OeLe4K7Y4382ySYaZgrul0bMFCLpCfDMaBNsG9PaNXKscqX4IHrtF+/TZtWmoAkJJgRE7/K3lgJ3mc6Wdg7VUACrIR0EDdArB3+D33a4viRzED4wn2r1kyDNBBdmUlNwd80tohpVdcIr4Whvg0Iwu2qgC/V5+BocHnWZftgIeLC8ht049AjjhgNksy8+wSTJmjA+Kqo5UdoKtlfpAFzA1tcjAdnX9ECSierBB5Z7B6IAbbhwsVKNeFE+NIVjc8I620JvS8p8aotuwLu+nh0JWO8xrm3+nKvuVKX3KiAoAp8hKRQg6ygDH7ktmZ/mNnGa6pakJx6LKzNCuD54gJXTXu7xLhGSVMkbAIgTjaaGxqrHZ5B/D7UFOQ1TjSMCi6XAntPmEOSg4woVsN8EBQCQJ1ZBvPmf6I3ANQwb9Cft5Si+w4XeADw1O28Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(396003)(39840400004)(136003)(346002)(376002)(5660300002)(8676002)(4326008)(55016002)(9686003)(33656002)(186003)(71200400001)(66476007)(122000001)(83380400001)(2906002)(86362001)(8936002)(66556008)(64756008)(53546011)(6506007)(91956017)(66446008)(478600001)(66946007)(76116006)(52536014)(786003)(6916009)(7696005)(38100700002)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K+BTzgA3lETwy1cM5OydTbIczH74Bx9HKbIRv5ITDOuC2vrg6WnSTnconUPg?=
 =?us-ascii?Q?8NSy8mblBELKqBNtwjgI8CUxwPiYANe8j/ik3Se2u1njF/U1LHYkm5wbYzBo?=
 =?us-ascii?Q?lU8vNg3DyYXKjaK21PBtNCnS1Y2wJ9alSbY+y0MfNGjeQ0rMBva24CYnfeLK?=
 =?us-ascii?Q?q9Mba+ShfRYTRu7kYSY9XLaBupzs/7lq9F9fWlUquc9w505tdlNPonqWhT96?=
 =?us-ascii?Q?MSga88tuIsV8WsWnOhAOJukul2cph+qK0Zn08eyiqQeZZho4B0112DredD76?=
 =?us-ascii?Q?Lqxz8nKGf/UyvcCmVw0hcxEcIixJrm9KgP539XT7c0FIpmdYH3jdO/JU0mXd?=
 =?us-ascii?Q?5Xdo0e/ZHkcpxS7oZ9Iw6tHdenVCZA+cX3rpLZfBmigZjYDHwTEKOynYiu0q?=
 =?us-ascii?Q?ShpAv2Taakz/6rVf0NVBzVynQvz09dRnCxoElO+McK8vAuRWq8y4xKja7RPX?=
 =?us-ascii?Q?8FEXAIkUQVmzW3aMtpIqI4dfJQ3ZcKRMy0l95cHepkPrXEzaMZNB7aa5JXda?=
 =?us-ascii?Q?B4XA5nMvg5S2iSXZGk0RqvWm/E9RqUAvATv7hq1+A7366l77T/kJefk985f6?=
 =?us-ascii?Q?YTkP3/iEemovQdANmzuR3FIyMfrxT2yd2hrXhxMavmFWhIFqMhLy6GxyVrKo?=
 =?us-ascii?Q?rs9IWdemjOAie9dPIGJ1fjAHQdoZ/ywKoDM2PBbxGS91tdYRYsTyEGdKV44p?=
 =?us-ascii?Q?eOkFZEKsSyz4Gz3w7qoJE8q1baj/fwoq+WJWWf1XdPKVT08ZzoPSXmY9hVpE?=
 =?us-ascii?Q?m0deB7ZlrlKKKth0UV31FlhTD4h0t5oX0z+ziinZ0bAwS/urzPOAyq4oHwD7?=
 =?us-ascii?Q?3xL2IG+7WgH53EvFREaeSXcXaWm4TVFyZjNaZ9OpvbUEJuyn65jRwub2R9cN?=
 =?us-ascii?Q?HjFJGWNTt4udAgCCxRjteLPZxC2qEQdDwte23qDfjxJrbgzNSavhpdHZYj+C?=
 =?us-ascii?Q?cnno39qnwuQjno4uj3+oBWbjFO/aBc9vQ8DzEubgSiBJtYGtCX87DDE6nQkv?=
 =?us-ascii?Q?Kq70mrVAKK+FgRbuBQZDjyPvpxhWmMSPMvV8CQObvTtxZ8JVKerPnINe3Bqr?=
 =?us-ascii?Q?8RUJrnEeIwpJbxhAZY2XOCToSAqJyPKbGjdwfS0PSgvIlY6rMZygI5V0gt1z?=
 =?us-ascii?Q?EHSHcswl4mb7oyblCiMAxnGn1fY1QELshd5FN1XluyDZxE8qAHQoDZ6C+ZUa?=
 =?us-ascii?Q?11Q2w/erbnj4OF/Idv2hW0xteVQnq0Y205uKGRzN2Zz0gYTmdXzt9gcD/0Kg?=
 =?us-ascii?Q?FkFVO/xPecY7nPxtd+PGCcqJuGkR7tkiqNzcJfoaatnIUwcqZpHRmUi5o7gv?=
 =?us-ascii?Q?0PvFW7IYYF/VsZVWb1gz5P/KiQ4MyS0Qp/OEjF9ME7WQ3Q=3D=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c29891a5-47fc-47ec-9a78-08d946387ea6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2021 19:57:50.6036
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Xun0oMea3JfvN1YLzneG0eYP0czhmBsiugF+JVlN4uUhQ9HZn+lW1aZY9DUQfUcLeaHjaBsBwdRVlwTgvUl2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6224
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: f4558957a20c2001bf4d8755976cf276
X-Lboro-Creds: scanned on mta-2.lboro.ac.uk
Message-ID-Hash: C3L43MIRXR5FABWESG7QFTJ6ELSUINJ4
X-Message-ID-Hash: C3L43MIRXR5FABWESG7QFTJ6ELSUINJ4
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding RFNoC FIR Filter block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C3L43MIRXR5FABWESG7QFTJ6ELSUINJ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi Wade,

Thank you for the reply. That was also the parameter set I was using, and I think the problem might be due to the Vivado simulator. For static parameters in the rfnoc-FIR, coeffs are generated as registers, and Vivado will produce unexpected results unless these registers are properly initialized. By adding initialization codes for these coeffs, the static parameters are working as expected.

As you've got no problem with the simulation, is this unique to Vivado only (e.g., needing extra config.?)?

Thanks,
Ming

________________________________________
From: Wade Fife <wade.fife@ettus.com>
Sent: 12 July 2021 18:41
To: Ming You
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Regarding RFNoC FIR Filter block

Hi Ming,

For static coefficients, try setting RELOADABLE_COEFFS = 0 and USE_EMBEDDED_REGS_COEFFS = 0. I did a quick simulation and it seemed to work, but I didn't spend much time checking it. Make sure you also set NUM_COEFFS and COEFFS_VEC correctly where the rfnoc_block_fir_filter is instantiated. The testbench has examples of how to do this.

Thanks,

Wade

On Thu, Jul 8, 2021 at 5:42 PM Ming You <M.You@lboro.ac.uk<mailto:M.You@lboro.ac.uk>> wrote:
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
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usrp-users-leave@lists.ettus.com>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
