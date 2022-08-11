Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66409590695
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 21:05:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07B78383FD1
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 15:05:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660244749; bh=ZPhJaYDoSLpMAaOrQ8AVvI8AAQjw5Vbo/FJxu8TQM/o=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=z7efYbcg+8jZjDdnXRzR2bjm1b3ISVpcqW0LVM6xumUtow/GomQd6iP1B6CIOKtD7
	 33s/fIxFX1x+1pdsZsT96Nzp3nVotzlqPx6HieAjmGD5rF1CCVQTHG2CWupoYjWpXg
	 QMyBtNOxh2BycTI8a+iZjYQROqwZpjAaOElwrbT2PfMiETJb6SPhjTqMcxSdlPz94e
	 V+VIUAEBPv0r9KP5LGYajcRYLjgQcYazWZ3Fjae+F1wIDwJ3YpKitT51+9NKSC8s6g
	 LdLE5CdlTJmKejax6Fg/p2Dnx3C/0llKh0ETzk1g8jzWin1VQ/z2pY0LX7bl8mGWyS
	 nQH1FTG4u2EoQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95D5A380054
	for <usrp-users@lists.ettus.com>; Thu, 11 Aug 2022 15:03:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660244622; bh=R5FQ4fKDc9qEnv6u5sDC5+79UFSsuK2l3wARHGkIbz8=;
	h=Date:To:From:Subject:From;
	b=HNlUtjLpBWMOpIeKU/8H4kZhHWOD1XUAsedQumzcaF81J9OkzgutpmhDpPY9Q6IUC
	 D1PGH3PfIlRfwRrAnPPvOVNJwgj60hN0A+EGv0R1O6ZPw8QneynVFlFT3q8IuUkmKz
	 gFQFZAlnkvKu00PKu406FaWiEEotdoR3aZ2FhphveA7ezNaFYUJR+bt3V73bfJKK7g
	 teCr9EQbZXoIR4BUsckxTu+ytx/LrYJjKTM0QIPmqxedu7j1EtHWy3+QEWSkx8C41X
	 L0ycyxNv0ypn7zQm6wQ7O2/27wubkzenrl/sym4wTpqyBkPAk2E0xABV5bqrTGWeAP
	 IJBp7jbXur6yg==
Date: Thu, 11 Aug 2022 19:03:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YTWPDFC6FUMZB5KXWLMDTKONRF3KAZWL
X-Message-ID-Hash: YTWPDFC6FUMZB5KXWLMDTKONRF3KAZWL
X-MailFrom: skyung@nrel.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TDD with N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTWPDFC6FUMZB5KXWLMDTKONRF3KAZWL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: skyung--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: skyung@nrel.gov
Content-Type: multipart/mixed; boundary="===============7925944039775693139=="

This is a multi-part message in MIME format.

--===============7925944039775693139==
Content-Type: multipart/alternative;
 boundary="b1_mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ
Content-Type: text/plain; charset=us-ascii

Hi all,

I am deploying Open Air Interface 5G with USRP n310s and just want to verify something.

So the question is - for the communication using FDD between a base station and UE, two n310s should be synced through an external time source (such as NTP), right?

Or should the internal clock source suffice?

--b1_mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p><br></p><p>I am deploying Open Air Interface 5G with USRP n310s and just want to verify something.</p><p>So the question is - for the communication using FDD between a base station and UE, two n310s should be synced through an external time source (such as NTP), right?</p><p>Or should the internal clock source suffice?</p>


--b1_mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ--

--===============7925944039775693139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7925944039775693139==--
