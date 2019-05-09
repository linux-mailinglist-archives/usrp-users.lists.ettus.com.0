Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EB418BC2
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 16:30:29 +0200 (CEST)
Received: from [::1] (port=57078 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOk44-0002Iu-La; Thu, 09 May 2019 10:30:28 -0400
Received: from mx05.telecomitalia.it ([156.54.232.21]:56446)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <daniele.disco@telecomitalia.it>)
 id 1hOk3V-0001r3-Sa
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 10:30:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=telecomitalia.it; s=selector1;
 c=relaxed/relaxed; 
 q=dns/txt; i=@telecomitalia.it; t=1557412155; x=2421325755;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ekLaQxgikc1hXDUF2AVMZAfGZbfVQAlOjOG8mAdGLOE=;
 b=TTkkVqLRXE5Un3EP2BqervHYhf/t5jlyF8W2x/DmmllD7izK0kbTDt1OQLO67vWX
 CtIe7YHDq7XlPkcDmfoWkVvV+XELf2BelP6uTplX15z852AMn/VFGxPjHRhPywd/
 FdYNPBaujSQcM28nLDv9EJqk99dirOuig3v5ProDc3CbT78+LCzfnkirwBguTDll
 h0ZkO2tzwPyIuLz19GLovuOlTTNigY3C3V83DW0gWsmsbbtgz76hoW9Lqrdrv5aS
 0kjbnPlC4QzElyO5OHo7zPx05K23SUerjIGFh/Y1m+Y2LhiQ7ybLfNstgOxhablh
 YTZ26fsXtKC9dRTNWsmacw==;
X-AuditID: 0a5a2d15-fcbff700000010d1-fa-5cd4393b7011
Received: from TELMBXC10BA020.telecomitalia.local ( [10.90.43.42])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by mx05.telecomitalia.it () with SMTP id 37.A0.04305.B3934DC5;
 Thu,  9 May 2019 16:29:15 +0200 (CEST)
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXT] Re: [USRP-users] Configuration in sysctl.conf
Thread-Index: AdUGYSuQftZ8E+PaT52lNj6l9V8BQP//+ykA///WupA=
Date: Thu, 9 May 2019 14:29:10 +0000
Message-ID: <680e9479da024a509e290cf83c9e2fea@TELMBXC13BA020.telecomitalia.local>
References: <467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local>
 <5CD4326A.1050705@gmail.com>
In-Reply-To: <5CD4326A.1050705@gmail.com>
Accept-Language: it-IT, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.14.252.254]
x-ti-disclaimer: Disclaimer1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsXCFaWtpWtteSXG4Fy3gMWFzjnsDoweE1ce
 Yg5gjOKySUnNySxLLdK3S+DKeNpynL1gwR3GimNH3rE0MM46ztjFyMkhIWAisfXvLrYuRi4O
 IYEpTBJfT64CS7ABJa6/nM0KYosI2Eo8+HWUCcQWFnCQ+NbexwgRd5Q40TeXCcK2kri7ZiUz
 iM0ioCKx8dt+MJtXIFDi99YGMFtIoEDiUdcMoGUcHJwCmhIbT4eBhBkFZCUm7F4ENpJZQFzi
 1pP5TBC3iUg8vHiaDcIWlXj5+B8rhG0gsXXpPhYIW1HiwvKjULaMxMIjk1lBfmEW6GaU6J/4
 gwniBkGJkzOfsEDcoC2x98tH1gmMorOQ7JuFrGcWkh6IonyJmbtesEPYehI3pk5hg7C1JZYt
 fM0MYetKzPh3iAWb+PQJR5ggbEWJ2ctfMUIsW8ooMbHxHCNEQkei+ewlFpiiKd0P2Rcw8q5i
 FM2tMDDVK0nNSU3Oz80sSczJTNTLLNnECI55XdEdjG9uOB9iFOBgVOLhbVO6EiPEmlhWXJl7
 iFEFaM6jDasvMEqx5OXnpSqJ8BbpAKV5UxIrq1KL8uOLSnNSiw8xSnOwKInz2vEBpQTSE0tS
 s1NTC1KLYLJMHJxSDYxrvvyr3xKbVu2ndM7zcP5TzqQ1Eb8/Mmw4vMKg33TOnsRVsxKEZk3i
 tVs5yfLs9c9VnwWZa8V2+c3xnXDgceT//XO0UtqeXZQp5Tz1qJojVObxoZ8hH24fSlV6Wblv
 p1/iIr8Dh007Xj2xcfjucm5B02GJewenHJ4XzxYi/nK2o5zw5GnBPJZiSizFGYmGWsxFxYkA
 +ufxzAEDAAA=
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] [EXT] Re:  Configuration in sysctl.conf
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
Content-Type: multipart/mixed; boundary="===============0457505539782387743=="
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

