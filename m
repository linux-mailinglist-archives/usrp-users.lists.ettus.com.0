Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BC5456BA
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 23:50:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85830384991
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 17:50:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654811404; bh=knaHMqPQu6ZOLYOZJEw/ZSnd6frDU+Cu+8tYdLTvquc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=K7PH9mIVKZrM6NpFaIkDh5NAs4Ht9KxLafg8ymtesUIn+xp0XtoKqhOxzpl1EZ1z3
	 /jX8WkNKOcXVAZ0pvSZJwsA1vzwXikm3sngcmH/a0SA8PeUlNZ+kN/ChHZClHyyudr
	 VlZ8hPvPyuFy5jZuktZQa2nOF+Wg1AqLoNA8JqiMXyRMkNCCk2VSttTiihZe2rsEai
	 BG9Lrj9ryWAEkS9JzoLOxJLf7H6ERtajCmo7ES13NYzZBzBmTjnMCleBcVn9zwiCVn
	 C4VQwR49RUYCus1aoHsBRkdWHxw3eKNAYyu2ldAS6DaExD+krvsFcEg1i6X9hFn/Tq
	 NhLRNFWEG32PQ==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2054.outbound.protection.outlook.com [40.107.223.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D6AE38498D
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 17:48:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="8abayU+V";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUT77eDvPVk7DEh+RoeRa/NXq2E3dDk64meSg6w5S7DYqWEl3yQULOlfczg41Uq/XTSWo0gLr/o1cfINxesLpLyr96WWAwVNSkpykFBS+u/VRMSB8i/StD644YlHb780JMV8CEY2Y4TYMiBTxtgZQjrzyURl9YLf9Zd7IOBrufdR6W5Gj4c4DG5z9pNB5PIdNRxAh7GIuTVKROVQY6/MctE5pwCQBgQauv3fFVUI5p927Ht6NtawG7N7bI/8htpufGqf39QKTU5OUcGB8hjgWe56NyI1NKOFka5RuQ7UE49WuzBClDyxlEBdKeqJntG+zuN2pQG40Bh2L7YaX01tJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4eNkVxByAYGdKZglQ45VVOOtihLQNASrrq5/08qszA=;
 b=g051E8k0R1I1zY4B8d8ptfnASF9mJRI+npJKQsEsqZ/p5szAv1kOzcwuV1lrbzQRBpdXF+ZPqnJqWY1JWFk7jljoLIidBs/CikDycbCDZsunM6tswOnS3h2xlKXVmvRdCalQ/fpqXUJqNV/vXjKHj22WY74Pyy7fzcVLUbs+eKOk/l4vRaSmNP222DXkwxn8JD4MABIkj9fZOJ54pA3eX/qLEpYPz6aiXrGwEVJpEs8dY0vYOKsxRw8VO98mKhR1jgXkABBZhzwJnKFrV/UtDecsMIjJl2hezT4qmo64JuojV76XpRcW4M9D+0lqFx3aHSUjXNKjGEV8chqLYMjZhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4eNkVxByAYGdKZglQ45VVOOtihLQNASrrq5/08qszA=;
 b=8abayU+Vb/D1Wkc8bsvjgiQ8lP2dYjGNvNRIVTynn52w9eNAKDGZ1hW75kW8OkClSEP4EwLy1ahHjHrJquURNiOUIVbQxy1x0BIyhMgVFPgQdl2TLl91nfWrCoywsav037HhZmZYxn5cpXMpW2VoGhC1LmTfz5kpxoijpZeg6D3Tlp6gRicR4KKJaHALm+KmNlvGGAxdg/UptWe9sHis8IsuKVq+kF54RlIV0blwapjOl+lA3wp4XP4mrRC+GG5zYww05PSNpkNTMxYu+roUQegNi46ywIQIh9W67lUbw1pC8Dq/K5rIZ4DP64z1JKODRKLhi8wBMamOUuqIwBvQIw==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by SJ0PR03MB6962.namprd03.prod.outlook.com (2603:10b6:a03:430::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.18; Thu, 9 Jun
 2022 21:48:48 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::d404:f044:80f3:551a]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::d404:f044:80f3:551a%7]) with mapi id 15.20.5314.020; Thu, 9 Jun 2022
 21:48:48 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N321 GPIO
Thread-Index: AQHYfEjDI/svE97tTUmEW4HMUU7KXg==
Date: Thu, 9 Jun 2022 21:48:48 +0000
Message-ID: 
 <BYAPR03MB4678FD7625EC090FBDA33CB4D3A79@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6b5094b-3aaf-4f84-4f3e-08da4a61d598
