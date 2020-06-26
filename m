Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AA220AA9F
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 05:15:28 +0200 (CEST)
Received: from [::1] (port=57240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joepp-00023X-NT; Thu, 25 Jun 2020 23:15:25 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:34103)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tajikd@mcmaster.ca>) id 1joepl-0001tR-7v
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 23:15:21 -0400
Received: by mail-ua1-f49.google.com with SMTP id r9so2585793ual.1
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 20:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mcmaster-ca.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VAyyS0ABMLKG24WwARAulI0vViZ5eu9WgMJbCMJ+lHM=;
 b=SMfzrby0x/1UZZZjuDperiiC250Nw/rjFlfbG34bysQbg8/LGmvbkGSJbhIs6OXh0q
 Lb/szmJep0DyCR5pDytHTVAWQo8upCCLZwc8CYN8aYThGGB4XUAVeD81JZe8xs4lflCQ
 kNZnWTPHezYTxBH1RpNszuLLsNuhGJPyL6ag3Fp848mYjqchpFbTRDnKRHsdD5e4WoCo
 ZkZFMf6AA7B23aSW+dOXP9jBtDg1oTYjTsm7ZjHhL7C7MIqusoZQcdvnGorLvPoDs2s+
 F2aQJDRJLRHeeVD/8GhVEw28gNhh2zgif3t5S7yy8mFplYUF4jPHHlNRgt75gkfTjofo
 tQYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VAyyS0ABMLKG24WwARAulI0vViZ5eu9WgMJbCMJ+lHM=;
 b=tpv1/jUbgk6FtgstewbM6svqIrrAtq/v3MzHtuETtYvD+dc3NxSkqc6YpnIymu1wwX
 1U9HwLIEIGEeBfknnszdpSC3Ue/HElaCIelaWPNH+Fug+w7dGNFZCV1mia3O1NeOrTcw
 p8PHe3vV3xhLX2TNKCkuU+gYPwerjNDUAxogGiz5BKkBUM9ghbqyu/WaG+3U42F9wu5O
 U29guCYrgvU/NLUdU3j6UtOnDj9KwzOjN+py4FqZTguMFvLSMSdwbSLcVWO/hy3WrIXl
 R7701YrHFN/HWghDG79RFrma3j/XR67O3ZW7EMKG0dl+5ughmKnHMCRex/KIFCRMIhGh
 8/eA==
X-Gm-Message-State: AOAM530onp7e3RAH7x899DwaT13Npjm/xdWUZu39go6fmuEZCFGNzOhC
 MtzzcHrIyribRvw/i/QgviQksTj3nALPardD0KAvFQ==
X-Google-Smtp-Source: ABdhPJwf2QZbF+i/0lmUBTgo+BKMcaFSplVH8NFOV1pX6XCmkDNYvzjARLCZbvlFA/ucW451aNj0Il7ejEZp8HjXmvc=
X-Received: by 2002:ab0:6f08:: with SMTP id r8mr792460uah.111.1593141280529;
 Thu, 25 Jun 2020 20:14:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuWo5trjDhxSOc0sKbw9-SshYmTKHv2UWM+aPa1v7t+a04Lyw@mail.gmail.com>
 <5EF5536B.5060500@gmail.com>
In-Reply-To: <5EF5536B.5060500@gmail.com>
Date: Thu, 25 Jun 2020 23:14:29 -0400
Message-ID: <CAMuWo5sGe1Ce8MEeK1T9s2kKgY+h8eY-S205nM89LTnqLWHFtA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B210 Loopback Exponential Decay in Burst Messaging
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
From: Daniel Tajik via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Tajik <tajikd@mcmaster.ca>
Content-Type: multipart/mixed; boundary="===============0225855617707890796=="
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

--===============0225855617707890796==
Content-Type: multipart/alternative; boundary="0000000000001a915705a8f41c41"

--0000000000001a915705a8f41c41
Content-Type: text/plain; charset="UTF-8"

Hey Marcus!

Yep, my configuration has the recommended 30 dB attenuation. I haven't
maxed out either gain stages to avoid risking anything, mostly sit around
50 dB on both Rx and Tx side, as its recommended to also use at least half
the gain available to achieve a suitable noise figure.

No frequency hopping here, just ran a couple tests to see if different
carrier frequencies would improve the behaviour, which it did not. I
primarily run the test at 435 MHz, and the overall bandwidth I'm looking at
is 25 KHz. My GFSK modulation is squeezed in between that at the 6.25 KHz
deviation. As for half/full duplex, the test I am running is a single
channel loopback test on a B210, so the transmit and receive port are both
running at the same time (i.e. Full duplex).

