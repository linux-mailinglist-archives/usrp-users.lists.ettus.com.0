Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5428737A5CC
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 13:31:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23D153840E9
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 07:31:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=external.thalesgroup.com header.i=@external.thalesgroup.com header.b="TC0rCgrs";
	dkim-atps=neutral
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
	by mm2.emwd.com (Postfix) with ESMTPS id E02B6383F4B
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 07:30:58 -0400 (EDT)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4FfbMj4mmyzJqMh;
	Tue, 11 May 2021 13:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1620732657;
	bh=T1xzrbf2htjswkFQezXHS+acF3+8ZbrFgzfD8bq/r6E=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=TC0rCgrse5x3VrL1ckQZ/Q/ONcGWqwFbrg14fqpLeF1qaymqmvLQdSxNZim/HQS3J
	 Fe72ZReoymilb7OgTvm3o6Q4729IWTC4J+x9ImTaRzZD2vEoFII4dLufGvva25Nd38
	 XV9ht3ndmftPDv3PTEMW7QEq6y1rS2AZ5wj0RguVuazDP2QyUf2sr2S0s2NyBw3WkI
	 Iart9MZm6Fb3zKjP2cRY5zHfCz6m9RVXr4rt/XSybixt2J2YBPvRrxGa99qYvr2Sp9
	 u++EEMsw+ocbjYdnHxh+MJdwD4d7KRNLkvwnqCMc2DpvPeetHzOWLQYKq/wnsLxdLH
	 1yxV2FOsHIziA==
To: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Reference indefined
Thread-Index: AddGV3R8o1DlNYlKRB6UZy+LHtwFhA==
Date: Tue, 11 May 2021 11:30:56 +0000
Message-ID: <0c89473ac31d4a3b97c2a20cc11c54ff@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.83
MIME-Version: 1.0
Message-ID-Hash: COU6RX6NJZ4PZ36HXJKZ5PLHY4P63HGY
X-Message-ID-Hash: COU6RX6NJZ4PZ36HXJKZ5PLHY4P63HGY
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reference indefined
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/COU6RX6NJZ4PZ36HXJKZ5PLHY4P63HGY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============8069228554645553182=="

--===============8069228554645553182==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_0c89473ac31d4a3b97c2a20cc11c54ffexternalthalesgroupcom_"

--_000_0c89473ac31d4a3b97c2a20cc11c54ffexternalthalesgroupcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Users,

I try to develop my own program in C++ with UHD3.14 and gnuradio 3.11.
I have no problem to compile blocks that are including in uhd but when I wa=
nt to compile with a sig_source or magphase_to_complex blocks  that are inc=
luding in Gnuradio blocks I have the following error :
Main.cpp(.text+0x1351) : r=E9f=E9rence indefinite vers  " gr::analog::sig_s=
ource_c::make(double, gr::analog::gr_waveform_t, double int) "
Main.cpp(.text+0x1351) : r=E9f=E9rence indefinite vers  " gr::blocks::magph=
ase_to_complex::make(double, gr::analog::gr_waveform_t, double int) "

In think I forgot something in my CMakeFiles, I have include_directories(${=
GNURADIO_ALL_INCLUDE_DIRS}) and link_directories(${GNURADIO_RUNTIME_LIBRARY=
_DIRS})

Someone could help me please or give an example of CMakeFiles that are usin=
g UHD and Gnuradio for compile a program.

Thanks for your help.

Regards.

Fred


--_000_0c89473ac31d4a3b97c2a20cc11c54ffexternalthalesgroupcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
<p class=3D"MsoNormal">Hello Users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I try to develop my own program=
 in C&#43;&#43; with UHD3.14 and gnuradio 3.11.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have no problem to compile bl=
ocks that are including in uhd but when I want to compile with a sig_source=
 or magphase_to_complex blocks &nbsp;that are including in Gnuradio blocks =
I have the following error :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Main.cpp(.text&#43;0x1351) : r=
=E9f=E9rence indefinite vers&nbsp; &#8220;&nbsp;gr::analog::sig_source_c::m=
ake(double, gr::analog::gr_waveform_t, double int) &#8220;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Main.cpp(.text&#43;0x1351) : r=
=E9f=E9rence indefinite vers&nbsp; &#8220;&nbsp;gr::blocks::magphase_to_com=
plex::make(double, gr::analog::gr_waveform_t, double int) &#8220;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In think I forgot something in =
my CMakeFiles, I have include_directories(${GNURADIO_ALL_INCLUDE_DIRS}) and=
 link_directories(${GNURADIO_RUNTIME_LIBRARY_DIRS})<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone could help me please or=
 give an example of CMakeFiles that are using UHD and Gnuradio for compile =
a program.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_0c89473ac31d4a3b97c2a20cc11c54ffexternalthalesgroupcom_--

--===============8069228554645553182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8069228554645553182==--
