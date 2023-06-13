Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D32172E881
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 18:28:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F440383688
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 12:28:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686673701; bh=WN/NxnUjI6L2aGRkIV4+PzKvfHpYqWHAeM4oK9ALtDg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RJCAiEACBF8vsXopm2dl3YR9A9wtKgVAts0TeLZ+CViilIerbYzbU3n1Gh6yf+a5l
	 OudqAM5Tbyh5++ckwdPlB0DHS1D/r6+zF/FUHCPbgspjrNJZMmZzuTWQW2xndURq4q
	 r4FLBaDb3pPvg356v6JUFZDeqWU0uI0CLqlB2SVFgntVtTWsYYEUztgfDeHJcb7kNB
	 iygDzP9dDF0f9ay+6sNIqPhqTtHhUk6Q8/JSld2uXUZml5Um5g5bPsCOHhLTu5O7k1
	 VduD9QN3AFjzTdkDq4XXRIrIFnHyyjepq9ucWEXmVTWCOk0fPnsEAdDbFtbWgGRJRj
	 3ZTUCFp25TjGg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C37E3830B5
	for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 12:27:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686673676; bh=xxdbsz1ruK0xjzd+w5dr7dvmVRFt6znL+hJxBuHlyUo=;
	h=Date:To:From:Subject:From;
	b=TDCkhqnK92XhwDRh/VQVcCG2fkuwZayHoAu1UvTpHWowPOIT9VVQ9FkLjPSfhzGsi
	 SDVDjJ19Ej9jdej14QTwU/sMbHldZ2VZZnnQ3uGZasU+r4YqbC9OXEK57hX9aVErBg
	 +maGOqWfi/U+J+BkAlFapocfiYRRMSIve2qkulr1uo7q+lkr8O+V9vMjZi3zA0Wj0B
	 TPN1kPVyK27TfJcpvaupzTLuxj+c0/EqzME4S4s4sp3au7Zxo3neXvmIraQ5SlR0fx
	 9rgsof9E1hn6Ojw4vDhARFFYla3J7X99gLuP2xh0k3GLoqhkbWByH9pyTY8eb7Sidm
	 QcFjot2+KLMAA==
Date: Tue, 13 Jun 2023 16:27:56 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <ARO3YO41degwgjI4kM60y5Q2EYQlxBP3spd0vX3bwg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: PFFMAKJ2YHQTHL4JSPZ4NGXTDGWG5XVO
X-Message-ID-Hash: PFFMAKJ2YHQTHL4JSPZ4NGXTDGWG5XVO
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Custom images with X410_400
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PFFMAKJ2YHQTHL4JSPZ4NGXTDGWG5XVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4277533494659372574=="

This is a multi-part message in MIME format.

--===============4277533494659372574==
Content-Type: multipart/alternative;
 boundary="b1_ARO3YO41degwgjI4kM60y5Q2EYQlxBP3spd0vX3bwg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ARO3YO41degwgjI4kM60y5Q2EYQlxBP3spd0vX3bwg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am looking to increase my custom image from a sampling rate of 250 to 5=
00 MS/S. I am looking to get some clarification on a few things.

Looking through the verilog, it appears both the 200 and 400 images have =
the same master clock rate of 250 MHz, but with the 400 image there are t=
wice as many samples per clock(SPC). Furthermore, it looks like the 200 i=
mage is almost identical to the 400 image, but it uses two extra modules =
(rf_down_rto2 and rf_up_2to4) to handle the wider buses.

So, it seems like the upgrading my image is pretty trivial.. in the yml f=
ile, I need to upgrade my chdr_width from 64 to 128, and make sure my tar=
get image is =E2=80=9CX410_X4_400. Additionally, I have to change the clo=
cks going into my custom blocks from =E2=80=9Cradio_2x=E2=80=9D to =E2=80=
=9Cradio=E2=80=9D.=20

Is this correct, or am I missing something. I have pasted my yml file bel=
ow which is working for the =E2=80=9CX410_X4_200=E2=80=9D image.

Thanks,

Joe

`# General parameters`

`# -----------------------------------------`

`schema: rfnoc_imagebuilder_args         # Identifier for the schema used=
 to validate this file`

`copyright: >-                           # Copyright information used in =
file headers`

