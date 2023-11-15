Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F11C7EC351
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 14:10:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B6DF384B3D
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 08:10:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700053820; bh=f8Ye5BXF6xsxkrfGC5e32pRInxEb+Efrgzk2wAEETTc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ukT/ZgmmPazrMXcXch5KuIO9UFglyw6ZvKkCR1Tv62V+VxZX08ccxZY/pL5gHv9NI
	 LMBoNZhWjfjZ5m5EQdvd7EVEL/iiSVfUL/0f5pAnydQZj2cOtkptsQEQ8ZTQrYwPxQ
	 qAXFQdTGxockQOZtln/jRzHXXVvHIL+wg3gKr45ei+FFSc0cSGtE0evRXP6EGM0DU4
	 A5EeEp7+DEW6XnHLlOdwHwjSBzqcIvJFV05GumlWx8Ygj+E4s5BzbjT2EivFRGoebY
	 FSd/k2JuSoJgha5TSsJ3BLPSlyXwSUuX6YRTaqm/mfLqIz3GzlIv5ysep0mwRccGmy
	 t8oQlilzmRRoA==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2106.outbound.protection.outlook.com [40.107.94.106])
	by mm2.emwd.com (Postfix) with ESMTPS id 89D733849F5
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 08:09:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="gdpPwbCb";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kEMuwDyFj6HSdgblhG5MvaSopwJqQA0Mea6ykuy6psfAG6+iArdnfAVLyfCTZ1VnG9j6FHJQOA1bwTBRXDGo15ADaP3ODQHG1WRFNIWG2IRUuhCPNNlGodWgWPFn1VOsfZSMmm/ka9M//fDKy1aQK4aRWoD7hg+ZanKmsDLtZz3BtOwsI0Cr/iqITB3kv+95yV4Qv7z5L4CGMTArz/llORHgYHeTVq47EPzMeo5s8aAtCR15Iz5yrC9pO3KOTjiSfV/BDsesBNabglm2h52sqYibA3VDf9ej6MHGUApItOL2rld0EmFNEFkQdV5X7eVy/l6tALM1c71Ixsd2eZxjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9vlnRN9M9Ii4OsuUnoo+l6fmnyxV2fjQbU60meqlIvc=;
 b=MsDjlCrYcXR5yV4er9ZUhU6UkN8gAW09Jl51QTRqnAR/cvq4tKGYD6PnyyWCMweDU+d0Io6gUxXXX9p+21VXmVtQb3jd7n3+3wLimAtZzbGA60GXaxeMqOD2KPhD7Ps0iJO+FI8yvo1sZhi6MZj3h8uUu8igps3QklQcjnJpOIpBRl6AAc+dTvRYRXPHXpmZxgqX1fHS8UIXtK35xnOd8jNoW3wVxYfDTpYj7QiuvGJflwfExMZPvkyi2Crs24tvs2oBOSK9r/8Y0PA6FQEzho9iB5KvItmnw81SqXj/aq15XYtvMvuxIwIoJ7C5uVVxJJ24dN8pl9OErPCSbmtlPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vlnRN9M9Ii4OsuUnoo+l6fmnyxV2fjQbU60meqlIvc=;
 b=gdpPwbCbEMEGBqpncfJCb5acd0AwqmkGWAo69wMphG7WSpBP2cpUl82OwDz5Tk9V0asreouIXNgONPx+Uhv+mngcaBa0u8Ff833tMd9QcmE+JuzkD3t5uC6REDWTW/vOdscg6GB99P0GzLcLK83j5jRnkESDpASnNzmKFbaqwWw=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by SJ0PR04MB7502.namprd04.prod.outlook.com (2603:10b6:a03:324::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.18; Wed, 15 Nov
 2023 13:09:37 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::3f4c:be8b:1cc0:fae7]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::3f4c:be8b:1cc0:fae7%3]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:09:37 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] X410 recv error on socket: Connection refused
Thread-Index: AQHaFtI73yS6ldx2LEGO7IJHpbLLWrB7VC+w
Date: Wed, 15 Nov 2023 13:09:36 +0000
Message-ID: 
 <PH0PR04MB83111EDB22A7E1341B36D781F3B1A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: <HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw@lists.ettus.com>
