Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D250225E337
	for <lists+usrp-users@lfdr.de>; Fri,  4 Sep 2020 23:15:49 +0200 (CEST)
Received: from [::1] (port=40160 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEJ3h-0001d0-Rd; Fri, 04 Sep 2020 17:15:45 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:45874)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kEJ3e-0001XK-0B
 for usrp-users@lists.ettus.com; Fri, 04 Sep 2020 17:15:42 -0400
Received: by mail-oi1-f170.google.com with SMTP id d189so7781343oig.12
 for <usrp-users@lists.ettus.com>; Fri, 04 Sep 2020 14:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tquf9oRIi104Jmzz8HqVgKZMip1dipry098D9aRzPGY=;
 b=WQssaG0SahAb3zQMdbLzmmemMnEdtbHDNRpM+3uFSNUiHmMsdClBKM3j33ERVhk3rE
 94OzOtQQ/VaA2d3gxss5OKTxmV7DgPb2WEGp0ohFiLaXgDuppC4lsjYVn1KBTd1sjzi7
 hjrlYAVBcFNJR/3xW+IzRFU+PUHxUfj3F9ORDwzKhoRiMuNv6LX+cFQ0mFtzNSjQF3MM
 OTtbrGm6uRKpIaavRrExTzSOm3XAzXeoNDgSqBW/HUgDI+D1KRvEsfkQGtGMzGjGv3Re
 XCg6Q7mAupa23rk020Mo7jKyF2OHj6s08wWT6wwwZ59uk2JVHSkBTq+9ISEwGPkyab7a
 M+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tquf9oRIi104Jmzz8HqVgKZMip1dipry098D9aRzPGY=;
 b=nMLiEaSCJyMuxZhnM3GbyIQnuzBJUF1eDvJnuhzSXdaBztUpfPYI6rZWF+WRwWLDk+
 bTJaRkxGnGW5TimzNkiaybmegUbIcAVeXpz4k6xk0BNuaRya5g1zpI1hU9qmQ7EGlWEX
 3HWz2iUb+AUhZz5YnGL0VtQG+J8D9Db0PuzecwJOYcaaKwG7w419AbdhAcbmYrR1h7fK
 rKFg99RjI2VZLqzgqY5IHJgxf8bzlT/PqN9I7UALkeQcV9diR0evkkD04Lqraf4754Z9
 pIZEeYRljU5CkTUFwp2v+tmoNxq94gmsvG2WcxQZT8XbSZfq4vi7qHOiuqe68Lj/5Uzb
 RnVw==
X-Gm-Message-State: AOAM532rmKQd+a8zglUWiECxKsl0DO4r3X2Oitg41Xr1ND5cNGyUpfjU
 I8Cec6M2ggtLkwEyK5C8270JBGL//P2xag87ggwzvaT1
X-Google-Smtp-Source: ABdhPJyFKdXn44UcvMSxc5gFzDFEAKIEmbWMggm9Z5uGFobQcBI3KmDSvhvg37kHiASLW3FpSrEOaG38ed4YwXQ++Oc=
X-Received: by 2002:a05:6808:5d3:: with SMTP id
 d19mr6232506oij.145.1599254101134; 
 Fri, 04 Sep 2020 14:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTxYJoOW1Sk64CGui+1iH7P+i_frNjrF8RbyO4TunUeOA@mail.gmail.com>
In-Reply-To: <CAB__hTTxYJoOW1Sk64CGui+1iH7P+i_frNjrF8RbyO4TunUeOA@mail.gmail.com>
Date: Fri, 4 Sep 2020 16:14:49 -0500
Message-ID: <CAFche=jzoK9A_d9GH8-n-0V9B4T553LU9V0scO_oH_29BcYc4g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using Replay block in UHD-4.0
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============3287649590100256432=="
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

--===============3287649590100256432==
Content-Type: multipart/alternative; boundary="0000000000009aa61a05ae835c1e"

--0000000000009aa61a05ae835c1e
Content-Type: text/plain; charset="UTF-8"

 Hi Rob,

