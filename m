Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70807189BA
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 14:27:07 +0200 (CEST)
Received: from [::1] (port=60380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOi8c-00060d-7a; Thu, 09 May 2019 08:27:02 -0400
Received: from mx07.telecomitalia.it ([156.54.232.23]:42202)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <daniele.disco@telecomitalia.it>)
 id 1hOi84-0005ve-HT
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 08:26:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=telecomitalia.it; s=selector1;
 c=relaxed/relaxed; 
 q=dns/txt; i=@telecomitalia.it; t=1557404782; x=2421318382;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=72eFp86Ceh1Mxc3I5RkRvflzmtnX2BlG16Upfuic3eY=;
 b=MkkLVUdYPFRcYv2CpLOENjTRAuGayKlqf1NkGdkhZdgREVJVwcx+Tt81zi2vUN5m
 uTF6mSHm/spLgEgE5dj4QPCYCj4o7vBM3g5UVyv2NuxbKzbP2tXd9D3xgrRxU0Rd
 +W9ti8HKX4WKo766aDmdbJ2CV7zAk+P2mWsj/ZVKF4v3ogHs7qcILYzU7ILGJCFU
 uQUV1IYzgYNQq8c5OFbF9/A1Y04tXrQlPmLdXNdtb7jW3nhxn9bUOE6z5VRUkSqU
 HEr2AduXtCZPhwEwFMS2EOqEHIIEsX8Ti7nBcP16arS1jf+jR1u2lNUrdZzANH4k
 cXNfY5sZfHSRRZR41vcRGQ==;
X-AuditID: 0a5a2d17-6dfff70000007ec5-50-5cd41c6e6276
Received: from TELMBXD08BA020.telecomitalia.local ( [10.90.43.39])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by mx07.telecomitalia.it () with SMTP id 69.E1.32453.E6C14DC5;
 Thu,  9 May 2019 14:26:22 +0200 (CEST)
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Configuration in sysctl.conf
Thread-Index: AdUGYSuQftZ8E+PaT52lNj6l9V8BQA==
Date: Thu, 9 May 2019 12:25:38 +0000
Message-ID: <467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local>
Accept-Language: it-IT, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.14.252.254]
x-ti-disclaimer: Disclaimer1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA3WSa0gUURzFuftylFbGzcdNDMdBEdQxV9day7VEIwXx2QcxYR12Lzq1O7Ps
 jKESYYiPtIeLQvjKB6hZUWEUhViyKhIZWG2Yfck3mEhopqQR7ToagjSffhzO/xwuczCpqkbh
 jzGsgKwsbSIVHjKPvPBQig1w5EdtNx3RTlxvdTsDUmx9dmkmyCsH8TTLcgItIMKIeIOOTGZ4
 g4lmzMhKnEcmZODMJMEYdWQMSVhMtAGZESvoSNpiQayRTPAgDnzxThvDEog1cEaGLdSRqTkZ
 lFYbG0epyYSsYsQLHGFGPE8XFjIcgQoeexWtdIRYbheUPBr/LSsH07m1AMMgroFV1Zm1wANT
 4Y0SWDk2q6gF7pjCqU8utchd7I3r4PTWqMTFUjwarizccHPxYTwEDv7ccBM9YfBT7zUgciTc
 vlUtc7EMD4ZzozU7t0o8C3Y3DEtdDPCjsH6gC4iZfvDLfPuOB+LecOb9W4XIPnBp7o9c5Cj4
 rPuVTOQgONE7ussBsHOkQe56gBSvA/Ch44dcLPOCb5rmd0wqPBwOrq/K64F3876+5v03zftu
 RBMHf23adzkCdgysKUQOhz2dy9I9Hh+akxzUKXinfmRXD4Itvd+AWNYN4NTQ4r/Qa2Orij1T
 Y92MWwdQ3gc+5pKoE5GCOApGoE0MHckI/WBnYpTfC1A+lWQHOAbIQ0pfzJGvktOX+VKzHQQ7
 c2afPJgA/jKWYxHprZy0fchXKY10aRmycnprsQnxdpDm/Ck2qb+PgXOOlxX0ao02Th2j1Uar
 tcdj/yOTfkq9p7MKL3Qu+BJCFmTdi5Ng7v7l4NTyV2q7FHud3pFDrRkrsJmgtC3fxNlgjCir
 WS/N9gqcqqgmNnKijmVPpqaYwnoW2jTvkqv6a4vbkI8mtDV32DOpr8FGXM14avNduvu5JvR5
 kwax1MWP/M2VK11UpWLmbOBQ++n+zcWXyRdCzulbgSzC8X251dcvPUk4mXiPlPFFtDpMauXp
 v0NngbSbAwAA
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Configuration in sysctl.conf
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Disco Daniele via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Disco Daniele <daniele.disco@telecomitalia.it>
Content-Type: multipart/mixed; boundary="===============0672861439813659125=="
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

