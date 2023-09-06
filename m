Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 078247944D2
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 22:55:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BD6F3853BE
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 16:55:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694033749; bh=3pYHYKQU9KGAOMSAcfCoyc/b+q09O2f+m2C235guh9E=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Pu585N72vovN+cH+fzkjOxIHoNfnMtJl/m9aAYdbL0ucRPQr1OaC6GalqQkmeZrI9
	 o3jvASYPNRRAkJB7k5tZUPBXKVAP8uLxg88CG6Iuq9E+i9rMRGBcdtQzvukYwnsyIp
	 akL2dlu6jjW/FoG9oc8soKTAiH0jqTCT2UOq2mPkGzW9KdMBobjgjFIOo+9MAaMN3X
	 K579jLJ0L7GKLeel9S3QTfr4VxJ51ddrHzgxc0cbNANHabYcZViFmY7ub+WQjjQBil
	 YkY8t9Msa3Yy3Ju0JYj0xAkFMrryO9Ye4oelpfTrCcUz3K5z6n5VcW6URPdmJ2HkT/
	 oylmTIs4pSBoQ==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2094.outbound.protection.outlook.com [40.107.243.94])
	by mm2.emwd.com (Postfix) with ESMTPS id AFFFB384C59
	for <usrp-users@lists.ettus.com>; Wed,  6 Sep 2023 16:52:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="JJsdLviZ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GzTj/os15qXCF0wz+ys8j9MB3xwdLpn38+vjN8mkOhMq7Pk83LzVI8sanxxiTTL8Ktw5Qd/CFbN3q2G6eBPttEjJt8Oyj/UEfhuWI96wDvlS/LQXn+5Whf4SJho5XT1KNv/vsvG2+h0KQPNDH2E+7/ESfzWnxbJlCrS5xwHhXmiayOxTB/igTxyYNP16TLz85CckBy/ZK9fImjtSbRnAabTKYnoDw8jtNb75v9n+xvUxY0ID8a5HYbAyNcJOyzVLcXCl5JVA6jsYIVxX5q7VgmkKN83yjANyPkr0crDWx+wARSfvXbpCm0MJaPyDaxlf8M5Omz1vCz5Mb8TuBiYAew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dfEmgGlpodpGAmiQBvxIbmQowv3WWYw1FVNLQgvXGK0=;
 b=Neyjt9aWgNcNB+XWhhTZuR/sybSf07S4GOyht9iiQEzGzqMcLsIj799nZ4seyM4GhrBhD0uVrvjM0Ojm5+Eu4D3F3NXI3oDY/I0RKUgE8PCwv8TePGAdP8iStA4vvAnb3vWjOqw5CLHFph8VZSKxIonRBdUjRlO/6/L7wbdT8q+Kh6zYiIMgFXWzb8Dx9ErSpE9RznMWgI85CmJPr+cCjU5pdeMNQqM/UhkbwjZVl0rh06C/lTMBDXp7HPh4M9o4l104GW8PQlG2Ycs74ciZ8WgttrMIMEG2EsSiA358SOdaybvTLVSvttQDSw0i1GiJ/KIFBPYzwDbthGZAbtlQBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dfEmgGlpodpGAmiQBvxIbmQowv3WWYw1FVNLQgvXGK0=;
 b=JJsdLviZUK4Hz6mZlQt8dppsvX3fuolVfy6iD+4btPS5G2mhr/kEwLHaIGA+mOKLcbXjNGSWwyNzWlS2tFtRUdrMmcsPCMsqjNF1fdii+MG/GSFHA9RYMQN5B3lZEbNfJl7uL1zdFQeOi1ORLBcumw1K5p1cY/BPoD032DJFcDs=
Received: from BL0PR04MB4484.namprd04.prod.outlook.com (2603:10b6:208:41::33)
 by SA0PR04MB7420.namprd04.prod.outlook.com (2603:10b6:806:e8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.25; Wed, 6 Sep
 2023 20:52:39 +0000
Received: from BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::507d:cef8:9741:dc1a]) by BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::507d:cef8:9741:dc1a%4]) with mapi id 15.20.6768.024; Wed, 6 Sep 2023
 20:52:38 +0000
From: Aki Tomita <aki.tomita@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [UHD] Announcing 4.5.0.0 Release Candidate 1
Thread-Index: AdnhAfCUh/9fM5ycSJauZN8t0Ezolg==
Date: Wed, 6 Sep 2023 20:52:37 +0000
Message-ID: 
 <BL0PR04MB44844201B9382169F713C834F5EFA@BL0PR04MB4484.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=5735a27a-9c7d-4e12-bff3-248ae04fbf7b;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2023-09-06T20:36:26Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR04MB4484:EE_|SA0PR04MB7420:EE_
