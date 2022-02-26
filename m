Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1654C589D
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 00:02:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C20FC38519E
	for <lists+usrp-users@lfdr.de>; Sat, 26 Feb 2022 18:02:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="09+OiFIV";
	dkim-atps=neutral
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C5E5385191
	for <usrp-users@lists.ettus.com>; Sat, 26 Feb 2022 18:01:26 -0500 (EST)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-2d07ae0b1c0so70823027b3.2
        for <usrp-users@lists.ettus.com>; Sat, 26 Feb 2022 15:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4+d28kRDhdR2LA7StkjV5zy5G6DXJBMFMtOgLu3orkA=;
        b=09+OiFIVDHrL5voEXyy/u9jLaakzCAySDwty1UQ9yL7fvAc3eetpm7MbD1m5D/svgB
         bmTgixoQ2/VmclePV+iPbPX6YCeZJuWvndUyyvbf7jWlBFCqEYJl4vlHLdtAnAg5MZjj
         SlDKc/wMmJiyiR7skatK6Y6fZWZmpHch0xvx9I6KfwezJYufQRcNBfErlPbteXAON1K0
         LsrC1c6uBHzM0KbXzp1HVDShIThnKHQpJ0Ei7wXlDihPhrE42/xkKuLo+twERLyva8rq
         STwBQ5+ATWA9dIYTHfL9/r/wfGnu8Opx4Zo82mzAAv9iY1s81dLkFNhzLYLn6dnHGUp5
         rggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4+d28kRDhdR2LA7StkjV5zy5G6DXJBMFMtOgLu3orkA=;
        b=NOBOtbgEEZorLS1RATKxqP+lRcc+xljnpw7C68JAC1QHBbPyP8D0hRqBh1RBcILCZe
         MY9H0oUK2FOdZWLEO5M4w/4mti9Gf34qW55RrIkA5LPMMJaTTbB829lN5fPzgo1mQD9k
         D4kWg2qd1nS0/owKeKZzYHABoP62NvCGqI23+Fhsh5+1WdjXFZJ988b/CKLZ7289yUz3
         yyDwYD+QZc1wfQlMC9c5+0y4ljAQvBzUUfiiC8ACo02Ct6MlgEYthqmTQAK9n5+2XO3j
         l74ELPpVgypR2Z55WmplNyDytfOjBfgTuYNecuquPHmfXV2YGksn2TUY3Z/CnhYsV3JX
         YYVA==
X-Gm-Message-State: AOAM530Jl3HtCi0vdlF6/i57zVKPZlMvRcHmK/v6S5Yt+3PQr1FRAwGP
	xXOxha0wb2s+oHwaUiQGQR6OVc1T1SoNqcagHE71xivE8MT38w==
X-Google-Smtp-Source: ABdhPJyy5DdJ8eNAaAOWyWgPSYxaNbqfiZphNu7dYooR6lH78SeaQXEsz62Jpnz/kxqDjA6YpvVzQOW+wIOlHVm8Gwc=
X-Received: by 2002:a0d:fcc4:0:b0:2d6:6912:1afa with SMTP id
 m187-20020a0dfcc4000000b002d669121afamr14166531ywf.61.1645916486028; Sat, 26
 Feb 2022 15:01:26 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
 <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com>
 <CAB__hTQfTme1csXj=aVNpgu3tyZW4o6=xQZwUG8ZQacAULDncA@mail.gmail.com> <CAB__hTQ6vj_MsV8M8rcGDKJD==J6+fFvdEVcDurPy_Cbd7_LCg@mail.gmail.com>
In-Reply-To: <CAB__hTQ6vj_MsV8M8rcGDKJD==J6+fFvdEVcDurPy_Cbd7_LCg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 26 Feb 2022 17:01:08 -0600
Message-ID: <CAFche=hcVKo+Mz3mCHT8pDa9-LGYHjkBRdvDcux-c7UbVpVOkA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: QRMFPQYZ427H7BEP2ZB7AAND264URJLY
X-Message-ID-Hash: QRMFPQYZ427H7BEP2ZB7AAND264URJLY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QRMFPQYZ427H7BEP2ZB7AAND264URJLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6000941487872595107=="

--===============6000941487872595107==
Content-Type: multipart/alternative; boundary="0000000000007ae05705d8f3cbeb"

