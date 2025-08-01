Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAF2B18391
	for <lists+usrp-users@lfdr.de>; Fri,  1 Aug 2025 16:21:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E16E9386881
	for <lists+usrp-users@lfdr.de>; Fri,  1 Aug 2025 10:20:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754058059; bh=ddgWBLIh/eO8j4dBtWUhXMZTdZOAmrTNnu3IXi14P+c=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=c3sSiAnk2gyZdXnkaHjRWZ9JkveRV8+A6NEB85+rWJ4ardd7T6IO2+TzL581fd88h
	 GywRPQl9k9yoWXjUWXE5WZJWgxouOqfLCvOaIG+C5x9D7kQ6bSnFioW/BIBDLukRHB
	 xLjcblNhp7mJWGjGLvloLAl5z5UaeewKX9RxpG+GzzotiJ2OX9M9XMk7bbvdWIGFAg
	 Msu9Iqjb0UJclAHG0t7TORUSzqF8YwCFqvXTvCR0L1+pUq8PqOvZRRi41DaXg1YpWH
	 fuuz7LWm5ByMwlmwgtN38jhUQ0KCk9iepeNUzOGebDL2kLiuNciDwubP/h/FSaW9FT
	 PlDPKLxkXampg==
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C2463867CC
	for <usrp-users@lists.ettus.com>; Fri,  1 Aug 2025 10:20:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ozgoqo6u";
	dkim-atps=neutral
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2ffa1b10918so1229887fac.2
        for <usrp-users@lists.ettus.com>; Fri, 01 Aug 2025 07:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754058019; x=1754662819; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bYptvcVfmQlJgaLAh71E35HpS3txFyZjRLJY4qz85bA=;
        b=Ozgoqo6udrVmKYpTAqY1xyRplmg9VfiFv8HusqbhafVX+lu/TnmeBVL9nU6a0DdcM2
         CceWJo492xHH040/cHMH/BHoUIeO8SXwTGnQ14WAKxNNKKCe0F1JVP9QdWoPB+ZckdIe
         D7dkEICLsYOe8U8jdR97FM8c5gGSg+5lN5EHj13bRzX/Q6O5Zx7gqhGyp2IdkIcYO5o7
         mejMK1tGCpLoBDDNGyonIPrn466n/ksnuRbzsADSSmKqqJf6FPyxZsnoBUURFzfQvtc5
         ZoZlsmUhuF2x+DNFnZ58d3NROT3hsBj7W8rUImIJuy3GrFlVz0kiepbOhQDPEHt9i15n
         gW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754058019; x=1754662819;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bYptvcVfmQlJgaLAh71E35HpS3txFyZjRLJY4qz85bA=;
        b=TmwwSMa8b86j7R2BNmUi6LreUPitND3ip0UzJkeO/mpmBVcFlm9H1Mc+YzpNKANPPm
         C8h/jbnvA+yso4AaB7qf/4Z94KeEOoVW6XzDInyvpqPv7y/DTcbdTJ+mZM+jmzppUQQO
         RVfB9AOdvMAR09tmOjD3qObcQqxm72/mOcZ/5Pwaz7AswMiSqUhIFDqRFsm4bOxGY2DJ
         mrrjtVN8dtGNtyRgOZsrfXJzvVJfL6HzbfvxlscE/il7efeLiNPC//dLXHQmgFWnyUhZ
         qGNZbVm4VaoeuZaoopJ6R8wFC0D0AukxX2MeLUN9fYgj+f+wPSJrPwFpv4RMnk0w0Wh5
         Pr1w==
X-Gm-Message-State: AOJu0Yw08ZgVGP87NI7ttuH5HVjeiVCgysP8SUWWPt4f8nFIIgDLWB/p
	PzjCY9Uq7dQL45gnGRaWCx7eyEelhUirG0rT03WbH92H51ZuwrpiqJguoH2baBXI74yjENJERKY
	Gfu3vD+D2UY8yODQNBB/L7HaMduuHbW4=
