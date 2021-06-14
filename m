Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BB53A68D9
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 16:19:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2F84384211
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 10:19:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LXqmP21L";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id C59A6383FAF
	for <usrp-users@lists.ettus.com>; Mon, 14 Jun 2021 10:18:59 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso10928569otu.10
        for <usrp-users@lists.ettus.com>; Mon, 14 Jun 2021 07:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xq1GabEas7Z8nTPPGcIhWa21mNXBgLiN+QKXEvKUsQQ=;
        b=LXqmP21LnF6M4Rgjxu9kKE0uV2XiqcGgfru/MMjcIXDSf4IhGY7G+wtVQsP+aRrNmS
         n/Qx0JQOIOBENKgDd3gAYpWt26Hj+Mao/Y2Xza4RzW5vg1QF1HZ0EjVRHTjdR+blgI3z
         kKdnwp9POHQ+zy5hN372s8sCfXJw9WwLadBhDLwVQHOdqHWylsNl9hdWXy9SepecaJYb
         x+qbFFXRLZ0a9IPx5RGTCJ3WYVeYyiPwsB4xtJZsKgnaISYtlVFqhPWJ7ZC3ULBOcwcf
         vjmqFhz9d88cCo824RIfOab1m3zwPVRLsow7qh8w0Zy0Pqx/U7ZqdFzfy9d5AfBSPnPG
         WMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xq1GabEas7Z8nTPPGcIhWa21mNXBgLiN+QKXEvKUsQQ=;
        b=PEjq9Cdz0E+RL0nFHbI7iELkZA7OeWI6StYWAE86W3Svj3mSoOvpNeDMlXVSAAJqGb
         UjNTUBupA+UbcNJdSDZUVyXKkekde712FXZVWFqwnuM+ySOtmePOlLrH9oRBIiVbdKLo
         /o+AqUVh1aNs5Rme9htBE0jgtaSRBVQ2Q6xxn6ZSrHOhOMaHbCA22T74KtOZvs43likV
         bkak5JQNjiLOTzeIurkg0bi8Fgu90ULHJYPrmug/uqXpt8kyTlIr90WEtcw9UdgpP/dk
         2yp4wFTajfJnUMfL/fctGdWpL2dHTjlZFfVT5cvBHbHYygCZsrOVLx8zuuw5zqlhxqxi
         t3CA==
X-Gm-Message-State: AOAM530qkRwG/T+AWg5t/rME8wzpjNvE0RN3MmNUhHiROkoG+hA+HOMJ
	O5y7nxi+dfLeYYD31/HXRWiCqcOLqWF0x2Jp6ODY0o3c6I0=
X-Google-Smtp-Source: ABdhPJzbPe2tHn0kyGrBSek051TexLdBc89JO0d32gD0QG19oY3KDhNlhDbKppLcz/GmJKdwosHavfhurkNb8/SlQdE=
X-Received: by 2002:a9d:7749:: with SMTP id t9mr13436144otl.58.1623680338892;
 Mon, 14 Jun 2021 07:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <7fc6799d-d4af-f60b-645c-e199109e6535@olifantasia.com>
In-Reply-To: <7fc6799d-d4af-f60b-645c-e199109e6535@olifantasia.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 14 Jun 2021 10:18:48 -0400
Message-ID: <CAB__hTQXoMJYN7nzPrNmgnJFMsFDGk77Cn4QYA6wjt3yXu1Ghg@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>
Message-ID-Hash: 4R4P5Y3VPW352JWL6XJ3ZJ76PYUFZNV5
X-Message-ID-Hash: 4R4P5Y3VPW352JWL6XJ3ZJ76PYUFZNV5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to instantiate axi_ram_fifo (radio_2x64.yml) in E310. Or how to find out or add _device_ port names
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4R4P5Y3VPW352JWL6XJ3ZJ76PYUFZNV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4268334712229143355=="

--===============4268334712229143355==
Content-Type: multipart/alternative; boundary="000000000000d44a5a05c4ba897b"

--000000000000d44a5a05c4ba897b
Content-Type: text/plain; charset="UTF-8"

Hi Martin,
My understanding is that the axi_ram_fifo is not available for the E310.
Perhaps Ettus can comment.
Rob

On Sat, Jun 12, 2021 at 3:31 PM Martin <usrp-users-list@olifantasia.com>
wrote:

> Hi,
> Amongst others I am trying to add an RFNoc axi_ram_fifo using
> radio_2x64.yml to a E310 RFNoC image. But I am having a hard time to
> find out which port names to use for connections and clocks.
>
> Apparently I am using the wrong port name for dram. Or I somehow have to
> add dram to the _device_
> But I haven't found where all ports of _device_ are defined for each
> USRP. In which file is that?
> Do I have to add a dram component to the verilog?
> I saw that e320_core.v has dram defined. But I am still not sure where
> the dram portname is defined and how it corresponds to the dram_xxx
> wires in the verilog.
>
> I added the following to my e310_rfnoc_image_core.yml file based on the
> examples I saw in e320 and x310 yml files.
>
> noc_blocks:
>    fifo0:
>      block_desc: 'axi_ram_fifo_2x64.yml'
>      parameters:
>        # These parameters correspond to the memory interface on the E320
>        MEM_ADDR_W:   31
>        MEM_DATA_W:   64
>        MEM_CLK_RATE: "300e6" #TODO MDVH check if this clockspeed is
> correct for E310 (copied from E320)
>        # Create two non-overlapping 32 MB buffers by default
>        FIFO_ADDR_BASE: "{31'h02000000, 31'h00000000}" #Are these
> addresses correct for E310 (copied from E320)
>        FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF}"
>
> connections:
>    - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram  }
>
> clk_domains:
>    - { srcblk: _device_, srcport: dram,  dstblk: fifo0,  dstport: mem   }
>
> When I try to build with rfnoc_image_builder I get the error
> [ERR] 1 Unresolved connection(s)
> [ERR]     (fifo0-axi_ram -> _device_-dram)
> [INF]         (('radio0', 'ctrl_port', 'master'),)
> [INF]         (('radio0', 'time_keeper', 'listener'),)
> [INF]         (('radio0', 'x300_radio', 'slave'),)
> [INF]         (('fifo0', 'axi_ram', 'master'),)
> [INF]         (('_device_', 'ctrlport_radio', 'slave'),)
> [INF]         (('_device_', 'time_keeper', 'broadcaster'),)
> [INF]         (('_device_', 'x300_radio', 'master'),)
>
>
> Here is the whole log:
>
> rfnoc_image_builder -y
> e310_rfnoc_gamma_image_core_add_fifo_logpwr_keep_one_in_n_moving_avg.yml
> -t E310_SG1 -F ../uhd40/fpga 2>&1 | tee
>
> rfnoc_image_builder_-y_e310_rfnoc_gamma_image_core_add_fifo_logpwr_keep_one_in_n_moving_avg.yml_2021061201.log
> [INF] Using FPGA directory /opt/uhd40/src/uhd40/fpga
> [INF] Selected device e310
> [INF] Using io_signatures.yml from /opt/uhd40/share/uhd/rfnoc/core.
> [INF] Using e310_bsp.yml from /opt/uhd40/share/uhd/rfnoc/core.
> [INF] Adding block description from addsub.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from axi_ram_fifo.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from axi_ram_fifo_2x64.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from axi_ram_fifo_4x64.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from ddc.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from duc.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from fft_1x64.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from fir_filter.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from fosphor.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from keep_one_in_n.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from logpwr.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from moving_avg.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from null_src_sink.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from radio.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from radio_1x64.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from radio_2x64.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from replay.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from siggen.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from split_stream.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from switchboard.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from vector_iir.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [INF] Adding block description from window.yml
> (/opt/uhd40/share/uhd/rfnoc/blocks).
> [ERR] 1 Unresolved connection(s)
> [ERR]     (fifo0-axi_ram -> _device_-dram)
> [INF]         (('radio0', 'ctrl_port', 'master'),)
> [INF]         (('radio0', 'time_keeper', 'listener'),)
> [INF]         (('radio0', 'x300_radio', 'slave'),)
> [INF]         (('fifo0', 'axi_ram', 'master'),)
> [INF]         (('_device_', 'ctrlport_radio', 'slave'),)
> [INF]         (('_device_', 'time_keeper', 'broadcaster'),)
> [INF]         (('_device_', 'x300_radio', 'master'),)
>
> Thanks in advance,
>
> Martin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d44a5a05c4ba897b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div>My understanding is that the axi_ram_fifo i=
s not available for the E310.=C2=A0 Perhaps Ettus can comment.</div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, Jun 12, 2021 at 3:31 PM Martin &lt;<a href=3D"mailto:usrp-us=
ers-list@olifantasia.com">usrp-users-list@olifantasia.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
Amongst others I am trying to add an RFNoc axi_ram_fifo using <br>
radio_2x64.yml to a E310 RFNoC image. But I am having a hard time to <br>
find out which port names to use for connections and clocks.<br>
<br>
Apparently I am using the wrong port name for dram. Or I somehow have to <b=
r>
add dram to the _device_<br>
But I haven&#39;t found where all ports of _device_ are defined for each <b=
r>
USRP. In which file is that?<br>
Do I have to add a dram component to the verilog?<br>
I saw that e320_core.v has dram defined. But I am still not sure where <br>
the dram portname is defined and how it corresponds to the dram_xxx <br>
wires in the verilog.<br>
<br>
I added the following to my e310_rfnoc_image_core.yml file based on the <br=
>
examples I saw in e320 and x310 yml files.<br>
<br>
noc_blocks:<br>
=C2=A0 =C2=A0fifo0:<br>
=C2=A0 =C2=A0 =C2=A0block_desc: &#39;axi_ram_fifo_2x64.yml&#39;<br>
=C2=A0 =C2=A0 =C2=A0parameters:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0# These parameters correspond to the memory inte=
rface on the E320<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0MEM_ADDR_W:=C2=A0 =C2=A031<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0MEM_DATA_W:=C2=A0 =C2=A064<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0MEM_CLK_RATE: &quot;300e6&quot; #TODO MDVH check=
 if this clockspeed is <br>
