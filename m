Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0C1A9753F
	for <lists+usrp-users@lfdr.de>; Tue, 22 Apr 2025 21:17:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95379385429
	for <lists+usrp-users@lfdr.de>; Tue, 22 Apr 2025 15:17:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745349443; bh=f9ehZIcft6lih//W31BoxTX0htnAFEKAlCDZkaam37k=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cUr0SH+8gautUbYmID+yuyABxKMjA0SWp0AXQo6RQG4TeimxTJyUJTouFG9L37fB5
	 id1r6QZBqZ5wINgKVoKIdOMNMOEmIode5mgkwd3uNhLYenKkirstaWnGKmejI5jfWp
	 j0uGXRNKln8qt9MCBxmCVDSXUAH5DP70wZX5RBRgVfPQRzFf8D22cXfkOQ34u7gjpO
	 fAidLGLhcoZ4CI73lCnG/Wr1yYvCAhRFgDNq34Dt7w8btrFkiS7Cm8Ef9ssdOfpIz+
	 EOfdhVm6kV2ECzUOtEXIaaD4yK2U1Z4c1JFx97f5ocS2sOsQWicLprqIMuk1D9RofI
	 KiBQDXFyve62w==
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 803D9385069
	for <usrp-users@lists.ettus.com>; Tue, 22 Apr 2025 15:17:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NyzYLLNT";
	dkim-atps=neutral
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54d42884842so7186556e87.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Apr 2025 12:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745349419; x=1745954219; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dDFZmLzgg4KeBLiSvCeiskaIv6FgzNNzDg+JJmI3zlI=;
        b=NyzYLLNT5yCeTa+beMC9h/TBtQ+A3VRy2/BFkWevqC7giLtZU7c6mT7WJYSpYQNGq6
         5WGuAr1BAIzJCgCCRTY19y+zi1FehWGtdkYxP15ZXJVNiv7ZQM8MmFQ5M01kMRtae3Iy
         +SCtTyIb1sbnQ7+bqNi4MHQi/stZnTsq3nNA/SsGJK5gXa6t1Ndk/D44VsfFBgEVFP6i
         5DB2PEUtOQRk8QH9Sdd+PUS2qEpFSC5/JK4sbpJ6IaWYLgnTyAXw2dxEyx+UeJJq5f5V
         Oc8rQ7UUzxGBkOb9BIdxXHI7jGYRSGtP+vO640bD1FwEvzRKefo8NZ5khrSM80wvHZUx
         tpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745349419; x=1745954219;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dDFZmLzgg4KeBLiSvCeiskaIv6FgzNNzDg+JJmI3zlI=;
        b=pMY8in0npvxkJQK0rA6BrOjcLUwGNdaTkmaz8EWnsaZeBZc/ealWUfWcRcBoucBiEE
         PBe5eHbBP04iqDonIn/xqAwFHF5sNaG4UrRBTMGIf1Sds0WHdLz9kt0i7HSoJKun4Kg/
         C86hzOQSKsCdIuYlV2wBrONUxpNFAW+4Cb7vGBVHXV4itgqgUSJuy0gP5LhIHSJAMuwy
         YOJFybnTTSN99KTL5uBtxumiIrzquRkX1LErJS6HN5mYqkG7EcnsVccoYdxw/ijf3OG5
         zFIypubtCp0CXe6IfcByqQoHddzsKdAn3XSnXaJW9kqen4bdCsd5amt0LOiWXJB2GaCv
         00fA==
X-Gm-Message-State: AOJu0YxJ8mOX5j8zu2ej8ugQT3oBhF+oUT7Uq0C6x8lTsCosFcud8lWN
	pRvNeIsrVLNwNpCqz75gqveb0HA2P30Kqmr/xA+5V0TykBc3f8Shq96CSNwXJYULoO51qrZ1S47
	ZxLXHhbqYfGL2TvsaRYczeLJy1Sm4VugZ0F+h2IdT
X-Gm-Gg: ASbGncsZ0W8vYiDRgfxhaMcmGO9QzhvJAaVBuocPVKHNrqffh3teIcO9arfS+c3Sb6e
	lYkSGIW76IItlaIVhSnxH8GoVjeyfZAX1nQEnsXJxkJ8FbZguOW3f44kN8ExkmO1wROeTnbAeVu
	CYxJrTfcM6krDHguSysUzB9A==
X-Google-Smtp-Source: AGHT+IHKi6Km48xYrlITwqdq3UdX9JRMc3KAJbH6kOMrT72b83rpul4n4Bc5exaL0ZnOONFRjT26omn4KbU8fhdl8Jc=
X-Received: by 2002:a05:651c:158d:b0:30d:e104:d64a with SMTP id
 38308e7fff4ca-31090578048mr54202381fa.38.1745349418308; Tue, 22 Apr 2025
 12:16:58 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 22 Apr 2025 22:46:46 +0330
X-Gm-Features: ATxdqUGqTIkMfbFfStflhDQTAYloxOj5_Ato8dluchgtxedtCBDazvWX07LW7gs
Message-ID: <CAA=S3Pu8SFzGudO-BRav6JMVQS2s61uzxHMta9RNcw3AKCh_xw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ZWCYFMKHSHOWZKSVUEO6QXPSFPWXSAZL
X-Message-ID-Hash: ZWCYFMKHSHOWZKSVUEO6QXPSFPWXSAZL
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] When i removed rfnoc block in YML file USRP FPGA image, it is not released resources for rfnoc block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZWCYFMKHSHOWZKSVUEO6QXPSFPWXSAZL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8095947306266112482=="

--===============8095947306266112482==
Content-Type: multipart/alternative; boundary="000000000000165ba5063362d481"

--000000000000165ba5063362d481
Content-Type: text/plain; charset="UTF-8"

When i removed rfnoc block in YML file USRP FPGA image, it is not released
resources for rfnoc block.My question is how can release some resource on
FPGA in USRP image with removing some extra RFNOC block like DUC or DCC.
Why remove rfnoc block on YML file don't have any effect on reducing FPGA
resource!!

