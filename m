Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F48F4C7A8A
	for <lists+usrp-users@lfdr.de>; Mon, 28 Feb 2022 21:37:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FBB6384D9D
	for <lists+usrp-users@lfdr.de>; Mon, 28 Feb 2022 15:37:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="00egxCOa";
	dkim-atps=neutral
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 7091D384312
	for <usrp-users@lists.ettus.com>; Mon, 28 Feb 2022 15:36:26 -0500 (EST)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-2dbc48104beso20247737b3.5
        for <usrp-users@lists.ettus.com>; Mon, 28 Feb 2022 12:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pCXU043EG3qGMtBTd2f/YqXXyCaF3H3DKFlVdd5fZMQ=;
        b=00egxCOaCS5mC8Q4GwKxxJNpdtcW/qhsiD5eGkd+AVLfSWDEfyfg5ol1oLnNkHknsV
         zKo3jIKDaVEzjwI44Nol2OJwC/F0Xc+VW9Aq3c3YEaBiJMsveg7V4w7d6AkzRpurSAaA
         zMQklSt2dXN8B2MrTlg/bnoj+P00MOYHc5hUEiWvr0V3ZdYi65MmuLxIQqDSmwGXtCEt
         QI5dEWoKNSCZqDiF3VFwKf4Wzlik2QAHR4a+awzn0rQu3uD+BbzTMMA6V5WVGP3SGwmA
         1jzxrsAQBEvfAugB7gSKKt97xpuiKrbBgqNQ15YjD/fN97mH/FtJXjM6XoMBy/Z37Lwc
         1tdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pCXU043EG3qGMtBTd2f/YqXXyCaF3H3DKFlVdd5fZMQ=;
        b=LrgGXByC734W+CRgkCrcPS86OXKT/bdFmDHyLKuk02cs5QKlsvwMzxrQyRgAEvPtzT
         IC9Fzot1/TMIknNdcUZN9ORv/VLMxJUZ665AkiPBMOZ5hHP5nUWGSBudtNYDIOreasXp
         ZO8u3CYacHxUJQ4V4Pw/aX3Lq/FfntizWljNyDX8DgpjADP+t9dmR9kJIv9yea9GLbEG
         grFgpJoo08wqH+LJRXUkm4A5WyEEmcfnyye9vI7YelJx2B6vbVxznr0N8EjTNihqyXJr
         gKLuXQU6qtkMthNQmAGfw4o+7p8tS0kryDmxp+zgh8XafvQ4Q56ncYlrwtr0Uen5kJTY
         Uxdw==
X-Gm-Message-State: AOAM531SjflrOiq1mQgxR7zD1yCIoJTKkJClC658WQnxdGUdsc/RI8+y
	QlXy6ovmdWVtUgFnWkOBEBDGCcdnKlpgDZaLiJ6VCEv4
X-Google-Smtp-Source: ABdhPJybjMlMMoe0ldB8+PV17wO8oLUwptfv9YB+J1qjHSIFuEg1nyGyz+P6Bfl9LNGAM8BFALnIV0g7m4WMm0dxMk4=
X-Received: by 2002:a05:690c:8b:b0:2d8:642:8341 with SMTP id
 be11-20020a05690c008b00b002d806428341mr21763891ywb.308.1646080585727; Mon, 28
 Feb 2022 12:36:25 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
 <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com>
 <CAB__hTQfTme1csXj=aVNpgu3tyZW4o6=xQZwUG8ZQacAULDncA@mail.gmail.com>
 <CAB__hTQ6vj_MsV8M8rcGDKJD==J6+fFvdEVcDurPy_Cbd7_LCg@mail.gmail.com> <CAFche=hcVKo+Mz3mCHT8pDa9-LGYHjkBRdvDcux-c7UbVpVOkA@mail.gmail.com>
In-Reply-To: <CAFche=hcVKo+Mz3mCHT8pDa9-LGYHjkBRdvDcux-c7UbVpVOkA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 28 Feb 2022 14:36:10 -0600
Message-ID: <CAFche=gAjY1qiJHXVywS-hLz8TjgnhLhDn64o6t-ZWveuRJGgw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: XAJR5MYLHLV7PTI6YRKLKP3QLZ6ZMUFM
X-Message-ID-Hash: XAJR5MYLHLV7PTI6YRKLKP3QLZ6ZMUFM
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XAJR5MYLHLV7PTI6YRKLKP3QLZ6ZMUFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2375370413213816372=="

--===============2375370413213816372==
Content-Type: multipart/alternative; boundary="00000000000095a52905d91a0048"

