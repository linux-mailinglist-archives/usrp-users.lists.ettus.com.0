Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E7F3E9338
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 16:04:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1228B384738
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 10:04:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U9hGOJ4n";
	dkim-atps=neutral
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 05E0C3845E6
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 10:04:07 -0400 (EDT)
Received: by mail-lf1-f53.google.com with SMTP id x8so6007412lfe.3
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 07:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DF4TVy/kfHWB2GKwizA/Syy1JHIcbNnTgPVXAFj3i1Q=;
        b=U9hGOJ4nY6Y0somB7VmTwu9jHZsuk6L+AZ8qCyQ/QLy7yuTTqV9WJ5XMjSWnxz3mfM
         p2B8iwmrjvyaMZ4G0PX30AHpXo/qKMNZefZNEZ3GyvuRq6zkrBohPZnacIh5Z9YUkPcS
         ak7z8hqioIUT33VOITj2Io8ZNF2Sr1o4kWuZ3REbxxVeqe74EGt7kHHpbEo7fPEGlh7J
         dSh7/mA/9JApsZa0vkYS9wls3oOgfzUbKLMzpOubFn+D6abC/pwCCQfvusE8z8JQ1mii
         CGwtEtWXA0KY6ZTlZVTtCFgO88JDZTHEu2TpEgPorrMhhSNG2VRAFdqp+Zt5/KqYsqJo
         Gw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DF4TVy/kfHWB2GKwizA/Syy1JHIcbNnTgPVXAFj3i1Q=;
        b=QXaJJPUmVcbbWlUkH6QuR1/OGJHFjwpnR0Ib+t/gIuKkp1sCaxnSXFmG+cKUNjHF6N
         M9OLdY/tyHysq9vw+70BvUL26mnTruhYHT/XBJQLkob+ClxR05HaVZR0/T0ZZFSJFCUr
         gPQ3syaxjv0R1Bp4DGH0fMUSxDSo6I4EyYnX6ln/m4ywH73biEjHRB7DHJGL5olpX6pE
         /QxxV+EycFRipcAc/zM/ggZLcLHGnCrMuixZ5dZW1AG+fBBFMKXasiQfaV0JPCkF8JPD
         v2FMdZ0hU+djYwwlejq+psKMtikDe75gJWQddtsumPNeMpr2WEXMWn0DqCDohP956uz7
         FL3g==
X-Gm-Message-State: AOAM533aQfMjDAjK5k84x94RdUTQGGkTjOaJ//MZAB+x5YrkQczzRrXr
	8kYxP/kSKguX75OpnyO6Lx5moEFzaJK+jS53vog=
X-Google-Smtp-Source: ABdhPJzE086d7/P/Hmwv2Xyd2WB/Y7p7gcZ4kfQQqSgeeY+a9MtcaysQL2taDhXX9MPAIIq6CVszkLoZBcsoDFvePHs=
X-Received: by 2002:a19:8c10:: with SMTP id o16mr24671208lfd.164.1628690646421;
 Wed, 11 Aug 2021 07:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
 <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com> <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com>
In-Reply-To: <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Wed, 11 Aug 2021 10:03:55 -0400
Message-ID: <CACwKM9L2b0o5aLRRVCwgcOVAa+HV_J+fhheTNbMOJJEC6J+wwQ@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Message-ID-Hash: 2PF4JEEOXYSY4TGO4AXUKQ2VXS4RRUGG
X-Message-ID-Hash: 2PF4JEEOXYSY4TGO4AXUKQ2VXS4RRUGG
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2PF4JEEOXYSY4TGO4AXUKQ2VXS4RRUGG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8873172459983594111=="

--===============8873172459983594111==
Content-Type: multipart/alternative; boundary="0000000000006dd3f105c9491766"

--0000000000006dd3f105c9491766
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, then what else could it be? it's the identical behavior to the report
ed bug.