X-Gm-Gg: ASbGncutv6c1XUPTfEwYdRQC6dMqhVPC6d1FCIFq4+KWxctyBDELHLz10IKEUPY4GrM
	Q8uh7jkfBpJKt9mamgvLc+N4QLGsvOuvP9RN2j/5PTzYlraAZancexlut5PigWClMMauPdhBK0s
	OrpSBBbiGqVRDAGR+X47X5R+2zMd4aRuExSwdwKx/z6sj6QpR2F2X3kW7tnymlvxl3Jo2jqQkhJ
	r9SO5bIWE2q
X-Google-Smtp-Source: AGHT+IEIcvSQKPiNJGGEIPUlOGIsj83FCRxRvqLDXzFhb7t+3k9L+qO/AGUD9keY2pGZR6hFh2GWyQ3h0Nw73gHWeVQ=
X-Received: by 2002:a05:6870:d1ca:b0:2d5:b7b7:2d6e with SMTP id
 586e51a60fabf-30785dd920emr7241123fac.38.1754058018394; Fri, 01 Aug 2025
 07:20:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
 <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
 <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
 <CAFOi1A6Qv2zq6-CWZScBp=3Xh6uLR_u=xv=xTXecVhvDKVeCjw@mail.gmail.com>
 <CAAxXO2GFY0iYeezAk767dZegidxSTWLY7bqnnUksaneb=Xy-pw@mail.gmail.com>
 <CAAxXO2F=DQKHMnNT2zVEzkBuevBz-Uq8ovxxHKRbMU3bQWR8tQ@mail.gmail.com> <CAFOi1A45+R5vwQvr57YnGCF14_Poz349eUvi05Mp8vhSFz=T5g@mail.gmail.com>
In-Reply-To: <CAFOi1A45+R5vwQvr57YnGCF14_Poz349eUvi05Mp8vhSFz=T5g@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 1 Aug 2025 17:20:06 +0300
X-Gm-Features: Ac12FXyxJuj_R2y8YST3xV3fkMFkzu835I0AxsgDeWTbE7xZLYP4iD8nhXQ1NXM
Message-ID: <CAAxXO2G-pxPnsOzz-5oNAAwf2t0TuUGcvX5+qXcd17FGSQadog@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 77TS6V3OGS5UXSNIYTUXAKNL5C7KHSUJ
X-Message-ID-Hash: 77TS6V3OGS5UXSNIYTUXAKNL5C7KHSUJ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77TS6V3OGS5UXSNIYTUXAKNL5C7KHSUJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4317757547969535733=="

--===============4317757547969535733==
Content-Type: multipart/alternative; boundary="0000000000001a150e063b4e75d7"

--0000000000001a150e063b4e75d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm receiving the correct signal and number of items received.
But the buffer is not freed. After ~25 MBs I start getting OOs, until
it stalls.
GDB shows that it skips uhd code updating the pointer in the source buffer.
That's bad:(

Nikos

On Fri, Aug 1, 2025 at 3:32=E2=80=AFPM Martin Braun <martin.braun@ettus.com=
> wrote:

> The return value of recv() is the number of items that are pulled from th=
e
> receive buffer, and are copied to your OpenCL buffer. When it returns,
> that's the amount of space freed in the receive buffer.
>
> --M
>
> On Fri, Aug 1, 2025 at 7:47=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.co=
m> wrote:
>
>> Seems it runs through
>> host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137
>> -> _recv_one_packet()            :  276
>> ->  _convert_to_out_buff()
>> -> _converters[chan]->conv(buffer_ptr, out_buffs, num_samps); 362
>> -> host/include/uhd/convert.hpp:35
>> -> host/lib/convert/sse2_sc16_to_fc32.cpp: 124
>> -> chdr_sc16_to_xx : 173
>> -> host/lib/convert/convert_common.hpp: 198
>> Where it does the generic (non-sse2) conversion.
>> When it returns it goes back
>> to host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137 and retur=
ns.
>> It should have gone instead
>> to host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 362 to contin=
ue.
>> Next line would be: // Advance the pointer for the source buffer
>> which is never executed:(
>>
>> I cannot test if this is the OO problem, since gdb has a bug with
>> breakpoint locations.
>> The code in converters seems to mess up the memory for the IR register
>> (AMD CPU - next instruction)
>>
>> BR
>> Nikos
>>
>> On Fri, Aug 1, 2025 at 12:55=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> I always read my buffers. That's the whole point. Not using my X310 for
>>> anything else.
>>> Not transmitting anything.
>>> Besides, between your X310 estimations and my calculations, it turns
>>> out, that *no buffer* is ever cleared.
>>> I could understand missing a couple of reads, which I don't, but all of
>>> them?
>>> The buffer current pointer is advanced fine. I always read in the new
>>> data, never the same.
>>> But it doesn't delete the old reads below the current pointer:(
>>> Maybe it has to do with the "strange memory" I use.
>>> UHD uses a lot of "weird" code that is not very portable.
>>> What UHD file is it? I need to check it, and run it through gdb...
>>>
>>> TIA
>>> Nikos
>>>
>>> On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun <martin.braun@ett=
us.com>
>>> wrote:
>>>
>>>> It sounds like you are not permanently reading samples. Everytime
>>>> rx_streamer::recv() returns, the samples are "removed" from the buffer=
s.
>>>>
>>>> --M
>>>>
>>>> On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>>> wrote:
>>>>
>>>>> Thanks Martin,
>>>>>
>>>>> for your fast response.
>>>>> My bad not mentioning my setup. But you got them right:)
>>>>> Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.
>>>>>
>>>>> 1) Yup. I start the recv() right after I start the streamer.
>>>>> 2) Can't change that. Buffers are created in OpenCL and am mapping
>>>>> them to the host side to write them. They are limited to the FFT size=
, 1024
>>>>> samples.
>>>>>
>>>>> The interesting thing is that at first I am using an FFT batch size o=
f
>>>>> 16x, that is 16384 samples.
>>>>> That means that I have to back and get more samples 16x!
>>>>> However, i am not getting  the OOs then.
>>>>> Later on, I only do a single pass, .num_samples =3D 1024, just enough
>>>>> for 1 FFT, for now. This might change in the future.
>>>>> But this is where I'm getting the OO's.
>>>>> My test results, couldn't get OO's with 3e5 samples ~ 5 MB in 11 hrs.
>>>>> That shows that rx_streamer buffers are larger than 5 MB, in line wit=
h your
>>>>> estimation of 25 MBs:)
>>>>> These are big buffers:)
>>>>> Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB +
>>>>> 6.054 MB in  1x single FFT mode ~24.6 MBs before OOs appear.
>>>>> Seems that I don't read anything! But I read every single sample:(
>>>>> Must be  that rx_streamer delivers the samples but doesn't reduce its
>>>>> buffers...
>>>>>
>>>>> This shouldn't be happening. Where in UHD sources is this controlled?
>>>>>
>>>>> TIA
>>>>> Nikos
>>>>>
>>>>> On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun <martin.braun@e=
ttus.com>
>>>>> wrote:
>>>>>
>>>>>> The size of the recv buffer depends on a bunch of things. On X310,
>>>>>> when using 10 GbE, UHD will try and make the socket buffer 25MB in s=
ize.
>>>>>> Until the socket buffer is full, there will be no overrun.
>>>>>>
>>>>>> BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b").
>>>>>> But you don't have to, I can tell you that you will end up in
>>>>>> radio_control_impl.cpp.
>>>>>>
>>>>>> There are several knobs for you to tune:
>>>>>>
>>>>>> - Are you starting your recv() call soon enough, or is the radio
>>>>>> streaming before you recv?
>>>>>> - Can you increase the buffer size that you pass into recv? In an
>>>>>> extreme case, you would pass a buffer that is big enough for all num=
_samps,
>>>>>> and let UHD handle it.
>>>>>>
>>>>>> Also, what's your rate, your device, your transport...
>>>>>>
>>>>>> --M
>>>>>>
>>>>>> On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@g=
mail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Did some more testing. Tried to fill rx_streamer's buffers in
>>>>>>> purpose.
>>>>>>> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>>>>>>> streamer timeout set to 3".
>>>>>>>
>>>>>>> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1=
"
>>>>>>> each turn.
>>>>>>> More than 16" to complete the read. No OO's.
>>>>>>> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding=
 1"
