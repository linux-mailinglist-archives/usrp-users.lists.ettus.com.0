Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7FA910AFD
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2024 18:04:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 827113858A4
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2024 12:04:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718899466; bh=jBwujL2Ip9LDdgp7Pf+WvO1RCfRVYSBc39PU9JiPpfo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wgvw9oafroSZ/TY4beK0Rl6TwKvnOSeCShW8h0yXrL+VwlGz9MBN+RbNdU2Wg6i/C
	 Vh9TWXF0n9jeW1drihedZuWCiVNa0qA3q0v+yL40vk4xEetBaQG281/0UhWRYlnB3F
	 j2nQ7rrq6pZM/+2BWT8I8wKGEvutXRBMFyhBP0yqKfOSOJrXhNaGdM1ALPUHng7hEF
	 ikN55Yn7J/ToTEr/GyxeZGTlTLESuirBepgrxLJslWkl0Ve/uDF6SsnqRMx3DhBMuI
	 Z0Fvb8xcrdyaKjL2v+asgf9lyxT/p1o6ggcT0aB9G9RCUeyK3fVB/1lV8HFRrKKFzg
	 RGbO9FzqoombQ==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2063.outbound.protection.outlook.com [40.107.223.63])
	by mm2.emwd.com (Postfix) with ESMTPS id 46BF7385106
	for <usrp-users@lists.ettus.com>; Thu, 20 Jun 2024 12:03:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="NMySNlSY";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AD7LSMjn8Q4Lwlj5XeyA2xVlGvXQOnXEAoSJGyuj+6RO9Ho0lKHpDQwwGuInSW8cFCJQjhVBKhdl1HYNxr0p4AFEDFZGU6scS2SJddWMe37Pktc5tAHUavCklp0okDOaB3KtGTtgg9m8hg5AbwHniL6k/FEieomLvEcB/6l8fNBOGG+4Y36VTN2JwOgfJK1hA2OvU4EYzNx16dBsF/frvV0LqEs7BXImLNjtnU+RUTwo41Qs+iBJC/159ZvsSMuQTrptBj+nBTV3P3peCKYRkUe6HuXzQ8fdHy4fDPdK7nX4sHSy2vJGDsJnBEWOIOpQkAUiFcNpEkhA9niXVYnwoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmLrHgOY8h9acfcd8WPrKBd/tspFi9oCCdZyBZcbYqg=;
 b=OTLvj3LxYFlwEy4xh+AWS/Exabz2PXCz50R/Wg+JlSFGkOE1QuEZYguf03b6BI4eAQNB2xl4PpJFmy1y1k1qqCO+0ibb62zIOmyuZUWOrduQ2SFGl6ns+8jz96Anm3E7cAH9XUpIrj3dy0VoV9194AjrAfdABNA2VEZxb77K6DcBbYPBukFuaWsksUsbMw0L1ZEc+2wqVmRaIhu72O5fTTBJRe7HkCxLR+Z/h+dbITFq9DbIFP1fH34OfcyRoPO/oQ7c3JEMAmfCjvI3BLcK+5S1y7NGvl20HCAwF0EkUMhZDn40nES6x35XTwARMDPDX2xITuTxp7KJWK2pO4Tbhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KmLrHgOY8h9acfcd8WPrKBd/tspFi9oCCdZyBZcbYqg=;
 b=NMySNlSYjVBbvLIN7XCc0xkBeXyve8EPk8ubplhlySIyD9MfrMtSUQTBXcW9WPqo5jj2Jzla810Wdt+5sCv/k1ZvFsOVCOrEAiv+wsM/IUL6PYe0Mr4e518cPUndIgcidkcMDmQsEhCMcZYhghM2OORS8D+QvE7419Mi6PCNS0Y=