x-ms-traffictypediagnostic: SJ0PR03MB6962:EE_
x-microsoft-antispam-prvs: 
 <SJ0PR03MB6962CF66BA54342B03A9D124D3A79@SJ0PR03MB6962.namprd03.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XBQXs10nwgfMKGFEwLU8ZCznwQbNP/VO7F1EVHpyDNgXHtV2PUi/3LT5cfJPHP2j/iCfH4jihDZ8jhBzXdwQahQBsIHzszOfAZAOH6CtYZy5sOR/5I7WjeN8u4ajReOw9zxDrbu4/4vSfhCzntPSxBO1C0ZAU62S2QnLruLjU9OeTYBBmnMA+fkJUKKiarjOYuPzVwM1dzos1+n9TB7wRCngwhcwYF2yTwhFAna1rNkZU3gAU6+w89bhWMgFpOrK7guuxMB3IgBrVg13oUuNFmj5s9G16xYv9UVC0oPBANsFNkH59RZKhSR0g0HSevj2F+WXw8TNjhFgiR+nFN/Wqzjl3/pOCGQPfn2FAjHwSSocsToTO9EEa+sJkoY89oXSUPySdXqoATximsMGEYH41Iiifv1YD9Pjv9Ex76heE5XBUnojDlRQLfXhWuDVg0o5hrQZWrTUFn6VGaLvGnsBcjY9YQmhwokufYb6MRHk7NckvEzqQKjx8QGfH6CKSxCfcosVRdjxn2cuCVl84PBYiSdFeX5BuLsniVgwNjwwqzKVaBD9/U90M1eTpPNtkrgnWFrHJ0ibN6uNbb2aRd9mcEgckvfSYYe4IvtYZPYGVj6iyLHT9HKEGdQy4EWGUsf69hBoSV4jhSUvg1oCs8tar00hx9uth2bgbF2tJH3W/Tj4CkuOXt9SnLCLY9k7W0zWOrCKmJPlVfnFOykQ0zcMQg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(55016003)(19627405001)(5660300002)(66476007)(26005)(508600001)(186003)(75432002)(8936002)(66446008)(7696005)(6506007)(6916009)(38070700005)(71200400001)(86362001)(9686003)(316002)(122000001)(786003)(66946007)(66556008)(8676002)(76116006)(64756008)(38100700002)(52536014)(2906002)(33656002)(91956017)(83380400001)(7116003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?mpZHvlQ1PbjR0+6EwG02meuTB5uw2jkNNhRNtrSHttWrc+Fs2PlaYhWc3L?=
 =?iso-8859-1?Q?DyUGaOtKqo92Im3zRiNJkWSJ5ZGK1YZqZR6Taa9dlqEoPGbvUdKwIfXRRx?=
 =?iso-8859-1?Q?Ktls50m6ozobpyXegByz6hz0gHuDElo1ruMRJXO2+r8dPNgNzV/A7Wp1bn?=
 =?iso-8859-1?Q?N86qjMSHgBcRUZEzYIggJGvDoaWpwDLAkf+sy+2kmVFajGSghoNV+mU5Bu?=
 =?iso-8859-1?Q?a3IgJ46mYucY8T9lxEOC7x/Jk6oOpkLTcImRKrlIOYejBcyt1A9VcA6LoN?=
 =?iso-8859-1?Q?rMoGGJbFHoQ2WgDvedv/rpYwE9WsMdLJLxNiXQiJvaHs2xa4Z5LyGOjS7i?=
 =?iso-8859-1?Q?OdzO+OvrvS9zqi48P7dX1bzOQpr9Cl8dXaGNN6z7y32tps6d4uC5OyPe98?=
 =?iso-8859-1?Q?pKe6cHSCAJJJszVGlJJMp/oYk2IuesswNS9Jv+XZp3Y+WRbE/u4zs/dmdG?=
 =?iso-8859-1?Q?tn1iA4gHXUQ/wZz8+v89sjw6Sz6zLXKGLdILlbF9hIKTF9DU1gCkaqOsXO?=
 =?iso-8859-1?Q?IDVUPdvDqhuRrGgVa7kDCs2/kca9gIIUgrQ5tOora2NWW5hZ9b5A21Cijr?=
 =?iso-8859-1?Q?93gxCfvb1B7QQ7wGMe/oOka5pzoUCqgnnIKgnjB76QRlGBJxAyJTxfIUtN?=
 =?iso-8859-1?Q?o1JI5Kwq4X9D73JWlCLHSz//K9x/cCob71jjAE0nGkvSqPhVrjEReSp7B8?=
 =?iso-8859-1?Q?XoBd/O3wtIfjHiHw39MGX+sMRUvNfmGlyUk2ndooBynJys0TdP4l7GsvWH?=
 =?iso-8859-1?Q?83VO4mGbEehsxizYtosGTYaUwvTGmfZABWNBUq2PmY6qKTfP6KfQZ8IQCb?=
 =?iso-8859-1?Q?guQOTklCQQFso74QHhBPxLIMvXXcPJe3rBGhrdvb59mL5ugvoefN46Dmr4?=
 =?iso-8859-1?Q?40u+kw+FH5KrdREqybbtctmRqRzv4+FCMgix9EhB5dOYt32r3x0UZjhfEe?=
 =?iso-8859-1?Q?hOKl3cXW/6Icw+yIurBat9m6TuvNjx3KMvr3CMYCJg5ElAnSTIWviDHlsk?=
 =?iso-8859-1?Q?BS/AH6gB6kVZdJOLFFi6QjurQJHCLXFcsvaaho8QD6yNO13rtrNbMUcO7b?=
 =?iso-8859-1?Q?L7CZbQGxb4cD9wWD/bIpJEaWd4PiqECydG+18B7z5SIMqxPsC8Ouqn8xwb?=
 =?iso-8859-1?Q?4eBqwwoOH5PCCcgT+FGuwKcHRYSbm0Elf543Vhodt2KS5zzMfPd5WUMLg+?=
 =?iso-8859-1?Q?GvZJ9KSo4N2SG2etjSqPRgVw4XVhDByVsZ2BNxWVYKVA1f60bYITE8+ORJ?=
 =?iso-8859-1?Q?CyOXIRornM3QtBtOgZkpL1dPk4SUH+TKnt1OYzSGcXmxlYuYOoHu7bclm6?=
 =?iso-8859-1?Q?/w4fH1u1zmrXMHGLDM+FF/O9ukFLvqzKEWFE/CduIc+RKakBlwzywk5UmQ?=
 =?iso-8859-1?Q?JtJO8KtII1r2/G3U3ywZsWN9d0bs+h4b9XQ9mI+X2Jc0Xkhbi1zrtxDKSE?=
 =?iso-8859-1?Q?U/nU35BhefsWDeSsH/LQQZfzJGJUbzZlWLOW5Pvmxyvf/YaI7L6jc9r3aF?=
 =?iso-8859-1?Q?d3y02CaPs62RFnYhjSCei1eQp1QHkgdF8wv8qHFnQXAU2LKPZQyvbWH3wt?=
 =?iso-8859-1?Q?Q3K1KKpNhCAVN+541fSNKMqnta5GvgUE1oNKgXp5Q7Ls68xIqXnri69KGz?=
 =?iso-8859-1?Q?VbHiwuiIhv4eQe6XrK5aSjzVUpZkbouSx6TKw16RjIV9CnpoOobqrwK1Oz?=
 =?iso-8859-1?Q?8RX0pefjIw1CJ4S9SSwmJuZC3H2y87zqy89AHpqJn83JrkukUjV+GMBMP1?=
 =?iso-8859-1?Q?Sqi57aEcfsvEJM2d/1wR74cugdN3AMKwwSdSdnuzxvQ+Lq1Polg80lCUgW?=
 =?iso-8859-1?Q?arI8hM9dMA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b5094b-3aaf-4f84-4f3e-08da4a61d598
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2022 21:48:48.2002
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDqSvftpocC4XV4VUgLH/jdKtSmR1yhWKcMTEE+aQykVK+BN6oDwTU5E5t8ektKYwduigPbuimKXN1ntVe+Fyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB6962
Message-ID-Hash: LYM2QHHIZT7PPN34J4GQHWKMDLBYTWRF
X-Message-ID-Hash: LYM2QHHIZT7PPN34J4GQHWKMDLBYTWRF
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N321 GPIO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PAKN7FU7DE2KIJ73GP4Z3D3HIEVDPHRF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8346724456836052595=="

--===============8346724456836052595==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678FD7625EC090FBDA33CB4D3A79BYAPR03MB4678namp_"

--_000_BYAPR03MB4678FD7625EC090FBDA33CB4D3A79BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to use the internal GPIO connector of an N321 to read an externa=
l digital signal.

Cabling: after looking at the N321 schematic, I found that the GPIO connect=
or on the board mates with a Molex duo-clasp connector, 20 contacts, 2 rows=
. After buying the casing and the pins I patched up a cable exposing all 20=
 pins. Is anyone aware of a better option to connect to the GPIO interface?

UHD api: running the GPIO example from uhd 4.2 (with no nothing connected t=
o the GPIO) I get the attached output. The way I interpret this is that all=
 the registers are reading 1. This seems weird as I would expect the values=
 of unconnected pins to be 0.

Running the test again with all data pin grounded to the GPIO Vss or connec=
ted to the 3.3V produces the same output.

Is the GPIO interface working at all on the N321?

Thanks,
Lorenzo

$ ~/uhd/host/build/examples$ sudo ./gpio --args=3D"master_clock_rate=3D200e=
6" --bitbang --ddr 0x0 --out 0x0 --repeat

Creating the usrp device with: master_clock_rate=3D200e6...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106600; UHD_4.2.0.0-4-g04d=
14cd7
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D<my serial>,name=3Dni-n3xx-=
31CCFB3,fpga=3DXG,claimed=3DFalse,addr=3D192.168.20.2,master_clock_rate=3D2=
00e6
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master=
_clock_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=
=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,master_clock_rate=
=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn320,clo=
ck_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,master_clock_rate=
=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn320,clo=
ck_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Rhodium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Rhodium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Rhodium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Rhodium

Using GPIO bank: FP0
  rx_subdev_spec: A:0 B:0
  tx_subdev_spec: A:0 B:0
Initial GPIO values:
       Bit: 10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  0  0  0  0
       DDR:  1  1  1  1  1  1  1  1  1  1  1
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  0
    ATR_RX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_TX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_XX:  0  0  0  0  0  0  0  0  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  0  0  0  0  0  0  0  0  0  0  0
       SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0

Configured GPIO values:
       Bit: 10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  0  0  0  0
       DDR:  0  0  0  0  0  0  0  0  0  0  0
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  0
    ATR_RX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_TX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_XX:  0  0  0  0  0  0  0  0  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  1  1  1  1  1  1  1  1  1  1  1
       SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0

Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 1 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 2 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 3 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 4 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 5 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 6 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 7 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1 1

Done!



--_000_BYAPR03MB4678FD7625EC090FBDA33CB4D3A79BYAPR03MB4678namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm trying to use the internal GPIO connector of an N321 to read an externa=
l digital signal.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Cabling: after looking at the N321 schematic, I found that the GPIO connect=
or on the board mates with a Molex duo-clasp connector, 20 contacts, 2 rows=
. After buying the casing and the pins I patched up a cable exposing all 20=
 pins. Is anyone aware of a better
 option to connect to the GPIO interface?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
UHD api: running the GPIO example from uhd 4.2 (with no nothing connected t=
o the GPIO) I get the attached output. The way I interpret this is that all=
 the registers are reading 1. This seems weird as I would expect the values=
 of unconnected pins to be 0.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Running the test again with all data pin grounded to the GPIO Vss or connec=
ted to the 3.3V produces the same output.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Is the GPIO interface working at all on the N321?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Lorenzo</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
$ ~/uhd/host/build/examples$ sudo ./gpio --args=3D&quot;master_clock_rate=
=3D200e6&quot; --bitbang --ddr 0x0 --out 0x0 --repeat
<div><br>
</div>
<div>Creating the usrp device with: master_clock_rate=3D200e6...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106600; UHD_4.2.0.0-4=
-g04d14cd7</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D&lt;my serial&gt;,name=
=3Dni-n3xx-31CCFB3,fpga=3DXG,claimed=3DFalse,addr=3D192.168.20.2,master_clo=
ck_rate=3D200e6</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
aster_clock_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,master_clock=
_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn32=
0,clock_source=3Dinternal,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,master_clock=
_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn32=
0,clock_source=3Dinternal,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: n320</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div><br>
</div>
<div>Using GPIO bank: FP0</div>
<div>&nbsp; rx_subdev_spec: A:0 B:0</div>
<div>&nbsp; tx_subdev_spec: A:0 B:0</div>
<div>Initial GPIO values:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Bit: 10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;6 &nb=
sp;5 &nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nb=
sp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;DDR: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;=
1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div>&nbsp; &nbsp; ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; READBACK: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp=
;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF=
0 RF0 RF0</div>
<div><br>
</div>
<div>Configured GPIO values:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Bit: 10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;6 &nb=
sp;5 &nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nb=
sp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;DDR: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; READBACK: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp=
;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF=
0 RF0 RF0</div>
<div><br>
</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 1 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 2 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 3 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 4 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 5 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 6 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 7 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1 1</div>
<div><br>
</div>
<div>Done!</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_BYAPR03MB4678FD7625EC090FBDA33CB4D3A79BYAPR03MB4678namp_--

--===============8346724456836052595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8346724456836052595==--
