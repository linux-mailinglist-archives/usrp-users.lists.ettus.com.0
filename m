Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D07A348377B
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 20:17:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C82D7385118
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 14:17:20 -0500 (EST)
Received: from outgoing-exchange-5.mit.edu (outgoing-exchange-5.mit.edu [18.9.28.59])
	by mm2.emwd.com (Postfix) with ESMTPS id 778EA384F58
	for <USRP-users@lists.ettus.com>; Mon,  3 Jan 2022 14:16:24 -0500 (EST)
Received: from oc11exedge1.exchange.mit.edu (OC11EXEDGE1.EXCHANGE.MIT.EDU [18.9.3.17])
	by outgoing-exchange-5.mit.edu (8.14.7/8.12.4) with ESMTP id 203JGNNR017310
	for <USRP-users@lists.ettus.com>; Mon, 3 Jan 2022 14:16:23 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11exedge1.exchange.mit.edu (18.9.3.17) with Microsoft SMTP Server (TLS) id
 15.0.1497.26; Mon, 3 Jan 2022 14:15:12 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11expo22.exchange.mit.edu (18.9.4.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Mon, 3 Jan 2022 14:16:13 -0500
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1497.023; Mon, 3
 Jan 2022 14:16:13 -0500
From: Richard Joseph Muri <ri28856@mit.edu>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Propagating late and overflow messages in software
Thread-Index: AdgA1POU6XWax5foTkKMQf3hLbm/vw==
Date: Mon, 3 Jan 2022 19:16:13 +0000
Message-ID: <0d17457db86b43fd856f7b8c2c3071fb@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Message-ID-Hash: TZWV3U3XKRB3GKCEYL6IWEI6R73LTDER
X-Message-ID-Hash: TZWV3U3XKRB3GKCEYL6IWEI6R73LTDER
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Propagating late and overflow messages in software
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TZWV3U3XKRB3GKCEYL6IWEI6R73LTDER/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3890545108962801076=="

--===============3890545108962801076==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0d17457db86b43fd856f7b8c2c3071fboc11expo22exchangemited_"

--_000_0d17457db86b43fd856f7b8c2c3071fboc11expo22exchangemited_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



I have a Linux C++ application using UHD 3.13 and an x310 USRP. Occasionall=
y my host machine sends a late packet to the USRP, resulting in UHD printin=
g an "L" to stdout, or the host machine drops some packets, resulting in UH=
D printing a "D" to stdout.



I would like prevent printing these messages to stdout, and instead add my =
own mechanism for tracking errors. Is there an officially support way to do=
 this? I found a page about UHD logging (https://files.ettus.com/manual/pag=
e_logging.html), which claims "UHD itself never prints to stdout", which se=
ems in conflict with the overflow notes documentation (https://files.ettus.=
com/manual/page_general.html#general_ounotes).



One workaround I could do is use fork() to spawn a separate process for my =
multi_usrp object and monitor its stdout/stderr from my parent application.=
 Currently I create my multi_usrp object in its own thread rather than spaw=
ning another process, which would be preferable.



Thanks!

Richard


--_000_0d17457db86b43fd856f7b8c2c3071fboc11expo22exchangemited_
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
<p class=3D"MsoNormal">I have a Linux C&#43;&#43; application using UHD 3.1=
3 and an x310 USRP. Occasionally my host machine sends a late packet to the=
 USRP, resulting in UHD printing an &#8220;L&#8221; to stdout, or the host =
machine drops some packets, resulting in UHD printing
 a &#8220;D&#8221; to stdout.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like prevent printing these messages to stdo=
ut, and instead add my own mechanism for tracking errors. Is there an offic=
ially support way to do this? I found a page about UHD logging (<a href=3D"=
https://files.ettus.com/manual/page_logging.html">https://files.ettus.com/m=
anual/page_logging.html</a>),
 which claims &#8220;UHD itself never prints to stdout&#8221;, which seems =
in conflict with the overflow notes documentation (<a href=3D"https://files=
.ettus.com/manual/page_general.html#general_ounotes">https://files.ettus.co=
m/manual/page_general.html#general_ounotes</a>).
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One workaround I could do is use fork() to spawn a s=
eparate process for my multi_usrp object and monitor its stdout/stderr from=
 my parent application. Currently I create my multi_usrp object in its own =
thread rather than spawning another
 process, which would be preferable.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">Richard<o:p></o:p></p>
</div>
</body>
</html>

--_000_0d17457db86b43fd856f7b8c2c3071fboc11expo22exchangemited_--

--===============3890545108962801076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3890545108962801076==--
