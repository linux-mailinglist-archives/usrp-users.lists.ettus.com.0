Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C84E2FDC14
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jan 2021 22:51:18 +0100 (CET)
Received: from [::1] (port=41264 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2LNk-0003un-It; Wed, 20 Jan 2021 16:51:16 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:35828)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2LNg-0003kr-R4
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 16:51:12 -0500
Received: by mail-oi1-f171.google.com with SMTP id w8so4895278oie.2
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 13:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=dnazsXDTTIfM7/GitRBvwy3lsprj6FZ5/oXpq4wWMa0=;
 b=kKv2IkilMPkV3a/qBHbD+/CuId0FHQqq781c+sjnyuaKT0Uk+RCuvxsaXlmULvvXL6
 kPfmspAwgmKvqwYZmt3J8od/8/7ZZvcZnkUARlCDxBXtLIs0HprNAJvq0EKIGvrwcX+d
 +UQO31FmQKsGA9hnJ3A7L0JHkQBpCgbFahK388i8gOGaGYY2dVGSFwKW/g1FW+Y/ERvQ
 Y4ymy1MyReESrpFXSSsAZgBvpsERAQy/0KKXCBDOs5ZcFbpwaV9ATHwYROxXCdOQi7gx
 AKVc/aTXe5BcRJ7GmHRPhuBuC1wP+5c/NAbaHFPF/rxMIxaVvGS3UYhRkAaNFe+1jRQO
 TQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=dnazsXDTTIfM7/GitRBvwy3lsprj6FZ5/oXpq4wWMa0=;
 b=g79RCpZe3cYLQx/A6gpTM28YGBYMi0meSeAyPqZGOU3I6gG7o4VfuAyFYajaDhrmbR
 hl1W1bQ633NmHHy+YyQTqcG4g0W/i76MTHfUkyp2l9V1o5nbmTTPK0+bTlreJf29W91q
 KmP3a49BakYmLbIk79jbnXvxz2OQ2zTOA7MNOsOS2xHF1VUgo7LZoQFQVL/Iaz/JIe+P
 uFKagoxP+C01TwLvC+BOSmIdjZcJMovIvzh8Jl1mmY2THK92dpkuuqxD/Msokv0e8C+i
 F9Kn7kLQrKFYxTmcHMc/vfGgIclUreW3as0iKBYj9/qf5TVMGf4fJbjR3NKgFeeY11gp
 pttg==
X-Gm-Message-State: AOAM532x2q09fvrBnxbEqWr7OYj2t/yGvMw3ifQdQFaKyTtoUc6Vrm8h
 zt6Yzue+mUxzb42fraV4WoxiO9R9Eq4UPFzarMrHYQ==
X-Google-Smtp-Source: ABdhPJx9Sfbc1BkM0wHI1H2JYn7rggDTSFJ27DVskv7HzfxX/J2P/eW/PfPjZMUOwxv2ttn0L598VXA1Dyi349w41is=
X-Received: by 2002:aca:b787:: with SMTP id h129mr4153818oif.150.1611179431884; 
 Wed, 20 Jan 2021 13:50:31 -0800 (PST)
MIME-Version: 1.0
References: <20210119174249.2552vsmlnc35d6i4@barbe>
 <CAB__hTT9z0WHtD88DTrrn6CeCXd8Eg3TEdLAjuh_vt0s7sqncg@mail.gmail.com>
In-Reply-To: <CAB__hTT9z0WHtD88DTrrn6CeCXd8Eg3TEdLAjuh_vt0s7sqncg@mail.gmail.com>
Date: Wed, 20 Jan 2021 16:50:21 -0500
Message-ID: <CAB__hTQ=cf=aMD++QYb2Y9=KJgaYTXtcZbdxAyTMpRwNpPVKWw@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============7002422424035782357=="
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

--===============7002422424035782357==
Content-Type: multipart/alternative; boundary="000000000000b544ee05b95bf173"

--000000000000b544ee05b95bf173
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

By the way, I have created a block controller for every UHD4 RFNOC block
that I have created and I simply compile them in-tree since I don't know
how to make this work OOT.  This has the nice advantage that uhd_usrp_probe
can then know about my blocks.

Rob

