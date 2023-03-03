Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C02E6A94D5
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 11:06:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F2F13848A6
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 05:06:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677837984; bh=ZuPRilqTCGWysxEohH8o8we47Dc/1aaVyD6yzchAqkY=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=yL4o8oovpipctzWeJzWRXfM/k8NH11y0j+rMJXG/Frv/B0ONRb4z/gJoWKNh44vit
	 9uRRrt3jij7+SGrsM7wVXL5npI9UrNQSGEBSOqlhOFkA/poPhJFCUj9em62AiAjTpD
	 rNyKfOJcEdggQ0tD0Y/3SR72zqE0MIacYESf3cSrBCZjelBDeJyJxvIjGqyr9RzEhq
	 22Kr/UMkNAmlqsppRGnS0I7jNYxjm06M5/Niy6nMQwcGBtu1VkJy2O0WFadxxTO6lm
	 g+1I7wmx3A3NTXTG4oVIYdN/ycpZ27M2fi3jOtrEuIYd4MoO/fXnJkdOLutkSeZpos
	 J/A97o6PWI0zg==
Received: from mx1.myeers.net (mx1.myeers.net [87.190.7.230])
	by mm2.emwd.com (Postfix) with ESMTPS id 8444338489A
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 05:05:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="qtn+oYz4";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=5082; q=dns/txt;
  s=eers-ng2048; t=1677837935; x=1709373935;
  h=from:to:subject:date:message-id:mime-version;
  bh=WR3CzKSp+yH050UF79HFKmHUi4tNMd+01SWaV31tV+4=;
  b=qtn+oYz4WKvvRW2DSPNRCMDcCeuCIAgGM9u/ODQotQOJIfkW3wOhi3iT
   Lh06r94WPYdC46poD+keHiNAQvacMWenXXvrftNwzIzI+JF7TdBzq/Py9
   XTD/Mh49fm5guz+EePNfDgjPar69ReZvk7i/4QX2fGIasnuXu3Rp+IwnZ
   vDEwwKoMN+yBkgC5hJqEQg+PgoZqpkDob6vBywD8v/uFitOi4tYEzFPL+
   KR/z4reMbxNdpPVxrDr6SJPeG4VfKKNHNkQYbuqqpkf3KON8cCk9UmqKk
   pagkyKIhh5u7zzkUH651umHYSB3cMvOpFpi0ppl7mzPNCUu1g9IF2qUey
   g==;
IronPort-SDR: gNOJ4GSZgWml7z7mdSznqkozER4DZEH42fhcjPaa1Qzpx2qMahcp31mNtXJiEGKU19sjg8WEfZ
 SYgKG9RPhKig==
X-IronPort-AV: E=Sophos;i="5.98,230,1673910000";
   d="scan'208,217";a="50996398"
Received: from ec2-44-225-67-31.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P02.central.mail.corp) ([44.225.67.31])
  by de0-03iro-p11-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 03 Mar 2023 11:05:31 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P02.central.mail.corp (44.225.67.35) with Microsoft SMTP Server id
 15.0.1497.45; Fri, 3 Mar 2023 11:05:26 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:QRdIcqtLeXdpEDNZxYdAUSqe2OfnVBBfMUV32f8akzHdYApBsoF/q
 tZmKW+Ob6qKN2ujfttyPY7gp0pSscTUx4UwSAY+q3xnRStA9ZOVVN+UEBz9bniYRiHhoOKLz
 Cm/hv3odp1coqr0/0/1WlTZhSAgk/vOH9IQMcacUghpXwhoVSw9vhxqnu89k+ZAjMOwa++3k
 YuaT/b3ZRn0i1aYDkpOs/jY8Eg356yr0N8llgdWic5j7Qa2e0Y9XMp3yZGZdxPQXoRSF+imc
 OfPpJnRErTxpkpF5nuNy94XQ2VSKlLgFVHmZkl+AsBOtiN/Shkaic7XAha8hXB/0F1ll/gpo
 DlEncLoFVdxZsUgksxFO/VTO3kW0aGrZNYrLFDn2fF/wXEqfFPU4Kt/SxFtPbdBoPZGDjgQ1
 8AmJRk0O0Xra+KemNpXS8F3nt4kKcjuJ50W4igm1inUC/k6TIuFWL3D7tIwMDUY35gIRK6EI
 ZBAL2ExBPjDS0Un1lM/DZsjhua6h365aCFVpluTpOw683Te1gp41JDkMcDfZ8fMTsJQ9qqdj
 juerz2nXUpDabRzzxLZ4zGu2N7dhBq8SdIuRIWW7+Zsmn66kzl75Bo+EAHTTeOColOlQcoaN
 lcZ4DEGqakp6FftQ8XhQgb+q3mB1iPwQPIJS6tjsFvLkPOSuFjx6nU4cwOtoecO7KceLQHGH
 HfS9z81LVSDaIGodE8=