x-ms-office365-filtering-correlation-id: 06f31f96-eae7-442c-6c9c-08dbaf1b344b
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ESm7bFNF2WBwLe8gEu48LDqrsEA3P3bMMUOimpva/AGCXg8fV6d0w1fvitl9cFrGnY3GHewhUsi0dxbh0qJ3iCEtpnBztsOx6zcj8TeXJmVTN6mQo5CV9xcNbi25mcBCxQyj6BKNc0sZmi2o+iuJv4QQfs1edlLxb5WgPFYmh3XqNIR9eMaML+nAmer5dkOvLp/5KVCCbwrIWJJaWJNt0q2M1TJ0vHHC1ms+BbOUS8aBpEAEtmyJRE4gvB7PjfGUo+Qy7V3A6nHGNtCXdFI4h8WTSvoJdem5wGg4V3oDfL2f5+gUQENwt8zMGoEgBm0YAG26ks4TpgP/OWnMvjEfOmSsYAJCAWwrUzKa6vL+JlKReVPd6IJ8UvNsLUCQuq44hKgm/oiKzA7g1f/LQ5zf5widc6uhbWpkbapO4U4Ah27A3yaM3aaCpQFLBR+0616d4i5ibInsl2ZZVdc/fCbRluRoHBuh6BHw5sLGywH4C2pKsswEj9ZGnYVZ+g69DRz1cXhe5KV2iRt1DYyO8JeS1u36ZxPGc+z5K3dK8vRvsoc3MR7ZTkK66UbhCRkJ1pU8KHxgjdoTpRGpPgkyZqbdWFdQe195iTUeY/SFlC5cbehEp/EUHGfePcQx7OHNHcA5uw4XQY+1R2+pfDXGzK3bYg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB4484.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199024)(1800799009)(186009)(2906002)(86362001)(33656002)(26005)(55016003)(478600001)(6506007)(7696005)(71200400001)(966005)(83380400001)(38070700005)(38100700002)(122000001)(166002)(9686003)(9326002)(8676002)(8936002)(41300700001)(44832011)(52536014)(5660300002)(6916009)(316002)(66946007)(66446008)(66476007)(64756008)(66556008)(76116006)(30864003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ks/hOa8qIhDO8paxobKnOZ/HXDWrxP+yjp18sl7LLn60RRPWsM5CR3OecLoX?=
 =?us-ascii?Q?Mt0ZLCIQ+uZqLUkO51/qg/ZkufoYZEVS75IsaT72SDpXYk0QHe5GoxIkEQQF?=
 =?us-ascii?Q?y1tkzDoI6l1jSJ8uCzSWtUtgx+6qj066ZOHrD34En/Kgz/KqHDrc1/lUlbuv?=
 =?us-ascii?Q?ai1c5d0lVU2/j4/Pl/YJaBxoDQMnzRtNHZhkNRf6GsMuMGkWzqDL4zYKnrT6?=
 =?us-ascii?Q?Zvfw2EpKBZQa3oaXIAmp/Ad2Q9I5kH4zCBvbT/PukaxJtNCfZCkdQCfEU8Vx?=
 =?us-ascii?Q?ey2iXt/fhvSJLQk2Eax8meMSE1+Yp4p0n7ePbpU1OX4V8fK+K2kgVxYtcqBU?=
 =?us-ascii?Q?jWpk/9fHS6hxej+l3slY9+B/jmUteWgTo7M3H7gc4QvNXmKLgtf2l1ppT1Vc?=
 =?us-ascii?Q?WX2hRM5I9R3GTpFM2jJFqLU263zq1KCili/gYOwa++BjXXIEjhLmtjY9bDqR?=
 =?us-ascii?Q?qUzy/j9O+MY8NPjrSrsMG910v3EXeinoGG7PDJ1mhs3kGaKVQv6Atn/otDnx?=
 =?us-ascii?Q?XKDJD9gTbb5w4Yes5uog00UNujDl5bvHZPWqzNv9q6mGed71MFUZSzkEiIAR?=
 =?us-ascii?Q?fgEAbCuZzEPmrn5I4I3LQITVbelat5eVWZpQMXGM1zcIaoSmxGSrwqY5c6iM?=
 =?us-ascii?Q?3q/our6pTyWaEDRvhji/P79mdBqYVEHmQK1/04s1JxuF6xCkVHpCWh33ulOu?=
 =?us-ascii?Q?/n+xTrOkzCqT1aS1UWeecidcZp8ALN8Q9mUE9Q0Qt50x4VYEylOHeYk1fiVh?=
 =?us-ascii?Q?PRhAMg6x/xquZ1UWILYB1c+4K6v4AeWLr2rXmuXIvVPSjD1XU7xSHwzDM/ec?=
 =?us-ascii?Q?5HPy1PgMxuRzhMD0SMC1QtE6pZx2XJSWl5Lu2xjgDYS1w+r1U70qjFIVoC3+?=
 =?us-ascii?Q?86hAOrsylS1pR6N7GpHuyUpHgQCgnUwAJ5X4Er04wmp/GQQLWFey3sEDKcfG?=
 =?us-ascii?Q?wJaYVxLVjX+T7ATNyYh2qmPTNuCg1/r+xYe1/whct0qNTN9dimPvwIiDFotj?=
 =?us-ascii?Q?/K3Pq/34Yt8uhDOZw7f4AB9C1uB/JsoTpXA/U4SBdNwgKKACrtI+wg/ZypyD?=
 =?us-ascii?Q?XxGPZA3Rypt6lVfAopFEh6UMLzU91GemH9go+qE6PJA/jLoNct1otF6bE+hi?=
 =?us-ascii?Q?5D9W7F00jJKz/+aJzftOh1fH2ze6nX4OUsBNxFTjjldvgh991Lpw+lgpmC2m?=
 =?us-ascii?Q?t9Q7fxDjHiUFPXG/4DLWwB7+HiamZLxZb6qLiifK9rrZn/op3joGGtVaDNM2?=
 =?us-ascii?Q?P6sxrx9DZte4oevt5RRvJY2al/UluV8tZEy3LB7TDICztNB5At+BJyGF4gWk?=
 =?us-ascii?Q?RWkJXId/Yn4b0B/GN8/fzMtzuUALkY6vu4wsMgLYH/244+yqJKgrv7DLA5Q3?=
 =?us-ascii?Q?WNvmMrJlX+uCwUNXR9rVrfH3troaGzkhP4+Dz6C2rT+hXalGDbQMKLNGd6Ok?=
 =?us-ascii?Q?6BYvLLviYLUGkTb18Gva6HO2AZVO5HJ7Vy0S1xj70dp1Pth5RiaTDtdq2Ntb?=
 =?us-ascii?Q?hl7ldlrNQD8Jl4h7PCBwvJqkCnl2pB3EOl/zP/stozkMzVSaVeTyNLCMt3Iy?=
 =?us-ascii?Q?v573rXtU4p3YaZR3UYw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB4484.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06f31f96-eae7-442c-6c9c-08dbaf1b344b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 20:52:37.9064
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vETfLfYqAmjZceFnUDwMZLOEmMvF3pAPMOWpGrzIOq6IYorjYtCpT2pWrDCvBQ1R9xa2qtvrhCmZRMoz2TYNJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR04MB7420
Message-ID-Hash: SCSYXMPRUSZ6UXMUC3N2ETFEWAKIRDEB
X-Message-ID-Hash: SCSYXMPRUSZ6UXMUC3N2ETFEWAKIRDEB
X-MailFrom: aki.tomita@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] Announcing 4.5.0.0 Release Candidate 1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DLEAX6STVQ35NZBIOM2KPPLFDCWMITFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2905065711549645810=="

