Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D01998DB1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 18:42:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DC1E3858B6
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 12:42:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728578573; bh=8N0KtjcjlCXBlEeLcNAmNix4yqVeauPQve+HOCfGF84=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=WJ3JE5rOF1j/h6iWGFkaJg+MgwmAmqHluKyEBT/8kCybKcuWLmRVWFDxZ/IwwXL/s
	 /tUo/SFoqT8e4426cGxEDOokwO48u7YCgtyTKTAp6ifFiZmJno/+1Vc5poQb/J6Jct
	 Yl/ZFe4W6fRHZ1Y4br2w26SttbQr0ZsYJ0CfUYQDY30c6s8lJ2Edv62eLj2Flv/gS8
	 NjubkBNn/eH6Nv+xTVibJwsWdjAVes50rznjLesvxkdotI31SR+WcajhkzoqNBtRIz
	 X/hHt1vRpdI6iDxgZEJ4nnfKsPOHM+NtoMr1S0UOi6mc8hRYcf/kv22S+lr4PAIwhs
	 GrKhr2KDG7Z2g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 034E738587A
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 12:41:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728578519; bh=nPUxWUVjDlEEpGUrEiV3Y5ASWxHasD/5PeSVsHCBAkw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vVfsUrnxfCGgBLLXzN69wbCOqiOb2988jC/afnaDXO53DzHdeknEN2hYGJv7f4SfM
	 bPo16PAo2iHAW15GPHb2nVWrxcw7u1MlBUtzLjX55jKGK7ImADg7fTLiEFSCrVreQs
	 T+R5Zz50/SW5zrxf4PdBe5uPPZAf9tfAX2BoeZvQPN+o4DvIm3aWS79XpruKcX/HxO
	 LuO6EBrPDb5dvKKLhBCWm0NvWWYBwfaPISr/qf0yzuRbgz3Y1QiSMZAcImdxnW3JBS
	 SDpbsqWx7rYEnlWLIzMIBceh6lqrhuhno8GhpYSIZfALBXsJEWPiC4AcuCBD3g1MlE
	 FztBpAD8cehGw==
Date: Thu, 10 Oct 2024 16:41:59 +0000
To: usrp-users@lists.ettus.com
Message-ID: <YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: gKLsCdXXGW09TIFuS3ku4kjLWpw9bRJQ9aodgCGJ7o@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 65W5AGHPM5LZSOXPJWHTGMMSB5KP4JAT
X-Message-ID-Hash: 65W5AGHPM5LZSOXPJWHTGMMSB5KP4JAT
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/65W5AGHPM5LZSOXPJWHTGMMSB5KP4JAT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============8146002682557634935=="

This is a multi-part message in MIME format.

--===============8146002682557634935==
Content-Type: multipart/alternative;
 boundary="b1_YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

I=E2=80=99m really glad you mentioned xlnx_dpu.c and xlnx_dpu.h.   I foun=
d those a few days ago (in the linux-xlnx github repo, I think), and I wa=
s trying to find a recipe that installs them, but no luck.   I didn=E2=80=
=99t think of manually copying them to the NI kernel and adding them to t=
he NI recipe.

The  CONFIG_XILINX_DPU parameter is an issue.   It causes a warning that =
says it=E2=80=99s an unknown object.   I think that=E2=80=99s the paramet=
er that tells =E2=80=9CPetaLinux=E2=80=9C to install the DPU drivers, and=
 maybe sets a few other kernel parameters.   My assumption is that I have=
 to figure out what kernel options Xilinx enables when that parameter is =
set, and set those accordingly.   Kconfig is a mystery to me, so I=E2=80=99=
ve been putting it off. :-)   I think I need to spend a few hours reading=
 up on Kconfig.   Right now, the Kconfig files just look like menu entrie=
s to me.   I don=E2=80=99t see anything that takes those menu entries and=
 writes to defconfig.   Again, I just need to read up on Kconfig while my=
 build is running.

