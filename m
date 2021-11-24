Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B6245B885
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 11:41:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4178383E7F
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 05:41:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kongsberg.com header.i=@kongsberg.com header.b="PBYHtTG2";
	dkim-atps=neutral
Received: from kda-chqmg-03.kongsberg.com (kda-chqmg-03.kongsberg.com [193.71.180.7])
	by mm2.emwd.com (Postfix) with ESMTPS id D52F4383E3B
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 05:40:26 -0500 (EST)
Received: from pps.filterd (kda-chqmg-03.kongsberg.com [127.0.0.1])
	by kda-chqmg-03.kongsberg.com (8.16.0.43/8.16.0.43) with SMTP id 1AOAbkW4007629
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 11:40:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kongsberg.com; h=from : to :
 subject : date : message-id : content-type : mime-version; s=KDA1;
 bh=pFy7llp2nku0uwCvOzAd/e48tuMUPKKsRgdgpa6ufqM=;
 b=PBYHtTG2fPO5d6NiaCcCmHcuiaudI2hO32LwRxhKTZ2cXfBHLs7x5FSoIZq+nsGQu9j8
 RxIeBf2LXSAegddp7vImTQgAaed39kdu6mkDXMj7VtnSoGbf4sVDeqVHm6PByElsRZqw
 DLdaXhYyj2uoDiyISrTO7/GKjZC9A3WbBJTfcRwbkwGfHIPgNHoTNWYYd/fCroIftApk
 JyGjobJ9OEfk+n8Yp/1wxkfdYXC/Wx6cc2qo0tKz7nQpPlpshDD3+D4WfhuRLvvrle86
 gJ6Ee45PgmiA0+p78hs7d+SJxQoB/swUGCLm7SQ1cvbzL1yStMmo1gTuhTZ90KxJ8kEw cA==
Received: from ukgw-exca2-p01.kda.kongsberg.com ([10.50.100.47])
	by kda-chqmg-03.kongsberg.com with ESMTP id 3cf2jf0k87-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 11:40:24 +0100
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com (10.50.100.41) by
 Ukgw-ExcA2-p01.kda.kongsberg.com (10.50.100.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.20; Wed, 24 Nov 2021 11:40:24 +0100
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::208f:bf43:3727:cea5])
 by Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::208f:bf43:3727:cea5%20]) with
 mapi id 15.01.2308.020; Wed, 24 Nov 2021 11:40:24 +0100
To: <usrp-users@lists.ettus.com>
Thread-Topic: Creating sinc-spectrum
Thread-Index: AdffwZAVCAf2IteuSRibgknc6Ex7bQ==
Date: Wed, 24 Nov 2021 10:40:24 +0000
Message-ID: <172b6b6d5dbc4d78a3dfa177cc65503c@kongsberg.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.73.0.202]
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: orJfmGC3ghCrd86XW0aMLsGYE7vhGz4r
X-Proofpoint-GUID: orJfmGC3ghCrd86XW0aMLsGYE7vhGz4r
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425,18.0.790
 definitions=2021-11-24_03:2021-11-23,2021-11-24 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 suspectscore=0 clxscore=1011 mlxscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111240059
Message-ID-Hash: 6CEMDRXZ4L3JCXUVDLSUTJIS2K5CO4KZ
X-Message-ID-Hash: 6CEMDRXZ4L3JCXUVDLSUTJIS2K5CO4KZ
X-MailFrom: Andreas.Bertheussen@kongsberg.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Creating sinc-spectrum
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6CEMDRXZ4L3JCXUVDLSUTJIS2K5CO4KZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Andreas.Bertheussen--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: Andreas.Bertheussen@kongsberg.com
Content-Type: multipart/mixed; boundary="===============5850187636949792512=="

--===============5850187636949792512==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_172b6b6d5dbc4d78a3dfa177cc65503ckongsbergcom_"

--_000_172b6b6d5dbc4d78a3dfa177cc65503ckongsbergcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'd like to create (imitate) the sinc(f/fs) spectrum that would be generate=
d from an unfiltered zero-order hold DAC output, clocked at 10 Mhz. Main ch=
aracteristics are a peak around center frequency, rolling off to nulls at +=
- 10 MHz around the center frequency.

The IF signal is a random BPSK sequence.

When I stream the BPSK sequence at 10 MHz , I get a flat spectrum between +=
- 5MHz since the DUC is doing its job in upsampling to 200MHz DAC rate.

I have tried to add skip_duc=3D1 which is mentioned in some of the document=
ation, but the output spectrum does not change. Is this command outdated or=
 not supported? I wonder since the HG FPGA image has listed that the routin=
g between DUC and radio are "static".

I have noticed that I get something closer to what I want if I choose an od=
d interpolation order, by setting master_clock_rate to 190 MHz instead of 2=
00MHz. The upsampling ratio becomes 190MHz/10MHz =3D 19, which is odd, and =
I get some warnings about half-band filters and CIC roll-of in the console.
In this mode, what does the DUC do to the signal? Is it equivalent to bypas=
sing the DUC?

How do I best avoid any effects introduced by DUC?

Regards,
Andreas.

________________________________

CONFIDENTIALITY
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise explicitly agreed with KONGSBERG. If rec=
eived in error, please delete it immediately from your system and notify th=
e sender properly.

--_000_172b6b6d5dbc4d78a3dfa177cc65503ckongsbergcom_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
<body lang=3D"NO-BOK" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;d like to create (imita=
te) the sinc(f/fs) spectrum that would be generated from an unfiltered zero=
-order hold DAC output, clocked at 10 Mhz. Main characteristics are a peak =
around center frequency, rolling off to nulls
 at &#43;- 10 MHz around the center frequency.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The IF signal is a random BPSK =
sequence.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I stream the BPSK sequence=
 at 10 MHz , I get a flat spectrum between &#43;- 5MHz since the DUC is doi=
ng its job in upsampling to 200MHz DAC rate.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have tried to add skip_duc=3D=
1 which is mentioned in some of the documentation, but the output spectrum =
does not change. Is this command outdated or not supported? I wonder since =
the HG FPGA image has listed that the
 routing between DUC and radio are &#8220;static&#8221;.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have noticed that I get somet=
hing closer to what I want if I choose an odd interpolation order, by setti=
ng master_clock_rate to 190 MHz instead of 200MHz. The upsampling ratio bec=
omes 190MHz/10MHz =3D 19, which is odd,
 and I get some warnings about half-band filters and CIC roll-of in the con=
sole.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In this mode, what does the DUC=
 do to the signal? Is it equivalent to bypassing the DUC?<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How do I best avoid any effects=
 introduced by DUC?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Andreas.<o:p></o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
CONFIDENTIALITY<br>
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise
 explicitly agreed with KONGSBERG. If received in error, please delete it i=
mmediately from your system and notify the sender properly.<br>
</font>
</body>
</html>

--_000_172b6b6d5dbc4d78a3dfa177cc65503ckongsbergcom_--

--===============5850187636949792512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5850187636949792512==--