--00000000000095a52905d91a0048
Content-Type: text/plain; charset="UTF-8"

I looked at the generated DDC/DUC code again and that looks like a typo in
the YAML. It should really be `2**MTU`, which is 1024, instead of just
`MTU` (which is 10). So if you want a larger buffer on your block, try
2**MTU or some other power of 2.

Wade

On Sat, Feb 26, 2022 at 5:01 PM Wade Fife <wade.fife@ettus.com> wrote:

> Regarding the overflows, that's the kind of thing I would simulate to
> understand what's happening. My guess is the zero insertion is blocking the
> flow of data, and the radio overflows because of that. Like you said, a
> bigger buffer should help.
>
> Hmm, I was just glancing at the code generated by the RFNoC image builder
> and the way it's setting the buffers doesn't look right, so perhaps you're
> not getting the buffering you expect. Let me look into that and get back to
> you.
>
> As for fitting, I would start by removing everything you don't need from
> the YAML description. Do you need all 4 radio channels? Do you need RX and
> TX? Do you need 4 channels of replay? Do you need the DDC and DUC (if you
> only want to run at the master clock rate then you don't). Strip out all
> the blocks you don't need and all their stream endpoints. If it still
> doesn't fit, then I would look at reducing the endpoint buffer sizes. The
> default images usually make them as large as we could fit, but you might be
> able to get away with smaller buffers, which really only affects TX
> streaming performance.
>
> Wade
>
>
>
> On Fri, Feb 25, 2022 at 4:19 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> I was able to build successfully with the 'dram' clock as the 'ce' clock
>> for my rfnoc block. But, I didn't get the performance I was expecting. With
>> my rfnoc graph of "Radio->DDC->custom-zero-padded-fft-block", the Radio had
>> overflows when running at 125e6 but worked well when running 62.5e6.
>>
>> My current thought is that maybe I don't have enough input buffering in
>> my custom rfnoc block.  I initially had my payload input and output buffer
>> sizes (defined in the block def yaml) set to 'MTU' which is how the DDC
>> block does it.  But, when my build failed (attempting to add 4 of my custom
>> blocks), I changed this from 'MTU' to '32'. Turns out that this didn't help
>> my build succeed, but I did get a successful build after removing all
>> Replay blocks / SEPs. So I am now trying to re-build with the 'MTU' setting
>> with the hope that the increased buffering will allow me to run at 125e6
>> sample rate.
>>
>> But, apart from more buffering, is there perhaps a different explanation
>> why my custom FFT block clocked at 300 MHz (with 50% insertion of zeros) is
>> not keeping up?
>>
>> On a semi-related topic, I'm wondering if anyone has suggestions
>> regarding my build failures.  The build error indicates that I needed more
>> slices than are available (out of 69350 total, 47879 are available, but I
>> needed 49414).  If I look at the build report for the default Ettus N310 XG
>> image (see snippet below), it looks like there is not much availability for
>> extra rfnoc blocks (96.44% util%). And, in my experience, this is where my
>> builds usually fail.  I am wondering what I can do in the design of my
>> custom blocks (or in the build parameters of the N310) to achieve
>> successful builds - specifically related to this slice utilization.  Any
>> suggestions welcome.
>> Thanks.
>> Rob
>>
>> // From build report of default Ettus N310 XG image
>> 2. Slice Logic Distribution
>> ---------------------------
>>
>>
>> +--------------------------------------------+--------+-----------+-------+
>> |                  Site Type                 |  Used  | Available | Util%
>> |
>>
>> +--------------------------------------------+--------+-----------+-------+
>> | Slice                                      |  66878 |     69350 | 96.44
>> |
>> |   SLICEL                                   |  40816 |           |
>> |
>> |   SLICEM                                   |  26062 |           |
>> |
>>
>> On Thu, Feb 24, 2022 at 9:25 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Thanks for the suggestions Wade. I will first try the low-hanging fruit
>>> of using the 300MHz DRAM clock.  Fingers crossed!
>>> Rob
>>>
>>> On Thu, Feb 24, 2022 at 6:43 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> RFNoC doesn't support generating user clocks for you yet (the range
>>>> value is not currently used). You could use the `dram` clock on N310 and
>>>> connect that to the `ce` inputs of your blocks. That should be about 300
>>>> MHz. The `rfnoc_chdr` clock is 200 MHz on N310.
>>>>
>>>> If it won't close timing with the dram clock, and you want something
>>>> slower, then you can modify the HDL to add the clock you want. Take a look
>>>> at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block
>>>> to add a clock closer to 260 MHz. You'd then have to route that clock into
>>>> n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml for
>>>> the rfnoc_image_builder to generate code to use it. Adding custom clocks is
>>>> a pretty manual process at the moment.
>>>>
>>>> Wade
>>>>
>>>> On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Hi,
>>>>> I have a signal processing block that includes a zero-padded FFT (50%
>>>>> zeros) that I built for the N310.  Because of the throttling that occurs
>>>>> during insertion of zeros, I expect that my FFT will need to be clocked at
>>>>> a bit more than twice the max sample rate. So, since I want to operate the
>>>>> N310 at the highest sample rate of 125 MS/s, it seems that my FFT will need
>>>>> to be clocked >= 260 MHz.  I'm wondering how to do it.
>>>>>
>>>>> I've looked at the RFNoC specification and my block is already set up
>>>>> to use the "CE" clock for both control & data. In the rfnoc spec, it
>>>>> mentions that I can enter a "range" for my clock in the block definition
>>>>> yaml. But, I also see that in the end, the top N310 yaml will require me to
>>>>> map a _device clock to my block's CE clock port.
>>>>>
>>>>> It's not clear to me how this works. Does it help to provide a range
>>>>> in the block definition yaml? Or, perhaps it is even necessary?  How do I
>>>>> specify in the top N310 yaml which device clock will map to my blocks CE
>>>>> clock port?  It seems to me that I am missing a step (defining a clock
>>>>> somewhere?).
>>>>>
>>>>> I am pretty much a novice, so I expect that this is the cause of my
>>>>> confusion. I am even struggling to figure out what the current clock rates
>>>>> are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
>>>>> would be appreciated.
>>>>> Rob
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--00000000000095a52905d91a0048
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I looked at the generated DDC/DUC code again and that=
 looks like a typo in the YAML. It should really be `2**MTU`, which is 1024=