--===============0672861439813659125==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_";
	type="multipart/alternative"

--_004_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_
Content-Type: multipart/alternative;
	boundary="_000_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_"

--_000_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi!
I'm using a X310 on a linux box UBUNTU 18.04

Executing the command "uhd_usrp_probe"
I obtain a lot of [WARNING][UDP] related to the dimension of the send buffer
Then there is the sentence:
Please run: sudo sysctl -w net.core.wmem_max=3D24862979

So I've written in the file /etc/sysctl.conf, at the end
net.core.wmem_max=3D24862979

I restarted the host but rerunning uhd_usrp_probe I reobtain the same warnin=
g.

Could you help me?

PS: Now I'm using a 10GB Ethernet board plugged in the workstation, using a=
 couple of fiber optics between the X310 and the work station

Thank you

_____________________________________________
[logo1]
Direzione e Coordinamento Vivendi SA

Daniele Disco
CT.TA.EI

Via Reiss Romoli, 274 - 10148 Torino
tel . +39 011 228 7271
cell. +39 331 600 1113
Fax. +39 06 4186 5196
Tim Official: Facebook<https://www.facebook.com/TimOfficialPage> - Twitter<h=
ttps://twitter.com/tim_official>
www.tim.it<http://www.tim.it/>



Questo messaggio e i suoi allegati sono indirizzati esclusivamente alle pers=
one indicate. La diffusione, copia o qualsiasi altra azione derivante dalla=
 conoscenza di queste informazioni sono rigorosamente vietate. Qualora abbia=
te ricevuto questo documento per errore siete cortesemente pregati di darne=
 immediata comunicazione al mittente e di provvedere alla sua distruzione, G=
razie. 

This e-mail and any attachments is confidential and may contain privileged i=
nformation intended for the addressee(s) only. Dissemination, copying, print=
ing or use by anybody else is unauthorised. If you are not the intended reci=
pient, please delete this message and any attachments and advise the sender=
 by return e-mail, Thanks. 

Rispetta l'ambiente. Non stampare questa mail se non =E8 necessario.

--_000_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micro=
soft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xm=
lns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://w=
ww.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"IT" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m using a X310 on a linu=
x box UBUNTU 18.04<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Executing the command &#8220;uhd=
_usrp_probe&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I obtain a lot of [WARNING][UDP]=
 related to the dimension of the send buffer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Then there is the sentence:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please run: sudo sysctl -w net.c=
