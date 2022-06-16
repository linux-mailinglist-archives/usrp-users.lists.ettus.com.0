Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F01DA54DFC7
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 13:10:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7BC538462B
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 07:10:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655377846; bh=0Pb0CxqxMaVgT2wsrSprx8UUpxSqgbMed+Zvbo3aWps=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jT95Dqs3vHfC8A/Nj1Nl7E4lL9VmgvnwjpbJoX2FMNIVOKCVbh0Cn5gln6avSvqJ2
	 QUgU6SGCE7EoQy4ySNY3qZFnhdYyCUWgFeBcb3kXWMG1BIgbR1HySLv1GAdZaV/Jc+
	 7vCND8cAEEaf9XvLW6f8ZFY0AxupYxW7wIU5LQb/Hdda76Sb8W7Oop5XhTwIPo8pe9
	 mr1B01TUIPIzoD4r3dzFuKpkyAFPAm4CZMB/utGUrYshhFevlX4Ss1OPuAR5oIY/0D
	 3EJxsnh0a9TixBU1xSIViT0nUZT40Ul9MfrLhU4hi40Rci3EFL7CJTA9zhJ1IX/NAA
	 CNtNIcuF4SK0w==
Received: from mailrelay.tu-berlin.de (mailrelay.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 31577384592
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 07:09:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="iSaPuHzE";
	dkim-atps=neutral
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 480976CD60_2AB0F6BB
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 11:09:31 +0000 (GMT)
Received: from mail.tu-berlin.de (postcard.tu-berlin.de [141.23.12.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id C61DA6B587_2AB0F6AF
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 11:09:30 +0000 (GMT)
Received: from ex-03.svc.tu-berlin.de (10.150.18.7) by ex-05.svc.tu-berlin.de
 (10.150.18.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 16 Jun
 2022 13:09:30 +0200
Received: from ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d]) by
 ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d%7]) with mapi id
 15.02.0986.022; Thu, 16 Jun 2022 13:09:30 +0200
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: DPDK invalid ELF header 
Thread-Index: AQHYgXDzu22pCBHSAUmKtnBK/1iaTg==
Date: Thu, 16 Jun 2022 11:09:30 +0000
Message-ID: <30bfd91474284874b0ea4df3142dd0c7@campus.tu-berlin.de>
Accept-Language: en-CA, de-DE, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.81]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=eoNSalbClmbDqhlK8Q6EeISUPnxSYrSQay7qM+8qUSA=; b=iSaPuHzEV9qZbmEmzErnugD6oFbrdGq4ZvrhJceF6tn1HgTF46YWSRqeyQU4ySPipmTaFHqSD51qPli6h80um5OtKwaKhiA0KQb4cMl7SFg8Ndtd+EpwDNAFDvUwfWOn4pdk9laI87EsP2R0/LlBOWAnPZWnB7grk+kF7UMrKaQ=
Message-ID-Hash: COLNTU2IXERHCVM2K3FF5LOTJZ5QUQK5
X-Message-ID-Hash: COLNTU2IXERHCVM2K3FF5LOTJZ5QUQK5
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK invalid ELF header 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/COLNTU2IXERHCVM2K3FF5LOTJZ5QUQK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0481511629458091064=="

--===============0481511629458091064==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_30bfd91474284874b0ea4df3142dd0c7campustuberlinde_"

--_000_30bfd91474284874b0ea4df3142dd0c7campustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I have a DPDK initiation problem

I installed DPDK19.11 with apt install and install UHD4.2 from source and i=
n the uhd.conf file I wrote the dpdk driver path as
dpdk-driver=3D/usr/lib/x86_64-linux-gnu
then I follow the instruction of Getting Started with DPDK and UHD to run t=
he uhd example with dpdk, then I get
EAL: /usr/lib/x86_64-linux-gnu/librte_pmd_enetc.a: invalid ELF header EAL: =
FATAL: Cannot init plugins

Same error happens when I install DPDK18.11 and UHD4.0 manually from souce

.a is static library, so I suggest this is an install error of DPDK. That's=
 why I tried different installation, but both did not work


I would appreciate the help


Sincerely

Kasim


