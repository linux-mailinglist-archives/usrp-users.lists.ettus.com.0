Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1B81DCAAF
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 12:09:06 +0200 (CEST)
Received: from [::1] (port=56434 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbi8K-0007Xn-CX; Thu, 21 May 2020 06:09:00 -0400
Received: from mx01.telecomitalia.it ([217.169.121.10]:57170)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <maurizio.crozzoli@telecomitalia.it>)
 id 1jbi8G-00078t-Cm
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 06:08:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=telecomitalia.it; s=selector1;
 c=relaxed/relaxed; 
 q=dns/txt; i=@telecomitalia.it; t=1590055694; x=2453969294;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 bh=ynMGid7Qjy+7U3Ux0CtGlPDzyc2PBVj2+sxXihzXBsk=;
 b=HMykh8IT8Y4ujiDN4AjBdJ19XpMu3tBTLUfDQ5b06rxnInX7xO3l4sU+/nONMiH5
 3FvptGbkbTLuBOEAEmhQAgI1H3g/MIWSYkNfpESv6egzOhyDIuUfiNIVKjmoQXHJ
 NVSPrgg/y52volEd8mWjMudUlwFg4c96w4VtZi5zwWV9AwQwc9e2GzaspDGGs6BK
 Ib/l+Xg/t+TFjl/lgf6b/yIe5mVKDISkTS1LENLjq//OYmR3eiSjjYxN8gqI2DKi
 jEFn0MWAnGhDegz9VpOKwjWAVMYlVtdNC4czcUvH0e3QvdxTwQhEdKwyo+ZmqIVc
 IcQLFel1egwTjZnMS9E5NQ==;
X-AuditID: d9a9790a-9b1ff7000000116d-c5-5ec6530d30dc
Received: from TELMBXB13RM001.telecomitalia.local ( [10.14.252.75])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by mx01.telecomitalia.it () with SMTP id B2.16.04461.D0356CE5;
 Thu, 21 May 2020 12:08:13 +0200 (CEST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC OFDM receiver for LTE and NR
Thread-Index: AdYvV46rWDaI2YEwQTqu+4wQ357G7A==
Date: Thu, 21 May 2020 10:08:13 +0000
Message-ID: <cb6eada9d3c9436c8dae18cd871f12ed@TELMBXB13RM001.telecomitalia.local>
Accept-Language: en-US
Content-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.141.145.189]
x-ti-disclaimer: ADBanner
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmleLIzCtJLcpLzFFi42Lh4vvjrcsbfCzO4NIGG4sLnXPYHRg9Jq48
 xBzAGNXAaJOYl5dfkliSqpCSWpxsq+SSWZyck5iZm1qk4OjiBJRMLVJSyEyxVTJTUijISUxO
 zU3NK7FVSiwoSM1LUbLjUsAANkBlmXkKqXnJ+SmZeem2Sp7B/roWFqaWuoZKdoGlqcUl+Qq5
 qcXFienpmfkKCRdFMhZO/cte8FShonuiegPjMZkuRk4OCQETife3/jKD2EICU5kkNi8NA7HZ
 BGwkjp74yQJiiwjYSvyZtRCsRlhAW2Jz4zF2iLiBxN2b15kgbD2Jlc37GEFsFgFVids3Olm7
 GDk4eAUCJXZdCgYJMwqISXw/tQasnFlAXOLF9BPsECcISCzZc54ZwhaVePn4HyuEbSCxdek+
 FghbSWLm3nVQNZIShw9vYoOYky+xc/YPsLW8AoISJ2c+YZnAKDQLyYpZSMpmISmDiOtILNj9
 iQ3C1pZYtvA1M4x95sBjJmTxBYzsqxhFcysMDPVKUnNSk/NzM0sSczIT9TJLNjECo//mykqu
 HYwdt97oHWJk4mA8xCjBwawkwruQ/2icEG9KYmVValF+fFFpTmrxIUYfYBhNZJYSTc4Hpp+8
 knhDUzNTc2MjM1MDUzNLHMJK4rxTlYFmCaQDE1F2ampBahHMOCYOTqkGpu5QvtPFnvaZ13jV
 OXt2Pl7Rw5d3z3FrucvmN/LP0qrOTgr4cvTPMSuf3OWrmYQ+ib8r/XT3+e5UK79O3ysR/7b5
 L8nzfrNRj2c9u7H9f4tLcfJvGW2y7MxKDWwWmGw7p7DXa4/tg0b5bcufXWf0eNzfplEqeYT3
 W5ttzJ2pn8MfbhXtNRA9pPxfd5Pf4vmBAhc/5da81O6+ySFots28jz/O4rzKTMUZAm/ncD51
 mbSBsfYZC8vS5wwd7R6d2mkSjy7EixwwWeDucX5L77UcAftblclF3hezbv6e+IF166m/rV/0
 Tnq+YFmqf+WM6dmchMW2EmEmGYxNy37wcYsuLI0Rf+Fu9nPd3CSBvoeLlViKMxINtZiLihMB
 sUV92p4DAAA=