--0000000000007ae05705d8f3cbeb
Content-Type: text/plain; charset="UTF-8"

Regarding the overflows, that's the kind of thing I would simulate to
understand what's happening. My guess is the zero insertion is blocking the
flow of data, and the radio overflows because of that. Like you said, a
bigger buffer should help.

Hmm, I was just glancing at the code generated by the RFNoC image builder
and the way it's setting the buffers doesn't look right, so perhaps you're
not getting the buffering you expect. Let me look into that and get back to
you.

As for fitting, I would start by removing everything you don't need from
the YAML description. Do you need all 4 radio channels? Do you need RX and
TX? Do you need 4 channels of replay? Do you need the DDC and DUC (if you
only want to run at the master clock rate then you don't). Strip out all
the blocks you don't need and all their stream endpoints. If it still
doesn't fit, then I would look at reducing the endpoint buffer sizes. The
default images usually make them as large as we could fit, but you might be
able to get away with smaller buffers, which really only affects TX
streaming performance.

Wade



On Fri, Feb 25, 2022 at 4:19 PM Rob Kossler <rkossler@nd.edu> wrote:

> I was able to build successfully with the 'dram' clock as the 'ce' clock
> for my rfnoc block. But, I didn't get the performance I was expecting. With
> my rfnoc graph of "Radio->DDC->custom-zero-padded-fft-block", the Radio had
> overflows when running at 125e6 but worked well when running 62.5e6.
>
> My current thought is that maybe I don't have enough input buffering in my
> custom rfnoc block.  I initially had my payload input and output buffer
> sizes (defined in the block def yaml) set to 'MTU' which is how the DDC
> block does it.  But, when my build failed (attempting to add 4 of my custom
> blocks), I changed this from 'MTU' to '32'. Turns out that this didn't help
> my build succeed, but I did get a successful build after removing all
> Replay blocks / SEPs. So I am now trying to re-build with the 'MTU' setting
> with the hope that the increased buffering will allow me to run at 125e6
> sample rate.
>
> But, apart from more buffering, is there perhaps a different explanation
> why my custom FFT block clocked at 300 MHz (with 50% insertion of zeros) is
> not keeping up?
>
> On a semi-related topic, I'm wondering if anyone has suggestions regarding
> my build failures.  The build error indicates that I needed more slices
> than are available (out of 69350 total, 47879 are available, but I needed
> 49414).  If I look at the build report for the default Ettus N310 XG image
> (see snippet below), it looks like there is not much availability for extra
> rfnoc blocks (96.44% util%). And, in my experience, this is where my builds
> usually fail.  I am wondering what I can do in the design of my custom
> blocks (or in the build parameters of the N310) to achieve
> successful builds - specifically related to this slice utilization.  Any
> suggestions welcome.
> Thanks.
> Rob
>
> // From build report of default Ettus N310 XG image
> 2. Slice Logic Distribution
> ---------------------------
>
> +--------------------------------------------+--------+-----------+-------+
> |                  Site Type                 |  Used  | Available | Util% |
> +--------------------------------------------+--------+-----------+-------+
> | Slice                                      |  66878 |     69350 | 96.44
> |
> |   SLICEL                                   |  40816 |           |       |
> |   SLICEM                                   |  26062 |           |       |
>
> On Thu, Feb 24, 2022 at 9:25 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Thanks for the suggestions Wade. I will first try the low-hanging fruit
>> of using the 300MHz DRAM clock.  Fingers crossed!
>> Rob
>>
>> On Thu, Feb 24, 2022 at 6:43 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Hi Rob,
>>>
>>> RFNoC doesn't support generating user clocks for you yet (the range
>>> value is not currently used). You could use the `dram` clock on N310 and
>>> connect that to the `ce` inputs of your blocks. That should be about 300
>>> MHz. The `rfnoc_chdr` clock is 200 MHz on N310.
>>>
>>> If it won't close timing with the dram clock, and you want something
>>> slower, then you can modify the HDL to add the clock you want. Take a look
>>> at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block
>>> to add a clock closer to 260 MHz. You'd then have to route that clock into
>>> n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml for
>>> the rfnoc_image_builder to generate code to use it. Adding custom clocks is
>>> a pretty manual process at the moment.
>>>
>>> Wade
>>>
>>> On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi,
>>>> I have a signal processing block that includes a zero-padded FFT (50%
>>>> zeros) that I built for the N310.  Because of the throttling that occurs
>>>> during insertion of zeros, I expect that my FFT will need to be clocked at
>>>> a bit more than twice the max sample rate. So, since I want to operate the
>>>> N310 at the highest sample rate of 125 MS/s, it seems that my FFT will need
>>>> to be clocked >= 260 MHz.  I'm wondering how to do it.
>>>>
>>>> I've looked at the RFNoC specification and my block is already set up
>>>> to use the "CE" clock for both control & data. In the rfnoc spec, it
>>>> mentions that I can enter a "range" for my clock in the block definition
>>>> yaml. But, I also see that in the end, the top N310 yaml will require me to
>>>> map a _device clock to my block's CE clock port.
>>>>
>>>> It's not clear to me how this works. Does it help to provide a range in
>>>> the block definition yaml? Or, perhaps it is even necessary?  How do I
>>>> specify in the top N310 yaml which device clock will map to my blocks CE
>>>> clock port?  It seems to me that I am missing a step (defining a clock
>>>> somewhere?).
>>>>
>>>> I am pretty much a novice, so I expect that this is the cause of my
>>>> confusion. I am even struggling to figure out what the current clock rates
>>>> are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
>>>> would be appreciated.
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--0000000000007ae05705d8f3cbeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Regarding the overflows, that&#39;s the kind of thing=
 I would simulate to understand what&#39;s happening. My guess is the=C2=A0=
