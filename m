Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FF638AAE0
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 13:19:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A233938570E
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 07:19:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kth.se header.i=@kth.se header.b="Qvi3i2+C";
	dkim-atps=neutral
Received: from smtp-4.sys.kth.se (smtp-4.sys.kth.se [130.237.48.193])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E51E385298
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 07:18:53 -0400 (EDT)
Received: from smtp-4.sys.kth.se (localhost.localdomain [127.0.0.1])
	by smtp-4.sys.kth.se (Postfix) with ESMTP id 9EC83271B
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 13:18:51 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from smtp-4.sys.kth.se ([127.0.0.1])
	by smtp-4.sys.kth.se (smtp-4.sys.kth.se [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KYBUj6G6QlFL for <usrp-users@lists.ettus.com>;
	Thu, 20 May 2021 13:18:50 +0200 (CEST)
Received: from exdb6.ug.kth.se (exdb6.ug.kth.se [192.168.32.61])
	by smtp-4.sys.kth.se (Postfix) with ESMTPS id AEDABE16
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 13:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1621509530; bh=ql9A8i7Z9bLIq1MZ/IjlF8mQF2iaDogO8ncJ64jCv2Q=;
	h=From:To:Subject:Date;
	b=Qvi3i2+CgLj1bP28Sg5sqzPBtE/q11FRZYQBVfIbIhwcgjqH0DvDROjJhev2OHrVF
	 5WDWyQWz+dJdaxtai0dJg25ulbaHu6Bm1NRUnGuL/xyBEAj17CqsXribwZDiACSZxu
	 glJor2PeTxPXj4SVS9d0ZMi4x/pENi4pGLOrww8Q=
Received: from exdb4.ug.kth.se (192.168.32.59) by exdb6.ug.kth.se
 (192.168.32.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.12; Thu, 20 May
 2021 13:18:50 +0200
Received: from exdb4.ug.kth.se ([192.168.32.59]) by exdb4.ug.kth.se
 ([192.168.32.59]) with mapi id 15.02.0858.012; Thu, 20 May 2021 13:18:50
 +0200
From: Seyed Samie Mostafavi <ssmos@kth.se>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Does E320 in network mode mount the SD card?
Thread-Index: AQHXTWno2EWW14XsP0ybDYimOR01Xw==
Date: Thu, 20 May 2021 11:18:50 +0000
Message-ID: <d996ed7c371b4d60aed6ac547b48f687@kth.se>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
Message-ID-Hash: DT7WFIFSPWCPECC2KX6U5LS3WHAWNPDO
X-Message-ID-Hash: DT7WFIFSPWCPECC2KX6U5LS3WHAWNPDO
X-MailFrom: ssmos@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Does E320 in network mode mount the SD card?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DT7WFIFSPWCPECC2KX6U5LS3WHAWNPDO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3600276927212659120=="

--===============3600276927212659120==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d996ed7c371b4d60aed6ac547b48f687kthse_"

--_000_d996ed7c371b4d60aed6ac547b48f687kthse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Does anyone know whether the default NI petalinux on the E320 (in network m=
ode) mounts the SD card or not?

I am asking this because I need to change the BOOT.bin and switch to anothe=
r design from the host. I cannot remove the old SD card and insert a new on=
e.


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


--_000_d996ed7c371b4d60aed6ac547b48f687kthse_
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
<p>Hi,</p>
<p><br>
</p>
<p>Does anyone know whether the default NI petalinux on the E320 (in networ=
k mode) mounts the SD card or not?</p>
<p>I am asking this because I need to change the BOOT.bin and switch to ano=
ther design&nbsp;from the host.&nbsp;I cannot&nbsp;remove the old SD card a=
nd insert&nbsp;a new one.</p>
<p><br>
</p>
<p>Best,</p>
<p>Samie</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<hr>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fo=
nt-family:Calibri,sans-serif">
<span style=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)"><img border=3D"0" width=3D"70" height=3D"70" id=3D"_x0000_i1025" alt=
=3D"Kth Logo" style=3D"width: 0.7291in; height: 0.7291in; user-select: none=
;" src=3D"http://www.kth.se/delad/grafik/kth_logo.jpg"></span><span style=
=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,93,93)"></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fo=
nt-family:Calibri,sans-serif">
<span style=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-=
family:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,=
93,93)">Seyed Samie Mostafavi</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 6pt; font-size:11pt; font-fa=
mily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,=
93,93)">Doctoral Student</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-=
family:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,=
93,93)">KTH</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-=
family:Calibri,sans-serif">
<i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(=
93,93,93)">School of electrical engineering and computer science (EECS)</sp=
an></i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:=
rgb(93,93,93)"></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-=
family:Calibri,sans-serif">
<i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(=
93,93,93)">Department of information systems and engineering (ISE)</span></=
i></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-=
family:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,=
93,93)">Malvinas v=E4g 10, 100 44 Stockholm</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fo=
nt-family:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,=
93,93)"><a style=3D"color:rgb(4,74,145); text-decoration:underline" id=3D"L=
PNoLP">ssmos@kth.se</a></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fo=
nt-family:Calibri,sans-serif">
&nbsp;</p>
</div>
</div>
</div>
</body>
</html>

--_000_d996ed7c371b4d60aed6ac547b48f687kthse_--

--===============3600276927212659120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3600276927212659120==--
