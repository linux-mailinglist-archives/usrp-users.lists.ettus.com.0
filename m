Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F1A792C3F
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 19:13:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B640384DA8
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 13:13:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693934024; bh=aK2O1BiZ7LS4Y7g3JnhB4oHP9JRgOozt6orbFMAB3rI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eiz3eL+gp2KfrnD0vjK3QJPfPVVXoeKBDsaIOgHXtrZrfbVVQdeKTDIAe0/vexVo1
	 hBJekpUI5bssaQARt+JlGYfk6Fk8EhZWsxPu6Fr1RSR0n4Tas3BUZ10MLFJyGuhtkY
	 +SkGcug/0et9dNpfMh+GRivk7eleAFnjIEULgeiQlLEB5I6qvN0gp7D8W+7VgU1f61
	 UJBxxCknba0r5LB+AuHsyFqGVqVCm9o2HTCAC3DyAgYgPABzqKEjKnv3x0t6XZw7ek
	 V1Q0pa/E4l/Fbvoe/9oAliA4plw6ozvsuIQrPNANFU0czcn2Ilda4o8uYbQmyU9Mqj
	 8TCQFnpFJnahw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7FA3384B52
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 13:12:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693933961; bh=GauUgk7ZozVV4g29Xc2QCrtA0kRc8IHkbCTlRYpq1gw=;
	h=Date:To:From:Subject:From;
	b=hGwkfVsXLwW0xX5kOz0a5ErBq9FRbs9iX7ee4Ld9F9UY/1aV1lq8CJx+L7IVgeRVI
	 XC0vsVxwJEwuYYdJMZ+bpx9L85RkosV12cP13VRvEOQVff52Fz512u/rNL+EJ1h2a+
	 0Ex27rLcPOIpI3qHGBGWGvoVkyOxhvTNqiXZmzcGaTcdkbUxFxDe6XrAEIncBHTbXd
	 XtuY6Q8YnonLEYcjGGbfZQgfTAQI0g11mJqhocH+9jvIG2M362zaC0KHKs8E4ON3GH
	 sJcAqL8tNZS+8qOMRDAZ3eddDg9qI9VX1BLvt+/q3+EatADcKWzS/bU4Y3RDZmE1L+
	 R88tSBGIE5w8Q==
Date: Tue, 5 Sep 2023 17:12:41 +0000
To: usrp-users@lists.ettus.com
From: blakebaldwin@uvic.ca
Message-ID: <S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GCLDIXBRNSIAALILAEOK6W6VFQ4ALNQI
X-Message-ID-Hash: GCLDIXBRNSIAALILAEOK6W6VFQ4ALNQI
X-MailFrom: blakebaldwin@uvic.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCLDIXBRNSIAALILAEOK6W6VFQ4ALNQI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6856191397994944316=="

This is a multi-part message in MIME format.

--===============6856191397994944316==
Content-Type: multipart/alternative;
 boundary="b1_S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI
Content-Type: text/plain; charset=us-ascii

I am trying to get the GPIO pins to toggle when transmitting for both channels on the b210 however I am having difficulties as channel B is not toggling the ATR which controls the pin out. I have gone through the commands which select the different sources and banks to control the GPIOs but usually just get a "not implemented for this motherboard" error. 

If anyone has experienced this problem before and has any insights to how to solve it that would be greatly apricated.

--b1_S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI
Content-Type: text/html; charset=us-ascii

<p>I am trying to get the GPIO pins to toggle when transmitting for both channels on the b210 however I am having difficulties as channel B is not toggling the ATR which controls the pin out. I have gone through the commands which select the different sources and banks to control the GPIOs but usually just get a "not implemented for this motherboard" error. </p><p>If anyone has experienced this problem before and has any insights to how to solve it that would be greatly apricated. </p>


--b1_S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI--

--===============6856191397994944316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6856191397994944316==--
