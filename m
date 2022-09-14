Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B06255B866E
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 12:32:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF15A383E01
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 06:32:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663151525; bh=a+909vsmPGdgtfCCVGOOqmR59ZxPVF8+L+nhU5weBzI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cJxQvqIbIVhzr9C/Nv7gfNG2coccotZz+zmNPTgyaRhjZ4X62QWrGkb/cLS1Y62a/
	 4R/chbOO/p9cPwW1GdzrNuq6vASeEEzRuIqRfbzwR79uazXFRxH9cHNwKN1EhVD+M8
	 KWvyVZKHw6OPIdEOPdVbEj9avpE0mSJIofM6fQRdhPycMulfOIOjKSLrLWIIKQTGZt
	 nGWfI+pMqQ8m+xTxi7DfY8TsXjbi0LqUiMk03LAPrqmHrt6UTOw8X+jqNXHGPxIlat
	 qNPhWGMrFU3W07eYXxpZnr0IhpUr1pv9MXSb0OzNoEcm9dexyeokGkTNOBoxeCjWjy
	 sW/6troWeUQ1g==
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by mm2.emwd.com (Postfix) with ESMTPS id A3EAA383DD4
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 06:30:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UmO0laIu";
	dkim-atps=neutral
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-127ba06d03fso39743763fac.3
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 03:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=eZ2TTa09zYQhUQweizXXLxYUdL62bO5L+viKr9FNjjg=;
        b=UmO0laIupbga2rlZT8u8JOqOjHN16PvIQYXilTOJU5tgqfb5k1tjbjQWOePb19++Je
         OLKhbTOWd0QjG9w365h7U70GT0zuXlEaG01CJELZY0aO3jwQLcsDrmrtjyQRAoJbTouV
         2xtregsCzWgeNyUcmNEzY53FxvFkDGNUf1Zmk+vSwpkPtzm5cyOCqnKWpruqWMp8tyr1
         s+3TB8apqD1yuvCCZW+Tw4kl8KUPPae1jZxvq0F7e8SbgfySvIsgjP/6k+Pg8Q95XDBT
         k2cSM2cqOUQ8+LxDIZeZVpFEAjCZy8qnvFgVl+B68X8Pap1aNoPB7Wxy4zYl30rxLWn2
         POuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=eZ2TTa09zYQhUQweizXXLxYUdL62bO5L+viKr9FNjjg=;
        b=SAq3/V2QqULyI3lo93xUvS2wy0hok8xmGa13vNz+r/CBPwd5Gy9qHBDYjycdN2KUcy
         LRE0/K1e5HxOvUdLRJUndnM5XBKGNln/2dXNRqe4D1R8j6w5AwpSd6TngcgZZbAWmu/D
         x6H0BVteX9+cwnoskSlzbnrZlplW24GIAb0QpDWTqw/dn4jj1a93gPCAu7EFWRgABDXf
         6KIpjbnPlZeUjSV2HsmMtTQhcTxsDXQfBl4GKYFteoOE7t/t+zslw2slbhJBNIF/K6ky
         ere4PdulncmEMKVQ7pZXdNPnBXrZOAqljbTsADrpPrY1mjOy/c1KFA+EFh/M4aGkLvCO
         MYNw==
X-Gm-Message-State: ACgBeo0H+FNpGCLnB5kjvOKLWsZtGiHIt50gIgzqEi9VeD04Q5xscoKK
	1IhVVIeax0msNdem1X9V1k7fSDBcsE/hMIbvgjQ=
X-Google-Smtp-Source: AA6agR5LZyG8Cm+GX41UHNuvd9eIu89Y3Lbxnz0RTtTi82wFFFtOxyWLAJXd0NU36HLv5IvmKzAhGFUk998SNfrZo5g=
X-Received: by 2002:aca:ad83:0:b0:34f:bc24:5317 with SMTP id
 w125-20020acaad83000000b0034fbc245317mr1600580oie.178.1663151443676; Wed, 14
 Sep 2022 03:30:43 -0700 (PDT)
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
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com> <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
In-Reply-To: <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 14 Sep 2022 12:30:07 +0200
Message-ID: <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: EGZ5OBZBWSEIC7IAS5XULVEU44NXES2B
X-Message-ID-Hash: EGZ5OBZBWSEIC7IAS5XULVEU44NXES2B
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathon Pendlum <jonathon.pendlum@ettus.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EGZ5OBZBWSEIC7IAS5XULVEU44NXES2B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3546540441924957851=="

--===============3546540441924957851==
Content-Type: multipart/alternative; boundary="0000000000000213c005e8a09f81"

