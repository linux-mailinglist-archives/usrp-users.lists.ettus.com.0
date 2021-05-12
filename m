Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4C037C775
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 18:25:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4795B38460D
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 12:25:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="J+2amJAN";
	dkim-atps=neutral
Received: from smtpvbsrv1.mitre.org (smtpvbsrv1.mitre.org [198.49.146.234])
	by mm2.emwd.com (Postfix) with ESMTPS id A8D30383F54
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 12:24:33 -0400 (EDT)
Received: from smtpvbsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id 31AB13AE013
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 12:24:33 -0400 (EDT)
Received: from smtprhbv1.mitre.org (unknown [10.20.0.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpvbsrv1.mitre.org (Postfix) with ESMTPS id CEE4F332009
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 12:24:32 -0400 (EDT)
Received: from mbfesmtp-mgt.mitre.org (unknown [198.49.146.235])
	by smtprhbv1.mitre.org (Postfix) with ESMTP id BEB8280B27D
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 12:24:32 -0400 (EDT)
Received: by mbfesmtp-mgt.mitre.org (Postfix, from userid 600)
	id 4FgKr05Sk1z3D49W; Wed, 12 May 2021 16:21:41 +0000 (UTC)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2109.outbound.protection.outlook.com [104.47.65.109])
	by mbfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 4FgKmd2llQz3D4CN
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 16:21:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaS91eX38+d1MORjoINphyK6fR7nA5BA9OW2nUVUE1030ifb4kNOGV78ZZuMn/RroDiaUNCUHdOdFFcv4AiDtb9U5/NcrkBvcgchcXdYlB+O04RQ/4Iu4HdjXtrFJVKlU9/dmUBtObO8cQi1iX5AWJ8Ae67Dj6TyhFvdGvc5L/t2eQxsnfsCnfsz/Uq2yc0bInRCLPUMjijRGchPg9EVmPqvghb/0/Y8YnzPGa2CJf4/2Gfs8bvPtsFuvkM7cd61zO/NVePjsaa2q283JeheSOSqccFxzDpbzZSNIqISD0MPw6z+2hho+V7WUD0wMPfpx9BsTs1vqBICn8PFZMKipg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zL3SlXoVaNz28SxQDKe7V8+crPITudmhXVghh4V62d0=;
 b=m41f9FRp8PrB+n5Mhl4AIHPswRKjoYYnkShyfXujijmTUqaH0jFFKO+1UG/ncu5f2lNJjMQvooUByTUyzGttgdQyHx6DgFdxNAJ3X33/5UmfViq3vQjw6W0ogu0wUVKnWBTpCdsWigFR2A0JONZPeWRY0p34RyJNNiHVNdKiPqQjA+o4wETo2l2UFdqDpbJ5S19LoM8moLFwAUjxDKF2KxT4A938AOg3mf6Ivgw1SeEC8uEU4mhpb+TgZ5KOI6phshZOPQG81d8s4waWIUS/Fh4HFRufkx0jc0kiiY7UmpFb2WLwnRGEaZGKh1CJyd4dDVtsd2Z/H5XApIs4IMCqKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BLAPR09MB6612.namprd09.prod.outlook.com (2603:10b6:208:2ae::11)
 by MN2PR09MB4955.namprd09.prod.outlook.com (2603:10b6:208:223::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 16:21:35 +0000
Received: from BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::d842:7a8a:57f2:4191]) by BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::d842:7a8a:57f2:4191%6]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 16:21:35 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Failed to update E320 to UHD 4.0
Thread-Index: AddHSa712FXrKENSSie/CVREIO6yNQ==
Date: Wed, 12 May 2021 16:21:35 +0000
Message-ID: 
 <BLAPR09MB66123CC6EF4811FC745710BFD9529@BLAPR09MB6612.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=mitre.org;