>>>>>>> to sleep
>>>>>>> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO'=
s.
>>>>>>>
>>>>>>> Is overflow even working right?
>>>>>>> How large are the streamer's receive buffers?
>>>>>>>
>>>>>>> Nikos
>>>>>>>
>>>>>>> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@g=
mail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> I am getting a few overflow errors after sometime, from using my
>>>>>>>> code..
>>>>>>>> First OOs in stdout and then metadata at which point it stalls.
>>>>>>>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>>>>> Each time I read .num_samps in a loop until complete and then
>>>>>>>> restart the streamer.
>>>>>>>> I can't think of any case that I don't read all of the samples, so
>>>>>>>> this shouldn't happen.
>>>>>>>> What tools are there to debug this issue?
>>>>>>>> A function to monitor the rx_streamer internal buffers would be
>>>>>>>> very useful.
>>>>>>>> Even the filename that implements this overflow would be helpful.
>>>>>>>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":=
(
>>>>>>>>
>>>>>>>> TIA
>>>>>>>> Nikos
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001a150e063b4e75d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">I&#=
39;m receiving the correct signal and number of items received.=C2=A0</div>=
<div class=3D"gmail_default" style=3D"font-size:small">But the buffer is no=
t freed. After ~25 MBs I start getting OOs, until</div><div class=3D"gmail_=
default" style=3D"font-size:small">it stalls.</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">GDB shows that it skips uhd code updating th=
e pointer in the source buffer.</div><div class=3D"gmail_default" style=3D"=
font-size:small">That&#39;s bad:(</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_conta=
iner"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 1, 2025 at 3:32=E2=
=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.=
braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>The return value of recv() is the numb=
er of items that are pulled from the receive buffer, and are copied to your=
 OpenCL buffer. When it returns, that&#39;s the=C2=A0amount of space freed =
in the receive buffer.</div><div><br></div><div>--M</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 1, 202=
5 at 7:47=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.c=
om" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_default" style=3D"font-size:small">Seems it runs through host/lib/includ=
e/uhdlib/transport/rx_streamer_impl.hpp: 137</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">-&gt; _recv_one_packet()=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 :=C2=A0 276</div><div class=3D"gmail_default" style=3D=
"font-size:small">-&gt;=C2=A0 _convert_to_out_buff()</div><div class=3D"gma=
il_default" style=3D"font-size:small">-&gt; _converters[chan]-&gt;conv(buff=
er_ptr, out_buffs, num_samps); 362</div><div class=3D"gmail_default" style=
=3D"font-size:small">-&gt; host/include/uhd/convert.hpp:35</div><div class=
=3D"gmail_default" style=3D"font-size:small">-&gt; host/lib/convert/sse2_sc=
16_to_fc32.cpp: 124</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">-&gt;=C2=A0chdr_sc16_to_xx : 173</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">-&gt;=C2=A0host/lib/convert/convert_common.hpp: 198<=
/div><div class=3D"gmail_default" style=3D"font-size:small">Where it does t=
he generic (non-sse2) conversion.</div><div class=3D"gmail_default" style=
=3D"font-size:small">When it returns it goes back to=C2=A0host/lib/include/=
uhdlib/transport/rx_streamer_impl.hpp: 137 and returns.</div><div class=3D"=
gmail_default" style=3D"font-size:small">It should have gone instead to=C2=
=A0host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 362 to continue.=
</div><div class=3D"gmail_default" style=3D"font-size:small">Next line woul=
d be:=C2=A0// Advance the pointer for the source buffer</div><div class=3D"=
gmail_default" style=3D"font-size:small">which is never executed:(</div><di=
v class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D=
"gmail_default" style=3D"font-size:small">I cannot test if this is the OO p=
roblem, since gdb has a bug with breakpoint locations.</div><div class=3D"g=
mail_default" style=3D"font-size:small">The code in converters seems to mes=
s up the memory for the IR register (AMD CPU - next instruction)</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">BR</div><div class=3D"gmail_default=
" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 1, 2025 at 12:55=E2=80=
=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_=
blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" sty=
le=3D"font-size:small">I always read my buffers. That&#39;s the whole point=
. Not using my X310 for anything else.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">Not transmitting anything.</div><div class=3D"gmail=
_default" style=3D"font-size:small">Besides, between your X310 estimations =
and my calculations, it turns out, that *no buffer* is ever cleared.</div><=
div class=3D"gmail_default" style=3D"font-size:small">I could understand mi=
ssing a couple of reads, which I don&#39;t, but all of them?</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">The buffer current pointer is=
 advanced fine. I always read in the new data, never the same.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">But it doesn&#39;t delete t=
