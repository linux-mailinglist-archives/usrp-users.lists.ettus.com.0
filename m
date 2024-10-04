Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 387B198FE72
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 10:04:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D574D385484
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 04:04:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728029077; bh=PMAWj5RaFGGIeZllVccrwOrtGTLrPIvjLCBpBXKZ6wE=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YVf9GpfqYifArAShBRYc98CVSuAfcluossrkuq+DJFovv0+lqimPXeR7TWotknRl1
	 JQeQq+C4e0WunYdm3TN59RyJPBZnE1VWridNmOy0O+RuPUjLH88nie2Io+5DZjjBUX
	 op4jge6i/j9Ps0xr/xOkuiT56ZbaCChLH1mFz4UKipzVmck8+EXh+sYZ+y8I0owuRU
	 lYxZlI1fZOvuEWUJ1H+KlNl5d0S27xOw/a8wbroXvpoLcT0qx6SbQ4PeL5OqJz2rA4
	 cjcJbxwJhbDxC1LTWECa+BPXusDmubnM69T3h6IC9YYxOLuFtEzHy5c1njGDu9wURi
	 Hz/V0Xu/078AA==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 84AD63840C0
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 04:04:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="yiDTBOWb";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c88c9e45c2so5126684a12.0
        for <usrp-users@lists.ettus.com>; Fri, 04 Oct 2024 01:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728029073; x=1728633873; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LgWtQOX6j0Qewcb4i/MCgSSq+H2hRzz0rmclz1VgOc=;
        b=yiDTBOWbPZlGeqdaS0QDhZULfmMsZjnPMba5OgoEvLc88GFJBqAxLaRYYH3fLy930s
         c3JZb4fqWLCKMFb7Eif0PCYJmzC6jjJItf+9lz+38GQ6QEogsXU1g6yV7Im/BpJrFzYl
         /AG2o4G5rwEtl2hl2y/6cC2EJ5f4TG6ELWoPCueyFQmFdTYsSLTvcP26IEp64tjOVWo7
         GyISdf9FJTpPh1+xI5vg6kq3TohjLCOSAzQlWz15av2k8EltwzWNd4uo9cObfuXhx1IN
         rJXNdZC9O9dTgAu2lIyLn/Jqgk4sncEezS7he0VVJ6z7Z8I9/jVkevPJpofj+W9t3JG2
         iOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029073; x=1728633873;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LgWtQOX6j0Qewcb4i/MCgSSq+H2hRzz0rmclz1VgOc=;
        b=dwVIwVNfw9IIRH9jC5mlyy+2tBOdVFCTGZRBe9/+gU60ZZQpUbupQzFgheDLzbTIS/
         dhFIb4G0KjGC/mOFkA7d8i/ptzo/f60U6ie3uiBeb3nGbZtTHbyCt9eVqERmGxY7cl80
         4jq6P5gCvmySZieJxcbGiUPll8XxERl49KrFkRacyat5e4ddqOztQ4qUIt0XGB+E2m6f
         4SmXa7yZMxMv4ABTlWiHXbgMBFDDwi/BlDTVEII58MaKFfLrv/bGXf+Gw1u0siRZ6DVS
         x26zTWZ6E3uZEBkXYzzeVUG011K7jrVLugWSx/MqqtYjw1FqFAgcb6vVXVdO/JPdEiBD
         AjGg==
X-Gm-Message-State: AOJu0YzPgqJvUIL+XjDrm/g3wKkZjO5Iytky3QRjSV/91WDoW8RnbD/k
	MwvTWXV34QwbCHiTkN9gzAfe2365UFtzZmNx+JCb1ErcG0h1xHkW9S0ShtlWkaRcYcV+gR/K95z
	EOzob9pacvFRd+/YPD3l+FqwK5j8Sj5EazrsDSTzbXgDdxFx1ESA=
