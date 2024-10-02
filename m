Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CCA98DDDB
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 16:53:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DED3385923
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 10:53:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727880787; bh=btwdL9CjeW9KZtrBK43iE55BsstVshvAdFfXWfMkSC4=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=dx9tkCT6BMp3TX5Rry2XOW7RwHtsmxT/7Qni03kVumlp+IniVhD3ZFLDV8ZiG5O+c
	 jInwsswPyiun+7FnIXwaVwB25UcVuZ4x0d+LcR220SvfzmvISo+wBwwqUbUrnM07Kh
	 zcDJZKWsw4ZA5JQUVhQRuMalwBiiEd9E/mALzzDXEXoETMAJARtVcvjHDjfew/TL3O
	 K2p0P2ms3sfv1ThelYgTc7GbQmZxfeM8iB2AFjrsyuCT2VDBgMOnFrqHMZN2I13oTM
	 knhEP4cDso208jVDG7xor8qLK/tL9SToFse2o2qqJm92EL83zlWfzD862D6IJ0gXyG
	 rJXL1FjXmtkaA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB1F138586F
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 10:53:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727880783; bh=cdx1DcmynVZd4hbVn1TT7g3DZsNP+y7AhPHuqCQ9M0I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Vp4wz7KUlwvJqyeAcnOGY2QXb4sOUOPdub6XZvXnI7muPZtG6zUtm25s7rjKcutli
	 mZp9R3fYAuLJkRhWyel07i5REn0IRo43ngIVlQeQFLS7jMj/klHkFqfcpChDwqvMum
	 4zZAs2edVDI8iicJzBSrVHEwuiyGUubHLhG96Ho0CIAtTsAnEAzFw6zkMKAAuvjq2R
	 u6/m+/aiABybF79m0iodBQbKxu9WHkFEHvW5nwzNEGdJW6b/2FDFmOZYuAQb6Zvf58
	 VPnWLD0wcp+AfKbtRA2YVwmtC8ItKSM227/kVmWvfVsZN/oHF+VKoNAorugOuOuUlQ
	 bY30UanPyhryg==
Date: Wed, 2 Oct 2024 14:53:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <3quPVhpsyVgZV7EXW1sDrmu9h5zhY3X7HEh9txgbXj0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: C4CFEM665B3YGUEMGPT3RLCDFOLA24LD
X-Message-ID-Hash: C4CFEM665B3YGUEMGPT3RLCDFOLA24LD
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C4CFEM665B3YGUEMGPT3RLCDFOLA24LD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============6806797831313901267=="

This is a multi-part message in MIME format.

--===============6806797831313901267==
Content-Type: multipart/alternative;
 boundary="b1_3quPVhpsyVgZV7EXW1sDrmu9h5zhY3X7HEh9txgbXj0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3quPVhpsyVgZV7EXW1sDrmu9h5zhY3X7HEh9txgbXj0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

Thanks!   That actually does help quite a bit.   You hit perfectly on my =
main dilemma: Is it more straightforward to patch the linux-xlnx kernel w=
ith the UHD mods, or do I patch the UHD kernel with the linux-xlnx mods?

The fact that you=E2=80=99ve successfully added linux-xlnx features to th=
e UHD kernel to support the  requirements of both the ZCU111 and USRP cod=
e make my decision easy.   I was hoping that I could avoid having to find=
 a way to stitch the linux-xlnx kernel into the OS to replace a kernel th=
at looks highly customized.   I=E2=80=99ll certainly check out your repo =
for examples, and I=E2=80=99ll share the Vitis-AI-related meta-ettus patc=
hes on my github as well.=20

Great =E2=80=98git bisect=E2=80=99 tip!   I have been avoiding it for yea=
rs, for some unknown reason, so I suppose it=E2=80=99s time to see what i=
t can do. :-)

Thanks again for pointing me in the right direction!

Mike

--b1_3quPVhpsyVgZV7EXW1sDrmu9h5zhY3X7HEh9txgbXj0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>Thanks!   That actually does help quite a bit.   You h=
it perfectly on my main dilemma: Is it more straightforward to patch the =
linux-xlnx kernel with the UHD mods, or do I patch the UHD kernel with th=
e linux-xlnx mods?</p><p>The fact that you=E2=80=99ve successfully added =
linux-xlnx features to the UHD kernel to support the  requirements of bot=
h the ZCU111 and USRP code make my decision easy.   I was hoping that I c=
ould avoid having to find a way to stitch the linux-xlnx kernel into the =
OS to replace a kernel that looks highly customized.   I=E2=80=99ll certa=
inly check out your repo for examples, and I=E2=80=99ll share the Vitis-A=
I-related meta-ettus patches on my github as well. </p><p>Great =E2=80=98=
git bisect=E2=80=99 tip!   I have been avoiding it for years, for some un=
known reason, so I suppose it=E2=80=99s time to see what it can do. :-)</=
p><p>Thanks again for pointing me in the right direction!</p><p>Mike</p><=
p><br></p><p><br></p>


--b1_3quPVhpsyVgZV7EXW1sDrmu9h5zhY3X7HEh9txgbXj0--

--===============6806797831313901267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6806797831313901267==--
