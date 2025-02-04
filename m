Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0198A274B6
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 15:45:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33CC3385CD0
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 09:45:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738680342; bh=ldrbIquMMIdS9osDkGS2Dd4hYDHrWOrjtOd+OxwKduU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=modjH4EGQcH54kbMonX0XDCZ3B2bhn66zdEC0CMJjdvzxMsNuL3XzE5aKLUvPNuqC
	 kU8Y9G24igtL4GDOfy4EutdHKDDVxjWzSRWNQMBJn6jbHVZt0cRGKNuy7uydoD2E5D
	 QiwxpJJJpVIbXMtm5RG5KiMNh7DFqrWB9AGxbD2qfoSRwWN7PH9FLb0xzMfF3ZevPm
	 OAH9rpXXVug1yFatSxoEiKeu2pIg09t4fvUhT9CpAgrwim8JrKq+w4R/HbHSV5SFn1
	 /lNpKM+omzEkSflAvTK4JFSO+AWE6dwHV3Ty7uCQLELoPW0iJ4JygMid0Ons8FQXRh
	 D7KhuXYAOc/jw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F314538562A
	for <usrp-users@lists.ettus.com>; Tue,  4 Feb 2025 09:45:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738680308; bh=ZIrRjhXwK5BAwwr9JHp2VGTOvrJTyAZziLzxYe/JWEQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mEUYHBGS56lDto5uLpYEeqL7hL9XpuzJB7uDM2X+doT6ReoOhSQywZ1JN4SM9jwzv
	 c+Zh8qgmzC3eT/Ff1RQPHC3qB9WOr0UXUpWXW5COY0rvfBumJBpamJJJI0VDlBGg6Y
	 Xrw8w4jWKQEKtHfthrlbWa7xUuT9WgY3aALBe+jqIXBsF6B52fHTagrQUO85JdIp7v
	 V/Frf83V2H9K6rmOr2AFklpuOfF1/VlWV6gn5Ye7ir82FMMg/fJ0xu4MEa4bo2WJBs
	 oiB/Zc4r1eCHv4W+C1wXT/hw9dhMJ9D8NW1jm110OHmoIKkcAlcmx7ffwKBXzEHfW1
	 F+beJJGA82Z3w==
Date: Tue, 4 Feb 2025 14:45:07 +0000
To: usrp-users@lists.ettus.com
From: pigatoimdeafrancesco@gmail.com
Message-ID: <zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 215f5161-4d55-4bf9-8464-36e13d89d0b6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: EMQLYILS6BEQT4U3IKGNCRJJVVI6BLON
X-Message-ID-Hash: EMQLYILS6BEQT4U3IKGNCRJJVVI6BLON
X-MailFrom: pigatoimdeafrancesco@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 not seen by uhd_find_devices command
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EMQLYILS6BEQT4U3IKGNCRJJVVI6BLON/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3513933346717211111=="

This is a multi-part message in MIME format.

--===============3513933346717211111==
Content-Type: multipart/alternative;
 boundary="b1_zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Marcus,=20

the output of =E2=80=9Clsusb=E2=80=9C is:=20

Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 005 Device 002: ID 2500:0020 Cypress WestBridge

Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 001 Device 008: ID 0b1f:03ee Insyde Software Corp.

Bus 001 Device 007: ID 0557:9241 ATEN International Co., Ltd

Bus 001 Device 006: ID 1d6b:0107 Linux Foundation USB Virtual Hub

Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

where the B210 is identified as Cypress WestBridge.

--b1_zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Marcus, </p><p>the output of =E2=80=9Clsusb=E2=80=9C is: </p><p>=
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</p><p>Bus =
007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</p><p>Bus 006 =
Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</p><p>Bus 005 Devi=
ce 002: ID 2500:0020 Cypress WestBridge</p><p>Bus 005 Device 001: ID 1d6b=
:0002 Linux Foundation 2.0 root hub</p><p>Bus 004 Device 001: ID 1d6b:000=
3 Linux Foundation 3.0 root hub</p><p>Bus 003 Device 001: ID 1d6b:0002 Li=
nux Foundation 2.0 root hub</p><p>Bus 002 Device 001: ID 1d6b:0003 Linux =
Foundation 3.0 root hub</p><p>Bus 001 Device 008: ID 0b1f:03ee Insyde Sof=
tware Corp.</p><p>Bus 001 Device 007: ID 0557:9241 ATEN International Co.=
, Ltd</p><p>Bus 001 Device 006: ID 1d6b:0107 Linux Foundation USB Virtual=
 Hub</p><p>Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub=
</p><p><br></p><p>where the B210 is identified as Cypress WestBridge. </p=
>


--b1_zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY--

--===============3513933346717211111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3513933346717211111==--
