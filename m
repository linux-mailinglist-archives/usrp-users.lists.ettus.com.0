Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E96F499A472
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 15:08:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38C30385D29
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 09:08:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728652087; bh=DMQ5u/iqhgW/6fpPFcf/QTjKNaUy7wvv479wsUCgmFg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LN5/yd7SVcpa0D0ZR4WTQ+TBkURBFEXzViTCqFyVqCiBzxd1rqeUe8Qqyd/CgHpZb
	 XT4twLCHCb562g4tQ2A1fA54pl0n+3RCHzFpBpEEV/aOEU9+t4c+R+cX++8Whfdw3U
	 gQegbqtVJnSqWReA6DZhetSmIgY/tc8IbCnvMzU9xK8OQ69Wnhz8Divlep42BIvyxo
	 rUbEPlH241sNQTDExy+CglGeCo9nq8XVDP8fl6L9a3aeFPUuKfJd8ohJjxmpuZBwV+
	 dkdFHhfGpur5mRRxebxeCQOHaeXBl3pNmlXT3VRA/HTwohneaVDJwco4U20sD5j2rk
	 c8qgex5f/nB8w==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 67EA638576D
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 09:06:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Xll4qJat";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c5b954c359so2390672a12.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 06:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728652011; x=1729256811; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6vsUE1qC5inRSKp8ob8J8ZRqIxwagM9nMb/UmNtw54I=;
        b=Xll4qJatntEWJlBSyHcDPjKjw4Yq9PKCpPqp29Zk3rkVe5dLlJz70g+p4tG1hECc5S
         Jjn7f02wIZXBcaIc4aZ5l462QVSsMFuahg+Srb0syMx4yFNHGK6tKQ25tPFmjyT+pnZm
         BHlRUNV16961BiBHGBkpLFpwsFDcl6HIx+w1MCLnvWnRkocsOaia/4JVQOpyLIJbB6bD
         JllSCURErHYeGcdMYnyw1fvdDP6yPHhiwNUlXo9oSr8GcVetUX/pWem/59BtV1XzaRJ1
         A1nBmUynFA/6b8YP7Gr0590moBcWmUN8Y8HbHVSIi/3MFzJHG7eGCwsbHs66UtVrMQC6
         cPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652011; x=1729256811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6vsUE1qC5inRSKp8ob8J8ZRqIxwagM9nMb/UmNtw54I=;
        b=n/yINyPCxTf/SGnJ6s4iWUC4ZcbGd2MDnYFLTmlzP13OY64l8RKjpTkzRsNBME9enB
         7ug41/xCJd1u3I7kSWThnjOwAtSAU43+dVoZETqFw+09JsAbQJspi8CvzyQ2nQPs1M4A
         7Sb6+TnDfoYjo3dcYPDmpqkmYDsN4uUVXmkRp7lUoW5AAhGIKOWQ56kK4ugb8gPykxl3
         EP+3WMw8KYpqOx6Ubx5bJ3GPg/wQhSDqcdn7pFC6C7Z1EvP6XPG5+pwwMoOcLOh5lwUN
         7cODoIe7ju0ZNGk79alnruK8fGyj8fFzCjNgVoukdJsRKepujv5GiWU0obt+zTIa4F0V
         3kpQ==
X-Gm-Message-State: AOJu0YzV0J4yPK/kAEx+/89IpkM0e1JedqLXEPF7nNZVAI0YOdacGp/b
	b5RFs9064CRpNpj9sGeMkCBLW8qwuDbugFKvqfWp+cywSlg6Hi/RnZAIg+XpxmefhRTNKaz7kAr
	BTgjkBSkDjjZVJPBThppTMieBaNBolW+lAXDFvLVuTmOFfeGbcAg=
X-Google-Smtp-Source: AGHT+IEv5rlPj39ojHjrcARwD5FXXZ5zxt8Zi4OsZf32OuCZbY5WV/oRXuOzNlb5Mi/RtLaetliuMe3vdu3xm7wCTZc=
X-Received: by 2002:a05:6402:1e8d:b0:5bf:1bd:adb3 with SMTP id
 4fb4d7f45d1cf-5c948ca235cmr1875110a12.14.1728652011109; Fri, 11 Oct 2024
 06:06:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
 <CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com>
 <CAFOi1A7L18TyLPnEFOva+jq8bKb2PjvDcoB_2v0oHWinnayb9g@mail.gmail.com>
 <CALbO1t1qCajM4OtGt6r+F+GP9ZD0U6Pvng25pWPmkqka7uEG0w@mail.gmail.com>
 <CAFOi1A7RPPkbaiD5cn4wuK1xiTO92TXZem+xZk4=COpUYNjL6Q@mail.gmail.com> <CALbO1t36vmwDJWJVNor7S0NLoe8mdChZ=3JrCTn1TfMwnPcMmA@mail.gmail.com>
