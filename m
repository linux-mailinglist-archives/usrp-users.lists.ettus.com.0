Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE794DD637
	for <lists+usrp-users@lfdr.de>; Fri, 18 Mar 2022 09:32:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7F7B384827
	for <lists+usrp-users@lfdr.de>; Fri, 18 Mar 2022 04:32:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="h7NyTOzp";
	dkim-atps=neutral
Received: from mo2.myeers.net (mo2.myeers.net [87.190.7.233])
	by mm2.emwd.com (Postfix) with ESMTPS id B1D2638480C
	for <usrp-users@lists.ettus.com>; Fri, 18 Mar 2022 04:31:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=10836; q=dns/txt;
  s=eers-ng2048; t=1647592283; x=1679128283;
  h=from:to:subject:date:message-id:mime-version;
  bh=kDp3RK3/ujucYMrLitvIPx2watiBaD1Gh4e2MbK5dR0=;
  b=h7NyTOzpgqoDy3RND3/Q1CAAxkxtqo5R+z+d/pCqZHd7UlSWcpC0OBw4
   s+xLnJF3gZUGZJWfOygK0yj+vYG1eFzl6HSV+FV64eq6LA8NjlIkFn71o
   CjEH+5jml42cwoqo+M4FWPbxidxRvHjrz7N2lH2HKnON0xtfgHtgyWhNY
   rGT5uy7htyOSBfbjm5GpOWhddRTa3qsf++C2/SRw0YJBwvOWKHZzjegir
   3f0ZOlV232n3R4xEj99SShzXSUR5Sp0rDEqXknasUFG5qvM6GOoMY/OkX
   JL0cbuvzDUw7e9K+eauwrN9412EcLjUJuU1DfyE4c0esEPPqudOxZyvGw
   Q==;
IronPort-SDR: JPAoxRN9r1rO5JvCMMq4ildr3ajgl8KbEdrSX+WH8eTesMPiy8qpgi04P3Blud161fYsCgeRpx
 Y7HQoCct9B1w==
X-IronPort-AV: E=Sophos;i="5.90,191,1643670000";
   d="scan'208,217";a="318451671"
Received: from ec2-44-225-67-30.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P01.central.mail.corp) ([44.225.67.30])
  by de0-44iro-p03-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 18 Mar 2022 09:31:04 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P01.central.mail.corp (44.225.67.34) with Microsoft SMTP Server id
 15.0.1497.32; Fri, 18 Mar 2022 09:31:02 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:S54AyaxaFhq4FW+0pwl6t+egxCrEfRIJ4+MujC+fZmUNrF6WrkUBy
 2IZCGnVMvmJN2L8ftslO9y28kgAuMLVmtJjQAY5qy00HyNBpPSeCIXCJC8cHc8ywu4v7a5Dx
 59DAjUVBJlsFhcwnj/0bv656yMUOZigHtIQMsacUsxKbVIiGX9JZS5LwbZj2NYz2IjhWmthh
 PupyyHhEA78s9JLGjJMg06zgEsHUCPa4W5wUvQWPJinjXeG/5UnJMt3yZKZdhMUdrJp8tuSH
 I4v+l0ZElTxpH/BAvv9+lryWhNSHu6KZWBigFIOM0SpqkAqSiDfTs/XOdJEAXq7hQllkPhWy
 /sXk4HsYD1yfYzKqO8SaTRSOHlhaPguFL/veRBTsOSWxkzCNWD0yv5jSkAqVWEa0r8vRzgWr
 7pCcXZWMXhvhMruqF6/Yuxlm94iPsjsepgDt39pyzCfAOY6TIrFSqHi7N5C1iorwMtJGJ4yY
 uJDMmIyPUiRP3WjPH9KLK0axceo2UOvTAJTt3CN/PUZvGLqmVkZPL/FdYC9lsaxbdhOhF7du
 3nL5X/RBhABKMfZxCaZ72nqjejK9R4XQ6pLTPvhrqQs2gTVnTN75AAqaGZXaMKR0iaWM++z4
 WRIksbyhcDeLHCWc+Q=
