Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD267E5ED7
	for <lists+usrp-users@lfdr.de>; Wed,  8 Nov 2023 20:47:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6364385461
	for <lists+usrp-users@lfdr.de>; Wed,  8 Nov 2023 14:47:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699472861; bh=7y954sgEgC5TGORX6/Jg4xDXFwCkskWhS1EJsaVn2cI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0QlvsxtUMKBV+CgSBNgTiUj0ltqPJA+xQVdILkZfWeGcAXusxfetbT3GOHCe0bQoN
	 PGw/dIGz1W4sIka0Xv9RD8t96fKPikiEYX8KdPJb03dYWo2XFQUFnTdKCw+Rdz6yG9
	 pUaF3CcfyniafnnDfQ/7B0XILnEO+/J7sHH8qvx0vFLi2+2yPZFO7KGoB2+RZW4rgH
	 vGjUkVP8tHBh/+HaLousP2AONVnx8BYSfBarzk+1XFiemsJHvP6+3EOeiZOjoP+oy0
	 5zYRgsp37TDM8XyE2dVUf7wI+nB7YmKPkrk/pToUu+gdStrwObspO97RKuvtXY3o/T
	 vCl7kIfw7t/oA==
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2092.outbound.protection.outlook.com [40.107.220.92])
	by mm2.emwd.com (Postfix) with ESMTPS id A541738519E
	for <usrp-users@lists.ettus.com>; Wed,  8 Nov 2023 14:47:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="TdwPxpZY";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9hJ1q66kPpSiyb4ib94ReaREPhQxbRc8MLw0m/fU+2OfL9UKNY89lK5hwby5Y4NbYSRxi47dgGbhp5Qq5H41wlr7jZ9elVvLrjG9leHMfEU+Epj/cvI7bRXiOz/8YKoSbL8X2DhpLM8gpqbu1OSQqDI2PvORAWdk8DZ06zj7R4bmPEgFL/qbOsELmqTOq70V2n3pq+EYVSkx1WtRefW0IcQ1PsBDKmzRliwrB3Bgf5r2H7Ok4Yw4Q4gSddkP9PhKLZH3WmpsAoQfenq6ELQnIzmXbgloZo4sZa5KXDkuvvwi6JcxDmGvgqYfu4DSaknjBjYLehb91JQEOiq3aSl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uln3oAA8oQ/C8Oxg71aMUbOucaEy8rG7bH+uJsum8oo=;
 b=ZQBlq7mx6pQpR1eyvx54WFoPEpwfzMkY7iCDa17r/hEmBda7Q5XsaM/z8MwZ2abf26Pl6qIc5j8esicFUqmfA0fu/pybP5Es16J+9EU7Jr1/uOv0k0+BHq9UZINx7S0BodmAkWHzJdh78xLPOiWEb+7NTbDTOD7xOcDZAerV9o7OE1sJvojTMynmW8Pxd7vyFeG2o/CUewSwA3vaQjCNyr/BHxrFVxWMSuBKr6ttK5vDlrDzPs4SWXRZ55K++lTYkk/a1DtvctzCDzljWZDcFcjDIKG+6stwVgIe5aQuKBSnRt/yVUQVbW5pCXtchtm5DiFcukC0AvFHvq2qPEmBlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uln3oAA8oQ/C8Oxg71aMUbOucaEy8rG7bH+uJsum8oo=;
 b=TdwPxpZY33yCVPKY38UWq0O5ZEW0y+KzCvl131zzTgsbvfRD9fLWc94BRP1FhdVKgthtSCp5ZKtMsF7T6lY2FcqftPco+5c4xiiurNVPsHKGCZMuzG3msixMEUmsZCq1jaIpp9bgAS6G9XzSv01bbUYuiZ3L0B3ycFMm6/O6lcI=
Received: from BL0PR04MB4484.namprd04.prod.outlook.com (2603:10b6:208:41::33)
 by CO6PR04MB7684.namprd04.prod.outlook.com (2603:10b6:303:a7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Wed, 8 Nov
 2023 19:47:00 +0000
Received: from BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::247e:efd9:4ed4:d7bf]) by BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::247e:efd9:4ed4:d7bf%6]) with mapi id 15.20.6954.029; Wed, 8 Nov 2023
 19:47:00 +0000
From: Aki Tomita <aki.tomita@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [UHD] Announcing 4.6.0.0 Release Candidate 2
Thread-Index: AdoSe5BsyXNeNS50QbOsxQNeeZC+fQ==
Date: Wed, 8 Nov 2023 19:46:59 +0000
Message-ID: 
 <BL0PR04MB44849DC0F58463344505021BF5A8A@BL0PR04MB4484.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=72c36ffa-c5bb-4e74-bb3c-733b6c5ebffc;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-11-08T19:39:18Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR04MB4484:EE_|CO6PR04MB7684:EE_
