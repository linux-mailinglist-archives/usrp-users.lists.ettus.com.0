Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CACF280273
	for <lists+usrp-users@lfdr.de>; Thu,  1 Oct 2020 17:20:39 +0200 (CEST)
Received: from [::1] (port=58552 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kO0Np-0008Ap-Q7; Thu, 01 Oct 2020 11:20:37 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:39387)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kO0Nl-00081I-S8
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 11:20:33 -0400
Received: by mail-ot1-f52.google.com with SMTP id u25so5767381otq.6
 for <usrp-users@lists.ettus.com>; Thu, 01 Oct 2020 08:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CWMdE0CkpKJ/MZ84+kqM4h/TKZGHLbeRJ2/XNhQmRUE=;
 b=fQSzsSSWCffh7XIC+SWjLD9d/Amn/oEBLprhiT4dptmMxeVyxMTgnFr8rUzBns+ZLF
 0s0xMzUiUo6DflVPEeI/5ZUI3ZLhFs48F+cmVMTUZvoyrsQTDzoXNFboAwhggNh2MgVG
 xha6UR/WeVJzLmdu8P6KReqhvZEnE6vPaSdh4T/PmyneHiwv2CSShV4URhpao16j6Aoa
 /kCd9DL6/z2YWLJ4txGPfmoYDshwC3SM7el3RkpQzLrAnWJ8sxBGo/j7ZX+BvU7bm8LO
 kFZ2uG/JvwdpMlBBlJOWoq+sXdZ2+nUC2t8XZSBcEFw2lCKQ/khh5w7L3li/cM3aJsyG
 27NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CWMdE0CkpKJ/MZ84+kqM4h/TKZGHLbeRJ2/XNhQmRUE=;
 b=pBe+ev00Q6rnU4l3Ai6AwxOwkr3jeXGYpjCI4SqJVpkPCqXacEvg/6M4dBSSMzWzJR
 ZWSCCySBq95EBPW9rRNOCZjbPmbuLZcXlK9g0NTK0jpdPLR8uIPTu4InVaDh2YncxkoE
 0br7RHIg9C8xisoeg5WNcz/5dy/gUBgnqCarn7c5AgE2OGi9RLVRfy2XG7AAs5KEjK/i
 xB4f0Mq2Gy+M5ghu64eWtFEvJlFap1uiuQFfUSdPbXVKzxZPnliJBLgHtO4DxopoqpNp
 +wP1qtDQcI5EpPULaTL6YOQ0Gvqi4woh41LJppFgE4J98KYKDVyc+HuBreskr4Jm/HVS
 Mh8A==
X-Gm-Message-State: AOAM530EsxU9kcqQcojWWrA9SfrZ9Db4+oOl/IHKSx+4Q5SljkwQIjXJ
 r14+5tDp6k/3UZuLyoPdqXn702mS/yUyttkNAPvT6dNj+CA=
X-Google-Smtp-Source: ABdhPJzlvLtC57PzCHGqDBnWScEfivOLdtnMHI3rzLdgBk123++tRETgTnJzTioh6x+Vf0uZyu8to3SPOXZrA5PIY1w=
X-Received: by 2002:a9d:6219:: with SMTP id g25mr5323655otj.58.1601565592910; 
 Thu, 01 Oct 2020 08:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB3312CE95DBC33D5A21D8F294B8330@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT2mvSMDfcg17zM04JFn3qAE02qYvbZwJGt2bpvSbr2_g@mail.gmail.com>
 <MN2PR12MB3312EB6E10AEAFC9A076632DB8300@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312EB6E10AEAFC9A076632DB8300@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Thu, 1 Oct 2020 11:19:42 -0400
Message-ID: <CAB__hTRRqfnU_Drn4hbRi1G5aBV7-Xxw2p3mQLHPfB0ckhVYNw@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Trouble getting custom RFNoC block to work with
 gnuradio 3.8 / uhd 4.0
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
Content-Type: multipart/mixed; boundary="===============8190104242471911187=="
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

--===============8190104242471911187==
Content-Type: multipart/alternative; boundary="00000000000040443f05b09d8cd9"

