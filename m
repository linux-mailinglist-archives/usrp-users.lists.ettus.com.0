Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B206218F9
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 17:02:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B36A383924
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 11:02:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667923351; bh=Yt+JgmP2Rq8qx4MecuSDaZEaJ7QoJTUeBAsKU5AYGmI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qSAKzeCXeXp/quN8w/Vfn1iovmYz8ycL+s1VfqUZgzhLs4em69Y02hAwrPTsMKvy9
	 1DO+Z1+ebRqTcDxiCA6fXgKRtc4LfvTlun8lW8pt+ojIl8W0mSM62lPa5tBKT7PlYy
	 08ld0OMtzJ03w8Ji5HR3WSTG2DrUYrPOeODWLUi58JP0Gzo3x/6iEpaUTU6aqXTyu2
	 Msx7O75ki8iczG7iV8fFMkwsrD5DugAeeir0znnEJaRHRql22k98pHeTc3Q6phfe+o
	 SpclLRerWRXN65kjk4NN97fu3w/n3FHCH56X9yS/p0cocJk6RHFhi2MRBUU1YuolLy
	 h6AB/3nUbHSPw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7E6E38375D
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 11:01:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667923290; bh=XWnOIE81PxmpMY25KfGfhHQ1oFbxo7Bi/GMqmaba+xg=;
	h=Date:To:From:Subject:From;
	b=Lm+gErjGz1aTPoTuyICYh8didACbkvBIZ8Ie6Fm6Y008lXenzEqiKd9E1AZQLHF46
	 4mpsFWzX0kXVnPDTjle1GNgqeNNbJLS54Gq9/+0OSEGtVIUy9p2Scmv6cLI/evPsUI
	 0hCAoaW1cQ2DgAdppXKqou+clgRKHgjE/zCJZ8MHYE9eWnJRNNhcmGsMXx0jQp6VzP
	 4NqlK/g4ma5iQZaX6qJCOFL1QH7/h96bmRcvtoXVEYBAJEr7KmRNJGFULb4XlB18Tt
	 KwViPICF4ZIZiGal8Lef4PXrb0O2NpCIoYGmse44/vMMxiTGndi0c7MsEd5W5PT5x4
	 j2nLRYiLeA9kw==
Date: Tue, 8 Nov 2022 16:01:30 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: X5XT5CCLPO7VNFHDUCCQFH4NYZVRXD5A
X-Message-ID-Hash: X5XT5CCLPO7VNFHDUCCQFH4NYZVRXD5A
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Custom FPGA image "version" register
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X5XT5CCLPO7VNFHDUCCQFH4NYZVRXD5A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2802710089706154170=="

This is a multi-part message in MIME format.

--===============2802710089706154170==
Content-Type: multipart/alternative;
 boundary="b1_DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I use a modified FPGA image on a few x310s. Is there a convenient mechani=
sm for writing some kind of versioning to a register on the FPGA?

The specific problem I=E2=80=99m trying to solve is I have a lot of USRPs=
, and I would like my application to report when one of the radios it con=
nects to is still on the base image. My application is compatible with bo=
th images, but gets better performance with my custom image. I run into t=
he issue where I don=E2=80=99t know when I get degraded performance becau=
se somebody else reflashed it, or if there was a regression in the applic=
ation code itself.

--b1_DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I use a modified FPGA image on a few x310s. Is there a convenient mech=
anism for writing some kind of versioning to a register on the FPGA?</p><=
p>The specific problem I=E2=80=99m trying to solve is I have a lot of USR=
Ps, and I would like my application to report when one of the radios it c=
onnects to is still on the base image. My application is compatible with =
both images, but gets better performance with my custom image. I run into=
 the issue where I don=E2=80=99t know when I get degraded performance bec=
ause somebody else reflashed it, or if there was a regression in the appl=
ication code itself.</p>


--b1_DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow--

--===============2802710089706154170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2802710089706154170==--
