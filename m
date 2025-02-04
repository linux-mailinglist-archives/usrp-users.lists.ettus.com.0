Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A980DA27734
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 17:32:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07CF6385532
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 11:32:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738686738; bh=KX19f2jjvIz8YxXlJ24ZkytD70spFU9A875Q7ah+K9Q=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=V8PGhdns7pbOOPzxs3J1/4R7/S4hwFYSQQ1hd/kuI8RFbQad/2ddFVzepxG7ldzEp
	 EyluTFzhNGQjbgbzj3rgT72Qqyuvt+kuoCkffKmmg6TsVgz22jvXmJSBIJLbL6H8B3
	 kXQ6mdrXDK94pckhszmuE8ARtivJC2hasAszYu4eJbtbTqR2F8Hu2VLwfclNupn58d
	 UmR9steG0C17+DmQ2rre8AtcdOo4H4OOroA1OBprSJ2uO06jYMIMCJ34NkeNTpR0wb
	 Ld3Da9lI/RwARvBfTG9NQ2FTx8G1n0z1goh+Eg9fCia6bkSw91DHa9jfFjyWSE/3R2
	 xMi5lnIUB+R6Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44E093854CF
	for <usrp-users@lists.ettus.com>; Tue,  4 Feb 2025 11:32:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738686726; bh=Q5UZwHhQsX0aDjUcUux7DYTa4YR13AAPnIO9PYSYIfQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oNjxEhfou5HR2GvKeqiz6ldONegp2Zm7JzTqS/mEixm0ylR+iImMqlncUPBzkfPTD
	 vo7ff3gF82DgXaD8XNZdHEuwSgYlWh8BV7JTb/dJWIxDk8PcLnklyUjthnzluafQ8p
	 72yek9EFEoCrFO1jTZLRgX95Oi/KLn8h3ILUYtw/PpZSsvMSD2RjYn0+QcgWS8Bj4B
	 kXg7Lud1SCeoz9aqr0UG80mzEtga+cdDpE+ksT2mk/BBCgoNuZ/CUXUw0fmhaLfYyw
	 12izV+xoVHkkhqNLUYLcz5uGKeO1NIm130hSniDx1F16mAwfe7Eyoj9vNq1EV4PMIc
	 zk4Jv3gFGcFgA==
Date: Tue, 4 Feb 2025 16:32:06 +0000
To: usrp-users@lists.ettus.com
From: pigatoimdeafrancesco@gmail.com
Message-ID: <7J7RUzazkNM3wieGXMJc3JU1rN0tjzQNdmEBZ14GTVA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: dd45cd7de2cd4ba69b9525cb6bb0c689@hhi.fraunhofer.de
MIME-Version: 1.0
Message-ID-Hash: X6VCOABCLYL32D4LTQKEGBNVYA6QWWFZ
X-Message-ID-Hash: X6VCOABCLYL32D4LTQKEGBNVYA6QWWFZ
X-MailFrom: pigatoimdeafrancesco@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 not seen by uhd_find_devices command
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X6VCOABCLYL32D4LTQKEGBNVYA6QWWFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3331194011130026531=="

This is a multi-part message in MIME format.

--===============3331194011130026531==
Content-Type: multipart/alternative;
 boundary="b1_7J7RUzazkNM3wieGXMJc3JU1rN0tjzQNdmEBZ14GTVA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7J7RUzazkNM3wieGXMJc3JU1rN0tjzQNdmEBZ14GTVA
Content-Type: text/plain; charset=us-ascii

Hello Matthias, 

thank you for your message. Your suggestion has fixed the issue. 

Best regards, 

Francesco

--b1_7J7RUzazkNM3wieGXMJc3JU1rN0tjzQNdmEBZ14GTVA
Content-Type: text/html; charset=us-ascii

<p>Hello Matthias, </p><p>thank you for your message. Your suggestion has fixed the issue. </p><p>Best regards, <br><br></p><p>Francesco </p>


--b1_7J7RUzazkNM3wieGXMJc3JU1rN0tjzQNdmEBZ14GTVA--

--===============3331194011130026531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3331194011130026531==--
