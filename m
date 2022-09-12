Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A27F25B6214
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 22:18:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBD383812E2
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 16:18:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663013911; bh=vbGzqbyIxBpRTEx0Stx23f7+W327Xgs8MAAM8BgpfKg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=B9HclnYPb5K0ibNr6bktW6+8iVjAt/IjKfFKbV19qDWixenzCUhTTK3BihY3B8bYx
	 /JlxFRott9qOpTgfAQ3Swi8C4K2DoL0nqJW/2bnYU265JfNoqOSDLHQjCn0DdEJob5
	 I/7zrmD4Q+xEUvSvSEsF5WUowqYP4+faSJ5yDt1xFf+86si1ZPe4sf79VnsTbAhk/e
	 M2k6OiKkeFGLN0fGDbaOtT1p7j45vHWKmvS49Eg7Zs4QONlfKuSnazeybWZ9/yDjeH
	 xCX3gz8vkOHxuQL1ZdgPzU2L1gRkDyDE7FzbYhTLudsl9yBaKqfJWBqs04CO3zPNh/
	 F4O+6saeiPUKQ==
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C2EC380B99
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 16:17:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bREnDnNn";
	dkim-atps=neutral
Received: by mail-ot1-f48.google.com with SMTP id 92-20020a9d0be5000000b0063946111607so6645422oth.10
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 13:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ouxKZgQ54V4Ckk4C4cP9OYLCc6F0rYtZygt1hb7qZUk=;
        b=bREnDnNnJnCFylvvVnaHLI/OzDwlNTBuq0bhnONfcUtH+/S1Fbv/y3CiGd0Uwxl/W+
         MKE5NFONDXDq5WWlLNbb764F8cFe+PyUD11FZJIwOqBOjFWuOxAfLpGlLpcHv6n+tfWU
         I7QnBr+QUt/yL90unm/UDp/cOYqD2TsvVdwr5h0YprCjtM8HvgznPKsJDdh08Djwr2lh
         zxCCaK31pUifzlEaPu7XQAUYd4i2iqsU5qYu1YgcFdZhMS2vKCSIahl2kQmg94wnLZoL
         MB67Wvau8Il9PGk6QtJlMT1ZVZP6qkqn56EAM88jHip3+qvOo48edpwtc6423D5vQoIi
         KlZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ouxKZgQ54V4Ckk4C4cP9OYLCc6F0rYtZygt1hb7qZUk=;
        b=JWZ/I/4XPrm/u4vN0rCFYCVy5z7n/DWBPb/5Pt3yzUEgTEyAiGdfcU8HvtIQeLFzRd
         E4wtpO4JQuhsEGz5fmG1bmLYGSMSHQmX3mhPJ5cuhSQJYUW1F0xp/0IgdagKtfIEKsKI
         MnzijrC7TfdGFkXeP6Lv7KZANLy/sINCu0WcCLJuaTxzp8drWF9MDmnArem0W8z2OkC0
         YxaqbXQyfSQsF06H2QgaGawYWTx6a3qp8cp7kbir81tivdgbJggFR9B+syk2wbKpR/0B
         H27O1AZdBSBEeuJ1FhhmPGqq1un1A+wxuysX9T08WG6pfMumyy4l0t3Zb9ApiIIIwR65
         zUCg==
X-Gm-Message-State: ACgBeo0chPj4S4PRps+iIg2OvOPe1rVSsmH0wf34HoEapm6ufoI0yivv
	jb+xhcDYtUAj6/kXcyWpcbQd7UroZoPV+WpJcas=
X-Google-Smtp-Source: AA6agR4su2aq0IssaOF3ySw8DyVU5n5r9xLNpn5N8YiFqG6sktOPHAHAX0me5/vY/OceEj9PdEif9wBek4jzTKpQq60=
X-Received: by 2002:a05:6830:6986:b0:61c:fd55:5b64 with SMTP id
 cy6-20020a056830698600b0061cfd555b64mr11124825otb.92.1663013839338; Mon, 12
 Sep 2022 13:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com> <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