x-ms-office365-filtering-correlation-id: 2935a1da-ee1a-422a-9bf2-08dbe093791b
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BevwpbWKZz6U/3Fjn3wNtXluD9AF/yXm/gOco8ATCvCeZxSCEJ0jJikjeScxSa9XAwozXt3mEEzoTpYos8pZiS+zTMZSeIYmzN/rmIJnsLA6ub7C0dE0mfpPiUqHISBFmSjfgXy7TWMsaQPvSWxPO3j13JAYpOf7/hbkFH8ETmpU/WI3pOLzLK34un0cSuOWF0k2lPZHLCosSY1fu59L7vTlwWHwj7RQhvcKdb8YOvK41LVryc99WZTTdzdAHzMbUAJ7peG3e0HsltcpprhFbvrUaf67Awv7lJ1MCyC0Gv/bPJwDwuIt+/L70o51PifIRcChiTs1GZc3Cfy8a7LB2oGam0nEZO4+XQtwLAbDJW4LxzhjVouqrbHwvHdnbcHBAl2N6GzdmqofYW5pEk7w7OIJaTopnLCBNa/6t9wFvD19Akauzqrm8X6JQCTA3tqQsrbCUx4Ij4zhCQmtRzbhIYgBrhqZWWTAMY9UMKwMKHtDOgzk4k3FYK6MGHeIbEThEHfle1CmMNcebagZmsXitOxbGxxVY7TqTYY+WJ/Zh0KzsWMHOCpcJLWXXZt55NVmQbzpm5DGlB1uuda8wSt9Wck3vglG9y44MplSqWLRgvlqDtGV77tQaRxjPqzZAdGXKl1mGSRTOXUta4gBjnSOQmWNXrLTV3cHgGCoMqqo8ec5nQqI5o0BhuwQcWmwwv/D
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB4484.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(136003)(39860400002)(396003)(346002)(230273577357003)(230173577357003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(2906002)(83380400001)(71200400001)(86362001)(26005)(166002)(122000001)(33656002)(38070700009)(38100700002)(5660300002)(66556008)(64756008)(66476007)(76116006)(66446008)(66946007)(55016003)(6916009)(316002)(41300700001)(8936002)(8676002)(52536014)(6506007)(7696005)(44832011)(9686003)(9326002)(966005)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?DXNHlUWJTZ+RQMuauUvuLW1X8PEFgZssSWJRMmiWOe1aYONMNzGDM+Fpj+AQ?=
 =?us-ascii?Q?NboaB6sK1R9Kg7y6kXIBWYnZNVjUCasiVIn0EaM4lVAY/9uyxTo6FHaRYHis?=
 =?us-ascii?Q?w382V0KOwRbugZ7c7jrV7zDfw//dnirZt8HppmeCV6c9dQPzhN3golNaVt2n?=
 =?us-ascii?Q?gqdtlvTS/vm6p/+wQD78RnPz3lOD3mSjrVqRTbQcp257QZwyzXOIsH12f6D3?=
 =?us-ascii?Q?dZXbZmEOnJWY/XFk7yniMI8iE2XKbov3UUalA/D2OBzMyBXmhT6y1+UO7hOb?=
 =?us-ascii?Q?aPaKoy9F4QGj5ulsdnr9Ona6YAbCReNTB3YIFUlr8dn53Ite7qyNDHzHqzG2?=
 =?us-ascii?Q?l3d2lDP/V0s0XPriGKioJfuGmb9BmZRB80FlblArjF2KhtF3RI26zazaAG6y?=
 =?us-ascii?Q?EotY1P9ut9d7BDqlFk3CmwMXsEG/Q8RzDxhSZ9vGToybkxQILvirj9zzHsl1?=
 =?us-ascii?Q?FZ7+7KeWirAHgoZdhCCDIDPAXJjbjhbMAt86J8doGZ+h9sm5CIduCYm/Pk0r?=
 =?us-ascii?Q?PS1BfvMy3ng0cFYxTj2Q1DxC31XDZ3tBBZ1+ny4ChDaT1T57cMVtOYGNF2Z5?=
 =?us-ascii?Q?3R2rgIEUpUrawVEp1tuGco9fG0NyFUWO4ofgYvK5M8DM9BV73FUTu+4PZiUo?=
 =?us-ascii?Q?SFlnlkn5LJAOCOo5/0InGhWaM87tiLgyAmIK+UvU79Rpfb80uV66RG6Ag/xk?=
 =?us-ascii?Q?uRszc49wTzt5pDn4LlnUbvaEw6aiDudwsT4jIAnPmC1RS1fUUSrLJW0tWNyc?=
 =?us-ascii?Q?0RX46wM/FNdcZYdCI5xrAS46mymEo0mdx4kHNkMJDl3pMeaWYZYBrmpC0Jal?=
 =?us-ascii?Q?c+P2Tg+hQ1h/YNEPpo0WrDzvXyijf0S39+0llZv8sE8PWcEq72SR/rgAhpp2?=
 =?us-ascii?Q?0qD6EoivX6R9selPN//MUD47ad6S5XGWJLsCEY5F3FCo1GICyv0esMc+ylZW?=
 =?us-ascii?Q?qQDYhBUKk9S1Xppu5zv+njhB/HlFPrFShnNqV6Rom+LsgLjfC+snpmtViLSR?=
 =?us-ascii?Q?esygbXtswm9VhIA0RfmG48i47p/R+p5p8UwwAvf5S6fVfXlxbeIwMRRtTF6d?=
 =?us-ascii?Q?o+nep4UebzzlQpxbKmqCZPp6nyEU5qlss7Z92D5yQAVHNq+Yt0dudXmJjUAy?=
 =?us-ascii?Q?qnQp4q7h+hsmD59TIhHT61U0hQNrp9MdyyDzxCB3mspE9zlbwmfABLUUSQYQ?=
 =?us-ascii?Q?fXrVEpaZ4/GjLwdx0actryAhD6cM1z0d1hnrzeOYTt6lVp6j5iyg2kuy7M+9?=
 =?us-ascii?Q?wucEld5pvZ3qcirtcGtoIPM6qj+VEeXC7fdRrJTNTW1Eb59Lt+w8NWQJnLX6?=
 =?us-ascii?Q?SoXOhIpLgKjz0plIgr/GmvZDUCtlzF6Fqz/Yt1D4j6AEEb549AYV8tPGWuDm?=
 =?us-ascii?Q?5ho+Z2lnWcHp4hFIBQA1HJbLkE6a0m4pOxL3MpiYYIfFFtzunmzz3o2sfa84?=
 =?us-ascii?Q?uMOppegk9oOy49RPZRBIrgegTyemw7h24hWRNQ9SWU4KO8uUgobD2ZW7QRBJ?=
 =?us-ascii?Q?xHV3JqBeM7asC089VLH954EcuqxQ610rzaUuHzlYoaIUxfs95oqmAXkKiwRU?=
 =?us-ascii?Q?E4Uu+x+yYY3V2kX7feU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB4484.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2935a1da-ee1a-422a-9bf2-08dbe093791b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2023 19:46:59.9536
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ykMLJaWZ9RX8OPOghMjc4AsCDseFWT4rVIjtey1qNdrXEkmAaapOiBtrPqYRB4jl27qzRpOILM2oPv7nYmUFTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7684
Message-ID-Hash: AMLD473RPUMOR5TWE5OSWPECT6Y74QUN
X-Message-ID-Hash: AMLD473RPUMOR5TWE5OSWPECT6Y74QUN
X-MailFrom: aki.tomita@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] Announcing 4.6.0.0 Release Candidate 2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SI5KMD4MORKQSFA5G35AX5NN3CM6OJLM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5241689904679760743=="

