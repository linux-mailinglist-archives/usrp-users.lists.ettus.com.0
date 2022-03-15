Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C134F4D967F
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 09:42:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A6F8384C4E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 04:42:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="BPYZi22J";
	dkim-atps=neutral
Received: from mo3.myeers.net (mo3.myeers.net [87.190.7.238])
	by mm2.emwd.com (Postfix) with ESMTPS id 518C9384514
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 04:41:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=10699; q=dns/txt;
  s=eers-ng2048; t=1647333680; x=1678869680;
  h=from:to:subject:date:message-id:mime-version;
  bh=qdLITnlha0xx5t+Y+yaFjUv90h27ZyJV0Mup97uJB3g=;
  b=BPYZi22J5124SWjxjF/Wibv8RwPqoTE9wOGlLsZZEmec0jEcB1jB9NQn
   cTiZeSpLV2b2/7XSJPg7aeGAd5IOXDIYl4MRxkHPYZLdVCI7EwS06c+RB
   nRuPRnHoYjlAP5OytcSGjWMgrYoKPS7f3LNAW+NPV/lmGfjjFnV0OrpDC
   288sVvm7CuaDsx+dQB+tbGuGurfAIcAe4XJ8559ahvtAW4fXgQmUoFMvT
   BUC99xClOYvCtygpwsdS/HaPEOPNU6EQ/c5WGvnXixCnBlCQhi90854sL
   BFOO2CnTsBtAvHaKyBi5rSc3Q/qNEOhW1jH3ij8D/+4SY1h8JZHIUDLbj
   A==;
IronPort-SDR: K8zgzaHNSyNo6WI+pi0ZX2j9Llwp6iScLDIT05c44tqQzsYt55ZCiRXgoEtNoZV8JAJqP3rt9J
 7l9nYR7TESWw==
X-IronPort-AV: E=Sophos;i="5.90,182,1643670000";
   d="scan'208,217";a="320418964"
Received: from ec2-44-225-67-175.us-west-2.compute.amazonaws.com (HELO DE0-03HUB-P02.central.mail.corp) ([44.225.67.175])
  by de0-03iro-p04-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 15 Mar 2022 09:41:07 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-03HUB-P02.central.mail.corp (44.225.67.177) with Microsoft SMTP Server id
 15.0.1497.28; Tue, 15 Mar 2022 09:41:04 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:gjMuPqqHc6asSgZDBsghSqtIPhBeBmKPZxIvgKrLsJaIsI4StFCzt
 garIBmAOvrbZGD2KIska4rl/RwOuceAmtc3TFFp/ik1RCNBpZacVYWSI3mrMnLJJKUvbq7HA
 +byyzXkBJppJpMJjk71atANlVEliefQAOCU5NfsYkidfyc8IMsaoU8lyrZRbrJA24DjWVvW4
 I6q+qUzBXf+s9JKGjNNg068gEM31BjCkGtwUosWPK0jUPf2zhH5PbpHTU2DByKQrrp8R4ZWc
 93+IISRpQs1yfuN5uSNyd4XemVSKlLbFVbW1ioOA8BOiDAazsA5+v5T2Pbx9S67hh3R9+2dx
 umhurSSTVcXM/LGg94EVhZ+OhB4E6sF/qLYdC3XXcy7lyUqclPpyvRqSlouNIYVvOdraY1M3
 aVAbmlVNFbZ3qTtn9pXScE07ignBMziIZkeqHBniyrFAPgvR5GFTrXW6MVe1TMYj8FUF+vFI
 cEebFKDaTyaOUURZQxIWPrSms+omEbDMDhWhmvWpK0zu1P3y1chk5LUZY+9ltuiAJ89clyjj
 n/d5Xy8HwoXLse3zTue7mnqi/PTgDi9U4UXfIBU7dYz2BvKnjZVUkRQDgTTTeSFt3NSkul3c
 yQ8khfCZ4BrnKB3ZrERhyGFnUM=
