Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6A048195
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 14:12:40 +0200 (CEST)
Received: from [::1] (port=33384 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcqUz-0004Bm-05; Mon, 17 Jun 2019 08:12:33 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:34899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hcqUv-000473-93
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 08:12:29 -0400
Received: by mail-io1-f48.google.com with SMTP id m24so20663566ioo.2
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 05:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aBt8+uNaHr5fCA+gUwW4aSUuAszTHyhnI0B4jltr0Vk=;
 b=HRj6F6lBbMGyWYGkhhhcRgOOoLpUS0WcjemPy9Hqt9XFDDoQ+aQyUI4HQALzS0KQVJ
 0TgdWmYpkixPvRO2gjDnbHeEJP3sNsgu3hJDVsloZc6q60G3MoWWtDcITJv+u4wFyTiH
 C+icc+GjgKSnKVklcgnBt2zKZ1U5qCwBQ/my1YIcIwjUaWTYpbF77Ul+67jtvJ17bYUG
 6dtaicA+xY0LBNR2OWtT3eiXOz6/yCS0YzH2RFHLz3rFx+eYwvaVTu93exzaYbhprm7i
 zq6H421Pw7Gpgb2UJGmh8DwF8REP7+vk3duwg4Doj7+1bMSztg+Saaw4gPe30W34s/ay
 eZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aBt8+uNaHr5fCA+gUwW4aSUuAszTHyhnI0B4jltr0Vk=;
 b=C8b+KYdOtTVG51C+A4QZQun8ZfUIBubn+k2Uh1Or11kGz0Ws9DV/pwMIzdcJnnfj30
 75JirOhc9JHcznTv5S1dSI/2oYMOMRNBggP/3fL+Lj/lGVZ2wT1wBsTfIbE7nxhRBixn
 xsGnnep6VcCjTRRyLCBFhXpCLjsjv44qVEUuIj0auH0ozuEiiIVFL5vGPl1Xo1Gl61dM
 iwYqIelIjoGd1+OhiGrneiaGvFtxOX6MgRQiWCeb1TDZTIPdjIlfa2/su+3IMIiOq3cL
 rHCI7syf6p60Dt+ttkfjogxNZ/1Bp+d+CAxY7NpbgB3V0mZqW1TB21gCRsj2Pzhet8Gk
 rd2w==
X-Gm-Message-State: APjAAAVu8m3+h56m2t02YhsbuDqCzhla7su1L0nvPglxERAO1VtEfEVv
 B4iMTvsMpIKNMAz3Y4UhtT7v3RvU7z4EUhGdzp4=
X-Google-Smtp-Source: APXvYqwsNj1x6A8hSX/8ndhrW/acBxp+B9mxuKji5HM7+WcDpb+w4AQyRndNCDLWCQNUd3LQSR5j/qVZp7H0NkbxUx8=
X-Received: by 2002:a02:862b:: with SMTP id e40mr56781854jai.7.1560773508532; 
 Mon, 17 Jun 2019 05:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAKA0MUh7YvcFKaHvxa1zuW62L37O0emMw2L3VzNE4S7vu2wYHg@mail.gmail.com>
In-Reply-To: <CAKA0MUh7YvcFKaHvxa1zuW62L37O0emMw2L3VzNE4S7vu2wYHg@mail.gmail.com>
Date: Mon, 17 Jun 2019 05:08:41 -0700
Message-ID: <CA+JMMq-oTKyQSgowMOZnMX1ssA486Bkd3tGyMomJQai0Mp7eWg@mail.gmail.com>
To: Varban Metodiev <varban.metodiev@gmail.com>
Subject: Re: [USRP-users] Getting interval between samples
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2236659240619660746=="
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

--===============2236659240619660746==
Content-Type: multipart/alternative; boundary="0000000000008d0ed1058b83e626"

--0000000000008d0ed1058b83e626
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Varban,

The sample rate (interval between samples) is whatever you ask UHD to
provide. If you ask for 10Msps, you will get a stream of samples with a
sample interval of 100ns. The B205mini will configure the master clock rate
(i.e., the clock rate used natively with the AD9364) to an appropriate
value given the sample rate you ask for. The DDC will handle downconverting
from the master clock rate to your desired sample rate. There is no need
under any circumstances to write custom Verilog to measure the clock
interval between samples. There is no need to write custom software of any
kind in order to receive samples from the UHD Source/Sink blocks.

I'm afraid you might be a bit lost in the woods -- is there a specific
reason you need samples directly from the AD9364? What, exactly, are you
trying to do?

Nick

On Sun, Jun 16, 2019 at 11:39 PM Varban Metodiev via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> Recently I have been trying to figure out how to get the sample interval
> (in nanoseconds) on my USRP b205mini device that is coming from the radio
> IC. In regards with this, I would kindly ask you for assistance on the
> following questions:
>
> 1) While browsing the Verilog codes, I found out that a clock of 40MHz DD=
R
> is used for reading and writing to the AD9364 IC. When the =E2=80=9CUSRP =
Sink=E2=80=9D
> block in GNU Radio is active, does it constantly poll at 40MHz? My initia=
l
> intention was to write a separate counter block in Verilog to get the
> interval between the samples but if there are no stops/wait event on the
> bus, can I use this as time reference?
>
>
> 2) On the block diagram of the b205mini, it is mentioned that the DDC and
> the DUC are integrated in the FPGA. I have two questions here:
>
> - I couldn=E2=80=99t find them in the top module, so.. where is the exact=
 location?
