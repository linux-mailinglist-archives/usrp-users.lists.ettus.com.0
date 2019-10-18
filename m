Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B6CDCC3A
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 19:06:14 +0200 (CEST)
Received: from [::1] (port=56200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLVhd-0001ao-Bn; Fri, 18 Oct 2019 13:06:13 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:41373)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iLVhZ-0001PI-9n
 for usrp-users@lists.ettus.com; Fri, 18 Oct 2019 13:06:09 -0400
Received: by mail-lf1-f47.google.com with SMTP id r2so5255066lfn.8
 for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2019 10:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YPuudVjjCSEzF/JkpzmOnCdlw9hgu0OINmicKip5e5s=;
 b=PnVhahlRoWx5oEBa0AyOD6obRfKGOBoJsaacVsyLKoJOjyBAjMZvCNId4OBBDtpO8R
 aR6Lv8oUNnCfXGrjwubrHvYUZXUXcneXqUKsC6W9oYIQ8/YwRmckusZAEwF01CEn+3tO
 FsjshQHbwkxr01Zj4tTA40ERVtLCjpa5V+BH+vLSGGH2HB/aKGraQAqNjx2o/c+gu0aI
 g931nlzyTQjlxY+uZK2WDlBAdZ2pnzMZuE57GdcLtL3Vqex7wBAbAmVnIvzftc+RCjgk
 haiUQ9rTuxt5If5REhHlJw+izwO3WzCxvawR7XeGQxjGX3lgN5VaPsSAb0ubY9ZxU91o
 nqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YPuudVjjCSEzF/JkpzmOnCdlw9hgu0OINmicKip5e5s=;
 b=RrwuZcxl+I4iqVAH0XvqCw4/m7sYDPJz1+VwwJUdJqXHLhJTAj4UjguMukJ2CatOKV
 xaps+3+kDW9Jw3B7dTLhBqz2KbAXRwUa8Nos1hw4loxPUQpIgR2tezzmw5ixBz2i+Ic7
 RVe74UUSp0/uCK36C0rkV6prlhLCsIK0kBC6eztRN2ay66RNCPvLwVRBM+DtTV00WLp6
 Ykb+L47XAZKEP8I0/R5Syv3rf8cT7Gzqh+ZPjTpHC9KIwftHVeZjFzJdPhv7XpHyH32C
 r/fwtqSoGlKSZEDgz9QityxhBswQUooaMMlFTcsYIp0iKXiNC+jjuIsnJhzZRjsSUK/T
 +H2Q==
X-Gm-Message-State: APjAAAVXSl2xpuNQDYwSZVXbFOYjsk1D2XJMea2B+R6q25KLmq4CjVum
 3cSG328i7GPpNvpVdG+FBSuYcqk/wtSipcTv/LuqV6hm
X-Google-Smtp-Source: APXvYqzEUSq1HGtdbghpp26ulk8C86s32GeqbUIACjkcRlNXiMcL5+9909HLldd5tCy8DpiiplYRSF1IcyT4moKuRP4=
X-Received: by 2002:a19:3fcd:: with SMTP id m196mr5095375lfa.118.1571418327807; 
 Fri, 18 Oct 2019 10:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAEJWbW3=nf=LvD+mmVC2Vaz_J0wW6jrsxNskvq+B1eYkCh2P+Q@mail.gmail.com>
In-Reply-To: <CAEJWbW3=nf=LvD+mmVC2Vaz_J0wW6jrsxNskvq+B1eYkCh2P+Q@mail.gmail.com>
Date: Fri, 18 Oct 2019 12:05:16 -0500
Message-ID: <CANf970YRfCeFXYGaum=Y4xoUjz6MOpB9PemTwPYD2hYEoupFUA@mail.gmail.com>
To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1592084431135694926=="
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

--===============1592084431135694926==
Content-Type: multipart/alternative; boundary="000000000000390c5f0595325755"

--000000000000390c5f0595325755
Content-Type: text/plain; charset="UTF-8"