, instead of just `MTU` (which is 10). So if you want a larger buffer on yo=
ur block, try 2**MTU or some other power of 2.</div><div>=C2=A0<br></div><d=
iv>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sat, Feb 26, 2022 at 5:01 PM Wade Fife &lt;<a href=3D"m=
ailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Regardi=
ng the overflows, that&#39;s the kind of thing I would simulate to understa=
nd what&#39;s happening. My guess is the=C2=A0zero insertion is blocking th=
e flow of data, and the radio overflows because of that. Like you said, a b=
igger buffer should help.</div><div><br></div><div>Hmm, I was just glancing=
 at the code generated by the RFNoC image builder and the way it&#39;s sett=
ing the buffers doesn&#39;t look right, so perhaps you&#39;re not getting t=
he buffering you expect. Let me look into that and get=C2=A0back to you.</d=
iv><div><br></div><div>As for fitting, I would start by removing everything=
 you don&#39;t need from the YAML description. Do you need all 4 radio chan=
nels? Do you need RX and TX? Do you need 4 channels of replay? Do you need =
the=C2=A0DDC and DUC (if you only want to run at the master clock rate then=
 you don&#39;t). Strip out all the blocks you don&#39;t need and all their =
stream endpoints. If it still doesn&#39;t fit, then I would look at reducin=
g the endpoint buffer sizes. The default images usually make them as large =
as we could fit, but you might be able to get away with smaller buffers, wh=
ich really only affects TX streaming performance.</div><div><br></div><div>=
Wade</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 25, 2022 at 4:19 PM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr">I was able to build successfully wi=
th the &#39;dram&#39; clock as the &#39;ce&#39; clock for my=C2=A0rfnoc blo=
ck. But, I didn&#39;t get the performance I was expecting. With my rfnoc gr=
aph of &quot;Radio-&gt;DDC-&gt;custom-zero-padded-fft-block&quot;, the Radi=
o had overflows when running at 125e6 but worked well when running 62.5e6.=
=C2=A0<div><br></div><div>My current thought is that maybe I don&#39;t have=
 enough input buffering in my custom rfnoc block.=C2=A0 I initially had my =
payload input and output buffer sizes (defined in the block def yaml) set t=
o &#39;MTU&#39; which is how the DDC block does it.=C2=A0 But, when my buil=
d failed (attempting to add 4 of my custom blocks), I changed this from &#3=
9;MTU&#39; to &#39;32&#39;. Turns out that this didn&#39;t help my build su=
cceed, but I did get a successful=C2=A0build after removing all Replay bloc=
ks / SEPs. So I am now trying to re-build with the &#39;MTU&#39; setting wi=
th the hope that the increased=C2=A0buffering will allow me to run at 125e6=
 sample rate.=C2=A0</div><div><br></div><div>But, apart from more buffering=
, is there perhaps a different explanation why my custom FFT block clocked =
at 300 MHz (with 50% insertion of zeros) is not keeping up?</div><div><br><=
/div><div>On a semi-related topic, I&#39;m wondering if anyone has suggesti=
ons regarding my build failures.=C2=A0 The build error indicates that I nee=
ded more slices than are available (out of 69350 total, 47879 are available=
,=C2=A0but I needed 49414).=C2=A0 If I look at the build report for the def=
ault Ettus N310 XG image (see snippet below), it looks like there is not mu=
ch availability for extra rfnoc blocks (96.44% util%). And, in my experienc=
e, this is where my builds usually fail.=C2=A0 I am wondering what I can do=
 in the design of my custom blocks (or in the build parameters of the N310)=
 to achieve successful=C2=A0builds - specifically related to this slice uti=
lization.=C2=A0 Any suggestions welcome.</div><div>Thanks.</div><div>Rob<br=
><div><br></div><div><font face=3D"monospace">// From build report of defau=
lt Ettus N310 XG image</font></div><div><font face=3D"monospace">2. Slice L=
ogic Distribution<br>---------------------------<br><br>+------------------=
--------------------------+--------+-----------+-------+<br>| =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Site Type =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0Used =C2=A0| Available | =
Util% |<br>+--------------------------------------------+--------+---------=
--+-------+<br>| Slice =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| =C2=A066878 | =C2=A0 =C2=A0 69350 | <span style=3D"background-color=
:rgb(255,255,0)">96.44 </span>|<br>| =C2=A0 SLICEL =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A040816 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 |<br>| =C2=A0 SLICEM =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | =C2=A026062 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 |</font><br></div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 24, 2022 at 9:25 PM Rob K=
ossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Thanks for the suggestions Wade. I will first try the =
low-hanging fruit of using the 300MHz DRAM clock.=C2=A0 Fingers crossed!<di=
v>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Feb 24, 2022 at 6:43 PM Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>Hi Rob,</div><div><br></div><div>RFNoC doesn&#39;t support generating =
user clocks for you yet (the range value is not currently used). You could =
use the `dram` clock on N310 and connect that to the `ce` inputs of your bl=
ocks. That should be about 300 MHz. The `rfnoc_chdr` clock is 200 MHz on N3=
10.</div><div><br></div><div>If it won&#39;t close timing with the dram clo=
ck, and you want something slower, then you can modify the HDL to add the c=
lock you want. Take a look at n3xx_clocking.v. You could probably modify th=
e misc_clock_gen IP block to add a clock closer to 260 MHz. You&#39;d then =
have to route that clock into n3xx_core then rfnoc_image_core, and add the =
new clock to n310_bsp.yml for the rfnoc_image_builder to generate code to u=
se it. Adding custom clocks is a pretty manual process at the moment.<br></=
div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022 at 10:15 PM Rob =
Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@n=
d.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi,<div>I have a signal processing block that include=
s a zero-padded FFT (50% zeros) that I built for the N310.=C2=A0 Because of=
 the=C2=A0throttling that=C2=A0occurs during insertion of zeros, I expect t=
hat my FFT will need to be clocked at a bit more than twice the max sample =
rate. So, since I want to operate=C2=A0the N310 at the highest sample rate =
of 125 MS/s, it seems that my FFT will need to be clocked &gt;=3D 260 MHz.=
=C2=A0 I&#39;m wondering how to do it.</div><div><br></div><div>I&#39;ve lo=
oked at the RFNoC specification and my block is already set up to use the &=
quot;CE&quot; clock for both control &amp; data. In the rfnoc spec, it ment=
ions that I can enter a &quot;range&quot; for my clock in the block definit=
ion yaml. But, I also see that in the end, the top N310 yaml will require m=
e to map a _device clock to my block&#39;s CE clock port.=C2=A0</div><div><=
br></div><div>It&#39;s not clear to me how this works. Does it help to prov=
ide a range in the block definition yaml? Or, perhaps it is even necessary?=
=C2=A0 How do I specify in the top N310 yaml which device clock will map to=
 my blocks CE clock port?=C2=A0 It seems to me that I am missing a step (de=
fining a clock somewhere?).=C2=A0</div><div><br></div><div>I am pretty much=
 a novice, so I expect that this is the cause of my confusion. I am even st=
ruggling to figure out what the current clock rates are (rfnoc_ctrl, rfnoc_=
chdr, ce, etc) and where they are defined. Any help would be appreciated.=
=C2=A0=C2=A0</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--00000000000095a52905d91a0048--

--===============2375370413213816372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2375370413213816372==--
