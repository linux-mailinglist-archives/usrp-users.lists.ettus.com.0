Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E2799A32E
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 14:03:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F14DF385CD4
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 08:03:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728648233; bh=0z4ZyMyM81+0uCoPn6lHBfwsowUxpDxYObWlbzLq6XQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ji27QjePPev05aiuHoFw48/al9jt61jL+x9PDhc4x7OXJ/ZxhkFS5cJaVvwl7huEG
	 D6u80K2MiRZDOkeZjEAqkzrjvbmvboaVOPtXB64rWBERRK4BFyqkDcErBpPGVcmE8y
	 kH8bzAAKR3VKbzAeqyeMBh4z4AByfwcI3sSjE1XblV1b50ttDNjiXPv/PgI9J+D4CW
	 ntJUYhxW3cOwNIL7mrrCFea+c8z2njokgpudzFGtumQCKu3O+wnY4KTjMv4vaYap8Q
	 cP9KOLUivmHLdnXp0tQcK/SZUAjNIxAxk3BGy0HfSfQxcUpwGi02hgOz5mOw3436si
	 zW4awBulxE3wQ==
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C6A03857DF
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 08:03:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c4bLiut/";
	dkim-atps=neutral
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5e98821b12eso1037318eaf.0
        for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 05:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728648207; x=1729253007; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iTa0Hfvsvys8c/dPPi24vkWB5DTC43MW0ujloJbk+fQ=;
        b=c4bLiut/5DD0Cux1wV9UKQnpm/135xYzkmablDnHlrt0nCwPzQ6CT5LYs+FzJ3DUT8
         nw4qgH67Ru1Q3LlMaloYIQ60QnpFfsomwQSzUOz/OnIojhfpe0VNIxIvXI3kqxljaKUv
         Hn8g8Fm7GcDFNslZ7d39wJYzsbzxx/sm1xSXgjhtrWQtem6Lq+sOj+HTvKFs9bceeMBl
         yWR8iwDTf29IVgokpTpk8up+QSAT/1cdqdWCCWhwbh00LOKCiOfLwGyKnv7AK3kCsy4o
         d8LSkRX4YLqqQ00Aq4B2U3jYha6Nv8j45UA6jMCLK/GA/08KYPEIvfTUrHq64y4OPFvP
         HG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728648207; x=1729253007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iTa0Hfvsvys8c/dPPi24vkWB5DTC43MW0ujloJbk+fQ=;
        b=fG4VNzSi5k0xw9Nwd7OxSFaP9jfMdph9GGgNILehRIt9ryDoJ/gQ2vZ29pz+CVQFtW
         wweQmtcCmaKbbDL+MG+Faxpy8vHiOjHNMjCT86yfjKZHWueRJKKfJPvztz+iY7vSgqI3
         Tn8d3IVHI4sNMT5XUQ1kGz4k5vmMpEhkFAL/yPRWrJYcoyAS2qGlpqBTBWTVEqXCnd50
         VEryfhiqA6BsmeY2dvBEtbDlDzbVXgjPgZN5CGGMX78QmQfnYNdBcjSHSArZ5ONJag5b
         lfeMoISfVrtn2pOlFJyAmgxXxXFaVotHq9UxNEqjcimmvMHZNaUWBgzkIIsDS1Z8q187
         +bGA==
X-Gm-Message-State: AOJu0YzIv9U3Of54Gf0EjSIAnqejPhb86MSmh+P1c2sqpEiPi9n1dE0U
	GcEThAAAHxsdUyR0qd/dcGJi6UnJpIHPk7jMLtS/6IbbgkpziuZKFLj4j1milvs9rC5tLDw0QF4
	qb2dA4RGfg282io2Nkcag6zRAcLE=
X-Google-Smtp-Source: AGHT+IEKb9B5V3uaU6EOCD6DduWsGdem1OeWU4ZmiZWmSAmDjxoeUXR+Gj/lcXInUrT0stRoMltyeo/tFzkF/GlRz00=
X-Received: by 2002:a05:6358:27a6:b0:1ac:9bc7:2da5 with SMTP id
 e5c5f4694b2df-1c32bcabb2dmr7528255d.27.1728648207183; Fri, 11 Oct 2024
 05:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
 <CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com>
 <CAFOi1A7L18TyLPnEFOva+jq8bKb2PjvDcoB_2v0oHWinnayb9g@mail.gmail.com>
 <CALbO1t1qCajM4OtGt6r+F+GP9ZD0U6Pvng25pWPmkqka7uEG0w@mail.gmail.com> <CAFOi1A7RPPkbaiD5cn4wuK1xiTO92TXZem+xZk4=COpUYNjL6Q@mail.gmail.com>
