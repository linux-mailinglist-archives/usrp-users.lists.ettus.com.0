Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3892B17C9C
	for <lists+usrp-users@lfdr.de>; Fri,  1 Aug 2025 07:47:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 289C038688B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Aug 2025 01:47:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754027267; bh=yUTYg4gqun3swuNBpq44brrJe2hcYhxSjG+PNY7+2bI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZCYVO21Iuhb1TRxqt40LpclN9sE/UFx92kVvHcN+hjjst5CBkRL8uQ9ikc6+i5kst
	 Hd6rz/BoB1FbYSicZHeXP5ckLpwZwcU6qhQDaJwDjF4JT+6ONUVjq0PYm9Fojli8Pk
	 wSJBs39uPVeOSlNDIbAdOZlaK5ceDq7o210Xrtd8dHd7S2sfcdAiRZr4/9DKUp2Xov
	 lasJhFU3sv5FsZsdXae32hBSZVSSExI1qy5gz/Nk3+H5AXjP558y18cQv3syiK1xZx
	 3gYQipvpYuXzwQT5g8fvN2q/g3fwWCk8HSfBzPYjxfh5OXrAt9q7DFtoiXgUyHHl54
	 txXyh04wgNPHA==
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 00B92386866
	for <usrp-users@lists.ettus.com>; Fri,  1 Aug 2025 01:47:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A+Fuvtx0";
	dkim-atps=neutral
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3e2c547bc90so19084175ab.2
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 22:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754027226; x=1754632026; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g5kUucKe2MuHZf+z1mhNw3B4aDNFnKjr/h1GiXSfo7I=;
        b=A+Fuvtx0edpplI3ifWETDW1BsW25yNeYpq/kRIWs3Gm3oclcBSBT1AiMHf25ibBLrk
         O3YdzSCVp0Mciej2B7jcYfCcJtDiNyWVJzymU9h7+NSO+zDggYcpI7BU1dlmEsCXQcoc
         zR2PvK3HnwH8yNOocAYpSab/mCvhD5qB/iIgkjeb2W4Erg+QgtMdce6UAaP3L6nY+9KY
         tiV/9ww/KuP4V4T5IT56yb6sfAMT4NqGJwLJphWe4Xy5faorsthkmi2H3YG3SRkuD/rB
         v/8ojDCe0O9q0zu00722PKQ/mb+iu8M6yskSHnjB+kqVcLehuvnytlBvq3yez37Lmzfl
         KlvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754027226; x=1754632026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g5kUucKe2MuHZf+z1mhNw3B4aDNFnKjr/h1GiXSfo7I=;
        b=Ke3+LMdq5CAHFKFFDsfSPqI4aTHGOPxYm1GZUPoJ/LSoWg3TsxqGXEhB4SMSBuTLq4
         6/GBKd5G8X0P0g/xpIB+BaEcs6jG2V8oAJjvshLwvWpfO2ohV1aAhF25xH/ORBwUjAdA
         /Wtvr4p0RIeuRj6Fj+Fkc/VTmMgzeQFsPfgL0zkj8qaWhNNhycHzDkZ2vK98UxuxU60s
         4Cp+0PVYS5cdw/EAVgrT4n2VD4Ab8AeyO99+YWBexbXA4QUv0uqfnWIgenFrSmadlx6G
         kJ0rJGrHgKSRn5HGPZAEtcP844ul4zqidw7lj1P1MDijnrS25H234pGkxWTV5ThWj2Pp
         v4BQ==
X-Gm-Message-State: AOJu0YyZaK12bTNbslS+DiGiKlMEPvB4k0s/PUbzHsPmdpoWX1yTuTu7
	YHuy0aTlskLe/WdU6OXwdeXwr3jeoXxjNCNhR90SJvEp7HiIQXA3S/jGHiY7PRWhkljt+GLmVKO
	Aw/wpCTPWxRcTCSn289nePJPRyb3Cq2I=
