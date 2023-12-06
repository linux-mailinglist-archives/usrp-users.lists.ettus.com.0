Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0F4807518
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 17:35:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 442E538536C
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 11:35:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701880537; bh=q239iJtpdhjuPIKpndJxL54t3enEkUbvQV/2M15N2OA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JCtlj5t0A5+Uw8Y8Dq8cQlk+CClKYRtlJkRBapcOnrWe/ph6L3vcn3X9Ml2O2FDs+
	 ccsW2QkfQmOht/U8+H2swJ/vVlcZV8uZszIn66XG52+YYLdMQfQrUwH+jLlAVIMEe8
	 g3kSmkHBtgpkfJYb67EYE3Xd23ypBft6RZZc8Vg90FX3XnK5QZyEQjVhOhMjTuyzeG
	 RMKjFu0CXFTsuf79/hFMa2ka53Q0Gm6mEuGxffmiCY61smjMiE3FLTxeH4WJvqn8Fa
	 Jz5rFf8mCx0DxD1JuJepaYLkh23WxBdvsr5caLDN9Rn1m3N+2mkYa1BKMREtaX0AbM
	 3YDoNDEb8r9sg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBC72384CC0
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 11:35:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701880511; bh=flUqJAZPSWGWRKcKOp9fdBzSyklw2iQplEC7AVLrmic=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=b814dlE2v7HZPeilqWuX0BKy0R82TX/YlSLi3FFNQQKSBnuGsPofblrH1WhAWP6vE
	 Hi/WBFeCNrgTv9Ll/oVj25ZK+NTUNt44VSFJVS/ER4jlC99ZOQPl0aj+HI3Y8AJ0TX
	 52in5v0ctnxyBTPczc6Z41RUoELL2WFvSgj2Q1QgnndlHN7xfd37x2CB7nfYy4rbT/
	 xtP8zqUKUNCh0rRGIuhThjPMj5uphF8UF65zHgqoFI76j6vbdMpwoRnYohQjuq0YNC
	 /nnyCDMMKG3Oayc/Zjyazpz1c6KMKfCL2mmHC6PQXBj78apJUreGIQGliccJCP/X24
	 0AAg0vKbRanVg==
Date: Wed, 6 Dec 2023 16:35:11 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <owcnVts86W0vHQAMbAvGg1GYyekGZHA2ozSbW3rrSEk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d03eed54-ccec-42e7-97dc-b87983bfce36@gmail.com
MIME-Version: 1.0
Message-ID-Hash: JMM2PYCGDKH47LXR5MCIEOVNFERAXNMW
X-Message-ID-Hash: JMM2PYCGDKH47LXR5MCIEOVNFERAXNMW
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMM2PYCGDKH47LXR5MCIEOVNFERAXNMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7849179276905462965=="

This is a multi-part message in MIME format.

--===============7849179276905462965==
Content-Type: multipart/alternative;
 boundary="b1_owcnVts86W0vHQAMbAvGg1GYyekGZHA2ozSbW3rrSEk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_owcnVts86W0vHQAMbAvGg1GYyekGZHA2ozSbW3rrSEk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Perfect Marcus. Many thanks for your honest feedback. I will follow the s=
teps you mentioned. According to my knowledge, my system have /dev/sda fo=
r the last lines. Still, I will share the output of my =E2=80=9Cdmesg=E2=80=
=9D.

--b1_owcnVts86W0vHQAMbAvGg1GYyekGZHA2ozSbW3rrSEk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Perfect Marcus. Many thanks for your honest feedback. I will follow th=
e steps you mentioned. According to my knowledge, my system have /dev/sda=
 for the last lines. Still, I will share the output of my =E2=80=9Cdmesg=E2=
=80=9D. </p>


--b1_owcnVts86W0vHQAMbAvGg1GYyekGZHA2ozSbW3rrSEk--

--===============7849179276905462965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7849179276905462965==--
