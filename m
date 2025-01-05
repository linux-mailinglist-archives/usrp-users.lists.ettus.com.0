Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB334A01C1B
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2025 23:20:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5976438610F
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2025 17:20:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736115604; bh=WMNvZImjRV+rljfpFUW8TukN6srkTCjn1/sfSGY3Ru0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YFMv2lVWQ2ZL5fgYhRQgxTqZdyv0k0UFmH61TrfNDjfZgURNAbe5SF1aPfLVM9+2Y
	 iBrklYclmk15Auvux5T5VTiIbZrokBwZ8SpcaORmU/E1Nu+wXIwih392NGeMqNW4l6
	 IEPStKQTiawOj5aFOyAQXCxbroIaWDl7v3TqsgwUMRNGacIW3gHcWzQZ3Xr0C60zPJ
	 WqfObZpmlydF3/yGhkW0TUWYq7hYN8uwDsIjj9l8okp6v4gXZFSciJmwLUsTn0RuJ6
	 CRfQUdvUFucfE5XP/tkafVSlQpGKU/ddtOx3S9XeNEf6fW1+MTvbZVe2ccu88MYnvS
	 x+U1CEnlaGt8g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D26FF385F35
	for <usrp-users@lists.ettus.com>; Sun,  5 Jan 2025 17:19:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736115561; bh=IIZqw8QSLrDWWcJPVImiO+tubXq5v2nrsribc7CKu6o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=n3OpVG4G50QKRyX1Y0wOsCLzyZPffmqNVg/WdQRRGtsUO2FjVAjZm3PeFKAYQMr3O
	 RTXTxVbiCa0PoYvnoNGzEFAQje3kwkSGPZQjTNNKykw2tRzeLGCLDcmmYLfCDaOqvd
	 8HxhckS2lNIOryc7YKX+8Uw4ZBxuAYOvNJCEcwBqwG4BLDSOghsYRoibDMErDB6PS9
	 rL6FonkFJtQm0GjOa5BnLHaInB4MhbtoeuViZJ6ED9feASazFk21+x/TPMJ6qDSEFV
	 yWhYCPaTDl6fUarjxFwCb82/TlYlJy35lZhihDp/Ya9gyeZKfilvtNvNMRO0uEHr5x
	 aDDcQvWMQZurQ==
Date: Sun, 5 Jan 2025 22:19:21 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Ps8hX65exJZMYvSf7aAWHhZ8y1GUl2q5ajmG71EN3U@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: D7IAK5GPEE3UAOMQO4Q3OBJVYLTEYPCH
X-Message-ID-Hash: D7IAK5GPEE3UAOMQO4Q3OBJVYLTEYPCH
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D7IAK5GPEE3UAOMQO4Q3OBJVYLTEYPCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4167871441557257734=="

This is a multi-part message in MIME format.

--===============4167871441557257734==
Content-Type: multipart/alternative;
 boundary="b1_cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI
Content-Type: text/plain; charset=us-ascii

I hope everyone had a good holiday break!

Would you mind providing some guidance on the 3 questions?

Thanks

--b1_cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI
Content-Type: text/html; charset=us-ascii

<p>I hope everyone had a good holiday break!</p><p>Would you mind providing some guidance on the 3 questions?</p><p>Thanks</p>


--b1_cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI--

--===============4167871441557257734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4167871441557257734==--
