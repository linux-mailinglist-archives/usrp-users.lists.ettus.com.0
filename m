Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A4E5B63C9
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 00:37:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 540AD3837E1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 18:37:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663022263; bh=MsxgO2AkDjQDoHU9N8iUuHBlzWj+WtHK/Ush7DsfH6k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XjsvcqgH2jm57a5wwuwd3h84FcEGbbQT0RDbiuxbI2Mm7RFaHv4/LaviOciZJdkla
	 EwOdZq6UR7aqyZDezAPN/2z90CqFxbTXqJs5kmDU4/eDrEnLodutUuA8ZgKkrlBCly
	 VTqyEfWlm3w81QEH1XBXQdjNVkZLZHmMcNWWdK/IgZJySI2QNDTcScNUSQ4kaSq6RY
	 m6MMdJs2kKC0xRMeKcG108KAK5icYiHBZ6twt0AN7GAYZJzyajORm4fdRk7p1p2aka
	 1f1/AH2KTSRlQ07bFFv5qQ6Ue5a4kL/EEMnC3ipv1RqIvCr4jWqFJ+hv5amgLtrk6v
	 i75W7FxCpFuWQ==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 952613837B5
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 18:36:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dqMRW+Pl";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id e187so8793364ybh.10
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yMx1reN0SZlTNKMlSt4lJ/4Fm1CRlbySQfIkQ3jDmnY=;
        b=dqMRW+PlLcADMLyfxbmn+UVCFvqeXCSTOHRfOmWL5ACAw1MfWcK7k3hkx7Akpixcj1
         kgM+eVeD1dk8xTM/jx6xTwr3CuwnL7KXSWGdqGfFKXazBVXWMM05p8fLZexxxIuTmPJG
         ZfwhEuPRNudatjepBDi9N84aq4KV1q0Be/rYt7H85A4flDuw++iDgLNLFKN1hmimkDpB
         lze6Qb+Z5MGg5vu6/C+geEP+LM2OGDEPleSD+9L5oBtEB9l/iiZ0UjW2e9oxoc+vd3o6
         4ml3ENTmknFcCNS+UZbZWVp1tiaOjiNh9DZQzh7ZGBd6ATfzC7bDCklEuC9kKkqpknRh
         /sYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yMx1reN0SZlTNKMlSt4lJ/4Fm1CRlbySQfIkQ3jDmnY=;
        b=vfdpUF3dqYIprLTg1UfBaJHUTHOXor1OOk9Dm3+QrIkX4mcOZWCgvKJlZSGx+J7gt2
         MGf7Ku+kWYQLKwudxjSf3VfC5jro08pRAnv5UhemldSrlwAwzFy9lGMpuk8VeKcmUQB/
         PMp9PxzeAUCBNGKBiVrMzxGnMXYISukOZH1lqDFWLLHuGI0PoZcU6qtJajrwSy3nZ56y
         PVaQNaayHVeVMmwsUZyjGA7w19Lo3mh3A9eDcn5Bct6zss9+6+GU7f3ohEfhJvn62Fuq
         2m9siF5j9lWHs4xLesdwhabRp5jp5S8+rAJdUMI4Tg8WR41x7q40WeVYvgKXjSz65cP/
         G3sA==
X-Gm-Message-State: ACgBeo2NFQXmOzD46fqd1lC3rZdHzrr23KcWydOUZd8Hmme7k5Itn89t
	Oe2jl6W0p23kKTWsfnLlzxiAhGZX7nm5XnSUNZKaEtK9zh0=
X-Google-Smtp-Source: AA6agR4ajrljprMmY/32kk5XcVlia2y79sCS4iV243cT1+Fk2W0Sqch9XTHTD6f/bJT3xx7hnxgNpCZTnmYByRmxzmU=
X-Received: by 2002:a25:4286:0:b0:6ae:6f2b:a8d4 with SMTP id
 p128-20020a254286000000b006ae6f2ba8d4mr15275489yba.530.1663022193626; Mon, 12
 Sep 2022 15:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com> <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
In-Reply-To: <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 12 Sep 2022 18:36:22 -0400
Message-ID: <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: 3QLVOBSNZMQ32UMV3YPMZFWLA2XQK3EE
X-Message-ID-Hash: 3QLVOBSNZMQ32UMV3YPMZFWLA2XQK3EE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QLVOBSNZMQ32UMV3YPMZFWLA2XQK3EE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6143032894928450856=="

--===============6143032894928450856==
Content-Type: multipart/alternative; boundary="0000000000001b2b8905e88287db"

--0000000000001b2b8905e88287db
Content-Type: text/plain; charset="UTF-8"

One more thought. If the FPGA version that you built with dynamic linking,
you should be able to create an RFNoC Graph as follows:
  tx_streamer => multiDDC => rx_streamer(s)
This way you can eliminate the radio from the equation and test in a very
similar fashion to the way it is tested in a testbench.

Rob

On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler <rkossler@nd.edu> wrote:

> Oops. Ignore what I said. I now realize you stated you were getting an
> Overflow which of course you would never get if streaming hadn't started.
> Rob
>
> On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Are you sure that the radio is even streaming?  The typical method for
>> starting streaming is to tell the rx_streamer to start streaming.  Then, in
>> UHD-land, the rx_streamer ctrl tells the next upstring block to start
>> streaming such that this streaming command propagates up the chain until
>> the radio receives it and starts streaming.  So, if your custom block does
>> not forward the streaming command from the rx_streamer to the radio, then
>> the radio never even starts streaming.  You can verify by simply monitoring
>> the LEDs.
>>
>> If this is the problem, you can go-around the intended use by simply
>> telling the radio to start streaming rather than the rx_streamer.  Or, of
>> course, you can modify your custom block controller to propagate the
>> streaming command.
>> Rob
>>
>> On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>
>>> Yes, of course. But I don't get 1 sample from the ddc's, even with just
>>> one channel of a 2:1 decimated channel connected to the rx streamer.
>>>
>>> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> The aggregate output rate of the 5 streams could require more bandwidth
>>>> than the 10 GigE interface can sustain. What are the exact output rates?
>>>>
>>>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com>
>>>> wrote:
>>>>
>>>>> Those rates vary from a 2:1 decimation down to other rates.
>>>>>
>>>>> The host has 10 Gbe interfaces to the USRP.
>>>>>
>>>>> I get samples if i connect the radio to the rx streamer, just nothing
>>>>> from the ddc's.
>>>>>
>>>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>
>>>>>> Hi Kevin,
>>>>>>
>>>>>> What are the sample rates for the 5 outputs? What connection are you
>>>>>> using to your host PC, 1 GigE or 10 GigE?
>>>>>>
>>>>>> Jonathon
>>>>>>
>>>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Jonathon,
>>>>>>>
>>>>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>>>>>>> outputs). I've tried both static and dynamic routing from the radio block.
>>>>>>> I.e. the static route version:
>>>>>>>
>>>>>>> |    /
>>>>>>> |   |       Static connections on this device:
>>>>>>> |   |
>>>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>>>
>>>>>>>
>>>>>>> On the input side it is all at the radio rate, but I hope my core is
>>>>>>> being clocked at 214 MHz.
>>>>>>>
>>>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>>>> interfaces) it looks ok.
>>>>>>>
>>>>>>> Regards, Kevin
>>>>>>>
>>>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>
>>>>>>>> Hello Kevin,
>>>>>>>>
>>>>>>>> What device are you using and what does your flowgraph look like?
>>>>>>>> What sample rate are you running at? If your block is running at the radio
>>>>>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>>>>>> input sample every clock cycle on average.
>>>>>>>>
>>>>>>>> Jonathon
>>>>>>>>
>>>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi All,
>>>>>>>>>
>>>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when
>>>>>>>>> used in an RFNoC project.
>>>>>>>>>
>>>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>>>> back-pressure when required, etc.)
>>>>>>>>>
>>>>>>>>> I'm not sure how to go about debugging this, and am not yet
>>>>>>>>> familiar enough with RFNoC to know what to ask.
>>>>>>>>>
>>>>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>>>>> correctly, but this is how it gets instantiated:
>>>>>>>>>
>>>>>>>>>   multiddc multiddc_i (
>>>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>>>     //     synchronous and connected to the same clock source. The
>>>>>>>>> IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>>>     //     connected to the same reset source. See Synchronization
>>>>>>>>> of Global Reset Signal to IP Core Clock Domain.
>>>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>>>
>>>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>>>
>>>>>>>>> The core YAML file describes the clock as:
>>>>>>>>>
>>>>>>>>> data:
>>>>>>>>>   fpga_iface: axis_chdr
>>>>>>>>>   clk_domain: ce
>>>>>>>>>
>>>>>>>>> In the project YAML file:
>>>>>>>>>
>>>>>>>>> clk_domains:
>>>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>>>> dstport: radio }
>>>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>>>> dstport: ce }
>>>>>>>>>
>>>>>>>>> Is there something that might be an obvious first place to check?
>>>>>>>>>
>>>>>>>>> Many thanks, Kevin
>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> Kevin Williams
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> Kevin Williams
>>>>>>>
>>>>>>
>>>>>
>>>>> --
>>>>> Kevin Williams
>>>>>
>>>>
>>>
>>> --
>>> Kevin Williams
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000001b2b8905e88287db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One more thought. If the FPGA version that you built with =
dynamic linking, you should be able to create an RFNoC Graph as follows:<di=
v>=C2=A0 tx_streamer =3D&gt; multiDDC =3D&gt; rx_streamer(s)</div><div>This=
 way you can eliminate the radio from the equation and test in a very simil=
ar fashion to the way it is tested in a testbench.</div><div><br></div><div=
>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler &lt;<a href=3D"mailto=
:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Oops. Ignore what I said.=
 I now realize you stated you were getting an Overflow which of course you =
would never get if streaming hadn&#39;t started.<div>Rob</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 1=
2, 2022 at 6:32 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" targe=
t=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Are you sure that the radio is=
 even streaming?=C2=A0 The typical method for starting streaming is to tell=
 the rx_streamer to start streaming.=C2=A0 Then, in UHD-land, the rx_stream=