Received: from DM6PR04MB6378.namprd04.prod.outlook.com (2603:10b6:5:1e2::22)
 by CH0PR04MB7922.namprd04.prod.outlook.com (2603:10b6:610:ff::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Thu, 20 Jun
 2024 16:03:16 +0000
Received: from DM6PR04MB6378.namprd04.prod.outlook.com
 ([fe80::81b6:c39b:b3b:b56d]) by DM6PR04MB6378.namprd04.prod.outlook.com
 ([fe80::81b6:c39b:b3b:b56d%4]) with mapi id 15.20.7698.017; Thu, 20 Jun 2024
 16:03:16 +0000
From: Marian Koop <marian.koop@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [UHD] Announcing UHD 4.7.0.0 Release Candidate 1 
Thread-Index: AdrDKHpLOqoGL5kGSJufz1CxcBa4LA==
Date: Thu, 20 Jun 2024 16:03:07 +0000
Deferred-Delivery: Thu, 20 Jun 2024 16:02:38 +0000
Message-ID: 
 <DM6PR04MB6378DBC2B48D8EBEA92CBE5C9FC82@DM6PR04MB6378.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=90c59f2a-61dc-480b-907c-6b88dada5a36;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2024-06-20T15:41:36Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR04MB6378:EE_|CH0PR04MB7922:EE_
x-ms-office365-filtering-correlation-id: ac289c13-64c8-4961-b44a-08dc91427ece
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?gN5ry/ynt7CtFor2DorDZtwidoDPkVtD5Mrx6W8iBvw4IByv0xKvBcwu/Q6u?=
 =?us-ascii?Q?al+OrcmJc2Hs0dJQIX4WAGR7NC9QOcnZd9BJ5DqoZPY8xpGx8ocEQiJ9nFL9?=
 =?us-ascii?Q?0gLNYYbnV2QSOk0YygTQW+ERWZk9OwhaNO7CFnpuXZhFS+DMdzAO0FcxIwTP?=
 =?us-ascii?Q?Mwtdyff3tGkiGOAq+YjdZ2ZXEyGV95KcFDZuJ92kM2D1nRDDMAw8InZ+kjHX?=
 =?us-ascii?Q?9PQeOLQTVgkfRnz6AX20xM8fDaw1QZ7AQmilNLuv4qXu8g+4z2Bsf+iIdhKR?=
 =?us-ascii?Q?9NakvLoagfPom5hcmq6j3RAHRk9zTlXxabQWnsSll3p8uNMD/cvQLsNZ62Ek?=
 =?us-ascii?Q?18m0CWlFgKDltWtCGTBOysGVPWzd0Pe1cmPCa0oaMhTTh1ZAtX7HQQ8Yg4Dv?=
 =?us-ascii?Q?kix+EkPxetoCWh2ymIsODcZvhEVD+Q0bzcFa7YsCjStA9USoxIWJHPZYgw5c?=
 =?us-ascii?Q?wC3OpkIa7MDD98O1e9CZclNI0/v1VecYDRl3KAPXYEgzA6UDdEmLsr5VJCuT?=
 =?us-ascii?Q?bo6lSFSYpOHXi3rz+Ap8SqB5GfJDRXmQr4BCSZPVpuwYETV2+c93ptO/HiU3?=
 =?us-ascii?Q?HS/SRq3DIT+bVmhAc9mq6fyHSABwvOAWKLWeP+xsfSCaV1vtL0zBLsTBN3Mu?=
 =?us-ascii?Q?CjBo2NeG+C4+0WDjdtSZJ/0iAX1p7g0aN1EB16ILyhRspWutoqD0dmeP6gWU?=
 =?us-ascii?Q?wLBWDzq+TZd9w4GbSmQZ7hHIpGV8vmgtzQUWWB4CDF9B1jKU/vgj4WO2TGI0?=
 =?us-ascii?Q?kB/GZZjqPJ3ykia1yxB3QYOCJMgByNgD5Op/XiERyursDWdQf1r6D+Tpyf03?=
 =?us-ascii?Q?ndNV75MMcZ4Rm81HO+c2XXsrEdNp5ibJC2d6h8gJJJFDEodtBXr2Qd5shipK?=
 =?us-ascii?Q?CqCIvcsxdcRCsLbgmhVJVlOtiJOxq4WV+vJJh8RVWQu5GqquD1xdfbmHGgQf?=
 =?us-ascii?Q?4KxKEf0WgQhre53YG9clumm4TRhF3NytPhdXkv/9EufASDhDGKRtOhDsHEPo?=
 =?us-ascii?Q?wEt5gQHdRDc9FuiJO28IgjylyPRAM9QWLvW6m1D88bYCVYdlGFrveHkCVq7P?=
 =?us-ascii?Q?zhjAXMd0RiF6QpZ4kbIWzePQx1wppLPcnSDQdUMhN1cWQynbFi8o2/ooSOEJ?=
 =?us-ascii?Q?fy7hIuTzjWbabJG3RZTTBi/RX/+/OgJdlMc5TJtkE6B7fyZQz4pCqYz6++Zd?=
 =?us-ascii?Q?EDdmKB6ixM73YwzI+kGZpWj2be1O5kyMigukJBysGLJ7j+jbzB4xKcTRxAx2?=
 =?us-ascii?Q?M20lmD9wXoeatT4SjXJoCoL5HCN8OC9EcnPDubqAFhE1+zJ3KJxpccFPbfgF?=
 =?us-ascii?Q?9vFolWuWGvJplWZ/Ix5Jt9jw?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB6378.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011)(38070700015);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?qFht9CqrPL4b+FXFCKKTRjGcmQysvThpJRufGJEuG23sxSwcML0bZaBhULOZ?=
 =?us-ascii?Q?NIrc9lh/MnUVfivZWjrNlzGRgcPmOkP1koHw3uVFb/2UqoGOHBvsDu5aZ1TO?=
 =?us-ascii?Q?GSfvS0celJ7n0DN85kmJn2YQpRQXc711edzOL3111KABFeNjUu7by1l3GCSN?=
 =?us-ascii?Q?UNfcY4XKaVmNiGTFx43mSXMOO3Rzci0F6wpU4BbplDHDvOLQcx8IZ/TJxZGn?=
 =?us-ascii?Q?8yiIVdUTQ9cA78BFEqh/Mg21atWo6p6NzxgJJ4I0JqVZJ4ZZbB6IIqj4Fybk?=
 =?us-ascii?Q?L2zAasZ7qd7AGd+wcrqYDFPzdSAzMe7x/1alMYwoiOuhywQfe3YmuoY5dmda?=
 =?us-ascii?Q?NdFmyBm+a2PpcBQCrLR9rcd3YsWscJHutH0/60Bff5dNv2JlMQt5pCgwA7RF?=
 =?us-ascii?Q?QsmKP3yWWgrVBoxLqaFkEhJVirdF0RC7FuLgOmNcBzTgrpeaIBoQwQXTOHB3?=
 =?us-ascii?Q?8EO6c7qGvHEz56DOhJweJiBfHCiGqvj9eej9NTvqe+ez39XRbRD4uztPrR3F?=
 =?us-ascii?Q?0HbBy9SQiXsAzlqi1KqWKHNrA1hLYLXo7Km/1xTZtS4HhUb6zYoNC2vIjzoi?=
 =?us-ascii?Q?Y363NFOB4CNfKvy9KSZyTeL3a7v/eDVqLD4VzwNhFup9ibNGlXV/dL+mfCZ+?=
 =?us-ascii?Q?Ds1EN69ZLu4GhFsPWgYpyXKcg6bvqtGuUD9E37kbje1LEMEAF0pC+o2hu2bV?=
 =?us-ascii?Q?RJoUAwtkdNHncNyNKtsZmbUXq6juGkmj1fAQK4MtOxcwK4mq4++XyT0CZSzI?=
 =?us-ascii?Q?dnncuvysJyUJPK3QPLMkzn9rs5bG1F75b40tyc/SJCMRjhxIY/fOkI0CwkAH?=
 =?us-ascii?Q?FlxbqSTNp/+mb4bIA7dKxMpQ9hb66ey3h6fIjvIDRK/M2dY4JTwt0G0JbdEP?=
 =?us-ascii?Q?NmBWsfVJgPUwNQ89q8N5rp4IBD/PlSmitfQXkiarv42Pm13QvYSPwWfLvT2x?=
 =?us-ascii?Q?/KF7gHOXXBcFCRckNKtFxDUYvC7yQlVI/A+hpHwwyN/FpKHmZ7vmpxoUnlDc?=
 =?us-ascii?Q?eCuLGYGlJ1sYDKAtN5jYirnN1EFmDVUgFaNu1fqrQwRsBnYi4yE7tCzprXOk?=
 =?us-ascii?Q?60rZsMbfIM/+KF7kLV534RE/6ghdiQN7gIH6aphjgBT1REarFiHztM/sOLmR?=
 =?us-ascii?Q?tOhK924o+zdxVszoK+4rWTRaket9b0arjz/N9/GQVRFk/Qx/v+tV6lJHWOEc?=
 =?us-ascii?Q?xjTNPDzkb2Eqj3VeKKNmu2Yji0p010LMi/KVxdgQDIBHGFXgdmeTkPCZyNa9?=
 =?us-ascii?Q?Jb6/hKC04aGpJ2kNJr459u4M8cL72E/k1EabhByQAltPkxB2MdWNGOxwHREw?=
 =?us-ascii?Q?a3yzuK7BXwa3ptS/W1FBzAQbcCjP6sJBS/V4il23mwCff4bqvGHf5wXrSspp?=
 =?us-ascii?Q?xDk8ydidXkR6Fs055zuJ8v0cuZMqselcEeXVl3uKx0ncoBWcl+OfmRODUely?=
 =?us-ascii?Q?hbYOidI0p5Iu1ARa83wyYxYD0UtH6pQSV7X687rb1eJFfYj4gaciLOMCV2J2?=
 =?us-ascii?Q?qfT1VUaFYyCSES6QaX2oaMxzUoqYHjxyeYPIW6b2wG2OHOgw79V9aP3T88gu?=
 =?us-ascii?Q?Y2IcHrLUo1Oab4WS+OwXIvMJs7Sw/ZgX51JgQpFq?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6378.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac289c13-64c8-4961-b44a-08dc91427ece
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2024 16:03:16.0961
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p73j/6wT2V4ApsYExtAgk359B+Ixq+MGns8xwqyDvnqqNBQLM98F+pUuIjbAtl3E+mIBKonx09PSlv5o5pCGvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR04MB7922
Message-ID-Hash: I3EXAO7HEXRMWNJUV5PVGH3PYPIYGSUH
X-Message-ID-Hash: I3EXAO7HEXRMWNJUV5PVGH3PYPIYGSUH
X-MailFrom: marian.koop@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] Announcing UHD 4.7.0.0 Release Candidate 1 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DLQVCAVE7IO6INQYWGNMPYA7QFE2TCR7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8379526099060778454=="

