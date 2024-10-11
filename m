Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F84D99AB2A
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 20:44:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EAB43858E9
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 14:44:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728672296; bh=hORh3q8YDOCxsy3WH8zsFdZQoCVhIVI3nVcvNT97vjw=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=zkTvpGu0Zfxn7CEXqqLXAOFEQPPaehqzJj/xHOnd6oTHNDlrODHZZSD0+iVMTitT0
	 RjbOJo83YiASMtF4MKe27kFzuIopF/GiiKFyaaNowzgoIbJ5SAIRECoJQ56a/7xECG
	 mFvjBmohXFw46yC4J/Rzv2MWM4Q/JVigpR0uN3uaYHK8FOMjuOJswKPrPWEWlzwS7j
	 4Sf6GTTKR/IpqgR0v6DypHlQD9FYSM/At2M1V4Yda7cwhQ7eO+j3ewlZedhk+FBeCD
	 tv+3ylki16UMOd3lOxSKUzFWZKFaQbZrebVVkOUrDXsnHWqVcrEk4+RnM7wnKleuVn
	 z917awg3IEMQg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3216E385C89
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 14:44:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728672242; bh=vFj+NbxN1Wqh0XtBvbLs/iCQk/9cMMYo5c7eE+gAypc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=f5sIB0VhLnIu9t8lIBzkCxdR32mmPCZkQSuG7xyuITHYmi7hTKlfazWNRxl9M9xUO
	 fu21Ijt4pYyfCUzHGqyAUpip6Zi2KIBDfbDafWVI76Acdivw7Bxn1F8zjChOsoNo2X
	 Tw9+Awm3kZDSr+qgFZKma5WX/VmOyk5HyZCViV8R1QQcrQt1O6FAoNnMjzBpQxwVfY
	 h5kOnt0gv6V+T+SggL8+LcAKFzzjiNYvDDdziGP4HEj0PndQGYeb/skHA8hZtW5jms
	 3jzxgQ8MYkjyMmhk/lRtlRz1zklE/y8pAzMvLGPQfiR8HIwHsEWZoWqn7mqYJ9K7I5
	 32G0UsIrMaiHA==
Date: Fri, 11 Oct 2024 18:44:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <AbmkzIExD4OKGh3Tmk60flsOcoBnkjNbc3N8wLdWnw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8d4fae65-290d-4c09-8c8f-c5aa2abab43d@o2.pl
MIME-Version: 1.0
Message-ID-Hash: VTX44VFCV2NKBAUVU7QW6W55PFXQ6BSO
X-Message-ID-Hash: VTX44VFCV2NKBAUVU7QW6W55PFXQ6BSO
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VTX44VFCV2NKBAUVU7QW6W55PFXQ6BSO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============6041475217922943104=="

This is a multi-part message in MIME format.

--===============6041475217922943104==
Content-Type: multipart/alternative;
 boundary="b1_AbmkzIExD4OKGh3Tmk60flsOcoBnkjNbc3N8wLdWnw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AbmkzIExD4OKGh3Tmk60flsOcoBnkjNbc3N8wLdWnw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

I=E2=80=99m using kas 4.4.   I followed the README in github.com/meta-ett=
us, under the section, =E2=80=9CBuilding an Image using the Alchemy distr=
o and kas.=E2=80=9C   There is a link to the kas repo, and I just install=
ed the latest.

It=E2=80=99s been a while, but I believe that I went the manual kas route=
 because I had a hard time with the kas container.   I know that was true=
 when I originally tried the zeus branch.

Cheers,

Mike

Piotr Krysik wrote:

> Hello Mike,
>
> It=E2=80=99s good that you have experience with tftpboot, because the p=
aths in
> my description are a bit wrong. I meant to put everything in /tftpboot
> directory for simplicity but then written /tftpboot/x410 - like I have
> it. So this is a mistake and =E2=80=98/tftpboot/x410=E2=80=99 should be=
 replaced by
