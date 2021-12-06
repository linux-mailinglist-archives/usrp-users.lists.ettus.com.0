Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 444284691D9
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 09:56:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5A71384BCD
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 03:56:57 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5239384678
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 03:55:58 -0500 (EST)
Date: Mon, 6 Dec 2021 08:55:58 +0000
To: usrp-users@lists.ettus.com
From: enrico.petraglio@heig-vd.ch
Message-ID: <c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AWUSLA6T73OILNG6IULYR7SJAHHU5ZYQ
X-Message-ID-Hash: AWUSLA6T73OILNG6IULYR7SJAHHU5ZYQ
X-MailFrom: enrico.petraglio@heig-vd.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC OOT block integration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AWUSLA6T73OILNG6IULYR7SJAHHU5ZYQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6213673534325839342=="

This is a multi-part message in MIME format.

--===============6213673534325839342==
Content-Type: multipart/alternative;
 boundary="b1_c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm currently attempting to realize the RFNoC example described in the "O=
ut-of-tree Modules" section of this web page.\
<https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>

I've followed step by step the instructions until the make x310_rfnoc_ima=
ge_core command. Since I'm targeting a N320 device I had to do some modif=
ications inside the rfnoc-demo directory.\
Below the additional step I've performed

I've created a n320_rfnoc_core.yml inside rfnoc-demo/icores

\
This file was created from the original n320_rfnoc_core.yml located in\
uhd/fpga/usrp3/top/n3xx/ with the following modifications:

\-- creation of a new endpoint\
ep4: # Stream endpoint name\
ctrl: False # Endpoint passes control traffic\
data: True # Endpoint passes data traffic\
buff_size: 32768 # Ingress buffer size for data

\-- definition of the gain block:\
gain0:\
block_desc: =E2=80=99gain.yml=E2=80=99

\-- connection between the block and the endpoint

* { srcblk: ep4, srcport: out0, dstblk: gain0, dstport: in }

* { srcblk: gain0, srcport: out, dstblk: ep4, dstport: in0 }

Then I've modified the CMakeLists.txt inside rfnoc-demo by\
replacing all the occurrences of X310 with N320.\
I've deleted the content of the rfnoc-demo/build directory\
and I've performed the following commands :

cd \~/rfnoc-demo/build\
cmake -DUHD_FPGA_DIR=3D<UHD4.1 repo>/fpga/ ../\
make n320_rfnoc_image_core

I've loaded the generated bitstream inside the n320. At this point\
I've executed the following Python script :

import sys\
import re\
import uhd\
import numpy as np\
import matplotlib\
from matplotlib import pyplot

graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.0.1")\
for edge in graph.enumerate_static_connections():\
print(edge.to_string())\
radio_noc_block =3D graph.get_block("0/Radio#0")\
radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)

pkt_length =3D 4

radio_noc_block =3D graph.get_block("0/Radio#0")\
radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)\
radio_block.set_properties(f'spp=3D{pkt_length}', 0)

sa =3D uhd.usrp.StreamArgs("fc32", "sc16")\
sa.args =3D "spp=3D" + str(pkt_length)

ddc_block =3D uhd.rfnoc.DdcBlockControl(graph.get_block("0/DDC#0"))

rx_streamer =3D graph.create_rx_streamer(1, sa)

graph.connect("0/Radio#0", 0, "0/DDC#0", 0, False)\
print("Graph with gain_block \\n")\
graph.connect("0/DDC#0", 0, "0/Block#0", 0, False)\
graph.connect("0/Block#0", 0, rx_streamer, 0)\
graph.commit()

radio_block.set_rx_frequency(2500e6, 0)\
radio_block.set_rx_gain(40, 0)\
radio_block.set_rx_antenna("RX2", 0)\
radio_block.set_rate(125e6)

ddc_block.set_input_rate(125e6, 0)\
ddc_block.set_output_rate(5e6, 0)

num_samples =3D int(ddc_block.get_output_rate(0) \* 3)\
radio_data =3D np.zeros((1, num_samples), dtype=3D"complex64")

stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)\
stream_cmd.num_samps =3D num_samples\
stream_cmd.stream_now =3D True

rx_streamer.issue_stream_cmd(stream_cmd)\
num_samples_received =3D rx_streamer.recv(radio_data, uhd.types.RXMetadat=
a(), 15.0)\
print("Nb of samples received =3D " + str(num_samples_received))