he old reads below the current pointer:(</div><div class=3D"gmail_default" =
style=3D"font-size:small">Maybe it has to do with the &quot;strange memory&=
quot; I use.</div><div class=3D"gmail_default" style=3D"font-size:small">UH=
D uses a lot of &quot;weird&quot; code that is not very portable.</div><div=
 class=3D"gmail_default" style=3D"font-size:small">What UHD file is it? I n=
eed to check it, and run it through gdb...</div><div class=3D"gmail_default=
" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D=
"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:=
small">Nikos</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun &lt=
;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>It sounds like you are not permanently=C2=A0r=
eading samples. Everytime rx_streamer::recv() returns, the samples are &quo=
t;removed&quot; from the buffers.</div><div><br></div><div>--M</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalk=
anas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
class=3D"gmail_default" style=3D"font-size:small">Thanks Martin,</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">for your fast response.</div><div c=
lass=3D"gmail_default" style=3D"font-size:small">My bad not mentioning my s=
etup. But you got them right:)</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">1) Yup. I start the recv() right after I=
 start the streamer.=C2=A0</div><div class=3D"gmail_default" style=3D"font-=
size:small">2) Can&#39;t change that. Buffers are created in OpenCL and am =
mapping them to the host side to write them. They are limited to the FFT si=
ze, 1024 samples.</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">The int=
eresting thing is that at first I am using an FFT batch size of 16x, that i=
s 16384 samples.</div><div class=3D"gmail_default" style=3D"font-size:small=
">That means that I have to back and get more samples 16x!</div><div class=
=3D"gmail_default" style=3D"font-size:small">However, i am not getting=C2=
=A0 the OOs then.</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">Later on, I only do a single pass, .num_samples =3D 1024, just enough fo=
r 1 FFT, for now. This might change in the future.</div><div class=3D"gmail=
_default" style=3D"font-size:small">But this is where I&#39;m getting the O=
O&#39;s.</div><div class=3D"gmail_default" style=3D"font-size:small">My tes=
t results, couldn&#39;t get OO&#39;s with 3e5 samples ~ 5 MB in 11 hrs. Tha=
t shows that rx_streamer buffers are larger than 5 MB, in line with your</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">estimation of 25 =
MBs:)</div><div class=3D"gmail_default" style=3D"font-size:small">These are=
 big buffers:)</div><div class=3D"gmail_default" style=3D"font-size:small">=
Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB=C2=A0+ 6=
.054 MB in=C2=A0 1x single FFT mode ~24.6 MBs before OOs appear.</div><div =
class=3D"gmail_default" style=3D"font-size:small">Seems that I don&#39;t re=
ad anything! But I read every single sample:(</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">Must be=C2=A0 that rx_streamer delivers the =
samples but doesn&#39;t reduce its buffers...</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">This shouldn&#39;t be happening. Where in UHD sources =
is this controlled?</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</=
div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:mart=
in.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>The size of the recv buffer depends on a bunch of things. On X310, w=
hen using 10 GbE, UHD will try and make the socket buffer 25MB in size. Unt=
il the socket buffer is full, there will be no overrun.</div><div><br></div=
><div>BTW if you want to find O in UHD, grep for &quot;\&lt;O\&gt;&quot; (o=
r ag &quot;\bO\b&quot;). But you don&#39;t have to, I can tell you that you=
 will end up in radio_control_impl.cpp.</div><div><br></div><div>There are =
several knobs for you to tune:</div><div><br></div><div>- Are you starting =
your recv() call soon enough, or is the radio streaming before=C2=A0you rec=
v?</div><div>- Can you increase the=C2=A0buffer size that you pass into rec=
v? In an extreme case, you would pass a buffer that is big enough for all n=
um_samps, and let UHD handle it.</div><div><br></div><div>Also, what&#39;s =
your rate, your device, your transport...</div><div><br></div><div>--M</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mai=
lto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_default" style=3D"font-size:small">Did some more te=
sting. Tried to fill rx_streamer&#39;s buffers in purpose.</div><div class=
=3D"gmail_default" style=3D"font-size:small">.stream_mode =3D=C2=A0UHD_STRE=
AM_MODE_NUM_SAMPS_AND_DONE</div><div class=3D"gmail_default" style=3D"font-=
size:small">streamer timeout set to 3&quot;.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">1) .num_samples =3D 16384. Read 1024 each time in a lo=
op sleeping 1&quot; each turn.</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">More than 16&quot; to complete the read. No OO&#39;s.</div>=
<div class=3D"gmail_default" style=3D"font-size:small">2) .num_samps =3D 3e=
5. Read 1024 samples each time in a loop adding 1&quot; to sleep</div><div =
class=3D"gmail_default" style=3D"font-size:small">in each turn (1, 2, 3, 4,=
 ...). 11 hrs to complete the read. No OO&#39;s.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" st=