--===============8379526099060778454==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR04MB6378DBC2B48D8EBEA92CBE5C9FC82DM6PR04MB6378namp_"

--_000_DM6PR04MB6378DBC2B48D8EBEA92CBE5C9FC82DM6PR04MB6378namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

The release candidate of UHD 4.7.0.0 is available for testing.
This release includes a major update to the rfnoc_image_builder and
updated the embedded OS version on file system images. For a complete list
of new features, updates and bug fixes see the CHANGELOG (see also below).

Tag for the UHD release candidate:
https://github.com/EttusResearch/uhd/releases/tag/v4.7.0.0-rc1

Tag for the file system release candidate:
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.7.0.0-rc1

Thanks,

Marian


CHANGELOG:
## 004.007.000.000
* Highlights / Main Changes
  - Major updates to rfnoc_image_builder (a98ce26). This change adds suppor=
t for
    defining transport adapters in the image builder YAML files, adding cus=
tom
    modules, and more.
  - Updated embedded OS on file system images for E3xx, N3xx, and X4xx devi=
ces
    to Yocto 4.0 (kirkstone).
* New Features
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
    - Added support for defining custom register spaces in RFNoC blocks.
    - Added license checking subsystem. This allows creating RFNoC blocks t=
hat
      require a license key to operate.
    - Add device DNA feature for X310, X410, X440. This allows reading back=
 the
      FPGA's DNA, which is a unique identifier.
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
* Dependencies changes
  - Increase minimum required version
    - Python to 3.7.0
    - Pybind11 to 2.7.0
