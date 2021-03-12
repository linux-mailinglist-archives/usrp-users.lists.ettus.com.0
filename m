Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 1D56A338F19
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 14:49:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D96C383B20
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 08:49:32 -0500 (EST)
Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
	by mm2.emwd.com (Postfix) with ESMTPS id F3625383A1B
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 08:49:21 -0500 (EST)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4DxnH506T1z45Kr
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 14:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1615556961;
	bh=g8qf6T0ZPR9brCkElBAAaesURALeNdXz7tNTy/DNO40=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=Dmz2XSxeepkNbNA1oJiNY+6ET0eavKePNt/X26bQJzmy6lVCun2Uj9JMvmZoiB6Jh
	 l08zjwjvzI6tvXQ7ObH4ceUW+mscdXYzDXLKTCG4kyOQ9xXvK3toRpcbYuT/a9WTBw
	 KVz4pJ8sd/B9G1S8jv+Bq9TKBo35Y+tKR7HfEVgspcACSG5J6dtualyHvLH75Y9L39
	 +maN/uPemPhd46wB5kpNeIfBhhJr1k1mw6cIb19MEHfFlJzuYBR2JE49vOB/COjbf/
	 DsBLoDKEXKCOCHmc3MsiYAwm23R+/F9WNGylYUjq2McQUylvQv1vEEKe424skQvDGo
	 7UzDXWtD1MTSQ==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: import error gnuradio
Thread-Index: AdcXRXqN/0JXA9GrSwCPfw9di7lUDA==
Date: Fri, 12 Mar 2021 13:49:20 +0000
Message-ID: <4f926d9528d3498293db378bed26308f@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.82
MIME-Version: 1.0
Message-ID-Hash: LRAW3SJUF67CMPGY7NIC7EBFFDQXQO7C
X-Message-ID-Hash: LRAW3SJUF67CMPGY7NIC7EBFFDQXQO7C
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] import error gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LRAW3SJUF67CMPGY7NIC7EBFFDQXQO7C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============0684233982127355739=="

--===============0684233982127355739==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_4f926d9528d3498293db378bed26308fexternalthalesgroupcom_"

--_000_4f926d9528d3498293db378bed26308fexternalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Users,

When I try to run my flow graph I have this error :

from .blocks_python import *
ImportError: /usr/local/lib/python3/dist-packages/gnuradio/blocks/-blocks_p=
ython.cpython-38-x86_64-linux-gnu.so : undefined symbol: _ZN2gr6blocks12wav=
file_sink4makeEPKcijNS0_16wavfile_format_tENS-0_19wavfile_subformat_tEb

Someone has solutions for resolve this problem please ?
I work with UHD4.0 and gnuradio3.9

Thanks.

Best regards.

--_000_4f926d9528d3498293db378bed26308fexternalthalesgroupcom_
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Users,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to run my flow graph=
 I have this error :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">from .blocks_python import *<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ImportError: /usr/local/lib/pyt=
hon3/dist-packages/gnuradio/blocks/-blocks_python.cpython-38-x86_64-linux-g=
nu.so : undefined symbol: _<i>ZN2gr6blocks12wavfile</i>_sink4makeEPKcijNS0_=
16wavfile_format_tENS-0_19wavfile_subformat_tEb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone has solutions for resol=
ve this problem please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work with UHD4.0 and gnuradio=
3.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o:p></span>=
</p>
</div>
</body>
</html>

--_000_4f926d9528d3498293db378bed26308fexternalthalesgroupcom_--

--===============0684233982127355739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0684233982127355739==--