--===============0457505539782387743==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_";
	type="multipart/alternative"

--_004_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_
Content-Type: multipart/alternative;
	boundary="_000_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_"

--_000_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

#
# /etc/sysctl.conf - Configuration file for setting system variables
# See /etc/sysctl.d/ for additional system variables.
# See sysctl.conf (5) for information.
#

#kernel.domainname =3D example.com

# Uncomment the following to stop low-level messages on console
#kernel.printk =3D 3 4 1 3

##############################################################3
# Functions previously found in netbase
#

# Uncomment the next two lines to enable Spoof protection (reverse-path fil=
ter)
# Turn on Source Address Verification in all interfaces to
# prevent some spoofing attacks
#net.ipv4.conf.default.rp_filter=3D1
#net.ipv4.conf.all.rp_filter=3D1

# Uncomment the next line to enable TCP/IP SYN cookies
# See http://lwn.net/Articles/277146/
# Note: This may impact IPv6 TCP sessions too
#net.ipv4.tcp_syncookies=3D1

# Uncomment the next line to enable packet forwarding for IPv4
#net.ipv4.ip_forward=3D1

# Uncomment the next line to enable packet forwarding for IPv6
#  Enabling this option disables Stateless Address Autoconfiguration
#  based on Router Advertisements for this host
#net.ipv6.conf.all.forwarding=3D1


###################################################################
# Additional settings - these settings can improve the network
# security of the host and prevent against some network attacks
# including spoofing attacks and man in the middle attacks through
# redirection. Some network environments, however, require that these
# settings are disabled so review and enable them as needed.
#
# Do not accept ICMP redirects (prevent MITM attacks)
#net.ipv4.conf.all.accept_redirects =3D 0
#net.ipv6.conf.all.accept_redirects =3D 0
# _or_
# Accept ICMP redirects only for gateways listed in our default
# gateway list (enabled by default)
# net.ipv4.conf.all.secure_redirects =3D 1
#
# Do not send ICMP redirects (we are not a router)
#net.ipv4.conf.all.send_redirects =3D 0
#
# Do not accept IP source route packets (we are not a router)
#net.ipv4.conf.all.accept_source_route =3D 0
#net.ipv6.conf.all.accept_source_route =3D 0
#
# Log Martian Packets
#net.ipv4.conf.all.log_martians =3D 1
#
net.core.wmem_max=3D24862979
net.core.rmem_max=3D806648177



What du you think about?


From: USRP-users [mailto:usrp-users-bounces@lists.ettus.com] On Behalf Of M=
arcus D. Leech via USRP-users
Sent: gioved=EC 9 maggio 2019 16:00
To: usrp-users@lists.ettus.com
Subject: [EXT] Re: [USRP-users] Configuration in sysctl.conf

On 05/09/2019 08:25 AM, Disco Daniele via USRP-users wrote:
Hi!
I'm using a X310 on a linux box UBUNTU 18.04

Executing the command "uhd_usrp_probe"
I obtain a lot of [WARNING][UDP] related to the dimension of the send buffe=
r
Then there is the sentence:
Please run: sudo sysctl -w net.core.wmem_max=3D24862979

So I've written in the file /etc/sysctl.conf, at the end
net.core.wmem_max=3D24862979

I restarted the host but rerunning uhd_usrp_probe I reobtain the same warni=
ng.

Could you help me?

PS: Now I'm using a 10GB Ethernet board plugged in the workstation, using a=
 couple of fiber optics between the X310 and the work station

Thank you
Perhaps you have a syntax error in your sysctl file?




