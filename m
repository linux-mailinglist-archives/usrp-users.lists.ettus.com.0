Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AABC3ABABB
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 19:41:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D9DE384512
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 13:41:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="jrgFiJya";
	dkim-atps=neutral
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11olkn2052.outbound.protection.outlook.com [40.92.20.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A3FD3809CA
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 13:40:14 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkqZMsMVDEHmOSr/Aptc4MeDoR7BldgJ9oDnlMS78/H700Cn0oJBWbNKcuBL2MaXG1jamVye2lnNxWT28N0zvzXx8YXmrAmJ9YxoLcf2xYIK9B03VdkGjx/T9AmOVHUAJ6v2j/gA3FJd/g0DfKjLun2RYvoc3RqczwuGa/z5aBHojmFwYo8+8xDT12NV7Fc864U9zRJknA0Ixj2iXikFFgcbLxiLdVewbKbNJsPvloh+isjMqyYAn9XSRc4TIlvWB1qfCRy1aY9LvzfUERyHPhHEz2dzg1l99RCy73lgk6FoO0NgEk9IfDDGy9TNh2wn479nOknR/wjKETmJViEECw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yyhpgwdtahbw377LAZZhotT1Ni+yJN707liE6aCStM=;
 b=iVP/LO2Cxb1oafpqpAr08ATibCx6D6pVK9DSpSk7WvPRIMG4gmxeYFIYwCxzql9Js5+NGg91WXWTeHdJIVcuB/74YooqkF9U5hjL/SeMqPJrYyNmucw2imF/OP2o4hFu2r2IlAZjXccVdNlWpVK3QNWLqxsbY3xKj3aUIWwlb4jAO74NpTjT9tyR9FEuvBjYuI0A0BFzFU4wfhFlJhIkvB4tFo67hUh+Vb5SYKKA5TY67q3n0Fsq184qkfa+gYOX1IT7HPi7xlTJhzURP2TGJfeeeNgSaoWI0sUq0jqIXiIk009dvKFRD1aGNu5VQb7suw+P/hgX8mGe//S8FGgZMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yyhpgwdtahbw377LAZZhotT1Ni+yJN707liE6aCStM=;
 b=jrgFiJyaz29ziPo9MegCy3wnxvDi65oy6kbKpBPeiYde8s+X3IoKPx5tiTBzl5XkeS9Rc7XcCLHphyb8gf+3I7XfSK4QP8ejWcwbxIE3I2MHFMsKE2y+Ztos+xuMsqzwmOT0lAkTG3xinz1DGJI9P7wiF1klSTeE82MnWpv7Pb2+UaOjiOwV/V+2LBBubfNxfNpBxeAaGyGp9+ryLfZfy21hbghbPCpCwmGkoGSqOsod940ukpo4iS8Ed9ku5c27FucuIF07MOH2whfyIfZpoZLea3hwZsLkY5r+RNhqalW90zHQ1QSXWyazmePCS/Xpx+Q6oFyMCUR0duXxsX4u9A==
Received: from CO1NAM11FT039.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::47) by
 CO1NAM11HT051.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::264)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.16; Thu, 17 Jun
 2021 17:40:12 +0000
Received: from DM6PR19MB4122.namprd19.prod.outlook.com
 (2a01:111:e400:3861::52) by CO1NAM11FT039.mail.protection.outlook.com
 (2a01:111:e400:3861::110) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.16 via Frontend
 Transport; Thu, 17 Jun 2021 17:40:12 +0000
Received: from DM6PR19MB4122.namprd19.prod.outlook.com
 ([fe80::21c2:895c:3f66:c540]) by DM6PR19MB4122.namprd19.prod.outlook.com
 ([fe80::21c2:895c:3f66:c540%5]) with mapi id 15.20.4242.021; Thu, 17 Jun 2021
 17:40:12 +0000
From: Jeff Clintoon <jeffc10504@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC custom image build errors
Thread-Index: AQHXY5+q9cMehpArh06BX/xTqx3J3A==
Date: Thu, 17 Jun 2021 17:40:12 +0000
Message-ID: 
 <DM6PR19MB412246ABCFAEE641D017D58A930E9@DM6PR19MB4122.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:2D07A958F9B6E7CA0BA2422DF1EB9110B8403A4918741E83384A9ACAFFD0F78F;UpperCasedChecksum:8A2A24D2D8736E41DC59A057AD71BC0B9BA1AB8DC878258C23FE0A66BFFBA51A;SizeAsReceived:6613;Count:41