In-Reply-To: <CALbO1t36vmwDJWJVNor7S0NLoe8mdChZ=3JrCTn1TfMwnPcMmA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 11 Oct 2024 15:06:39 +0200
Message-ID: <CAFOi1A6Uy8dCQz0+YLnDYeONJwYb0_s_kWGFeCKjXg15Ec6_7A@mail.gmail.com>
To: Jorge Chen <superme991@gmail.com>
Message-ID-Hash: Y66MVB344JLV2J76IESZ2Z4GSGNI32J3
X-Message-ID-Hash: Y66MVB344JLV2J76IESZ2Z4GSGNI32J3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y66MVB344JLV2J76IESZ2Z4GSGNI32J3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7172773685444206856=="

--===============7172773685444206856==
Content-Type: multipart/alternative; boundary="000000000000101c8b062433293d"

--000000000000101c8b062433293d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Jorge Chen,

I see what you're saying. Still, I'm not even sure 8 ports will fit. You
could start with 5 ports, and then use a single streamer to get data out of
the replay block into the host. You can use the replay block API to specify
the memory region you want to download (or upload). So, the first 4 ports
are for TX/RX, and the 5th port is for the host backhaul. This also allows
you to statically connect the replay block to the DDC/DUC and skip stream
endpoint for those. You'd only need one SEP for the 5th port.

If your app permits, you can also reconfigure the RFNoC graph, and use 4
ports total. While you're doing radio stuff, the ports are connected to the
DDC/DUC. For download/upload, you reconfigure the graph and connect the
replay block to the RX/TX streamers. The neat thing is, this will work with
the default bitfile that we provide and you won't have to build your own
bitfile.

 --M

On Fri, Oct 11, 2024 at 2:03=E2=80=AFPM Jorge Chen <superme991@gmail.com> w=
rote:

> Hi Martin
>
> Thank you for your reply. I understand the N310=E2=80=99s default Replay =
block has
> 4 input and 4 output ports. In my setup, I connect the tx_streamers to th=
e
> Replay block=E2=80=99s input ports and route the output ports to the DUC =
blocks on
> the TX side. On the RX side, I connect the DDC blocks to the Replay block=
=E2=80=99s
> input ports, with the output ports connected to the rx_streamers. This is
> why I believe I may need additional ports for simultaneous TX-RX, and I=
=E2=80=99m
> exploring possible solutions.
>
> I plan to use a 100MHz bandwidth with a sample rate of 122.88MSps per
> channel. I=E2=80=99ve noticed that channel time offsets occur when overfl=
ows or
> underflows happen in the real-time streaming architecture based on the
> multi-usrp object. Since stability is crucial, especially it takes time t=
o
> collect data. And the experiment will be conducted outdoors, I aim to kee=
p
> the system as compact as possible, using just one USRP N310 and a noteboo=
k
> (there will be a target in the air for transmitting samples to and
> receiving samples from). This is why I=E2=80=99m considering using the Re=
play block
> to off load the massive data transmission between NB and USRP N310.
>
> Thanks again for mentioning the TX/RX cross talk issue. I plan to try
> separating the frequencies for the external TX/RX LOs to reduce the
> problem. Do you think this approach might help?
>
> Any further suggestions would be greatly appreciated!
>
> Thanks!
> Jorge
>
> On Wed, Oct 9, 2024 at 3:53=E2=80=AFPM Martin Braun <martin.braun@ettus.c=
om>
> wrote:
>
>> Jorge,
>>
>> for 4x4 mode, you need 4 ports, not 8. If you configure the replay block
>> with 4 channels, it will create both 4 input and output ports,
>> respectively. What bandwidth are you trying to capture?
>>
>> Also remember that if you TX and RX simultaneously, you will get
>> crosstalk.
>>
>> --M
>>
>> On Tue, Oct 8, 2024 at 10:06=E2=80=AFAM Jorge Chen <superme991@gmail.com=
> wrote:
>>
>>> Hi all,
>>>
>>> I=E2=80=99m working on a multi-channel, phase-coherent transceiver plat=
form
>>> using the N310 and RFNoC Replay block (UHD4.6). It has been tested
>>> successfully for 4TX and 4RX individually.
>>>
>>> However, I=E2=80=99m facing challenges getting 4TX and 4RX to work
>>> simultaneously.
>>>
>>> Attempts to configure:
>>>
>>>    1. *1 Replay block with 8 I/O ports:*
>>>       - Result: Bitstream generated successfully, and Replay block
>>>       connects with other blocks. However, data read/write fails on por=
ts 4=E2=80=937.
>>>       - Inference: [1][2] suggest the N310 Replay block only supports 4
>>>       channels, which might explain the issue.
>>>    2. * 2 Replay blocks, each with 4 I/O ports:*
>>>       - Result: Bitstream compilation fails (YAML and logs attached).
>>>       - Inference: Could the issue be related to connecting both Replay
>>>       blocks to the same DRAM? If so, is it possible to partition the D=
RAM for
>>>       use by both blocks?
>>>
>>> Reference [2] mentions that DRAM access can be controlled by adjusting
>>> axi_intercon_2x64_128_bd to restrict memory availability.
>>> Could this be a solution to allow DRAM access for both Replay blocks?
>>>
>>> Any guidance on configuring the Replay block for simultaneous 4TX/4RX
>>> would be greatly appreciated.
>>>
>>>
>>> References:
>>> [1]
>>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4#Building_Cus=
tom_FPGA_Images_with_a_Replay_Block
>>> [2]
>>> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_the_=
Replay.2FDMA_FIFO_block_to_my_FPGA_image.3F
>>>
>>>
>>> Thanks,
>>> Jorge
>>>
>>>
>>> Martin Braun <martin.braun@ettus.com> =E6=96=BC 2024=E5=B9=B410=E6=9C=
=884=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=8811:41=E5=AF=AB=E9=81=93=
=EF=BC=9A
>>>
>>>> Mark the last connection as a back-edge (
>>>> https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1rfnoc__graph=
.html#ab4cca8d99af451a9b9c5757af2b66ffa,
>>>> see also
>>>> https://uhd.readthedocs.io/en/latest/page_properties.html#props_graph_=
resolution_back_edges
>>>> ).
>>>>
>>>> --M
>>>>
>>>> On Fri, Oct 4, 2024 at 4:39=E2=80=AFPM hui cj <cjh416593819@gmail.com>=
 wrote:
>>>>
>>>>> Sorry to bother everyone again,
>>>>>
>>>>>    - 0/Replay#0:0 --> 0/DUC#0:0
>>>>>    - 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>>>>>    - 0/Radio#0:0 =3D=3D> 0/DDC#0:0
>>>>>    - 0/DDC#0:0 --> 0/Replay#0:0
>>>>>
>>>>> I wonder to realize the graph that work for playing from DRAM and
>>>>> recording to DRAM simultaneously,
>>>>>
>>>>>     graph->connect(tx_replay_ctrl->get_block_id(), tx_replay_chan, du=
c_ctrl->get_block_id(), duc_chan);
>>>>>
>>>>>     graph->connect(duc_ctrl->get_block_id(), duc_chan, tx_radio_ctrl-=
>get_block_id(), tx_chan);
>>>>>
>>>>>
>>>>>     graph->connect(rx_radio_ctrl->get_block_id(), rx_chan, ddc_ctrl->=
get_block_id(), ddc_chan);
>>>>>
>>>>>     graph->connect(ddc_ctrl->get_block_id(), ddc_chan, rx_replay_ctrl=
->get_block_id(), rx_replay_chan);
>>>>>
>>>>>
>>>>> Then the following error ran out.
>>>>>
>>>>> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:0 =
without disabling is_forward_edge will lead to unresolvable graph!
>>>>>
>>>>> Can someone help me? Thanks!
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>
>>>

