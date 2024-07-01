Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2866291E4CD
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 18:08:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 120DB385605
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 12:08:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719850083; bh=VLb/y0w88HqPLm80xSi3pco2TVzHDc/7ONKImAl4VGc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rCV7ZsywJqoB5Agrj7WX8hO/DkIRENJhxwH0OHPHJzyxDThChtSAP6I+jegbWIjbs
	 d92B9++gBiQs4id2isD4eMnITHX+Vyz9peY6SUdTXiXSR3GkKrIrLdbxCEZjhcUPIr
	 kg9dL5c8n2mjley6CbVcQGqx3R7RhNVXvZxkyE6pGQz8q1IJ0nO1gh7zvzpdk2ztkd
	 mTemNGPqeM7qi7aCk2gTxBj9sMl48RwcfEguMkgoJ0AH5PmMY41h9I4DQzggQpcQ0d
	 hcET4AwPAFL3kA9yZw+ztPrkbnlQTJTMTbiTzl+afwzLidNNGKZ2lR8jPJzJwlajh+
	 ZtnccbJxGH4Hg==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2068.outbound.protection.outlook.com [40.107.244.68])
	by mm2.emwd.com (Postfix) with ESMTPS id A545F3849E7
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 12:07:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="YtfsclIN";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NMOhNF3Lp6qfH4aAba9dJUi9HfXcRESMSugmhXjF1r8N4NDSKaeGYnhhW+Y3Hnqb7f7enntdR12BVt+Wb3phYHgyCRE9ig6ihLyzT2hxYRlqqM2USCQ+3D8r8gEXq7UftYYUBBWkfWpRfQh1oykgbwsXKZybQcF3+gZnyCjCvmpbjsTedPtGnFCAfGn4PSHmilL4x8jWGOQIJxFZWZ0xoI+Z7TpNZwY8NR6n8TPfKgH22rRzOleHAw2NIwBI66grRD3hLPpBReYSijjfF2g8g9DTHhW+7n9OA2GQeQss1DgvnjkYOrUA13KUTNEWRyOFAbLw494mzMJXgcgHn943pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N02+lLQzDlUSYUS4xfMKZEGCcqgok3cjqIziwrUwwjU=;
 b=T6fxk4/VtUiwfZL6YyoRd4/3ALlZ5Nglc1Zxz8gBwGYM9ophW7cFat0DBtCD7gkoGbnk+dllSpSh1f6Yxog0Oa5kydCaPPHzCLfv43VT0w4WBS8Aee+C4bSL2BF56SEfk4CRs3M/zi6LR44ugaFuQFCkOWCay3OUDR/vtxOsgbQ4lNrb7bXjhBGVGWJwLG7mmlbh8iIxu+rHmjvAdmMN2E6KasPwV+AX8ZC85gcwmRKQAZk/cMf40V+4679SbVCWCnnfEp0i0twu2nir453RRP28q66EFhdYdiMlt7znV3NWprwkbfYXxBB3PQ60+Rb76VN1FghWrhDXAMYoB1k6aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N02+lLQzDlUSYUS4xfMKZEGCcqgok3cjqIziwrUwwjU=;
 b=YtfsclINuFhrUQIfhVogrskxfRJ45+mE2d3UNIRa/WsCFCFm8GjN/VcD8HkKBjP56QzLYxJ+2qPZCyvCBv3R3d67quulU03vEIidx55rW/tYw6f25NkDNPCcvsGxTNilyjFvY6sb7HWGnSqxTKYzGpM5+xN0bu9P71J8HapmbCw=
