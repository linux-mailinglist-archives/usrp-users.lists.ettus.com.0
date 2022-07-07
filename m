Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE81569EDC
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 11:52:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C271F38426C
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 05:52:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657187552; bh=NycXtx6ijjHW6QY0qjwx1IB4fl7rQb8zyocKw2RhCLU=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=1AaW/bMIVSGNnZOR4rMLZPavwTEPbzI2ooqIFiLc3otOL7m9mvRClu0TcP72w3Tvw
	 BaIzTu+UMNglBM+mTNBTBuRlKmq3FPQaHndlH41b9QdXM3sYGxLTlVN0sGrmh4NU9O
	 oPCsmjTq8km38vbmpkouUoPbg1bFBgEXjMTGJ8Y6Gw3NhSLPv+iPgMTjP3m35zNg3H
	 f7C3jKOrXBGwreb6OPQaBNwXYT6sL8lvRBTi+4CXsnG9xTQlbTXDdQ091mDFrA1DXH
	 /6k2VF8rWaj87+gZ3LQePgo5koU3RkPvsps0UDOsLr8iHgDrSMiTG6EPm0vgO5xE88
	 cV/DjWJQtdh6w==
Received: from mo1.myeers.net (mo1.myeers.net [87.190.7.232])
	by mm2.emwd.com (Postfix) with ESMTPS id C3B7D38421A
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 05:51:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="pS62iikv";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=4974; q=dns/txt;
  s=eers-ng2048; t=1657187477; x=1688723477;
  h=from:to:subject:date:message-id:mime-version;
  bh=PU5FGOW6+HMkeg1erQl2AW53XCtQ4CdCFWBseTQ6kuU=;
  b=pS62iikvN0O6aDiYG1HJH/ys7XSFsLD7D+5o2m3Rq7757KnZO3wSFjiI
   2qVzsUS6SXEtvwppoomguxKk5jk/2QXTwXLeOGTxjObiNr+P5vsd6Us91
   jWK7ZQKhBeSY93o9PX3ysluH28S4jbntimofQy5LROLz1s98lXlFBftgo
   TrXbTgVxY0RLNWWTegiHh8A5mM6kwOh4+AiNbCikExzYlstBHOPNaVoB2
   62YW25X8CgWe9RArOFBPZSXXfe/HFBcHHqskV+uePFc2URRVkSOOi021U
   dg9kQbQMmiu5riwHqb8ThLScINybQv4TmANOOvo/vm+Z1dn4isdpUi6iv
   w==;
IronPort-SDR: fzzD32GOpjgMZPBPHM/9LmLRn1qZ1bKj330+hvMlseXcIBfrKnyaqbPRSj3Nt1Q17O4I3juANj
 d0059n8SERhw==
X-IronPort-AV: E=Sophos;i="5.92,252,1650924000";
   d="scan'208,217";a="359654709"
Received: from ec2-44-225-67-31.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P02.central.mail.corp) ([44.225.67.31])
  by de0-44iro-p02-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 07 Jul 2022 11:51:15 +0200
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P02.central.mail.corp (44.225.67.35) with Microsoft SMTP Server id
 15.0.1497.36; Thu, 7 Jul 2022 11:51:10 +0200
X-ADDIV-1: 1
IronPort-Data: A9a23:8p4JEKloD1n40nLKGDUV7I3o5gwkJERdPkR7XQ2eYbSJt1+Wr1Gzt
 xIdCD+BOfzbMWXxLdEiPYzi8UkFusXUxtRlTQE5/3g9QS4T+ZvOCOrCIxarNUt+DCFjoGGLT
 ik6QoOdRCzhZiaE/n9BCpC48T8kk/vgqoPUUIYoAAgpLeNfYHpn2EgLd9IR2NYy24DmW1zV4
 LsenuWEULOb828tWo4rw/LbwP9flKyaVOQw5wFWiVhj5TcyplFNZH4tDfjZw0jQG+G4KtWHq
 9Prl9lVyI95EyAFUbtJmp6jGqEDauCKYVjW0hK6UYD66vRJjnRaPqrWqJPwZG8P4whlkeydx
 /1tv9uxFB0pJ5aUp/gWdhlSPSojEahvreqvzXiX6aR/zmXda2HrxvRrF18/ZdRe4f56B25S+
 OdeMygEZR3ra+Cemer9E7E2wJ56apK1VG8ckikIITXxCP87W5HRQqKM/sNV0j42h4ZDDerTf
 cwQbRJmbQ7KfgYJMVASYH47tLrw3SOnI2YBwL6TjYge/WXq9x5v64fGMOLVY+61WpxZkn/N8
 woq+Ey8WHn2Lue31CGf6jexneLVhgv/WZkOD/u16uJ3mxuYwWl7NfENfQLj56Dh0AjkApQEd
 ST45xYTkET7z2TzJvGVYvFyiCXsUsI0MzaIL9AH1Q==
