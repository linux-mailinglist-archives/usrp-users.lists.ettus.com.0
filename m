Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C245725CBD8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 23:09:14 +0200 (CEST)
Received: from [::1] (port=57956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDwTo-0005Tg-83; Thu, 03 Sep 2020 17:09:12 -0400
Received: from mail-oo1-f52.google.com ([209.85.161.52]:39079)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kDwTk-0005Mh-8f
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 17:09:08 -0400
Received: by mail-oo1-f52.google.com with SMTP id m4so1132412oos.6
 for <usrp-users@lists.ettus.com>; Thu, 03 Sep 2020 14:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=NXx6PiQMj4AWpLKktAHSwDY6/gcC5z7VQXOX9Qrsusc=;
 b=B5p2Do91wEqOhET1yCYPBIO5BBoxPcEXCslQKbuIGXz592mBQ5fSIW8htdyCIjN83A
 T6HIX52b9UDXtftmTbh4Ihu7zQaaEhtRFV+2akdnVz2ytA4HVfeajb+AM/EVcZpyKgc2
 rQZGwGJevyapIJpIiUtMdWfwuljtpTEc6DNo5P7kcrW8i2m3RXw7gD3u/QazrxkmW2yF
 MsTbjLi/04fh0756jZrKhHkfcnq71sgt1+vAi924DARr/hMKXK89hTGJKf8l2VW/nLOw
 Rq/F5dy8NkD0ITIMeoHxEmmLr29uSHHOq/CFzfZu3oBtNOT2ZKttbuqOP7rx/hAie97E
 2+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NXx6PiQMj4AWpLKktAHSwDY6/gcC5z7VQXOX9Qrsusc=;
 b=VZDuTFGuk03UW8/CRZ2Bqih2aeCwx/qoppiycUL68j61aLZPt/hQ0Xf/ICnjTuvbLh
 uTJc12in4eeeDj7eNQgqbkpXfvwO2fTcV+KgvPCziYAFygsuXzdLbfaXyX3CB/6WYphP
 3fH4P/KrqiOtgzKx0k7RtUoH2hBzjLphfglkfFhmHXLenURURWs6biF8qqw9511zSG9E
 xtBtADURWyUSNbgUVe5IRexg+OT64MNYLTuZtZmomGyOS77aeavTLi1UCSqEJZ9mDw6E
 nJUZ8lV6G4XsZhfT6XokhX/u757oqB0foKyud4dLFq/FJq6MsseF7k/kqzkXGwettwGV
 p1gw==
X-Gm-Message-State: AOAM532RjJIRXCzDC1kf/1bAEAMnCqIuw3UOB1GYKfD3zLIrYbX4F4gf
 MM35KXBkYFhOEdQlDl+QhRYRDAWcKVlT/GJ/St4tvumytsZqQg==
X-Google-Smtp-Source: ABdhPJxIR5KUB1WUWagSucaVAOAp1Pnp86nkzqQ2jCILQ3vhs/tKChsGOyv6c5XSnjMcqIFwibaqIRMn4ISp/QVFmS0=
X-Received: by 2002:a05:6820:384:: with SMTP id
 r4mr3352409ooj.62.1599167306645; 
 Thu, 03 Sep 2020 14:08:26 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 3 Sep 2020 17:08:16 -0400
Message-ID: <CAB__hTSYn8r7hXcGCfJxvz7nEk=9XmLhirDwP=VOk46Bw5NNfw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] How to connect blocks dynamically in UHD 4.0?
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6366779848191257415=="
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

--===============6366779848191257415==
Content-Type: multipart/alternative; boundary="0000000000003feb9a05ae6f27ea"

--0000000000003feb9a05ae6f27ea
Content-Type: text/plain; charset="UTF-8"

Hi,
I built a custom N310 XG image which simply added two 2-channel replay
blocks to the default image.  The yml for the N310 is provided below.
Basically, I added 4 stream endpoints and connected each one individually
to one of the four available replay block ports. My thought was that these
could then be dynamically routed to that default static graph
(duc->Radio->ddc).  The build succeeded but now I am having difficulty
connecting in UHD. I have tried the graph->connect() and the graph util
connect_through_blocks().  I am simply trying to connect the Replay output
to the DUC input.  Any advice?
Thanks.
Rob


# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args         # Identifier for the schema used to
validate this file
copyright: 'Ettus Research, A National Instruments Brand' # Copyright
information used in file headers
license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License information
used in file headers
version: 1.0                            # File version
rfnoc_version: 1.0                      # RFNoC protocol version
chdr_width: 64                          # Bit width of the CHDR bus for
this image
device: 'n310'
default_target: 'N310_XG'

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                       # Stream endpoint name
    ctrl: True                      # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep1:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep2:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep3:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep4:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 256                  # Ingress buffer size for data
  ep5:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 256                  # Ingress buffer size for data
  ep6:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 256                  # Ingress buffer size for data
  ep7:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 256                  # Ingress buffer size for data

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  duc0:                      # NoC block name
    block_desc: 'duc.yml'    # Block device descriptor file
    parameters:
      NUM_PORTS: 2
  ddc0:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  radio0:
    block_desc: 'radio_2x64.yml'
  duc1:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 2
  ddc1:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  radio1:
    block_desc: 'radio_2x64.yml'
  replay0:
    block_desc: 'replay.yml'
    parameters:
      NUM_PORTS: 2
      MEM_DATA_W: 64
      MEM_ADDR_W: 30
  replay1:
    block_desc: 'replay.yml'
    parameters:
      NUM_PORTS: 2
      MEM_DATA_W: 64
      MEM_ADDR_W: 30

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#         - srcblk  = Source block to connect
#         - srcport = Port on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Port on the destination block to connect
connections:
  - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
  - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
  - { srcblk: ep1,    srcport: out0,  dstblk: duc0,   dstport: in_1 }
  - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
  - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
  - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
  - { srcblk: ep2,    srcport: out0,  dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  - { srcblk: radio1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
  - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
  - { srcblk: ep3,    srcport: out0,  dstblk: duc1,   dstport: in_1 }
  - { srcblk: duc1,   srcport: out_1, dstblk: radio1, dstport: in_1 }
  - { srcblk: radio1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
  - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
  - { srcblk: ep4,    srcport: out0,  dstblk: replay0,dstport: in_0 }
  - { srcblk: replay0,srcport: out_0, dstblk: ep4,    dstport: in0  }
  - { srcblk: ep5,    srcport: out0,  dstblk: replay0,dstport: in_1 }
  - { srcblk: replay0,srcport: out_1, dstblk: ep5,    dstport: in0  }
  - { srcblk: ep6,    srcport: out0,  dstblk: replay1,dstport: in_0 }
  - { srcblk: replay1,srcport: out_0, dstblk: ep6,    dstport: in0  }
  - { srcblk: ep7,    srcport: out0,  dstblk: replay1,dstport: in_1 }
  - { srcblk: replay1,srcport: out_1, dstblk: ep7,    dstport: in0  }
  - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio0 }
  - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio1 }
  - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
x300_radio }
  - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:
x300_radio }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
time_keeper }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:
time_keeper }

# A list of all clock domain connections in design
# ------------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#         - srcblk  = Source block to connect (Always "_device"_)
#         - srcport = Clock domain on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Clock domain on the destination block to connect
clk_domains:
  - { srcblk: _device_, srcport: radio,      dstblk: radio0, dstport: radio
}
  - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: ddc0,   dstport: ce
 }
  - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: duc0,   dstport: ce
 }
  - { srcblk: _device_, srcport: radio,      dstblk: radio1, dstport: radio
}
  - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: ddc1,   dstport: ce
 }
  - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: duc1,   dstport: ce
 }
  - { srcblk: _device_, srcport: dram,       dstblk: replay0,dstport: mem
}
  - { srcblk: _device_, srcport: dram,       dstblk: replay1,dstport: mem
}

