Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1C26B01A4
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 09:37:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4598E385160
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 03:37:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678264638; bh=y0f5nLEAu6LoPvvTIZ4upy9z20yyzUAwtqTYyzdIRGA=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Zp4fGMbQDp74zqYWvi4wWBnyN5e26z0lxyHlP8P3uYdg5Tgy5MMIAxQ+q77CeUsL9
	 VYvkEXtkpxbN/75+vE7mKAy70k5lfG6rJWehqTdEnz/gYoQ1B0sJn04ZxRScRuobdN
	 EtPDYEYEUq9A5o4KV3UcpfcRhD0qwlqZKfNoHuqOTX+EdK0fq8Sz8AnLRo9z4vYKS+
	 iYmtKCkN1FlHeJ59zwfQRbIOY4XlvBIAnOdhXdVCWzwBBW28mxZs9A5qi2Lrzv0ZXZ
	 t0MHjhqwwsnybIJLuOB6J1C0qp+UuOIltk5jidH1xLyrm88HSUramCIBbkA9RSnQK9
	 DK7cX7jAGifEA==
Received: from mo3.myeers.net (mo3.myeers.net [87.190.7.238])
	by mm2.emwd.com (Postfix) with ESMTPS id 96CFC385160
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 03:37:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="pzD31Wwi";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=8519; q=dns/txt;
  s=eers-ng2048; t=1678264633; x=1709800633;
  h=from:to:subject:date:message-id:mime-version;
  bh=JW1mAmWrE4cWOogq5WBStQVpabEhvwz/13ufieoWjMw=;
  b=pzD31WwiaXclpcfIw2D818el0x+P0MOcxXh4YVZQ6smF44MPkAmHzEm6
   oLgCED9FPs2/RUvxaCo21FS7qYOjR4Fi0kDUMsCZVxZlpkLR5sULAYu0m
   /vtGYvvhtHcAKVehY+n8mVE42YGptFsdD9Twk/VvwGcfpn02rFElq53G+
   hzX7NOpX3B8w1OzQoi/E4Qhyluv+4OyLprx6yuzdQh2NrSfYcBMkVHIeN
   vtknncxW/vS0iGZEKz1EX6luTyUoggbrPnAKOJKP2mE8zXF+W+U1/zweF
   uX/UtLOImGdxsA8/sJuJlmuQnh4J9KU7VXDgl41bd3ap67bohLtQ3NL1C
   g==;
IronPort-SDR: uUZR5rXkgTzFdD3eYlNwOaImo00FW7+lWvUNX7b38I2NdANM512Wr+BRT37ZmYH/QyK2NdGIo4
 1gHa9XTbwQQg==
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000";
   d="scan'208,217";a="52440891"
Received: from ec2-44-225-67-31.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P02.central.mail.corp) ([44.225.67.31])
  by de0-03iro-p14-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 08 Mar 2023 09:37:11 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P02.central.mail.corp (44.225.67.35) with Microsoft SMTP Server id
 15.0.1497.45; Wed, 8 Mar 2023 09:37:08 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:lY3BlKrgf0U6FQ6/yClNAxyFVxFeBmJeZBIvgKrLsJaIsI4StFCzt
 garIBmAa//Ya2D3ftpzPY3joRhTu8fXx9JhT1du/CkzH3tH85acVYWSI3mrMnLJJKUvbq7HA
 +byyzXkBJppJpMJjk71atANlVEliefSAOOU5NfsYkhZXRVjRDoqlSVtkus4hp8AqdWiCmthg
 /uqyyHkEALjim4c3l48sfrZ80s05KSq4Vv0g3RlDRx1lA6H/5UqJMJHTU2BByOQapVZGOe8W
 9HCwNmRlo8O105wYj8Nuu+TnnwiGtY+DyDX4pZlc/HKbix5m8AH+v1T2Mzwyatgo27hc9hZk
 L2hvLTuEVt5ZvWkdO41C3G0GAkmVUFKFSOuzXWX6aSuI0P6n3TE7vswUUgsEtwipbwrMGoTy
 dVDGW1UV0XW7w626OrTpuhEndw5K8zqOZgBsyk5iyrBAPApXZ3YBb7S7NRVtNsyrpkWW6+GP
 YxDMHw0MnwsYDUXUrsTIJc3gf2plHj4NSZEpVyco6tx7njPwRZ32bzFOdvPcMGRA85Smy50o
 0qfpzWiWkpCZYP3JTyt6lOymuDxtBvHWL0MO7a16d43hUfK2TlGYPERfR7hyRWjsWajQMhHb
 lEP9zA1hawz71CwCNThQwCj5nWDu3Yht8F4SrV8sVnXjPCNpV3HboQZcgN8hBUdnJdebVQXO
 pWhxbsF2RQHXGWpdE+g
