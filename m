Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAAA4C3BB4
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 03:26:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C1CE3852DD
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 21:26:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="duXodwKR";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 1489638527B
	for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 21:25:17 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id e140so3129139ybh.9
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 18:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aKim1OYRlIaDxW2WyMBDSCHLfKMl0OY8H6g667dFHZ4=;
        b=duXodwKRybl2gu4pYMb1bsnvmqyJhC8opCQsFJ3zt7tWKhfZhemXJ+6iRNtMztS2ce
         6SDtriSqJQFYupJOdU9zaDIDJs3PfSXky3BDBpnlP9rtSQqoA/jn9Dd89jNox1vYRCmN
         nBdDVo2fNiLYCXg5Si2cfZprk5iPg/wndlBIvSUlsqcfyy+6p88Zy0J7YAGq9lhZB58U
         /L8msn7P9twh1q4+SlG9biFsU/Ya30G9fP74HDoZ8eStJAUXD2UxXksopjKzxYPFDBah
         kXQ2RSzjAG6yeicdDY77YifjDdpKfSeZiN1FE71gq7Sycm+UUMBzUwjYiXw3rCOVLGDp
         IwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aKim1OYRlIaDxW2WyMBDSCHLfKMl0OY8H6g667dFHZ4=;
        b=LIp7b6GdiUrxVjtUDZdXZN2wJZD1Bf5zabfMtuY+i3qzNF+thOPUQBSwA45JMnujCi
         mK1W1VPUMkgnGbyKUfSoRIJFv5zAcwE9TRu1lHgu5vDsYEgAR8OCeL6IRtiFXJU4IIrL
         PJJNeY4yHXXFhf7TaYZU76jBAtA0IY7gi3UlRBrR9yx1BTE/KHoit7VjdNsxZX9eqJnq
         9jesNESKy/ygjZy7Mpd/7EQh8SfKqRjxTwKlug/wfV5F2IMN+xgaRUjuNB4Die5k9vHt
         dnvKKwLJZZPTYq0a6Jed+r3pi1JDNZoS7l8Kx1D76IiyXo+bDX+rZjunP2nxFfld4hu0
         IjZA==
X-Gm-Message-State: AOAM533IGP4oPoE6iNohUd3giQn9G54uWlYG5GEbqpGVrCgutMzTZY++
	lMsS9tsfMEfqcbh41dkqeC5Ak9XfOKXIB8zAtY0JnAWLt2xVMg==
X-Google-Smtp-Source: ABdhPJy8IQX1PcS+LFrjntiSGQESbjsLXqZyksvlcvLzmHCqXwGHvLACWBBlNzdDPrUOo/jtmJbMSFnljMHJc/JskrM=
X-Received: by 2002:a25:90d:0:b0:619:52e6:9f9b with SMTP id
 13-20020a25090d000000b0061952e69f9bmr5401720ybj.447.1645755917226; Thu, 24
 Feb 2022 18:25:17 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
 <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com>
In-Reply-To: <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 24 Feb 2022 21:25:06 -0500
Message-ID: <CAB__hTQfTme1csXj=aVNpgu3tyZW4o6=xQZwUG8ZQacAULDncA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: NPHQNTYK6DPUBP6BXKQOL2Y4WCEPOALT
X-Message-ID-Hash: NPHQNTYK6DPUBP6BXKQOL2Y4WCEPOALT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPHQNTYK6DPUBP6BXKQOL2Y4WCEPOALT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0431736602735370152=="

--===============0431736602735370152==
Content-Type: multipart/alternative; boundary="000000000000d59fb705d8ce6879"

--000000000000d59fb705d8ce6879
Content-Type: text/plain; charset="UTF-8"

Thanks for the suggestions Wade. I will first try the low-hanging fruit of
using the 300MHz DRAM clock.  Fingers crossed!
Rob

