Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA4B996185
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2024 09:54:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4ECDE385646
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2024 03:54:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728460464; bh=qt3wPIZOgLsvpAr5oCIXoS1oxaa/6+FZldeqEa8TSwI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YCBMKcOlcmiQ5fuDASGLN9dSeM6nK+NtIW3vZ0ErrN8s/ECVXMRG2+uK+gDAyzy4c
	 RFxzzwQaZFoJHlEooCCfPR/en+24+B9PFkLS54zoT5lZvQ8dRObdfuPteCj6+Do0N4
	 q6ci+JG4rWutoWgDqv0OynAPibr0PiuV6asFl8y4DOeSBoa+tfHhUN244MFJp5iQYn
	 EhBb5+64SADRrJ8imdRyNgAusD3Nfymnm/V3uh+wQ28W8OQW3/pJG78FnOm/ZdRC05
	 dxwhrk0sogUkO/RS1bx/718GNLKdQdlkMC73sZY6PdWYIxhUj30SjRpto3GnUcy+d9
	 0aSgeXQWCc5fQ==
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 97A3D3838C1
	for <usrp-users@lists.ettus.com>; Wed,  9 Oct 2024 03:53:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="lT6l5NFR";
	dkim-atps=neutral
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so8860902e87.0
        for <usrp-users@lists.ettus.com>; Wed, 09 Oct 2024 00:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728460435; x=1729065235; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JScAnVaR8eEI88L9UxahhoOwwlrzwVECn5w/qI0VmXA=;
        b=lT6l5NFRnCsYUrx42XoRS9vR2AkC030Tzx2BMjBSQ3wuvJkmbxlQ7sSQ3n2UwKA/WE
         ALIdpnVMgiajJmdNkprGvWC2qhvwBYviJiFeT+6awxBUybWrWnv0lrd5LSurXCK8kony
         HV6kJZI2iyC7HeavhjkB8zCb2OJ+ajQgIEg0kDSIac+rHaBPJS1zC+cFQO6uMnOTLhTd
         8R8pB9q6k8+Gb7XntwZJ9b5Dx8Awe+QLvJh/Ldur99bIbuV76mil6rB+NN+jRIIyr+3P
         qVAElu8JDk4vu3POvDRCfiAXFARk4M3jhYbFhsBCbO9/3j/B7GC1LQSLxKwGGnTsL+J/
         qq7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728460435; x=1729065235;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JScAnVaR8eEI88L9UxahhoOwwlrzwVECn5w/qI0VmXA=;
        b=sdUYDJANT786HGR7c99Lajkp7fTqg2BauEd34KYwjetVmj4YxwD6AJVJcPYUJQ0+js
         nwSKc6c+Rz2shbcx1daZRhXduq2siQliyBJutv7G91rOzFuoLjkH+gb/7YUPRLhjs5lk
         wF3kY2Cgho0w7ZJieYDhr2dMVYX5bLOG+yNwnb6yn3FhxtXReJrV7n827LbpCDJ9VKQk
         VRgFrqon2/M2Ky9tqKLQm+FdTchK3PtMF2j0c6JMvN2PRZcFbJHeWr81BX0r7FmKMpiA
         2s/0t0FHRCfqT8ZVXP8pDNkMzsa/UuiqxxWmOxZyc5rux5JdvYUoe533k3nFMmv1IVAY
         yDDQ==
X-Gm-Message-State: AOJu0Yz53+IDxm7XloftzT1zqrLzsKS2E5GZbfzHdCWsBlxR0x5NlWkE
	CKBtxeWCrwbNZ2Ray/rYGRNgJgv/i6zC4uhR8UqQGXfm5+sr8nMzWEp6xR8rJngG37eIKCU70dw
	1h7RVM3Wewn9AC9AjjN2fcicguYbjnqEXknjzMIp6
X-Google-Smtp-Source: AGHT+IFSajEDmIN2UHV9/pGihYlGj2fzUzpeHa1tfiOzAi3X4FtHTvKwT6gODJ6YVWgQ4FDiydywgsCAPeWKRw1xXBI=
X-Received: by 2002:a05:6512:1052:b0:536:55b3:470e with SMTP id
 2adb3069b0e04-539c48c5e8cmr848777e87.19.1728460434805; Wed, 09 Oct 2024
 00:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
 <CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com>
 <CAFOi1A7L18TyLPnEFOva+jq8bKb2PjvDcoB_2v0oHWinnayb9g@mail.gmail.com> <CALbO1t1qCajM4OtGt6r+F+GP9ZD0U6Pvng25pWPmkqka7uEG0w@mail.gmail.com>
