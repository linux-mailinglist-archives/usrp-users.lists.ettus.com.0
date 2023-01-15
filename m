Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E56C66B4C4
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 00:29:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 154B5384325
	for <lists+usrp-users@lfdr.de>; Sun, 15 Jan 2023 18:29:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673825389; bh=9/CRqtgclWfm3e47s/bZxqSiHTPwRPQj7lZl27vRnQI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SfGOxBwE91n3d/KnY+fP22s0RMgnc5GXw/SdJ8P6tHekUWM80ICfolIWAZ+fQTODG
	 eK4TtOce1GIdX0h0qhQwnARxOusqXBmNntOPHasOYfnAMEjIhwR0vWtitudv27OTI8
	 Y1q3hTuuXV728TBcOWM3bchfBwr1mTqekp89zkJIBABvxdgqdXwyRsxgqjeohgXvtM
	 qmjodX8VJtVnNH2FVfTG/wNMrRdhwcLKN1JoTAMBQMTJAV2G/ILvZcPDvHIGZZIpcJ
	 PaDaAQRMpPrJfVJdvgLWHFPIepRRYIDzcaMOzt97XsjmSkm4EnuIB+OevrwjLcLJ41
	 bUdgFV9E8RjOw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F39883842B4
	for <usrp-users@lists.ettus.com>; Sun, 15 Jan 2023 18:29:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673825341; bh=9hzb8FXp8WJEozOCxwOGC4RRBwrQVHi7ca9q/+huQG4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Alfw7OAj+uUcBX58wTFh6TwLKZR3hDBGn7wFY6LKT8x2uVM0c3UCxCCbWL2RBK5H9
	 rxaRhGdkLmhbN6FXsMd+pOd/qTkUK2nneVasoUObLJQI0s9iFg9nUpkR5B7se50WTj
	 RibMfFCl+xH00mQGrIgsROQRzFrmx7PM7EREx9YJpMBcsXXJcTJO7SQFpZToNvghK/
	 EK6p5YMyPNzm92LGpZUBSvKmQu43I7XB7wwyHcvcgtCRZVzdkBrFx0En5irjVjn/Y0
	 BgDL6EKGQpIDXXZb4QPGbG3BAVtcTfg6GS7oDi9h6OOyG2MNXp4Qib1n5n3jUmVthO
	 NyHk3/Ssuv2Rg==
Date: Sun, 15 Jan 2023 23:29:00 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <Y9blue8LlVR1tta1fjWJk83caZjfXehWCQEFMp9ZXw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 88DQeJqOrnKcbKotr03RiYXO3RiObicJIRSCjp2R02Q@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: GH2LKZWHAJ53X2N3IM7ZVCHL3ZGHPKOP
X-Message-ID-Hash: GH2LKZWHAJ53X2N3IM7ZVCHL3ZGHPKOP
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GH2LKZWHAJ53X2N3IM7ZVCHL3ZGHPKOP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4627555090386276970=="

This is a multi-part message in MIME format.

--===============4627555090386276970==
Content-Type: multipart/alternative;
 boundary="b1_Y9blue8LlVR1tta1fjWJk83caZjfXehWCQEFMp9ZXw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Y9blue8LlVR1tta1fjWJk83caZjfXehWCQEFMp9ZXw
Content-Type: text/plain; charset=us-ascii

All up and running, cross compiler working. I used the images downloader to get the sdk, which retrieved the correct version.

I can now mount my development tools to the e310, and run UHD off of my laptop, allowing me to do development on the laptop and run it on the target.

Should keep us busy for a while!!

Thank you!

--b1_Y9blue8LlVR1tta1fjWJk83caZjfXehWCQEFMp9ZXw
Content-Type: text/html; charset=us-ascii

<p>All up and running, cross compiler working. I used the images downloader to get the sdk, which retrieved the correct version.</p><p>I can now mount my development tools to the e310, and run UHD off of my laptop, allowing me to do development on the laptop and run it on the target.</p><p><br></p><p>Should keep us busy for a while!!</p><p><br></p><p>Thank you!</p>


--b1_Y9blue8LlVR1tta1fjWJk83caZjfXehWCQEFMp9ZXw--

--===============4627555090386276970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4627555090386276970==--
