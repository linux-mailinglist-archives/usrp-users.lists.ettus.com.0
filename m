Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8B71C6805
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 08:12:42 +0200 (CEST)
Received: from [::1] (port=55784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWDIN-0000xX-6c; Wed, 06 May 2020 02:12:39 -0400
Received: from relais-inet.orange.com ([80.12.66.40]:20626)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <louisadrien.dufrene@orange.com>)
 id 1jWDII-0000rz-Rq
 for usrp-users@lists.ettus.com; Wed, 06 May 2020 02:12:35 -0400
Received: from opfedar03.francetelecom.fr (unknown [xx.xx.xx.5])
 by opfedar23.francetelecom.fr (ESMTP service) with ESMTP id 49H5pK5HY3zBrwP
 for <usrp-users@lists.ettus.com>; Wed,  6 May 2020 08:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orange.com;
 s=ORANGE001; t=1588745513;
 bh=RapWqrYyhep/OJvxZla8HzJ0uRMbVVeAnOmR5KZ52iE=;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 b=C0WA94nv7C7z5yS2qTj0EejKY/y8L5DQXqHwX1t7hK3/FgMVDx75p8fPiAr3vh8xX
 C7m1jgQR0wj3T1AQkpeuyn6uPLfiHtmUA/gPSpm7ruWjQTZt8v8kJu1SL6kHwpypYT
 qpaUiZqQZwJWUXY7+Niaaznw+rZWFnPNl0SpA5ZQYAcLLyt7wEKsXD1NXs7uxETqmj
 B1EnBfYaJcubx8+9nIaHJ3FQjzq17h8WaljJYP7BHZ8FTXtz1ykLP7G20LNW1PIMa3
 nKYUCDFfAVf4OVSQJv8sIq7Oj6iZoFNxbgh713GmdLVC0OBIhOwJNzTgRZSkvkRabT
 GPt8MX+YJ6V1Q==
Received: from Exchangemail-eme6.itn.ftgroup (unknown [xx.xx.13.51])
 by opfedar03.francetelecom.fr (ESMTP service) with ESMTP id 49H5pK4QWLzCqkr
 for <usrp-users@lists.ettus.com>; Wed,  6 May 2020 08:11:53 +0200 (CEST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Power consomption of B20Xmini series
Thread-Index: AdYjbOW4wPRrj0/oTIuCi2N+MJbhlw==
Date: Wed, 6 May 2020 06:11:53 +0000
Message-ID: <25698_1588745513_5EB25529_25698_118_1_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CE@OPEXCAUBM21.corporate.adroot.infra.ftgroup>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.114.13.247]
MIME-Version: 1.0
Subject: [USRP-users] Power consomption of B20Xmini series
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
From: Louis-Adrien DUFRENE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: louisadrien.dufrene@orange.com
Content-Type: multipart/mixed; boundary="===============7543556538625940968=="
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


--===============7543556538625940968==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_";
	type="multipart/alternative"


--_004_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_
Content-Type: multipart/alternative;
	boundary="_000_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_"


--_000_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

We would like to know what is the max power consumption of USRP B200mini, B=
200mini-i and B205mini-i? Under 5V USB, what is the max input current value=
 needed?

Also, is there a difference in the digital processing (filtering) done on t=
he FPGAs, since the B20Xmini series have different FPGAs? Or is it just for=
 user purpose?

Have a nice day,
LA

[Orange logo]<http://www.orange.com/>

DUFRENE Louis-Adrien
Ing=E9nieur Recherche
ORANGE/TGI/OLS/BIZZ/MIS/CITY

Phone: +33 4 38 42 82 51
Mobile: +33 6 42 37 65 31
louisadrien.dufrene@orange.com<mailto:louisadrien.dufrene@orange.com>


___________________________________________________________________________=
______________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confiden=
tielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu=
 ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages el=
ectroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou =
falsifie. Merci.

This message and its attachments may contain confidential or privileged inf=
ormation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and dele=
te this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been =
modified, changed or falsified.
Thank you.


--_000_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:HelveticaNeueRegular;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We would like to know what is t=
he max power consumption of USRP B200mini, B200mini-i and B205mini-i? Under=
 5V USB, what is the max input current value needed?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Also, is there a difference in =
the digital processing (filtering) done on the FPGAs, since the B20Xmini se=
ries have different FPGAs? Or is it just for user purpose?<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Have a nice day,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">LA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.orange.com/"><span style=3D"fo=
nt-size:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-lan=
guage:FR;text-decoration:none"><img border=3D"0" width=3D"40" height=3D"40"=
 id=3D"Picture_x0020_1" src=3D"cid:image001.png@01D6237D.1A170A10" alt=3D"O=
range logo"></span></a><span style=3D"mso-fareast-language:FR"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"line-height:15.0pt"><span style=3D"font-siz=
e:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-language:=
FR"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:FR">DU=
FRENE Louis-Adrien</span></b><span style=3D"font-size:12.5pt;font-family:He=
lveticaNeueRegular;color:black;mso-fareast-language:FR"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black;mso-fareast-language:FR">Ing=E9nieur Recherche=
</span><span style=3D"font-size:12.5pt;font-family:HelveticaNeueRegular;col=
or:black;mso-fareast-language:FR"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black;mso-fareast-language:FR">ORANGE/TGI/OLS/BIZZ/M=
IS/CITY</span><span style=3D"mso-fareast-language:FR"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:15.0pt"><span style=3D"font-siz=
e:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-language:=
FR">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
;mso-fareast-language:FR">Phone:&nbsp;&#43;33 4 38 42 82 51</span><span sty=
le=3D"font-size:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-far=
east-language:FR"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black;mso-fareast-language:FR">Mobile:&nbsp;&#43;33 =
6 42 37 65 31</span><span style=3D"font-size:12.5pt;font-family:HelveticaNe=
ueRegular;color:black;mso-fareast-language:FR"><br>
</span><a href=3D"mailto:louisadrien.dufrene@orange.com"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
563C1;mso-fareast-language:FR">louisadrien.dufrene@orange.com</span></a><sp=
an style=3D"mso-fareast-language:FR"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<PRE>______________________________________________________________________=
___________________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confiden=
tielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu=
 ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages el=
ectroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou =
falsifie. Merci.

This message and its attachments may contain confidential or privileged inf=
ormation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and dele=
te this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been =
modified, changed or falsified.
Thank you.
</PRE></body>
</html>

--_000_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_--

--_004_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=165;
	creation-date="Wed, 06 May 2020 06:11:53 GMT";
	modification-date="Wed, 06 May 2020 06:11:53 GMT"
Content-ID: <image001.png@01D6237D.1A170A10>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAIAAAADnC86AAAACXBIWXMAAC4jAAAuIwF4pT92AAAA
B3RJTUUH4gsaDS4pnkGU0AAAAERJREFUWMPt2LEJACEQBMA7sWm/ANvWBgQT4UFnw00m2GxztPgl
JQIMBoPBYDAYDAaDwZvURdfHeedLGz8Hp0cAfB08AREtBUFTDB0HAAAAAElFTkSuQmCC

--_004_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CEOPEXCAUBM21corp_--


--===============7543556538625940968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7543556538625940968==--