Thanks in advance

# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args # Identifier for the schema used to
validate this file
copyright: 'Ettus Research, A National Instruments Brand' # Copyright
information used in file headers
license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License information
used in file headers
version: '1.0' # File version
rfnoc_version: '1.0' # RFNoC protocol version
chdr_width: 64 # Bit width of the CHDR bus for this image
device: 'x300'
default_target: 'X300_HG'

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
ep0: # Stream endpoint name
ctrl: True # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 32768 # Ingress buffer size for data
ep1: # Stream endpoint name
ctrl: False # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 0 # Ingress buffer size for data
ep2: # Stream endpoint name
ctrl: False # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 32768 # Ingress buffer size for data
ep3: # Stream endpoint name
ctrl: False # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 0 # Ingress buffer size for data
ep4: # Stream endpoint name
ctrl: False # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 4096 # Ingress buffer size for data
ep5: # Stream endpoint name
ctrl: False # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 4096 # Ingress buffer size for data

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
duc0: # NoC block name
block_desc: 'duc.yml' # Block device descriptor file
parameters:
NUM_PORTS: 1
ddc0:
block_desc: 'ddc.yml'
parameters:
NUM_PORTS: 2
radio0:
block_desc: 'radio_2x64.yml'
duc1:
block_desc: 'duc.yml'
parameters:
NUM_PORTS: 1
ddc1:# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args         # Identifier for the schema used to
validate this file
copyright: 'Ettus Research, A National Instruments Brand' # Copyright
information used in file headers
license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License information
used in file headers
version: '1.0'                          # File version
rfnoc_version: '1.0'                    # RFNoC protocol version
chdr_width: 64                          # Bit width of the CHDR bus for
this image
device: 'x300'
default_target: 'X300_HG'

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
    buff_size: 0                    # Ingress buffer size for data
  ep2:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep3:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 0                    # Ingress buffer size for data
  ep4:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 4096                 # Ingress buffer size for data
  ep5:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 4096                 # Ingress buffer size for data

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  duc0:                      # NoC block name
    block_desc: 'duc.yml'    # Block device descriptor file
    parameters:
      NUM_PORTS: 1
  ddc0:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  radio0:
    block_desc: 'radio_2x64.yml'
  duc1:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 1
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
  # ep0 to radio0(0) - RFA TX
  - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # radio(0) to ep0 - RFA RX
  - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
  - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
  # radio0(1) to ep1 - RFA RX
  - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
  - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
  # ep2 to radio1(0) - RFA TX
  - { srcblk: ep2,    srcport: out0,  dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  # radio1(0) to ep2 - RFA RX
  - { srcblk: radio1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
  - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
  # radio0(1) to ep3 - RFA RX
  - { srcblk: radio1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
  - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
  # ep4 to replay0(0)
  - { srcblk: ep4,     srcport: out0,  dstblk: replay0, dstport: in_0 }
  # replay0(0) to ep4
  - { srcblk: replay0, srcport: out_0, dstblk: ep4,     dstport: in0  }
  # ep5 to replay0(1)
  - { srcblk: ep5,     srcport: out0,  dstblk: replay0, dstport: in_1 }
  # replay0(1) to ep5
  - { srcblk: replay0, srcport: out_1, dstblk: ep5,     dstport: in0  }
  # BSP Connections
  - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio0 }
  - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio1 }
  - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }
  - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
x300_radio }
  - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:
x300_radio }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
time_keeper }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:
time_keeper }

# A list of all clock domain connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#         - srcblk  = Source block to connect (Always "_device"_)
#         - srcport = Clock domain on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Clock domain on the destination block to connect
clk_domains:
  - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
  - { srcblk: _device_, srcport: ce,    dstblk: ddc0,   dstport: ce    }
  - { srcblk: _device_, srcport: ce,    dstblk: duc0,   dstport: ce    }
  - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
  - { srcblk: _device_, srcport: ce,    dstblk: ddc1,   dstport: ce    }
  - { srcblk: _device_, srcport: ce,    dstblk: duc1,   dstport: ce    }
  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem  }
