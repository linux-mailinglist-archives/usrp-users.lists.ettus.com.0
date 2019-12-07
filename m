Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31410115E40
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 20:40:28 +0100 (CET)
Received: from [::1] (port=48972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idfwJ-0001ri-2Q; Sat, 07 Dec 2019 14:40:27 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:35478)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1idfwF-0001jT-2R
 for usrp-users@lists.ettus.com; Sat, 07 Dec 2019 14:40:23 -0500
Received: by mail-oi1-f196.google.com with SMTP id k196so2948643oib.2
 for <usrp-users@lists.ettus.com>; Sat, 07 Dec 2019 11:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bSCKJrOq5dDUeNCoaKKpUhilg4W0F3YC6MY/MUAD0ME=;
 b=0Jojqq7HB3aKtBVw4MITyVayIsWiKgBgvQl6/tPQqzyOw9hoIZKtDVD0ch+pLgOJOd
 unPxpKfyOOyD+uO4hxgNHtg671Km52vsQrERIbWpNdjp2omfUjYIy1rvFiU+DHYhV0Bs
 5D/o+oNyfCFkyWTw4/9TZpixC5acrBt85E8CG68BKhNe4ijXakyG6L2HLx/mofJ5AQpK
 3zIO6j7UJhi55sLjPCZnLAbwpMT03FJgP/VkychlA8I2ze//CvS1EG+8x0mO2sble6Oc
 bUfErV99LVf3B6kbu+oMLjBZ5aWWRrwFu1RciM+XkaAIB6oiH8pbqtxaSqmbIayy4JYX
 6QPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bSCKJrOq5dDUeNCoaKKpUhilg4W0F3YC6MY/MUAD0ME=;
 b=IUfuzlDAaX7zUkm9SykJrAKtrcJyoeye3gKt25wdDjhQxUxetNIfFga3KWZnEWHKYg
 oph7Qkel+G/vQLxfZ503LstmYsfaU2qLtENHUM1MDxjOayR7zmbaWOAbdqYxMwHow1vZ
 SOBdZR46qsTD6HAVhndn4uaIzkUnHuGSgKtc/JSa9zw5j007+1iAVZoKHt514q5h3hhs
 eT9GLyPr+gijcARD+8viQcI4zuuXQSNSEjyakDhjxEHsiG0m3zA7gFG1GC5+/pJh8foh
 2Ami1E/TI02RE297g/IewWWiuSoMBgUsPDzoyp411GYi0EnBJOvEe3oeTl3qSlHwCO8Z
 uo5A==
X-Gm-Message-State: APjAAAULEhB+12oaWhX81MBinzCd3IVkL6A9ae0TGCR2Ab+AwtjPMFLT
 sbq4LNZOPVQ5+ftOrvcDT+F6rio8X2zOhO8EKmOa9kgT
X-Google-Smtp-Source: APXvYqzGifR735D7d6NGo2iT2RHy51Jt5NPzhRblW+n1wWLf1CPwnVfWohWPeg+yOEP7cpyNs3IAPbf8gJtfC7D+4oY=
X-Received: by 2002:aca:3456:: with SMTP id b83mr13327740oia.82.1575747582189; 
 Sat, 07 Dec 2019 11:39:42 -0800 (PST)
MIME-Version: 1.0
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
In-Reply-To: <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
Date: Sat, 7 Dec 2019 11:40:40 -0800
Message-ID: <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5556130006479196687=="
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

--===============5556130006479196687==
Content-Type: multipart/alternative; boundary="000000000000e4768205992252f0"

--000000000000e4768205992252f0
Content-Type: text/plain; charset="UTF-8"

Hi Luke,

There is an example of setting timed commands in a custom block for the
TwinRX in gr-doa here:

https://github.com/EttusResearch/gr-doa/blob/master/python/twinrx_usrp_source.py#L101-L121

You can do this with the standard UHD source/sink blocks, by first making
your flowgraph, then generate the .py in GRC, then open up that .py file
and modify it to add the timed command calls.

