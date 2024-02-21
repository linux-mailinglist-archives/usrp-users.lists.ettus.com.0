Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5BE85EBC7
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 23:24:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15EB8384BCA
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 17:24:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708554279; bh=6y115m/QHHlV/vgSct6z0V+jyG6HTuXAQ4UlhgH/7nw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bizMWzYyzVUTJojogZxY3Jsmb3hf8TRNPvalfFE3oFglgY1cf7aak6Fz+mf/Gc8xr
	 ZBuneTVkYTcQcdDqdqeP/ejbuJfsE0/HgRR6Kspv8ipvg8PaVYX89TQi6y+iDAuO+L
	 o4EbONvpDboKStSGC9Az5XN0vzhLo6TjlIJMb8TI2J4aTLXoZSNmgP/yeDn+Hc6ly7
	 xcryqezK1JyKObq5JHm2akZAfqDI8JQZRyMK2fyXknuvNjc45dNSIBmUuO0WeC/AF/
	 FW2uS11W3so4mZrpBYIhXz2fOIezb+Y1hDfYmPgby3l0tAsnIlUv7mV30DgAcADUOL
	 OAmsqOrYQxKeg==
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 1EDC6384A5A
	for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 17:24:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="Fp0tJrlD";
	dkim-atps=neutral
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-29951f5c2e7so2677135a91.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 14:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1708554259; x=1709159059; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZnuQLuANOkQ53tHSf8RDwqmvGqBCjQw3aW+7WR50000=;
        b=Fp0tJrlD3BYSkRvDE1qPCD6xKFoh+XltDNkM9AWG7ucaxgBezKBEJqAHeYW4Q0HcOD
         1XRPHndbX+4ntbQvVQ4iN5ywn2v9cE/07A2BnXrCWJ+krbUjVy+mML9ouhK6kavzP5dS
         ZdEybGmgM0qNSuJ9D6N6zxX9ajrFgGHaY9GyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708554259; x=1709159059;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZnuQLuANOkQ53tHSf8RDwqmvGqBCjQw3aW+7WR50000=;
        b=PdwgjUivZCwfSMlsMdts86IbJdovJqwblmSBbqBbGoDN9po3ZfWu7xGKI+2Id5Y1mn
         RE1wcVk+nWm01DDMzxyEnHMMqVDyIcU8K2kG0ogZ34xWDst0IiuhkXisdc+DxEdt7m/R
         NhQNwrK9kzzRldj+rFDDOPrwBYRDXlAfQRFWzzA0Ooyfk9kjZKxpNvzKOzimpuJKv+7u
         cNhg0owJu8C2FqnXUE4V1d1O6HCIXMt8ti1WdfzQojNqJib2fxWefxZokxt6mCU+R40o
         zpEuKH65Zwm/HsawwTiADSeadh+YDqCbLeCQZ5rE7BrcfynK2G1I5Z4OuhaV2Cn9wBK5
         ogkQ==
X-Gm-Message-State: AOJu0YzfPAXDfQWUSGVsrheMCX0kMfhUmR5jJb7iGiehYyncz4ypk87s
	+mmRn3tRySJrxkE2fIK9yrcs4s/aHlHpbh9T/8ikOzdvFvgI6bVVFscJ/c6AYXkMFX6t/ymxq3Y
	aV3waJjOY9XRfi1d17hKtLJeoCbL8RH2k6L8WZQ5yI7+o2Lxe87RoTg==
X-Google-Smtp-Source: AGHT+IGv0lPC6Ks0ZdLCMFQpBSijq11THYPGuIip7mh9kKg6SoUNJyT9gYnU75281Cma9tA8UVq9mTfXtr3Vx18NRvg=
X-Received: by 2002:a17:90a:7183:b0:299:35ea:cfb5 with SMTP id
 i3-20020a17090a718300b0029935eacfb5mr12393292pjk.2.1708554258577; Wed, 21 Feb
 2024 14:24:18 -0800 (PST)
MIME-Version: 1.0
From: Yashaswini Guruprasad <yguruprasad@umass.edu>
Date: Wed, 21 Feb 2024 17:24:09 -0500
Message-ID: <CAD8oTTOg2FUQAEUfa7D7akhtPsRPLAzBKq-qbrdEgjsaN=AEDA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: L6F7KXFD735OROKUZT3PLE2VQ63XCXFZ
X-Message-ID-Hash: L6F7KXFD735OROKUZT3PLE2VQ63XCXFZ
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue with adding a new block on the RX section on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L6F7KXFD735OROKUZT3PLE2VQ63XCXFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6651767247487808376=="

--===============6651767247487808376==
Content-Type: multipart/alternative; boundary="000000000000a98e470611ebc99c"

--000000000000a98e470611ebc99c
Content-Type: text/plain; charset="UTF-8"