--===============2905065711549645810==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR04MB44844201B9382169F713C834F5EFABL0PR04MB4484namp_"

--_000_BL0PR04MB44844201B9382169F713C834F5EFABL0PR04MB4484namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

The release candidate of UHD 4.5.0.0 is available for testing.
This release adds support for the NI Ettus X440 as well as other bug fixes.=
  Copied is the changelog below.

Tag for the UHD release candidate:
https://github.com/EttusResearch/uhd/releases/tag/v4.5.0.0-rc1

Tag for the filesystem release candidate:
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.5.0.0-rc1

Thanks,
Aki

## 004.005.000.000
* b200
  - Fix invalid RF switch positions
* ci
  - add attempt number to uhd build artifact name on failure
  - Add conditions for embedded builds, HW tests
  - add pytest args option to test dev pipeline
  - add step for x440 embedded runs
  - Allow internal fileserver usage for MS installer builds
  - Auto-detect conditionals for pipeline stages
  - Default to internal fileserver for FPGA images
  - Disable PR runs for draft PRs
  - Enable X440
  - Fix swallowed return codes in CI script steps
  - Fix the chocolately version to use
  - fixup typo in x440 sdr-test0 template
  - increase build timeouts to 90 minutes
  - increase win docker image build timeout
  - Remove Fedora 35 and add Fedora 37
  - select docker image repo directly at container endpoint definitions
  - select docker registry based on branch
  - splitup x410 test stage in hardware test dev pipeline
  - Update CLA Assistant to v2.3.0
  - update docker builds to run twice a week
  - update docker service connection
  - update to build docker builds for all release branches
  - updates for new E320 in devtest system
* clang
  - Apply clang-formatting to all C/C++ files
  - Modify files for treatment with clang-format
  - Update clang-format for version 14
* cmake
  - Fix auto-detection of Python install directory
  - Fix linking DPDK when installed at non-standard location
* cpld
  - Adapt CPLD updater for future X4x0 dboards
* debian
  - Fix copyright dates in changelog
* devtest
  - add exemptions for x440 python API test
  - correct docstrings with example being run
  - disable rx_samples_to_file_test for x440
  - fix typo in error message
  - gpio test updates
  - remove benchmark_rate test for x440
* docs
  - Add page on timed commands
  - add python package requirement for usrpctl MPM reset
  - add updated msgpack rpc package
  - b200: Improve docs (auto MCR, GPIOs)
  - Document throttle stream arg
  - Fix argument for uhd_image_loader in E3xx docs
  - Fix docstring for get_block_chain()
  - fix typo and consistency in usrpctl docs
  - Improve documentation on timekeepers
  - Make X410 dboard a subpage of the X4xx page
  - rfnoc: Document RFNoC overrun handling algorithm
  - Update clocking theory of operations for X4xx
  - update docs for reset command
  - update FPGA build docs
  - Update X4x0 manual
  - Update X4xx manual wrt. self-cal
  - x410: Document UC_200 image flavor
  - x440: Added FBX to UM daughterboards page
  - x440: Extend X4x0 Usage Manual for x440
* examples
  - Add power controls to rx_ascii_art_dft.cpp
  - Add throttle to replay_capture.py
  - Amend tx_waveforms.py to use DramTransmitter
  - Fix play region in replay_capture.py
  - Remove default --ref and --pps values
  - rx_samples_to_file: multi_streamer option
* experts
  - Add force_dirty() call
* extension
  - windows: Fixed linking extension example to uhd.lib
