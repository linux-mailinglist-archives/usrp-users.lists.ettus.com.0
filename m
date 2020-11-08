Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC6D2AAE4C
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 00:31:12 +0100 (CET)
Received: from [::1] (port=49096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kbu9O-0001VF-Ey; Sun, 08 Nov 2020 18:31:10 -0500
Received: from mail-ua1-f46.google.com ([209.85.222.46]:46876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kbu9K-0001Bm-46
 for usrp-users@lists.ettus.com; Sun, 08 Nov 2020 18:31:06 -0500
Received: by mail-ua1-f46.google.com with SMTP id y1so2234882uac.13
 for <usrp-users@lists.ettus.com>; Sun, 08 Nov 2020 15:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m1F3oUdJSsiARDeWtHIwYCvEeUMo2uzsVmOQHEiA5uE=;
 b=FWRn35iwOw5/QnlYreAknQ/6LAJ+gy8jTHdpjELuvI8ptfmeCXD62PP6shfrOefH5F
 UtuGEMg7ifOWZEora6PFDH9hBLd36dOZ+BHqwKYBi+LxYgrhY7zzZcBamcEeVNTSC3AA
 Abk4FBfRJkcdH2qrDXtH+/zNYKNMX0vIW7GA5SjvKw7fsOsyKPUg6ccM9oDVNX4q9gl2
 fG1ayvwTyZ+W+hFPH51+djkl/nk3zvs5pBsKNTrRYh+7IwBxOfJZK1K5vBhMwcEOxYWL
 j0SNt7qERgT4cw0bTkJyjCxEG/k/p09ZsDJ/46PtGu5BRfSegRvTA11CoYcH+e78MIqN
 ZVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m1F3oUdJSsiARDeWtHIwYCvEeUMo2uzsVmOQHEiA5uE=;
 b=kTjLjbgltlpdv+5OO/4kItKEEpCtSWZ9dHf08yXry8Wbd8oT8JKJv4TEiSd3XurcmE
 5Mz181C18bs2wCVA5g+qMzpAlH+tRkfayW7x6r5yd9rjotsltCflP0dSdMSRllkfjP0X
 Np3wy5PBzZsoegCkWdTKsgSDhkeF7N2W3KHV3Xx+F5Sr1nYsq27fvjc1tfRs3hdYdAC1
 rdw/FO5DMY8PVrCtESwX9DYlsVvBtktVdTkPxsbbZyk8gnfuyNhvQ0Z2ACr0e3oUkbjY
 W06mypjM+SRSBMnSV1gtySvV6Vo59m99kHVZtUK47arYS6xGJYz045GMvuA/nZM/MLCd
 rcXA==
X-Gm-Message-State: AOAM531m7yfNlZ36gWRI0Zed0KNIhzcvsFy61b9XTEjuhopmAkDvR728
 Kep0YGD9SUk4nq8YqDxWPQjAp4ahqvPPjIAaryk0wz0TOyGjY5JW
X-Google-Smtp-Source: ABdhPJx5LWnK4o8V7tLfBju8e3yFOF2rfSleVT2JDlSkEI1pUzBme+VC+nm9C+LCyWt0fgYxC8dJFpDk5Q1H25410k0=
X-Received: by 2002:ab0:3565:: with SMTP id e5mr5725931uaa.139.1604878225387; 
 Sun, 08 Nov 2020 15:30:25 -0800 (PST)
MIME-Version: 1.0
References: <585bd1dbd1d942c8bfafd898cc230039@exchange.iptronix.local>
In-Reply-To: <585bd1dbd1d942c8bfafd898cc230039@exchange.iptronix.local>
Date: Sun, 8 Nov 2020 18:29:49 -0500
Message-ID: <CAL7q81vFv46PG0jBcf1gRPjUyUCmeiuCb=6vD1kYwRK84kHvuA@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc on uhd4 &grc 3.8/9
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3718955074763755985=="
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

--===============3718955074763755985==
Content-Type: multipart/alternative; boundary="0000000000008849a205b3a0d4b9"

--0000000000008849a205b3a0d4b9
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

Building UHD and gr-ettus from source is the correct approach. You can
either build GNURadio 3.8 from source or install it via your
distribution's package manager.

When building from source, make sure to use the following branches:
- UHD: UHD-4.0
- GNU Radio: maint-3.8
- gr-ettus: maint-3.8-uhd4.0

1) is there any way to use rfnoc in grc as of today that doesn't need
> manual creation of the block.yaml files?


I think your issue stems from using the wrong gr-ettus branch (maint-3.8 vs
maint-3.8-uhd4.0). Make sure you are using the branches I listed above.


> 2) why the fft block using the block.yaml definition from gr-uhd doesn't
> seem to work?


Do not build from GNURadio's master branch. Use the maint-3.8 branch.


> 3) how do I make oot blocks recognized by probe and grc?


R&D is aware of the uhd_usrp_probe Block#0 issue. It is benign and can be
ignored as it does not affect the functionality of your block.

Jonathon

