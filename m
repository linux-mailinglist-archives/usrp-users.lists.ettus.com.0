Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA64A369111
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 13:29:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0D8138407F
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 07:29:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=external.thalesgroup.com header.i=@external.thalesgroup.com header.b="fH6FuO/z";
	dkim-atps=neutral
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
	by mm2.emwd.com (Postfix) with ESMTPS id 940F7383FED
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 07:29:05 -0400 (EDT)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4FRX9r1BvHzJpSG
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 13:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1619177344;
	bh=P4mT6vScM8PrQQMEDWsIvlQoHnSiF95iMeIDZpzptxw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=fH6FuO/z50ehINRwgJ/k4tBaQUGPIUhgWU23wl1mAScfclVKAX4PROy/cSnxATaD1
	 3g5yFWlpvB79mcIRkE5OThVD27XDgbcrM/Ie6WFJq7GuJHFBgjIUlzuEnCcX95+w4s
	 MnbKta8S2MgvvxoaA+2XHjbdE7Tu6X045obdpdWjmW4qVUj74lNCut5l12Wf2xL1LV
	 tzmmVf4S+q+YS59n7Rkkyea6VUF4lZMfyJU4in3frxM+g0MmfDpDIDpOImKPltT/JP
	 NbkwTdl9nzixBKUgR1FyDxIeYU7zckH2QZ0lujZeGK6eDcsvegxjaCf2TUivXn/tlL
	 aH7GbQ/Nz5UFA==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: reference indefined with make C++
Thread-Index: Adc4MwIv8AkfdJxRQqu5tGEoyVWx8g==
Date: Fri, 23 Apr 2021 11:29:03 +0000
Message-ID: <2aebce85db51457e940e0c4da492c526@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.83
MIME-Version: 1.0
Message-ID-Hash: AZWOSDIARRBBPVXETAL3EVHSFDRPOL2Y
X-Message-ID-Hash: AZWOSDIARRBBPVXETAL3EVHSFDRPOL2Y
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] reference indefined with make C++
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZWOSDIARRBBPVXETAL3EVHSFDRPOL2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============0863627221101541348=="

--===============0863627221101541348==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_2aebce85db51457e940e0c4da492c526externalthalesgroupcom_"

--_000_2aebce85db51457e940e0c4da492c526externalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Users,

I work with uhd 3.14 and gnuradio 3.7.
I try to compile my program but I have the following error  "reference inde=
fined to uhd::rfnoc::block_id_t ?
I have used the example init_usrp in the folder uhd/host/examples and I can=
 compile without any errors.

Someone could help me please ?

Regards.

Fred

--_000_2aebce85db51457e940e0c4da492c526externalthalesgroupcom_
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
<p class=3D"MsoNormal">Hello Users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work with uhd 3.14 and gnurad=
io 3.7.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I try to compile my program but=
 I have the following error &nbsp;&#8220;reference indefined to uhd::rfnoc:=
:block_id_t ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have used the example init_us=
rp in the folder uhd/host/examples and I can compile without any errors.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone could help me please ?<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_2aebce85db51457e940e0c4da492c526externalthalesgroupcom_--

--===============0863627221101541348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0863627221101541348==--