We actually just added the Replay to the default images, so that should
show up in the next release candidate, along with some fixes that will
allow multiple DRAM ports to work. It looks like you're missing the
connection to the DRAM data port. Here's an example of what to add for each
Replay block to the connections:

- { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }

Also, make sure that MEM_ADDR_W matches the size of the memory on the
device (so it should be 31 for N3xx) series.

Thanks,

Wade


On Thu, Sep 3, 2020 at 5:28 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am having trouble using rfnoc_replay_samples_from_file with a custom
> FPGA image I built (N310 XG - UHD-4.0). I used rfnoc_image_builder and
> manually modified the yml (see below) to include two 2-channel Replay
> blocks in addition to the default statically linked blocks. When I try to
> run the rfnoc_replay_samples_from_file example, I get the following error.
> Any ideas?
> Rob
>
> // ************* rfnoc_samples_from_file output **************
> $ rfnoc_replay_samples_from_file --args="addr=192.168.61.2" --file
> /media/ramfolder/tx_0.dat --freq 2400e6 --rate 125e6
> ...
> Replay file size:     32768 bytes (4096 qwords, 8192 samples)
> Record base address:  0x0
> Record buffer size:   32768 bytes
> Record fullness:      0 bytes
>
> Emptying record buffer...
> Record fullness:      0 bytes
>
> Sending data to be recorded...
> ERROR: Unable to send 8192 samples
>
>
> // *************  yml file used in rfnoc_image_builder ************
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
> device: 'n310'
> default_target: 'N310_XG'
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
>     buff_size: 32768                # Ingress buffer size for data
>   ep3:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 32768                # Ingress buffer size for data
>   ep4:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 256                  # Ingress buffer size for data
>   ep5:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 256                  # Ingress buffer size for data
>   ep6:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 256                  # Ingress buffer size for data
>   ep7:                       # Stream endpoint name
>     ctrl: False                     # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 256                  # Ingress buffer size for data
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
>   duc1:
>     block_desc: 'duc.yml'
>     parameters:
>       NUM_PORTS: 2
>   ddc1:
>     block_desc: 'ddc.yml'
>     parameters:
>       NUM_PORTS: 2
>   radio1:
>     block_desc: 'radio_2x64.yml'
>   replay0:
>     block_desc: 'replay.yml'
>     parameters:
>       NUM_PORTS: 2
>       MEM_DATA_W: 64
>       MEM_ADDR_W: 30
>   replay1:
>     block_desc: 'replay.yml'
>     parameters:
>       NUM_PORTS: 2
>       MEM_DATA_W: 64
>       MEM_ADDR_W: 30
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
>   - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
>   - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
>   - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
>   - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
>   - { srcblk: ep1,    srcport: out0,  dstblk: duc0,   dstport: in_1 }
>   - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
>   - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
>   - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
>   - { srcblk: ep2,    srcport: out0,  dstblk: duc1,   dstport: in_0 }
>   - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
>   - { srcblk: radio1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
>   - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
>   - { srcblk: ep3,    srcport: out0,  dstblk: duc1,   dstport: in_1 }
>   - { srcblk: duc1,   srcport: out_1, dstblk: radio1, dstport: in_1 }
>   - { srcblk: radio1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
>   - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
>   - { srcblk: ep4,    srcport: out0,  dstblk: replay0,dstport: in_0 }
>   - { srcblk: replay0,srcport: out_0, dstblk: ep4,    dstport: in0  }
>   - { srcblk: ep5,    srcport: out0,  dstblk: replay0,dstport: in_1 }
>   - { srcblk: replay0,srcport: out_1, dstblk: ep5,    dstport: in0  }
>   - { srcblk: ep6,    srcport: out0,  dstblk: replay1,dstport: in_0 }
>   - { srcblk: replay1,srcport: out_0, dstblk: ep6,    dstport: in0  }
>   - { srcblk: ep7,    srcport: out0,  dstblk: replay1,dstport: in_1 }
>   - { srcblk: replay1,srcport: out_1, dstblk: ep7,    dstport: in0  }
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
> # ------------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> #         - srcblk  = Source block to connect (Always "_device"_)
> #         - srcport = Clock domain on the source block to connect
> #         - dstblk  = Destination block to connect
> #         - dstport = Clock domain on the destination block to connect
> clk_domains:
>   - { srcblk: _device_, srcport: radio,      dstblk: radio0, dstport:
> radio }
>   - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: ddc0,   dstport: ce
>  }
>   - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: duc0,   dstport: ce
>  }
>   - { srcblk: _device_, srcport: radio,      dstblk: radio1, dstport:
> radio }
>   - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: ddc1,   dstport: ce
>  }
>   - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: duc1,   dstport: ce
>  }
>   - { srcblk: _device_, srcport: dram,       dstblk: replay0,dstport: mem
>   }
>   - { srcblk: _device_, srcport: dram,       dstblk: replay1,dstport: mem
>   }
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009aa61a05ae835c1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hi Rob,</div><div><br></div><div>We actually just added the Replay=20
to the default images, so that should show up in the next release=20
candidate, along with some fixes that will allow multiple DRAM ports to=20
work. It looks like you&#39;re missing the connection to the DRAM data port=
.
 Here&#39;s an example of what to add for each Replay block to the=20