--0000000000003feb9a05ae6f27ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I built=C2=A0a custom N310 XG image which simply a=
dded two 2-channel replay blocks to the default image.=C2=A0 The yml for th=
e N310 is provided below. Basically, I added 4 stream endpoints and connect=
ed each one individually to one of the four available replay block ports. M=
y thought was that these could then be dynamically routed to that default s=
tatic graph (duc-&gt;Radio-&gt;ddc).=C2=A0 The build succeeded but now I am=
 having difficulty connecting in UHD. I have tried the graph-&gt;connect() =
and the graph util connect_through_blocks().=C2=A0 I am simply trying to co=
nnect the Replay output to the DUC input.=C2=A0 Any advice?</div><div>Thank=
s.</div><div>Rob</div><div><br></div><div><font face=3D"monospace"><br></fo=
nt></div><div><font face=3D"monospace"># General parameters<br># ----------=
-------------------------------<br>schema: rfnoc_imagebuilder_args =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Identifier for the schema used to validate this file=
<br>copyright: &#39;Ettus Research, A National Instruments Brand&#39; # Cop=
yright information used in file headers<br>license: &#39;SPDX-License-Ident=
ifier: LGPL-3.0-or-later&#39; # License information used in file headers<br=
>version: 1.0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# File version<br>rfnoc_version: 1.0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# RFNoC protocol version<br>chdr_width: 64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Bit width o=
f the CHDR bus for this image<br>device: &#39;n310&#39;<br>default_target: =
&#39;N310_XG&#39;<br><br># A list of all stream endpoints in design<br># --=
--------------------------------------<br>stream_endpoints:<br>=C2=A0 ep0: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes c=
ontrol traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic=
<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep1: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream=
 endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br=
>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 =
buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# I=
ngress buffer size for data<br>=C2=A0 ep2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=
=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: =
True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size f=
or data<br>=C2=A0 ep3: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: Fals=
e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # E=
ndpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint pa=
sses data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 =
ep4: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes c=
ontrol traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic=
<br>=C2=A0 =C2=A0 buff_size: 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep5: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Str=
eam endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic=
<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=
=A0 buff_size: 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0# Ingress buffer size for data<br>=C2=A0 ep6: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint n=
ame<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=
=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size:=
 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingres=
s buffer size for data<br>=C2=A0 ep7: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =
=C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 256 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer siz=
e for data<br><br># A list of all NoC blocks in design<br># ---------------=
-------------------<br>noc_blocks:<br>=C2=A0 duc0: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NoC block name<br>=C2=
=A0 =C2=A0 block_desc: &#39;duc.yml&#39; =C2=A0 =C2=A0# Block device descri=
ptor file<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2=
<br>=C2=A0 ddc0:<br>=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>=C2=A0 =
=C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 radio0:<b=
r>=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>=C2=A0 duc1:<br>=C2=
=A0 =C2=A0 block_desc: &#39;duc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 ddc1:<br>=C2=A0 =C2=A0 block_de=
sc: &#39;ddc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 =
NUM_PORTS: 2<br>=C2=A0 radio1:<br>=C2=A0 =C2=A0 block_desc: &#39;radio_2x64=
.yml&#39;<br>=C2=A0 replay0:<br>=C2=A0 =C2=A0 block_desc: &#39;replay.yml&#=
39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=
=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<=
br>=C2=A0 replay1:<br>=C2=A0 =C2=A0 block_desc: &#39;replay.yml&#39;<br>=C2=
=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 =C2=
=A0 =C2=A0 MEM_DATA_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br><br># A=
 list of all static connections in design<br># ----------------------------=
--------------<br># Format: A list of connection maps (list of key-value pa=
irs) with the following keys<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=
=A0=3D Source block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =
=3D Port on the source block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - =
dstblk =C2=A0=3D Destination block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 - dstport =3D Port on the destination block to connect<br>connections:<=
br>=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc0, =
=C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_0, d=
stblk: radio0, dstport: in_0 }<br>=C2=A0 - { srcblk: radio0, srcport: out_0=
, dstblk: ddc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 s=
rcport: out_0, dstblk: ep0, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - {=
 srcblk: ep1, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc0, =C2=A0 dstpor=
t: in_1 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_1, dstblk: radio0=
, dstport: in_1 }<br>=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: ddc=
0, =C2=A0 dstport: in_1 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_1=
, dstblk: ep1, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep2,=
 =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc1, =C2=A0 dstport: in_0 }<br>=