Still not sure what the problem is in my implementation. I assume its
something internal? LO leakage or some sort of cross-coupling somewhere?
I've read that operating Rx and Tx at nearby frequencies can lead to
interference issues but I'm not sure if this exponential decay in a burst
transmission is how it manifests itself in my implementation. Any other
tests I can try to explore the cause of this?

Thanks!

On Thu, Jun 25, 2020 at 9:47 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/24/2020 02:24 PM, Daniel Tajik via USRP-users wrote:
> > Hey everyone!
> >
> > I have a question in regards to a loopback test I am running on a
> > single USRP B210.
> > I set up a simple GFSK modulator/demodulator and am trying to send a
> > small packet (Ax.25 packet carrying message "AAAAAAAAAAAA") every
> > 2000ms. I have the RF A channel hooked up, with the Tx/Rx transmitting
> > and the RX2 receiving. Just before the Tx sink the IQ looks as I
> > expect, but just after Rx source I see an apparent exponential decay
> > in the signal aligned with frequency changes, see the attached image
> > "IQDecay_top_AfterSource_bot_BeforeSink.png". I have pointed out
> > aligned portions of the packet on both the Tx and Rx sides, you can
> > see that capacitive decay that seems to appear.
> >
> > Some relevant parameters:
> > Sample Rate = 960k
> > Samps Per Symbol = 100
> > Carrier F = 435 MHz
> > FSK Freq Deviation = 6.25 KHz
> > Master Clock (set by board) = 61.44 MHz
> > UHD version 3.14.0
> > GNURadio 3.8.1.0
> >
> > I have tried enabled/disabled the DC Offset and IQ correction options,
> > swung around to different carrier frequencies, played around with the
> > gain stages of both Rx and Tx sides, changed the master clock
> > frequency, FSK freq deviation changes, different filters, different
> > Rx/Tx and Rx combinations, nothing seems to removes this effect. I
> > first discovered this when I started looking into why my deframer
> > was spitting out a correct packet only once every 50ish packets. If I
> > exclude the USRP blocks, all packets are deframed so I don't suspect
> > anything outside of the USRP blocks.
> >
> > I guess my question is what exactly is causing this error, and how do
> > I go about resolving it? Am I making a mistake somewhere in my setup?
> > Or is this loopback configuration not a great way to test my system?
> >
> > Thanks, and apologies for my naivety. Let me know if you need any more
> > information.
> >
> > Dan
> >
> Are you using attenuation between the RX and TX sides?  Generally if
> you're doing a coax-cable loopback, you want to protect the receiver
>    by attenuating the TX considerably.
>
> So, this a frequency-hopping system?  RF hardware takes a *finite time*
> to reach steady-state after things like gain changes and frequency changes.
>    Is this a full-duplex system, or half-duplex.  If half-duplex, you
> have to allow time for a state-change between TX and RX states in the
> analog
>    hardware.  This does not happen instantaneously, although TX/RX
> latency on these is fairly short (a few hundred microseconds at worst).
>
> Back when I was doing packet radio in the mid 1980s, it was not unusual
> for the clunky analog radios we were using to take 50-200 milliseconds
>    to change from TX to RX mode (or the other way around).  That basic
> factor hasn't changed, only in timescale.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Daniel Tajik

PhD Student, EMVi Research Laboratory
Department Electrical and Computer Engineering
McMaster University
1280 Main Street West, ITB-A201
Hamilton, ON, Canada L8S 4K1
tajikd@mcmaster.ca

--0000000000001a915705a8f41c41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Marcus!<br><br>Yep, my configuration has the recommend=
ed 30 dB attenuation. I haven&#39;t maxed out either gain stages to avoid r=
isking anything, mostly sit around 50 dB on both Rx and Tx side, as its rec=
ommended to also use at least half the gain available to achieve a suitable=
 noise figure.<div><br></div><div>No frequency hopping here, just ran a cou=
ple tests to see if different carrier frequencies would improve the behavio=
ur, which it did not. I primarily run the test at 435 MHz, and the overall =
bandwidth I&#39;m looking at is 25 KHz. My GFSK modulation is squeezed in b=
etween that at the 6.25 KHz deviation. As for half/full duplex, the test I =
am running is a single channel loopback test on a B210, so the transmit and=
 receive port are both running at the same time (i.e. Full duplex).<br><br>=
Still not sure what the problem is in my implementation. I assume its somet=
hing internal? LO leakage or some sort of cross-coupling somewhere? I&#39;v=
e read that operating Rx and Tx at nearby frequencies can lead to interfere=
nce issues but I&#39;m not sure if this exponential decay in a burst transm=
ission is how it manifests itself in my implementation. Any other tests I c=
an try to explore the cause of this?</div><div><br></div><div>Thanks!</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Jun 25, 2020 at 9:47 PM Marcus D. Leech via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 06/24/2=
020 02:24 PM, Daniel Tajik via USRP-users wrote:<br>
&gt; Hey everyone!<br>
&gt;<br>
&gt; I have a question in regards to a loopback test I am running on a <br>
&gt; single USRP B210.<br>
&gt; I set up a simple GFSK modulator/demodulator and am trying to send a <=
br>
&gt; small packet (Ax.25 packet carrying message &quot;AAAAAAAAAAAA&quot;) =
every <br>
&gt; 2000ms. I have the RF A channel hooked up, with the Tx/Rx transmitting=
 <br>