Received: from DM6PR04MB6378.namprd04.prod.outlook.com (2603:10b6:5:1e2::22)
 by SA1PR04MB9044.namprd04.prod.outlook.com (2603:10b6:806:389::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Mon, 1 Jul
 2024 16:07:18 +0000
Received: from DM6PR04MB6378.namprd04.prod.outlook.com
 ([fe80::81b6:c39b:b3b:b56d]) by DM6PR04MB6378.namprd04.prod.outlook.com
 ([fe80::81b6:c39b:b3b:b56d%5]) with mapi id 15.20.7719.029; Mon, 1 Jul 2024
 16:07:18 +0000
From: Marian Koop <marian.koop@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [UHD] 4.7.0.0 Release Announcement
Thread-Index: AdrLuA52N50+DUw4R/SFGfwayzoHgA==
Date: Mon, 1 Jul 2024 16:06:48 +0000
Deferred-Delivery: Mon, 1 Jul 2024 16:04:01 +0000
Message-ID: 
 <DM6PR04MB63780E91414BCE097AEA4EB89FD32@DM6PR04MB6378.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=58f7ba70-be50-4222-a9fe-d9fd8de51161;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2024-07-01T13:06:20Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR04MB6378:EE_|SA1PR04MB9044:EE_
x-ms-office365-filtering-correlation-id: 9b0cec2c-a8d3-4964-2146-08dc99e7e1ae
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?Z7I1XPAzeYEGu9kTbgpX0jt4JNtm67ytIdjz9So5ob5b8zf6QyW+sd4LpoP8?=
 =?us-ascii?Q?Z93l2PhaNIlZQAqoyUQF0zh6sy5LiBjFpmgNmkRsLspOJcTGfn6zsQGcwhNQ?=
 =?us-ascii?Q?XT0gVj7H1/MyP1OQRnZTwX0vyVgPMXL3K/Zfd7YOUJYbzLVccAP4+rBcdINW?=
 =?us-ascii?Q?MAWisR4tBmVJThZpUarz7S1Fc9k0/LL1a6mevROrV90LDwjxdo9oSlnl8mjo?=
 =?us-ascii?Q?LRAh01w/becCPeYsccwgSvwXS4BVvudx8nvctRC+he3OoGV2mz/qowLE39/Z?=
 =?us-ascii?Q?b63wxGqnzEgYVqZf3Ilr+dCQxU4q/h3oX6OUymgcfJCmMNfoAFJ7pHyVfZmv?=
 =?us-ascii?Q?uNAhf65oefOazTuqS71ffwkWgAN4TJwgUN5Uohvi2vgWgNfM6IAI7wYM3UHH?=
 =?us-ascii?Q?Hwew2qB0A19SFSQOHOIn4af2G2Ytf69Xp3TMEzbCTpklblM6vVshTd8pOaj9?=
 =?us-ascii?Q?FMY+lPOC0R+GEEuKanvsMSvFL/aFYQhE0xVZjFqOMKFgub3Im1kM+Kf9B48f?=
 =?us-ascii?Q?mn9p3MlTxhlN1JCAAVslKHceNc6sJBcDmuSMd4pJLAHyJDheJzxZVRQYAhJ/?=
 =?us-ascii?Q?XaiQDzmlElQqd8yXieyIYpQt190eSYOa1BkH7tYrBnm2l3EKAbE3HL+D7mnk?=
 =?us-ascii?Q?olbGaexwTHA0FLdDiavp40tj8mQM6um/Hjw9CyeX6cfnvJEkJqw7t0ELlmRy?=
 =?us-ascii?Q?NFIEUhIm2Av7BrBMthiDfbnvt9UiKtZVrp3Gt8Apg5rFFFRfULqM0bVlcGeC?=
 =?us-ascii?Q?oJC4lzBXgtuMy5yKB646xiRZfni84zapgodbUUGi/qd94nv8C1NskcG/gQE2?=
 =?us-ascii?Q?T3TjtcKplqzdpxcxXZMnqXN25E0G7XkNUg0lxWw5IZyUK3XhQ6d2vZE8jhcs?=
 =?us-ascii?Q?zsAHSJtXe+DBLN9dEP0Vtqnz3wqUSrDe0Xmc25fANB2uj1cw8S7fgybikg6v?=
 =?us-ascii?Q?vT3ydB7a+aDjBMiI61X57XXyd45kClM1QtFed4t0uZX0/xZmL9C/zn8G+DAB?=
 =?us-ascii?Q?2jzzkzLOiD+kc4gbHf8iX6A+MqPT8OXqEe/KZMn7uiqT5OjKRMwxiaOL37Kn?=
 =?us-ascii?Q?Fc4JkR/o2L0pCx0y9ZFpXCAC0ePP3bjs5FEENeE2v8VypHwvQZt7f8O12Tk+?=
 =?us-ascii?Q?mKPd5lD93fu9C1yIJWq9hs21yySU43Bby21iewOn5lkSDYqytbmRdX2DtYne?=
 =?us-ascii?Q?mzOHom7w59UJRHXaYclxiDRbmBi0o2Klvs31pkaaTdvUErFWclbUTmgp5Nsz?=
 =?us-ascii?Q?BtRyR7qj/I0WLf8fZcinkmGm+MBwYhPA91EoE8YRwrtKi/K1J4kDcm4eIqTx?=
 =?us-ascii?Q?rSp1qfu7OThGdpDLjMoLwvF4BjyQ7FGamKPVB07ctZC9moiJGApCs3/j8r9h?=
 =?us-ascii?Q?IFKKVy0=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB6378.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?WxYVdsaN5LV2QghHV3NpC/rh80LCQS/pRmXwu6CmEPPXnh6u9wkcPuIyBQI+?=
 =?us-ascii?Q?IftD8jn2saHZ15wdX+ML6lfIT8jRsbzfLEkkDF7jAL/wcpOHUOI+QTHAhvNG?=
 =?us-ascii?Q?Q8RhtkCqsodYrvLO7+f7AnqCHer2tXXCi/L45ciem3CAoeprQMiDB1DjudrB?=
 =?us-ascii?Q?EGZ8rIHDqM4uyluTmHM6d5pbMlk2cxWDuehOFdgK/ANRy5jqe1JI0XGQ53Ll?=
 =?us-ascii?Q?HzGUH43eYBr5JJ7QMpKfjDwYLDQIp5/lQ3/vSxi8sRBfYgPwsgyjdwXbDwyx?=
 =?us-ascii?Q?AkrWCo8hUAF7JArN9jrGUPlDOZ4nog6jGPtFOejPX9LodCl7zYKdo5kT55cj?=
 =?us-ascii?Q?0MR+Ygp2CTU8MmLD7d+B5Iq801r32aIt46xhe2DnPW6PAzN4P1PFqfwvMEZK?=
 =?us-ascii?Q?1cxlWAydaqdtha/KG0W5QXeVj54u1G2irGPhUbfYm7TqOrWVcJ2SHBuivwJF?=
 =?us-ascii?Q?43u2pVetMmCfgyCmcN3OUOGYq3MBB3fB9pa74yt0n3Yu55u4cdP495D1IJC/?=
 =?us-ascii?Q?Ax9usjXpDlzoST5urNUpU81wz57FGBetTe2QYj6P0g4JkjJ0DhCRFTVK0V1Q?=
 =?us-ascii?Q?l8kb1F3xCAxerTp2lR/PdovDPUhpO+wdYnchV5r/xyvFKbZjC45Q8nOW2P3Z?=
 =?us-ascii?Q?4IG1va53MePvQIz6GkQLMWjK1iXR1zJrSI3e8nTBiAp/MIW24o17WPVi6bk7?=
 =?us-ascii?Q?SUL/JT7ZvNnC+IMdyY9OAyKv4c2p47vUuUD4OZ0avatKyckV8JglUokcx8zN?=
 =?us-ascii?Q?96HElNGkxo7f81yk+Ui4CU3K5PFvR/7qTWMGBL6ID2MPpuBu/gTu3xLBRp0t?=
 =?us-ascii?Q?dGrduPppe1WgCpgETmTjaiv3ztvhhRvGNPsHfnU9vluonS7MQo7O1tkRr6nx?=
 =?us-ascii?Q?QB6SjWlbeE7uGwoO1IzMQ0gOeHvCl27fq7OplV9paxR7j+rmT5uOFY3eOLPv?=
 =?us-ascii?Q?PECG/GAbfSIid4CpJDqggGmZUAmG54IcBt2LNTzIDs74IblW0JM1xEAi9prz?=
 =?us-ascii?Q?ewfBD2Tv/ZJr0+rFKy6Vna1H2lba3fxbnCyABo+SNFpUF1oP404ve8fnQ7VM?=
 =?us-ascii?Q?q2JWYHnVNGo1HA27CT+hq8bUoSk2gH7fdyJrvSs1VVnwNxIzTrqV3E+9d2Y0?=
 =?us-ascii?Q?ox7Fd4eWNY6TntwnD3XjBeH43xEE8yrBbbwJfoaRNToyjIoYJwAm4Us8FzYH?=
 =?us-ascii?Q?05pHGQCoMyJjXCMARq9pvJSJHi+eNUWlMeSz1CE3++VOHIto9dFibHiY+tUi?=
 =?us-ascii?Q?tBvWm5dt4fvelSwdsHQ4eZ8S488uSnQQwfW5Z5uEDYiAfZLSzJtmhQIODudh?=
 =?us-ascii?Q?qlREiGEcHtD4t2DTfMFSEzyLnRNEDyZ0TaMOruvs0ov6tobnC3eMxGVN0hJo?=
 =?us-ascii?Q?uzrED4OUGgCBhLJXONnQ1RlM9b20X3XEVPbP+KklBzkDI9/ViZkeTwBrxAR7?=
 =?us-ascii?Q?gUtDqW63CC1gd2XsABkAjraR4AVJzxFfXzdDBfPQ4l3JlslOBFWOGP+lwTQN?=
 =?us-ascii?Q?hjmDUlmvlNQIhjSQdA4Hmlnw5pGebWazLWcw00UVI1fWRMEgRZPHDTtnm8tP?=
 =?us-ascii?Q?7a96v9zT9S8xzsKkmHu8cS6/KYe51TodU8WzbfWy?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6378.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0cec2c-a8d3-4964-2146-08dc99e7e1ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2024 16:07:18.2392
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DE9kPAMGHboFtV7bQpy4KVGAuuJ7PZed+jhTusiVdH0LSzIzXiCYAPL8DfvTzy6Dscdjx252cDm29pX17AnThQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR04MB9044
Message-ID-Hash: R3567QG22S34V4S7HYHF6QJU3NN47J5U
X-Message-ID-Hash: R3567QG22S34V4S7HYHF6QJU3NN47J5U
X-MailFrom: marian.koop@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.7.0.0 Release Announcement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5P7WXYRFCUVPMF6K3TM3QGDM7FHKO72C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2295123395253852252=="

--===============2295123395253852252==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR04MB63780E91414BCE097AEA4EB89FD32DM6PR04MB6378namp_"

--_000_DM6PR04MB63780E91414BCE097AEA4EB89FD32DM6PR04MB6378namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

The UHD-4.7.0.0 release is now available.
This release includes a major update to the rfnoc_image_builder and
updated the embedded OS version on file system images. For a complete list
of new features, updates and bug fixes see the CHANGELOG (see also below).

Tag for the UHD release:
https://github.com/EttusResearch/uhd/releases/tag/v4.7.0.0

Tag for the filesystem release:
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.7.0.0

Installers for Windows and Fedora:
https://files.ettus.com/binaries/uhd/uhd_004.007.000.000-release/4.7.0.0/

PPA for Ubuntu:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
Thank you to everyone who has contributed by posting pull requests and fili=
ng bug reports.

Thanks,
Marian Koop

CHANGELOG:
# UHD 4.7.0.0

**Highlights / Main Changes**
  - Major updates to rfnoc_image_builder (a98ce26). This change adds suppor=
t for
    defining transport adapters in the image builder YAML files, adding cus=
tom
    modules, and more.
  - Updated embedded OS on file system images for E3xx, N3xx, and X4xx devi=
ces
    to Yocto 4.0 (kirkstone).

**New Features**
  - General
    - Allow installing only Python-based utilities (e.g., rfnoc_image_build=
er)
      by adding the ENABLE_PYMOD_UTILS option to CMake.
    - Added ability to query dot representation of RFNoC graph
  - Python support
    - Added DRAMReceiver class and amend rx_to_file.py example to use new c=
lass.
      This supplements the DRAMTransmitter class and simplifies using the D=
RAM-backed
      RFNoC replay block to when signal bandwidth exceeds available streami=
ng bandwidth.
  - CMake
    - We now search for a system version of Pybind11 before falling back to=
 the
      bundled version. The system version is preferred, and the bundled ver=
sion
      may be removed in a future release.
  - RFNoC
    - Image builder: Major update, which adds support for defining transpor=
t
      adapters in the image builder YAML files, adding custom modules, choo=
sing
      custom directories for build, IP, and intermediate files, building IP
      only, saving Vivado projects, and more. Image core YAML files created=
 with
      this version are not compatible with previous versions, and vice vers=
a!
      Also adds many more checks to avoid building bitfiles that are either
      incomplete, or valid but probably not the desired outcome.
    - Added support for defining custom register spaces in RFNoC blocks.
    - Added license checking subsystem. This allows creating RFNoC blocks t=
hat
      require a license key to operate.
    - Add device DNA feature for X310, X410, X440. This allows reading back=
 the
      FPGA's DNA, which is a unique identifier.
  - Embedded OS for E3xx, N3xx, and X4xx devices
    - With the switch to Yocto 4.0 (kirkstone), the SD card and eMMC images=
 no
      longer pre-populate the second system partition. Refer to the device
      specific "Updating Filesystems" section in the user manual for how to=
 populate it.
      This reduces the size of compressed .sdimg filesystem images.
  - X440
    - Added new guided log info mode to provide more information about the =
Nyquist
      zone in which the chosen frequency is located. These additional info =
logs
      are enabled by default. For disabling the guided mode, add the entry
      `guided_mode=3Dfalse` to the UHD config file in the "Global" section.
  - Examples
    - rfnoc-example now also generates Python bindings for OOT block contro=
l functions.

**Dependencies changes**
  - Increase minimum required version
    - Python to 3.7.0
    - Pybind11 to 2.7.0

**Bug Fixes**
  - General UHD
    - Fix issue with undefined HOME or XDG_CONFIG_HOME
    - Fix compilation error with boost 1.85.0 (closed issue 740)
    - Fixed cmake find_library for UHD to fail if the library is not found
    - Fixed setters for ALL_CHANS in multi_usrp
    - Demoted safe call logging to warning
    - Fixed outstanding clang-format issues
    - Fixed compiling with gcc 13.2
    - Removed superfluous usage of const in return values
  - Python support
    - YAML files are now listed as part of the package
    - Fix setting start_time having no effect
  - RFNoC
    - Add EOB to source port of null_src_sink block
    - Fix RFNoC graph action queue lockup on action exceptions
    - FIR filters now uses newer IP revisions
    - Reverse FIR filter coefficients now get embedded in DSPE48
  - B2xx
    - Fixed FRAC2 calculation (closed issue 684).
    - Fix DC truncation bias by adding rounding to DDC chain
  - X310
    - Fix warning about duplicate reg
    - ubx
      - update ubx xcvr mode options
      - write output power to correct LO
      - Fix width of gain register
  - MPM
    - Deactivate explicit DAD (Duplicate Address Detection) on int0 interfa=
ce
      since this is the default behavior of systemd v250.5 (Yocto release k=
irkstone)
      for static IPv4 addresses if the IP address is a link local address.
    - Correct outdated mender command in prints of usrp_update_fs utility
    - No longer import from from rpc_server when already importing usrp_mpm
    - Demoted log level of ECHO send error
    - No longer print iptables errors when setting up forwarding
  - X400 Platform
    - Add PPS interface to X410/X440 BSP
    - Add netlist make flow
    - Update PS DRAM speed bin
    - Replace Ethernet transport adapter
  - X410
    - Set Locale for ZBX Lattice build
    - Improve Lattice make flow
  - X440
    - Fix error in master clock table for 1000MHz mcr.
    - Place SPI into IOB on X440
    - mpm
      - Add error for recurring TA node inst values
      - Fix warning about different converter rates
      - Fix MTS skip for dual-rate
      - Use greatest converter rate for sysref rate
      - Add warning for bad conv rate order
      - Enable multiple LMK VCO rates per MCR
  - Examples
    - Fix rx_samples_to_file failure for multichannel fullpath.
    - Fixed bugs observing cmd argument -c in remote_rx.py example.
    - Updated tx_waveforms examples now also use timed commands during
      frequency tuning for all devices except for x410.
      On X440 this allows reproducing specified channel to channel phase al=
ignments.
    - Consistently comment out sections in rx_samples_to_file.

**Validated OS Environments**
  (Versions for build and runtime dependencies can be determined from the
   docker container definitions in the UHD repository at .ci/docker/...)
  - Linux:
    - Ubuntu: bionic (18.04), focal (20.04), jammy (22.04), noble (24.04)
    - Fedora: 37, 38
  - Windows: 10 21H2, 11 21H2
  - MacOS: Monterey (12.6)


National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Sa=
brina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Registered Offi=
ce): Dresden; HRB (Commercial Register No.): 22081; Registergericht (Regist=
ration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_DM6PR04MB63780E91414BCE097AEA4EB89FD32DM6PR04MB6378namp_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The UHD-4.7.0.0 release is now available.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">This release includes a major update to the rfnoc_im=
age_builder and<o:p></o:p></p>
<p class=3D"MsoNormal">updated the embedded OS version on file system image=
s. For a complete list<o:p></o:p></p>
<p class=3D"MsoNormal">of new features, updates and bug fixes see the CHANG=
ELOG (see also below).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the UHD release:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/rele=
ases/tag/v4.7.0.0">https://github.com/EttusResearch/uhd/releases/tag/v4.7.0=
.0</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the filesystem release:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/meta-ett=
us/releases/tag/v4.7.0.0">https://github.com/EttusResearch/meta-ettus/relea=
ses/tag/v4.7.0.0</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Installers for Windows and Fedora:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://files.ettus.com/binaries/uhd/uhd_=
004.007.000.000-release/4.7.0.0/">https://files.ettus.com/binaries/uhd/uhd_=
004.007.000.000-release/4.7.0.0/</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PPA for Ubuntu:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://launchpad.net/~ettusresearch/+arc=
hive/ubuntu/uhd">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</=
a><o:p></o:p></p>
<p class=3D"MsoNormal">Thank you to everyone who has contributed by posting=
 pull requests and filing bug reports.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Marian Koop<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CHANGELOG:<o:p></o:p></p>
<p class=3D"MsoNormal"># UHD 4.7.0.0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Highlights / Main Changes**<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Major updates to rfnoc_image_builder (a98ce=
26). This change adds support for<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; defining transport adapters in th=
e image builder YAML files, adding custom<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; modules, and more.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Updated embedded OS on file system images f=
or E3xx, N3xx, and X4xx devices<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; to Yocto 4.0 (kirkstone).<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**New Features**<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - General<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Allow installing only Python-ba=
sed utilities (e.g., rfnoc_image_builder)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by adding the ENABLE_=
PYMOD_UTILS option to CMake.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Added ability to query dot repr=
esentation of RFNoC graph<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Python support<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Added DRAMReceiver class and am=
end rx_to_file.py example to use new class.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This supplements the =
DRAMTransmitter class and simplifies using the DRAM-backed<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC replay block to=
 when signal bandwidth exceeds available streaming bandwidth.<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; - CMake<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - We now search for a system vers=
