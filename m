Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E205B6E98
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 15:50:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DF92380E22
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 09:50:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663077025; bh=K59jl1zJ/hgk3P9+6NEY2akUll0GEaN77086p0yoOBI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xngs72Melnf9WW9kcekGZUjqAuj2Npv4/tsA/wwdcYEG5nf59XJitQUI455K0E2vk
	 2oqmtpAV1+IxriFN4cwjnmHBGaxXSRCHBks1nCvuoJLF8ufuldSCaJpygBdauEuA0g
	 oPJARrydcSub3ql/kVAT1YMmAZNy1V7SpiQbITbmng1neAGyilrPR5xIM8FRePhFJ/
	 NfJcH9ZGO+otG87ZnZzKUSa1ZUyHgdGlwO5M/3EDuxIRXQ1CmnpoHyVZkmRYwHCyy2
	 X4SUFiuIPkg2YodaPvG+4PTAAnsi/6/yvQDWLe3Q14IZNaf2pLPdOYurblCc4QAZxN
	 hGr1+el0QqtDQ==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 27434380DE5
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 09:49:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WJHkMQtl";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id e187so11609347ybh.10
        for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 06:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=EQtoEJNUJfoQv4IGWWSubthyqKDsOzcddpUqx6O0Klk=;
        b=WJHkMQtl/aLR+BzHIPwMwoktVdI/t2rZKiRr4LVazLiqELnPEW6QAkGRZW3YLIcJGg
         XiiGnSttjSsiEdsiATH9F7MDbCp6PPLapHO/94hsZb4bhKMF+d0Bn3SKaG4+fIs0joA7
         F0S17Z+oxxvG5XpgdJuT3QqosZkOrIVJH/ndR0kqelK1DHwqSxUQMniHObrq1/zV1n5x
         kKg0evV8JJH9hHFOgZQI/3n8mpo+HeddN5wOw7KZiJCQt9s+O6Is41NSIFM7voEBq8qA
         0R6GoAfzBlzk0dXj0/8gmKhZPSbGsbvKgHvl4fjfjiSh2xCNdrqv1VTsHAv4mgu3urXZ
         w5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=EQtoEJNUJfoQv4IGWWSubthyqKDsOzcddpUqx6O0Klk=;
        b=F2B3gFLrhAJnzvis6z9alIW4T35uTjmD3Ko7WSYe0+zbkyi3eB5LPbWwuo+WGtcUiM
         t4C/C9Dm/Z8niPqv4Ol/Vi/+s/lRaMfizmQ3WyVv4Sd8uPXGO/v25RilHkrSlWc0TTYi
         7jcjiq020lLFJARfnMjzl8tPOrhlCwYSDlaKeWxPo9TFpoJUF3NjCqshUzmpn1VxOdst
         IzXHuHl/vOXf9fMgUk47fqKRQonwiuz8cw8DwO80xiJ3CJ+lERTriKLx/pHBtgWdpUKW
         TnNPggztg+Mxfo3qEaOrNo2iA9LUe7KMfPdhnBlPdgsnnX7O3r7FmOiqFuRLo5YFtgdg
         FNjA==
X-Gm-Message-State: ACgBeo0DvMioxPIdrk2j0JZnW1C4ci6mHo92mP52TJfHXQFR1B+pv/pU
	QeABEjzwviz0ccCzXB006EzsNkKMIkAlVlLH0QBwcw==
X-Google-Smtp-Source: AA6agR63DyeMrv1kPpc6dIDU89ii8wY083vuwJErOBb+2zuTRbKhvwPh/A2wgE4z1BX4c2kzpNUjs28hnSK/wY7ofds=
X-Received: by 2002:a25:4286:0:b0:6ae:6f2b:a8d4 with SMTP id
 p128-20020a254286000000b006ae6f2ba8d4mr17772372yba.530.1663076949055; Tue, 13
 Sep 2022 06:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com> <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