zero insertion is blocking the flow of data, and the radio overflows becaus=
e of that. Like you said, a bigger buffer should help.</div><div><br></div>=
<div>Hmm, I was just glancing at the code generated by the RFNoC image buil=
der and the way it&#39;s setting the buffers doesn&#39;t look right, so per=
haps you&#39;re not getting the buffering you expect. Let me look into that=
 and get=C2=A0back to you.</div><div><br></div><div>As for fitting, I would=
 start by removing everything you don&#39;t need from the YAML description.=
 Do you need all 4 radio channels? Do you need RX and TX? Do you need 4 cha=
nnels of replay? Do you need the=C2=A0DDC and DUC (if you only want to run =
at the master clock rate then you don&#39;t). Strip out all the blocks you =
don&#39;t need and all their stream endpoints. If it still doesn&#39;t fit,=
 then I would look at reducing the endpoint buffer sizes. The default image=
s usually make them as large as we could fit, but you might be able to get =
away with smaller buffers, which really only affects TX streaming performan=
ce.</div><div><br></div><div>Wade</div><div><br></div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Feb 25, 2022 at 4:19 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu=
">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">I was able to build succ=
essfully with the &#39;dram&#39; clock as the &#39;ce&#39; clock for my=C2=
=A0rfnoc block. But, I didn&#39;t get the performance I was expecting. With=
 my rfnoc graph of &quot;Radio-&gt;DDC-&gt;custom-zero-padded-fft-block&quo=
t;, the Radio had overflows when running at 125e6 but worked well when runn=
ing 62.5e6.=C2=A0<div><br></div><div>My current thought is that maybe I don=
&#39;t have enough input buffering in my custom rfnoc block.=C2=A0 I initia=
lly had my payload input and output buffer sizes (defined in the block def =
yaml) set to &#39;MTU&#39; which is how the DDC block does it.=C2=A0 But, w=
hen my build failed (attempting to add 4 of my custom blocks), I changed th=
is from &#39;MTU&#39; to &#39;32&#39;. Turns out that this didn&#39;t help =
my build succeed, but I did get a successful=C2=A0build after removing all =
Replay blocks / SEPs. So I am now trying to re-build with the &#39;MTU&#39;=
 setting with the hope that the increased=C2=A0buffering will allow me to r=
un at 125e6 sample rate.=C2=A0</div><div><br></div><div>But, apart from mor=
e buffering, is there perhaps a different explanation why my custom FFT blo=
ck clocked at 300 MHz (with 50% insertion of zeros) is not keeping up?</div=
><div><br></div><div>On a semi-related topic, I&#39;m wondering if anyone h=
as suggestions regarding my build failures.=C2=A0 The build error indicates=
 that I needed more slices than are available (out of 69350 total, 47879 ar=
e available,=C2=A0but I needed 49414).=C2=A0 If I look at the build report =
for the default Ettus N310 XG image (see snippet below), it looks like ther=
e is not much availability for extra rfnoc blocks (96.44% util%). And, in m=
y experience, this is where my builds usually fail.=C2=A0 I am wondering wh=
at I can do in the design of my custom blocks (or in the build parameters o=
f the N310) to achieve successful=C2=A0builds - specifically related to thi=
s slice utilization.=C2=A0 Any suggestions welcome.</div><div>Thanks.</div>=
<div>Rob<br><div><br></div><div><font face=3D"monospace">// From build repo=
rt of default Ettus N310 XG image</font></div><div><font face=3D"monospace"=
>2. Slice Logic Distribution<br>---------------------------<br><br>+-------=
-------------------------------------+--------+-----------+-------+<br>| =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Site Type =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0Used =C2=A0| A=
vailable | Util% |<br>+--------------------------------------------+-------=
-+-----------+-------+<br>| Slice =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A066878 | =C2=A0 =C2=A0 69350 | <span style=3D"backg=
round-color:rgb(255,255,0)">96.44 </span>|<br>| =C2=A0 SLICEL =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A040816 | =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 |<br>| =C2=A0 SLICEM =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A026062 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 |</font><br></div></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 24, 2022 at 9:2=
5 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">r=
kossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Thanks for the suggestions Wade. I will firs=
t try the low-hanging fruit of using the 300MHz DRAM clock.=C2=A0 Fingers c=
rossed!<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Feb 24, 2022 at 6:43 PM Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>RFNoC doesn&#39;t support =
generating user clocks for you yet (the range value is not currently used).=
 You could use the `dram` clock on N310 and connect that to the `ce` inputs=
 of your blocks. That should be about 300 MHz. The `rfnoc_chdr` clock is 20=
0 MHz on N310.</div><div><br></div><div>If it won&#39;t close timing with t=
he dram clock, and you want something slower, then you can modify the HDL t=
o add the clock you want. Take a look at n3xx_clocking.v. You could probabl=
y modify the misc_clock_gen IP block to add a clock closer to 260 MHz. You&=
#39;d then have to route that clock into n3xx_core then rfnoc_image_core, a=
nd add the new clock to n310_bsp.yml for the rfnoc_image_builder to generat=
e code to use it. Adding custom clocks is a pretty manual process at the mo=
ment.<br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022 at 10=
:15 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi,<div>I have a signal processing block t=
hat includes a zero-padded FFT (50% zeros) that I built for the N310.=C2=A0=
 Because of the=C2=A0throttling that=C2=A0occurs during insertion of zeros,=
 I expect that my FFT will need to be clocked at a bit more than twice the =
max sample rate. So, since I want to operate=C2=A0the N310 at the highest s=
ample rate of 125 MS/s, it seems that my FFT will need to be clocked &gt;=
=3D 260 MHz.=C2=A0 I&#39;m wondering how to do it.</div><div><br></div><div=
>I&#39;ve looked at the RFNoC specification and my block is already set up =
to use the &quot;CE&quot; clock for both control &amp; data. In the rfnoc s=
pec, it mentions that I can enter a &quot;range&quot; for my clock in the b=
lock definition yaml. But, I also see that in the end, the top N310 yaml wi=
ll require me to map a _device clock to my block&#39;s CE clock port.=C2=A0=
</div><div><br></div><div>It&#39;s not clear to me how this works. Does it =
help to provide a range in the block definition yaml? Or, perhaps it is eve=
n necessary?=C2=A0 How do I specify in the top N310 yaml which device clock=
 will map to my blocks CE clock port?=C2=A0 It seems to me that I am missin=
g a step (defining a clock somewhere?).=C2=A0</div><div><br></div><div>I am=
 pretty much a novice, so I expect that this is the cause of my confusion. =
I am even struggling to figure out what the current clock rates are (rfnoc_=
ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help would be ap=
preciated.=C2=A0=C2=A0</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--0000000000007ae05705d8f3cbeb--

--===============6000941487872595107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6000941487872595107==--
