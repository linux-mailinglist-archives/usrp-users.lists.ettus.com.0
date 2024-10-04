Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFFC98FEB5
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 10:13:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 739FB384C50
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 04:13:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728029623; bh=TPnlqk+jRE1kzdYW/AAJWrYUL2rJWzxvqrx/O7SXNHI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MtYdBvuKt9KBEjE1Z9Fb/ornL72/idNGzAi2Pz0JnUse8pAJJrdZbqSb30PvoOukF
	 DF7HhWLJRshQPbc1NOlrggOBOCHyXVku3qnt/PdLEnOL8qwlKvFtXqFB8rF5ExbQRG
	 TUn9KxBdKQ+YwduFeGAW6bk2YfSgl9ksBNFcYaZTbIu8cGq/vc6vVpTCLKrczeiPNz
	 5rtlT7czbO7rWTetPUI8SEcvactcamiUCh3A/K9ox2zDJ5i9x+UeQNFiG+SFQ2HpxQ
	 FooJCr+NmIkXyTsblHux7VDZV+5Cc/t+zuvveKoQeD11RSaKNyMlDp2r++XVSQVq9E
	 i5wOaVX67JXow==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id B02BD384A7E
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 04:13:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="iRrC/q++";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c40aea5c40so3867733a12.0
        for <usrp-users@lists.ettus.com>; Fri, 04 Oct 2024 01:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728029617; x=1728634417; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ahdH2lofghwmjkMXXkzAXoy4pAeEv9Y7p5/49byv50g=;
        b=iRrC/q++vD7O/gCqQZiLOULq/5XdJyR7wSiAF+ozQVSjNYcbaVc7QCkTMZY199iuis
         9/nYHBk2xzgaq+XXFkOQ7RjYnIcGY+occn0lGt1m3fUzbS867PNd/fV6vGk600h06fbm
         EmSOF31zxqLrJtplz2PO8hnUvXhTV7LYTvilB1Vqe+3vAl7hW4LALWuPX/y0g7G1341R
         vPrjwfSI8ROhPtDI1qqOiXm5rg5CqTeOqPtkrFIYF8A8GO58PKVX0ntUEaO65AFHIBvm
         Qj2XFr85ZhnVHY74QSgFecmFh4vFzFevEwbaHwZAE4FXvntRBAXOinUWvOndtIFzbXEL
         8Qjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029617; x=1728634417;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahdH2lofghwmjkMXXkzAXoy4pAeEv9Y7p5/49byv50g=;
        b=HEGKjB7hqaN0h6ewTxnGQBnnhnV+RHf76onLrtOK1pasgVb9fyaCFpjAt7yiQuzavT
         eWLjokL39pvKnKBocjK4rZFUoBo0dqclQmAvGC2lMsSHJuiaNcK+IxyJsfRj8/JSuUHH
         PZkrp03+THGrasoQ3tYnFKU603Ogc60HBb6LJGEH4usdntdfvEkZur7SUcRYwT8gS+ZX
         D0dOGMPr/qBZmWaxL/1vjnwYW/kIhXsQFA8xBP/vGYelbVZI8wQIfSvUqAtVRHs0/Twy
         Tb5MM+FVjrP/QrVECUFI4/XhORgLyw5dfGM1tU4lDbO2YC6rS3+mfZ0Na8lHPKWQmD8f
         ngcA==
X-Gm-Message-State: AOJu0YytAwMlr09MWnQnVm561l8TxjCjZ//KtQGbB1PtOwwp+dM8CB5F
	NYFXGDFlZBORsceelS2PXmKNOsP8MaN/2QNYP5VM8g/eZnEWPpnnShFaAg1MJ29IAV7WAS1ioN+
	78so829fCFDwuu2DN4At769FFr05mt+xfFu8JReLPAT8IKTMDa8SiCg==
X-Google-Smtp-Source: AGHT+IFhF8nRp4wHGnxPh9X48xJ/kcvSDoG5ZayvTMkirGLCqCX4u/itmVAxKTwwQigwQn5FQw7+j0DBIj7JddkRMiA=
X-Received: by 2002:a05:6402:2350:b0:5c8:8c16:3971 with SMTP id
 4fb4d7f45d1cf-5c8c0a8250amr7175366a12.16.1728029617043; Fri, 04 Oct 2024
 01:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw@lists.ettus.com>
