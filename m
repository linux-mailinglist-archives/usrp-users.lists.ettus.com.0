Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8612B34F3BC
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 23:51:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83D8438383A
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 17:51:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="sQlX1yuA";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C0963837F6
	for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 17:50:57 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1617141056; h=from:subject:to:date:message-id;
	bh=cGMT5Cc53vOA+AQosbEXzsmFgriVXNhdVMR7iisSXJQ=;
	b=sQlX1yuAYz1ajZ7X0FhqQWx8baqp/a6XDsMpGs7aex1/bEhDUaCpAPWeCMVc2cdv70Sk2EKEUec
	vq5OSNdKaNbGREKfZkdTciXZpvvHfbWnh6ccwWPg9bKWYRfkbj/wK2OH1XEeuop9QJ3Ivblb1ESHd
	5EF1GXob6cv5OhxpkSLc4lHV06hWNYe0EbLMcQDMPssnEkR4VaVhzRiHY45IeVjBzARy5NjacVwn9
	SzXiEMSo5oUvqWJOSN21binhtiOGsVRHwui8EeVaAZp44ETj72YrpVZ2huqNxozGHGX2deIVYkkQE
	6CVQyaoRLpnczzT5Wh+/2RLmePvANL0N9FUA==
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge07.gtri.dmz
 (10.41.104.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Tue, 30 Mar 2021
 17:50:56 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by jekyll.core.gtri.org
 (10.41.1.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2106.2; Tue, 30
 Mar 2021 17:50:56 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2242.004; Tue, 30 Mar 2021 17:50:56 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC data_tready on AXI Bus
Thread-Index: AQHXJa6wnWVxeWdGo0i//MnUy2ElIA==
Date: Tue, 30 Mar 2021 21:50:56 +0000
Message-ID: <09a52b1a9fd7467b857ab4a7e3c4427e@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: XOE5WEQX26VJYFCUWUDCNSPJCV646TI2
X-Message-ID-Hash: XOE5WEQX26VJYFCUWUDCNSPJCV646TI2
X-MailFrom: Jeff.Hodges@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC data_tready on AXI Bus
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XOE5WEQX26VJYFCUWUDCNSPJCV646TI2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============3837435367729589259=="

--===============3837435367729589259==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_09a52b1a9fd7467b857ab4a7e3c4427egtrigatechedu_"

--_000_09a52b1a9fd7467b857ab4a7e3c4427egtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On the AXI Bus, what is the the behavior of data_tready? Does it go low at =
the conclusion of each packet? If not, how long after de-asserting data_tva=
lid is it allowable to re-assert data_tvalid and begin another packet?


Thanks,


Jeff

--_000_09a52b1a9fd7467b857ab4a7e3c4427egtrigatechedu_
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
<p><span>On the AXI Bus, what is the the behavior of data_tready? Does it g=
o low at the conclusion of each packet? If not, how long after de-asserting=
 data_tvalid is it allowable to re-assert data_tvalid and begin another pac=
ket?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span><br>
</span></p>
<p><span>Jeff</span><br>
</p>
</div>
</body>
</html>

--_000_09a52b1a9fd7467b857ab4a7e3c4427egtrigatechedu_--

--===============3837435367729589259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3837435367729589259==--
