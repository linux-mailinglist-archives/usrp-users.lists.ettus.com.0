Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 635A85B63C0
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 00:33:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C3EC38140B
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 18:33:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663022031; bh=CZkIZCq1Qpm9b91yCWn5+HICbRReHNRDHfOJBqKyItE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ur1XEBkk3uWqSP7rEwyf8CiyvcLoMRSsijpskmESb6Yd3IWfNtJisjB05QZEsUM5D
	 pDdSJsdzIh0HeANQCY1PEVbtzobwLAuBSxNRMvd+grtpzvlb4VhnHM03F5kQAVyR81
	 yXT2rolWMwg4M74ulG2Mlz4H+lEkGkko9WE5i1xpMjuzdt7sEVtMmTfdzE7TDHU8Ay
	 sOopI5wojiPCmI9RuvCqNoNRe2xdmqv5F1vhEaHM+JhJqmwYb3Fg50F7FhWuE8Clxt
	 ovyw1DIbiQvRHygVL+O1RTaMtkmiYLWcEmW2uNlJDlSQmwxOiRM4uR1/smCTIKd2hU
	 U9qG0uzxrDQ/g==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CE433813F4
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 18:32:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dp2l+aqt";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-348b1838c2bso118731437b3.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=mlP9kQbGGe7cMpwcW8GWvvP/CIHJitB5Pdw8aXvoFxk=;
        b=dp2l+aqtuPreJyt2bqkRmFhAnzJIsmtMka0iCdbJMybDSmWG+3sa9KSq7OGI8OSNNz
         h9E0LCTNBiMJaA5I4VMSCIyALYrabyVf/3x1r4D7J4AbrB8nOCDhjcEEMYFpz2kK8sia
         dTSfOsdmH0qOz3eyTxuq3RCBB3PCmCzcNuT76y5+CNLJ5ppT1xfc21vuvNNtOeO0Gzhw
         YLyXprUN0SrqGTCteKt/squVxePFQsB5zVNJrs/gBM1H9MWkA09KabxKCcpcvgu/2I18
         2PrJYYO3sLXro98O06FFoZg4DsT/O+0JQUZTjsc9Ay9N6aDyZvWvOjdGCE0si6g3dCxL
         FDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=mlP9kQbGGe7cMpwcW8GWvvP/CIHJitB5Pdw8aXvoFxk=;
        b=RZz2yRCM+1TzXVD4UdGMYTw5A59KulGsHIMbEtu2GpOFJo6iNpYy3ialuxwxa9Y/Kv
         QatmUjbH9Wc4bGuqGOnLonrHQGjtxa+6TX7kamNwjOlNrXxAlOXnr5E8kf2Vr0hZS27K
         i+knwZ3hG3xbvu658AXkhbF8p+TY6YCHJGU94GzlTND/E1g1gsnGzzwPTWULCDsFeQtg
         TMkM39UAj8CPdEtaU9zXTBsqmxyCjI2wrWGwg7gaCnW/pH1AMwMJnHI7niRUO80tq1lk
         ed+OM7fN2agsdULrY+4D+4dx+xsyqY+8T/VQuaO3UhgYSOcGsLpXVPw1zvv2YBQivNuZ
         AUNQ==
X-Gm-Message-State: ACgBeo2KUPR/aFPgRmuUaf4lv7xhSaVc67oPxNfU5bpOUX8Rn1XY3xXE
	nSTdW+gPncsSWDSZJInAPzfo4O8Z+7Z3mnWZ8CALig==
X-Google-Smtp-Source: AA6agR56ZyX76cEMsVByVTDh88Fm8F2T/RRygtyCHjAldBi4nBh7QEDE464yYG16TErT2gbgz2nQgwBdvpQMAbk09E4=
X-Received: by 2002:a81:478a:0:b0:349:2e6c:ce07 with SMTP id
 u132-20020a81478a000000b003492e6cce07mr7172616ywa.82.1663021950218; Mon, 12
 Sep 2022 15:32:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com> <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
In-Reply-To: <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 12 Sep 2022 18:32:19 -0400
Message-ID: <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: UR4IB7EEV4ZUVHPJ2N6KYJPZQXASGDN5
X-Message-ID-Hash: UR4IB7EEV4ZUVHPJ2N6KYJPZQXASGDN5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UR4IB7EEV4ZUVHPJ2N6KYJPZQXASGDN5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8539715517353566661=="