matplotlib.pyplot.plot(range(np.size(radio_data\[0\])), np.real(radio_dat=
a\[0\]), "g", range(np.size(radio_data\[0\])), np.imag(radio_data\[0\]), =
"r")\
pyplot.show()

Below you can see the output of this script :

\[INFO\] \[UHD\] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.4-=
118-g06a9ded7\
\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.0.1,type=3Dn3xx,product=3Dn320,serial=3D31A5C61,fpga=3DHG,cl=
aimed=3DFalse,addr=3D192.168.0.1\
\[INFO\] \[MPM.PeriphManager\] init() called with device args=C2=A0`fpga=3D=
HG,mgmt_addr=3D192.168.0.1,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal'. [INFO] [MPM.Rhodium-0] init() called with args=C2=A0`fp=
ga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,clock_source=3Dinternal,ti=
me_source=3Dinternal'\
\[INFO\] \[MPM.Rhodium-1\] init() called with args \`fpga=3DHG,mgmt_addr=3D=
192.168.0.1,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal=
'\
\[INFO\] \[MPM.Rhodium-0.init.LMK04828\] LMK initialized and locked!\
\[INFO\] \[MPM.Rhodium-0.DAC37J82\] DAC PLL Locked!\
\[INFO\] \[MPM.Rhodium-0.AD9695\] ADC PLL Locked!\
\[INFO\] \[MPM.Rhodium-0.init\] JESD204B Link Initialization & Training C=
omplete\
\[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.\
Target sock buff size: 2500000 bytes.\
Actual sock buff size: 1048576 bytes.\
See the transport application notes on buffer resizing.\
Please run: sudo sysctl -w net.core.wmem_max=3D2500000\
\[WARNING\] \[RFNOC::BLOCK_FACTORY\] Could not find block with Noc-ID 0xb=
16, 0xffff\
0/SEP#0:0=3D=3D>0/DUC#0:0\
0/DUC#0:0=3D=3D>0/Radio#0:0\
0/Radio#0:0=3D=3D>0/DDC#0:0\
0/DDC#0:0=3D=3D>0/SEP#0:0\
0/SEP#1:0=3D=3D>0/DUC#1:0\
0/DUC#1:0=3D=3D>0/Radio#1:0\
0/Radio#1:0=3D=3D>0/DDC#1:0\
0/DDC#1:0=3D=3D>0/SEP#1:0\
0/SEP#2:0=3D=3D>0/Replay#0:0\
0/Replay#0:0=3D=3D>0/SEP#2:0\
0/SEP#3:0=3D=3D>0/Replay#0:1\
0/Replay#0:1=3D=3D>0/SEP#3:0\
0/SEP#4:0=3D=3D>0/Block#0:0\
0/Block#0:0=3D=3D>0/SEP#4:0\
Graph with gain_block

\[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.\
Target sock buff size: 2500000 bytes.\
Actual sock buff size: 1048576 bytes.\
See the transport application notes on buffer resizing.\
Please run: sudo sysctl -w net.core.wmem_max=3D2500000\
\[WARNING\] \[0/Radio#0\] Coercing requested sample rate from 125 MHz to =
200 MHz, the closest possible rate.\
\[INFO\] \[MPM.Rhodium-0\] init() called with args \`fpga=3DHG,mgmt_addr=3D=
192.168.0.1,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal=
,master_clock_rate=3D200000000.0,ref_clk_freq=3D25000000.0'\
\[INFO\] \[MPM.Rhodium-0.init.LMK04828\] LMK initialized and locked!\
\[INFO\] \[MPM.Rhodium-0.DAC37J82\] DAC PLL Locked!\
\[INFO\] \[MPM.Rhodium-0.AD9695\] ADC PLL Locked!\
\[INFO\] \[MPM.Rhodium-0.init\] JESD204B Link Initialization & Training C=
omplete\
Nb of samples received =3D 0

As you can see the static connections inside the FPGA look good, but the =
gain block seems to prevent any samples to reach the Rx_streamer. By dire=
ctly connecting the\
DDC to the RX_streamer the N320 starts to produce data. My guess is, ther=
e might be something I've missed out on the Python script, but I cannot f=
ind any information\
about this part of the RFNoC process.=20

I have also posted this issue on the UHD github web page

https://github.com/EttusResearch/uhd/issues/538

Unfortunately, I have not yet received any answer. I'm running out of ide=
as, any input is welcome.\
Thanks in advance!

--b1_c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I'm currently attempting to realize the RFNoC example described in the "=
Out-of-tree Modules" section of this web page.<br><a href=3D"https://kb.ett=
us.com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettus.com/Getting_=
Started_with_RFNoC_in_UHD_4.0</a></p><p>I've followed step by step the inst=
ructions until the make x310_rfnoc_image_core command. Since I'm targeting =
a N320 device I had to do some modifications inside the rfnoc-demo director=
y.<br>Below the additional step I've performed</p><p>I've created a n320_rf=
noc_core.yml inside rfnoc-demo/icores</p><p><br>This file was created from =
the original n320_rfnoc_core.yml located in<br>uhd/fpga/usrp3/top/n3xx/ wit=
h the following modifications:</p><p>-- creation of a new endpoint<br>ep4: =
# Stream endpoint name<br>ctrl: False # Endpoint passes control traffic<br>=
data: True # Endpoint passes data traffic<br>buff_size: 32768 # Ingress buf=
fer size for data</p><p>-- definition of the gain block:<br>gain0:<br>block=
_desc: =E2=80=99gain.yml=E2=80=99</p><p>-- connection between the block and=
 the endpoint</p><ul><li><p>{ srcblk: ep4, srcport: out0, dstblk: gain0, ds=
tport: in }</p></li><li><p>{ srcblk: gain0, srcport: out, dstblk: ep4, dstp=
ort: in0 }</p></li></ul><p>Then I've modified the CMakeLists.txt inside rfn=
oc-demo by<br>replacing all the occurrences of X310 with N320.<br>I've dele=
ted the content of the rfnoc-demo/build directory<br>and I've performed the=
 following commands :</p><p>cd ~/rfnoc-demo/build<br>cmake -DUHD_FPGA_DIR=
=3D&lt;UHD4.1 repo&gt;/fpga/ ../<br>make n320_rfnoc_image_core</p><p>I've l=
oaded the generated bitstream inside the n320. At this point<br>I've execut=
ed the following Python script :</p><p>import sys<br>import re<br>import uh=
d<br>import numpy as np<br>import matplotlib<br>from matplotlib import pypl=
ot</p><p>graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.0.1")<br>for edge i=
n graph.enumerate_static_connections():<br>print(edge.to_string())<br>radio=
_noc_block =3D graph.get_block("0/Radio#0")<br>radio_block =3D uhd.rfnoc.Ra=
dioControl(radio_noc_block)</p><p>pkt_length =3D 4</p><p>radio_noc_block =
=3D graph.get_block("0/Radio#0")<br>radio_block =3D uhd.rfnoc.RadioControl(=
radio_noc_block)<br>radio_block.set_properties(f'spp=3D{pkt_length}', 0)</p=
><p>sa =3D uhd.usrp.StreamArgs("fc32", "sc16")<br>sa.args =3D "spp=3D" + st=
r(pkt_length)</p><p>ddc_block =3D uhd.rfnoc.DdcBlockControl(graph.get_block=
("0/DDC#0"))</p><p>rx_streamer =3D graph.create_rx_streamer(1, sa)</p><p>gr=
aph.connect("0/Radio#0", 0, "0/DDC#0", 0, False)<br>print("Graph with gain_=
block \n")<br>graph.connect("0/DDC#0", 0, "0/Block#0", 0, False)<br>graph.c=
onnect("0/Block#0", 0, rx_streamer, 0)<br>graph.commit()</p><p>radio_block.=
set_rx_frequency(2500e6, 0)<br>radio_block.set_rx_gain(40, 0)<br>radio_bloc=
k.set_rx_antenna("RX2", 0)<br>radio_block.set_rate(125e6)</p><p>ddc_block.s=
et_input_rate(125e6, 0)<br>ddc_block.set_output_rate(5e6, 0)</p><p>num_samp=
les =3D int(ddc_block.get_output_rate(0) * 3)<br>radio_data =3D np.zeros((1=
, num_samples), dtype=3D"complex64")</p><p>stream_cmd =3D uhd.types.StreamC=
MD(uhd.types.StreamMode.num_done)<br>stream_cmd.num_samps =3D num_samples<b=
r>stream_cmd.stream_now =3D True</p><p>rx_streamer.issue_stream_cmd(stream_=
cmd)<br>num_samples_received =3D rx_streamer.recv(radio_data, uhd.types.RXM=
etadata(), 15.0)<br>print("Nb of samples received =3D " + str(num_samples_r=
eceived))</p><p>matplotlib.pyplot.plot(range(np.size(radio_data[0])), np.re=
al(radio_data[0]), "g", range(np.size(radio_data[0])), np.imag(radio_data[0=
]), "r")<br>pyplot.show()</p><p>Below you can see the output of this script=
 :</p><p>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0=
.4-118-g06a9ded7<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with=
 args: mgmt_addr=3D192.168.0.1,type=3Dn3xx,product=3Dn320,serial=3D31A5C61,=
fpga=3DHG,claimed=3DFalse,addr=3D192.168.0.1<br>[INFO] [MPM.PeriphManager] =
init() called with device args&nbsp;<code>fpga=3DHG,mgmt_addr=3D192.168.0.1=
,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'. [INFO] [MP=
M.Rhodium-0] init() called with args&nbsp;</code>fpga=3DHG,mgmt_addr=3D192.=
168.0.1,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'<br>[=
INFO] [MPM.Rhodium-1] init() called with args `fpga=3DHG,mgmt_addr=3D192.16=
8.0.1,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'<br>[IN=
FO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>[INFO] [MP=
M.Rhodium-0.DAC37J82] DAC PLL Locked!<br>[INFO] [MPM.Rhodium-0.AD9695] ADC =
PLL Locked!<br>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &am=
p; Training Complete<br>[WARNING] [UDP] The send buffer could not be resize=
d sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buf=
f size: 1048576 bytes.<br>See the transport application notes on buffer res=
izing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNIN=
G] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0xffff<br=
>0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>0/Radio#=
0:0=3D=3D&gt;0/DDC#0:0<br>0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>0/SEP#1:0=3D=3D&g=
t;0/DUC#1:0<br>0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>0/Radio#1:0=3D=3D&gt;0/DDC=
#1:0<br>0/DDC#1:0=3D=3D&gt;0/SEP#1:0<br>0/SEP#2:0=3D=3D&gt;0/Replay#0:0<br>=
0/Replay#0:0=3D=3D&gt;0/SEP#2:0<br>0/SEP#3:0=3D=3D&gt;0/Replay#0:1<br>0/Rep=
lay#0:1=3D=3D&gt;0/SEP#3:0<br>0/SEP#4:0=3D=3D&gt;0/Block#0:0<br>0/Block#0:0=
=3D=3D&gt;0/SEP#4:0<br>Graph with gain_block</p><p>[WARNING] [UDP] The send=
 buffer could not be resized sufficiently.<br>Target sock buff size: 250000=
0 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport appl=
ication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wm=
em_max=3D2500000<br>[WARNING] [0/Radio#0] Coercing requested sample rate fr=
om 125 MHz to 200 MHz, the closest possible rate.<br>[INFO] [MPM.Rhodium-0]=
 init() called with args `fpga=3DHG,mgmt_addr=3D192.168.0.1,product=3Dn320,=
clock_source=3Dinternal,time_source=3Dinternal,master_clock_rate=3D20000000=
0.0,ref_clk_freq=3D25000000.0'<br>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK =
initialized and locked!<br>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!<=
br>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>[INFO] [MPM.Rhodium-0.i=
nit] JESD204B Link Initialization &amp; Training Complete<br>Nb of samples =
received =3D 0</p><p>As you can see the static connections inside the FPGA =
look good, but the gain block seems to prevent any samples to reach the Rx_=
streamer. By directly connecting the<br>DDC to the RX_streamer the N320 sta=
rts to produce data. My guess is, there might be something I've missed out =
on the Python script, but I cannot find any information<br>about this part =
of the RFNoC process. </p><p>I have also posted this issue on the UHD githu=
b web page</p><p>https://github.com/EttusResearch/uhd/issues/538</p><p>Unfo=
rtunately, I have not yet received any answer. I'm running out of ideas, an=
y input is welcome.<br>Thanks in advance!</p>

--b1_c7WzM3wEax2339X9oKl0c6Qqo0Aivnspe9gf0Avs--

--===============6213673534325839342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6213673534325839342==--