In-Reply-To: <HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=9212b51e-d08c-485f-97dc-73b1e63ffbd6;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-11-15T12:40:37Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|SJ0PR04MB7502:EE_
x-ms-office365-filtering-correlation-id: ec61bc55-9bb1-4505-1ca6-08dbe5dc1e7f
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OMhoXp+Mf+6iSiourXVtIJDaTUdWMg5bTxRCtRBplSdkSS4nsNy5DXGePyKwYn49bQAgUDFGZE3zueCyeQ5+j/mGBRhuJvV2Z6pH2+Gwh+9ro1HZjVdegP7K6XUNwMP7giOKtZWXKEiVOHNz+KXntsXTvbkbt0ByRxjJMFqU3yw0spxPKExmSPXoBhobH2lss2u17yYinKLe25V/Mc1XRp6iSgTtKRRJz2CzqI4P0QK7a8zSVbr33aPUi4svfeDorPct2cDsDKFeRmJY9dToX26Qpwrorpu95lxkJY4diV7lnrBFjMYjvuvtLV3Djl2fz3lBZZD7sW7Ub2GXB592QUoKuFxd3l0K5PJ2hOcPnXlnFInIo0G4iQNl1QdroAtQu2/AE1X6aHIptm0Cb9r2iROmVr3RlDWRYQq7Mgp1zPuhuArhrR2JrdMQoMq3LTqcDYxfvT3DCpOn4II7xRfQ2YeFFQpcu0FfgZZWzDSYDsNbUqX501HwiluSCDvVj7au4zpac2GCPAVA86dTYP1gwXGagnQUJ9c26oR2rhFgw09XzwlphyQzWTPwRlFwYF853RB3Y9FOPUcZEwJBoszZXCNG7URCQYeCcMDB7TjFIE6vM7VpSSfF0gz45fElTN6ESHC6ArftgVpw4eHU3bZkezIseQQMFx42UIokZSKBJZ9zznolvLIz//IyEViwG7hR
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39860400002)(230473577357003)(230922051799003)(230273577357003)(230173577357003)(230373577357003)(64100799003)(186009)(1800799009)(451199024)(71200400001)(86362001)(8676002)(66574015)(6916009)(316002)(8936002)(53546011)(6506007)(7696005)(33656002)(26005)(66476007)(64756008)(66556008)(66946007)(76116006)(52536014)(9686003)(66446008)(83380400001)(55016003)(478600001)(5660300002)(2906002)(38070700009)(166002)(38100700002)(41300700001)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Por4msUYgyBwuv9XDgoj3jb4eWOmlPZWVJKvkKoILtkAivf4dQWr8zkUVQCi?=
 =?us-ascii?Q?pu4x5V3SNrAM7hPoJyvyIWseEp8g/C3ZeofDejf4ZWkBVaSm5olt/FEpBeAK?=
 =?us-ascii?Q?pttN6kHt4BRaSo/ZT5pZ5kcxXkamlo4sBNKF8Ji47iaA7uWdO+EJ3acGyVHx?=
 =?us-ascii?Q?AnRbTh+E7iYItKM1a352+9St0jvzk4lj2il1/z4Ln//IXar3yN/qHx8ys4cs?=
 =?us-ascii?Q?H0BP2j3iY3WznzDszWlK9JVYrrSGS6QbsyVtxykidNKDlyZWzBWjUyu2URfS?=
 =?us-ascii?Q?/5U+OxxndLj8Fpb/Ullmd0Z0vUJwUhFt643Xz11w0C1fRPQ3E1ytmGq+kb6b?=
 =?us-ascii?Q?nFxeHzVGsSL6tMkV7v4agAI8na5hISOtN8A7/3kPe3eHctDevUqMjba4Zflp?=
 =?us-ascii?Q?neEuEkvuw6XM3Mb4NHUAl1DNNMah4/dP+3bJBT5eeWw6rOWbBjDm++402KbS?=
 =?us-ascii?Q?iNn4oUMr5TMJaTzDDleuULt6NOaOvz5m9vNQ8/j7CoWZ7vdACk8xVZGo95cC?=
 =?us-ascii?Q?u1Ts2bl6X2hW8DOp18a7gLV3bexgUdadjQgqZkBuj5MEF0MGtOlMS9ohH4ux?=
 =?us-ascii?Q?H5icZR3bqY2fuhZTvc4iW6p/xIygpHzVJP9GRTCPlurNPa0wt7JiYCqZ2xv7?=
 =?us-ascii?Q?AASf9HRr4LQoel+bsP8cwCpIHDUu/FsTk4HKo+hCngSIvr+IIZ7LAgcZjkqZ?=
 =?us-ascii?Q?EbuYV3oEvihOEgZ7iRRsUAj3+ybqsur1W+pOXZJ0APY3FFxXsgIZvm6ysyKg?=
 =?us-ascii?Q?BW4aAQp1HQnuNfM0WHz/CaWoVPfo90rvKKdt8087TpRBxWwkVjZQ79wtnNWw?=
 =?us-ascii?Q?7My3Jhw6ShQkI7pNFU5TPA/W6xPNyWIr72Csd3Ppi52tou6EXfNLLXOO9+Af?=
 =?us-ascii?Q?C96ZjFbaK0IvD/20cD05OcXLntCf4bhRSdCZg30h5cT+iZzb00e2/71tNGuT?=
 =?us-ascii?Q?r232Z2FyAkJ2edi8qmH6V9bSmQGiyhCghkX3z3w8ifHMG1KDJTJwNZVQzK7e?=
 =?us-ascii?Q?BiyetJkr8wAXABkBZgov16ScJDgh9YbgC7DvbiNGOOk4jrbLIU0iwWIf8pZ8?=
 =?us-ascii?Q?36zo+BLHDL6zmHkemH4PGeFUtAJIvyD8pzE7bOmwQddzZTfX19B19R9e1QRr?=
 =?us-ascii?Q?cmK8gN5zAYLcAapD7E+xxeR8wycOVekq/f3fWAnWrjIzKiCco6mu0nRXbwj4?=
 =?us-ascii?Q?nFsZbV81PTz+QHuFF9Qx9Ff+rlMjDyEn95hvy+mQDeOKX+oWksCaIm51ETf4?=
 =?us-ascii?Q?AR1VR9cGtdObeI01+QE5w51OXsijDdS71xAga1BgkZNtxVKjL9+0ztDC9Rc5?=
 =?us-ascii?Q?zp9K1Fu6STZvwus7zdfPz7/MokwvQsa1ylMIdPccWAXJe7zNHxDPxKHAHMh6?=
 =?us-ascii?Q?TdJ/CmOjmTy/icoV/dMV2+y79g/uGOew8NikCYao/FCzUilcwHpaRt08/d4E?=
 =?us-ascii?Q?f6/Umpy3WBav5E+L+3RkiFFQzoYrkboj2cYyG2tLLBupzihav/MORroKOvm6?=
 =?us-ascii?Q?YTrqQ9E0ygtZmXRvwz5tJ1kH9az9IscZKf2wxCaZVf9PgzDzMVC4dSVkQWHw?=
 =?us-ascii?Q?TeKPCcpd3WQCe/t7ps5gkP9nqCqJh+MU/B8ozOwp?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec61bc55-9bb1-4505-1ca6-08dbe5dc1e7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:09:36.9908
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /z8mYS32CvBuIRxa/YCp/ygoXBvQrmSI/uUI1sMS8H170Cx9epKE6VpsJLY7gjx0SqHUVF0q5CUJCnaZT3eROA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB7502
Message-ID-Hash: UJNNBY2C427FI4FIDEGEFXMA25ZJ3YON
X-Message-ID-Hash: UJNNBY2C427FI4FIDEGEFXMA25ZJ3YON
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 recv error on socket: Connection refused
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JDLU4YNPT5PKKJGCL2LFEW4FXSV4FXRO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1703419348634261472=="