X-Gm-Gg: ASbGnctQF023HxNKQv5nRRHQ+IPtu8sGGhH2wWIYM+EgtHExy0+4jjeRHo3EvMcYlBZ
	FQpYeohGYJS4JsVNEgD3pU2Egb2KRCvJjuPVBnuiMHvTMRhYlsZQ9DZuCrE/8jvytWtul6r4ZQ5
	Oqg2gwFiUUPjQAGl2Z00Zfmo8XPwqNDm1mNUOai1S7qEQ8o7TBuoNZ+UtNpoZuE6uKJYfYsNkm1
	qJccilg
X-Google-Smtp-Source: AGHT+IHwAd056poLU87qLCSRfqazsleq2/BaD9wmdgn5HFOPVuybK0QgVzXbllopEHEwmIySfdaELqUdisjaf5RD9u0=
X-Received: by 2002:a05:6e02:3:b0:3e4:4a0:b972 with SMTP id
 e9e14a558f8ab-3e404a0ba9dmr106338285ab.8.1754027225977; Thu, 31 Jul 2025
 22:47:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
 <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
 <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
 <CAFOi1A6Qv2zq6-CWZScBp=3Xh6uLR_u=xv=xTXecVhvDKVeCjw@mail.gmail.com> <CAAxXO2GFY0iYeezAk767dZegidxSTWLY7bqnnUksaneb=Xy-pw@mail.gmail.com>
In-Reply-To: <CAAxXO2GFY0iYeezAk767dZegidxSTWLY7bqnnUksaneb=Xy-pw@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 1 Aug 2025 08:46:54 +0300
X-Gm-Features: Ac12FXwOwP4-f3KF-gDjcHuFi8Whif49A3972S3rCFI2U9VWeBdKruelZnVS98A
Message-ID: <CAAxXO2F=DQKHMnNT2zVEzkBuevBz-Uq8ovxxHKRbMU3bQWR8tQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 5QJNDNHSUTDRH464UISJPDXUUEABGORJ
X-Message-ID-Hash: 5QJNDNHSUTDRH464UISJPDXUUEABGORJ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QJNDNHSUTDRH464UISJPDXUUEABGORJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0956654165799387770=="

--===============0956654165799387770==
Content-Type: multipart/alternative; boundary="000000000000bb1727063b47493f"