--00000000000040443f05b09d8cd9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So, the only other thing I can think of for now relates to issues that I
have had in connecting blocks that are not statically connected. For
example, the newest default images for the X310 and N310 contain a "Replay"
block where the Replay block is connected to/from an end-point in the same
way as your example.  In my UHD graph connection process, I never have an
issue connecting "DUC=3D>Radio" because this is a static connection.  But, =
I
sometimes get a timeout error when connecting "Replay=3D>DUC" because this =
is
a dynamic connection.  I wonder if you are getting any connection error
messages in the UHD log when you run from gnuradio.  I'm guessing not, but
wanted to mention it.

In any case, if you run using "rfnoc_rx_to_file", you might be able to set
the master clock rate low enough that you don't need a DDC to avoid
overruns when using the graph "Radio30=3D>Block#0=3D>rx_streamer" (meaning =
that
you might not need to modify the default example).  I don't know a lot
about the E320 so I'm not really sure what control you have over the master
clock rate (and ultimately the radio output rate).


On Thu, Oct 1, 2020 at 11:10 AM Jim Palladino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> Thanks very much for the response. I checked and by default, in the
> rfnocmodtool generated verilog for my block, s_out_payload_tkeep is tied =
to
> '1'.  Also, the autogenerated testbench runs just fine (all tests pass). =
I
> poked around at rfnoc_rx_to_file a while ago but didn't spend much time
> with it. I'll follow your suggestion and work with that some more.
>
> Also, the second flowgraph case I described in my original email works
> just fine now. This is the case where my flowgraph looks like:
> Constant_Source -> RFNoC_TX_Streamer -> RFNoC_Block -> RFNoC_RX_Streamer
> -> QT_GUI_Time_Sink
>
> Once I set the constant source to values between 0 and 1, I had no
> problems (it was a mistake on my part initially setting the values greate=
r
> than 1). I also replaced the Constant_Source with a Signal_Source (cosine=
)
> and everything works just fine -- no errors and the plot looks good. So,
> this works, but the setup with RFNoC_RX_Radio as the source  (followed by=
 a
> DDC before my block) still does not work -- I get the CHDR errors with
> tready stuck low.
>
> Here is a copy of my Block_x310_rfnoc_image_core.yml. Even though the fil=
e
> name has x310 in it, I'm building for the e320 (and it is building for th=
e
> e320). I wanted to change as little of what rfnocmodtool automatically
> generated as possible.
>
> ### Start of Block_x310_rfnoc_image_core.yml
>
> # General parameters
> # -----------------------------------------
> schema: rfnoc_imagebuilder_args         # Identifier for the schema used
> to validate this file
> copyright: ''                           # Copyright information used in
> file headers
> license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License
> information used in file headers
> version: 1.0                            # File version
> rfnoc_version: 1.0                      # RFNoC protocol version
> chdr_width: 64                          # Bit width of the CHDR bus for
> this image
> device: 'e320'
> default_target: 'E320_XG'
>
> # A list of all stream endpoints in design
> # ----------------------------------------
> stream_endpoints:
>   ep0:                       # Stream endpoint name
>     ctrl: True                      # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 32768                # Ingress buffer size for data
>   ep1:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 32768                # Ingress buffer size for data
>   ep2:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 8192                 # Ingress buffer size for data
>   ep3:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 8192                 # Ingress buffer size for data
>   ep4:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 32768                # Ingress buffer size for data
>
> # A list of all NoC blocks in design
> # ----------------------------------
> noc_blocks:
>   duc0:                      # NoC block name
>     block_desc: 'duc.yml'    # Block device descriptor file
>     parameters:
>       NUM_PORTS: 2
>   ddc0:
>     block_desc: 'ddc.yml'
>     parameters:
>       NUM_PORTS: 2
>   radio0:
>     block_desc: 'radio_2x64.yml'
>   fifo0:
>     block_desc: 'axi_ram_fifo_2x64.yml'
>     parameters:
>       # These parameters correspond to the memory interface on the E320
>       MEM_ADDR_W:   31
>       MEM_DATA_W:   64
>       MEM_CLK_RATE: "300e6"
>       # Create two non-overlapping 32 MB buffers by default
>       FIFO_ADDR_BASE: "{31'h02000000, 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF}"
>   Block0:
>     block_desc: 'Block.yml'
>
> # A list of all static connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #         - srcblk  =3D Source block to connect
> #         - srcport =3D Port on the source block to connect
> #         - dstblk  =3D Destination block to connect
> #         - dstport =3D Port on the destination block to connect
> connections:
>   # ep0 to radio0(0) - RF0 TX
>   - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
>   - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
>   # radio0(0) to ep0 - RF0 RX
>   - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
>   - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
>   # ep1 to radio0(1) - RF1 TX
>   - { srcblk: ep1,    srcport: out0,  dstblk: duc0,   dstport: in_1 }
>   - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
>   # radio0(1) to ep1 - RF1 RX
>   - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
>   - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
>   # ep2 to fifo0(0)
>   - { srcblk: ep2,    srcport: out0,  dstblk: fifo0,  dstport: in_0 }
>   - { srcblk: fifo0,  srcport: out_0, dstblk: ep2,    dstport: in0  }
>   # ep3 to fifo0(1)
>   - { srcblk: ep3,    srcport: out0,  dstblk: fifo0,  dstport: in_1 }
>   - { srcblk: fifo0,  srcport: out_1, dstblk: ep3,    dstport: in0  }
>   # Cust blk cnct ep4 to gain0 and gain0 to ep4
>   - { srcblk: ep4, srcport: out0, dstblk: Block0, dstport: in }
>   - { srcblk: Block0, srcport: out, dstblk: ep4, dstport: in0 }
>   # BSP Connections
>   - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrl_port }
>   - { srcblk: _device_, srcport: x300_radio, dstblk: radio0, dstport:
> x300_radio }
>   - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
> time_keeper }
>   - { srcblk: fifo0,    srcport: axi_ram,     dstblk: _device_, dstport:
> dram        }
>
> # A list of all clock domain connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #         - srcblk  =3D Source block to connect (Always "_device"_)
> #         - srcport =3D Clock domain on the source block to connect
> #         - dstblk  =3D Destination block to connect
> #         - dstport =3D Clock domain on the destination block to connect
> clk_domains:
>     - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio =
}
>     - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: ddc0,   dstport=
:
> ce    }
>     - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: duc0,   dstport=
:
> ce    }
>     - { srcblk: _device_, srcport: dram,  dstblk: fifo0,  dstport: mem   =
}
>     - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: Block0,
>  dstport: ce }
>
> ### End of Block_x310_rfnoc_image_core.yml
>
> Thanks again for any help.
> Jim
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Thursday, October 1, 2020 10:19 AM
> *To:* Jim Palladino <jim@gardettoengineering.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Trouble getting custom RFNoC block to work
> with gnuradio 3.8 / uhd 4.0
>
> Hi Jim,
> I have also been playing around with UHD-4.0, but mostly in testbenches.
> I've only built one image (for the N310) with one of my custom blocks. Th=
e
> errors you mentioned seem very strange. A few questions/comments:
> - can you send your "XXX_x310_rfnoc_image_core.yml" contents?
> - would it be helpful to run directly with UHD examples (removing gnuradi=
o
> and gr-ettus from the equation)?  You could try "rfnoc_rx_to_file" as-is
> where you specify on the command line the desired "block-id" to insert
> between the Radio and the rx_streamer.  With the X310, the Radio rate mig=
ht
> be too high with your custom "thru" block so perhaps you could modify the
> example (in-tree would be easiest) to automatically include the DDC and
> then insert the command line "block-id" optionally after the DDC.
> - In my testbenches, I have occasionally seend CHDR error messages like
> you mentioned and it seemed to solve them if I set "s_out_payload_tkeep=
=3D1".
> I didn't think this was needed if there was only 1 output port, but I see=
m
> to recall that this fixed my CHDR error issue for my 1  port block.
> Rob
>
> On Wed, Sep 30, 2020 at 10:39 AM Jim Palladino via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello,
>
> Several weeks ago I went through the tutorial for producing the example
> "gain" block using rfnoc 3.8 and uhd 3.15. There were some bumps, but I d=
id
> get that working fine. For the past couple weeks, I've been working with
> UHD 4.0 and the latest gr-ettus repo.
>
> I posted a question a week or two ago since I couldn't get UHD to
> recognize my custom block, as UHD doesn't look for the block yml file in
> the latest uhd 4.0 build. It just shows up as "0/Block#0" when probing.
> Thanks to Wade F. for the quick response to that question and for
> suggesting I either just continue OOT and use the "Block" name to interfa=
ce
> with it or build in-tree for now. I chose to stick with OOT and just use
> the "Block" naming.
>
> I started with the gain example, but ended up simplifying it to literally
> just using what was generated by rfnocmodtool (just a pass through block =
in
> the FPGA) with no modifications. I made an rfnoc block, called "Block". I
> built this for an E320, so I did have to modify the
> "XXX_x310_rfnoc_image_core.yml" file accordingly.
>
> I built/installed everything, but this is what is happening. When I creat=
e
> a gnuradio-companion "waveform", it does run, but I get the following
> behavior:
>
> 1) If my setup is RFNoC_RX_Radio -> RFNoC_DDC_Block -> RFNoC_Block ->
> RFNoC_RX_Streamer -> QT_GUI_Freq_Sink:
>
> Everything runs, but the following repeats over and over and the output
> plot doesn't change:
> ----
> gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
> ERROR_CODE_BAD_PACKET (Code: 0xf)
> [ERROR] [STREAMER] The receive transport caught a value exception.
> ValueError: Bad CHDR header or invalid packet length.
> gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
> ERROR_CODE_BAD_PACKET (Code: 0xf)
> [ERROR] [STREAMER] The receive transport caught a value exception.
> ValueError: Bad CHDR header or invalid packet length.
> ----
>
> I put in some ILA probes and it seems that "ep4_to_xb_tready" is stuck
> low. ep4 is the endpoint tied to the in and out of my custom "Block." I'm
> guessing it didn't start low but a FIFO or something filled up somewhere.
>
> I should mention that if I use this same setup, but remove my custom
> RFNoC_Block and directly connect the DDC to the RX_Streamer, everything
> works fine. No errors, the spectrum looks fine, etc.
>
>
> 2) If my setup is Constant_Source(set to 4+9j) -> RFNoC_TX_Streamer ->
> RFNoC_Block -> RFNoC_RX_Streamer -> QT_GUI_Time_Sink:
>
> Everything runs and I do not have a problem with any gnuradio warnings.
> Also, TReady is high the entire time. But, the output plot for I and Q si=
t
> mostly constant stuck at "1", with non-periodic blips down to "0". I'm no=
t
> seeing the complex constant I set in gnuradio. If I look at the
> payload_tdata in an ILA for my "Block" when tvalid is high and tready is
> high, I see that the data is sitting at 0x7fff7fff except when TLAST is
> high, tdata switches to 0xfffc7ff7.
>
> I'm at a bit of a loss trying to figure out what is happening. Could it b=
e
> that UHD is not interfacing properly to my block (given that UHD doesn't
> look for my OOT yml file)? I did not change any block controller code or
> anything else. Oh, and the user_register that is included as part of the
> default design designated by rfnocmodtool seems to work fine. I can chang=
e
> the register value in gnuradio and I can see it change appropriately via
> and ILA.
>
> For reference, this is what I've been working with:
> 1) UHD (v4.0.0.0 tag)
> 2) gnuradio (3.8.2.0 tag)
> 3) gr-ettus (maint-3.8-uhd4.0 branch)
>
> RFNoC is new to me, so any thoughts on what could be wrong or how I could
> go about debugging this would be greatly appreciated. Hopefully, I'm just
> missing something simple.
>
> Thanks,
> Jim
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_ma=
ilman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpY=
x0&m=3DFz9nkm5B61ZorZZVX1jSes3LSxtOxW2XFb-XA9r-7vI&s=3DHTsRqrOpxd15k2kgT7iX=
FYxZW4Xwm9wIh3gu8TDf4Pg&e=3D>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000040443f05b09d8cd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So, the only other thing I can think of for now relates to=
 issues that I have had in connecting blocks that are not statically connec=