In-Reply-To: <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 13 Sep 2022 09:48:57 -0400
Message-ID: <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: QTITMHKHAFLZGU7KQUKNRRIVZOQZUUGP
X-Message-ID-Hash: QTITMHKHAFLZGU7KQUKNRRIVZOQZUUGP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QTITMHKHAFLZGU7KQUKNRRIVZOQZUUGP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0796986435900679291=="

--===============0796986435900679291==
Content-Type: multipart/alternative; boundary="000000000000c8b7e105e88f46a4"

--000000000000c8b7e105e88f46a4
Content-Type: text/plain; charset="UTF-8"

Have you tried to run an rfnoc-style testbench such as in the
rfnoc-example?  If not, this may be useful.  If you try this, it may be
easier to follow the example if you change your output number of ports to
be 1 so that it is a simple 1-to-1 block.
Rob

On Tue, Sep 13, 2022 at 6:36 AM Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi Rob,
>
> I can confirm the radio streams correctly.
>
> I have also tried tx_streamer => multiDDC => rx_streamer which
> successfully sends a number of samples, but none are received. (The script
> is below.)
>
> Just to summarize, the IP core seems to be behaving correctly when
> simulated in Vivado where I apply AXI handshaking, reset the core, and
> clock it.
>
> I have set all endpoints in the design as follows:
>
>   ep0:                       # Stream endpoint name
>     ctrl: True                      # Endpoint passes control traffic
>     data: True                      # Endpoint passes data traffic
>     buff_size: 32768                # Ingress buffer size for data
>
> Regards, Kevin
>
>
> graph = uhd.rfnoc.RfnocGraph("type=x300,addr=192.168.30.2")
>
> tx_streamer = graph.create_tx_streamer(1, uhd.usrp.StreamArgs("sc16",
> "sc16"))
> rx_streamer = graph.create_rx_streamer(1, uhd.usrp.StreamArgs("sc16",
> "sc16"))
>
> gb = graph.get_block("0/multiddc#0")
> graph.connect(tx_streamer, 0, gb.get_unique_id(), 0)
> graph.connect(gb.get_unique_id(), 0, rx_streamer, 0)
> graph.commit()
>
> num_samps = 4 * tx_streamer.get_max_num_samps()
> send_samps = np.array([[0x40004000] * num_samps], dtype="int32")
>
> tx_md = uhd.types.TXMetadata()
> tx_md.start_of_burst = True
> tx_md.end_of_burst = True
>
> recv_samps = np.zeros((1, num_samps), dtype="int32")
>
> rx_md = uhd.types.RXMetadata()
>
> num_sent = tx_streamer.send(send_samps, uhd.types.TXMetadata())
> num_recv = rx_streamer.recv(recv_samps, rx_md, 0.1)
>
>
> On Tue, 13 Sept 2022 at 00:36, Rob Kossler <rkossler@nd.edu> wrote:
>
>> One more thought. If the FPGA version that you built with dynamic
>> linking, you should be able to create an RFNoC Graph as follows:
>>   tx_streamer => multiDDC => rx_streamer(s)
>> This way you can eliminate the radio from the equation and test in a very
>> similar fashion to the way it is tested in a testbench.
>>
>> Rob
>>
>> On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Oops. Ignore what I said. I now realize you stated you were getting an
>>> Overflow which of course you would never get if streaming hadn't started.
>>> Rob
>>>
>>> On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Are you sure that the radio is even streaming?  The typical method for
>>>> starting streaming is to tell the rx_streamer to start streaming.  Then, in
>>>> UHD-land, the rx_streamer ctrl tells the next upstring block to start
>>>> streaming such that this streaming command propagates up the chain until
>>>> the radio receives it and starts streaming.  So, if your custom block does
>>>> not forward the streaming command from the rx_streamer to the radio, then
>>>> the radio never even starts streaming.  You can verify by simply monitoring
>>>> the LEDs.
>>>>
>>>> If this is the problem, you can go-around the intended use by simply
>>>> telling the radio to start streaming rather than the rx_streamer.  Or, of
>>>> course, you can modify your custom block controller to propagate the
>>>> streaming command.
>>>> Rob
>>>>
>>>> On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com>
>>>> wrote:
>>>>
>>>>> Yes, of course. But I don't get 1 sample from the ddc's, even with
>>>>> just one channel of a 2:1 decimated channel connected to the rx streamer.
>>>>>
>>>>> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>
>>>>>> The aggregate output rate of the 5 streams could require more
>>>>>> bandwidth than the 10 GigE interface can sustain. What are the exact output
>>>>>> rates?
>>>>>>
>>>>>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Those rates vary from a 2:1 decimation down to other rates.
>>>>>>>
>>>>>>> The host has 10 Gbe interfaces to the USRP.
>>>>>>>
>>>>>>> I get samples if i connect the radio to the rx streamer, just
>>>>>>> nothing from the ddc's.
>>>>>>>
>>>>>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>
>>>>>>>> Hi Kevin,
>>>>>>>>
>>>>>>>> What are the sample rates for the 5 outputs? What connection are
>>>>>>>> you using to your host PC, 1 GigE or 10 GigE?
>>>>>>>>
>>>>>>>> Jonathon
>>>>>>>>
>>>>>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Jonathon,
>>>>>>>>>
>>>>>>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to
>>>>>>>>> 5x outputs). I've tried both static and dynamic routing from the radio
>>>>>>>>> block. I.e. the static route version:
>>>>>>>>>
>>>>>>>>> |    /
>>>>>>>>> |   |       Static connections on this device:
>>>>>>>>> |   |
>>>>>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On the input side it is all at the radio rate, but I hope my core
>>>>>>>>> is being clocked at 214 MHz.
>>>>>>>>>
>>>>>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>>>>>> interfaces) it looks ok.
>>>>>>>>>
>>>>>>>>> Regards, Kevin
>>>>>>>>>
>>>>>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>>
>>>>>>>>>> Hello Kevin,
>>>>>>>>>>
>>>>>>>>>> What device are you using and what does your flowgraph look like?
>>>>>>>>>> What sample rate are you running at? If your block is running at the radio
>>>>>>>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>>>>>>>> input sample every clock cycle on average.
>>>>>>>>>>
>>>>>>>>>> Jonathon
>>>>>>>>>>
>>>>>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hi All,
>>>>>>>>>>>
>>>>>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW"
>>>>>>>>>>> when used in an RFNoC project.
>>>>>>>>>>>
>>>>>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>>>>>> back-pressure when required, etc.)
>>>>>>>>>>>
>>>>>>>>>>> I'm not sure how to go about debugging this, and am not yet
>>>>>>>>>>> familiar enough with RFNoC to know what to ask.
>>>>>>>>>>>
>>>>>>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>>>>>>> correctly, but this is how it gets instantiated:
>>>>>>>>>>>
>>>>>>>>>>>   multiddc multiddc_i (
>>>>>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>>>>>     //     synchronous and connected to the same clock source.
>>>>>>>>>>> The IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>>>>>     //     connected to the same reset source. See
>>>>>>>>>>> Synchronization of Global Reset Signal to IP Core Clock Domain.
>>>>>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>>>>>
>>>>>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>>>>>
>>>>>>>>>>> The core YAML file describes the clock as:
>>>>>>>>>>>
>>>>>>>>>>> data:
>>>>>>>>>>>   fpga_iface: axis_chdr
>>>>>>>>>>>   clk_domain: ce
>>>>>>>>>>>
>>>>>>>>>>> In the project YAML file:
>>>>>>>>>>>
>>>>>>>>>>> clk_domains:
>>>>>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>>>>>> dstport: radio }
>>>>>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>>>>>> dstport: ce }
>>>>>>>>>>>
>>>>>>>>>>> Is there something that might be an obvious first place to check?
>>>>>>>>>>>
>>>>>>>>>>> Many thanks, Kevin
>>>>>>>>>>>
>>>>>>>>>>> --
>>>>>>>>>>> Kevin Williams
>>>>>>>>>>> _______________________________________________
>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> Kevin Williams
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
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>
>
> --
> Kevin Williams
>

