Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC13F40494C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 13:30:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2F1B384416
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 07:30:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="Mzv7iOHe";
	dkim-atps=neutral
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id DD5523843FF
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 07:30:03 -0400 (EDT)
Received: by mail-ed1-f43.google.com with SMTP id q3so2198027edt.5
        for <usrp-users@lists.ettus.com>; Thu, 09 Sep 2021 04:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=veRDgfzD0iPQmtUvzinGILgWVKltfOgikEb4+GYZUdc=;
        b=Mzv7iOHeutuyvbJ7URFJ+DSzy8QurPB1eHjzS8J/5jebh8lTlQO26aj6/MaaC9RSPs
         cMP0CJV7HZk4MkL9H3KV90lhfuoTWUs7s1lUAPoa7pMBEdBfhMtVdsddy3riiWltR5e6
         n8ELxqgQrxv5Fx/kKCkfR9FzMsJl91H/xTtHn0e5k3RJYF+7VUHPMUx5SeQLMLUjr/zH
         4NJore03kN7RsX6iw05NqthZU6hmBGFaGWuTH3HT8XLqmSMQBNERtTDxMPEtXXtSAxLK
         CJdfIDtxUTWnIs+26UZw0ESmPjSa5dcXpQ76bMAflpRhfDvUd4x12bfcXZLz8Q6xKSMv
         K2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=veRDgfzD0iPQmtUvzinGILgWVKltfOgikEb4+GYZUdc=;
        b=igg60acLa8IbEKcRj78E8imsSXL2vMxr1NWE+x6x9/I2eVrGRp/J4Iue1V2WkpzxrD
         VwkHTAiZZkhMVNBXYPOQzPglGNbtL0HQxzFhq4wDhXbXCg9rPLrcIEzYApy43mIPWHRZ
         Qm7Ci8Khl0FE5FjbtGgLGY93L74klvapCux/MRPqjI/XyDX09wswIq8p2MMNhAC8PpBi
         e2c31TxZ3jekEQ/RVBTbw6yGEM6femBsNordqsWsDb4cTlFEPCoexvatcesWrOPDFrGa
         9wHjTEY+3it+PPAjWrIgbS9lPcVklsPhYwh6a/XkLuBKs+UIArKdZpH5NEfMJh5X+5MA
         g2Jw==
X-Gm-Message-State: AOAM530VDmYABmec3/yVcU2Zb45TV+TecLgV4idFJHM8WuUykegnYUGU
	akre+DXCgcUhd68QfTWQONmXdpEZkuJCJl+x9EMNpQ4A+tlcDw==
X-Google-Smtp-Source: ABdhPJyx0/azc34xpO7vG1GaPLZB88hN4RsdQsqq9LWlALWH1suj+MkFGzNLPSK8gfe463o6BjsPRRDVTC0JHDvpfEM=
X-Received: by 2002:aa7:d947:: with SMTP id l7mr2690110eds.105.1631187002753;
 Thu, 09 Sep 2021 04:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210907222503.Horde.1VehEQybsJZtjZQOIfHL6dd@wimap.feld.cvut.cz>
In-Reply-To: <20210907222503.Horde.1VehEQybsJZtjZQOIfHL6dd@wimap.feld.cvut.cz>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 9 Sep 2021 13:29:51 +0200
Message-ID: <CAFOi1A4R6amAWY7JDpPya-wnQo1cpjUnBx0Tr4yHKVuAGxf8Ew@mail.gmail.com>
To: tywonemi@fel.cvut.cz
Message-ID-Hash: XBMTY4JC4FC4J2AXOB7RKRRBEDB5DK4L
X-Message-ID-Hash: XBMTY4JC4FC4J2AXOB7RKRRBEDB5DK4L
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Struggling to build kernel and userspace for x400
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBMTY4JC4FC4J2AXOB7RKRRBEDB5DK4L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2512302439202903099=="

--===============2512302439202903099==
Content-Type: multipart/alternative; boundary="000000000000dca31505cb8e5105"

--000000000000dca31505cb8e5105
Content-Type: text/plain; charset="UTF-8"

Emil,

it's all in the repos (MPM/UHD/FPGA, but also partly in our OE stack as we
have some custom kernel drivers). Like Marcus said, this isn't something we
can provide a lot of assistance with, but you can find all the code in our
repos. If you have access to an X410 (or an E300 or N300 series USRP), you
can get a better insight into how the UHD/MPM/FPGA/Linux stacks interact.

