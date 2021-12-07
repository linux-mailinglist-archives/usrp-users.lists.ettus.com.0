Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AEE46C152
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 18:05:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9EB1384554
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 12:05:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GsDYf376";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B26938448F
	for <usrp-users@lists.ettus.com>; Tue,  7 Dec 2021 12:04:55 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id v64so42667080ybi.5
        for <usrp-users@lists.ettus.com>; Tue, 07 Dec 2021 09:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ErL8JrD1aWUlrYCFdu2njjR+n2cOVp58xfFRgImoq40=;
        b=GsDYf376cDLJM0UL6nG495aMhW5QoHFkuk6cqLTBSXRyRDMiBo+QftiH0rp3bhhHaR
         LfXFt7v621xDjq0gmR4s4IfD3dffj0N4VJoyZxA3ffgazNn6g3At8m9vYJ9LH8StH7Q7
         1Fc+ew0+WY+pwJSgRYVk1Wl8QT+NK+rl/Yf42fzJadLAiFLoccTjX5Lme1Ivz0zyllg5
         uLgjxSv0kz6CjMDhAf3sVV2elI/QzCHTSTQxC9MAZDH+7zoegExptEiBpUYTbLSNsB4B
         FRmlHzDQqJJ00mC7X62J1rFydnlofno4viXQ14ZUnKrSHGxZQ4O3nszddyfwnvNoE2oQ
         SW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ErL8JrD1aWUlrYCFdu2njjR+n2cOVp58xfFRgImoq40=;
        b=3+bfjF/LmpWfroMXJ7GELtwM6TVElROCHhvoOK0fQNkx60v/l+FaafyZGnkcefaCyN
         e67Zr/CxlWR+OIycRRNQH1kNXfSWJpz5fgJrlMY0NsYzBTfKpxbxKB6eJL7QTg/iF+g4
         aZlQslM0dV+w9GXNCGMerZaIzJMtYGL6V0DeqmKdrMyReeGkAVmQdfg7Hm7Eo8N+hi26
         HbJYMS+rIorwcK47q01Z0LmHAWeQVQeqVz1hbh/OmmgYmPGJlCrojfiiqtyQKr4vIZpk
         IAt36wisAxwwkL57EYXdqadcYfwlG63GtGSYp5W64wyF7gto+ESoZi0urq+eX8ZPNiTX
         PF2g==
X-Gm-Message-State: AOAM531irUtv/dc7kZB4af6i4E4HHCpuz3qJiKRIfjLW4pECY+4FkzSP
	8Jmvon3V9li+sT3tG+hR7v+P/cyMfizhbemHZ3YNTH1atOw=
X-Google-Smtp-Source: ABdhPJwr3/jzXCecJOAfauc+H8ItKaYcgJdlrmRDdC61fBA/xSMovmYQ81j5I7bvQ+fxTnFOp0mHPWeovBbTREv3O8g=
X-Received: by 2002:a25:f403:: with SMTP id q3mr51811781ybd.606.1638896694394;
 Tue, 07 Dec 2021 09:04:54 -0800 (PST)
MIME-Version: 1.0
References: <c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs@lists.ettus.com>
In-Reply-To: <c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 7 Dec 2021 12:04:43 -0500
Message-ID: <CAB__hTQQD2iSn=Gvo0xkmTH4doDVq2WTS5Uu93VmQWj_18Pavw@mail.gmail.com>
To: enrico.petraglio@heig-vd.ch
Message-ID-Hash: BD4O62J5DZ22BB6UW5P77MHFRBCMPXLY
X-Message-ID-Hash: BD4O62J5DZ22BB6UW5P77MHFRBCMPXLY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT block integration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BD4O62J5DZ22BB6UW5P77MHFRBCMPXLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7907701017421464349=="

--===============7907701017421464349==
Content-Type: multipart/alternative; boundary="0000000000004b394805d2915f40"

--0000000000004b394805d2915f40
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You could try to use issue_stream_cmd directly from the DDC or the Radio
rather than from the rx_streamer. If this test is successful (i.e., the
data stream passes thru your gain block to UHD), then this implies that the
"action propagation" is not working as expected. Here is how it should
work.... When you call rx_streamer->issue_stream_cmd(), this action should
be propagated to your gain block (assuming this is the adjacent upstream
block), then the DDC block, and finally the Radio block (which will start
the streaming).  If something is broken in the action propagation of your
gain block, the action will never reach the Radio and thus will never start
streaming.