In-Reply-To: <CALbO1t1qCajM4OtGt6r+F+GP9ZD0U6Pvng25pWPmkqka7uEG0w@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 9 Oct 2024 09:53:43 +0200
Message-ID: <CAFOi1A7RPPkbaiD5cn4wuK1xiTO92TXZem+xZk4=COpUYNjL6Q@mail.gmail.com>
To: Jorge Chen <superme991@gmail.com>
Message-ID-Hash: PHFSOHQR5HTTYSAZCVMPS4UTXPJB77EQ
X-Message-ID-Hash: PHFSOHQR5HTTYSAZCVMPS4UTXPJB77EQ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PHFSOHQR5HTTYSAZCVMPS4UTXPJB77EQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3577735815819706896=="

--===============3577735815819706896==
Content-Type: multipart/alternative; boundary="00000000000039b8fd0624068e0a"

--00000000000039b8fd0624068e0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jorge,

for 4x4 mode, you need 4 ports, not 8. If you configure the replay block
with 4 channels, it will create both 4 input and output ports,
respectively. What bandwidth are you trying to capture?

Also remember that if you TX and RX simultaneously, you will get crosstalk.

--M

On Tue, Oct 8, 2024 at 10:06=E2=80=AFAM Jorge Chen <superme991@gmail.com> w=
rote:

> Hi all,
>
> I=E2=80=99m working on a multi-channel, phase-coherent transceiver platfo=
rm using
> the N310 and RFNoC Replay block (UHD4.6). It has been tested successfully
> for 4TX and 4RX individually.
>
> However, I=E2=80=99m facing challenges getting 4TX and 4RX to work simult=
aneously.
>
> Attempts to configure:
>
>    1. *1 Replay block with 8 I/O ports:*
>       - Result: Bitstream generated successfully, and Replay block
>       connects with other blocks. However, data read/write fails on ports=
 4=E2=80=937.
>       - Inference: [1][2] suggest the N310 Replay block only supports 4
>       channels, which might explain the issue.
>    2. * 2 Replay blocks, each with 4 I/O ports:*
>       - Result: Bitstream compilation fails (YAML and logs attached).
>       - Inference: Could the issue be related to connecting both Replay
>       blocks to the same DRAM? If so, is it possible to partition the DRA=
M for
>       use by both blocks?
>
> Reference [2] mentions that DRAM access can be controlled by adjusting
> axi_intercon_2x64_128_bd to restrict memory availability.
> Could this be a solution to allow DRAM access for both Replay blocks?
>
> Any guidance on configuring the Replay block for simultaneous 4TX/4RX
> would be greatly appreciated.
>
>
> References:
> [1]
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4#Building_Custo=
m_FPGA_Images_with_a_Replay_Block
> [2]
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_the_Re=
play.2FDMA_FIFO_block_to_my_FPGA_image.3F
>
>
> Thanks,
> Jorge
>
>
> Martin Braun <martin.braun@ettus.com> =E6=96=BC 2024=E5=B9=B410=E6=9C=884=
=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=8811:41=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
>> Mark the last connection as a back-edge (
>> https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1rfnoc__graph.h=
tml#ab4cca8d99af451a9b9c5757af2b66ffa,
>> see also
>> https://uhd.readthedocs.io/en/latest/page_properties.html#props_graph_re=
solution_back_edges
>> ).
>>
>> --M
>>
>> On Fri, Oct 4, 2024 at 4:39=E2=80=AFPM hui cj <cjh416593819@gmail.com> w=
rote:
>>
>>> Sorry to bother everyone again,
>>>
>>>    - 0/Replay#0:0 --> 0/DUC#0:0
>>>    - 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>>>    - 0/Radio#0:0 =3D=3D> 0/DDC#0:0
>>>    - 0/DDC#0:0 --> 0/Replay#0:0
>>>
>>> I wonder to realize the graph that work for playing from DRAM and
>>> recording to DRAM simultaneously,
>>>
>>>     graph->connect(tx_replay_ctrl->get_block_id(), tx_replay_chan, duc_=
ctrl->get_block_id(), duc_chan);
>>>
>>>     graph->connect(duc_ctrl->get_block_id(), duc_chan, tx_radio_ctrl->g=
et_block_id(), tx_chan);
>>>
>>>
>>>     graph->connect(rx_radio_ctrl->get_block_id(), rx_chan, ddc_ctrl->ge=
t_block_id(), ddc_chan);
>>>
>>>     graph->connect(ddc_ctrl->get_block_id(), ddc_chan, rx_replay_ctrl->=
get_block_id(), rx_replay_chan);
>>>
>>>
>>> Then the following error ran out.
>>>
>>> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:0 wi=
thout disabling is_forward_edge will lead to unresolvable graph!
>>>
>>> Can someone help me? Thanks!
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>
>