connections:</div><div><br></div><div>- { srcblk: replay0, srcport: axi_ram=
, dstblk: _device_, dstport: dram }</div><div><br></div><div>Also, make sur=
e that MEM_ADDR_W matches the size of the memory on the device (so it shoul=
d be 31 for N3xx) series.</div><div><br></div><div>Thanks,</div><div><br></=
div><div>Wade</div><div><br></div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Sep 3, 2020 at 5:28 PM Rob Kossler via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi,<br><div>I am having trouble using rfnoc_replay_samples_from_file with =
a custom FPGA image I built (N310 XG - UHD-4.0). I used rfnoc_image_builder=
 and manually modified the yml (see below) to include two 2-channel Replay =
blocks in addition to the default statically linked blocks. When I try to r=
un the rfnoc_replay_samples_from_file example, I get the following error.=
=C2=A0 Any ideas?</div><div>Rob</div><div><font face=3D"monospace"><br></fo=
nt></div><div><font face=3D"monospace">// ************* rfnoc_samples_from_=
file output **************</font></div><div><font face=3D"monospace">$=C2=
=A0</font>rfnoc_replay_samples_from_file --args=3D&quot;addr=3D192.168.61.2=
&quot; --file /media/ramfolder/tx_0.dat --freq 2400e6 --rate 125e6</div><di=
v>...</div><div><font face=3D"monospace">Replay file size: =C2=A0 =C2=A0 32=
768 bytes (4096 qwords, 8192 samples)<br>Record base address: =C2=A00x0<br>=
Record buffer size: =C2=A0 32768 bytes<br>Record fullness: =C2=A0 =C2=A0 =
=C2=A00 bytes<br><br>Emptying record buffer...<br>Record fullness: =C2=A0 =
=C2=A0 =C2=A00 bytes<br><br>Sending data to be recorded...<br>ERROR: Unable=
 to send 8192 samples<br></font></div><div><font face=3D"monospace"><br></f=
ont></div><div><br></div><div><font face=3D"monospace">// *************=C2=
=A0 yml file used in rfnoc_image_builder ************</font></div><div><div=
><font face=3D"monospace"># General parameters<br># -----------------------=
------------------<br>schema: rfnoc_imagebuilder_args =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 # Identifier for the schema used to validate this file<br>copyright:=
 &#39;Ettus Research, A National Instruments Brand&#39; # Copyright informa=