er ctrl tells the next upstring block to start streaming such that this str=
eaming command propagates up the chain until the radio receives it and star=
ts streaming.=C2=A0 So, if your custom block does not forward the streaming=
 command from the rx_streamer to the radio, then the radio never even start=
s streaming.=C2=A0 You can verify by simply monitoring the LEDs.<div><br></=
div><div>If this is the problem, you can go-around the intended use by simp=
ly telling the radio to start streaming rather than the rx_streamer.=C2=A0 =
Or, of course, you can modify your custom block controller to propagate the=
 streaming command.<br><div>Rob</div></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 4:18 PM =
Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs=
1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Yes, of course. But I don&#39;t get 1 sample=
 from the ddc&#39;s, even with just one channel of a 2:1 decimated channel =
connected to the rx streamer.</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 22:13, Jonathon Pendl=
um &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jona=
thon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">The aggregate output rate of the 5 s=
treams could require more bandwidth than the 10 GigE interface can sustain.=
 What are the exact output rates?</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:53 PM Kevin Will=
iams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Those rates vary from a 2:1 decimation down to other r=
ates.<div><br></div><div>The host has 10 Gbe interfaces to the USRP.</div><=
div><br></div><div>I get samples if i connect the radio to the rx streamer,=
 just nothing from the ddc&#39;s.</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:48, Jonat=
hon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_bl=
ank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Kevin,<div><br></div><=
div>What are the sample rates for the 5 outputs? What connection are you us=
ing to your host PC, 1 GigE or 10 GigE?</div><div><br></div><div>Jonathon</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams &lt;<a href=3D"mailto:zs=
1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Hi Jonathon,<div><br></div><div>I&#39;ve got an x310. The flowgrap=
h is a simple radio-&gt;multiddc-&gt;(to 5x outputs). I&#39;ve tried both s=
tatic and dynamic routing from the radio block. I.e. the static route versi=
on:</div><div><br></div><div><div>|=C2=A0 =C2=A0 /</div><div>|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connections on this device:</div><div>|=
=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt=
;0/multiddc#0:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:0=3D=
=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:1=3D=
=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:2=3D=
=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:3=3D=
=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:4=3D=
=3D&gt;0/SEP#6:0</div></div><div><br></div><div><br></div><div>On the input=
 side it is all at the radio rate, but I hope my core is being clocked at 2=
14 MHz.</div><div><br></div><div>When I simulate my IP core (which includes=
 the AXI streaming interfaces) it looks ok.</div><div><br></div><div>Regard=
s, Kevin</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum &lt;<a =
href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendl=
um@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hello Kevin,<div><br></div><div>What device ar=
e you using and what does your flowgraph look like? What sample rate are yo=
u running at? If your block is running at the radio sample rate (e.g. 200 M=
SPS on a X310), your block will need to process one input sample every cloc=
k cycle on average.</div><div><br></div><div>Jonathon</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, =
2022 at 9:09 AM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" targ=
et=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All,<div><br></div><div>I&#39;ve=
 got an IP core that is causing an &quot;ERROR_CODE_OVERFLOW&quot; when use=
d in an RFNoC project.</div><div><br></div><div>The core responds correctly=
 when simulated outside the RFNoC environment. (I can see correct output, t=
he AXI streaming signalling, back-pressure when required, etc.)</div><div><=
br></div><div>I&#39;m not sure how to go about debugging this, and am not y=
et familiar enough with RFNoC to know what to ask.</div><div><br></div><div=
>I have been thinking it was the core not being reset or clocked correctly,=
 but this is how it gets instantiated:</div><div><br></div><div><div>=C2=A0=
 multiddc multiddc_i (</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- Using diffe=
rent clocks for the IP core and the AXI interface. The IPCore_Clk and AXILi=
te_ACLK must be=C2=A0<br></div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0syn=
chronous and connected to the same clock source. The IPCore_RESETN and AXIL=
ite_ARESETN must be=C2=A0</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0con=
nected to the same reset source. See Synchronization of Global Reset Signal=
 to IP Core Clock Domain.</div><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0=
 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axi=
s_data_rst),</div><div><br></div><div>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0=
 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div=
></div><div><br></div><div>The core YAML file describes the clock as:</div>=
<div><br></div><div><div>data:</div><div>=C2=A0 fpga_iface: axis_chdr</div>=
<div>=C2=A0 clk_domain: ce</div></div><div><br></div><div>In the project YA=
ML file:</div><div><br></div><div><div>clk_domains:</div><div>=C2=A0 =C2=A0=
 - { srcblk: _device_, srcport: radio, dstblk: radio0,=C2=A0 =C2=A0 dstport=
: radio }</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =
=C2=A0 dstblk: multiddc0, dstport: ce }</div></div><div><br></div><div>Is t=
here something that might be an obvious first place to check?</div><div><br=
></div><div>Many thanks, Kevin<br clear=3D"all"><div><br></div>-- <br><div =
dir=3D"ltr">Kevin Williams</div></div></div></div></div></div></div>
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
</blockquote></div>

--0000000000001b2b8905e88287db--

--===============6143032894928450856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6143032894928450856==--