x-originating-ip: [192.160.51.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e18fb17-85ef-4fa9-5898-08d91562030e
x-ms-traffictypediagnostic: MN2PR09MB4955:
x-microsoft-antispam-prvs: 
 <MN2PR09MB4955F87342D6E6FF0C672F60D9529@MN2PR09MB4955.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9CEV3U/Tc5k2uiJ2B4VT9hTlrwwSao5X9Sxk2MPZXPzKcpHZM/cri/QaQLmFpA2l8Zcw1TbLlhpVNgDABO8x3K+Ru2WhlVjLWK99x6jMigWdFQaOz17W2xkrAvwaH75hvLrM93CWKKsBDuJaIX0Y5QPtuXOiCPfcWjAUM1zaOTeQS/s0f6PeKfxZQnIGPFBt6qXE6EHkhcv64fAdGEyE2fC+io19JKQMA/V29pW5s4CQkrnfTl89eo+ir5RKn05k2PyHMMUbQufdMgrDWue5Fld41zwCbYEn+92ykH6ZQuciKEXBMfuP1hr5s8ClitKM7l21DOLMkPrwkAJa8CZzeR/DPbNIUj99alz0WheOvkIEmQaLgoS1IVmhp54u3LMOnjNcow0j1AxsL2hXDKDSXEFwZBTvO5fEQodAJ8rCJKJy8ALLE5Co6nL6ucecf19HpK7xp2Z3w3LcI4mPANCPYh773fXdrVCQEDsPn7O+5w6nYlX9oYqNM5He0NWIaOqSqai/0QRikaokD3IMrSnEZTmDsgH7+VeEERn+nkCBKSSkWoSYSpV/+FCkvD9UFz1355YdmmWyIusmG6g+yAdt1gL01nxfbej2WhHZtiSVuPU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR09MB6612.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(39850400004)(366004)(376002)(396003)(346002)(8936002)(6506007)(8676002)(83380400001)(2906002)(15650500001)(86362001)(7696005)(71200400001)(26005)(122000001)(186003)(66556008)(52536014)(66446008)(478600001)(9686003)(33656002)(55016002)(38100700002)(66476007)(76116006)(5660300002)(66946007)(316002)(64756008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?tjy9RDE32V27lD7c/E3jMfu2FstQ4f0k33eMXJLV10OCTgBsQJgJ+h0OXFt5?=
 =?us-ascii?Q?dkYuqovB31VItgbr4B5f8RfPEaCVSw4SmlAAQQp3jQwbwQIDPyH0tbNurgNc?=
 =?us-ascii?Q?Zi7adZVILby9Bcj32TtOIF1P+oi7Xv9hLNgmEP3XA6KhjDGYn3KZMtrxMnLK?=
 =?us-ascii?Q?P0EGpO8EEO8b7n7xEeMqa6EwsWAcHkbQy9bTrRdEjDruW88q+mqWgunS9IFX?=
 =?us-ascii?Q?Of9u8VxjzD0N4lwfxfH+i7IxloMV12KHfmkqFEY4OM1kk7pnpfoL0BNzU41g?=
 =?us-ascii?Q?+EWtp1mAJL1t75La5UtJyDIze2qUyhBRJgNpIcEJcZjDbVbkugH92xXJ6B7h?=
 =?us-ascii?Q?GVVsTNcAWtLdC2v0/E1Hlm4AcaQ4uWoQCQ7YzVZLhw5eEmga1PEdqahWyZli?=
 =?us-ascii?Q?hsHjAJ/7eLs06BCG1/l6FrS1feFTA0pJzyLbsuKgYQt43Z7FLP01LVnXbjUN?=
 =?us-ascii?Q?4rtG1qfQrE8A4eKo4pHQi1I72cHdEESZDXit/FQ2BjLzXXajST88ZKfziqu0?=
 =?us-ascii?Q?OcFhYdJIEMO6EGCsKCEGW0W8ZS9588pefZ5jTajawGO3U2trX2n6RkymxUZv?=
 =?us-ascii?Q?EERoKCc0pha/OCZY7xoPOj5QPUBu17hJOSjbC4MiBA4VmBMYkFQDWqkyfQgf?=
 =?us-ascii?Q?MkI/4QuUGT1Zy/FSQH06hiCt01Xh1Ut6sPQ/8HR3YWWm3JNF91w+IIiAkmpW?=
 =?us-ascii?Q?0EOXtGbBMqXvkI8wI6JynG+Z0fVPHfBvzSOWAkKf9jNDNEM/ctn/O7xJhZHU?=
 =?us-ascii?Q?3h155fNVgdp1l9XnzOCXrVa4f5PBALZigEC8CZY2/7yycj+5nKX3zpoLiSeP?=
 =?us-ascii?Q?0qn3iirwjv/OYyMoyMrSy02dQo/txev2NmeIT8dw8vTyr4w1VFa8/Edphw8q?=
 =?us-ascii?Q?udEWCF5I33ah5UKntAHLcInLg1Rm2EYrTkJgfBhvP7rjVzZsqAjZvx0YgDc2?=
 =?us-ascii?Q?AUwQWzeEJbasu4PbFMcslkcivTjTZz47hmYPZH62hfJBXXLlFnqWNyxkVrYX?=
 =?us-ascii?Q?pbfrrLqjxLbi2hwXbXcbvmbww+tYRSo6h16t7ebEE4PKc260kj4i4E2JHZJg?=
 =?us-ascii?Q?UNtCMrPglyqf0BtzK/NHaKfmBAZsK4egpCJB8leghDOD9KWP7gBhJh4Wd19i?=
 =?us-ascii?Q?a2r+8cMf/FjrrSuvwg5zWQC3ogK77G/Uuy1FuAnVP7ZsrWPfO34i4SM/nBya?=
 =?us-ascii?Q?VDhvh38AUyY+wLDKAgB5THHQ6xDcEEl8szB0dtuOJdhxXmeNhlqDzTWMBV+o?=
 =?us-ascii?Q?UJBQczh7zFf4GwMHRyfSixVttXCYIgNSKYFisyWABBd3yd0+eXcBjy9HVzia?=
 =?us-ascii?Q?G5mbZKbeFtwKnW/bV8UDZ4d1?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR09MB6612.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e18fb17-85ef-4fa9-5898-08d91562030e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 16:21:35.0312
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4955
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:subject:date:message-id:content-type:mime-version; s=BTxNELhf; bh=zL3SlXoVaNz28SxQDKe7V8+crPITudmhXVghh4V62d0=; b=J+2amJANPS5tUNgyvbHbyf2H7/Z9EQTw4SqmFac2i6cfjT5oM49XJcNeYzV8pLHA3dmPl/EIGO+31UTFHNEEPSTrnzL/5NHl4Z8LlsXfHj6/uOATq44QptSVP5LAcK6tEM+LM1T01mykVPKTA4WuJKP0unRUq74wHNH5M5eMdVE=
Message-ID-Hash: PMGVCQ32HTU24YVOECGAEJBYGC4E7PLY
X-Message-ID-Hash: PMGVCQ32HTU24YVOECGAEJBYGC4E7PLY
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Failed to update E320 to UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C2DSFJUHJHKZ2XXVU4H2OSTMXMUCRFT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4758290270810291981=="

--===============4758290270810291981==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLAPR09MB66123CC6EF4811FC745710BFD9529BLAPR09MB6612namp_"

--_000_BLAPR09MB66123CC6EF4811FC745710BFD9529BLAPR09MB6612namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a E320 that I wanted to update to UHD 4.0. I am currently at 3.15. I=
 downloaded the mender artifact and image from files.ettus.com.

I first tried to mend it. I scp'd it and attempted it. The following is the=
 result from that.

root@ni-e320-31DCD15:~# mender -rootfs /home/root/usrp_e320_fs.mender
INFO[0000] Configuration file does not exist: /var/lib/mender/mender.conf  =
module=3Dconfig
INFO[0000] Loaded configuration file: /etc/mender/mender.conf  module=3Dcon=
fig
INFO[0000] Mender running on partition: /dev/mmcblk0p3   module=3Dmain
INFO[0000] Start updating from local image file: [/home/root/usrp_e320_fs.m=
ender]  module=3Drootfs
Installing update from the artifact of size 89829376
INFO[0000] no public key was provided for authenticating the artifact  modu=
le=3Dinstaller
ERRO[0000] Installation failed: installer: failed to read and install updat=
e: will not install artifact with state-scripts when installing from cmd-li=
ne. Use -f to override  module=3Drootfs
ERRO[0000] installer: failed to read and install update: will not install a=
rtifact with state-scripts when installing from cmd-line. Use -f to overrid=
e  module=3Dmain
root@ni-e320-31DCD15:~#

During this process, during the scp I noticed that it complained about the =
disk being full. I am using a 16 GB sd card (actually the one that came wit=
h it) and there is nothing extra on it other than the standard UHD 3.15 etc=
. Thinking that might be an issue I decided to try popping the cover and bu=
ilding a new 16 GB card from scratch using the image I downloaded.

After doing:

jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_default-v4.0.0.0$<mail=
to:jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_default-v4.0.0.0$> =
sudo dd if=3Dusrp_e320_fs.sdimg of=3D/dev/sda bs=3D1M
dd: error writing '/dev/sda': No space left on device
14773+0 records in
14772+0 records out
15489564672 bytes (15 GB, 14 GiB) copied, 1904.36 s, 8.1 MB/s
jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_default-v4.0.0.0$<mail=
to:jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_default-v4.0.0.0$>

When I tried to boot this popped up so that is probably no good based on it=
 running out of space:
[FAILED] Failed to start File System Check on /dev/mmcblk0p4.
Then it went into emergency mode.

Does UHD 4.0 require a bigger disk?

Thanks
Jeff Long

--_000_BLAPR09MB66123CC6EF4811FC745710BFD9529BLAPR09MB6612namp_
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
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">I have a E320 that I wanted to update to UHD 4.0. I =
am currently at 3.15. I downloaded the mender artifact and image from files=
.ettus.com.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I first tried to mend it. I scp&#8217;d it and attem=
pted it. The following is the result from that.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">root@ni-e320-31DCD15:~# mender -rootfs /home/=
root/usrp_e320_fs.mender
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">INFO[0000] Configuration file does not exist:=
 /var/lib/mender/mender.conf&nbsp; module=3Dconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">INFO[0000] Loaded configuration file: /etc/me=
nder/mender.conf&nbsp; module=3Dconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">INFO[0000] Mender running on partition: /dev/=
mmcblk0p3&nbsp;&nbsp; module=3Dmain<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">INFO[0000] Start updating from local image fi=
le: [/home/root/usrp_e320_fs.mender]&nbsp; module=3Drootfs<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Installing update from the artifact of size 8=
9829376<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">INFO[0000] no public key was provided for aut=
henticating the artifact&nbsp; module=3Dinstaller<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERRO[0000] Installation failed: installer: fa=
iled to read and install update: will not install artifact with state-scrip=
ts when installing from cmd-line. Use -f to override&nbsp;
 module=3Drootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERRO[0000] installer: failed to read and inst=
all update: will not install artifact with state-scripts when installing fr=
om cmd-line. Use -f to override&nbsp; module=3Dmain<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">root@ni-e320-31DCD15:~#
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">During this process, during the scp I noticed that i=
t complained about the disk being full. I am using a 16 GB sd card (actuall=
y the one that came with it) and there is nothing extra on it other than th=
e standard UHD 3.15 etc. Thinking
 that might be an issue I decided to try popping the cover and building a n=
ew 16 GB card from scratch using the image I downloaded.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After doing:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><a href=3D"mailto:jplong@mm241897-pc:~/proj/e=
ttus_e320/e3xx_e320_sdimg_default-v4.0.0.0$">jplong@mm241897-pc:~/proj/ettu=
s_e320/e3xx_e320_sdimg_default-v4.0.0.0$</a> sudo
 dd if=3Dusrp_e320_fs.sdimg of=3D/dev/sda bs=3D1M<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">dd: error writing '/dev/sda': No space left o=
n device<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">14773+0 records in<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">14772+0 records out<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">15489564672 bytes (15 GB, 14 GiB) copied, 190=
4.36 s, 8.1 MB/s<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><a href=3D"mailto:jplong@mm241897-pc:~/proj/e=
ttus_e320/e3xx_e320_sdimg_default-v4.0.0.0$">jplong@mm241897-pc:~/proj/ettu=
s_e320/e3xx_e320_sdimg_default-v4.0.0.0$</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I tried to boot this popped up so that is proba=
bly no good based on it running out of space:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">[FAILED] Failed to start File System Check on=
 /dev/mmcblk0p4.<o:p></o:p></span></p>
<p class=3D"MsoNormal">Then it went into emergency mode.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does UHD 4.0 require a bigger disk?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff Long<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLAPR09MB66123CC6EF4811FC745710BFD9529BLAPR09MB6612namp_--

--===============4758290270810291981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4758290270810291981==--
