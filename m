Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF9299ADA8
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 22:44:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17550385C3B
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 16:44:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728679470; bh=2/IorYZ1RldTad+2sQtGCrylRMSyfSNZNYC0BdpiJu4=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=bGD4AguzzG/ua14BdYej0sS2NV4fdKratvQU+ncQQ8pfQ0NRUKXGueOklEP64zPiM
	 rglxjwgmI247xaM7jIKX7Y9hasA+hXcBpyjMxtP620mxxda76efqWkM9YbMPWjHYTZ
	 lB5SbyPzDZzd4Qgwx6jOEQNhH5Qv/zdcvnTsxyaO0RsJZMQZxfwgaFBawhYUrRpcJM
	 taYTh04hKEgrxc4RgDWHs+FQF4wvxOhNrZJoWL+TPsVik0fTwES+jT3kzUbmQMKfjU
	 6x3egRnrdQLpo+xQYY9DRGO1xewSqCkqTUbavVVDAVZZov3z3KLQOD2zxkdtv7FP43
	 r1KfOtIol6o/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 544A5385C01
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 16:43:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728679413; bh=YryxK/LEbgpNSY27qxSajav1/CZCP8OTgy95yUTRyDo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=e+yPCi4qB4GKOTFtvZ9zVNl3kT6Dx0B8pszXJvTPBg9WP5PPKSi9MIDzG2oOzjRgW
	 uBTlXE34enFKZ3/NJsHPuqYSWu3aXqIzIgoEv8msX6NeRXilbUUUV8xh72OVLJUi1o
	 fg3tx6IlHeht8RChRxOGhP9jDqKAIjisUC3hiWirvnqpc37HguvvJG8l3rQcBOoi4x
	 f50SNYESgSBD9mhQIoA7mGl9YARDMwbz0CkLcLi3VQL51dmg4W2cGhLwzoYnOM6mAy
	 Y4Anxv+j9c96GyejG48fyZUAGozO8pl4XrQpQbQXSJpMz0eyuUZ3bDvMTAlmLFeChK
	 yxYBUXa9STUEQ==
Date: Fri, 11 Oct 2024 20:43:33 +0000
To: usrp-users@lists.ettus.com
Message-ID: <BfnSXRYa3GxJKVmKDIXg7TZihiDIoNjpWUul830I@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: R3FA2BIJERSBBYKYS7YPQKEKI5MIPFBR
X-Message-ID-Hash: R3FA2BIJERSBBYKYS7YPQKEKI5MIPFBR
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R3FA2BIJERSBBYKYS7YPQKEKI5MIPFBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============1353102900330157016=="

This is a multi-part message in MIME format.

--===============1353102900330157016==
Content-Type: multipart/alternative;
 boundary="b1_BfnSXRYa3GxJKVmKDIXg7TZihiDIoNjpWUul830I"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BfnSXRYa3GxJKVmKDIXg7TZihiDIoNjpWUul830I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

I=E2=80=99m looking into the DPU driver kernel mods now.   I=E2=80=99ll k=
eep you posted.=20

Cheers,

Mike

perper@o2.pl wrote:

> Hello Mike,
>
> After short look at current linux-xlnx - it seems that there are not th=
at many changes needed for DPU to work. The driver is in one C file + C h=
eader:\
> linux-xlnx/drivers/misc/xlnx_dpu.c\
> linux-xlnx/drivers/misc/xlnx_dpu.h
>
> Look at their histories. Initial addition of this driver is in commit 5=
ce32fe84b358a041. Previous commit adds device-tree documentation. If I we=
re doing it myself I would probably first manually copy those files to NI=
=E2=80=99s kernel + associated changes in driver/misc/Kconfig and driver/=
misc/Makefile
>
> then add CONFIG_XILINX_DPU=3Dy option in the configuration file and com=
pile the kernel manually. This would probably verify if those two files a=
re all what is required for DPU to work. Only after that I would add the =
commits from linux-xlnx to NI=E2=80=99s kernel source (by cherry-picking =
them). After that I would turn them into a series of patches that could b=
e copied into meta-titanium kernel.
>
> Best Regards,\
> Piotr Krysik

--b1_BfnSXRYa3GxJKVmKDIXg7TZihiDIoNjpWUul830I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>I=E2=80=99m looking into the DPU driver kernel mods now.=
   I=E2=80=99ll keep you posted. </p><p>Cheers,</p><p>Mike</p><p>perper@o2.=
pl wrote:</p><blockquote><p>Hello Mike,</p><p>After short look at current l=
inux-xlnx - it seems that there are not that many changes needed for DPU to=
 work. The driver is in one C file + C header:<br>linux-xlnx/drivers/misc/x=
lnx_dpu.c<br>linux-xlnx/drivers/misc/xlnx_dpu.h</p><p>Look at their histori=
es. Initial addition of this driver is in commit 5ce32fe84b358a041. Previou=
s commit adds device-tree documentation. If I were doing it myself I would =
probably first manually copy those files to NI=E2=80=99s kernel + associate=
d changes in driver/misc/Kconfig and driver/misc/Makefile</p><p>then add CO=
NFIG_XILINX_DPU=3Dy option in the configuration file and compile the kernel=
 manually. This would probably verify if those two files are all what is re=
quired for DPU to work. Only after that I would add the commits from linux-=
xlnx to NI=E2=80=99s kernel source (by cherry-picking them). After that I w=
ould turn them into a series of patches that could be copied into meta-tita=
nium kernel.</p><p>Best Regards,<br>Piotr Krysik</p></blockquote><p><br></p=
>

--b1_BfnSXRYa3GxJKVmKDIXg7TZihiDIoNjpWUul830I--

--===============1353102900330157016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1353102900330157016==--