ion of Pybind11 before falling back to the<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bundled version. The =
system version is preferred, and the bundled version<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; may be removed in a f=
uture release.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - RFNoC<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Image builder: Major update, wh=
ich adds support for defining transport<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; adapters in the image=
 builder YAML files, adding custom modules, choosing<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; custom directories fo=
r build, IP, and intermediate files, building IP<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; only, saving Vivado p=
rojects, and more. Image core YAML files created with<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this version are not =
compatible with previous versions, and vice versa!<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Also adds many more c=
hecks to avoid building bitfiles that are either<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; incomplete, or valid =
but probably not the desired outcome.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Added support for defining cust=
om register spaces in RFNoC blocks.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Added license checking subsyste=
m. This allows creating RFNoC blocks that<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; require a license key=
 to operate.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Add device DNA feature for X310=
, X410, X440. This allows reading back the<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FPGA's DNA, which is =
a unique identifier.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Embedded OS for E3xx, N3xx, and X4xx device=
s<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - With the switch to Yocto 4.0 (k=
irkstone), the SD card and eMMC images no
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;longer pre-popul=
ate the second system partition. Refer to the device
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;specific &quot;U=
pdating Filesystems&quot; section in the user manual for how to populate it=
.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This reduces the size=
 of compressed .sdimg filesystem images.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Added new guided log info mode =
