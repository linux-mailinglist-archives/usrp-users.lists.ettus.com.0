Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6436B04A3
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 11:36:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53320384FB6
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 05:36:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678271810; bh=t1cKbNLTMe2/Br1AXAdG+Kh5XemAX52541To74FaC0o=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=yVf3MctCXwRN5GWkin3dgd9IpziFhDWEUMgbdN8OtPxZDsVXwh5d6uRiVYF0LJ5CA
	 xr+fiHcaKGAMZ3NuElwMsEvKaoQ/YsWoPm+z9vn9DeuNrt9Dm+fYHzvPRgVdHCRusS
	 bwVHl1WxLIttRjtuq5/M2BmvU9mXLsDCkC8bfhnyFDOGNvjcwQO9BzcoI7eZ1FViZh
	 uymLC8JC2Josglv7jW8BYAjZbiIkgNJSleTyxGtv1+CVWW/paOcaFjUf2DTM1bKrDH
	 8/EU7bGifNznf66K988QkMFAxRgASLkE7tEvo2ZsERzGsR3mpb1PbOHo+mCD7WAZMZ
	 AQ0ids6KLBv5w==
Received: from mx1.myeers.net (mx1.myeers.net [87.190.7.230])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B2FE384D12
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 05:36:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="JymG8rrj";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=9546; q=dns/txt;
  s=eers-ng2048; t=1678271763; x=1709807763;
  h=from:to:subject:date:message-id:mime-version;
  bh=lPvNvcCWio13iW657bnXI8lIQlSJ/9l+Agh1PzGEf0k=;
  b=JymG8rrjUoC85J85jtpUXsoDRE1ICI/eSrKo+3MIAwGdyDpRfFNqpDjM
   K3FabUFqHlAlWEvoWReO+UK3luygulzZ+cuB/8c3DyRM6d1SBffERPmeJ
   I1y9J946gzGnSTGxWWsSZ7nrz9zOH/OZ60PGdgMac3C7wabYMvSG8K99y
   ZXcDuTo6vDx5/8QI0S64u31W+nV5SbOa+tFEhrDCpbgDJJ60ihydAl7y1
   lmWZ8pirKNRKwIQROHlXFuqo2PJQ1VVVCbccY9yrTKR0H8RJscCtp3SJH
   P1Bj4JB850mUwp7l81vMDwVttdV7IIp/bJ001ixQWaTJNHr52ockO5DxA
   g==;
IronPort-SDR: sieveaKu4Pn9Rn4S8zeSp68IRlOwrGOz/GCqzSiQHB2t+ArZJcql9udaYhrCQ0CqQCs2iPRaAQ
 TE9HFWO9ejmQ==
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000";
   d="scan'208,217";a="52576924"
Received: from ec2-44-225-67-30.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P01.central.mail.corp) ([44.225.67.30])
  by de0-03iro-p11-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 08 Mar 2023 11:36:00 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P01.central.mail.corp (44.225.67.34) with Microsoft SMTP Server id
 15.0.1497.45; Wed, 8 Mar 2023 11:35:57 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:jf2Us6JSri0FkdyFFE+RkJQlxSXFcZb7ZxGr2PjKsXjdYENSgzJVy
 zBMWDyAOKzYMDCme412btm+o0tXvcKBm9AwQFNorCE8RH908seUXt7xwmUcn8+xwmwvaGo9s
 q3yv/GZdJhcokf0/0vraP64xZVF/fngbqLmD+LZMTxGSwZhSSMw4TpugOdRbrRA2bBVOCvQ/
 4KiyyHjEAX9gWUsaTpEs/vrRC5H55wehhtJ5zTSWtgb5Dcyp1FNZLoDKKe4KWfPQ4U8NoZWk
 M6akdlVVkuAl/scIovNfoTTKyXmcZaLVeS6sUe6boD56vR0Soze5Y5gXBYUQR8/ZzyhwYgtm
 I0V3XC6YV9B0qbkwIzxX/TEes1zFfUuxVPJHZSwmderyRfCLiK2+dc0PHMxEt1E3+NYOG4bo
 JT0KBhVBvyCr/mu2rW+S+x3mM17do/wJI4ZtW1t1nfCFf8tTPgvQY2TvZkBhG123JkIRqm2i
 8kxMVKDaDzFagBVO0UWD9QlgOqmj3/+NTBItF+Po6Mzy2HS1gZsy/7mN9+9ltmiHJ0ExRjJ+
 D6Xl4j/Ki1dL5+Fkya5yXODuLLgzS7cAsUuMZTto5aGh3XWnAT/EiY+SEChubykkUOkQPpbK
 lcI4WwjsbQv7wqgSdyVYvGjiCfc+EdEAZwKSqtht2lh15bp3upQPUBcJhYpVTDsnJFpLdD2/
 jdlR+/UOAE=
