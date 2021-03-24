Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A30B347A1A
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 15:02:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBD9C383D75
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 10:02:30 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A9F8383D63
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 10:01:23 -0400 (EDT)
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 0C2B76E654_5B4632B
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 14:01:22 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id AFA9E188B70_5B4631F
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 14:01:21 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-02.tubit.win.tu-berlin.de (130.149.6.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Wed, 24 Mar 2021 15:01:21 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Wed, 24 Mar 2021 15:01:21 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc mimo example
Thread-Index: AQHXILYRcw9TdIVBNkm9FnhQ6fG10g==
Date: Wed, 24 Mar 2021 14:01:20 +0000
Message-ID: <556efb26a53849f3aad87d96e8f4d76c@campus.tu-berlin.de>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=pt+mHQFSzO6pS5wRGQRzJFOS7FH2kybA6UkJtQBQy04=; b=hGql5AN0wxWjIVLsumK5nTFy/kjpZSiK0gBc+i+kVAQ2nboKjoiRfpATni4EzYHFoLs/6sWjO2FXgRfSP20qcllbXkIvubGpaeEdvfE2bCKz0uEZJGjRWRNXbZ08/vYvowMso7W3xDoWL9SqFRiP+xP4PUIhmkxKUaLFQkiQo4Q=
Message-ID-Hash: PF7DV2EP63M5AORW7CXU6AYM7NIMDMCX
X-Message-ID-Hash: PF7DV2EP63M5AORW7CXU6AYM7NIMDMCX
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc mimo example
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PF7DV2EP63M5AORW7CXU6AYM7NIMDMCX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5205509134466012451=="

--===============5205509134466012451==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_556efb26a53849f3aad87d96e8f4d76ccampustuberlinde_"

--_000_556efb26a53849f3aad87d96e8f4d76ccampustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Ettus Team,


may I ask is there rfnoc mimo example code? How shall configure the channel=
 if I want to make 2x2 MIMO on one single X310 with 2 daughter boards?

Thanks in advance


Kasim

--_000_556efb26a53849f3aad87d96e8f4d76ccampustuberlinde_
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
<p>Dear Ettus Team,</p>
<p><br>
</p>
<p>may I ask is there rfnoc mimo example code? How shall configure the chan=
nel if I want to make 2x2 MIMO on one single X310 with 2 daughter boards?<b=
r>
<br>
Thanks in advance</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
</body>
</html>

--_000_556efb26a53849f3aad87d96e8f4d76ccampustuberlinde_--

--===============5205509134466012451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5205509134466012451==--
