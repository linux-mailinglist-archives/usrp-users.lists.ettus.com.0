Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281AA23104
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 16:31:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FEEF385E1A
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 10:31:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738251108; bh=4HOhU5s1P2jlHBxZbENkEz8ntcerzXD4PCcNu3gQ2Ho=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VXtggmZQDi0nDgwCWxoTGTqtl/+gU1yZtN71uCY5K8tAJ3BCodq8SZSEREu6IuoMF
	 OQSFi0OmvkDSSXJmKkYBnK0LwgbFBSo3pia8LC/HTayCKQ5PX/HLIjeZpMDZvETLGm
	 o+tZu4+19fjFjPFjEBUEjtyQYXqbi/Gcxf54F0hujah9y74sTBbaJO0x+xgEkYi0C8
	 ILIxESp4U0Dq2T0EtJ+yGUCw4KIAW9fyL7lxsW0BPQ7nCBun6cjNgS1zKur/slRpJh
	 UDeMQFWAfK0H7XEWFYfXTNGDxOXdmFX/Vwg1tNmCU/Kp4H7aWWPNQUE9K2K1pp8+qp
	 zXh5AePj9PqYg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59545385966
	for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 10:31:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738251064; bh=HfiPyBHNxO9YkjzXUrNCBqFEnf4DKW/+c65Qx7I7UiE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=foQjHSzqdiFilOc9KCIeUGGJzdgYBiIJ8eEMvwWGYNQdhgrrF5sn4NZ6heWo0rRmK
	 Fz1s3qNQ7apKz+oDk3emCZa8Mo84FYBD2X/8M7Shh5HDP40xQUsWC/mj6z3Th7fhjQ
	 6iWROYN2sYKnja4pnBJxbRBMolnW9f5nnHea3IfQ8E3mEVsxXSixETt8lm/qFRIx0m
	 y5qKxPxCIX1JI6eRtmFdTWSXvP7vh2/hzCCl546LLqOg/Pf+38Lz/2COJdXP8NyKOu
	 3n0bKcsybfpDZ6Xep6qw2eTIxRFgFO4I0XN6VN/nl9xrgTU84prXY5HAL3pYrmQU9l
	 QEQ79BckAX/GA==
Date: Thu, 30 Jan 2025 15:31:04 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <ZIeZOtIkJgxGMZ2GDKJb6zZDeut77NKUhJ3ojIi7aY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: f9tCu1L4OpqSQWZNRpYPu4A9ZArNKGBe1A7xujVic@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: LTME4W6FL3IHENW5RSRDPKAQXZNYFEZC
X-Message-ID-Hash: LTME4W6FL3IHENW5RSRDPKAQXZNYFEZC
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Image Flashing Problem: "Error: RuntimeError: Device reported an error during initialization."
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LTME4W6FL3IHENW5RSRDPKAQXZNYFEZC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7978238366563140735=="

This is a multi-part message in MIME format.

--===============7978238366563140735==
Content-Type: multipart/alternative;
 boundary="b1_ZIeZOtIkJgxGMZ2GDKJb6zZDeut77NKUhJ3ojIi7aY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZIeZOtIkJgxGMZ2GDKJb6zZDeut77NKUhJ3ojIi7aY
Content-Type: text/plain; charset=us-ascii

Please ignore my last post, Unfortunately there is no way to delete it. 

Basically I was remotely accessing the wrong USRP, the one with the above error has a hardware issue. This is why the loader is not working.

--b1_ZIeZOtIkJgxGMZ2GDKJb6zZDeut77NKUhJ3ojIi7aY
Content-Type: text/html; charset=us-ascii

<p>Please ignore my last post, Unfortunately there is no way to delete it. </p><p>Basically I was remotely accessing the wrong USRP, the one with the above error has a hardware issue. This is why the loader is not working. </p><p><br></p>


--b1_ZIeZOtIkJgxGMZ2GDKJb6zZDeut77NKUhJ3ojIi7aY--

--===============7978238366563140735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7978238366563140735==--