IronPort-HdrOrdr: A9a23:Tv9h7ayah4kb4443ohDMKrPwH71zdoMgy1knxilNoEpuA7Wlfq
 GV7ZEmPX2dslwssRQb9OxoV5PtfZqxz/FICOoqTNWftWvd2FdAd7sSi7cKqgeIc0bDH4hmu5
 uIGJIOa+EYY2IasS5UijPIa+rJbLO8gcSVbUa19QYLcT1X
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000";
   d="scan'208,217";a="109369649"
Received: from unknown (HELO spromimsva02.spengtes.space) ([10.102.21.37])
  by esa2e.demail.de.airbusds.corp with ESMTP; 08 Mar 2023 11:35:47 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 3FA28E006A
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 05:23:05 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from spromimsva02.spengtes.space (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0F95EE006A
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 05:23:02 +0100 (CET)
Received: from SPROMMAIL02.spengtes.space (unknown [10.102.17.16])
	by spromimsva02.spengtes.space (Postfix) with ESMTPS
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 05:23:02 +0100 (CET)
Received: from SPROMMAIL04.spengtes.space ([::1]) by
 SPROMMAIL02.spengtes.space ([10.102.17.16]) with mapi id 14.03.0513.000; Wed,
 8 Mar 2023 11:36:07 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: error to use ettus repository
Thread-Index: AdlRqP5AOEScDQR8SLG3LwB7M6jzwA==
Date: Wed, 8 Mar 2023 10:36:07 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D62901E208A123@SPROMMAIL04.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24900.000
x-tm-as-result: No--24.639900-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-GM-Security: forwarded
Message-ID-Hash: BJICDRC3N2YAILHSJ3FKGMENKH5JSO5M
X-Message-ID-Hash: BJICDRC3N2YAILHSJ3FKGMENKH5JSO5M
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] error to use ettus repository
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BJICDRC3N2YAILHSJ3FKGMENKH5JSO5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============8458635215872294640=="

--===============8458635215872294640==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D62901E208A123SPROMMAIL04sp_"

--_000_E1188D158AA7A048AF99B6A05DA3D62901E208A123SPROMMAIL04sp_
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI,
I am trying to download some ettus uhd test program (firsto of all benchmar=
k)
I issued the following command
mau@mau-Vostro-3500:/usr/local/bin$ sudo add-apt-repository ppa:ettusresear=
ch/uhd

the answer to it is
Repository: 'deb http://ppa.launchpad.net/ettusresearch/uhd/ubuntu/ impish =
main'
More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
Adding repository.
Press [ENTER] to continue or Ctrl-c to cancel.
Found existing deb entry in /etc/apt/sources.list.d/ettusresearch-ubuntu-uh=
d-impish.list
Adding deb entry to /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish=
.list
Found existing deb-src entry in /etc/apt/sources.list.d/ettusresearch-ubunt=
u-uhd-impish.list
Adding disabled deb-src entry to /etc/apt/sources.list.d/ettusresearch-ubun=
tu-uhd-impish.list
Adding key to /etc/apt/trusted.gpg.d/ettusresearch-ubuntu-uhd.gpg with fing=
erprint 463896EF9B898A846C7EC0E109FE61056169358E
Trovato:1 http://old-releases.ubuntu.com/ubuntu impish InRelease
Ignorato:2 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu impish InRelea=
se
Trovato:3 http://old-releases.ubuntu.com/ubuntu impish-security InRelease
Trovato:4 http://old-releases.ubuntu.com/ubuntu impish-updates InRelease
Errore:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu impish Release
  404  Not Found [IP: 185.125.190.52 80]
Lettura elenco dei pacchetti... Fatto
E: Il repository "http://ppa.launchpad.net/ettusresearch/uhd/ubuntu impish =
Release" non ha un file Release.
N: L'aggiornamento da tale repository non pu=F2 essere eseguito in modo sic=
uro ed =E8 quindi disabilitato come impostazione predefinita.
N: Consultare la pagina man apt-secure(8) per la creazione di un repository=
 e la configurazione utente.
mau@mau-Vostro-3500:/usr/local/bin$

I am using ubuntu release 21.10, codename impish

Any suggestions?

Thank you in advance
Maurizio Stefani (External)
The information in this e-mail is confidential. The contents may not be dis=
closed or used by anyone other than the addressee. Access to this e-mail by=
 anyone else is unauthorised.
If you are not the intended recipient, please notify Airbus immediately and=
 delete this e-mail.
Airbus cannot accept any responsibility for the accuracy or completeness of=
 this e-mail as it has been sent over public networks. If you have any conc=
