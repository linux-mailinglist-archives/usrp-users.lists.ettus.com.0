Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E52951E3356
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2020 01:02:29 +0200 (CEST)
Received: from [::1] (port=39120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdiaX-0000tL-O3; Tue, 26 May 2020 19:02:25 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:24408)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jdiaU-0000q6-6B
 for usrp-users@lists.ettus.com; Tue, 26 May 2020 19:02:22 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1590534101; h=from:subject:to:date:message-id;
 bh=BT08Y4zLD+Rbh++xTNZ0YYGBwTffJVrIZj2cWXh559s=;
 b=F4V4JBfu2bMmLkFpujrO1ICMgnDhv8TEP09pN429hvyj3W792V8qoyQjrH5ziKY2h4rkVQw8wbk
 a55KnPfXKIRN4mVeDUqXdQOWhUwJSLP1zWqXXUEBjW7Ef1hyW2wAmmnNlfk769QirSTAZNAs5YAys
 SngFfb8kChXNKcfDMlg=
Received: from ocracoke.core.gtri.org (10.41.22.71) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Tue, 26 May
 2020 19:01:41 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 ocracoke.core.gtri.org (2610:148:610:2916::71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Tue, 26 May 2020 19:01:41 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Tue, 26 May 2020 19:01:41 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: uhd_image_builder_gui.py cannot select makefile.src
Thread-Index: AdYzsNpUDsPVN51QTvO8iJBuZCGxlA==
Date: Tue, 26 May 2020 23:01:41 +0000
Message-ID: <42d41cc37586429590768c2cbaca516f@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] uhd_image_builder_gui.py cannot select makefile.src
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============2941507286852572464=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2941507286852572464==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_42d41cc37586429590768c2cbaca516fgtrigatechedu_"

--_000_42d41cc37586429590768c2cbaca516fgtrigatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When I run ./uhd_image_builder_gui.py, the GUI cannot select the makefile.s=
rc from my OOT block. The file is grayed-out when I try to select it from t=
he OOT directory: {USER_PREFIX}/src/{USER-OOT-moddir}/rfnoc/fpga-srcs/

In addition, it gives the following warning message, which may or may not b=
e related:

Gtk-Message: GtkDialog mapped without a transient parent. This is discourag=
ed.


I'm following the guide to build the OOT gain block. I have written built t=
he OOT gain block and run the test bench successfully and ran make install.

https://kb.ettus.com/Getting_Started_with_RFNoC_Development

Any ideas?

Jeff

--_000_42d41cc37586429590768c2cbaca516fgtrigatechedu_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">When I run ./uhd_image_builder_gui.py, the GUI canno=
t select the makefile.src from my OOT block. The file is grayed-out when I =
try to select it from the OOT directory: {USER_PREFIX}/src/{USER-OOT-moddir=
}/rfnoc/fpga-srcs/<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In addition, it gives the following warning message,=
 which may or may not be related:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Gtk-Message: GtkDialog mapped without a transient pa=
rent. This is discouraged.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m following the guide to build the OOT gain =
block. I have written built the OOT gain block and run the test bench succe=
ssfully and ran make install.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Getting_Started_with=
_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Develop=
ment</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
</div>
</body>
</html>

--_000_42d41cc37586429590768c2cbaca516fgtrigatechedu_--


--===============2941507286852572464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2941507286852572464==--