In-Reply-To: <8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 4 Oct 2024 10:13:26 +0200
Message-ID: <CAFOi1A5hOHFN=N_8qWu+Ktdw26t2Xpp3dM0gUSOYvrgYCkn=-A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: IXFBA4NNSAR4CNAWKRCYXRAXUHDY4TGX
X-Message-ID-Hash: IXFBA4NNSAR4CNAWKRCYXRAXUHDY4TGX
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IXFBA4NNSAR4CNAWKRCYXRAXUHDY4TGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6671782202639577895=="

--===============6671782202639577895==
Content-Type: multipart/alternative; boundary="0000000000007c5b9b0623a23faf"

--0000000000007c5b9b0623a23faf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK here's some actual content for this thread outside of chatting about the
build system.

Pulling in features from the Xilinx fork to our X4xx kernel sources isn't
something we've had any kind of eye on, but it's interesting and we're
curious to see how this goes. It's something we'd like to see you succeed
in.

Currently our X4xx kernel sources are defined as follows: base branch:
git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git (see:
linux-x4xx.inc
<https://github.com/EttusResearch/meta-ettus/blob/kirkstone/meta-ettus-bsp/=
recipes-kernel/linux/linux-x4xx.inc>),
commit: e97bd1e03e6ef58ec47ee7f085f8c14ed6329cf7 (see linux-x4xx_5.10.bb
<https://github.com/EttusResearch/meta-ettus/blob/kirkstone/meta-ettus-bsp/=
recipes-kernel/linux/linux-x4xx_5.10.bb>),
patches: meta-ettus-bsp/recipes-kernel/linux/linux-x4xx
<https://github.com/EttusResearch/meta-ettus/tree/kirkstone/meta-ettus-bsp/=
recipes-kernel/linux/linux-x4xx>

One option we could discuss is if it were easier for folks if we based our
kernel on linux-xlnx instead of mainline (no promises or plans here, just
thinking out loud). Not everyone has Piotr-level expertise, and if this
would make things easier for folks, that could be something we do going
forward.

Whichever way we go -- of course you need to pull in patches from the right
kernel version. If that's something people struggle with, maybe we can make
that clearer? Just fishing for thoughts and/or suggestions here!

Cheers,

Martin

On Thu, Oct 3, 2024 at 1:51=E2=80=AFPM <perper@o2.pl> wrote:

> Hello Mike,
>
> I don=E2=80=99t know what your preference regarding setup is, but for me =
it was
> crucial to be able to make changes to the rootfs and kernel quickly and t=
o
> be able to remotely reset the device.
>
> This was especially important when dealing with kernel and bootloader. As
> I didn=E2=80=99t have much experience with editing kernel and u-boot sour=
ces, it
> was indispensable to be able to check my changes and applied patches
> quickly (the additional difficulty was that I didn=E2=80=99t have a X410 =
to see in
> action how things should work).
>
> My setup consisted of NFS server hosting rootfs and TFTP server for
> kernel. The bootloader was loaded through JTAG. This way I for example wa=
s
> able to make a script that: compiled and installed new kernel with the
> board turned off or in not working state, tried to boot it, check if syst=
em
> started correctly and return the result to git bisect. This way (after so=
me
> fine-tuning) I was able to run =E2=80=98git bisect=E2=80=99 and wait for =
it to find a
> commit where the board started to work. If you are interested how to
> configure what I=E2=80=99ve described - ask.
>
> With this approach you could for example locate when DPU support that you
> need was added. Your case seems to be better in one regard though: as you
> know what you are looking for you can also look at commit messages and th=
e
> code. In my case I didn=E2=80=99t know what was source of problems - the =
board just
> didn=E2=80=99t boot or (in another case) loading =E2=80=98nixge=E2=80=99 =
driver for 10Gb/s ports
> crashed the board.
>
> Piotr
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007c5b9b0623a23faf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>OK here&#39;s some actual content for this thread out=
side of chatting about the build system.</div><div><br></div><div>Pulling i=
n features from the Xilinx fork to our X4xx kernel sources isn&#39;t someth=
ing we&#39;ve had any kind of eye on, but it&#39;s interesting and we&#39;r=
e curious to see how this goes. It&#39;s something we&#39;d like to see you=
 succeed in.</div><div><br></div><div>Currently our X4xx kernel sources are=
 defined as follows:=20

