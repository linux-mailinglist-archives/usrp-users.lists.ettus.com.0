Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D9998410
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 12:42:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6408D385696
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 06:42:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728556960; bh=EkOlRv4mxAX0FzV+xUQIl7kDm110EAi0bFs4IKPpRMQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Q7ub9bytidnAJT+hB2iDmn35WO+7fz+OCirpWjSpzKiEn0Cg5plaCD7gKfxrV5sqz
	 s2Jz3ymjJbYDdIsRnYTB9aipG5xTpjgY42OlLPUflGTlvVYzn1PrQLI+l6+M/WuwWc
	 7JsFUqkuo0tUvgIFLPTAOeXjgfBHIcWsOuGov4saBr/Yvw0NoGQu89eAj5O2HnFo/e
	 +1bIwFZbRd3WbJL35F0PvUpCpApYS2KafXHfz8a5m/W3t2ymvGAhNavRzjLkwYLtyh
	 9XBgcaOcMyyzynbIq9iJR8GdutSPbSoN7P4JcLVhzjKIqHdaLWUvPCrsPrDIVsQvU7
	 kWiippAENzxdw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9157385670
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 06:42:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728556941; bh=Q8H+CALKZAKO9NZ7f02Lq5uhK8akGcgNQLX/3NJGB9Q=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gTb97DCAC/x5Op+vo7q64Q3fjVXdmj1wYKxQxhgXQ7RLypvTxX5a4wd6slUn+ewN7
	 98xpio8kK5cGHgClkard2yC4uwwaxJQw4HZUI8LFHaf57x0uc18HtWN0WTvhEBUCxa
	 cSeBMl1ypxb2zYC/9pk6v61/viT6wNdT3xF2GLsF5e1BVuMf0M3byvFevMxhNTKcop
	 53A8Tn5L1iUzFVZY4WVkPCMHwsy2o7Uvyw+a7NMI0stojE9kcwqiX9lt268GO3VMJS
	 z+hwVHEUuGNzpfkXpemHES40WDfdEm5bYaXoMVSAVOMB67StnpRdmApvHkuarm5LPb
	 7pPAQHQaKT+OA==
Date: Thu, 10 Oct 2024 10:42:21 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: bHMiqIU0VHvoQfHMt7X0c31fAgaTfHPB9IuSjkEc@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: GAVJBNJNAMTDN5DGLZW77RGHEET5PBN3
X-Message-ID-Hash: GAVJBNJNAMTDN5DGLZW77RGHEET5PBN3
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GAVJBNJNAMTDN5DGLZW77RGHEET5PBN3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6501861692852630697=="

This is a multi-part message in MIME format.

--===============6501861692852630697==
Content-Type: multipart/alternative;
 boundary="b1_gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Mike,

After short look at current linux-xlnx - it seems that there are not that=
 many changes needed for DPU to work. The driver is in one C file + C hea=
der:\
linux-xlnx/drivers/misc/xlnx_dpu.c\
linux-xlnx/drivers/misc/xlnx_dpu.h

Look at their histories. Initial addition of this driver is in commit 5ce=
32fe84b358a041. Previous commit adds device-tree documentation. If I were=
 doing it myself I would probably first manually copy those files to NI=E2=
=80=99s kernel + associated changes in driver/misc/Kconfig and driver/mis=
c/Makefile

then add CONFIG_XILINX_DPU=3Dy option in the configuration file and compi=
le the kernel manually. This would probably verify if those two files are=
 all what is required for DPU to work. Only after that I would add the co=
mmits from linux-xlnx to NI=E2=80=99s kernel source (by cherry-picking th=
em). After that I would turn them into a series of patches that could be =
copied into meta-titanium kernel.

Best Regards,\
Piotr Krysik

--b1_gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Mike,</p><p>After short look at current linux-xlnx - it seems th=
at there are not that many changes needed for DPU to work. The driver is =
in one C file + C header:<br>linux-xlnx/drivers/misc/xlnx_dpu.c<br>linux-=
xlnx/drivers/misc/xlnx_dpu.h</p><p>Look at their histories. Initial addit=
ion of this driver is in commit 5ce32fe84b358a041. Previous commit adds d=
evice-tree documentation. If I were doing it myself I would probably firs=
t manually copy those files to NI=E2=80=99s kernel + associated changes i=
n driver/misc/Kconfig and driver/misc/Makefile</p><p>then add CONFIG_XILI=
NX_DPU=3Dy option in the configuration file and compile the kernel manual=
ly. This would probably verify if those two files are all what is require=
d for DPU to work. Only after that I would add the commits from linux-xln=
x to NI=E2=80=99s kernel source (by cherry-picking them). After that I wo=
uld turn them into a series of patches that could be copied into meta-tit=
anium kernel.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o--

--===============6501861692852630697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6501861692852630697==--