--===============8539715517353566661==
Content-Type: multipart/alternative; boundary="0000000000009902e905e8827895"

--0000000000009902e905e8827895
Content-Type: text/plain; charset="UTF-8"

Are you sure that the radio is even streaming?  The typical method for
starting streaming is to tell the rx_streamer to start streaming.  Then, in
UHD-land, the rx_streamer ctrl tells the next upstring block to start
streaming such that this streaming command propagates up the chain until
the radio receives it and starts streaming.  So, if your custom block does
not forward the streaming command from the rx_streamer to the radio, then
the radio never even starts streaming.  You can verify by simply monitoring
the LEDs.

If this is the problem, you can go-around the intended use by simply
telling the radio to start streaming rather than the rx_streamer.  Or, of
course, you can modify your custom block controller to propagate the
streaming command.
Rob

On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com> wrote:

> Yes, of course. But I don't get 1 sample from the ddc's, even with just
> one channel of a 2:1 decimated channel connected to the rx streamer.
>
> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> The aggregate output rate of the 5 streams could require more bandwidth
>> than the 10 GigE interface can sustain. What are the exact output rates?
>>
>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>
>>> Those rates vary from a 2:1 decimation down to other rates.
>>>
>>> The host has 10 Gbe interfaces to the USRP.
>>>
>>> I get samples if i connect the radio to the rx streamer, just nothing
>>> from the ddc's.
>>>
>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi Kevin,
>>>>
>>>> What are the sample rates for the 5 outputs? What connection are you
>>>> using to your host PC, 1 GigE or 10 GigE?
>>>>
>>>> Jonathon
>>>>
>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>> wrote:
>>>>
>>>>> Hi Jonathon,
>>>>>
>>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>>>>> outputs). I've tried both static and dynamic routing from the radio block.
>>>>> I.e. the static route version:
>>>>>
>>>>> |    /
>>>>> |   |       Static connections on this device:
>>>>> |   |
>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>
>>>>>
>>>>> On the input side it is all at the radio rate, but I hope my core is
>>>>> being clocked at 214 MHz.
>>>>>
>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>> interfaces) it looks ok.
>>>>>
>>>>> Regards, Kevin
>>>>>
>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>
>>>>>> Hello Kevin,
>>>>>>
>>>>>> What device are you using and what does your flowgraph look like?
>>>>>> What sample rate are you running at? If your block is running at the radio
>>>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>>>> input sample every clock cycle on average.
>>>>>>
>>>>>> Jonathon
>>>>>>
>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi All,
>>>>>>>
>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when
>>>>>>> used in an RFNoC project.
>>>>>>>
>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>> back-pressure when required, etc.)
>>>>>>>
>>>>>>> I'm not sure how to go about debugging this, and am not yet familiar
>>>>>>> enough with RFNoC to know what to ask.
>>>>>>>
>>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>>> correctly, but this is how it gets instantiated:
>>>>>>>
>>>>>>>   multiddc multiddc_i (
>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>     //     synchronous and connected to the same clock source. The
>>>>>>> IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>     //     connected to the same reset source. See Synchronization
>>>>>>> of Global Reset Signal to IP Core Clock Domain.
>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>
>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>
>>>>>>> The core YAML file describes the clock as:
>>>>>>>
>>>>>>> data:
>>>>>>>   fpga_iface: axis_chdr
>>>>>>>   clk_domain: ce
>>>>>>>
>>>>>>> In the project YAML file:
>>>>>>>
>>>>>>> clk_domains:
>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>> dstport: radio }
>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>> dstport: ce }
>>>>>>>
>>>>>>> Is there something that might be an obvious first place to check?
>>>>>>>
>>>>>>> Many thanks, Kevin
>>>>>>>
>>>>>>> --
>>>>>>> Kevin Williams
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
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
>>>
>>
>
> --
> Kevin Williams
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009902e905e8827895
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are you sure that the radio is even streaming?=C2=A0 The t=
ypical method for starting streaming is to tell the rx_streamer to start st=
reaming.=C2=A0 Then, in UHD-land, the rx_streamer ctrl tells the next upstr=
ing block to start streaming such that this streaming command propagates up=
 the chain until the radio receives it and starts streaming.=C2=A0 So, if y=
