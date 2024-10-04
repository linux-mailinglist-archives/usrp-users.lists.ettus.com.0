Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4403A99113C
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 23:20:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5E67385741
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 17:20:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728076834; bh=PhRtNPUJv1+Tln3+zkiTAyPfkWzh5IviQJ1NipG5KbY=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ZdhV2DBJoJFFyj4V5HHFSGsS08kpMYFC48PWtn4k5QQ0Ap8vNJDtZGOubGZx8jr70
	 IL5MEZljdvefhnmzhniTty6L+86UugEFxPers61Sm8ywa3CWkNxI+JZArNWe+jl7CQ
	 JxFqR3YhKKj6mAwClGVARK3kxW5AxyQSawN0ksDmpVNog24YLblfxLGitnVvCzs1a+
	 SkRXQEe62CHzX0+NkPk5mU/Ko3uUUoM3OfQmLPLwRvmIT82LXFdhzq5OEu3Ueol4et
	 djevkJULm3kCWp/Z8mWBpZ10sanitlACVJYZJc5T2y0R5VQ0IqmaRe4uDGbKpXAQNY
	 l9O7dEVJfEAuw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DB00385644
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 17:19:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728076775; bh=sbAmtsmylEOaRDsw9eCOW65ih4lIAmDGpG4k6R6yGmY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=hqWCpQgxrG8y7hrPvcNhwRtKTVqAyAPfAjFniNcss/EXMDQWDJ6G84CvTcIUsI9dZ
	 caw8lRHvnqgWtJgfwRbzmqnQOEfPO38qx6NE1cS58zao/mnZTKJZddMu77jVEQKGjo
	 XxaiV8zpWtTuHrkB2CnwNvMnCIARZ7A5QQNGojEpG0bzSnZgK4c9rCsCzNZwL2T6b3
	 O3sSIOluDj2IthfjD6TUNDoQe5dTmrXEJGqMhqs9OO+gMktLLegOsR7Oq1Y7dSHP2R
	 TvMVnirDbDyOrP1yAtZON8YALUU9MUTRm6QZ7eW2vlt68p9RG69JrGq98jhDtzqMIA
	 /1D+lbGpOgMyQ==
Date: Fri, 4 Oct 2024 21:19:35 +0000
To: usrp-users@lists.ettus.com
Message-ID: <bHMiqIU0VHvoQfHMt7X0c31fAgaTfHPB9IuSjkEc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5hOHFN=N_8qWu+Ktdw26t2Xpp3dM0gUSOYvrgYCkn=-A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WXIPPDODNRBNNLKIYKFBUVENSTVB5XYW
X-Message-ID-Hash: WXIPPDODNRBNNLKIYKFBUVENSTVB5XYW
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WXIPPDODNRBNNLKIYKFBUVENSTVB5XYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============2372701633684892511=="

This is a multi-part message in MIME format.

--===============2372701633684892511==
Content-Type: multipart/alternative;
 boundary="b1_bHMiqIU0VHvoQfHMt7X0c31fAgaTfHPB9IuSjkEc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bHMiqIU0VHvoQfHMt7X0c31fAgaTfHPB9IuSjkEc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thanks for the recipe links.   As of yesterday, I figured that the linux-=
x4xx files were the place to start.   The files linux-usrp_5.10.bb and li=
nux-yocto_5.2.\* got me turned around at first, but I found my way out ev=
entually. :-)

I don=E2=80=99t usually do much with the kernel, except use menuconfig to=
 change the occasional CONFIG_ parameter, because the linux-xlnx kernel h=
as most of the Xilinx-related configs that you would need to drive Xilinx=
 IP in the PL.   I=E2=80=99m hoping that I can add a few required CONFIG_=
 parameters, and a few patches to get there, but so far that seems unlike=
ly.

My concerns mostly arise from not knowing what to do when the Xilinx-spec=
ific parameters that I typically set in the linux-xlnx kernel config do n=
ot exist in the mainline.   For example, when adding the Vitis-AI librari=
es and the DPU driver to the build, it is necessary to set CONFIG_XILINX_=
DPU=3Dy in the kernel config.   But when I add that line to x410_defconfi=
g, and try to build an image, I get the following alert:

```
[INFO]: the following symbols were not found in the active configuration:
     - CONFIG_XILINX_DPU
```

The line, =E2=80=9Cnot found in the current configuration=E2=80=9D, makes=
 it sounds like a KCONFIG-ish issue.   That means I have a little =E2=80=98=
fancy book-learnin=E2=80=99 to do to fix this one. :-) The build was succ=
essful, but I highly doubt that it did what I intended.   This isn=E2=80=99=
t a catastrophe=E2=80=A6it just means that I have a little work ahead of =
me, and a good bit to learn.

