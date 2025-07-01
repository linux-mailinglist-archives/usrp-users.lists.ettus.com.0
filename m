Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81142AEF88C
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 14:30:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44D8038630A
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 08:30:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751373035; bh=ADZv2GpH/eBePT05QacgtXirrzn+4UXEsFGW8/ggLNg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RPtR0XiuMuvnjyoWhb9gsD0myoGwuQVijA/9LXpKN4mzXFgSr2RA+F5AkceiqLzvR
	 mfwaMW3HRbNE7g6f4u2cJest+Lu4E/jPQNbjfs7V3SHdQCUmynrbSKCsGJQUiyZjcu
	 rs3GeYQFdSgKdW6ZfRWwI8B11XE5ayvvWA/aablwqyl5szYqqyS0AVab4+F/UgVlHc
	 Lgl13DoJJv2K5Da4CXbKylR8LgO3N6UhMWpcAP7VAxL8UMShyBtQA9keQIAD9ztT5z
	 amQmtcdQ3u0hI2zYxU+R5lyY39jIcQZMfvgYB7ZVlqMMdLPbg7wMb9+n44Axx+rFxg
	 t7sCpZA3BDAFA==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 69CDC385B65
	for <usrp-users@lists.ettus.com>; Tue,  1 Jul 2025 08:29:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="NGax0nw6";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-608acb0a27fso5379363a12.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Jul 2025 05:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751372993; x=1751977793; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G0zQZt7c9IMV8Yi0I/HjuLigHczU8LRsgbxn03ljl1o=;
        b=NGax0nw6G3QXcLaj9h6V7IQWfHWW+dxJqUF6lRzMgTe+HY3uiccwDvKPMIVumSIJjv
         EVf0bNK+XO9Ybm6w8/Ko7W54/pVKExUkxuTPlKYXlP+ftbwylZiEDOYoarVC36UuGPlA
         YIwESviPY+fYSg71fjFEesug1HAS9sCEkyT+m5ttFf/947tPQ1XfNHMyPoD6yFx3DFXQ
         MWO7SxtrhY0sxHrm7SwHE3UiQIXWMYUGwqsw/5mND65700n1Q4uCUnhWriMR7XztMylq
         HiQYdVBTDZCNdnn6gb7Ni+efsec50CA88hWf1xN1L+Zqklw7Vc7TlJdw7IPJO9mxOYuB
         Lpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751372993; x=1751977793;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G0zQZt7c9IMV8Yi0I/HjuLigHczU8LRsgbxn03ljl1o=;
        b=wM1CyUn1zDLCxxnSGfrgXGZp+QmhkYeMt6nq42ix3PzsNkl4fMs8KPX+lx1Elx7oIi
         bg3a74EyLpzLiUzaH8I4DXxkhMUXnmfGgit4tO6nuGekincYGVMXz/YQRh6vRjQXPfbq
         W7Sg8MBI6Daq4mFI7r1KWmVzLb6axooKGn0AvwSYQvWEZtYHOh9Hilk5w6HYooMzpZ5c
         jq7AbM1HodFjCHw0dOXKoEGnk4tEW8hE/mda4FhSvKpLsv5GWlghpeD+4U3wgJ328NG+
         3if42BWpkYC0VaTvuc6tNjVc9KJBbhiZQ8P9sLTZt0Yx//y5ASj+Mo7i5jlGGSyF7TBC
         PloQ==
X-Gm-Message-State: AOJu0YwcfPHs3Y4wOPqIG0QA+keHzsL1mM16Yj8rZAhUdDQioYQuoVyf
	dIZvZJcCDPEGlSUOoANyRo4MTWS4mES+37pntgj4ZXYw/KVKvIIsV7EkqJPOwOwa6eOFoaXbLYu
	mA79lD+NxLXbgHMciBed3rdKiwCGcw8PGEPM1W9J6rnaOMJLpEaaS/Ig=
X-Gm-Gg: ASbGncvBRizOyszMGmF/EeMOAvoNSt6Dd/pXaShlnfoYhRqQmxHNPSBkz6C8Ikn35nH
	34ju4itQ6deTVjFSWbMcZfEMQ+5Klq20O1fzJ57b+mYjFLQiZWEXCFRuEqquiSDDuveoLaIBKxf
	Nivefx4CnOAKtNEiyzb0EY0v+0RTokYCCVlAVNgiYb3o8W31IC5rhF+DbjubN0TkBNNJ03Dnk7V
	nJtepqp6iVwMQ==