--0000000000000213c005e8a09f81
Content-Type: text/plain; charset="UTF-8"

Hi Rob, thanks for that testbench advice.

My core will not provide output if it does not see TREADY on its master
interfaces. (Which I have verified by simulating the core on its own.)

I have used the rfnoc-example testbench for reference, and issue a
"blk_ctrl.send_items(0, send_samples)".

Monitoring the rfnoc signal "m_rfnoc_chdr_tready" in the testbench shows
that it never transitions from zero's at the beginning of the simulation.

Should I see the BFM slave asserting these signals? (I cannot drive them
from my testbench - I get a warning about multiple drivers.)

On Tue, 13 Sept 2022 at 15:49, Rob Kossler <rkossler@nd.edu> wrote:

> Have you tried to run an rfnoc-style testbench such as in the
> rfnoc-example?  If not, this may be useful.  If you try this, it may be
> easier to follow the example if you change your output number of ports to
> be 1 so that it is a simple 1-to-1 block.
> Rob
>
> On Tue, Sep 13, 2022 at 6:36 AM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Hi Rob,
>>
>> I can confirm the radio streams correctly.
>>
>> I have also tried tx_streamer => multiDDC => rx_streamer which
>> successfully sends a number of samples, but none are received. (The script
>> is below.)
>>
>> Just to summarize, the IP core seems to be behaving correctly when
>> simulated in Vivado where I apply AXI handshaking, reset the core, and
>> clock it.
>>
>> I have set all endpoints in the design as follows:
>>
>>   ep0:                       # Stream endpoint name
>>     ctrl: True                      # Endpoint passes control traffic
>>     data: True                      # Endpoint passes data traffic
>>     buff_size: 32768                # Ingress buffer size for data
>>
>> Regards, Kevin
>>
>>
>> graph = uhd.rfnoc.RfnocGraph("type=x300,addr=192.168.30.2")
>>
>> tx_streamer = graph.create_tx_streamer(1, uhd.usrp.StreamArgs("sc16",
>> "sc16"))
>> rx_streamer = graph.create_rx_streamer(1, uhd.usrp.StreamArgs("sc16",
>> "sc16"))
>>
>> gb = graph.get_block("0/multiddc#0")
>> graph.connect(tx_streamer, 0, gb.get_unique_id(), 0)
>> graph.connect(gb.get_unique_id(), 0, rx_streamer, 0)
>> graph.commit()
>>
>> num_samps = 4 * tx_streamer.get_max_num_samps()
>> send_samps = np.array([[0x40004000] * num_samps], dtype="int32")
>>
>> tx_md = uhd.types.TXMetadata()
>> tx_md.start_of_burst = True
>> tx_md.end_of_burst = True
>>
>> recv_samps = np.zeros((1, num_samps), dtype="int32")
>>
>> rx_md = uhd.types.RXMetadata()
>>
>> num_sent = tx_streamer.send(send_samps, uhd.types.TXMetadata())
>> num_recv = rx_streamer.recv(recv_samps, rx_md, 0.1)
>>
>>
>> On Tue, 13 Sept 2022 at 00:36, Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> One more thought. If the FPGA version that you built with dynamic
>>> linking, you should be able to create an RFNoC Graph as follows:
>>>   tx_streamer => multiDDC => rx_streamer(s)
>>> This way you can eliminate the radio from the equation and test in a
>>> very similar fashion to the way it is tested in a testbench.
>>>
>>> Rob
>>>
>>> On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Oops. Ignore what I said. I now realize you stated you were getting an
>>>> Overflow which of course you would never get if streaming hadn't started.
>>>> Rob
>>>>
>>>> On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Are you sure that the radio is even streaming?  The typical method for
>>>>> starting streaming is to tell the rx_streamer to start streaming.  Then, in
>>>>> UHD-land, the rx_streamer ctrl tells the next upstring block to start
>>>>> streaming such that this streaming command propagates up the chain until
>>>>> the radio receives it and starts streaming.  So, if your custom block does
>>>>> not forward the streaming command from the rx_streamer to the radio, then
>>>>> the radio never even starts streaming.  You can verify by simply monitoring
>>>>> the LEDs.
>>>>>
>>>>> If this is the problem, you can go-around the intended use by simply
>>>>> telling the radio to start streaming rather than the rx_streamer.  Or, of
>>>>> course, you can modify your custom block controller to propagate the
>>>>> streaming command.
>>>>> Rob
>>>>>
>>>>> On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Yes, of course. But I don't get 1 sample from the ddc's, even with
>>>>>> just one channel of a 2:1 decimated channel connected to the rx streamer.
>>>>>>
>>>>>> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>
>>>>>>> The aggregate output rate of the 5 streams could require more
>>>>>>> bandwidth than the 10 GigE interface can sustain. What are the exact output
>>>>>>> rates?
>>>>>>>
>>>>>>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Those rates vary from a 2:1 decimation down to other rates.
>>>>>>>>
>>>>>>>> The host has 10 Gbe interfaces to the USRP.
>>>>>>>>
>>>>>>>> I get samples if i connect the radio to the rx streamer, just
>>>>>>>> nothing from the ddc's.
>>>>>>>>
>>>>>>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hi Kevin,
>>>>>>>>>
>>>>>>>>> What are the sample rates for the 5 outputs? What connection are
>>>>>>>>> you using to your host PC, 1 GigE or 10 GigE?
>>>>>>>>>
>>>>>>>>> Jonathon
>>>>>>>>>
>>>>>>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi Jonathon,
>>>>>>>>>>
>>>>>>>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to
>>>>>>>>>> 5x outputs). I've tried both static and dynamic routing from the radio
>>>>>>>>>> block. I.e. the static route version:
>>>>>>>>>>
>>>>>>>>>> |    /
>>>>>>>>>> |   |       Static connections on this device:
>>>>>>>>>> |   |
>>>>>>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>>>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>>>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>>>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>>>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>>>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On the input side it is all at the radio rate, but I hope my core
>>>>>>>>>> is being clocked at 214 MHz.
>>>>>>>>>>
>>>>>>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>>>>>>> interfaces) it looks ok.
>>>>>>>>>>
>>>>>>>>>> Regards, Kevin
>>>>>>>>>>
>>>>>>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hello Kevin,
>>>>>>>>>>>
>>>>>>>>>>> What device are you using and what does your flowgraph look
>>>>>>>>>>> like? What sample rate are you running at? If your block is running at the
>>>>>>>>>>> radio sample rate (e.g. 200 MSPS on a X310), your block will need to
>>>>>>>>>>> process one input sample every clock cycle on average.
>>>>>>>>>>>
>>>>>>>>>>> Jonathon
>>>>>>>>>>>
>>>>>>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>>>>> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Hi All,
>>>>>>>>>>>>
>>>>>>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW"
>>>>>>>>>>>> when used in an RFNoC project.
>>>>>>>>>>>>
>>>>>>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>>>>>>> back-pressure when required, etc.)
>>>>>>>>>>>>
>>>>>>>>>>>> I'm not sure how to go about debugging this, and am not yet
>>>>>>>>>>>> familiar enough with RFNoC to know what to ask.
>>>>>>>>>>>>
>>>>>>>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>>>>>>>> correctly, but this is how it gets instantiated:
>>>>>>>>>>>>
>>>>>>>>>>>>   multiddc multiddc_i (
>>>>>>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>>>>>>     //     synchronous and connected to the same clock source.
>>>>>>>>>>>> The IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>>>>>>     //     connected to the same reset source. See
>>>>>>>>>>>> Synchronization of Global Reset Signal to IP Core Clock Domain.
>>>>>>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>>>>>>
>>>>>>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>>>>>>
>>>>>>>>>>>> The core YAML file describes the clock as:
>>>>>>>>>>>>
>>>>>>>>>>>> data:
>>>>>>>>>>>>   fpga_iface: axis_chdr
>>>>>>>>>>>>   clk_domain: ce
>>>>>>>>>>>>
>>>>>>>>>>>> In the project YAML file:
>>>>>>>>>>>>
>>>>>>>>>>>> clk_domains:
>>>>>>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>>>>>>> dstport: radio }
>>>>>>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>>>>>>> dstport: ce }
>>>>>>>>>>>>
>>>>>>>>>>>> Is there something that might be an obvious first place to
>>>>>>>>>>>> check?
>>>>>>>>>>>>
>>>>>>>>>>>> Many thanks, Kevin
>>>>>>>>>>>>
>>>>>>>>>>>> --
>>>>>>>>>>>> Kevin Williams
>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>>> To unsubscribe send an email to
>>>>>>>>>>>> usrp-users-leave@lists.ettus.com
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> Kevin Williams
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
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>
>>
>> --
>> Kevin Williams
>>
>