`  Ettus Research, A National Instruments Brand`

`license: >-                             # License information used in fi=
le headers`

`  SPDX-License-Identifier: LGPL-3.0-or-later`

`version: '1.0'                          # File version`

`chdr_width: 64                      # Bit width of the CHDR bus for this=
 image`

`device: 'x410'                          # USRP type`

`image_core_name: 'x410_200_Trigger'         # Name to use for the RFNoC =
Image Core files`

`default_target: 'X410_X4_200'           # Default make target`

`# A list of all stream endpoints in design`

`# ----------------------------------------`

`stream_endpoints:`

`  ep0:                                  # Stream endpoint name`

`    ctrl: True                          # Endpoint passes control traffi=
c`

`    data: True                          # Endpoint passes data traffic`

`    buff_size_bytes: 262144             # Ingress buffer size for data`

`  ep1:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 262144`

`  ep2:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 262144`

`  ep3:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 262144`

`  ep4:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 32768`

`  ep5:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 32768`

`  ep6:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 32768`

`  ep7:`

`    ctrl: False`

`    data: True`

`    buff_size_bytes: 32768`

`# A list of all NoC blocks in design`

`# ----------------------------------`

`noc_blocks:`

`  radio0:`

`    block_desc: 'radio.yml'`

`    parameters:`

`      NUM_PORTS: 2`

`      NIPC: RADIO_NIPC`

`  radio1:`

`    block_desc: 'radio.yml'`

`    parameters:`

`      NUM_PORTS: 2`

`      NIPC: RADIO_NIPC`

`  replay0:`

`    block_desc: 'replay.yml'`

`    parameters:`

`      NUM_PORTS: 2`

`      MEM_DATA_W: 64`

`      MEM_ADDR_W: 32`

`  trigger0:`

`    block_desc: 'trigger.yml'`

`    parameters:`

`      NUM_PORTS: 1`

`  trigger1:`

`    block_desc: 'trigger.yml'`

`    parameters:`

`      NUM_PORTS: 1`

`# A list of all static connections in design`

`# ------------------------------------------`

`# Format: A list of connection maps (list of key-value pairs) with the f=
ollowing keys`

`#   - srcblk  =3D Source block to connect`

`#   - srcport =3D Port on the source block to connect`

`#   - dstblk  =3D Destination block to connect`

`#   - dstport =3D Port on the destination block to connect`

`connections:`

`  #`

`    # RF A:0 TX`

`  - { srcblk: ep0,    srcport: out0,  dstblk: radio0, dstport: in_0 }`

`  # RF A:0 RX`

`  - { srcblk: radio0, srcport: out_0, dstblk: ep0,    dstport: in0  }`

`  # RF A:1 TX`

`  - { srcblk: ep1,    srcport: out0,  dstblk: radio0, dstport: in_1 }`

`  # RF A:1 RX`

`  - { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }`

`  #`

`  # RF B:0 TX`

`  - { srcblk: ep2,    srcport: out0,  dstblk: radio1, dstport: in_0 }`

`  # RF B:0 RX`

`  - { srcblk: radio1, srcport: out_0, dstblk: ep2,    dstport: in0  }`

`  # RF B:1 TX`

`  - { srcblk: ep3,    srcport: out0,  dstblk: radio1, dstport: in_1 }`

`  # RF B:1 RX`

`  - { srcblk: radio1, srcport: out_1, dstblk: ep3,    dstport: in0  }`

`  #`

`  # Replay Connections`

`  - { srcblk: ep4,      srcport: out0,     dstblk: replay0,  dstport: in=
_0            }`

`  - { srcblk: replay0,  srcport: out_0,    dstblk: ep4,      dstport: in=
0             }`

`  - { srcblk: ep5,      srcport: out0,     dstblk: replay0,  dstport: in=
_1            }`

`  - { srcblk: replay0,  srcport: out_1,    dstblk: ep5,      dstport: in=
0             }`

`  #`

`  #trigger Connections`

`  - { srcblk: ep6,      srcport: out0,     dstblk: trigger0,  dstport: i=
n_0            }`

`  - { srcblk: trigger0,  srcport: out_0,    dstblk: ep6,      dstport: i=
n0             }`

