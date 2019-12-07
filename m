Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 045CC115DAC
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 18:05:14 +0100 (CET)
Received: from [::1] (port=57950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iddW2-0003fr-IM; Sat, 07 Dec 2019 12:05:10 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:34396)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iddVy-0003ZS-WC
 for usrp-users@lists.ettus.com; Sat, 07 Dec 2019 12:05:07 -0500
Received: by mail-ot1-f51.google.com with SMTP id a15so8641337otf.1
 for <usrp-users@lists.ettus.com>; Sat, 07 Dec 2019 09:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VDCki4mWuZxYgoiyfx3t4TpOLy7bCtxFyVD9X/W4txA=;
 b=bd5YgC1JgMTLpczR1Ce5xEU7kROZOYSsFD585F9pk5cz20LkCyTwmdvSPuZ63hf1io
 1fa5UbIRy6TwxXpf0Lxzw9afywHVoK5vzrGIrICVAC+g97gLc7a55CMj/arWSrO8NPrF
 /4rAlR12nf98LLITmqBrmgtL1sFsa/W0c4pP7+xZJ3eIcUSTZy5bIpemdoDINnz5yHf3
 AAPrLq31JWFc4n3CCgMEeS3vMo3C1J1Xd9CKI224cg96h8+r1du+AjwzaDsa2QlIkLZ3
 U0LYHuI4J8tig4jFAr2FoA3r2L6GrgkoSP1Gr5s1O5Lp6JzDcLigF+cu0m97NlAPArLB
 Hc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VDCki4mWuZxYgoiyfx3t4TpOLy7bCtxFyVD9X/W4txA=;
 b=hS0G/MSFwsT8aNJuGKMZlElqYH3ZAr6oIjhgoiyIsEYG0Fo9msERMzYGpNq/kJLjPo
 +o5Kt24cjDGJufLiLTsfV2zY/zPIx3wnE9Bfq3fSXk6VyigK23XVvyWzC37HkGrPH3lW
 vFOTdAdm1seCowzWdKLWVJB+cC/rzy5EnusqQvOAqMz4bxcgBj2Q29ISq7ucjKSEe9KJ
 z7pP63iFdSVGwv6fA4LVXF89UZs3oO/wIt65lC3vqQ9MwOtKf0c9kF30JzyP6hVVbkks
 KOmfk3iRzOxhxQoh+C4FoxHAYXapfPCG5WoCoL1vxYuRsNL2O8LSIXmSvVxAKwfx/YXC
 K3QQ==
X-Gm-Message-State: APjAAAWopQ7BFXGjHcNGVNrrCS/5fkvvTLLl0eMFxm5jsmUdYQ7JU7vS
 LPqCGdAvq6vuonNCYJwBimDVlKgMng9TgL5z/DKug6uu
X-Google-Smtp-Source: APXvYqyDIWKpgOBJ4u2L2KAJdKEJoOjACUDwJ6GVYMnhIZpC+nXyzNnAfQdWZG2v13vEAypwVg1GU5298ixdwua0/ss=
X-Received: by 2002:a9d:5612:: with SMTP id e18mr16051453oti.183.1575738266126; 
 Sat, 07 Dec 2019 09:04:26 -0800 (PST)
MIME-Version: 1.0
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
In-Reply-To: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
Date: Sat, 7 Dec 2019 09:05:24 -0800
Message-ID: <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0992123634030059578=="
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

--===============0992123634030059578==
Content-Type: multipart/alternative; boundary="0000000000009c9e830599202751"

--0000000000009c9e830599202751
Content-Type: text/plain; charset="UTF-8"

Hi Luke,

What version of UHD are you using?

There was an issue with the DUC/DDC phase accumulator's resolution, but it
was fixed with UHD 3.14.1.0.

The threads below are were this was identified:

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html

As recommended from the thread:

Phase may change each time streamers are created, but the phase between TX
and RX should remain consistent during streaming.  Tuning must be done with
timed commands and a consistent time delta between the tune time of TX and
RX must be maintained that is greater than 500us to maintain the coherence
across re-tunes.



If you're using the QT widget without any modifications, it will not be
using timed commands, you'll need to generate the python file and manually
add in the timed commands to the set_freq calls.

Also, if I remember correctly, even with the phase accumulator fix, there
was some caveats to which frequencies would stay coherent. I need to go
back and look at some notes on it.

Regards,
Nate Temple