IronPort-HdrOrdr: A9a23:WseHhK2nskkSGJT13GHdNgqjBEIkLtp133Aq2lEZdPUMSL3+qy
 ncpoV86faUskduZJhOo6HkBEDtex3hHP1OkPgs1NWZLW3bUQKTRekIgOeM/9SKIU3DH5tmpM
 Vdmt9Feb7N5DZB7PrS0U2ZN+wbhPiu143to8jwi1pMdi1BVoFew25CYDpzWXcGPTWuTaBJbK
 Z0MfA31wZIV05nFfhSXBQ+LpL+T/6nruOaXfZHaiRXlDVnw16TmcHHLyQ=
X-IronPort-AV: E=Sophos;i="5.92,252,1650924000";
   d="scan'208,217";a="50320831"
Received: from unknown (HELO spromimsva01.spengtes.space) ([10.102.21.36])
  by esa2e.demail.de.airbusds.corp with ESMTP; 07 Jul 2022 11:51:10 +0200
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 6EFF080066
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 11:51:46 +0200 (CEST)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from spromimsva01.spengtes.space (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0003880066
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 11:51:36 +0200 (CEST)
Received: from SPROMMAIL01.spengtes.space (unknown [10.102.17.15])
	by spromimsva01.spengtes.space (Postfix) with ESMTPS
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 11:51:36 +0200 (CEST)
Received: from SPROMMAIL03.spengtes.space ([::1]) by
 SPROMMAIL01.spengtes.space ([10.102.17.15]) with mapi id 14.03.0513.000; Thu,
 7 Jul 2022 11:51:33 +0200
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: request on ettus usrp-x310 and ubx-160
Thread-Index: AdiR5rbNeQezBusHS4CKjELja4TkFw==
Date: Thu, 7 Jul 2022 09:51:32 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D629DFE95889@SPROMMAIL03.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24906.005
x-tm-as-result: No--14.934300-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-TM-SNTS-SMTP: 714BBE3233C534B33B92DC178986771A6733A6E357A7FF07F98E37D2C965511F2000:8
X-GM-Security: forwarded
Message-ID-Hash: NOHRD6RYRDMMP6BXTO4KSWBYJ35GKHJ5
X-Message-ID-Hash: NOHRD6RYRDMMP6BXTO4KSWBYJ35GKHJ5
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] request on ettus usrp-x310 and ubx-160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NOHRD6RYRDMMP6BXTO4KSWBYJ35GKHJ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============9077987967233428561=="

--===============9077987967233428561==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D629DFE95889SPROMMAIL03spen_"

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE95889SPROMMAIL03spen_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI,
I need to program the ubx-160 via FPGA using my VHDL code.
Basically the UBX-160 is managed by a PLD but I have not the data format an=
d protocol to be used.

Is there someone can help me with these info about the format to program th=
e ubx?

Thank you in advance

Maurizo stefani
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

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE95889SPROMMAIL03spen_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I need to program the ubx-160 v=
ia FPGA using my VHDL code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Basically the UBX-160 is manage=
d by a PLD but I have not the data format and protocol to be used.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there someone can help me wi=
th these info about the format to program the ubx?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizo stefani<o:p></o:p></spa=
n></p>
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

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE95889SPROMMAIL03spen_--

--===============9077987967233428561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9077987967233428561==--