erns over the content of this message or its Accuracy or Integrity, please =
contact Airbus immediately.
All outgoing e-mails from Airbus are checked using regularly updated virus =
scanning software but you should take whatever measures you deem to be appr=
opriate to ensure that this message and any attachments are virus free.

--_000_E1188D158AA7A048AF99B6A05DA3D62901E208A123SPROMMAIL04sp_
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to download some et=
tus uhd test program (firsto of all benchmark)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I issued the following command<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">mau@mau-Vostro-3500:/usr/local/=
bin$ sudo add-apt-repository ppa:ettusresearch/uhd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">the answer to it is<br>
Repository: 'deb </span><a href=3D"http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu/"><span lang=3D"EN-US">http://ppa.launchpad.net/ettusresearch/uhd=
/ubuntu/</span></a><span lang=3D"EN-US"> impish main'<br>
More info: </span><a href=3D"https://launchpad.net/~ettusresearch/&#43;arch=
ive/ubuntu/uhd"><span lang=3D"EN-US">https://launchpad.net/~ettusresearch/&=
#43;archive/ubuntu/uhd</span></a><span lang=3D"EN-US"><br>
Adding repository.<br>
Press [ENTER] to continue or Ctrl-c to cancel.<br>
Found existing deb entry in /etc/apt/sources.list.d/ettusresearch-ubuntu-uh=
d-impish.list<br>
Adding deb entry to /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish=
.list<br>
Found existing deb-src entry in /etc/apt/sources.list.d/ettusresearch-ubunt=
u-uhd-impish.list<br>
Adding disabled deb-src entry to /etc/apt/sources.list.d/ettusresearch-ubun=
tu-uhd-impish.list<br>
Adding key to /etc/apt/trusted.gpg.d/ettusresearch-ubuntu-uhd.gpg with fing=
erprint 463896EF9B898A846C7EC0E109FE61056169358E<br>
Trovato:1 </span><a href=3D"http://old-releases.ubuntu.com/ubuntu"><span la=
ng=3D"EN-US">http://old-releases.ubuntu.com/ubuntu</span></a><span lang=3D"=
EN-US"> impish InRelease &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b=
r>
Ignorato:2 </span><a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubu=
ntu"><span lang=3D"EN-US">http://ppa.launchpad.net/ettusresearch/uhd/ubuntu=
</span></a><span lang=3D"EN-US"> impish InRelease
<br>
Trovato:3 </span><a href=3D"http://old-releases.ubuntu.com/ubuntu"><span la=
ng=3D"EN-US">http://old-releases.ubuntu.com/ubuntu</span></a><span lang=3D"=
EN-US"> impish-security InRelease<br>
Trovato:4 </span><a href=3D"http://old-releases.ubuntu.com/ubuntu"><span la=
ng=3D"EN-US">http://old-releases.ubuntu.com/ubuntu</span></a><span lang=3D"=
EN-US"> impish-updates InRelease<br>
Errore:5 </span><a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubunt=
u"><span lang=3D"EN-US">http://ppa.launchpad.net/ettusresearch/uhd/ubuntu</=
span></a><span lang=3D"EN-US"> impish Release<br>
&nbsp; 404 &nbsp;Not Found [IP: 185.125.190.52 80]<br>
Lettura elenco dei pacchetti... </span>Fatto<br>
E: Il repository &quot;<a href=3D"http://ppa.launchpad.net/ettusresearch/uh=
d/ubuntu">http://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a> impish Rele=
ase&quot; non ha un file Release.<br>
N: L'aggiornamento da tale repository non pu=F2 essere eseguito in modo sic=
uro ed =E8 quindi disabilitato come impostazione predefinita.<br>
N: Consultare la pagina man apt-secure(8) per la creazione di un repository=
 e la configurazione utente.<br>
mau@mau-Vostro-3500:/usr/local/bin$ <br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using ubuntu release 21.10=
, codename impish<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any suggestions?<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani (External)<o:p=
></o:p></span></p>
</div>
<font style=3D"font-size: 9px;">The information in this e-mail is confident=
ial. The contents may not be disclosed or used by anyone other than the add=
ressee. Access to this e-mail by anyone else is unauthorised.<br>If you are=
 not the intended recipient, please notify Airbus immediately and delete th=
is e-mail.<br>Airbus cannot accept any responsibility for the accuracy or c=
ompleteness of this e-mail as it has been sent over public networks. If you=
 have any concerns over the content of this message or its Accuracy or Inte=
grity, please contact Airbus immediately.<br>All outgoing e-mails from Airb=
us are checked using regularly updated virus scanning software but you shou=
ld take whatever measures you deem to be appropriate to ensure that this me=
ssage and any attachments are virus free.</font></body>
</html>

--_000_E1188D158AA7A048AF99B6A05DA3D62901E208A123SPROMMAIL04sp_--

--===============8458635215872294640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8458635215872294640==--