Regarding the patches, I learned how to do that properly during this effo=
rt.    I=E2=80=98ve been writing a lot of them for lately, and I can=E2=80=
=99t believe it took me so long to try them.   I have to say that kas mak=
es patching REALLY easy.   I used to use =E2=80=98repo=E2=80=99 when I ha=
d many remote layers or repositories to keep track of.   I=E2=80=99m neve=
r using =E2=80=98repo=E2=80=99 again.   Kas is great.   Once I fix the im=
age_tar PSEUDO_ABORT issue and can build the Mender images, I=E2=80=99ll =
set up the Kas docker image, and use the kas_build_imgs_package.sh script=
.

Thanks for all of the help!   I=E2=80=99ve really learned a lot.

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

--b1_YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>I=E2=80=99m really glad you mentioned xlnx_dpu.c and xln=
x_dpu.h.   I found those a few days ago (in the linux-xlnx github repo, I t=
hink), and I was trying to find a recipe that installs them, but no luck.  =
 I didn=E2=80=99t think of manually copying them to the NI kernel and addin=
g them to the NI recipe.</p><p>The  CONFIG_XILINX_DPU parameter is an issue=
.   It causes a warning that says it=E2=80=99s an unknown object.   I think=
 that=E2=80=99s the parameter that tells =E2=80=9CPetaLinux=E2=80=9C to ins=
tall the DPU drivers, and maybe sets a few other kernel parameters.   My as=
sumption is that I have to figure out what kernel options Xilinx enables wh=
en that parameter is set, and set those accordingly.   Kconfig is a mystery=
 to me, so I=E2=80=99ve been putting it off. :-)   I think I need to spend =
a few hours reading up on Kconfig.   Right now, the Kconfig files just look=
 like menu entries to me.   I don=E2=80=99t see anything that takes those m=
enu entries and writes to defconfig.   Again, I just need to read up on Kco=
nfig while my build is running.</p><p>Regarding the patches, I learned how =
to do that properly during this effort.    I=E2=80=98ve been writing a lot =
of them for lately, and I can=E2=80=99t believe it took me so long to try t=
hem.   I have to say that kas makes patching REALLY easy.   I used to use =
=E2=80=98repo=E2=80=99 when I had many remote layers or repositories to kee=
p track of.   I=E2=80=99m never using =E2=80=98repo=E2=80=99 again.   Kas i=
s great.   Once I fix the image_tar PSEUDO_ABORT issue and can build the Me=
nder images, I=E2=80=99ll set up the Kas docker image, and use the kas_buil=
d_imgs_package.sh script.</p><p>Thanks for all of the help!   I=E2=80=99ve =
really learned a lot.</p><p>Cheers,</p><p>Mike</p><p>perper@o2.pl wrote:</p=
><blockquote><p>Hello Mike,</p><p>After short look at current linux-xlnx - =
it seems that there are not that many changes needed for DPU to work. The d=
river is in one C file + C header:<br>linux-xlnx/drivers/misc/xlnx_dpu.c<br=
>linux-xlnx/drivers/misc/xlnx_dpu.h</p><p>Look at their histories. Initial =
addition of this driver is in commit 5ce32fe84b358a041. Previous commit add=
s device-tree documentation. If I were doing it myself I would probably fir=
st manually copy those files to NI=E2=80=99s kernel + associated changes in=
 driver/misc/Kconfig and driver/misc/Makefile</p><p>then add CONFIG_XILINX_=
DPU=3Dy option in the configuration file and compile the kernel manually. T=
his would probably verify if those two files are all what is required for D=
PU to work. Only after that I would add the commits from linux-xlnx to NI=
=E2=80=99s kernel source (by cherry-picking them). After that I would turn =
them into a series of patches that could be copied into meta-titanium kerne=
l.</p><p>Best Regards,<br>Piotr Krysik</p></blockquote>

--b1_YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c--

--===============8146002682557634935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8146002682557634935==--