X-Google-Smtp-Source: AGHT+IEwBjX5v6iJVxIHr6HDIrKu+qbHqv7fkN8VeLl72G+Xd1bUhf+Hau9LLFSRJJDFJ+/aLNBo1wo5DMddUSORtR0=
X-Received: by 2002:a05:6402:348e:b0:5c5:cb7f:e56a with SMTP id
 4fb4d7f45d1cf-5c8c09f4689mr6645975a12.1.1728029073039; Fri, 04 Oct 2024
 01:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g@lists.ettus.com>
In-Reply-To: <tf5ue4l9lPiRe0L7QfvjtgqlZxmTK1OIW81vX6g@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 4 Oct 2024 10:04:21 +0200
Message-ID: <CAFOi1A68vM3tONkkd9+dm4UxE5EhQi5J3C04mZp-7=xUT9_T5Q@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 6DEBXBQOC4EKS3L5YKSXGVWGPH7JZO7Y
X-Message-ID-Hash: 6DEBXBQOC4EKS3L5YKSXGVWGPH7JZO7Y
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6DEBXBQOC4EKS3L5YKSXGVWGPH7JZO7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2417205230062552736=="

--===============2417205230062552736==
Content-Type: multipart/alternative; boundary="0000000000000f855e0623a21f73"

--0000000000000f855e0623a21f73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey all,

thanks for the feedback on our build system. Mike, I'm glad to hear you
weren't put off by the `rfnoc_image_builder` workflow on top of make (I
assume you've been using that given the UHD 4.7 dependency?) and it's nice
to hear you've been successful building stuff.

I had actually checked out hdlmake as a potential amendment for our build
system in the past, and it didn't really fit. For example, re-targeting
FPGAs (we need this, e.g., for the X300 vs. X310 builds, but also for the
X410 vs. X440 builds where we share IP between devices) wasn't
straightforward. Despite all the annoying things that come with CMake (who
came up with that syntax?) it has brought a bunch of niceties to software
builds that I think the FPGA build world is still missing. We had also
looked at scons in the past, but although we're generally Python fans it
didn't jibe with us.

That said if you find something unnecessarily annoying with our build
system, please let us know. We know that building custom bitfiles for USRPs
hasn't always been the easiest/nicest option in the past, and we would
really like to make the FPGA computational capacities available to more
people.

--M

On Thu, Oct 3, 2024 at 7:23=E2=80=AFPM mruane--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Piotr,
>
> Every time I see a clever set of build scripts or a really good Make
> integration I think about trying to adapt it to my workflow and incorpora=
te
> it into my build process. I really do like the Ettus UHD setup. It seems
> remarkably flexible. They clearly put a lot of thought into it. I don=E2=
=80=99t
> think that it would be too difficult to fork UHD, and start removing thin=
gs
> until you had just the build system. Then it could possibly be made more
> generic.
>
> There are a few attempts at FPGA build tools that have gotten my interest
> over the years. I worked at a place that used Python-based Scons,
> <https://github.com/SCons/scons> which was pretty powerful, worked well,
> and is well supported. The OSVVM <https://github.com/osvvm/OsvvmLibraries=
>
> project, by Jim Lewis, is a little similar to Scons in the way it is set
> up. OSVVM written in TCL and VHDL, though, and is a VHDL
> simulation/verification framework build tool. I use it all the time for
> simulation. What=E2=80=99s also cool about it is that it would be really =
easy to
> interface with a Make build system to use Make to launch various
> simulations or regression tests. I=E2=80=99ve also been planning on integ=
rating it
> into our GitLab CI, so that simulation regression tests can be triggered =
by
> a merge to the FPGA design repo. HDLMake
> <https://github.com/HDLMake/hdl-make> also looks interesting to me, but I
> don=E2=80=99t know much about it.
>
> I think the only reason that I haven=E2=80=99t set any of them up (except=
 for
> OSVVM) is that they seem to require some intangible commitment that cause=
s
> me to push it off for later. :-)
>
> At the end of the day, Marcus is right. Make is ubiquitous; it integrates
> with everything; and it looks like it will be actively maintained forever=
.
> :-)
>
> I would like to see if I can integrate OSVVM into the UHD Make flow to
> create and launch simulations and regression tests. I think it would be
> pretty straightforward.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000f855e0623a21f73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey all,</div><div><br></div><div>thanks for the feed=
back on our build system. Mike, I&#39;m glad to hear you weren&#39;t put of=
f by the `rfnoc_image_builder` workflow on top of make (I assume you&#39;ve=
 been using that given the UHD 4.7 dependency?) and it&#39;s nice to hear y=