--_000_30bfd91474284874b0ea4df3142dd0c7campustuberlinde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div style=3D"box-sizing: border-box; color: rgb(63, 67, 80); font-family: =
&quot;Open Sans&quot;, sans-serif; font-size: 14px; ">
<div class=3D"post-row__padding top" style=3D"box-sizing: border-box;">
<div aria-label=3D"At 12:52 PM Thursday, June 16, Kaixin Chang wrote, Hi Ra=
mez, there is a  DPDK initiation problem =0A=
EAL: /usr/lib/x86_64-linux-gnu/librte_pmd_enetc.a: invalid ELF header =0A=
EAL: FATAL: Cannot init plugins =0A=
I installed DPDK19.11 with apt install and install UHD4.02 from source =0A=
Same error happens when I install DPDK18.11 and UHD4.0 manually from souce"=
 id=3D"post_984qya6if7bw7cytcf1kwiiw3r" data-testid=3D"postView" role=3D"li=
stitem" class=3D"a11y__section post  other--root  current--user" tabindex=
=3D"0" aria-atomic=3D"true" style=3D"box-sizing: border-box; ">
<div role=3D"application" data-testid=3D"postContent" class=3D"post__conten=
t " aria-hidden=3D"true" style=3D"box-sizing: border-box; ">
<div style=3D"box-sizing: border-box; display: table-cell; vertical-align: =
top;">
<div class=3D"AutoHeight" style=3D"box-sizing: border-box; transition-prope=
rty: height; transition-duration: 250ms; transition-timing-function: ease; =
height: auto; overflow: visible;">
<div style=3D"box-sizing: border-box;">
<div id=3D"984qya6if7bw7cytcf1kwiiw3r_message" class=3D"post__body   " styl=
e=3D"box-sizing: border-box; width: 1448px; padding: 0px 0px 0.2em; overflo=
w-wrap: break-word; background: transparent;">
<div class=3D"post-message post-message--collapsed" style=3D"box-sizing: bo=
rder-box; ">
<div class=3D"post-message__text-container" style=3D"box-sizing: border-box=
; max-height: 600px;">
<div aria-readonly=3D"true" tabindex=3D"0" id=3D"postMessageText_984qya6if7=
bw7cytcf1kwiiw3r" class=3D"post-message__text" dir=3D"auto" style=3D"box-si=
zing: border-box; outline: none;">
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
Dear all, </p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
I have a DPDK initiation problem </p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
</p>
<div><span style=3D"color: rgb(63, 67, 80); font-family: &quot;Open Sans&qu=
ot;, sans-serif; font-size: 13.5px; white-space: pre-wrap;">I installed DPD=
K19.11 with apt install and install UHD4.2 from source and in the uhd.conf =
file I wrote the dpdk driver path as
</span><br>
</div>
<div><span style=3D"color: rgb(63, 67, 80); font-family: &quot;Open Sans&qu=
ot;, sans-serif; font-size: 13.5px; white-space: pre-wrap;">dpdk-driver=3D<=
span style=3D"color: rgb(63, 67, 80); font-family: &quot;Open Sans&quot;, s=
ans-serif; font-size: 13.5px; white-space: pre-wrap;">/usr/lib/x86_64-linux=
-gnu</span></span></div>
<div><span style=3D"color: rgb(63, 67, 80); font-family: &quot;Open Sans&qu=
ot;, sans-serif; font-size: 13.5px; white-space: pre-wrap;"><span style=3D"=
color: rgb(63, 67, 80); font-family: &quot;Open Sans&quot;, sans-serif; fon=
t-size: 13.5px; white-space: pre-wrap;">then I follow the
 instruction of Getting Started with DPDK and UHD to run the uhd example wi=
