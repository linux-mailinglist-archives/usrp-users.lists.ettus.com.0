Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D64970FF14
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 22:18:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AC3D384912
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 16:18:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684959503; bh=ZpIPSnKA0Q7Ty+5QfyQqVjdVMsEl0SAH0QLg0THzOtc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Rjs8nOWciI+w+uB+ylrP31JZIRib6AjRBXCWm1fWkT7cvELNTLc8rMosAU0o6LgRx
	 7ufvV1jrOEtBv6Dr9087Gqs7VsVMYSsgEQBvPR9tJa2keni08du3v2sKgtSUivsC/r
	 FtPL7kwEJR4z8w7Chl4lBLp+kqIWYhy4NKUOVI5vcyFnfpD7RJo+YyEa8xsf0keUk1
	 vQNMCvymYey81RAW345c500ipzujDj+dZX/YnEzXjzyICJp0Y8hulfpGjiDDTaMcYn
	 /msK9K7mxP7PlEUjk1tdJpDMJQ8eU56lBFxFPVwxIcpsvClR4p63cxTM7odVzBOaYK
	 V30yz9TBsBkww==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D83923848F7
	for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 16:17:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684959477; bh=PoU/gvzJpQdfyeatPg2t8irwGIME3mdbr+Er5gGMKFA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pdqCDrrJnGGuQp8p36FUoQd3R/ISozsrEUsMJCc18OD6veAQ8yHBQ0EgDEL5D8Cf/
	 0eQ03CtKXNGDCwTyzE8ceqObRzrTp6QNEML3Ph91PL9YET1FhczSwrFxVpDIrFdDI/
	 mzL93X7MGg6I7myQSms4BxDieRMM8uN0JIxiAnAeFTYpFC69m56eBNawxDaQ2V8prx
	 aLWFZbv1oNZjtMXqvjgydq1Xf/Kk8mPLRZe6+haASkWLeKtaLqBeccn+Yswa5ViE2p
	 vyacvxZVJ3vYqJBjULGA75oX8N00FQ+HGloaEnWGXc2AtXL1ikzTowvZ+CwdPC+fut
	 F4Ydks7UZ2XIw==
Date: Wed, 24 May 2023 20:17:57 +0000
To: usrp-users@lists.ettus.com
From: mena@chaosinc.com
Message-ID: <N3jF4D44KrigWSTszhFCaZz40da7eYNodadJDTShA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0419d828-801c-1582-29bc-ec4d28e1667e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: JW3DGAYVYVIQTHN7C7OCO3EZOBG3OYWQ
X-Message-ID-Hash: JW3DGAYVYVIQTHN7C7OCO3EZOBG3OYWQ
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JW3DGAYVYVIQTHN7C7OCO3EZOBG3OYWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0427216438153999100=="

This is a multi-part message in MIME format.

--===============0427216438153999100==
Content-Type: multipart/alternative;
 boundary="b1_N3jF4D44KrigWSTszhFCaZz40da7eYNodadJDTShA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_N3jF4D44KrigWSTszhFCaZz40da7eYNodadJDTShA
Content-Type: text/plain; charset=us-ascii

Thanks. Two follow up questions:

1. For a given sample rate, is there a way to deterministically calculate the group delay?

2. Why do I need see the same delay at the back end of the transmission (i.e. after the GPIO goes low)?

--b1_N3jF4D44KrigWSTszhFCaZz40da7eYNodadJDTShA
Content-Type: text/html; charset=us-ascii

<p>Thanks. Two follow up questions:</p><ol style=""><li><p>For a given sample rate, is there a way to deterministically calculate the group delay?</p></li><li><p>Why do I need see the same delay at the back end of the transmission (i.e. after the GPIO goes low)? </p></li></ol>


--b1_N3jF4D44KrigWSTszhFCaZz40da7eYNodadJDTShA--

--===============0427216438153999100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0427216438153999100==--