In-Reply-To: <CAFOi1A7RPPkbaiD5cn4wuK1xiTO92TXZem+xZk4=COpUYNjL6Q@mail.gmail.com>
From: Jorge Chen <superme991@gmail.com>
Date: Fri, 11 Oct 2024 20:03:15 +0800
Message-ID: <CALbO1t36vmwDJWJVNor7S0NLoe8mdChZ=3JrCTn1TfMwnPcMmA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: MNZWHZ7RN2Z6UXDXVBFKMMTFL4BZYBGG
X-Message-ID-Hash: MNZWHZ7RN2Z6UXDXVBFKMMTFL4BZYBGG
X-MailFrom: superme991@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MNZWHZ7RN2Z6UXDXVBFKMMTFL4BZYBGG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4098082777357214233=="

--===============4098082777357214233==
Content-Type: multipart/alternative; boundary="00000000000054b95606243246eb"

--00000000000054b95606243246eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin

Thank you for your reply. I understand the N310=E2=80=99s default Replay bl=
ock has
4 input and 4 output ports. In my setup, I connect the tx_streamers to the
Replay block=E2=80=99s input ports and route the output ports to the DUC bl=
ocks on
the TX side. On the RX side, I connect the DDC blocks to the Replay block=
=E2=80=99s
input ports, with the output ports connected to the rx_streamers. This is
why I believe I may need additional ports for simultaneous TX-RX, and I=E2=
=80=99m
exploring possible solutions.

I plan to use a 100MHz bandwidth with a sample rate of 122.88MSps per
channel. I=E2=80=99ve noticed that channel time offsets occur when overflow=
s or
underflows happen in the real-time streaming architecture based on the
multi-usrp object. Since stability is crucial, especially it takes time to
collect data. And the experiment will be conducted outdoors, I aim to keep
the system as compact as possible, using just one USRP N310 and a notebook
(there will be a target in the air for transmitting samples to and
receiving samples from). This is why I=E2=80=99m considering using the Repl=
ay block
to off load the massive data transmission between NB and USRP N310.

Thanks again for mentioning the TX/RX cross talk issue. I plan to try
separating the frequencies for the external TX/RX LOs to reduce the
problem. Do you think this approach might help?

Any further suggestions would be greatly appreciated!

Thanks!
Jorge

On Wed, Oct 9, 2024 at 3:53=E2=80=AFPM Martin Braun <martin.braun@ettus.com=
> wrote:

> Jorge,
>
> for 4x4 mode, you need 4 ports, not 8. If you configure the replay block
> with 4 channels, it will create both 4 input and output ports,
> respectively. What bandwidth are you trying to capture?
>
> Also remember that if you TX and RX simultaneously, you will get crosstal=
k.
>
> --M
>
> On Tue, Oct 8, 2024 at 10:06=E2=80=AFAM Jorge Chen <superme991@gmail.com>=
 wrote:
>
>> Hi all,
>>
>> I=E2=80=99m working on a multi-channel, phase-coherent transceiver platf=
orm using
>> the N310 and RFNoC Replay block (UHD4.6). It has been tested successfull=
y
>> for 4TX and 4RX individually.
>>
>> However, I=E2=80=99m facing challenges getting 4TX and 4RX to work simul=
taneously.
>>
>> Attempts to configure:
>>
>>    1. *1 Replay block with 8 I/O ports:*
>>       - Result: Bitstream generated successfully, and Replay block
>>       connects with other blocks. However, data read/write fails on port=
s 4=E2=80=937.
>>       - Inference: [1][2] suggest the N310 Replay block only supports 4
>>       channels, which might explain the issue.
>>    2. * 2 Replay blocks, each with 4 I/O ports:*
>>       - Result: Bitstream compilation fails (YAML and logs attached).
>>       - Inference: Could the issue be related to connecting both Replay
>>       blocks to the same DRAM? If so, is it possible to partition the DR=
AM for
>>       use by both blocks?
>>
>> Reference [2] mentions that DRAM access can be controlled by adjusting
>> axi_intercon_2x64_128_bd to restrict memory availability.
>> Could this be a solution to allow DRAM access for both Replay blocks?
>>
>> Any guidance on configuring the Replay block for simultaneous 4TX/4RX
>> would be greatly appreciated.
>>
>>
>> References:
>> [1]
>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4#Building_Cust=
om_FPGA_Images_with_a_Replay_Block
>> [2]
>> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_the_R=
eplay.2FDMA_FIFO_block_to_my_FPGA_image.3F
>>
>>
>> Thanks,
>> Jorge
>>
>>
>> Martin Braun <martin.braun@ettus.com> =E6=96=BC 2024=E5=B9=B410=E6=9C=88=
4=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=8811:41=E5=AF=AB=E9=81=93=EF=
=BC=9A
>>
>>> Mark the last connection as a back-edge (
>>> https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1rfnoc__graph.=
html#ab4cca8d99af451a9b9c5757af2b66ffa,
>>> see also
>>> https://uhd.readthedocs.io/en/latest/page_properties.html#props_graph_r=
esolution_back_edges
>>> ).
>>>
>>> --M
>>>
>>> On Fri, Oct 4, 2024 at 4:39=E2=80=AFPM hui cj <cjh416593819@gmail.com> =
wrote:
>>>
>>>> Sorry to bother everyone again,
>>>>
>>>>    - 0/Replay#0:0 --> 0/DUC#0:0
>>>>    - 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>>>>    - 0/Radio#0:0 =3D=3D> 0/DDC#0:0
>>>>    - 0/DDC#0:0 --> 0/Replay#0:0
>>>>
>>>> I wonder to realize the graph that work for playing from DRAM and
>>>> recording to DRAM simultaneously,
>>>>
>>>>     graph->connect(tx_replay_ctrl->get_block_id(), tx_replay_chan, duc=
_ctrl->get_block_id(), duc_chan);
>>>>
>>>>     graph->connect(duc_ctrl->get_block_id(), duc_chan, tx_radio_ctrl->=
get_block_id(), tx_chan);
>>>>
>>>>
>>>>     graph->connect(rx_radio_ctrl->get_block_id(), rx_chan, ddc_ctrl->g=
et_block_id(), ddc_chan);
>>>>
>>>>     graph->connect(ddc_ctrl->get_block_id(), ddc_chan, rx_replay_ctrl-=
>get_block_id(), rx_replay_chan);
>>>>
>>>>
>>>> Then the following error ran out.
>>>>
>>>> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:0 w=
ithout disabling is_forward_edge will lead to unresolvable graph!
>>>>
>>>> Can someone help me? Thanks!
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>>

