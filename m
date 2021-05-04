Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4669637279A
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 10:54:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC7DF384168
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 04:54:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=external.thalesgroup.com header.i=@external.thalesgroup.com header.b="oO8b9DSf";
	dkim-atps=neutral
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
	by mm2.emwd.com (Postfix) with ESMTPS id 94575384168
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 04:53:57 -0400 (EDT)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4FZDCl6cm4zJpjj
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 10:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1620118435;
	bh=ocsILr2pTHgaRa3TWtaEErtbi4wBRTp0d8EyfPW9VyM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=oO8b9DSfUh3rmPP3SlnpNonJpuMCaix7WgL9zKS7zktE0nbgNEh2viCpycC5l64pG
	 qfJgb9uf5JJc+myKdnNABKkm45+t/TTf4paVPC/4TkBN62N59gif0sZziSttg8tSCP
	 pexnonO6GfU30V/we9I7Zm1TEk88Mvl2aTrZhHQ04KKwJDlWZ+79fa3TvTpCMC7+pX
	 OgSXvAwqMPSJ73nZz1J/0q2UdFqtEncvNXCyCjDcoWzTOU6baNKWqLPQrPmm/a8ikU
	 S9AZD49pPm8NPMAj52+gBA7dPHUHQcQ9KuDFY6pL1yv31fkDpNZNDOULIPGzXJqMqQ
	 X/ZvzmA4jAWww==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Send null signal DUC
Thread-Index: AddAwj1iptDukzcfRNq2kjo+A+urtw==
Date: Tue, 4 May 2021 08:53:54 +0000
Message-ID: <af08e5f9b7df45ec81d8815adde44093@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.83
MIME-Version: 1.0
Message-ID-Hash: MLFKLMG27MAGRH6UA5BFW3GPUSVWDCVX
X-Message-ID-Hash: MLFKLMG27MAGRH6UA5BFW3GPUSVWDCVX
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Send null signal DUC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MLFKLMG27MAGRH6UA5BFW3GPUSVWDCVX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============4079601336930594497=="

--===============4079601336930594497==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_af08e5f9b7df45ec81d8815adde44093externalthalesgroupcom_"

--_000_af08e5f9b7df45ec81d8815adde44093externalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Users,

I would like to known if someone could give me an example of how can I send=
 a null signal to a DUC control block in C++ please ?
I work with UHD 3.14.

Thanks for your help.

Regards.

Fred

--_000_af08e5f9b7df45ec81d8815adde44093externalthalesgroupcom_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to known if someon=
e could give me an example of how can I send a null signal to a DUC control=
 block in C&#43;&#43; please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work with UHD 3.14.<o:p></o:p=
></span></p>
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

--_000_af08e5f9b7df45ec81d8815adde44093externalthalesgroupcom_--

--===============4079601336930594497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4079601336930594497==--
