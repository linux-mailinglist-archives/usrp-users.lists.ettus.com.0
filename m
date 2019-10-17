Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7214FDB89F
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2019 22:47:04 +0200 (CEST)
Received: from [::1] (port=53842 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLCfk-0003F4-2X; Thu, 17 Oct 2019 16:47:00 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:44293)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <carlos.bocanegra.guerra@gmail.com>)
 id 1iLCfg-00038V-5N
 for usrp-users@lists.ettus.com; Thu, 17 Oct 2019 16:46:56 -0400
Received: by mail-qk1-f196.google.com with SMTP id u22so3185981qkk.11
 for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2019 13:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=YtYyV1cFL0t814peZ9NjDFMm8sX+XKfTzihr+1UZ7Xw=;
 b=Pmn7Ca0ScwDSdhgMsqLKoj0MmFpdoHOQrnk8k3udlSlU7Y2sbznl4ffXT32D7AoF/s
 +yhssUJFi7pxQiZ8742xYkBif2RKpBcg8pMZJaIc/y8jpQOvOWEC02ukvLr8F6Vo7Sw1
 jqwW0s5bXbSTgAhel6KYd8s8WI8hQ3s2pLgq0GUD2N1KmLyIthqRE9o2kXiRrYZs7Mek
 k9gdeasDOyQ3Bm19ofbOERlFVj++1lsov17u2Yeg2rQ7pUr6sskMyag8dt8eotUAaEn/
 s4iH/3HXMJDmqSKrU208TazjOd59ETkBduFuky75tTBFNd+CoW2bklPsFBIgcO6HOR4a
 +J0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=YtYyV1cFL0t814peZ9NjDFMm8sX+XKfTzihr+1UZ7Xw=;
 b=RoOtjzFITShkLYUf2sjsl1i/KJYIO9P7R49TUbZmSHxc3E+2Gmqogh+d3/Ab3C8yaU
 jYd31I9mPGlOzY8YYf+04OFan5K4hHRMkk3rIi+8VCwH5ZNO3iIk/tCejreblRMHNk7y
 0jPEeKfj+CV5eRGG/Ow8FPOqdojQEL8oZAoO6591e9V7TFfXQPOahz4oyv8OfpAKv0R+
 GDrpb/c4ODemyaaZFbROFUrw+eZX3W+BwWZQUSGmnTKkYo/0UQ2Z45noAmthwp9ASqXz
 8mS/ZMHV8Ma/lTj/WqZBIz8W0784StD+1fmmdY5YtQKGqor3n3r+iVX1LwHTSrMXCshg
 ttPg==
X-Gm-Message-State: APjAAAVj9rUFZ7R3erDeDmlDsTDKnH6XJMI8N4+LaE8XIZ5JRV5Ty/GU
 FHSqDrBTke+EEiylUrZAPHK6dNeBERi97QGl0aU3Vjqo
X-Google-Smtp-Source: APXvYqwy/M+XMLfeM08GbCymYC7PETo7FOFleCK5U1G4OBIxNruojU69cp02JlL5FoaZ+DU5rz+kvjGbRCG0hZI4BMI=
X-Received: by 2002:a05:620a:16cb:: with SMTP id
 a11mr5394944qkn.415.1571345175221; 
 Thu, 17 Oct 2019 13:46:15 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 17 Oct 2019 16:46:04 -0400
Message-ID: <CAEJWbW3=nf=LvD+mmVC2Vaz_J0wW6jrsxNskvq+B1eYkCh2P+Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] RX Misalignment on 6x1 MISO system using X310 and
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
Content-Type: multipart/mixed; boundary="===============1802721839299067535=="
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

--===============1802721839299067535==
Content-Type: multipart/alternative; boundary="000000000000fd19e80595214ebc"

--000000000000fd19e80595214ebc
Content-Type: text/plain; charset="UTF-8"

Hello community,