On Sun, Nov 8, 2020 at 5:54 PM Dario Pennisi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I've been trying to create and use a rfnoc block for n310 within gnuradio
> 3.8 and uhd4.0. I first tried with pybombs but this doesn't not seem to
> work very well and there is no default recipe that works. I then moved to
> manual install from source and got something up using the maint-3.8 and
> uhd-4.0 branches however none of the rfnoc blocks in uhd 4.0 seem to be
> usable directly in gnuradio companion as the yaml files in uhd are not
> compatible with the yaml block files required by grc.
>
> I then moved to master branch of both repositories and this installs with
> gnuradio, some yaml files for some of the blocks in uhd, so I tired
> compiling a fpga with fft block as instructed in the tutorial but the fft
> would not produce output data.
>
> Finally I tried compiling the gain example block out of tree and installed
> its control block both with maint 3.8 branch (that uses swig) and master
> branches (that uses pybind11) but in both cases the block doesn't get
> recognized when i issue uhd_usrp_probe and it gets listed as block#0
> regardless of Ldconfig.
> I get it listed in grc after I created a second yaml file compatible with
> grc but of course running a graph will fail as it doesn't find the block
> control class, likely because in the installation process I don't see
> python bindings being generated for it, regardless of the binding creation
> mechanism.
>
> So my questions are:
> 1) is there any way to use rfnoc in grc as of today that doesn't need
> manual creation of the block.yaml files?
> 2) why the fft block using the block.yaml definition from gr-uhd doesn't
> seem to work?
> 3) how do I make oot blocks recognized by probe and grc?
>
> Thanks,
>
>
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008849a205b3a0d4b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dario,<div><br></div><div>Building UHD and gr-ettus fro=
m source is the correct approach. You can either build GNURadio=C2=A03.8 fr=
om source or install it via your distribution&#39;s=C2=A0package manager.</=
div><div><br></div><div><div>When building from source, make sure to use th=
e following branches:</div><div>- UHD: UHD-4.0</div><div>- GNU Radio: maint=
-3.8</div><div>- gr-ettus: maint-3.8-uhd4.0</div><div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">1) is there any way to use rfnoc in =
grc as of=C2=A0<a>today</a>=C2=A0that doesn&#39;t need manual creation of t=
he block.yaml files?</blockquote><div><br></div><div>I think your issue ste=
ms from using the wrong gr-ettus branch (maint-3.8 vs maint-3.8-uhd4.0). Ma=
ke sure you are using the branches I listed above.</div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">2) why the fft block using =
the block.yaml definition from gr-uhd doesn&#39;t seem to work?</blockquote=
><div><br></div><div>Do not build from GNURadio&#39;s master branch. Use th=
e maint-3.8 branch.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">3) how do I make oot blocks recognized by probe and grc?</=
blockquote><div><br></div><div>R&amp;D is aware of the uhd_usrp_probe Block=
#0 issue. It is benign and can be ignored as it does not affect the functio=
nality=C2=A0of your block.</div></div><div><br></div><div>Jonathon</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sun, Nov 8, 2020 at 5:54 PM Dario Pennisi via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div dir=3D"auto">
<div dir=3D"auto">
<div dir=3D"auto">Hi,</div>
<div dir=3D"auto">I&#39;ve been trying to create and use a rfnoc block for =
n310 within gnuradio 3.8 and uhd4.0. I first tried with pybombs but this do=
esn&#39;t not seem to work very well and there is no default recipe that wo=
rks. I then moved to manual install from source
 and got something up using the maint-3.8 and uhd-4.0 branches however none=
 of the rfnoc blocks in uhd 4.0 seem to be usable directly in gnuradio comp=
anion as the yaml files in uhd are not compatible with the yaml block files=
 required by grc.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I then moved to master branch of both repositories and th=
is installs with gnuradio, some yaml files for some of the blocks in uhd, s=
o I tired compiling a fpga with fft block as instructed in the tutorial but=
 the fft would not produce output
 data.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Finally I tried compiling the gain example block out of t=
ree and installed its control block both with maint 3.8 branch (that uses s=
wig) and master branches (that uses pybind11) but in both cases the block d=
oesn&#39;t get recognized when i issue
 uhd_usrp_probe and it gets listed as block#0 regardless of Ldconfig.=C2=A0=
</div>
<div dir=3D"auto">I get it listed in grc after I created a second yaml file=
 compatible with grc but of course running a graph will fail as it doesn&#3=
9;t find the block control class, likely because in the installation proces=
s I don&#39;t see python bindings being generated
 for it, regardless of the binding creation mechanism.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">So my questions are:</div>
<div dir=3D"auto">1) is there any way to use rfnoc in grc as of <a>today</a=
> that doesn&#39;t need manual creation of the block.yaml files?</div>
<div dir=3D"auto">2) why the fft block using the block.yaml definition from=
 gr-uhd doesn&#39;t seem to work?</div>
<div dir=3D"auto">3) how do I make oot blocks recognized by probe and grc?<=
/div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Thanks,</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto" id=3D"gmail-m_-5990431940125830798composer_signature">Dar=
io Pennisi</div>
</div>
<div dir=3D"auto"><br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008849a205b3a0d4b9--


--===============3718955074763755985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3718955074763755985==--