X-Google-Smtp-Source: AGHT+IF1VVTFQUC4ieGWEzysJala03AxCsf+01kSaiXtEOq+fEWyKrgcKbHhwEx/15TgroFoIXD+ZDo9nnjFNbKNbII=
X-Received: by 2002:a17:907:c807:b0:ae0:686a:870f with SMTP id
 a640c23a62f3a-ae34fd6d67emr1658026866b.15.1751372992438; Tue, 01 Jul 2025
 05:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <305515330.462687.1751101146454.ref@mail.yahoo.com> <305515330.462687.1751101146454@mail.yahoo.com>
In-Reply-To: <305515330.462687.1751101146454@mail.yahoo.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 1 Jul 2025 14:29:41 +0200
X-Gm-Features: Ac12FXyCJoHY615xIQBC7ezvnJTI1Eign_kHquzTQPa_ccC7ZsDPkVdW26LAOZA
Message-ID: <CAFOi1A6YDvB7K0Tdi7AqWqskAu2JQ2kPErm-_hdyHOSCCYg1KQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: MU4BGFHSLYGPGOBGNFFWODR52OD4BVB3
X-Message-ID-Hash: MU4BGFHSLYGPGOBGNFFWODR52OD4BVB3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1PPS timing depends on 1PPS/10 MHz phase - only 100ns resolution?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MU4BGFHSLYGPGOBGNFFWODR52OD4BVB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8711195394229103320=="

--===============8711195394229103320==
Content-Type: multipart/alternative; boundary="0000000000001578d10638dd4d3b"

--0000000000001578d10638dd4d3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Pat,

the USRP expects the PPS to stay consistent with respect to the 10 MHz
signal. Electrically speaking, what the PPS does is tag one specific
up-flank of the 10 MHz signal as beginning-of-second flank. The 200 MHz
master clock rate is generated from the 10 MHz with a zero-delay mode of
the corresponding PLL, so you get exactly 20 cycles of 200 MHz signal per
cycle of 10 MHz signal. The PPS therefore also can accurately tag a 200 MHz
flank, which is how we get the accuracy of our timed commands. You can set
all sorts of stuff at 5ns resolution this way, but with a timing accuracy
that is better than 5ns (it depends on the quality of your reference
signal).

If you start to drift the PPS relative to the 10 MHz, then that will throw
off the USRP, but one thing to keep in mind is that we increment the timing
counter with the 200 MHz clock, independent of the PPS signal. That means
the USRP won't care that you're drifting the PPS relative to your 10 MHz
until you do something with the PPS signal. The get_time_last_pps() value
is such a value. So if 10 MHz and PPS are drifting apart, eventually you'd
see a non-integer value there.

I'm not sure if this is helping answer your question... I don't quite
understand what you're trying to do.

--M

On Sat, Jun 28, 2025 at 10:59=E2=80=AFAM Pat Daderko via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I=E2=80=99m using an X310 w/ UBX160, referenced to an external 10 MHz and=
 1PPS
> from a good quality GPSDO (Jackson Labs Micro-JLT).  I=E2=80=99m using it=
 to