_____________________________________________
[logo1]
Direzione e Coordinamento Vivendi SA

Daniele Disco
CT.TA.EI

Via Reiss Romoli, 274 - 10148 Torino
tel . +39 011 228 7271
cell. +39 331 600 1113
Fax. +39 06 4186 5196
Tim Official: Facebook<https://www.facebook.com/TimOfficialPage> - Twitter<=
https://twitter.com/tim_official>
www.tim.it<http://www.tim.it/>


Questo messaggio e i suoi allegati sono indirizzati esclusivamente alle per=
sone indicate. La diffusione, copia o qualsiasi altra azione derivante dall=
a conoscenza di queste informazioni sono rigorosamente vietate. Qualora abb=
iate ricevuto questo documento per errore siete cortesemente pregati di dar=
ne immediata comunicazione al mittente e di provvedere alla sua distruzione=
, Grazie.

This e-mail and any attachments is confidential and may contain privileged =
information intended for the addressee(s) only. Dissemination, copying, pri=
nting or use by anybody else is unauthorised. If you are not the intended r=
ecipient, please delete this message and any attachments and advise the sen=
der by return e-mail, Thanks.

Rispetta l'ambiente. Non stampare questa mail se non =E8 necessario.





_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_000_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;
	mso-fareast-language:EN-US;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body bgcolor=3D"white" lang=3D"IT" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># /e=
tc/sysctl.conf - Configuration file for setting system variables<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Se=
e /etc/sysctl.d/ for additional system variables.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Se=
e sysctl.conf (5) for information.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#ker=
nel.domainname =3D example.com<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Un=
comment the following to stop low-level messages on console<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#ker=
nel.printk =3D 3 4 1 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">####=
##########################################################3<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Fu=
nctions previously found in netbase<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Un=
comment the next two lines to enable Spoof protection (reverse-path filter)=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Tu=
rn on Source Address Verification in all interfaces to<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># pr=
event some spoofing attacks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.conf.default.rp_filter=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.conf.all.rp_filter=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Un=
comment the next line to enable TCP/IP SYN cookies<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Se=
e <a href=3D"http://lwn.net/Articles/277146/">
http://lwn.net/Articles/277146/</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># No=
te: This may impact IPv6 TCP sessions too<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.tcp_syncookies=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Un=
comment the next line to enable packet forwarding for IPv4<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.ip_forward=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Un=
comment the next line to enable packet forwarding for IPv6<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#&nb=
sp; Enabling this option disables Stateless Address Autoconfiguration<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#&nb=
sp; based on Router Advertisements for this host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv6.conf.all.forwarding=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">####=
###############################################################<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Ad=
ditional settings - these settings can improve the network<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># se=
curity of the host and prevent against some network attacks<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># in=
cluding spoofing attacks and man in the middle attacks through<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># re=
direction. Some network environments, however, require that these<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># se=
ttings are disabled so review and enable them as needed.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Do=
 not accept ICMP redirects (prevent MITM attacks)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.conf.all.accept_redirects =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv6.conf.all.accept_redirects =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># _o=
r_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Ac=
cept ICMP redirects only for gateways listed in our default<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># ga=
teway list (enabled by default)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># ne=
t.ipv4.conf.all.secure_redirects =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Do=
 not send ICMP redirects (we are not a router)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.conf.all.send_redirects =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Do=
 not accept IP source route packets (we are not a router)<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.conf.all.accept_source_route =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv6.conf.all.accept_source_route =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"># Lo=
g Martian Packets<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#net=
.ipv4.conf.all.log_martians =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">#<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">net.=
core.wmem_max=3D24862979<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">net.=
core.rmem_max=3D806648177<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext">What=
 du you think about?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:windowtext"><o:p=
>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:windowtext;ms=
o-fareast-language:IT">From:</span></b><span lang=3D"EN-US" style=3D"color:=
windowtext;mso-fareast-language:IT"> USRP-users [mailto:usrp-users-bounces@=
lists.ettus.com]
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> gioved=EC 9 maggio 2019 16:00<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXT] Re: [USRP-users] Configuration in sysctl.conf<o:p></o=
:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 05/09/2019 08:25 AM, Disco Daniele via USRP-users=
 wrote:<span style=3D"mso-fareast-language:IT"><o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m using a X310 on a lin=
