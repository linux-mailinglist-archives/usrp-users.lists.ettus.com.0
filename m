Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC4293925F
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 18:13:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11ABC38596A
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 12:13:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721664793; bh=QbARyQR69DsC9R6aXSMFD2hdx89ooBWjHkAej03APnc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=N+xxzFA5kkIvV2q49DVd0boPfF15BKhr2dTdDwylncQ2JwO4HcHK/wV52q0KZqvSd
	 A83ZcA2ocFnBlYFzsiu588DLt1AheyHaQYQ6NfMZDOSTaX9sCm/w933FzuoRhx0Sdj
	 swEPQLSLn1yieSvbKlisMICXYCF7GciY9vJffEOd2WyrlRW8v4BXTN6SYkeBYeQxLK
	 4e4IwcWrgHUrHBr98uTOoGEaTeM2uLn937EIUatRmsEHFBdEkrNoepTIj7Al6mBAMA
	 3DAlndgCrTo2N1byIJrl1igKATIdJg9drL3cW0nm6/IvZ7tgDeiTSSZuYbEftyjg3T
	 DXLCmV1o+vDxQ==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 806483858DE
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 12:12:56 -0400 (EDT)
Received: from 172.16.0.105 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Mon, 22 Jul 2024 16:12:54 GMT
Received: from mxsrv2.fe.hhi.de (172.16.0.105) by mxsrv2.fe.hhi.de
 (172.16.0.105) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Mon, 22 Jul
 2024 18:12:51 +0200
Received: from mxsrv2.fe.hhi.de ([fe80::a6ac:c6a3:8cbe:4317]) by
 mxsrv2.fe.hhi.de ([fe80::a6ac:c6a3:8cbe:4317%6]) with mapi id 15.02.1544.011;
 Mon, 22 Jul 2024 18:12:50 +0200
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X440 RF-DAC Distortions
Thread-Index: AdrcT+PDQi0vqqY4S+iuU/CYM6BZKQ==
Date: Mon, 22 Jul 2024 16:12:50 +0000
Message-ID: <6e8798070c1e44c9a1e9ad901827263c@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: Q3KIEG4BAKYDZ7H5E25VANSW3WY6N2RP
X-Message-ID-Hash: Q3KIEG4BAKYDZ7H5E25VANSW3WY6N2RP
X-MailFrom: altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 RF-DAC Distortions
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q3KIEG4BAKYDZ7H5E25VANSW3WY6N2RP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6741080647162450263=="

--===============6741080647162450263==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6e8798070c1e44c9a1e9ad901827263chhifraunhoferde_"

--_000_6e8798070c1e44c9a1e9ad901827263chhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear USRP Mailing List Members,

I would like to design a RF Front-End for the X440. I will limit the operat=
ions of the receiver part to Nyquist Zone 1&2 by bandpass filters and conve=
rter rate selection. However, I got confused in the transmitter side as I c=
ouldn't determine which RF-DAC mode (https://docs.amd.com/r/en-US/pg269-rf-=
data-converter/RF-DAC-Nyquist-Zone-Operation) do the UHD examples use? If t=
hey are using Normal Mode, I will design IF stages according to Nyquist Zon=
e 1. If they are using Mix-Mode, I will design them according to Nyquist Zo=
ne 2.

Is it possible to know which RF-DAC Mode do the UHD examples (https://githu=
b.com/EttusResearch/uhd/tree/master/host/examples) use without programming =
the FPGA by Vivado IDE? I am planning to use the example called "rfnoc_repl=
ay_samples_from_file", however, I am asking the question for the general us=
e as well.

Thank you for your time and effort.

Best regards,
Altug KAYA



--_000_6e8798070c1e44c9a1e9ad901827263chhifraunhoferde_
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
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
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to design a RF Front-End for the X440. =
I will limit the operations of the receiver part to Nyquist Zone 1&amp;2 by=
 bandpass filters and converter rate selection. However, I got confused in =
the transmitter side as I couldn&#8217;t determine
 which RF-DAC mode (https://docs.amd.com/r/en-US/pg269-rf-data-converter/RF=
-DAC-Nyquist-Zone-Operation) do the UHD examples use? If they are using Nor=
mal Mode, I will design IF stages according to Nyquist Zone 1. If they are =
using Mix-Mode, I will design them
 according to Nyquist Zone 2. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to know which RF-DAC Mode do the UHD =
examples (https://github.com/EttusResearch/uhd/tree/master/host/examples) u=
se without programming the FPGA by Vivado IDE? I am planning to use the exa=
mple called &#8220;rfnoc_replay_samples_from_file&#8221;,
 however, I am asking the question for the general use as well.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for your time and effort.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_6e8798070c1e44c9a1e9ad901827263chhifraunhoferde_--

--===============6741080647162450263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6741080647162450263==--
