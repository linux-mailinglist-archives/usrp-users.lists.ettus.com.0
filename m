Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B8D5B620D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 22:14:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB32C381286
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 16:14:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663013658; bh=OFfuVbozOH4u803EWoiqzg7jhNNz7ErXDuwosKpD0sM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eGf0tGAhHXgtzVIKGQz+XnEB3GaGV3yBKSZadAABPnXEG/BPCHTbNfOUMhkEN7ITm
	 DDEhSnAwTmgZGPbjYu1zPpxa50nqRzujET3YIlRUeJXk7K/iCURysIzttNg9cHlF0V
	 cKB0Sc7EaJ1+Ib4/wdqo3SWDaBjPCySGAUk1ZFEEowHRHcmJw9YxPOJ8JCTnTGa2qs
	 6OOfZigJQ0gbaueL/5kSeHzTVKYDuziXdlzgOhrMlyjlwRAp4fC1xEaPf3JVRLbotv
	 rI5cLCVTT7OrQ0oB5l3xA/RDXHIzRQvCGfJx6jJjVUO5kqAsYeI9sp/TJA/V6CseM6
	 XPRyG92+x1O0Q==
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 08594380DE5
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 16:13:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="5wk6cHA4";
	dkim-atps=neutral
Received: by mail-ua1-f52.google.com with SMTP id z14so3564301uam.10
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 13:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=KEHHfhoK50QB+QFbg2IjuRZ2gRbvp9IvsB/h9+z0nlY=;
        b=5wk6cHA40vSgNrReT5AFZ87AXaNGjrSEZI6yBEcpgaVFktrxKccOrSYzBfmifbwHF4
         dr7QPmPi5De+uoz0OLTlyupSf0V3iZsDp6hHQ7NXKtD2xw4O/17C5xMvSYO2XuUF+fNS
         avb+GiZ1fB4A1MuZSRh23maeKXcqQGNiISs/2K7CjAPgp6k2HB1cpoDqB2haVGo/2ELZ
         3nzvwOR72GpvWn1vw09Fb2y94rPcmu4+EX9i0K/OdJwjReFq3IuygBuGSes/wHCZr0+8
         zSeRP7e6Td1sOCz9bNcMGD6/LcFVxmQNw5/rvSC8XGeJDuEtolgW2U8lESVOylhYSmkU
         tahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=KEHHfhoK50QB+QFbg2IjuRZ2gRbvp9IvsB/h9+z0nlY=;
        b=e8smyz1rR4TCTfjEBJq6eY+pllCwq30/OFqYn5QJrCDWm/fT4a0jECW951x1PFmgJm
         0Z69yk37v4A1KRYjC28XgNAZ6Q0tk9muXzTN+wWh50XJT9eziJfeYjrPHfy/05lOIZzP
         ZlfUxGYS+7NJZw80O4Kb6mTgmEakD505PQh1ylMOVHFQb98Ff6pjS9PGBKiIucXxgCFA
         Zz/5GJVMzWZYyzpX/b4/EwhPsSjOM6/qTMpTgUGh6BP/XZGFP3/LaDIhdeO/NYnimFaM
         i1TRvpAbJsrYgizHAeZ4rWCFXM4PzhOG9imWcTdzu9i0CVkcxHQ+QrfJpEG6HB9Y6KLz
         sUpQ==
X-Gm-Message-State: ACgBeo0NSbr/UaVddj/fuzHpm/wuONN5zbcst5j6920UHsRxOeWm0pHw
	9GZNNkDCcCNAWBId76wrzYzgHj+PGm3zfMRfgEjZKs1l
X-Google-Smtp-Source: AA6agR786U0wZIeyInxuqXZdY6C02QMjkB2l9WPE3+F/xdCQzSeCv+AdGWlt80iYjOfyLDjsp3KVwkdq+1c/QxOTO2s=
X-Received: by 2002:ab0:6451:0:b0:3b8:7f95:f20e with SMTP id
 j17-20020ab06451000000b003b87f95f20emr2381774uap.31.1663013589437; Mon, 12
 Sep 2022 13:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com> <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
In-Reply-To: <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 12 Sep 2022 16:12:33 -0400
Message-ID: <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: EKMU7J5H3XHCPP3OU4UFD7M4HZBSOIE2
X-Message-ID-Hash: EKMU7J5H3XHCPP3OU4UFD7M4HZBSOIE2
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EKMU7J5H3XHCPP3OU4UFD7M4HZBSOIE2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5719927612769569549=="

--===============5719927612769569549==
Content-Type: multipart/alternative; boundary="000000000000415f6905e8808601"

--000000000000415f6905e8808601
Content-Type: text/plain; charset="UTF-8"

The aggregate output rate of the 5 streams could require more bandwidth
than the 10 GigE interface can sustain. What are the exact output rates?

On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com> wrote:

> Those rates vary from a 2:1 decimation down to other rates.
>
> The host has 10 Gbe interfaces to the USRP.
>
> I get samples if i connect the radio to the rx streamer, just nothing from
> the ddc's.
>
> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Kevin,
>>
>> What are the sample rates for the 5 outputs? What connection are you
>> using to your host PC, 1 GigE or 10 GigE?
>>
>> Jonathon
>>
>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>
>>> Hi Jonathon,
>>>
>>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>>> outputs). I've tried both static and dynamic routing from the radio block.
>>> I.e. the static route version:
>>>
>>> |    /
>>> |   |       Static connections on this device:
>>> |   |
>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>
>>>
>>> On the input side it is all at the radio rate, but I hope my core is
>>> being clocked at 214 MHz.
>>>
>>> When I simulate my IP core (which includes the AXI streaming interfaces)
>>> it looks ok.
>>>
>>> Regards, Kevin
>>>
>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hello Kevin,
>>>>
>>>> What device are you using and what does your flowgraph look like? What
>>>> sample rate are you running at? If your block is running at the radio
>>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>>> input sample every clock cycle on average.
>>>>
>>>> Jonathon
>>>>
>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com>
>>>> wrote:
>>>>
>>>>> Hi All,
>>>>>
>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when used
>>>>> in an RFNoC project.
>>>>>
>>>>> The core responds correctly when simulated outside the RFNoC
>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>> back-pressure when required, etc.)
>>>>>
>>>>> I'm not sure how to go about debugging this, and am not yet familiar
>>>>> enough with RFNoC to know what to ask.
>>>>>
>>>>> I have been thinking it was the core not being reset or clocked
>>>>> correctly, but this is how it gets instantiated:
>>>>>
>>>>>   multiddc multiddc_i (
>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>     //     synchronous and connected to the same clock source. The
>>>>> IPCore_RESETN and AXILite_ARESETN must be
>>>>>     //     connected to the same reset source. See Synchronization of
>>>>> Global Reset Signal to IP Core Clock Domain.
>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>
>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>
>>>>> The core YAML file describes the clock as:
>>>>>
>>>>> data:
>>>>>   fpga_iface: axis_chdr
>>>>>   clk_domain: ce
>>>>>
>>>>> In the project YAML file:
>>>>>
>>>>> clk_domains:
>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport:
>>>>> radio }
>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport:
>>>>> ce }
>>>>>
>>>>> Is there something that might be an obvious first place to check?
>>>>>
>>>>> Many thanks, Kevin
>>>>>
>>>>> --
>>>>> Kevin Williams
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
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
>

--000000000000415f6905e8808601
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The aggregate output rate of the 5 streams could require m=
ore bandwidth than the 10 GigE interface can sustain. What are the exact ou=
tput rates?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams &lt;<a href=3D"ma=
ilto:zs1kwa@gmail.com">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Those rates vary fr=
om a 2:1 decimation down to other rates.<div><br></div><div>The host has 10=
 Gbe interfaces to the USRP.</div><div><br></div><div>I get samples if i co=
nnect the radio to the rx streamer, just nothing from the ddc&#39;s.</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum &lt;<a href=3D"mailto:jonath=
on.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi Kevin,<div><br></div><div>What are the sample rates for the 5 o=
utputs? What connection are you using to your host PC, 1 GigE or 10 GigE?</=
div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38 PM Kevin=
 Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></div><di=
v>I&#39;ve got an x310. The flowgraph is a simple radio-&gt;multiddc-&gt;(t=
o 5x outputs). I&#39;ve tried both static and dynamic routing from the radi=
o block. I.e. the static route version:</div><div><br></div><div><div>|=C2=
=A0 =C2=A0 /</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Static con=
nections on this device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br></=
div><div><br></div><div>On the input side it is all at the radio rate, but =
I hope my core is being clocked at 214 MHz.</div><div><br></div><div>When I=
 simulate my IP core (which includes the AXI streaming interfaces) it looks=
 ok.</div><div><br></div><div>Regards, Kevin</div></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 202=
2 at 21:29, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.c=
om" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Kevi=
n,<div><br></div><div>What device are you using and what does your flowgrap=
h look like? What sample rate are you running at? If your block is running =
at the radio sample rate (e.g. 200 MSPS on a X310), your block will need to=
 process one input sample every clock cycle on average.</div><div><br></div=
><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<a h=
ref=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
">Hi All,<div><br></div><div>I&#39;ve got an IP core that is causing an &qu=
ot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><div><br><=
/div><div>The core responds correctly when simulated outside the RFNoC envi=
ronment. (I can see correct output, the AXI streaming signalling, back-pres=
sure when required, etc.)</div><div><br></div><div>I&#39;m not sure how to =
go about debugging this, and am not yet familiar enough with RFNoC to know =
what to ask.</div><div><br></div><div>I have been thinking it was the core =
not being reset or clocked correctly, but this is how it gets instantiated:=
</div><div><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><div>=C2=
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

--000000000000415f6905e8808601--

--===============5719927612769569549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5719927612769569549==--