ore.wmem_max=3D24862979<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I&#8217;ve written in the fil=
e /etc/sysctl.conf, at the end<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">net.core.wmem_max=3D24862979<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I restarted the host but rerunni=
ng uhd_usrp_probe I reobtain the same warning.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help me?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PS: Now I&#8217;m using a 10GB E=
thernet board plugged in the workstation, using a couple of fiber optics bet=
ween the X310 and the work station<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto"><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,san=
s-serif;color:#012169;mso-fareast-language:IT">_____________________________=
________________</span><b><span style=3D"font-size:10.0pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:#DA291C;mso-fareast-language:IT"><o:p></o:p=
></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"=
><img width=3D"57" height=3D"18" style=3D"width:.5937in;height:.1875in" id=
=3D"Immagine_x0020_5" src=3D"cid:image001.jpg@01D50673.1291AC00" alt=3D"logo=
1"></span><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,s=
ans-serif;color:#012169;mso-fareast-language:IT"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Helv=
etica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">Direzione e Co=
ordinamento Vivendi SA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:7.5pt;font-family:&quot;V=
erdana&quot;,sans-serif;mso-fareast-language:IT"><br>
</span></b><b><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quo=
t;,sans-serif;color:#012169;mso-fareast-language:IT">Daniele Disco</span></b=
><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif=
;color:#012169;mso-fareast-language:IT"><br>
<b>CT.TA.EI</b><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Helv=
etica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"><br>
Via Reiss Romoli, 274 &#8211; 10148 Torino<br>
tel . </span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot=
;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">&#43;39 0=
11 228 7271<br>
cell. &#43;39 331 600 1113<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"=
>Fax. &#43;39 06 4186 5196<br>
Tim Official: <a href=3D"https://www.facebook.com/TimOfficialPage" target=3D=
"_blank">
<b><span style=3D"color:#012169">Facebook</span></b></a> - <a href=3D"https:=
//twitter.com/tim_official" target=3D"_blank">
<b><span style=3D"color:#012169">Twitter</span></b></a><br>
<a href=3D"http://www.tim.it/" target=3D"_blank"><b><span style=3D"color:#01=
2169">www.tim.it</span></b></a></span><span lang=3D"EN-US" style=3D"mso-fare=
ast-language:IT"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:IT=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<html>
	<body>
		<table style=3D"width:600px;">
			<td style=3D"width:585px; font-family: Verdana; font-size:7.5pt; color:#0=
00; text-align: justify" width=3D"395">
				Questo messaggio e i suoi allegati sono indirizzati esclusivamente alle=
 persone indicate. La diffusione, copia o qualsiasi altra azione derivante d=
alla conoscenza di queste informazioni sono rigorosamente vietate. Qualora a=
bbiate ricevuto questo documento per errore siete cortesemente pregati di da=
rne immediata comunicazione al mittente e di provvedere alla sua distruzione=
, Grazie.
				<br><br>
				<i>
					This e-mail and any attachments is confidential and may  contain privil=
eged information intended for the addressee(s) only. Dissemination, copying,=
 printing or use by anybody else is unauthorised. If you are not the intende=
d recipient, please delete this message and any attachments and advise the s=
ender by return  e-mail, Thanks.
				</i>
				<br><br>
				<b>Rispetta l'ambiente. Non stampare questa mail se non &egrave; necessa=
rio.</b>
			</td>
		</table>
	</body>
</html>
</body>
</html>

--_000_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_--

--_004_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=2519;
	creation-date="Thu, 09 May 2019 12:25:38 GMT";
	modification-date="Thu, 09 May 2019 12:25:38 GMT"