If you modify the GRC and regenerate the .py, it'll overwrite your changes.

Regards,
Nate Temple

On Sat, Dec 7, 2019 at 11:35 AM Lukas Haase <lukashaase@gmx.at> wrote:

> Hi Nate,
>
> Thank you so much, this is very useful.
>
> I am using Gnuradio 3.7 on Windows and according to
> uhd_cal_rx_iq_balance.exe for example, UHD version is
> UHD_3.14.1.HEAD-0-g5491b80e. That should have the issue fixed, right?
>
>
> Would you mind to elaborate briefly how to get the "timed command"? (I am
> working with grc for a few weeks and I am fairly new to it)
>
> Just conceptually how to do it would be amazing or a pointer to an example
> that I could modify even better!
>
> For example, I went through the example at
> https://wiki.gnuradio.org/index.php/Guided_Tutorial_GNU_Radio_in_Python#3.1._Intro_to_Using_GNU_Radio_with_Python
> but I do not know if this really creates these "timed commands".
> Yes, I can store the frequency value in a variable but how do I ensure
> that it's updated exactly at a rate of say, 1/100ms?
>
> Also: Why wouldn't such an approach cause issues due to the clock
> differences between the host computer and the USRP?
>
> And if you are able to dig up any more information about the additional
> caveats you were mentioning, that would be truly amazing.
>
> Thanks a lot,
> Luke
>
>
>
>
>
> Gesendet: Samstag, 07. Dezember 2019 um 12:05 Uhr
> Von: "Nate Temple" <nate.temple@ettus.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Betreff: Re: [USRP-users] Phase relation between RX/TX LO
>
> Hi Luke,
>
> What version of UHD are you using?
>
> There was an issue with the DUC/DDC phase accumulator's resolution, but it
> was fixed with UHD 3.14.1.0.
>
> The threads below are were this was identified:
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html
>
> As recommended from the thread:
>
> Phase may change each time streamers are created, but the phase between TX
> and RX should remain consistent during streaming.  Tuning must be done with
> timed commands and a consistent time delta between the tune time of TX and
> RX must be maintained that is greater than 500us to maintain the coherence
> across re-tunes.
>
>
>
> If you're using the QT widget without any modifications, it will not be
> using timed commands, you'll need to generate the python file and manually
> add in the timed commands to the set_freq calls.
>
> Also, if I remember correctly, even with the phase accumulator fix, there
> was some caveats to which frequencies would stay coherent. I need to go
> back and look at some notes on it.
> Regards,
> Nate Temple
>
> On Fri, Dec 6, 2019 at 11:11 PM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Hi
> Marcus,
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
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices[https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices]
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
>
> https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif[https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif]
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

--000000000000e4768205992252f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Luke,<br><br>There is an example of setting timed co=
mmands in a custom block for the TwinRX in gr-doa here:<br><br><a href=3D"h=
ttps://github.com/EttusResearch/gr-doa/blob/master/python/twinrx_usrp_sourc=
e.py#L101-L121">https://github.com/EttusResearch/gr-doa/blob/master/python/=
twinrx_usrp_source.py#L101-L121</a><br><br>You can do this with the standar=
d UHD source/sink blocks, by first making your flowgraph, then generate the=
 .py in GRC, then open up that .py file and modify it to add the timed comm=
