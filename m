Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DA45B6BC2
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 12:38:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2014E3813F4
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 06:38:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663065481; bh=1jt61ar7BVQSxXPIop7QkHyokR5ND6VnyKyr9NFT9BI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qRyNRR90DzMISZBbgz3oSQOk0f+eZeKq1dmRjreh1ZNBvNKRWqqaCTMAc543opNvd
	 8ityowp8BSzhETF/nqUN0OO838E1FtWCK91lksVuJu3uMUWaF72BvBL402dVK8Qeim
	 zxsm1/KVah9gzuL2T9cFBHG/BFUhLG3E17IQi3z44kDbBhCJvFjmhCwyg0RTxk8nCj
	 Xt3atrgkEWLLzHfdm3Eit/R5+tb4P0QUAekt/af/XYwPtr9aDM5/+ogsWxJcHPwJIX
	 XCynAnzrt8gNmW9oHQ5uD6Jlxf01p82Nwu02iXMiS076xRlg6BVwM+uV0cBwlJQvP7
	 3r8lv06Ma67iA==
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 64D39380D17
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 06:36:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GJNfH3Sn";
	dkim-atps=neutral
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-127f5411b9cso30898588fac.4
        for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 03:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=wPcVh20/o77SxreLGYJCtM1gc8rVZq90aXmi8TYZrHg=;
        b=GJNfH3Sn+iRV0XxJGkao97MUZiJMXPcFtY2maJgEOSNTX22zJfkAeZmmCV3nFo5OS/
         /gEn/55z4WVFCPuea3EqtDF7ESLXvihh4jwyDVLFk2fdTVXn48m0QtgT15W6sqFSZq2D
         I3meZT9WmaIJlW/A2omaMBvzuCTxtZ8T65g4Ss7crM3bk5MBBmgTnyElwrZu7gyvWZKP
         tfSAuWlJ9MbfTl5qatu1hth389RKBgzhp5e6Vo5vnWX+yhFegcoPGs6oQTjftnpo+FTz
         fSfhjtQm2VHd0tEWHueoS/s6bTx13wP7hLj47a9Q47Zd88ckyad9+YhYMM+mUXNLypcq
         80Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=wPcVh20/o77SxreLGYJCtM1gc8rVZq90aXmi8TYZrHg=;
        b=EjtjcgLeyIIEYPRGCzL3KGG00urM1AK5uMw5OCp64CIO71scbTzewOIG3zNhWZLm7h
         qa/xma87qrwdrj9iqfuoO1zi80AiZckQCljujFN8vyYb7n6RcWKBbnZUNm08JRC3FKw8
         hzSnG3uxQyK88gJz+y0Sdb0jhvsuUDPjikEU8gmB4N6MDYf0G/fGD4K0228phiT41wdn
         u0Bx7pGAa1ct4iEQt7+JxIAZZU5VvfgjgkYeBVtMvjoBt7oTye10SIF60bZZEYaFiwIz
         0PN9rVSoQYdBMVf5gi+0YTj0ADHVmf2C8qSoJO6ndIXOv7WQk+h5Po7bBIMEEl5LMugZ
         PE7A==
X-Gm-Message-State: ACgBeo3N/Tm3ecQi211SVC5VbQpQQYkw4V79rBBdI0m1EncY8IXsPrLN
	Xc7xIBkWG+pWOH5a25nt8x1EcLIFeRensQibVF4=
X-Google-Smtp-Source: AA6agR4EatFaN2oVvB5lgR9Wtn/SHKPNaA3OUvLHhtZW4/xx7tMgxYDyiX458KObLJv3ckc1nAyS3+0NcuZwJgdiInY=
X-Received: by 2002:a05:6870:2189:b0:127:50a6:14b2 with SMTP id
 l9-20020a056870218900b0012750a614b2mr1472545oae.178.1663065410422; Tue, 13
 Sep 2022 03:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com> <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