block_desc: 'ddc.yml'
parameters:
NUM_PORTS: 2
radio1:
block_desc: 'radio_2x64.yml'
replay0:
block_desc: 'replay.yml'
parameters:
NUM_PORTS: 2
MEM_ADDR_W: 30

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
# - srcblk = Source block to connect
# - srcport = Port on the source block to connect
# - dstblk = Destination block to connect
# - dstport = Port on the destination block to connect
connections:
# ep0 to radio0(0) - RFA TX
- { srcblk: ep0, srcport: out0, dstblk: duc0, dstport: in_0 }
- { srcblk: duc0, srcport: out_0, dstblk: radio0, dstport: in_0 }
# radio(0) to ep0 - RFA RX
- { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
- { srcblk: ddc0, srcport: out_0, dstblk: ep0, dstport: in0 }
# radio0(1) to ep1 - RFA RX
- { srcblk: radio0, srcport: out_1, dstblk: ddc0, dstport: in_1 }
- { srcblk: ddc0, srcport: out_1, dstblk: ep1, dstport: in0 }
# ep2 to radio1(0) - RFA TX
- { srcblk: ep2, srcport: out0, dstblk: duc1, dstport: in_0 }
- { srcblk: duc1, srcport: out_0, dstblk: radio1, dstport: in_0 }
# radio1(0) to ep2 - RFA RX
- { srcblk: radio1, srcport: out_0, dstblk: ddc1, dstport: in_0 }
- { srcblk: ddc1, srcport: out_0, dstblk: ep2, dstport: in0 }
# radio0(1) to ep3 - RFA RX
- { srcblk: radio1, srcport: out_1, dstblk: ddc1, dstport: in_1 }
- { srcblk: ddc1, srcport: out_1, dstblk: ep3, dstport: in0 }
# ep4 to replay0(0)
- { srcblk: ep4, srcport: out0, dstblk: replay0, dstport: in_0 }
# replay0(0) to ep4
- { srcblk: replay0, srcport: out_0, dstblk: ep4, dstport: in0 }
# ep5 to replay0(1)
- { srcblk: ep5, srcport: out0, dstblk: replay0, dstport: in_1 }
# replay0(1) to ep5
- { srcblk: replay0, srcport: out_1, dstblk: ep5, dstport: in0 }
# BSP Connections
- { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio0 }
- { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio1 }
- { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }
- { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
x300_radio }
- { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:
x300_radio }
- { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
time_keeper }
- { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:
time_keeper }

# A list of all clock domain connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
# - srcblk = Source block to connect (Always "_device"_)
# - srcport = Clock domain on the source block to connect
# - dstblk = Destination block to connect
# - dstport = Clock domain on the destination block to connect
clk_domains:
- { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
- { srcblk: _device_, srcport: ce, dstblk: ddc0, dstport: ce }
- { srcblk: _device_, srcport: ce, dstblk: duc0, dstport: ce }
- { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
- { srcblk: _device_, srcport: ce, dstblk: ddc1, dstport: ce }
- { srcblk: _device_, srcport: ce, dstblk: duc1, dstport: ce }
- { srcblk: _device_, srcport: dram, dstblk: replay0, dstport: mem }

--000000000000165ba5063362d481
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When i removed rfnoc block in YML file USRP FPGA image, it=
 is not released resources for rfnoc block.My question=C2=A0is how can rele=
ase some resource on FPGA in USRP image with removing some extra RFNOC bloc=
k like DUC or DCC.=C2=A0<br><div>Why remove rfnoc block on YML file don&#39=
;t have any effect on reducing=C2=A0FPGA resource!!=C2=A0</div><div><br></d=
iv><div>Thanks in advance</div><div><br></div><div><div style=3D"color:rgb(=
0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monosp=
ace;font-size:12px;line-height:16px;white-space:pre"><div><span style=3D"co=
lor:rgb(0,128,0)"># General parameters</span></div><div><span style=3D"colo=
r:rgb(0,128,0)"># -----------------------------------------</span></div><di=
v><span style=3D"color:rgb(128,0,0)">schema</span>: <span style=3D"color:rg=
b(0,0,255)">rfnoc_imagebuilder_args</span>         <span style=3D"color:rgb=
(0,128,0)"># Identifier for the schema used to validate this file</span></d=
iv><div><span style=3D"color:rgb(128,0,0)">copyright</span>: <span style=3D=
"color:rgb(0,0,255)">&#39;Ettus Research, A National Instruments Brand&#39;=
</span> <span style=3D"color:rgb(0,128,0)"># Copyright information used in =
file headers</span></div><div><span style=3D"color:rgb(128,0,0)">license</s=
pan>: <span style=3D"color:rgb(0,0,255)">&#39;SPDX-License-Identifier: LGPL=
-3.0-or-later&#39;</span> <span style=3D"color:rgb(0,128,0)"># License info=
rmation used in file headers</span></div><div><span style=3D"color:rgb(128,=
0,0)">version</span>: <span style=3D"color:rgb(0,0,255)">&#39;1.0&#39;</spa=
n>                          <span style=3D"color:rgb(0,128,0)"># File versi=
on</span></div><div><span style=3D"color:rgb(128,0,0)">rfnoc_version</span>=
: <span style=3D"color:rgb(0,0,255)">&#39;1.0&#39;</span>                  =
  <span style=3D"color:rgb(0,128,0)"># RFNoC protocol version</span></div><=
div><span style=3D"color:rgb(128,0,0)">chdr_width</span>: <span style=3D"co=
lor:rgb(9,134,88)">64</span>                          <span style=3D"color:=
rgb(0,128,0)"># Bit width of the CHDR bus for this image</span></div><div><=
span style=3D"color:rgb(128,0,0)">device</span>: <span style=3D"color:rgb(0=
,0,255)">&#39;x300&#39;</span></div><div><span style=3D"color:rgb(128,0,0)"=
>default_target</span>: <span style=3D"color:rgb(0,0,255)">&#39;X300_HG&#39=
;</span></div><br><div><span style=3D"color:rgb(0,128,0)"># A list of all s=
tream endpoints in design</span></div><div><span style=3D"color:rgb(0,128,0=
)"># ----------------------------------------</span></div><div><span style=
=3D"color:rgb(128,0,0)">stream_endpoints</span>:</div><div>  <span style=3D=
"color:rgb(128,0,0)">ep0</span>:                       <span style=3D"color=
:rgb(0,128,0)"># Stream endpoint name</span></div><div>    <span style=3D"c=
olor:rgb(128,0,0)">ctrl</span>: <span style=3D"color:rgb(0,0,255)">True</sp=
an>                      <span style=3D"color:rgb(0,128,0)"># Endpoint pass=
es control traffic</span></div><div>    <span style=3D"color:rgb(128,0,0)">=
data</span>: <span style=3D"color:rgb(0,0,255)">True</span>                =
      <span style=3D"color:rgb(0,128,0)"># Endpoint passes data traffic</sp=
an></div><div>    <span style=3D"color:rgb(128,0,0)">buff_size</span>: <spa=
n style=3D"color:rgb(9,134,88)">32768</span>                <span style=3D"=
color:rgb(0,128,0)"># Ingress buffer size for data</span></div><div>  <span=
 style=3D"color:rgb(128,0,0)">ep1</span>:                       <span style=
=3D"color:rgb(0,128,0)"># Stream endpoint name</span></div><div>    <span s=
tyle=3D"color:rgb(128,0,0)">ctrl</span>: <span style=3D"color:rgb(0,0,255)"=
>False</span>                     <span style=3D"color:rgb(0,128,0)"># Endp=
oint passes control traffic</span></div><div>    <span style=3D"color:rgb(1=
28,0,0)">data</span>: <span style=3D"color:rgb(0,0,255)">True</span>       =
               <span style=3D"color:rgb(0,128,0)"># Endpoint passes data tr=