`  - { srcblk: ep7,      srcport: out0,     dstblk: trigger1,  dstport: i=
n_0            }`

`  - { srcblk: trigger1,  srcport: out_0,    dstblk: ep7,      dstport: i=
n0             }`

`  # BSP Connections`

`  - { srcblk: radio0,   srcport: ctrlport, dstblk: _device_, dstport: ct=
rlport_radio0 }`

`  - { srcblk: radio1,   srcport: ctrlport, dstblk: _device_, dstport: ct=
rlport_radio1 }`

`  - { srcblk: _device_, srcport: radio0,   dstblk: radio0,   dstport: ra=
dio           }`

`  - { srcblk: _device_, srcport: radio1,   dstblk: radio1,   dstport: ra=
dio           }`

`  - { srcblk: _device_, srcport: time,     dstblk: radio0,   dstport: ti=
me            }`

`  - { srcblk: _device_, srcport: time,     dstblk: radio1,   dstport: ti=
me            }`

`  - { srcblk: replay0,  srcport: axi_ram,  dstblk: _device_, dstport: dr=
am            }`

`# A list of all clock domain connections in design`

`# ------------------------------------------------`

`# Format: A list of connection maps (list of key-value pairs) with the f=
ollowing keys`

`#   - srcblk  =3D Source block to connect (Always "_device_")`

`#   - srcport =3D Clock domain on the source block to connect`

`#   - dstblk  =3D Destination block to connect`

`#   - dstport =3D Clock domain on the destination block to connect`

`clk_domains:`

`  - { srcblk: _device_, srcport: radio, dstblk: radio0,  dstport: radio =
}`

`  - { srcblk: _device_, srcport: radio, dstblk: radio1,  dstport: radio =
}`

`  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem   =
}`

`  - { srcblk: _device_, srcport: radio_2x, dstblk: trigger1,    dstport:=
 ce    }`

`  - { srcblk: _device_, srcport: radio_2x, dstblk: trigger0,    dstport:=
 ce    }`

--b1_ARO3YO41degwgjI4kM60y5Q2EYQlxBP3spd0vX3bwg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am looking to increase my custom image from a =
sampling rate of 250 to 500 MS/S. I am looking to get some clarification on=
 a few things.</p><p>Looking through the verilog, it appears both the 200 a=
nd 400 images have the same master clock rate of 250 MHz, but with the 400 =
image there are twice as many samples per clock(SPC). Furthermore, it looks=
 like the 200 image is almost identical to the 400 image, but it uses two e=
xtra modules (rf_down_rto2 and rf_up_2to4) to handle the wider buses.</p><p=
>So, it seems like the upgrading my image is pretty trivial.. in the yml fi=
le, I need to upgrade my chdr_width from 64 to 128, and make sure my target=
 image is =E2=80=9CX410_X4_400. Additionally, I have to change the clocks g=
oing into my custom blocks from =E2=80=9Cradio_2x=E2=80=9D to =E2=80=9Cradi=
o=E2=80=9D. </p><p>Is this correct, or am I missing something. I have paste=
d my yml file below which is working for the =E2=80=9CX410_X4_200=E2=80=
=9D image.</p><p>Thanks,</p><p>Joe</p><p><code># General parameters</code><=
/p><p><code># -----------------------------------------</code></p><p><code>=
schema: rfnoc_imagebuilder_args         # Identifier for the schema used to=
 validate this file</code></p><p><code>copyright: &gt;-                    =
       # Copyright information used in file headers</code></p><p><code>  Et=
tus Research, A National Instruments Brand</code></p><p><code>license: &gt;=
-                             # License information used in file headers</c=
ode></p><p><code>  SPDX-License-Identifier: LGPL-3.0-or-later</code></p><p>=
<code>version: '1.0'                          # File version</code></p><p><=
code>chdr_width: 64                      # Bit width of the CHDR bus for th=
is image</code></p><p><code>device: 'x410'                          # USRP =
type</code></p><p><code>image_core_name: 'x410_200_Trigger'         # Name =
to use for the RFNoC Image Core files</code></p><p><code>default_target: 'X=
410_X4_200'           # Default make target</code></p><p><code># A list of =
all stream endpoints in design</code></p><p><code># -----------------------=
-----------------</code></p><p><code>stream_endpoints:</code></p><p><code> =
 ep0:                                  # Stream endpoint name</code></p><p>=