correct for E310 (copied from E320)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create two non-overlapping 32 MB buffers by de=
fault<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0FIFO_ADDR_BASE: &quot;{31&#39;h02000000, 31&#39;=
h00000000}&quot; #Are these <br>
addresses correct for E310 (copied from E320)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0FIFO_ADDR_MASK: &quot;{31&#39;h01FFFFFF, 31&#39;=
h01FFFFFF}&quot;<br>
<br>
connections:<br>
=C2=A0 =C2=A0- { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport=
: dram=C2=A0 }<br>
<br>
clk_domains:<br>
=C2=A0 =C2=A0- { srcblk: _device_, srcport: dram,=C2=A0 dstblk: fifo0,=C2=
=A0 dstport: mem=C2=A0 =C2=A0}<br>
<br>
When I try to build with rfnoc_image_builder I get the error<br>
[ERR] 1 Unresolved connection(s)<br>
[ERR]=C2=A0 =C2=A0 =C2=A0(fifo0-axi_ram -&gt; _device_-dram)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;ctrl_port&#=
39;, &#39;master&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;time_keeper=
&#39;, &#39;listener&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;x300_radio&=
#39;, &#39;slave&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;fifo0&#39;, &#39;axi_ram&#39;=
, &#39;master&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;ctrlport_=
radio&#39;, &#39;slave&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;time_keep=
er&#39;, &#39;broadcaster&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;x300_radi=
o&#39;, &#39;master&#39;),)<br>
<br>
<br>
Here is the whole log:<br>
<br>
rfnoc_image_builder -y <br>
e310_rfnoc_gamma_image_core_add_fifo_logpwr_keep_one_in_n_moving_avg.yml <b=
r>
-t E310_SG1 -F ../uhd40/fpga 2&gt;&amp;1 | tee <br>
rfnoc_image_builder_-y_e310_rfnoc_gamma_image_core_add_fifo_logpwr_keep_one=
_in_n_moving_avg.yml_2021061201.log<br>
[INF] Using FPGA directory /opt/uhd40/src/uhd40/fpga<br>
[INF] Selected device e310<br>
[INF] Using io_signatures.yml from /opt/uhd40/share/uhd/rfnoc/core.<br>
[INF] Using e310_bsp.yml from /opt/uhd40/share/uhd/rfnoc/core.<br>
[INF] Adding block description from addsub.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from axi_ram_fifo.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from axi_ram_fifo_2x64.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from axi_ram_fifo_4x64.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from ddc.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from duc.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from fft_1x64.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from fir_filter.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from fosphor.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from keep_one_in_n.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from logpwr.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from moving_avg.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from null_src_sink.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from radio.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from radio_1x64.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from radio_2x64.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from replay.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from siggen.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from split_stream.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from switchboard.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from vector_iir.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[INF] Adding block description from window.yml <br>
(/opt/uhd40/share/uhd/rfnoc/blocks).<br>
[ERR] 1 Unresolved connection(s)<br>
[ERR]=C2=A0 =C2=A0 =C2=A0(fifo0-axi_ram -&gt; _device_-dram)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;ctrl_port&#=
39;, &#39;master&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;time_keeper=
&#39;, &#39;listener&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;x300_radio&=
#39;, &#39;slave&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;fifo0&#39;, &#39;axi_ram&#39;=
, &#39;master&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;ctrlport_=
radio&#39;, &#39;slave&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;time_keep=
er&#39;, &#39;broadcaster&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;x300_radi=
o&#39;, &#39;master&#39;),)<br>
<br>
Thanks in advance,<br>
<br>
Martin<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d44a5a05c4ba897b--

--===============4268334712229143355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4268334712229143355==--
