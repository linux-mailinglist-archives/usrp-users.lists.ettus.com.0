Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 798CB7E6D83
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 16:36:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B2F2385672
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 10:36:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699544174; bh=+Y53FKEfMvZC38X2C5St8xaF35H92EBcglKBrI22U/E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dnZebns0XfgAomcYED0L1uJhRQPqxUdYW333EguyP6UfNTMGl4nngk+R8fcpO9rxr
	 yQTAd8UlJC3w1AnmLwdRU/MKebT9kUqNOE9FujAnLJbrilExHVnKB+DyRictQYiUUN
	 8mJOsO6huBWPLosbW/zUNYulqS+WW3FiwA6RJ1t8o3enVlRqE+44xmROZXVhXXYFlb
	 RRKp1qO0h3kv0iLHj8qv/EQxi1R0KY2BzAOlmyA+DnbpA9d695rYblz8v2hCyqGaHN
	 qZzEpTDUMabCy4mr6clJU7t0M9Bv+W6nCQEJmbR0mBL5Jh3VW3dX1u0rWPSjoOKaXZ
	 rvgA6jTPSX25g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3318385636
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 10:35:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699544140; bh=aKTTQjfoK9dm4gtlTkw4f/Yx2/zuIhPCNuwgmHtG6qY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lC4pbvM2sa3LCaf3wtkQySZHQpDxwWP3mtCSASMuoUPrwkrPGhUqfHDMIK3Kex2So
	 1hVKgDRDDo7NOQOBqCFaLVDpYZJ+GBsygEjohzjHvqCrPRW+aSlnq8G9Az4qPgIFRe
	 7/y7czV1fpmH3IPAr1p5JswAkUnOvqZLhU8G5ZSr2EF5ABdQuUjlfRkGMYkr8MGK1F
	 HFiYkkGpKCDkqVlzsmJDkRV0bqbiTNrk2t6Cjw46kG+DL4Ni/ujMerEeGXX0ydbBYz
	 OxpVQzbAS3YinHHHEpOQb7wcOvXPTK4uJWmxsbHPCQdm7qoRQBzGw50BBdZwcbaDiE
	 L/4O7oi7cAe9w==
Date: Thu, 9 Nov 2023 15:35:39 +0000
To: usrp-users@lists.ettus.com
From: dixitmn6@gmail.com
Message-ID: <EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b2eab66d-72f9-4e69-b152-9923c321608f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: KMBKIQPK4C7NZY4XNDWVSZQU6JN3ATK6
X-Message-ID-Hash: KMBKIQPK4C7NZY4XNDWVSZQU6JN3ATK6
X-MailFrom: dixitmn6@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KMBKIQPK4C7NZY4XNDWVSZQU6JN3ATK6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2838581959205431670=="

This is a multi-part message in MIME format.

--===============2838581959205431670==
Content-Type: multipart/alternative;
 boundary="b1_EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

The technical details for the issue are as follows:

Host Machine: ubuntu 16.10 laptop (with lan to usb converter) with uhd dr=
ivers with version UHD_4.4.0

USRP X310: The USRP has been rarely used. Previously the green light used=
 to blink on the SFP0 port, now it does not. The USRP x310 is programmed =
with SFP0 as 1GB and SFP1 as 10GB.=20

The SFP port has been purchased as accordance from [here](https://kb.ettu=
s.com/X300/X310#Guidance_on_10Gb_SFP.2B_to_RJ45_Adapters). The SFP-10G-T =
 with specs (10GBASE-T-SFP+ 30m) maybe this one <https://www.fs.com/de-en=
/products/66612.html>

The SFP 10G is being used for the SFP0(1gb one) - I think higher one shou=
ld not be an issue for lower data rate. LAN cable has 1gb data rate.

=E2=80=9Clsusb=E2=80=9D is performed since the lan to usb converter is be=
ing used.

Initially, the USRP was not being detected and the ip address could not b=
e assigned to the host machine. Hence, via JTAG the USRP was programmed i=
n default fashion.=20

Now, the USRP gets detected and the IP address of host is set to be 192.1=
68.10.1. However, pinging is not successful. The error is =E2=80=9Cdestin=
ation is not reachable.=E2=80=9D

Now, the issue is mostly a networking issue. But having tested everything=
 related to the networking as mentioned in the documentation, the green l=
ight over the SFP0 does not work and the pinging is not successful. Need =
help upon this.

--b1_EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>The technical details for the issue are as follows:</p><p>H=
ost Machine: ubuntu 16.10 laptop (with lan to usb converter) with uhd drive=
rs with version UHD_4.4.0</p><p>USRP X310: The USRP has been rarely used. P=
reviously the green light used to blink on the SFP0 port, now it does not. =
The USRP x310 is programmed with SFP0 as 1GB and SFP1 as 10GB. </p><p class=
=3D"">The SFP port has been purchased as accordance from <a href=3D"https:/=
/kb.ettus.com/X300/X310#Guidance_on_10Gb_SFP.2B_to_RJ45_Adapters" title=3D"=
">here</a>. The SFP-10G-T  with specs (10GBASE-T-SFP+ 30m) maybe this one <=
a href=3D"https://www.fs.com/de-en/products/66612.html" title=3D"">https://=
www.fs.com/de-en/products/66612.html</a></p><p>The SFP 10G is being used fo=
r the SFP0(1gb one) - I think higher one should not be an issue for lower d=
ata rate. LAN cable has 1gb data rate.</p><p>=E2=80=9Clsusb=E2=80=9D is per=
formed since the lan to usb converter is being used.</p><p>Initially, the U=
SRP was not being detected and the ip address could not be assigned to the =
host machine. Hence, via JTAG the USRP was programmed in default fashion. <=
/p><p>Now, the USRP gets detected and the IP address of host is set to be 1=
92.168.10.1. However, pinging is not successful. The error is =E2=80=9Cdest=
ination is not reachable.=E2=80=9D</p><p>Now, the issue is mostly a network=
ing issue. But having tested everything related to the networking as mentio=
ned in the documentation, the green light over the SFP0 does not work and t=
he pinging is not successful. Need help upon this.</p><p><br></p><p><br></p=
><p><br></p>

--b1_EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs--

--===============2838581959205431670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2838581959205431670==--