On Thu, Feb 24, 2022 at 6:43 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Rob,
>
> RFNoC doesn't support generating user clocks for you yet (the range value
> is not currently used). You could use the `dram` clock on N310 and connect
> that to the `ce` inputs of your blocks. That should be about 300 MHz. The
> `rfnoc_chdr` clock is 200 MHz on N310.
>
> If it won't close timing with the dram clock, and you want something
> slower, then you can modify the HDL to add the clock you want. Take a look
> at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block
> to add a clock closer to 260 MHz. You'd then have to route that clock into
> n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml for
> the rfnoc_image_builder to generate code to use it. Adding custom clocks is
> a pretty manual process at the moment.
>
> Wade
>
> On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi,
>> I have a signal processing block that includes a zero-padded FFT (50%
>> zeros) that I built for the N310.  Because of the throttling that occurs
>> during insertion of zeros, I expect that my FFT will need to be clocked at
>> a bit more than twice the max sample rate. So, since I want to operate the
>> N310 at the highest sample rate of 125 MS/s, it seems that my FFT will need
>> to be clocked >= 260 MHz.  I'm wondering how to do it.
>>
>> I've looked at the RFNoC specification and my block is already set up to
>> use the "CE" clock for both control & data. In the rfnoc spec, it mentions
>> that I can enter a "range" for my clock in the block definition yaml. But,
>> I also see that in the end, the top N310 yaml will require me to map a
>> _device clock to my block's CE clock port.
>>
>> It's not clear to me how this works. Does it help to provide a range in
>> the block definition yaml? Or, perhaps it is even necessary?  How do I
>> specify in the top N310 yaml which device clock will map to my blocks CE
>> clock port?  It seems to me that I am missing a step (defining a clock
>> somewhere?).
>>
>> I am pretty much a novice, so I expect that this is the cause of my
>> confusion. I am even struggling to figure out what the current clock rates
>> are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
>> would be appreciated.
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000d59fb705d8ce6879
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the suggestions Wade. I will first try the low-=
hanging fruit of using the 300MHz DRAM clock.=C2=A0 Fingers crossed!<div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Feb 24, 2022 at 6:43 PM Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div=
><br></div><div>RFNoC doesn&#39;t support generating user clocks for you ye=
t (the range value is not currently used). You could use the `dram` clock o=
n N310 and connect that to the `ce` inputs of your blocks. That should be a=
bout 300 MHz. The `rfnoc_chdr` clock is 200 MHz on N310.</div><div><br></di=
v><div>If it won&#39;t close timing with the dram clock, and you want somet=
hing slower, then you can modify the HDL to add the clock you want. Take a =
look at n3xx_clocking.v. You could probably modify the misc_clock_gen IP bl=
ock to add a clock closer to 260 MHz. You&#39;d then have to route that clo=
ck into n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.=
yml for the rfnoc_image_builder to generate code to use it. Adding custom c=
locks is a pretty manual process at the moment.<br></div><div><br></div><di=
v>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi,<div>I have a signal processing block that includes a zero-padded FFT (5=
0% zeros) that I built for the N310.=C2=A0 Because of the=C2=A0throttling t=
hat=C2=A0occurs during insertion of zeros, I expect that my FFT will need t=
o be clocked at a bit more than twice the max sample rate. So, since I want=
 to operate=C2=A0the N310 at the highest sample rate of 125 MS/s, it seems =
that my FFT will need to be clocked &gt;=3D 260 MHz.=C2=A0 I&#39;m wonderin=
g how to do it.</div><div><br></div><div>I&#39;ve looked at the RFNoC speci=
fication and my block is already set up to use the &quot;CE&quot; clock for=
 both control &amp; data. In the rfnoc spec, it mentions that I can enter a=
 &quot;range&quot; for my clock in the block definition yaml. But, I also s=
ee that in the end, the top N310 yaml will require me to map a _device cloc=
k to my block&#39;s CE clock port.=C2=A0</div><div><br></div><div>It&#39;s =
not clear to me how this works. Does it help to provide a range in the bloc=
k definition yaml? Or, perhaps it is even necessary?=C2=A0 How do I specify=
 in the top N310 yaml which device clock will map to my blocks CE clock por=
t?=C2=A0 It seems to me that I am missing a step (defining a clock somewher=
e?).=C2=A0</div><div><br></div><div>I am pretty much a novice, so I expect =
that this is the cause of my confusion. I am even struggling to figure out =
what the current clock rates are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and wher=
e they are defined. Any help would be appreciated.=C2=A0=C2=A0</div><div>Ro=
b</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000d59fb705d8ce6879--

--===============0431736602735370152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0431736602735370152==--