tion used in file headers<br>license: &#39;SPDX-License-Identifier: LGPL-3.=
0-or-later&#39; # License information used in file headers<br>version: 1.0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0# File version<br>rfnoc_version: 1.0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# RFNoC proto=
col version<br>chdr_width: 64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Bit width of the CHDR bus fo=
r this image<br>device: &#39;n310&#39;<br>default_target: &#39;N310_XG&#39;=
<br><br># A list of all stream endpoints in design<br># -------------------=
---------------------<br>stream_endpoints:<br>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoi=
nt name<br>=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>=
=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 =
buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# I=
ngress buffer size for data<br>=C2=A0 ep1: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=
=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: =
True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size f=
or data<br>=C2=A0 ep2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: Fals=
e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # E=
ndpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint pa=
sses data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 =
ep3: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes c=
ontrol traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic=
<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>=C2=A0 ep4: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream=
 endpoint name<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br=
>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 =
buff_size: 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# Ingress buffer size for data<br>=C2=A0 ep5: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name=
<br>=C2=A0 =C2=A0 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0=
 data: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0# Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 256=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress bu=
ffer size for data<br>=C2=A0 ep6: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0=
 ctrl: False =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 # Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# =
Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 256 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for d=
ata<br>=C2=A0 ep7: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: False =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # End=
point passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passe=
s data traffic<br>=C2=A0 =C2=A0 buff_size: 256 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br><br># A=
 list of all NoC blocks in design<br># ----------------------------------<b=
r>noc_blocks:<br>=C2=A0 duc0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NoC block name<br>=C2=A0 =C2=A0 block_desc=
: &#39;duc.yml&#39; =C2=A0 =C2=A0# Block device descriptor file<br>=C2=A0 =
=C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 ddc0:<br>=
=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br=
>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 radio0:<br>=C2=A0 =C2=A0 block=
_desc: &#39;radio_2x64.yml&#39;<br>=C2=A0 duc1:<br>=C2=A0 =C2=A0 block_desc=
: &#39;duc.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NU=
M_PORTS: 2<br>=C2=A0 ddc1:<br>=C2=A0 =C2=A0 block_desc: &#39;ddc.yml&#39;<b=
r>=C2=A0 =C2=A0 parameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 =
radio1:<br>=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>=C2=A0 rep=
lay0:<br>=C2=A0 =C2=A0 block_desc: &#39;replay.yml&#39;<br>=C2=A0 =C2=A0 pa=
rameters:<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 =C2=A0 =C2=A0 MEM_=
DATA_W: 64<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br>=C2=A0 replay1:<br>=C2=
=A0 =C2=A0 block_desc: &#39;replay.yml&#39;<br>=C2=A0 =C2=A0 parameters:<br=
>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 2<br>=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 64<b=
r>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br><br># A list of all static connect=
ions in design<br># ------------------------------------------<br># Format:=
 A list of connection maps (list of key-value pairs) with the following key=
s<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=3D Source block to conne=
ct<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Port on the source block =
to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D Destination =
block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Port on the=
 destination block to connect<br>connections:<br>=C2=A0 - { srcblk: ep0, =
=C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc0, =C2=A0 dstport: in_0 }<br>=
=C2=A0 - { srcblk: duc0, =C2=A0 srcport: out_0, dstblk: radio0, dstport: in=
_0 }<br>=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk: ddc0, =C2=A0 dst=
port: in_0 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_0, dstblk: ep0=
, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep1, =C2=A0 =C2=
=A0srcport: out0, =C2=A0dstblk: duc0, =C2=A0 dstport: in_1 }<br>=C2=A0 - { =
srcblk: duc0, =C2=A0 srcport: out_1, dstblk: radio0, dstport: in_1 }<br>=C2=
=A0 - { srcblk: radio0, srcport: out_1, dstblk: ddc0, =C2=A0 dstport: in_1 =
}<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_1, dstblk: ep1, =C2=A0 =
=C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep2, =C2=A0 =C2=A0srcport:=
 out0, =C2=A0dstblk: duc1, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc=
