Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DED898F506
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 19:23:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2768385A76
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 13:23:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727976237; bh=Po/pcpTIyiOoQdfLHDaMpRe4nsdD7ONmYyxJG+5Ubgg=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=godnwbacCPcZS4IIrxHqXbi4BXsG6VzU1tcQQXG7b7bbaGS1SqHUQ++9vyoTLcKTW
	 SamI1bLHddeL58U9qNcmpesLpeR1Klhfvjrk+M918yENLRlxv9wHT7eCJpLlXDLeZ9
	 f5Q1N1PdY7/1fSHRNxPtkjw8D0naMZPnd6LKmgX5o5QJiXyQbUWFH0hfOIb6batlBN
	 sSaLSSobwn8m8/MLAFFeCkbNCn9K+gPcitJQxCVf5UHAdj+t5gAhRMMLzeK2dnV93d
	 Ro6SGbEZTiflZG2McE7r7LeNuJaUFWl4kx7MJiN89ajFQd9ZMTwXYoLalvovmsobME
	 32EI8tviUYmZA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B1C2385A42
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 13:22:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727976172; bh=OmPlqdSrGodNFiVEboaWI3mj2L1lsWbRPI9BFSvq58U=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=E5bXbUKVernhMOo+MQnoKpgnEBxvhHuzmvWE3c2k7IjP13N36nL7pW4/2BWNybC7L
	 +GBlLPTJIcE783hXq9CK2rKqQPYeb/91TicFdBrWeqfPnZM1mowtBu/NJH8AuyIvQ8
	 RTWvMitaK7OEwbDTe2/TYYoYwntvF8C7ohlSu+YCq/ybChTeH6jI00pZFnHgb13nGf
	 VeS4CQkkh1jlRnrgfKnOJSyuOrOvk7zyoKWXrVNRWY4J8VrXyHdhuFbEPf4xJN8jVY
	 dLnj97fk5mg0tPrm6QbDqhLwkcZ8uPwn5/eqMcoHMWJhewIaM6MdcWiXAz8cZmEtCu
	 9j+xUa37JFdYQ==
Date: Thu, 3 Oct 2024 17:22:52 +0000
To: usrp-users@lists.ettus.com
Message-ID: <tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: HX5OSusn7GhOhI8yCCbXa5sZxnJ9rHxQQYSTjqOlYw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 5SHMCEWX3NTN2B52LTBOOWEZBWE76CBB
X-Message-ID-Hash: 5SHMCEWX3NTN2B52LTBOOWEZBWE76CBB
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SHMCEWX3NTN2B52LTBOOWEZBWE76CBB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============8707824489002033140=="

This is a multi-part message in MIME format.

--===============8707824489002033140==
Content-Type: multipart/alternative;
 boundary="b1_tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Piotr,

Every time I see a clever set of build scripts or a really good Make inte=
gration I think about trying to adapt it to my workflow and incorporate i=
t into my build process.   I really do like the Ettus UHD setup.   It see=
ms remarkably flexible.   They clearly put a lot of thought into it.   I =
don=E2=80=99t think that it would be too difficult to fork UHD, and start=
 removing things until you had just the build system.   Then it could pos=
sibly be made more generic.

There are a few attempts at FPGA build tools that have gotten my interest=
 over the years.   I worked at a place that used Python-based [Scons,](ht=
tps://github.com/SCons/scons "Scons") which was pretty powerful, worked w=
ell, and is well supported.   The [OSVVM](https://github.com/osvvm/OsvvmL=
ibraries "OSVVM") project, by Jim Lewis, is a little similar to Scons in =
the way it is set up.   OSVVM written in TCL and VHDL, though, and is a V=
HDL simulation/verification framework build tool.   I use it all the time=
 for simulation.   What=E2=80=99s also cool about it is that it would be =
really easy to interface with a Make build system to use Make to launch v=
arious simulations or regression tests.   I=E2=80=99ve also been planning=
 on integrating it into our GitLab CI, so that simulation regression test=
s can be triggered by a merge to the FPGA design repo.   [HDLMake](https:=
//github.com/HDLMake/hdl-make) also looks interesting to me, but I don=E2=
=80=99t know much about it.

I think the only reason that I haven=E2=80=99t set any of them up (except=
 for OSVVM) is that they seem to require some intangible commitment that =
causes me to push it off for later. :-)

At the end of the day, Marcus is right.   Make is ubiquitous; it integrat=
es with everything; and it looks like it will be actively maintained fore=
ver. :-)

I would like to see if I can integrate OSVVM into the UHD Make flow to cr=
eate and launch simulations and regression tests.   I think it would be p=
retty straightforward.

--b1_tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Piotr,</p><p>Every time I see a clever set of build scripts or a really =
good Make integration I think about trying to adapt it to my workflow and i=
ncorporate it into my build process.   I really do like the Ettus UHD setup=
.   It seems remarkably flexible.   They clearly put a lot of thought into =
it.   I don=E2=80=99t think that it would be too difficult to fork UHD, and=
 start removing things until you had just the build system.   Then it could=
 possibly be made more generic.</p><p>There are a few attempts at FPGA buil=
d tools that have gotten my interest over the years.   I worked at a place =
that used Python-based <a href=3D"https://github.com/SCons/scons" title=3D"=
Scons">Scons,</a> which was pretty powerful, worked well, and is well suppo=
rted.   The <a href=3D"https://github.com/osvvm/OsvvmLibraries" title=3D"OS=
VVM">OSVVM</a> project, by Jim Lewis, is a little similar to Scons in the w=
ay it is set up.   OSVVM written in TCL and VHDL, though, and is a VHDL sim=
ulation/verification framework build tool.   I use it all the time for simu=
lation.   What=E2=80=99s also cool about it is that it would be really easy=
 to interface with a Make build system to use Make to launch various simula=
tions or regression tests.   I=E2=80=99ve also been planning on integrating=
 it into our GitLab CI, so that simulation regression tests can be triggere=
d by a merge to the FPGA design repo.   <a href=3D"https://github.com/HDLMa=
ke/hdl-make" title=3D"">HDLMake</a> also looks interesting to me, but I don=
=E2=80=99t know much about it.</p><p>I think the only reason that I haven=
=E2=80=99t set any of them up (except for OSVVM) is that they seem to requi=
re some intangible commitment that causes me to push it off for later. :-)<=
/p><p>At the end of the day, Marcus is right.   Make is ubiquitous; it inte=
grates with everything; and it looks like it will be actively maintained fo=
rever. :-)</p><p>I would like to see if I can integrate OSVVM into the UHD =
Make flow to create and launch simulations and regression tests.   I think =
it would be pretty straightforward.</p><p><br></p>

--b1_tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g--

--===============8707824489002033140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8707824489002033140==--
