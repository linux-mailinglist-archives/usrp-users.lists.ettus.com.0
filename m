Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0267A0FF2
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 23:37:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F09138109A
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 17:37:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694727429; bh=75QpYNMf91oJm50IxTWOeedTlFpQvxmiDj3sHvMe4Vc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WRTsUjly2eqWxkNQ65YDS5A8VFAHHzH7v9lWau5sXDYK5vCf/F/91E+0KH366Zekc
	 XuPGjMa3lQ/DaGQu2PFQp5npg7I/DxEXaA5vl+poj12hPeZ4L4dz8iP/7lQ5dJbSPS
	 tgauWghzl1I3a0tHVRNt8EqCJk57NQe276fWDBMPT6pehY7vsdkOiA8Q1P6rpCkNPH
	 pHJpeR0LSew07pC5Oa5SVFIM+CnRq4ZHpoiWOHMudgJr8v2ZRYZz+YTLWjrg9qz88q
	 dm31u43+QziB1IMr4F7lBDZiBxKcOOh4Pcd2iwzSBJVwwUoqjb+oA5NChoj1bRHysp
	 XqKh32uqbN8yA==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2120.outbound.protection.outlook.com [40.107.94.120])
	by mm2.emwd.com (Postfix) with ESMTPS id D4D69380C96
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 17:36:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="aa/DycJy";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eyAntBtOih67wW46cju2l0ZPYsnn4r4BiQgVzEx5JLZIfemtKuon5SV1p9anbbX7g+2b5+65mmGqMuVUtsUHBOYfstCMWbFmTp/1UEIZVByG5cgo+3WTjSnXcQ/ImITMWPd5oj5Bs/cNS4Z9NdCGY8tnPx407i+Do66Pp6ZCK9Q89m0kl9qMV19dCu4EUVAjvvYjp15IcAEmIIW+3BmvoWRRXDpKOjct5E7XThSD2meKyB0IQccaxd1T6qTN9tW7l34rYvcn3pZBR54vw3IMLGv1bo3MX5C+aGwhtDV0LGrAPPb6TFWGPyY+/5PYhQqmyoBUS5N5/XQae3SphcGfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ox5iUqiP45cMKlvmU6JjEMPDUSYrrsaErm+Xn0v5Bo=;
 b=AAoEetZFg0Op7TstYswjZKvjUc4P1YV2E5JOFqeZ9D887x/p48IAskMI7XJREEh1vPUlhpxJcbtK/fzzHgrPxN8EEOW66qb30genuTH0hwdL12XoeZ4zSEU9G4UJ7G2Dx0i1yodigsJm4KkDWpY7vZnzjQmcq2AqEJHAP6fH6gykBgWq4cAfVWfquyM2Gv9ZMhh3aqwhfurQnG34390kOVb/7x5nInXFEhYZEZ1Tw+0VqGfN5PPilLGBN8xoFjK+VY6WkplVZhmuKfpxUmtz7En5w01OYSsANXt8L+mi9lbQrAWyU1gTtN/nUn3HhRZyLgGxJExdwuv+nQYAaEdSjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ox5iUqiP45cMKlvmU6JjEMPDUSYrrsaErm+Xn0v5Bo=;
 b=aa/DycJy9WmgwPVwCwegnYaAhLaTTjMm7wHhtAIL1FJEtTG9/ECP9a/3STJrDcpeA40jvcz+33MjDxfrSM9nMrvhaqwUDYCRhtZGB9EvRptt7xzn7OXzlE753kzgbOQ+f9dPJ23vXPs5Iw/eRUR1Ga8SNKw3l5gh4Hkih3fhafs=
Received: from BL0PR04MB4484.namprd04.prod.outlook.com (2603:10b6:208:41::33)
 by SA0PR04MB7369.namprd04.prod.outlook.com (2603:10b6:806:e7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.16; Thu, 14 Sep
 2023 21:36:48 +0000
Received: from BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::c222:9e5:f76f:f855]) by BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::c222:9e5:f76f:f855%3]) with mapi id 15.20.6792.019; Thu, 14 Sep 2023
 21:36:48 +0000
