Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E186AD88FB
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 12:12:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1F0F38629D
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 06:12:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749809576; bh=WJGxV6cz+Ze9eH7t07N+U3jXfv7UW47n+ZfCIYJzz8E=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CURlAZlNYwG55yFD/zHBij3dPh1ezVkpFWNT23aJujC6sDDzQfWLHNP5o5nC9JDmn
	 RdHCEgzBZxA62oRkhAdkkgI6icxzU3ZFHwvdjZhAsD9aXZgUysq0qC5gmNzm5/sV9r
	 4Selws0siTZoKYuzDuX7QwNR/4sJnTB4y/WsWJU1wf/11qMCi4HjgjADJDOqG3Wm11
	 tjcYxgpvUv0HdwWb/rHzjIYJXFo6x1K23TzpY8Da7s+ZznTldvYYtdvI5M5DEZUk8z
	 0CtTjHDam8sKIz8GkjaLu+kVD+qVNDceMaUBcO0GlUPJ6PaekGyWPXopoWyTb311zw
	 1EZLokCDd8MTw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FF713861DB
	for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 06:12:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749809538; bh=UYP3MX1lH6ZUCdV8jXRkyf2+/eJcaUKkYKw/SddMKTs=;
	h=Date:To:From:Subject:From;
	b=Ea4kQ0j1VQkeihIoNkPix8zLOD1S0Hj83VkMXRy6yZ3R1FlE2IOA6EMgwT7wWJPsI
	 cAwQZ/KWpdZoEnu/VZ31rL4kvyhAE24DsawSEslltd3ajbcKeoPs7NAdxD1OvFkBQe
	 BNfw6DyLI4rxC+gYkIKMcqpPbk6etxkCDV6cwarfqGdY8aZz2Gza2a0RfGKmlNkh7h
	 KLeEr7sJTFR23XatzBkmj56Lne+Jz8RAvc+5hRp/X1B2eWU/y/QCLspLpHpTUXt/tp
	 bN54CvzunLg+yjUQcl5VWXoxAhkfY2Gp80XxBD6u6fzzi/+KuEK8VxwTIxfAhUE2+N
	 Dv98WYM6tUK0w==
Date: Fri, 13 Jun 2025 10:12:18 +0000
To: usrp-users@lists.ettus.com
From: anant.tripathi@technosci.com
Message-ID: <WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: QLRS37A6BT6BRCTV6OZHJWW2RBRZYJY5
X-Message-ID-Hash: QLRS37A6BT6BRCTV6OZHJWW2RBRZYJY5
X-MailFrom: anant.tripathi@technosci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to access the external 1PPS clock, from GPSDO, to be used inside a custom RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLRS37A6BT6BRCTV6OZHJWW2RBRZYJY5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5684573105692481190=="

This is a multi-part message in MIME format.

--===============5684573105692481190==
Content-Type: multipart/alternative;
 boundary="b1_WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c
Content-Type: text/plain; charset=us-ascii

Pretty much what the title says, our goal is to sync the timestamps to the rising edge of the 1PPS signal such that they get reset exactly on the rising edge of the 1pps signal, and increment the count of a custom metadata tag, to the outgoing stream to the UHD application that we are working on.

--b1_WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c
Content-Type: text/html; charset=us-ascii

<p>Pretty much what the title says, our goal is to sync the timestamps to the rising edge of the 1PPS signal such that they get reset exactly on the rising edge of the 1pps signal, and increment the count of a custom metadata tag, to the outgoing stream to the UHD application that we are working on.</p>


--b1_WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c--

--===============5684573105692481190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5684573105692481190==--