In-Reply-To: <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Tue, 13 Sep 2022 12:36:14 +0200
Message-ID: <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: BUAD33FFYENRC25CQZ36QZRME33J5RG6
X-Message-ID-Hash: BUAD33FFYENRC25CQZ36QZRME33J5RG6
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUAD33FFYENRC25CQZ36QZRME33J5RG6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3207932521261064597=="

--===============3207932521261064597==
Content-Type: multipart/alternative; boundary="00000000000006cebb05e88c97cc"

--00000000000006cebb05e88c97cc
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

I can confirm the radio streams correctly.

I have also tried tx_streamer => multiDDC => rx_streamer which successfully
sends a number of samples, but none are received. (The script is below.)

Just to summarize, the IP core seems to be behaving correctly when
simulated in Vivado where I apply AXI handshaking, reset the core, and
clock it.

I have set all endpoints in the design as follows:

  ep0:                       # Stream endpoint name
    ctrl: True                      # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data

Regards, Kevin


graph = uhd.rfnoc.RfnocGraph("type=x300,addr=192.168.30.2")

tx_streamer = graph.create_tx_streamer(1, uhd.usrp.StreamArgs("sc16",
"sc16"))
rx_streamer = graph.create_rx_streamer(1, uhd.usrp.StreamArgs("sc16",
"sc16"))

gb = graph.get_block("0/multiddc#0")
graph.connect(tx_streamer, 0, gb.get_unique_id(), 0)
graph.connect(gb.get_unique_id(), 0, rx_streamer, 0)
graph.commit()

num_samps = 4 * tx_streamer.get_max_num_samps()
send_samps = np.array([[0x40004000] * num_samps], dtype="int32")

tx_md = uhd.types.TXMetadata()
tx_md.start_of_burst = True
tx_md.end_of_burst = True

recv_samps = np.zeros((1, num_samps), dtype="int32")

rx_md = uhd.types.RXMetadata()

num_sent = tx_streamer.send(send_samps, uhd.types.TXMetadata())
num_recv = rx_streamer.recv(recv_samps, rx_md, 0.1)


On Tue, 13 Sept 2022 at 00:36, Rob Kossler <rkossler@nd.edu> wrote:

> One more thought. If the FPGA version that you built with dynamic linking,
> you should be able to create an RFNoC Graph as follows:
>   tx_streamer => multiDDC => rx_streamer(s)
> This way you can eliminate the radio from the equation and test in a very
> similar fashion to the way it is tested in a testbench.
>
> Rob
>
> On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Oops. Ignore what I said. I now realize you stated you were getting an
>> Overflow which of course you would never get if streaming hadn't started.
>> Rob
>>
>> On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Are you sure that the radio is even streaming?  The typical method for
>>> starting streaming is to tell the rx_streamer to start streaming.  Then, in
>>> UHD-land, the rx_streamer ctrl tells the next upstring block to start
>>> streaming such that this streaming command propagates up the chain until
>>> the radio receives it and starts streaming.  So, if your custom block does
>>> not forward the streaming command from the rx_streamer to the radio, then
>>> the radio never even starts streaming.  You can verify by simply monitoring
>>> the LEDs.
>>>
>>> If this is the problem, you can go-around the intended use by simply
>>> telling the radio to start streaming rather than the rx_streamer.  Or, of
>>> course, you can modify your custom block controller to propagate the
>>> streaming command.
>>> Rob
>>>
>>> On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>>
>>>> Yes, of course. But I don't get 1 sample from the ddc's, even with just
>>>> one channel of a 2:1 decimated channel connected to the rx streamer.
>>>>
>>>> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> The aggregate output rate of the 5 streams could require more
>>>>> bandwidth than the 10 GigE interface can sustain. What are the exact output
>>>>> rates?
>>>>>
>>>>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Those rates vary from a 2:1 decimation down to other rates.
>>>>>>
>>>>>> The host has 10 Gbe interfaces to the USRP.
>>>>>>
>>>>>> I get samples if i connect the radio to the rx streamer, just nothing
>>>>>> from the ddc's.
>>>>>>
>>>>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>
>>>>>>> Hi Kevin,
>>>>>>>
>>>>>>> What are the sample rates for the 5 outputs? What connection are you
>>>>>>> using to your host PC, 1 GigE or 10 GigE?
>>>>>>>
>>>>>>> Jonathon
>>>>>>>
>>>>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Jonathon,
>>>>>>>>
>>>>>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>>>>>>>> outputs). I've tried both static and dynamic routing from the radio block.
>>>>>>>> I.e. the static route version:
>>>>>>>>
>>>>>>>> |    /
>>>>>>>> |   |       Static connections on this device:
>>>>>>>> |   |
>>>>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>>>>
>>>>>>>>
>>>>>>>> On the input side it is all at the radio rate, but I hope my core
>>>>>>>> is being clocked at 214 MHz.
>>>>>>>>
>>>>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>>>>> interfaces) it looks ok.
>>>>>>>>
>>>>>>>> Regards, Kevin
>>>>>>>>
>>>>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hello Kevin,
>>>>>>>>>
>>>>>>>>> What device are you using and what does your flowgraph look like?
>>>>>>>>> What sample rate are you running at? If your block is running at the radio
>>>>>>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>>>>>>> input sample every clock cycle on average.
>>>>>>>>>
>>>>>>>>> Jonathon
>>>>>>>>>
>>>>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi All,
>>>>>>>>>>
>>>>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when
>>>>>>>>>> used in an RFNoC project.
>>>>>>>>>>
>>>>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>>>>> back-pressure when required, etc.)
>>>>>>>>>>
>>>>>>>>>> I'm not sure how to go about debugging this, and am not yet
>>>>>>>>>> familiar enough with RFNoC to know what to ask.
>>>>>>>>>>
>>>>>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>>>>>> correctly, but this is how it gets instantiated:
>>>>>>>>>>
>>>>>>>>>>   multiddc multiddc_i (
>>>>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>>>>     //     synchronous and connected to the same clock source.
>>>>>>>>>> The IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>>>>     //     connected to the same reset source. See
>>>>>>>>>> Synchronization of Global Reset Signal to IP Core Clock Domain.
>>>>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>>>>
>>>>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>>>>
>>>>>>>>>> The core YAML file describes the clock as:
>>>>>>>>>>
>>>>>>>>>> data:
>>>>>>>>>>   fpga_iface: axis_chdr
>>>>>>>>>>   clk_domain: ce
>>>>>>>>>>
>>>>>>>>>> In the project YAML file:
>>>>>>>>>>
>>>>>>>>>> clk_domains:
>>>>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>>>>> dstport: radio }
>>>>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>>>>> dstport: ce }
>>>>>>>>>>
>>>>>>>>>> Is there something that might be an obvious first place to check?
>>>>>>>>>>
>>>>>>>>>> Many thanks, Kevin
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> Kevin Williams
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> Kevin Williams
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
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

-- 
Kevin Williams