From: Aki Tomita <aki.tomita@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [UHD] 4.5.0.0 Release Announcement
Thread-Index: AdnnUN7LWeo/EYcXQXKbZbV0QOK7GA==
Date: Thu, 14 Sep 2023 21:36:48 +0000
Message-ID: 
 <BL0PR04MB4484CC11CCFBC7E1DF9E49A0F5F7A@BL0PR04MB4484.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=0031f80e-6c41-462f-b39c-9fa1473f7dc8;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-09-14T21:36:16Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR04MB4484:EE_|SA0PR04MB7369:EE_
x-ms-office365-filtering-correlation-id: 67501fdb-7e75-4f8b-fb43-08dbb56ab342
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Xh1vhbd4D6idz6IE9q3JopG9gglK//pr33xWgPjUSA2ff8OkBIqLjlTSVUcuMe3y2dIUSyAjDfeE62HDw5462OO//6woJENLYcLaQmIkMVP9fljCrO8Mt8j3is1ZERhAjwGF3ZX6PV2w87pe69se1vP7svhOlxN9GApRYun9CSZ7Fk9AM+VPKvK+TZeqLD37I98sNb2FTDo1vTDmr/DHTpUTQw2sbhRowaaH0YbKh1bOYulZKHOPDyh7l6VyNHHrKJASlWoHuUawio2ucPk/NsK6SeJxEYrekijEeY25KlGSQytLMyx14oBg9yJrxI5HyFua/TwdFAX+MspKgjI2ECRx2IRPVyAQWJDH8j9qFk9JuNIfme619siARH9wKh8cZ9rpY4X/9Keyy1Q68/GZEZjYcnJPr0TD2n5uQnc6JID7nYrl9s7y2DH+9ZZSEyXflrYuseNZ0vta2VS9Fz0d2PfJAswShisd5jUaKObVhFKTozgeLGFCbeRpf4f+e62WhjnX4FrFsQozrVT2ircZJUS2h8t2zZ/X3r0yd3TZvlHCFNu82m0fhZJPMrzXPJBnYVLaYb2hAGHJqWBxuTwUuqRtRr+Uxx7Renkl65o9Xt1nBMb+o/6/gdgRkCaUjzgmux6L0s99oTRw6etVgXHxNw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB4484.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(346002)(39860400002)(366004)(136003)(451199024)(186009)(1800799009)(76116006)(44832011)(66446008)(7696005)(966005)(9686003)(71200400001)(26005)(52536014)(83380400001)(66556008)(2906002)(8676002)(316002)(66476007)(6916009)(41300700001)(5660300002)(64756008)(9326002)(8936002)(166002)(33656002)(6506007)(38070700005)(38100700002)(122000001)(30864003)(86362001)(55016003)(478600001)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?r6tdACm0+sAr7aXzdFqC21Ouy2tlqD0KQ1tmAidFUNWuRn1UxBYFtWcQAch4?=
 =?us-ascii?Q?4pgvWB/Np/oT63Jv2OTj15zx2yiPus+6hJPh2OD9m48PX8cPQ70mm4Tks9jx?=
 =?us-ascii?Q?S9ep0l1lDfGg/Lg81V4TbAqCRRWxd/tp1KvT+ogxnkAeJ0s7uNYBl7gfkvA3?=
 =?us-ascii?Q?6ptvpyT4MRm6ViEDYZvsB1gAblcar5Y1J6/60fzad3FJZB6LugXoaAp9cCdC?=
 =?us-ascii?Q?G95gjPlOa08c4heUC/OUFv8nuLtKFG5gCqDmr5skCvL/EHK03XvmPxbP6qey?=
 =?us-ascii?Q?JM6iwtGvNEEg9r4o8urR0KLN0CPAaL6KHD9krj6URG8QZLhWCMqjXWTMGsAE?=
 =?us-ascii?Q?xB+CAjEyLWGHn0IhG8OOUFjGGGxYug0UzQ8HKzAuJK8lIZKEUgHTQa7OaJcW?=
 =?us-ascii?Q?w9w0gFvn/2vOnHLAo1RFn0zFqZFO6IfzPVIi1+TzSkJBQdCYzAlE52SO1dG/?=
 =?us-ascii?Q?MGJZpkSivd9F0KjpwysrKprEGd/J2putxajh5SKvkkC1OcYJnSAKqCfBfZpS?=
 =?us-ascii?Q?PvCsNd94tNoxFrZqJTB6axSLyYPbJ+w47Fj/jgHsimAJsrH6zwF5Wb5Eb6fb?=
 =?us-ascii?Q?RaB3J2Ydp/7KegUvLMco+dAXhIb4j+kkexMheDyOar5T+cVkXqx5ZzT/gkiZ?=
 =?us-ascii?Q?HZLJtLC6OjT3brNM7YUf2NPyOp6kmFxfbDe2Xfp8hFny5DpvnpntAzjJ1RB9?=
 =?us-ascii?Q?T8GWK6A9CrGdmkgWpSrJDKPZ633c/lCRiCNH7dbClYF7iN+UwVUhtw9tc28Q?=
 =?us-ascii?Q?+rYELaiB9EhcfJftB1MqlRxPSbbGCl9cH6roA8Ner9Ss9F5KJNE0K74OJQhA?=
 =?us-ascii?Q?cHMI5GWL1tocOevoV8lsUAOwEgCU/W7INcBNWWm9BaqnigbEvaER0p7f8dj9?=
 =?us-ascii?Q?x8QAq9PaZRJ+PexTcDhB2G7DpZrY5N1DRwqqqSrj5yYV0tT8W1QNEJH59QkY?=
 =?us-ascii?Q?+Fku3K3vFLxkVMaoRVfcW351z6RDf44Ygcn3SGa3r8EzMLMo5AslJZof0dWf?=
 =?us-ascii?Q?I47VLtsBNGtkvn3c93Uj26iZX3JBHbG+yMbOWwxflIH6fD63vZHatOby4CU4?=
 =?us-ascii?Q?rRlOckt0bv3ldBd62yjk3TnKlJipbiUxy0o8fbCIXxTuGzNIwoWUY/u1N9OP?=
 =?us-ascii?Q?/hH8Tjdl+FAyhtul8FWgxpbu+d+bC0Ze60b/IDIqK2B1QFuzDgQdbYr4Xjoe?=
 =?us-ascii?Q?wlDEZKpAQ+CVWwq+olKiJXVDkBP8xL/UmiRzJ77VvLiw/Ys30dgunvODyeSD?=
 =?us-ascii?Q?w880krqdEnMVWLsDgGhOZaQzonTZUWTiSfYdjJ9pf+b3pSuKqU4EiWwVy8SK?=
 =?us-ascii?Q?hrf8hMICsb/GOCIHbn9o3tUbTxvWVlsbDM1HI/O9/S7KJWjsO1ZAklfD3ZBX?=
 =?us-ascii?Q?WP46MFWQZUPGF4in1CMePMGv5rqT8zNIWabhwavRP2adBuVPHKmvFMNls73O?=
 =?us-ascii?Q?GqJnfHWgZDF2j58G4+dMLcEQmRdtg7rRweDtG2IZCv9zOJe8NilQrh43Vy66?=
 =?us-ascii?Q?0xZmUjXV7UAe04f4FPny3C4P9ULt4gPPjrKio9yKpKHQTHQSYk3Dpwgpu97Y?=
 =?us-ascii?Q?cr51bI8KYb+FPAkfIyk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB4484.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67501fdb-7e75-4f8b-fb43-08dbb56ab342
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 21:36:48.1460
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m57zDLpBLpG6yitaUDgeFRA6cjQdjW7yUe7gUlYTlVyrVbuas2xzCaKUicA/V61nTL0P152Ikv27RbA61zPWEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR04MB7369
Message-ID-Hash: XTTEZVA6HTUIDNTLADQ2V2K6W7S2PVRZ
X-Message-ID-Hash: XTTEZVA6HTUIDNTLADQ2V2K6W7S2PVRZ
X-MailFrom: aki.tomita@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.5.0.0 Release Announcement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VV35EQHXJO7ZEAZSNZL5GOAD3UY6VD6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4421134867364898451=="

