Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B317262B6
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 16:23:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9488B3849A3
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 10:23:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686147817; bh=d/xN6x8iZzewVBdiSAI5HKJujWnGnXvecOwSKXv8p8M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=isfCYgJOMCct8U//6g5RlFU3F+xbTG/9ILofJxobgXny+Qm4Emo+LsSFONGRcGrLp
	 OfgUVB4Sn+kqBA2VrmTX3NRjeqLbbvjFZIl3xIc9fhPJIWEQ3lsr4spitbImKoCPLz
	 yi/wI1HUPE2MGV53KnUJWGv8twXVbx/8++ANxRb2SAAQP23WaNdXqt1yCywAzchS2s
	 h5P6Y7ACCE06NRZNxyIRtfT8UEUI63axwNxAGRK1/mA8vE6MbfhOVoOJCwGoVjnGOs
	 DZ4nPCsYxUbBFWcCDwMrW6Hs9ETgMLlRCR2FKrS85I5U0JfPZWtIThy/9SAOgKFo8j
	 DOkCo8Z8JJ60A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B716384967
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 10:22:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686147750; bh=/f5JkvsBUgkQZJU29pUP4VtFPfSjFSu+edCGRNcQWJk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gwD4Gb+0FioDvjnIGRkgAKaXR/buGCRQbTwQXDHmhl1rlvy5gy51NZUiJ/B4a5+lo
	 QvDBlETEaaaI1trT+GdTV5BX1+0JSjHFeqq3usAaIBvlc3oTACGZsez0o/ZP/Njk7k
	 tVWlxHv6Q0yGyNOnEjS9K+gP2DvgsItlG48U64uXGo3bljuRGhOJ/FFRozFqUOjxSP
	 Yvfak991BEB9NPs8E9CHbBTVbTqXRywZYF+5Odx17cSR5UE2NJ+ZFN4QNGi8gDLbYB
	 WO1WPEJsAWYBxu9TvUEUqap2+rcuTrVjQ475icONUM8GWlaXo26M50uMSP13VvuhZG
	 iM1U4zhZ5Qsyg==
Date: Wed, 7 Jun 2023 14:22:30 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=h3k-5+_uXbC5jsyFpzRYZLOyFb4OPfnHmov6hXxEtuYQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: UBDXIHQXJ2EGTMJX5CVR7HPDYRBAIXQI
X-Message-ID-Hash: UBDXIHQXJ2EGTMJX5CVR7HPDYRBAIXQI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBDXIHQXJ2EGTMJX5CVR7HPDYRBAIXQI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2005654776109434876=="

This is a multi-part message in MIME format.

--===============2005654776109434876==
Content-Type: multipart/alternative;
 boundary="b1_ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I did run the default image and everything worked fine. I pasted my YML f=
ile below. Currently, the software I wrote builds a graph between the rep=
lay block and the radio block, I don=E2=80=99t want anything else. I do h=
ave a custom block, but I do not need it for transmit. I tested it on the=
 default image(even though what I wrote does not call for a DUC) and it s=
till worked fine.

\# General parameters

\# -----------------------------------------

schema: rfnoc_imagebuilder_args         # Identifier for the schema used =
to validate this file

copyright: >-                           # Copyright information used in f=
ile headers

  Ettus Research, A National Instruments Brand

license: >-                             # License information used in fil=
e headers

  SPDX-License-Identifier: LGPL-3.0-or-later

version: '1.0'                          # File version

chdr_width: 64                      # Bit width of the CHDR bus for this =
image

device: 'x410'                          # USRP type

image_core_name: 'x410_200_Trigger'         # Name to use for the RFNoC I=
mage Core files

default_target: 'X410_X4_200'           # Default make target

\# A list of all stream endpoints in design

\# ----------------------------------------

stream_endpoints:

  ep0:                                  # Stream endpoint name

    ctrl: True                          # Endpoint passes control traffic

    data: True                          # Endpoint passes data traffic

    buff_size_bytes: 262144             # Ingress buffer size for data

  ep1:

    ctrl: False

    data: True

    buff_size_bytes: 262144

  ep2:

    ctrl: False

    data: True

    buff_size_bytes: 262144

  ep3:

    ctrl: False

    data: True

    buff_size_bytes: 262144

  ep4:

    ctrl: False

    data: True

    buff_size_bytes: 32768

  ep5:

    ctrl: False

    data: True

    buff_size_bytes: 32768

  ep6:

    ctrl: False

    data: True

    buff_size_bytes: 32768

  ep7:

    ctrl: False

    data: True

    buff_size_bytes: 32768

