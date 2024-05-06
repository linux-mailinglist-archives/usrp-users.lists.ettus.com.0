Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6578BCEF0
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 15:30:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8B28384FBE
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 09:30:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715002226; bh=cQq7xm3Hx6KsFQE97TWsub9DuB9p0Tu/c+5t/of8qXE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Hc3DQF+l9vlBV1Q4f7vGbik5dTD6JZrZMVN+z+sce+bZQoNQdMCvisQZ+teG/e3W2
	 /+KyXLAIytz8cs4VG8mfCoDXYqvJQuYD39So80Vd61QEvhVfmxDPYvi9Q5uniePKQJ
	 JbRIuRqcXHPbWskoc0+RSGP1vQqM2N9FPG56HTVtMK0QvJQ8TaPYg7CgyzK8e0ByYO
	 nLpHTt/z94m2UyRBHmrZ2UuHODjIZu+r8bqcH1Xrf7lyuz4ElqXtwIxhCCQlw337km
	 BY70kj09PMGPPp8WqbL/c0F+wM8Nk1bl7Zprk6t52jrOIkm6wuuQildBJzK3L2iRGF
	 p5g81vL2P8fQA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A99A1384D90
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 09:29:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715002164; bh=V1Zg2L6p6ViHuTUGcyzAWB+tSgSnVFfHDQyA4hd+Dtc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oBY6TnRKyd0eEjUvuf8F40Gj6axSfPTpxLPcDtXm8abpK7Y0rGCamFPziNOpZj6tw
	 LxjA5104nptIFbnVrzyqJ5CzFW36sG004De4SdQGodzGyCyoixoBs1RtSxcN0BZM6s
	 sjPanSWrVqguJUNqveSO01eeTL87fKF9M4FGMapFdIMb4rUZsxNVGtEzHIqMEIKfrr
	 uHWEAr3j864OiN8fEsSolG9IE0If3MK5XUE4A8mKrAGtxSXAETN+l4Ecvco7T++Si4
	 XPMhjhwx0WLJe9P1Au2M5sJ3iEJt6kOoV4MkSRjWjvsl45IyPomCXJjopIGs8KKulG
	 DfvI7EHj+o+dA==
Date: Mon, 6 May 2024 13:29:24 +0000
To: usrp-users@lists.ettus.com
From: ettus@basti.rocks
Message-ID: <Se6DLJAlVXBlO09uwQtLmb8z3jdc3ac4iIfpygP9g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: LSGJxDDsy4QXMcwYn1TUlS3rs5jdW6Ps0ZXdYDNE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: FTGZYFCZH5L7W3PIBV3RUU223OFRHWWY
X-Message-ID-Hash: FTGZYFCZH5L7W3PIBV3RUU223OFRHWWY
X-MailFrom: ettus@basti.rocks
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK error : net_mlx5: port 1 empty mbuf pool
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FTGZYFCZH5L7W3PIBV3RUU223OFRHWWY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8011698576630783141=="

This is a multi-part message in MIME format.

--===============8011698576630783141==
Content-Type: multipart/alternative;
 boundary="b1_Se6DLJAlVXBlO09uwQtLmb8z3jdc3ac4iIfpygP9g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Se6DLJAlVXBlO09uwQtLmb8z3jdc3ac4iIfpygP9g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey there,=20

can you try to remove the =E2=80=98dpdk_num_desc=E2=80=99 options the the=
 uhd.conf file?=20

I can reproduce this exact error with the line in the config file. Otherw=
ise please provide more info on the device and FPGA image.=20

Additionally: If i call the uhd_find_devices command with the argument ty=
pe=3Dx4xx at least the \[ERROR\] \[X300\] is no longer there (assuming yo=
u have a x4xx device).

Best Regards,\
Sebastian

--b1_Se6DLJAlVXBlO09uwQtLmb8z3jdc3ac4iIfpygP9g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey there, </p><p>can you try to remove the =E2=80=98dpdk_num_desc=E2=80=
=99 options the the uhd.conf file? </p><p>I can reproduce this exact erro=
r with the line in the config file. Otherwise please provide more info on=
 the device and FPGA image. </p><p>Additionally: If i call the uhd_find_d=
evices command with the argument type=3Dx4xx at least the [ERROR] [X300] =
is no longer there (assuming you have a x4xx device).</p><p>Best Regards,=
<br>Sebastian</p>


--b1_Se6DLJAlVXBlO09uwQtLmb8z3jdc3ac4iIfpygP9g--

--===============8011698576630783141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8011698576630783141==--