--00000000000039b8fd0624068e0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jorge,</div><div><br></div><div>for 4x4 mode, you nee=
d 4 ports, not 8. If you configure the replay block with 4 channels, it wil=
l create both 4 input and output ports, respectively. What bandwidth are yo=
u trying to capture?</div><div><br></div><div>Also remember that if you TX =
and RX simultaneously, you will get crosstalk.</div><div><br></div><div>--M=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Oct 8, 2024 at 10:06=E2=80=AFAM Jorge Chen &lt;<a href=3D=
"mailto:superme991@gmail.com">superme991@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><p>Hi all,</p><p>I=E2=80=99m working on a multi-channel, phase-coh=
erent transceiver platform using the N310 and RFNoC Replay block (UHD4.6). =
It has been tested successfully for 4TX and 4RX individually.</p><p>However=
, I=E2=80=99m facing challenges getting 4TX and 4RX to work simultaneously.=
</p><p>Attempts to configure:</p><ol>
<li><strong>1 Replay block with 8 I/O ports:</strong>
<ul>
<li>Result: Bitstream generated successfully, and Replay block connects wit=
h other blocks. However, data read/write fails on ports 4=E2=80=937.</li>
<li>Inference: [1][2] suggest the N310 Replay block only supports 4 channel=
s, which might explain the issue.</li>
</ul>
</li>
<li><strong>=C2=A02 Replay blocks, each with 4 I/O ports:</strong>
<ul>
<li>Result: Bitstream compilation fails (YAML and logs attached).</li>
<li>Inference: Could the issue be related to connecting both Replay blocks =
to the same DRAM? If so, is it possible to partition the DRAM for use by bo=
th blocks?</li>
</ul>
</li>
</ol><p>Reference [2] mentions that DRAM access can be controlled by adjust=
ing <code>axi_intercon_2x64_128_bd</code> to restrict memory availability. =
<br>Could this be a solution to allow DRAM access for both Replay blocks?=
=C2=A0=C2=A0<br></p><p>Any guidance on configuring the Replay block for sim=
ultaneous 4TX/4RX would be greatly appreciated.</p><p><br></p><p>References=
:<br>[1] <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UH=
D_4#Building_Custom_FPGA_Images_with_a_Replay_Block" target=3D"_blank">http=
s://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4#Building_Custom_FPGA=
_Images_with_a_Replay_Block</a><br>[2] <a href=3D"https://kb.ettus.com/RFNo=
C_Frequently_Asked_Questions#How_do_I_add_the_Replay.2FDMA_FIFO_block_to_my=
_FPGA_image.3F" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_Ask=
ed_Questions#How_do_I_add_the_Replay.2FDMA_FIFO_block_to_my_FPGA_image.3F</=
a></p><p>









