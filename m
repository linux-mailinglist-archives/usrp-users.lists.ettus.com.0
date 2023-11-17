Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E73A87EF603
	for <lists+usrp-users@lfdr.de>; Fri, 17 Nov 2023 17:18:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B02B2384CF9
	for <lists+usrp-users@lfdr.de>; Fri, 17 Nov 2023 11:18:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700237916; bh=o0KDTSpL/CYhVBA94/jtn0PCCxRBQyUbCHPeSGbABgw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FQxl6tyOc2Wsu/zJcUBpcbFbhcr9XHOhsoUVo4bkVtmOlH7GgALIcfNdIVneyC5L/
	 Q69yJ1aWLh9KQddSJCRQY81txSjXXiuAcW97PyZgWta74ts70mGCfUZZJplDN/Q7KU
	 EIHGieDrISXjuXMl1YfxQIOuQvi5JS2St8i/j+0Vzz9hYkQPgec53II4IpBwTca1Ow
	 5Upr09sok2NVJNTiN3bw/QG4Couv+oO6deMtt2/xRwt1mNsTr/H4LAhlLh9ISlh7ae
	 rI6PO6TPviWGMNhVL39gvEOhieEqQlxzWENd6UwvsU9+kFUjFzBVd5XHEHtB1xOadr
	 cyNs5eVKMX7yQ==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2137.outbound.protection.outlook.com [40.107.243.137])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A5CB384CF8
	for <usrp-users@lists.ettus.com>; Fri, 17 Nov 2023 11:17:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="F1DUXUFj";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6QKMx/CdpfQQY5+fxSK2/0EcbBDxmA8fryYLE4XMIpY1jPZsbBMItE8SzVcOilh5iayd5GxDbJFnbywQfz5fdK4/86P3Ed2QmqVTcjyB/L12fO/5UujzKLxzHfHn4+d3l8nBt0o1EjCTTzBS7mygUnGQzr9iAcJauiNzfPfjfunV2GUaoit0yd6cs5L410u2paJyVFw0swXKauOTQVpELtUGxoTW9eBrWFKW/dHQiY7eKn7StzP+VrUWOKSHlWM+1GNjzZxWSwsi+GXdazJ7iVupPV3VhJYWJfK+FcRzhw1a+0M7TjYlPCy+hGt/PqnfYslkR9rf0bs6WZOXWpHJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jhMXViNTDALWvDMHJrvxj14YoNJs1bQ38BjBuJwfiSk=;
 b=dmTlJDhMb5QPpHQ+BMeY1kDvZx7PKP84+pFbJ8+wQ54gNuhhf+l1y1w6cZLFsU6rfpqcWp5q0AKRodGjuaI5BHpj2MuWmugusrC6JvBw6vTlD3vv9RwkytvM4MFnPwJz5kpr5xcrAN4IWzzQca8J2pI1NkkDAnlDhfiUBfQPl7eJYmBqsgwEIzxI3X/sogoZVO38yJukwqbXEOJ4X3Qxe/aj+E+KLJGNMIOed22Op19t50flwM1ow/B/DaWyXwMCJLoJ+QhZt+66keGn+/7ZN6fU2mtmEYBFNYyN0eIcBzLellqnYYcvLHpRnqq/6KTrartY/6ds45RbknwTe+A4PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jhMXViNTDALWvDMHJrvxj14YoNJs1bQ38BjBuJwfiSk=;
 b=F1DUXUFjZXHEeRvN5YUUftJYMorsp4T+wlQopf5iYaKinqZDYHA/sxSiCuBuaiC0ZonDREdeTQosNoDDUZvflDWCQeKqmrrajf7p/kN/Ant8fumLd2Lrd1YScZ+mT5dI//DRVVDtutg69EgSOwLB9/pcrSoIexJUNEBcHJ9+RLc=
