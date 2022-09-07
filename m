Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6655B0726
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 16:41:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA593385D7A
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 10:41:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561675; bh=J9YYsVL+MSt+M/tbFX6Gc2QD1j+UeDRUv6Zz/o2Cnyo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ektx7on2h+3D3Y6D33j0MVbDYlztdfu++lvhSA8B4CxTrOaMGwGHjhLTxs+gBLB/K
	 aWYmU2g5GklycuEAeyTlfdb57uT85rsDQzMLraRxWbc43D/dAGgvoYfazjmAEVn+Kz
	 0KEb5kJdQCO4aVL22iBktX3OKNS3d2yZazIFF5p4luIYxzTP4IPZFwuxJOc9ehnbbv
	 SIqYb7KkqH0oUZmGxEwLa9NAsPpptYYJTU7YfNmgWY9mzyI0JAsPyUWsizK6SPs6bW
	 3JjzKre4jtxpNfHguJd3Qa2saARHCMMP3AU49yRKhSBCYn+IcmvA+4RSXjGZxoPo88
	 1aPNrjNoROUOw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56E4A385312
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 10:14:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662560087; bh=XLZQ8kb9SAjK/OvWeUVWfDnvYJwAFOCutkDDAB6wV5I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mqI9a8mdXV71zMbwU6BY9p/GZQR6lPuEfyiBH2NcqbFtDLaEp4tM0umFWmGZKDgP9
	 iuH10Zbw7umvKDzwm05+eOSkTSsv1CADfxC5ht0lY8oRqbfMuBx/VYCA99qnIcUfs6
	 hZ21tI/6KmXpOXQdOetculwGnQ+hbh99uKAjASHfZy6VrxgrFC7uTGcCiW3+mXiEaL
	 nnYECaqR1DT2iUXktrNvvoZxoRbgoUqjs69A4XSBXsKX9rTquK1dKIpEMcNEzdBxFF
	 eK3FR5zyk1tfaVkYXdfYneOlfaa2Cy8QzT5n97i8l1kh+A5lJt1v/t8n48otZYoZMZ
	 tJMpGpWQR7M0A==
Date: Wed, 7 Sep 2022 14:14:47 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <BVo0xAhLYGgNrbZr2i8yotEU67B41GKGMLl2G9rHo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: aa32df8f-8205-b36f-3434-0892c4dd4bcb@ant.uni-bremen.de
MIME-Version: 1.0
Message-ID-Hash: LOOK3VKNQI7WOT4ZDXOZGMY5NYG24WKD
X-Message-ID-Hash: LOOK3VKNQI7WOT4ZDXOZGMY5NYG24WKD
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOOK3VKNQI7WOT4ZDXOZGMY5NYG24WKD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4369257164185836236=="

This is a multi-part message in MIME format.

--===============4369257164185836236==
Content-Type: multipart/alternative;
 boundary="b1_BVo0xAhLYGgNrbZr2i8yotEU67B41GKGMLl2G9rHo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BVo0xAhLYGgNrbZr2i8yotEU67B41GKGMLl2G9rHo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I can only confirm that I see the same result: 24MHz is working, starting=
 from about 24.5MHz there=E2=80=99s a lot of underruns.

My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X399.

Best Regards,\
Piotr Krysik

--b1_BVo0xAhLYGgNrbZr2i8yotEU67B41GKGMLl2G9rHo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I can only confirm that I see the same result: 24MHz is work=
ing, starting from about 24.5MHz there=E2=80=99s a lot of underruns.</p><=
p>My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X399=
.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_BVo0xAhLYGgNrbZr2i8yotEU67B41GKGMLl2G9rHo--

--===============4369257164185836236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4369257164185836236==--
