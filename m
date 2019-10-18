Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E668DCF55
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 21:36:29 +0200 (CEST)
Received: from [::1] (port=32828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLY31-0004pc-K1; Fri, 18 Oct 2019 15:36:27 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:38443)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <carlos.bocanegra.guerra@gmail.com>)
 id 1iLY2x-0004hd-Uc
 for usrp-users@lists.ettus.com; Fri, 18 Oct 2019 15:36:23 -0400
Received: by mail-qk1-f170.google.com with SMTP id p4so6385558qkf.5
 for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2019 12:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QEav62JDWD/ZX3Tg4vx9W8oAzpKa+U2Oy0m0XE/wmlI=;
 b=r5/PUzs9w6yiR+/O8JIpqcrT3AKMrOKMM/s/pfZ/WHhRcKE/yOxz1F8xLJ/BKHyXR/
 2UbahIdap4kr0jsmyoO+gluM+84qmw7uoH4fItoGOe2wdaYvHGSyOoz8lJlj4QT3e49i
 oy/+XScPx7jK2zIDkAnbmmx/3PnTlzFUG0+Ic8vPovlhe720CJx+TSY6KsdQKT/qEX4O
 xGGPj9qHOnTD2V8wtgsJWn+EeP+++rfisodH1wjV463FcdUH1JDushYCy14dvaIsgWN4
 dg2FiXYnHPmvldk3YpXnDqTP+NpEijvdUI+VHaW7fW0REazdHjOYhSJHwbW9uZQ/++Js
 iCow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QEav62JDWD/ZX3Tg4vx9W8oAzpKa+U2Oy0m0XE/wmlI=;
 b=LQNgMw6TlSzaTjS+coS+bo9+p+WaS0SRmpWRjyHrXqHiqOWQjJxb+Hibp3FtruNHB+
 APJ3OJledGObTjvYOI7mu/l9gd2LyK8Yhs/I8uwNZgcSAD9ChmsvHLs3GNZ0u24ElZCv
 UXaabGB/qlv6IbZYtdlweWucowCwL5m4B7tEciHVdKo93rRZEjviIXljBd8/r3WvIp4M
 NSbo9+qpKR7afwZLZ12WWS7Q1XPeflRJUKU5kcohowB0lNSuMs2Xw/zQG8pywN26IpkD
 whe/GWpQk9MkCOuLpkwHYCyw+Wgee+govxGa+XboWb+XAHtL6E6ultp1G3FOZvMAzm17
 8IKg==
X-Gm-Message-State: APjAAAV3vsjRFKYZIOAlGiW55f/0VlvLieLHCGHweh+ScbATgSWyfF1s
 UgCJPokSpDpbwhN7dBGJPI8iHCdr30r7BogqsyY=
X-Google-Smtp-Source: APXvYqwKXU4rnjL6L1j8cyAgyHNFQ1KRxEW+8XrGidM5ON4vK4ACWliKunIoVDbU4weNsPM/H6qj4YYa7Ec8+Eqe1k8=
X-Received: by 2002:a37:8785:: with SMTP id
 j127mr10236959qkd.126.1571427343051; 
 Fri, 18 Oct 2019 12:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAEJWbW3=nf=LvD+mmVC2Vaz_J0wW6jrsxNskvq+B1eYkCh2P+Q@mail.gmail.com>
 <CANf970YRfCeFXYGaum=Y4xoUjz6MOpB9PemTwPYD2hYEoupFUA@mail.gmail.com>
In-Reply-To: <CANf970YRfCeFXYGaum=Y4xoUjz6MOpB9PemTwPYD2hYEoupFUA@mail.gmail.com>
Date: Fri, 18 Oct 2019 15:35:31 -0400
Message-ID: <CAEJWbW184PxfCq0BNqLLmRGjJV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com>
To: sam.reiter@ettus.com, patchvonbraun@gmail.com
Content-Type: multipart/mixed; boundary="00000000000092d19f0595347045"
Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using X310 and
 UBX-160
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
From: Carlos Bocanegra via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>
Cc: usrp-users@lists.ettus.com
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

--00000000000092d19f0595347045
Content-Type: multipart/alternative; boundary="00000000000092d19b0595347043"

--00000000000092d19b0595347043
Content-Type: text/plain; charset="UTF-8"

Hi all,

Thanks a lot Sam and Marcus for replying so quickly.

Le me first include Marcus answer in this email chain for a cleaner
communication:
"*Gnu Radio cannot really misalign samples, unless the DSP logic arranges
for that to happen. If you have a block with a bunch of streams, that
blocks "work" function cannot proceed until there is equal amounts of data
available on all streams. In the absence of the hardware dropping samples,
coherence is maintained in that case. What you are seeing here seems to be
a problem with your network stack  losing things. What type of Ethernet
adapters do you have? What sample rates are you running?*"

*The requested extra info:*
- The sampling rates selected are *1Msps* for the TX and *2Msps* for the RX.
- The SFP connector attached to the USRP-X310s: AVAGO, 1.25GBd, 1000BASE-T,
ABCU-5730ARZ.
- The NIC: Intel Corporation Gigabit CT Desktop Adapter.
- The Ethernet controller: Intel Corporation 82574L Gigabit Network
Connection.

@Marcus,
good thing that the scheduler in each block handles that correctly. I'll
focus on the network setup then.

@Sam,
it seems reasonable to think that the source of error is the poking
timeout, being the misalignment the aftermath.
When you say flow controls, do you mean the ones handled by the UHD fw
functions? I see a couple of D's (packet drops) right before the
misalignment error, after the UHD raises the last poking exception. But
maybe this is just the natural behavior- to drop misaligned packets before
either getting an alignment or timing out and rising the exception.

"*Drop the sample rate (what is it, by the way?) and see if there's a
threshold where things start working [3]*":
Should I drop the samples below 1Msps/2Msps? I think these are pretty low
and having lower sampling rates would rise new problems. I can go ahead and
try it if you still thing this is the issue.
"*Keep the original sample rate and try removing a radio or two from the
system. Does this help things?*"*:*
- 4RX/1TX with simplistic flowgraph (usrp_source connected to file_sinks
and analog signal connected to usrp_sink): OK.
- 6RX/1TX with simplistic flowgraph (usrp_source connected to file_sinks
and analog signal connected to usrp_sink): NOK (error described previously).
- 3RX/1TX with my DSP blocks: OK.
- 4RX/1TX with my DSP blocks: NOK (error described previously).

Regarding an example, I could not find one that sets up a usrp_source AND a
usrp_sink, in the folder {gr_prefix}/gr-uhd/examples/. I created a
simplistic python flowgraph that results in the poking and misalignment
issue, attached in this email. For instance, the 6x1 connections would map
to the input argumments --tx_channels 1 --rx_channels 6.