\# A list of all NoC blocks in design

\# ----------------------------------

noc_blocks:

  radio0:

    block_desc: 'radio.yml'

    parameters:

      NUM_PORTS: 2

      NIPC: RADIO_NIPC

  radio1:

    block_desc: 'radio.yml'

    parameters:

      NUM_PORTS: 2

      NIPC: RADIO_NIPC

  replay0:

    block_desc: 'replay.yml'

    parameters:

      NUM_PORTS: 2

      MEM_DATA_W: 128

      MEM_ADDR_W: 32

  trigger0:

    block_desc: 'trigger.yml'

    parameters:

      NUM_PORTS: 1

  trigger1:

    block_desc: 'trigger.yml'

    parameters:

      NUM_PORTS: 1

\# A list of all static connections in design

\# ------------------------------------------

\# Format: A list of connection maps (list of key-value pairs) with the f=
ollowing keys

\#   - srcblk  =3D Source block to connect

\#   - srcport =3D Port on the source block to connect

\#   - dstblk  =3D Destination block to connect

\#   - dstport =3D Port on the destination block to connect

connections:

  #

    # RF A:0 TX

  - { srcblk: ep0,    srcport: out0,  dstblk: radio0, dstport: in_0 }

  # RF A:0 RX

  - { srcblk: radio0, srcport: out_0, dstblk: ep0,    dstport: in0  }

  # RF A:1 TX

  - { srcblk: ep1,    srcport: out0,  dstblk: radio0, dstport: in_1 }

  # RF A:1 RX

  - { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }

  #

  # RF B:0 TX

  - { srcblk: ep2,    srcport: out0,  dstblk: radio1, dstport: in_0 }

  # RF B:0 RX

  - { srcblk: radio1, srcport: out_0, dstblk: ep2,    dstport: in0  }

  # RF B:1 TX

  - { srcblk: ep3,    srcport: out0,  dstblk: radio1, dstport: in_1 }

  # RF B:1 RX

  - { srcblk: radio1, srcport: out_1, dstblk: ep3,    dstport: in0  }

  #

  # Replay Connections

  - { srcblk: ep4,      srcport: out0,     dstblk: replay0,  dstport: in_=
0            }

  - { srcblk: replay0,  srcport: out_0,    dstblk: ep4,      dstport: in0=
             }

  - { srcblk: ep5,      srcport: out0,     dstblk: replay0,  dstport: in_=
1            }

  - { srcblk: replay0,  srcport: out_1,    dstblk: ep5,      dstport: in0=
             }

  #

  #trigger Connections

  - { srcblk: ep6,      srcport: out0,     dstblk: trigger0,  dstport: in=
_0            }

  - { srcblk: trigger0,  srcport: out_0,    dstblk: ep6,      dstport: in=
0             }

  - { srcblk: ep7,      srcport: out0,     dstblk: trigger1,  dstport: in=
_0            }

  - { srcblk: trigger1,  srcport: out_0,    dstblk: ep7,      dstport: in=
0             }

  # BSP Connections

  - { srcblk: radio0,   srcport: ctrlport, dstblk: _device_, dstport: ctr=
lport_radio0 }

  - { srcblk: radio1,   srcport: ctrlport, dstblk: _device_, dstport: ctr=
lport_radio1 }

  - { srcblk: _device_, srcport: radio0,   dstblk: radio0,   dstport: rad=
io           }

  - { srcblk: _device_, srcport: radio1,   dstblk: radio1,   dstport: rad=
io           }

  - { srcblk: _device_, srcport: time,     dstblk: radio0,   dstport: tim=
e            }

  - { srcblk: _device_, srcport: time,     dstblk: radio1,   dstport: tim=
e            }

  - { srcblk: replay0,  srcport: axi_ram,  dstblk: _device_, dstport: dra=
m            }

\# A list of all clock domain connections in design

\# ------------------------------------------------

\# Format: A list of connection maps (list of key-value pairs) with the f=
ollowing keys

\#   - srcblk  =3D Source block to connect (Always "_device_")

\#   - srcport =3D Clock domain on the source block to connect

\#   - dstblk  =3D Destination block to connect

\#   - dstport =3D Clock domain on the destination block to connect

