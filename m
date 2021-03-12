Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8FA339082
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:57:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03A4E383C6F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 09:57:39 -0500 (EST)
Received: from smtp-3.sys.kth.se (smtp-3.sys.kth.se [130.237.48.192])
	by mm2.emwd.com (Postfix) with ESMTPS id EE1EF383C1F
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 09:57:27 -0500 (EST)
Received: from smtp-3.sys.kth.se (localhost.localdomain [127.0.0.1])
	by smtp-3.sys.kth.se (Postfix) with ESMTP id 1E7575913
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 15:57:26 +0100 (CET)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from smtp-3.sys.kth.se ([127.0.0.1])
	by smtp-3.sys.kth.se (smtp-3.sys.kth.se [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id I37dCxtgsn90 for <usrp-users@lists.ettus.com>;
	Fri, 12 Mar 2021 15:57:25 +0100 (CET)
Received: from exdb4.ug.kth.se (exdb4.ug.kth.se [192.168.32.59])
	by smtp-3.sys.kth.se (Postfix) with ESMTPS id 14C509812
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 15:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1615561045; bh=gQ4NNCrUSW+bKwKb1kZZDuudBntuNRAhZ5Z4yBqbHRA=;
	h=From:To:Subject:Date;
	b=G6sfLQ3C7/Kx/iLUK2S5hwa6sxDBqOFW7ccR+EbD+EONLr2gGFULX4bqq1H93aHMy
	 DTjg4wkLc2+h6mdNTVsBRsNuvth5D6WnDjOpdQkMvP0nnkg5rUyGKZWO5cWYnZHuFj
	 17luJaj8OViigC1OmCd5c6AfO0TWlWmegWtDtwg4=
Received: from exdb4.ug.kth.se (192.168.32.59) by exdb4.ug.kth.se
 (192.168.32.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3; Fri, 12 Mar 2021
 15:57:24 +0100
Received: from exdb4.ug.kth.se ([192.168.32.59]) by exdb4.ug.kth.se
 ([192.168.32.59]) with mapi id 15.02.0792.010; Fri, 12 Mar 2021 15:57:24
 +0100
From: Seyed Samie Mostafavi <ssmos@kth.se>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP E320
Thread-Index: AQHXF1ACIqLSBOdn3k2/5dkvJ3E15g==
Date: Fri, 12 Mar 2021 14:57:24 +0000
Message-ID: <8b9169b13f17449cbd494459bf943fdb@kth.se>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
Message-ID-Hash: WGAG3LQIQVXSHJDKYP6CBJIWSDYR4ZQP
X-Message-ID-Hash: WGAG3LQIQVXSHJDKYP6CBJIWSDYR4ZQP
X-MailFrom: ssmos@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WGAG3LQIQVXSHJDKYP6CBJIWSDYR4ZQP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1576491920075552721=="

--===============1576491920075552721==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8b9169b13f17449cbd494459bf943fdbkthse_"

--_000_8b9169b13f17449cbd494459bf943fdbkthse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

We are starting a project and we want to buy a batch of E320s and our goal =
is to run Openaireinterface 5G on them.
These cellular communication softwares like Openaireinterface and srsLTE th=
ey recommend USRP devices such as B210 or X310 and not E320. I wanted to as=
k if anyone has tried E320 with srsLTE or OAI or not.
I guess since OAI works with UHD driver and the RF chip is AD9361 like B210=
, there should be no difference. However I am not sure.
Do you see any major difference in the drivers or capabilities of E320 and =
B210 or X310 such that it could become a roadblock for us?

Best,
Samie

________________________________
[Kth Logo]

Seyed Samie Mostafavi
Doctoral Student
KTH
School of electrical engineering and computer science (EECS)
Department of information systems and engineering (ISE)
Malvinas v=E4g 10, 100 44 Stockholm
ssmos@kth.se


--_000_8b9169b13f17449cbd494459bf943fdbkthse_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
Hi everyone,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
We are starting a project and we want to buy a batch of E320s and our goal =
is to run Openaireinterface 5G on them.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
These&nbsp;cellular communication&nbsp;softwares like&nbsp;Openaireinterfac=
e and srsLTE they recommend USRP devices such as&nbsp;B210 or X310 and not =
E320. I wanted to ask if anyone has tried E320 with srsLTE or OAI or not.</=
div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
I guess since OAI works with UHD driver and the RF chip is AD9361 like B210=
, there should be no difference. However I am not sure.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
Do you see any major difference in the drivers or capabilities of E320 and =
B210 or X310 such that it could&nbsp;become a roadblock for us?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
Best,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
Samie</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
<br>
</div>
<div id=3D"Signature" style=3D"font-family: Calibri, Helvetica, sans-serif,=
 serif, EmojiFont; font-size: 16px;">
<div style=3D"margin: 0px;"><font style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif, serif, EmojiFont;">
<hr>
<div style=3D"margin: 0px;"><font size=3D"2" style=3D"font-family: Calibri,=
 sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;"><img width=
=3D"87" height=3D"87" border=3D"0" alt=3D"Kth Logo" id=3D"_x0000_i1025" sty=
le=3D"user-select: none;" src=3D"http://www.kth.se/delad/grafik/kth_logo.jp=
g"></span></font></div>
<div style=3D"margin: 0px;"><font size=3D"2" style=3D"font-family: Calibri,=
 sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;"><font size=
=3D"3" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif, serif, Em=
ojiFont;"><span style=3D"font-size: 12pt;">&nbsp;</span></font></span></fon=
t></div>
<div style=3D"margin: 0px 0px 1.5pt;"><font size=3D"2" style=3D"font-family=
: Calibri, sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;">=
<font size=3D"1" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif,=
 serif, EmojiFont;"><span style=3D"font-size: 7.5pt;">Seyed
 Samie Mostafavi</span></font></span></font></div>
<div style=3D"margin: 0px 0px 6pt;"><font size=3D"2" style=3D"font-family: =
Calibri, sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;"><f=
ont size=3D"1" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif, s=
erif, EmojiFont;"><span style=3D"font-size: 7.5pt;">Doctoral
 Student</span></font></span></font></div>
<div style=3D"margin: 0px 0px 1.5pt;"><font size=3D"2" style=3D"font-family=
: Calibri, sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;">=
<font size=3D"1" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif,=
 serif, EmojiFont;"><span style=3D"font-size: 7.5pt;">KTH</span></font></sp=
an></font></div>
<div style=3D"margin: 0px 0px 1.5pt;"><font size=3D"2" style=3D"font-family=
: Calibri, sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;">=
<font size=3D"1" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif,=
 serif, EmojiFont;"><span style=3D"font-size: 7.5pt;"><i>School
 of electrical engineering and computer science (EECS)</i></span></font></s=
pan></font></div>
<div style=3D"margin: 0px 0px 1.5pt;"><font size=3D"2" style=3D"font-family=
: Calibri, sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;">=
<font size=3D"1" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif,=
 serif, EmojiFont;"><span style=3D"font-size: 7.5pt;"><i>Department
 of information systems and engineering (ISE)</i></span></font></span></fon=
t></div>
<div style=3D"margin: 0px 0px 1.5pt;"><font size=3D"2" style=3D"font-family=
: Calibri, sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;">=
<font size=3D"1" color=3D"#5D5D5D" style=3D"font-family: Arial, sans-serif,=
 serif, EmojiFont;"><span style=3D"font-size: 7.5pt;">Malvinas
 v=E4g 10, 100 44 Stockholm</span></font></span></font></div>
<div style=3D"margin: 0px;"><font size=3D"2" style=3D"font-family: Calibri,=
 sans-serif, serif, EmojiFont;"><span style=3D"font-size: 11pt;"><font size=
=3D"1" color=3D"#044A91" style=3D"font-family: Arial, sans-serif, serif, Em=
ojiFont;"><span id=3D"LPNoLP" style=3D"font-size: 7.5pt;">ssmos@kth.se</spa=
n></font></span></font></div>
</font></div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_8b9169b13f17449cbd494459bf943fdbkthse_--

--===============1576491920075552721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1576491920075552721==--