th dpdk, then I get</span></span></div>
EAL: /usr/lib/x86_64-linux-gnu/librte_pmd_enetc.a: invalid ELF header EAL: =
FATAL: Cannot init plugins
<p></p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
Same error happens when I install DPDK18.11 and UHD4.0 manually from souce<=
/p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"box-sizing: border-box; display: inline; width: 0px; height: =
0px; z-index: -1; overflow: hidden; margin: 0px; padding: 0px;">
<div dir=3D"ltr" style=3D"box-sizing: border-box; ">
<div style=3D"box-sizing: border-box; flex: 0 0 auto; overflow: hidden; z-i=
ndex: -1; visibility: hidden; inset: -9px -8px -8px -9px;">
<div style=3D"box-sizing: border-box; ">
<div style=3D"box-sizing: border-box; "></div>
</div>
<div style=3D"box-sizing: border-box; ">
<div style=3D"box-sizing: border-box; "></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"box-sizing: border-box; color: rgb(63, 67, 80); font-family: =
&quot;Open Sans&quot;, sans-serif; font-size: 14px; ">
<div class=3D"" style=3D"box-sizing: border-box;">
<div aria-label=3D"At 12:52 PM Thursday, June 16, Kaixin Chang wrote, ELF h=
eader is for static library right, so I suggest this is an install error of=
 DPDK. That's why I tried different installation" id=3D"post_kq4bkfz8nir6je=
q97kfxxzfk9y" data-testid=3D"postView" role=3D"listitem" class=3D"a11y__sec=
tion post same--user same--root  current--user" tabindex=3D"0" aria-atomic=
=3D"true" style=3D"box-sizing: border-box; ">
<div role=3D"application" data-testid=3D"postContent" class=3D"post__conten=
t " aria-hidden=3D"true" style=3D"box-sizing: border-box; ">
<div class=3D"post__img" style=3D"box-sizing: border-box; width: 53px; padd=
ing-right: 10px; text-align: right; display: table-cell; vertical-align: to=
p;">
</div>
<div style=3D"box-sizing: border-box; display: table-cell; vertical-align: =
top;">
<div class=3D"post__header" style=3D"box-sizing: border-box; display: flex;=
 width: 1448px; margin: 0px; white-space: nowrap; height: 0px; float: left;=
">
<div class=3D"col" style=3D"box-sizing: border-box; max-width: 100%; flex-b=
asis: 0px; flex-grow: 1;">
<div class=3D"post__header--info" style=3D"box-sizing: border-box; padding:=
 0px;">
<div class=3D"col" style=3D"box-sizing: border-box; max-width: 100%; flex-b=
asis: 0px; flex-grow: 1;">
</div>
<div data-testid=3D"post-menu-kq4bkfz8nir6jeq97kfxxzfk9y" class=3D"col post=
-menu" style=3D"box-sizing: border-box; max-width: 100%; flex-basis: 0px; f=
lex-grow: 1; ">
</div>
</div>
</div>
</div>
<div class=3D"AutoHeight" style=3D"box-sizing: border-box; transition-prope=
rty: height; transition-duration: 250ms; transition-timing-function: ease; =
height: auto; overflow: visible;">
<div style=3D"box-sizing: border-box;">
<div id=3D"kq4bkfz8nir6jeq97kfxxzfk9y_message" class=3D"post__body   " styl=
e=3D"box-sizing: border-box; width: 1448px; padding: 0px 0px 0.2em; overflo=
w-wrap: break-word;">
<div class=3D"post-message post-message--collapsed" style=3D"box-sizing: bo=
rder-box; ">
<div class=3D"post-message__text-container" style=3D"box-sizing: border-box=
; max-height: 600px;">
<div aria-readonly=3D"true" tabindex=3D"0" id=3D"postMessageText_kq4bkfz8ni=
r6jeq97kfxxzfk9y" class=3D"post-message__text" dir=3D"auto" style=3D"box-si=
zing: border-box;">
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
.a is <span style=3D"color: rgb(77, 81, 86); font-family: arial, sans-serif=
; font-size: 14px;">
static library</span>, so I suggest this is an install error of DPDK. That'=
s why I tried different installation, but both did not work</p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
<br>
</p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
I would appreciate the help</p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
<br>
</p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
Sincerely</p>
<p style=3D"box-sizing: border-box; margin-right: 0px; margin-left: 0px; wi=
dth: 1448px; font-size: 13.5px; line-height: 1.6em; white-space: pre-wrap; =
word-break: break-word;">
Kasim</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_30bfd91474284874b0ea4df3142dd0c7campustuberlinde_--

--===============0481511629458091064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0481511629458091064==--