On a likely related issue, it seems that your gain block is showing up as
"Block#0" which means that UHD does not find your custom block controller.
I think it is likely that this is causing the issue, but I don't know for
sure.  If you have a custom block controller you may need to make sure your
OOT lib is copied to the same folder as the installed UHD lib (or other
method so that your OOT lib is found).
Rob

On Mon, Dec 6, 2021 at 3:56 AM <enrico.petraglio@heig-vd.ch> wrote:

> I'm currently attempting to realize the RFNoC example described in the
> "Out-of-tree Modules" section of this web page.
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
> I've followed step by step the instructions until the make
> x310_rfnoc_image_core command. Since I'm targeting a N320 device I had to
> do some modifications inside the rfnoc-demo directory.
> Below the additional step I've performed
>
> I've created a n320_rfnoc_core.yml inside rfnoc-demo/icores
>
>
> This file was created from the original n320_rfnoc_core.yml located in
> uhd/fpga/usrp3/top/n3xx/ with the following modifications:
>
> -- creation of a new endpoint
> ep4: # Stream endpoint name
> ctrl: False # Endpoint passes control traffic
> data: True # Endpoint passes data traffic
> buff_size: 32768 # Ingress buffer size for data
>
> -- definition of the gain block:
> gain0:
> block_desc: =E2=80=99gain.yml=E2=80=99
>
> -- connection between the block and the endpoint
>
>    -
>
>    { srcblk: ep4, srcport: out0, dstblk: gain0, dstport: in }
>    -
>
>    { srcblk: gain0, srcport: out, dstblk: ep4, dstport: in0 }
>
> Then I've modified the CMakeLists.txt inside rfnoc-demo by
> replacing all the occurrences of X310 with N320.
> I've deleted the content of the rfnoc-demo/build directory
> and I've performed the following commands :
>
> cd ~/rfnoc-demo/build
> cmake -DUHD_FPGA_DIR=3D<UHD4.1 repo>/fpga/ ../
> make n320_rfnoc_image_core
>
> I've loaded the generated bitstream inside the n320. At this point
> I've executed the following Python script :
>
> import sys
> import re
> import uhd
> import numpy as np
> import matplotlib
> from matplotlib import pyplot
>
> graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.0.1")
> for edge in graph.enumerate_static_connections():
> print(edge.to_string())
> radio_noc_block =3D graph.get_block("0/Radio#0")
> radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)
>
> pkt_length =3D 4
>
> radio_noc_block =3D graph.get_block("0/Radio#0")
> radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)
> radio_block.set_properties(f'spp=3D{pkt_length}', 0)
>
> sa =3D uhd.usrp.StreamArgs("fc32", "sc16")
> sa.args =3D "spp=3D" + str(pkt_length)
>
> ddc_block =3D uhd.rfnoc.DdcBlockControl(graph.get_block("0/DDC#0"))
>
> rx_streamer =3D graph.create_rx_streamer(1, sa)
>
> graph.connect("0/Radio#0", 0, "0/DDC#0", 0, False)
> print("Graph with gain_block \n")
> graph.connect("0/DDC#0", 0, "0/Block#0", 0, False)
> graph.connect("0/Block#0", 0, rx_streamer, 0)
> graph.commit()
>
> radio_block.set_rx_frequency(2500e6, 0)
> radio_block.set_rx_gain(40, 0)
> radio_block.set_rx_antenna("RX2", 0)
> radio_block.set_rate(125e6)
>
> ddc_block.set_input_rate(125e6, 0)
> ddc_block.set_output_rate(5e6, 0)
>
> num_samples =3D int(ddc_block.get_output_rate(0) * 3)
> radio_data =3D np.zeros((1, num_samples), dtype=3D"complex64")
>
> stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)
> stream_cmd.num_samps =3D num_samples
> stream_cmd.stream_now =3D True
>
> rx_streamer.issue_stream_cmd(stream_cmd)
> num_samples_received =3D rx_streamer.recv(radio_data,
> uhd.types.RXMetadata(), 15.0)
> print("Nb of samples received =3D " + str(num_samples_received))
>
> matplotlib.pyplot.plot(range(np.size(radio_data[0])),
> np.real(radio_data[0]), "g", range(np.size(radio_data[0])),
> np.imag(radio_data[0]), "r")
> pyplot.show()
>
> Below you can see the output of this script :
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.1.0.4-118-g06a9ded7
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.0.1,type=3Dn3xx,product=3Dn320,serial=3D31A5C61,fpga=
=3DHG,claimed=3DFalse,addr=3D192.168.0.1
> [INFO] [MPM.PeriphManager] init() called with device args fpga=3DHG,mgmt_=
addr=3D192.168.0.1,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'.
> [INFO] [MPM.Rhodium-0] init() called with args
> fpga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,clock_source=3Dinternal,=
time_source=3Dinternal'
> [INFO] [MPM.Rhodium-1] init() called with args
> `fpga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,clock_source=3Dinternal=
,time_source=3Dinternal'
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16,
> 0xffff
> 0/SEP#0:0=3D=3D>0/DUC#0:0
> 0/DUC#0:0=3D=3D>0/Radio#0:0
> 0/Radio#0:0=3D=3D>0/DDC#0:0
> 0/DDC#0:0=3D=3D>0/SEP#0:0
> 0/SEP#1:0=3D=3D>0/DUC#1:0
> 0/DUC#1:0=3D=3D>0/Radio#1:0
> 0/Radio#1:0=3D=3D>0/DDC#1:0
> 0/DDC#1:0=3D=3D>0/SEP#1:0
> 0/SEP#2:0=3D=3D>0/Replay#0:0
> 0/Replay#0:0=3D=3D>0/SEP#2:0
> 0/SEP#3:0=3D=3D>0/Replay#0:1
> 0/Replay#0:1=3D=3D>0/SEP#3:0
> 0/SEP#4:0=3D=3D>0/Block#0:0
> 0/Block#0:0=3D=3D>0/SEP#4:0
> Graph with gain_block
>
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2500000 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
> [WARNING] [0/Radio#0] Coercing requested sample rate from 125 MHz to 200
> MHz, the closest possible rate.
> [INFO] [MPM.Rhodium-0] init() called with args
> `fpga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,clock_source=3Dinternal=
,time_source=3Dinternal,master_clock_rate=3D200000000.0,ref_clk_freq=3D2500=
0000.0'
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> Nb of samples received =3D 0
>
> As you can see the static connections inside the FPGA look good, but the
> gain block seems to prevent any samples to reach the Rx_streamer. By
> directly connecting the
> DDC to the RX_streamer the N320 starts to produce data. My guess is, ther=
e
> might be something I've missed out on the Python script, but I cannot fin=
d
> any information
> about this part of the RFNoC process.
>
> I have also posted this issue on the UHD github web page
>
> https://github.com/EttusResearch/uhd/issues/538
>
> Unfortunately, I have not yet received any answer. I'm running out of
> ideas, any input is welcome.
> Thanks in advance!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004b394805d2915f40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You could try to use issue_stream_cmd directly from t=
he DDC or the Radio rather than from the rx_streamer. If this test is succe=
ssful (i.e., the data stream passes=C2=A0thru your gain block to UHD), then=
 this implies that the &quot;action propagation&quot; is not working as exp=