and calls. <br><br>If you modify the GRC and regenerate the .py, it&#39;ll =
overwrite your changes.<br><br>Regards,<br>Nate Temple</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Dec 7, =
2019 at 11:35 AM Lukas Haase &lt;<a href=3D"mailto:lukashaase@gmx.at">lukas=
haase@gmx.at</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi Nate,<br>
<br>
Thank you so much, this is very useful.<br>
<br>
I am using Gnuradio 3.7 on Windows and according to uhd_cal_rx_iq_balance.e=
xe for example, UHD version is UHD_3.14.1.HEAD-0-g5491b80e. That should hav=
e the issue fixed, right?<br>
<br>
<br>
Would you mind to elaborate briefly how to get the &quot;timed command&quot=
;? (I am working with grc for a few weeks and I am fairly new to it)<br>
<br>
Just conceptually how to do it would be amazing or a pointer to an example =
that I could modify even better!<br>
<br>
For example, I went through the example at <a href=3D"https://wiki.gnuradio=
.org/index.php/Guided_Tutorial_GNU_Radio_in_Python#3.1._Intro_to_Using_GNU_=
Radio_with_Python" rel=3D"noreferrer" target=3D"_blank">https://wiki.gnurad=
io.org/index.php/Guided_Tutorial_GNU_Radio_in_Python#3.1._Intro_to_Using_GN=
U_Radio_with_Python</a> but I do not know if this really creates these &quo=
t;timed commands&quot;.<br>
Yes, I can store the frequency value in a variable but how do I ensure that=
 it&#39;s updated exactly at a rate of say, 1/100ms?<br>
<br>
Also: Why wouldn&#39;t such an approach cause issues due to the clock diffe=
rences between the host computer and the USRP?<br>
<br>
And if you are able to dig up any more information about the additional cav=
eats you were mentioning, that would be truly amazing.<br>
<br>
Thanks a lot,<br>
Luke<br>
<br>
=C2=A0<br>
=C2=A0<br>
=C2=A0<br>
<br>
Gesendet:=C2=A0Samstag, 07. Dezember 2019 um 12:05 Uhr<br>
Von:=C2=A0&quot;Nate Temple&quot; &lt;<a href=3D"mailto:nate.temple@ettus.c=
om" target=3D"_blank">nate.temple@ettus.com</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Cc:=C2=A0&quot;<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] Phase relation between RX/TX LO<br>
<br>
Hi Luke,<br>
<br>
What version of UHD are you using?<br>
<br>
There was an issue with the DUC/DDC phase accumulator&#39;s resolution, but=
 it was fixed with UHD 3.14.1.0.<br>
<br>
The threads below are were this was identified:<br>
<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019=
-May/059914.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.c=
om/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html</a><br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019=
-April/059465.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html</a><br>
<br>
As recommended from the thread:<br>
<br>
Phase may change each time streamers are created, but the phase between TX<=
br>
and RX should remain consistent during streaming.=C2=A0 Tuning must be done=
 with<br>
timed commands and a consistent time delta between the tune time of TX and<=
br>
RX must be maintained that is greater than 500us to maintain the coherence<=
br>
across re-tunes.<br>
<br>
<br>
<br>
If you&#39;re using the QT widget without any modifications, it will not be=
 using timed commands, you&#39;ll need to generate the python file and manu=
ally add in the timed commands to the set_freq calls.<br>
=C2=A0<br>
Also, if I remember correctly, even with the phase accumulator fix, there w=
as some caveats to which frequencies would stay coherent. I need to go back=
 and look at some notes on it.=C2=A0<br>
Regards,<br>
Nate Temple=C2=A0<br>
<br>
On Fri, Dec 6, 2019 at 11:11 PM Lukas Haase via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>]&gt; wrote:Hi Marcus,<br>
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
th_USRP_Devices%5Bhttps://kb.ettus.com/Synchronization_and_MIMO_Capability_=
with_USRP_Devices%5D" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus=
.com/Synchronization_and_MIMO_Capability_with_USRP_Devices[https://kb.ettus=
.com/Synchronization_and_MIMO_Capability_with_USRP_Devices]</a><br>
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
gif%5Bhttps://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif%5=
D" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/images/1/16/29=
20_simplified_system_diagram.gif[https://kb.ettus.com/images/1/16/2920_simp=
lified_system_diagram.gif]</a><br>
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
</blockquote></div>

--000000000000e4768205992252f0--


--===============5556130006479196687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5556130006479196687==--