* fpga
  - Add BUILD_BASE_DIR option to makefiles
  - Add BUILD_SEED variable
  - Add time changed pulse to timekeeper
  - Add X440/FBX support
  - ci: Add MAX_CPU to pool demands
  - ci: Add X410_UC_200 to default bitfiles
  - ci: Add X410_UC_200 to release pipeline
  - ci: Enable publishing to internal server
  - ci: Fix branches
  - ci: Include modified manifest in artifacts
  - ci: Support parallel jobs for IP builds
  - ci: Use different seed for each job attempt
  - ci: Use repeat_fpga_build for pipeline builds
  - Clear clang-format settings for FPGA code
  - docs: Add system memory recommendations
  - docs: Clarify design tool requirements
  - Fix RFNoC OOT Makefile inclusion
  - lib: Add axis_pkt_throttle.sv
  - lib: Add clock_div module
  - lib: Add ctrl_port_to_wb_i2c module
  - lib: Fix IPv4 CHDR TUSER width
  - lib: Fix Vivado warnings
  - lib: rfnoc: Add resize capability to chdr_stream_endpoint
  - lib: rfnoc: Make RFNoC packet gates removable
  - lib: rfnoc: Remove redundant packet gate
  - lib: rfnoc: Support multiple port widths on crossbar
  - Reformat javascript in doc
  - rfnoc: Add DEVICE_FAMILY to stream endpoint
  - rfnoc: Add throttle to stream endpoints
  - rfnoc: Add ULTRASCALE to chdr_ingress_fifo
  - Synchronize X300 RX frontends on time change
  - tools: Add repeat_fpga_build.py
  - tools: Add X410_UC_200 image to X410 package
  - Update all RFNoC image core files
  - Update RFNoC YAML copyright
  - x400: Add 1x64, 2x64, and 1x128 DRAM interconnect
  - x400: Add CG_200 RFNoC image cores
  - x400: Add ifdef to remove QSFP wrappers when unused
  - x400: Add support for X4C, C1, and UC variants
  - x400: Add X440 to default make targets
  - x400: Add X4C_200 RFNoC image cores
  - x400: Fix DB1 timekeeper strobe
  - x400: Fix PRC divider register map
  - x400: Fix SPI trigger clock crossing
  - x400: Make transport adapter width configurable
  - x400: Remove CPU_W parameter
  - x400: Set QSFP LEDs on startup
  - x400: sim: Add 10 GbE with wide CHDR
  - x400: Use x410_200 image core for x410_100 images
  - x440: fbx: clean up I2C triggers
  - x4xx: Refactor MB CPLD code for future devices
  - x4xx: Rename x410 -> x4xx for common DTS files
* github
  - Fix URL for mailing list
* host
  - Add cstdint include to fix gcc-13 compile.
  - Add in OpenBSD support to uhd::path_expandvars
  - Bump minimum gcc version to 7.3.0
  - doc: Add documentation for tertiary, quaternary QSFP adapter
  - fix & improve EAL args for DPDK v21.11
  - fix build with DPDK v22.11 LTS
  - improve DPDK frame_size error message
  - docs: Fix link to MSVC Redistributable Package
  - python: Update last_gain at end of run_rx_cal loop
* images
  - Add X410_UC_200 to manifest
  - add X440 dependencies to manifest
  - bump x4xx fpga images
  - bump x4xx fpga images
  - update FPGA images for E3xx, X3xx, N3xx
  - Update manifest for SEP throttling
  - Update X410 manifest
* lib
  - Add default virtual dtor to filter_node
  - Add X440/FBX support
  - fbx: Remove unused lambda captures
  - Fix time-cast for dboard_iface::sleep()
  - Mark select x400_dboard_iface methods as const
  - Mark selected x400_dboard_iface child methods final
  - max287x: Remove unused class attributes
  - mb_controller: Minor fixes to logging, formatting
  - rfnoc: Fix linter issue regarding virtual dtor
  - rfnoc: Fix logic in can_connect_device_to_device()
  - rfnoc: Use device cache for rfnoc_graph::make()
  - tests: Mark mock pop_host_tasks() as override
  - mpm: Add MPM synchronization API