--000000000000bb1727063b47493f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Seems it runs through
host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137
-> _recv_one_packet()            :  276
->  _convert_to_out_buff()
-> _converters[chan]->conv(buffer_ptr, out_buffs, num_samps); 362
-> host/include/uhd/convert.hpp:35
-> host/lib/convert/sse2_sc16_to_fc32.cpp: 124
-> chdr_sc16_to_xx : 173
-> host/lib/convert/convert_common.hpp: 198
Where it does the generic (non-sse2) conversion.
When it returns it goes back
to host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137 and returns.
It should have gone instead
to host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 362 to continue.
Next line would be: // Advance the pointer for the source buffer
which is never executed:(

I cannot test if this is the OO problem, since gdb has a bug with
breakpoint locations.
The code in converters seems to mess up the memory for the IR register (AMD
CPU - next instruction)

BR
Nikos

On Fri, Aug 1, 2025 at 12:55=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> I always read my buffers. That's the whole point. Not using my X310 for
> anything else.
> Not transmitting anything.
> Besides, between your X310 estimations and my calculations, it turns out,
> that *no buffer* is ever cleared.
> I could understand missing a couple of reads, which I don't, but all of
> them?
> The buffer current pointer is advanced fine. I always read in the new
> data, never the same.
> But it doesn't delete the old reads below the current pointer:(
> Maybe it has to do with the "strange memory" I use.
> UHD uses a lot of "weird" code that is not very portable.
> What UHD file is it? I need to check it, and run it through gdb...
>
> TIA
> Nikos
>
> On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun <martin.braun@ettus=
.com>
> wrote:
>
>> It sounds like you are not permanently reading samples. Everytime
>> rx_streamer::recv() returns, the samples are "removed" from the buffers.
>>
>> --M
>>
>> On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Thanks Martin,
>>>
>>> for your fast response.
>>> My bad not mentioning my setup. But you got them right:)
>>> Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.
>>>
>>> 1) Yup. I start the recv() right after I start the streamer.
>>> 2) Can't change that. Buffers are created in OpenCL and am mapping them
>>> to the host side to write them. They are limited to the FFT size, 1024
>>> samples.
>>>
>>> The interesting thing is that at first I am using an FFT batch size of
>>> 16x, that is 16384 samples.
>>> That means that I have to back and get more samples 16x!
>>> However, i am not getting  the OOs then.
>>> Later on, I only do a single pass, .num_samples =3D 1024, just enough f=
or
>>> 1 FFT, for now. This might change in the future.
>>> But this is where I'm getting the OO's.
>>> My test results, couldn't get OO's with 3e5 samples ~ 5 MB in 11 hrs.
>>> That shows that rx_streamer buffers are larger than 5 MB, in line with =
your
>>> estimation of 25 MBs:)
>>> These are big buffers:)
>>> Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB +
>>> 6.054 MB in  1x single FFT mode ~24.6 MBs before OOs appear.
>>> Seems that I don't read anything! But I read every single sample:(
>>> Must be  that rx_streamer delivers the samples but doesn't reduce its
>>> buffers...
>>>
>>> This shouldn't be happening. Where in UHD sources is this controlled?
>>>
>>> TIA
>>> Nikos
>>>
>>> On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun <martin.braun@ett=
us.com>
>>> wrote:
>>>
>>>> The size of the recv buffer depends on a bunch of things. On X310, whe=
n
>>>> using 10 GbE, UHD will try and make the socket buffer 25MB in size. Un=
til
>>>> the socket buffer is full, there will be no overrun.
>>>>
>>>> BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b"). Bu=
t
>>>> you don't have to, I can tell you that you will end up in
>>>> radio_control_impl.cpp.
>>>>
>>>> There are several knobs for you to tune:
>>>>
>>>> - Are you starting your recv() call soon enough, or is the radio
>>>> streaming before you recv?
>>>> - Can you increase the buffer size that you pass into recv? In an
>>>> extreme case, you would pass a buffer that is big enough for all num_s=
amps,
>>>> and let UHD handle it.
>>>>
>>>> Also, what's your rate, your device, your transport...
>>>>
>>>> --M
>>>>
>>>> On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@gma=
il.com>
>>>> wrote:
>>>>
>>>>> Did some more testing. Tried to fill rx_streamer's buffers in purpose=
.
>>>>> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>>>>> streamer timeout set to 3".
>>>>>
>>>>> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1"
>>>>> each turn.
>>>>> More than 16" to complete the read. No OO's.
>>>>> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1=
"
>>>>> to sleep
>>>>> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO's.
>>>>>
>>>>> Is overflow even working right?
>>>>> How large are the streamer's receive buffers?
>>>>>
>>>>> Nikos
>>>>>
>>>>> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gma=
il.com>
>>>>> wrote:
>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> I am getting a few overflow errors after sometime, from using my
>>>>>> code..
>>>>>> First OOs in stdout and then metadata at which point it stalls.
>>>>>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>>> Each time I read .num_samps in a loop until complete and then restar=
t
>>>>>> the streamer.
>>>>>> I can't think of any case that I don't read all of the samples, so
>>>>>> this shouldn't happen.
>>>>>> What tools are there to debug this issue?
>>>>>> A function to monitor the rx_streamer internal buffers would be very
>>>>>> useful.
>>>>>> Even the filename that implements this overflow would be helpful.
>>>>>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(
>>>>>>
>>>>>> TIA
>>>>>> Nikos
>>>>>>
>>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000bb1727063b47493f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">See=
ms it runs through host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: =
137</div><div class=3D"gmail_default" style=3D"font-size:small">-&gt; _recv=
_one_packet()=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :=C2=A0 276</div><di=
v class=3D"gmail_default" style=3D"font-size:small">-&gt;=C2=A0 _convert_to=
_out_buff()</div><div class=3D"gmail_default" style=3D"font-size:small">-&g=
t; _converters[chan]-&gt;conv(buffer_ptr, out_buffs, num_samps); 362</div><=
div class=3D"gmail_default" style=3D"font-size:small">-&gt; host/include/uh=
d/convert.hpp:35</div><div class=3D"gmail_default" style=3D"font-size:small=
">-&gt; host/lib/convert/sse2_sc16_to_fc32.cpp: 124</div><div class=3D"gmai=
l_default" style=3D"font-size:small">-&gt;=C2=A0chdr_sc16_to_xx : 173</div>=
<div class=3D"gmail_default" style=3D"font-size:small">-&gt;=C2=A0host/lib/=
convert/convert_common.hpp: 198</div><div class=3D"gmail_default" style=3D"=
font-size:small">Where it does the generic (non-sse2) conversion.</div><div=
 class=3D"gmail_default" style=3D"font-size:small">When it returns it goes =
back to=C2=A0host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137 an=
d returns.</div><div class=3D"gmail_default" style=3D"font-size:small">It s=
hould have gone instead to=C2=A0host/lib/include/uhdlib/transport/rx_stream=
er_impl.hpp: 362 to continue.</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">Next line would be:=C2=A0// Advance the pointer for the sour=
ce buffer</div><div class=3D"gmail_default" style=3D"font-size:small">which=
 is never executed:(</div><div class=3D"gmail_default" style=3D"font-size:s=
mall"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I ca=
nnot test if this is the OO problem, since gdb has a bug with breakpoint lo=
cations.</div><div class=3D"gmail_default" style=3D"font-size:small">The co=
de in converters seems to mess up the memory for the IR register (AMD CPU -=
 next instruction)</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br></div><div class=3D"gmail_default" style=3D"font-size:small">BR</di=
v><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Aug 1, 2025 at 12:55=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalk=
anas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
class=3D"gmail_default" style=3D"font-size:small">I always read my buffers.=
 That&#39;s the whole point. Not using my X310 for anything else.</div><div=
 class=3D"gmail_default" style=3D"font-size:small">Not transmitting anythin=
g.</div><div class=3D"gmail_default" style=3D"font-size:small">Besides, bet=
ween your X310 estimations and my calculations, it turns out, that *no buff=
er* is ever cleared.</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">I could understand missing a couple of reads, which I don&#39;t, but =
all of them?</div><div class=3D"gmail_default" style=3D"font-size:small">Th=
e buffer current pointer is advanced fine. I always read in the new data, n=
ever the same.</div><div class=3D"gmail_default" style=3D"font-size:small">=
But it doesn&#39;t delete the old reads below the current pointer:(</div><d=
iv class=3D"gmail_default" style=3D"font-size:small">Maybe it has to do wit=
h the &quot;strange memory&quot; I use.</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">UHD uses a lot of &quot;weird&quot; code that is n=
ot very portable.</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">What UHD file is it? I need to check it, and run it through gdb...</div>=
<div class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 11:25=
=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" targ=
et=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>It sounds like yo=
u are not permanently=C2=A0reading samples. Everytime rx_streamer::recv() r=
eturns, the samples are &quot;removed&quot; from the buffers.</div><div><br=
></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas=
 &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:smal=
l">Thanks Martin,</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">for you=
r fast response.</div><div class=3D"gmail_default" style=3D"font-size:small=
">My bad not mentioning my setup. But you got them right:)</div><div class=
=3D"gmail_default" style=3D"font-size:small">Ubuntu 24.04, UHD 4.6, X310, 1=
0 Gbe line.</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">1) Yup. I sta=
rt the recv() right after I start the streamer.=C2=A0</div><div class=3D"gm=
ail_default" style=3D"font-size:small">2) Can&#39;t change that. Buffers ar=
e created in OpenCL and am mapping them to the host side to write them. The=
y are limited to the FFT size, 1024 samples.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">The interesting thing is that at first I am using an F=
FT batch size of 16x, that is 16384 samples.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">That means that I have to back and get more s=
amples 16x!</div><div class=3D"gmail_default" style=3D"font-size:small">How=
ever, i am not getting=C2=A0 the OOs then.</div><div class=3D"gmail_default=
" style=3D"font-size:small">Later on, I only do a single pass, .num_samples=
 =3D 1024, just enough for 1 FFT, for now. This might change in the future.=
</div><div class=3D"gmail_default" style=3D"font-size:small">But this is wh=
ere I&#39;m getting the OO&#39;s.</div><div class=3D"gmail_default" style=
=3D"font-size:small">My test results, couldn&#39;t get OO&#39;s with 3e5 sa=
mples ~ 5 MB in 11 hrs. That shows that rx_streamer buffers are larger than=
 5 MB, in line with your</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">estimation of 25 MBs:)</div><div class=3D"gmail_default" style=3D=
"font-size:small">These are big buffers:)</div><div class=3D"gmail_default"=
 style=3D"font-size:small">Doing a few calculations, I read 1133 samples in=
 16x mode ~18.5 MB=C2=A0+ 6.054 MB in=C2=A0 1x single FFT mode ~24.6 MBs be=
fore OOs appear.</div><div class=3D"gmail_default" style=3D"font-size:small=
">Seems that I don&#39;t read anything! But I read every single sample:(</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Must be=C2=A0 tha=
t rx_streamer delivers the samples but doesn&#39;t reduce its buffers...</d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">This shouldn&#39;t be happe=
ning. Where in UHD sources is this controlled?</div><div class=3D"gmail_def=
ault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" styl=
e=3D"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-s=
ize:small">Nikos</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun=
 &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.bra=
un@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>The size of the recv buffer depends on a =
bunch of things. On X310, when using 10 GbE, UHD will try and make the sock=
et buffer 25MB in size. Until the socket buffer is full, there will be no o=
verrun.</div><div><br></div><div>BTW if you want to find O in UHD, grep for=
 &quot;\&lt;O\&gt;&quot; (or ag &quot;\bO\b&quot;). But you don&#39;t have =
to, I can tell you that you will end up in radio_control_impl.cpp.</div><di=
v><br></div><div>There are several knobs for you to tune:</div><div><br></d=
iv><div>- Are you starting your recv() call soon enough, or is the radio st=
reaming before=C2=A0you recv?</div><div>- Can you increase the=C2=A0buffer =
size that you pass into recv? In an extreme case, you would pass a buffer t=
hat is big enough for all num_samps, and let UHD handle it.</div><div><br><=
/div><div>Also, what&#39;s your rate, your device, your transport...</div><=
div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Niko=
s Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nba=
lkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font=
-size:small">Did some more testing. Tried to fill rx_streamer&#39;s buffers=
 in purpose.</div><div class=3D"gmail_default" style=3D"font-size:small">.s=
tream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE</div><div class=3D"g=
mail_default" style=3D"font-size:small">streamer timeout set to 3&quot;.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">1) .num_samples =3D 16384. =
Read 1024 each time in a loop sleeping 1&quot; each turn.</div><div class=
=3D"gmail_default" style=3D"font-size:small">More than 16&quot; to complete=
 the read. No OO&#39;s.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">2) .num_samps =3D 3e5. Read 1024 samples each time in a loop addin=