* Bug Fixes
  - General UHD
    - Fix issue with undefined HOME or XDG_CONFIG_HOME
    - Fix compilation error with boost 1.85.0 (closed issue 740)
    - Fixed cmake find_library for UHD to fail if the library is not found
    - Fixed setters for ALL_CHANS in multi_usrp
    - Demote safe call logging to warning
    - Fix outstanding clang-format issues
    - fix compiling with gcc 13.2
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
    - Updated tx_waveforms examples now also use timed commands during freq=
uency tuning.
      On X440 this allows reproducing specified channel to channel phase al=
ignments.
* Validated OS Environments
  (Versions for build and runtime dependencies can be determined from the
   docker container definitions in the UHD repository at .ci/docker/...)
  - Linux
    - Ubuntu: bionic (18.04), focal (20.04), jammy (22.04), noble (24.04)
    - Fedora: 34, 35, 36
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

INTERNAL - NI CONFIDENTIAL

--_000_DM6PR04MB6378DBC2B48D8EBEA92CBE5C9FC82DM6PR04MB6378namp_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
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
<p class=3D"MsoNormal">The release candidate of UHD 4.7.0.0 is available fo=
r testing.<o:p></o:p></p>
<p class=3D"MsoNormal">This release includes a major update to the rfnoc_im=
age_builder and
<o:p></o:p></p>
<p class=3D"MsoNormal">updated the embedded OS version on file system image=
s. For a complete list<o:p></o:p></p>
<p class=3D"MsoNormal">of new features, updates and bug fixes see the CHANG=
ELOG (see also below).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the UHD release candidate:<br>
<a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.7.0.0-rc1">=
https://github.com/EttusResearch/uhd/releases/tag/v4.7.0.0-rc1</a><o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the file system release candidate:<br>
<a href=3D"https://github.com/EttusResearch/meta-ettus/releases/tag/v4.7.0.=
0-rc1">https://github.com/EttusResearch/meta-ettus/releases/tag/v4.7.0.0-rc=
1</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Marian<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CHANGELOG:<o:p></o:p></p>
<p class=3D"MsoNormal">## 004.007.000.000<o:p></o:p></p>
<p class=3D"MsoNormal">* Highlights / Main Changes<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Major updates to rfnoc_image_builder (a98ce=
26). This change adds support for<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; defining transport adapters in th=
e image builder YAML files, adding custom<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; modules, and more.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Updated embedded OS on file system images f=
or E3xx, N3xx, and X4xx devices<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; to Yocto 4.0 (kirkstone).<o:p></o=
:p></p>
<p class=3D"MsoNormal">* New Features<o:p></o:p></p>
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
DRAMTransmitter class and simplifies using the DRAM-backed
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RFNoC replay blo=
ck to when signal bandwidth exceeds available streaming bandwidth.<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - CMake<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - We now search for a system vers=
ion of Pybind11 before falling back to the<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bundled version. The =
system version is preferred, and the bundled version<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; may be removed in a f=
uture release.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; - RFNoC<o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - X440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Added new guided log info mode =
to provide more information about the Nyquist
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zone in which th=
e chosen frequency is located. These additional info logs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; are enabled by defaul=
t. For disabling the guided mode, add the entry
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`guided_mode=3Df=
alse` to the UHD config file in the &quot;Global&quot; section.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - Examples<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - rfnoc-example now also generate=
s Python bindings for OOT block control functions.<o:p></o:p></p>
<p class=3D"MsoNormal">* Dependencies changes<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Increase minimum required version<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Python to 3.7.0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Pybind11 to 2.7.0<o:p></o:p></p=
>
<p class=3D"MsoNormal">* Bug Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - General UHD<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix issue with undefined HOME o=
r XDG_CONFIG_HOME<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix compilation error with boos=
t 1.85.0 (closed issue 740)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fixed cmake find_library for UH=
D to fail if the library is not found
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;- Fixed setters for ALL_CHAN=
S in multi_usrp<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Demote safe call logging to war=
ning<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fix outstanding clang-format is=
sues<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - fix compiling with gcc 13.2<o:p=
></o:p></p>
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
 issue 684). <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;- Fix DC truncation bias by =