--M

On Tue, Sep 7, 2021 at 10:25 PM <tywonemi@fel.cvut.cz> wrote:

> Dear USRP maintainers,
>
> As my master's thesis I've set out to port the GNU Radio RFNoC to the
> RFSoC 2x2 development board for purposes of academic research of
> optical communications, and I have some issues. If it's more practical
> for you, feel free to forward me to written resources I may have missed.
> First some context: The motivation for this is rapid development and
> measurement on a digitizer-like platform without RF frontends. Since
> USRP x410 has the same SoC on board, the easiest way for me to do this
> will be to use as much of the existing open source work done by
> forking the USRP design. However, I'm getting stuck on building yocto
> due to a symbol duplicate in gdbm build within the oe-core package.
> There seem to be several steps involved in this port/fork - stubbing
> the RF frontend controls and removing support in the UHD host drivers,
> adapting the board constraints, possibly reducing some buffer sizes
> due to lower available PL RAM, but right now I am trying to verify if
> I'll be able to get access to all the sources and tools required to
> make the processing subsystem pipe or filter samples between the hard
> logic gigabit ethernet controller and the programmable logic with the
> RFNoC crossbar, and to perform the RFNoC control operations. This is
> because the RFSoC 2x2 lacks an SFP-like interface for higher bandwidth
> data packet streaming. It's only mentioned in one line in the x410
> manual:
> Like other USRPs, it is addressable through a 1 GbE RJ45 connector,
> which allows full access to the embedded Linux system, as well as data
> streaming at low rates.
> I'd like to build Linux for the USRP to see what sources it pulls and
> to verify and maybe modify the datapath from the gigabit controller
> through the driver to the PL. However, I have trouble getting it to
> build.
> I'm running Arch Linux with GCC 11.1, kas 2.5 (directly, no docker image).
> On meta-ettus repository, tag v4.1.0.2-rc3, running
> `./contrib/kas_build_imgs_package.sh x4xx` fails the oe-core step:
>
> | /home/emil/school/meta-ettus/build/tmp-glibc/hosttools/ld:
> ./libgdbmapp.a(parseopt.o):(.bss+0x8): multiple definition of
> `parseopt_program_args'; gdbmtool.o:(.data.rel.local+0x260): first
> defined here
> | /home/emil/school/meta-ettus/build/tmp-glibc/hosttools/ld:
> ./libgdbmapp.a(parseopt.o):(.bss+0x10): multiple definition of
> `parseopt_program_doc'; gdbmtool.o:(.data.rel.local+0x268): first
> defined here
>
> Is this replicable for you? It happens to me with the x4xx-prerelease
> tag, too. Is there some frozen development setup environment that
> should be used? Is that included in the kas docker? If so, how would I
> invoke kas from docker to use the yaml configs?
>
> Also, I've gone through the "MPM" and "firmware" sections of the UHD
> tree looking for software that would run on the SoC and configure the
> gigabit ethernet and work with it. For example, in x300, this is done
> in firmware/usrp3/x300/x300_init.c but I have not found any
> configuration (any eventual calls to xge_* etc). Am I wrong to assume
> that this code has not been published yet? Is it going to be made open
> source in the future? It really seems like everything else is present,
> but the actual userspace software running on the x400.
>
> Best regards,
>
> Emil J Tywoniak,
> Faculty of Electrical Engineering
> Czech Technical University in Prague
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dca31505cb8e5105
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Emil,</div><div><br></div><div>it&#39;s all in the re=
pos (MPM/UHD/FPGA, but also partly in our OE stack as we have some custom k=
ernel drivers). Like Marcus said, this isn&#39;t something we can provide a=
 lot of assistance with, but you can find all the code in our repos. If you=
 have access to an X410 (or an E300 or N300 series USRP), you can get a bet=