=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_0, dstblk: radio1, dstport: in=
_0 }<br>=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: ddc1, =C2=A0 dst=
port: in_0 }<br>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_0, dstblk: ep2=
, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep3, =C2=A0 =C2=
=A0srcport: out0, =C2=A0dstblk: duc1, =C2=A0 dstport: in_1 }<br>=C2=A0 - { =
srcblk: duc1, =C2=A0 srcport: out_1, dstblk: radio1, dstport: in_1 }<br>=C2=
=A0 - { srcblk: radio1, srcport: out_1, dstblk: ddc1, =C2=A0 dstport: in_1 =
}<br>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 =
=C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep4, =C2=A0 =C2=A0srcport:=
 out0, =C2=A0dstblk: replay0,dstport: in_0 }<br>=C2=A0 - { srcblk: replay0,=
srcport: out_0, dstblk: ep4, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - =
{ srcblk: ep5, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: replay0,dstport: i=
n_1 }<br>=C2=A0 - { srcblk: replay0,srcport: out_1, dstblk: ep5, =C2=A0 =C2=
=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep6, =C2=A0 =C2=A0srcport: ou=
t0, =C2=A0dstblk: replay1,dstport: in_0 }<br>=C2=A0 - { srcblk: replay1,src=
port: out_0, dstblk: ep6, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { s=
rcblk: ep7, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: replay1,dstport: in_1=
 }<br>=C2=A0 - { srcblk: replay1,srcport: out_1, dstblk: ep7, =C2=A0 =C2=A0=
dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: radio0, srcport: ctrl_port, dstb=
lk: _device_, dstport: ctrlport_radio0 }<br>=C2=A0 - { srcblk: radio1, srcp=
ort: ctrl_port, dstblk: _device_, dstport: ctrlport_radio1 }<br>=C2=A0 - { =
srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport: x300_radio=
 }<br>=C2=A0 - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, ds=
tport: x300_radio }<br>=C2=A0 - { srcblk: _device_, srcport: time_keeper, d=
stblk: radio0, dstport: time_keeper }<br>=C2=A0 - { srcblk: _device_, srcpo=
rt: time_keeper, dstblk: radio1, dstport: time_keeper }<br><br># A list of =
all clock domain connections in design<br># -------------------------------=
-----------------<br># Format: A list of connection maps (list of key-value=
 pairs) with the following keys<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =
=C2=A0=3D Source block to connect (Always &quot;_device&quot;_)<br># =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Clock domain on the source block to con=
nect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D Destination block =
to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Clock domain on t=
he destination block to connect<br>clk_domains:<br>=C2=A0 - { srcblk: _devi=
ce_, srcport: radio, =C2=A0 =C2=A0 =C2=A0dstblk: radio0, dstport: radio }<b=
r>=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: ddc0, =C2=A0 ds=
tport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: rfnoc_chd=
r, dstblk: duc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _d=
evice_, srcport: radio, =C2=A0 =C2=A0 =C2=A0dstblk: radio1, dstport: radio =
}<br>=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: ddc1, =C2=A0=
 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: rfnoc_=
chdr, dstblk: duc1, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk:=
 _device_, srcport: dram, =C2=A0 =C2=A0 =C2=A0 dstblk: replay0,dstport: mem=
 =C2=A0 }<br>=C2=A0 - { srcblk: _device_, srcport: dram, =C2=A0 =C2=A0 =C2=
=A0 dstblk: replay1,dstport: mem =C2=A0 }<br></font></div><div><br></div></=
div>

--0000000000003feb9a05ae6f27ea--


--===============6366779848191257415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6366779848191257415==--

