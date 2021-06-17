Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 947273ABE37
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 23:36:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E86A3384252
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 17:36:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="nNUFlX3t";
	dkim-atps=neutral
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C87A1384209
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 17:35:16 -0400 (EDT)
Received: by mail-oi1-f170.google.com with SMTP id x196so8098484oif.10
        for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 14:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PKfH/OYuG1QSIZiMp2wsdcefUHJs4q0UbjrlYOtHFtU=;
        b=nNUFlX3tJBQgzymtGnUDmIZPMx9bM7SvZDEAuit1b87dpTSHD4XG4MxogfhTPt6ixe
         VYynF8fxA0RhpVzmiEQ0KzJkvOY4YI51l+xypRwj2pmY2ZO4Wh6Ija3vq3SMenVTS8yA
         gRiL1Cts6SjffNn6ZXsC26qimPBYfpsXhzTmHlmaeBiNQfEvm+8nus1jfgo9lxDVvUEE
         lc27NxMXk+ETsW4wbqjtmSXGLbVF5+fgFAcu70LtYD8sD4fDMeYyxYnpID4fCnOpN/uX
         b+MjAtR1JS55WT8wF0UjcCk/FpP3dUxDWnPNKphstMV8S4QsN9dUgWO6kjcAfeOSyBrC
         afKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PKfH/OYuG1QSIZiMp2wsdcefUHJs4q0UbjrlYOtHFtU=;
        b=pihTuo9ey92R2mmtntzM2m+rU5+x4PpVcNZBV6RNMy4cdIpIL2UIWLveiRRm5urMg2
         ilr5mNBGIRRUBP/Y6li1YnE2AQDLwSMMCpCzBvsI1I+8SUVq5vWYVHSIlG/+fHsltv5G
         dIRaVVi/k8mMhHsl04yEGUDFm9T3qMcCjn52TOYjgL9RSJkxAqMO98dEUC4cFPA925/0
         ioXy5oqdwvxKRl24wqa4PkZYEgWiL+53EVJ90CWbox0pjKh0A9qKkGT3cN7N2+e+0j6X
         OpnVwjGd9po6pQSsq/Q7gX/C90Kfg05kJxh87p+JQUNGBUVdbEVHgfWd5CKnI/zKfxYV
         RSmg==
X-Gm-Message-State: AOAM530urW2LocayvILGvV4kIRAUU7gPytADTtd2DaB0v0NGtpf6MGZc
	vprU1Wq7I5+I16q2U1QT0SuyEH/Fda3ydrum5H4Tny2m
X-Google-Smtp-Source: ABdhPJyQS9f/eCH6lSC/WGV1WpULlavB+xKi7wirNoMPPE5/ujhPM7s9dccf5AMFdnuZeMzDicx7pE/UC8FQZRC3euY=
X-Received: by 2002:aca:a842:: with SMTP id r63mr6283940oie.62.1623965716164;
 Thu, 17 Jun 2021 14:35:16 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB412246ABCFAEE641D017D58A930E9@DM6PR19MB4122.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB412246ABCFAEE641D017D58A930E9@DM6PR19MB4122.namprd19.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 17 Jun 2021 16:35:01 -0500
Message-ID: <CAFche=hNXcQwAXvLkQ4-U9LrC=fJA7_Th3KCFj0b=XfRcwewng@mail.gmail.com>
To: Jeff Clintoon <jeffc10504@hotmail.com>
Message-ID-Hash: BN52HNODINUSIXUOFB3ZKYFMINBHKWRT
X-Message-ID-Hash: BN52HNODINUSIXUOFB3ZKYFMINBHKWRT
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom image build errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BN52HNODINUSIXUOFB3ZKYFMINBHKWRT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8746494056592260590=="

--===============8746494056592260590==
Content-Type: multipart/alternative; boundary="000000000000a3c30c05c4fcfb57"

--000000000000a3c30c05c4fcfb57
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

You've got these two lines in your YAML:

  - { srcblk: radio1, srcport: out_0, dstblk: split2, dstport: in_0 }
...
  - { srcblk: radio1, srcport: out_0, dstblk: split3, dstport: in_0 }

