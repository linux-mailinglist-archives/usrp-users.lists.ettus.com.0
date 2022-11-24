Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C18363805D
	for <lists+usrp-users@lfdr.de>; Thu, 24 Nov 2022 21:55:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D838384243
	for <lists+usrp-users@lfdr.de>; Thu, 24 Nov 2022 15:55:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669323321; bh=fviIdtkTRm31FDWI94rKkngh3w2KasTSXkLYETi9NBs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Xpq3ydNjODtWZSWzzt8JtvWZUPgmEGE3ee5tVAngU/dUnJGQBpg51IrLenZqV5tO2
	 IbGUWO+yVWzJUm7OtvUoD/4tHQ6U9PfsCaJzgeLRPIlX7owrYub9cSz7ZOunmY9R3f
	 Ud+ZdFAZHKhFt3sG+vXMj5NGqsEEFeRXpG2CAjvyUygTUzNeuJPaEygBueuzjPF/FW
	 Zc4VryNiZ5eh1aLxe6y/qWzJF/jqd7BEx3IISKtCJXrSS4hqnKuZEcwoXWabGK46E2
	 4ULdw0JMOXNtaRMqTo3W5riHMPpxyxq2qJA6sonpwDsZdPm+m0h8z4cEQRjzN2C7ai
	 go53eFNcNLFlA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C91EC38443B
	for <usrp-users@lists.ettus.com>; Thu, 24 Nov 2022 15:54:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669323240; bh=GAFv4oMthpE0+kBkHE7smunPGn3GrZ4Wp5y7zc3Tw7E=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HAchCz+kjrY7KSH5G6t5t4sLm/388+8TxuB899l28efpTK4SABfwkIRDGP1L/jNj0
	 gu5kiEl5hE71T2y5jZeDzfK1OhFPaGsq0M33+Ax3dfKILf7bZ2MAWiIFDmx9hheLTx
	 R6biy4lofjYxWomLF4nOqhSkzusl3Bu1fcyI5Ko2ZbdP4ky9qy+XzJAqHuVp6Bz1Ey
	 IhvcCzaMgCAmaNxGS5NY54J4451jwbrW8M9hUPQQc4izbpUSP6tsFjf9zpdRCJnHnF
	 rtYBULr9Cw9y738uSf8lzmn40IrOwey/dJQ4E5NXJq5aDXRlXPA5Slmg0V/8LLIDQM
	 3qClU41SxcJ5w==
Date: Thu, 24 Nov 2022 20:54:00 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAKHaR3m0WR9pZyjoeom2eUAmbPc-J_9y=+pSuUF2CpzVvNTn=g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ISQRDN5WCZYHX53FLPX4MGRCPWBH5KID
X-Message-ID-Hash: ISQRDN5WCZYHX53FLPX4MGRCPWBH5KID
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISQRDN5WCZYHX53FLPX4MGRCPWBH5KID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4119656182689794783=="

This is a multi-part message in MIME format.

--===============4119656182689794783==
Content-Type: multipart/alternative;
 boundary="b1_MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

There might be some changes needed in the source code. I=E2=80=99m not su=
re what exactly (maybe prc_clock_map should be changed), but it seems the=
 configuration for 100MHz clock multiply (3e9 sample rate) is still prese=
nt in x4xx_sample_pll.py and x4xx_reference_pll.py.

I can try build 100MHz version for you if you need it and if you are not =
afraid to modify slightly UHD code to find out what exactly might be miss=
ing to enable 100MHz support again.

Best Regards,\
Piotr Krysik

--b1_MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>There might be some changes needed in the source code. I=E2=
=80=99m not sure what exactly (maybe prc_clock_map should be changed), bu=
t it seems the configuration for 100MHz clock multiply (3e9 sample rate) =
is still present in x4xx_sample_pll.py and x4xx_reference_pll.py.</p><p>I=
 can try build 100MHz version for you if you need it and if you are not a=
fraid to modify slightly UHD code to find out what exactly might be missi=
ng to enable 100MHz support again.</p><p>Best Regards,<br>Piotr Krysik</p=
>


--b1_MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE--

--===============4119656182689794783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4119656182689794783==--