-- 
Kevin Williams

--0000000000000213c005e8a09f81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Rob, thanks for that =
testbench advice.<div><br></div><div>My core will not provide output if it =
does not see TREADY on its master interfaces. (Which I have verified by sim=
ulating the core on its own.)</div><div><br></div><div>I have used the rfno=
c-example testbench for reference, and issue a &quot;blk_ctrl.send_items(0,=
 send_samples)&quot;.</div><div><br></div><div>Monitoring the rfnoc signal =
&quot;m_rfnoc_chdr_tready&quot; in the testbench shows that it never transi=
tions from zero&#39;s at the beginning of the simulation.</div><div><br></d=
iv><div>Should I see the BFM slave asserting these signals? (I cannot drive=
 them from my testbench - I get a warning about multiple drivers.)</div></d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, 13 Sept 2022 at 15:49, Rob Kossler &lt;<a href=3D"mailto:r=
kossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Have you=
 tried to run an rfnoc-style testbench such as in the rfnoc-example?=C2=A0 =
If not, this may be useful.=C2=A0 If you try this, it may be easier to foll=
ow the example if you change your output number of ports to be 1 so that it=
 is a simple 1-to-1 block.<div>Rob</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 13, 2022 at 6:36 AM Kev=
in Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kw=
a@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr">Hi Rob,<div><br></div><div>I can confirm the radio streams correctly.</=
div><div><br></div><div>I have also tried tx_streamer =3D&gt; multiDDC =3D&=
gt; rx_streamer which successfully sends a number of samples, but none are =
received. (The script is below.)</div><div><br></div><div>Just to summarize=
, the IP core seems to be behaving correctly when simulated in Vivado where=
 I apply AXI handshaking, reset the core, and clock it.</div><div><br></div=