&gt; and the RX2 receiving. Just before the Tx sink the IQ looks as I <br>
&gt; expect, but just after Rx source I see an apparent exponential decay <=
br>
&gt; in the signal aligned with frequency changes, see the attached image <=
br>
&gt; &quot;IQDecay_top_AfterSource_bot_BeforeSink.png&quot;. I have pointed=
 out <br>
&gt; aligned portions of the packet on both the Tx and Rx sides, you can <b=
r>
&gt; see that capacitive decay that seems to appear.<br>
&gt;<br>
&gt; Some relevant parameters:<br>
&gt; Sample Rate =3D 960k<br>
&gt; Samps Per Symbol =3D 100<br>
&gt; Carrier F =3D 435 MHz<br>
&gt; FSK Freq Deviation =3D 6.25 KHz<br>
&gt; Master Clock (set by board) =3D 61.44 MHz<br>
&gt; UHD version 3.14.0<br>
&gt; GNURadio 3.8.1.0<br>
&gt;<br>
&gt; I have tried enabled/disabled the DC Offset and IQ correction options,=
 <br>
&gt; swung around to different carrier frequencies, played around with the =
<br>
&gt; gain stages of both Rx and Tx sides, changed the master clock <br>
&gt; frequency, FSK freq deviation changes, different filters, different <b=
r>
&gt; Rx/Tx and Rx combinations, nothing seems to removes this effect. I <br=
>
&gt; first discovered this when I started looking into why my deframer <br>
&gt; was spitting out a correct packet only once every 50ish packets. If I =
<br>
&gt; exclude the USRP blocks, all packets are deframed so I don&#39;t suspe=
ct <br>
&gt; anything outside of the USRP blocks.<br>
&gt;<br>
&gt; I guess my question is what exactly is causing this error, and how do =
<br>
&gt; I go about resolving it? Am I making a mistake somewhere in my setup? =
<br>
&gt; Or is this loopback configuration not a great way to test my system?<b=
r>
&gt;<br>
&gt; Thanks, and apologies for my naivety. Let me know if you need any more=
 <br>
&gt; information.<br>
&gt;<br>
&gt; Dan<br>
&gt;<br>
Are you using attenuation between the RX and TX sides?=C2=A0 Generally if <=
br>
you&#39;re doing a coax-cable loopback, you want to protect the receiver<br=
>
=C2=A0 =C2=A0by attenuating the TX considerably.<br>
<br>
So, this a frequency-hopping system?=C2=A0 RF hardware takes a *finite time=
* <br>
to reach steady-state after things like gain changes and frequency changes.=
<br>
=C2=A0 =C2=A0Is this a full-duplex system, or half-duplex.=C2=A0 If half-du=
plex, you <br>
have to allow time for a state-change between TX and RX states in the analo=
g<br>
=C2=A0 =C2=A0hardware.=C2=A0 This does not happen instantaneously, although=
 TX/RX <br>
latency on these is fairly short (a few hundred microseconds at worst).<br>
<br>
Back when I was doing packet radio in the mid 1980s, it was not unusual <br=
>
for the clunky analog radios we were using to take 50-200 milliseconds<br>
=C2=A0 =C2=A0to change from TX to RX mode (or the other way around).=C2=A0 =
That basic <br>
factor hasn&#39;t changed, only in timescale.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Daniel Tajik</d=
iv><div dir=3D"ltr"><font size=3D"2"><br></font><div><div style=3D"font-siz=
e:small">PhD Student, EMVi Research Laboratory</div><div style=3D"font-size=
:small">Department Electrical and Computer Engineering</div><div style=3D"f=
ont-size:small">McMaster University</div><div style=3D"font-size:small"><sp=
an style=3D"font-size:12.8px">1280 Main Street West, ITB-A201</span><br sty=
le=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Hamilton, ON, Cana=
da L8S 4K1</span><br></div><div style=3D"font-size:small"><a href=3D"mailto=
:tajikd@mcmaster.ca" style=3D"color:rgb(17,85,204)" target=3D"_blank">tajik=
d@mcmaster.ca<br></a></div></div></div></div></div></div></div></div></div>=
</div>

--0000000000001a915705a8f41c41--


--===============0225855617707890796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0225855617707890796==--

