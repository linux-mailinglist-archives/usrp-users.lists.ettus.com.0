Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0F24668CA
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 18:04:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0945E3850ED
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 12:04:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="h0whibQz";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="XWa8/8Lr";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 016D6385029
	for <usrp-users@lists.ettus.com>; Thu,  2 Dec 2021 12:02:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s1.dkim; bh=tHeU6uw6diWf/i18UXRGlofL3FPvpiAiefzz8WeJ7wE=;
 b=h0whibQzRzw6s4WIq53O/RT9eB/gWDAqh0JGLBkVyMlCXt19q9YYmqQ21O0kKx0sVu+P
 KDXokZotgPuRJIFALIShyUlinAz7ho6HpW73I/tWe1XqIplUfpGNCqoNRbge46Byi2aD
 biaE2cvkvxqImN5D1AyVlIpHgoak80zGcxw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s2.dkim; bh=tHeU6uw6diWf/i18UXRGlofL3FPvpiAiefzz8WeJ7wE=;
 b=XWa8/8Lr7xbs73aRy+KU+OAVKA24sWYfOc0e2x6sXTUk+BXc+2QoLpDByfzck664dCl4
 8UaeldjE60vB6S3AL9hrozYie/MTgvzwIb/UJNSW9sFLPUdlSRSGS/dNqPt3Iw8p1LEY
 1B817dG57/sd1lWpva9eoaW25LAbhhQ2oQ1UCBFCbcy/eAE6CSu5u945VxPNoWxtp9fy
 Q43kFzQ2jFNy+GG6Rhz7cPfvqSwRwTOn1FMNkqz8SN3Xd+u5DIVlwKwtD53PURN8itA3
 IsERkRy74w9cukakp2AXLPk0hlPEesuaQdd9vs9aBpgIJfbYAuN1JNU8ECw36ceiEQsm Og==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 1B2H2sDa021120
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 2 Dec 2021 17:02:54 GMT
X-IronPort-AV: E=Sophos;i="5.84,326,1620709200";
   d="scan'208";a="63834719"
Received: from unknown (HELO ERDC-EX1.erdc.dren.mil) ([134.164.254.13])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2021 11:02:54 -0600
Received: from ERDC-EX3.erdc.dren.mil (134.164.254.15) by
 ERDC-EX1.erdc.dren.mil (134.164.254.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 11:02:53 -0600
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX3.erdc.dren.mil (134.164.254.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 11:02:53 -0600
Received: from ERDC-EX1.erdc.dren.mil ([fe80::8438:3191:def2:169e]) by
 ERDC-EX1.erdc.dren.mil ([fe80::8438:3191:def2:169e%6]) with mapi id
 15.01.2308.020; Thu, 2 Dec 2021 11:02:53 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Turning on E313
Thread-Index: AdfnnGFQTxo3hE7vQR6y2hZtF4d1yg==
Date: Thu, 2 Dec 2021 17:02:53 +0000
Message-ID: <72030c28858743c790876de59cc91eab@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: IPYOTI6OKABM2I4AAL6UZMBMYW2QSIBV
X-Message-ID-Hash: IPYOTI6OKABM2I4AAL6UZMBMYW2QSIBV
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Turning on E313
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IPYOTI6OKABM2I4AAL6UZMBMYW2QSIBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: 7bit

Pretty basic question here... Anyone know how to turn on the E313? The getting started guide says to plug into power supply, but this unit supports PoE and doesn't come with a PS... PoE in general is a new concept to me so I'm not even sure if a laptop even has the juice to do this kind of work? Thanks in advance!
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
