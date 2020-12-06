Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 202DF2D057F
	for <lists+usrp-users@lfdr.de>; Sun,  6 Dec 2020 15:34:37 +0100 (CET)
Received: from [::1] (port=54842 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klv7U-0000aF-4r; Sun, 06 Dec 2020 09:34:36 -0500
Received: from mail-vs1-f47.google.com ([209.85.217.47]:38912)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1klv7P-0000QQ-RE
 for usrp-users@lists.ettus.com; Sun, 06 Dec 2020 09:34:31 -0500
Received: by mail-vs1-f47.google.com with SMTP id h6so6091139vsr.6
 for <usrp-users@lists.ettus.com>; Sun, 06 Dec 2020 06:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u0F/zOn1OlA84HTTJgwWmr4e50hBgsOtMyv0MTS6w1k=;
 b=XTAdAZx/bmj0jSIRvoaH9/2S6Ss7EuEjzyvUFPh7uKnUdRoFEcwzJRYNhdQIWnNOma
 SZ0g7WSnU4DK75/ApuXRGffy7WwF88peXm7p96vwr73FDJhljGDR1JUv+pnilfXwWBDF
 07+Nook4rEo9OioBMIPKDzDtTuAJ6aYICIS+kQKDdwDSmba6+j8efBFMeWaJpkwBfkWo
 lsZjypMmcP4k42nJYcFNP4IQ43e/0s5C5QQAp2tmjV5unhmvb+xCLKfXjTPe93U7pRrR
 QBqtXwYCXMVcrACqe6n0BywgbF0xl3VXXturayeImpwr1/a+wNorQhL8L4m6uucgFR+6
 WZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u0F/zOn1OlA84HTTJgwWmr4e50hBgsOtMyv0MTS6w1k=;
 b=uKVxZtiEjfJrTxcX92OTPPD0Mgt4mGtoBtgQnc7/K4eyTPkViJ/xBHV49hnd/9wt3C
 ShpjsvQ0ozcTlVgGJTAL6dJjahqCcn7tlHRXrS1DnsjRiPYwvdD2pXpnzG9Sp911XP1d
 nFcJBMXANOEay1GBNEUp/yK/M+nxCV0QXulwrNq+ml597cKIZW1gwClytOyonip7NOj/
 /ZDeyeGuhNIbBTSBxIyhxVXmpMOO2pw1mPg5Sqfh1n769BDW+MxWq6MJaAkusN3LVVje
 msGjhtsT3XofugYkZDfvSF5zjlcmwPKtGxgmVwDRXhFGUVSTFePpwnNgqmA1VgiI/52b
 32HQ==
X-Gm-Message-State: AOAM530i8CrW42/HLWyeucImfkr+A/2lZRP6DRLVRzJpD/TzVrCL98Us
 HvKUsAb78pRH9xpQgHeQNe3pTdpR/TyHWP9uOfulYd8VSySAaw==
X-Google-Smtp-Source: ABdhPJy6xO6lBPzrSHP52ZAUMmwmUyREKkDsk12mLGAVrGM3f3AWcjs2/ZoF+A+q4hkbCFpn2ty3KlKipjCNMdcFTQg=
X-Received: by 2002:a67:80d3:: with SMTP id b202mr10639214vsd.2.1607265231153; 
 Sun, 06 Dec 2020 06:33:51 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
 <258c1b45-3f6c-b278-a5f6-47f08e4e3d8c@balister.org>
 <CAKx8PBhdgm0VYZQfHDUTOJZUbZfR8CWSiKORw1DV0j2BLs+rRQ@mail.gmail.com>
 <34beec6d-a910-557e-c3fe-8e8589748f14@balister.org>
 <CAKx8PBgF0XH6V7ZfEjLQ++30wPer_tP1jQDdCQCvQx7uPigTHw@mail.gmail.com>
 <942341c7-6d0f-bd0c-1b9f-29fe0a5a6580@balister.org>
In-Reply-To: <942341c7-6d0f-bd0c-1b9f-29fe0a5a6580@balister.org>
Date: Sun, 6 Dec 2020 09:33:40 -0500
Message-ID: <CAKx8PBgwqqW94wxz2cRt599QMnzjntUa11UBntg1e+uYEta0bQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Building Debug FS Image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============5895533049151117143=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5895533049151117143==
Content-Type: multipart/alternative; boundary="00000000000029acbc05b5cc99ba"

--00000000000029acbc05b5cc99ba
Content-Type: text/plain; charset="UTF-8"

Just wanted to say thanks for the assistance, that worked great.

As a heads up if you are building against zeus & dunfell and need fft
support you are likely going to hit the same issue I did.  As a work around
I just pulled gcc 8.3 back in zeus.
https://github.com/FFTW/fftw3/issues/213

On Fri, Dec 4, 2020 at 2:34 PM Philip Balister <philip@balister.org> wrote:

> On 12/4/20 10:52 AM, Ben Magistro via USRP-users wrote:
> > How do you handle uboot?  I've managed to get an ext4 rootfs (haven't
> tried
> > adding debug yet, just trying to get to a known point to start from) and
> > cheated by overwriting an existing partition on a drive (not a viable
> long
> > term solution in my mind).  Yes this is a zeus build, only thing I knew
> of
> > on the meta-sdr side that was using a gr3.8 release and I have seen your
> > additional question (
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-December/063288.html
> > ).
> >
> > Below is what I'm using as a bblayers.
> >
> > Appreciate your assistance and patience while I'm figuring this out.
>
> Try adding:
>
> WKS_FILE="sdimage-8G.wks"
> IMAGE_FSTYPES += "wic.gz wic.bmap"
>
> to local.conf. This should get you files in tmp.../deploy/images/machine
> that end in wic.gz and wic.bmap. You can use bmaptool to write them
> directly to the SD card.
>
> Philip
>
> >
> >
> > # POKY_BBLAYERS_CONF_VERSION is increased each time
> build/conf/bblayers.conf
> > # changes incompatibly
> > POKY_BBLAYERS_CONF_VERSION = "2"
> >
> > BBPATH = "${TOPDIR}"
> > BBFILES ?= ""
> >
> > #  alt for poky
> > #  /home/user/oe-zeus/sources/openembedded-core/meta
> > BBLAYERS ?= " \
> >   /home/user/oe-zeus/sources/poky/meta \
> >   /home/user/oe-zeus/sources/poky/meta-poky \
> >   /home/user/oe-zeus/sources/meta-openembedded/meta-oe \
> >   /home/user/oe-zeus/sources/meta-openembedded/meta-python \
> >   /home/user/oe-zeus/sources/meta-openembedded/meta-filesystems \
> >   /home/user/oe-zeus/sources/meta-openembedded/meta-networking \
> >   /home/user/oe-zeus/sources/meta-security/meta-tpm \
> >   /home/user/oe-zeus/sources/meta-ettus/meta-ettus-core \
> >   /home/user/oe-zeus/sources/meta-ettus/meta-alchemy \
> >   /home/user/oe-zeus/sources/meta-ettus/meta-e31x \
> >   /home/user/oe-zeus/sources/meta-sdr \
> >   /home/user/oe-zeus/sources/meta-qt5 \
> >   "
> >
> > On Fri, Nov 20, 2020 at 11:04 AM Philip Balister <philip@balister.org>
> > wrote:
> >
> >> The quick answer is switch the bsp layer from
> >>
> >> meta-e31x-mender
> >>
> >> to meta-e31x
> >>
> >> and see what happens. I find I ahve to fiddle a lot with the ettus
> >> builds, so it does help to know OpenEmbedded/Yocto.
> >>
> >> Anyone know the status of the clock speed issue I reported a while back?
> >> A quick scan of metta-ettus shows no updates since Sep 13.
> >>
> >> Philip
> >>
> >> On 11/20/20 10:44 AM, Ben Magistro via USRP-users wrote:
> >>> I'm open to that idea but am not familiar with
> openembedded/yocto/mender
> >> or
> >>> what that process would look like (and the little bit of googling
> hasn't
> >>> shed enough light yet) so I fall back to the tools that I have found
> and
> >>> that is the ettus docker container with oe-build (
> >>> https://github.com/EttusResearch/ettus-docker/tree/master/oe-build)
> and
> >> the
> >>> instructions there.  As far as I know I only need the sdimg, but this
> >> goes
> >>> back to not being familiar with the build process so I could be off
> base.
> >>> Looking at the `setup_build_env.sh` script, mender seems to be tied in
> >> both
> >>> as a layer and what the image may inherit from.  I don't know if it is
> as
> >>> simple as removing the references to mender in that file and calling
> >> build
> >>> or if that will break the resulting image (technically already broken
> >> since
> >>> it segfaults for me -- libfftw see
> >>>
> >>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/063062.html
> >> )
> >>> but I'd like to know I'm not introducing new problems at the same time
> I
> >> am
> >>> trying to resolve my first problem.
> >>>
> >>> Ben
> >>>
> >>> On Thu, Nov 19, 2020 at 5:22 PM Philip Balister <philip@balister.org>
> >> wrote:
> >>>
> >>>> Build without mender?
> >>>>
> >>>> Philip
> >>>>
> >>>> On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:
> >>>>> I've been trying to rebuild meta-ettus (in this case -v4.0.0.0) with
> >>>> debug
> >>>>> enabled but am hitting an issue with image size being larger than an
> >> 8GB
> >>>> sd
> >>>>> card and can't seem to get past that.  It says I should increase
> >>>>> `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but
> >>>> increasing
> >>>>> this in `local.conf` this seems to have no effect.  I am using the
> >> ettus
> >>>>> docker image for oe-builder with the command
> >>>>> `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For
> >> the
> >>>>> debug portion I've added a few lines to `build/conf/local.conf` to
> add
> >>>> the
> >>>>> packages.  Anyone know how to increase the total storage size so that
> >> it
> >>>>> can build the image?
> >>>>>
> >>>>> Thanks in advance.
> >>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list
> >>>>> USRP-users@lists.ettus.com
> >>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>
> >>>>
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--00000000000029acbc05b5cc99ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just wanted to say thanks for the assistance, that worked =
great.<div><br></div><div>As a heads up if you are building against zeus &a=
mp; dunfell and need fft support you are likely going to hit the same issue=
 I did.=C2=A0 As a work around I just pulled gcc 8.3 back in zeus.=C2=A0=C2=
=A0<a href=3D"https://github.com/FFTW/fftw3/issues/213">https://github.com/=
FFTW/fftw3/issues/213</a></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Dec 4, 2020 at 2:34 PM Philip Balist=
er &lt;<a href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 12/4/20=
 10:52 AM, Ben Magistro via USRP-users wrote:<br>
&gt; How do you handle uboot?=C2=A0 I&#39;ve managed to get an ext4 rootfs =
(haven&#39;t tried<br>
&gt; adding debug yet, just trying to get to a known point to start from) a=
nd<br>
&gt; cheated by overwriting an existing partition on a drive (not a viable =
long<br>
&gt; term solution in my mind).=C2=A0 Yes this is a zeus build, only thing =
I knew of<br>
&gt; on the meta-sdr side that was using a gr3.8 release and I have seen yo=
ur<br>
&gt; additional question (<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2020-December/063288.html" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-December/063288.html=
</a><br>
&gt; ).<br>
&gt; <br>
&gt; Below is what I&#39;m using as a bblayers.<br>
&gt; <br>
&gt; Appreciate your assistance and patience while I&#39;m figuring this ou=
t.<br>
<br>
Try adding:<br>
<br>
WKS_FILE=3D&quot;sdimage-8G.wks&quot;<br>
IMAGE_FSTYPES +=3D &quot;wic.gz wic.bmap&quot;<br>
<br>
to local.conf. This should get you files in tmp.../deploy/images/machine<br=
>
that end in wic.gz and wic.bmap. You can use bmaptool to write them<br>
directly to the SD card.<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; <br>
&gt; # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayer=
s.conf<br>
&gt; # changes incompatibly<br>
&gt; POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br>
&gt; <br>
&gt; BBPATH =3D &quot;${TOPDIR}&quot;<br>
&gt; BBFILES ?=3D &quot;&quot;<br>
&gt; <br>
&gt; #=C2=A0 alt for poky<br>
&gt; #=C2=A0 /home/user/oe-zeus/sources/openembedded-core/meta<br>
&gt; BBLAYERS ?=3D &quot; \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/poky/meta \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/poky/meta-poky \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-openembedded/meta-oe \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-openembedded/meta-python \=
<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-openembedded/meta-filesyst=
ems \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-openembedded/meta-networki=
ng \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-security/meta-tpm \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-ettus/meta-ettus-core \<br=
>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-ettus/meta-alchemy \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-ettus/meta-e31x \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-sdr \<br>
&gt;=C2=A0 =C2=A0/home/user/oe-zeus/sources/meta-qt5 \<br>
&gt;=C2=A0 =C2=A0&quot;<br>
&gt; <br>
&gt; On Fri, Nov 20, 2020 at 11:04 AM Philip Balister &lt;<a href=3D"mailto=
:philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;<br>
&gt; wrote:<br>
&gt; <br>
&gt;&gt; The quick answer is switch the bsp layer from<br>
&gt;&gt;<br>
&gt;&gt; meta-e31x-mender<br>
&gt;&gt;<br>
&gt;&gt; to meta-e31x<br>
&gt;&gt;<br>
&gt;&gt; and see what happens. I find I ahve to fiddle a lot with the ettus=
<br>
&gt;&gt; builds, so it does help to know OpenEmbedded/Yocto.<br>
&gt;&gt;<br>
&gt;&gt; Anyone know the status of the clock speed issue I reported a while=
 back?<br>
&gt;&gt; A quick scan of metta-ettus shows no updates since Sep 13.<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 11/20/20 10:44 AM, Ben Magistro via USRP-users wrote:<br>
&gt;&gt;&gt; I&#39;m open to that idea but am not familiar with openembedde=
d/yocto/mender<br>
&gt;&gt; or<br>
&gt;&gt;&gt; what that process would look like (and the little bit of googl=
ing hasn&#39;t<br>
&gt;&gt;&gt; shed enough light yet) so I fall back to the tools that I have=
 found and<br>
&gt;&gt;&gt; that is the ettus docker container with oe-build (<br>
&gt;&gt;&gt; <a href=3D"https://github.com/EttusResearch/ettus-docker/tree/=
master/oe-build" rel=3D"noreferrer" target=3D"_blank">https://github.com/Et=
tusResearch/ettus-docker/tree/master/oe-build</a>) and<br>
&gt;&gt; the<br>
&gt;&gt;&gt; instructions there.=C2=A0 As far as I know I only need the sdi=
mg, but this<br>
&gt;&gt; goes<br>
&gt;&gt;&gt; back to not being familiar with the build process so I could b=
e off base.<br>
&gt;&gt;&gt; Looking at the `setup_build_env.sh` script, mender seems to be=
 tied in<br>
&gt;&gt; both<br>
&gt;&gt;&gt; as a layer and what the image may inherit from.=C2=A0 I don&#3=
9;t know if it is as<br>
&gt;&gt;&gt; simple as removing the references to mender in that file and c=
alling<br>
&gt;&gt; build<br>
&gt;&gt;&gt; or if that will break the resulting image (technically already=
 broken<br>
&gt;&gt; since<br>
&gt;&gt;&gt; it segfaults for me -- libfftw see<br>
&gt;&gt;&gt;<br>
&gt;&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/2020-November/063062.html" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/063062.=
html</a><br>
&gt;&gt; )<br>
&gt;&gt;&gt; but I&#39;d like to know I&#39;m not introducing new problems =
at the same time I<br>
&gt;&gt; am<br>
&gt;&gt;&gt; trying to resolve my first problem.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ben<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu, Nov 19, 2020 at 5:22 PM Philip Balister &lt;<a href=3D=
"mailto:philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;<=
br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Build without mender?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:<br=
>
&gt;&gt;&gt;&gt;&gt; I&#39;ve been trying to rebuild meta-ettus (in this ca=
se -v4.0.0.0) with<br>
&gt;&gt;&gt;&gt; debug<br>
&gt;&gt;&gt;&gt;&gt; enabled but am hitting an issue with image size being =
larger than an<br>
&gt;&gt; 8GB<br>
&gt;&gt;&gt;&gt; sd<br>
&gt;&gt;&gt;&gt;&gt; card and can&#39;t seem to get past that.=C2=A0 It say=
s I should increase<br>
&gt;&gt;&gt;&gt;&gt; `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is l=
arger but<br>
&gt;&gt;&gt;&gt; increasing<br>
&gt;&gt;&gt;&gt;&gt; this in `local.conf` this seems to have no effect.=C2=
=A0 I am using the<br>
&gt;&gt; ettus<br>
&gt;&gt;&gt;&gt;&gt; docker image for oe-builder with the command<br>
&gt;&gt;&gt;&gt;&gt; `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v=
4.0.0.0`.=C2=A0 For<br>
&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt; debug portion I&#39;ve added a few lines to `build/con=
f/local.conf` to add<br>
&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt; packages.=C2=A0 Anyone know how to increase the total =
storage size so that<br>
&gt;&gt; it<br>
&gt;&gt;&gt;&gt;&gt; can build the image?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Thanks in advance.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>

--00000000000029acbc05b5cc99ba--


--===============5895533049151117143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5895533049151117143==--