On Wed, Jan 20, 2021 at 4:46 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi C=C3=A9dric,
> I don't see anything wrong.  Given that you said the FFT block works but
> your block doesn't, could it be something related to a c++ block
> controller?
>
> Attached is a program I use to test an individual block with the graph
> "host =3D> block =3D> host".  It might help to see if this works.  This
> application does not require forwarding of the issue_stream_cmd as is
> necessary when your block is used as part of the Rx chain to the radio.
> Attached you will find the CPP source and below you will find a command
> line that works for me with the Ettus Switchboard block which is just a
> "thru" connection.
> Rob
>
> rfnoc_block_test --args=3Daddr=3D192.168.61.2 --block-id Switchboard#0
> --nsamps=3D2048 --tx-stream-args "spp=3D256" --rx-stream-args "spp=3D256"
>
> On Tue, Jan 19, 2021 at 12:43 PM C=C3=A9dric Hannotier via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear all,
>>
>> I am trying to implement simple RFNoC block in my FPGA image (X310),
>> and test it using UHD C++ API.
>>
>> However, none of my blocks worked when inserted between the DDC and
>> rx_stream.
>> Both rfnoc-example/gain block (from upstream host/example)
>> and bare bones block from rfnocmodtool (passthrough) failed.
>>
>> The procedure is as follow:
>>  1. cd path/of/OOT_Block (gain or passthrough)
>>  2. cmake -S . -B build -DUHD_FPGA_DIR=3D/path/to/uhd/fpga (upstream UHD=
4)
>>  3. cd build; make; make x310_rfnoc_image_core
>>  4. viv_jtag_program
>> /path/to/uhd/fpga/usrp3/top/x300/build/usrp_x310_fpga_HG.bit (or
>> uhd_image_loader + restart USRP).
>>  5. cd /path/to/uhd/example/code
>>  6. g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd
>>  7. ./test --block-id "0/Block#0" --rate 20e6
>>
>> But it exits with timeout:
>>
>> """
>> Creating the RFNoC graph with args: ...
>> [INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400;
>> UHD_4.0.0.0-4
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x4577=
,
>> 0xffff
>> Using radio 0, channel 0
>> Looking for source block 0/Radio#0, port 0
>> Setting RX Rate: 20.000000 Msps...
>> DDC block found
>> Setting decimation value to 10
>> Actual decimation value is 10
>> Actual RX Rate: 20.000000 Msps...
>>
>> Setting RX Freq: 0.000000 MHz...
>> Actual RX Freq: 10.000000 MHz...
>>
>> Setting samples per packet to: 64
>> Actual samples per packet =3D 64
>> Using streamer args:
>> Press Ctrl + C to stop streaming...
>> Issuing stream cmd
>> Timeout while streaming
>> Issuing stop stream cmd
>>
>> Done!
>> """
>>
>> It runs OK using "./test --rate 20e6" (without inserting
>> any OOT block between DDC and rx_stream).
>> It also works using an upstream provided block (eg FFT).
>>
>> The rfnoc_rx_to_file.cpp is slightly modified from upstream
>> (since upstream does not handle argument "block-id").
>> The patch is at the end of this mail.
>> It should apply nicely by piping this mail to patch or git am/apply.
>>
>> Does anyone know how to solve this?
>>
>> diff --git a/host/examples/rfnoc_rx_to_file.cpp
>> b/host/examples/rfnoc_rx_to_file.cpp
>> index 2d648c10d..64d177d79 100644
>> --- a/host/examples/rfnoc_rx_to_file.cpp
>> +++ b/host/examples/rfnoc_rx_to_file.cpp
>> @@ -479,13 +479,22 @@ int UHD_SAFE_MAIN(int argc, char* argv[])
>>      //}
>>
>>      // Connect blocks and commit the graph
>> -    for (auto& edge : chain) {
>> -        if
>> (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::NODE_ID_SEP)=
) {
>> -            graph->connect(edge.src_blockid, edge.src_port, rx_stream,
>> 0);
>> -        } else {
>> -            graph->connect(
>> -                edge.src_blockid, edge.src_port, edge.dst_blockid,
>> edge.dst_port);
>> -        }
>> +    //for (auto& edge : chain) {
>> +    //    if
>> (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::NODE_ID_SEP)=
) {
>> +    //        graph->connect(edge.src_blockid, edge.src_port, rx_stream=
,
>> 0);
>> +    //    } else {
>> +    //        graph->connect(
>> +    //            edge.src_blockid, edge.src_port, edge.dst_blockid,
>> edge.dst_port);
>> +    //    }
>> +    //}
>> +    auto ddc_ctrl_id =3D ddc_ctrl->get_block_id();
>> +    graph->connect(radio_ctrl_id, 0, ddc_ctrl_id, 0);
>> +    if (!block_id.empty()) {
>> +           graph->connect(ddc_ctrl_id, 0, block_id, 0);
>> +           graph->connect(block_id, 0, rx_stream, 0);
>> +    }
>> +    else {
>> +           graph->connect(ddc_ctrl_id, 0, rx_stream, 0);
>>      }
>>      graph->commit();
>>
>>
>> --
>>
>> C=C3=A9dric Hannotier
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000b544ee05b95bf173
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">By the way, I have created a block controller for every UH=
D4 RFNOC block that I have created and I simply compile them in-tree since =
I don&#39;t know how=C2=A0to make this work OOT.=C2=A0 This has the nice ad=
vantage that uhd_usrp_probe can then know about my blocks.<div><br></div><d=
iv>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Jan 20, 2021 at 4:46 PM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi C=
=C3=A9dric,</div><div>I don&#39;t see anything wrong.=C2=A0 Given that you =
said the FFT block works but your block doesn&#39;t, could it be something =
related to a c++ block controller?=C2=A0</div><div><br></div><div>Attached =
is a program I use to test an individual block with the graph &quot;host =
=3D&gt; block =3D&gt; host&quot;.=C2=A0 It might help to see if this works.=
=C2=A0 This application does not require forwarding of the issue_stream_cmd=
 as is necessary when your=C2=A0block is used as part of the Rx chain to th=
e radio.=C2=A0 Attached you will find the CPP source and below you will fin=
d a command line that works for me with the Ettus Switchboard block which i=
s just a &quot;thru&quot; connection.</div><div>Rob</div><div><br></div><di=
v><font face=3D"monospace">rfnoc_block_test --args=3Daddr=3D192.168.61.2 --=
block-id Switchboard#0 --nsamps=3D2048 --tx-stream-args &quot;spp=3D256&quo=
t; --rx-stream-args &quot;spp=3D256&quot;</font><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 19, 2021 at=
 12:43 PM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear all,=
<br>
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
</blockquote></div>

--000000000000b544ee05b95bf173--


--===============7002422424035782357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7002422424035782357==--

