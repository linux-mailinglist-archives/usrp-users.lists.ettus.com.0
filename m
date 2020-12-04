Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B95682CF13F
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 16:53:57 +0100 (CET)
Received: from [::1] (port=36282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klDP8-0004Yh-Mx; Fri, 04 Dec 2020 10:53:54 -0500
Received: from mail-vs1-f50.google.com ([209.85.217.50]:33738)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1klDP5-0004Nf-1X
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 10:53:51 -0500
Received: by mail-vs1-f50.google.com with SMTP id q5so3509994vsg.0
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 07:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5CFQL+EpNcxpm7rPgOqb5e6sHNuShWvutpNYYNHYVu4=;
 b=l6rT4yWu+V5mzbavWLcj5rOzh8k3Bd08S02DPoCf9jJARo/Xvc+ypDiJFlCVSBWvQu
 hSydz+V6vsIFz0COhcmd1enoNtPED/WJK2NJ7M8SIXFtgxOgtSu0i3zIPyXzStSpJNqr
 9HIhqgU95luPLMLdhuf5d4OtNepGAiYZNVNQkis7IdPpTBw4hNmw/4F+MFS6U1l+5trC
 9dX4wbaPcpT+iv661flUGpqmEaZvcfQ4pQtIKdwuVYb443KyTkRqC9d85DTRGQddHRcq
 2OX3melKTEh8yuOv3dytjAa24HWOT8HV88gtiKwwNM2gB0yxsiX9CWhRpLZp/EX/jTQK
 k9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5CFQL+EpNcxpm7rPgOqb5e6sHNuShWvutpNYYNHYVu4=;
 b=AHBXMmXBLIMwSn/iOsLLgFg0pSZojRJ/39+RwbGP43bZELCs8JzWVUFxGahHP+DVDr
 8rcj6KOmk5GQwq2WLN2rMbWXIjeTjbX+d325OKxNeuleb/QTd5ezs8ifiP4L/v+jMI+R
 ADyozZeKopsPjVBN/kuKI2kDwaVsSKmhLRikAot9rBAk7IGasuF4j3XA5XyEAP29ABmq
 6Cb65HKJ7xlKxiypRDzdmN//Inn8s7weHRomWvg2XTezJ7vxBMnWr39t8B4EEPcehFeR
 zinG/CBrzbfJdn4ukvABVCJhzvE65phHq5WJWMiLabEBglp2inGj6+WOXaC4yQpO8ysU
 9HDw==
X-Gm-Message-State: AOAM531ae9DWKymTsAQXgq32KUeF4JpVMB1il00uaJye6NIdPjDhc0ea
 nMGkMvrkCljIv6o+BNReEoqLZ25NPHFslbuVEM+ve+Qqiys=
X-Google-Smtp-Source: ABdhPJwsqtRSkOOgcjv6KNKT1WIPJFvDWmD1U+YOckFYXEatFEZjla1NYxcd1gpNo03zsxU1EiE/If0CGGoOpypw5rs=
X-Received: by 2002:a67:f915:: with SMTP id t21mr4158828vsq.55.1607097190105; 
 Fri, 04 Dec 2020 07:53:10 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
 <258c1b45-3f6c-b278-a5f6-47f08e4e3d8c@balister.org>
 <CAKx8PBhdgm0VYZQfHDUTOJZUbZfR8CWSiKORw1DV0j2BLs+rRQ@mail.gmail.com>
 <34beec6d-a910-557e-c3fe-8e8589748f14@balister.org>
In-Reply-To: <34beec6d-a910-557e-c3fe-8e8589748f14@balister.org>
Date: Fri, 4 Dec 2020 10:52:58 -0500
Message-ID: <CAKx8PBgF0XH6V7ZfEjLQ++30wPer_tP1jQDdCQCvQx7uPigTHw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0642529089995393315=="
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

--===============0642529089995393315==
Content-Type: multipart/alternative; boundary="00000000000022c79105b5a57996"

--00000000000022c79105b5a57996
Content-Type: text/plain; charset="UTF-8"

How do you handle uboot?  I've managed to get an ext4 rootfs (haven't tried
adding debug yet, just trying to get to a known point to start from) and
cheated by overwriting an existing partition on a drive (not a viable long
term solution in my mind).  Yes this is a zeus build, only thing I knew of
on the meta-sdr side that was using a gr3.8 release and I have seen your
additional question (
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-December/063288.html
).

Below is what I'm using as a bblayers.

Appreciate your assistance and patience while I'm figuring this out.


# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