In-Reply-To: <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Mon, 12 Sep 2022 22:16:42 +0200
Message-ID: <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: XERO5SQKZ7FSAPKAUB7AKWKJE7FZDJWY
X-Message-ID-Hash: XERO5SQKZ7FSAPKAUB7AKWKJE7FZDJWY
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XERO5SQKZ7FSAPKAUB7AKWKJE7FZDJWY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3891136445675963987=="

--===============3891136445675963987==
Content-Type: multipart/alternative; boundary="00000000000026823905e88095ec"

--00000000000026823905e88095ec
Content-Type: text/plain; charset="UTF-8"

Yes, of course. But I don't get 1 sample from the ddc's, even with just one
channel of a 2:1 decimated channel connected to the rx streamer.

On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> The aggregate output rate of the 5 streams could require more bandwidth
> than the 10 GigE interface can sustain. What are the exact output rates?
>
> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Those rates vary from a 2:1 decimation down to other rates.
>>
>> The host has 10 Gbe interfaces to the USRP.
>>
>> I get samples if i connect the radio to the rx streamer, just nothing
>> from the ddc's.
>>
>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Kevin,
>>>
>>> What are the sample rates for the 5 outputs? What connection are you
>>> using to your host PC, 1 GigE or 10 GigE?
>>>
>>> Jonathon
>>>
>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>>
>>>> Hi Jonathon,
>>>>
>>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>>>> outputs). I've tried both static and dynamic routing from the radio block.
>>>> I.e. the static route version:
>>>>
>>>> |    /
>>>> |   |       Static connections on this device:
>>>> |   |
>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>
>>>>
>>>> On the input side it is all at the radio rate, but I hope my core is
>>>> being clocked at 214 MHz.
>>>>
>>>> When I simulate my IP core (which includes the AXI streaming
>>>> interfaces) it looks ok.
>>>>
>>>> Regards, Kevin
>>>>
>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> Hello Kevin,
>>>>>
>>>>> What device are you using and what does your flowgraph look like? What
>>>>> sample rate are you running at? If your block is running at the radio
>>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>>> input sample every clock cycle on average.
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi All,
>>>>>>
>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when
>>>>>> used in an RFNoC project.
>>>>>>
>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>> back-pressure when required, etc.)
>>>>>>
>>>>>> I'm not sure how to go about debugging this, and am not yet familiar
>>>>>> enough with RFNoC to know what to ask.
>>>>>>
>>>>>> I have been thinking it was the core not being reset or clocked
>>>>>> correctly, but this is how it gets instantiated:
>>>>>>
>>>>>>   multiddc multiddc_i (
>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>     //     synchronous and connected to the same clock source. The
>>>>>> IPCore_RESETN and AXILite_ARESETN must be
>>>>>>     //     connected to the same reset source. See Synchronization of
>>>>>> Global Reset Signal to IP Core Clock Domain.
>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>
>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>
>>>>>> The core YAML file describes the clock as:
>>>>>>
>>>>>> data:
>>>>>>   fpga_iface: axis_chdr
>>>>>>   clk_domain: ce
>>>>>>
>>>>>> In the project YAML file:
>>>>>>
>>>>>> clk_domains:
>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport:
>>>>>> radio }
>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport:
>>>>>> ce }
>>>>>>
>>>>>> Is there something that might be an obvious first place to check?
>>>>>>
>>>>>> Many thanks, Kevin
>>>>>>
>>>>>> --
>>>>>> Kevin Williams
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
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
>>
>

-- 
Kevin Williams

--00000000000026823905e88095ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, of course. But I don&#39;t get 1 sample from the ddc&=
#39;s, even with just one channel of a 2:1 decimated channel connected to t=
he rx streamer.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum &lt;<a href=
=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
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
 class=3D"gmail_signature">Kevin Williams</div>

--00000000000026823905e88095ec--

--===============3891136445675963987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3891136445675963987==--