I'm currently new to X310 , I have loaded the hardware with the example
(Getting started with RfNoc document),
still having few errors , even though the bit stream is generated
(Currently using vivado 2019.1 with UHD 4.2).

When I tried to add the FFT block , as per the document I got few timing
errors , unable to resolve that issue (but the bit stream was generated and
the FPGA contained the FFT block)

Similarly I wanted to add a keep 1 in n block in the RX section


# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args         # Identifier for the schema used to
validate this file
copyright: >-                           # Copyright information used in
file headers
  Ettus Research, A National Instruments Brand
license: >-                             # License information used in file
headers
  SPDX-License-Identifier: LGPL-3.0-or-later
version: '1.0'                          # File version
chdr_width: 64                          # Bit width of the CHDR bus for
this image
device: 'x310'
default_target: 'X310_HG'

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                                  # Stream endpoint name
    ctrl: True                          # Endpoint passes control traffic
    data: True                          # Endpoint passes data traffic
    buff_size: 65536                    # Ingress buffer size for data
  ep1:
    ctrl: False
    data: True
    buff_size: 0
  ep2:
    ctrl: False
    data: True
    buff_size: 65536
  ep3:
    ctrl: False
    data: True
    buff_size: 0
  ep4:
    ctrl: False
    data: True
    buff_size: 4096
  ep5:
    ctrl: False
    data: True
    buff_size: 4096
  ep6:
    ctrl: False
    data: True
    buff_size: 32768

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  duc0:                                 # NoC block name
    block_desc: 'duc.yml'               # Block device descriptor file
    parameters:
      NUM_PORTS: 1
  ddc0:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  radio0:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 2
  duc1:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 1
  ddc1:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  radio1:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 2
  replay0:
    block_desc: 'replay.yml'
    parameters:
      NUM_PORTS: 2
      MEM_DATA_W: 64
      MEM_ADDR_W: 30
  keep1:
    block_desc: 'keep_one_in_n.yml'
    parameters:
      NUM_PORTS: 1

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#   - srcblk  = Source block to connect
#   - srcport = Port on the source block to connect
#   - dstblk  = Destination block to connect
#   - dstport = Port on the destination block to connect
connections:
  # RF A TX
  - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # RF A RX
  - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
  - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
  # RF A RX2
  - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
  - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
  #
  # RF B TX
  - { srcblk: ep2,    srcport: out0,  dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  # RF B RX
  - { srcblk: radio1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
  - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
  # RF B RX2
  - { srcblk: radio1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
  - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
  #
  # Replay Connections
  - { srcblk: ep4,     srcport: out0,  dstblk: replay0, dstport: in_0 }
  - { srcblk: replay0, srcport: out_0, dstblk: ep4,     dstport: in0  }
  - { srcblk: ep5,     srcport: out0,  dstblk: replay0, dstport: in_1 }
  - { srcblk: replay0, srcport: out_1, dstblk: ep5,     dstport: in0  }
  #
  # Keep-1-in-N Connections
  - { srcblk: ep6,     srcport: out0,  dstblk: keep1, dstport: in_0 }
  - { srcblk: keep1,    srcport: out_0, dstblk: ep6,   dstport: in0  }
  #
  # BSP Connections
  - { srcblk: radio0,   srcport: ctrlport, dstblk: _device_, dstport:
ctrlport_radio0 }
  - { srcblk: radio1,   srcport: ctrlport, dstblk: _device_, dstport:
ctrlport_radio1 }
  - { srcblk: replay0,  srcport: axi_ram,  dstblk: _device_, dstport: dram
           }
  - { srcblk: _device_, srcport: radio0,   dstblk: radio0,   dstport: radio
          }
  - { srcblk: _device_, srcport: radio1,   dstblk: radio1,   dstport: radio
          }
  - { srcblk: _device_, srcport: time,     dstblk: radio0,   dstport: time
           }
  - { srcblk: _device_, srcport: time,     dstblk: radio1,   dstport: time
           }

# A list of all clock domain connections in design
# ------------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#   - srcblk  = Source block to connect (Always "_device"_)
#   - srcport = Clock domain on the source block to connect
#   - dstblk  = Destination block to connect
#   - dstport = Clock domain on the destination block to connect
clk_domains:
    - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc0,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: duc0,   dstport: ce    }
    - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc1,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: duc1,   dstport: ce    }
    - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem  }
    - { srcblk: _device_, srcport: ce,    dstblk: keep1,   dstport: ce    }

This is my modified yml file, is there something I need to work on the
vivado end to fix these issues??

Thanks
Yash

--000000000000a98e470611ebc99c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m currently new to X310 , I have loaded the hardware=
 with the example (Getting started with RfNoc document),<br>still having fe=
