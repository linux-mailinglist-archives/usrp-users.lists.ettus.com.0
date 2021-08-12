Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 284823EA531
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 15:09:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 401D8383D9C
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 09:09:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="XXgjocVH";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="Ajwrv8T/";
	dkim-atps=neutral
Received: from mfw.dren.mil (mfw.dren.mil [140.32.61.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 658A9383BE5
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 09:08:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s1.dkim; bh=YrJP7vxFfC2g0Lj0bnU/bEtK7GhjrrlxXN3dpoEHOC8=;
 b=XXgjocVHsAf9hLmsH5zyGHGyPeH8ZP7mQNmvOxmY7QnfbN+VnaYoK5xlyZGnwPLowh0Y
 Uwx+cnlgtb2IwY1GRvH4XF2UJ2y6oy92w/k4HkZtibRGIp2eZ9TUG4vrD61IraKEiWVH
 /V+St5IYAJoGU/OoWZBtL58f9cB+wkuBcSs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s2.dkim; bh=YrJP7vxFfC2g0Lj0bnU/bEtK7GhjrrlxXN3dpoEHOC8=;
 b=Ajwrv8T/xpONV2OgsaY1Bz7t4nuBEWDG7TRxND5Ds1g6z00r05DblmG45X36cpDcJQ+J
 11XYNKrdSdyG9bt2O90RhC3kRDBy2Zc+FP+FT6g/evznV9x5RxsZeqnW+Wtg/Ks6hxCl
 zERBQCNipFgo+lq2ysAhdzV2GnMBvmlu3P+TjB2X8hnQ0yc3zVVsRe8g7wlmT7XhVK6F
 G3aBxz/CwmZygxGwcIQfLG8aKWquxYuQwwS1Mz+oqsNpN1Li6oH/Udum7YQM5uHW96Lo
 sq3lRsvREl2qTAZwe4Qm72EaP7Gx0MmfNzMWV0Gocyn4ueLO5zVRKL/h6erBWeDjM8y2 fg==
Received: from rde-gw1.erdc.dren.mil (rde-gw1.erdc.dren.mil [134.164.23.110])
	by ppaw.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 17CD7vM2014622
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 13:08:46 GMT
X-IronPort-AV: E=Sophos;i="5.84,315,1620709200";
   d="scan'208";a="62387380"
Received: from unknown (HELO ERDC-EX1.erdc.dren.mil) ([134.164.254.13])
  by rde-gw1.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 08:07:57 -0500
Received: from ERDC-EX4.erdc.dren.mil (134.164.254.16) by
 ERDC-EX1.erdc.dren.mil (134.164.254.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.14; Thu, 12 Aug 2021 08:07:57 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX4.erdc.dren.mil (134.164.254.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.14; Thu, 12 Aug 2021 08:07:56 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::48f4:b8e2:74be:8c35]) by
 ERDC-EX1.erdc.dren.mil ([fe80::48f4:b8e2:74be:8c35%6]) with mapi id
 15.01.2308.014; Thu, 12 Aug 2021 08:07:56 -0500
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: x310 in cold temperatures?
Thread-Index: AdePep7Rk8eF+tFTT+qC7VfWV/sGPw==
Date: Thu, 12 Aug 2021 13:07:56 +0000
Message-ID: <f8e666448d0c40aa8b024abf3a1f8206@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: EZKPYBLZRO2EHZ4A2B3EXW6FPQ7B3PGP
X-Message-ID-Hash: EZKPYBLZRO2EHZ4A2B3EXW6FPQ7B3PGP
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x310 in cold temperatures?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EZKPYBLZRO2EHZ4A2B3EXW6FPQ7B3PGP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: 7bit


Anyone have experience using an x310 and/or the UBX-160 daughter card at sub freezing temperatures? I know it's not guaranteed to operate below 0 C on datasheet but curious if anyone has given it a go with any success. I am in process of readying my system for use in the field and wondering if I need to reserve space/power for a heater of some kind


Thanks!
Casey
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