ected. Here is how it should work.... When you call rx_streamer-&gt;issue_s=
tream_cmd(), this action should be propagated to your gain block (assuming =
this is the adjacent upstream block), then the DDC block, and finally the R=
adio block (which will start the streaming).=C2=A0 If something is broken i=
n the action propagation of your gain block, the action will never reach th=
e Radio and thus will never start streaming.</div><div><br></div><div>On a =
likely related issue, it seems that your gain block is showing up as &quot;=
Block#0&quot; which means that UHD does not find your custom block controll=
er.=C2=A0 I think it is likely that this is causing the issue, but I don&#3=
9;t know for sure.=C2=A0 If you have a custom block controller you may need=
 to make sure your OOT lib is copied to the same folder as the installed UH=
D lib (or other method so that your OOT lib is found).</div><div>Rob</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Dec 6, 2021 at 3:56 AM &lt;<a href=3D"mailto:enrico.petraglio@heig-vd.ch">=
enrico.petraglio@heig-vd.ch</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><p>I&#39;m currently attempting to realize the R=
FNoC example described in the &quot;Out-of-tree Modules&quot; section of th=
is web page.<br><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_=
in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFN=
oC_in_UHD_4.0</a></p><p>I&#39;ve followed step by step the instructions unt=
il the make x310_rfnoc_image_core command. Since I&#39;m targeting a N320 d=
evice I had to do some modifications inside the rfnoc-demo directory.<br>Be=
low the additional step I&#39;ve performed</p><p>I&#39;ve created a n320_rf=
noc_core.yml inside rfnoc-demo/icores</p><p><br>This file was created from =
the original n320_rfnoc_core.yml located in<br>uhd/fpga/usrp3/top/n3xx/ wit=
h the following modifications:</p><p>-- creation of a new endpoint<br>ep4: =
# Stream endpoint name<br>ctrl: False # Endpoint passes control traffic<br>=
data: True # Endpoint passes data traffic<br>buff_size: 32768 # Ingress buf=
fer size for data</p><p>-- definition of the gain block:<br>gain0:<br>block=
_desc: =E2=80=99gain.yml=E2=80=99</p><p>-- connection between the block and=
 the endpoint</p><ul><li><p>{ srcblk: ep4, srcport: out0, dstblk: gain0, ds=
tport: in }</p></li><li><p>{ srcblk: gain0, srcport: out, dstblk: ep4, dstp=
ort: in0 }</p></li></ul><p>Then I&#39;ve modified the CMakeLists.txt inside=
 rfnoc-demo by<br>replacing all the occurrences of X310 with N320.<br>I&#39=