w errors , even though the bit stream is generated (Currently using vivado =
2019.1 with UHD 4.2).<br><br>When I tried to add the FFT block , as per the=
 document I got few timing errors , unable to resolve that issue (but the b=
it stream was generated and the FPGA contained the FFT block)<br><br>Simila=
rly I wanted to add a keep 1 in n block in the RX section<br><br><br># Gene=
ral parameters<br># -----------------------------------------<br>schema: rf=
noc_imagebuilder_args =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Identifier for the sche=
ma used to validate this file<br>copyright: &gt;- =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Copyri=
ght information used in file headers<br>=C2=A0 Ettus Research, A National I=
nstruments Brand<br>license: &gt;- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # License infor=
mation used in file headers<br>=C2=A0 SPDX-License-Identifier: LGPL-3.0-or-=
later<br>version: &#39;1.0&#39; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# File version<br>chdr_widt=
h: 64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0# Bit width of the CHDR bus for this image<br>device: =
&#39;x310&#39;<br>default_target: &#39;X310_HG&#39;<br><br># A list of all =
stream endpoints in design<br># ----------------------------------------<br=
>stream_endpoints:<br>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endp=
oint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# =
Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 65536 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer=
 size for data<br>=C2=A0 ep1:<br>=C2=A0 =C2=A0 ctrl: False<br>=C2=A0 =C2=A0=
 data: True<br>=C2=A0 =C2=A0 buff_size: 0<br>=C2=A0 ep2:<br>=C2=A0 =C2=A0 c=
trl: False<br>=C2=A0 =C2=A0 data: True<br>=C2=A0 =C2=A0 buff_size: 65536<br=
>=C2=A0 ep3:<br>=C2=A0 =C2=A0 ctrl: False<br>=C2=A0 =C2=A0 data: True<br>=
=C2=A0 =C2=A0 buff_size: 0<br>=C2=A0 ep4:<br>=C2=A0 =C2=A0 ctrl: False<br>=
=C2=A0 =C2=A0 data: True<br>=C2=A0 =C2=A0 buff_size: 4096<br>=C2=A0 ep5:<br=
>=C2=A0 =C2=A0 ctrl: False<br>=C2=A0 =C2=A0 data: True<br>=C2=A0 =C2=A0 buf=
f_size: 4096<br>=C2=A0 ep6:<br>=C2=A0 =C2=A0 ctrl: False<br>=C2=A0 =C2=A0 d=
ata: True<br>=C2=A0 =C2=A0 buff_size: 32768<br><br># A list of all NoC bloc=
ks in design<br># ----------------------------------<br>noc_blocks:<br>=C2=
=A0 duc0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # NoC block name<br>=C2=A0=
 =C2=A0 block_desc: &#39;duc.yml&#39; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 # Block device descriptor file<br>=C2=A0 =C2=A0 parameters:<b=
r>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 1<br>=C2=A0 ddc0:<br>=C2=A0 =C2=A0 block_=
desc: &#39;ddc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=
=A0 NUM_PORTS: 2<br>=C2=A0 radio0:<br>=C2=A0 =C2=A0 block_desc: &#39;radio.=
yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<=
br>=C2=A0 duc1:<br>=C2=A0 =C2=A0 block_desc: &#39;duc.yml&#39;<br>=C2=A0 =
=C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 1<br>=C2=A0 ddc1:<br>=
=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br=
>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 radio1:<br>=C2=A0 =C2=A0 block=
_desc: &#39;radio.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =
=C2=A0 NUM_PORTS: 2<br>=C2=A0 replay0:<br>=C2=A0 =C2=A0 block_desc: &#39;re=
play.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORT=
S: 2<br>=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADD=
R_W: 30<br>=C2=A0 keep1:<br>=C2=A0 =C2=A0 block_desc: &#39;keep_one_in_n.ym=
l&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 1<br=
><br># A list of all static connections in design<br># --------------------=
----------------------<br># Format: A list of connection maps (list of key-=
value pairs) with the following keys<br># =C2=A0 - srcblk =C2=A0=3D Source =
block to connect<br># =C2=A0 - srcport =3D Port on the source block to conn=
ect<br># =C2=A0 - dstblk =C2=A0=3D Destination block to connect<br># =C2=A0=
 - dstport =3D Port on the destination block to connect<br>connections:<br>=