* mpm
  - Add ability to query enabled state of ADC/DAC blocks
  - Add dboard_info to db_iface initialization
  - Add LogRuntimeError class
  - Add revE support to zbx_update_cpld
  - Add support for X440/FBX
  - bist: Improve --help message
  - Bump compat number to 5.0
  - dboard_iface: Remove {set/get}_if_freq() APIs
  - dboard_manager: Fix linter issues in dboard_manager/base.py
  - Demote sync_tiles() error to warning
  - Disable PRC to DB if not required
  - e3xx: Fix inheritance order for DB classes
  - enable Xilinx API for PLL config
  - fix get_product_id in x4xx BIST
  - fix GPS lock sensor method name
  - Fix test utilities
  - Fix ZBX CPLD updater
  - lmk04832: Move general APIs to base class
  - Move get_dboard_class_from_pid()
  - mpmutils: Add parse_multi_device_arg() function
  - mpmutils: Fix Pylint warning
  - Normalize name for gps_locked sensor
  - periph_manager: Remove vestigial Python-six
  - Refactor LMK04832X4xx and LMK03328X4xx
  - rfdc_ctrl: Change latency argument to signed
  - rfdc: Enhance converter checks
  - rfdc: Remove set_sample_rate() API call
  - Simplify x4xx_bist nsync_fabric
  - Update X440 clock policy
  - Updated default MCR for X440
  - utils: Add LogWrapper
  - x440: Move clock info logging out of policy
  - x4xx: Add additional args parsing in init()
  - x4xx: Add intermediate clock settings to clock policy
  - x4xx: add intermediate clocking setting
  - x4xx: Add logging for metal and rfdc versions
  - x4xx: Add master_clock_rates argument to _set_ref_clock_freq()
  - x4xx: add multiple latency detect iterations
  - x4xx: Add rfdc rate as a sensor to X4xx dboards
  - x4xx: Add UC FPGA type
  - X4xx: Change reset strategy to cover all X4xx
  - x4xx: Check for tear_down()'s existence
  - x4xx: Conditionally initialize DB flash
  - x4xx: Enable DBs to have updateable_components
  - x4xx: Enable MMCM configuration based on policy
  - x4xx: Enable MPM sync API for X410
  - x4xx: Explicitly pass MCR values to set_sync_source()
  - x4xx: Extend x4xx_rfdc_regs
  - x4xx: Factor clock control out of X4xxClockManager
  - x4xx: filter MCR list
  - x4xx: Improve SPLL comments
  - x4xx: Introduce X4xxClockPolicy
  - x4xx: Let RFDC control use clock policy
  - x4xx: Make sysref_delay part of clock policy
  - x4xx: mb_cpld: Add missing bitfields
  - x4xx: Minor preparations to x4xx.py for X440 support
  - x4xx: Move all clock control to single class
  - x4xx: Move common DB tasks from ZBX class to mixin
  - x4xx: Move enable_iq_swap to x4xx_rfdc_ctrl.py
  - x4xx: Move get_master_clock_rate() to DB-RPC
  - x4xx: Move MB CPLD creation to factory
  - x4xx: Move SPLL sync before RFDC config
  - x4xx: Optimize clock configuration at init
  - x4xx: Prepare clock management for multi-mcr
  - x4xx: Refactor x4xx_rfdc_ctrl
  - x4xx: Remove get_cal_eeprom_spi_node()
  - x4xx: Remove internal_temp_sensor
  - x4xx: Rename 'both' argument to 'all'
  - x4xx: rfdc: Add get_converter_rate() API
  - x4xx: rfdc: Pull fabric words value from registers
  - x4xx: Separate RFDC and MMCM resets
  - x4xx: Separate RFDC reset from its configuration
  - x4xx: Shut down tiles on tear_down()
  - x4xx: Trust the clock policy's default MCR
  - fpga: x4xx: Major updates in preparation for future devices
* multi_usrp
  - rfnoc: Added warning when handling tune_request
*octoclock
  - Fix uhd_usrp_probe error
* python
  - Add 'const' to get_continuous_tone(); improve sanity-checks
  - Add DramTransmitter class
  - Add X440 to image builder
  - Fix subdev_spec_t wrapping
  - multi_usrp: Remove spurious print
  - rfnoc: Add radio_control.get_{ticks,time}_now
  - signal: Add more waveforms to get_continuous_tone()
  - stream: Overload TxStreamer.recv_async_msg()
  - Wrap direction_t
  - Wrap stream_cmd_t::stream_mode
* Replay buffered TX streamer
  - Fix gaps in TX
* rfnoc
  - Add options for RFNoC image core headers
  - Add set_command_time and clear_command_time binding to Python API.
  - Allow interruption of streaming during overrun handling
  - Coerce replay packets to atomic item size
  - Demote some de-init DEBUG messages
  - Enable SEP throttle register
  - Fix disconnecting back-edges from graphs
  - Fix doxygen comments in rfnoc_graph
  - Fix sync calls for multi-timekeeper operation
  - Improve Doxygen for sync calls
  - Make edge comparison more flexible
  - radio: Always prefer register-based time access
  - radio: Make default SPP a multiple of max CHDR width
  - replay: Make default IPP a multiple of max CHDR width
  - Set DEVICE_FAMILY on stream endpoints
  - Support multiple CHDR widths in RFNoC image builder
  - update switchboard forwarding on property set
* SelfCal
  - Add startup_tile() for cal_mode selection
  - Enable parameters in self-cal executable
  - Expose config parameters
  - Remove self-cal from boot and fpga update
  - Trigger if clocking has changed
* tests
  - add delayed streaming start args
  - add packet capture raw udp tests
  - add streaming tests for UC_200 bitfile
  - benchmark_rate improvements
  - Fix Python warnings in parse_benchmark_rate.py
  - fix when the rx cmd's stream_now is set
* tools
  - Add changeset analyzer
  - Add clang-formatting tools
  - add devtest rule for changeset_analyzer
  - Remove fpga directory from Debian build
  - run all tests for manifest update
  - Update upload_debs.sh script
* UBX
  - Add VCO band calibration and map access
  - Initialize UBX set_tx_freq freq_lo variables to 0.0
  - Shift IF for RX frequencies <100 MHz
* uhd
  - doc: Add documentation for ADC self calibration
  - multi_usrp: Support multiple timekeepers on rfnoc devices
  - Update changelog with 4.1.0.x releases
  - x4xx: Add methods to query number of chans, samp rate
  - x4xx: Refactor ADC self cal
* usrpctl
  - add reset command