x-tmn: [/EbcG8fODJS2QTeDPwTNbLxQhwqO+Eai]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 893b15eb-f425-4e1f-3dcf-08d931b6f5b7
x-ms-traffictypediagnostic: CO1NAM11HT051:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 doIGOltI2lvyvrPEj5OdQz/p27M5GstbNhTMY9OKAXGMCCyBHV74hiMFfO6Zydxj1uPQ9Q/4EHYcZiqPDVG0uV4TSXz0uS9zZuJC2wmhRG+aMnn7HNYLN+ItOCcBDzgQyrDdDfdKeUZrW9peWpQTKFpz0KZT2jBjYYA0ZZpUxP19QmuarxPRHAEJWM3nVzzVs3CkndnD8e4b1lShTq2Y7yGaGQ8/njpPpyUyQxrjBf4tbL2pknkwO/om5Jp9VaGIpHtVtAJO77MREbb1Gs1q6oJ51lLjQlFA2bXfiz0chqb8Dw3nDqdjsChvl5qsgtvqm484P9CoCapFJZB/UCfjhkf8+ouHLx8GUzuPlT8TnvOf1tGxbkHM9nQnuZ9azMS7NRRDkf4UfriPtgDiPmu44g==
x-ms-exchange-antispam-messagedata: 
 znST5hPh7TdcX0oOZXg9by0rp4GeBcXom0UOyB1JBOkIVfLjq7t3/l7vDNv/mGApKoBLJG6vvBM/rc3gm36RSfoZ+58COdxadm5nk6JLU2aYMwc94XXGs0BChenfh0GYQKn+oMS65hic8cQ/5b+9Mw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT039.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 893b15eb-f425-4e1f-3dcf-08d931b6f5b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2021 17:40:12.4636
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT051
Message-ID-Hash: MKO4NF7RR5Z72JZ3245Y4YTBHP2JEJAR
X-Message-ID-Hash: MKO4NF7RR5Z72JZ3245Y4YTBHP2JEJAR
X-MailFrom: jeffc10504@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC custom image build errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4KXHN5KRSUX32I7YGC6BJKL2JLTNBP26/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to use an Ettus X310 with two TwinRX boards to capture signals from four antennas with two frequency channels on each antenna, spaced about 40 MHz apart.  I've implemented this in Gnuradio Companion by capturing the whole swath on the X310, and then filtering and downconverting to the desired channels, but my CPU can't keep up---I get buffer overruns and large gaps in the data.

My thought was to use RFNoC to offload the processing to the FPGA.  I'm using UHD 4.0.  I've tried to build a custom image with two radios, 4 DDCs (it looks like each DDC can handle two channels), and 4 split_stream blocks.  When I try to build the image, I get the following error:

ERROR: [DRC MDRV-1] Multiple Driver Nets: Net x300_core/bus_int_i/rfnoc_sandbox_i/b_split3_5/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/m_radio1_out_0_tready has multiple drivers: x300_core/bus_int_i/rfnoc_sandbox_i/b_split2_4/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/o_tvalid_i_3__30/O, and x300_core/bus_int_i/rfnoc_sandbox_i/b_split3_5/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/o_tvalid_i_4__18/O.

I also get a lot of warnings on most of the Xilinx tasks about unconnected pins, some critical warnings on the final synthesis step, mostly along the lines of "set_clock_groups:No valid object(s) found for '-group [get_clocks bus_clk]'."  I have no idea if these are to be expected.

Does this sound like the right approach for this problem?  If so, what am I doing wrong when building this?

Thanks,
Jeff

Here's my image configuration YML file:

# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args         # Identifier for the schema used to validate this file
copyright: 'Ettus Research, A National Instruments Brand' # Copyright information used in file headers
license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License information used in file headers
version: 1.0                            # File version
rfnoc_version: 1.0                      # RFNoC protocol version
chdr_width: 64                          # Bit width of the CHDR bus for this image
device: 'x310'
default_target: 'X310_HG'

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                       # Stream endpoint name
    ctrl: True                      # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep1:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep2:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep3:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep4:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep5:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep6:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data
  ep7:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 65536                # Ingress buffer size for data

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  radio0:
    block_desc: 'radio_2x64.yml'
  radio1:
    block_desc: 'radio_2x64.yml'
  split0:
    block_desc: 'split_stream.yml'
  split1:
    block_desc: 'split_stream.yml'
  split2:
    block_desc: 'split_stream.yml'
  split3:
    block_desc: 'split_stream.yml'
  ddc0:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  ddc1:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  ddc2:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  ddc3:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the following keys
#         - srcblk  = Source block to connect
#         - srcport = Port on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Port on the destination block to connect
connections:
  # Port A
  - { srcblk: radio0, srcport: out_0, dstblk: split0, dstport: in_0 }
  - { srcblk: split0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
  - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
  - { srcblk: split0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
  - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
  # Port B
  - { srcblk: radio0, srcport: out_1, dstblk: split1, dstport: in_0 }
  - { srcblk: split1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
  - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
  - { srcblk: split1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
  - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
  # Port C
  - { srcblk: radio1, srcport: out_0, dstblk: split2, dstport: in_0 }
  - { srcblk: split2, srcport: out_0, dstblk: ddc2,   dstport: in_0 }
  - { srcblk: ddc2,   srcport: out_0, dstblk: ep4,    dstport: in0  }
  - { srcblk: split2, srcport: out_1, dstblk: ddc2,   dstport: in_1 }
  - { srcblk: ddc2,   srcport: out_1, dstblk: ep5,    dstport: in0  }
  # Port D
  - { srcblk: radio1, srcport: out_0, dstblk: split3, dstport: in_0 }
  - { srcblk: split3, srcport: out_0, dstblk: ddc3,   dstport: in_0 }
  - { srcblk: ddc3,   srcport: out_0, dstblk: ep6,    dstport: in0  }
  - { srcblk: split3, srcport: out_1, dstblk: ddc3,   dstport: in_1 }
  - { srcblk: ddc3,   srcport: out_1, dstblk: ep7,    dstport: in0  }

  # BSP Connections
  - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport: ctrlport_radio0 }
  - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport: ctrlport_radio1 }
  - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport: x300_radio }
  - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport: x300_radio }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport: time_keeper }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport: time_keeper }

# A list of all clock domain connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the following keys
#         - srcblk  = Source block to connect (Always "_device"_)
#         - srcport = Clock domain on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Clock domain on the destination block to connect
clk_domains:
    - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
    - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc0,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc1,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc2,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc3,   dstport: ce    }
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