IronPort-HdrOrdr: A9a23:/w/VTK7+bhIx6wsyzQPXwPvXdLJyesId70hD6qkmc20tTiX4rb
 HKoBx4vSWftN91YhwdcL+7VJVoLUmyyXcX2/hyAV7BZmnbUTCTXedfBOLZqlWKJ8SZzIBgPM
 xbAstD4bPLbGSTIqzBkXGF+3pL+qjizEgI792uqEtQcQ==
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000";
   d="scan'208,217";a="109303097"
Received: from unknown (HELO spromimsva01.spengtes.space) ([10.102.21.36])
  by esa2e.demail.de.airbusds.corp with ESMTP; 08 Mar 2023 09:37:08 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id B0B358006A
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 09:36:52 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from spromimsva01.spengtes.space (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 981BE80071
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 09:36:42 +0100 (CET)
Received: from SPROMMAIL01.spengtes.space (unknown [10.102.17.15])
	by spromimsva01.spengtes.space (Postfix) with ESMTPS
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 09:36:42 +0100 (CET)
Received: from SPROMMAIL04.spengtes.space ([::1]) by
 SPROMMAIL01.spengtes.space ([10.102.17.15]) with mapi id 14.03.0513.000; Wed,
 8 Mar 2023 09:37:21 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: request for "PROBE" n x310
Thread-Index: AdlRmNcSWldVWhciQDyT9vnYlELyJA==
Date: Wed, 8 Mar 2023 08:37:20 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D62901E208A0F4@SPROMMAIL04.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24906.005
x-tm-as-result: No--19.337500-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-GM-Security: forwarded
Message-ID-Hash: ZTGRF3JEL7K3YFOQ5ZXRFOXFDLV3SURB
X-Message-ID-Hash: ZTGRF3JEL7K3YFOQ5ZXRFOXFDLV3SURB
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] request for "PROBE" n x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTGRF3JEL7K3YFOQ5ZXRFOXFDLV3SURB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============1172984250103176544=="

--===============1172984250103176544==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D62901E208A0F4SPROMMAIL04sp_"

--_000_E1188D158AA7A048AF99B6A05DA3D62901E208A0F4SPROMMAIL04sp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI,
after loaded a fresh copy of FPGA on our x310, I issued the command:

-          uhd_usrp_probe
the results of this are:

mau@mau-Vostro-3500:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15=
.0.0-4build1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Error: AssertionError: Failed to find a valid XML path for RFNoC blocks.
Try setting the environment variable UHD_RFNOC_DIR to the correct location
mau@mau-Vostro-3500:~$

I do not know how to proceed, set the environment variable or other.

Thank you
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

--_000_E1188D158AA7A048AF99B6A05DA3D62901E208A0F4SPROMMAIL04sp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
/* List Definitions */
@list l0
	{mso-list-id:1594390003;
	mso-list-type:hybrid;
	mso-list-template-ids:685799488 1941493166 68157443 68157445 68157441 6815=
7443 68157445 68157441 68157443 68157445;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">after loaded a fresh copy of FP=
GA on our x310, I issued the command:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">uhd_usrp_probe<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">the results of this are:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">mau@mau-Vostro-3500:~$ uhd_usrp=
_probe<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 10.2.1 20201207; Boost_107400; =
UHD_3.15.0.0-4build1<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 1472 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Error: AssertionError: Failed to find a valid XML path for RFNoC blocks.<br>
Try setting the environment variable UHD_RFNOC_DIR to the correct location<=
br>
mau@mau-Vostro-3500:~$ <br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I do not know how to proceed, s=
et the environment variable or other.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">maurizio<o:p></o:p></span></p>
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

--_000_E1188D158AA7A048AF99B6A05DA3D62901E208A0F4SPROMMAIL04sp_--

--===============1172984250103176544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1172984250103176544==--
