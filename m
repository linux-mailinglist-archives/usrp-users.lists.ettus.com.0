Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCE4A2DBB8
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2025 10:06:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5802A385D6E
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2025 04:06:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739091963; bh=Ibk3QWhN+ReMAfgAV2hMNv+N/mj9LE1YMpeQuHuJNtg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=m38kgpK9xxKFRhAv4/6OeoNm1YFqsHum3kzZpu+NYOeJYtGnKJmTb51wasTIOrQaL
	 I5o3KAb1BsUQk7cVeR6qBbcnrZK3muN2QY6nQu5TOUZiInIzfu3y3B8RoQitivgi9A
	 8PlUxCFqY6c2J8GvXn77t0xr9V525OyRR44GFvcD8G3iUdloTlAekTrZCD1c3/EIKg
	 Gss//sSTFizfM3kx38sFP/kgF0rT+gz1WzhWJPJ1KQkQ9ZcYkkkRHGDC62nRlJVfzD
	 OvK1N9XXX5SmXx9NK3ny+oqSDusZXo8TMLxYIGmR2byCBBrvZcsHRuKP+bzBlfCPwV
	 PYa6w927f7Oaw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1909538555D
	for <usrp-users@lists.ettus.com>; Sun,  9 Feb 2025 04:05:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739091917; bh=O6/JWi9eu2o/Qpt9EnDALRb5E+FoPrzirf0g5qTEqB8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=tMrAYTTx+dNW1ubJ+7qLlUtlkUFpQaU5rqs/UnR0KrigVb1I9Vxr0p85tVZj6wbYX
	 Nbt92mwWMReeihorFJ5pgbzcCfF2NAGRQfVLlXJb8VROwHPk7VEx78D53/XDgdwzlM
	 8RFbQ3hFX2ctyrRQJJOxa4tQmpGx58m2RGUKaY8Zq/emvcKbMw3zOcZPmvKLUjcF9f
	 cfbKHQ9AlRHj74y6VBLvyFY73wM9jbjj7vzCj/Q9Yxdmm0VKuq4Wp2MkT5w+axXdR9
	 Cex0NPuU+B5J4wWUlqD5KmcXxN6uI1GOdw6bGMi5Z8QXo3QKbmt71yZZrrvLWWubLq
	 n5qkOGDoaBEvg==
Date: Sun, 9 Feb 2025 09:05:17 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <Jp02EzT8XlQK5hoOEHzyQ0B5FcDHGII4A2X9htdtYY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=grepcshXkRD+qb58GR6FaaFEDb4NeW=dMWgQCk6B2dMQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7CHQEEOT4VGJW4BP3VOXU3W3IUQIG3VA
X-Message-ID-Hash: 7CHQEEOT4VGJW4BP3VOXU3W3IUQIG3VA
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Front Panel GPIO to RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7CHQEEOT4VGJW4BP3VOXU3W3IUQIG3VA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0072317669605262649=="

This is a multi-part message in MIME format.

--===============0072317669605262649==
Content-Type: multipart/alternative;
 boundary="b1_Jp02EzT8XlQK5hoOEHzyQ0B5FcDHGII4A2X9htdtYY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Jp02EzT8XlQK5hoOEHzyQ0B5FcDHGII4A2X9htdtYY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I didn=E2=80=99t make RFNoC block - just some custom module that was conn=
ected to =E2=80=98gpio_out_fabric_a=E2=80=99 of =E2=80=98x4xx_core_common=
_i=E2=80=99 in =E2=80=98x4xx_core.v=E2=80=98:

https://github.com/ptrkrysik/uhd/commit/a6275494b173187b11205fe33b1fc937d=
477e9b5

That logic took LSB from imaginary part of sample and sent it to a GPIO l=
ine (which had to be set to **USER_APP** mode - https://files.ettus.com/m=
anual/page_x400_gpio_api.html).

I=E2=80=99ve been looking how to do that from RFNoC and it looked that I =
would have to manually edit automatically generated verilog files to conn=
ect the GPIO there (not very entertaining when you have to do that on eac=
h change of the yaml flowgraph).

However, the documentation seemed to suggest also possibility of connecti=
ng verilog=E2=80=99s wires in the yaml files. I would imagine that this w=
ould work this way: create some input for RFNoC block with unique name an=
d connect it to some wire that would be connected to i.e. =E2=80=98user_a=
pp_in_a=E2=80=99. After that in the generated verilog those would be conn=
ected together. That would be much better solution. But I never tried it.

Does anyone have experience with this? Or was I wrong getting impression =
it might be possible?

Best Regards,\
Piotr Krysik

--b1_Jp02EzT8XlQK5hoOEHzyQ0B5FcDHGII4A2X9htdtYY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I didn=E2=80=99t make RFNoC block - just some custom module=
 that was connected to =E2=80=98gpio_out_fabric_a=E2=80=99 of =E2=80=98x4xx=
_core_common_i=E2=80=99 in =E2=80=98x4xx_core.v=E2=80=98:</p><p>https://git=
hub.com/ptrkrysik/uhd/commit/a6275494b173187b11205fe33b1fc937d477e9b5</p><p=
>That logic took LSB from imaginary part of sample and sent it to a GPIO li=
ne (which had to be set to <strong>USER_APP </strong>mode - https://files.e=
ttus.com/manual/page_x400_gpio_api.html).</p><p>I=E2=80=99ve been looking h=
ow to do that from RFNoC and it looked that I would have to manually edit a=
utomatically generated verilog files to connect the GPIO there (not very en=
tertaining when you have to do that on each change of the yaml flowgraph).<=
/p><p>However, the documentation seemed to suggest also possibility of conn=
ecting verilog=E2=80=99s wires in the yaml files. I would imagine that this=
 would work this way: create some input for RFNoC block with unique name an=
d connect it to some wire that would be connected to i.e. =E2=80=98user_app=
_in_a=E2=80=99. After that in the generated verilog those would be connecte=
d together. That would be much better solution. But I never tried it.</p><p=
>Does anyone have experience with this? Or was I wrong getting impression i=
t might be possible?</p><p>Best Regards,<br>Piotr Krysik</p>

--b1_Jp02EzT8XlQK5hoOEHzyQ0B5FcDHGII4A2X9htdtYY--

--===============0072317669605262649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0072317669605262649==--