ted. For example, the=C2=A0newest default images for the X310 and N310 cont=
ain a &quot;Replay&quot; block where the Replay block is connected to/from =
an end-point in the same way as your example.=C2=A0 In my UHD graph connect=
ion process, I never have an issue connecting &quot;DUC=3D&gt;Radio&quot; b=
ecause this is a static connection.=C2=A0 But, I sometimes get a timeout er=
ror when connecting &quot;Replay=3D&gt;DUC&quot; because this is a dynamic =
connection.=C2=A0 I wonder if you are getting any connection error messages=
 in the UHD log when you run from gnuradio.=C2=A0 I&#39;m guessing not, but=
 wanted to mention it.=C2=A0<div><br></div><div>In any case, if you run usi=
ng &quot;rfnoc_rx_to_file&quot;, you might be able to set the master clock =
rate low enough that you don&#39;t need a DDC to avoid overruns when using =
the graph &quot;Radio30=3D&gt;Block#0=3D&gt;rx_streamer&quot; (meaning that=
 you might not need to modify the default example).=C2=A0 I don&#39;t know =
a lot about the E320 so I&#39;m not really sure what control you have over =
the master clock rate (and ultimately the radio output rate).<div><br></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Oct 1, 2020 at 11:10 AM Jim Palladino via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Hi Rob,=C2=A0</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Thanks very much for the response. I checked and by default, in the rfnocmo=
dtool generated verilog for my block, s_out_payload_tkeep is tied to &#39;1=
&#39;.=C2=A0 Also, the autogenerated testbench runs just fine (all tests pa=
ss). I poked around at rfnoc_rx_to_file a while
 ago but didn&#39;t spend much time with it. I&#39;ll follow your suggestio=