affic</span></div><div>    <span style=3D"color:rgb(128,0,0)">buff_size</sp=
an>: <span style=3D"color:rgb(9,134,88)">0</span>                    <span =
style=3D"color:rgb(0,128,0)"># Ingress buffer size for data</span></div><di=
v>  <span style=3D"color:rgb(128,0,0)">ep2</span>:                       <s=
pan style=3D"color:rgb(0,128,0)"># Stream endpoint name</span></div><div>  =
  <span style=3D"color:rgb(128,0,0)">ctrl</span>: <span style=3D"color:rgb(=
0,0,255)">False</span>                     <span style=3D"color:rgb(0,128,0=
)"># Endpoint passes control traffic</span></div><div>    <span style=3D"co=
lor:rgb(128,0,0)">data</span>: <span style=3D"color:rgb(0,0,255)">True</spa=
n>                      <span style=3D"color:rgb(0,128,0)"># Endpoint passe=
s data traffic</span></div><div>    <span style=3D"color:rgb(128,0,0)">buff=
_size</span>: <span style=3D"color:rgb(9,134,88)">32768</span>             =
   <span style=3D"color:rgb(0,128,0)"># Ingress buffer size for data</span>=
</div><div>  <span style=3D"color:rgb(128,0,0)">ep3</span>:                =
       <span style=3D"color:rgb(0,128,0)"># Stream endpoint name</span></di=
v><div>    <span style=3D"color:rgb(128,0,0)">ctrl</span>: <span style=3D"c=
olor:rgb(0,0,255)">False</span>                     <span style=3D"color:rg=
b(0,128,0)"># Endpoint passes control traffic</span></div><div>    <span st=
yle=3D"color:rgb(128,0,0)">data</span>: <span style=3D"color:rgb(0,0,255)">=
True</span>                      <span style=3D"color:rgb(0,128,0)"># Endpo=
int passes data traffic</span></div><div>    <span style=3D"color:rgb(128,0=
,0)">buff_size</span>: <span style=3D"color:rgb(9,134,88)">0</span>        =
            <span style=3D"color:rgb(0,128,0)"># Ingress buffer size for da=
ta</span></div><div>  <span style=3D"color:rgb(128,0,0)">ep4</span>:       =
                <span style=3D"color:rgb(0,128,0)"># Stream endpoint name</=
span></div><div>    <span style=3D"color:rgb(128,0,0)">ctrl</span>: <span s=
tyle=3D"color:rgb(0,0,255)">False</span>                     <span style=3D=
"color:rgb(0,128,0)"># Endpoint passes control traffic</span></div><div>   =
 <span style=3D"color:rgb(128,0,0)">data</span>: <span style=3D"color:rgb(0=
,0,255)">True</span>                      <span style=3D"color:rgb(0,128,0)=
"># Endpoint passes data traffic</span></div><div>    <span style=3D"color:=
rgb(128,0,0)">buff_size</span>: <span style=3D"color:rgb(9,134,88)">4096</s=
pan>                 <span style=3D"color:rgb(0,128,0)"># Ingress buffer si=
ze for data</span></div><div>  <span style=3D"color:rgb(128,0,0)">ep5</span=
>:                       <span style=3D"color:rgb(0,128,0)"># Stream endpoi=
nt name</span></div><div>    <span style=3D"color:rgb(128,0,0)">ctrl</span>=
: <span style=3D"color:rgb(0,0,255)">False</span>                     <span=
 style=3D"color:rgb(0,128,0)"># Endpoint passes control traffic</span></div=
><div>    <span style=3D"color:rgb(128,0,0)">data</span>: <span style=3D"co=
lor:rgb(0,0,255)">True</span>                      <span style=3D"color:rgb=
(0,128,0)"># Endpoint passes data traffic</span></div><div>    <span style=
=3D"color:rgb(128,0,0)">buff_size</span>: <span style=3D"color:rgb(9,134,88=
)">4096</span>                 <span style=3D"color:rgb(0,128,0)"># Ingress=
 buffer size for data</span></div><br><div><span style=3D"color:rgb(0,128,0=
)"># A list of all NoC blocks in design</span></div><div><span style=3D"col=
or:rgb(0,128,0)"># ----------------------------------</span></div><div><spa=
n style=3D"color:rgb(128,0,0)">noc_blocks</span>:</div><div>  <span style=
=3D"color:rgb(128,0,0)">duc0</span>:                      <span style=3D"co=
lor:rgb(0,128,0)"># NoC block name</span></div><div>    <span style=3D"colo=
r:rgb(128,0,0)">block_desc</span>: <span style=3D"color:rgb(0,0,255)">&#39;=
duc.yml&#39;</span>    <span style=3D"color:rgb(0,128,0)"># Block device de=
scriptor file</span></div><div>    <span style=3D"color:rgb(128,0,0)">param=
eters</span>:</div><div>      <span style=3D"color:rgb(128,0,0)">NUM_PORTS<=
/span>: <span style=3D"color:rgb(9,134,88)">1</span></div><div>  <span styl=
e=3D"color:rgb(128,0,0)">ddc0</span>:</div><div>    <span style=3D"color:rg=
b(128,0,0)">block_desc</span>: <span style=3D"color:rgb(0,0,255)">&#39;ddc.=
yml&#39;</span></div><div>    <span style=3D"color:rgb(128,0,0)">parameters=
</span>:</div><div>      <span style=3D"color:rgb(128,0,0)">NUM_PORTS</span=
>: <span style=3D"color:rgb(9,134,88)">2</span></div><div>  <span style=3D"=
color:rgb(128,0,0)">radio0</span>:</div><div>    <span style=3D"color:rgb(1=
28,0,0)">block_desc</span>: <span style=3D"color:rgb(0,0,255)">&#39;radio_2=
x64.yml&#39;</span></div><div>  <span style=3D"color:rgb(128,0,0)">duc1</sp=
an>:</div><div>    <span style=3D"color:rgb(128,0,0)">block_desc</span>: <s=
pan style=3D"color:rgb(0,0,255)">&#39;duc.yml&#39;</span></div><div>    <sp=
an style=3D"color:rgb(128,0,0)">parameters</span>:</div><div>      <span st=
yle=3D"color:rgb(128,0,0)">NUM_PORTS</span>: <span style=3D"color:rgb(9,134=
,88)">1</span></div><div>  <span style=3D"color:rgb(128,0,0)">ddc1</span>:#=
 General parameters</div># -----------------------------------------<br>sch=