IronPort-HdrOrdr: A9a23:yV+uSKvrgaM9dwqzZBUvZmAL7skCDIMji2hC6mlwRA09TyXGra
 6TdaUguiMc1gx8ZJh3o6H7BEDyewK6yXcV2/h1AV7MZniFhILFFuFfBM7ZskTd8k7Fl9K1t5
 0QFZSWYeeYZTMR4PoSojPIa+rIqOP3uJxA7t2utEuFIzsaCJ2JjG9Ce0ym+hIcfngKOXJdfK
 Dsrfav6gDQCUj+Ka+AdwY4dtmGg+eOuIPtYBYACRJiwhKJlymU5LnzFAXd9gsCUhtUqI1ShV
 Ttokjc3OGOovu7whjT2yv49JJNgubszdNFGYilltUVEDPxkQylDb4RLoFqhApF0t1HqWxa5+
 Ukmi1QTPiaohnqDwWISFXWqn/dOQYVmgLfIGCj8AfeSOzCNUwH4pl69PNkm7HimgNQ8O2Ulp
 g7kF6kiw==
X-IronPort-AV: E=Sophos;i="5.90,191,1643670000";
   d="scan'208,217";a="23059494"
Received: from unknown (HELO mail.space.it) ([10.102.21.37])
  by esa2e.demail.de.airbusds.corp with ESMTP; 18 Mar 2022 09:31:02 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id B9BDD2B80F4
	for <usrp-users@lists.ettus.com>; Fri, 18 Mar 2022 09:31:18 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from SPROMMAIL02.spengtes.space (unknown [10.102.17.16])
	by mail.space.it (Postfix) with ESMTP id DC63F2B80F4
	for <usrp-users@lists.ettus.com>; Fri, 18 Mar 2022 09:31:08 +0100 (CET)
Received: from SPROMMAIL03.spengtes.space ([::1]) by
 SPROMMAIL02.spengtes.space ([10.102.17.16]) with mapi id 14.03.0513.000; Fri,
 18 Mar 2022 09:31:37 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Ettus X310
Thread-Index: Adg6oVR84ovqrQfWRjO5UC0ZGIs1cQ==
Date: Fri, 18 Mar 2022 08:31:36 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D629DFE93663@SPROMMAIL03.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24900.000
x-tm-as-result: No--20.877900-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-SNTS-SMTP: EDBB0E3759457426A5E6DCC8DE5ED8601792E7AD63941D6B5B19F6ED01EB1DBB2000:8
X-GM-Security: forwarded
Message-ID-Hash: TRCWXC3HS5FJJUHWXDBQVJY2NGOQ5SWS
X-Message-ID-Hash: TRCWXC3HS5FJJUHWXDBQVJY2NGOQ5SWS
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TRCWXC3HS5FJJUHWXDBQVJY2NGOQ5SWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============3956562600908031841=="

--===============3956562600908031841==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D629DFE93663SPROMMAIL03spen_"

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE93663SPROMMAIL03spen_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI,
thank you for your help on the past question, showing me the error due to w=
rong Vivado release (I was using the 2019.2 instead of 2019.1).

Now I tried to recompile all ettus fpga, but the recompile time was greater=
 than 6 hours on an Ubuntu virtual machine with 3GHz CPU and 16GB RAM.

Due to the high recompile time, I was thinking to:

-          Compile the FW on the internal processors only and download just=
 it. Some one give me help about?

-          If I need to change the Verilog files (one or more), is there a =
way to compile and download just them or is it necessary to recompile all?

-          Furthermore, someone tried to recompile all ettus FPGA (X3xx fam=
ily)?

o   How long time to compile?

o   Which PC was used?

o   Is it possible to porting the FPGA environment under Windows OS?

Thank you for your help in advance

Maurizio Stefani

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

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE93663SPROMMAIL03spen_
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
	{mso-list-id:1857958323;
	mso-list-type:hybrid;
	mso-list-template-ids:-298139234 1423852696 68157443 68157445 68157441 681=
57443 68157445 68157441 68157443 68157445;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">thank you for your help on the =
past question, showing me the error due to wrong Vivado release (I was usin=
g the 2019.2 instead of 2019.1).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now I tried to recompile all et=
tus fpga, but the recompile time was greater than 6 hours on an Ubuntu virt=
ual machine with 3GHz CPU and 16GB RAM.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Due to the high recompile time,=
 I was thinking to:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Compile the FW on the i=
nternal processors only and download just it. Some one give me help about?<=
o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">If I need to change the=
 Verilog files (one or more), is there a way to compile and download just t=
hem or is it necessary to recompile all?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Furthermore, someone tr=
ied to recompile all ettus FPGA (X3xx family)?
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">How long time to compil=
e? <o:p>
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Which PC was used?<o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &qu=
ot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Is it possible to porti=
ng the FPGA environment under Windows OS?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you for your help in adva=
nce<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<o:p></o:p></sp=
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

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE93663SPROMMAIL03spen_--

--===============3956562600908031841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3956562600908031841==--