> receive a signal from a signal generator with precise timing, and trying =
to
> make precise timing measurements.  E.g. begin capturing exactly on the
> 1PPS, correlate, and find the delay.
>
> The problem I=E2=80=99m running into is that there seems to be an additio=
nal delay
> uncertainty depending where the 1PPS is relative to the 10 MHz phase.  I.=
e.
> it seems that the 1PPS is registered on the 10 MHz edge, instead of the
> master clock (200 MHz) like I would have expected.  So, instead of 5ns
> uncertainty (would be OK), I=E2=80=99m seeing 100ns of uncertainty.
>
> The reason it=E2=80=99s particularly problematic is that (oddly) while th=
is GPSDO
> phase locks the 1PPS to the 10 MHz, every time it locks to GPS, the 1PPS
> locks at a random phase (wherever is closest to 0 ns to UTC).  It doesn=
=E2=80=99t
> lock (for example) the rising edge of the 10 MHz to the 1PPS.  And if it
> does a =E2=80=9Cjam sync=E2=80=9D from the OCXO drifting outside the allo=
wed window, it
> again moves the 1PPS, disregarding the phase of the 10 MHz.  From the
> documentation, it sounds like its PPS resolution is based on a 180 MHz
> clock (5.55 ns).
>
> I=E2=80=99m using a modified rx_samples_to_file, which sets external refe=
rence,
> syncs to 1PPS, starts at a specified time, etc=E2=80=A6 which has 100% co=
nsistent
> timing, until the 1PPS/10 MHz phase changes (GPSDO power cycle or jam
> sync).  The signal generator creates the sequence to correlate against
> precisely on the 1PPS with just a few ns of jitter from phase of the
> reference.
>
> I was able to synthetically create conditions to test this.  I connected
> the signal generator and X310 to the same 1PPS and 10 MHz reference, and
> captured/correlated at 5ns steps.  There=E2=80=99s a small amount of vari=
ation due
> to the GPSDO 5.55ns step resolution and signal generator 3.125ns
> resolution, but basically, the computed timing moved linearly with the
> shift in phase relative to the 10 MHz.
>
> Images are attached.  On the oscilloscope plots I used infinite
> persistence, triggered on the rising edge of the 1PPS.  The yellow trace =
is
> one of the chips of the sequence from the signal generator, which you can
> see has consistent timing vs. the 1PPS.  The blue is the 1PPS input, and
> magenta is the 1PPS output from the X310.  The green trace is the 10 MHz
> (buffered square wave from the signal generator).  I noticed the X310 1PP=
S
> output also always has consistent timing, so it seems it=E2=80=99s not ac=
tually the
> 1PPS registered in the FPGA for timing.  The 2nd oscilloscope image shows
> when I had shifted the 1PPS 180 degrees out of phase from the 10 MHz in t=
he
> first image.  The correlation results for each shift were plotted in Exce=
l.
>
> First of all, does anyone know if the 1PPS triggering/time tagging is
> supposed to only have 100ns resolution?  Anyone have any ideas on how to
> improve this, or is there some other way of determining what the offset
> actually is (at say 5ns resolution) even if it everything still operates =
at
> 10 MHz?
>
> I=E2=80=99ve looked at the metadata from the stream, and it always return=
s the
> exact same timing values.  Calling get_time_last_pps() also always return=
s
> the same value (e.g. 3.000000000 seconds)=E2=80=A6 I was hoping one of th=
ese might
> say 2.999999990 or something, in which case I could infer that there was =
a
> 10ns shift.  Any other timing functions that=E2=80=99d measure with the 2=
00 MHz
> master clock?  Or should I give up on this and figure out another solutio=
n?
>
> Thanks,
> Pat_______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001578d10638dd4d3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Pat,</div><div><br></div><div>the USRP expects the PP=
S to stay consistent with respect to the 10 MHz signal. Electrically speaki=
ng, what the PPS does is tag one specific up-flank of the 10 MHz signal as =
beginning-of-second flank. The 200 MHz master clock rate is generated from =
the 10 MHz with a zero-delay mode of the corresponding PLL, so you get exac=
tly 20 cycles of 200 MHz signal per cycle of 10 MHz signal. The PPS therefo=
re also can accurately tag a 200 MHz flank, which is how we get the accurac=
y of our timed commands. You can set all sorts of stuff at 5ns resolution t=
his way, but with a timing accuracy that is better than 5ns (it depends on =
the quality of your reference signal).</div><div><br></div><div>If you star=
t to drift the PPS relative to the 10 MHz, then that will throw off the USR=
P, but one thing to keep in mind is that we increment the timing counter wi=
th the 200 MHz clock, independent of the PPS signal. That means the USRP wo=
n&#39;t care that you&#39;re drifting the PPS relative to your 10 MHz until=
 you do something with the PPS signal. The get_time_last_pps() value is suc=