So you've got radio1(out_0) driving two different blocks, which isn't
allowed. I'm a little surprised this didn't cause an error with
rfnoc_image_builder. I think you meant to use out_1 for one of them.

Unfortunately, there are a lot of warnings with Vivado that are difficult
to remove. It's good to keep an eye on them, but usually they can be
ignored unless you get an error.

As for your approach, it's a lot of DDCs and stream endpoints, and hence a
lot of resources. I think you might run out of block RAM with that
buff_size value on the stream endpoints. I'm also curious how the software
will handle having more DDCs than radios. It's an interesting experiment.

Wade

On Thu, Jun 17, 2021 at 12:40 PM Jeff Clintoon <jeffc10504@hotmail.com>
wrote:

> Hello,
>
> I'm trying to use an Ettus X310 with two TwinRX boards to capture signals
> from four antennas with two frequency channels on each antenna, spaced
> about 40 MHz apart.  I've implemented this in Gnuradio Companion by
> capturing the whole swath on the X310, and then filtering and
> downconverting to the desired channels, but my CPU can't keep up---I get
> buffer overruns and large gaps in the data.
>
> My thought was to use RFNoC to offload the processing to the FPGA.  I'm
> using UHD 4.0.  I've tried to build a custom image with two radios, 4 DDCs
> (it looks like each DDC can handle two channels), and 4 split_stream
> blocks.  When I try to build the image, I get the following error:
>
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
> x300_core/bus_int_i/rfnoc_sandbox_i/b_split3_5/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/m_radio1_out_0_tready
> has multiple drivers:
> x300_core/bus_int_i/rfnoc_sandbox_i/b_split2_4/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/o_tvalid_i_3__30/O,
> and
> x300_core/bus_int_i/rfnoc_sandbox_i/b_split3_5/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/o_tvalid_i_4__18/O.
>
> I also get a lot of warnings on most of the Xilinx tasks about unconnected
> pins, some critical warnings on the final synthesis step, mostly along the
> lines of "set_clock_groups:No valid object(s) found for '-group [get_clocks
> bus_clk]'."  I have no idea if these are to be expected.
>
> Does this sound like the right approach for this problem?  If so, what am
> I doing wrong when building this?
>
> Thanks,
> Jeff
>
> Here's my image configuration YML file:
>
> # General parameters
> # -----------------------------------------
> schema: rfnoc_imagebuilder_args         # Identifier for the schema used
> to validate this file
> copyright: 'Ettus Research, A National Instruments Brand' # Copyright
> information used in file headers
> license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License
> information used in file headers
> version: 1.0                            # File version
> rfnoc_version: 1.0                      # RFNoC protocol version
> chdr_width: 64                          # Bit width of the CHDR bus for
> this image
> device: 'x310'
> default_target: 'X310_HG'
>
> # A list of all stream endpoints in design
> # ----------------------------------------
> stream_endpoints:
>   ep0:                       # Stream endpoint name
>     ctrl: True                      # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep1:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep2:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep3:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep4:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep5:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep6:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>   ep7:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 65536                # Ingress buffer size for data
>
> # A list of all NoC blocks in design
> # ----------------------------------
> noc_blocks:
>   radio0:
>     block_desc: 'radio_2x64.yml'
>   radio1:
>     block_desc: 'radio_2x64.yml'
>   split0:
>     block_desc: 'split_stream.yml'
>   split1:
>     block_desc: 'split_stream.yml'
>   split2:
>     block_desc: 'split_stream.yml'
>   split3:
>     block_desc: 'split_stream.yml'
>   ddc0:
>     block_desc: 'ddc.yml'
>     parameters:
>       NUM_PORTS: 2
>   ddc1:
>     block_desc: 'ddc.yml'
>     parameters:
>       NUM_PORTS: 2
>   ddc2:
>     block_desc: 'ddc.yml'
>     parameters:
>       NUM_PORTS: 2
>   ddc3:
>     block_desc: 'ddc.yml'
>     parameters:
>       NUM_PORTS: 2
>
> # A list of all static connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #         - srcblk  = Source block to connect
> #         - srcport = Port on the source block to connect
> #         - dstblk  = Destination block to connect
> #         - dstport = Port on the destination block to connect
> connections:
>   # Port A
>   - { srcblk: radio0, srcport: out_0, dstblk: split0, dstport: in_0 }
>   - { srcblk: split0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
>   - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
>   - { srcblk: split0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
>   - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
>   # Port B
>   - { srcblk: radio0, srcport: out_1, dstblk: split1, dstport: in_0 }
>   - { srcblk: split1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
>   - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
>   - { srcblk: split1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
>   - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
>   # Port C
>   - { srcblk: radio1, srcport: out_0, dstblk: split2, dstport: in_0 }
>   - { srcblk: split2, srcport: out_0, dstblk: ddc2,   dstport: in_0 }
>   - { srcblk: ddc2,   srcport: out_0, dstblk: ep4,    dstport: in0  }
>   - { srcblk: split2, srcport: out_1, dstblk: ddc2,   dstport: in_1 }
>   - { srcblk: ddc2,   srcport: out_1, dstblk: ep5,    dstport: in0  }
>   # Port D
>   - { srcblk: radio1, srcport: out_0, dstblk: split3, dstport: in_0 }
>   - { srcblk: split3, srcport: out_0, dstblk: ddc3,   dstport: in_0 }
>   - { srcblk: ddc3,   srcport: out_0, dstblk: ep6,    dstport: in0  }
>   - { srcblk: split3, srcport: out_1, dstblk: ddc3,   dstport: in_1 }
>   - { srcblk: ddc3,   srcport: out_1, dstblk: ep7,    dstport: in0  }
>
>   # BSP Connections
>   - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrlport_radio0 }
>   - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrlport_radio1 }
>   - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
> x300_radio }
>   - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:
> x300_radio }
>   - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
> time_keeper }
>   - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:
> time_keeper }
>
> # A list of all clock domain connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #         - srcblk  = Source block to connect (Always "_device"_)
> #         - srcport = Clock domain on the source block to connect
> #         - dstblk  = Destination block to connect
> #         - dstport = Clock domain on the destination block to connect
> clk_domains:
>     - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
>     - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
>     - { srcblk: _device_, srcport: ce,    dstblk: ddc0,   dstport: ce    }
>     - { srcblk: _device_, srcport: ce,    dstblk: ddc1,   dstport: ce    }
>     - { srcblk: _device_, srcport: ce,    dstblk: ddc2,   dstport: ce    }
>     - { srcblk: _device_, srcport: ce,    dstblk: ddc3,   dstport: ce    }
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a3c30c05c4fcfb57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeff,</div><div><br></div><div>You&#39;ve got thes=
e two lines in your YAML:</div><div><br></div><div>=C2=A0 - { srcblk: radio=
1, srcport: out_0, dstblk: split2, dstport: in_0 }</div><div>...</div><div>=
=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: split3, dstport: in_0 }<=
/div><div><br></div>So you&#39;ve got radio1(out_0) driving two different b=
locks, which isn&#39;t allowed.=20
 I&#39;m a little surprised this didn&#39;t cause an error with rfnoc_image=