n and work with that some more.</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Also, the second flowgraph case I described in my original email works just=
 fine now. This is the case where my flowgraph looks like:=C2=A0</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<span style=3D"margin:0px;background-color:white">Constant_Source -&gt; RFN=
oC_TX_Streamer -&gt; RFNoC_Block -&gt; RFNoC_RX_Streamer -&gt; QT_GUI_Time_=
Sink</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<span style=3D"margin:0px;background-color:white"><br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Once I set the constant source to values between 0 and 1, I had no problems=
 (it was a mistake on my part initially setting the values greater than 1).=
 I also replaced the Constant_Source with a Signal_Source (cosine) and ever=
ything works just fine -- no errors
 and the plot looks good. So, this works, but the setup with RFNoC_RX_Radio=
 as the source=C2=A0 (followed by a DDC before my block) still does not wor=
k -- I get the CHDR errors with tready stuck low.</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Here is a copy of my=C2=A0Block_x310_rfnoc_image_core.yml. Even though the =
file name has x310 in it, I&#39;m building for the e320 (and it is building=
 for the e320). I wanted to change as little of what rfnocmodtool automatic=
ally generated as possible.</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<span style=3D"margin:0px;background-color:white">### Start of Block_x310_r=
fnoc_image_core.yml</span><br>
</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<span style=3D"margin:0px;background-color:white"><br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
# General parameters
<div style=3D"margin:0px"># -----------------------------------------</div>
<div style=3D"margin:0px">schema: rfnoc_imagebuilder_args =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Identifier for the schema used to validate this file</div>
<div style=3D"margin:0px">copyright: &#39;&#39; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Copyright=
 information used in file headers</div>