I have a b210 and b205mini and both produce this issue
Both have worked fine at higher sample rates in the past.

My setup is
ubuntu20.04
UHD 4.0 (via pybombs)
GNURadio 3.9 (via pybombs)

when I run the flowgraph in GNURadio at a high sample rate (40Msps) i still
get this error note the =E2=80=98O=E2=80=99 right before:
__________________________________________________
Ogr::log :ERROR: usrp_source0 - In the last 2593 ms, 3735602 overflows
occurred.
____________________________________________________

the GUI window locks up completely. i did this originally with fosphor and
thought it was a graphics card issue, but running it with regular QT GUI
has the same issues.


running the example with 20 second duration:
time ./rx_samples_to_file --rate 30e6 --gain 40.0 --freq 915e6 --bw 36e6
--progress --file testfile.bin --continue --duration 20
____________________________________________________
Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-193-g0d184ff4
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO....
[INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B210
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX2
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX2
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: FE-TX1

Setting RX Rate: 30.000000 Msps...
[INFO] [B200] Asking for clock rate 30.000000 MHz...
[INFO] [B200] Actually got clock rate 30.000000 MHz.
Actual RX Rate: 30.000000 Msps...

Setting RX Freq: 915.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 915.000000 MHz...

Setting RX Gain: 40.000000 dB...
Actual RX Gain: 40.000000 dB...

Setting RX Bandwidth: 36.000000 MHz...
Actual RX Bandwidth: 36.000000 MHz...

Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...
30.0098 Msps
30 Msps
29.9999 Msps
29.9998 Msps
29.9999 Msps
29.9996 Msps
OGot an overflow indication. Please consider the following:
  Your write medium must sustain a rate of 120.000000MB/s.
  Dropped samples will not be written to the file.
  Please modify this example for your purposes.
  This message will not appear again.
Timeout while streaming

Done!


real 0m15.034s
user 0m0.347s
sys 0m1.623s




<end transmission>

On Aug 11, 2021, at 08:53, Michael Dickens <michael.dickens@ettus.com>
wrote:

=EF=BB=BF
FYI Ron's patch is integrated in the UHD-4.0 and UHD-4.1 and master
branches, and was in the UHD 4.1.0.0 release. It was not part of the UHD
4.0.0.0 release, and has not been backported to the UHD-3.15-LTS (or prior)
branch. - MLD

UHD-4.0 :
https://github.com/EttusResearch/uhd/commit/3d9d68af799c73dd8bfe566294461a3=
55ced4c56
UHD-4.1 and master :
https://github.com/EttusResearch/uhd/commit/70e1f0f0c697d6522e3a87e2de93e34=
e375decb4

On Wed, Aug 11, 2021 at 2:52 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> Thanks so much Ron. I Will test this first thing in the morning=E2=80=A6a=
lthough I
> guess technically it is morning.
> Talk soon
> <end transmission>
>
> On Aug 11, 2021, at 02:17, Ron Economos <w6rz@comcast.net> wrote:
>
> =EF=BB=BF
>
> I have a patch that I've tested to work well. In UHD v4.0.0.0, add this
> line of code:
>
> diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> index 4b09f75fd..368ae8e0a 100644
> --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
>          cmd_word |=3D uint32_t((inst_stop) ? 1 : 0) << 28;
>          cmd_word |=3D (inst_samps) ? stream_cmd.num_samps : ((inst_stop)=
 ?
> 0 : 1);
>
> +        _continuous_streaming =3D stream_cmd.stream_mode
> +                                =3D=3D
> stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
> +
>          // issue the stream command
>          _iface->poke32(REG_CTRL_CMD, cmd_word);
>          const uint64_t ticks =3D
>
> Ron
> On 8/10/21 10:48 PM, Paul Atreides wrote:
>
> what is the current guidance until this bug is fixed? i've recompiled UHD
> 3 times now.
> UHD4.0
> UHD4.1
> master
> all of them have the same issue, if i get even one overflow in gnuradio
> the screen locks up, in rx_benchmark/rx_samples_to_file the program
> terminates early.
>
> when will this be fixed?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006dd3f105c9491766
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr">Ok, th=
en what else could it be? it&#39;s the identical behavior to the report ed =
bug.<br><br><div><span style=3D"color:rgb(0,0,0)">I have a b210 and b205min=
i and both produce this issue=C2=A0</span><div style=3D"color:rgb(0,0,0)">B=
oth have worked fine at higher sample rates in the past.=C2=A0</div></div><=
div style=3D"color:rgb(0,0,0)"><br></div><div>My setup is=C2=A0</div><div>u=
buntu20.04</div><div>UHD 4.0 (via pybombs)</div><div>GNURadio 3.9 (via pybo=
mbs)</div><br>when I run the flowgraph in GNURadio at a high sample rate (4=
0Msps) i still get this error note the =E2=80=98O=E2=80=99 right before:<di=
v>__________________________________________________<br></div><div>Ogr::log=
 :ERROR: usrp_source0 - In the last 2593 ms, 3735602 overflows occurred.</d=
iv><div>____________________________________________________</div><div><br>=
</div><div>the GUI window locks up completely. i did this originally with f=
osphor and thought it was a graphics card issue, but running it with regula=
r QT GUI has the same issues.</div><div><br></div><div><br></div><div>runni=
ng the example with 20 second duration:<br>time ./rx_samples_to_file --rate=
 30e6 --gain 40.0 --freq 915e6 --bw 36e6 --progress --file testfile.bin --c=
ontinue --duration 20<br>__________________________________________________=
__<br>Creating the usrp device with: ...<br>[INFO] [UHD] linux; GNU C++ ver=
sion 9.3.0; Boost_107100; UHD_4.0.0.0-193-g0d184ff4<br>[INFO] [B200] Detect=
ed Device: B210<br>[INFO] [B200] Operating over USB 3.<br>[INFO] [B200] Det=
ecting internal GPSDO.... <br>[INFO] [GPS] Found an internal GPSDO: GPSTCXO=
, Firmware Rev 0.929b<br>[INFO] [B200] Initialize CODEC control...<br>[INFO=
] [B200] Initialize Radio control...<br>[INFO] [B200] Performing register l=
oopback test... <br>[INFO] [B200] Register loopback test passed<br>[INFO] [=
B200] Performing register loopback test... <br>[INFO] [B200] Register loopb=
ack test passed<br>[INFO] [B200] Setting master clock rate selection to &#3=
9;automatic&#39;.<br>[INFO] [B200] Asking for clock rate 16.000000 MHz... <=
br>[INFO] [B200] Actually got clock rate 16.000000 MHz.<br>Using Device: Si=
ngle USRP:<br>=C2=A0 Device: B-Series Device<br>=C2=A0 Mboard 0: B210<br>=
=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard:=
 A<br>=C2=A0 =C2=A0 RX Subdev: FE-RX2<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=
=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: FE-=
RX1<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX =
Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: FE-TX2<br>=C2=A0 TX Channel: 1<br>=C2=
=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subd=
ev: FE-TX1<br><br>Setting RX Rate: 30.000000 Msps...<br>[INFO] [B200] Askin=
g for clock rate 30.000000 MHz... <br>[INFO] [B200] Actually got clock rate=
 30.000000 MHz.<br>Actual RX Rate: 30.000000 Msps...<br><br>Setting RX Freq=
: 915.000000 MHz...<br>Setting RX LO Offset: 0.000000 MHz...<br>Actual RX F=
req: 915.000000 MHz...<br><br>Setting RX Gain: 40.000000 dB...<br>Actual RX=
 Gain: 40.000000 dB...<br><br>Setting RX Bandwidth: 36.000000 MHz...<br>Act=
ual RX Bandwidth: 36.000000 MHz...<br><br>Waiting for &quot;lo_locked&quot;=
: ++++++++++ locked.<br><br>Press Ctrl + C to stop streaming...<br>	30.0098=
 Msps<br>	30 Msps<br>	29.9999 Msps<br>	29.9998 Msps<br>	29.9999 Msps<br>	29=
.9996 Msps<br>OGot an overflow indication. Please consider the following:<b=
r>=C2=A0 Your write medium must sustain a rate of 120.000000MB/s.<br>=C2=A0=
 Dropped samples will not be written to the file.<br>=C2=A0 Please modify t=
his example for your purposes.<br>=C2=A0 This message will not appear again=
.<br>Timeout while streaming<br><br>Done!<br><br><br>real	0m15.034s<br>user=
	0m0.347s<br>sys	0m1.623s<br></div><div><div><br></div><br><div><div><br><b=
r><div id=3D"m_1140599505535650576AppleMailSignature" dir=3D"ltr">&lt;<span=
>end transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Aug 11, 2021, at 08:53, Michael Dickens &lt;<a href=3D"mailto:mich=
ael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; =
wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr"=
>=EF=BB=BF<div dir=3D"ltr"><div>FYI Ron&#39;s patch is integrated in the UH=
D-4.0 and UHD-4.1 and master branches, and was in the UHD 4.1.0.0 release. =
It was not part of the UHD 4.0.0.0 release, and has not been backported to =
the UHD-3.15-LTS (or prior) branch. - MLD<br></div><div><br></div><div>UHD-=
4.0 :=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/commit/3d9d68af7=
99c73dd8bfe566294461a355ced4c56" target=3D"_blank">https://github.com/Ettus=
Research/uhd/commit/3d9d68af799c73dd8bfe566294461a355ced4c56</a></div><div>=
UHD-4.1 and master :=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/c=
ommit/70e1f0f0c697d6522e3a87e2de93e34e375decb4" target=3D"_blank">https://g=
ithub.com/EttusResearch/uhd/commit/70e1f0f0c697d6522e3a87e2de93e34e375decb4=
</a></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Aug 11, 2021 at 2:52 AM Paul Atreides &lt;<a href=3D"mail=
to:maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Thanks so much Ron. I Will test this first thing in the morning=
=E2=80=A6although I guess technically it is morning.=C2=A0<br>Talk soon=C2=
=A0<br><div dir=3D"ltr">&lt;<span>end transmission&gt;</span></div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021, at 02:17, Ron Econo=
mos &lt;<a href=3D"mailto:w6rz@comcast.net" target=3D"_blank">w6rz@comcast.=
net</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div=
 dir=3D"ltr">=EF=BB=BF
 =20
   =20
 =20
 =20
    <p>I have a patch that I&#39;ve tested to work well. In UHD v4.0.0.0,
      add this line of code:<br>
    </p>
    <p>diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
      b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      index 4b09f75fd..368ae8e0a 100644<br>
      --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl :
      rx_vita_core_3000<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint32=
_t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (inst_=
samps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      =C2=A0<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D=
 stream_cmd.stream_mode<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the stream =
command<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface-&gt;poke32(RE=
G_CTRL_CMD, cmd_word);<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t ticks=
 =3D<br>
    </p>
    <p>Ron<br>
    </p>
    <div>On 8/10/21 10:48 PM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>
          <div>
            <div>what is the current guidance until this bug is fixed?
              i&#39;ve recompiled UHD 3 times now. <br>
            </div>
            UHD4.0<br>
          </div>
          UHD4.1<br>
        </div>
        <div>master</div>
        <div>all of them have the same issue, if i get even one overflow
          in gnuradio the screen locks up, in
          rx_benchmark/rx_samples_to_file the program terminates early.
          <br>
        </div>
        <div><br>
        </div>
        <div>when will this be fixed?<br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></div></div></div></div></div>

--0000000000006dd3f105c9491766--

--===============8873172459983594111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8873172459983594111==--