yle=3D"font-size:small">Is overflow even working right?</div><div class=3D"=
gmail_default" style=3D"font-size:small">How large are the streamer&#39;s r=
eceive buffers?</div><div class=3D"gmail_default" style=3D"font-size:small"=
><br></div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mai=
lto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_default" style=3D"font-size:small">Hi,</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small">I am getting a few overflow errors af=
ter sometime, from using my code..</div><div class=3D"gmail_default" style=
=3D"font-size:small">First OOs in stdout and then metadata at which point i=
t stalls.</div><div class=3D"gmail_default" style=3D"font-size:small">I&#39=
;m using .stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,</div><di=
v class=3D"gmail_default" style=3D"font-size:small">Each time I read .num_s=
amps in a loop until complete and then restart the streamer.</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">I can&#39;t think of any case=
 that I don&#39;t read all of the samples, so this shouldn&#39;t happen.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">What tools are th=
ere to debug this issue?</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">A function to monitor the rx_streamer internal buffers would be v=
ery useful.</div><div class=3D"gmail_default" style=3D"font-size:small">Eve=
n the filename that implements this overflow would be helpful.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Grepping &quot;OO&quot; in =
the sources doesn&#39;t help. Always hits in &quot;BOOST&quot;:(</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">TIA</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">Nikos=C2=A0</div><div class=3D"gmail_default" =
style=3D"font-size:small"><br></div></div>
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
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001a150e063b4e75d7--

--===============4317757547969535733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4317757547969535733==--