Thanks a lot for your time and I hope to hear back from you soon.

Best,
Carlos


On Fri, Oct 18, 2019 at 1:05 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Carlos,
>
> On the host side if you're using a single streamer, it will work to
> time-align samples from every USRP as they come in. The reason you see 1002
> received packets without a timestamp match is because 1000 was the
> threshold for maximum number of alignment failures [1].  This can be
> changed or increased with [2]:
>
> set_alignment_failure_threshold(1000);
>
> But I doubt this will solve the issue for you. Likely just delay it. From the errors you included, I'd say the real problem is:
>
>
>> *ERROR] [X300] 192.168.100.2 <http://192.168.100.2/>: x300 fw
>> communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
>> timed out*
>>
>
> There is either a backup or a lack of samples coming from the radio. Do
> you see flow control errors leading up to this failure?
>
> I'd say that pulling pieces out of this system would be a good way to
> start troubleshooting:
>
>    - Drop the sample rate (what is it, by the way?) and see if there's a
>    threshold where things start working [3]
>    - Keep the original sample rate and try removing a radio or two from
>    the system. Does this help things?
>
> It sounds like this is something you can reproduce independent of your DSP
> blocks, which helps simplify things a bit. If you could go a bit further
> and find a simple example (i.e. take one of the GNURadio UHD shipping
> examples and expand it to use 3x USRPs) and get it to reproduce the
> behavior, then I'd be happy to set something up on my end try to reproduce
> the behavior you're seeing.
>
> Sam
>
> [1]
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-August/053986.html
> [2]
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-January/036210.html
> [3]
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-November/039561.html
>
>
> On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello community,
>>
>> I am working on a gnuradio application that synchronously retrieves data
>> from a usrp_source, does some DSP on each of the streams and selects the
>> signal to send on a usrp_sink based on some metric computation. The sources
>> and sinks represent 3 USRP X310 devices, each with 2 UBX-160
>> daughterboards, and are synchronized using an Octoclock-G. Thus, creating a
>> 6x1 MISO system. The USRP synchronization is done using the Python API, as
>> well as the flowgraph. The DSP blocks are coded in C++. The flowgraph would
>> be something like:
>>
>> *self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*
>> *self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*
>> *self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*
>> *self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*
>> *self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*
>>
>> The application runs for a while until UHD outputs a message saying that
>> the poke32 has timed out on one of the USRP. After that, a misalignment
>> error on the receiver streams is shown and the green lights on the USRP go
>> off.
>>
>> We are under the impression that the DSP blocks working independently may
>> be requesting samples from the source at different times, causing the
>> misalignment. Could this be the case? Is there an issue with my network
>> connection?
>>
>> I have tried to get rid of the misalignment error by increasing the
>> threshold in the file
>> *{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp, *through
>> the function *set_alignment_failure_threshold.* That got rid of the
>> misalignment error, but the failure coming from the poke function is still
>> there.
>>
>> Interestingly, the exact same behavior arises when I just connect
>> file_sinks to the outputs from the usrp_source and a simple analog signal
>> to the usrp_sink. Below the flowgraph:
>>
>> *self.connect((usrp_source, 0), file_sink_0)*
>> self.connect((usrp_source, 1), file_sink_1)
>> self.connect((usrp_source, 2), file_sink_2)
>> self.connect((usrp_source, 3), file_sink_3)
>> *self.connect(analog_sig_c, (usrp_sink, 0))*
>>
>> I'd appreciate any help on this since I'm running out of ideas here.
>> Please, find below more details.
>>
>> *The error:*
>>
>> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
>> timed out*
>>
>> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
>> timed out*
>>
>> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
>> communication failure #3EnvironmentError: IOError: x300 fw poke32 - reply
>> timed out*
>>  [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
>> loop will now exit, things may not work.EnvironmentError: IOError:
>> 192.168.100.2: x300 fw communication failure #3
>>
>>
>>
>> * [ERROR] [STREAMER] The receive packet handler failed to time-align
>> packets.1002 received packets were processed by the handler.However, a
>> timestamp match could not be determined.*
>>
>> *Here are some details of my network configuration:*
>> - UHD built from source, tag v3.14.1.1.
>> - Gnuradio built from source, tag 3.7.13.5.
>> - X310 USRP, each equipped with two UBX-160 daughterboards.
>> - The communication is over Ethernet using the 1Gb port on the X310.
>> - Each USRP is connected to a dedicated NIC.
>> - The MTU is set to 1500 for the all interfaces.
>> - The USRPs are synchronized using an Octoclock-G and the parameters
>> tuned in the Python script. The procedure is similar to the one followed in
>> benchmark_rate (uhd), for the usrp_source and usrp_sink.
>> - The NIC ring buffers are set to the maximum for both TX and RX, to
>> 4096, using ethtool.
>> - The OS ring buffers are set as suggested bu Ettus, using the following
>> commands:
>>
>>
>>
>> *>> sudo sysctl -w net.core.rmem_max=33554432   >> sudo sysctl -w
>> net.core.wmem_max=33554432   >> sudo sysctl -w
>> net.core.rmem_default=33554432   >> sudo sysctl -w
>> net.core.wmem_default=33554432*
>>
>> Best,
>> Carlos
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000092d19b0595347043
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Tha=
nks a lot Sam and Marcus for replying so quickly.</div><div><br></div><div>=
Le me first include Marcus answer in this email chain for a cleaner communi=
cation:<br></div><div>&quot;<i>Gnu Radio cannot really misalign samples, un=
less the DSP logic arranges for that to happen. If you have a block with a =
bunch of streams, that blocks &quot;work&quot; function cannot proceed unti=
l there is equal amounts of data available on all streams. In the absence o=
f the hardware dropping samples, coherence is maintained in that case. What=
 you are seeing here seems to be a problem with your network stack=C2=A0 lo=
sing things. What type of Ethernet adapters do you have? What sample rates =
are you running?</i>&quot;</div><div><br></div><div><b>The requested extra =
info:</b><br></div><div><div>- The sampling rates selected are <u>1Msps</u>=
 for the TX and <u>2Msps</u> for the RX.</div><div>- The SFP connector atta=
ched to the USRP-X310s: AVAGO, 1.25GBd, 1000BASE-T, ABCU-5730ARZ.</div><div=
>- The NIC: Intel Corporation Gigabit CT Desktop Adapter.</div><div>- The E=
thernet controller: Intel Corporation 82574L Gigabit Network Connection.</d=
iv></div><div><br></div><div>@Marcus, <br></div><div>good thing that the sc=
heduler in each block handles that correctly. I&#39;ll focus on the network=
 setup then.</div><div><br></div><div>@Sam, <br></div><div>it seems reasona=
ble to think that the source of error is the poking timeout, being the misa=
lignment the aftermath.</div><div>When you say flow controls, do you mean t=
he ones handled by the UHD fw functions? I see a couple of D&#39;s (packet =
drops) right before the misalignment error, after the UHD raises the last p=
oking exception. But maybe this is just the natural behavior- to drop misal=
igned packets before either getting an alignment or timing out and rising t=
he exception.</div><div><br></div><div>&quot;<i>Drop the sample rate (what =
is it, by the way?) and see if there&#39;s a threshold where things start w=
orking [3]</i>&quot;:</div><div>Should I drop the samples below 1Msps/2Msps=
? I think these are pretty low and having lower sampling rates would rise n=
ew problems. I can go ahead and try it if you still thing this is the issue=
.<br></div><div>&quot;<i>Keep the original sample rate and try removing a r=
adio or two from the system. Does this help things?</i>&quot;<i>:</i></div>=
<div>- 4RX/1TX with simplistic flowgraph (usrp_source connected to file_sin=
ks and analog signal connected to usrp_sink): OK.</div><div>- 6RX/1TX with =
simplistic flowgraph (usrp_source connected to file_sinks and analog signal=
 connected to usrp_sink): NOK (error described previously).</div><div>- 3RX=
/1TX with my DSP blocks: OK.</div><div>- 4RX/1TX with my DSP blocks: NOK (e=
rror described previously).</div><div><br></div><div><div><div>Regarding an=
 example, I could not find one that sets up a usrp_source AND a usrp_sink, =
in the folder {gr_prefix}/gr-uhd/examples/. I created a simplistic python f=
lowgraph that results in the poking and misalignment issue, attached in thi=
s email. For instance, the 6x1 connections would map to the input argumment=
s --tx_channels 1 --rx_channels 6.<br></div><div><br></div><div>Thanks a lo=
t for your time and I hope to hear back from you soon.</div><div><br></div>=
<div>Best,<br></div><div>Carlos<br></div></div></div><div></div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Oct 18, 2019 at 1:05 PM Sam Reiter &lt;<a href=3D"mailto:sam.re=
iter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Carl=
os,<div><br></div><div>On the host side if you&#39;re using a single stream=
er, it will work to time-align samples from every USRP as they come in. The=
 reason you see 1002 received=C2=A0packets without a timestamp match is bec=
ause 1000 was the threshold=C2=A0for maximum number of alignment failures [=
1].=C2=A0 This can be changed or increased with [2]:</div><div><pre style=
=3D"white-space:pre-wrap;color:rgb(0,0,0)">set_alignment_failure_threshold(=
1000);</pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)"><font face=
=3D"arial, sans-serif">But I doubt this will solve the issue for you. Likel=
y just delay it. From the errors you included, I&#39;d say the real problem=
 is: </font></pre><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote"><div><i=