<div style=3D"margin:0px">license: &#39;SPDX-License-Identifier: LGPL-3.0-o=
r-later&#39; # License information used in file headers</div>
<div style=3D"margin:0px">version: 1.0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# File versio=
n</div>
<div style=3D"margin:0px">rfnoc_version: 1.0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# RFNoC protocol version</d=
iv>
<div style=3D"margin:0px">chdr_width: 64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Bit width of the =
CHDR bus for this image</div>
<div style=3D"margin:0px">device: &#39;e320&#39;</div>
<div style=3D"margin:0px">default_target: &#39;E320_XG&#39;</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all stream endpoints in design</div>
<div style=3D"margin:0px"># ----------------------------------------</div>
<div style=3D"margin:0px">stream_endpoints:</div>
<div style=3D"margin:0px">=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes contr=
ol traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data</div>
<div style=3D"margin:0px">=C2=A0 ep1: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data</div>
<div style=3D"margin:0px">=C2=A0 ep2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 buff_size: 8192 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Ingress buffer size for data</div>
<div style=3D"margin:0px">=C2=A0 ep3: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 buff_size: 8192 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Ingress buffer size for data</div>
<div style=3D"margin:0px">=C2=A0 ep4: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all NoC blocks in design</div>
<div style=3D"margin:0px"># ----------------------------------</div>
<div style=3D"margin:0px">noc_blocks:</div>
<div style=3D"margin:0px">=C2=A0 duc0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NoC block name</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 block_desc: &#39;duc.yml&#39; =C2=
=A0 =C2=A0# Block device descriptor file</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 parameters:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2</div>
<div style=3D"margin:0px">=C2=A0 ddc0:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 parameters:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2</div>
<div style=3D"margin:0px">=C2=A0 radio0:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39=
;</div>
<div style=3D"margin:0px">=C2=A0 fifo0:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 block_desc: &#39;axi_ram_fifo_2x64.=
yml&#39;</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 parameters:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 # These parameters correspon=
d to the memory interface on the E320</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: =C2=A0 31</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: =C2=A0 64</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 MEM_CLK_RATE: &quot;300e6&qu=
ot;</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 # Create two non-overlapping=
 32 MB buffers by default</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#3=