1, =C2=A0 srcport: out_0, dstblk: radio1, dstport: in_0 }<br>=C2=A0 - { src=
blk: radio1, srcport: out_0, dstblk: ddc1, =C2=A0 dstport: in_0 }<br>=C2=A0=
 - { srcblk: ddc1, =C2=A0 srcport: out_0, dstblk: ep2, =C2=A0 =C2=A0dstport=
: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep3, =C2=A0 =C2=A0srcport: out0, =C2=A0=
dstblk: duc1, =C2=A0 dstport: in_1 }<br>=C2=A0 - { srcblk: duc1, =C2=A0 src=
port: out_1, dstblk: radio1, dstport: in_1 }<br>=C2=A0 - { srcblk: radio1, =
srcport: out_1, dstblk: ddc1, =C2=A0 dstport: in_1 }<br>=C2=A0 - { srcblk: =
ddc1, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 =C2=A0dstport: in0 =C2=A0}=
<br>=C2=A0 - { srcblk: ep4, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: repla=
y0,dstport: in_0 }<br>=C2=A0 - { srcblk: replay0,srcport: out_0, dstblk: ep=
4, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep5, =C2=A0 =C2=
=A0srcport: out0, =C2=A0dstblk: replay0,dstport: in_1 }<br>=C2=A0 - { srcbl=
k: replay0,srcport: out_1, dstblk: ep5, =C2=A0 =C2=A0dstport: in0 =C2=A0}<b=
r>=C2=A0 - { srcblk: ep6, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: replay1=
,dstport: in_0 }<br>=C2=A0 - { srcblk: replay1,srcport: out_0, dstblk: ep6,=
 =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ep7, =C2=A0 =C2=A0=
srcport: out0, =C2=A0dstblk: replay1,dstport: in_1 }<br>=C2=A0 - { srcblk: =
replay1,srcport: out_1, dstblk: ep7, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=
=C2=A0 - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport: c=
trlport_radio0 }<br>=C2=A0 - { srcblk: radio1, srcport: ctrl_port, dstblk: =
_device_, dstport: ctrlport_radio1 }<br>=C2=A0 - { srcblk: _device_, srcpor=
t: x300_radio0, dstblk: radio0, dstport: x300_radio }<br>=C2=A0 - { srcblk:=
 _device_, srcport: x300_radio1, dstblk: radio1, dstport: x300_radio }<br>=
=C2=A0 - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:=
 time_keeper }<br>=C2=A0 - { srcblk: _device_, srcport: time_keeper, dstblk=
: radio1, dstport: time_keeper }<br><br># A list of all clock domain connec=
tions in design<br># ------------------------------------------------<br># =
Format: A list of connection maps (list of key-value pairs) with the follow=
ing keys<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=3D Source block t=
o connect (Always &quot;_device&quot;_)<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - =
srcport =3D Clock domain on the source block to connect<br># =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 - dstblk =C2=A0=3D Destination block to connect<br># =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 - dstport =3D Clock domain on the destination block to=
 connect<br>clk_domains:<br>=C2=A0 - { srcblk: _device_, srcport: radio, =
=C2=A0 =C2=A0 =C2=A0dstblk: radio0, dstport: radio }<br>=C2=A0 - { srcblk: =
_device_, srcport: rfnoc_chdr, dstblk: ddc0, =C2=A0 dstport: ce =C2=A0 =C2=
=A0}<br>=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: duc0, =C2=
=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: rad=
io, =C2=A0 =C2=A0 =C2=A0dstblk: radio1, dstport: radio }<br>=C2=A0 - { srcb=
lk: _device_, srcport: rfnoc_chdr, dstblk: ddc1, =C2=A0 dstport: ce =C2=A0 =
=C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: duc1, =
=C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 - { srcblk: _device_, srcport: =
dram, =C2=A0 =C2=A0 =C2=A0 dstblk: replay0,dstport: mem =C2=A0 }<br>=C2=A0 =
- { srcblk: _device_, srcport: dram, =C2=A0 =C2=A0 =C2=A0 dstblk: replay1,d=
stport: mem =C2=A0 }<br></font></div><div></div><div><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009aa61a05ae835c1e--


--===============3287649590100256432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3287649590100256432==--

