Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D422577BB9E
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 16:29:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 672EC3844F1
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 10:29:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692023372; bh=mziU+wCuGXRwVrnY/LAUsGoeJAmHg8AFDr6uqENyR84=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LiW9w0IkjCWRn6la+LYaohzvQ/OAUkXnUNmgElHZTldka9H0POGhePFzGUf6aUFWu
	 ZnEPUImxvBGZ/vVjjMYgcP5TSS6KV/doEVTPmh7agH5MLOHJ7HENWO+BEX9++xDlml
	 PyJpAHJBp7jbti4YQ1oXlyZeWn1S8dPPsiC+xi/ggX7trJ1zzcV0bBmcgxc7dV5/lT
	 +YwpqBL+D1c/xqk1QNAKzrJUSMnYvkZuGnP3bkzm/JoWpdT/1RkQLcOP0W4tbWBZ3V
	 sY75+73kXda7ehNpa86DEQ3YCzuJmgMyHurLRBBf2vZlFCGor4Y42UF8uiOsnhx+MJ
	 q8Cr8FdRgI4lg==
Received: from mx-relay25-hz1.antispameurope.com (mx-relay25-hz1.antispameurope.com [94.100.133.201])
	by mm2.emwd.com (Postfix) with ESMTPS id 42178384225
	for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 10:29:17 -0400 (EDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by mx-relay25-hz1.antispameurope.com;
 Mon, 14 Aug 2023 16:29:16 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.212.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id F12FDC0014
	for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 16:29:11 +0200 (CEST)
Received: from mail05.iis.fhg.de (2001:638:a0a:1111::215) by mailn2.iis.fhg.de
 (2001:638:a0a:2111::212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 14 Aug
 2023 16:29:11 +0200
Received: from mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec]) by
 mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec%6]) with mapi id 15.02.0986.042;
 Mon, 14 Aug 2023 16:29:11 +0200
From: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC 4: RFNoC FFT Block in GNU Radio companion
Thread-Index: AdnOuhNCadmcBl/lS/W8z15W1cebnQ==
Date: Mon, 14 Aug 2023 14:29:11 +0000
Message-ID: <97acfc9d5ea24e50bf7c2a43dea11a66@iis.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.96.171.210]
MIME-Version: 1.0
X-cloud-security-sender: luca.bachmaier@iis.fraunhofer.de
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay25-hz1.antispameurope.com with 4659D118009A
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1, IP=153.96.172.4
X-cloud-security-Digest: 240dac154f817736f79143f757246f60
X-cloud-security: scantime:1.313
Message-ID-Hash: BOCHPFJIPL5CDH2VKGAGUIMFLH77LZLT
X-Message-ID-Hash: BOCHPFJIPL5CDH2VKGAGUIMFLH77LZLT
X-MailFrom: prvs=05839ee0ee=luca.bachmaier@iis.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC 4: RFNoC FFT Block in GNU Radio companion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BOCHPFJIPL5CDH2VKGAGUIMFLH77LZLT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1550041790856347995=="

--===============1550041790856347995==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_97acfc9d5ea24e50bf7c2a43dea11a66iisfraunhoferde_"

--_000_97acfc9d5ea24e50bf7c2a43dea11a66iisfraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm currently developing a GNU Radio flowgraph with RFNoC 4.3 which uses th=
e RFNoC FFT block. According to this workshop (https://www.youtube.com/watc=
h?v=3D4XXqk0yGvCI @ 18:10) there are five runtime parameters you have to se=
t for the FFT block: magnitude, direction, length, fft_scaling, shift_confi=
g.
I'm not exactly sure where in the flowgraph I can set these properties. E.g=
. is setting the "Block Args" parameter of the FFT block to "magnitude=3Dco=
mplex,direction=3D1,length=3D1024" correct? If not, what is the right way t=
o set the runtime parameters?

After setting them as I described I get two python errors when trying to ru=
n the flowgraph:

1. Setting magnitude=3Dcomplex causes this:
             RuntimeError: RuntimeError: Property magnitude:RuntimeError: C=
annot convert `complex' to int!
In the flowgraph, the output of the RFNoC FFT block is connected directly t=
o an RFNoC Rx Streamer block. It seems that all default RFNoC blocks only a=
ccept an int input. This error seems strange and that's why I doubt that I =
set the magnitude parameter correctly.

2. No matter what parameter I set for the FFT, I get the following error:
             RuntimeError: ValueError: samples per package must not be smal=
ler than atomic item size
I was not able to find any sufficient information about this online unfortu=
nately.

I hope I was able to describe my problems clearly and would be glad to rece=
ive help regarding any of those.

Thank you in advance and regards
Luca

--_000_97acfc9d5ea24e50bf7c2a43dea11a66iisfraunhoferde_
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
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m currently developing =
a GNU Radio flowgraph with RFNoC 4.3 which uses the RFNoC FFT block. Accord=
ing to this workshop (<a href=3D"https://www.youtube.com/watch?v=3D4XXqk0yG=
vCI">https://www.youtube.com/watch?v=3D4XXqk0yGvCI</a>
 @ 18:10) there are five runtime parameters you have to set for the FFT blo=
ck: magnitude, direction, length, fft_scaling, shift_config.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m not exactly sure wher=
e in the flowgraph I can set these properties. E.g. is setting the &#8220;B=
lock Args&#8221; parameter of the FFT block to &#8220;magnitude=3Dcomplex,d=
irection=3D1,length=3D1024&#8221; correct? If not, what is the right way
 to set the runtime parameters?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After setting them as I describ=
ed I get two python errors when trying to run the flowgraph:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1. Setting magnitude=3Dcomplex =
causes this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: RuntimeError: Prope=
rty magnitude:RuntimeError: Cannot convert `complex' to int!<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the flowgraph, the output of=
 the RFNoC FFT block is connected directly to an RFNoC Rx Streamer block. I=
t seems that all default RFNoC blocks only accept an int input. This error =
seems strange and that&#8217;s why I doubt
 that I set the magnitude parameter correctly.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. No matter what parameter I s=
et for the FFT, I get the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: ValueError: samples=
 per package must not be smaller than atomic item size<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was not able to find any suff=
icient information about this online unfortunately.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I hope I was able to describe m=
y problems clearly and would be glad to receive help regarding any of those=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance and regard=
s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_97acfc9d5ea24e50bf7c2a43dea11a66iisfraunhoferde_--

--===============1550041790856347995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1550041790856347995==--