g 1&quot; to sleep</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO&#39;=
s.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">Is overflow even worki=
ng right?</div><div class=3D"gmail_default" style=3D"font-size:small">How l=
arge are the streamer&#39;s receive buffers?</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nik=
os Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nb=
alkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small">Hi,</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I am ge=
tting a few overflow errors after sometime, from using my code..</div><div =
class=3D"gmail_default" style=3D"font-size:small">First OOs in stdout and t=
hen metadata at which point it stalls.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">I&#39;m using .stream_mode =3D=C2=A0UHD_STREAM_MODE=
_NUM_SAMPS_AND_DONE,</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">Each time I read .num_samps in a loop until complete and then restart=
 the streamer.</div><div class=3D"gmail_default" style=3D"font-size:small">=
I can&#39;t think of any case that I don&#39;t read all of the samples, so =
this shouldn&#39;t happen.</div><div class=3D"gmail_default" style=3D"font-=
size:small">What tools are there to debug this issue?</div><div class=3D"gm=
ail_default" style=3D"font-size:small">A function to monitor the rx_streame=
r internal buffers would be very useful.</div><div class=3D"gmail_default" =
style=3D"font-size:small">Even the filename that implements this overflow w=
ould be helpful.</div><div class=3D"gmail_default" style=3D"font-size:small=
">Grepping &quot;OO&quot; in the sources doesn&#39;t help. Always hits in &=
quot;BOOST&quot;:(</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Nikos=C2=A0</div>=
<div class=3D"gmail_default" style=3D"font-size:small"><br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000bb1727063b47493f--

--===============0956654165799387770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0956654165799387770==--
