Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8B669CBED
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 14:20:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3873380C19
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 08:20:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676899226; bh=3unMJ6n51Iq1V9cpSDmluon6PPjt5gK2xEH70hQ6SFk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GgcizG+YWAwvtyevfcp3nuQ1E9htw1uQ5pf1dHwTF1jCwDVD3sdNj6LTBqF5hOcED
	 /LfjfBRI3OwfIYtgmcCCLxCfEyy2llLTSysG151f2+lgDBeqCfw4POscOdQdHUBS71
	 15MSqJD94IC+n6BqmgUlUuKo7dBC+I0+YSGgq6a2W41bEvBp3AWmGti+ArCscK5r+q
	 vPZMoX0Hn2/PDMFN1p7jwvO+H++Uxt07NQX5U8Q2vML5Gmr/B4wUfvPoPY7kNvXnCN
	 3eKLItpMMwm4gqorkln2DhDiEFImLcmrQXoLy8+egeWOClJaksmkQSTGT114bE5rAp
	 pUoMpIq6sFI5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C072A380C19
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 08:20:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676899220; bh=ZrEWlYHzeBrAvUti6RuJ3vht1XCuQ1/XKkCQ5eXhgxc=;
	h=Date:To:From:Subject:From;
	b=TIYXfZ8Hr/IQMkyrCFuZjszhnbCd+lNsVpbaUbWhge919H5bimZMTD5XRDibbWEAx
	 w0gDvHKtvfBWum/yTh6IPrGhmR0E+J3vmB7V7dGC3WrJXDucRd0nGG+C3HQskEDP4M
	 Fy3pen1QI9qUupi0CZU6QeCTo866pCaFbztFBCu0v1VdXwcU3ucn3SbHayWpqDZnyD
	 FdXKK1490g2uND5qnB6Y7X/lPsnazPcCOBecb+HWrSaNODg8IdlwW+sVY6oqxh8Ybw
	 +/Bj0MMhzuZr3qMAWS3SAEhPEyUDsTAJsBujxCU673qY3FT6u1AQlmIfQTkO7qZWhf
	 rfehhBEy0qMgQ==
Date: Mon, 20 Feb 2023 13:20:20 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <YqTjUfN4AxDgLJ6nU4B1SXzQ4KdtW09dM0ZNy9pOs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6AM5CVVD4P2ZR3F65A77HOS6AQDJEALJ
X-Message-ID-Hash: 6AM5CVVD4P2ZR3F65A77HOS6AQDJEALJ
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 + QSFP28 network adapter from intel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AM5CVVD4P2ZR3F65A77HOS6AQDJEALJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5876060938741740370=="

This is a multi-part message in MIME format.

--===============5876060938741740370==
Content-Type: multipart/alternative;
 boundary="b1_YqTjUfN4AxDgLJ6nU4B1SXzQ4KdtW09dM0ZNy9pOs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YqTjUfN4AxDgLJ6nU4B1SXzQ4KdtW09dM0ZNy9pOs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Has anybody tried to use QSFP28 network adapter from intel with USRP X410=
 and not Mellanox/Nvidia that is sold by NI for use with X410?

 Intel cards have some advantages over Mellanox. One of them is configura=
bility of the QSFP28 port to act as four SFP+ or SFP28 ports. But I didn=E2=
=80=99t see any reports how these cards behave together with X410.

Therefore if anybody tried to use intel card + X410, I would be grateful =
to hear how this combination worked.

Best Regards,\
Piotr Krysik

--b1_YqTjUfN4AxDgLJ6nU4B1SXzQ4KdtW09dM0ZNy9pOs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>Has anybody tried to use QSFP28 network adapter from inte=
l with USRP X410 and not Mellanox/Nvidia that is sold by NI for use with =
X410?</p><p> Intel cards have some advantages over Mellanox. One of them =
is configurability of the QSFP28 port to act as four SFP+ or SFP28 ports.=
 But I didn=E2=80=99t see any reports how these cards behave together wit=
h X410.</p><p>Therefore if anybody tried to use intel card + X410, I woul=
d be grateful to hear how this combination worked.</p><p>Best Regards,<br=
>Piotr Krysik</p>


--b1_YqTjUfN4AxDgLJ6nU4B1SXzQ4KdtW09dM0ZNy9pOs--

--===============5876060938741740370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5876060938741740370==--