_builder.

I think you meant to use out_1 for one of them.<br><div><br></div><div>Unfo=
rtunately, there are a lot of warnings with Vivado that are difficult to re=
move. It&#39;s good to keep an eye on them, but usually they can be ignored=
 unless you get an error.<br></div><div><br></div><div>As for your approach=
, it&#39;s a lot of DDCs and stream endpoints, and hence a lot of resources=
. I think you might run out of block RAM with that buff_size value on the s=
tream endpoints. I&#39;m also curious how the software will handle having m=
ore DDCs than radios. It&#39;s an interesting experiment. <br></div><br>Wad=
e</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Jun 17, 2021 at 12:40 PM Jeff Clintoon &lt;<a href=3D"mailto:jeffc=
10504@hotmail.com">jeffc10504@hotmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
I&#39;m trying to use an Ettus X310 with two TwinRX boards to capture signa=
ls from four antennas with two frequency channels on each antenna, spaced a=
bout 40 MHz apart.=C2=A0 I&#39;ve implemented this in Gnuradio Companion by=
 capturing the whole swath on the X310, and then filtering and downconverti=
ng to the desired channels, but my CPU can&#39;t keep up---I get buffer ove=
rruns and large gaps in the data.<br>
<br>
My thought was to use RFNoC to offload the processing to the FPGA.=C2=A0 I&=
#39;m using UHD 4.0.=C2=A0 I&#39;ve tried to build a custom image with two =
radios, 4 DDCs (it looks like each DDC can handle two channels), and 4 spli=
t_stream blocks.=C2=A0 When I try to build the image, I get the following e=
rror:<br>
<br>
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net x300_core/bus_int_i/rfnoc_san=
dbox_i/b_split3_5/noc_shell_split_stream_i/gen_input_in[0].chdr_to_chdr_dat=
a_in_in/chdr_flusher_i/out_pipe_i/m_radio1_out_0_tready has multiple driver=
s: x300_core/bus_int_i/rfnoc_sandbox_i/b_split2_4/noc_shell_split_stream_i/=
gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe_i/o_tvalid_=
i_3__30/O, and x300_core/bus_int_i/rfnoc_sandbox_i/b_split3_5/noc_shell_spl=
it_stream_i/gen_input_in[0].chdr_to_chdr_data_in_in/chdr_flusher_i/out_pipe=
_i/o_tvalid_i_4__18/O.<br>
<br>
I also get a lot of warnings on most of the Xilinx tasks about unconnected =
pins, some critical warnings on the final synthesis step, mostly along the =
lines of &quot;set_clock_groups:No valid object(s) found for &#39;-group [g=
et_clocks bus_clk]&#39;.&quot;=C2=A0 I have no idea if these are to be expe=
cted.<br>
<br>
Does this sound like the right approach for this problem?=C2=A0 If so, what=
 am I doing wrong when building this?<br>