IronPort-HdrOrdr: A9a23:6fsck6Ef6BNpRnFypLqE28eALOsnbusQ8zAXPhZKOGVom62j5q
 WTdJZy73XJYVMqNU3I9urtBEDtexzhHP1OkOss1NWZPDUO41HYSr2KhLGKq1bd8kvFmNK1vp
 0QEJSWZueQMbDU5/yKmDVRv7wbsb26GAHDv5a480tQ
X-IronPort-AV: E=Sophos;i="5.98,230,1673910000";
   d="scan'208,217";a="108167315"
Received: from unknown (HELO spromimsva01.spengtes.space) ([10.102.21.36])
  by esa2e.demail.de.airbusds.corp with ESMTP; 03 Mar 2023 11:05:27 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id BCE8E80045
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 11:05:14 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from spromimsva01.spengtes.space (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 88A9980045
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 11:05:13 +0100 (CET)
Received: from SPROMMAIL02.spengtes.space (unknown [10.102.17.16])
	by spromimsva01.spengtes.space (Postfix) with ESMTPS
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 11:05:13 +0100 (CET)
Received: from SPROMMAIL03.spengtes.space ([::1]) by
 SPROMMAIL02.spengtes.space ([10.102.17.16]) with mapi id 14.03.0513.000; Fri,
 3 Mar 2023 11:05:52 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: request for x310
Thread-Index: AdlNtyXnp6CjJbSyS/ixIBKKa9h9MQ==
Date: Fri, 3 Mar 2023 10:05:51 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75@SPROMMAIL03.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24900.000
x-tm-as-result: No--19.827600-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-GM-Security: forwarded
Message-ID-Hash: WULJKL2JAN5G3PMPNA4UOJAOETQUTF6G
X-Message-ID-Hash: WULJKL2JAN5G3PMPNA4UOJAOETQUTF6G
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] request for x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WULJKL2JAN5G3PMPNA4UOJAOETQUTF6G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============7659204331871900620=="

--===============7659204331871900620==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75SPROMMAIL03sp_"

--_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75SPROMMAIL03sp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI,
I am using an x310 SDR,
I am able to ping it 192.168.10.2, but if I try to issue: uhd_find-devices =
-args addr=3D192.168.10.2, it return:
Linux, GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build1
No UHD Devices Found

Is there someone can help me?
Thank you in advance

maurizio
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

--_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75SPROMMAIL03sp_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using an x310 SDR,<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am able to ping it 192.168.10=
.2, but if I try to issue: uhd_find-devices &#8211;args addr=3D192.168.10.2=
, it return:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Linux, GNU C&#43;&#43; version =
10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">No UHD Devices Found<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there someone can help me?<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">maurizio<o:p></o:p></span></p>
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

--_000_E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75SPROMMAIL03sp_--

--===============7659204331871900620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7659204331871900620==--
