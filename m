Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE9E53597A
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 08:38:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65E55384ADB
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 02:38:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653633524; bh=R4Y2tNt01SypbpVTamLtNo2UbqbWOm3xrP+TLkVI4EM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RjrReX3cWzYNAeXqK7pXKS8UiX54+5QRZ/Qs0+eV2+c/u+4+OaZVxCWy4BCzWAcq3
	 7lZsvA7NP+94FNlu06esEmtIeb7Kaa5T4HiBn9WJcV0c9t755LaKtMDbajIWSdxI+4
	 s1IVX7iuY95ZNlGQ4q6UQYY015KdsA9shm650HQkgzk5BbXLON9beTiSeB2RNlYVV3
	 4OucbQt89tSUFWv3jVBdY1c77/cp0hQAHhZfzp2TkrEO74ogDDIwJ4IBxZaTc/oR5e
	 v5OZqcrPfOOWmevDLhlz5TDC3YecYwfkZCVQWu0jWXAe9Nj/tSzOxOfo34OMVzDdj4
	 wFfSOMUGcRM/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FB1D3848D9
	for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 02:37:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653633455; bh=E3YVCt0XIe1dCHn27za/TZ8JqquNcreIcOUyvBO61Es=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ml6i/DnirB3kBgSS4RyIflzUefCRrpR56ky6k2dJN7qUU9dT4Wb9tJ/0WgvUvaxe4
	 tl3i7sGMFYjqhGlgk46fWd/3IkeUTOWIF1xcznoMdi6am2rtWUNt38P3z8XmGSHp/U
	 gkTlhPQNCjywSKsvUlJzUbc7qzexx48ahehLgdgWZnX2+JTN4Y9cevJHvF26Xm8q69
	 7N20wkQwKHAaNOW7sRKmCtANS3f7llEo1cijzWZgTJw1PRLTCjGk8JP3h/7tLC4EEM
	 kdzelKUoWLHzUV2gnoZuAIq0O1c6Ew0rsGc5L7l4gl7cehqQT70oxIJ+KQYXLHKrLL
	 w6CtURqpq3vsg==
Date: Fri, 27 May 2022 06:37:35 +0000
To: usrp-users@lists.ettus.com
From: luca.vigna@argotecgroup.com
Message-ID: <fgFF4uM4ohWGq9ABCjfUgMPhC20YlSqchZeiRkySFs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=j7a3TpJcqM1aufQCnSOMRm1sL4Xux8Xf1kBDvoYzc1zw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2C7RPKF3NAYANJQYPZUVWO3ZHLOWKY5X
X-Message-ID-Hash: 2C7RPKF3NAYANJQYPZUVWO3ZHLOWKY5X
X-MailFrom: luca.vigna@argotecgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 DDC - Filter Taps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2C7RPKF3NAYANJQYPZUVWO3ZHLOWKY5X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0340537065632336577=="

This is a multi-part message in MIME format.

--===============0340537065632336577==
Content-Type: multipart/alternative;
 boundary="b1_fgFF4uM4ohWGq9ABCjfUgMPhC20YlSqchZeiRkySFs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fgFF4uM4ohWGq9ABCjfUgMPhC20YlSqchZeiRkySFs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you all,

everything is clearer now, that=E2=80=99s what I was looking for.

Luca

--b1_fgFF4uM4ohWGq9ABCjfUgMPhC20YlSqchZeiRkySFs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you all,</p><p><br></p><p>everything is clearer now, that=E2=80=99=
s what I was looking for.</p><p><br></p><p>Luca</p><p><br></p>


--b1_fgFF4uM4ohWGq9ABCjfUgMPhC20YlSqchZeiRkySFs--

--===============0340537065632336577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0340537065632336577==--