* utils
  - Add X4xx ADC threshold query script
  - Fix usrp2_recovery.py for Python3
* x4xx
  - Update BIST to match clocking refactoring


INTERNAL - NI CONFIDENTIAL

--_000_BL0PR04MB44844201B9382169F713C834F5EFABL0PR04MB4484namp_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The release candidate of UHD 4.5.0.0 is available fo=
r testing.<o:p></o:p></p>
<p class=3D"MsoNormal">This release adds support for the NI Ettus X440 as w=
ell as other bug fixes.&nbsp; Copied is the changelog below.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the UHD release candidate:<br>
<a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.5.0.0-rc1">=
https://github.com/EttusResearch/uhd/releases/tag/v4.5.0.0-rc1</a><o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the filesystem release candidate:<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/meta-ett=
us/releases/tag/v4.5.0.0-rc1">https://github.com/EttusResearch/meta-ettus/r=
eleases/tag/v4.5.0.0-rc1</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Aki<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## 004.005.000.000<o:p></o:p></p>
<p class=3D"MsoNormal">* b200<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix invalid RF switch positions<o:p></o:p><=
/p>
<p class=3D"MsoNormal">* ci<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add attempt number to uhd build artifact na=
me on failure<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add conditions for embedded builds, HW test=
s<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add pytest args option to test dev pipeline=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add step for x440 embedded runs<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - Allow internal fileserver usage for MS inst=
aller builds<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Auto-detect conditionals for pipeline stage=
s<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Default to internal fileserver for FPGA ima=
ges<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Disable PR runs for draft PRs<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; - Enable X440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix swallowed return codes in CI script ste=
ps<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix the chocolately version to use<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - fixup typo in x440 sdr-test0 template<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - increase build timeouts to 90 minutes<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - increase win docker image build timeout<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Remove Fedora 35 and add Fedora 37<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - select docker image repo directly at contai=
ner endpoint definitions<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - select docker registry based on branch<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - splitup x410 test stage in hardware test de=
v pipeline<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update CLA Assistant to v2.3.0<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - update docker builds to run twice a week<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - update docker service connection<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - update to build docker builds for all relea=
se branches<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - updates for new E320 in devtest system<o:p>=
</o:p></p>
<p class=3D"MsoNormal">* clang<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Apply clang-formatting to all C/C++ files<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Modify files for treatment with clang-forma=
t<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update clang-format for version 14<o:p></o:=
p></p>
<p class=3D"MsoNormal">* cmake<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix auto-detection of Python install direct=
ory<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix linking DPDK when installed at non-stan=
dard location<o:p></o:p></p>
<p class=3D"MsoNormal">* cpld<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Adapt CPLD updater for future X4x0 dboards<=
o:p></o:p></p>
<p class=3D"MsoNormal">* debian<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix copyright dates in changelog<o:p></o:p>=
</p>
<p class=3D"MsoNormal">* devtest<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add exemptions for x440 python API test<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - correct docstrings with example being run<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - disable rx_samples_to_file_test for x440<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fix typo in error message<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - gpio test updates<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - remove benchmark_rate test for x440<o:p></o=
:p></p>
<p class=3D"MsoNormal">* docs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add page on timed commands<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add python package requirement for usrpctl =
MPM reset<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add updated msgpack rpc package<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - b200: Improve docs (auto MCR, GPIOs)<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - Document throttle stream arg<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix argument for uhd_image_loader in E3xx d=
ocs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix docstring for get_block_chain()<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - fix typo and consistency in usrpctl docs<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Improve documentation on timekeepers<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - Make X410 dboard a subpage of the X4xx page=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Document RFNoC overrun handling algo=
rithm<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update clocking theory of operations for X4=
xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - update docs for reset command<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; - update FPGA build docs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update X4x0 manual<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update X4xx manual wrt. self-cal<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - x410: Document UC_200 image flavor<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Added FBX to UM daughterboards page<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Extend X4x0 Usage Manual for x440<o:p=
></o:p></p>
<p class=3D"MsoNormal">* examples<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add power controls to rx_ascii_art_dft.cpp<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add throttle to replay_capture.py<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - Amend tx_waveforms.py to use DramTransmitte=
r<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix play region in replay_capture.py<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - Remove default --ref and --pps values<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - rx_samples_to_file: multi_streamer option<o=
:p></o:p></p>
<p class=3D"MsoNormal">* experts<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add force_dirty() call<o:p></o:p></p>
<p class=3D"MsoNormal">* extension<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - windows: Fixed linking extension example to=
 uhd.lib<o:p></o:p></p>
<p class=3D"MsoNormal">* fpga<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add BUILD_BASE_DIR option to makefiles<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add BUILD_SEED variable<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add time changed pulse to timekeeper<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add X440/FBX support<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Add MAX_CPU to pool demands<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - ci: Add X410_UC_200 to default bitfiles<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Add X410_UC_200 to release pipeline<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Enable publishing to internal server<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Fix branches<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Include modified manifest in artifacts<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Support parallel jobs for IP builds<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Use different seed for each job attempt=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Use repeat_fpga_build for pipeline buil=
ds<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Clear clang-format settings for FPGA code<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - docs: Add system memory recommendations<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - docs: Clarify design tool requirements<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix RFNoC OOT Makefile inclusion<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - lib: Add axis_pkt_throttle.sv<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; - lib: Add clock_div module<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - lib: Add ctrl_port_to_wb_i2c module<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - lib: Fix IPv4 CHDR TUSER width<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - lib: Fix Vivado warnings<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - lib: rfnoc: Add resize capability to chdr_s=
tream_endpoint<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - lib: rfnoc: Make RFNoC packet gates removab=
le<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - lib: rfnoc: Remove redundant packet gate<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - lib: rfnoc: Support multiple port widths on=
 crossbar<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Reformat javascript in doc<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add DEVICE_FAMILY to stream endpoint=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add throttle to stream endpoints<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add ULTRASCALE to chdr_ingress_fifo<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Synchronize X300 RX frontends on time chang=
