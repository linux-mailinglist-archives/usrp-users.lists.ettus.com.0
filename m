Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3D944436D
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 15:26:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADEA4383AB1
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 10:26:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="kkef4XS6";
	dkim-atps=neutral
Received: from mailrelay.tu-berlin.de (mailrelay.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 3BE8838155E
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 10:25:26 -0400 (EDT)
Received: from SPMA-04.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 60B699725E2_1829BD4B
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 14:25:24 +0000 (GMT)
Received: from mail.tu-berlin.de (bulkmail.tu-berlin.de [141.23.12.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-04.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 3904A999BE3_1829BD4F
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 14:25:24 +0000 (GMT)
Received: from ex-03.svc.tu-berlin.de (10.150.18.7) by ex-01.svc.tu-berlin.de
 (10.150.18.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Wed, 3 Nov 2021
 15:25:24 +0100
Received: from ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d]) by
 ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d%7]) with mapi id
 15.02.0986.009; Wed, 3 Nov 2021 15:25:23 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Tx RF chain still on after transmission?
Thread-Index: AQHX0L20B2lDYzh6x0mK2GIQc7LYMw==
Date: Wed, 3 Nov 2021 14:25:23 +0000
Message-ID: <30510aa4f1e04639b856128d20a14a3b@campus.tu-berlin.de>
Accept-Language: en-CA, de-DE, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [109.40.242.28]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=2ghpTRBwCU6ZRn9+JJKu6qgFo8WoiQ3LLyYrSleS78o=; b=kkef4XS6PI/vyWpG3jq6DACE9sdTFV3Os4BI3T5aysY4gwuX/t+eSyY8XO+OwY2w5PSI7lNPRRtrbpXS3yipyYMZgNn7i1DgihP4sccEJD17q48vNcEq1z3wIoi6j+F7J3UW5fbuaWM04dgLJAca7K7it9qU9en0wSC8wesCzG4=
Message-ID-Hash: KPULZDPC7IYLAUFCQRPS2MTILKPRO4B4
X-Message-ID-Hash: KPULZDPC7IYLAUFCQRPS2MTILKPRO4B4
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Tx RF chain still on after transmission?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPULZDPC7IYLAUFCQRPS2MTILKPRO4B4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1615836446075706346=="

--===============1615836446075706346==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_30510aa4f1e04639b856128d20a14a3bcampustuberlinde_"

--_000_30510aa4f1e04639b856128d20a14a3bcampustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I have a questuon regarding the TX chain. I wanna measure some data transmi=
tted from TX antenna to Rx antenna and without any stop measure the noise. =
So for example I configure the program to send 1000samples and receive 1500=
samples (so 500 noise samples). My question is, when the transmitter finish=
es its job, is the RF TX chain still on? Are the ADC or amplifier turnt off=
? Becaue I want the measured noise the same as while transmission.

Sincerely

Qasim

--_000_30510aa4f1e04639b856128d20a14a3bcampustuberlinde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
Dear all,<br>
<br>
I have a questuon regarding the TX chain. I wanna measure some data transmi=
tted from TX antenna to Rx antenna and without any stop measure the noise. =
So for example I configure the program to send 1000samples and receive 1500=
samples (so 500 noise samples).
 My question is, when the transmitter finishes its job, is the RF TX chain =
still on? Are the ADC or amplifier turnt off? Becaue I want the measured no=
ise the same as while transmission.<br>
<br>
Sincerely<br>
<br>
Qasim
</body>
</html>

--_000_30510aa4f1e04639b856128d20a14a3bcampustuberlinde_--

--===============1615836446075706346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1615836446075706346==--