> One option we could discuss is if it were easier for folks if we based =
our\
> kernel on linux-xlnx instead of mainline (no promises or plans here, ju=
st\
> thinking out loud). Not everyone has Piotr-level expertise, and if this=
\
> would make things easier for folks, that could be something we do going=
\
> forward.

Switching to the linux-xlnx kernel sounds like a great idea, but I don=E2=
=80=99t truly have a handle yet on the exact differences between the two =
kernels.   I=E2=80=99m not sure how to answer that in a way that takes al=
l of your customer base into account.   So, from the selfish perspective =
of an FPGA developer that has recently learned to navigate the Yocto buil=
d system, it would presumably simplify things if the UHD kernel were base=
d on linux-xlnx (especially if menuconfig were set up and available), bec=
ause all of the Xilinx documentation and knowledge-base info would be rel=
evant in addition to the Ettus documentation.

With that said, I don=E2=80=99t know what the implications of that move w=
ould be for your more Yocto savvy customers.

> Whichever way we go -- of course you need to pull in patches from the r=
ight\
> kernel version. If that's something people struggle with, maybe we can =
make\
> that clearer? Just fishing for thoughts and/or suggestions here!

There=E2=80=99s a good point in there.   Modifying an FPGA design and bui=
lding a custom embedded Linux distribution are non-trivial endeavors.   E=
ttus has simplified customization of some of the most difficult parts by =
including abstractions like RFNoC and gnuradio, and a Make-based build sy=
stem.   But as soon as we begin customizing the FPGA design or rootfs, we=
 will always need to make sure that we pull the right patches from the co=
rrect kernel version, or make sure that our PL customizations make their =
way into the image, etc.   I think that expanding the documentation (wiki=
, knowledge-base, etc) to be a little more in-depth for some topics would=
 be helpful for developers of all levels.   For example, even if you don=E2=
=80=99t base the UHD kernel on lilnux-xlnx, perhaps documenting how to ma=
ke a few customizations for common Xilinx additions would be extremely he=
lpful.   The same would be true for making mods to the FPGA design that c=
hange the device tree.

Just a couple of thoughts.   It=E2=80=99ll take me a few days to better u=
nderstand the kernel stuff.   Once I start making changes and debugging, =
I=E2=80=99ll add some of the progress and problems to the thread.

Martin Braun wrote:

> OK here's some actual content for this thread outside of chatting about=
 the
> build system.
>
> Pulling in features from the Xilinx fork to our X4xx kernel sources isn=
't
> something we've had any kind of eye on, but it's interesting and we're
> curious to see how this goes. It's something we'd like to see you succe=
ed
> in.
>
> Currently our X4xx kernel sources are defined as follows: base branch:
> git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git (see:
> linux-x4xx.inc
> <https://github.com/EttusResearch/meta-ettus/blob/kirkstone/meta-ettus-=
bsp/recipes-kernel/linux/linux-x4xx.inc>),
> commit: e97bd1e03e6ef58ec47ee7f085f8c14ed6329cf7 (see linux-x4xx_5.10.b=
b
> <https://github.com/EttusResearch/meta-ettus/blob/kirkstone/meta-ettus-=
bsp/recipes-kernel/linux/linux-x4xx_5.10.bb>),
> patches: meta-ettus-bsp/recipes-kernel/linux/linux-x4xx
> <https://github.com/EttusResearch/meta-ettus/tree/kirkstone/meta-ettus-=
bsp/recipes-kernel/linux/linux-x4xx>
>
> One option we could discuss is if it were easier for folks if we based =
our
> kernel on linux-xlnx instead of mainline (no promises or plans here, ju=
st
> thinking out loud). Not everyone has Piotr-level expertise, and if this
> would make things easier for folks, that could be something we do going
> forward.
>
> Whichever way we go -- of course you need to pull in patches from the r=
ight
> kernel version. If that's something people struggle with, maybe we can =
make
> that clearer? Just fishing for thoughts and/or suggestions here!
>
> Cheers,
>
> Martin
>
> On Thu, Oct 3, 2024 at 1:51=E2=80=AFPM [perper@o2.pl](mailto:perper@o2.=
pl) wrote:
>
> > Hello Mike,
> >
> > I don=E2=80=99t know what your preference regarding setup is, but for=
 me it was
