Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8E94C516C
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 23:20:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BAF1638519A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 17:20:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Hd4v19tN";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A74C3848E1
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 17:19:05 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id v186so8591516ybg.1
        for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 14:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i77xIL19RG5RsC+3DeWxEtDc2mhO0QjM0gvr7WjXiOU=;
        b=Hd4v19tNQWtdkNnSGbAmJ8TiUJuhQNIRwkdt8WGhiVfRJqzHMqXJvTTqlpS7K8eufx
         DsDBxw3S7xIvsHNoACYjufRlpU6LydHjwdYUGk4FbUizWwiDc2bF0TBaB2DKmAr1wkv+
         1rLtgaOTTrc1Ajl9yYxHL0qU3YYblOXRZtPhgoYCvAQfkXPh0ShHnam5I6LoHplPxhp3
         3jbBQfYyBzPw2NX+KhQZvPj4jUF+qMyhMKUFs5r9bVrhDNLpPTGnKeAlpzzsM0sTVwqz
         OSOdMARnCccAuHYgFwIpNHIYkz3+1QFgn1kegCjGoP6/wIZCBg+2WmLDYcW6scDlGUSG
         3zLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i77xIL19RG5RsC+3DeWxEtDc2mhO0QjM0gvr7WjXiOU=;
        b=1dDAnsRsI1Cn7cN1QRbuMeqanrHBbIh9QYnrqIzwBHoqTqKQZixh2Z0J/oUcshxe2z
         297xuOSjrSuMOvTYX6odpdFT0X3quCPa+GRCaGCSZdY5ZxxojnnXzyI4wv2tGlYVeiDP
         qT4D03vIKVqpAQq6uK+o+cC3cVSL6OC1Jf2MVfR+mZdo5bEneEt2N6Er7m9SsvGZfJWE
         aDpB14vHDexuGosKImt+pttBkrhS4FCcs9T11QMPpOmn3AJMjqDudLQpoXfOc0ETqhOr
         j/eSRMBmELrdqTJg0dIF9BZMohnd4Zf/592xbbfk91etbVjZV0dZ6KbyLU77o7oYAOWJ
         hdXQ==
X-Gm-Message-State: AOAM530oLTiXtlENAuGRixFLPnHFiB9n/7+/tWfJnl8sst367OtUloZF
	7tg40N0jqZtLHnvqFUnvXDD/hIHTB2wqucgOf71JlA==
X-Google-Smtp-Source: ABdhPJwmJLVbe/mU/Pb8z4sljOt6kgdYQ+gHQBvDc47Eo9pI2rHOYbNpsJFzgFEyyjreMjusoaUwH1OAspfxVdgDolM=
X-Received: by 2002:a25:df41:0:b0:615:7917:b4cc with SMTP id
 w62-20020a25df41000000b006157917b4ccmr9674967ybg.563.1645827544699; Fri, 25
 Feb 2022 14:19:04 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
 <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com> <CAB__hTQfTme1csXj=aVNpgu3tyZW4o6=xQZwUG8ZQacAULDncA@mail.gmail.com>
In-Reply-To: <CAB__hTQfTme1csXj=aVNpgu3tyZW4o6=xQZwUG8ZQacAULDncA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 25 Feb 2022 17:18:53 -0500
Message-ID: <CAB__hTQ6vj_MsV8M8rcGDKJD==J6+fFvdEVcDurPy_Cbd7_LCg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: KZEWYNFKHIQJ2UPWMRATKNHDKT7BRS6R
X-Message-ID-Hash: KZEWYNFKHIQJ2UPWMRATKNHDKT7BRS6R
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZEWYNFKHIQJ2UPWMRATKNHDKT7BRS6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2335288487992972943=="

--===============2335288487992972943==
Content-Type: multipart/alternative; boundary="0000000000002a0dce05d8df16aa"

--0000000000002a0dce05d8df16aa
Content-Type: text/plain; charset="UTF-8"

I was able to build successfully with the 'dram' clock as the 'ce' clock
for my rfnoc block. But, I didn't get the performance I was expecting. With
my rfnoc graph of "Radio->DDC->custom-zero-padded-fft-block", the Radio had
overflows when running at 125e6 but worked well when running 62.5e6.

My current thought is that maybe I don't have enough input buffering in my
custom rfnoc block.  I initially had my payload input and output buffer
sizes (defined in the block def yaml) set to 'MTU' which is how the DDC
block does it.  But, when my build failed (attempting to add 4 of my custom
blocks), I changed this from 'MTU' to '32'. Turns out that this didn't help
my build succeed, but I did get a successful build after removing all
Replay blocks / SEPs. So I am now trying to re-build with the 'MTU' setting
with the hope that the increased buffering will allow me to run at 125e6
sample rate.

