Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AE3105A97
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2019 20:49:12 +0100 (CET)
Received: from [::1] (port=43122 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXsRv-0003fV-Jq; Thu, 21 Nov 2019 14:49:07 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:44576)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <ralf.lindstedt@hhi.fraunhofer.de>)
 id 1iXsRr-0003bW-49
 for usrp-users@lists.ettus.com; Thu, 21 Nov 2019 14:49:03 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A58487C0CB
 for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2019 20:48:21 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 99E467C075
 for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2019 20:48:21 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.194])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2019 20:48:21 +0100 (CET)
Received: from MXSRV2.fe.hhi.de ([169.254.2.54]) by MXSRV1.fe.hhi.de
 ([172.16.0.194]) with mapi id 14.03.0415.000; Thu, 21 Nov 2019 20:48:21 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: IQ-sample with a magnitude larger than 1.0 
Thread-Index: AdWgpHZDFeuoUBwwRhSjhCA/Vo76hg==
Date: Thu, 21 Nov 2019 19:48:21 +0000
Message-ID: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.44]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] IQ-sample with a magnitude larger than 1.0
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
From: "Lindstedt, Ralf via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lindstedt, Ralf" <ralf.lindstedt@hhi.fraunhofer.de>
Content-Type: multipart/mixed; boundary="===============6328432402573677147=="
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

--===============6328432402573677147==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_D7790F43D25BB04383227944C1AC1891010C0FCB4EMXSRV2fehhide_"

--_000_D7790F43D25BB04383227944C1AC1891010C0FCB4EMXSRV2fehhide_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are transmitting samples in bursts of 15360 samples(1ms @ 15.36Msamples/=
s). When the magnitudes of the transmitted samples are mostly larger than 1=
.0, the received signal, especially the beginning is distorted.

My assumptions is that this distortion happens on the transmitter side. Is =
this correct, and if what exactly happens with the data?



--_000_D7790F43D25BB04383227944C1AC1891010C0FCB4EMXSRV2fehhide_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB">We are transmitting samples in =
bursts of 15360 samples(1ms @ 15.36Msamples/s). When the magnitudes of the =
transmitted samples are mostly larger than 1.0, the received signal, especi=
ally the beginning is distorted.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">My assumptions is that this dis=
tortion happens on the transmitter side. Is this correct, and if what exact=
ly happens with the data?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_D7790F43D25BB04383227944C1AC1891010C0FCB4EMXSRV2fehhide_--



--===============6328432402573677147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6328432402573677147==--


