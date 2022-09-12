Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEA15B63C7
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 00:35:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38F34383671
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 18:35:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663022125; bh=mcSg50S2OADTnEefMjMzjqMyrwdGDkc5NTHBLPWgc2w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wukykTh7uYj4ebHQhYfw/x+2jwjqV1Du/vouZX+EpZH0dfCosBjjPSFbBXSmPwJwI
	 8xKfKYy8XRE0AJ/n+X59opg8TYwH8NRmoRvNxywH6T06WliMUP7+CMAgQuWgEXx4BP
	 iOlku4VKGYI4hcHeWEpfSqhRS52nFm3tpMXTdiul8vxQUAQQtKuOiWdvWMw4vnAsrc
	 jAaXc8eVgpNm3bH0p5dKv2wDFiMUvztXmUxwsCrug7vPiQ2P8UeD4KTe6A9N+gD29w
	 yzufdWoqlh6lkkIO4USTrpRI+Onvvp4IJ71ED+PVGrbiMHBA2CkZbBV1QqbgrkKMA0
	 IXXrXZazTp+VA==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 544A93813F4
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 18:33:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="O5uWH2oU";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id b136so15037313yba.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ET1wTelil/V1zdPxa3WqYrUKO+lRcX10qVKAFn19ue4=;
        b=O5uWH2oUSLZEyrSDFYI6V9YqMqxSVbb15TWDyrQ8Us5rrw61WYSTDrfCy3USqZzZaB
         aFEThR/fSMQiHYOu7kGiySpu3ralC1t6ZTKUTObfCD/Bog/57nJGZvZo33a2A/GK+06h
         Kwt1Qpp4+fW5t8nGenYGoeCPB4yjZpyXeYhGbTpxpQvnDLMIWLHKR+lUND5NGKgeGByk
         RxgF40HTQdkZHYICeMgTQ01EFuDFS71RAQYM7xB4KHOxhisX5HC6eupXbIJH41AtEBwV
         jHQ39+UJcm48dscChibr2vd+3qyLn+glgF19fvgsZm4YqE7VZCcfeLUvDjI+Zkq6AtRC
         MAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ET1wTelil/V1zdPxa3WqYrUKO+lRcX10qVKAFn19ue4=;
        b=ACp55863yOTv+JxK8n7NtoLR2y3PxqjbhIyckIn+pxydG3TgZJfZossYJ5mxypDPUL
         o31Rn7yUuDdJ4NH61IAfuip3zuJMMM2gGRYw4ldbBOao33EXR5ZVlLDcf92tOV+CzJvn
         diW8a4xDzTTR77tQTetrs/jLryDUTFTrLu/BpAsBjMTuPpzRnoJxfJBZP1+5x4jQunIv
         Lgpvc3jHCf8EtxI//KKmTC4gu796XK0XOXIMGEJ+hVirVoPABIWT98RWP4vIz39JjusG
         3YNyMqj91qj8eLAdIZ8qbpLSsoZThtrBd1uYE/h2wG0VN0c7Zdaw5CBNz8iu5Rc32yht
         tVFA==
X-Gm-Message-State: ACgBeo3OBnXSVwlLY9S2t3qsxXe3FYoRlmS2vXGhshL+RhmLEH7pd9Md
	JgLxRs99aLM5OTzi2AyHiFkvdjt1uc/nftLoI59GZDOql2g=
X-Google-Smtp-Source: AA6agR4KvaW+gdnRvKFhgqQphKKw8x199O144EB5azab57+6GsnsrWx4S3+Q6WlXX84cWVFD0dPc/dAY9CInG5EN/O4=
X-Received: by 2002:a05:6902:1246:b0:6ae:fd40:bab9 with SMTP id
 t6-20020a056902124600b006aefd40bab9mr6956256ybu.563.1663022029309; Mon, 12
 Sep 2022 15:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com> <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
In-Reply-To: <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 12 Sep 2022 18:33:38 -0400
Message-ID: <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: XQEZ7KOB4ADJRQEARAZOEEYO465RS6TS
X-Message-ID-Hash: XQEZ7KOB4ADJRQEARAZOEEYO465RS6TS
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQEZ7KOB4ADJRQEARAZOEEYO465RS6TS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2379489392585340263=="

--===============2379489392585340263==
Content-Type: multipart/alternative; boundary="0000000000004fed1405e8827d62"

--0000000000004fed1405e8827d62
Content-Type: text/plain; charset="UTF-8"

Oops. Ignore what I said. I now realize you stated you were getting an
Overflow which of course you would never get if streaming hadn't started.
Rob