>ERROR] [X300]=C2=A0<a href=3D"http://192.168.100.2/" target=3D"_blank">192=
.168.100.2</a>: x300 fw communication failure #1<br>EnvironmentError: IOErr=
or: x300 fw poke32 - reply timed out</i></div></blockquote><div><br></div><=
div>There is either a backup or a lack of samples coming from the radio. Do=
 you see flow control errors leading up to this failure?</div><div><br></di=
v><div>I&#39;d say that pulling pieces out of this system would be a good w=
ay to start troubleshooting:</div><div><ul><li>Drop the sample rate (what i=
s it, by the way?) and see if there&#39;s a threshold where things start wo=
rking [3]</li><li>Keep the original sample rate and try removing a radio or=
 two from the system. Does this help things?</li></ul><div>It sounds like t=
his is something you can reproduce independent of your DSP blocks, which he=
lps simplify things a bit. If you could go a bit further and find a simple =
example (i.e. take one of the GNURadio UHD shipping examples and expand it =
to use 3x USRPs) and get it to reproduce the behavior, then I&#39;d be happ=
y to set something up on my end try to reproduce the behavior you&#39;re se=
eing.</div></div><div>=C2=A0<br></div></div><div><div><div dir=3D"ltr"><div=
 dir=3D"ltr"><div><div dir=3D"ltr">Sam</div></div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">[1]=C2=A0<a href=3D"http://lists.ettus.com/pipermail/usr=
p-users_lists.ettus.com/2017-August/053986.html" target=3D"_blank">http://l=
ists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-August/053986.html=
</a></div><div dir=3D"ltr">[2]=C2=A0<a href=3D"http://lists.ettus.com/piper=
mail/usrp-users_lists.ettus.com/2014-January/036210.html" target=3D"_blank"=
>http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-January/0=
36210.html</a></div><div dir=3D"ltr">[3]=C2=A0<a href=3D"http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2014-November/039561.html" target=
=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/201=
4-November/039561.html</a></div></div></div></div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 17,=
 2019 at 3:46 PM Carlos Bocanegra via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div><div>Hello community,</div><div><br></div><div>I am working =
on a=20
gnuradio application that synchronously retrieves data from a=20
usrp_source, does some DSP on each of the streams and selects the signal
 to send on a usrp_sink based on some metric computation. The sources=20
and sinks represent 3 USRP X310 devices, each with 2 UBX-160=20
daughterboards, and are synchronized using an Octoclock-G. Thus,=20
creating a 6x1 MISO system. The USRP synchronization is done using the=20
Python API, as well as the flowgraph. The DSP blocks are coded in C++.=20
The flowgraph would be something like:</div><div><div><br></div><div><i>sel=
f.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))</i></div><div><i>self=
.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))</i></div><div><i>self.=
connect((usrp_source, 2), my_dsp_2, (my_switch, 2))</i></div><div><i>self.c=
onnect((usrp_source, 3), my_dsp_3, (my_switch, 3))</i></div><div><i>self.co=
nnect(my_switch, another_dsp_0, (usrp_sink, 0))</i></div></div><div><br></d=
iv><div>
 The application runs for a while until UHD outputs a message saying=20
that the poke32 has timed out on one of the USRP. After that, a=20
misalignment error on the receiver streams is shown and the green lights
 on the USRP go off.<br></div><div><br></div><div>We are under the=20
impression that the DSP blocks working independently may be requesting=20
samples from the source at different times, causing the misalignment.=20
Could this be the case? Is there an issue with my network connection?<br></=
div><div><br></div><div>I have tried to get rid of the misalignment error b=
y increasing the threshold in the file<br></div><div><i>{uhd_prefix}/host/l=
ib/transport/super_recv_packet_handler.hpp, </i>through the function <i>set=
_alignment_failure_threshold.</i> That got rid of the misalignment error, b=
ut the failure coming from the poke function is still there.</div><div><br>=
</div><div>Interestingly,
 the exact same behavior arises when I just connect file_sinks to the=20