> > crucial to be able to make changes to the rootfs and kernel quickly a=
nd to
> > be able to remotely reset the device.
> >
> > This was especially important when dealing with kernel and bootloader=
. As
> > I didn=E2=80=99t have much experience with editing kernel and u-boot =
sources, it
> > was indispensable to be able to check my changes and applied patches
> > quickly (the additional difficulty was that I didn=E2=80=99t have a X=
410 to see in
> > action how things should work).
> >
> > My setup consisted of NFS server hosting rootfs and TFTP server for
> > kernel. The bootloader was loaded through JTAG. This way I for exampl=
e was
> > able to make a script that: compiled and installed new kernel with th=
e
> > board turned off or in not working state, tried to boot it, check if =
system
> > started correctly and return the result to git bisect. This way (afte=
r some
> > fine-tuning) I was able to run =E2=80=98git bisect=E2=80=99 and wait =
for it to find a
> > commit where the board started to work. If you are interested how to
> > configure what I=E2=80=99ve described - ask.
> >
> > With this approach you could for example locate when DPU support that=
 you
> > need was added. Your case seems to be better in one regard though: as=
 you
> > know what you are looking for you can also look at commit messages an=
d the
> > code. In my case I didn=E2=80=99t know what was source of problems - =
the board just
> > didn=E2=80=99t boot or (in another case) loading =E2=80=98nixge=E2=80=
=99 driver for 10Gb/s ports
> > crashed the board.
> >
> > Piotr
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_bHMiqIU0VHvoQfHMt7X0c31fAgaTfHPB9IuSjkEc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>Thanks for the recipe links.   As of yesterday, I figur=
ed that the linux-x4xx files were the place to start.   The files linux-usr=
p_5.10.bb and linux-yocto_5.2.* got me turned around at first, but I found =
my way out eventually. :-)</p><p>I don=E2=80=99t usually do much with the k=
ernel, except use menuconfig to change the occasional CONFIG_ parameter, be=
cause the linux-xlnx kernel has most of the Xilinx-related configs that you=
 would need to drive Xilinx IP in the PL.   I=E2=80=99m hoping that I can a=
dd a few required CONFIG_ parameters, and a few patches to get there, but s=
o far that seems unlikely.</p><p>My concerns mostly arise from not knowing =
what to do when the Xilinx-specific parameters that I typically set in the =
linux-xlnx kernel config do not exist in the mainline.   For example, when =
adding the Vitis-AI libraries and the DPU driver to the build, it is necess=
ary to set CONFIG_XILINX_DPU=3Dy in the kernel config.   But when I add tha=
t line to x410_defconfig, and try to build an image, I get the following al=
ert:</p><pre><code>[INFO]: the following symbols were not found in the acti=
ve configuration:
     - CONFIG_XILINX_DPU</code></pre><p>The line, =E2=80=9Cnot found in the=
 current configuration=E2=80=9D, makes it sounds like a KCONFIG-ish issue. =
  That means I have a little =E2=80=98fancy book-learnin=E2=80=99 to do to =
fix this one. :-) The build was successful, but I highly doubt that it did =
what I intended.   This isn=E2=80=99t a catastrophe=E2=80=A6it just means t=
hat I have a little work ahead of me, and a good bit to learn.</p><blockquo=
te><p>One option we could discuss is if it were easier for folks if we base=
d our<br>kernel on linux-xlnx instead of mainline (no promises or plans her=
e, just<br>thinking out loud). Not everyone has Piotr-level expertise, and =
if this<br>would make things easier for folks, that could be something we d=
o going<br>forward.</p></blockquote><p>Switching to the linux-xlnx kernel s=
ounds like a great idea, but I don=E2=80=99t truly have a handle yet on the=
 exact differences between the two kernels.   I=E2=80=99m not sure how to a=
nswer that in a way that takes all of your customer base into account.   So=
, from the selfish perspective of an FPGA developer that has recently learn=
ed to navigate the Yocto build system, it would presumably simplify things =
if the UHD kernel were based on linux-xlnx (especially if menuconfig were s=
et up and available), because all of the Xilinx documentation and knowledge=
-base info would be relevant in addition to the Ettus documentation.</p><p>=
With that said, I don=E2=80=99t know what the implications of that move wou=
ld be for your more Yocto savvy customers.</p><blockquote><p>Whichever way =
we go -- of course you need to pull in patches from the right<br>kernel ver=
sion. If that's something people struggle with, maybe we can make<br>that c=
learer? Just fishing for thoughts and/or suggestions here!</p></blockquote>=
<p>There=E2=80=99s a good point in there.   Modifying an FPGA design and bu=
ilding a custom embedded Linux distribution are non-trivial endeavors.   Et=
tus has simplified customization of some of the most difficult parts by inc=
luding abstractions like RFNoC and gnuradio, and a Make-based build system.=
   But as soon as we begin customizing the FPGA design or rootfs, we will a=
lways need to make sure that we pull the right patches from the correct ker=
nel version, or make sure that our PL customizations make their way into th=
e image, etc.   I think that expanding the documentation (wiki, knowledge-b=
ase, etc) to be a little more in-depth for some topics would be helpful for=
 developers of all levels.   For example, even if you don=E2=80=99t base th=