> =E2=80=98/tftpboot=E2=80=98 (for default configuration of the tftp serv=
er).
>
> Regarding =E2=80=98kas=E2=80=99 command - that works well with the =E2=80=
=98zeus=E2=80=99 branch of
> meta-ettus (used up to UHD 4.6). But when I switched to more recent
> =E2=80=98kirkstone=E2=80=99 branch - it stopped. Probably some changes =
are needed in
> that command. I would guess kas verstion 2.6.2 is not correct anymore,
> but I don=E2=80=99t know for which the command might work. So it is act=
ually
> good that you already are able to run those builds with =E2=80=98kas=E2=
=80=99 but
> without docker.
>
> Piotr
>
> W dniu 10.10.2024 o=C2=A017:51, mruane--- via USRP-users pisze:
>
> > Hi Piotr!
> >
> > So sorry for the delay!
> >
> > Wow, that=E2=80=99s a lot of good information! Thanks for the startin=
g point
> > information. I spent some time trying to find a common starting point=
.
> > I have also been looking at the kernel config parameters in the
> > defconfig and .cfg files. In the linux-xlnx kernel, there is a
> > CONFIG_XILINX_DPU=3Dy parameter that is be added to a .cfg file in th=
e
> > kernel recipe that magically enables certain DPU-related features. I
> > knew it couldn=E2=80=99t be as simple as just adding that to the x410
> > defconfig=E2=80=A6but I HAD to try it. :-) Needless to say, It didn=E2=
=80=99t work. I
> > initially tried to go through all of the Kconfig stuff to see if I
> > could figure out what actual kernel parameters CONFIG_XILINX_DPU
> > translated to, but that was a pretty deep rabbit hole that didn=E2=80=
=99t seem
> > very promising. So I=E2=80=99m back to comparing the repositories.
> >
> > Thanks for the scripts. This truly is a HUGE amount of help.
> >
> > Regarding network boot: Now that I=E2=80=99ve seen them again, the tf=
tpboot
> > steps are familiar. I haven=E2=80=99t done it in a while, and for som=
e reason,
> > I didn=E2=80=99t remember that the bootloader was part of the process=
. So it=E2=80=99s
> > the same except for NFS mounting the rootfs. I=E2=80=99ll start setti=
ng that
> > up today. My build process is slightly different, so I=E2=80=99ll hav=
e to
> > adapt some things.
> >
> > I=E2=80=99m using kas to build, but not in a container. I just set up=
 a conda
> > environment, and build using the kas commands, like =E2=80=98kas buil=
d
> > <path-to-custom-x410.yml>=E2=80=99. Unfortunately, I can=E2=80=99t bu=
ild the Mender
> > images because there is a bug in either the Mender recipes or the
> > recipe for graphviz_2.50.0.bb that causes a PSEUDO_ABORT error. It
> > seems that one of the graphviz package directories is deleted outside
> > of PSEUDO, and that causes an inode conflict.
> >
> > I don=E2=80=99t think it is in the graphviz recipe, even though the
> > pkg_postrm:${PN} task removes the config6 file that is the cause of
> > the conflict. That task doesn=E2=80=99t seem to run before I get the =
error. I
> > have narrowed it down to mender-setup-image.inc, in which the
> > cleanup_excluded_directories function removes the excluded dirs. For
> > some reason, rootfs.image_tar is getting deleted, and it shouldn=E2=80=
=99t be.
> > In the file, mender-part-image.bbclass, all of the Mender-related
> > image tasks are being set to NOT respect the exclude paths, like so:
> >
> > |# So that we can use the files from excluded paths in the full
> > images. do_image_sdimg\[respect_exclude_path\] =3D "0"
> > do_image_uefiimg\[respect_exclude_path\] =3D "0"
> > do_image_biosimg\[respect_exclude_path\] =3D "0"
> > do_image_gptimg\[respect_exclude_path\] =3D "0"|
> >
> > To fix it, I think I just need to let Mender know about the
> > do_image_tar task, and then set that flag to 0.
> >
> > For now, though, I=E2=80=99m building the non-Mender recipe.

--b1_AbmkzIExD4OKGh3Tmk60flsOcoBnkjNbc3N8wLdWnw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>I=E2=80=99m using kas 4.4.   I followed the README in =
github.com/meta-ettus, under the section, =E2=80=9CBuilding an Image usin=
g the Alchemy distro and kas.=E2=80=9C   There is a link to the kas repo,=
 and I just installed the latest.</p><p>It=E2=80=99s been a while, but I =
believe that I went the manual kas route because I had a hard time with t=
he kas container.   I know that was true when I originally tried the zeus=
 branch.</p><p>Cheers,</p><p>Mike</p><p>Piotr Krysik wrote:</p><blockquot=