--00000000000006cebb05e88c97cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Rob,=
<div><br></div><div>I can confirm the radio streams correctly.</div><div><b=
r></div><div>I have also tried tx_streamer =3D&gt; multiDDC =3D&gt; rx_stre=
amer which successfully sends a number of samples, but none are received. (=
The script is below.)</div><div><br></div><div>Just to summarize, the IP co=
re seems to be behaving correctly when simulated in Vivado where I apply AX=
I handshaking, reset the core, and clock it.</div><div><br></div><div>I hav=
e set all endpoints in the design as follows:<br></div><div><div><br></div>=
<div>=C2=A0 ep0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0# Stream endpoint name</div><div>=C2=A0 =C2=A0 ctrl=
: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 # Endpoint passes control traffic</div><div>=C2=A0 =C2=A0 data: Tru=
e=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 # Endpoint passes data traffic</div><div>=C2=A0 =C2=A0 buff_size: 32768=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Ingress buffer si=
ze for data</div></div><div><br></div><div>Regards, Kevin</div><div><br></d=
iv><div><br></div><div><div>graph =3D uhd.rfnoc.RfnocGraph(&quot;type=3Dx30=
0,addr=3D192.168.30.2&quot;)</div><div><br></div><div>tx_streamer =3D graph=
.create_tx_streamer(1, uhd.usrp.StreamArgs(&quot;sc16&quot;, &quot;sc16&quo=
t;))</div><div>rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.StreamA=
rgs(&quot;sc16&quot;, &quot;sc16&quot;))</div><div><br></div><div>gb =3D gr=
aph.get_block(&quot;0/multiddc#0&quot;)</div><div>graph.connect(tx_streamer=
, 0, gb.get_unique_id(), 0)<br></div><div>graph.connect(gb.get_unique_id(),=
 0, rx_streamer, 0)</div><div>graph.commit()</div><div><br></div><div>num_s=
amps =3D 4 * tx_streamer.get_max_num_samps()</div><div>send_samps =3D np.ar=
ray([[0x40004000] * num_samps], dtype=3D&quot;int32&quot;)</div><div><br></=
div><div>tx_md =3D uhd.types.TXMetadata()</div><div>tx_md.start_of_burst =
=3D True</div><div>tx_md.end_of_burst =3D True</div><div><br></div><div>rec=
v_samps =3D np.zeros((1, num_samps), dtype=3D&quot;int32&quot;)</div><div><=
br></div><div>rx_md =3D uhd.types.RXMetadata()</div><div><br></div><div>num=
_sent =3D tx_streamer.send(send_samps, uhd.types.TXMetadata())</div><div>nu=
m_recv =3D rx_streamer.recv(recv_samps, rx_md, 0.1)<br></div></div><div><br=
></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, 13 Sept 2022 at 00:36, Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">One more th=
ought. If the FPGA version that you built with dynamic linking, you should =
be able to create an RFNoC Graph as follows:<div>=C2=A0 tx_streamer =3D&gt;=
 multiDDC =3D&gt; rx_streamer(s)</div><div>This way you can eliminate the r=
adio from the equation and test in a very similar fashion to the way it is =
tested in a testbench.</div><div><br></div><div>Rob</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 20=
22 at 6:33 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Oops. Ignore what I said. I now rea=
lize you stated you were getting an Overflow which of course you would neve=
r get if streaming hadn&#39;t started.<div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at=
 6:32 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blan=
k">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Are you sure that the radio is even stre=
aming?=C2=A0 The typical method for starting streaming is to tell the rx_st=
reamer to start streaming.=C2=A0 Then, in UHD-land, the rx_streamer ctrl te=
lls the next upstring block to start streaming such that this streaming com=
mand propagates up the chain until the radio receives it and starts streami=
ng.=C2=A0 So, if your custom block does not forward the streaming command f=
rom the rx_streamer to the radio, then the radio never even starts streamin=
g.=C2=A0 You can verify by simply monitoring the LEDs.<div><br></div><div>I=
f this is the problem, you can go-around the intended use by simply telling=
 the radio to start streaming rather than the rx_streamer.=C2=A0 Or, of cou=
rse, you can modify your custom block controller to propagate the streaming=
 command.<br><div>Rob</div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 4:18 PM Kevin Will=
iams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Yes, of course. But I don&#39;t get 1 sample from the =
ddc&#39;s, even with just one channel of a 2:1 decimated channel connected =
to the rx streamer.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum &lt;<a h=
ref=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlu=
m@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">The aggregate output rate of the 5 streams coul=
d require more bandwidth than the 10 GigE interface can sustain. What are t=
he exact output rates?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams &lt;<a=
 href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Those rates vary from a 2:1 decimation down to other rates.<div><=