ou&#39;ve been successful building stuff.</div><div><br></div><div>I had ac=
tually checked out hdlmake as a potential amendment for our build system in=
 the past, and it didn&#39;t really fit. For example, re-targeting FPGAs (w=
e need this, e.g., for the X300 vs. X310 builds, but also for the X410 vs. =
X440 builds where we share IP between devices) wasn&#39;t straightforward. =
Despite all the annoying things that come with CMake (who came up with that=
 syntax?) it has brought a bunch of niceties to software builds that I thin=
k the FPGA build world is still missing. We had also looked at scons in the=
 past, but although we&#39;re generally Python fans it didn&#39;t jibe with=
 us.</div><div><br></div><div>That said if you find something unnecessarily=
 annoying with our build system, please let us know. We know that building =
custom bitfiles for USRPs hasn&#39;t always been the easiest/nicest option =
in the past, and we would really like to make the FPGA computational capaci=
ties available to more people.</div><div><br></div><div>--M<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Oct 3, 2024 at 7:23=E2=80=AFPM mruane--- via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Piotr,</p><p>=
Every time I see a clever set of build scripts or a really good Make integr=
ation I think about trying to adapt it to my workflow and incorporate it in=
to my build process.   I really do like the Ettus UHD setup.   It seems rem=
arkably flexible.   They clearly put a lot of thought into it.   I don=E2=
=80=99t think that it would be too difficult to fork UHD, and start removin=
g things until you had just the build system.   Then it could possibly be m=
ade more generic.</p><p>There are a few attempts at FPGA build tools that h=
ave gotten my interest over the years.   I worked at a place that used Pyth=
on-based <a href=3D"https://github.com/SCons/scons" title=3D"Scons" target=
=3D"_blank">Scons,</a> which was pretty powerful, worked well, and is well =
supported.   The <a href=3D"https://github.com/osvvm/OsvvmLibraries" title=
=3D"OSVVM" target=3D"_blank">OSVVM</a> project, by Jim Lewis, is a little s=
imilar to Scons in the way it is set up.   OSVVM written in TCL and VHDL, t=
hough, and is a VHDL simulation/verification framework build tool.   I use =
it all the time for simulation.   What=E2=80=99s also cool about it is that=
 it would be really easy to interface with a Make build system to use Make =
to launch various simulations or regression tests.   I=E2=80=99ve also been=
 planning on integrating it into our GitLab CI, so that simulation regressi=
on tests can be triggered by a merge to the FPGA design repo.   <a href=3D"=
https://github.com/HDLMake/hdl-make" title=3D"" target=3D"_blank">HDLMake</=
a> also looks interesting to me, but I don=E2=80=99t know much about it.</p=
><p>I think the only reason that I haven=E2=80=99t set any of them up (exce=
pt for OSVVM) is that they seem to require some intangible commitment that =
causes me to push it off for later. :-)</p><p>At the end of the day, Marcus=
 is right.   Make is ubiquitous; it integrates with everything; and it look=
s like it will be actively maintained forever. :-)</p><p>I would like to se=
e if I can integrate OSVVM into the UHD Make flow to create and launch simu=
lations and regression tests.   I think it would be pretty straightforward.=
</p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000f855e0623a21f73--

--===============2417205230062552736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2417205230062552736==--
