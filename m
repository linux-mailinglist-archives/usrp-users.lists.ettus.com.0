Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10769738A17
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 17:49:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A524384AA2
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 11:49:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687362566; bh=qRhumVnbOAYwALONK63QZkwIstOglS6L9vqlcD6C7mI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I3fjthmlnhavSrp7EKOdHkQCpQyCBMx2h6joEDKbgqn+fKRBnFtb9hXrrmlY+8cuF
	 GXMcM+faUz1ip5DZI6J0eh0brpn4Lx/5Cke2HXt2T+6lvG1qbHioQMfbD70UswyAd8
	 cnvuruwuNxP3xTLEbAv48c01yn79EGumyE0Q83jA6ZRFiAGhhxpHkNCSntHK6CH3Q/
	 Kz73XH9p77cqzWb618QA5LYxjSVs2hukI51Tuofayr5p9RiIOMHl4bqq+mWiIci1/L
	 D5t6MxOMiebm2c7ds1arjgHhTF+fgCVnroLtbbEx/XugNi4f6PpMOgHKPG+5XtZtjM
	 umeWOSJZgQjMg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4B68384AA1
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 11:48:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687362538; bh=NBia2h5EzJvOHPjjjMt8jn0YWcO6ZrZnYjpJ2aOvZ8s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Od9lnYobDUAB7s8s0UAhmE+la/ahksT0gsiiaU04oT+2ZYvpcsg0Rbb6FLAcxpXVg
	 vkx9hFrFUaXddY2vccNMTG+WpNoYGJyFfunMnxI4x0Af0FeUsJ9nHxBHJZv8p9ICdg
	 gLukdy4dke8QRtyMlhwyC5Cj5EqgsQEb2ZK1PvOlUHLJ10zMG4nNLr2g18R5XX9sco
	 wiBVmozwLUd5mCKA54/uIYAhu52xiChu1Su4ieADN4pwNvhkm5jDmSausbadimd3TY
	 O/b/4LuToNloKHks3/dEPLy5p96eydHi4iqcIOzsF9oJo/p18DNUa4HwmXkk6Tl29p
	 1Zg4zTGNXC2Aw==
Date: Wed, 21 Jun 2023 15:48:58 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <qCDL2pGvpv5ZeTpVOTs2JHnxJgsYLaQZ0QUaBj5k9E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=gu+YR0ZGXeT0SmBdKYXU_6UDRGLcC50Eu0es-z1cu82Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: UGCZBLDVDQYPVJO5SQW7VV4AAHQWVPJ3
X-Message-ID-Hash: UGCZBLDVDQYPVJO5SQW7VV4AAHQWVPJ3
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Control operation timed out with custom block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UGCZBLDVDQYPVJO5SQW7VV4AAHQWVPJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5448264555444575469=="

This is a multi-part message in MIME format.

--===============5448264555444575469==
Content-Type: multipart/alternative;
 boundary="b1_qCDL2pGvpv5ZeTpVOTs2JHnxJgsYLaQZ0QUaBj5k9E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qCDL2pGvpv5ZeTpVOTs2JHnxJgsYLaQZ0QUaBj5k9E
Content-Type: text/plain; charset=us-ascii

It ended up being the case that the project was being built with wrong file, and the ACK wire was set exclusively to 0.

--b1_qCDL2pGvpv5ZeTpVOTs2JHnxJgsYLaQZ0QUaBj5k9E
Content-Type: text/html; charset=us-ascii

<p>It ended up being the case that the project was being built with wrong file, and the ACK wire was set exclusively to 0.</p>


--b1_qCDL2pGvpv5ZeTpVOTs2JHnxJgsYLaQZ0QUaBj5k9E--

--===============5448264555444575469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5448264555444575469==--
