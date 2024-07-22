Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515E9390A8
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 16:30:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03F4A3851B6
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 10:30:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721658625; bh=FYRBe1QmxeyLjENyLjIhn/xzb6m65fQwYfE3geY7qlM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RDNGQOfGO5pA76UQs6vzUsqfl353Cbj6pv7yXljDKw1trtOr93SJu/DlSXsmOV7Pp
	 WOHaXPDrT/VSwRz0z8hMEyhMeP4iQvRMv0DkyPDUZsouqXb5YZxoJME9BwvIgYXNbf
	 W98izGDz818/sEZ+xPjwrk0Zaoq0b/I884CTFpIBOD1a03gwJnHt0yI4b+WUGszcu7
	 JUMUUNLvvYzaQFeYfk9Ej+rvrInAv/LOTtRqAdAXWsIWzO1mdQLxOPXDpB/Q+QcOnt
	 l09T217rSVZxh9sD3lLTQLHesx6CfmtLnhf5f8cfdUs6SWGuBmWVI0Vh/bgmI3F2+i
	 A64rC45sTs4rA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A59C384DF4
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 10:29:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721658582; bh=qoQjFduKWzTagHG1aG2gkB3tWrlWdvUmtZIt9bi6I9I=;
	h=Date:To:From:Subject:From;
	b=T4iW8ThEutEUyT0e5GuHlGL51Izl+wzyCwjTKORelhTn4oX1sypMl4VHA5dI0VUEX
	 ZwUAjOiYD4Bopck/lGgXGhvvjZ52TP+kzTkI6tyKqgGJiCSq8AaFKtLQCx7DnMfvbb
	 XsvXRA/Kft3xT9pNlbvoRHeBj+NJT1R7djwhrt4bg4/Hv/+jF2PNz0Mhx6rYfliJJJ
	 vKMS7dfPxgMlUa+iidHm4oRc9MJi8IapyTHnPEm6ZB9vN+Bx00Qwh3dL6gO9dsEMoD
	 GEHfC8E9jPfmyumECa9u86JfNFQQbDpMA6BH7FQueS1ISGvJDxZfUnf1LYe8o8cV53
	 xFD8YmIaxTwTw==
Date: Mon, 22 Jul 2024 14:29:42 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <BgvAfvdJK6XnagdUAy6oV0RWmaiCyIRhTQtiw9mL2M@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FNVNXRXOQFA3W2BW46KVUTWYGLMUVROA
X-Message-ID-Hash: FNVNXRXOQFA3W2BW46KVUTWYGLMUVROA
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building rfnoc-example FPGA - UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNVNXRXOQFA3W2BW46KVUTWYGLMUVROA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4277408053901489736=="

This is a multi-part message in MIME format.

--===============4277408053901489736==
Content-Type: multipart/alternative;
 boundary="b1_BgvAfvdJK6XnagdUAy6oV0RWmaiCyIRhTQtiw9mL2M"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BgvAfvdJK6XnagdUAy6oV0RWmaiCyIRhTQtiw9mL2M
Content-Type: text/plain; charset=us-ascii

Hi All,

Is there an example on how to build the rfnoc-example in UHD 4.7 using the rfnoc_image_builder utility?

Thanks,

Marino

--b1_BgvAfvdJK6XnagdUAy6oV0RWmaiCyIRhTQtiw9mL2M
Content-Type: text/html; charset=us-ascii

<p>Hi All,</p><p>Is there an example on how to build the rfnoc-example in UHD 4.7 using the rfnoc_image_builder utility?</p><p>Thanks,</p><p>Marino</p><p><br></p>


--b1_BgvAfvdJK6XnagdUAy6oV0RWmaiCyIRhTQtiw9mL2M--

--===============4277408053901489736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4277408053901489736==--
