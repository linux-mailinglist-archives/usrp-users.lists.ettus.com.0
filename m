Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF175371697
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 16:27:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E5BB383F1F
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 10:27:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=foi.se header.i=@foi.se header.b="N7WoTRnt";
	dkim-atps=neutral
Received: from fm-1.ptn.foi.se (ip1-m.foi.se [150.227.5.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 06E613840BD
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 10:24:26 -0400 (EDT)
Received: from butler.foi.se (custos-014-19.foi.se [150.227.13.254])
	by fm-1.ptn.foi.se  with ESMTP id 143EOPW2000984-143EOPW3000984
	for <usrp-users@lists.ettus.com>; Mon, 3 May 2021 16:24:25 +0200
Received: from exch02.win.foi.se (imap.foi.se [150.227.50.202])
	by butler.foi.se (Postfix) with ESMTP id 95A095E7
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 16:24:25 +0200 (CEST)
Received: from exch01.win.foi.se (150.227.50.201) by exch02.win.foi.se
 (150.227.50.202) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Mon, 3 May 2021
 16:24:25 +0200
Received: from exch01.win.foi.se ([150.227.64.25]) by exch01.win.foi.se
 ([150.227.64.25]) with mapi id 15.01.2242.008; Mon, 3 May 2021 16:24:25 +0200
From: Stefan D Olsson <stefan.d.olsson@foi.se>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USB on E310 not working
Thread-Index: AddAJ78boNIwk0jzTLWy43j+veWllA==
Date: Mon, 3 May 2021 14:24:25 +0000
Message-ID: <4c2e4e07eeaf436c93348359dfbccd73@foi.se>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [150.227.195.185]
MIME-Version: 1.0
X-FE-Policy-ID: 8:3:5:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=foi.se; s=dk2048-2020; c=relaxed/relaxed;
 h=from:to:subject:date:message-id:content-type:mime-version;
 bh=QDLSqImPKJKeswiw7TNWG9EctTklcjmcMbpb/bBER74=;
 b=N7WoTRnteE6QbD1hCF03pyLnfJKCQYDXZpMaqp7HFFVdLCCmmPoxHUc2tSPjDePn+EdceCfakJcu
	9kalKBg0bsZDggiuzrLRhlZEU7aFh/RpDvIf7D5Rew4Fd5NBwl/+gqcEmWu4N/d3y4Hk+j4h4IRS
	P60IhTlsIXVES4FWKiSKF7PcyENfm3yTlulYXpsjRo0S4B/G1BaJMJPhrYfYJOLbEJLLxJS4NHkx
	yMhPyfx6hTHh3y988Yiphjy3d7yYnM9t/jhhM0BNH5L1k1lwDJBytFXxbzId56loje708MA8MddN
	quaPOPQJ05FyQ/vqyvgEceDCUXWy6+YiOCBmPQ==
Message-ID-Hash: PTSER32SFYXHEL34GFQV2PUC6EEUS2Z7
X-Message-ID-Hash: PTSER32SFYXHEL34GFQV2PUC6EEUS2Z7
X-MailFrom: stefan.d.olsson@foi.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USB on E310 not working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PTSER32SFYXHEL34GFQV2PUC6EEUS2Z7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3403604762622615461=="

--===============3403604762622615461==
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_4c2e4e07eeaf436c93348359dfbccd73foise_"

--_000_4c2e4e07eeaf436c93348359dfbccd73foise_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We have some problem getting the USB to work in our E310 unit. We are using=
 our own operating system and our own FPGA. The FPGA is to some extent base=
d on your reference design. All other HW like, gpio:s, GPS, UARTs and of co=
urse the transceiver are working fine, but not the USB. There is not even a=
ny power in the USB connector. So, I have a few questions:


1.       As I understand it, the AVR processor should start the USB clock a=
nd switch on the power to the phy and hub circuits on power-up? Is there an=
ything I have to do from the application software to "switch on" the USB?

2.       Do I have to send any "commands" from the Zynq processor to the AV=
R to get it to start USB?

3.       The axi-pmu interface from your reference design has been implemen=
ted. Is there something else in the FPGA that are required to use the USB?

4.       The linux operating system have been built with devices for USB, i=
s there something else in the operating system that need to be configured?



--_000_4c2e4e07eeaf436c93348359dfbccd73foise_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-postmall17
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
/* List Definitions */
@list l0
	{mso-list-id:1187988159;
	mso-list-type:hybrid;
	mso-list-template-ids:-1148653584 69009423 69009433 69009435 69009423 6900=
9433 69009435 69009423 69009433 69009435;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"SV" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB">We have some problem getting th=
e USB to work in our E310 unit. We are using our own operating system and o=
ur own FPGA. The FPGA is to some extent based on your reference design. All=
 other HW like, gpio:s, GPS, UARTs and
 of course the transceiver are working fine, but not the USB. There is not =
even any power in the USB connector. So, I have a few questions:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-GB"><span style=3D"mso-list:=
Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-GB">As I understand it, the=
 AVR processor should start the USB clock and switch on the power to the ph=
y and hub circuits on power-up? Is there anything I have to do from the app=
lication software to &#8220;switch on&#8221; the
 USB?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-GB"><span style=3D"mso-list:=
Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-GB">Do I have to send any &=
#8220;commands&#8221; from the Zynq processor to the AVR to get it to start=
 USB?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-GB"><span style=3D"mso-list:=
Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-GB">The axi-pmu interface f=
rom your reference design has been implemented. Is there something else in =
the FPGA that are required to use the USB?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-GB"><span style=3D"mso-list:=
Ignore">4.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-GB">The linux operating sys=
tem have been built with devices for USB, is there something else in the op=
erating system that need to be configured?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_4c2e4e07eeaf436c93348359dfbccd73foise_--

--===============3403604762622615461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3403604762622615461==--