#  alt for poky
#  /home/user/oe-zeus/sources/openembedded-core/meta
BBLAYERS ?= " \
  /home/user/oe-zeus/sources/poky/meta \
  /home/user/oe-zeus/sources/poky/meta-poky \
  /home/user/oe-zeus/sources/meta-openembedded/meta-oe \
  /home/user/oe-zeus/sources/meta-openembedded/meta-python \
  /home/user/oe-zeus/sources/meta-openembedded/meta-filesystems \
  /home/user/oe-zeus/sources/meta-openembedded/meta-networking \
  /home/user/oe-zeus/sources/meta-security/meta-tpm \
  /home/user/oe-zeus/sources/meta-ettus/meta-ettus-core \
  /home/user/oe-zeus/sources/meta-ettus/meta-alchemy \
  /home/user/oe-zeus/sources/meta-ettus/meta-e31x \
  /home/user/oe-zeus/sources/meta-sdr \
  /home/user/oe-zeus/sources/meta-qt5 \
  "

On Fri, Nov 20, 2020 at 11:04 AM Philip Balister <philip@balister.org>
wrote:

> The quick answer is switch the bsp layer from
>
> meta-e31x-mender
>
> to meta-e31x
>
> and see what happens. I find I ahve to fiddle a lot with the ettus
> builds, so it does help to know OpenEmbedded/Yocto.
>
> Anyone know the status of the clock speed issue I reported a while back?
> A quick scan of metta-ettus shows no updates since Sep 13.
>
> Philip
>
> On 11/20/20 10:44 AM, Ben Magistro via USRP-users wrote:
> > I'm open to that idea but am not familiar with openembedded/yocto/mender
> or
> > what that process would look like (and the little bit of googling hasn't
> > shed enough light yet) so I fall back to the tools that I have found and
> > that is the ettus docker container with oe-build (
> > https://github.com/EttusResearch/ettus-docker/tree/master/oe-build) and
> the
> > instructions there.  As far as I know I only need the sdimg, but this
> goes
> > back to not being familiar with the build process so I could be off base.
> > Looking at the `setup_build_env.sh` script, mender seems to be tied in
> both
> > as a layer and what the image may inherit from.  I don't know if it is as
> > simple as removing the references to mender in that file and calling
> build
> > or if that will break the resulting image (technically already broken
> since
> > it segfaults for me -- libfftw see
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/063062.html
> )
> > but I'd like to know I'm not introducing new problems at the same time I
> am
> > trying to resolve my first problem.
> >
> > Ben
> >
> > On Thu, Nov 19, 2020 at 5:22 PM Philip Balister <philip@balister.org>
> wrote:
> >
> >> Build without mender?
> >>
> >> Philip
> >>
> >> On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:
> >>> I've been trying to rebuild meta-ettus (in this case -v4.0.0.0) with
> >> debug
> >>> enabled but am hitting an issue with image size being larger than an
> 8GB
> >> sd
> >>> card and can't seem to get past that.  It says I should increase
> >>> `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but
> >> increasing
> >>> this in `local.conf` this seems to have no effect.  I am using the
> ettus
> >>> docker image for oe-builder with the command
> >>> `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For
> the
> >>> debug portion I've added a few lines to `build/conf/local.conf` to add
> >> the
> >>> packages.  Anyone know how to increase the total storage size so that
> it
> >>> can build the image?
> >>>
> >>> Thanks in advance.
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

--00000000000022c79105b5a57996
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How do you handle uboot?=C2=A0 I&#39;ve managed to get an =
ext4 rootfs (haven&#39;t tried adding debug yet, just trying to get to a kn=
own point to start from) and cheated by overwriting an existing partition o=
n a drive (not a viable long term solution in my mind).=C2=A0 Yes this is a=
 zeus build, only thing I knew of on the meta-sdr side that was using a gr3=
.8 release and I have seen your additional question (<a href=3D"http://list=
s.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-December/063288.html"=
>http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-December/=
063288.html</a>).<div><br></div><div>Below is what I&#39;m using as a bblay=
ers.</div><div><br></div><div>Appreciate your assistance and patience while=
 I&#39;m figuring this out.</div><div><br></div><div><div><br></div><div># =
POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf<=
br># changes incompatibly<br>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<b=
r><br>BBPATH =3D &quot;${TOPDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<br><br>=
# =C2=A0alt for poky<br># =C2=A0/home/user/oe-zeus/sources/openembedded-cor=
e/meta<br>BBLAYERS ?=3D &quot; \<br>=C2=A0 /home/user/oe-zeus/sources/poky/=
meta \<br>=C2=A0 /home/user/oe-zeus/sources/poky/meta-poky \<br>=C2=A0 /hom=
e/user/oe-zeus/sources/meta-openembedded/meta-oe \<br>=C2=A0 /home/user/oe-=
zeus/sources/meta-openembedded/meta-python \<br>=C2=A0 /home/user/oe-zeus/s=
ources/meta-openembedded/meta-filesystems \<br>=C2=A0 /home/user/oe-zeus/so=
urces/meta-openembedded/meta-networking \<br>=C2=A0 /home/user/oe-zeus/sour=
ces/meta-security/meta-tpm \<br>=C2=A0 /home/user/oe-zeus/sources/meta-ettu=
s/meta-ettus-core \<br>=C2=A0 /home/user/oe-zeus/sources/meta-ettus/meta-al=
chemy \<br>=C2=A0 /home/user/oe-zeus/sources/meta-ettus/meta-e31x \<br>=C2=
=A0 /home/user/oe-zeus/sources/meta-sdr \<br>=C2=A0 /home/user/oe-zeus/sour=
ces/meta-qt5 \<br>=C2=A0 &quot;<br></div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 20, 2020 at 11:0=
4 AM Philip Balister &lt;<a href=3D"mailto:philip@balister.org">philip@bali=
ster.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">The quick answer is switch the bsp layer from<br>
<br>
meta-e31x-mender<br>
<br>
to meta-e31x<br>
<br>
and see what happens. I find I ahve to fiddle a lot with the ettus<br>
builds, so it does help to know OpenEmbedded/Yocto.<br>
<br>
Anyone know the status of the clock speed issue I reported a while back?<br=
>
A quick scan of metta-ettus shows no updates since Sep 13.<br>
<br>
Philip<br>
<br>
On 11/20/20 10:44 AM, Ben Magistro via USRP-users wrote:<br>
&gt; I&#39;m open to that idea but am not familiar with openembedded/yocto/=
mender or<br>
&gt; what that process would look like (and the little bit of googling hasn=
&#39;t<br>
&gt; shed enough light yet) so I fall back to the tools that I have found a=
nd<br>
&gt; that is the ettus docker container with oe-build (<br>
&gt; <a href=3D"https://github.com/EttusResearch/ettus-docker/tree/master/o=
e-build" rel=3D"noreferrer" target=3D"_blank">https://github.com/EttusResea=
rch/ettus-docker/tree/master/oe-build</a>) and the<br>
&gt; instructions there.=C2=A0 As far as I know I only need the sdimg, but =
this goes<br>
&gt; back to not being familiar with the build process so I could be off ba=
se.<br>
&gt; Looking at the `setup_build_env.sh` script, mender seems to be tied in=
 both<br>
&gt; as a layer and what the image may inherit from.=C2=A0 I don&#39;t know=
 if it is as<br>
&gt; simple as removing the references to mender in that file and calling b=
uild<br>
&gt; or if that will break the resulting image (technically already broken =
since<br>
&gt; it segfaults for me -- libfftw see<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2020-November/063062.html" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/063062.html=
</a>)<br>
&gt; but I&#39;d like to know I&#39;m not introducing new problems at the s=
ame time I am<br>
&gt; trying to resolve my first problem.<br>
&gt; <br>
&gt; Ben<br>
&gt; <br>
&gt; On Thu, Nov 19, 2020 at 5:22 PM Philip Balister &lt;<a href=3D"mailto:=
philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt; wrote:<b=
r>
&gt; <br>
&gt;&gt; Build without mender?<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:<br>
&gt;&gt;&gt; I&#39;ve been trying to rebuild meta-ettus (in this case -v4.0=
.0.0) with<br>
&gt;&gt; debug<br>
&gt;&gt;&gt; enabled but am hitting an issue with image size being larger t=
han an 8GB<br>
&gt;&gt; sd<br>
&gt;&gt;&gt; card and can&#39;t seem to get past that.=C2=A0 It says I shou=
ld increase<br>
&gt;&gt;&gt; `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger bu=
t<br>
&gt;&gt; increasing<br>
&gt;&gt;&gt; this in `local.conf` this seems to have no effect.=C2=A0 I am =
using the ettus<br>
&gt;&gt;&gt; docker image for oe-builder with the command<br>
&gt;&gt;&gt; `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`=
.=C2=A0 For the<br>
&gt;&gt;&gt; debug portion I&#39;ve added a few lines to `build/conf/local.=
conf` to add<br>
&gt;&gt; the<br>
&gt;&gt;&gt; packages.=C2=A0 Anyone know how to increase the total storage =
size so that it<br>
&gt;&gt;&gt; can build the image?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks in advance.<br>
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

--00000000000022c79105b5a57996--


--===============0642529089995393315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0642529089995393315==--