clk_domains:

  - { srcblk: _device_, srcport: radio, dstblk: radio0,  dstport: radio }

  - { srcblk: _device_, srcport: radio, dstblk: radio1,  dstport: radio }

  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem   }

  - { srcblk: _device_, srcport: radio_2x, dstblk: trigger1,    dstport: =
ce    }

  - { srcblk: _device_, srcport: radio_2x, dstblk: trigger0,    dstport: =
ce    }

--b1_ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I did run the default image and everything worked fine. I p=
asted my YML file below. Currently, the software I wrote builds a graph bet=
ween the replay block and the radio block, I don=E2=80=99t want anything el=
se. I do have a custom block, but I do not need it for transmit. I tested i=
t on the default image(even though what I wrote does not call for a DUC) an=
d it still worked fine.</p><p><br></p><p># General parameters</p><p># -----=
------------------------------------</p><p>schema: rfnoc_imagebuilder_args =
        # Identifier for the schema used to validate this file</p><p>copyri=
ght: &gt;-                           # Copyright information used in file h=
eaders</p><p>  Ettus Research, A National Instruments Brand</p><p>license: =
&gt;-                             # License information used in file header=
s</p><p>  SPDX-License-Identifier: LGPL-3.0-or-later</p><p>version: '1.0'  =
                        # File version</p><p>chdr_width: 64                =
      # Bit width of the CHDR bus for this image</p><p>device: 'x410'      =
                    # USRP type</p><p>image_core_name: 'x410_200_Trigger'  =
       # Name to use for the RFNoC Image Core files</p><p>default_target: '=
X410_X4_200'           # Default make target</p><p># A list of all stream e=
ndpoints in design</p><p># ----------------------------------------</p><p>s=
tream_endpoints:</p><p>  ep0:                                  # Stream end=
point name</p><p>    ctrl: True                          # Endpoint passes =
control traffic</p><p>    data: True                          # Endpoint pa=
sses data traffic</p><p>    buff_size_bytes: 262144             # Ingress b=
uffer size for data</p><p>  ep1:</p><p>    ctrl: False</p><p>    data: True=
</p><p>    buff_size_bytes: 262144</p><p>  ep2:</p><p>    ctrl: False</p><p=
>    data: True</p><p>    buff_size_bytes: 262144</p><p>  ep3:</p><p>    ct=
rl: False</p><p>    data: True</p><p>    buff_size_bytes: 262144</p><p>  ep=
4:</p><p>    ctrl: False</p><p>    data: True</p><p>    buff_size_bytes: 32=
768</p><p>  ep5:</p><p>    ctrl: False</p><p>    data: True</p><p>    buff_=
size_bytes: 32768</p><p>  ep6:</p><p>    ctrl: False</p><p>    data: True</=
p><p>    buff_size_bytes: 32768</p><p>  ep7:</p><p>    ctrl: False</p><p>  =
  data: True</p><p>    buff_size_bytes: 32768</p><p># A list of all NoC blo=
cks in design</p><p># ----------------------------------</p><p>noc_blocks:<=
/p><p>  radio0:</p><p>    block_desc: 'radio.yml'</p><p>    parameters:</p>=
<p>      NUM_PORTS: 2</p><p>      NIPC: RADIO_NIPC</p><p>  radio1:</p><p>  =
  block_desc: 'radio.yml'</p><p>    parameters:</p><p>      NUM_PORTS: 2</p=
><p>      NIPC: RADIO_NIPC</p><p>  replay0:</p><p>    block_desc: 'replay.y=
ml'</p><p>    parameters:</p><p>      NUM_PORTS: 2</p><p>      MEM_DATA_W: =
128</p><p>      MEM_ADDR_W: 32</p><p>  trigger0:</p><p>    block_desc: 'tri=
gger.yml'</p><p>    parameters:</p><p>      NUM_PORTS: 1</p><p>  trigger1:<=
/p><p>    block_desc: 'trigger.yml'</p><p>    parameters:</p><p>      NUM_P=
ORTS: 1</p><p># A list of all static connections in design</p><p># --------=
----------------------------------</p><p># Format: A list of connection map=
s (list of key-value pairs) with the following keys</p><p>#   - srcblk  =3D=
 Source block to connect</p><p>#   - srcport =3D Port on the source block t=