Carlos,

On the host side if you're using a single streamer, it will work to
time-align samples from every USRP as they come in. The reason you see 1002
received packets without a timestamp match is because 1000 was the
threshold for maximum number of alignment failures [1].  This can be
changed or increased with [2]:

set_alignment_failure_threshold(1000);

But I doubt this will solve the issue for you. Likely just delay it.
From the errors you included, I'd say the real problem is:


> *ERROR] [X300] 192.168.100.2 <http://192.168.100.2/>: x300 fw
> communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
> timed out*
>

There is either a backup or a lack of samples coming from the radio. Do you
see flow control errors leading up to this failure?

I'd say that pulling pieces out of this system would be a good way to start
troubleshooting:

   - Drop the sample rate (what is it, by the way?) and see if there's a
   threshold where things start working [3]
   - Keep the original sample rate and try removing a radio or two from the
   system. Does this help things?

It sounds like this is something you can reproduce independent of your DSP
blocks, which helps simplify things a bit. If you could go a bit further
and find a simple example (i.e. take one of the GNURadio UHD shipping
examples and expand it to use 3x USRPs) and get it to reproduce the
behavior, then I'd be happy to set something up on my end try to reproduce
the behavior you're seeing.

Sam

[1]
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-August/053986.html
[2]
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-January/036210.html
[3]
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-November/039561.html


