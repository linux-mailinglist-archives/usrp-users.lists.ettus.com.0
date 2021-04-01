Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E648F3510C5
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 10:22:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCDC8383A70
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 04:22:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=external.thalesgroup.com header.i=@external.thalesgroup.com header.b="Bzx7HEOE";
	dkim-atps=neutral
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D13F3837E0
	for <usrp-users@lists.ettus.com>; Thu,  1 Apr 2021 04:22:11 -0400 (EDT)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F9x4L24WMzJpLC
	for <usrp-users@lists.ettus.com>; Thu,  1 Apr 2021 10:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1617265330;
	bh=gPOxsn/DpFZaYsfZ80wQC5yXWPzFqeVjL559VRw8aec=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=Bzx7HEOEIGo7mMX5sqnnR2I/KzhKlw6rIp8RLXA/c9u1nKpcoG/3W1bM+SqIxgbG2
	 uAFu1RCw2bmM9qLmGERCEGsk56uadod1qw/JLcU5bzF5NRCU1TeynqFyqiMDzonVl4
	 +qQPAa34qEF2O3/LI4QhCYdn8Jtt6y4nKOBwrzYRq8DGJ50j8m2ZF1u0PyGNFz5xdh
	 GkOUn5dY/q5GmXhOg2RNMb6jMUDFckk8D3C/Ckn5j9PqxkrJjAPQcNj23qZvl6CPRm
	 EQxD2fy+q58cikRBAY3AuOUQh69eiYNQ6Hjb1LlXqhS99gu5yFnFrjGXGshbTVm5RR
	 BwwVO7iRXe4RA==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Error init_usrp
Thread-Index: Adcmz3uSbQ0VE/7NSVSbg3EXP04NjQ==
Date: Thu, 1 Apr 2021 08:22:09 +0000
Message-ID: <c938757ba2a340a083df7080952964cb@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.82
MIME-Version: 1.0
Message-ID-Hash: OJJ33FM3QTNGVJXTJWLL7ZJFSBJLYMUW
X-Message-ID-Hash: OJJ33FM3QTNGVJXTJWLL7ZJFSBJLYMUW
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error init_usrp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJJ33FM3QTNGVJXTJWLL7ZJFSBJLYMUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============5489828334451473291=="

--===============5489828334451473291==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_c938757ba2a340a083df7080952964cbexternalthalesgroupcom_"

--_000_c938757ba2a340a083df7080952964cbexternalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Users,

I have follow tutorials Getting Started with UHD and C++ but when I try to =
run init_usrp I have the following error :
Error: RuntimeError: For legacy APIs, all devices require the same number o=
f radios, DDCs and DUCs.

Someone could help me to understand and resolve this error please ?

Best regards.

Fred

--_000_c938757ba2a340a083df7080952964cbexternalthalesgroupcom_
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
<p class=3D"MsoNormal">Hi Users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have follow tutorials Getting=
 Started with UHD and C&#43;&#43; but when I try to run init_usrp I have th=
e following error :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: RuntimeError: For legacy=
 APIs, all devices require the same number of radios, DDCs and DUCs.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone could help me to unders=
tand and resolve this error please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_c938757ba2a340a083df7080952964cbexternalthalesgroupcom_--

--===============5489828334451473291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5489828334451473291==--