But, apart from more buffering, is there perhaps a different explanation
why my custom FFT block clocked at 300 MHz (with 50% insertion of zeros) is
not keeping up?

On a semi-related topic, I'm wondering if anyone has suggestions regarding
my build failures.  The build error indicates that I needed more slices
than are available (out of 69350 total, 47879 are available, but I needed
49414).  If I look at the build report for the default Ettus N310 XG image
(see snippet below), it looks like there is not much availability for extra
rfnoc blocks (96.44% util%). And, in my experience, this is where my builds
usually fail.  I am wondering what I can do in the design of my custom
blocks (or in the build parameters of the N310) to achieve
successful builds - specifically related to this slice utilization.  Any
suggestions welcome.
Thanks.
Rob

// From build report of default Ettus N310 XG image
2. Slice Logic Distribution
---------------------------

+--------------------------------------------+--------+-----------+-------+
|                  Site Type                 |  Used  | Available | Util% |
+--------------------------------------------+--------+-----------+-------+
| Slice                                      |  66878 |     69350 | 96.44 |
|   SLICEL                                   |  40816 |           |       |
|   SLICEM                                   |  26062 |           |       |

On Thu, Feb 24, 2022 at 9:25 PM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks for the suggestions Wade. I will first try the low-hanging fruit of
> using the 300MHz DRAM clock.  Fingers crossed!
> Rob
>
> On Thu, Feb 24, 2022 at 6:43 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Hi Rob,
>>
>> RFNoC doesn't support generating user clocks for you yet (the range value
>> is not currently used). You could use the `dram` clock on N310 and connect
>> that to the `ce` inputs of your blocks. That should be about 300 MHz. The
>> `rfnoc_chdr` clock is 200 MHz on N310.
>>
>> If it won't close timing with the dram clock, and you want something
>> slower, then you can modify the HDL to add the clock you want. Take a look
>> at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block
>> to add a clock closer to 260 MHz. You'd then have to route that clock into
>> n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml for
>> the rfnoc_image_builder to generate code to use it. Adding custom clocks is
>> a pretty manual process at the moment.
>>
>> Wade
>>
>> On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi,
>>> I have a signal processing block that includes a zero-padded FFT (50%
>>> zeros) that I built for the N310.  Because of the throttling that occurs
>>> during insertion of zeros, I expect that my FFT will need to be clocked at
>>> a bit more than twice the max sample rate. So, since I want to operate the
>>> N310 at the highest sample rate of 125 MS/s, it seems that my FFT will need
>>> to be clocked >= 260 MHz.  I'm wondering how to do it.
>>>
>>> I've looked at the RFNoC specification and my block is already set up to
>>> use the "CE" clock for both control & data. In the rfnoc spec, it mentions
>>> that I can enter a "range" for my clock in the block definition yaml. But,
>>> I also see that in the end, the top N310 yaml will require me to map a
>>> _device clock to my block's CE clock port.
>>>
>>> It's not clear to me how this works. Does it help to provide a range in
>>> the block definition yaml? Or, perhaps it is even necessary?  How do I
>>> specify in the top N310 yaml which device clock will map to my blocks CE
>>> clock port?  It seems to me that I am missing a step (defining a clock
>>> somewhere?).
>>>
>>> I am pretty much a novice, so I expect that this is the cause of my
>>> confusion. I am even struggling to figure out what the current clock rates
>>> are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
>>> would be appreciated.
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000002a0dce05d8df16aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I was able to build successfully with the=
 &#39;dram&#39; clock as the &#39;ce&#39; clock for my=C2=A0rfnoc block. Bu=
t, I didn&#39;t get the performance I was expecting. With my rfnoc graph of=
 &quot;Radio-&gt;DDC-&gt;custom-zero-padded-fft-block&quot;, the Radio had =
overflows when running at 125e6 but worked well when running 62.5e6.=C2=A0<=
div><br></div><div>My current thought is that maybe I don&#39;t have enough=
 input buffering in my custom rfnoc block.=C2=A0 I initially had my payload=
 input and output buffer sizes (defined in the block def yaml) set to &#39;=
MTU&#39; which is how the DDC block does it.=C2=A0 But, when my build faile=
d (attempting to add 4 of my custom blocks), I changed this from &#39;MTU&#=
39; to &#39;32&#39;. Turns out that this didn&#39;t help my build succeed, =
but I did get a successful=C2=A0build after removing all Replay blocks / SE=
Ps. So I am now trying to re-build with the &#39;MTU&#39; setting with the =
hope that the increased=C2=A0buffering will allow me to run at 125e6 sample=
 rate.=C2=A0</div><div><br></div><div>But, apart from more buffering, is th=