9;h02000000, 31&#39;h00000000}&quot;</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#3=
9;h01FFFFFF, 31&#39;h01FFFFFF}&quot;</div>
<div style=3D"margin:0px">=C2=A0 Block0:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 block_desc: &#39;Block.yml&#39;</di=
v>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all static connections in design</div=
>
<div style=3D"margin:0px"># ------------------------------------------</div=
>
<div style=3D"margin:0px"># Format: A list of connection maps (list of key-=
value pairs) with the following keys</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=3D =
Source block to connect</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Port =
on the source block to connect</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D =
Destination block to connect</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Port =
on the destination block to connect</div>
<div style=3D"margin:0px">connections:</div>
<div style=3D"margin:0px">=C2=A0 # ep0 to radio0(0) - RF0 TX</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out=
0, =C2=A0dstblk: duc0, =C2=A0 dstport: in_0 }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_0, d=
stblk: radio0, dstport: in_0 }</div>
<div style=3D"margin:0px">=C2=A0 # radio0(0) to ep0 - RF0 RX</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk=
: ddc0, =C2=A0 dstport: in_0 }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_0, d=
stblk: ep0, =C2=A0 =C2=A0dstport: in0 =C2=A0}</div>
<div style=3D"margin:0px">=C2=A0 # ep1 to radio0(1) - RF1 TX</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ep1, =C2=A0 =C2=A0srcport: out=
0, =C2=A0dstblk: duc0, =C2=A0 dstport: in_1 }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_1, d=
stblk: radio0, dstport: in_1 }</div>
<div style=3D"margin:0px">=C2=A0 # radio0(1) to ep1 - RF1 RX</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk=
: ddc0, =C2=A0 dstport: in_1 }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_1, d=
stblk: ep1, =C2=A0 =C2=A0dstport: in0 =C2=A0}</div>
<div style=3D"margin:0px">=C2=A0 # ep2 to fifo0(0)</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ep2, =C2=A0 =C2=A0srcport: out=
0, =C2=A0dstblk: fifo0, =C2=A0dstport: in_0 }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: fifo0, =C2=A0srcport: out_0, d=
stblk: ep2, =C2=A0 =C2=A0dstport: in0 =C2=A0}</div>
<div style=3D"margin:0px">=C2=A0 # ep3 to fifo0(1)</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ep3, =C2=A0 =C2=A0srcport: out=
0, =C2=A0dstblk: fifo0, =C2=A0dstport: in_1 }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: fifo0, =C2=A0srcport: out_1, d=
stblk: ep3, =C2=A0 =C2=A0dstport: in0 =C2=A0}</div>
<div style=3D"margin:0px">=C2=A0 # Cust blk cnct ep4 to gain0 and gain0 to =
ep4</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: ep4, srcport: out0, dstblk: Bl=
ock0, dstport: in }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: Block0, srcport: out, dstblk: =
ep4, dstport: in0 }</div>
<div style=3D"margin:0px">=C2=A0 # BSP Connections</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: radio0, srcport: ctrl_port, ds=
tblk: _device_, dstport: ctrl_port }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: _device_, srcport: x300_radio,=
 dstblk: radio0, dstport: x300_radio }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: _device_, srcport: time_keeper=
