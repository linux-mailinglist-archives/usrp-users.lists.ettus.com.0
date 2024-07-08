Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D186292AC2E
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 00:41:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A727138508B
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jul 2024 18:41:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720478464; bh=HsWZQ9jpxapH6WNkSLiVyuIgw8BJ8bBZ7zY49VDrwrI=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=0zWzK5jx0RHx7p/Cp7xhJbHgW8AuHTPqdM0H0G9654OGZElEyZP3c+GgQt0UXkbrK
	 Rsp6soZXVftnlX2gtTB+cxvbet9o6Eknt+DDsBGSwymFTZLYb41JJ5UE+41EdLaVvK
	 5FwkprSzd94P5GVlgkWh/fnxahEYJhwCf8EFPfz81xa4z42NcV8A2sDTnhQ3zC6PH3
	 1RlWcaSlBrsFpNZkHWzMN2m8W4+y1W/+E5WSL3bwPnZHn6Un1iSf43ChLFeT8XG6qs
	 riCxNSFXjnHRMPVSlshesiWh/tozvDPi0rhX+elTBno4fWItOacyhrfv43NvLnSMGt
	 AzRz7tol/ppQQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DE8838097E
	for <usrp-users@lists.ettus.com>; Mon,  8 Jul 2024 18:40:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720478410; bh=0jtjkzuci1onfkT4Sm8hUnCWWmiKoYj30pEt0AOhZys=;
	h=Date:To:From:Subject:From;
	b=IYYw5wTQ1pq9l1UVervDdaP2QNf/qtHCJc+9QUcpLQmpgSpEZsP4KCJSxCP1gXcVa
	 PsHj4PJspxCoijDGnfxSQhomKzzsDLWe82hQ1+xvOgK7w7SfCMVG91cl8A+PzbEJ7T
	 8f/3d/epuxvb9Cj3ACmyeZwTwr4JKbJdpOoWnXgs3jqJVEgD/uhKYaC7M7QTZuFR5v
	 khGc4kML6BpTdq9DiCeviMNbck8DHa5cH2wcJZaWiwrg1T0GFjOnXBNntmdmCaR1Zf
	 MOtJHpg9HpOKpVQOkI8KuzP+ghcocflLwBULQ2sol8QPd6zyw6fh07TmD/RjoxIqF7
	 J8vC0O4O1l7qw==
Date: Mon, 8 Jul 2024 22:40:10 +0000
To: usrp-users@lists.ettus.com
Message-ID: <xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: K56J6DOKXLSNM77AZOM54PVELTL3IML3
X-Message-ID-Hash: K56J6DOKXLSNM77AZOM54PVELTL3IML3
X-MailFrom: hiroki_iwata@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] device tree and GPIO pin for x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K56J6DOKXLSNM77AZOM54PVELTL3IML3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: hiroki_iwata--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hiroki_iwata@ieee.org
Content-Type: multipart/mixed; boundary="===============2102762882404124027=="

This is a multi-part message in MIME format.

--===============2102762882404124027==
Content-Type: multipart/alternative;
 boundary="b1_xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am trying to understand the device tree and pin configuration of x4xx.

Especially, =E2=80=9CRFDC_POWERD=E2=80=9C GPIO pin.

Now, I am searching the python script(mpm/python/usrp_mpm/periph_manager/=
x4xx.py) and I found that =E2=80=9CRFDC_POWERED=E2=80=9C pin is GPIO pin.=
=20

But, I cannot identify its corresponding device tree description.=20

self._rfdc_powered =3D Gpio('RFDC_POWERED', Gpio.INPUT)

Where is the device tree definition for x4xx? =20

BR,

Hiroki

--b1_xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am trying to understand the device tree and pin configuration of x4x=
x.</p><p>Especially, =E2=80=9CRFDC_POWERD=E2=80=9C GPIO pin.</p><p><br></=
p><p>Now, I am searching the python script(mpm/python/usrp_mpm/periph_man=
ager/x4xx.py) and I found that =E2=80=9CRFDC_POWERED=E2=80=9C pin is GPIO=
 pin. </p><p>But, I cannot identify its corresponding device tree descrip=
tion. </p><p>self._rfdc_powered =3D Gpio('RFDC_POWERED', Gpio.INPUT)</p><=
p>Where is the device tree definition for x4xx?  </p><p><br></p><p>BR,</p=
><p>Hiroki</p>


--b1_xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY--

--===============2102762882404124027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2102762882404124027==--