--===============5241689904679760743==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR04MB44849DC0F58463344505021BF5A8ABL0PR04MB4484namp_"

--_000_BL0PR04MB44849DC0F58463344505021BF5A8ABL0PR04MB4484namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Release candidate 2 of UHD 4.6.0.0 is available for testing.
This release adds lower sampling rates, phase repeatability and dual rate s=
upport for the NI Ettus USRP X440.

Tag for the UHD release candidate:
https://github.com/EttusResearch/uhd/releases/tag/v4.6.0.0-rc2

Tag for the filesystem release candidate:
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.6.0.0-rc2

Thanks,
Aki

## 004.006.000.000
* ci
  - only build docker images once per week
  - propagate testLength to RF ATS
  - replace deprecated ruamel.yaml methods
  - use build farm for windows builds
* cmake
  - Fix make_x410 and make_x440 targets
* deb
  - copyright file update to eliminate errors and warnings
* docs
  - X440: Add FBX to daughterboard list
  - X440: Corrected web link syntax in FBX doc.
  - x440: Add X440_X4_200 to image flavors
* examples
  - L band capture example using dual rate
* fpga
  - ci: Add X440_X4_200 to pipelines
  - lib: Allow buffering in eth_ipv4_chdr_adapter
  - n3xx: Add CE clock
  - rfnoc: Add clock info to backend ifc
  - rfnoc: radio: Add clock index parameters
  - tools: Add X440_X4_200 to X440 package
  - x400: Add CE clock
  - x400: Add X440 200 MHz variant
  - x400: Split DRAM interface into two banks
  - x400: Split DRAM interface on X440_X4_200
  - x400: Update PL DRAM speed bin
  - x400: bump minor revision
  - x400: pps_sync cleanup
  - x400: propagate pps_sync changes
  - x400: update signals to run on two domains
  - x440: cpld: led control cleanup
  - x440: remove extra synchronizer
