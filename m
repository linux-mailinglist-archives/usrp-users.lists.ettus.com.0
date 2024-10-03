Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D11498F424
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 18:21:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0403385182
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 12:21:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727972496; bh=TF/30u5RdE2zfSySQf5rlvD9srRDF7tMNY+60XgT9oA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=KXV/TpM3kN+KN72Zlo1dbXpDmdSc0lRoa+6zmW6/t+o+cqhH0fmVB+47sAqBWCliX
	 Z/DzlBOq/NfYptXrQDMsqxEClSUVYOSL7/UE8Oxtwip0ooYiQDXbIxH0N+PkNX4xVd
	 9z/lAlb02B2UulaCfaBJmp27w9/Dg5Dt1r+lMWQ4Fwmp6R8hWCmYgaBNgmTEh9EaQU
	 +PjmMxS+GmdDD1GpbSlY8h+FowkUC6uiFz5JClP0YR4eeb6RU0YtMEzU+IlEnwNTa5
	 tjLEmB3cFC/VJXhoT0VHam2Hgut6k5Qk8wMXS5ZLw10Da6/x4FyQtcy3pJRqEg0OhF
	 d1e3RqFgr3xjQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE23F380AC2
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 12:20:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727972438; bh=ENYmYLt03ItVpRwdktOzGZvqJMx/5USU4MnxPs54A8Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Y2ygEurrzTyUXgP6cMdkph6BgQoF/i/wZc2Da7mmSj/vD2R2YL9CYaihGCL4S9EGD
	 0Y5y6NZoUsPXMES8klMdDB+Py+MUlAvC+2wcjXdscIRo2LQg3FPz3YItuTt5ZgGjq5
	 cPPPhiX0gZsSWkWycYqCHbwmfB8MePEC2vYHJv8fbDtdHOMd+g7g18kfeXk6PFqAYx
	 IrYGIP25WghCE5EoZtLytZrdXDiQ3NFLdo6aYRqpIzNQuZFh4pi046y4r+yM7w05hc
	 tCH7LMZZouYv/n3I986fwdVxBi9p1ABJHnQ2/j09VUm4Oh+gjHv9XPaixLGLa5lal3
	 JRJX4ExTq54uw==
Date: Thu, 3 Oct 2024 16:20:38 +0000
To: usrp-users@lists.ettus.com
Message-ID: <xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: WFKME7XCJTIECCTNCE2ZS4YLKNIQPXRH
X-Message-ID-Hash: WFKME7XCJTIECCTNCE2ZS4YLKNIQPXRH
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WFKME7XCJTIECCTNCE2ZS4YLKNIQPXRH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============4220917491417977167=="

This is a multi-part message in MIME format.

--===============4220917491417977167==
Content-Type: multipart/alternative;
 boundary="b1_xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

> This was especially important when dealing with kernel and bootloader. =
As I didn=E2=80=99t have much experience with editing kernel and u-boot s=
ources, it was indispensable to be able to check my changes and applied p=
atches quickly (the additional difficulty was that I didn=E2=80=99t have =
a X410 to see in action how things should work).

I have ZERO experience modifying the bootloader.   I=E2=80=99ve used TFTP=
Boot before, for bootloader, kernel, and rootfs, and it worked well.   I=E2=
=80=99ve never mounted a remote rootfs over NFS, or loaded the bootloader=
 over JTAG.   I saw some places in the code where you made some NFS- and =
JTAG-related changes.   I was thinking I would not use that stuff because=
 I have a board on my desk, but=E2=80=A6mounting the eMMC over USB, unzip=
ping the ext4.tar.gz, and overwriting the correct partition on the eMMC i=
s a REAL pain.   And it=E2=80=99s only a matter of time before I brick th=
e device because I was rushing through the steps.

> My setup consisted of NFS server hosting rootfs and TFTP server for ker=
nel. The bootloader was loaded through JTAG. This way I for example was a=
ble to make a script that: compiled and installed new kernel with the boa=
rd turned off or in not working state, tried to boot it, check if system =
started correctly and return the result to git bisect. This way (after so=
me fine-tuning) I was able to run =E2=80=98git bisect=E2=80=99 and wait f=
or it to find a commit where the board started to work. If you are intere=
sted how to configure what I=E2=80=99ve described - ask.

Ok=E2=80=A6THAT is a great idea.   I=E2=80=99ve been avoiding =E2=80=98gi=
t bisect=E2=80=99 all this time.   Hahaha   I=E2=80=99ll feel guilty for =
asking how you set that up, but I think I will be too curious not to.

You know, with a little scripting, it might be possible to remotely monit=
or something on the board that gives an indication of whether it successf=
ully booted, like RESET BOARD, WAIT FOR N SECONDS, PING BOARD=E2=80=A6, a=
nd then automatically tell =E2=80=98git bisect=E2=80=99 to keep going or =
not.   If you were only looking for a successful boot, and you weren=E2=80=
=99t worried about what the exact failures were, you could just launch it=
 and work on something else.   Hahaha   Sometimes being lazy can be a lot=
 of work for me.

Mike

--b1_xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><blockquote><p>This was especially important when dealing w=
ith kernel and bootloader. As I didn=E2=80=99t have much experience with ed=
iting kernel and u-boot sources, it was indispensable to be able to check m=
y changes and applied patches quickly (the additional difficulty was that I=
 didn=E2=80=99t have a X410 to see in action how things should work).</p></=
blockquote><p>I have ZERO experience modifying the bootloader.   I=E2=80=
=99ve used TFTPBoot before, for bootloader, kernel, and rootfs, and it work=
ed well.   I=E2=80=99ve never mounted a remote rootfs over NFS, or loaded t=
he bootloader over JTAG.   I saw some places in the code where you made som=
e NFS- and JTAG-related changes.   I was thinking I would not use that stuf=
f because I have a board on my desk, but=E2=80=A6mounting the eMMC over USB=
, unzipping the ext4.tar.gz, and overwriting the correct partition on the e=
MMC is a REAL pain.   And it=E2=80=99s only a matter of time before I brick=
 the device because I was rushing through the steps.</p><blockquote><p>My s=
etup consisted of NFS server hosting rootfs and TFTP server for kernel. The=
 bootloader was loaded through JTAG. This way I for example was able to mak=
e a script that: compiled and installed new kernel with the board turned of=
f or in not working state, tried to boot it, check if system started correc=
tly and return the result to git bisect. This way (after some fine-tuning) =
I was able to run =E2=80=98git bisect=E2=80=99 and wait for it to find a co=
mmit where the board started to work. If you are interested how to configur=
e what I=E2=80=99ve described - ask.</p></blockquote><p>Ok=E2=80=A6THAT is =
a great idea.   I=E2=80=99ve been avoiding =E2=80=98git bisect=E2=80=99 all=
 this time.   Hahaha   I=E2=80=99ll feel guilty for asking how you set that=
 up, but I think I will be too curious not to.</p><p>You know, with a littl=
e scripting, it might be possible to remotely monitor something on the boar=
d that gives an indication of whether it successfully booted, like RESET BO=
ARD, WAIT FOR N SECONDS, PING BOARD=E2=80=A6, and then automatically tell =
=E2=80=98git bisect=E2=80=99 to keep going or not.   If you were only looki=
ng for a successful boot, and you weren=E2=80=99t worried about what the ex=
act failures were, you could just launch it and work on something else.   H=
ahaha   Sometimes being lazy can be a lot of work for me.</p><p>Mike</p>

--b1_xzaQoHIu2CzfYQhv1k6dWjIyYNZTVnRgDFE7bbj8Dc--

--===============4220917491417977167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4220917491417977167==--