--===============1703419348634261472==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB83111EDB22A7E1341B36D781F3B1APH0PR04MB8311namp_"

--_000_PH0PR04MB83111EDB22A7E1341B36D781F3B1APH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Zack,

I cannot say from the top of my head what exactly the difference between ad=
dr and addr0 is internally. Usually, addr0, addr1 etc. are used for address=
ing multiple devices but /should/ be equivalent to just using addr.
When looking at the output of uhd_find_devices we see that with the 400 MHz=
 FPGA image, both QSFP ports seem to be present, that's already good. Howev=
er, when looking at the error message this indicates that something might b=
e wrong with some network connection. Can you verify that the QSFP ports on=
 your computer are both configured properly? The last time I saw this error=
 was when someone set up a new host computer, forgot to configure his 10 Gb=
ps interface to match the physically connected X410 and wanted to run an ap=
plication that relied on that connection.

/Martin

From: zackkomo@utexas.edu <zackkomo@utexas.edu>
Sent: Monday, November 13, 2023 7:54 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X410 recv error on socket: Connection refused

You don't often get email from zackkomo@utexas.edu<mailto:zackkomo@utexas.e=
du>. Learn why this is important<https://aka.ms/LearnAboutSenderIdentificat=
ion>

Hello!

We have an X410 connected to a host computer through two QSFP28-to-QSFP28 c=
onnections with IPs 192.168.10.2 and 192.168.20.2 for interfaces 0 and 1 re=
spectively. The X410 also has an ethernet connection to a router with an IP=
 192.168.1.19, which the host computer is also connected to.