e><p>Hello Mike,</p><p>It=E2=80=99s good that you have experience with tf=
tpboot, because the paths in
my description are a bit wrong. I meant to put everything in /tftpboot
directory for simplicity but then written /tftpboot/x410 - like I have
it. So this is a mistake and =E2=80=98/tftpboot/x410=E2=80=99 should be r=
eplaced by
=E2=80=98/tftpboot=E2=80=98 (for default configuration of the tftp server=
).</p><p>Regarding =E2=80=98kas=E2=80=99 command - that works well with t=
he =E2=80=98zeus=E2=80=99 branch of
meta-ettus (used up to UHD 4.6). But when I switched to more recent
=E2=80=98kirkstone=E2=80=99 branch - it stopped. Probably some changes ar=
e needed in
that command. I would guess kas verstion 2.6.2 is not correct anymore,
but I don=E2=80=99t know for which the command might work. So it is actua=
lly
good that you already are able to run those builds with =E2=80=98kas=E2=80=
=99 but
without docker.</p><p>Piotr</p><p>W dniu 10.10.2024 o&nbsp;17:51, mruane-=
-- via USRP-users pisze:</p><blockquote><p>Hi Piotr!</p><p>So sorry for t=
he delay!</p><p>Wow, that=E2=80=99s a lot of good information! Thanks for=
 the starting point
information. I spent some time trying to find a common starting point.
I have also been looking at the kernel config parameters in the
defconfig and .cfg files. In the linux-xlnx kernel, there is a
CONFIG_XILINX_DPU=3Dy parameter that is be added to a .cfg file in the
kernel recipe that magically enables certain DPU-related features. I
knew it couldn=E2=80=99t be as simple as just adding that to the x410
defconfig=E2=80=A6but I HAD to try it. :-) Needless to say, It didn=E2=80=
=99t work. I
initially tried to go through all of the Kconfig stuff to see if I
could figure out what actual kernel parameters CONFIG_XILINX_DPU
translated to, but that was a pretty deep rabbit hole that didn=E2=80=99t=
 seem
very promising. So I=E2=80=99m back to comparing the repositories.</p><p>=
Thanks for the scripts. This truly is a HUGE amount of help.</p><p>Regard=
ing network boot: Now that I=E2=80=99ve seen them again, the tftpboot
steps are familiar. I haven=E2=80=99t done it in a while, and for some re=
ason,
I didn=E2=80=99t remember that the bootloader was part of the process. So=
 it=E2=80=99s
the same except for NFS mounting the rootfs. I=E2=80=99ll start setting t=
hat
up today. My build process is slightly different, so I=E2=80=99ll have to
adapt some things.</p><p>I=E2=80=99m using kas to build, but not in a con=
tainer. I just set up a conda
environment, and build using the kas commands, like =E2=80=98kas build
&lt;path-to-custom-x410.yml&gt;=E2=80=99. Unfortunately, I can=E2=80=99t =
build the Mender
images because there is a bug in either the Mender recipes or the
recipe for graphviz_2.50.0.bb that causes a PSEUDO_ABORT error. It
seems that one of the graphviz package directories is deleted outside
of PSEUDO, and that causes an inode conflict.</p><p>I don=E2=80=99t think=
 it is in the graphviz recipe, even though the
pkg_postrm:${PN} task removes the config6 file that is the cause of
the conflict. That task doesn=E2=80=99t seem to run before I get the erro=
r. I
have narrowed it down to mender-setup-image.inc, in which the
cleanup_excluded_directories function removes the excluded dirs. For
some reason, rootfs.image_tar is getting deleted, and it shouldn=E2=80=99=
t be.
In the file, mender-part-image.bbclass, all of the Mender-related
image tasks are being set to NOT respect the exclude paths, like so:</p><=
p>|# So that we can use the files from excluded paths in the full
images. do_image_sdimg[respect_exclude_path] =3D "0"
do_image_uefiimg[respect_exclude_path] =3D "0"
do_image_biosimg[respect_exclude_path] =3D "0"
do_image_gptimg[respect_exclude_path] =3D "0"|</p><p>To fix it, I think I=
 just need to let Mender know about the
do_image_tar task, and then set that flag to 0.</p><p>For now, though, I=E2=
=80=99m building the non-Mender recipe.</p></blockquote></blockquote><p><=
br></p><p><br></p>


--b1_AbmkzIExD4OKGh3Tmk60flsOcoBnkjNbc3N8wLdWnw--

--===============6041475217922943104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6041475217922943104==--