<code>    ctrl: True                          # Endpoint passes control tra=
ffic</code></p><p><code>    data: True                          # Endpoint =
passes data traffic</code></p><p><code>    buff_size_bytes: 262144         =
    # Ingress buffer size for data</code></p><p><code>  ep1:</code></p><p><=
code>    ctrl: False</code></p><p><code>    data: True</code></p><p><code> =
   buff_size_bytes: 262144</code></p><p><code>  ep2:</code></p><p><code>   =
 ctrl: False</code></p><p><code>    data: True</code></p><p><code>    buff_=
size_bytes: 262144</code></p><p><code>  ep3:</code></p><p><code>    ctrl: F=
alse</code></p><p><code>    data: True</code></p><p><code>    buff_size_byt=
es: 262144</code></p><p><code>  ep4:</code></p><p><code>    ctrl: False</co=
de></p><p><code>    data: True</code></p><p><code>    buff_size_bytes: 3276=
8</code></p><p><code>  ep5:</code></p><p><code>    ctrl: False</code></p><p=
><code>    data: True</code></p><p><code>    buff_size_bytes: 32768</code><=
/p><p><code>  ep6:</code></p><p><code>    ctrl: False</code></p><p><code>  =
  data: True</code></p><p><code>    buff_size_bytes: 32768</code></p><p><co=
de>  ep7:</code></p><p><code>    ctrl: False</code></p><p><code>    data: T=
rue</code></p><p><code>    buff_size_bytes: 32768</code></p><p><code># A li=
st of all NoC blocks in design</code></p><p><code># -----------------------=
-----------</code></p><p><code>noc_blocks:</code></p><p><code>  radio0:</co=
de></p><p><code>    block_desc: 'radio.yml'</code></p><p><code>    paramete=
rs:</code></p><p><code>      NUM_PORTS: 2</code></p><p><code>      NIPC: RA=
DIO_NIPC</code></p><p><code>  radio1:</code></p><p><code>    block_desc: 'r=
adio.yml'</code></p><p><code>    parameters:</code></p><p><code>      NUM_P=
ORTS: 2</code></p><p><code>      NIPC: RADIO_NIPC</code></p><p><code>  repl=
ay0:</code></p><p><code>    block_desc: 'replay.yml'</code></p><p><code>   =
 parameters:</code></p><p><code>      NUM_PORTS: 2</code></p><p><code>     =
 MEM_DATA_W: 64</code></p><p><code>      MEM_ADDR_W: 32</code></p><p><code>=
  trigger0:</code></p><p><code>    block_desc: 'trigger.yml'</code></p><p><=
code>    parameters:</code></p><p><code>      NUM_PORTS: 1</code></p><p><co=
de>  trigger1:</code></p><p><code>    block_desc: 'trigger.yml'</code></p><=
p><code>    parameters:</code></p><p><code>      NUM_PORTS: 1</code></p><p>=
<code># A list of all static connections in design</code></p><p><code># ---=
---------------------------------------</code></p><p><code># Format: A list=
 of connection maps (list of key-value pairs) with the following keys</code=
></p><p><code>#   - srcblk  =3D Source block to connect</code></p><p><code>=
#   - srcport =3D Port on the source block to connect</code></p><p><code># =
  - dstblk  =3D Destination block to connect</code></p><p><code>#   - dstpo=
rt =3D Port on the destination block to connect</code></p><p><code>connecti=
ons:</code></p><p><code>  #</code></p><p><code>    # RF A:0 TX</code></p><p=
><code>  - { srcblk: ep0,    srcport: out0,  dstblk: radio0, dstport: in_0 =
}</code></p><p><code>  # RF A:0 RX</code></p><p><code>  - { srcblk: radio0,=
 srcport: out_0, dstblk: ep0,    dstport: in0  }</code></p><p><code>  # RF =