--000000000000101c8b062433293d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Jorge Chen,</div><div><br></div><div>I see what y=
ou&#39;re saying. Still, I&#39;m not even sure 8 ports will fit. You could =
start with 5 ports, and then use a single streamer to get data out of the r=
eplay block into the host. You can use the replay block API to specify the =
memory region you want to download (or upload). So, the first 4 ports are f=
or TX/RX, and the 5th port is for the host backhaul. This also allows you t=
o statically connect the replay block to the DDC/DUC and skip stream endpoi=
nt for those. You&#39;d only need one SEP for the 5th port.<br></div><div><=
br></div><div>If your app permits, you can also reconfigure the RFNoC graph=
, and use 4 ports total. While you&#39;re doing radio stuff, the ports are =
connected to the DDC/DUC. For download/upload, you reconfigure the graph an=
d connect the replay block to the RX/TX streamers. The neat thing is, this =
will work with the default bitfile that we provide and you won&#39;t have t=
o build your own bitfile.</div><div><br></div><div>=C2=A0--M<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Oct 11, 2024 at 2:03=E2=80=AFPM Jorge Chen &lt;<a href=3D"mailto:superme=
991@gmail.com" target=3D"_blank">superme991@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi M=
artin</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you for your=
 reply. I understand the N310=E2=80=99s default Replay block has 4 input an=
d 4 output ports. In my setup, I connect the tx_streamers to the Replay blo=
ck=E2=80=99s input ports and route the output ports to the DUC blocks on th=
e TX side. On the RX side, I connect the DDC blocks to the Replay block=E2=
=80=99s input ports, with the output ports connected to the rx_streamers. T=
his is why I believe I may need additional ports for simultaneous TX-RX, an=
d I=E2=80=99m exploring possible solutions.<br></div><div dir=3D"auto"><div=
><p style=3D"color:rgb(0,0,0);font-style:normal;font-weight:400;letter-spac=
ing:normal;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none">I plan to use a 100MHz bandwidth with a sampl=
e rate of 122.88MSps per channel. I=E2=80=99ve noticed that channel time of=
fsets occur when overflows or underflows happen in the real-time streaming =
architecture based on the multi-usrp object. Since stability is crucial, es=
pecially it takes time to collect data. And the experiment will be conducte=
d outdoors, I aim to keep the system as compact as possible, using just one=
 USRP N310 and a notebook (there will be a target in the air for transmitti=
ng samples to and receiving samples from). This is why I=E2=80=99m consider=
ing using the Replay block to off load the massive data transmission betwee=
n NB and USRP N310.</p><p style=3D"color:rgb(0,0,0);font-style:normal;font-=
weight:400;letter-spacing:normal;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration:none">Thanks again for mentio=
ning the TX/RX cross talk issue. I plan to try separating the frequencies f=
or the external TX/RX LOs to reduce the problem. Do you think this approach=
 might help?</p><p style=3D"color:rgb(0,0,0);font-style:normal;font-weight:=
400;letter-spacing:normal;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;text-decoration:none">Any further suggestions would =
be greatly appreciated!</p></div><div dir=3D"auto"><br></div>Thanks!</div><=
div dir=3D"auto">Jorge<br clear=3D"all"><br clear=3D"all"><div dir=3D"auto"=
><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"></div></div></div></div></div></div></div></d=
iv></div></div></div><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Oct 9, 2024 at 3:53=E2=80=AFPM Martin Braun &lt;<a =
href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>Jorge,</div><div><br></div><div>for 4x4 mode, you=
 need 4 ports, not 8. If you configure the replay block with 4 channels, it=
 will create both 4 input and output ports, respectively. What bandwidth ar=
e you trying to capture?</div><div><br></div><div>Also remember that if you=
 TX and RX simultaneously, you will get crosstalk.</div></div><div dir=3D"l=
tr"><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 8, 2024 at 10:06=E2=80=AFA=
M Jorge Chen &lt;<a href=3D"mailto:superme991@gmail.com" target=3D"_blank">=
superme991@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><p>Hi all,</p><p>I=E2=
=80=99m working on a multi-channel, phase-coherent transceiver platform usi=
ng the N310 and RFNoC Replay block (UHD4.6). It has been tested successfull=
y for 4TX and 4RX individually.</p><p>However, I=E2=80=99m facing challenge=
s getting 4TX and 4RX to work simultaneously.</p><p>Attempts to configure:<=
/p><ol>
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
</blockquote></div></div>
</blockquote></div>

--000000000000101c8b062433293d--

--===============7172773685444206856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7172773685444206856==--
