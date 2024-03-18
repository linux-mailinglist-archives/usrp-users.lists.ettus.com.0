Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D53487E40B
	for <lists+usrp-users@lfdr.de>; Mon, 18 Mar 2024 08:25:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8440384D8F
	for <lists+usrp-users@lfdr.de>; Mon, 18 Mar 2024 03:25:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710746721; bh=iVZuZokIOTjjv0lrKAht2Z2HbnvwMMbelITY6WM4qAY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OSNrN7c4FOqpSqR+FNKyJEhLQnpwjNcSGoD9Lmt6GNXfainR9sDP2/4ECvtuRe2P8
	 NWMEnpP1ecvqwciNz9QGCbs5SKg9opGTCBHsW14DZ5B6kFYNoV0SWEgJueKMBHffmd
	 SMw5rlfGy/HNws5ezjIXZJjT7jhpS4NySiZUCRBV2xOsMPidELtnc95Hs48wKCaGhG
	 F4iQZzKz1abEEDvFLTCR3VVbJ/4mklFYw2O2ZX2jV/3veQKIA68JjgZ0e2qwYvdBb+
	 LDUI3sFDYT5hd3vg2tcAlZ9H6NVBTwUla7SFkrP/wYphLXHfgmDNUU+HZ6SbMtAoVm
	 3oLZHLauVADRg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 813DA384A29
	for <usrp-users@lists.ettus.com>; Mon, 18 Mar 2024 03:24:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710746688; bh=qyidkwnRA2ePbDM8bFoAyGRLHdIRWGuUnGjcetCw9h8=;
	h=Date:To:From:Subject:From;
	b=vW7YG/Y8JDTEugfaup/qxQFeQZnE4P97u33GF7LNYh5A1Gc431gD4KvwG3mV+sMNX
	 QG4t14MN81PAc2oMDkmmAvdEyYY/BB7PU56jwkUu7fxi4Fq0qp0u5cXj3aENNevf3j
	 K/pRH15PLShGl2TNYqq9TID8g9F5T3kSmQjELMjtRZufBNrw1igWDrlz2d1352wQEy
	 Pip0+/RHhkKIkvp5MoExYzgLusO55zDoB+1wR0nBIkW6VE/c6UHEMqoaplqmYXlQvC
	 MLEJlbEhYIKGm2zEnNVeHP+SkIWobb7qVoylx/wY+MeGKRqM6iAFisTUhCkuPTTCle
	 KzLVSqe2+kLxg==
Date: Mon, 18 Mar 2024 07:24:48 +0000
To: usrp-users@lists.ettus.com
From: johnhigginsgis@gmail.com
Message-ID: <oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YK3ZO77Z66A2W5YR5MJ24ROYAAVSTJJ2
X-Message-ID-Hash: YK3ZO77Z66A2W5YR5MJ24ROYAAVSTJJ2
X-MailFrom: johnhigginsgis@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 GPS bias-tee Current Limit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YK3ZO77Z66A2W5YR5MJ24ROYAAVSTJJ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8543651415201871909=="

This is a multi-part message in MIME format.

--===============8543651415201871909==
Content-Type: multipart/alternative;
 boundary="b1_oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA
Content-Type: text/plain; charset=us-ascii

What is the maximum current that the B210 provide to the GPS antenna?\
\
Is the biasing current provided by the GPSDO or via some onboard bias tee on the B210 PCB?

Best regards,

--b1_oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA
Content-Type: text/html; charset=us-ascii

<p>What is the maximum current that the B210 provide to the GPS antenna?<br><br>Is the biasing current provided by the GPSDO or via some onboard bias tee on the B210 PCB?</p><p>Best regards,</p>


--b1_oxvzWQcpaF4Nt4AYAgLogLm8vsAQTIN66HbtIHkA--

--===============8543651415201871909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8543651415201871909==--