On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <rkossler@nd.edu> wrote:

> Are you sure that the radio is even streaming?  The typical method for
> starting streaming is to tell the rx_streamer to start streaming.  Then, in
> UHD-land, the rx_streamer ctrl tells the next upstring block to start
> streaming such that this streaming command propagates up the chain until
> the radio receives it and starts streaming.  So, if your custom block does
> not forward the streaming command from the rx_streamer to the radio, then
> the radio never even starts streaming.  You can verify by simply monitoring
> the LEDs.
>
> If this is the problem, you can go-around the intended use by simply
> telling the radio to start streaming rather than the rx_streamer.  Or, of
> course, you can modify your custom block controller to propagate the
> streaming command.
> Rob
>
> On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Yes, of course. But I don't get 1 sample from the ddc's, even with just
>> one channel of a 2:1 decimated channel connected to the rx streamer.
>>
>> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> The aggregate output rate of the 5 streams could require more bandwidth
>>> than the 10 GigE interface can sustain. What are the exact output rates?
>>>
>>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>>
>>>> Those rates vary from a 2:1 decimation down to other rates.
>>>>
>>>> The host has 10 Gbe interfaces to the USRP.
>>>>
>>>> I get samples if i connect the radio to the rx streamer, just nothing
>>>> from the ddc's.
>>>>
>>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> Hi Kevin,
>>>>>
>>>>> What are the sample rates for the 5 outputs? What connection are you
>>>>> using to your host PC, 1 GigE or 10 GigE?
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Jonathon,
>>>>>>
>>>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>>>>>> outputs). I've tried both static and dynamic routing from the radio block.
>>>>>> I.e. the static route version:
>>>>>>
>>>>>> |    /
>>>>>> |   |       Static connections on this device:
>>>>>> |   |
>>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>>
>>>>>>
>>>>>> On the input side it is all at the radio rate, but I hope my core is
>>>>>> being clocked at 214 MHz.
>>>>>>
>>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>>> interfaces) it looks ok.
>>>>>>
>>>>>> Regards, Kevin
>>>>>>
>>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>
>>>>>>> Hello Kevin,
>>>>>>>
>>>>>>> What device are you using and what does your flowgraph look like?
>>>>>>> What sample rate are you running at? If your block is running at the radio
>>>>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>>>>> input sample every clock cycle on average.
>>>>>>>
>>>>>>> Jonathon
>>>>>>>
>>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi All,
>>>>>>>>
>>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when
>>>>>>>> used in an RFNoC project.
>>>>>>>>
>>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>>> back-pressure when required, etc.)
>>>>>>>>
>>>>>>>> I'm not sure how to go about debugging this, and am not yet
>>>>>>>> familiar enough with RFNoC to know what to ask.
>>>>>>>>
>>>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>>>> correctly, but this is how it gets instantiated:
>>>>>>>>
>>>>>>>>   multiddc multiddc_i (
>>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>>     //     synchronous and connected to the same clock source. The
>>>>>>>> IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>>     //     connected to the same reset source. See Synchronization
>>>>>>>> of Global Reset Signal to IP Core Clock Domain.
>>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>>
>>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>>
>>>>>>>> The core YAML file describes the clock as:
>>>>>>>>
>>>>>>>> data:
>>>>>>>>   fpga_iface: axis_chdr
>>>>>>>>   clk_domain: ce
>>>>>>>>
>>>>>>>> In the project YAML file:
>>>>>>>>
>>>>>>>> clk_domains:
>>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>>> dstport: radio }
>>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>>> dstport: ce }
>>>>>>>>
>>>>>>>> Is there something that might be an obvious first place to check?
>>>>>>>>
>>>>>>>> Many thanks, Kevin
>>>>>>>>
>>>>>>>> --
>>>>>>>> Kevin Williams
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> Kevin Williams
>>>>>>
>>>>>
>>>>
>>>> --
>>>> Kevin Williams
>>>>
>>>
>>
>> --
>> Kevin Williams
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000004fed1405e8827d62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oops. Ignore what I said. I now realize you stated you wer=
e getting an Overflow which of course you would never get if streaming hadn=
&#39;t started.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler &=
lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Are y=
ou sure that the radio is even streaming?=C2=A0 The typical method for star=
ting streaming is to tell the rx_streamer to start streaming.=C2=A0 Then, i=
n UHD-land, the rx_streamer ctrl tells the next upstring block to start str=
eaming such that this streaming command propagates up the chain until the r=
adio receives it and starts streaming.=C2=A0 So, if your custom block does =
not forward the streaming command from the rx_streamer to the radio, then t=
he radio never even starts streaming.=C2=A0 You can verify by simply monito=
ring the LEDs.<div><br></div><div>If this is the problem, you can go-around=
 the intended use by simply telling the radio to start streaming rather tha=