o connect</p><p>#   - dstblk  =3D Destination block to connect</p><p>#   - =
dstport =3D Port on the destination block to connect</p><p>connections:</p>=
<p>  #</p><p>    # RF A:0 TX</p><p>  - { srcblk: ep0,    srcport: out0,  ds=
tblk: radio0, dstport: in_0 }</p><p>  # RF A:0 RX</p><p>  - { srcblk: radio=
0, srcport: out_0, dstblk: ep0,    dstport: in0  }</p><p>  # RF A:1 TX</p><=
p>  - { srcblk: ep1,    srcport: out0,  dstblk: radio0, dstport: in_1 }</p>=
<p>  # RF A:1 RX</p><p>  - { srcblk: radio0, srcport: out_1, dstblk: ep1,  =
  dstport: in0  }</p><p>  #</p><p>  # RF B:0 TX</p><p>  - { srcblk: ep2,   =
 srcport: out0,  dstblk: radio1, dstport: in_0 }</p><p>  # RF B:0 RX</p><p>=
  - { srcblk: radio1, srcport: out_0, dstblk: ep2,    dstport: in0  }</p><p=
>  # RF B:1 TX</p><p>  - { srcblk: ep3,    srcport: out0,  dstblk: radio1, =
dstport: in_1 }</p><p>  # RF B:1 RX</p><p>  - { srcblk: radio1, srcport: ou=
t_1, dstblk: ep3,    dstport: in0  }</p><p>  #</p><p>  # Replay Connections=
</p><p>  - { srcblk: ep4,      srcport: out0,     dstblk: replay0,  dstport=
: in_0            }</p><p>  - { srcblk: replay0,  srcport: out_0,    dstblk=
: ep4,      dstport: in0             }</p><p>  - { srcblk: ep5,      srcpor=
t: out0,     dstblk: replay0,  dstport: in_1            }</p><p>  - { srcbl=
k: replay0,  srcport: out_1,    dstblk: ep5,      dstport: in0             =
}</p><p>  #</p><p>  #trigger Connections</p><p>  - { srcblk: ep6,      srcp=
ort: out0,     dstblk: trigger0,  dstport: in_0            }</p><p>  - { sr=
cblk: trigger0,  srcport: out_0,    dstblk: ep6,      dstport: in0         =
    }</p><p>  - { srcblk: ep7,      srcport: out0,     dstblk: trigger1,  d=
stport: in_0            }</p><p>  - { srcblk: trigger1,  srcport: out_0,   =
 dstblk: ep7,      dstport: in0             }</p><p>  # BSP Connections</p>=
<p>  - { srcblk: radio0,   srcport: ctrlport, dstblk: _device_, dstport: ct=
rlport_radio0 }</p><p>  - { srcblk: radio1,   srcport: ctrlport, dstblk: _d=
evice_, dstport: ctrlport_radio1 }</p><p>  - { srcblk: _device_, srcport: r=
adio0,   dstblk: radio0,   dstport: radio           }</p><p>  - { srcblk: _=
device_, srcport: radio1,   dstblk: radio1,   dstport: radio           }</p=
><p>  - { srcblk: _device_, srcport: time,     dstblk: radio0,   dstport: t=
ime            }</p><p>  - { srcblk: _device_, srcport: time,     dstblk: r=
adio1,   dstport: time            }</p><p>  - { srcblk: replay0,  srcport: =
axi_ram,  dstblk: _device_, dstport: dram            }</p><p># A list of al=
l clock domain connections in design</p><p># ------------------------------=
------------------</p><p># Format: A list of connection maps (list of key-v=
alue pairs) with the following keys</p><p>#   - srcblk  =3D Source block to=
 connect (Always "_device_")</p><p>#   - srcport =3D Clock domain on the so=
urce block to connect</p><p>#   - dstblk  =3D Destination block to connect<=
/p><p>#   - dstport =3D Clock domain on the destination block to connect</p=
><p>clk_domains:</p><p>  - { srcblk: _device_, srcport: radio, dstblk: radi=
o0,  dstport: radio }</p><p>  - { srcblk: _device_, srcport: radio, dstblk:=
 radio1,  dstport: radio }</p><p>  - { srcblk: _device_, srcport: dram,  ds=
tblk: replay0, dstport: mem   }</p><p>  - { srcblk: _device_, srcport: radi=
o_2x, dstblk: trigger1,    dstport: ce    }</p><p>  - { srcblk: _device_, s=
rcport: radio_2x, dstblk: trigger0,    dstport: ce    }</p><p><br></p><p><b=
r></p>

--b1_ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0--

--===============2005654776109434876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2005654776109434876==--