=C2=A0 # RF A TX<br>=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out0, =C2=
=A0dstblk: duc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 =
srcport: out_0, dstblk: radio0, dstport: in_0 }<br>=C2=A0 # RF A RX<br>=C2=
=A0 - { srcblk: radio0, srcport: out_0, dstblk: ddc0, =C2=A0 dstport: in_0 =
}<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_0, dstblk: ep0, =C2=A0 =
=C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # RF A RX2<br>=C2=A0 - { srcblk: radio=
0, srcport: out_1, dstblk: ddc0, =C2=A0 dstport: in_1 }<br>=C2=A0 - { srcbl=
k: ddc0, =C2=A0 srcport: out_1, dstblk: ep1, =C2=A0 =C2=A0dstport: in0 =C2=
=A0}<br>=C2=A0 #<br>=C2=A0 # RF B TX<br>=C2=A0 - { srcblk: ep2, =C2=A0 =C2=
=A0srcport: out0, =C2=A0dstblk: duc1, =C2=A0 dstport: in_0 }<br>=C2=A0 - { =
srcblk: duc1, =C2=A0 srcport: out_0, dstblk: radio1, dstport: in_0 }<br>=C2=
=A0 # RF B RX<br>=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: ddc1, =
=C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_0, d=
stblk: ep2, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # RF B RX2<br>=C2=
=A0 - { srcblk: radio1, srcport: out_1, dstblk: ddc1, =C2=A0 dstport: in_1 =
}<br>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 =
=C2=A0dstport: in0 =C2=A0}<br>=C2=A0 #<br>=C2=A0 # Replay Connections<br>=
=C2=A0 - { srcblk: ep4, =C2=A0 =C2=A0 srcport: out0, =C2=A0dstblk: replay0,=
 dstport: in_0 }<br>=C2=A0 - { srcblk: replay0, srcport: out_0, dstblk: ep4=
, =C2=A0 =C2=A0 dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep5, =C2=A0 =C2=
=A0 srcport: out0, =C2=A0dstblk: replay0, dstport: in_1 }<br>=C2=A0 - { src=
blk: replay0, srcport: out_1, dstblk: ep5, =C2=A0 =C2=A0 dstport: in0 =C2=
=A0}<br>=C2=A0 #<br>=C2=A0 # Keep-1-in-N Connections<br>=C2=A0 - { srcblk: =
ep6, =C2=A0 =C2=A0 srcport: out0, =C2=A0dstblk: keep1, dstport: in_0 }<br>=
=C2=A0 - { srcblk: keep1, =C2=A0 =C2=A0srcport: out_0, dstblk: ep6, =C2=A0 =
dstport: in0 =C2=A0}<br>=C2=A0 #<br>=C2=A0 # BSP Connections<br>=C2=A0 - { =
srcblk: radio0, =C2=A0 srcport: ctrlport, dstblk: _device_, dstport: ctrlpo=
rt_radio0 }<br>=C2=A0 - { srcblk: radio1, =C2=A0 srcport: ctrlport, dstblk:=
 _device_, dstport: ctrlport_radio1 }<br>=C2=A0 - { srcblk: replay0, =C2=A0=
srcport: axi_ram, =C2=A0dstblk: _device_, dstport: dram =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: radio0, =
=C2=A0 dstblk: radio0, =C2=A0 dstport: radio =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>=C2=A0 - { srcblk: _device_, srcport: radio1, =C2=A0 dstblk: ra=
dio1, =C2=A0 dstport: radio =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =
- { srcblk: _device_, srcport: time, =C2=A0 =C2=A0 dstblk: radio0, =C2=A0 d=
stport: time =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>=C2=A0 - { srcbl=
k: _device_, srcport: time, =C2=A0 =C2=A0 dstblk: radio1, =C2=A0 dstport: t=
ime =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br><br># A list of all clock=
 domain connections in design<br># ----------------------------------------=
--------<br># Format: A list of connection maps (list of key-value pairs) w=
ith the following keys<br># =C2=A0 - srcblk =C2=A0=3D Source block to conne=
ct (Always &quot;_device&quot;_)<br># =C2=A0 - srcport =3D Clock domain on =
the source block to connect<br># =C2=A0 - dstblk =C2=A0=3D Destination bloc=
k to connect<br># =C2=A0 - dstport =3D Clock domain on the destination bloc=
k to connect<br>clk_domains:<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport=
: radio, dstblk: radio0, dstport: radio }<br>=C2=A0 =C2=A0 - { srcblk: _dev=
ice_, srcport: ce, =C2=A0 =C2=A0dstblk: ddc0, =C2=A0 dstport: ce =C2=A0 =C2=
=A0}<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstbl=
k: duc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _de=
vice_, srcport: radio, dstblk: radio1, dstport: radio }<br>=C2=A0 =C2=A0 - =
{ srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk: ddc1, =C2=A0 dstport:=
 ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=
=A0 =C2=A0dstblk: duc1, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 =
- { srcblk: _device_, srcport: dram, =C2=A0dstblk: replay0, dstport: mem =
=C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0ds=
tblk: keep1, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br><br>This is my modified y=
ml file, is there something I need to work on the vivado end to fix these i=
ssues??<br><br>Thanks<div>Yash</div></div>

--000000000000a98e470611ebc99c--

--===============6651767247487808376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6651767247487808376==--