e<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - tools: Add repeat_fpga_build.py<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - tools: Add X410_UC_200 image to X410 packag=
e<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update all RFNoC image core files<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - Update RFNoC YAML copyright<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add 1x64, 2x64, and 1x128 DRAM interc=
onnect<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add CG_200 RFNoC image cores<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add ifdef to remove QSFP wrappers whe=
n unused<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add support for X4C, C1, and UC varia=
nts<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add X440 to default make targets<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add X4C_200 RFNoC image cores<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Fix DB1 timekeeper strobe<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - x400: Fix PRC divider register map<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Fix SPI trigger clock crossing<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Make transport adapter width configur=
able<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Remove CPU_W parameter<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Set QSFP LEDs on startup<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - x400: sim: Add 10 GbE with wide CHDR<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Use x410_200 image core for x410_100 =
images<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: fbx: clean up I2C triggers<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Refactor MB CPLD code for future devi=
ces<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Rename x410 -&gt; x4xx for common DTS=
 files<o:p></o:p></p>
<p class=3D"MsoNormal">* github<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix URL for mailing list<o:p></o:p></p>
<p class=3D"MsoNormal">* host<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add cstdint include to fix gcc-13 compile.<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add in OpenBSD support to uhd::path_expandv=
ars<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Bump minimum gcc version to 7.3.0<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - doc: Add documentation for tertiary, quater=
nary QSFP adapter<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fix &amp; improve EAL args for DPDK v21.11<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fix build with DPDK v22.11 LTS<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - improve DPDK frame_size error message<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - docs: Fix link to MSVC Redistributable Pack=
age<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - python: Update last_gain at end of run_rx_c=
al loop<o:p></o:p></p>
<p class=3D"MsoNormal">* images<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add X410_UC_200 to manifest<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add X440 dependencies to manifest<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - bump x4xx fpga images<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - bump x4xx fpga images<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - update FPGA images for E3xx, X3xx, N3xx<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update manifest for SEP throttling<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - Update X410 manifest<o:p></o:p></p>
<p class=3D"MsoNormal">* lib<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add default virtual dtor to filter_node<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add X440/FBX support<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fbx: Remove unused lambda captures<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - Fix time-cast for dboard_iface::sleep()<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Mark select x400_dboard_iface methods as co=
nst<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Mark selected x400_dboard_iface child metho=
ds final<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - max287x: Remove unused class attributes<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - mb_controller: Minor fixes to logging, form=
atting<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Fix linter issue regarding virtual d=
tor<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Fix logic in can_connect_device_to_d=
evice()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Use device cache for rfnoc_graph::ma=
ke()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - tests: Mark mock pop_host_tasks() as overri=
de<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - mpm: Add MPM synchronization API<o:p></o:p>=
</p>
<p class=3D"MsoNormal">* mpm<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add ability to query enabled state of ADC/D=
AC blocks<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add dboard_info to db_iface initialization<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add LogRuntimeError class<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add revE support to zbx_update_cpld<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - Add support for X440/FBX<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - bist: Improve --help message<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Bump compat number to 5.0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - dboard_iface: Remove {set/get}_if_freq() AP=
Is<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - dboard_manager: Fix linter issues in dboard=
_manager/base.py<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Demote sync_tiles() error to warning<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - Disable PRC to DB if not required<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - e3xx: Fix inheritance order for DB classes<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - enable Xilinx API for PLL config<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - fix get_product_id in x4xx BIST<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - fix GPS lock sensor method name<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - Fix test utilities<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix ZBX CPLD updater<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - lmk04832: Move general APIs to base class<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Move get_dboard_class_from_pid()<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - mpmutils: Add parse_multi_device_arg() func=
tion<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - mpmutils: Fix Pylint warning<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Normalize name for gps_locked sensor<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - periph_manager: Remove vestigial Python-six=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Refactor LMK04832X4xx and LMK03328X4xx<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfdc_ctrl: Change latency argument to signe=
d<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfdc: Enhance converter checks<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - rfdc: Remove set_sample_rate() API call<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Simplify x4xx_bist nsync_fabric<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - Update X440 clock policy<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Updated default MCR for X440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - utils: Add LogWrapper<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Move clock info logging out of policy=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add additional args parsing in init()=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add intermediate clock settings to cl=
ock policy<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: add intermediate clocking setting<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add logging for metal and rfdc versio=
ns<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add master_clock_rates argument to _s=
et_ref_clock_freq()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: add multiple latency detect iteration=
s<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add rfdc rate as a sensor to X4xx dbo=
ards<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add UC FPGA type<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X4xx: Change reset strategy to cover all X4=
xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Check for tear_down()'s existence<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Conditionally initialize DB flash<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Enable DBs to have updateable_compone=
nts<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Enable MMCM configuration based on po=
licy<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Enable MPM sync API for X410<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Explicitly pass MCR values to set_syn=
c_source()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Extend x4xx_rfdc_regs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Factor clock control out of X4xxClock=
Manager<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: filter MCR list<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Improve SPLL comments<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Introduce X4xxClockPolicy<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Let RFDC control use clock policy<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Make sysref_delay part of clock polic=
y<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: mb_cpld: Add missing bitfields<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Minor preparations to x4xx.py for X44=
0 support<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Move all clock control to single clas=
s<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Move common DB tasks from ZBX class t=
o mixin<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Move enable_iq_swap to x4xx_rfdc_ctrl=
.py<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Move get_master_clock_rate() to DB-RP=
C<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Move MB CPLD creation to factory<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Move SPLL sync before RFDC config<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Optimize clock configuration at init<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Prepare clock management for multi-mc=
r<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Refactor x4xx_rfdc_ctrl<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; - x4xx: Remove get_cal_eeprom_spi_node()<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Remove internal_temp_sensor<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Rename 'both' argument to 'all'<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: rfdc: Add get_converter_rate() API<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: rfdc: Pull fabric words value from re=
gisters<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Separate RFDC and MMCM resets<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Separate RFDC reset from its configur=
ation<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Shut down tiles on tear_down()<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Trust the clock policy's default MCR<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fpga: x4xx: Major updates in preparation fo=
r future devices<o:p></o:p></p>
<p class=3D"MsoNormal">* multi_usrp<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Added warning when handling tune_req=
uest<o:p></o:p></p>
<p class=3D"MsoNormal">*octoclock<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix uhd_usrp_probe error<o:p></o:p></p>
<p class=3D"MsoNormal">* python<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add 'const' to get_continuous_tone(); impro=
ve sanity-checks<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add DramTransmitter class<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add X440 to image builder<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix subdev_spec_t wrapping<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - multi_usrp: Remove spurious print<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add radio_control.get_{ticks,time}_n=
ow<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - signal: Add more waveforms to get_continuou=
s_tone()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - stream: Overload TxStreamer.recv_async_msg(=
)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Wrap direction_t<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Wrap stream_cmd_t::stream_mode<o:p></o:p></=
p>
<p class=3D"MsoNormal">* Replay buffered TX streamer<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix gaps in TX<o:p></o:p></p>
<p class=3D"MsoNormal">* rfnoc<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add options for RFNoC image core headers<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add set_command_time and clear_command_time=
 binding to Python API.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Allow interruption of streaming during over=