our custom block does not forward the streaming command from the rx_streame=
r to the radio, then the radio never even starts streaming.=C2=A0 You can v=
erify by simply monitoring the LEDs.<div><br></div><div>If this is the prob=
lem, you can go-around the intended use by simply telling the radio to star=
t streaming rather than the rx_streamer.=C2=A0 Or, of course, you can modif=
y your custom block controller to propagate the streaming command.<br><div>=
Rob</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams &lt;<a href=
=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Yes, of cours=
e. But I don&#39;t get 1 sample from the ddc&#39;s, even with just one chan=
nel of a 2:1 decimated channel connected to the rx streamer.</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept=
 2022 at 22:13, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The ag=
gregate output rate of the 5 streams could require more bandwidth than the =
10 GigE interface can sustain. What are the exact output rates?</div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep =
12, 2022 at 3:53 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" =
target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Those rates vary from a =
2:1 decimation down to other rates.<div><br></div><div>The host has 10 Gbe =
interfaces to the USRP.</div><div><br></div><div>I get samples if i connect=
 the radio to the rx streamer, just nothing from the ddc&#39;s.</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, 12 Sept 2022 at 21:48, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pe=
ndlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hi Kevin,<div><br></div><div>What are the sample rates for the 5 outputs=
? What connection are you using to your host PC, 1 GigE or 10 GigE?</div><d=
iv><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38 PM Kevin Willi=
ams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></div><div>I&#39;=
ve got an x310. The flowgraph is a simple radio-&gt;multiddc-&gt;(to 5x out=
puts). I&#39;ve tried both static and dynamic routing from the radio block.=
 I.e. the static route version:</div><div><br></div><div><div>|=C2=A0 =C2=
=A0 /</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static connection=
s on this device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0|=C2=A0=
 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br></div><di=
v><br></div><div>On the input side it is all at the radio rate, but I hope =
my core is being clocked at 214 MHz.</div><div><br></div><div>When I simula=
te my IP core (which includes the AXI streaming interfaces) it looks ok.</d=
iv><div><br></div><div>Regards, Kevin</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21=
:29, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" tar=
get=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Kevin,<div>=
<br></div><div>What device are you using and what does your flowgraph look =
like? What sample rate are you running at? If your block is running at the =
radio sample rate (e.g. 200 MSPS on a X310), your block will need to proces=
s one input sample every clock cycle on average.</div><div><br></div><div>J=
onathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<a href=3D"=
mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All=
,<div><br></div><div>I&#39;ve got an IP core that is causing an &quot;ERROR=
_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><div><br></div><di=
v>The core responds correctly when simulated outside the RFNoC environment.=
 (I can see correct output, the AXI streaming signalling, back-pressure whe=
n required, etc.)</div><div><br></div><div>I&#39;m not sure how to go about=
 debugging this, and am not yet familiar enough with RFNoC to know what to =
ask.</div><div><br></div><div>I have been thinking it was the core not bein=
g reset or clocked correctly, but this is how it gets instantiated:</div><d=
iv><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><div>=C2=A0 =C2=A0=
 //=C2=A0 =C2=A0- Using different clocks for the IP core and the AXI interf=
ace. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div><div>=C2=A0 =C2=
=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the same clock sourc=
e. The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div><div>=C2=A0 =C2=
=A0 //=C2=A0 =C2=A0 =C2=A0connected to the same reset source. See Synchroni=
zation of Global Reset Signal to IP Core Clock Domain.</div><div>=C2=A0 =C2=
=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axi=
s_data_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br></div><div>=C2=A0 =
=C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis_data_=
clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(~axis_data_rst),</div></div><div><br></div><div>The core YAML file =
describes the clock as:</div><div><br></div><div><div>data:</div><div>=C2=
=A0 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce</div></div><div><=
br></div><div>In the project YAML file:</div><div><br></div><div><div>clk_d=
omains:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstbl=
k: radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - { srcblk=
: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: ce }</div=
></div><div><br></div><div>Is there something that might be an obvious firs=
t place to check?</div><div><br></div><div>Many thanks, Kevin<br clear=3D"a=
ll"><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></div></div>=
</div></div></div></div>
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

--0000000000009902e905e8827895--

--===============8539715517353566661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8539715517353566661==--