<br>
Thanks,<br>
Jeff<br>
<br>
Here&#39;s my image configuration YML file:<br>
<br>
# General parameters<br>
# -----------------------------------------<br>
schema: rfnoc_imagebuilder_args=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Identifi=
er for the schema used to validate this file<br>
copyright: &#39;Ettus Research, A National Instruments Brand&#39; # Copyrig=
ht information used in file headers<br>
license: &#39;SPDX-License-Identifier: LGPL-3.0-or-later&#39; # License inf=
ormation used in file headers<br>
version: 1.0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # File version<br>
rfnoc_version: 1.0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # RFNoC protocol version<br>
chdr_width: 64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Bit width of the CHDR bus for this image<=
br>
device: &#39;x310&#39;<br>
default_target: &#39;X310_HG&#39;<br>
<br>
# A list of all stream endpoints in design<br>
# ----------------------------------------<br>
stream_endpoints:<br>
=C2=A0 ep0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep1:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep2:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep3:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep4:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep5:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep6:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
=C2=A0 ep7:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 buff_size: 65536=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Ingress buffer size for data<br>
<br>
# A list of all NoC blocks in design<br>
# ----------------------------------<br>
noc_blocks:<br>
=C2=A0 radio0:<br>
=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>
=C2=A0 radio1:<br>
=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>
=C2=A0 split0:<br>
=C2=A0 =C2=A0 block_desc: &#39;split_stream.yml&#39;<br>
=C2=A0 split1:<br>
=C2=A0 =C2=A0 block_desc: &#39;split_stream.yml&#39;<br>
=C2=A0 split2:<br>
=C2=A0 =C2=A0 block_desc: &#39;split_stream.yml&#39;<br>
=C2=A0 split3:<br>
=C2=A0 =C2=A0 block_desc: &#39;split_stream.yml&#39;<br>
=C2=A0 ddc0:<br>
=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>
=C2=A0 =C2=A0 parameters:<br>
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>
=C2=A0 ddc1:<br>
=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>
=C2=A0 =C2=A0 parameters:<br>
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>
=C2=A0 ddc2:<br>
=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>
=C2=A0 =C2=A0 parameters:<br>
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>
=C2=A0 ddc3:<br>
=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>
=C2=A0 =C2=A0 parameters:<br>
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>
<br>
# A list of all static connections in design<br>
# ------------------------------------------<br>
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- srcblk=C2=A0 =3D Source block to conne=
ct<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- srcport =3D Port on the source block t=
o connect<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- dstblk=C2=A0 =3D Destination block to =
connect<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- dstport =3D Port on the destination bl=
ock to connect<br>
connections:<br>
=C2=A0 # Port A<br>
=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk: split0, dstport: in_0 }<=
br>
=C2=A0 - { srcblk: split0, srcport: out_0, dstblk: ddc0,=C2=A0 =C2=A0dstpor=
t: in_0 }<br>
=C2=A0 - { srcblk: ddc0,=C2=A0 =C2=A0srcport: out_0, dstblk: ep0,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 - { srcblk: split0, srcport: out_1, dstblk: ddc0,=C2=A0 =C2=A0dstpor=
t: in_1 }<br>
=C2=A0 - { srcblk: ddc0,=C2=A0 =C2=A0srcport: out_1, dstblk: ep1,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 # Port B<br>
=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: split1, dstport: in_0 }<=
br>
=C2=A0 - { srcblk: split1, srcport: out_0, dstblk: ddc1,=C2=A0 =C2=A0dstpor=
t: in_0 }<br>
=C2=A0 - { srcblk: ddc1,=C2=A0 =C2=A0srcport: out_0, dstblk: ep2,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 - { srcblk: split1, srcport: out_1, dstblk: ddc1,=C2=A0 =C2=A0dstpor=
t: in_1 }<br>
=C2=A0 - { srcblk: ddc1,=C2=A0 =C2=A0srcport: out_1, dstblk: ep3,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 # Port C<br>
=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: split2, dstport: in_0 }<=
br>
=C2=A0 - { srcblk: split2, srcport: out_0, dstblk: ddc2,=C2=A0 =C2=A0dstpor=
t: in_0 }<br>
=C2=A0 - { srcblk: ddc2,=C2=A0 =C2=A0srcport: out_0, dstblk: ep4,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 - { srcblk: split2, srcport: out_1, dstblk: ddc2,=C2=A0 =C2=A0dstpor=
t: in_1 }<br>
=C2=A0 - { srcblk: ddc2,=C2=A0 =C2=A0srcport: out_1, dstblk: ep5,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 # Port D<br>
=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: split3, dstport: in_0 }<=
br>
=C2=A0 - { srcblk: split3, srcport: out_0, dstblk: ddc3,=C2=A0 =C2=A0dstpor=
t: in_0 }<br>
=C2=A0 - { srcblk: ddc3,=C2=A0 =C2=A0srcport: out_0, dstblk: ep6,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
=C2=A0 - { srcblk: split3, srcport: out_1, dstblk: ddc3,=C2=A0 =C2=A0dstpor=
t: in_1 }<br>
=C2=A0 - { srcblk: ddc3,=C2=A0 =C2=A0srcport: out_1, dstblk: ep7,=C2=A0 =C2=
=A0 dstport: in0=C2=A0 }<br>
<br>
=C2=A0 # BSP Connections<br>
=C2=A0 - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport: c=
trlport_radio0 }<br>
=C2=A0 - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport: c=
trlport_radio1 }<br>
=C2=A0 - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:=
 x300_radio }<br>
=C2=A0 - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:=
 x300_radio }<br>
=C2=A0 - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:=
 time_keeper }<br>
=C2=A0 - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:=
 time_keeper }<br>
<br>
# A list of all clock domain connections in design<br>
# ------------------------------------------<br>
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- srcblk=C2=A0 =3D Source block to conne=
ct (Always &quot;_device&quot;_)<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- srcport =3D Clock domain on the source=
 block to connect<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- dstblk=C2=A0 =3D Destination block to =
connect<br>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- dstport =3D Clock domain on the destin=
ation block to connect<br>
clk_domains:<br>
=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport=
: radio }<br>
=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport=
: radio }<br>
=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: ddc0,=
=C2=A0 =C2=A0dstport: ce=C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: ddc1,=
=C2=A0 =C2=A0dstport: ce=C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: ddc2,=
=C2=A0 =C2=A0dstport: ce=C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: ddc3,=
=C2=A0 =C2=A0dstport: ce=C2=A0 =C2=A0 }<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a3c30c05c4fcfb57--

--===============8746494056592260590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8746494056592260590==--