;ve deleted the content of the rfnoc-demo/build directory<br>and I&#39;ve p=
erformed the following commands :</p><p>cd ~/rfnoc-demo/build<br>cmake -DUH=
D_FPGA_DIR=3D&lt;UHD4.1 repo&gt;/fpga/ ../<br>make n320_rfnoc_image_core</p=
><p>I&#39;ve loaded the generated bitstream inside the n320. At this point<=
br>I&#39;ve executed the following Python script :</p><p>import sys<br>impo=
rt re<br>import uhd<br>import numpy as np<br>import matplotlib<br>from matp=
lotlib import pyplot</p><p>graph =3D uhd.rfnoc.RfnocGraph(&quot;addr=3D192.=
168.0.1&quot;)<br>for edge in graph.enumerate_static_connections():<br>prin=
t(edge.to_string())<br>radio_noc_block =3D graph.get_block(&quot;0/Radio#0&=
quot;)<br>radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)</p><p>pkt=
_length =3D 4</p><p>radio_noc_block =3D graph.get_block(&quot;0/Radio#0&quo=
t;)<br>radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)<br>radio_blo=
ck.set_properties(f&#39;spp=3D{pkt_length}&#39;, 0)</p><p>sa =3D uhd.usrp.S=
treamArgs(&quot;fc32&quot;, &quot;sc16&quot;)<br>sa.args =3D &quot;spp=3D&q=
uot; + str(pkt_length)</p><p>ddc_block =3D uhd.rfnoc.DdcBlockControl(graph.=
get_block(&quot;0/DDC#0&quot;))</p><p>rx_streamer =3D graph.create_rx_strea=
mer(1, sa)</p><p>graph.connect(&quot;0/Radio#0&quot;, 0, &quot;0/DDC#0&quot=
;, 0, False)<br>print(&quot;Graph with gain_block \n&quot;)<br>graph.connec=
t(&quot;0/DDC#0&quot;, 0, &quot;0/Block#0&quot;, 0, False)<br>graph.connect=
(&quot;0/Block#0&quot;, 0, rx_streamer, 0)<br>graph.commit()</p><p>radio_bl=
ock.set_rx_frequency(2500e6, 0)<br>radio_block.set_rx_gain(40, 0)<br>radio_=
block.set_rx_antenna(&quot;RX2&quot;, 0)<br>radio_block.set_rate(125e6)</p>=
<p>ddc_block.set_input_rate(125e6, 0)<br>ddc_block.set_output_rate(5e6, 0)<=
/p><p>num_samples =3D int(ddc_block.get_output_rate(0) * 3)<br>radio_data =
=3D np.zeros((1, num_samples), dtype=3D&quot;complex64&quot;)</p><p>stream_=
cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)<br>stream_cmd.nu=
m_samps =3D num_samples<br>stream_cmd.stream_now =3D True</p><p>rx_streamer=
.issue_stream_cmd(stream_cmd)<br>num_samples_received =3D rx_streamer.recv(=
radio_data, uhd.types.RXMetadata(), 15.0)<br>print(&quot;Nb of samples rece=
ived =3D &quot; + str(num_samples_received))</p><p>matplotlib.pyplot.plot(r=
ange(np.size(radio_data[0])), np.real(radio_data[0]), &quot;g&quot;, range(=
np.size(radio_data[0])), np.imag(radio_data[0]), &quot;r&quot;)<br>pyplot.s=
how()</p><p>Below you can see the output of this script :</p><p>[INFO] [UHD=
] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.4-118-g06a9ded7<br>=
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.0.1,type=3Dn3xx,product=3Dn320,serial=3D31A5C61,fpga=3DHG,claimed=3D=
False,addr=3D192.168.0.1<br>[INFO] [MPM.PeriphManager] init() called with d=
evice args=C2=A0<code>fpga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,cloc=
k_source=3Dinternal,time_source=3Dinternal&#39;. [INFO] [MPM.Rhodium-0] ini=
t() called with args=C2=A0</code>fpga=3DHG,mgmt_addr=3D192.168.0.1,product=
=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;<br>[INFO] [MPM.=
Rhodium-1] init() called with args `fpga=3DHG,mgmt_addr=3D192.168.0.1,produ=
ct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal&#39;<br>[INFO] [MP=
M.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>[INFO] [MPM.Rhodi=
um-0.DAC37J82] DAC PLL Locked!<br>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Loc=
ked!<br>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trai=
ning Complete<br>[WARNING] [UDP] The send buffer could not be resized suffi=
ciently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size:=
 1048576 bytes.<br>See the transport application notes on buffer resizing.<=
br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [RFN=
OC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0xffff<br>0/SEP#=
0:0=3D=3D&gt;0/DUC#0:0<br>0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>0/Radio#0:0=3D=
=3D&gt;0/DDC#0:0<br>0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>0/SEP#1:0=3D=3D&gt;0/DU=
C#1:0<br>0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>0/Radio#1:0=3D=3D&gt;0/DDC#1:0<b=
r>0/DDC#1:0=3D=3D&gt;0/SEP#1:0<br>0/SEP#2:0=3D=3D&gt;0/Replay#0:0<br>0/Repl=
ay#0:0=3D=3D&gt;0/SEP#2:0<br>0/SEP#3:0=3D=3D&gt;0/Replay#0:1<br>0/Replay#0:=
1=3D=3D&gt;0/SEP#3:0<br>0/SEP#4:0=3D=3D&gt;0/Block#0:0<br>0/Block#0:0=3D=3D=
&gt;0/SEP#4:0<br>Graph with gain_block</p><p>[WARNING] [UDP] The send buffe=
r could not be resized sufficiently.<br>Target sock buff size: 2500000 byte=
s.<br>Actual sock buff size: 1048576 bytes.<br>See the transport applicatio=
n notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=
=3D2500000<br>[WARNING] [0/Radio#0] Coercing requested sample rate from 125=
 MHz to 200 MHz, the closest possible rate.<br>[INFO] [MPM.Rhodium-0] init(=
) called with args `fpga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,clock_=
source=3Dinternal,time_source=3Dinternal,master_clock_rate=3D200000000.0,re=
f_clk_freq=3D25000000.0&#39;<br>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK in=
itialized and locked!<br>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!<br=
>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>[INFO] [MPM.Rhodium-0.ini=
t] JESD204B Link Initialization &amp; Training Complete<br>Nb of samples re=
ceived =3D 0</p><p>As you can see the static connections inside the FPGA lo=
ok good, but the gain block seems to prevent any samples to reach the Rx_st=
reamer. By directly connecting the<br>DDC to the RX_streamer the N320 start=
s to produce data. My guess is, there might be something I&#39;ve missed ou=
t on the Python script, but I cannot find any information<br>about this par=
t of the RFNoC process. </p><p>I have also posted this issue on the UHD git=
hub web page</p><p><a href=3D"https://github.com/EttusResearch/uhd/issues/5=
38" target=3D"_blank">https://github.com/EttusResearch/uhd/issues/538</a></=
p><p>Unfortunately, I have not yet received any answer. I&#39;m running out=
 of ideas, any input is welcome.<br>Thanks in advance!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004b394805d2915f40--

--===============7907701017421464349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7907701017421464349==--
