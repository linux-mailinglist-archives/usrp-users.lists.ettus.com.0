Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C78C3B3C63
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 07:56:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B6B4383D56
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 01:56:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=external.thalesgroup.com header.i=@external.thalesgroup.com header.b="jUNtS7kA";
	dkim-atps=neutral
Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B17F383B85
	for <usrp-users@lists.ettus.com>; Fri, 25 Jun 2021 01:55:35 -0400 (EDT)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4GB5ny51pgz45SS;
	Fri, 25 Jun 2021 07:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1624600534;
	bh=QfBnkbYytNZ2zmtMXAuhYSw1HODX7koIbsUhCsKT6sg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=jUNtS7kAXui/VlJj7w0fhllo3LpbyFjPtcaIpIpyDosOK4KmYiY7Kz1aNiKb6GFlP
	 4Z4ZBMDQHvCK6+NNAZYWXL+MpRi1kYJW27Itry8c+GIAalnAWXsQyvujAfva5CWF41
	 QV+fbcQVWb7Zvu6JGaDpyvnoAAiV10/2fYNU7r7TW0qyOB1rhr6ljNYR8je5XKCX+f
	 /c788Rg3TxypXCvugD92I3iK0pzYTrp6bzrE1mKI2nS+NqoMiTxFowfBq4LCn1YJPF
	 hTw5R0AiLw+Lin3mGmb5JO5rx+MR1cf0IiCgJayr4TPF22yt3qI/yZjdbzADI49MVM
	 g6ridb7javVaA==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>
Thread-Topic: LibUHD - Python API problem (RFNoC not found)
Thread-Index: AddphrXYq0YTs6cFTv+kz9XkgAEedQ==
Date: Fri, 25 Jun 2021 05:55:33 +0000
Message-ID: <2ea431f8bcfc4d1eb4431e45172401d3@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.82.0, Antivirus-Data: 5.85
MIME-Version: 1.0
Message-ID-Hash: GFUNIQQWKY5TBACRXPSVH4H7JPDHREEB
X-Message-ID-Hash: GFUNIQQWKY5TBACRXPSVH4H7JPDHREEB
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LibUHD - Python API problem (RFNoC not found)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GFUNIQQWKY5TBACRXPSVH4H7JPDHREEB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============3864728798552460088=="

--===============3864728798552460088==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_2ea431f8bcfc4d1eb4431e45172401d3externalthalesgroupcom_"

--_000_2ea431f8bcfc4d1eb4431e45172401d3externalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello users,

When I try to install UHD 3.14.0.0 on RedHat 7.5 system, I can't enabled co=
mponents LibUHD - Python API. For GNU Radio's installation I don't have pro=
blem.
For the install I have follow this tutorials :

*       https://files.ettus.com/manual_archive/v3.14.0.0/html/page_build_gu=
ide.html#build_instructions_unix

*       https://www.gnuradio.org/doc/doxygen-3.7/build_guide.html#dependenc=
ies
I have try to add -DENABLE_PYTHON_API=3DON.

I have also install python3-devel like it is mentioned at this link : USRP =
Hardware Driver and USRP Manual: Python API (ettus.com)<https://files.ettus=
.com/manual/page_python.html>

If someone has ever had this problem could you explain me how to solve this=
 please, because when I try to build my block I cannot find ettus and after=
 if I try to build gr-ettus I cannot find RFNoC. So I suppose that the prob=
lem is LibUHD - Python API but I not sure. When I launch my flowgraph GNU R=
adio doesn't recognize Radio, DDC, DUC and my own block that I can't build.
My program works on Ubuntu 18.04 system with UHD-3.14.0.0 and GNU Radio 3.7=
.11.1.

Thanks for your help.

Regards.

Fred

--_000_2ea431f8bcfc4d1eb4431e45172401d3externalthalesgroupcom_
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:484515225;
	mso-list-type:hybrid;
	mso-list-template-ids:1723261954 67895297 67895299 67895301 67895297 67895=
299 67895301 67895297 67895299 67895301;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
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
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to install UHD 3.14.=
0.0 on RedHat 7.5 system, I can&#8217;t enabled components LibUHD &#8211; P=
ython API. For GNU Radio&#8217;s installation I don&#8217;t have problem.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For the install I have follow t=
his tutorials :<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:Sym=
bol"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><a href=3D"https://files.ettus.com/manual_ar=
chive/v3.14.0.0/html/page_build_guide.html#build_instructions_unix"><span l=
ang=3D"EN-US">https://files.ettus.com/manual_archive/v3.14.0.0/html/page_bu=
ild_guide.html#build_instructions_unix</span></a><span lang=3D"EN-US"><o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:Sym=
bol"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><a href=3D"https://www.gnuradio.org/doc/doxy=
gen-3.7/build_guide.html#dependencies"><span lang=3D"EN-US">https://www.gnu=
radio.org/doc/doxygen-3.7/build_guide.html#dependencies</span></a><span lan=
g=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have try to add -DENABLE_PYTH=
ON_API=3DON.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also install python3-dev=
el like it is mentioned at this link :
</span><a href=3D"https://files.ettus.com/manual/page_python.html"><span la=
ng=3D"EN-US">USRP Hardware Driver and USRP Manual: Python API (ettus.com)</=
span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If someone has ever had this pr=
oblem could you explain me how to solve this please, because when I try to =
build my block I cannot find ettus and after if I try to build gr-ettus I c=
annot find RFNoC. So I suppose that
 the problem is LibUHD &#8211; Python API but I not sure. When I launch my =
flowgraph GNU Radio doesn&#8217;t recognize Radio, DDC, DUC and my own bloc=
k that I can&#8217;t build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My program works on Ubuntu 18.0=
4 system with UHD-3.14.0.0 and GNU Radio 3.7.11.1.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_2ea431f8bcfc4d1eb4431e45172401d3externalthalesgroupcom_--

--===============3864728798552460088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3864728798552460088==--