ux box UBUNTU 18.04</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Executing the command &#8220;uh=
d_usrp_probe&#8221;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I obtain a lot of [WARNING][UDP=
] related to the dimension of the send buffer</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Then there is the sentence:</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please run: sudo sysctl -w net.=
core.wmem_max=3D24862979</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I&#8217;ve written in the fi=
le /etc/sysctl.conf, at the end</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">net.core.wmem_max=3D24862979</s=
pan><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I restarted the host but rerunn=
ing uhd_usrp_probe I reobtain the same warning.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help me?</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PS: Now I&#8217;m using a 10GB =
Ethernet board plugged in the workstation, using a couple of fiber optics b=
etween the X310 and the work station</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you</span><o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:IT">Perhaps you =
have a syntax error in your sysctl file?<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,s=
ans-serif;color:#012169;mso-fareast-language:IT">__________________________=
___________________</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:I=
T"><img border=3D"0" width=3D"57" height=3D"18" style=3D"width:.5937in;heig=
ht:.1875in" id=3D"Immagine_x0020_5" src=3D"cid:image001.jpg@01D50684.546FCB=
00" alt=3D"logo1"></span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Hel=
vetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">Direzione e =
Coordinamento Vivendi SA</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:7.5pt;font-family:&quot;=
Verdana&quot;,sans-serif;mso-fareast-language:IT"><br>
</span></b><b><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&qu=
ot;,sans-serif;color:#012169;mso-fareast-language:IT">Daniele Disco</span><=
/b><span style=3D"font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-se=
rif;color:#012169;mso-fareast-language:IT"><br>
<b>CT.TA.EI</b></span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Hel=
vetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"><br>
Via Reiss Romoli, 274 &#8211; 10148 Torino<br>
tel . </span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quo=
t;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">&#43;39=
 011 228 7271<br>
cell. &#43;39 331 600 1113</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:I=
T">Fax. &#43;39 06 4186 5196<br>
Tim Official: <a href=3D"https://www.facebook.com/TimOfficialPage" target=
=3D"_blank">
<b><span style=3D"color:#012169">Facebook</span></b></a> - <a href=3D"https=
://twitter.com/tim_official" target=3D"_blank">
<b><span style=3D"color:#012169">Twitter</span></b></a><br>
<a href=3D"http://www.tim.it/" target=3D"_blank"><b><span style=3D"color:#0=
12169">www.tim.it</span></b></a></span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:I=
T">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" width=3D"600=
" style=3D"width:450.0pt">
<tbody>
<tr>
<td width=3D"585" style=3D"width:438.75pt;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:7.5pt;font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-language:IT"=
>Questo messaggio e i suoi allegati sono indirizzati esclusivamente alle pe=
rsone indicate. La diffusione, copia o qualsiasi
 altra azione derivante dalla conoscenza di queste informazioni sono rigoro=
samente vietate. Qualora abbiate ricevuto questo documento per errore siete=
 cortesemente pregati di darne immediata comunicazione al mittente e di pro=
vvedere alla sua distruzione, Grazie.
<br>
<br>
<i>This e-mail and any attachments is confidential and may contain privileg=
ed information intended for the addressee(s) only. Dissemination, copying, =
printing or use by anybody else is unauthorised. If you are not the intende=
d recipient, please delete this
 message and any attachments and advise the sender by return e-mail, Thanks=
. </i>
<br>
<br>
<b>Rispetta l'ambiente. Non stampare questa mail se non =E8 necessario.</b>=
 <o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:IT"><br>
<br>
<br>
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:IT"><o:p>&nbsp;<=
/o:p></span></p>
</div>
</body>
</html>

--_000_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_--

--_004_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=2519;
	creation-date="Thu, 09 May 2019 14:29:10 GMT";
	modification-date="Thu, 09 May 2019 14:29:10 GMT"
Content-ID: <image001.jpg@01D50684.546FCB00>
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

--_004_680e9479da024a509e290cf83c9e2feaTELMBXC13BA020telecomit_--


--===============0457505539782387743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0457505539782387743==--