e UHD kernel on lilnux-xlnx, perhaps documenting how to make a few customiz=
ations for common Xilinx additions would be extremely helpful.   The same w=
ould be true for making mods to the FPGA design that change the device tree=
.</p><p>Just a couple of thoughts.   It=E2=80=99ll take me a few days to be=
tter understand the kernel stuff.   Once I start making changes and debuggi=
ng, I=E2=80=99ll add some of the progress and problems to the thread.</p><p=
>Martin Braun wrote:</p><blockquote><p>OK here's some actual content for th=
is thread outside of chatting about the
build system.</p><p>Pulling in features from the Xilinx fork to our X4xx ke=
rnel sources isn't
something we've had any kind of eye on, but it's interesting and we're
curious to see how this goes. It's something we'd like to see you succeed
in.</p><p>Currently our X4xx kernel sources are defined as follows: base br=
anch:
git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git (see:
linux-x4xx.inc
<a href=3D"https://github.com/EttusResearch/meta-ettus/blob/kirkstone/meta-=
ettus-bsp/recipes-kernel/linux/linux-x4xx.inc">https://github.com/EttusRese=
arch/meta-ettus/blob/kirkstone/meta-ettus-bsp/recipes-kernel/linux/linux-x4=
xx.inc</a>),
commit: e97bd1e03e6ef58ec47ee7f085f8c14ed6329cf7 (see linux-x4xx_5.10.bb
<a href=3D"https://github.com/EttusResearch/meta-ettus/blob/kirkstone/meta-=
ettus-bsp/recipes-kernel/linux/linux-x4xx_5.10.bb">https://github.com/Ettus=
Research/meta-ettus/blob/kirkstone/meta-ettus-bsp/recipes-kernel/linux/linu=
x-x4xx_5.10.bb</a>),
patches: meta-ettus-bsp/recipes-kernel/linux/linux-x4xx
<a href=3D"https://github.com/EttusResearch/meta-ettus/tree/kirkstone/meta-=
ettus-bsp/recipes-kernel/linux/linux-x4xx">https://github.com/EttusResearch=
/meta-ettus/tree/kirkstone/meta-ettus-bsp/recipes-kernel/linux/linux-x4xx</=
a></p><p>One option we could discuss is if it were easier for folks if we b=
ased our
kernel on linux-xlnx instead of mainline (no promises or plans here, just
thinking out loud). Not everyone has Piotr-level expertise, and if this
would make things easier for folks, that could be something we do going
forward.</p><p>Whichever way we go -- of course you need to pull in patches=
 from the right
kernel version. If that's something people struggle with, maybe we can make
that clearer? Just fishing for thoughts and/or suggestions here!</p><p>Chee=
rs,</p><p>Martin</p><p>On Thu, Oct 3, 2024 at 1:51=E2=80=AFPM <a href=3D"ma=
ilto:perper@o2.pl">perper@o2.pl</a> wrote:</p><blockquote><p>Hello Mike,</p=
><p>I don=E2=80=99t know what your preference regarding setup is, but for m=
e it was
crucial to be able to make changes to the rootfs and kernel quickly and to
be able to remotely reset the device.</p><p>This was especially important w=
hen dealing with kernel and bootloader. As
I didn=E2=80=99t have much experience with editing kernel and u-boot source=
s, it
was indispensable to be able to check my changes and applied patches
quickly (the additional difficulty was that I didn=E2=80=99t have a X410 to=
 see in
action how things should work).</p><p>My setup consisted of NFS server host=
ing rootfs and TFTP server for
kernel. The bootloader was loaded through JTAG. This way I for example was
able to make a script that: compiled and installed new kernel with the
board turned off or in not working state, tried to boot it, check if system
started correctly and return the result to git bisect. This way (after some
fine-tuning) I was able to run =E2=80=98git bisect=E2=80=99 and wait for it=
 to find a
commit where the board started to work. If you are interested how to
configure what I=E2=80=99ve described - ask.</p><p>With this approach you c=
ould for example locate when DPU support that you
need was added. Your case seems to be better in one regard though: as you
know what you are looking for you can also look at commit messages and the
code. In my case I didn=E2=80=99t know what was source of problems - the bo=
ard just
didn=E2=80=99t boot or (in another case) loading =E2=80=98nixge=E2=80=99 dr=
iver for 10Gb/s ports
crashed the board.</p><p>Piotr</p><div contenteditable=3D"false"><hr></div>=
<p>USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote></blockquote><p><br></p><p><br></p>

--b1_bHMiqIU0VHvoQfHMt7X0c31fAgaTfHPB9IuSjkEc--

--===============2372701633684892511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2372701633684892511==--