ema: rfnoc_imagebuilder_args =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Identifier for t=
he schema used to validate this file<br>copyright: &#39;Ettus Research, A N=
ational Instruments Brand&#39; # Copyright information used in file headers=
<br>license: &#39;SPDX-License-Identifier: LGPL-3.0-or-later&#39; # License=
 information used in file headers<br>version: &#39;1.0&#39; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# File version<br>rfnoc_version: &#39;1.0&#39; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# RFNoC protocol version<br>ch=
dr_width: 64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Bit width of the CHDR bus for this image<br>d=
evice: &#39;x300&#39;<br>default_target: &#39;X300_HG&#39;<br><br># A list =
of all stream endpoints in design<br># ------------------------------------=
----<br>stream_endpoints:<br>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0=
 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>=C2=A0 =C2=A0 data=
: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer siz=
e for data<br>=C2=A0 ep1: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: F=
alse =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
# Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint p=
asses data traffic<br>=C2=A0 =C2=A0 buff_size: 0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data=
<br>=C2=A0 ep2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoi=
nt passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes da=
ta traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep3: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes cont=
rol traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=
=C2=A0 =C2=A0 buff_size: 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep4: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Str=
eam endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic=
<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=
=A0 buff_size: 4096 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 # Ingress buffer size for data<br>=C2=A0 ep5: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=
=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 dat=
a: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 4096 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Ingress buffer si=
ze for data<br><br># A list of all NoC blocks in design<br># --------------=
--------------------<br>noc_blocks:<br>=C2=A0 duc0: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NoC block name<br>=
=C2=A0 =C2=A0 block_desc: &#39;duc.yml&#39; =C2=A0 =C2=A0# Block device des=
criptor file<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS=
: 1<br>=C2=A0 ddc0:<br>=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>=C2=
=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 radio=
0:<br>=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>=C2=A0 duc1:<br=
>=C2=A0 =C2=A0 block_desc: &#39;duc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<b=
r>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 1<br>=C2=A0 ddc1:<br>=C2=A0 =C2=A0 block_=
desc: &#39;ddc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=
=A0 NUM_PORTS: 2<br>=C2=A0 radio1:<br>=C2=A0 =C2=A0 block_desc: &#39;radio_=
2x64.yml&#39;<br>=C2=A0 replay0:<br>=C2=A0 =C2=A0 block_desc: &#39;replay.y=
ml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<b=
r>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br><br># A list of all static connect=
ions in design<br># ------------------------------------------<br># Format:=
 A list of connection maps (list of key-value pairs) with the following key=
s<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=3D Source block to conne=
ct<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Port on the source block =
to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D Destination =
block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Port on the=
 destination block to connect<br>connections:<br>=C2=A0 # ep0 to radio0(0) =
- RFA TX<br>=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out0, =C2=A0dstbl=
k: duc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 srcport:=
 out_0, dstblk: radio0, dstport: in_0 }<br>=C2=A0 # radio(0) to ep0 - RFA R=
X<br>=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk: ddc0, =C2=A0 dstpor=
t: in_0 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_0, dstblk: ep0, =
=C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # radio0(1) to ep1 - RFA RX<br>=
=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: ddc0, =C2=A0 dstport: in=
_1 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_1, dstblk: ep1, =C2=A0=
 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # ep2 to radio1(0) - RFA TX<br>=C2=A0=
 - { srcblk: ep2, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc1, =C2=A0 ds=
tport: in_0 }<br>=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_0, dstblk: ra=
dio1, dstport: in_0 }<br>=C2=A0 # radio1(0) to ep2 - RFA RX<br>=C2=A0 - { s=
rcblk: radio1, srcport: out_0, dstblk: ddc1, =C2=A0 dstport: in_0 }<br>=C2=
=A0 - { srcblk: ddc1, =C2=A0 srcport: out_0, dstblk: ep2, =C2=A0 =C2=A0dstp=
ort: in0 =C2=A0}<br>=C2=A0 # radio0(1) to ep3 - RFA RX<br>=C2=A0 - { srcblk=
: radio1, srcport: out_1, dstblk: ddc1, =C2=A0 dstport: in_1 }<br>=C2=A0 - =
{ srcblk: ddc1, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 =C2=A0dstport: i=
n0 =C2=A0}<br>=C2=A0 # ep4 to replay0(0)<br>=C2=A0 - { srcblk: ep4, =C2=A0 =
=C2=A0 srcport: out0, =C2=A0dstblk: replay0, dstport: in_0 }<br>=C2=A0 # re=
play0(0) to ep4<br>=C2=A0 - { srcblk: replay0, srcport: out_0, dstblk: ep4,=
 =C2=A0 =C2=A0 dstport: in0 =C2=A0}<br>=C2=A0 # ep5 to replay0(1)<br>=C2=A0=
 - { srcblk: ep5, =C2=A0 =C2=A0 srcport: out0, =C2=A0dstblk: replay0, dstpo=
rt: in_1 }<br>=C2=A0 # replay0(1) to ep5<br>=C2=A0 - { srcblk: replay0, src=
port: out_1, dstblk: ep5, =C2=A0 =C2=A0 dstport: in0 =C2=A0}<br>=C2=A0 # BS=
P Connections<br>=C2=A0 - { srcblk: radio0, srcport: ctrl_port, dstblk: _de=
vice_, dstport: ctrlport_radio0 }<br>=C2=A0 - { srcblk: radio1, srcport: ct=
rl_port, dstblk: _device_, dstport: ctrlport_radio1 }<br>=C2=A0 - { srcblk:=
 replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }<br>=C2=A0 - {=
 srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport: x300_radi=
o }<br>=C2=A0 - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, d=
stport: x300_radio }<br>=C2=A0 - { srcblk: _device_, srcport: time_keeper, =
dstblk: radio0, dstport: time_keeper }<br>=C2=A0 - { srcblk: _device_, srcp=
ort: time_keeper, dstblk: radio1, dstport: time_keeper }<br><br># A list of=
 all clock domain connections in design<br># ------------------------------=
