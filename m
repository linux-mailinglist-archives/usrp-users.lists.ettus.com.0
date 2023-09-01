Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB1078FB91
	for <lists+usrp-users@lfdr.de>; Fri,  1 Sep 2023 12:01:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79EB1384FE5
	for <lists+usrp-users@lfdr.de>; Fri,  1 Sep 2023 06:01:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693562515; bh=pDDKYyp0uIesJ4zZOqMKNfAejHguvQJ0A+q+xwZDlFI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Rcvbn/W4ssTQfqxFIT1qDoP/mxcGC59NqRl1zPoQAb+iIBD2xVdxKZgKpCLKWbCNU
	 tPTTppsDIx9knSoVoJvagm/FhX+VvAVRW4Y4kZIgNH7OWQTfctAF365M/f6/Yac620
	 weJNPB0+voLUCSejp8e4f2DUU6RFtD+a6V+zVLAdO0mqJW15mB0hTYLnVAc17ruyGo
	 xyHr6WyRf41xgNafXUROU/BjOe1vXkkzKFUxjVMafEZPWTDqbIAwvhcTrA5pamuwJV
	 4+4zUaUUQ4inOm8t2dBpaeVne5hbwT5ZZmHkASCjhOl2UIcdcMF8HDgGoxIyOuHVNd
	 pbF3lqcWarxkw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97FD4384EAD
	for <usrp-users@lists.ettus.com>; Fri,  1 Sep 2023 06:01:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693562465; bh=vAwzEDYdgks/zV5Ut75f7MDRzMPthgWFApkrnHJRAQI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YRqzuJ7NA8H75MD9L5Qar34Eq3VLYhF6nivuwhoOnknM9RD06mEHgj5osCgzWsMNw
	 5nVSagi2u4TOcnG6LB2vhbDONfs9vtKDII4CmDLCzjeAKhYvzaD1r4AMhgazbp4tqg
	 gAsaAoSnuLxmIsSvPSiXW+zetEtRGguIebndAZu9Pibp5jnEeNYzRvCoz9/u2Hbf0q
	 ZW+5Uew41XVsuNSb9oXGMutVX3EC36R3zOsxV6VLmZeKfJRjsELr+SyVIB4pzb0HS8
	 i45F15F7xoA/WZjfoEL6B9PLr2IxUqmqXCfAd/VinN80mH29mKJm69um3CEVXiJE+/
	 hdB8DjGiE4WiQ==
Date: Fri, 1 Sep 2023 10:01:05 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <YyiJrruYBKDCCgs3DA1hytwhflnT23PAiQLidgZQA8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=gq6b_nfjxgiJ-GXPkhkzxVxn-nOe6+c4FB++Fm5=i4aA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SUHG5WYWOC4CYASHLEJ5MBTZTID4MO4U
X-Message-ID-Hash: SUHG5WYWOC4CYASHLEJ5MBTZTID4MO4U
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Component fpga is too new for X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SUHG5WYWOC4CYASHLEJ5MBTZTID4MO4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0846751489108348421=="

This is a multi-part message in MIME format.

--===============0846751489108348421==
Content-Type: multipart/alternative;
 boundary="b1_YyiJrruYBKDCCgs3DA1hytwhflnT23PAiQLidgZQA8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YyiJrruYBKDCCgs3DA1hytwhflnT23PAiQLidgZQA8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Wade Fife wrote:

> The MPM software on your device is older than the FPGA you're trying to
> use. Because you're using master, they haven't published updated
> filesystems with the new MPM yet, but there will be a release candidate
> very soon for UHD 4.5 you could try.
>
> Wade
>
> On Tue, Aug 22, 2023 at 10:20=E2=80=AFAM Zacharias M Komodromos [zackko=
mo@utexas.edu](mailto:zackkomo@utexas.edu)
> wrote:
>
> > Hello all!
> >
> > I currently have a USRP X410 connected to a host through a
> > QSFP28-to-QSFP28 connection, and also connected to a router through t=
he
> > ethernet port (to which the host is also connected to). I am trying t=
o get
> > large BW captures with the USRP. I have been trying to use the CG_400=
 FPGA
