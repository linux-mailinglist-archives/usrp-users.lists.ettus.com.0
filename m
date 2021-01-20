Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E94812FDC0B
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jan 2021 22:47:22 +0100 (CET)
Received: from [::1] (port=41234 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2LJw-0003Nn-Jn; Wed, 20 Jan 2021 16:47:20 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:41383)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2LJs-0003Hd-23
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 16:47:16 -0500
Received: by mail-ot1-f45.google.com with SMTP id x13so24848962oto.8
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 13:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=pyEvxYPAJlCtQ1JyE8cqt3V3CygC8+Nigf1M9yFEk7U=;
 b=YXE4XYCMPV57lrgT5art9IhYc03gEw3rQbmDL4d42Ppc3kthCRxcPZh+ntSo0OGFPJ
 cDWzXbAd5ULKD+dIR0HLOxXUKVlEATQ2vT4rPY4j5PRRUB376ciiKGBCi6mPEFqKvL6b
 YRrz12diOiYdajYWykDht0Tya+d5VDmI9Xh1AZYMfMb91NZ0WXLD2UgEC+p1IIsbiZMA
 RoPrUNH+0OdjvHD8OGarRh3okeuIaY7gVSsWwdwMw8J4KDZOU0Jlq2WLESL0YHS1g9sJ
 emIwQbAi834ILw/qh+QTK5jlBYyG0yu+bzXPUwxeEnQaBkR2vF2qR/Lt5NFNv3eb5u6G
 PhfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=pyEvxYPAJlCtQ1JyE8cqt3V3CygC8+Nigf1M9yFEk7U=;
 b=HxVDLsAobhga/zKoYJ1GWw9UzDzjmSgHc+2P4cRnWHnzWsjFXSjCRAcbC9ZPI8xxz9
 gxsDHE5lI0T4pc9zlcX+N+r0Y/F76rF/fm11yLvWt0sM5VkxlakoyfvMgnHWh8OCYjEK
 91lo9uDaRf6lBpaHi1cyx0SVSNY/vJnPgPhDPQb71ppQAYIcdzUIyitP6oXMV1dUdAeV
 GqdvgDzG1KzjxdNijpLJgpnSkZedVl9pFhX69pyaTzJFsXbsRZcFuD89vZkYMcbuXkv2
 2irA4igN2OYK5OCsBwPrs1Bz4RE9hFsshgDxyhieHf+NrL/Ytw+bDIYw0O1wIiXRzESQ
 OzFA==
X-Gm-Message-State: AOAM533PKi67YOMXApN6dQXBHpi8ayOulLrXa+mD2R3DxktMYVhc3tj4
 cLxx7C1ta/R9KuHnV6cQWsGKHUHDwLHwo0G06YwDTkbu7qxj6A==
X-Google-Smtp-Source: ABdhPJx2MJo/baDDRKhkyLIi1aKkDZ2cSR3J5OLS9CxJg2XZY4+poXpH2PNRgjsxiaNoeTCZyg2LZrgDwXBhznk+OTE=
X-Received: by 2002:a9d:4e87:: with SMTP id v7mr8201779otk.302.1611179194956; 
 Wed, 20 Jan 2021 13:46:34 -0800 (PST)
MIME-Version: 1.0
References: <20210119174249.2552vsmlnc35d6i4@barbe>
In-Reply-To: <20210119174249.2552vsmlnc35d6i4@barbe>
Date: Wed, 20 Jan 2021 16:46:23 -0500
Message-ID: <CAB__hTT9z0WHtD88DTrrn6CeCXd8Eg3TEdLAjuh_vt0s7sqncg@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000967e8305b95be334"
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

--000000000000967e8305b95be334
Content-Type: multipart/alternative; boundary="000000000000967e8105b95be332"

--000000000000967e8105b95be332
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,
I don't see anything wrong.  Given that you said the FFT block works but
your block doesn't, could it be something related to a c++ block
controller?

Attached is a program I use to test an individual block with the graph
"host =3D> block =3D> host".  It might help to see if this works.  This
application does not require forwarding of the issue_stream_cmd as is
necessary when your block is used as part of the Rx chain to the radio.
Attached you will find the CPP source and below you will find a command
line that works for me with the Ettus Switchboard block which is just a
"thru" connection.
Rob