IronPort-HdrOrdr: A9a23:+goJn69kciYT1dUzjDJuk+DZI+orL9Y04lQ7vn2ZLiYlF/Bw9v
 re/sjyt3fP4gr5PUtMpTnuAtjlfZqxz/JICOoqTNSftWvd2VdARbsKhbcKpQeOJ8SUzI5gPM
 lbHZRWOZnVN3kSt63H3DU=
X-IronPort-AV: E=Sophos;i="5.90,182,1643670000";
   d="scan'208,217";a="22067378"
Received: from unknown (HELO mail.space.it) ([10.102.21.37])
  by esa2e.demail.de.airbusds.corp with ESMTP; 15 Mar 2022 09:41:04 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 297A82B80EB
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 09:41:20 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from SPROMMAIL02.spengtes.space (unknown [10.102.17.16])
	by mail.space.it (Postfix) with ESMTP id 38E642B80EB
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 09:41:17 +0100 (CET)
Received: from SPROMMAIL03.spengtes.space ([::1]) by
 SPROMMAIL02.spengtes.space ([10.102.17.16]) with mapi id 14.03.0513.000; Tue,
 15 Mar 2022 09:41:47 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: error during x310 fpga build
Thread-Index: Adg4RxPobtu2t5P8RVa/NhepSvcWSA==
Date: Tue, 15 Mar 2022 08:41:47 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D629DFE934BA@SPROMMAIL03.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24900.000
x-tm-as-result: No--23.274000-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-SNTS-SMTP: 9332B29C8A06DCCACC37C4FB75BC6DBD8A785D95E930167A022A06FFA6F960D82000:8
X-GM-Security: forwarded
Message-ID-Hash: EXHE463UFIVTW6PA3TACDPH2LWZPHADM
X-Message-ID-Hash: EXHE463UFIVTW6PA3TACDPH2LWZPHADM
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] error during x310 fpga build
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EXHE463UFIVTW6PA3TACDPH2LWZPHADM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============7541643420553156695=="

--===============7541643420553156695==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D629DFE934BASPROMMAIL03spen_"

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE934BASPROMMAIL03spen_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI to all,
I have an ETTUS X310, I would like to build and load the original FPGA,
I loaded from repository the relevant file
The files are in:
/vhd/uhd-master/uhd-master/fpga/usrp3/top/x300
When I run make:

make
make -f Makefile.x300.inc bin NAME=3DX300_HG ARCH=3D PART_ID=3D BUILD_1G=3D=
1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  X300=3D1 TOP_MODULE=3Dx300 EX=
TRA_DEFS=3D"BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  X300=
=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_image_core.v DEFAULT_EDGE_=
FILE=3D/home/maurizio.stefani/prove/vhd/uhd-master/uhd-master/fpga/usrp3/to=
p/x300/x300_static_router.hex
make[1]: Entering directory '/home/maurizio.stefani/prove/vhd/uhd-master/uh=
d-master/fpga/usrp3/top/x300'
BUILDER: Checking tools...
* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
* Python 3.8.10
* Vivado v2019.2 (64-bit)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP ten_gig_eth_pcs_pma
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
/bin/sh: 1: export: format.: bad variable name
make[1]: *** [/home/maurizio.stefani/prove/vhd/uhd-master/uhd-master/fpga/u=
srp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.inc:41: /home/maurizio.stefan=
i/prove/vhd/uhd-master/uhd-master/fpga/usrp3/top/x300/build-ip/ten_gig_eth_=
pcs_pma/ten_gig_eth_pcs_pma.xci.out] Error 2
make[1]: Leaving directory '/home/maurizio.stefani/prove/vhd/uhd-master/uhd=
-master/fpga/usrp3/top/x300'
make: *** [Makefile:90: X300_HG] Error 2