--000000000000c8b7e105e88f46a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Have you tried to run an rfnoc-style test=
bench such as in the rfnoc-example?=C2=A0 If not, this may be useful.=C2=A0=
 If you try this, it may be easier to follow the example if you change your=
 output number of ports to be 1 so that it is a simple 1-to-1 block.<div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Sep 13, 2022 at 6:36 AM Kevin Williams &lt;<a href=3D"mailto=
:zs1kwa@gmail.com">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr">Hi Rob,<div><br></div><div>I can confirm the ra=
dio streams correctly.</div><div><br></div><div>I have also tried tx_stream=
er =3D&gt; multiDDC =3D&gt; rx_streamer which successfully sends a number o=
f samples, but none are received. (The script is below.)</div><div><br></di=
v><div>Just to summarize, the IP core seems to be behaving correctly when s=
imulated in Vivado where I apply AXI handshaking, reset the core, and clock=
 it.</div><div><br></div><div>I have set all endpoints in the design as fol=
lows:<br></div><div><div><br></div><div>=C2=A0 ep0:=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Stream endpoin=
t name</div><div>=C2=A0 =C2=A0 ctrl: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffi=
c</div><div>=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic</div>=
<div>=C2=A0 =C2=A0 buff_size: 32768=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Ingress buffer size for data</div></div><div><br></div>=
<div>Regards, Kevin</div><div><br></div><div><br></div><div><div>graph =3D =
uhd.rfnoc.RfnocGraph(&quot;type=3Dx300,addr=3D192.168.30.2&quot;)</div><div=
><br></div><div>tx_streamer =3D graph.create_tx_streamer(1, uhd.usrp.Stream=
Args(&quot;sc16&quot;, &quot;sc16&quot;))</div><div>rx_streamer =3D graph.c=
reate_rx_streamer(1, uhd.usrp.StreamArgs(&quot;sc16&quot;, &quot;sc16&quot;=
))</div><div><br></div><div>gb =3D graph.get_block(&quot;0/multiddc#0&quot;=
)</div><div>graph.connect(tx_streamer, 0, gb.get_unique_id(), 0)<br></div><=
div>graph.connect(gb.get_unique_id(), 0, rx_streamer, 0)</div><div>graph.co=
mmit()</div><div><br></div><div>num_samps =3D 4 * tx_streamer.get_max_num_s=
amps()</div><div>send_samps =3D np.array([[0x40004000] * num_samps], dtype=
=3D&quot;int32&quot;)</div><div><br></div><div>tx_md =3D uhd.types.TXMetada=
ta()</div><div>tx_md.start_of_burst =3D True</div><div>tx_md.end_of_burst =
=3D True</div><div><br></div><div>recv_samps =3D np.zeros((1, num_samps), d=
type=3D&quot;int32&quot;)</div><div><br></div><div>rx_md =3D uhd.types.RXMe=
tadata()</div><div><br></div><div>num_sent =3D tx_streamer.send(send_samps,=
 uhd.types.TXMetadata())</div><div>num_recv =3D rx_streamer.recv(recv_samps=
, rx_md, 0.1)<br></div></div><div><br></div></div></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 13 Se=
pt 2022 at 00:36, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">One more thought. If the FPGA v=
ersion that you built with dynamic linking, you should be able to create an=
 RFNoC Graph as follows:<div>=C2=A0 tx_streamer =3D&gt; multiDDC =3D&gt; rx=