to provide more information about the Nyquist<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; zone in which the cho=
sen frequency is located. These additional info logs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; are enabled by defaul=
t. For disabling the guided mode, add the entry<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `guided_mode=3Dfalse`=
 to the UHD config file in the &quot;Global&quot; section.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Examples<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - rfnoc-example now also generate=
s Python bindings for OOT block control functions.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Dependencies changes**<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Increase minimum required version<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Python to 3.7.0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Pybind11 to 2.7.0<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Bug Fixes**<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - General UHD<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix issue with undefined HOME o=
r XDG_CONFIG_HOME<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix compilation error with boos=
t 1.85.0 (closed issue 740)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed cmake find_library for UH=
D to fail if the library is not found<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed setters for ALL_CHANS in =
multi_usrp<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Demoted safe call logging to wa=
rning<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed outstanding clang-format =
issues<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed compiling with gcc 13.2<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Removed superfluous usage of co=
nst in return values<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Python support<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - YAML files are now listed as pa=
rt of the package<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix setting start_time having n=
o effect<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - RFNoC<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Add EOB to source port of null_=
src_sink block<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix RFNoC graph action queue lo=
ckup on action exceptions<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - FIR filters now uses newer IP r=
evisions<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Reverse FIR filter coefficients=
 now get embedded in DSPE48<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - B2xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed FRAC2 calculation (closed=
 issue 684).<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix DC truncation bias by addin=