> > image which is fixed at 400 MHz but have been getting dropped samples=
.
> >
> > I noticed on the wiki that a new flavor, UC_200, was noted, so I swit=
ched
> > to the master branch on UHD and built UHD from the master branch. Onc=
e I
> > tried to then flash the image on my X410 with:
> >
> > uhd_image_loader --args type=3Dx4xx,addr=3D192.168.1.19,fpga=3DUC_200
> >
> > I got the following error:
> >
> > \[ERROR\] \[MPM.PeriphManager\] Component fpga is too new (current: 8=
.0.0,
> > oldest compatible: 8.0.0, MPM version: current: 7.9, oldest compatibl=
e: 7.0)
> >
> > \[ERROR\] \[MPM.PeriphManager\] MPM compatibility infos suggest that =
the new
> > bitfile is not compatible, skipping installation. Component fpga is t=
oo new
> > (current: 8.0.0, oldest compatible: 8.0.0, MPM version: current: 7.9,
> > oldest compatible: 7.0)
> >
> > Error: RuntimeError: Error during RPC call to \`update_component'. Er=
ror
> > message: rpc::rpc_error during call
> >
> > I tried updating the X410 through a mender artifact, and also through
> > =E2=80=9Cusrp_update_fs -t master,=E2=80=9C but any image I try to fl=
ash will produce the
> > same error. When I run "uhd_config_info --version", the host returns =
"UHD
> > 4\.4.0.0-265-ga2a04e31" and the x410 returns "UHD 4.4.0.0-0-g5fac246b=
."
> >
> > How should I proceed to be able to load the new images on the x410? W=
hat
> > exactly needs updating and how?
> >
> > Thanks for the help!
> >
> > Zack
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

Hello,

If you can=E2=80=99t wait you can try to build SD card image yourself. Yo=
u=E2=80=99ll need meta-ettus repository and update it so it point to the =
right UHD commit (the top of master branch).\
Look here for example what to change: https://github.com/EttusResearch/me=
ta-ettus/commit/1ecf1fb30dce2281a1530d50ca76e84de0c98dd0

Additionally you=E2=80=99ll have to change branch name from UHD-4.4 to ma=
ster.

Then you can build SD card image. Some (not perfect) description of how t=
o do that is in meta-ettus Readme.md. In case of problems ask.

Best Regards,\
Piotr Krysik

--b1_YyiJrruYBKDCCgs3DA1hytwhflnT23PAiQLidgZQA8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Wade Fife wrote:</p><blockquote><p>The MPM software on your device is =
older than the FPGA you're trying to
use. Because you're using master, they haven't published updated
filesystems with the new MPM yet, but there will be a release candidate
very soon for UHD 4.5 you could try.</p><p>Wade</p><p>On Tue, Aug 22, 202=
3 at 10:20=E2=80=AFAM Zacharias M Komodromos <a href=3D"mailto:zackkomo@u=
texas.edu">zackkomo@utexas.edu</a>
wrote:</p><blockquote><p>Hello all!</p><p>I currently have a USRP X410 co=
nnected to a host through a
QSFP28-to-QSFP28 connection, and also connected to a router through the
ethernet port (to which the host is also connected to). I am trying to ge=
t
large BW captures with the USRP. I have been trying to use the CG_400 FPG=
A
image which is fixed at 400 MHz but have been getting dropped samples.</p=
><p>I noticed on the wiki that a new flavor, UC_200, was noted, so I swit=
ched
to the master branch on UHD and built UHD from the master branch. Once I
tried to then flash the image on my X410 with:</p><p>uhd_image_loader --a=
rgs type=3Dx4xx,addr=3D192.168.1.19,fpga=3DUC_200</p><p>I got the followi=
ng error:</p><p>[ERROR] [MPM.PeriphManager] Component fpga is too new (cu=
rrent: 8.0.0,
oldest compatible: 8.0.0, MPM version: current: 7.9, oldest compatible: 7=
.0)</p><p>[ERROR] [MPM.PeriphManager] MPM compatibility infos suggest tha=
t the new
bitfile is not compatible, skipping installation. Component fpga is too n=
ew
(current: 8.0.0, oldest compatible: 8.0.0, MPM version: current: 7.9,
oldest compatible: 7.0)</p><p>Error: RuntimeError: Error during RPC call =
to `update_component'. Error
message: rpc::rpc_error during call</p><p>I tried updating the X410 throu=
gh a mender artifact, and also through
=E2=80=9Cusrp_update_fs -t master,=E2=80=9C but any image I try to flash =
will produce the
same error. When I run "uhd_config_info --version", the host returns "UHD
4.4.0.0-265-ga2a04e31" and the x410 returns "UHD 4.4.0.0-0-g5fac246b."</p=
><p>How should I proceed to be able to load the new images on the x410? W=
hat
exactly needs updating and how?</p><p>Thanks for the help!</p><p>Zack</p>=
<div contenteditable=3D"false"><hr></div><p>USRP-users mailing list -- us=
rp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></blo=
ckquote></blockquote><p>Hello,</p><p>If you can=E2=80=99t wait you can tr=
y to build SD card image yourself. You=E2=80=99ll need meta-ettus reposit=
ory and update it so it point to the right UHD commit (the top of master =
branch).<br>Look here for example what to change: https://github.com/Ettu=
sResearch/meta-ettus/commit/1ecf1fb30dce2281a1530d50ca76e84de0c98dd0</p><=
p>Additionally you=E2=80=99ll have to change branch name from UHD-4.4 to =
master.</p><p>Then you can build SD card image. Some (not perfect) descri=
ption of how to do that is in meta-ettus Readme.md. In case of problems a=
sk.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_YyiJrruYBKDCCgs3DA1hytwhflnT23PAiQLidgZQA8--

--===============0846751489108348421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0846751489108348421==--