_streamer(s)</div><div>This way you can eliminate the radio from the equati=
on and test in a very similar fashion to the way it is tested in a testbenc=
h.</div><div><br></div><div>Rob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 6:33 PM Rob Ko=
ssler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Oops. Ignore what I said. I now realize you stated you =
were getting an Overflow which of course you would never get if streaming h=
adn&#39;t started.<div>Rob</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler=
 &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Are you sure that the radio is even streaming?=C2=A0 The typ=
ical method for starting streaming is to tell the rx_streamer to start stre=
aming.=C2=A0 Then, in UHD-land, the rx_streamer ctrl tells the next upstrin=
g block to start streaming such that this streaming command propagates up t=
he chain until the radio receives it and starts streaming.=C2=A0 So, if you=
r custom block does not forward the streaming command from the rx_streamer =
to the radio, then the radio never even starts streaming.=C2=A0 You can ver=
ify by simply monitoring the LEDs.<div><br></div><div>If this is the proble=
m, you can go-around the intended use by simply telling the radio to start =
streaming rather than the rx_streamer.=C2=A0 Or, of course, you can modify =
your custom block controller to propagate the streaming command.<br><div>Ro=
b</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams &lt;<a href=3D"=
mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Yes, of course. But I don&#39;t get 1 sample from the ddc&#39;s, even with=
 just one channel of a 2:1 decimated channel connected to the rx streamer.<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum &lt;<a href=3D"mailto:jonath=
