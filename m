Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id A06A8338E25
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 14:03:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17371383A6E
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 08:03:19 -0500 (EST)
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
	by mm2.emwd.com (Postfix) with ESMTPS id 4362D383A50
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 08:03:08 -0500 (EST)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4DxmFl1LJ0zJpL4
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 14:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1615554187;
	bh=9pXZ63YiYTCNxzO/CIPQln4su0IFIcGBhmJ7ETkQ6Hg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=QTO/eOjZUhwzbTfKW8tstyUl/1MnbSPwZ8NST9ocB/Xw8YDXWElrkrFqg7hyEJ8FX
	 HeeSFvEM8vzbV9b7dMgS/aq5qXNRLVsIzDcKA8wnsXaPCoqr/5HxzAIGOHHX/lNTsl
	 KXp+pF829nVbFR/m4HZkvrGXivvaDli4ZGkW9vAfBsT+a0E5oxQ6ntEsPiOr4hjG/K
	 B4dCE2I2Q/1v69mIStHHNAbsq37fGWAb3Bq/95icWaaPWpcBPZL2u/V0LvtywXzyA/
	 kq4ddMtFAo7Q8L00gccgzhKreix7cRdRgLLcvEt2C9drVZobAIJNh8zFz20npLS/AB
	 UikCkMS8Sxsjg==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: problem with rfnoc_tx_radio
Thread-Index: AdcXP32gU6f9TgJHRxmqlI3eTVosQg==
Date: Fri, 12 Mar 2021 13:03:06 +0000
Message-ID: <33312d69dd184e1cb12f441f6531d8f0@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.82
MIME-Version: 1.0
Message-ID-Hash: WXKIN6MNKUB6URQA56M3FMLV5KIZ3FMY
X-Message-ID-Hash: WXKIN6MNKUB6URQA56M3FMLV5KIZ3FMY
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] problem with rfnoc_tx_radio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WXKIN6MNKUB6URQA56M3FMLV5KIZ3FMY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============1020085579289175779=="

--===============1020085579289175779==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_33312d69dd184e1cb12f441f6531d8f0externalthalesgroupcom_"

--_000_33312d69dd184e1cb12f441f6531d8f0externalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I try to test the flow graph that I have created with gnuradio-companion 3.=
8 but when I run my script I have this error "module gnuradio.uhd has no at=
tribute rfnoc_tx_radio.
I work with UHD 4.0, gnuradio 3.8 .

Someone have solutions for this error please ?

Best regards

--_000_33312d69dd184e1cb12f441f6531d8f0externalthalesgroupcom_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I try to test the flow graph th=
at I have created with gnuradio-companion 3.8 but when I run my script I ha=
ve this error &#8220;module gnuradio.uhd has no attribute rfnoc_tx_radio.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work with UHD 4.0, gnuradio 3=
.8 .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone have solutions for this=
 error please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
</div>
</body>
</html>

--_000_33312d69dd184e1cb12f441f6531d8f0externalthalesgroupcom_--

--===============1020085579289175779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1020085579289175779==--