rfnoc_block_test --args=3Daddr=3D192.168.61.2 --block-id Switchboard#0
--nsamps=3D2048 --tx-stream-args "spp=3D256" --rx-stream-args "spp=3D256"

On Tue, Jan 19, 2021 at 12:43 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> I am trying to implement simple RFNoC block in my FPGA image (X310),
> and test it using UHD C++ API.
>
> However, none of my blocks worked when inserted between the DDC and
> rx_stream.
> Both rfnoc-example/gain block (from upstream host/example)
> and bare bones block from rfnocmodtool (passthrough) failed.
>
> The procedure is as follow:
>  1. cd path/of/OOT_Block (gain or passthrough)
>  2. cmake -S . -B build -DUHD_FPGA_DIR=3D/path/to/uhd/fpga (upstream UHD4=
)
>  3. cd build; make; make x310_rfnoc_image_core
>  4. viv_jtag_program
> /path/to/uhd/fpga/usrp3/top/x300/build/usrp_x310_fpga_HG.bit (or
> uhd_image_loader + restart USRP).
>  5. cd /path/to/uhd/example/code
>  6. g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd
>  7. ./test --block-id "0/Block#0" --rate 20e6
>
> But it exits with timeout:
>
> """
> Creating the RFNoC graph with args: ...
> [INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400;
> UHD_4.0.0.0-4
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x4577,
> 0xffff
> Using radio 0, channel 0
> Looking for source block 0/Radio#0, port 0
> Setting RX Rate: 20.000000 Msps...
> DDC block found
> Setting decimation value to 10
> Actual decimation value is 10
> Actual RX Rate: 20.000000 Msps...
>
> Setting RX Freq: 0.000000 MHz...
> Actual RX Freq: 10.000000 MHz...
>
> Setting samples per packet to: 64
> Actual samples per packet =3D 64
> Using streamer args:
> Press Ctrl + C to stop streaming...
> Issuing stream cmd
> Timeout while streaming
> Issuing stop stream cmd
>
> Done!
> """
>
> It runs OK using "./test --rate 20e6" (without inserting
> any OOT block between DDC and rx_stream).
> It also works using an upstream provided block (eg FFT).
>
> The rfnoc_rx_to_file.cpp is slightly modified from upstream
> (since upstream does not handle argument "block-id").
> The patch is at the end of this mail.
> It should apply nicely by piping this mail to patch or git am/apply.
>
> Does anyone know how to solve this?
>
> diff --git a/host/examples/rfnoc_rx_to_file.cpp
> b/host/examples/rfnoc_rx_to_file.cpp
> index 2d648c10d..64d177d79 100644
> --- a/host/examples/rfnoc_rx_to_file.cpp
> +++ b/host/examples/rfnoc_rx_to_file.cpp
> @@ -479,13 +479,22 @@ int UHD_SAFE_MAIN(int argc, char* argv[])
>      //}
>
>      // Connect blocks and commit the graph
> -    for (auto& edge : chain) {
> -        if
> (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::NODE_ID_SEP))=
 {
> -            graph->connect(edge.src_blockid, edge.src_port, rx_stream, 0=
);
> -        } else {
> -            graph->connect(
> -                edge.src_blockid, edge.src_port, edge.dst_blockid,
> edge.dst_port);
> -        }
> +    //for (auto& edge : chain) {
> +    //    if
> (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::NODE_ID_SEP))=
 {
> +    //        graph->connect(edge.src_blockid, edge.src_port, rx_stream,
> 0);
> +    //    } else {
> +    //        graph->connect(
> +    //            edge.src_blockid, edge.src_port, edge.dst_blockid,
> edge.dst_port);
> +    //    }
> +    //}
> +    auto ddc_ctrl_id =3D ddc_ctrl->get_block_id();
> +    graph->connect(radio_ctrl_id, 0, ddc_ctrl_id, 0);
> +    if (!block_id.empty()) {
> +           graph->connect(ddc_ctrl_id, 0, block_id, 0);
> +           graph->connect(block_id, 0, rx_stream, 0);
> +    }
> +    else {
> +           graph->connect(ddc_ctrl_id, 0, rx_stream, 0);
>      }
>      graph->commit();
>
>
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000967e8105b95be332
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi C=C3=A9dric,</div><div>I don&#39;t see=
 anything wrong.=C2=A0 Given that you said the FFT block works but your blo=