I am working under Ubuntu:
release -a
No LSB modules are available.
Distributor ID:   Ubuntu
Description:       Ubuntu 20.04.3 LTS
Release:              20.04
Codename:        focal

Is here someone able to help me?

Thank you
Maurizio stefani

The information in this e-mail is confidential. The contents may not be dis=
closed or used by anyone other than the addressee. Access to this e-mail by=
 anyone else is unauthorised.
If you are not the intended recipient, please notify Airbus immediately and=
 delete this e-mail.
Airbus cannot accept any responsibility for the accuracy or completeness of=
 this e-mail as it has been sent over public networks. If you have any conc=
erns over the content of this message or its Accuracy or Integrity, please =
contact Airbus immediately.
All outgoing e-mails from Airbus are checked using regularly updated virus =
scanning software but you should take whatever measures you deem to be appr=
opriate to ensure that this message and any attachments are virus free.

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE934BASPROMMAIL03spen_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI to all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have an ETTUS X310, I would l=
ike to build and load the original FPGA,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I loaded from repository the re=
levant file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The files are in:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/vhd/uhd-master/uhd-master/fpga=
/usrp3/top/x300<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run make:<o:p></o:p></sp=
an></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make -f Makefile.x300.inc bin N=
AME=3DX300_HG ARCH=3D PART_ID=3D BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 S=
FP1_10GBE=3D1&nbsp; X300=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D&quot;BUILD_1G=
=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1&nbsp; X300=3D1&quot; DEFAUL=
T_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_image_core.v
 DEFAULT_EDGE_FILE=3D/home/maurizio.stefani/prove/vhd/uhd-master/uhd-master=
/fpga/usrp3/top/x300/x300_static_router.hex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: Entering directory '/h=
ome/maurizio.stefani/prove/vhd/uhd-master/uhd-master/fpga/usrp3/top/x300'<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDER: Checking tools...<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">* GNU bash, version 5.0.17(1)-r=
elease (x86_64-pc-linux-gnu)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">* Python 3.8.10<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">* Vivado v2019.2 (64-bit)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDER: Building IP ten_gig_et=
h_pcs_pma<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/bin/sh: 1: export: format.: ba=
d variable name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [/home/maurizio.st=
efani/prove/vhd/uhd-master/uhd-master/fpga/usrp3/top/x300/ip/ten_gig_eth_pc=
s_pma/Makefile.inc:41: /home/maurizio.stefani/prove/vhd/uhd-master/uhd-mast=
er/fpga/usrp3/top/x300/build-ip/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci=
.out]
 Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: Leaving directory '/ho=
me/maurizio.stefani/prove/vhd/uhd-master/uhd-master/fpga/usrp3/top/x300'<o:=
p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S">make: *** [Makefile:90: X300_HG] Error 2<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am working under Ubuntu:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">release -a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">No LSB modules are available.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Distributor ID:&nbsp;&nbsp; Ubu=
ntu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Description:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Ubuntu 20.04.3 LTS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Release:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20.04<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Codename:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; focal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is here someone able to help me=
?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio stefani<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<font style=3D"font-size: 9px;">The information in this e-mail is confident=
ial. The contents may not be disclosed or used by anyone other than the add=
ressee. Access to this e-mail by anyone else is unauthorised.<br>If you are=
 not the intended recipient, please notify Airbus immediately and delete th=
is e-mail.<br>Airbus cannot accept any responsibility for the accuracy or c=
ompleteness of this e-mail as it has been sent over public networks. If you=
 have any concerns over the content of this message or its Accuracy or Inte=
grity, please contact Airbus immediately.<br>All outgoing e-mails from Airb=
us are checked using regularly updated virus scanning software but you shou=
ld take whatever measures you deem to be appropriate to ensure that this me=
ssage and any attachments are virus free.</font></body>
</html>

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE934BASPROMMAIL03spen_--

--===============7541643420553156695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7541643420553156695==--