>
> - Is there some way to read the samples directly from the RF IC, before
> the DDC?
>
>
> 3) About the UHD interface =E2=80=93 are there any examples on how to int=
erface my
> own block with my own registers via the USB?
>
>
> Thanks in advance,
> Varban
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008d0ed1058b83e626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Varban,</div><div><br></div><div>The sample rate (int=
erval between samples) is whatever you ask UHD to provide. If you ask for 1=
0Msps, you will get a stream of samples with a sample interval of 100ns. Th=
e B205mini will configure the master clock rate (i.e., the clock rate used =
natively with the AD9364) to an appropriate value given the sample rate you=
 ask for. The DDC will handle downconverting from the master clock rate to =
your desired sample rate. There is no need under any circumstances to write=
 custom Verilog to measure the clock interval between samples. There is no =
need to write custom software of any kind in order to receive samples from =
the UHD Source/Sink blocks.<br></div><div><br></div><div>I&#39;m afraid you=
 might be a bit lost in the woods -- is there a specific reason you need sa=
mples directly from the AD9364? What, exactly, are you trying to do?</div><=
div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 16, 2019 at 11:39 PM Varban Me=
todiev via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">
=09
=09


<p style=3D"margin-bottom:0in;line-height:100%">Hi,</p>
<p style=3D"margin-bottom:0in;line-height:100%">Recently I have been
trying to figure out how to get the sample interval (in nanoseconds)
on my USRP b205mini device that is coming from the radio IC. In
regards with this, I would kindly ask you for assistance on the
following questions:</p>
<p style=3D"margin-bottom:0in;line-height:100%">1) While browsing
the Verilog codes, I found out that a clock of 40MHz DDR is used for
reading and writing to the AD9364 IC. When the =E2=80=9CUSRP Sink=E2=80=9D =
block
in GNU Radio is active, does it constantly poll at 40MHz? My initial
intention was to write a separate counter block in Verilog to get the
interval between the samples but if there are no stops/wait event on
the bus, can I use this as time reference?</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0in;line-height:100%">2) On the block
diagram of the b205mini, it is mentioned that the DDC and the DUC are
integrated in the FPGA. I have two questions here:</p>
<p style=3D"margin-bottom:0in;line-height:100%">- I couldn=E2=80=99t find
them in the top module, so.. where is the exact location?</p>
<p style=3D"margin-bottom:0in;line-height:100%">- Is there some way
to read the samples directly from the RF IC, before the DDC?</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0in;line-height:100%">3) About the UHD
interface =E2=80=93 are there any examples on how to interface my own block
with my own registers via the USB?</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0in;line-height:100%">Thanks in
advance,<br>
Varban</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008d0ed1058b83e626--


--===============2236659240619660746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2236659240619660746==--