br></div><div>The host has 10 Gbe interfaces to the USRP.</div><div><br></d=
iv><div>I get samples if i connect the radio to the rx streamer, just nothi=
ng from the ddc&#39;s.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:48, Jonathon Pendl=
um &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jona=
thon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Hi Kevin,<div><br></div><div>What ar=
e the sample rates for the 5 outputs? What connection are you using to your=
 host PC, 1 GigE or 10 GigE?</div><div><br></div><div>Jonathon</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Sep 12, 2022 at 3:38 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.=
com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=
 Jonathon,<div><br></div><div>I&#39;ve got an x310. The flowgraph is a simp=
le radio-&gt;multiddc-&gt;(to 5x outputs). I&#39;ve tried both static and d=
ynamic routing from the radio block. I.e. the static route version:</div><d=
iv><br></div><div><div>|=C2=A0 =C2=A0 /</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0 =C2=A0 =C2=A0Static connections on this device:</div><div>|=C2=A0 =C2=
=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/multidd=
c#0:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP=
#2:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#=
3:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4=
:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:=
0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0=
</div></div><div><br></div><div><br></div><div>On the input side it is all =
at the radio rate, but I hope my core is being clocked at 214 MHz.</div><di=
v><br></div><div>When I simulate my IP core (which includes the AXI streami=
ng interfaces) it looks ok.</div><div><br></div><div>Regards, Kevin</div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum &lt;<a href=3D"mailto:j=
onathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hello Kevin,<div><br></div><div>What device are you using and =
what does your flowgraph look like? What sample rate are you running at? If=
 your block is running at the radio sample rate (e.g. 200 MSPS on a X310), =
your block will need to process one input sample every clock cycle on avera=
ge.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 9:09 AM =
Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs=
1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi All,<div><br></div><div>I&#39;ve got an IP cor=
e that is causing an &quot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC =
project.</div><div><br></div><div>The core responds correctly when simulate=
d outside the RFNoC environment. (I can see correct output, the AXI streami=
ng signalling, back-pressure when required, etc.)</div><div><br></div><div>=
I&#39;m not sure how to go about debugging this, and am not yet familiar en=
ough with RFNoC to know what to ask.</div><div><br></div><div>I have been t=
hinking it was the core not being reset or clocked correctly, but this is h=
ow it gets instantiated:</div><div><br></div><div><div>=C2=A0 multiddc mult=
iddc_i (</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- Using different clocks fo=
r the IP core and the AXI interface. The IPCore_Clk and AXILite_ACLK must b=
e=C2=A0<br></div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and c=
onnected to the same clock source. The IPCore_RESETN and AXILite_ARESETN mu=
st be=C2=A0</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0connected to the =
same reset source. See Synchronization of Global Reset Signal to IP Core Cl=
ock Domain.</div><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .IPCOR=
E_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</=
div><div><br></div><div>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_AR=
ESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div></div><div><b=
r></div><div>The core YAML file describes the clock as:</div><div><br></div=
><div><div>data:</div><div>=C2=A0 fpga_iface: axis_chdr</div><div>=C2=A0 cl=
k_domain: ce</div></div><div><br></div><div>In the project YAML file:</div>=
<div><br></div><div><div>clk_domains:</div><div>=C2=A0 =C2=A0 - { srcblk: _=
device_, srcport: radio, dstblk: radio0,=C2=A0 =C2=A0 dstport: radio }</div=
><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk:=
 multiddc0, dstport: ce }</div></div><div><br></div><div>Is there something=
 that might be an obvious first place to check?</div><div><br></div><div>Ma=
ny thanks, Kevin<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Ke=
vin Williams</div></div></div></div></div></div></div>
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
 class=3D"gmail_signature">Kevin Williams</div>

--00000000000006cebb05e88c97cc--

--===============3207932521261064597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3207932521261064597==--