Content-ID: <image001.jpg@01D50673.1291AC00>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/4QPARXhpZgAATU0AKgAAAAgADwD+AAQAAAABAAAAAAEAAAQA
AAABAAADMwEBAAQAAAABAAABzAECAAMAAAADAAAAwgEDAAMAAAABAAUAAAEGAAMAAAABAAIAAAER
AAQAAABcAAAAyAEVAAMAAAABAAMAAAEWAAQAAAABAAAABQEXAAQAAABcAAACOAEaAAUAAAABAAAD
qAEbAAUAAAABAAADsAEcAAMAAAABAAEAAAEoAAMAAAABAAIAAAE9AAMAAAABAAIAAAAAAAAACAAI
AAgAAAAIAAADGQAABaQAAAfvAAAKlAAADVcAAA9QAAARSQAAFAYAABdXAAAalAAAHgkAACE5AAAj
cAAAJaYAAChhAAArbAAALaUAADADAAAzjgAANEsAADUIAAA1xQAANoIAADc/AAA3/AAAOLkAADl2
AAA6MwAAOvAAADutAAA8agAAPScAAD3kAAA+oQAAP14AAEAbAABA2AAAQZUAAEJSAABDDwAAQ8wA
AESJAABFRgAARgMAAEbAAABHfQAASDoAAEj3AABJtAAASnEAAEsuAABL6wAATKgAAE1lAABOIgAA
Tt8AAE+cAABQWQAAURYAAFHTAABSkAAAU00AAFQKAABUxwAAVYQAAFZBAABW/gAAV7sAAFh4AABZ
NQAAWfIAAFqvAABbbAAAXCkAAFzmAABdowAAXmAAAF8dAABf2gAAYJcAAGFUAABiEQAAYs4AAGOL
AABkSAAAZQUAAGXCAABmfwAAZzwAAGf5AABotgAAAxEAAAKLAAACSwAAAqUAAALDAAAB+QAAAfkA
AAK9AAADUQAAAz0AAAN1AAADMAAAAjcAAAI2AAACuwAAAwsAAAI5AAACXgAAA4sAAAC9AAAAvQAA
AL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAA
vQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9
AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0A
AAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAA
AL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAF3
AAAAA+gAAXcAAAAD6P/bAEMAAgEBAgEBAgICAgICAgIDBQMDAwMDBgQEAwUHBgcHBwYHBwgJCwkI
CAoIBwcKDQoKCwwMDAwHCQ4PDQwOCwwMDP/bAEMBAgICAwMDBgMDBgwIBwgMDAwMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/AABEIABIAOQMBIgACEQEDEQH/
xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMA
BBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVG
R0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0
tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEB
AQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2Fx
EyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZ
WmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TF
xsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/APZvGX7JHwf8Y/GH
WYF/bw1iDV9X124iXT1u53eKeW5YC34uQGKu2zgAccAdKufG3/gmr4D/AGbvGUXh7x5+274m8K63
PZpfpZX8txHK0DvIiSAfavulopAD/sGucg/an/ZPb9qpNPj/AGbfEMHiD/hNDaJfvqhjWO8/tAoJ
zHn5QJPn2dhxXt3/AAWM+Pf7P3wy/a70/Tfil8F9Y+IXiZ/Cdlcxapa6kbeOK0a7vljg2Z6q6TNn
v5g9K+R9nh3SnU9y6a6ztr313P7K/tXiSlmmByyH1pQq0pS5fY4LnfKlZw93l5V15nzWtY900H9j
Cx/aZ/4JU+H/AIV+Dvjp4i1CwuTHNafEPT5pZby8EOotcOoInV9oZWgx5vyqmOcYr8xv2Zf+CfXj
P9o7/gor8WvgJJ+0H8UtIt/htaXFxFraaneyyX5iubeDDQ/awEyJieGP3RX7Hf8ABNzxZ4Q8b/sS
eANW8BeFLvwR4SvbWd9P0W5YtJZr9qmDksfvB5A8gb+ISA96+E/+CZ0Mq/8ABw1+1S3kzBBpl/lz
GwXnUrHbyRjnBx64OOlfrvCGa4jD5ZiYUpJKNNSjonaV4K6um9uj/M/ifxCwEavEMniFLmdeopXf
LLebtJQagpX35dL6LQm13XPEXgj/AIOUPg94MHizxRd6JZeEfss1o+q3Is70x6Df/vJLfzDGzM6L
Icg/MA2cgGvl/wDYc/bt8Wfs7/8ABZvW/wDhIfFPirUPAPizxzqvg/U4dQ1e5urKza5vZVs5FSWQ
xxmOdYhkAYiaTHAxX0/8Vo5T/wAHVHwwPkz7P+EcnYv5TbAP7C1IZ3YxjOBnPU4618x/s5/sMap+
35rX7bHgvQRbWfi+w8ZW2s+HbnUGltbaK7i1O/3o8oRmUSQPIuVBKs0bYO3B+wwcsIsN/taXJLD0
k3ppzTkub5Xv30PhsQsS66WHbvGtUaWuvLFO3z27XNX/AILEftyeKvin/wAFVND8N+FvE3ijSPCP
w117S/DbDS9VubK3u9RN1FJdlxDIquy7liwwyPLcdDX7yV+A37cn7Evin9jH4bfs5Wfju5tta+Jf
jz4rX3iXxTf2DyXcNxdT3dtsUSmNGc7cuSVB3TOAMAV+/NfL8WfVlhMHDC25Yqcbr7XLJJy+bu16
nvcPfWPrGJlib8zcXb+W62+XXzGOP3dIg4/E0UV8SfUCH73+fSlHKA9zRRUoQDiMfWhh8v1oopRL
BO/tRRRVxJe5/9k=

--_004_467ab47ac30943458c17957c0f605687TELMBXC13BA020telecomit_--


--===============0672861439813659125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0672861439813659125==--