n the rx_streamer.=C2=A0 Or, of course, you can modify your custom block co=
ntroller to propagate the streaming command.<br><div>Rob</div></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Sep 12, 2022 at 4:18 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.=
com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Yes, of course. But=
 I don&#39;t get 1 sample from the ddc&#39;s, even with just one channel of=
 a 2:1 decimated channel connected to the rx streamer.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022=
 at 22:13, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.co=
m" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The aggrega=
te output rate of the 5 streams could require more bandwidth than the 10 Gi=
gE interface can sustain. What are the exact output rates?</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2=
022 at 3:53 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" targe=
t=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Those rates vary from a 2:1 d=
ecimation down to other rates.<div><br></div><div>The host has 10 Gbe inter=
faces to the USRP.</div><div><br></div><div>I get samples if i connect the =
radio to the rx streamer, just nothing from the ddc&#39;s.</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 =
Sept 2022 at 21:48, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum=
@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
 Kevin,<div><br></div><div>What are the sample rates for the 5 outputs? Wha=
t connection are you using to your host PC, 1 GigE or 10 GigE?</div><div><b=
r></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams &=
lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></div><div>I&#39;ve go=
t an x310. The flowgraph is a simple radio-&gt;multiddc-&gt;(to 5x outputs)=
. I&#39;ve tried both static and dynamic routing from the radio block. I.e.=
 the static route version:</div><div><br></div><div><div>|=C2=A0 =C2=A0 /</=
div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connections on th=
is device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br></div><div><br><=
/div><div>On the input side it is all at the radio rate, but I hope my core=
 is being clocked at 214 MHz.</div><div><br></div><div>When I simulate my I=
P core (which includes the AXI streaming interfaces) it looks ok.</div><div=
><br></div><div>Regards, Kevin</div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:29, Jo=
nathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"=
_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Kevin,<div><br></d=
iv><div>What device are you using and what does your flowgraph look like? W=
hat sample rate are you running at? If your block is running at the radio s=
ample rate (e.g. 200 MSPS on a X310), your block will need to process one i=
nput sample every clock cycle on average.</div><div><br></div><div>Jonathon=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<a href=3D"mailto:=
zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All,<div><=
br></div><div>I&#39;ve got an IP core that is causing an &quot;ERROR_CODE_O=
VERFLOW&quot; when used in an RFNoC project.</div><div><br></div><div>The c=
ore responds correctly when simulated outside the RFNoC environment. (I can=
 see correct output, the AXI streaming signalling, back-pressure when requi=
red, etc.)</div><div><br></div><div>I&#39;m not sure how to go about debugg=
ing this, and am not yet familiar enough with RFNoC to know what to ask.</d=
iv><div><br></div><div>I have been thinking it was the core not being reset=
 or clocked correctly, but this is how it gets instantiated:</div><div><br>=
</div><div><div>=C2=A0 multiddc multiddc_i (</div><div>=C2=A0 =C2=A0 //=C2=
=A0 =C2=A0- Using different clocks for the IP core and the AXI interface. T=
he IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div><div>=C2=A0 =C2=A0 //=
=C2=A0 =C2=A0 =C2=A0synchronous and connected to the same clock source. The=
 IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div><div>=C2=A0 =C2=A0 //=
=C2=A0 =C2=A0 =C2=A0connected to the same reset source. See Synchronization=
 of Global Reset Signal to IP Core Clock Domain.</div><div>=C2=A0 =C2=A0 .I=
PCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data=
_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br></div><div>=C2=A0 =C2=
=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk=
),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(~axis_data_rst),</div></div><div><br></div><div>The core YAML file d=
escribes the clock as:</div><div><br></div><div><div>data:</div><div>=C2=A0=
 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce</div></div><div><br>=
</div><div>In the project YAML file:</div><div><br></div><div><div>clk_doma=
ins:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: =
radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - { srcblk: _=
device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: ce }</div></=
div><div><br></div><div>Is there something that might be an obvious first p=
lace to check?</div><div><br></div><div>Many thanks, Kevin<br clear=3D"all"=
><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></div></div></d=
iv></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000004fed1405e8827d62--

--===============2379489392585340263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2379489392585340263==--