g rounding to DDC chain<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X310<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix warning about duplicate reg=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - ubx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - update ubx xcvr mod=
e options<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - write output power =
to correct LO<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Fix width of gain r=
egister<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - MPM<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Deactivate explicit DAD (Duplic=
ate Address Detection) on int0 interface<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; since this is the def=
ault behavior of systemd v250.5 (Yocto release kirkstone)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for static IPv4 addre=
sses if the IP address is a link local address.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Correct outdated mender command=
 in prints of usrp_update_fs utility<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - No longer import from from rpc_=
server when already importing usrp_mpm<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Demoted log level of ECHO send =
error<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - No longer print iptables errors=
 when setting up forwarding<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X400 Platform<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Add PPS interface to X410/X440 =
BSP<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Add netlist make flow<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Update PS DRAM speed bin<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Replace Ethernet transport adap=
ter<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X410<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Set Locale for ZBX Lattice buil=
d<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Improve Lattice make flow<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - X440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix error in master clock table=
 for 1000MHz mcr.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Place SPI into IOB on X440<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - mpm<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Add error for recur=
ring TA node inst values<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Fix warning about d=
ifferent converter rates<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Fix MTS skip for du=
al-rate<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Use greatest conver=
ter rate for sysref rate<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Add warning for bad=
 conv rate order<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Enable multiple LMK=
 VCO rates per MCR<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Examples<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix rx_samples_to_file failure =
for multichannel fullpath.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed bugs observing cmd argume=
nt -c in remote_rx.py example.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Updated tx_waveforms examples n=
ow also use timed commands during<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; frequency tuning for =
all devices except for x410.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; On X440 this allows r=
eproducing specified channel to channel phase alignments.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Consistently comment out sectio=
ns in rx_samples_to_file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Validated OS Environments**<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; (Versions for build and runtime dependencies =
can be determined from the<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; docker container definitions in the UHD=
 repository at .ci/docker/...)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Linux:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Ubuntu: bionic (18.04), focal (=
20.04), jammy (22.04), noble (24.04)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fedora: 37, 38<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Windows: 10 21H2, 11 21H2<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - MacOS: Monterey (12.6)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): Sabrina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Regis=
tered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeric=
ht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.&nbsp;
</body>
</html>

--_000_DM6PR04MB63780E91414BCE097AEA4EB89FD32DM6PR04MB6378namp_--

--===============2295123395253852252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2295123395253852252==--