--===============4421134867364898451==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR04MB4484CC11CCFBC7E1DF9E49A0F5F7ABL0PR04MB4484namp_"

--_000_BL0PR04MB4484CC11CCFBC7E1DF9E49A0F5F7ABL0PR04MB4484namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

The UHD-4.5.0.0 release is now available.
This release adds support for the NI Ettus X440 as well as other bug fixes.

Tag for the UHD release:
https://github.com/EttusResearch/uhd/releases/tag/v4.5.0.0

Tag for the filesystem release:
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.5.0.0

Installers for Windows and Fedora:
https://files.ettus.com/binaries/uhd/uhd_004.005.000.000-release/4.5.0.0/

PPA for Ubuntu:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd

Thank you to everyone who has contributed by posting pull requests and fili=
ng bug reports.

Thanks,
Aki

CHANGELOG:
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
  - modify default sfp0 and reboot
  - Remove Fedora 35 and add Fedora 37
  - restrict analyze changeset pool
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
  - remove API calls that now error
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
  - update remote streaming supported version
  - Update X4x0 manual
  - Update X4xx manual wrt. self-cal
  - x410: Document UC_200 image flavor
  - x440: Added FBX to UM daughterboards page
  - x440: Extend X4x0 Usage Manual for x440
  - x440: Fixed incorrect use of paragraph elements
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
  - allow for mpm device to tell host to reboot mpm
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
  - move pop_host_tasks to PeriphManagerBase
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
* octoclock
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
  - get bool for force_reinit arg
  - pass reboot mpm command to host on new clock config for x440
  - Update BIST to match clocking refactoring