ere perhaps a different explanation why my custom FFT block clocked at 300 =
MHz (with 50% insertion of zeros) is not keeping up?</div><div><br></div><d=
iv>On a semi-related topic, I&#39;m wondering if anyone has suggestions reg=
arding my build failures.=C2=A0 The build error indicates that I needed mor=
e slices than are available (out of 69350 total, 47879 are available,=C2=A0=
but I needed 49414).=C2=A0 If I look at the build report for the default Et=
tus N310 XG image (see snippet below), it looks like there is not much avai=
lability for extra rfnoc blocks (96.44% util%). And, in my experience, this=
 is where my builds usually fail.=C2=A0 I am wondering what I can do in the=
 design of my custom blocks (or in the build parameters of the N310) to ach=
ieve successful=C2=A0builds - specifically related to this slice utilizatio=
n.=C2=A0 Any suggestions welcome.</div><div>Thanks.</div><div>Rob<br><div><=
br></div><div><font face=3D"monospace">// From build report of default Ettu=
s N310 XG image</font></div><div><font face=3D"monospace">2. Slice Logic Di=
stribution<br>---------------------------<br><br>+-------------------------=
-------------------+--------+-----------+-------+<br>| =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Site Type =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0Used =C2=A0| Available | Util% |=
<br>+--------------------------------------------+--------+-----------+----=
---+<br>| Slice =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =
=C2=A066878 | =C2=A0 =C2=A0 69350 | <span style=3D"background-color:rgb(255=
,255,0)">96.44 </span>|<br>| =C2=A0 SLICEL =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | =C2=A040816 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 |<br>| =C2=A0 SLICEM =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A026062 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 |</font><br></div></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Feb 24, 2022 at 9:25 PM Rob Kossler =
&lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Than=
ks for the suggestions Wade. I will first try the low-hanging fruit of usin=
g the 300MHz DRAM clock.=C2=A0 Fingers crossed!<div>Rob</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 24=
, 2022 at 6:43 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" targ=
et=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><b=
r></div><div>RFNoC doesn&#39;t support generating user clocks for you yet (=
the range value is not currently used). You could use the `dram` clock on N=
310 and connect that to the `ce` inputs of your blocks. That should be abou=
t 300 MHz. The `rfnoc_chdr` clock is 200 MHz on N310.</div><div><br></div><=
div>If it won&#39;t close timing with the dram clock, and you want somethin=
g slower, then you can modify the HDL to add the clock you want. Take a loo=
k at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block=
 to add a clock closer to 260 MHz. You&#39;d then have to route that clock =
into n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml=
 for the rfnoc_image_builder to generate code to use it. Adding custom cloc=
ks is a pretty manual process at the moment.<br></div><div><br></div><div>W=
ade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,=
<div>I have a signal processing block that includes a zero-padded FFT (50% =
zeros) that I built for the N310.=C2=A0 Because of the=C2=A0throttling that=
=C2=A0occurs during insertion of zeros, I expect that my FFT will need to b=
e clocked at a bit more than twice the max sample rate. So, since I want to=
 operate=C2=A0the N310 at the highest sample rate of 125 MS/s, it seems tha=
t my FFT will need to be clocked &gt;=3D 260 MHz.=C2=A0 I&#39;m wondering h=
ow to do it.</div><div><br></div><div>I&#39;ve looked at the RFNoC specific=
ation and my block is already set up to use the &quot;CE&quot; clock for bo=
th control &amp; data. In the rfnoc spec, it mentions that I can enter a &q=
uot;range&quot; for my clock in the block definition yaml. But, I also see =
that in the end, the top N310 yaml will require me to map a _device clock t=
o my block&#39;s CE clock port.=C2=A0</div><div><br></div><div>It&#39;s not=
 clear to me how this works. Does it help to provide a range in the block d=
efinition yaml? Or, perhaps it is even necessary?=C2=A0 How do I specify in=
 the top N310 yaml which device clock will map to my blocks CE clock port?=
=C2=A0 It seems to me that I am missing a step (defining a clock somewhere?=
).=C2=A0</div><div><br></div><div>I am pretty much a novice, so I expect th=
at this is the cause of my confusion. I am even struggling to figure out wh=
at the current clock rates are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where =
they are defined. Any help would be appreciated.=C2=A0=C2=A0</div><div>Rob<=
/div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--0000000000002a0dce05d8df16aa--

--===============2335288487992972943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2335288487992972943==--