--00000000000054b95606243246eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Martin</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Thank you for your reply. I understand the N310=E2=80=99s default Repla=
y block has 4 input and 4 output ports. In my setup, I connect the tx_strea=
mers to the Replay block=E2=80=99s input ports and route the output ports t=
o the DUC blocks on the TX side. On the RX side, I connect the DDC blocks t=
o the Replay block=E2=80=99s input ports, with the output ports connected t=
o the rx_streamers. This is why I believe I may need additional ports for s=
imultaneous TX-RX, and I=E2=80=99m exploring possible solutions.<br></div><=
div dir=3D"auto"><div><p style=3D"color:rgb(0,0,0);font-style:normal;font-w=
eight:400;letter-spacing:normal;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration:none">I plan to use a 100MHz b=
andwidth with a sample rate of 122.88MSps per channel. I=E2=80=99ve noticed=
 that channel time offsets occur when overflows or underflows happen in the=
 real-time streaming architecture based on the multi-usrp object. Since sta=
bility is crucial, especially it takes time to collect data. And the experi=
ment will be conducted outdoors, I aim to keep the system as compact as pos=
sible, using just one USRP N310 and a notebook (there will be a target in t=
he air for transmitting samples to and receiving samples from). This is why=
 I=E2=80=99m considering using the Replay block to off load the massive dat=
a transmission between NB and USRP N310.</p><p style=3D"color:rgb(0,0,0);fo=
nt-style:normal;font-weight:400;letter-spacing:normal;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none">Th=
anks again for mentioning the TX/RX cross talk issue. I plan to try separat=
ing the frequencies for the external TX/RX LOs to reduce the problem. Do yo=
u think this approach might help?</p><p style=3D"color:rgb(0,0,0);font-styl=
e:normal;font-weight:400;letter-spacing:normal;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration:none">Any furth=
er suggestions would be greatly appreciated!</p></div><div dir=3D"auto"><br=
></div>Thanks!</div><div dir=3D"auto">Jorge<br clear=3D"all"><br clear=3D"a=
ll"><div dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"></div></div></div></div></div></div></div></div></div></div></di=
v><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Oct 9, 2024 at 3:53=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:mart=
in.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr"><div>Jorge,</div><div><br></div><di=
v>for 4x4 mode, you need 4 ports, not 8. If you configure the replay block =
with 4 channels, it will create both 4 input and output ports, respectively=
. What bandwidth are you trying to capture?</div><div><br></div><div>Also r=
emember that if you TX and RX simultaneously, you will get crosstalk.</div>=
</div><div dir=3D"ltr"><div><br></div><div>--M<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 8, 2024=
 at 10:06=E2=80=AFAM Jorge Chen &lt;<a href=3D"mailto:superme991@gmail.com"=
 target=3D"_blank">superme991@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><p=
>Hi all,</p><p>I=E2=80=99m working on a multi-channel, phase-coherent trans=
ceiver platform using the N310 and RFNoC Replay block (UHD4.6). It has been=
 tested successfully for 4TX and 4RX individually.</p><p>However, I=E2=80=
=99m facing challenges getting 4TX and 4RX to work simultaneously.</p><p>At=
tempts to configure:</p><ol>
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

--00000000000054b95606243246eb--

--===============4098082777357214233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4098082777357214233==--
