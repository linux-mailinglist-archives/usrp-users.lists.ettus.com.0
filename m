Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9D340F77
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 22:00:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23448383697
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 17:00:05 -0400 (EDT)
Received: from outgoing-exchange-3.mit.edu (outgoing-exchange-3.mit.edu [18.9.28.13])
	by mm2.emwd.com (Postfix) with ESMTPS id 182793818C4
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 16:58:58 -0400 (EDT)
Received: from oc11exedge1.exchange.mit.edu (OC11EXEDGE1.EXCHANGE.MIT.EDU [18.9.3.17])
	by outgoing-exchange-3.mit.edu (8.14.7/8.12.4) with ESMTP id 12IKwsbR008639
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 16:58:58 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11exedge1.exchange.mit.edu (18.9.3.17) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Mar 2021 16:58:30 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11expo22.exchange.mit.edu (18.9.4.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Mar 2021 16:58:44 -0400
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1497.012; Thu,
 18 Mar 2021 16:58:44 -0400
From: "Richard J. Muri" <ri28856@mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: x310 PPS issues
Thread-Index: AdccNlE+Cplbbb6qSCOSsh6BT3YwPg==
Date: Thu, 18 Mar 2021 20:58:44 +0000
Message-ID: <42410c3ff66e427aa6ef3655d8b9837b@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Message-ID-Hash: W2OY5GJ45H5PKY2SXKDDZSLESROEYC6U
X-Message-ID-Hash: W2OY5GJ45H5PKY2SXKDDZSLESROEYC6U
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x310 PPS issues
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2OY5GJ45H5PKY2SXKDDZSLESROEYC6U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6739543415361237223=="

--===============6739543415361237223==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_42410c3ff66e427aa6ef3655d8b9837boc11expo22exchangemited_"

--_000_42410c3ff66e427aa6ef3655d8b9837boc11expo22exchangemited_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



I'm using a series of x310 USRPs synchronized together using both an extern=
al 10 MHz reference and a PPS. I have two configurations: in my lab an Octo=
clock provides the PPS signal, and in the field configuration I use a GPS r=
eferenced stratum 1 NTP server<https://www.microsemi.com/product-directory/=
gps-instruments/4135-syncserver-s650>.



The lab configuration USRPs blink an LED on the front panel in time with th=
e PPS. The field configuration does not blink the LEDs at all. Both configu=
rations light the 10 MHz reference LED.



I am not fully sure if this is a problem. Occasionally when I run the appli=
cation in the field configuration, it works for about a minute and then app=
ears to drift out of sync, however most of the time everything seems to ope=
rate as intended. It's very possible my field configuration has other issue=
s, and my system has not quite reached the maturity to be running multiple =
hour/day long test to measure drift on the application synchronization.



I examined the PPS connection with a T cable and a scope. Both produce a PP=
S pulse with a sharp spike to an initial voltage, followed by a longer expo=
nential curve up to 5V. The octoclock drives to 2.5V initially, and the syn=
cserver drives to 4V initial.



I have tried using shorter cables and a 6dB attenuator on the syncserver co=
nnection to see if I could get the PPS to light, but neither seemed to have=
 any effect.



Does anybody have any guidance on how to make sure my x310s in the field co=
nfiguration are actually benefitting from the PPS?



Thank you!

Richard


--_000_42410c3ff66e427aa6ef3655d8b9837boc11expo22exchangemited_
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
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using a series of x310 USRPs synchronized =
together using both an external 10 MHz reference and a PPS. I have two conf=
igurations: in my lab an Octoclock provides the PPS signal, and in the fiel=
d configuration I use a
<a href=3D"https://www.microsemi.com/product-directory/gps-instruments/4135=
-syncserver-s650">
GPS referenced stratum 1 NTP server</a>. &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The lab configuration USRPs blink an LED on the fron=
t panel in time with the PPS. The field configuration does not blink the LE=
Ds at all. Both configurations light the 10 MHz reference LED.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am not fully sure if this is a problem. Occasional=
ly when I run the application in the field configuration, it works for abou=
t a minute and then appears to drift out of sync, however most of the time =
everything seems to operate as intended.
 It&#8217;s very possible my field configuration has other issues, and my s=
ystem has not quite reached the maturity to be running multiple hour/day lo=
ng test to measure drift on the application synchronization.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I examined the PPS connection with a T cable and a s=
cope. Both produce a PPS pulse with a sharp spike to an initial voltage, fo=
llowed by a longer exponential curve up to 5V. The octoclock drives to 2.5V=
 initially, and the syncserver drives
 to 4V initial. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried using shorter cables and a 6dB attenuat=
or on the syncserver connection to see if I could get the PPS to light, but=
 neither seemed to have any effect.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anybody have any guidance on how to make sure m=
y x310s in the field configuration are actually benefitting from the PPS?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you!<o:p></o:p></p>
<p class=3D"MsoNormal">Richard<o:p></o:p></p>
</div>
</body>
</html>

--_000_42410c3ff66e427aa6ef3655d8b9837boc11expo22exchangemited_--

--===============6739543415361237223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6739543415361237223==--
