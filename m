Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 987725B61F1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 21:54:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDE75381286
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 15:54:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663012472; bh=Z33F3mmP0VB/poySPc8Bg+ChjUXFlsFLF6+ppJSeqYM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ho5uAa6ZHLiz8zNx5jg1u4ag0HrIvu+RL4suUrqzeoPqpvyQ90EkJiUQj3nT/Ej2V
	 PLYnbVJgYNOwHyMkEQK2OTGRXT0YeDDMTwsimRRMUiAx7MHYlQCYwyVl4OiaZCn1fc
	 ZbOLmaMxUfFPcr68Co6F/gx+Q6e7Nfgw4RWH6K7GPmq+JZIk1o3NtXJu7fOpUUaBNZ
	 Lnpw5XJ038/jiYJO0n0AnR48RbvczZbQgdJk8h4R4GBY+JoZ264NlYaVykOBSSHVTm
	 ZwQTU7y+T+46X6nVVcqDIgk43dDLG/2LxG1+rj2ylh3CdiEgJ+9MnO4Wa0EmlysajU
	 VBgZ8HhP3smog==
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by mm2.emwd.com (Postfix) with ESMTPS id B89C8380AC9
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:53:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Os46Aev+";
	dkim-atps=neutral
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-12b542cb1d3so16501033fac.13
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=A1Hh6ZfclunutHk24vprP8DKs0aOomzq/WbibwXqNek=;
        b=Os46Aev+27VcE+0K4L3tQi6qk4UwfFYDS8mM2rEthkzKYp4DVmArfz1/AH/fYjpHzy
         tOBnZI5jqsaYRUVknmTWqSfdWHxZVjgpLhPGyL3jd41y9VS4WHwBdQmfc+qFBDnHvi1W
         O0zdQYpQ7z/+bYJQT2TMc3WHRYTWfbKaJwbTfCsA+h+CyQGuekKWB9CPA0eIRpdBhDhX
         Ud8mPUV7xKGwCnUYWiBXIss7S/+bAukrVlTHxThI0MS3UeZgTtXMgYQCYFd8v86Z9iNM
         YmTDIgfpCVj1C5mzcj/sBn65hI2Pluvmk0ApstkSLI65ssF41DudN+2S4Q/DepxqMxXu
         wkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=A1Hh6ZfclunutHk24vprP8DKs0aOomzq/WbibwXqNek=;
        b=MugZTBL7Y/ZUBFtB1YypcciuUCQ6QYYZ2y5HUF9/NrehRTgy5tunoReEmksEpGcfsH
         0BKesYNhW2I1Xu4otbkRMKQizxdN8xOyp1xYx46JBvS4JunzTi9CdlhSiXmId8O38igK
         /w+j2Rzx9g9LBhXh1QSh6sq3kcHreZl5hW3Jqlfc02n7JsJyuvcGzaX7UbCj3IfWUKZK
         8FTE8LbxUWGampjVtknhjm0Io4h0le+JAGY4XKgHJnQM0/2LFaB+gm3tnPJwCivuK/cu
         KkJEG7I58oGspflHAgplOfCnBl5URT/yAFLwhvAF5m131xD7F/FVrZUUdSuvlFVNulyK
         7jVA==
X-Gm-Message-State: ACgBeo1Le2xg76JBbjGC8uaeCUT6Pf9xnjQhUogliTFt1Vw+/HQ+5WLH
	nzDa+jr2KMlD4/9/oML4cBzBo06F+R1Sb7bnhQI=
X-Google-Smtp-Source: AA6agR6A1z/6oY+mfQNzEipp6ng5h6eD9EsbyiUGO5pcRzRu0HudvWYoywcB34L83w2UBdcxB0sWxWtMaZFf5vUo4uM=
X-Received: by 2002:a05:6870:2189:b0:127:50a6:14b2 with SMTP id
 l9-20020a056870218900b0012750a614b2mr10798oae.178.1663012400870; Mon, 12 Sep
 2022 12:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com> <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
In-Reply-To: <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Mon, 12 Sep 2022 21:52:44 +0200
Message-ID: <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: SMBDRKQ24HP5IQGMD3LYTCXWV464AY6Q
X-Message-ID-Hash: SMBDRKQ24HP5IQGMD3LYTCXWV464AY6Q
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SMBDRKQ24HP5IQGMD3LYTCXWV464AY6Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5467947958250263710=="

--===============5467947958250263710==
Content-Type: multipart/alternative; boundary="00000000000069398105e8803f44"

--00000000000069398105e8803f44
Content-Type: text/plain; charset="UTF-8"

Those rates vary from a 2:1 decimation down to other rates.

The host has 10 Gbe interfaces to the USRP.

I get samples if i connect the radio to the rx streamer, just nothing from
the ddc's.