</p><p><br>Thanks,<br>Jorge</p><p></p></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Martin Braun &lt;<a href=3D"mailto:ma=
rtin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; =E6=
=96=BC 2024=E5=B9=B410=E6=9C=884=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=
=8D=8811:41=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Mark the last connection as a =
back-edge (<a href=3D"https://uhd.readthedocs.io/en/latest/classuhd_1_1rfno=
c_1_1rfnoc__graph.html#ab4cca8d99af451a9b9c5757af2b66ffa" target=3D"_blank"=
>https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1rfnoc__graph.htm=
l#ab4cca8d99af451a9b9c5757af2b66ffa</a>, see also <a href=3D"https://uhd.re=
adthedocs.io/en/latest/page_properties.html#props_graph_resolution_back_edg=
es" target=3D"_blank">https://uhd.readthedocs.io/en/latest/page_properties.=
html#props_graph_resolution_back_edges</a>).</div><div><br></div><div>--M<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Oct 4, 2024 at 4:39=E2=80=AFPM hui cj &lt;<a href=3D"mailto=
:cjh416593819@gmail.com" target=3D"_blank">cjh416593819@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Sorry to bother everyone again,<=
div><ul><li style=3D"margin-left:15px">0/Replay#0:0 --&gt; 0/DUC#0:0</li><l=
i style=3D"margin-left:15px">0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0</li><li style=
=3D"margin-left:15px">0/Radio#0:0 =3D=3D&gt; 0/DDC#0:0</li><li style=3D"mar=
gin-left:15px">0/DDC#0:0 --&gt; 0/Replay#0:0</li></ul>I wonder to realize t=
he graph that work for playing from DRAM and recording to DRAM simultaneous=
ly,=C2=A0</div><div><pre style=3D"margin-top:0px;margin-bottom:0px"><span s=
tyle=3D"color:rgb(192,192,192)">    </span><span style=3D"color:rgb(128,0,0=
)">graph</span>-&gt;<span style=3D"font-style:italic;color:rgb(0,103,124)">=
connect</span>(<span style=3D"color:rgb(128,0,0)">tx_replay_ctrl</span>-&gt=
;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D"=
color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">tx_repla=
y_chan</span>,<span style=3D"color:rgb(192,192,192)"> </span><span style=3D=
"color:rgb(128,0,0)">duc_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124=
)">get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span><sp=
an style=3D"color:rgb(128,0,0)">duc_chan</span>);</pre><pre style=3D"margin=
-top:0px;margin-bottom:0px"><span style=3D"color:rgb(192,192,192)">    </sp=
an><span style=3D"color:rgb(128,0,0)">graph</span>-&gt;<span style=3D"font-=
style:italic;color:rgb(0,103,124)">connect</span>(<span style=3D"color:rgb(=
128,0,0)">duc_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)">get_bloc=
k_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span><span style=3D=
"color:rgb(128,0,0)">duc_chan</span>,<span style=3D"color:rgb(192,192,192)"=
> </span><span style=3D"color:rgb(128,0,0)">tx_radio_ctrl</span>-&gt;<span =
style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D"color:r=
gb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">tx_chan</span>)=
;</pre><pre style=3D"margin-top:0px;margin-bottom:0px"><br></pre><pre style=
=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(192,192,192)=
">    </span><span style=3D"color:rgb(128,0,0)">graph</span>-&gt;<span styl=
e=3D"font-style:italic;color:rgb(0,103,124)">connect</span>(<span style=3D"=
color:rgb(128,0,0)">rx_radio_ctrl</span>-&gt;<span style=3D"color:rgb(0,103=
,124)">get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span=
><span style=3D"color:rgb(128,0,0)">rx_chan</span>,<span style=3D"color:rgb=
(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_ctrl</span>-&=
gt;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=
=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_=
chan</span>);</pre><pre style=3D"margin-top:0px;margin-bottom:0px"><span st=
yle=3D"color:rgb(192,192,192)">    </span><span style=3D"color:rgb(128,0,0)=
">graph</span>-&gt;<span style=3D"font-style:italic;color:rgb(0,103,124)">c=
onnect</span>(<span style=3D"color:rgb(128,0,0)">ddc_ctrl</span>-&gt;<span =
style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D"color:r=
gb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_chan</span>=
,<span style=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(12=
8,0,0)">rx_replay_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)">get_=
block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span><span styl=
e=3D"color:rgb(128,0,0)">rx_replay_chan</span>);</pre><pre style=3D"margin-=
top:0px;margin-bottom:0px"><br></pre><pre style=3D"margin-top:0px;margin-bo=
ttom:0px"><font face=3D"arial, sans-serif">Then the following error ran out=
.</font></pre><pre style=3D"margin-top:0px;margin-bottom:0px"><font face=3D=
"arial, sans-serif">[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -&=
gt; 0/Replay#0:0 without disabling is_forward_edge will lead to unresolvabl=
e graph!</font></pre><pre style=3D"margin-top:0px;margin-bottom:0px"><font =
face=3D"arial, sans-serif">Can someone help me? Thanks!</font></pre></div><=
/div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"></div=
></div></div></div></div></div></div></div></div></div>
</blockquote></div>

--00000000000039b8fd0624068e0a--

--===============3577735815819706896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3577735815819706896==--