, dstblk: radio0, dstport: time_keeper }</div>
<div style=3D"margin:0px">=C2=A0 - { srcblk: fifo0, =C2=A0 =C2=A0srcport: a=
xi_ram, =C2=A0 =C2=A0 dstblk: _device_, dstport: dram =C2=A0 =C2=A0 =C2=A0 =
=C2=A0}</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all clock domain connections in desig=
n</div>
<div style=3D"margin:0px"># ------------------------------------------</div=
>
<div style=3D"margin:0px"># Format: A list of connection maps (list of key-=
value pairs) with the following keys</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=3D =
Source block to connect (Always &quot;_device&quot;_)</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Clock=
 domain on the source block to connect</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D =
Destination block to connect</div>
<div style=3D"margin:0px"># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Clock=
 domain on the destination block to connect</div>
<div style=3D"margin:0px">clk_domains:</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radi=
o, dstblk: radio0, dstport: radio }</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 - { srcblk: _device_, srcport: rfno=
c_chdr, =C2=A0 =C2=A0dstblk: ddc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 - { srcblk: _device_, srcport: rfno=
c_chdr, =C2=A0 =C2=A0dstblk: duc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 - { srcblk: _device_, srcport: dram=
, =C2=A0dstblk: fifo0, =C2=A0dstport: mem =C2=A0 }</div>
<div style=3D"margin:0px">=C2=A0 =C2=A0 - { srcblk: _device_, srcport: rfno=
c_chdr, =C2=A0 =C2=A0dstblk: Block0, =C2=A0dstport: ce }</div>
<span style=3D"margin:0px;background-color:white">
<div style=3D"margin:0px"><span style=3D"margin:0px;background-color:white"=
><br>
</span></div>
### End of Block_x310_rfnoc_image_core.yml</span>
<div style=3D"margin:0px"><br>
</div>
Thanks again for any help.</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Jim</div>
<div id=3D"gmail-m_-2290235696390808754appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2290235696390808754divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>rkossler@nd.edu</a>&gt;<br>
<b>Sent:</b> Thursday, October 1, 2020 10:19 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Trouble getting custom RFNoC block to work=
 with gnuradio 3.8 / uhd 4.0</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Jim,
<div>I have also been playing around with UHD-4.0, but mostly in testbenche=
s. I&#39;ve only built one image (for the N310) with one of my custom block=
s. The errors you mentioned seem very strange. A few questions/comments:</d=
iv>
<div>- can you send your &quot;XXX_x310_rfnoc_image_core.yml&quot; contents=
?</div>
<div>- would it be helpful=C2=A0to run directly with UHD examples (removing=
 gnuradio and gr-ettus from the equation)?=C2=A0 You could try &quot;rfnoc_=
rx_to_file&quot; as-is where you specify on the command line the desired &q=
uot;block-id&quot; to insert between the Radio and the rx_streamer.=C2=A0
 With the X310, the Radio rate might be too high with your custom &quot;thr=
u&quot; block so perhaps you could modify the example (in-tree would be eas=
iest) to automatically include the DDC and then insert the command line &qu=
ot;block-id&quot; optionally after the DDC.</div>
<div>- In my testbenches, I have occasionally seend CHDR error messages lik=
e you mentioned and it seemed to solve them if I set &quot;s_out_payload_tk=
eep=3D1&quot;. I didn&#39;t think this was needed if there was only 1 outpu=
t port, but I seem to recall that this fixed my
 CHDR error issue for my 1=C2=A0 port block.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Sep 30, 2020 at 10:39 AM Jim Palladino via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Several weeks ago I went through the tutorial for producing the example &qu=
ot;gain&quot; block using rfnoc 3.8 and uhd 3.15. There were some bumps, bu=
t I did get that working fine. For the past couple weeks, I&#39;ve been wor=
king with UHD 4.0 and the latest gr-ettus repo.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I posted a question a week or two ago since I couldn&#39;t get UHD to recog=
nize my custom block, as UHD doesn&#39;t look for the block yml file in the=
 latest uhd 4.0 build. It just shows up as &quot;0/Block#0&quot; when probi=
ng. Thanks to Wade F. for the quick response to that
 question and for suggesting I either just continue OOT and use the &quot;B=
lock&quot; name to interface with it or build in-tree for now. I chose to s=
tick with OOT and just use the &quot;Block&quot; naming.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I started with the gain example, but ended up simplifying it to literally j=
ust using what was generated by rfnocmodtool (just a pass through block in =
the FPGA) with no modifications. I made an rfnoc block, called &quot;Block&=
quot;. I built this for an E320, so I did
 have to modify the &quot;XXX_x310_rfnoc_image_core.yml&quot; file accordin=
gly.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I built/installed everything, but this is what is happening. When I create =
a gnuradio-companion &quot;waveform&quot;, it does run, but I get the follo=
wing behavior:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
1) If my setup is RFNoC_RX_Radio -&gt; RFNoC_DDC_Block -&gt; RFNoC_Block -&=
gt; RFNoC_RX_Streamer -&gt; QT_GUI_Freq_Sink:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Everything runs, but the following repeats over and over and the output plo=
t doesn&#39;t change:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
----</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
<div>[ERROR] [STREAMER] The receive transport caught a value exception.<br>
</div>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
<div>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received erro=
r ERROR_CODE_BAD_PACKET (Code: 0xf)</div>
<div>[ERROR] [STREAMER] The receive transport caught a value exception.</di=
v>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
----<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I put in some ILA probes and it seems that &quot;ep4_to_xb_tready&quot; is =
stuck low. ep4 is the endpoint tied to the in and out of my custom &quot;Bl=
ock.&quot; I&#39;m guessing it didn&#39;t start low but a FIFO or something=
 filled up somewhere.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I should mention that if I use this same setup, but remove my custom RFNoC_=
Block and directly connect the DDC to the RX_Streamer, everything works fin=
e. No errors, the spectrum looks fine, etc.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
2) If my setup is Constant_Source(set to 4+9j) -&gt; RFNoC_TX_Streamer -&gt=
; RFNoC_Block -&gt; RFNoC_RX_Streamer -&gt; QT_GUI_Time_Sink:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Everything runs and I do not have a problem with any gnuradio warnings. Als=
o, TReady is high the entire time. But, the output plot for I and Q sit mos=
tly constant stuck at &quot;1&quot;, with non-periodic blips down to &quot;=
0&quot;. I&#39;m not seeing the complex constant I set in
 gnuradio. If I look at the payload_tdata in an ILA for my &quot;Block&quot=