ck doesn&#39;t, could it be something related to a c++ block controller?=C2=
=A0</div><div><br></div><div>Attached is a program I use to test an individ=
ual block with the graph &quot;host =3D&gt; block =3D&gt; host&quot;.=C2=A0=
 It might help to see if this works.=C2=A0 This application does not requir=
e forwarding of the issue_stream_cmd as is necessary when your=C2=A0block i=
s used as part of the Rx chain to the radio.=C2=A0 Attached you will find t=
he CPP source and below you will find a command line that works for me with=
 the Ettus Switchboard block which is just a &quot;thru&quot; connection.</=
div><div>Rob</div><div><br></div><div><font face=3D"monospace">rfnoc_block_=
test --args=3Daddr=3D192.168.61.2 --block-id Switchboard#0 --nsamps=3D2048 =
--tx-stream-args &quot;spp=3D256&quot; --rx-stream-args &quot;spp=3D256&quo=
t;</font><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, Jan 19, 2021 at 12:43 PM C=C3=A9dric Hannotier via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Dear all,<br>
<br>
I am trying to implement simple RFNoC block in my FPGA image (X310),<br>
and test it using UHD C++ API.<br>
<br>
However, none of my blocks worked when inserted between the DDC and rx_stre=
am.<br>
Both rfnoc-example/gain block (from upstream host/example)<br>
and bare bones block from rfnocmodtool (passthrough) failed.<br>
<br>
The procedure is as follow:<br>
=C2=A01. cd path/of/OOT_Block (gain or passthrough)<br>
=C2=A02. cmake -S . -B build -DUHD_FPGA_DIR=3D/path/to/uhd/fpga (upstream U=
HD4)<br>
=C2=A03. cd build; make; make x310_rfnoc_image_core<br>
=C2=A04. viv_jtag_program /path/to/uhd/fpga/usrp3/top/x300/build/usrp_x310_=
fpga_HG.bit (or uhd_image_loader + restart USRP).<br>
=C2=A05. cd /path/to/uhd/example/code<br>
=C2=A06. g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd<=
br>
=C2=A07. ./test --block-id &quot;0/Block#0&quot; --rate 20e6<br>
<br>
But it exits with timeout:<br>
<br>
&quot;&quot;&quot;<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.=
0.0-4<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 1472 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x4577, 0=
xffff<br>
Using radio 0, channel 0<br>
Looking for source block 0/Radio#0, port 0<br>
Setting RX Rate: 20.000000 Msps...<br>
DDC block found<br>
Setting decimation value to 10<br>
Actual decimation value is 10<br>
Actual RX Rate: 20.000000 Msps...<br>
<br>
Setting RX Freq: 0.000000 MHz...<br>
Actual RX Freq: 10.000000 MHz...<br>
<br>
Setting samples per packet to: 64<br>
Actual samples per packet =3D 64<br>
Using streamer args:<br>
Press Ctrl + C to stop streaming...<br>
Issuing stream cmd<br>
Timeout while streaming<br>
Issuing stop stream cmd<br>
<br>
Done!<br>
&quot;&quot;&quot;<br>
<br>
It runs OK using &quot;./test --rate 20e6&quot; (without inserting<br>
any OOT block between DDC and rx_stream).<br>
It also works using an upstream provided block (eg FFT).<br>
<br>
The rfnoc_rx_to_file.cpp is slightly modified from upstream<br>
(since upstream does not handle argument &quot;block-id&quot;).<br>
The patch is at the end of this mail.<br>
It should apply nicely by piping this mail to patch or git am/apply.<br>
<br>
Does anyone know how to solve this?<br>
<br>
diff --git a/host/examples/rfnoc_rx_to_file.cpp b/host/examples/rfnoc_rx_to=
_file.cpp<br>
index 2d648c10d..64d177d79 100644<br>
--- a/host/examples/rfnoc_rx_to_file.cpp<br>
+++ b/host/examples/rfnoc_rx_to_file.cpp<br>
@@ -479,13 +479,22 @@ int UHD_SAFE_MAIN(int argc, char* argv[])<br>
=C2=A0 =C2=A0 =C2=A0//}<br>
<br>
=C2=A0 =C2=A0 =C2=A0// Connect blocks and commit the graph<br>
-=C2=A0 =C2=A0 for (auto&amp; edge : chain) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (uhd::rfnoc::block_id_t(edge.dst_blockid).m=
atch(uhd::rfnoc::NODE_ID_SEP)) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 graph-&gt;connect(edge.src_block=
id, edge.src_port, rx_stream, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 graph-&gt;connect(<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 edge.src_blockid, =
edge.src_port, edge.dst_blockid, edge.dst_port);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 //for (auto&amp; edge : chain) {<br>
+=C2=A0 =C2=A0 //=C2=A0 =C2=A0 if (uhd::rfnoc::block_id_t(edge.dst_blockid)=
.match(uhd::rfnoc::NODE_ID_SEP)) {<br>
+=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0 =C2=A0 graph-&gt;connect(edge.src_blo=
ckid, edge.src_port, rx_stream, 0);<br>
+=C2=A0 =C2=A0 //=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0 =C2=A0 graph-&gt;connect(<br>
+=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 edge.src_blockid=
, edge.src_port, edge.dst_blockid, edge.dst_port);<br>
+=C2=A0 =C2=A0 //=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 //}<br>
+=C2=A0 =C2=A0 auto ddc_ctrl_id =3D ddc_ctrl-&gt;get_block_id();<br>
+=C2=A0 =C2=A0 graph-&gt;connect(radio_ctrl_id, 0, ddc_ctrl_id, 0);<br>
+=C2=A0 =C2=A0 if (!block_id.empty()) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0graph-&gt;connect(ddc_ctrl_id, 0,=
 block_id, 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0graph-&gt;connect(block_id, 0, rx=
_stream, 0);<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0graph-&gt;connect(ddc_ctrl_id, 0,=
 rx_stream, 0);<br>
=C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0graph-&gt;commit();<br>
<br>
<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000967e8105b95be332--
--000000000000967e8305b95be334
Content-Type: text/x-c++src; charset="US-ASCII"; name="rfnoc_block_test.cpp"
Content-Disposition: attachment; filename="rfnoc_block_test.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kk5yfr5e0>
X-Attachment-Id: f_kk5yfr5e0

CiNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy90
aHJlYWQuaHBwPgojaW5jbHVkZSA8dWhkL3Jmbm9jL25vY19ibG9ja19iYXNlLmhwcD4KI2luY2x1
ZGUgPHVoZC9leGNlcHRpb24uaHBwPgoKI2luY2x1ZGUgPHVoZC9yZm5vYy9ibG9ja19pZC5ocHA+
CiNpbmNsdWRlIDx1aGQvcmZub2MvbWJfY29udHJvbGxlci5ocHA+CiNpbmNsdWRlIDx1aGQvcmZu
b2NfZ3JhcGguaHBwPgovLyNpbmNsdWRlIDx1aGRsaWIvcmZub2MvcmZub2Nfcnhfc3RyZWFtZXIu
aHBwPgoKI2luY2x1ZGUgPGJvb3N0L3Byb2dyYW1fb3B0aW9ucy5ocHA+CgojaW5jbHVkZSA8aW9z
dHJlYW0+CiNpbmNsdWRlIDxjc2lnbmFsPgojaW5jbHVkZSA8Y29tcGxleD4KCm5hbWVzcGFjZSBw
byA9IGJvb3N0Ojpwcm9ncmFtX29wdGlvbnM7CgoKaW50IFVIRF9TQUZFX01BSU4oaW50IGFyZ2Ms
IGNoYXIgKmFyZ3ZbXSl7CgkvL3ZhcmlhYmxlcyB0byBiZSBzZXQgYnkgcG8KCXN0ZDo6c3RyaW5n
IGFyZ3MsIGJsb2NrX2lkLCBibG9ja19hcmdzLCByeF9hcmdzLCB0eF9hcmdzOwoJc2l6ZV90IG5z
YW1wcywgYmxvY2tfcG9ydDsKCQoJLy9zZXR1cCB0aGUgcHJvZ3JhbSBvcHRpb25zCglwbzo6b3B0
aW9uc19kZXNjcmlwdGlvbiBkZXNjKCJBbGxvd2VkIG9wdGlvbnMiKTsKCWRlc2MuYWRkX29wdGlv
bnMoKQoJCSgiaGVscCIsICJoZWxwIG1lc3NhZ2UiKQoJCSgiYXJncyIsIHBvOjp2YWx1ZTxzdGQ6
OnN0cmluZz4oJmFyZ3MpLT5kZWZhdWx0X3ZhbHVlKCIiKSwgIlVTUlAgZGV2aWNlIGFkZHJlc3Mg
YXJncyIpCgoJCSgibnNhbXBzIiwgcG86OnZhbHVlPHNpemVfdD4oJm5zYW1wcyktPmRlZmF1bHRf
dmFsdWUoMTAyNCksICJ0b3RhbCBudW1iZXIgb2Ygc2FtcGxlcyB0byByZWNlaXZlIikKCgkJKCJi
bG9jay1pZCIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmJsb2NrX2lkKS0+ZGVmYXVsdF92YWx1
ZSgiIiksICJUaGlzIGJsb2NrIGlzIGluc2VydGVkIGJldHdlZW4gcmFkaW8gYW5kIGhvc3QuIikK
CQkoImJsb2NrLWFyZ3MiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZibG9ja19hcmdzKS0+ZGVm
YXVsdF92YWx1ZSgiIiksICJUaGVzZSBhcmdzIGFyZSBwYXNzZWQgc3RyYWlnaHQgdG8gdGhlIGJs
b2NrLiIpCgkJKCJibG9jay1wb3J0IiwgcG86OnZhbHVlPHNpemVfdD4oJmJsb2NrX3BvcnQpLT5k
ZWZhdWx0X3ZhbHVlKDApLCJibG9jayBwb3J0IGluZGV4IikKCQkKCQkoInJ4LXN0cmVhbS1hcmdz
IiwgcG86OnZhbHVlPHN0ZDo6c3RyaW5nPigmcnhfYXJncyktPmRlZmF1bHRfdmFsdWUoIiIpLCAi
cnggc3RyZWFtZXIgY3JlYXRpb24gYXJncyIpCgkJKCJ0eC1zdHJlYW0tYXJncyIsIHBvOjp2YWx1
ZTxzdGQ6OnN0cmluZz4oJnR4X2FyZ3MpLT5kZWZhdWx0X3ZhbHVlKCIiKSwgInR4IHN0cmVhbWVy
IGNyZWF0aW9uIGFyZ3MiKQoJOwoJcG86OnZhcmlhYmxlc19tYXAgdm07Cglwbzo6c3RvcmUocG86
OnBhcnNlX2NvbW1hbmRfbGluZShhcmdjLCBhcmd2LCBkZXNjKSwgdm0pOwoJcG86Om5vdGlmeSh2
bSk7CgoJLy9wcmludCB0aGUgaGVscCBtZXNzYWdlCglpZiAodm0uY291bnQoImhlbHAiKSkgewoJ
CXN0ZDo6Y291dAoJCQk8PCAiVUhEL1JGTm9DIFNpbmdsZSBSRk5vQyBibG9jayB0ZXN0IiA8PCBz
dGQ6OmVuZGwgCgkJCTw8IGRlc2MgPDwgc3RkOjplbmRsCgkJCTw8ICJUaGlzIGFwcGxpY2F0aW9u
IHRlc3RzIGEgc2luZ2xlIFJGTm9DIGJsb2NrIGJ5IHN0cmVhbWluZyBob3N0X3R4ID0+IGJsb2Nr
ID0+IGhvc3RfcngiCgkJCTw8IHN0ZDo6ZW5kbCA8PCBzdGQ6OmVuZGw7CgkJcmV0dXJuIH4wOwoJ
fQoJCgkvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqCgkqIENyZWF0ZSBkZXZpY2UgYW5kIGJsb2NrIGNvbnRyb2xz
CgkqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKi8KCXN0ZDo6Y291dCA8PCBzdGQ6OmVuZGwgPDwgIkNyZWF0aW5nIHRo
ZSBVU1JQIGRldmljZSB3aXRoIGFyZ3M6ICIgPDwgYXJncyA8PCBzdGQ6OmVuZGw7Cgl1aGQ6OnJm
bm9jOjpyZm5vY19ncmFwaDo6c3B0ciB1c3JwID0gdWhkOjpyZm5vYzo6cmZub2NfZ3JhcGg6Om1h
a2UoYXJncyk7CglzdGQ6OmNvdXQgPDwgIkRldmljZSBjcmVhdGlvbiBjb21wbGV0ZSIgPDwgc3Rk
OjplbmRsIDw8IHN0ZDo6ZW5kbDsKCgoJaWYgKGJsb2NrX2lkLmVtcHR5KCkpIHsKCQlzdGQ6OmNv
dXQgPDwgIk11c3Qgc3BlY2lmeSBibG9jayBJRCIgPDwgc3RkOjplbmRsOwoJCXJldHVybiBFWElU
X0ZBSUxVUkU7Cgl9IAoKCWlmIChub3QgdXNycC0+aGFzX2Jsb2NrKGJsb2NrX2lkKSkgewoJCXN0
ZDo6Y291dCA8PCAiQmxvY2sgZG9lcyBub3QgZXhpc3Qgb24gY3VycmVudCBkZXZpY2U6ICIgPDwg
YmxvY2tfaWQgPDwgc3RkOjplbmRsOwoJCXJldHVybiBFWElUX0ZBSUxVUkU7Cgl9CgoJYXV0byBi
bGtfY3RybCA9IHVzcnAtPmdldF9ibG9jayhibG9ja19pZCk7CgoJc3RkOjpjb3V0IDw8ICJCbG9j
ayB0byB0ZXN0OiAiIDw8IGJsa19jdHJsLT5nZXRfYmxvY2tfaWQoKSA8PCBzdGQ6OmVuZGw7CgkK
CWlmIChibGtfY3RybC0+Z2V0X3Byb3BlcnR5X2lkcygpLnNpemUoKSA+IDApIHsKCQlzdGQ6OmNv
dXQgPDwgIiAgTGlzdCBvZiBwcm9wZXJ0eSBpZHM6ICI7CgkJZm9yIChhdXRvIGlkOiBibGtfY3Ry
bC0+Z2V0X3Byb3BlcnR5X2lkcygpKSB7CgkJCXN0ZDo6Y291dCA8PCBpZCA8PCAiICI7CgkJfQoJ
CXN0ZDo6Y291dCA8PCBzdGQ6OmVuZGw7Cgl9CgoJaWYgKG5vdCBibG9ja19hcmdzLmVtcHR5KCkp
IHsKCQl1aGQ6OmRldmljZV9hZGRyX3QgdG1wX2FyZ3MoYmxvY2tfYXJncyk7CgkJc3RkOjpjb3V0
IDw8ICIgIFNldHRpbmcgYmxvY2sgYXJnczogIiA8PCB0bXBfYXJncy50b19zdHJpbmcoKSA8PCBz
dGQ6OmVuZGw7CgkJYmxrX2N0cmwtPnNldF9wcm9wZXJ0aWVzKHRtcF9hcmdzKTsJCQoJfQoJc3Rk
Ojpjb3V0IDw8IHN0ZDo6ZW5kbDsKCQoJLy9jcmVhdGUgYSByZWNlaXZlIHN0cmVhbWVyCgl1aGQ6
OnN0cmVhbV9hcmdzX3Qgcnhfc3RyZWFtX2FyZ3MoInNjMTYiLCAic2MxNiIpOwoJcnhfc3RyZWFt
X2FyZ3MuYXJncyA9IHVoZDo6ZGV2aWNlX2FkZHJfdChyeF9hcmdzKTsKCXN0ZDo6Y291dCA8PCAi
Q3JlYXRpbmcgcnggc3RyZWFtZXIgd2l0aCBhcmdzOiAiIDw8IHJ4X3N0cmVhbV9hcmdzLmFyZ3Mu
dG9fc3RyaW5nKCkgPDwgc3RkOjplbmRsOwoJdWhkOjpyeF9zdHJlYW1lcjo6c3B0ciByeF9zdHJl
YW0gPSB1c3JwLT5jcmVhdGVfcnhfc3RyZWFtZXIoMSwgcnhfc3RyZWFtX2FyZ3MpOwoJLy9hdXRv
IHJ4X3N0cmVhbV9ub2RlID0gc3RkOjpkeW5hbWljX3BvaW50ZXJfY2FzdDx1aGQ6OnJmbm9jOjpu
b2RlX3Q+KHJ4X3N0cmVhbSk7CgkvL3N0ZDo6Y291dCA8PCAiICBpZDogIiA8PCByeF9zdHJlYW1f
bm9kZS0+Z2V0X3VuaXF1ZV9pZCgpIDw8IHN0ZDo6ZW5kbDsKCS8vcnhfc3RyZWFtX25vZGUtPnNl
dF9wcm9wZXJ0aWVzKHJ4X3N0cmVhbV9hcmdzLmFyZ3MpOwoKCS8vIGNyZWF0ZSBhIHRyYW5zbWl0
IHN0cmVhbWVyCgl1aGQ6OnN0cmVhbV9hcmdzX3QgdHhfc3RyZWFtX2FyZ3MoInNjMTYiLCAic2Mx
NiIpOwoJdHhfc3RyZWFtX2FyZ3MuYXJncyA9ICB1aGQ6OmRldmljZV9hZGRyX3QodHhfYXJncyk7
CglzdGQ6OmNvdXQgPDwgIkNyZWF0aW5nIHR4IHN0cmVhbWVyIHdpdGggYXJnczogIiA8PCB0eF9z
dHJlYW1fYXJncy5hcmdzLnRvX3N0cmluZygpIDw8IHN0ZDo6ZW5kbDsKCXVoZDo6dHhfc3RyZWFt
ZXI6OnNwdHIgdHhfc3RyZWFtID0gdXNycC0+Y3JlYXRlX3R4X3N0cmVhbWVyKDEsIHR4X3N0cmVh
bV9hcmdzKTsKCgkvLyBjb25uZWN0IGFuZCBjb21taXQgZ3JhcGgKCXVzcnAtPmNvbm5lY3QoYmxr
X2N0cmwtPmdldF9ibG9ja19pZCgpLCBibG9ja19wb3J0LCByeF9zdHJlYW0sIDApOwoJdXNycC0+
Y29ubmVjdCh0eF9zdHJlYW0sIDAsIGJsa19jdHJsLT5nZXRfYmxvY2tfaWQoKSwgYmxvY2tfcG9y
dCk7Cgl1c3JwLT5jb21taXQoKTsKCQoKCS8vIENyZWF0ZSB2ZWN0b3Igb2Ygc2FtcGxlcyB0byBz
ZW5kIHRvIHRoZSBibG9jawoJc3RkOjp2ZWN0b3I8c3RkOjpjb21wbGV4PHNob3J0PiA+IGJ1ZmY7
CglzdGQ6OmNvbXBsZXg8c2hvcnQ+IHZhbCgxMDAsMjAwKTsKCWJ1ZmYgPSBzdGQ6OnZlY3Rvcjxz
dGQ6OmNvbXBsZXg8c2hvcnQ+ID4obnNhbXBzLHZhbCk7CgkKCXVoZDo6dHhfbWV0YWRhdGFfdCBt
ZF90eDsKCW1kX3R4Lmhhc190aW1lX3NwZWMgPSB0cnVlOwoJbWRfdHgudGltZV9zcGVjID0gNS42
Nzg5OwoJbWRfdHguc3RhcnRfb2ZfYnVyc3QgPSB0cnVlOwoJbWRfdHguZW5kX29mX2J1cnN0ID0g
dHJ1ZTsKCXNpemVfdCBudW1fc2FtcHMgPSBidWZmLnNpemUoKTsKCglzdGQ6OnZlY3RvcjxzdGQ6
OmNvbXBsZXg8c2hvcnQ+ICo+IGJ1ZmZzKDEsICZidWZmLmZyb250KCkpOwoKCWRvdWJsZSByYXRl
ID0gMWU2OwoJCglzdGQ6OmNvdXQgPDwgc3RkOjplbmRsOwoJc3RkOjpjb3V0IDw8ICJ0eF9zdHJl
YW1lci0+c2VuZCgpIgoJCTw8ICIsIHRpbWU6ICIgPDwgKG1kX3R4Lmhhc190aW1lX3NwZWMgPyBt
ZF90eC50aW1lX3NwZWMuZ2V0X3JlYWxfc2VjcygpIDogLTEuMCkKCQk8PCAiLCB0aWNrIGNvdW50
OiAiIDw8IG1kX3R4LnRpbWVfc3BlYy50b190aWNrcyhyYXRlKQoJCTw8ICIsIG5zYW1wczogIiA8
PCBidWZmLnNpemUoKQoJCTw8ICIsIFNPQjogIiA8PCBtZF90eC5zdGFydF9vZl9idXJzdCAKCQk8
PCAiLCBFT0I6ICIgPDwgbWRfdHguZW5kX29mX2J1cnN0IAoJCTw8ICIsIFNQUDogIiA8PCB0eF9z
dHJlYW0tPmdldF9tYXhfbnVtX3NhbXBzKCkgCgkJPDwgc3RkOjplbmRsOwoJCgkvL3R4X3N0cmVh
bS0+c2VuZChidWZmcywgYnVmZi5zaXplKCksIG1kX3R4LCAxKTsKCXR4X3N0cmVhbS0+c2VuZCgm
YnVmZi5mcm9udCgpLCBidWZmLnNpemUoKSwgbWRfdHgsIDEpOwoJCgljb25zdCBzaXplX3Qgc2Ft
cHNfcGVyX2J1ZmYgPSByeF9zdHJlYW0tPmdldF9tYXhfbnVtX3NhbXBzKCk7Cgl1aGQ6OnJ4X21l
dGFkYXRhX3QgbWRfcng7CglzdGQ6OnZlY3RvcjxzdGQ6OmNvbXBsZXg8c2hvcnQ+ID4gYnVmZl9y
eChzYW1wc19wZXJfYnVmZik7CgoJc3RkOjpjb3V0IDw8IHN0ZDo6ZW5kbDsKCQoJd2hpbGUgKHRy
dWUpIHsKCXNpemVfdCBudW1fcnhfc2FtcHMgPSByeF9zdHJlYW0tPnJlY3YoJmJ1ZmZfcnguZnJv
bnQoKSwgYnVmZl9yeC5zaXplKCksIG1kX3J4LCAxLjApOwoJc3RkOjpjb3V0IDw8ICJyeF9zdHJl
YW1lci0+cmVjdigpIgoJCTw8ICIsIHRpbWU6ICIgPDwgKG1kX3J4Lmhhc190aW1lX3NwZWMgPyBt
ZF9yeC50aW1lX3NwZWMuZ2V0X3JlYWxfc2VjcygpIDogLTEuMCkKCQk8PCAiLCB0aWNrIGNvdW50
OiAiIDw8IG1kX3J4LnRpbWVfc3BlYy50b190aWNrcyhyYXRlKQoJCTw8ICIsIG5zYW1wczogIiA8
PCBudW1fcnhfc2FtcHMKCQk8PCAiLCBTT0I6ICIgPDwgbWRfcnguc3RhcnRfb2ZfYnVyc3QgCgkJ
PDwgIiwgRU9COiAiIDw8IG1kX3J4LmVuZF9vZl9idXJzdAoJCTw8IHN0ZDo6ZW5kbDsKCQlpZiAo
bWRfcnguZXJyb3JfY29kZSE9dWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX05PTkUpIGJy
ZWFrOwoJfQoJCglyZXR1cm4gRVhJVF9TVUNDRVNTOwp9Cg==
--000000000000967e8305b95be334
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000967e8305b95be334--