run handling<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Coerce replay packets to atomic item size<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Demote some de-init DEBUG messages<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - Enable SEP throttle register<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix disconnecting back-edges from graphs<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix doxygen comments in rfnoc_graph<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix sync calls for multi-timekeeper operati=
on<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Improve Doxygen for sync calls<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - Make edge comparison more flexible<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - radio: Always prefer register-based time ac=
cess<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - radio: Make default SPP a multiple of max C=
HDR width<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - replay: Make default IPP a multiple of max =
CHDR width<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Set DEVICE_FAMILY on stream endpoints<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; - Support multiple CHDR widths in RFNoC image=
 builder<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - update switchboard forwarding on property s=
et<o:p></o:p></p>
<p class=3D"MsoNormal">* SelfCal<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add startup_tile() for cal_mode selection<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Enable parameters in self-cal executable<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Expose config parameters<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Remove self-cal from boot and fpga update<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Trigger if clocking has changed<o:p></o:p><=
/p>
<p class=3D"MsoNormal">* tests<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add delayed streaming start args<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - add packet capture raw udp tests<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - add streaming tests for UC_200 bitfile<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - benchmark_rate improvements<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix Python warnings in parse_benchmark_rate=
.py<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fix when the rx cmd's stream_now is set<o:p=
></o:p></p>
<p class=3D"MsoNormal">* tools<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add changeset analyzer<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add clang-formatting tools<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add devtest rule for changeset_analyzer<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Remove fpga directory from Debian build<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - run all tests for manifest update<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - Update upload_debs.sh script<o:p></o:p></p>
<p class=3D"MsoNormal">* UBX<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add VCO band calibration and map access<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Initialize UBX set_tx_freq freq_lo variable=
s to 0.0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Shift IF for RX frequencies &lt;100 MHz<o:p=
></o:p></p>
<p class=3D"MsoNormal">* uhd<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - doc: Add documentation for ADC self calibra=
tion<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - multi_usrp: Support multiple timekeepers on=
 rfnoc devices<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update changelog with 4.1.0.x releases<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Add methods to query number of chans,=
 samp rate<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Refactor ADC self cal<o:p></o:p></p>
<p class=3D"MsoNormal">* usrpctl<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - add reset command<o:p></o:p></p>
<p class=3D"MsoNormal">* utils<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add X4xx ADC threshold query script<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix usrp2_recovery.py for Python3<o:p></o:p=
></p>
<p class=3D"MsoNormal">* x4xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update BIST to match clocking refactoring<o=
:p></o:p></p>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
</body>
</html>

--_000_BL0PR04MB44844201B9382169F713C834F5EFABL0PR04MB4484namp_--

--===============2905065711549645810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2905065711549645810==--