When the X410 is loaded with the UC_200 image, everything seems to work as =
desired and running "uhd_find_devices" on its own produces:

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.=
5.0.0-0-g471af98f

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

serial: 326E872

addr: 192.168.20.2

claimed: False

fpga: UC_200

mgmt_addr: 192.168.1.19

mgmt_addr: 192.168.20.2

name: ni-x4xx-326E872

product: x410

type: x4xx

When I try to change images with "uhd_image_loader --args type=3Dx4xx,mgmt_=
address=3D192.168.1.19,fpga=3DCG_400 ", it seems to work but then errors ou=
t:

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.=
5.0.0-0-g471af98f

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm_addr=3D19=
2.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.1.19,type=3Dx4xx,produc=
t=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DUC_200,claimed=3DFa=
lse,addr=3D192.168.1.19,skip_init=3D1

[INFO] [MPMD] Claimed device without full initialization.

[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.

[INFO] [MPM.PeriphManager] Installing component `fpga'

[INFO] [MPM.PeriphManager] Installing component `dts'

[INFO] [MPM.RPCServer] Resetting peripheral manager.

[INFO] [MPM.PeriphManager] Device serial number: 3263584

[INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:

DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz

DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz

[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).

[INFO] [MPM.PeriphManager] init() called with device args `boot_init=3DTrue=
,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.

[ERROR] [RPC] Someone tried to claim this device again (From: 192.168.1.20)

[INFO] [MPMD IMAGE LOADER] Update component function succeeded.

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm_addr=3D19=
2.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.20.2,type=3Dx4xx,produc=
t=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=3DFa=
lse,addr=3D192.168.20.2,mgmt_address=3D192.168.1.19,find_all=3D1

[INFO] [MPM.PeriphManager] init() called with device args `addr0=3D192.168.=
20.2,find_all=3D1,fpga=3DCG_400,mgm_addr=3D192.168.1.19,mgmt_addr=3D192.168=
.20.2,mgmt_address=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,clo=
ck_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.

[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: Conn=
ection refused

[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError=
: IOError: recv error on socket: Connection refused

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environme=
ntError: IOError: recv error on socket: Connection refused

Error: RuntimeError: Failure to create rfnoc_graph.

But if I run uhd_find_devices again I get what I expect :

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

serial: 326E872

addr: 192.168.20.2

claimed: False

fpga: CG_400

mgmt_addr: 192.168.1.19

mgmt_addr: 192.168.10.2

mgmt_addr: 192.168.20.2

name: ni-x4xx-326E872

product: x410

type: x4xx

If I try and run any script though, even specifying the addresses, I get th=
e same errors as when changing the image. An example is with 'uhd_usrp_prob=
e --args "mgmt_addr=3D192.168.1.19,type=3Dx4xx" ' even without any arguemen=
ts:

INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5=
.0.0-0-g471af98f

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm_addr=3D19=
2.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.1.19,type=3Dx4xx,produc=
t=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=3DFa=
lse

[INFO] [MPM.PeriphManager] init() called with device args `addr0=3D192.168.=
20.2,fpga=3DCG_400,mgm_addr=3D192.168.1.19,mgmt_addr=3D192.168.1.19,name=3D=
ni-x4xx-326E872,product=3Dx410,clock_source=3Dinternal,time_source=3Dintern=
al,initializing=3DTrue'.

[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: Conn=
ection refused

[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError=
: IOError: recv error on socket: Connection refused

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environme=
ntError: IOError: recv error on socket: Connection refused

Error: RuntimeError: Failure to create rfnoc_graph.

The errors disappear when I use addr0 instead of mgmt_addr or addr. Since t=
his option is not listed in the wiki (https://files.ettus.com/manual/page_u=
srp_x4xx.html#x4xx_usage_args) I am curious if I am using it correctly. At =
the end of the day, I want to make sure that when using the CG_400 image th=
at both QSFP28 interfaces are operating, and that I can switch between the =
two images without errors. Previously we used to only have a single connect=
ion.

Thanks!

Zack

National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Jo=
hn Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (Regi=
stered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeri=
cht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB83111EDB22A7E1341B36D781F3B1APH0PR04MB8311namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Zack,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">I cannot say from the top of my head what exactly the difference betw=
een addr and addr0 is internally. Usually, addr0, addr1 etc. are used for a=
ddressing multiple devices but /should/
 be equivalent to just using addr.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">When looking at the output of uhd_find_devices we see that with the 4=
00 MHz FPGA image, both QSFP ports seem to be present, that&#8217;s already=
 good. However, when looking at the error message
 this indicates that something might be wrong with some network connection.=
 Can you verify that the QSFP ports on your computer are both configured pr=
operly? The last time I saw this error was when someone set up a new host c=
omputer, forgot to configure his
 10 Gbps interface to match the physically connected X410 and wanted to run=
 an application that relied on that connection.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> zackkomo@utexas.edu &lt;zackkomo@utexas.edu&gt;
<br>
<b>Sent:</b> Monday, November 13, 2023 7:54 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] X410 recv error on socket: Connection refused<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt"></td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">You don't often get email from
<a href=3D"mailto:zackkomo@utexas.edu">zackkomo@utexas.edu</a>. <a href=3D"=
https://aka.ms/LearnAboutSenderIdentification">
Learn why this is important</a><o:p></o:p></span></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;align:left">
</td>
</tr>
</tbody>
</table>
<div>
<p>Hello!<o:p></o:p></p>
<p>We have an X410 connected to a host computer through two QSFP28-to-QSFP2=
8 connections with IPs 192.168.10.2 and 192.168.20.2 for interfaces 0 and 1=
 respectively. The X410 also has an ethernet connection to a router with an=
 IP 192.168.1.19, which the host
 computer is also connected to.<o:p></o:p></p>
<p>When the X410 is loaded with the UC_200 image, everything seems to work =
as desired and running &quot;uhd_find_devices&quot; on its own produces:<o:=
p></o:p></p>
<p>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.5.0.0-0-g471af98f<o:p></o:p></p>
<p>--------------------------------------------------<o:p></o:p></p>
<p>-- UHD Device 0<o:p></o:p></p>
<p>--------------------------------------------------<o:p></o:p></p>
<p>Device Address:<o:p></o:p></p>
<p>serial: 326E872<o:p></o:p></p>
<p>addr: 192.168.20.2<o:p></o:p></p>
<p>claimed: False<o:p></o:p></p>
<p>fpga: UC_200<o:p></o:p></p>
<p>mgmt_addr: 192.168.1.19<o:p></o:p></p>
<p>mgmt_addr: 192.168.20.2<o:p></o:p></p>
<p>name: ni-x4xx-326E872<o:p></o:p></p>
<p>product: x410<o:p></o:p></p>
<p>type: x4xx<o:p></o:p></p>
<p>When I try to change images with &quot;uhd_image_loader --args type=3Dx4=
xx,mgmt_address=3D192.168.1.19,fpga=3DCG_400 &quot;, it seems to work but t=
hen errors out:<o:p></o:p></p>
<p>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.5.0.0-0-g471af98f<o:p></o:p></p>
<p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm_addr=
=3D192.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.1.19,type=3Dx4xx,p=
roduct=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DUC_200,claimed=
=3DFalse,addr=3D192.168.1.19,skip_init=3D1<o:p></o:p></p>
<p>[INFO] [MPMD] Claimed device without full initialization.<o:p></o:p></p>
<p>[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<o:p><=
/o:p></p>
<p>[INFO] [MPM.PeriphManager] Installing component `fpga'<o:p></o:p></p>
<p>[INFO] [MPM.PeriphManager] Installing component `dts'<o:p></o:p></p>
<p>[INFO] [MPM.RPCServer] Resetting peripheral manager.<o:p></o:p></p>
<p>[INFO] [MPM.PeriphManager] Device serial number: 3263584<o:p></o:p></p>
<p>[INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:<o:p></o:p><=
/p>
<p>DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz<o:p></o:=
p></p>
<p>DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz<o:p></o:=
p></p>
<p>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<o:p></o:p></p=
>
<p>[INFO] [MPM.PeriphManager] init() called with device args `boot_init=3DT=
rue,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.<o:=
p></o:p></p>
<p>[ERROR] [RPC] Someone tried to claim this device again (From: 192.168.1.=
20)<o:p></o:p></p>
<p>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<o:p></o:=
p></p>
<p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm_addr=
=3D192.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.20.2,type=3Dx4xx,p=
roduct=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=
=3DFalse,addr=3D192.168.20.2,mgmt_address=3D192.168.1.19,find_all=3D1<o:p><=
/o:p></p>
<p>[INFO] [MPM.PeriphManager] init() called with device args `addr0=3D192.1=
68.20.2,find_all=3D1,fpga=3DCG_400,mgm_addr=3D192.168.1.19,mgmt_addr=3D192.=
168.20.2,mgmt_address=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,=
clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.<o:p></=
o:p></p>
<p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: C=
onnection refused<o:p></o:p></p>
<p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentEr=
ror: IOError: recv error on socket: Connection refused<o:p></o:p></p>
<p>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Enviro=
nmentError: IOError: recv error on socket: Connection refused<o:p></o:p></p=
>
<p>Error: RuntimeError: Failure to create rfnoc_graph.<o:p></o:p></p>
<p>But if I run uhd_find_devices again I get what I expect :<o:p></o:p></p>
<p>--------------------------------------------------<o:p></o:p></p>
<p>-- UHD Device 0<o:p></o:p></p>
<p>--------------------------------------------------<o:p></o:p></p>
<p>Device Address:<o:p></o:p></p>
<p>serial: 326E872<o:p></o:p></p>
<p>addr: 192.168.20.2<o:p></o:p></p>
<p>claimed: False<o:p></o:p></p>
<p>fpga: CG_400<o:p></o:p></p>
<p>mgmt_addr: 192.168.1.19<o:p></o:p></p>
<p>mgmt_addr: 192.168.10.2<o:p></o:p></p>
<p>mgmt_addr: 192.168.20.2<o:p></o:p></p>
<p>name: ni-x4xx-326E872<o:p></o:p></p>
<p>product: x410<o:p></o:p></p>
<p>type: x4xx<o:p></o:p></p>
<p>If I try and run any script though, even specifying the addresses, I get=
 the same errors as when changing the image. An example is with 'uhd_usrp_p=
robe --args &quot;mgmt_addr=3D192.168.1.19,type=3Dx4xx&quot; ' even without=
 any arguements:<o:p></o:p></p>
<p>INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.5.0.0-0-g471af98f<o:p></o:p></p>
<p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm_addr=
=3D192.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.1.19,type=3Dx4xx,p=
roduct=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=
=3DFalse<o:p></o:p></p>
<p>[INFO] [MPM.PeriphManager] init() called with device args `addr0=3D192.1=
68.20.2,fpga=3DCG_400,mgm_addr=3D192.168.1.19,mgmt_addr=3D192.168.1.19,name=
=3Dni-x4xx-326E872,product=3Dx410,clock_source=3Dinternal,time_source=3Dint=
ernal,initializing=3DTrue'.<o:p></o:p></p>
<p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: C=
onnection refused<o:p></o:p></p>
<p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentEr=
ror: IOError: recv error on socket: Connection refused<o:p></o:p></p>
<p>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Enviro=
nmentError: IOError: recv error on socket: Connection refused<o:p></o:p></p=
>
<p>Error: RuntimeError: Failure to create rfnoc_graph.<o:p></o:p></p>
<p>The errors disappear when I use addr0 instead of mgmt_addr or addr. Sinc=
e this option is not listed in the wiki (<a href=3D"https://files.ettus.com=
/manual/page_usrp_x4xx.html#x4xx_usage_args">https://files.ettus.com/manual=
/page_usrp_x4xx.html#x4xx_usage_args</a>)
 I am curious if I am using it correctly. At the end of the day, I want to =
make sure that when using the CG_400 image that both QSFP28 interfaces are =
operating, and that I can switch between the two images without errors. Pre=
viously we used to only have a single
 connection. <o:p></o:p></p>
<p>Thanks!<o:p></o:p></p>
<p>Zack<o:p></o:p></p>
</div>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; =
Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; Re=
gistergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB83111EDB22A7E1341B36D781F3B1APH0PR04MB8311namp_--

--===============1703419348634261472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1703419348634261472==--