A:1 TX</code></p><p><code>  - { srcblk: ep1,    srcport: out0,  dstblk: rad=
io0, dstport: in_1 }</code></p><p><code>  # RF A:1 RX</code></p><p><code>  =
- { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }</code><=
/p><p><code>  #</code></p><p><code>  # RF B:0 TX</code></p><p><code>  - { s=
rcblk: ep2,    srcport: out0,  dstblk: radio1, dstport: in_0 }</code></p><p=
><code>  # RF B:0 RX</code></p><p><code>  - { srcblk: radio1, srcport: out_=
0, dstblk: ep2,    dstport: in0  }</code></p><p><code>  # RF B:1 TX</code><=
/p><p><code>  - { srcblk: ep3,    srcport: out0,  dstblk: radio1, dstport: =
in_1 }</code></p><p><code>  # RF B:1 RX</code></p><p><code>  - { srcblk: ra=
dio1, srcport: out_1, dstblk: ep3,    dstport: in0  }</code></p><p><code>  =
#</code></p><p><code>  # Replay Connections</code></p><p><code>  - { srcblk=
: ep4,      srcport: out0,     dstblk: replay0,  dstport: in_0            }=
</code></p><p><code>  - { srcblk: replay0,  srcport: out_0,    dstblk: ep4,=
      dstport: in0             }</code></p><p><code>  - { srcblk: ep5,     =
 srcport: out0,     dstblk: replay0,  dstport: in_1            }</code></p>=
<p><code>  - { srcblk: replay0,  srcport: out_1,    dstblk: ep5,      dstpo=
rt: in0             }</code></p><p><code>  #</code></p><p><code>  #trigger =
Connections</code></p><p><code>  - { srcblk: ep6,      srcport: out0,     d=
stblk: trigger0,  dstport: in_0            }</code></p><p><code>  - { srcbl=
k: trigger0,  srcport: out_0,    dstblk: ep6,      dstport: in0            =
 }</code></p><p><code>  - { srcblk: ep7,      srcport: out0,     dstblk: tr=
igger1,  dstport: in_0            }</code></p><p><code>  - { srcblk: trigge=
r1,  srcport: out_0,    dstblk: ep7,      dstport: in0             }</code>=
</p><p><code>  # BSP Connections</code></p><p><code>  - { srcblk: radio0,  =
 srcport: ctrlport, dstblk: _device_, dstport: ctrlport_radio0 }</code></p>=
<p><code>  - { srcblk: radio1,   srcport: ctrlport, dstblk: _device_, dstpo=
rt: ctrlport_radio1 }</code></p><p><code>  - { srcblk: _device_, srcport: r=
adio0,   dstblk: radio0,   dstport: radio           }</code></p><p><code>  =
- { srcblk: _device_, srcport: radio1,   dstblk: radio1,   dstport: radio  =
         }</code></p><p><code>  - { srcblk: _device_, srcport: time,     ds=
tblk: radio0,   dstport: time            }</code></p><p><code>  - { srcblk:=
 _device_, srcport: time,     dstblk: radio1,   dstport: time            }<=
/code></p><p><code>  - { srcblk: replay0,  srcport: axi_ram,  dstblk: _devi=
ce_, dstport: dram            }</code></p><p><code># A list of all clock do=
main connections in design</code></p><p><code># ---------------------------=
---------------------</code></p><p><code># Format: A list of connection map=
s (list of key-value pairs) with the following keys</code></p><p><code>#   =
- srcblk  =3D Source block to connect (Always "_device_")</code></p><p><cod=
e>#   - srcport =3D Clock domain on the source block to connect</code></p><=
p><code>#   - dstblk  =3D Destination block to connect</code></p><p><code>#=
   - dstport =3D Clock domain on the destination block to connect</code></p=
><p><code>clk_domains:</code></p><p><code>  - { srcblk: _device_, srcport: =
radio, dstblk: radio0,  dstport: radio }</code></p><p><code>  - { srcblk: _=
device_, srcport: radio, dstblk: radio1,  dstport: radio }</code></p><p><co=
de>  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem   =
}</code></p><p><code>  - { srcblk: _device_, srcport: radio_2x, dstblk: tri=
gger1,    dstport: ce    }</code></p><p><code>  - { srcblk: _device_, srcpo=
rt: radio_2x, dstblk: trigger0,    dstport: ce    }</code></p><p><br></p><p=
><br></p>

--b1_ARO3YO41degwgjI4kM60y5Q2EYQlxBP3spd0vX3bwg--

--===============4277533494659372574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4277533494659372574==--