* images
  - bump x4xx fpga images
  - update non-x4xx images
* lib
  - rfnoc: Add clock info fields to client zero
  - rfnoc: Add support for auto-clock discovery
  - x4xx: Use auto clock ID in x400_radio_control
* mpm
  - Add LUT for def. MCR per DSP bandwidth
  - Disable MTS completely for dual rate
  - x400: Align FPGA revision
  - x400: match HDL PPS updates
  - x400: make PRC a multiple of both rfdc rates
  - fix timekeeper misalignment
* multi_usrp
  - Added module_serial to info
* rfnoc
  - Enable SEP throttle register
  - image builder: Add clock index support to image builder
* utils
  - init device with gpsdo sources in query_gpsdo_sensors
* x4xx
  - Add support for auto clock ID

--_000_BL0PR04MB44849DC0F58463344505021BF5A8ABL0PR04MB4484namp_
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
<p class=3D"MsoNormal">Release candidate 2 of UHD 4.6.0.0 is available for =
testing.<o:p></o:p></p>
<p class=3D"MsoNormal">This release adds lower sampling rates, phase repeat=
ability and dual rate support for the NI Ettus USRP X440.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the UHD release candidate:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/rele=
ases/tag/v4.6.0.0-rc2">https://github.com/EttusResearch/uhd/releases/tag/v4=
.6.0.0-rc2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the filesystem release candidate:<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/meta-ett=
us/releases/tag/v4.6.0.0-rc2">https://github.com/EttusResearch/meta-ettus/r=
eleases/tag/v4.6.0.0-rc2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Aki<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## 004.006.000.000<o:p></o:p></p>
<p class=3D"MsoNormal">* ci<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - only build docker images once per week<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - propagate testLength to RF ATS<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - replace deprecated ruamel.yaml methods<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - use build farm for windows builds<o:p></o:p=
></p>
<p class=3D"MsoNormal">* cmake<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Fix make_x410 and make_x440 targets<o:p></o=
:p></p>
<p class=3D"MsoNormal">* deb<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - copyright file update to eliminate errors a=
nd warnings<o:p></o:p></p>
<p class=3D"MsoNormal">* docs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X440: Add FBX to daughterboard list<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - X440: Corrected web link syntax in FBX doc.=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Add X440_X4_200 to image flavors<o:p>=
</o:p></p>
<p class=3D"MsoNormal">* examples<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - L band capture example using dual rate<o:p>=
</o:p></p>
<p class=3D"MsoNormal">* fpga<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - ci: Add X440_X4_200 to pipelines<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - lib: Allow buffering in eth_ipv4_chdr_adapt=
er<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - n3xx: Add CE clock<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add clock info to backend ifc<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: radio: Add clock index parameters<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - tools: Add X440_X4_200 to X440 package<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add CE clock<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Add X440 200 MHz variant<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - x400: Split DRAM interface into two banks<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Split DRAM interface on X440_X4_200<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Update PL DRAM speed bin<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; - x400: bump minor revision<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: pps_sync cleanup<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: propagate pps_sync changes<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; - x400: update signals to run on two domains<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: cpld: led control cleanup<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp; - x440: remove extra synchronizer<o:p></o:p><=
/p>
<p class=3D"MsoNormal">* images<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - bump x4xx fpga images<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - update non-x4xx images<o:p></o:p></p>
<p class=3D"MsoNormal">* lib<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add clock info fields to client zero=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - rfnoc: Add support for auto-clock discovery=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x4xx: Use auto clock ID in x400_radio_contr=
ol<o:p></o:p></p>
<p class=3D"MsoNormal">* mpm<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add LUT for def. MCR per DSP bandwidth<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - Disable MTS completely for dual rate<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Align FPGA revision<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: match HDL PPS updates<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: make PRC a multiple of both rfdc rate=
s<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - fix timekeeper misalignment<o:p></o:p></p>
<p class=3D"MsoNormal">* multi_usrp<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Added module_serial to info<o:p></o:p></p>
<p class=3D"MsoNormal">* rfnoc<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Enable SEP throttle register<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - image builder: Add clock index support to i=
mage builder<o:p></o:p></p>
<p class=3D"MsoNormal">* utils<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - init device with gpsdo sources in query_gps=
do_sensors<o:p></o:p></p>
<p class=3D"MsoNormal">* x4xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add support for auto clock ID<o:p></o:p></p=
>
</div>
</body>
</html>

--_000_BL0PR04MB44849DC0F58463344505021BF5A8ABL0PR04MB4484namp_--

--===============5241689904679760743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5241689904679760743==--