On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Kevin,
>
> What are the sample rates for the 5 outputs? What connection are you using
> to your host PC, 1 GigE or 10 GigE?
>
> Jonathon
>
> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Hi Jonathon,
>>
>> I've got an x310. The flowgraph is a simple radio->multiddc->(to 5x
>> outputs). I've tried both static and dynamic routing from the radio block.
>> I.e. the static route version:
>>
>> |    /
>> |   |       Static connections on this device:
>> |   |
>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>
>>
>> On the input side it is all at the radio rate, but I hope my core is
>> being clocked at 214 MHz.
>>
>> When I simulate my IP core (which includes the AXI streaming interfaces)
>> it looks ok.
>>
>> Regards, Kevin
>>
>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hello Kevin,
>>>
>>> What device are you using and what does your flowgraph look like? What
>>> sample rate are you running at? If your block is running at the radio
>>> sample rate (e.g. 200 MSPS on a X310), your block will need to process one
>>> input sample every clock cycle on average.
>>>
>>> Jonathon
>>>
>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com> wrote:
>>>
>>>> Hi All,
>>>>
>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when used
>>>> in an RFNoC project.
>>>>
>>>> The core responds correctly when simulated outside the RFNoC
>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>> back-pressure when required, etc.)
>>>>
>>>> I'm not sure how to go about debugging this, and am not yet familiar
>>>> enough with RFNoC to know what to ask.
>>>>
>>>> I have been thinking it was the core not being reset or clocked
>>>> correctly, but this is how it gets instantiated:
>>>>
>>>>   multiddc multiddc_i (
>>>>     //   - Using different clocks for the IP core and the AXI
>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>     //     synchronous and connected to the same clock source. The
>>>> IPCore_RESETN and AXILite_ARESETN must be
>>>>     //     connected to the same reset source. See Synchronization of
>>>> Global Reset Signal to IP Core Clock Domain.
>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>
>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>
>>>> The core YAML file describes the clock as:
>>>>
>>>> data:
>>>>   fpga_iface: axis_chdr
>>>>   clk_domain: ce
>>>>
>>>> In the project YAML file:
>>>>
>>>> clk_domains:
>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport:
>>>> radio }
>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport:
>>>> ce }
>>>>
>>>> Is there something that might be an obvious first place to check?
>>>>
>>>> Many thanks, Kevin
>>>>
>>>> --
>>>> Kevin Williams
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>
>> --
>> Kevin Williams
>>
>

-- 
Kevin Williams

--00000000000069398105e8803f44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Those rates vary from a 2:1 decimation down to other rates=
.<div><br></div><div>The host has 10 Gbe interfaces to the USRP.</div><div>=
<br></div><div>I get samples if i connect the radio to the rx streamer, jus=
t nothing from the ddc&#39;s.</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept 2022 at 21:48, Jonathon =
Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Kevin,<div><br></div><div>What are the sampl=
e rates for the 5 outputs? What connection are you using to your host PC, 1=
 GigE or 10 GigE?</div><div><br></div><div>Jonathon</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 20=
22 at 3:38 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=
=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<=
div><br></div><div>I&#39;ve got an x310. The flowgraph is a simple radio-&g=
t;multiddc-&gt;(to 5x outputs). I&#39;ve tried both static and dynamic rout=
ing from the radio block. I.e. the static route version:</div><div><br></di=
v><div><div>|=C2=A0 =C2=A0 /</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =
=C2=A0Static connections on this device:</div><div>|=C2=A0 =C2=A0|</div><di=
v>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><d=
iv>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><di=
v>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div=
>|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>=
|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><=
div><br></div><div><br></div><div>On the input side it is all at the radio =
rate, but I hope my core is being clocked at 214 MHz.</div><div><br></div><=
div>When I simulate my IP core (which includes the AXI streaming interfaces=
) it looks ok.</div><div><br></div><div>Regards, Kevin</div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 1=
2 Sept 2022 at 21:29, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendl=
um@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hello Kevin,<div><br></div><div>What device are you using and what does you=
r flowgraph look like? What sample rate are you running at? If your block i=
s running at the radio sample rate (e.g. 200 MSPS on a X310), your block wi=
ll need to process one input sample every clock cycle on average.</div><div=
><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin William=
s &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr">Hi All,<div><br></div><div>I&#39;ve got an IP core that is causi=
ng an &quot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><=
div><br></div><div>The core responds correctly when simulated outside the R=
FNoC environment. (I can see correct output, the AXI streaming signalling, =
back-pressure when required, etc.)</div><div><br></div><div>I&#39;m not sur=
e how to go about debugging this, and am not yet familiar enough with RFNoC=
 to know what to ask.</div><div><br></div><div>I have been thinking it was =
the core not being reset or clocked correctly, but this is how it gets inst=
antiated:</div><div><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><=
div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- Using different clocks for the IP core a=
nd the AXI interface. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></di=
v><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the=
 same clock source. The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</di=
v><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0connected to the same reset sour=
ce. See Synchronization of Global Reset Signal to IP Core Clock Domain.</di=
v><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br><=
/div><div>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div></div><div><br></div><div=
>The core YAML file describes the clock as:</div><div><br></div><div><div>d=
ata:</div><div>=C2=A0 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce=
</div></div><div><br></div><div>In the project YAML file:</div><div><br></d=
iv><div><div>clk_domains:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, src=
port: radio, dstblk: radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0=
 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, =
dstport: ce }</div></div><div><br></div><div>Is there something that might =
be an obvious first place to check?</div><div><br></div><div>Many thanks, K=
evin<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams=
</div></div></div></div></div></div></div>
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
 class=3D"gmail_signature">Kevin Williams</div>

--00000000000069398105e8803f44--

--===============5467947958250263710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5467947958250263710==--