Received: from BL0PR04MB4484.namprd04.prod.outlook.com (2603:10b6:208:41::33)
 by DM8PR04MB7815.namprd04.prod.outlook.com (2603:10b6:8:34::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Fri, 17 Nov
 2023 16:17:56 +0000
Received: from BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::247e:efd9:4ed4:d7bf]) by BL0PR04MB4484.namprd04.prod.outlook.com
 ([fe80::247e:efd9:4ed4:d7bf%6]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 16:17:55 +0000
From: Aki Tomita <aki.tomita@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [UHD] 4.6.0.0 Release Announcement
Thread-Index: AdoZbm/ifMp6ANiEQQ+Rl/4oCdIb4Q==
Date: Fri, 17 Nov 2023 16:17:55 +0000
Message-ID: 
 <BL0PR04MB4484CFBF794AC3751C17B6F0F5B7A@BL0PR04MB4484.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=12428e12-3bca-4dba-a913-da15b6efbf4a;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-11-17T15:54:33Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR04MB4484:EE_|DM8PR04MB7815:EE_
x-ms-office365-filtering-correlation-id: 513372b5-c46f-49e6-254a-08dbe788c1cb
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1xTwPJZIWce3BCe2qIgFYfRrRd799dIqaYFG8YnFp45CMhlRGA1Pbdkj256TZvm9OMaaLCpx0y6LDNNzSEJ+ficD9B6bveWAqZ0aOLXWKh6jCBqq8mNiQPH8aaxjCwYo6p1Q8WCsqSKU5+ffhrbqlNgkKcopllF8XT+ZVu5Q8DeWUhVHPCx2j6tK1POl8gNNv+lqX8YuI3FWUYbQkujw/k+ZA12zusfNyj2W6qCIB+8u9z85WVoJjFxkGoT3QBgOCcH64DOX6vo3qM8NYB5PbA9vHn3fGH5uICsJsTE/Yl9lHxZfG2OdeWLW8LksQ95AUq+9a6WOA6J7ZieMDuY6hn1RfDtQnWwb3nSQHfgJtdVsmF+wk06IKexgq+xvCpGfw1ukmK9Ta8LgbRUbX18lUYc/VbeDE3yxcqTZWQE2ChCLfYcUmdhBsHR8n6hKkfO3xIst5SqJz+cKWlO/nABodIR0Ktwm8Fj1Pv516SwnqzBj1IYCkWWt/4lqCFeIzox/pBHOJL3ec6gHqv0yq6BM3lBVaSscekDu0v7YJCpj4Dly3Mf8beJzAW8rP6h+iPA9/+HifqSXB6GePgyttnsdPl9W82yklfxLt3Njx4Y6Sjs5tt14sxN/SEhcjd0wV9atuOraia/z9zjkK1LH4q/GrM/WUWUcrsXkKrXuembrjdYV7rkKaY9o7srv5z4Zwxdd
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB4484.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(396003)(366004)(39860400002)(230173577357003)(230273577357003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(9686003)(26005)(38070700009)(966005)(52536014)(86362001)(44832011)(8936002)(33656002)(41300700001)(5660300002)(9326002)(316002)(66446008)(66946007)(64756008)(8676002)(6916009)(76116006)(2906002)(66476007)(66556008)(71200400001)(7696005)(6506007)(478600001)(122000001)(166002)(38100700002)(55016003)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?wEo+IkCC73lK5dfjzkusEUx/t6bF4TxYHjXeZA7OxF0heQ1ZdUccoRMKHqLY?=
 =?us-ascii?Q?1x/rtBS3slSef/Xh+bu1SvydB+8M4qGU0MCfHYKcxheDb5SaB9ftgSqu01i8?=
 =?us-ascii?Q?ttYe+5wh6MyxjS2b7TNpLLNcQC36a3ioKTtDGBdj08bCn/BRhXK7EVMMFEt9?=
 =?us-ascii?Q?SJDmz2B42EvNwEOO3o5NxKFhS31BGVeuz738+QyUxwUZYPIoKHJPgdrr6vdt?=
 =?us-ascii?Q?bjQso7gKAFHpmsF6ifJd+tf0NgHN1rFUdhJKF2DANoxJdwKhExloRB20qOZU?=
 =?us-ascii?Q?Uls3SDv2Bu1kKlLF3dbGiSNMqRJOu7/I4LgpvUsYdVMWBL3VjzLx1qd0k9hQ?=
 =?us-ascii?Q?iywFMEIqEHdQSQ+qi8dUxV0NXSCljUdgCV/cDw7iFez0O1NB+nStybXN/r1h?=
 =?us-ascii?Q?tPWF9s6LZjW00OaE9DlmNZ4TVQYQhz6fL3Nes3zBQp/7rSqnIySle2+MK0A2?=
 =?us-ascii?Q?YzLGduCqNtRCaOgRLnCmygdLMXnbfaNgH9G/l6acm46Zr+Q3zUziKu/+paLJ?=
 =?us-ascii?Q?vLfvPhI/aGpk955+tBETgcasi5QN3Sw1XJKEmivb7LXIjIVtz75Vw0Kcc4Rl?=
 =?us-ascii?Q?Q+KODImsjYwHi84lPa9dSaHxm5pOjebYMczohAnsVoK+IKMBSrBkV58FM6ZX?=
 =?us-ascii?Q?5RNgK/lFU0i5nltGbG7hfwDy2AjnqKWMLJh4MFEqpgpbBOixIHw0U2+ydupk?=
 =?us-ascii?Q?1y7iX90FVZAoz44wYKN3MaBXRPOdMgLnO2l5muTqOc+EdUC3dwQWGJJ5+x98?=
 =?us-ascii?Q?nHZMQ8sk567zP3HBvHh6J6DWsalX1e1epSvkyvQ6pooE6Lk0IZLgbdU4Hinf?=
 =?us-ascii?Q?aE1Ek7RFimlXq6JOKRb7FYN/MOosMAKDz9eGrQxTwxgX35soG8+ko41AJMuo?=
 =?us-ascii?Q?uf+1cSMrHtoGNSnHD4TcUgxxvNkZjQtYVaCjOn3uS/HNBUxqwfXHjk6NkaeB?=
 =?us-ascii?Q?rCPtcGVb0YyfWqxx0VTmK4dBHIg+u06Jq1DRu7PN8xVFhM+BlyJIuZBq+98l?=
 =?us-ascii?Q?nCOs5r2gY6aL5PmS4T2cfATwxA7ibKqwbWAQ9F3zEGGsiDT4WJ9oHXiyPNSJ?=
 =?us-ascii?Q?P06Qb+5/Vc2ztJC9ZYrF15ueS2e4YmGfnSTsTKfk/PHZ2DsLD46NxHkixvOU?=
 =?us-ascii?Q?SqDq3ksMY93DTfa18l9XRSo1Q6HkaSk3mLTaLQsCB1mCWP3upZtnVFpvuwHt?=
 =?us-ascii?Q?Ppu6kl4kX8zAEBAHvsSVBSIkPPj5AhwYRXHETOXNS7fmlTa4/da/VpJxCXdl?=
 =?us-ascii?Q?fHb4H50UwyyLrORfx8midQQ+c/8zrhoVcETPe3X9Kuxb4MplvCZLsAnqlB0e?=
 =?us-ascii?Q?K3Qgr/F2ffGxiYIU/lJb7g3nghGL9Qkg9GnhqXJpytPISbcWVA3SHlVzHPN3?=
 =?us-ascii?Q?GOcq9CymbkyHZC8KMGKz+PoIy+WIdbxcCSgRDE8OnBFWfkP4MwV4KhAvOE4c?=
 =?us-ascii?Q?PC90nDDvMXiGHNus+SknWnnh4KWTqFntMmd3KuA0+9bwwQaNVyu1BmjPVs8T?=
 =?us-ascii?Q?tSCFn79iNTnIcaTVkn+e8sOMNzQqYy5+18A0oSyF9QQqWvP37FlRv2Mi1wTg?=
 =?us-ascii?Q?Fy/LCsjKYY6+jwvCoOM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB4484.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 513372b5-c46f-49e6-254a-08dbe788c1cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 16:17:55.5820
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WxsqUG7qnyIxX0DbHZ+oNl3QriLannulzHFmUQkWKgRbH7jNNxXRmZToPmPE2XN1ukMh7er7OqhotJI2t0/p8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB7815
Message-ID-Hash: V6JP3MFKJQBNYMLSCSYMVQIECZRS3H5Q
X-Message-ID-Hash: V6JP3MFKJQBNYMLSCSYMVQIECZRS3H5Q
X-MailFrom: aki.tomita@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.6.0.0 Release Announcement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PXF7UFWNJMO53MVFSPJIO6ZMRO5UUGIX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8162076200197673273=="

--===============8162076200197673273==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR04MB4484CFBF794AC3751C17B6F0F5B7ABL0PR04MB4484namp_"

--_000_BL0PR04MB4484CFBF794AC3751C17B6F0F5B7ABL0PR04MB4484namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

The UHD-4.6.0.0 release is now available.
This release adds phase repeatability, dual rate support, and lower samplin=
g rates for the NI Ettus USRP X440.

Tag for the UHD release:
https://github.com/EttusResearch/uhd/releases/tag/v4.6.0.0

Tag for the filesystem release:
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.6.0.0

Installers for Windows and Fedora:
https://files.ettus.com/binaries/uhd/uhd_004.006.000.000-release/4.6.0.0/

PPA for Ubuntu:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd

Thank you to everyone who has contributed by posting pull requests and fili=
ng bug reports.

Thanks,
Aki

CHANGELOG:
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
  - X440: Add X440_X4_200 to image flavors
  - X440: Add dual-rate documentation
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
  - x400: Add X440 200 MHz variant with DDC/DUC
  - x400: Split DRAM interface into two banks
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
  - x440: Add lookup table for default MCR per DSP bandwidth
  - x440: Multi-Tile Sync disabled when using dual rate
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
  - FPGA designs now use a replay block per utilized DRAM bank
* x440
  - Add support for using radio block specific master clock rates
  - X4_440 and X4_1600 fpga image now contain 2 replay blocks
    (number of ports per replay block halved compared to previous release)

--_000_BL0PR04MB4484CFBF794AC3751C17B6F0F5B7ABL0PR04MB4484namp_
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
<p class=3D"MsoNormal">The UHD-4.6.0.0 release is now available.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">This release adds phase repeatability, dual rate sup=
port, and lower sampling rates for the NI Ettus USRP X440.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the UHD release:<br>
<a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.6.0.0">http=
s://github.com/EttusResearch/uhd/releases/tag/v4.6.0.0</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tag for the filesystem release:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/meta-ett=
us/releases/tag/v4.6.0.0">https://github.com/EttusResearch/meta-ettus/relea=
ses/tag/v4.6.0.0</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Installers for Windows and Fedora:<br>
<a href=3D"https://files.ettus.com/binaries/uhd/uhd_004.006.000.000-release=
/4.6.0.0/">https://files.ettus.com/binaries/uhd/uhd_004.006.000.000-release=
/4.6.0.0/</a><o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - X440: Add X440_X4_200 to image flavors<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - X440: Add dual-rate documentation<o:p></o:p=
></p>
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
<p class=3D"MsoNormal">&nbsp; - x400: Add X440 200 MHz variant with DDC/DUC=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x400: Split DRAM interface into two banks<o=
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
<p class=3D"MsoNormal">&nbsp; - x440: Add lookup table for default MCR per =
DSP bandwidth<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - x440: Multi-Tile Sync disabled when using d=
ual rate<o:p></o:p></p>
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
<p class=3D"MsoNormal">&nbsp; - FPGA designs now use a replay block per uti=
lized DRAM bank<o:p></o:p></p>
<p class=3D"MsoNormal">* x440<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - Add support for using radio block specific =
master clock rates<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - X4_440 and X4_1600 fpga image now contain 2=
 replay blocks<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (number of ports per replay block=
 halved compared to previous release)<o:p></o:p></p>
</div>
</body>
</html>

--_000_BL0PR04MB4484CFBF794AC3751C17B6F0F5B7ABL0PR04MB4484namp_--

--===============8162076200197673273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8162076200197673273==--