on.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">The aggregate output rate of the 5 streams could require more band=
width than the 10 GigE interface can sustain. What are the exact output rat=
es?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams &lt;<a href=3D"mailto:zs1=
kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Those rat=
es vary from a 2:1 decimation down to other rates.<div><br></div><div>The h=
ost has 10 Gbe interfaces to the USRP.</div><div><br></div><div>I get sampl=
es if i connect the radio to the rx streamer, just nothing from the ddc&#39=
;s.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum &lt;<a href=3D"mai=
lto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi Kevin,<div><br></div><div>What are the sample rates fo=
r the 5 outputs? What connection are you using to your host PC, 1 GigE or 1=
0 GigE?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38=
 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank=
">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></=
div><div>I&#39;ve got an x310. The flowgraph is a simple radio-&gt;multiddc=
-&gt;(to 5x outputs). I&#39;ve tried both static and dynamic routing from t=
he radio block. I.e. the static route version:</div><div><br></div><div><di=
v>|=C2=A0 =C2=A0 /</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Stat=
ic connections on this device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0=
 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br=
></div><div><br></div><div>On the input side it is all at the radio rate, b=
ut I hope my core is being clocked at 214 MHz.</div><div><br></div><div>Whe=
n I simulate my IP core (which includes the AXI streaming interfaces) it lo=
oks ok.</div><div><br></div><div>Regards, Kevin</div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept =
2022 at 21:29, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettu=
s.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello K=
evin,<div><br></div><div>What device are you using and what does your flowg=
raph look like? What sample rate are you running at? If your block is runni=
ng at the radio sample rate (e.g. 200 MSPS on a X310), your block will need=
 to process one input sample every clock cycle on average.</div><div><br></=
div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<=
a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr">Hi All,<div><br></div><div>I&#39;ve got an IP core that is causing an &=
quot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><div><br=
></div><div>The core responds correctly when simulated outside the RFNoC en=
vironment. (I can see correct output, the AXI streaming signalling, back-pr=
essure when required, etc.)</div><div><br></div><div>I&#39;m not sure how t=
o go about debugging this, and am not yet familiar enough with RFNoC to kno=
w what to ask.</div><div><br></div><div>I have been thinking it was the cor=
e not being reset or clocked correctly, but this is how it gets instantiate=
d:</div><div><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><div>=C2=
=A0 =C2=A0 //=C2=A0 =C2=A0- Using different clocks for the IP core and the =
AXI interface. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div><div>=
=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the same c=
lock source. The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div><div>=
=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0connected to the same reset source. See=
 Synchronization of Global Reset Signal to IP Core Clock Domain.</div><div>=
=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br></div><d=
iv>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (=
axis_data_clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(~axis_data_rst),</div></div><div><br></div><div>The core =
YAML file describes the clock as:</div><div><br></div><div><div>data:</div>=
<div>=C2=A0 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce</div></di=
v><div><br></div><div>In the project YAML file:</div><div><br></div><div><d=
iv>clk_domains:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radi=
o, dstblk: radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - =
{ srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: c=
e }</div></div><div><br></div><div>Is there something that might be an obvi=
ous first place to check?</div><div><br></div><div>Many thanks, Kevin<br cl=
ear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></di=
v></div></div></div></div></div>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div></div>

--000000000000c8b7e105e88f46a4--

--===============0796986435900679291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0796986435900679291==--