------------<br># Format: A list of connection maps (list of key-value pair=
s) with the following keys<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=
=3D Source block to connect (Always &quot;_device&quot;_)<br># =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 - srcport =3D Clock domain on the source block to connect=
<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D Destination block to c=
onnect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Clock domain on the d=
estination block to connect<br>clk_domains:<br>=C2=A0 - { srcblk: _device_,=
 srcport: radio, dstblk: radio0, dstport: radio }<br>=C2=A0 - { srcblk: _de=
vice_, srcport: ce, =C2=A0 =C2=A0dstblk: ddc0, =C2=A0 dstport: ce =C2=A0 =
=C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk: d=
uc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcp=
ort: radio, dstblk: radio1, dstport: radio }<br>=C2=A0 - { srcblk: _device_=
, srcport: ce, =C2=A0 =C2=A0dstblk: ddc1, =C2=A0 dstport: ce =C2=A0 =C2=A0}=
<br>=C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk: duc1, =
=C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: =
dram, =C2=A0dstblk: replay0, dstport: mem =C2=A0}<br><div>    <span style=
=3D"color:rgb(128,0,0)">block_desc</span>: <span style=3D"color:rgb(0,0,255=
)">&#39;ddc.yml&#39;</span></div><div>    <span style=3D"color:rgb(128,0,0)=
">parameters</span>:</div><div>      <span style=3D"color:rgb(128,0,0)">NUM=
_PORTS</span>: <span style=3D"color:rgb(9,134,88)">2</span></div><div>  <sp=
an style=3D"color:rgb(128,0,0)">radio1</span>:</div><div>    <span style=3D=
"color:rgb(128,0,0)">block_desc</span>: <span style=3D"color:rgb(0,0,255)">=
&#39;radio_2x64.yml&#39;</span></div><div>  <span style=3D"color:rgb(128,0,=
0)">replay0</span>:</div><div>    <span style=3D"color:rgb(128,0,0)">block_=
desc</span>: <span style=3D"color:rgb(0,0,255)">&#39;replay.yml&#39;</span>=
</div><div>    <span style=3D"color:rgb(128,0,0)">parameters</span>:</div><=
div>      <span style=3D"color:rgb(128,0,0)">NUM_PORTS</span>: <span style=
=3D"color:rgb(9,134,88)">2</span></div><div>      <span style=3D"color:rgb(=
128,0,0)">MEM_ADDR_W</span>: <span style=3D"color:rgb(9,134,88)">30</span><=
/div><br><div><span style=3D"color:rgb(0,128,0)"># A list of all static con=
nections in design</span></div><div><span style=3D"color:rgb(0,128,0)"># --=
----------------------------------------</span></div><div><span style=3D"co=
lor:rgb(0,128,0)"># Format: A list of connection maps (list of key-value pa=
irs) with the following keys</span></div><div><span style=3D"color:rgb(0,12=
8,0)">#         - srcblk  =3D Source block to connect</span></div><div><spa=
n style=3D"color:rgb(0,128,0)">#         - srcport =3D Port on the source b=
lock to connect</span></div><div><span style=3D"color:rgb(0,128,0)">#      =
   - dstblk  =3D Destination block to connect</span></div><div><span style=