adding rounding to DDC chain<o:p></o:p></p>
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
ault behavior of systemd v250.5 (Yocto release kirkstone)
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for static IPv4 =
addresses if the IP address is a link local address.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Correct outdated mender command=
 in prints of usrp_update_fs utility<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - No longer import from from rpc_=
server when already importing usrp_mpm<o:p></o:p></p>
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
ow also use timed commands during frequency tuning.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; On X440 this allows r=
eproducing specified channel to channel phase alignments.
<o:p></o:p></p>
<p class=3D"MsoNormal">* Validated OS Environments<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; (Versions for build and runtime dependencies =
can be determined from the<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; docker container definitions in the UHD=
 repository at .ci/docker/...)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Linux <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;- Ubuntu: bionic (18.04), fo=
cal (20.04), jammy (22.04), noble (24.04)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - Fedora: 34, 35, 36 <o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;- Windows: 10 21H2, 11 21H2<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - MacOS: Monterey (12.6)<o:p></o:p></p>
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
em.&nbsp; <br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
INTERNAL - NI CONFIDENTIAL<br>
</p>
</body>
</html>

--_000_DM6PR04MB6378DBC2B48D8EBEA92CBE5C9FC82DM6PR04MB6378namp_--

--===============8379526099060778454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8379526099060778454==--
