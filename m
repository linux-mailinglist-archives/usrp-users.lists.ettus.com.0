Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9233298E8A2
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 05:09:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59D1E385A77
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 23:09:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727924975; bh=jYSOU8y15yKZmQ9ddpPUwmKj4kLlQACFaM2fqUacjgw=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=IY6pORA0bwYE+ZoGGeAn3O7QGGZlIIrl5fFXlJv+nOr2t+UqDLhSUON5iFEnvgUB2
	 Of4+GQVcXfAa7jE1XMWNBhiT8hVr4n1y/n8iy5lj2zPIohgkwi5Dd1euUD1l2eY7tX
	 dmIHmwE8tZzr+Qxj52GQiXcDUxroseD4lfoprQG/PsG+sqKE+FomaO70xgx5M3URQU
	 OzlKIG6ZaGSxD0nVSGISCyCmbFynapIErOjhELIDuoXP5N2A0T5lNJap06fP7F+z+K
	 zqmRjozb3By9FDxDLOuWv+v5e0nuIgKwfIxUv3MsRcWNbh3/4k3KxJuGmgfLiOvFjb
	 i8msjqC+px2/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41DD2385A5D
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 23:08:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727924919; bh=4JoZszA/rJN+ffAEZJHSRtUKvo1TEKVvpBe/IGay3Tc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=de+UTyHGb79HvrXgoCcDktRHnhuoRtnn08LFhtgDY+zZ+qwgbasGx5LFaVS/P8XI3
	 YtVy3wvM5i9eeLrI5xoLhwf2gmOR6JxFsB8PeGiiTZgtBUqZs3pPjk37mosuA7owZ8
	 o6TYXmmLQCiIGTtNHRy2bOihbDOchSKegk4Yslc/I6nLGZiLRGZiXYWAzAsnd9GseK
	 Fh2zqOnsLdq/IW71zqH0ekvgSGQBOSTDzn56sLSyNb7HriM3jiGLfUT5NAgTQXvVDe
	 Dx3t1NMwDEH0U/szCWstzGSB9YWm/0WsdVB8E7yGblnh8fllwTfsIK7jL+qqgtvWwL
	 G5cUKN/BGbB9Q==
Date: Thu, 3 Oct 2024 03:08:39 +0000
To: usrp-users@lists.ettus.com
Message-ID: <km6r0kYO6dXkLQlHrZ4BPY4r94e0lFo1dgB6GwMk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: QHVPSYYIMQWIQWHZYU66TZMWNGGH4K4F
X-Message-ID-Hash: QHVPSYYIMQWIQWHZYU66TZMWNGGH4K4F
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QHVPSYYIMQWIQWHZYU66TZMWNGGH4K4F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============0479391492229909369=="

This is a multi-part message in MIME format.

--===============0479391492229909369==
Content-Type: multipart/alternative;
 boundary="b1_km6r0kYO6dXkLQlHrZ4BPY4r94e0lFo1dgB6GwMk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_km6r0kYO6dXkLQlHrZ4BPY4r94e0lFo1dgB6GwMk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

I looked through the code in your repo, and it=E2=80=99s a perfect templa=
te for the types of patches and mods I need to make.   I had seen the x41=
0_defconfig file in the kernel recipes and was wondering if I could edit =
it, or if it was automatically generated.   Seeing that you added a few X=
ilinx-specific CONFIG_ options was very useful.   I think I have a good p=
lace to start in diffing the two kernels and adding the Xilinx-specific m=
ods to UHD to support the DPU drivers.

If we were on stack exchange, I would definitely mark this as answered! :=
-)   I=E2=80=99ll update the thread as things progress.

Many thanks,

Mike

--b1_km6r0kYO6dXkLQlHrZ4BPY4r94e0lFo1dgB6GwMk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>I looked through the code in your repo, and it=E2=80=99=
s a perfect template for the types of patches and mods I need to make.   =
I had seen the x410_defconfig file in the kernel recipes and was wonderin=
g if I could edit it, or if it was automatically generated.   Seeing that=
 you added a few Xilinx-specific CONFIG_ options was very useful.   I thi=
nk I have a good place to start in diffing the two kernels and adding the=
 Xilinx-specific mods to UHD to support the DPU drivers.</p><p>If we were=
 on stack exchange, I would definitely mark this as answered! :-)   I=E2=80=
=99ll update the thread as things progress.</p><p>Many thanks,</p><p>Mike=
</p>


--b1_km6r0kYO6dXkLQlHrZ4BPY4r94e0lFo1dgB6GwMk--

--===============0479391492229909369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0479391492229909369==--