=3D"color:rgb(0,128,0)">#         - dstport =3D Port on the destination blo=
ck to connect</span></div><div><span style=3D"color:rgb(128,0,0)">connectio=
ns</span>:</div><div>  <span style=3D"color:rgb(0,128,0)"># ep0 to radio0(0=
) - RFA TX</span></div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk=
</span>: <span style=3D"color:rgb(0,0,255)">ep0</span>,    <span style=3D"c=
olor:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">out0<=
/span>,  <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"c=
olor:rgb(0,0,255)">duc0</span>,   <span style=3D"color:rgb(128,0,0)">dstpor=
t</span>: <span style=3D"color:rgb(0,0,255)">in_0</span> }</div><div>  - { =
<span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(=
0,0,255)">duc0</span>,   <span style=3D"color:rgb(128,0,0)">srcport</span>:=
 <span style=3D"color:rgb(0,0,255)">out_0</span>, <span style=3D"color:rgb(=
128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">radio0</span>, =
<span style=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb=
(0,0,255)">in_0</span> }</div><div>  <span style=3D"color:rgb(0,128,0)"># r=
adio(0) to ep0 - RFA RX</span></div><div>  - { <span style=3D"color:rgb(128=
,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">radio0</span>, <sp=
an style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,=
0,255)">out_0</span>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <sp=
an style=3D"color:rgb(0,0,255)">ddc0</span>,   <span style=3D"color:rgb(128=
,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">in_0</span> }</di=
v><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=
=3D"color:rgb(0,0,255)">ddc0</span>,   <span style=3D"color:rgb(128,0,0)">s=
rcport</span>: <span style=3D"color:rgb(0,0,255)">out_0</span>, <span style=
=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">e=
p0</span>,    <span style=3D"color:rgb(128,0,0)">dstport</span>: <span styl=
e=3D"color:rgb(0,0,255)">in0</span>  }</div><div>  <span style=3D"color:rgb=
(0,128,0)"># radio0(1) to ep1 - RFA RX</span></div><div>  - { <span style=
=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">r=
adio0</span>, <span style=3D"color:rgb(128,0,0)">srcport</span>: <span styl=
e=3D"color:rgb(0,0,255)">out_1</span>, <span style=3D"color:rgb(128,0,0)">d=
stblk</span>: <span style=3D"color:rgb(0,0,255)">ddc0</span>,   <span style=
=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">=
in_1</span> }</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</sp=
an>: <span style=3D"color:rgb(0,0,255)">ddc0</span>,   <span style=3D"color=
:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">out_1</sp=
an>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color=
:rgb(0,0,255)">ep1</span>,    <span style=3D"color:rgb(128,0,0)">dstport</s=
pan>: <span style=3D"color:rgb(0,0,255)">in0</span>  }</div><div>  <span st=
yle=3D"color:rgb(0,128,0)"># ep2 to radio1(0) - RFA TX</span></div><div>  -=
 { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color:r=
gb(0,0,255)">ep2</span>,    <span style=3D"color:rgb(128,0,0)">srcport</spa=
n>: <span style=3D"color:rgb(0,0,255)">out0</span>,  <span style=3D"color:r=
gb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">duc1</span>,=
   <span style=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"color:=
rgb(0,0,255)">in_0</span> }</div><div>  - { <span style=3D"color:rgb(128,0,=
0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">duc1</span>,   <span =
style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,2=
55)">out_0</span>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span =
style=3D"color:rgb(0,0,255)">radio1</span>, <span style=3D"color:rgb(128,0,=
0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">in_0</span> }</div><=
div>  <span style=3D"color:rgb(0,128,0)"># radio1(0) to ep2 - RFA RX</span>=
</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span st=
yle=3D"color:rgb(0,0,255)">radio1</span>, <span style=3D"color:rgb(128,0,0)=
">srcport</span>: <span style=3D"color:rgb(0,0,255)">out_0</span>, <span st=
yle=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)=
">ddc1</span>,   <span style=3D"color:rgb(128,0,0)">dstport</span>: <span s=
tyle=3D"color:rgb(0,0,255)">in_0</span> }</div><div>  - { <span style=3D"co=
lor:rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">ddc1</s=
pan>,   <span style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"c=
olor:rgb(0,0,255)">out_0</span>, <span style=3D"color:rgb(128,0,0)">dstblk<=
/span>: <span style=3D"color:rgb(0,0,255)">ep2</span>,    <span style=3D"co=
lor:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">in0</s=
pan>  }</div><div>  <span style=3D"color:rgb(0,128,0)"># radio0(1) to ep3 -=
 RFA RX</span></div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</s=
pan>: <span style=3D"color:rgb(0,0,255)">radio1</span>, <span style=3D"colo=
r:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">out_1</s=
pan>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"colo=
r:rgb(0,0,255)">ddc1</span>,   <span style=3D"color:rgb(128,0,0)">dstport</=
span>: <span style=3D"color:rgb(0,0,255)">in_1</span> }</div><div>  - { <sp=
an style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0=
,255)">ddc1</span>,   <span style=3D"color:rgb(128,0,0)">srcport</span>: <s=
pan style=3D"color:rgb(0,0,255)">out_1</span>, <span style=3D"color:rgb(128=
,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">ep3</span>,    <sp=
an style=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,=
0,255)">in0</span>  }</div><div>  <span style=3D"color:rgb(0,128,0)"># ep4 =
to replay0(0)</span></div><div>  - { <span style=3D"color:rgb(128,0,0)">src=
blk</span>: <span style=3D"color:rgb(0,0,255)">ep4</span>,     <span style=
=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">=
out0</span>,  <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=
=3D"color:rgb(0,0,255)">replay0</span>, <span style=3D"color:rgb(128,0,0)">=
dstport</span>: <span style=3D"color:rgb(0,0,255)">in_0</span> }</div><div>=
  <span style=3D"color:rgb(0,128,0)"># replay0(0) to ep4</span></div><div> =
 - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color=
:rgb(0,0,255)">replay0</span>, <span style=3D"color:rgb(128,0,0)">srcport</=
span>: <span style=3D"color:rgb(0,0,255)">out_0</span>, <span style=3D"colo=
r:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">ep4</span=
>,     <span style=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"co=
lor:rgb(0,0,255)">in0</span>  }</div><div>  <span style=3D"color:rgb(0,128,=
0)"># ep5 to replay0(1)</span></div><div>  - { <span style=3D"color:rgb(128=
,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">ep5</span>,     <s=
pan style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0=
,0,255)">out0</span>,  <span style=3D"color:rgb(128,0,0)">dstblk</span>: <s=
pan style=3D"color:rgb(0,0,255)">replay0</span>, <span style=3D"color:rgb(1=
28,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">in_1</span> }</=
div><div>  <span style=3D"color:rgb(0,128,0)"># replay0(1) to ep5</span></d=
iv><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=
=3D"color:rgb(0,0,255)">replay0</span>, <span style=3D"color:rgb(128,0,0)">=
srcport</span>: <span style=3D"color:rgb(0,0,255)">out_1</span>, <span styl=
e=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">=
ep5</span>,     <span style=3D"color:rgb(128,0,0)">dstport</span>: <span st=
yle=3D"color:rgb(0,0,255)">in0</span>  }</div><div>  <span style=3D"color:r=
gb(0,128,0)"># BSP Connections</span></div><div>  - { <span style=3D"color:=
rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">radio0</spa=
n>, <span style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color=
:rgb(0,0,255)">ctrl_port</span>, <span style=3D"color:rgb(128,0,0)">dstblk<=
/span>: <span style=3D"color:rgb(0,0,255)">_device_</span>, <span style=3D"=
color:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">ctrl=
port_radio0</span> }</div><div>  - { <span style=3D"color:rgb(128,0,0)">src=
blk</span>: <span style=3D"color:rgb(0,0,255)">radio1</span>, <span style=
=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">=
ctrl_port</span>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span s=
tyle=3D"color:rgb(0,0,255)">_device_</span>, <span style=3D"color:rgb(128,0=
,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">ctrlport_radio1</sp=
an> }</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <sp=
an style=3D"color:rgb(0,0,255)">replay0</span>, <span style=3D"color:rgb(12=
8,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">axi_ram</span>, =
<span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(=
0,0,255)">_device_</span>, <span style=3D"color:rgb(128,0,0)">dstport</span=
>: <span style=3D"color:rgb(0,0,255)">dram</span> }</div><div>  - { <span s=
tyle=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255=
)">_device_</span>, <span style=3D"color:rgb(128,0,0)">srcport</span>: <spa=
n style=3D"color:rgb(0,0,255)">x300_radio0</span>, <span style=3D"color:rgb=
(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">radio0</span>,=
 <span style=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"color:rg=
b(0,0,255)">x300_radio</span> }</div><div>  - { <span style=3D"color:rgb(12=
8,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">_device_</span>, =
<span style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb=
(0,0,255)">x300_radio1</span>, <span style=3D"color:rgb(128,0,0)">dstblk</s=
pan>: <span style=3D"color:rgb(0,0,255)">radio1</span>, <span style=3D"colo=
r:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">x300_rad=
io</span> }</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span=
>: <span style=3D"color:rgb(0,0,255)">_device_</span>, <span style=3D"color=
:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">time_keep=
er</span>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D=
"color:rgb(0,0,255)">radio0</span>, <span style=3D"color:rgb(128,0,0)">dstp=
ort</span>: <span style=3D"color:rgb(0,0,255)">time_keeper</span> }</div><d=
iv>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"c=
olor:rgb(0,0,255)">_device_</span>, <span style=3D"color:rgb(128,0,0)">srcp=
ort</span>: <span style=3D"color:rgb(0,0,255)">time_keeper</span>, <span st=
yle=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)=
">radio1</span>, <span style=3D"color:rgb(128,0,0)">dstport</span>: <span s=
tyle=3D"color:rgb(0,0,255)">time_keeper</span> }</div><br><div><span style=
=3D"color:rgb(0,128,0)"># A list of all clock domain connections in design<=
/span></div><div><span style=3D"color:rgb(0,128,0)"># ---------------------=
---------------------</span></div><div><span style=3D"color:rgb(0,128,0)">#=
 Format: A list of connection maps (list of key-value pairs) with the follo=