I am working on a gnuradio application that synchronously retrieves data
from a usrp_source, does some DSP on each of the streams and selects the
signal to send on a usrp_sink based on some metric computation. The sources
and sinks represent 3 USRP X310 devices, each with 2 UBX-160
daughterboards, and are synchronized using an Octoclock-G. Thus, creating a
6x1 MISO system. The USRP synchronization is done using the Python API, as
well as the flowgraph. The DSP blocks are coded in C++. The flowgraph would
be something like:

*self.connect((usrp_source, 0), my_dsp_0, (my_switch, 0))*
*self.connect((usrp_source, 1), my_dsp_1, (my_switch, 1))*
*self.connect((usrp_source, 2), my_dsp_2, (my_switch, 2))*
*self.connect((usrp_source, 3), my_dsp_3, (my_switch, 3))*
*self.connect(my_switch, another_dsp_0, (usrp_sink, 0))*

The application runs for a while until UHD outputs a message saying that
the poke32 has timed out on one of the USRP. After that, a misalignment
error on the receiver streams is shown and the green lights on the USRP go
off.

We are under the impression that the DSP blocks working independently may
be requesting samples from the source at different times, causing the
misalignment. Could this be the case? Is there an issue with my network
connection?

I have tried to get rid of the misalignment error by increasing the
threshold in the file
*{uhd_prefix}/host/lib/transport/super_recv_packet_handler.hpp, *through
the function *set_alignment_failure_threshold.* That got rid of the
misalignment error, but the failure coming from the poke function is still
there.

Interestingly, the exact same behavior arises when I just connect
file_sinks to the outputs from the usrp_source and a simple analog signal
to the usrp_sink. Below the flowgraph:

*self.connect((usrp_source, 0), file_sink_0)*
self.connect((usrp_source, 1), file_sink_1)
self.connect((usrp_source, 2), file_sink_2)
self.connect((usrp_source, 3), file_sink_3)
*self.connect(analog_sig_c, (usrp_sink, 0))*

I'd appreciate any help on this since I'm running out of ideas here.
Please, find below more details.

*The error:*

* [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
timed out*

* [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
communication failure #1EnvironmentError: IOError: x300 fw poke32 - reply
timed out*

* [ERROR] [X300] 192.168.100.2 <http://192.168.100.2>: x300 fw
communication failure #3EnvironmentError: IOError: x300 fw poke32 - reply
timed out*
 [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
loop will now exit, things may not work.EnvironmentError: IOError:
192.168.100.2: x300 fw communication failure #3



* [ERROR] [STREAMER] The receive packet handler failed to time-align
packets.1002 received packets were processed by the handler.However, a
timestamp match could not be determined.*

*Here are some details of my network configuration:*
- UHD built from source, tag v3.14.1.1.
- Gnuradio built from source, tag 3.7.13.5.
- X310 USRP, each equipped with two UBX-160 daughterboards.
- The communication is over Ethernet using the 1Gb port on the X310.
- Each USRP is connected to a dedicated NIC.
- The MTU is set to 1500 for the all interfaces.
- The USRPs are synchronized using an Octoclock-G and the parameters tuned
in the Python script. The procedure is similar to the one followed in
benchmark_rate (uhd), for the usrp_source and usrp_sink.
- The NIC ring buffers are set to the maximum for both TX and RX, to 4096,
using ethtool.
- The OS ring buffers are set as suggested bu Ettus, using the following
commands:



*>> sudo sysctl -w net.core.rmem_max=33554432   >> sudo sysctl -w
net.core.wmem_max=33554432   >> sudo sysctl -w
net.core.rmem_default=33554432   >> sudo sysctl -w
net.core.wmem_default=33554432*

Best,
Carlos

--000000000000fd19e80595214ebc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello community,</div><div><br></div><div>I am w=
orking on a=20
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

--000000000000fd19e80595214ebc--


--===============1802721839299067535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1802721839299067535==--