outputs from the usrp_source and a simple analog signal to the=20
usrp_sink. Below the flowgraph:</div><div><br></div><div><div><div><i>self.=
connect((usrp_source, 0), file_sink_0)</i></div>self.connect((usrp_source, =
1), file_sink_1)</div><div>self.connect((usrp_source, 2), file_sink_2)</div=
><div>self.connect((usrp_source, 3), file_sink_3)<div><i>self.connect(analo=
g_sig_c, (usrp_sink, 0))</i></div></div></div><div><br></div><div>I&#39;d a=
ppreciate any help on this since I&#39;m running out of ideas here. Please,=
 find below more details.<br></div><div><br></div><div><b>The error:</b><br=
></div><div><i>=C2=A0[ERROR] [X300] <a href=3D"http://192.168.100.2" target=
=3D"_blank">192.168.100.2</a>: x300 fw communication failure #1<br>Environm=
entError: IOError: x300 fw poke32 - reply timed out</i></div><div><i>=C2=A0=
[ERROR] [X300] <a href=3D"http://192.168.100.2" target=3D"_blank">192.168.1=
00.2</a>: x300 fw communication failure #1<br>EnvironmentError: IOError: x3=
00 fw poke32 - reply timed out</i></div><div><i>=C2=A0[ERROR] [X300] <a hre=
f=3D"http://192.168.100.2" target=3D"_blank">192.168.100.2</a>: x300 fw com=
munication failure #3<br>EnvironmentError: IOError: x300 fw poke32 - reply =
timed out</i></div><div>=C2=A0[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.EnvironmentError: IOError: <a href=3D"ht=
tp://192.168.100.2" target=3D"_blank">192.168.100.2</a>: x300 fw communicat=
ion failure #3<br></div><div><i>=C2=A0[ERROR] [STREAMER] The receive packet=
 handler failed to time-align packets.<br>1002 received packets were proces=
sed by the handler.<br>However, a timestamp match could not be determined.<=
br></i></div><div><br></div><div><b>Here are some details of my network con=
figuration:</b></div><div>- UHD built from source, tag v3.14.1.1.</div><div=
>- Gnuradio built from source, tag 3.7.13.5.</div><div>- X310 USRP, each eq=
uipped with two UBX-160 daughterboards.</div><div>- The communication is ov=
er Ethernet using the 1Gb port on the X310.</div><div>- Each USRP is connec=
ted to a dedicated NIC.<br></div><div>- The MTU is set to 1500 for the all =
interfaces.<br></div><div>-
 The USRPs are synchronized using an Octoclock-G and the parameters=20
tuned in the Python script. The procedure is similar to the one followed
 in benchmark_rate (uhd), for the usrp_source and usrp_sink.<br></div><div>=
- The NIC ring buffers are set to the maximum for both TX and RX, to 4096, =
using ethtool.</div>- The OS ring buffers are set as suggested bu Ettus, us=
ing the following commands:<br>=C2=A0=C2=A0 <i>&gt;&gt; sudo sysctl -w net.=
core.rmem_max=3D33554432<br>=C2=A0=C2=A0 &gt;&gt; sudo sysctl -w net.core.w=
mem_max=3D33554432<br>=C2=A0=C2=A0 &gt;&gt; sudo sysctl -w net.core.rmem_de=
fault=3D33554432<br>=C2=A0=C2=A0 &gt;&gt; sudo sysctl -w net.core.wmem_defa=
ult=3D33554432</i></div><div><br></div><div>Best,</div><div>Carlos</div></d=
iv>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--00000000000092d19b0595347043--
--00000000000092d19f0595347045
Content-Type: text/x-python; charset="US-ASCII"; name="test_multiusrp.py"
Content-Disposition: attachment; filename="test_multiusrp.py"
Content-Transfer-Encoding: base64
Content-ID: <f_k1wj4y4t0>
X-Attachment-Id: f_k1wj4y4t0

IyBEZXZlbG9wZWQgYnk6IENhcmxvcyBCb2NhbmVncmEKCmZyb20gZ251cmFkaW8gaW1wb3J0IGdy
LCB1aGQsIGJsb2NrcywgYW5hbG9nCmltcG9ydCB0aW1lCmltcG9ydCBzeXMKaW1wb3J0IG9zCmlt
cG9ydCBvcHRwYXJzZQpmcm9tIGdudXJhZGlvLnVoZC51aGRfc3dpZyBpbXBvcnQgdGltZV9zcGVj
X3QKaW1wb3J0IHNpZ25hbAoKCgpjbGFzcyByZWFkZXJfdG9wX2Jsb2NrKGdyLnRvcF9ibG9jayk6
CiAgICAKICAgIGRlZiBpbml0X211bHRpX3VzcnAoc2VsZiwgb3B0aW9ucyk6CiAgICAgICAgc2Vs
Zi5zaW5rID0gdWhkLnVzcnBfc2luaygKICAgICAgICAgIGRldmljZV9hZGRyPW9wdGlvbnMudXNy
cF9hZGRyZXNzX3NpbmssCiAgICAgICAgICBzdHJlYW1fYXJncz11aGQuc3RyZWFtX2FyZ3MoCiAg
ICAgICAgICAgIGNwdV9mb3JtYXQ9ImZjMzIiLAogICAgICAgICAgICBjaGFubmVscz1vcHRpb25z
LnR4X2NoYW5uZWxzLAogICAgICAgICAgICBkYm9hcmRfY2xvY2tfcmF0ZT0yMGU2LAogICAgICAg
ICAgICBza2lwX2RyYW09MSwgICMgZmFzdGVyCiAgICAgICAgICAgIGlnbm9yZV9jYWxfZmlsZT0i
IiwKICAgICAgICApLAogICAgICAgICkKICAgICAgICBzZWxmLnNvdXJjZSA9IHVoZC51c3JwX3Nv
dXJjZSgKICAgICAgICAgIGRldmljZV9hZGRyPW9wdGlvbnMudXNycF9hZGRyZXNzX3NvdXJjZSwK
ICAgICAgICAgIHN0cmVhbV9hcmdzPXVoZC5zdHJlYW1fYXJncygKICAgICAgICAgICAgY3B1X2Zv
cm1hdD0iZmMzMiIsCiAgICAgICAgICAgIGNoYW5uZWxzPW9wdGlvbnMucnhfY2hhbm5lbHMsCiAg
ICAgICAgICAgIGRib2FyZF9jbG9ja19yYXRlPTIwZTYsCiAgICAgICAgICAgIHNraXBfZHJhbT0x
LCAgIyBmYXN0ZXIKICAgICAgICAgICAgaWdub3JlX2NhbF9maWxlPSIiLAogICAgICAgICksCiAg
ICAgICAgKQoKICAgIGRlZiBzZXR1cF9tdWx0aV91c3JwKHNlbGYsIG9wdGlvbnMpOgogICAgICAg
ICMgKioqIFVTRUZVTCBQQVJBTVMKICAgICAgICBzaW5rX25fTWJvYXJkcyA9IHNlbGYuc2luay5n
ZXRfbnVtX21ib2FyZHMoKQogICAgICAgIHNvdXJjZV9uX01ib2FyZHMgPSBzZWxmLnNvdXJjZS5n
ZXRfbnVtX21ib2FyZHMoKQogICAgICAgIG5fZGJfcGVyX01ib2FyZCA9IDI7CiAgICAgICAgIyAq
KiogRVhURVJOQUwgUkVGCiAgICAgICAgcHJpbnQgIltVSERdIFNldHRpbmcgRXh0ZXJuYWwgUmVm
ICsgUFBTIHNvdXJjZXMuLi4iCiAgICAgICAgZm9yIG1iX2lkeCBpbiByYW5nZShzb3VyY2Vfbl9N
Ym9hcmRzKToKICAgICAgICAgICAgc2VsZi5zb3VyY2Uuc2V0X2Nsb2NrX3NvdXJjZSgiZXh0ZXJu
YWwiLCBtYl9pZHgpICAjIE1ib2FyZD0wIGRlZmF1bHQKICAgICAgICAgICAgc2VsZi5zb3VyY2Uu
c2V0X3RpbWVfc291cmNlKCJleHRlcm5hbCIsIG1iX2lkeCkgICMgTWJvYXJkPTAgZGVmYXVsdAog
ICAgICAgICAgICBpZiBsZW4ob3B0aW9ucy5yeF9jaGFubmVscykvKChtYl9pZHgrMSkqbl9kYl9w
ZXJfTWJvYXJkKT49MToKICAgICAgICAgICAgICAgIHNlbGYuc291cmNlLnNldF9zdWJkZXZfc3Bl
YygiQTowIEI6MCIsIG1iX2lkeCkgICMgTWJvYXJkPTAgZGVmYXVsdAogICAgICAgICAgICBlbHNl
OgogICAgICAgICAgICAgICAgc2VsZi5zb3VyY2Uuc2V0X3N1YmRldl9zcGVjKCJBOjAiLCBtYl9p
ZHgpICAjIE1ib2FyZD0wIGRlZmF1bHQKICAgICAgICBmb3IgbWJfaWR4IGluIHJhbmdlKHNpbmtf
bl9NYm9hcmRzKToKICAgICAgICAgICAgc2VsZi5zaW5rLnNldF9jbG9ja19zb3VyY2UoImV4dGVy
bmFsIiwgbWJfaWR4KSAgIyBNYm9hcmQ9MCBkZWZhdWx0CiAgICAgICAgICAgIHNlbGYuc2luay5z
ZXRfdGltZV9zb3VyY2UoImV4dGVybmFsIiwgbWJfaWR4KSAgIyBNYm9hcmQ9MCBkZWZhdWx0CiAg
ICAgICAgICAgIGlmIGxlbihvcHRpb25zLnR4X2NoYW5uZWxzKS8oKG1iX2lkeCsxKSpuX2RiX3Bl
cl9NYm9hcmQpPj0xOgogICAgICAgICAgICAgICAgc2VsZi5zaW5rLnNldF9zdWJkZXZfc3BlYygi
QTowIEI6MCIsIG1iX2lkeCkgICMgTWJvYXJkPTAgZGVmYXVsdAogICAgICAgICAgICBlbHNlOgog
ICAgICAgICAgICAgICAgc2VsZi5zaW5rLnNldF9zdWJkZXZfc3BlYygiQTowIiwgbWJfaWR4KSAg
IyBNYm9hcmQ9MCBkZWZhdWx0CiAgICAgICAgIyAqKiogV0FJVAogICAgICAgIHRpbWUuc2xlZXAo
Mi4wKQogICAgICAgIHByaW50ICJbVUhEXSBDaGVja2luZyBpZiB0aGUgVVNSUHMgc2VlIHRoZSBS
ZWZlcmVuY2Ugc2lnbmFsLi4uIgogICAgICAgIGZvciBtYl9pZHggaW4gcmFuZ2Uoc2lua19uX01i
b2FyZHMpOgogICAgICAgICAgICBwcmludCAiW1VIRF9UWF0gTWJvYXJkIHswfSBsb2NrZWQ6IHRv
IGV4dGVybmFsIHJlZmVyZW5jZT8gezF9Ii5mb3JtYXQobWJfaWR4LHNlbGYuc2luay5nZXRfbWJv
YXJkX3NlbnNvcigicmVmX2xvY2tlZCIsIG1iX2lkeCkudG9fYm9vbCgpKQogICAgICAgIGZvciBt
Yl9pZHggaW4gcmFuZ2Uoc291cmNlX25fTWJvYXJkcyk6CiAgICAgICAgICAgIHByaW50ICJbVUhE
X1JYXSBNYm9hcmQgezB9IGxvY2tlZDogdG8gZXh0ZXJuYWwgcmVmZXJlbmNlPyB7MX0iLmZvcm1h
dChtYl9pZHgsc2VsZi5zb3VyY2UuZ2V0X21ib2FyZF9zZW5zb3IoInJlZl9sb2NrZWQiLCBtYl9p
ZHgpLnRvX2Jvb2woKSkgCiAgICAgICAgIyAqKiogU1lOQ0hST05JWklORyBERVZJQ0VTCiAgICAg
ICAgcHJpbnQgIltQUFNdIFBQUyBzZXQgdG8gdW5rbm93biBzb3VyY2UgKFNNQSBjb25uZWN0aW9u
KSIKICAgICAgICBzZWxmLnNpbmsuc2V0X3RpbWVfdW5rbm93bl9wcHModWhkLnRpbWVfc3BlYygp
KSAgIyBObyBNYm9hcmQgc3BlYwogICAgICAgIHNlbGYuc291cmNlLnNldF90aW1lX3Vua25vd25f
cHBzKHVoZC50aW1lX3NwZWMoKSkgICMgTm8gTWJvYXJkIHNwZWMKICAgICAgICAjICoqKiBXQUlU
IAogICAgICAgIHRpbWUuc2xlZXAoMi4wKQogICAgICAgICMgKioqIFNFRSBQUFMgU1lOQ0hST05J
WkFUSU9OIExFVkVMCiAgICAgICAgY3Vycl9od190aW1lID0gc2VsZi5zaW5rLmdldF90aW1lX2xh
c3RfcHBzKCkKICAgICAgICB3aGlsZSBjdXJyX2h3X3RpbWU9PXNlbGYuc2luay5nZXRfdGltZV9s
YXN0X3BwcygpOgogICAgICAgICAgICBwYXNzCiAgICAgICAgdGltZS5zbGVlcCgwLjA1KSAgIyBT
bGVlcCBmb3IgNTBtcwogICAgICAgIHByaW50ICJbUFBTXSBSZS1zZXQgYWxsIFBQUyBpbml0aWFs
IHZhbHVlcyB0byAwIgogICAgICAgIHNlbGYuc2luay5zZXRfdGltZV9uZXh0X3Bwcyh1aGQudGlt
ZV9zcGVjX3QoMC4wKSkgICMgTmVlZCB0byBwdXQgZXZlcnl0aGluZyBhIHplcm8gZm9yIHRpbWUg
YWxpZ25tZW50CiAgICAgICAgc2VsZi5zb3VyY2Uuc2V0X3RpbWVfbmV4dF9wcHModWhkLnRpbWVf
c3BlY190KDAuMCkpICAjIE5lZWQgdG8gcHV0IGV2ZXJ5dGhpbmcgYSB6ZXJvIGZvciB0aW1lIGFs
aWdubWVudAogICAgICAgICMgKioqIFdBSVQgCiAgICAgICAgdGltZS5zbGVlcCgxLjApICAjIFNs
ZWVwIGZvciAycwogICAgICAgICMgKioqIFNBTVBMRSBSQVRFICsgQU5URU5OQSBDT05GSUcKICAg
ICAgICBwcmludCAiW1VIRF0gU2V0dGluZyBTYW1wbGUgUmF0ZSBhbmQgQW50ZW5uYSBjb25maWd1
cmF0aW9uLi4uIgogICAgICAgIHNlbGYuc2luay5zZXRfc2FtcF9yYXRlKG9wdGlvbnMuZGFjX3Jh
dGUpICAjIE5vIE1ib2FyZCBzcGVjCiAgICAgICAgc2VsZi5zb3VyY2Uuc2V0X3NhbXBfcmF0ZShv
cHRpb25zLmFkY19yYXRlKSAgIyBObyBNYm9hcmQgc3BlYwogICAgICAgIGZvciBkYl9pZHggaW4g
b3B0aW9ucy50eF9jaGFubmVsczoKICAgICAgICAgICAgc2VsZi5zaW5rLnNldF9nYWluKG9wdGlv
bnMudHhfZ2FpbiwgZGJfaWR4KSAgIyBEYm9hcmQ9MCBkZWZhdWx0CiAgICAgICAgICAgIHNlbGYu
c2luay5zZXRfYW50ZW5uYSgiVFgvUlgiLCBkYl9pZHgpICAjIERib2FyZD0wIGRlZmF1bHQKICAg
ICAgICAgICAgcHJpbnQgIltVSERfVFhdIENoYW5uZWwgezB9OiBVc2luZyBhbnRlbm5hIFRYL1JY
LCBHYWluIHsxfSIuZm9ybWF0KGRiX2lkeCxvcHRpb25zLnJ4X2dhaW4pCiAgICAgICAgZm9yIGRi
X2lkeCBpbiBvcHRpb25zLnJ4X2NoYW5uZWxzOgogICAgICAgICAgICBzZWxmLnNvdXJjZS5zZXRf
Z2FpbihvcHRpb25zLnJ4X2dhaW4sIGRiX2lkeCkgICMgRGJvYXJkPTAgZGVmYXVsdAogICAgICAg
ICAgICBzZWxmLnNvdXJjZS5zZXRfYW50ZW5uYSgiUlgyIiwgZGJfaWR4KSAgIyBEYm9hcmQ9MCBk
ZWZhdWx0CiAgICAgICAgICAgIHNlbGYuc291cmNlLnNldF9hdXRvX2RjX29mZnNldChGYWxzZSwg
ZGJfaWR4KSAgIyBEYm9hcmQgLSBVbmNvbW1lbnQgdGhpcyBsaW5lIGZvciBTQlggZGF1Z2h0ZXJi
b2FyZAogICAgICAgICAgICBwcmludCAiW1VIRF9SWF0gQ2hhbm5lbCB7MH06IFVzaW5nIGFudGVu
bmEgUlgyLCBHYWluIHsxfSwgREMtb2Zmc2V0IHsyfSIuZm9ybWF0KGRiX2lkeCxvcHRpb25zLnJ4
X2dhaW4sRmFsc2UpCiAgICAgICAgIyAqKiogV0FJVAogICAgICAgIHRpbWUuc2xlZXAoMS4wKQog
ICAgICAgICMgKioqIEdFVCBUSU1FUwogICAgICAgIG5vd19zaW5rICAgICAgICAgID0gc2VsZi5z
b3VyY2UuZ2V0X3RpbWVfbm93KCkKICAgICAgICBjbWRfdGltZV9zaW5rICAgICA9IG5vd19zaW5r
ICsgdWhkLnRpbWVfc3BlYygwLjIpICAjIGFmdGVyIDIwMG1zCiAgICAgICAgY21kX3RpbWVfc291
cmNlICAgPSBub3dfc2luayArIHVoZC50aW1lX3NwZWMoMC4yKSAgIyBhZnRlciAyMDBtcwogICAg
ICAgICMgKioqIFNFVCBDT01NQU5EIFRJTUUKICAgICAgICB0cnk6CiAgICAgICAgICAgIGZvciBt
Yl9pZHggaW4gcmFuZ2Uoc291cmNlX25fTWJvYXJkcyk6CiAgICAgICAgICAgICAgICBzZWxmLnNv
dXJjZS5zZXRfY29tbWFuZF90aW1lKGNtZF90aW1lX3NpbmssIG1iX2lkeCkKICAgICAgICAgICAg
Zm9yIG1iX2lkeCBpbiByYW5nZShzaW5rX25fTWJvYXJkcyk6CiAgICAgICAgICAgICAgICBzZWxm
LnNpbmsuc2V0X2NvbW1hbmRfdGltZShjbWRfdGltZV9zb3VyY2UsIG1iX2lkeCkKICAgICAgICBl
eGNlcHQgUnVudGltZUVycm9yOgogICAgICAgICAgICBzeXMuc3RkZXJyLndyaXRlKCdbVUhEXSBb
V0FSTklOR10gRmFpbGVkIHRvIHNldCBjb21tYW5kIHRpbWVzIG9uIFVTUlBzLlxuJykKICAgICAg
ICAjICoqKiBTRVQgQ0VOVEVSIEZSRVFVRU5DSUVTCiAgICAgICAgcHJpbnQgIltVSERfRlJFUV0g
Q3JlYXRpbmcgdHVuZSByZXF1ZXN0IgogICAgICAgIHRyZXEgPSB1aGQudHVuZV9yZXF1ZXN0KG9w
dGlvbnMuZnJlcSkKICAgICAgICBmb3IgZGJfaWR4IGluIG9wdGlvbnMudHhfY2hhbm5lbHM6CiAg
ICAgICAgICAgIHJlc19zaW5rID0gc2VsZi5zaW5rLnNldF9jZW50ZXJfZnJlcSh0cmVxLCBkYl9p
ZHgpICAjIERib2FyZD0wIGRlZmF1bHQKICAgICAgICBmb3IgZGJfaWR4IGluIG9wdGlvbnMucnhf
Y2hhbm5lbHM6CiAgICAgICAgICAgIHJlc19zb3VyY2UgPSBzZWxmLnNvdXJjZS5zZXRfY2VudGVy
X2ZyZXEodHJlcSwgZGJfaWR4KSAgIyBEYm9hcmQ9MCBkZWZhdWx0CiAgICAgICAgd2hpbGUgbm90
IHNlbGYuc2luay5nZXRfc2Vuc29yKCJsb19sb2NrZWQiKS50b19ib29sKCk6CiAgICAgICAgICAg
IHByaW50ICJ3YWl0aW5nIgogICAgICAgICAgICBwYXNzCiAgICAgICAgd2hpbGUgbm90IHNlbGYu
c291cmNlLmdldF9zZW5zb3IoImxvX2xvY2tlZCIpLnRvX2Jvb2woKToKICAgICAgICAgICAgcHJp
bnQgIndhaXRpbmciCiAgICAgICAgICAgIHBhc3MKICAgICAgICAjICoqKiBXQUlUCiAgICAgICAg
dGltZS5zbGVlcCgyLjApICAjIGFmdGVyIDFzLCBnaXZlIHRpbWUgdG8gdGhlIGhhcmR3YXJlIHRv
IHNldCB0aGUgdHVuaW5nIGZyZXEKICAgICAgICAjICoqKiBDTEVBUiBDT01NQU5EIFRJTUVTCiAg
ICAgICAgZm9yIG1iX2lkeCBpbiByYW5nZShzaW5rX25fTWJvYXJkcyk6CiAgICAgICAgICAgIHNl
bGYuc2luay5jbGVhcl9jb21tYW5kX3RpbWUobWJfaWR4KQogICAgICAgIGZvciBtYl9pZHggaW4g
cmFuZ2Uoc291cmNlX25fTWJvYXJkcyk6CiAgICAgICAgICAgIHNlbGYuc291cmNlLmNsZWFyX2Nv
bW1hbmRfdGltZShtYl9pZHgpCgoKICAgIGRlZiBfX2luaXRfXyhzZWxmKToKICAgICAgICBnci50
b3BfYmxvY2suX19pbml0X18oc2VsZikKICAgICAgICBydCA9IGdyLmVuYWJsZV9yZWFsdGltZV9z
Y2hlZHVsaW5nKCkKICAgICAgICAKICAgICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIwogICAgICAgICMgVmFyaWFibGVzCiAgICAgICAgIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKICAgICAgICBvcHRp
b25zLmRhY19yYXRlID0gMWU2ICAjIERBQyByYXRlCiAgICAgICAgb3B0aW9ucy5hZGNfcmF0ZSA9
IDJlNiAgIyBBREMgcmF0ZQogICAgICAgIG9wdGlvbnMudHhfY2hhbm5lbHMgPSByYW5nZShUWENI
QU5ORUxTKQogICAgICAgIG9wdGlvbnMucnhfY2hhbm5lbHMgPSByYW5nZShSWENIQU5ORUxTKQog
ICAgICAgIG9wdGlvbnMuYW1wbCA9IDAuNQogICAgICAgIG9wdGlvbnMudHhfZ2FpbiA9IDIwCiAg
ICAgICAgb3B0aW9ucy5yeF9nYWluID0gMjAKICAgICAgICBvcHRpb25zLmZyZXEgPSA5MTBlNgoK
ICAgICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IwogICAgICAgICMgQmxvY2tzIAogICAgICAgICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjCiAgICAgICAgc2VsZi5maWxlX3Npbmtfc291cmNlID0gWyIi
IGZvciB4IGluIG9wdGlvbnMucnhfY2hhbm5lbHNdCiAgICAgICAgc2VsZi5udWxsX3NpbmtfYyA9
IFsiIiBmb3IgeCBpbiBvcHRpb25zLnJ4X2NoYW5uZWxzXQogICAgICAgIHNlbGYubnVsbF9zaW5r
X2YgPSBbIiIgZm9yIHggaW4gb3B0aW9ucy5yeF9jaGFubmVsc10KICAgICAgICBmaWxlTmFtZVJv
b3QgPSAiL3RtcC9zb3VyY2UiCiAgICAgICAgZm9yIGkgaW4gb3B0aW9ucy5yeF9jaGFubmVsczoK
ICAgICAgICAgICAgZmlsZU5hbWUgPSBmaWxlTmFtZVJvb3QgKyBzdHIoaSkKICAgICAgICAgICAg
c2VsZi5maWxlX3Npbmtfc291cmNlW2ldID0gYmxvY2tzLmZpbGVfc2luayhnci5zaXplb2ZfZ3Jf
Y29tcGxleCAqIDEsIGZpbGVOYW1lLCBGYWxzZSkKICAgICAgICAgICAgc2VsZi5udWxsX3Npbmtf
Y1tpXSA9IGJsb2Nrcy5udWxsX3NpbmsoZ3Iuc2l6ZW9mX2dyX2NvbXBsZXggKiAxKQogICAgICAg
ICAgICBzZWxmLm51bGxfc2lua19mW2ldID0gYmxvY2tzLm51bGxfc2luayhnci5zaXplb2ZfZmxv
YXQgKiAxKQogICAgICAgIHNlbGYuYW5fc2lnX3NvdXJjZSA9IGFuYWxvZy5zaWdfc291cmNlX2Yo
b3B0aW9ucy5kYWNfcmF0ZSwgYW5hbG9nLkdSX1NJTl9XQVZFLCAzNTBlMywgMSwgMCkKICAgICAg
ICBzZWxmLnRvX2NvbXBsZXggPSBibG9ja3MuZmxvYXRfdG9fY29tcGxleCgpCgogICAgICAgICMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiAgICAgICAg
IyBVU1JQIFNFVFVQIChTSU5LUyBBTkQgU09VUkNFUykKICAgICAgICAjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwogICAgICAgIGlmIGxlbihvcHRpb25z
LnJ4X2NoYW5uZWxzKTw9MjoKICAgICAgICAgICAgb3B0aW9ucy51c3JwX2FkZHJlc3Nfc291cmNl
ID0gImFkZHIwPTE5Mi4xNjguNjAuMixyZWN2X2ZyYW1lX3NpemU9MTQ3Miwgc2VuZF9mcmFtZV9z
aXplPTE0NzIiICAjIG9uZSBVU1JQCiAgICAgICAgICAgIG9wdGlvbnMudXNycF9hZGRyZXNzX3Np
bmsgICA9ICJhZGRyPTE5Mi4xNjguNjAuMixyZWN2X2ZyYW1lX3NpemU9MTQ3Miwgc2VuZF9mcmFt
ZV9zaXplPTE0NzIiICAjIG9uZSBVU1JQCiAgICAgICAgZWxpZiBsZW4ob3B0aW9ucy5yeF9jaGFu
bmVscyk8PTQ6CiAgICAgICAgICAgIG9wdGlvbnMudXNycF9hZGRyZXNzX3NvdXJjZSA9ICJhZGRy
MD0xOTIuMTY4LjYwLjIsIGFkZHIxPTE5Mi4xNjguNTAuMixyZWN2X2ZyYW1lX3NpemU9MTQ3MiIK
ICAgICAgICAgICAgb3B0aW9ucy51c3JwX2FkZHJlc3Nfc2luayAgID0gImFkZHIwPTE5Mi4xNjgu
NjAuMiwgYWRkcjE9MTkyLjE2OC41MC4yLHNlbmRfZnJhbWVfc2l6ZT0xNDcyIgogICAgICAgIGVs
aWYgbGVuKG9wdGlvbnMucnhfY2hhbm5lbHMpPD02OgogICAgICAgICAgICBvcHRpb25zLnVzcnBf
YWRkcmVzc19zb3VyY2UgPSAiYWRkcjA9MTkyLjE2OC42MC4yLGFkZHIxPTE5Mi4xNjguNTAuMixh
ZGRyMj0xOTIuMTY4LjEwMC4yLHJlY3ZfZnJhbWVfc2l6ZT0xNDcyIgogICAgICAgICAgICBvcHRp
b25zLnVzcnBfYWRkcmVzc19zaW5rICAgPSAiYWRkcjA9MTkyLjE2OC42MC4yLGFkZHIxPTE5Mi4x
NjguNTAuMixhZGRyMj0xOTIuMTY4LjEwMC4yLHNlbmRfZnJhbWVfc2l6ZT0xNDcyIgoKICAgICAg
ICAjIyMjIyMjIyBTT1VSQ0VTIGFuZCBTSU5LUyAjIyMjIyMjIyMKICAgICAgICBzZWxmLmluaXRf
bXVsdGlfdXNycChvcHRpb25zKQogICAgICAgIHNlbGYuc2V0dXBfbXVsdGlfdXNycChvcHRpb25z
KQoKICAgICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIwogICAgICAgICMgQ29ubmVjdGlvbnMKICAgICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwogICAgICAgIGZvciBpIGluIG9wdGlvbnMucnhf
Y2hhbm5lbHM6CiMgICAgICAgICAgICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5zb3VyY2UsIGkp
LCAgICAgICAgICAgICAgIHNlbGYubnVsbF9zaW5rX2NbaV0pICAjIChEbyBub3QgY29tbWVudCB0
aGlzIGxpbmUpCiAgICAgICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5zb3VyY2UsIGkpLCAgICAg
ICAgICAgICAgIHNlbGYuZmlsZV9zaW5rX3NvdXJjZVtpXSkgICMgcGFzc2l2ZSBtb2RlIC0gc3Rv
cmUgc2FtcGxlcwogICAgICAgIHNlbGYuY29ubmVjdChzZWxmLmFuX3NpZ19zb3VyY2UsIHNlbGYu
dG9fY29tcGxleCkKICAgICAgICBmb3IgaiBpbiBvcHRpb25zLnR4X2NoYW5uZWxzOgogICAgICAg
ICAgICBzZWxmLmNvbm5lY3Qoc2VsZi50b19jb21wbGV4LCAoc2VsZi5zaW5rLCBqKSkKICAgICAg
ICAgICAgICAgICAgICAKCgppZiBfX25hbWVfXyA9PSAnX19tYWluX18nOgogICAgCiAgICBkZWYg
c2lnbmFsX2hhbmRsZXIoc2lnLCBmcmFtZSk6CiAgICAgICAgcHJpbnQoJ1NpZ25hbCBjYXB0dXJl
ZCwgZW5kaW5nIGV4ZWN1dGlvbicpCgogICAgcGFyc2VyID0gb3B0cGFyc2UuT3B0aW9uUGFyc2Vy
KCkgICAgCiAgICBwYXJzZXIuYWRkX29wdGlvbignLXgnLCAnLS10eF9jaGFubmVscycsIHR5cGU9
ImludCIsIGRlc3Q9IlRYQ0hBTk5FTFMiLCBoZWxwPSJTcGVjaWZ5IHRoZSBudW1iZXIgb2YgVHgg
Y2hhbm5lbHMiLCBkZWZhdWx0PTEpCiAgICBwYXJzZXIuYWRkX29wdGlvbignLXknLCAnLS1yeF9j
aGFubmVscycsIHR5cGU9ImludCIsIGRlc3Q9IlJYQ0hBTk5FTFMiLCBoZWxwPSJTcGVjaWZ5IHRo
ZSBudW1iZXIgb2YgUnggY2hhbm5lbHMiLCBkZWZhdWx0PTEpCgogICAgb3B0aW9ucywgYXJncyA9
IHBhcnNlci5wYXJzZV9hcmdzKCkKCiAgICBUWENIQU5ORUxTID0gb3B0aW9ucy5UWENIQU5ORUxT
CiAgICBSWENIQU5ORUxTID0gb3B0aW9ucy5SWENIQU5ORUxTCgogICAgcHJpbnQoJ0luaXRpYWxp
emluZyBGbG93Z3JhcGguIFByZXNzIEN0cmwrQyB0byBzdG9wIHRoZSBFeGVjdXRpb24nKQogICAg
cHJpbnQoJycpCiAgICBtYWluX2Jsb2NrID0gcmVhZGVyX3RvcF9ibG9jaygpCiAgICBwcmludCAi
U3RhcnRpbmcgZmxvdy4uLiIKICAgIHByaW50KCcnKQogICAgbWFpbl9ibG9jay5zdGFydCgpCiAg
ICAgICAgICAgIAogICAgc2lnbmFsLnNpZ25hbChzaWduYWwuU0lHSU5ULCBzaWduYWxfaGFuZGxl
cikKICAgIHNpZ25hbC5wYXVzZSgpCgogICAgbWFpbl9ibG9jay5zdG9wKCkK
--00000000000092d19f0595347045
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--00000000000092d19f0595347045--