wing keys</span></div><div><span style=3D"color:rgb(0,128,0)">#         - s=
rcblk  =3D Source block to connect (Always &quot;_device&quot;_)</span></di=
v><div><span style=3D"color:rgb(0,128,0)">#         - srcport =3D Clock dom=
ain on the source block to connect</span></div><div><span style=3D"color:rg=
b(0,128,0)">#         - dstblk  =3D Destination block to connect</span></di=
v><div><span style=3D"color:rgb(0,128,0)">#         - dstport =3D Clock dom=
ain on the destination block to connect</span></div><div><span style=3D"col=
or:rgb(128,0,0)">clk_domains</span>:</div><div>  - { <span style=3D"color:r=
gb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">_device_</sp=
an>, <span style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"colo=
r:rgb(0,0,255)">radio</span>, <span style=3D"color:rgb(128,0,0)">dstblk</sp=
an>: <span style=3D"color:rgb(0,0,255)">radio0</span>, <span style=3D"color=
:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">radio</sp=
an> }</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <sp=
an style=3D"color:rgb(0,0,255)">_device_</span>, <span style=3D"color:rgb(1=
28,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">ce</span>,    <=
span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0=
,0,255)">ddc0</span>,   <span style=3D"color:rgb(128,0,0)">dstport</span>: =
<span style=3D"color:rgb(0,0,255)">ce</span>    }</div><div>  - { <span sty=
le=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)"=
>_device_</span>, <span style=3D"color:rgb(128,0,0)">srcport</span>: <span =
style=3D"color:rgb(0,0,255)">ce</span>,    <span style=3D"color:rgb(128,0,0=
)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">duc0</span>,   <span s=
tyle=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,25=
5)">ce</span>    }</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcbl=
k</span>: <span style=3D"color:rgb(0,0,255)">_device_</span>, <span style=
=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">=
radio</span>, <span style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=
=3D"color:rgb(0,0,255)">radio1</span>, <span style=3D"color:rgb(128,0,0)">d=
stport</span>: <span style=3D"color:rgb(0,0,255)">radio</span> }</div><div>=
  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span style=3D"colo=
r:rgb(0,0,255)">_device_</span>, <span style=3D"color:rgb(128,0,0)">srcport=
</span>: <span style=3D"color:rgb(0,0,255)">ce</span>,    <span style=3D"co=
lor:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,255)">ddc1</s=
pan>,   <span style=3D"color:rgb(128,0,0)">dstport</span>: <span style=3D"c=
olor:rgb(0,0,255)">ce</span>    }</div><div>  - { <span style=3D"color:rgb(=
128,0,0)">srcblk</span>: <span style=3D"color:rgb(0,0,255)">_device_</span>=
, <span style=3D"color:rgb(128,0,0)">srcport</span>: <span style=3D"color:r=
gb(0,0,255)">ce</span>,    <span style=3D"color:rgb(128,0,0)">dstblk</span>=
: <span style=3D"color:rgb(0,0,255)">duc1</span>,   <span style=3D"color:rg=
b(128,0,0)">dstport</span>: <span style=3D"color:rgb(0,0,255)">ce</span>   =
 }</div><div>  - { <span style=3D"color:rgb(128,0,0)">srcblk</span>: <span =
style=3D"color:rgb(0,0,255)">_device_</span>, <span style=3D"color:rgb(128,=
0,0)">srcport</span>: <span style=3D"color:rgb(0,0,255)">dram</span>,  <spa=
n style=3D"color:rgb(128,0,0)">dstblk</span>: <span style=3D"color:rgb(0,0,=
255)">replay0</span>, <span style=3D"color:rgb(128,0,0)">dstport</span>: <s=
pan style=3D"color:rgb(0,0,255)">mem</span>  }</div><br></div></div></div>

--000000000000165ba5063362d481--

--===============8095947306266112482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8095947306266112482==--
