Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C07225CD8A
	for <lists+usrp-users@lfdr.de>; Fri,  4 Sep 2020 00:28:17 +0200 (CEST)
Received: from [::1] (port=58588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDxiI-0001gD-Lm; Thu, 03 Sep 2020 18:28:14 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:41489)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kDxiE-0001Zm-An
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 18:28:10 -0400
Received: by mail-ot1-f46.google.com with SMTP id a65so4187678otc.8
 for <usrp-users@lists.ettus.com>; Thu, 03 Sep 2020 15:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=rkhI42Q/+hVOaxSfw9BD0izH00o58GJj9fuUrALadSE=;
 b=hEeydtXHon1SadI5/EW55FAdi+ZEF+kFjJDP4XLJ5al+yLSU7q40O7E85QQRFQYdAh
 agGPZ/eLbixd7wJyrhTJ0z+QhxgkMfV6FVmu2ZlqZ8hnC/TbaT/fB+7e1HWtaQ422dwm
 ZpmLPCsHp9tKAQueFKL7+HAnE4iy0yh9D+Z4dwVT4RwtSelAFVXA1PNzLA4J3i0tv39Z
 UKvyIlhMFDQN9P48u5LtbiLNF6TnwHcbJjFQQIozMrtD8PjJSgUfjlqmxJwlSeU2Pi5H
 tlgl/r6A5YiKFTUo7y1ZOGPliokEtO8n1fw8ji3qhXbeUH6C34Od9r0C9NKj07kvcmy0
 5qrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rkhI42Q/+hVOaxSfw9BD0izH00o58GJj9fuUrALadSE=;
 b=FAPJjB1p+CQ2nPSSVieAcITBfqNrZGKVA+5v4rppMOrW5Pj8COFGKSf8qPmhVpE192
 md+c2+S13T5V5tnxJ3GbHNtDLmuXe4ZA0VkOMqyJb7ek+QXGTSjbmSqY8Az/zpAk/l90
 gn9sIw7IrfCUcc7ChERFCpoTPz/ibuqhpN9vLiejfLX0tI6VnoFGx62K5Z/GeYt1tbjo
 nMVWr37kOifhFaUeQUCh0GyBXgLr5TpwsKjGf0qL++bMsChtuDAhZ6sHkTVqbDloDtER
 IWD2YzPAVIb+q3xjH152tJ5tabnmWKXVlRwV/cWsXfarzahOrPd3AgMv6q1YWe300ub4
 HQMQ==
X-Gm-Message-State: AOAM530i4X3W6eYDec3ei3ndsM50WlwTs0Mf1kDvGg+ijBaoWnvRoAsG
 1RK6AnBEAjeKT+CK6x4iK/uogBTiXhwxakofW0p2vSSdojjpKQ==
X-Google-Smtp-Source: ABdhPJypsHLPnegUCV81MSH14wodKohlh2vVl1mJNJMDGtowB+J7qoykFChYBreEGe8uBCmm0/2O80GrVAGNb/k/B8Y=
X-Received: by 2002:a9d:5a9:: with SMTP id 38mr3369925otd.58.1599172049059;
 Thu, 03 Sep 2020 15:27:29 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 3 Sep 2020 18:27:18 -0400
Message-ID: <CAB__hTTxYJoOW1Sk64CGui+1iH7P+i_frNjrF8RbyO4TunUeOA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Using Replay block in UHD-4.0
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
Content-Type: multipart/mixed; boundary="===============0839876300006337869=="
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

--===============0839876300006337869==
Content-Type: multipart/alternative; boundary="000000000000eba7b605ae7041e3"

--000000000000eba7b605ae7041e3
Content-Type: text/plain; charset="UTF-8"

Hi,
I am having trouble using rfnoc_replay_samples_from_file with a custom FPGA
image I built (N310 XG - UHD-4.0). I used rfnoc_image_builder and manually
modified the yml (see below) to include two 2-channel Replay blocks in
addition to the default statically linked blocks. When I try to run the
rfnoc_replay_samples_from_file example, I get the following error.  Any
ideas?
Rob

// ************* rfnoc_samples_from_file output **************
$ rfnoc_replay_samples_from_file --args="addr=192.168.61.2" --file
/media/ramfolder/tx_0.dat --freq 2400e6 --rate 125e6
...
Replay file size:     32768 bytes (4096 qwords, 8192 samples)
Record base address:  0x0
Record buffer size:   32768 bytes
Record fullness:      0 bytes

Emptying record buffer...
Record fullness:      0 bytes

Sending data to be recorded...
ERROR: Unable to send 8192 samples


// *************  yml file used in rfnoc_image_builder ************
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

--000000000000eba7b605ae7041e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am having trouble using rfnoc_replay_samples=
_from_file with a custom FPGA image I built (N310 XG - UHD-4.0). I used rfn=
oc_image_builder and manually modified the yml (see below) to include two 2=
-channel Replay blocks in addition to the default statically linked blocks.=
 When I try to run the rfnoc_replay_samples_from_file example, I get the fo=
