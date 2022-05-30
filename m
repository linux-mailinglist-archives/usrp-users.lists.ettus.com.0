Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97447537ACA
	for <lists+usrp-users@lfdr.de>; Mon, 30 May 2022 14:49:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1353138410D
	for <lists+usrp-users@lfdr.de>; Mon, 30 May 2022 08:49:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653914983; bh=BMvB+s3Y9iMd8FwCW1cgjwPqSzxKPU6gC73nsuIX2Lo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hQ8xQ4i5y5b+zsfp7NkpcpUGMSshxE7kwrmzwYaJvYMd4WUhtlcbWRMolLJFKW3Fb
	 tj0MvoeiP/y3ksJZH+jk1honVMErb3XwsOjcvBJmlsYUv0drpzkbv0WJW9uR+sZalV
	 kj1XrTXL9Ke+Rf3XrEF4u6u22SKPxF+XivVgXxcbfimQDT6m2QAs1fl6j4g29NGIGe
	 Ht9UOFQo5mulwZUr6ufLk121t37JqG+70jQBwJAc510+YurFcl8K2RAvFdqUc88pHn
	 gSiyUif4WpaAcyYV6ajQhOh0Dcrnlcn6IRO+rIwUFhVRcMe0kjcUS0V3G4Gx21lada
	 dSvRWDlKqlsFg==
Received: from mailrelay.tu-berlin.de (mailrelay.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 750BD383C3B
	for <usrp-users@lists.ettus.com>; Mon, 30 May 2022 08:48:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="hxjNwo5x";
	dkim-atps=neutral
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id C4B596E656_294BD20B
	for <usrp-users@lists.ettus.com>; Mon, 30 May 2022 12:48:32 +0000 (GMT)
Received: from mail.tu-berlin.de (postcard.tu-berlin.de [141.23.12.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 9330D93CE8_294BD20F
	for <usrp-users@lists.ettus.com>; Mon, 30 May 2022 12:48:32 +0000 (GMT)
Received: from ex-03.svc.tu-berlin.de (10.150.18.7) by ex-04.svc.tu-berlin.de
 (10.150.18.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 30 May
 2022 14:48:32 +0200
Received: from ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d]) by
 ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d%7]) with mapi id
 15.02.0986.022; Mon, 30 May 2022 14:48:32 +0200
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: power level control
Thread-Index: AQHYdCLr47MyRk/FM0yvyvN3wZ6i0Q==
Date: Mon, 30 May 2022 12:48:32 +0000
Message-ID: <dadaad2586274afaa98554722cd79a2f@campus.tu-berlin.de>
Accept-Language: en-CA, de-DE, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.81]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=y4hYm5cGgu7DlfwMY+XPZwaKrcweOW3QgbQRwWRpycg=; b=hxjNwo5x0owF9HNNgrm2o8SAsu1TeT11sjHGlzYbvyOTPusbROxuu9w3z587OKCbgAGXoRPwjcUHruWd9copc7gHAT1ZXthOxTheP3hkEj5DelFjrk67XdEDLqRXM2xOAuM8+awMNk1/HsBMSPinjmeEu3MxbgAd1JnVUMDTTzQ=
Message-ID-Hash: Q2CWL27FTKCBZF26OKWLNWPLE2WE4IHT
X-Message-ID-Hash: Q2CWL27FTKCBZF26OKWLNWPLE2WE4IHT
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] power level control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q2CWL27FTKCBZF26OKWLNWPLE2WE4IHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0899254056155685851=="

--===============0899254056155685851==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_dadaad2586274afaa98554722cd79a2fcampustuberlinde_"

--_000_dadaad2586274afaa98554722cd79a2fcampustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,


I have read the article https://files.ettus.com/manual/page_power.html of p=
ower level control. I wonder what is the default value of RX reference leve=
l? I didn't find some information about that. Does anyone have idea?


sincerely


Qasim

--_000_dadaad2586274afaa98554722cd79a2fcampustuberlinde_
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
<p>Dear all,</p>
<p><br>
</p>
<p>I have read the article&nbsp;<a href=3D"https://files.ettus.com/manual/p=
age_power.html" class=3D"OWAAutoLink" id=3D"LPlnk537113" previewremoved=3D"=
true">https://files.ettus.com/manual/page_power.html</a>&nbsp;of power leve=
l control. I wonder what is the default value of RX
 reference level? I didn't find some information about that. Does anyone ha=
ve idea?</p>
<p><br>
</p>
<p>sincerely</p>
<p><br>
</p>
<p>Qasim</p>
</div>
</body>
</html>

--_000_dadaad2586274afaa98554722cd79a2fcampustuberlinde_--

--===============0899254056155685851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0899254056155685851==--
