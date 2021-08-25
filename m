Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E545A3F7B63
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 19:16:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A2B5383EAB
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 13:16:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="pQLKZKkT";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="Mm+ruYIc";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 1788B383E8F
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 13:16:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s1.dkim; bh=edPQKvcH2/IEnhIGu+c0gIP84aSd/dVQ1+in9x2WSao=;
 b=pQLKZKkTk16yMJx0wPfXO88AClwlO4zW1Pv6GxbjXulhHXcMQVBaajgVz4kfa08X0QQA
 U2v09eOOWIYHCXiYNP26zjBkjK9iWwnBe2+HuJdhxwiH4VtfXuq52teDnzF4nVXKEZXK
 4sotQaaSuwa7FKK6XNozTzD0L3oU41AwF0Y=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s2.dkim; bh=edPQKvcH2/IEnhIGu+c0gIP84aSd/dVQ1+in9x2WSao=;
 b=Mm+ruYIc5gIuMva37Al+9rl9nlAdst21BvyCR+pjg8qnDKDR3wst9NkxIdVbcOnW/PfZ
 e2mQwvFsCPyUW5BZhbQz3364nXUAq8l7q4CdXfxxIJqDddhnn3nGnhodvWo3fqJrXqvU
 Cq7c4RZ52n1DqoQqCSNxd1u9RBrr0RB+e/Xa9OTk4PkBI01bAVyNOgMx6aQnUnWsJCwK
 vi626svi2AMvmsfzMDCtJtlU6j3kP7nMFzzKIxjnF5VEddraVkSXfhmg5k3V/y8EIhD9
 GwcT5a+rD+aFwpTOLVbfULaaRybDngJixrfAj12HvmuGzqAzmgIG3F557n7+BPpqnx9s cQ==
Received: from rde-gw1.erdc.dren.mil (rde-gw1.erdc.dren.mil [134.164.23.110])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 17PHG1UZ032924
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 17:16:01 GMT
X-IronPort-AV: E=Sophos;i="5.84,326,1620709200";
   d="scan'208";a="62639937"
Received: from unknown (HELO ERDC-EX2.erdc.dren.mil) ([134.164.254.14])
  by rde-gw1.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 12:16:02 -0500
Received: from ERDC-EX3.erdc.dren.mil (134.164.254.15) by
 ERDC-EX2.erdc.dren.mil (134.164.254.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.2308.14; Wed, 25 Aug 2021 12:16:01 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX3.erdc.dren.mil (134.164.254.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.2308.14; Wed, 25 Aug 2021 12:16:01 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::48f4:b8e2:74be:8c35]) by
 ERDC-EX1.erdc.dren.mil ([fe80::48f4:b8e2:74be:8c35%6]) with mapi id
 15.01.2308.014; Wed, 25 Aug 2021 12:16:01 -0500
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Battery Operated x310
Thread-Index: AdeZ00rdQDUmdiR8T1mAjCp6wW2PCw==
Date: Wed, 25 Aug 2021 17:16:01 +0000
Message-ID: <e9c432b184424a1d91ac6efa0892b000@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: RTYUVCK5YTYOY6PKLRYH2EZS4KGIJGOR
X-Message-ID-Hash: RTYUVCK5YTYOY6PKLRYH2EZS4KGIJGOR
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Battery Operated x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTYUVCK5YTYOY6PKLRYH2EZS4KGIJGOR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: 7bit

Has anyone had experience operating an x3XX series from a 12V LiFePO4 battery? From schematics it looks like there's some level of power management, but I can't discern how well it'd handle the 14.5-10V range of this battery's discharge cycle

Thanks!

Casey
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