llowing error.=C2=A0 Any ideas?</div><div>Rob</div><div><font face=3D"monos=
pace"><br></font></div><div><font face=3D"monospace">// ************* rfnoc=
_samples_from_file output **************</font></div><div><font face=3D"mon=
ospace">$=C2=A0</font>rfnoc_replay_samples_from_file --args=3D&quot;addr=3D=
192.168.61.2&quot; --file /media/ramfolder/tx_0.dat --freq 2400e6 --rate 12=
5e6</div><div>...</div><div><font face=3D"monospace">Replay file size: =C2=
=A0 =C2=A0 32768 bytes (4096 qwords, 8192 samples)<br>Record base address: =
=C2=A00x0<br>Record buffer size: =C2=A0 32768 bytes<br>Record fullness: =C2=
=A0 =C2=A0 =C2=A00 bytes<br><br>Emptying record buffer...<br>Record fullnes=
s: =C2=A0 =C2=A0 =C2=A00 bytes<br><br>Sending data to be recorded...<br>ERR=
OR: Unable to send 8192 samples<br></font></div><div><font face=3D"monospac=
e"><br></font></div><div><br></div><div><font face=3D"monospace">// *******=
******=C2=A0 yml file used in rfnoc_image_builder ************</font></div>=
<div><div><font face=3D"monospace"># General parameters<br># --------------=
---------------------------<br>schema: rfnoc_imagebuilder_args =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Identifier for the schema used to validate this file<br=
>copyright: &#39;Ettus Research, A National Instruments Brand&#39; # Copyri=
ght information used in file headers<br>license: &#39;SPDX-License-Identifi=
er: LGPL-3.0-or-later&#39; # License information used in file headers<br>ve=
rsion: 1.0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# File version<br>rfnoc_version: 1.0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# =
RFNoC protocol version<br>chdr_width: 64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Bit width of the =
CHDR bus for this image<br>device: &#39;n310&#39;<br>default_target: &#39;N=
310_XG&#39;<br><br># A list of all stream endpoints in design<br># --------=
--------------------------------<br>stream_endpoints:<br>=C2=A0 ep0: =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # St=
ream endpoint name<br>=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control t=
raffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=
=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep1: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoi=
nt name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0=
 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_si=
ze: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress =
buffer size for data<br>=C2=A0 ep2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=
=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for d=
ata<br>=C2=A0 ep3: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # End=
point passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passe=
s data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep4=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes cont=
rol traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=
=C2=A0 =C2=A0 buff_size: 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep5: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream=
 endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br=
>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 =
buff_size: 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# Ingress buffer size for data<br>=C2=A0 ep6: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name=
<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0=
 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 256=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress bu=
ffer size for data<br>=C2=A0 ep7: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0=
 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# =
Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 256 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for d=
ata<br><br># A list of all NoC blocks in design<br># ----------------------=
------------<br>noc_blocks:<br>=C2=A0 duc0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NoC block name<br>=C2=A0 =C2=
=A0 block_desc: &#39;duc.yml&#39; =C2=A0 =C2=A0# Block device descriptor fi=
le<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=
=A0 ddc0:<br>=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>=C2=A0 =C2=A0 p=
arameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 radio0:<br>=C2=A0=
 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>=C2=A0 duc1:<br>=C2=A0 =C2=
=A0 block_desc: &#39;duc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =
=C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 ddc1:<br>=C2=A0 =C2=A0 block_desc: &#3=
9;ddc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_POR=
TS: 2<br>=C2=A0 radio1:<br>=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#3=
9;<br>=C2=A0 replay0:<br>=C2=A0 =C2=A0 block_desc: &#39;replay.yml&#39;<br>=
=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 =
=C2=A0 =C2=A0 MEM_DATA_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br>=C2=
=A0 replay1:<br>=C2=A0 =C2=A0 block_desc: &#39;replay.yml&#39;<br>=C2=A0 =
=C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 =C2=A0 =
=C2=A0 MEM_DATA_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br><br># A lis=
t of all static connections in design<br># --------------------------------=
----------<br># Format: A list of connection maps (list of key-value pairs)=
 with the following keys<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=
=3D Source block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D =
Port on the source block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstb=
lk =C2=A0=3D Destination block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
- dstport =3D Port on the destination block to connect<br>connections:<br>=
=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc0, =C2=
=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_0, dstb=
lk: radio0, dstport: in_0 }<br>=C2=A0 - { srcblk: radio0, srcport: out_0, d=
stblk: ddc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcp=
ort: out_0, dstblk: ep0, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { sr=
cblk: ep1, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc0, =C2=A0 dstport: =
in_1 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_1, dstblk: radio0, d=
stport: in_1 }<br>=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: ddc0, =
=C2=A0 dstport: in_1 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_1, d=
stblk: ep1, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep2, =
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
=A0 dstblk: replay1,dstport: mem =C2=A0 }<br></font></div><div class=3D"gma=
il-yj6qo"></div><div class=3D"gmail-adL"><br></div></div></div>

--000000000000eba7b605ae7041e3--


--===============0839876300006337869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0839876300006337869==--