* x4xx_bist
  - replace set_clock_source for x440

--_000_BL0PR04MB4484CC11CCFBC7E1DF9E49A0F5F7ABL0PR04MB4484namp_
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The UHD-4.5.0.0 release is now available.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">This release adds support for the NI Ettus X440 as w=
ell as other bug fixes.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the UHD release:<br>
<a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.5.0.0">http=
s://github.com/EttusResearch/uhd/releases/tag/v4.5.0.0</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the filesystem release:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/meta-ett=
us/releases/tag/v4.5.0.0">https://github.com/EttusResearch/meta-ettus/relea=
ses/tag/v4.5.0.0</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Installers for Windows and Fedora:<br>
<a href=3D"https://files.ettus.com/binaries/uhd/uhd_004.005.000.000-release=
/4.5.0.0/">https://files.ettus.com/binaries/uhd/uhd_004.005.000.000-release=
/4.5.0.0/</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PPA for Ubuntu:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://launchpad.net/~ettusresearch/+arc=
hive/ubuntu/uhd">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</=
a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you to everyone who has contributed by posting=
 pull requests and filing bug reports.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Aki<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CHANGELOG:<o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - modify default sfp0 and reboot<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - Remove Fedora 35 and add Fedora 37<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - restrict analyze changeset pool<o:p></o:p><=
/p>
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
<p class=3D"MsoNormal">&nbsp; - remove API calls that now error<o:p></o:p><=
/p>
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
<p class=3D"MsoNormal">&nbsp; - update remote streaming supported version<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update X4x0 manual<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update X4xx manual wrt. self-cal<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - x410: Document UC_200 image flavor<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Added FBX to UM daughterboards page<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Extend X4x0 Usage Manual for x440<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Fixed incorrect use of paragraph elem=
ents<o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - allow for mpm device to tell host to reboot=
 mpm<o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - move pop_host_tasks to PeriphManagerBase<o:=
p></o:p></p>
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
<p class=3D"MsoNormal">* octoclock<o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - get bool for force_reinit arg<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; - pass reboot mpm command to host on new cloc=
k config for x440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Update BIST to match clocking refactoring<o=
:p></o:p></p>
<p class=3D"MsoNormal">* x4xx_bist<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - replace set_clock_source for x440<o:p></o:p=
></p>
</div>
</body>
</html>

--_000_BL0PR04MB4484CC11CCFBC7E1DF9E49A0F5F7ABL0PR04MB4484namp_--

--===============4421134867364898451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4421134867364898451==--