On Fri, Dec 6, 2019 at 11:11 PM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
>
> Marcus wrote:> On 12/06/2019 09:33 PM, Lukas Haase via USRP-users wrote:
> >> Hi,
> >>
> >> I am using the USRP X310+UBX160 with gnuradio to perform very
> >> precicse phase measurements: The TX transmits a CW which is
> >> reflected by an object and received by the RX.
> >>
> >> The received phase provides an accurate estimate of the distance
> >> to>> the reflected object, once the fixed phase relation (between
> >> TX/RX- LO, filters, cables etc.) has been subtracted out.
> >>
> >> This works nicely so far.
> >>
> >> However, I need my system to work across power cycles, and more
> >> importantly, across different frequencies: The goal is to perform
> >> fast frequency hopping and obtain the phase for each frequency.
> >>
> >> Unfortunately it seems that the phase relationship between TX/RX
> >> is>> lost when I tune the USRP to a different center frequency and
> >> back. For example, I have the center frequency set to 900 MHz and
> >> the phase. I measure (by computing the angle of the I/Q samples)
> >> stays constant. But when I set the center frequency to 950 MHz and
> >> then back to 900 MHz, the phase has a random value again.
> >>
> >> Is there any way to avoid this? Or is there any way to lock the LO
> >> phase to a particular phase when>> tuning back to the original
> >> frequency?
> >
> > It *might* be possible to phase-synchroniez the RX and TX LOs using
> > timed commands combined, possibly with INTEGER_N tuning.
> >
> > There's an APP Note on phase-synchronization here:
> >
> >
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices
>
> Thank you, I'm studying this right now.
>
> > My gut tells me this is going to be hard, though, since the
> > requirement is to bring a synthesizer back to the same relative phase
> > it had when it was previously tuned to the same frequency.
>
> Yes, this is about multiple devices, certainly hard.
>
> Let's take a step back and I am happy when just the TX/RX LO on a single
> device is synchronized.
>
> This is what I do right now: In gnuradio, I generate a sinudoid (fif=1MHz)
> at baseband and transmit (UHD: USRP Sink) it with fcenter=900MHz.
> Then I receive (UHD: USRP Source) it and multiply it with "-fif" again.
> This gives me a constant signal in I and Q.
>
> The center frequency is configured via "QT GUI Entry". I enter 900e6 and
> press enter. Then I plot "Complex to Arg". As long as I do nothing this
> value is fairly constant (somewhere between -pi and pi).
>
> Now I hit enter again in the QT GUI Entry. Although it's the same center
> frequency, the USRP retunes and the phase jumps to another value.
>
> Now let's look at the USRP block diagram:
>
> https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif
>
> Yes, both TX and RX path have a separate PLL and VCO.
> However, the *reference* for this PLL is the same. Hence the PLL should
> lock to the phase of this reference (after all, it's a *phase* locked
> loop). And this implies that the *relative* phase between TX and RX, for a
> given frequency, should be fixed -- at least as long as the USRP is powered.
>
> So, how can it be that this is not the case?!
>
>
> There is just a single suspicion that I have: DSP on gnuradio (host
> computer runs a different clock) versus USRP clock. What do I mean by that?
> Initially I was transmitting a pure CW (in gnuradio, connecting a "Constant
> Source" to USRP Sink and setting the frequency to fcenter+fif). However,
> downconversion was performed with fcenter only and multiplying with fif in
> gnuradio. I could see a slow phase drift. It took me hours to figure out
> that this is caused by the different clocks. The effect was gone once I
> also generated the transmitted waveform in gnuradio.
> In order to fix this, I would subtract the phase of this generated
> waveform in gnuradio. But obviously this phase is always zero ...
>
> I hope you understand what I am writing.
>
>
>
> Best,
> Luke
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009c9e830599202751
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Luke,<br><br>What version of UHD are you using?<br><=
br>There was an issue with the DUC/DDC phase accumulator&#39;s resolution, =
but it was fixed with UHD 3.14.1.0.<br><br>The threads below are were this =
was identified:<br><br><a href=3D"http://lists.ettus.com/pipermail/usrp-use=
rs_lists.ettus.com/2019-May/059914.html">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2019-May/059914.html</a><br><a href=3D"http://lis=
ts.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html">h=
ttp://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/05946=
5.html</a><br><br>As recommended from the thread:<br><br>Phase may change e=
ach time streamers are created, but the phase between TX<br>and RX should r=
emain consistent during streaming.=C2=A0 Tuning must be done with<br>timed =
commands and a consistent time delta between the tune time of TX and<br>RX =
must be maintained that is greater than 500us to maintain the coherence<br>=
across re-tunes.<br><br><br><br>If you&#39;re using the QT widget without a=
ny modifications, it will not be using timed commands, you&#39;ll need to g=
enerate the python file and manually add in the timed commands to the set_f=
req calls.<br></div><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:arial,helvetica,sans-serif">Also, if I remember correctly, even wit=
h the phase accumulator fix, there was some caveats to which frequencies wo=
uld stay coherent. I need to go back and look at some notes on it.=C2=A0 <b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019 at 11:11 PM=
 Lukas Haase via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi Marcus,<br>
<br>
Marcus wrote:&gt; On 12/06/2019 09:33 PM, Lukas Haase via USRP-users wrote:=
<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I am using the USRP X310+UBX160 with gnuradio to perform very<br>
&gt;&gt; precicse phase measurements: The TX transmits a CW which is<br>
&gt;&gt; reflected by an object and received by the RX.<br>
&gt;&gt;<br>
&gt;&gt; The received phase provides an accurate estimate of the distance<b=
r>
&gt;&gt; to&gt;&gt; the reflected object, once the fixed phase relation (be=
tween<br>
&gt;&gt; TX/RX- LO, filters, cables etc.) has been subtracted out.<br>
&gt;&gt;<br>
&gt;&gt; This works nicely so far.<br>
&gt;&gt;<br>
&gt;&gt; However, I need my system to work across power cycles, and more<br=
>
&gt;&gt; importantly, across different frequencies: The goal is to perform<=
br>
&gt;&gt; fast frequency hopping and obtain the phase for each frequency.<br=
>
&gt;&gt;<br>
&gt;&gt; Unfortunately it seems that the phase relationship between TX/RX<b=
r>
&gt;&gt; is&gt;&gt; lost when I tune the USRP to a different center frequen=
cy and<br>
&gt;&gt; back. For example, I have the center frequency set to 900 MHz and<=
br>
&gt;&gt; the phase. I measure (by computing the angle of the I/Q samples)<b=
r>
&gt;&gt; stays constant. But when I set the center frequency to 950 MHz and=
<br>
&gt;&gt; then back to 900 MHz, the phase has a random value again.<br>
&gt;&gt;<br>
&gt;&gt; Is there any way to avoid this? Or is there any way to lock the LO=
<br>
&gt;&gt; phase to a particular phase when&gt;&gt; tuning back to the origin=
al<br>
&gt;&gt; frequency?<br>
&gt;<br>
&gt; It *might* be possible to phase-synchroniez the RX and TX LOs using<br=
>
&gt; timed commands combined, possibly with INTEGER_N tuning.<br>
&gt;<br>
&gt; There&#39;s an APP Note on phase-synchronization here:<br>
&gt;<br>
&gt; <a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_wi=
th_USRP_Devices" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/=
Synchronization_and_MIMO_Capability_with_USRP_Devices</a><br>
<br>
Thank you, I&#39;m studying this right now.<br>
<br>
&gt; My gut tells me this is going to be hard, though, since the<br>
&gt; requirement is to bring a synthesizer back to the same relative phase<=
br>
&gt; it had when it was previously tuned to the same frequency.<br>
<br>
Yes, this is about multiple devices, certainly hard.<br>
<br>
Let&#39;s take a step back and I am happy when just the TX/RX LO on a singl=
e device is synchronized.<br>
<br>
This is what I do right now: In gnuradio, I generate a sinudoid (fif=3D1MHz=
) at baseband and transmit (UHD: USRP Sink) it with fcenter=3D900MHz.<br>
Then I receive (UHD: USRP Source) it and multiply it with &quot;-fif&quot; =
again. This gives me a constant signal in I and Q.<br>
<br>
The center frequency is configured via &quot;QT GUI Entry&quot;. I enter 90=
0e6 and press enter. Then I plot &quot;Complex to Arg&quot;. As long as I d=
o nothing this value is fairly constant (somewhere between -pi and pi).<br>
<br>
Now I hit enter again in the QT GUI Entry. Although it&#39;s the same cente=
r frequency, the USRP retunes and the phase jumps to another value.<br>
<br>
Now let&#39;s look at the USRP block diagram:<br>
<br>
<a href=3D"https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.=
gif" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/images/1/16/=
2920_simplified_system_diagram.gif</a><br>
<br>
Yes, both TX and RX path have a separate PLL and VCO.<br>
However, the *reference* for this PLL is the same. Hence the PLL should loc=
k to the phase of this reference (after all, it&#39;s a *phase* locked loop=
). And this implies that the *relative* phase between TX and RX, for a give=
n frequency, should be fixed -- at least as long as the USRP is powered.<br=
>
<br>
So, how can it be that this is not the case?!<br>
<br>
<br>
There is just a single suspicion that I have: DSP on gnuradio (host compute=
r runs a different clock) versus USRP clock. What do I mean by that? Initia=
lly I was transmitting a pure CW (in gnuradio, connecting a &quot;Constant =
Source&quot; to USRP Sink and setting the frequency to fcenter+fif). Howeve=
r, downconversion was performed with fcenter only and multiplying with fif =
in gnuradio. I could see a slow phase drift. It took me hours to figure out=
 that this is caused by the different clocks. The effect was gone once I al=
so generated the transmitted waveform in gnuradio.<br>
In order to fix this, I would subtract the phase of this generated waveform=
 in gnuradio. But obviously this phase is always zero ...<br>
<br>
I hope you understand what I am writing.<br>
<br>
<br>
<br>
Best,<br>
Luke<br>
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
</blockquote></div>

--0000000000009c9e830599202751--


--===============0992123634030059578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0992123634030059578==--