ter insight into how the UHD/MPM/FPGA/Linux stacks interact.</div><div><br>=
</div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Sep 7, 2021 at 10:25 PM &lt;<a href=3D"mail=
to:tywonemi@fel.cvut.cz">tywonemi@fel.cvut.cz</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Dear USRP maintainers,<br>
<br>
As my master&#39;s thesis I&#39;ve set out to port the GNU Radio RFNoC to t=
he=C2=A0 <br>
RFSoC 2x2 development board for purposes of academic research of=C2=A0 <br>
optical communications, and I have some issues. If it&#39;s more practical=
=C2=A0 <br>
for you, feel free to forward me to written resources I may have missed.<br=
>
First some context: The motivation for this is rapid development and=C2=A0 =
<br>
measurement on a digitizer-like platform without RF frontends. Since=C2=A0 =
<br>
USRP x410 has the same SoC on board, the easiest way for me to do this=C2=
=A0 <br>
will be to use as much of the existing open source work done by=C2=A0 <br>
forking the USRP design. However, I&#39;m getting stuck on building yocto=
=C2=A0 <br>
due to a symbol duplicate in gdbm build within the oe-core package.<br>
There seem to be several steps involved in this port/fork - stubbing=C2=A0 =
<br>
the RF frontend controls and removing support in the UHD host drivers,=C2=
=A0 <br>
adapting the board constraints, possibly reducing some buffer sizes=C2=A0 <=
br>
due to lower available PL RAM, but right now I am trying to verify if=C2=A0=
 <br>
I&#39;ll be able to get access to all the sources and tools required to=C2=
=A0 <br>
make the processing subsystem pipe or filter samples between the hard=C2=A0=
 <br>
logic gigabit ethernet controller and the programmable logic with the=C2=A0=
 <br>
RFNoC crossbar, and to perform the RFNoC control operations. This is=C2=A0 =
<br>
because the RFSoC 2x2 lacks an SFP-like interface for higher bandwidth=C2=
=A0 <br>
data packet streaming. It&#39;s only mentioned in one line in the x410=C2=
=A0 <br>
manual:<br>
Like other USRPs, it is addressable through a 1 GbE RJ45 connector,=C2=A0 <=
br>
which allows full access to the embedded Linux system, as well as data=C2=
=A0 <br>
streaming at low rates.<br>
I&#39;d like to build Linux for the USRP to see what sources it pulls and=
=C2=A0 <br>
to verify and maybe modify the datapath from the gigabit controller=C2=A0 <=
br>
through the driver to the PL. However, I have trouble getting it to=C2=A0 <=
br>
build.<br>
I&#39;m running Arch Linux with GCC 11.1, kas 2.5 (directly, no docker imag=
e).<br>
On meta-ettus repository, tag v4.1.0.2-rc3, running=C2=A0 <br>
`./contrib/kas_build_imgs_package.sh x4xx` fails the oe-core step:<br>
<br>
| /home/emil/school/meta-ettus/build/tmp-glibc/hosttools/ld:=C2=A0 <br>
./libgdbmapp.a(parseopt.o):(.bss+0x8): multiple definition of=C2=A0 <br>
`parseopt_program_args&#39;; gdbmtool.o:(.data.rel.local+0x260): first=C2=
=A0 <br>
defined here<br>
| /home/emil/school/meta-ettus/build/tmp-glibc/hosttools/ld:=C2=A0 <br>
./libgdbmapp.a(parseopt.o):(.bss+0x10): multiple definition of=C2=A0 <br>
`parseopt_program_doc&#39;; gdbmtool.o:(.data.rel.local+0x268): first=C2=A0=
 <br>
defined here<br>
<br>
Is this replicable for you? It happens to me with the x4xx-prerelease=C2=A0=
 <br>
tag, too. Is there some frozen development setup environment that=C2=A0 <br=
>
should be used? Is that included in the kas docker? If so, how would I=C2=
=A0 <br>
invoke kas from docker to use the yaml configs?<br>
<br>
Also, I&#39;ve gone through the &quot;MPM&quot; and &quot;firmware&quot; se=
ctions of the UHD=C2=A0 <br>
tree looking for software that would run on the SoC and configure the=C2=A0=
 <br>
gigabit ethernet and work with it. For example, in x300, this is done=C2=A0=
 <br>
in firmware/usrp3/x300/x300_init.c but I have not found any=C2=A0 <br>
configuration (any eventual calls to xge_* etc). Am I wrong to assume=C2=A0=
 <br>
that this code has not been published yet? Is it going to be made open=C2=
=A0 <br>
source in the future? It really seems like everything else is present,=C2=
=A0 <br>
but the actual userspace software running on the x400.<br>
<br>
Best regards,<br>
<br>
Emil J Tywoniak,<br>
Faculty of Electrical Engineering<br>
Czech Technical University in Prague<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dca31505cb8e5105--

--===============2512302439202903099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2512302439202903099==--