On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello community,
>
> I am working on a gnuradio application that synchronously retrieves data
> from a usrp_source, does some DSP on each of the streams and selects the
> signal to send on a usrp_sink based on some metric computation. The sources
> and sinks represent 3 USRP X310 devices, each with 2 UBX-160
> daughterboards, and are synchronized using an Octoclock-G. Thus, creating a
> 6x1 MISO system. The USRP synchronization is done using the Python API, as
> well as the flowgraph. The DSP blocks are coded in C++. The flowgraph would
> be something like:
>
> *self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*
> *self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*
> *self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*
> *self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*
> *self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*
>
> The application runs for a while until UHD outputs a message saying that
> the poke32 has timed out on one of the USRP. After that, a misalignment
> error on the receiver streams is shown and the green lights on the USRP go
> off.
>
> We are under the impression that the DSP blocks working independently may
> be requesting samples from the source at different times, causing the
> misalignment. Could this be the case? Is there an issue with my network
> connection?
>
> I have tried to get rid of the misalignment error by increasing the
> threshold in the file
> *{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp, *through
> the function *set_alignment_failure_threshold.* That got rid of the
> misalignment error, but the failure coming from the poke function is still
> there.
>
> Interestingly, the exact same behavior arises when I just connect
> file_sinks to the outputs from the usrp_source and a simple analog signal
> to the usrp_sink. Below the flowgraph:
>
> *self.connect((usrp_source, 0), file_sink_0)*
> self.connect((usrp_source, 1), file_sink_1)
> self.connect((usrp_source, 2), file_sink_2)
> self.connect((usrp_source, 3), file_sink_3)
> *self.connect(analog_sig_c, (usrp_sink, 0))*
>
> I'd appreciate any help on this since I'm running out of ideas here.
> Please, find below more details.
>
> *The error:*
>
> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
> communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
> timed out*
>
> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
> communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
> timed out*
>
> * [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
> communication failure #3EnvironmentError: IOError: x300 fw poke32 - reply
> timed out*
>  [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
> loop will now exit, things may not work.EnvironmentError: IOError:
> 192.168.100.2: x300 fw communication failure #3
>
>
>
> * [ERROR] [STREAMER] The receive packet handler failed to time-align
> packets.1002 received packets were processed by the handler.However, a
> timestamp match could not be determined.*
>
> *Here are some details of my network configuration:*
> - UHD built from source, tag v3.14.1.1.
> - Gnuradio built from source, tag 3.7.13.5.
> - X310 USRP, each equipped with two UBX-160 daughterboards.
> - The communication is over Ethernet using the 1Gb port on the X310.
> - Each USRP is connected to a dedicated NIC.
> - The MTU is set to 1500 for the all interfaces.
> - The USRPs are synchronized using an Octoclock-G and the parameters tuned
> in the Python script. The procedure is similar to the one followed in
> benchmark_rate (uhd), for the usrp_source and usrp_sink.
> - The NIC ring buffers are set to the maximum for both TX and RX, to 4096,
> using ethtool.
> - The OS ring buffers are set as suggested bu Ettus, using the following
> commands:
>
>
>
> *>> sudo sysctl -w net.core.rmem_max=33554432   >> sudo sysctl -w
> net.core.wmem_max=33554432   >> sudo sysctl -w
> net.core.rmem_default=33554432   >> sudo sysctl -w
> net.core.wmem_default=33554432*
>
> Best,
> Carlos
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000390c5f0595325755
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Carlos,<div><br></div><div>On the host side if you&#39;re =
using a single streamer, it will work to time-align samples from every USRP=
 as they come in. The reason you see 1002 received=C2=A0packets without a t=
imestamp match is because 1000 was the threshold=C2=A0for maximum number of=
 alignment failures [1].=C2=A0 This can be changed or increased with [2]:</=
div><div><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)">set_alignment=
_failure_threshold(1000);</pre><pre style=3D"white-space:pre-wrap;color:rgb=
(0,0,0)"><font face=3D"arial, sans-serif">But I doubt this will solve the i=
ssue for you. Likely just delay it. From the errors you included, I&#39;d s=
ay the real problem is: </font></pre><blockquote style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"g=
mail_quote"><div><i>ERROR] [X300]=C2=A0<a href=3D"http://192.168.100.2/" ta=
rget=3D"_blank">192.168.100.2</a>: x300 fw communication failure #1<br>Envi=
ronmentError: IOError: x300 fw poke32 - reply timed out</i></div></blockquo=
te><div><br></div><div>There is either a backup or a lack of samples coming=
 from the radio. Do you see flow control errors leading up to this failure?=
</div><div><br></div><div>I&#39;d say that pulling pieces out of this syste=
m would be a good way to start troubleshooting:</div><div><ul><li>Drop the =
sample rate (what is it, by the way?) and see if there&#39;s a threshold wh=
ere things start working [3]</li><li>Keep the original sample rate and try =
removing a radio or two from the system. Does this help things?</li></ul><d=
iv>It sounds like this is something you can reproduce independent of your D=
SP blocks, which helps simplify things a bit. If you could go a bit further=
 and find a simple example (i.e. take one of the GNURadio UHD shipping exam=
ples and expand it to use 3x USRPs) and get it to reproduce the behavior, t=
hen I&#39;d be happy to set something up on my end try to reproduce the beh=
avior you&#39;re seeing.</div></div><div>=C2=A0<br></div></div><div><div><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Sam</div></div><div dir=3D"ltr"><br=
></div><div dir=3D"ltr">[1]=C2=A0<a href=3D"http://lists.ettus.com/pipermai=
l/usrp-users_lists.ettus.com/2017-August/053986.html">http://lists.ettus.co=
m/pipermail/usrp-users_lists.ettus.com/2017-August/053986.html</a></div><di=
v dir=3D"ltr">[2]=C2=A0<a href=3D"http://lists.ettus.com/pipermail/usrp-use=
rs_lists.ettus.com/2014-January/036210.html">http://lists.ettus.com/piperma=
il/usrp-users_lists.ettus.com/2014-January/036210.html</a></div><div dir=3D=
"ltr">[3]=C2=A0<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists=
.ettus.com/2014-November/039561.html">http://lists.ettus.com/pipermail/usrp=
-users_lists.ettus.com/2014-November/039561.html</a></div></div></div></div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Oct 17, 2019 at 3:46 PM Carlos Bocanegra via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div><div>Hello community,</div><div><br></div><div>I am =
working on a=20
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

--000000000000390c5f0595325755--


--===============1592084431135694926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1592084431135694926==--