Subject: [USRP-users] RFNoC OFDM receiver for LTE and NR
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
From: Crozzoli Maurizio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Crozzoli Maurizio <maurizio.crozzoli@telecomitalia.it>
Content-Type: multipart/mixed; boundary="===============4607109848224599944=="
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

--===============4607109848224599944==
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_cb6eada9d3c9436c8dae18cd871f12edTELMBXB13RM001telecomit_"

--_000_cb6eada9d3c9436c8dae18cd871f12edTELMBXB13RM001telecomit_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Can the OFDM receiver made avaible in the RFNoC library be used "as is" for=
 receiving LTE and maybe NR signals to get access to Resource Elements?

I read something about the use of such blocks for receivng 802.11 signals an=
d of course they are all OFDM-based systems, but I wonder whether it is just=
 a matter of choosing the right cofiguration parameters in each block and it=
 could work or they cannot be used at all.

If the answer would be YES, it can be done, is there any reference document/=
presentation to start with?

TIA!

BR,

Maurizio.



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

--_000_cb6eada9d3c9436c8dae18cd871f12edTELMBXB13RM001telecomit_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micro=
soft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xm=
lns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://w=
ww.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Testo normale Carattere";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.StileMessaggioDiPostaElettronica17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.TestonormaleCarattere
	{mso-style-name:"Testo normale Carattere";
	mso-style-priority:99;
	mso-style-link:"Testo normale";
	font-family:"Calibri",sans-serif;
	mso-fareast-language:IT;}
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
<body lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Can the OFDM receiver made av=
aible in the RFNoC library be used &#8220;as is&#8221; for receiving LTE and=
 maybe NR signals to get access to Resource Elements?<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">I read something about the us=
e of such blocks for receivng 802.11 signals and of course they are all OFDM=
-based systems, but I wonder whether it is just a matter of choosing the rig=
ht cofiguration parameters in each
 block and it could work or they cannot be used at all.<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">If the answer would be YES, i=
t can be done, is there any reference document/presentation to start with?<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">TIA!<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">BR,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Maurizio.<o:p></o:p></span></=
p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<!-- --><html>
	<body>
		<table style=3D"width:600px;">
		<tr>
			<td style=3D"width:600px;">

<a href=3D"https://on.tim.it/banner-mail-dip"> <img src=3D"https://img.tim.i=
t/sdr/maild/mail_dip_680x190_Banner_DISNEY_TIMVISION_LANCIO_v2.jpg" title=3D=
"TIM" style=3D"width: 100%; height: auto; margin-top: 20px;margin-bottom: 20=
px;"></a>
			</td>
		</tr>
		<tr>
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
		</tr>
		</table>	
	</body>
</html>
</body>
</html>

--_000_cb6eada9d3c9436c8dae18cd871f12edTELMBXB13RM001telecomit_--


--===============4607109848224599944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4607109848224599944==--

