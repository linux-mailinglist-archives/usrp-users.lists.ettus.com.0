Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B396E773ACD
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 16:57:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7CF9383C1F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 10:57:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691506676; bh=t1jnqntXjP/xSmYXs6uZdpoEj1FEsSEyvASFvTHfw9M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xcaKNxvuhzNdz7IDepJyeWxxdOtUHQ8H8HRxc+r9bg+g1sY9eMebmVkZ64y3hEAkI
	 rRh5O0mGOYW1xj6g6p64n26QB6YKgC9Fy/SdM2QCtrf7VdlIyXI1aDW7ThjBNGqAOu
	 b+jahyvTHnpH3khfrprCzviMAWTDOYulsBG86n0l81vREFr9w3v4Vh586w1rQNoEz/
	 LRVBh1esUpgMmuwmUajDzkS4i2GX9Z7DPfBsqFfakF5FH1mYwHOo7f7ia7n5b0UzMM
	 epvPfF0Z/gM/q5bMjVkr54N2a94DwqAebLq5/DZAS1dtgbtYo39BNve2zVL81Mdd1f
	 tKtUN0STO6bnw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1572383AB9
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 10:57:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691506662; bh=VWJVQI0FO0mbdPvc/nJQ/GOmJbLziDIRJA6qc9U5c+c=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Sg5lrgxu4o3muEIzOJBEKUW5JTQWcRpYedK2w82XD2A8A8PCS72m/ZTPHX6fUX7AU
	 Tpd3lH3nBGFmmSLYk5i48WfB+E3GcNj5b34ojcy7C/r4iVrMWomrYNQMXcB9/Ux408
	 nxVBxlQeR3jQt0sQuSEtqrWdxhs3AJA/J2ausUcrYyLYpmxEasWCgwgoh8B7+/swzu
	 U+dbUEaOEcRzfHkrISr+Iab2VlyxAOlff1evPnTC98wVUFkaFONWKq9mMbuxSuXEbQ
	 F09Gmc/E3gcrBVZ0h71nQx72ac/P8CWK/h6gbNAUJ69ruF+FSzhuGMPfToGg9oKsvn
	 w8O72PFrijotg==
Date: Tue, 8 Aug 2023 14:57:42 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 4f95ecb8-812a-00dc-e8c2-c1cec8beb9f1@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QG6MO6OQ7EQLECQDDQZCHZULFJUFAMSO
X-Message-ID-Hash: QG6MO6OQ7EQLECQDDQZCHZULFJUFAMSO
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QG6MO6OQ7EQLECQDDQZCHZULFJUFAMSO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6876270430449829057=="

This is a multi-part message in MIME format.

--===============6876270430449829057==
Content-Type: multipart/alternative;
 boundary="b1_DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

I very much appreciate your help, that makes sense, it was probably the c=
ause=E2=80=A6

In regards to the bootloader image that includes EEPROM values that you p=
ointed out, I am going to look into the [files.ettus.com/](https://files.=
ettus.com/ "https://files.ettus.com/") to see if I can find any suitable =
image.

Regards,

Eden.

--b1_DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus,</p><p>I very much appreciate your help, that makes sense,=
 it was probably the cause=E2=80=A6</p><p>In regards to the bootloader im=
age that includes EEPROM values that you pointed out, I am going to look =
into the <a href=3D"https://files.ettus.com/" title=3D"https://files.ettu=
s.com/">files.ettus.com/</a> to see if I can find any suitable image.</p>=
<p>Regards,</p><p>Eden.</p>


--b1_DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY--

--===============6876270430449829057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6876270430449829057==--