; when tvalid is high and tready is high, I see that the data is sitting at=
 0x7fff7fff except when TLAST is high, tdata switches to 0xfffc7ff7.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m at a bit of a loss trying to figure out what is happening. Could it=
 be that UHD is not interfacing properly to my block (given that UHD doesn&=
#39;t look for my OOT yml file)? I did not change any block controller code=
 or anything else. Oh, and the user_register
 that is included as part of the default design designated by rfnocmodtool =
seems to work fine. I can change the register value in gnuradio and I can s=
ee it change appropriately via and ILA.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
For reference, this is what I&#39;ve been working with:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
1) UHD (v4.0.0.0 tag)</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
2) gnuradio (3.8.2.0 tag)</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
3) gr-ettus (maint-3.8-uhd4.0 branch)</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
RFNoC is new to me, so any thoughts on what could be wrong or how I could g=
o about debugging this would be greatly appreciated. Hopefully, I&#39;m jus=
t missing something simple.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGu=
qHauOvsPdD2NZkfwDnwpYx0&amp;m=3DFz9nkm5B61ZorZZVX1jSes3LSxtOxW2XFb-XA9r-7vI=
&amp;s=3DHTsRqrOpxd15k2kgT7iXFYxZW4Xwm9wIh3gu8TDf4Pg&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000040443f05b09d8cd9--


--===============8190104242471911187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8190104242471911187==--