><div>I have set all endpoints in the design as follows:<br></div><div><div=
><br></div><div>=C2=A0 ep0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Stream endpoint name</div><div>=C2=A0 =
=C2=A0 ctrl: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffic</div><div>=C2=A0 =C2=
=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic</div><div>=C2=A0 =C2=A0 bu=
ff_size: 32768=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Ing=
ress buffer size for data</div></div><div><br></div><div>Regards, Kevin</di=
v><div><br></div><div><br></div><div><div>graph =3D uhd.rfnoc.RfnocGraph(&q=
uot;type=3Dx300,addr=3D192.168.30.2&quot;)</div><div><br></div><div>tx_stre=
amer =3D graph.create_tx_streamer(1, uhd.usrp.StreamArgs(&quot;sc16&quot;, =
&quot;sc16&quot;))</div><div>rx_streamer =3D graph.create_rx_streamer(1, uh=
d.usrp.StreamArgs(&quot;sc16&quot;, &quot;sc16&quot;))</div><div><br></div>=
<div>gb =3D graph.get_block(&quot;0/multiddc#0&quot;)</div><div>graph.conne=
ct(tx_streamer, 0, gb.get_unique_id(), 0)<br></div><div>graph.connect(gb.ge=
t_unique_id(), 0, rx_streamer, 0)</div><div>graph.commit()</div><div><br></=
div><div>num_samps =3D 4 * tx_streamer.get_max_num_samps()</div><div>send_s=
amps =3D np.array([[0x40004000] * num_samps], dtype=3D&quot;int32&quot;)</d=
iv><div><br></div><div>tx_md =3D uhd.types.TXMetadata()</div><div>tx_md.sta=
rt_of_burst =3D True</div><div>tx_md.end_of_burst =3D True</div><div><br></=
div><div>recv_samps =3D np.zeros((1, num_samps), dtype=3D&quot;int32&quot;)=
</div><div><br></div><div>rx_md =3D uhd.types.RXMetadata()</div><div><br></=
div><div>num_sent =3D tx_streamer.send(send_samps, uhd.types.TXMetadata())<=
/div><div>num_recv =3D rx_streamer.recv(recv_samps, rx_md, 0.1)<br></div></=
div><div><br></div></div></div></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, 13 Sept 2022 at 00:36, Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">One more thought. If the FPGA version that you built wit=
h dynamic linking, you should be able to create an RFNoC Graph as follows:<=
div>=C2=A0 tx_streamer =3D&gt; multiDDC =3D&gt; rx_streamer(s)</div><div>Th=
is way you can eliminate the radio from the equation and test in a very sim=
ilar fashion to the way it is tested in a testbench.</div><div><br></div><d=
iv>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Oops.=
 Ignore what I said. I now realize you stated you were getting an Overflow =
which of course you would never get if streaming hadn&#39;t started.<div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler &lt;<a href=3D"mailto:rk=
ossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Are you su=
re that the radio is even streaming?=C2=A0 The typical method for starting =
streaming is to tell the rx_streamer to start streaming.=C2=A0 Then, in UHD=
-land, the rx_streamer ctrl tells the next upstring block to start streamin=
g such that this streaming command propagates up the chain until the radio =
receives it and starts streaming.=C2=A0 So, if your custom block does not f=
orward the streaming command from the rx_streamer to the radio, then the ra=
dio never even starts streaming.=C2=A0 You can verify by simply monitoring =
the LEDs.<div><br></div><div>If this is the problem, you can go-around the =
intended use by simply telling the radio to start streaming rather than the=
 rx_streamer.=C2=A0 Or, of course, you can modify your custom block control=
ler to propagate the streaming command.<br><div>Rob</div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep =
12, 2022 at 4:18 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" =
target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Yes, of course. But I do=
n&#39;t get 1 sample from the ddc&#39;s, even with just one channel of a 2:=
1 decimated channel connected to the rx streamer.</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 22=
:13, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" tar=
get=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The aggregate out=
put rate of the 5 streams could require more bandwidth than the 10 GigE int=
erface can sustain. What are the exact output rates?</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at=
 3:53 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_=
blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Those rates vary from a 2:1 decimat=
ion down to other rates.<div><br></div><div>The host has 10 Gbe interfaces =
to the USRP.</div><div><br></div><div>I get samples if i connect the radio =
to the rx streamer, just nothing from the ddc&#39;s.</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2=
022 at 21:48, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus=
.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Kevin=
,<div><br></div><div>What are the sample rates for the 5 outputs? What conn=
ection are you using to your host PC, 1 GigE or 10 GigE?</div><div><br></di=
v><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams &lt;<a =
href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></div><div>I&#39;ve got an x=
310. The flowgraph is a simple radio-&gt;multiddc-&gt;(to 5x outputs). I&#3=
9;ve tried both static and dynamic routing from the radio block. I.e. the s=
tatic route version:</div><div><br></div><div><div>|=C2=A0 =C2=A0 /</div><d=
iv>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connections on this dev=
ice:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Ra=
dio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/m=
ultiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/mu=
ltiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/mul=
tiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/mult=
iddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multi=
ddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br></div><div><br></div><div>On=
 the input side it is all at the radio rate, but I hope my core is being cl=
ocked at 214 MHz.</div><div><br></div><div>When I simulate my IP core (whic=
h includes the AXI streaming interfaces) it looks ok.</div><div><br></div><=
div>Regards, Kevin</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:29, Jonathon Pendl=
um &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jona=
thon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Hello Kevin,<div><br></div><div>What=
 device are you using and what does your flowgraph look like? What sample r=
ate are you running at? If your block is running at the radio sample rate (=
e.g. 200 MSPS on a X310), your block will need to process one input sample =
every clock cycle on average.</div><div><br></div><div>Jonathon</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail=
.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All,<div><br></div><di=
v>I&#39;ve got an IP core that is causing an &quot;ERROR_CODE_OVERFLOW&quot=
; when used in an RFNoC project.</div><div><br></div><div>The core responds=
 correctly when simulated outside the RFNoC environment. (I can see correct=
 output, the AXI streaming signalling, back-pressure when required, etc.)</=
div><div><br></div><div>I&#39;m not sure how to go about debugging this, an=
d am not yet familiar enough with RFNoC to know what to ask.</div><div><br>=
</div><div>I have been thinking it was the core not being reset or clocked =
correctly, but this is how it gets instantiated:</div><div><br></div><div><=
div>=C2=A0 multiddc multiddc_i (</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- U=
sing different clocks for the IP core and the AXI interface. The IPCore_Clk=
 and AXILite_ACLK must be=C2=A0<br></div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0=
 =C2=A0synchronous and connected to the same clock source. The IPCore_RESET=
N and AXILite_ARESETN must be=C2=A0</div><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0=
 =C2=A0connected to the same reset source. See Synchronization of Global Re=
set Signal to IP Core Clock Domain.</div><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div>=
<div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(~axis_data_rst),</div><div><br></div><div>=C2=A0 =C2=A0 .AXI4_Lite_A=
CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=
=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_=
rst),</div></div><div><br></div><div>The core YAML file describes the clock=
 as:</div><div><br></div><div><div>data:</div><div>=C2=A0 fpga_iface: axis_=
chdr</div><div>=C2=A0 clk_domain: ce</div></div><div><br></div><div>In the =
project YAML file:</div><div><br></div><div><div>clk_domains:</div><div>=C2=
=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio0,=C2=A0 =C2=
=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport:=
 ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: ce }</div></div><div><br></di=
v><div>Is there something that might be an obvious first place to check?</d=
iv><div><br></div><div>Many thanks, Kevin<br clear=3D"all"><div><br></div>-=
- <br><div dir=3D"ltr">Kevin Williams</div></div></div></div></div></div></=
div>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Kevin Williams</div>

--0000000000000213c005e8a09f81--

--===============3546540441924957851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3546540441924957851==--