<span><span class=3D"gmail-ui-provider gmail-a gmail-b gmail-c gmail-d gmai=
l-e gmail-f gmail-g gmail-h gmail-i gmail-j gmail-k gmail-l gmail-m gmail-n=
 gmail-o gmail-p gmail-q gmail-r gmail-s gmail-t gmail-u gmail-v gmail-w gm=
ail-x gmail-y gmail-z gmail-ab gmail-ac gmail-ae gmail-af gmail-ag gmail-ah=
 gmail-ai gmail-aj gmail-ak" dir=3D"ltr"> base branch: <a href=3D"http://gi=
t.kernel.org/pub/scm/linux/kernel/git/stable/linux.git">git.kernel.org/pub/=
scm/linux/kernel/git/stable/linux.git</a> (see: <a aria-label=3D"Link linux=
-x4xx.inc" id=3D"gmail-menur3e8" href=3D"https://github.com/EttusResearch/m=
eta-ettus/blob/kirkstone/meta-ettus-bsp/recipes-kernel/linux/linux-x4xx.inc=
" rel=3D"noreferrer noopener" target=3D"_blank" class=3D"gmail-fui-Link gma=
il-___1q1shib gmail-f2hkw1w gmail-f3rmtva gmail-f1ewtqcl gmail-fyind8e gmai=
l-f1k6fduh gmail-f1w7gpdv gmail-fk6fouc gmail-fjoy568 gmail-figsok6 gmail-f=
1s184ao gmail-f1mk8lai gmail-fnbmjn9 gmail-f1o700av gmail-f13mvf36 gmail-f1=
cmlufx gmail-f9n3di6 gmail-f1ids18y gmail-f1tx3yz7 gmail-f1deo86v gmail-f1e=
h06m1 gmail-f1iescvh gmail-fhgqx19 gmail-f1olyrje gmail-f1p93eir gmail-f1ne=
v41a gmail-f1h8hb77 gmail-f1lqvz6u gmail-f10aw75t gmail-fsle3fq gmail-f17ae=
5zn" title=3D"https://github.com/ettusresearch/meta-ettus/blob/kirkstone/me=
ta-ettus-bsp/recipes-kernel/linux/linux-x4xx.inc">linux-x4xx.inc</a>), comm=
it: e97bd1e03e6ef58ec47ee7f085f8c14ed6329cf7 (see <a aria-label=3D"Link lin=
ux-x4xx_5.10.bb" id=3D"gmail-menur3ea" href=3D"https://github.com/EttusRese=
arch/meta-ettus/blob/kirkstone/meta-ettus-bsp/recipes-kernel/linux/linux-x4=
xx_5.10.bb" rel=3D"noreferrer noopener" target=3D"_blank" class=3D"gmail-fu=
i-Link gmail-___1q1shib gmail-f2hkw1w gmail-f3rmtva gmail-f1ewtqcl gmail-fy=
ind8e gmail-f1k6fduh gmail-f1w7gpdv gmail-fk6fouc gmail-fjoy568 gmail-figso=
k6 gmail-f1s184ao gmail-f1mk8lai gmail-fnbmjn9 gmail-f1o700av gmail-f13mvf3=
6 gmail-f1cmlufx gmail-f9n3di6 gmail-f1ids18y gmail-f1tx3yz7 gmail-f1deo86v=
 gmail-f1eh06m1 gmail-f1iescvh gmail-fhgqx19 gmail-f1olyrje gmail-f1p93eir =
gmail-f1nev41a gmail-f1h8hb77 gmail-f1lqvz6u gmail-f10aw75t gmail-fsle3fq g=
mail-f17ae5zn" title=3D"https://github.com/ettusresearch/meta-ettus/blob/ki=
rkstone/meta-ettus-bsp/recipes-kernel/linux/linux-x4xx_5.10.bb">linux-x4xx_=
5.10.bb</a>), patches: <a aria-label=3D"Link meta-ettus-bsp/recipes-kernel/=
linux/linux-x4xx" id=3D"gmail-menur3ec" href=3D"https://github.com/EttusRes=
earch/meta-ettus/tree/kirkstone/meta-ettus-bsp/recipes-kernel/linux/linux-x=
4xx" rel=3D"noreferrer noopener" target=3D"_blank" class=3D"gmail-fui-Link =
gmail-___1q1shib gmail-f2hkw1w gmail-f3rmtva gmail-f1ewtqcl gmail-fyind8e g=
mail-f1k6fduh gmail-f1w7gpdv gmail-fk6fouc gmail-fjoy568 gmail-figsok6 gmai=
l-f1s184ao gmail-f1mk8lai gmail-fnbmjn9 gmail-f1o700av gmail-f13mvf36 gmail=
-f1cmlufx gmail-f9n3di6 gmail-f1ids18y gmail-f1tx3yz7 gmail-f1deo86v gmail-=
f1eh06m1 gmail-f1iescvh gmail-fhgqx19 gmail-f1olyrje gmail-f1p93eir gmail-f=
1nev41a gmail-f1h8hb77 gmail-f1lqvz6u gmail-f10aw75t gmail-fsle3fq gmail-f1=
7ae5zn" title=3D"https://github.com/ettusresearch/meta-ettus/tree/kirkstone=
/meta-ettus-bsp/recipes-kernel/linux/linux-x4xx">meta-ettus-bsp/recipes-ker=
nel/linux/linux-x4xx</a><br></span></span></div><div><span><span class=3D"g=
mail-ui-provider gmail-a gmail-b gmail-c gmail-d gmail-e gmail-f gmail-g gm=
ail-h gmail-i gmail-j gmail-k gmail-l gmail-m gmail-n gmail-o gmail-p gmail=
-q gmail-r gmail-s gmail-t gmail-u gmail-v gmail-w gmail-x gmail-y gmail-z =
gmail-ab gmail-ac gmail-ae gmail-af gmail-ag gmail-ah gmail-ai gmail-aj gma=
il-ak" dir=3D"ltr"><br></span></span></div><div><span><span class=3D"gmail-=
ui-provider gmail-a gmail-b gmail-c gmail-d gmail-e gmail-f gmail-g gmail-h=
 gmail-i gmail-j gmail-k gmail-l gmail-m gmail-n gmail-o gmail-p gmail-q gm=
ail-r gmail-s gmail-t gmail-u gmail-v gmail-w gmail-x gmail-y gmail-z gmail=
-ab gmail-ac gmail-ae gmail-af gmail-ag gmail-ah gmail-ai gmail-aj gmail-ak=
" dir=3D"ltr">One option we could discuss is if it were easier for folks if=
 we based our kernel on linux-xlnx instead of mainline (no promises or plan=
s here, just thinking out loud). Not everyone has Piotr-level expertise, an=
d if this would make things easier for folks, that could be something we do=
 going forward.</span></span></div><div><span><span class=3D"gmail-ui-provi=
der gmail-a gmail-b gmail-c gmail-d gmail-e gmail-f gmail-g gmail-h gmail-i=
 gmail-j gmail-k gmail-l gmail-m gmail-n gmail-o gmail-p gmail-q gmail-r gm=
ail-s gmail-t gmail-u gmail-v gmail-w gmail-x gmail-y gmail-z gmail-ab gmai=
l-ac gmail-ae gmail-af gmail-ag gmail-ah gmail-ai gmail-aj gmail-ak" dir=3D=
"ltr"><br></span></span></div><div><span><span class=3D"gmail-ui-provider g=
mail-a gmail-b gmail-c gmail-d gmail-e gmail-f gmail-g gmail-h gmail-i gmai=
l-j gmail-k gmail-l gmail-m gmail-n gmail-o gmail-p gmail-q gmail-r gmail-s=
 gmail-t gmail-u gmail-v gmail-w gmail-x gmail-y gmail-z gmail-ab gmail-ac =
gmail-ae gmail-af gmail-ag gmail-ah gmail-ai gmail-aj gmail-ak" dir=3D"ltr"=
>Whichever way we go -- of course you need to pull in patches from the righ=
t kernel version. If that&#39;s something people struggle with, maybe we ca=
n make that clearer? Just fishing for thoughts and/or suggestions here!</sp=
an></span></div><div><span><span class=3D"gmail-ui-provider gmail-a gmail-b=
 gmail-c gmail-d gmail-e gmail-f gmail-g gmail-h gmail-i gmail-j gmail-k gm=
ail-l gmail-m gmail-n gmail-o gmail-p gmail-q gmail-r gmail-s gmail-t gmail=
-u gmail-v gmail-w gmail-x gmail-y gmail-z gmail-ab gmail-ac gmail-ae gmail=
-af gmail-ag gmail-ah gmail-ai gmail-aj gmail-ak" dir=3D"ltr"><br></span></=
span></div><div><span><span class=3D"gmail-ui-provider gmail-a gmail-b gmai=
l-c gmail-d gmail-e gmail-f gmail-g gmail-h gmail-i gmail-j gmail-k gmail-l=
 gmail-m gmail-n gmail-o gmail-p gmail-q gmail-r gmail-s gmail-t gmail-u gm=
ail-v gmail-w gmail-x gmail-y gmail-z gmail-ab gmail-ac gmail-ae gmail-af g=
mail-ag gmail-ah gmail-ai gmail-aj gmail-ak" dir=3D"ltr">Cheers,</span></sp=
an></div><div><span><span class=3D"gmail-ui-provider gmail-a gmail-b gmail-=
c gmail-d gmail-e gmail-f gmail-g gmail-h gmail-i gmail-j gmail-k gmail-l g=
mail-m gmail-n gmail-o gmail-p gmail-q gmail-r gmail-s gmail-t gmail-u gmai=
l-v gmail-w gmail-x gmail-y gmail-z gmail-ab gmail-ac gmail-ae gmail-af gma=
il-ag gmail-ah gmail-ai gmail-aj gmail-ak" dir=3D"ltr"><br></span></span></=
div><div><span><span class=3D"gmail-ui-provider gmail-a gmail-b gmail-c gma=
il-d gmail-e gmail-f gmail-g gmail-h gmail-i gmail-j gmail-k gmail-l gmail-=
m gmail-n gmail-o gmail-p gmail-q gmail-r gmail-s gmail-t gmail-u gmail-v g=
mail-w gmail-x gmail-y gmail-z gmail-ab gmail-ac gmail-ae gmail-af gmail-ag=
 gmail-ah gmail-ai gmail-aj gmail-ak" dir=3D"ltr">Martin<br></span></span>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Oct 3, 2024 at 1:51=E2=80=AFPM &lt;<a href=3D"mailto:perper@o=
2.pl">perper@o2.pl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><p>Hello Mike,</p><p>I don=E2=80=99t know what your prefe=
rence regarding setup is, but for me it was crucial to be able to make chan=
ges to the rootfs and kernel quickly and to be able to remotely reset the d=
evice.</p><p>This was especially important when dealing with kernel and boo=
tloader. As I didn=E2=80=99t have much experience with editing kernel and u=
-boot sources, it was indispensable to be able to check my changes and appl=
ied patches quickly (the additional difficulty was that I didn=E2=80=99t ha=
ve a X410 to see in action how things should work).</p><p>My setup consiste=
d of NFS server hosting rootfs and TFTP server for kernel. The bootloader w=
as loaded through JTAG. This way I for example was able to make a script th=
at: compiled and installed new kernel with the board turned off or in not w=
orking state, tried to boot it, check if system started correctly and retur=
n the result to git bisect. This way (after some fine-tuning) I was able to=
 run =E2=80=98git bisect=E2=80=99 and wait for it to find a commit where th=
e board started to work. If you are interested how to configure what I=E2=
=80=99ve described - ask.</p><p>With this approach you could for example lo=
cate when DPU support that you need was added. Your case seems to be better=
 in one regard though: as you know what you are looking for  you can also l=
ook at commit messages and the code. In my case I didn=E2=80=99t know what =
was source of problems - the board just didn=E2=80=99t boot or (in another =
case) loading =E2=80=98nixge=E2=80=99 driver for 10Gb/s ports crashed the b=
oard.</p><p>Piotr</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007c5b9b0623a23faf--

--===============6671782202639577895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6671782202639577895==--