h a value. So if 10 MHz and PPS are drifting apart, eventually you&#39;d se=
e a non-integer value there.</div><div><br></div><div>I&#39;m not sure if t=
his is helping answer your question... I don&#39;t quite understand what yo=
u&#39;re trying to do.</div><div><br></div><div>--M</div></div><br><div cla=
ss=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sat, Jun 28, 2025 at 10:59=E2=80=AFAM Pat Daderko via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
,<br>
<br>
I=E2=80=99m using an X310 w/ UBX160, referenced to an external 10 MHz and 1=
PPS from a good quality GPSDO (Jackson Labs Micro-JLT).=C2=A0 I=E2=80=99m u=
sing it to receive a signal from a signal generator with precise timing, an=
d trying to make precise timing measurements.=C2=A0 E.g. begin capturing ex=
actly on the 1PPS, correlate, and find the delay.<br>
<br>
The problem I=E2=80=99m running into is that there seems to be an additiona=
l delay uncertainty depending where the 1PPS is relative to the 10 MHz phas=
e.=C2=A0 I.e. it seems that the 1PPS is registered on the 10 MHz edge, inst=
ead of the master clock (200 MHz) like I would have expected.=C2=A0 So, ins=
tead of 5ns uncertainty (would be OK), I=E2=80=99m seeing 100ns of uncertai=
nty.<br>
<br>
The reason it=E2=80=99s particularly problematic is that (oddly) while this=
 GPSDO phase locks the 1PPS to the 10 MHz, every time it locks to GPS, the =
1PPS locks at a random phase (wherever is closest to 0 ns to UTC).=C2=A0 It=
 doesn=E2=80=99t lock (for example) the rising edge of the 10 MHz to the 1P=
PS.=C2=A0 And if it does a =E2=80=9Cjam sync=E2=80=9D from the OCXO driftin=
g outside the allowed window, it again moves the 1PPS, disregarding the pha=
se of the 10 MHz.=C2=A0 From the documentation, it sounds like its PPS reso=
lution is based on a 180 MHz clock (5.55 ns).<br>
<br>
I=E2=80=99m using a modified rx_samples_to_file, which sets external refere=
nce, syncs to 1PPS, starts at a specified time, etc=E2=80=A6 which has 100%=
 consistent timing, until the 1PPS/10 MHz phase changes (GPSDO power cycle =
or jam sync).=C2=A0 The signal generator creates the sequence to correlate =
against precisely on the 1PPS with just a few ns of jitter from phase of th=
e reference.<br>
<br>
I was able to synthetically create conditions to test this.=C2=A0 I connect=
ed the signal generator and X310 to the same 1PPS and 10 MHz reference, and=
 captured/correlated at 5ns steps.=C2=A0 There=E2=80=99s a small amount of =
variation due to the GPSDO 5.55ns step resolution and signal generator 3.12=
5ns resolution, but basically, the computed timing moved linearly with the =
shift in phase relative to the 10 MHz.<br>
<br>
Images are attached.=C2=A0 On the oscilloscope plots I used infinite persis=
tence, triggered on the rising edge of the 1PPS.=C2=A0 The yellow trace is =
one of the chips of the sequence from the signal generator, which you can s=
ee has consistent timing vs. the 1PPS.=C2=A0 The blue is the 1PPS input, an=
d magenta is the 1PPS output from the X310.=C2=A0 The green trace is the 10=
 MHz (buffered square wave from the signal generator).=C2=A0 I noticed the =
X310 1PPS output also always has consistent timing, so it seems it=E2=80=99=
s not actually the 1PPS registered in the FPGA for timing.=C2=A0 The 2nd os=
cilloscope image shows when I had shifted the 1PPS 180 degrees out of phase=
 from the 10 MHz in the first image.=C2=A0 The correlation results for each=
 shift were plotted in Excel.<br>
<br>
First of all, does anyone know if the 1PPS triggering/time tagging is suppo=
sed to only have 100ns resolution?=C2=A0 Anyone have any ideas on how to im=
prove this, or is there some other way of determining what the offset actua=
lly is (at say 5ns resolution) even if it everything still operates at 10 M=
Hz?<br>
<br>
I=E2=80=99ve looked at the metadata from the stream, and it always returns =
the exact same timing values.=C2=A0 Calling get_time_last_pps() also always=
 returns the same value (e.g. 3.000000000 seconds)=E2=80=A6 I was hoping on=
e of these might say 2.999999990 or something, in which case I could infer =
that there was a 10ns shift.=C2=A0 Any other timing functions that=E2=80=99=
d measure with the 200 MHz master clock?=C2=A0 Or should I give up on this =
and figure out another solution?<br>
<br>
Thanks,<br>
Pat_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001578d10638dd4d3b--

--===============8711195394229103320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8711195394229103320==--
