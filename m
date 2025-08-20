Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA1EB2D236
	for <lists+usrp-users@lfdr.de>; Wed, 20 Aug 2025 05:02:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BA76385DE2
	for <lists+usrp-users@lfdr.de>; Tue, 19 Aug 2025 23:01:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755658919; bh=chPBCH7Mp1V13BApGilmz57K5ysZ2sjtRsbLbSqA35w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XmsvDDZul/G6mbcqWdBl+qmJ9nzrCPHbySidU+EtVC1c3eYq7ADJHzcitEzABkR+D
	 ky/DhfPUNjsv2i79c3tjhzSN+Fd7m/k+za7If3TuS4duNOLnbLziuJR+TIGI5muKl9
	 /3I+OBuH8HLJHzWnKdq1cDC1DrHX3humq3fGfKL3y0KzEbKjEIMm8FzuC3xJWgwXZ6
	 CeJ1+LIBTST84KqLaLgFGElyrkk7b5ELmCT/GsoeLArHxZ6d8QCXNo3rzOG+JU/oJo
	 cqaPrK0ZQRhBoq/t+YwCiO78MwpBdQp8/AyS8QqQDSptecTY1qStHA4pv+b3AzngXW
	 S57ip1ONfh8AA==
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 933DA385C25
	for <usrp-users@lists.ettus.com>; Tue, 19 Aug 2025 23:01:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eBmu17hL";
	dkim-atps=neutral
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3e67d83ed72so2511225ab.0
        for <usrp-users@lists.ettus.com>; Tue, 19 Aug 2025 20:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755658884; x=1756263684; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+DmUuS6yTfm2SDsHNfC5dSgPf7Cd9rL1KZrTqGACzRI=;
        b=eBmu17hL+0xd3/4zn6YcyaWYhfcJGBfwj6mqwHg2EIakNfvC0IMDcm+ZRSFGdAJB2o
         HtCd+wonbEBquSROw6cyKjLhmYaL4sf2ECw9zPBrqZd5hHfh/ths6CgfHtaAYtHY6D5S
         tv5dNLcUS5SpsX8GaR0oueikxSvEipFI5g7t0jUqGvfNTMfnQ5E4iZ40kXJKxXlxXl+T
         goAOSEzBHY4AgySThJSDtenNTLe+KYL9DXrdqaq+4MYl1P7FJ0+avJc1y4tV6E9WZr68
         sp/rM/THtsA8tNYzfxa8UsnO3jG/9zhMtDkwSAYpg9W+xYA0Xg0GXODh3LTP4imWme19
         4uVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755658884; x=1756263684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+DmUuS6yTfm2SDsHNfC5dSgPf7Cd9rL1KZrTqGACzRI=;
        b=GBF0lU9FKn792AVrTwQX9vIHZiBgo99U9BkvbDgNjd94Mu22vo1N05GHqzkcMcFXm3
         5AZyYjoLER5c/1wJKaVRBxhWsb35QbMi1GPRGYFPMMU1yyLRTjkmXvWGih6CURCqHlTL
         8i+b3qI4VS08oPcBPufCS0/KDGSKVE86SbDbYu289clOek9ME0b5EY76jq09IGnUowUS
         nkFIo2AGRkgF3S/y0uvjtqAZGYHMi0eQksygDUJLi91HURoeF7ZvP3x27RHx/lcD0O10
         YPnrpkxmWiaA+nJ4vXH25YgAHYSiwgG/KDBjaybwnlr9n7FCqv+alOG3LUFjKDs4/Ynj
         szMw==
X-Gm-Message-State: AOJu0Yz9UA+wiu0TNB+557BPOU9V3H95cExkZP7LoOOh9k32dGCEALQK
	IQwllrpLjJ82cFZXvnFk4U31fsKgk0SsY9Lwz5xTkJgUvyFpvl3ymYNNZjGxV6nQg5RP1bSPOp9
	gnWoqwheSDXrmHFguHEbpDC37GqxaPmxceQ==
X-Gm-Gg: ASbGnctBR1tH8TknCBsYRIAdLVta/m+8WNKz/p/I3WBVeR7WQ2CGoohlKWDNIE9XtbE
	MibVEdkjxITE33lgDT8pnGVRvMnzO1yoPdd13S53D0EfV5q0lSOctlvC1VsfvdNRmJxvWm7XBqq
	D+aYu1zbnyqxVnEBgeerTIshHo7Kgru6YAs4W7GjECAKnELglMSsbLOGA9/BTdF4pU2hEXf7x4U
	oQ=
X-Google-Smtp-Source: AGHT+IGv8qFdzZYjqTs1mnoRghs33wUZexP1BzBnwHLZ2pGwRvTAUkIN8OA4dwjZJ/1ZPdbjOKlf22vL3eJZ8HLU8kg=
X-Received: by 2002:a05:6e02:1705:b0:3e5:83c2:f77a with SMTP id
 e9e14a558f8ab-3e67c906605mr26434155ab.0.1755658884455; Tue, 19 Aug 2025
 20:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
 <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
 <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
 <CAFOi1A6Qv2zq6-CWZScBp=3Xh6uLR_u=xv=xTXecVhvDKVeCjw@mail.gmail.com>
 <CAAxXO2GFY0iYeezAk767dZegidxSTWLY7bqnnUksaneb=Xy-pw@mail.gmail.com>
 <CAAxXO2F=DQKHMnNT2zVEzkBuevBz-Uq8ovxxHKRbMU3bQWR8tQ@mail.gmail.com>
 <CAFOi1A45+R5vwQvr57YnGCF14_Poz349eUvi05Mp8vhSFz=T5g@mail.gmail.com> <CAAxXO2G-pxPnsOzz-5oNAAwf2t0TuUGcvX5+qXcd17FGSQadog@mail.gmail.com>
In-Reply-To: <CAAxXO2G-pxPnsOzz-5oNAAwf2t0TuUGcvX5+qXcd17FGSQadog@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 20 Aug 2025 06:01:12 +0300
X-Gm-Features: Ac12FXwzkPxqFZpfyxOPX6wWrFuz6KQxEolcQPhE2zPd-nDBJsBgktz8QKpMYuw
Message-ID: <CAAxXO2Huh-aq5eUqZFaAVhpSNVfJdrHTZffu4PqF3vJpj4Z1AQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: YEGA5PK2I3IKSRZXBWGT3EJNXZANKXKB
X-Message-ID-Hash: YEGA5PK2I3IKSRZXBWGT3EJNXZANKXKB
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEGA5PK2I3IKSRZXBWGT3EJNXZANKXKB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4324382192135668209=="

--===============4324382192135668209==
Content-Type: multipart/alternative; boundary="00000000000027a12f063cc330d2"

--00000000000027a12f063cc330d2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Since no one else reported this as a problem,
it must be a C-API bug.
Seems I'm the only one using it:(
I could have fixed it, but since I have more issues with UHD,
I opted to write my own C driver for it...
bb friends, I'm leaving the group:(

BR
Nikos

On Fri, Aug 1, 2025 at 5:20=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com>=
 wrote:

> I'm receiving the correct signal and number of items received.
> But the buffer is not freed. After ~25 MBs I start getting OOs, until
> it stalls.
> GDB shows that it skips uhd code updating the pointer in the source buffe=
r.
> That's bad:(
>
> Nikos
>
> On Fri, Aug 1, 2025 at 3:32=E2=80=AFPM Martin Braun <martin.braun@ettus.c=
om>
> wrote:
>
>> The return value of recv() is the number of items that are pulled from
>> the receive buffer, and are copied to your OpenCL buffer. When it return=
s,
>> that's the amount of space freed in the receive buffer.
>>
>> --M
>>
>> On Fri, Aug 1, 2025 at 7:47=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.c=
om>
>> wrote:
>>
>>> Seems it runs through
>>> host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137
>>> -> _recv_one_packet()            :  276
>>> ->  _convert_to_out_buff()
>>> -> _converters[chan]->conv(buffer_ptr, out_buffs, num_samps); 362
>>> -> host/include/uhd/convert.hpp:35
>>> -> host/lib/convert/sse2_sc16_to_fc32.cpp: 124
>>> -> chdr_sc16_to_xx : 173
>>> -> host/lib/convert/convert_common.hpp: 198
>>> Where it does the generic (non-sse2) conversion.
>>> When it returns it goes back
>>> to host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 137 and retu=
rns.
>>> It should have gone instead
>>> to host/lib/include/uhdlib/transport/rx_streamer_impl.hpp: 362 to conti=
nue.
>>> Next line would be: // Advance the pointer for the source buffer
>>> which is never executed:(
>>>
>>> I cannot test if this is the OO problem, since gdb has a bug with
>>> breakpoint locations.
>>> The code in converters seems to mess up the memory for the IR register
>>> (AMD CPU - next instruction)
>>>
>>> BR
>>> Nikos
>>>
>>> On Fri, Aug 1, 2025 at 12:55=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>
>>> wrote:
>>>
>>>> I always read my buffers. That's the whole point. Not using my X310 fo=
r
>>>> anything else.
>>>> Not transmitting anything.
>>>> Besides, between your X310 estimations and my calculations, it turns
>>>> out, that *no buffer* is ever cleared.
>>>> I could understand missing a couple of reads, which I don't, but all o=
f
>>>> them?
>>>> The buffer current pointer is advanced fine. I always read in the new
>>>> data, never the same.
>>>> But it doesn't delete the old reads below the current pointer:(
>>>> Maybe it has to do with the "strange memory" I use.
>>>> UHD uses a lot of "weird" code that is not very portable.
>>>> What UHD file is it? I need to check it, and run it through gdb...
>>>>
>>>> TIA
>>>> Nikos
>>>>
>>>> On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun <martin.braun@et=
tus.com>
>>>> wrote:
>>>>
>>>>> It sounds like you are not permanently reading samples. Everytime
>>>>> rx_streamer::recv() returns, the samples are "removed" from the buffe=
rs.
>>>>>
>>>>> --M
>>>>>
>>>>> On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gma=
il.com>
>>>>> wrote:
>>>>>
>>>>>> Thanks Martin,
>>>>>>
>>>>>> for your fast response.
>>>>>> My bad not mentioning my setup. But you got them right:)
>>>>>> Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.
>>>>>>
>>>>>> 1) Yup. I start the recv() right after I start the streamer.
>>>>>> 2) Can't change that. Buffers are created in OpenCL and am mapping
>>>>>> them to the host side to write them. They are limited to the FFT siz=
e, 1024
>>>>>> samples.
>>>>>>
>>>>>> The interesting thing is that at first I am using an FFT batch size
>>>>>> of 16x, that is 16384 samples.
>>>>>> That means that I have to back and get more samples 16x!
>>>>>> However, i am not getting  the OOs then.
>>>>>> Later on, I only do a single pass, .num_samples =3D 1024, just enoug=
h
>>>>>> for 1 FFT, for now. This might change in the future.
>>>>>> But this is where I'm getting the OO's.
>>>>>> My test results, couldn't get OO's with 3e5 samples ~ 5 MB in 11 hrs=
.
>>>>>> That shows that rx_streamer buffers are larger than 5 MB, in line wi=
th your
>>>>>> estimation of 25 MBs:)
>>>>>> These are big buffers:)
>>>>>> Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB +
>>>>>> 6.054 MB in  1x single FFT mode ~24.6 MBs before OOs appear.
>>>>>> Seems that I don't read anything! But I read every single sample:(
>>>>>> Must be  that rx_streamer delivers the samples but doesn't reduce it=
s
>>>>>> buffers...
>>>>>>
>>>>>> This shouldn't be happening. Where in UHD sources is this controlled=
?
>>>>>>
>>>>>> TIA
>>>>>> Nikos
>>>>>>
>>>>>> On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun <martin.braun@=
ettus.com>
>>>>>> wrote:
>>>>>>
>>>>>>> The size of the recv buffer depends on a bunch of things. On X310,
>>>>>>> when using 10 GbE, UHD will try and make the socket buffer 25MB in =
size.
>>>>>>> Until the socket buffer is full, there will be no overrun.
>>>>>>>
>>>>>>> BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b").
>>>>>>> But you don't have to, I can tell you that you will end up in
>>>>>>> radio_control_impl.cpp.
>>>>>>>
>>>>>>> There are several knobs for you to tune:
>>>>>>>
>>>>>>> - Are you starting your recv() call soon enough, or is the radio
>>>>>>> streaming before you recv?
>>>>>>> - Can you increase the buffer size that you pass into recv? In an
>>>>>>> extreme case, you would pass a buffer that is big enough for all nu=
m_samps,
>>>>>>> and let UHD handle it.
>>>>>>>
>>>>>>> Also, what's your rate, your device, your transport...
>>>>>>>
>>>>>>> --M
>>>>>>>
>>>>>>> On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@=
gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Did some more testing. Tried to fill rx_streamer's buffers in
>>>>>>>> purpose.
>>>>>>>> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>>>>>>>> streamer timeout set to 3".
>>>>>>>>
>>>>>>>> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping =
1"
>>>>>>>> each turn.
>>>>>>>> More than 16" to complete the read. No OO's.
>>>>>>>> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop addin=
g
>>>>>>>> 1" to sleep
>>>>>>>> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No
>>>>>>>> OO's.
>>>>>>>>
>>>>>>>> Is overflow even working right?
>>>>>>>> How large are the streamer's receive buffers?
>>>>>>>>
>>>>>>>> Nikos
>>>>>>>>
>>>>>>>> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@=
gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi,
>>>>>>>>>
>>>>>>>>> I am getting a few overflow errors after sometime, from using my
>>>>>>>>> code..
>>>>>>>>> First OOs in stdout and then metadata at which point it stalls.
>>>>>>>>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>>>>>> Each time I read .num_samps in a loop until complete and then
>>>>>>>>> restart the streamer.
>>>>>>>>> I can't think of any case that I don't read all of the samples, s=
o
>>>>>>>>> this shouldn't happen.
>>>>>>>>> What tools are there to debug this issue?
>>>>>>>>> A function to monitor the rx_streamer internal buffers would be
>>>>>>>>> very useful.
>>>>>>>>> Even the filename that implements this overflow would be helpful.
>>>>>>>>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST"=
:(
>>>>>>>>>
>>>>>>>>> TIA
>>>>>>>>> Nikos
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000027a12f063cc330d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Sin=
ce no one else reported this as a problem,</div><div class=3D"gmail_default=
" style=3D"font-size:small">it must be a C-API bug.</div><div class=3D"gmai=
l_default" style=3D"font-size:small">Seems I&#39;m the only one using it:(<=
/div><div class=3D"gmail_default" style=3D"font-size:small">I could have fi=
xed it, but since I have more issues with UHD,</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">I opted to write my own C driver for it...<=
/div><div class=3D"gmail_default" style=3D"font-size:small">bb friends, I&#=
39;m leaving the group:(=C2=A0</div><div class=3D"gmail_default" style=3D"f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:s=
mall">BR</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos<=
/div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Aug 1, 2025 at 5:20=E2=80=AFPM Nikos Bal=
kanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">I&#39;m re=
ceiving the correct signal and number of items received.=C2=A0</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">But the buffer is not freed=
. After ~25 MBs I start getting OOs, until</div><div class=3D"gmail_default=
" style=3D"font-size:small">it stalls.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">GDB shows that it skips uhd code updating the point=
er in the source buffer.</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">That&#39;s bad:(</div><div class=3D"gmail_default" style=3D"font-=
size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small=
">Nikos</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Aug 1, 2025 at 3:32=E2=80=AFPM Martin Braun &lt;<a hre=
f=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>The return value of recv() is the number of items th=
at are pulled from the receive buffer, and are copied to your OpenCL buffer=
. When it returns, that&#39;s the=C2=A0amount of space freed in the receive=
 buffer.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 1, 2025 at 7:47=E2=
=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=
=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-size:small">Seems it runs through host/lib/include/uhdlib=
/transport/rx_streamer_impl.hpp: 137</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">-&gt; _recv_one_packet()=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 :=C2=A0 276</div><div class=3D"gmail_default" style=3D"font-s=
ize:small">-&gt;=C2=A0 _convert_to_out_buff()</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">-&gt; _converters[chan]-&gt;conv(buffer_ptr,=
 out_buffs, num_samps); 362</div><div class=3D"gmail_default" style=3D"font=
-size:small">-&gt; host/include/uhd/convert.hpp:35</div><div class=3D"gmail=
_default" style=3D"font-size:small">-&gt; host/lib/convert/sse2_sc16_to_fc3=
2.cpp: 124</div><div class=3D"gmail_default" style=3D"font-size:small">-&gt=
;=C2=A0chdr_sc16_to_xx : 173</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">-&gt;=C2=A0host/lib/convert/convert_common.hpp: 198</div><div=
 class=3D"gmail_default" style=3D"font-size:small">Where it does the generi=
c (non-sse2) conversion.</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">When it returns it goes back to=C2=A0host/lib/include/uhdlib/tran=
sport/rx_streamer_impl.hpp: 137 and returns.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">It should have gone instead to=C2=A0host/lib/=
include/uhdlib/transport/rx_streamer_impl.hpp: 362 to continue.</div><div c=
lass=3D"gmail_default" style=3D"font-size:small">Next line would be:=C2=A0/=
/ Advance the pointer for the source buffer</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">which is never executed:(</div><div class=3D"g=
mail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">I cannot test if this is the OO problem, sinc=
e gdb has a bug with breakpoint locations.</div><div class=3D"gmail_default=
" style=3D"font-size:small">The code in converters seems to mess up the mem=
ory for the IR register (AMD CPU - next instruction)</div><div class=3D"gma=
il_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default=
" style=3D"font-size:small">BR</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Nikos</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Aug 1, 2025 at 12:55=E2=80=AFAM Nikos Ba=
lkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkan=
as@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-siz=
e:small">I always read my buffers. That&#39;s the whole point. Not using my=
 X310 for anything else.</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Not transmitting anything.</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">Besides, between your X310 estimations and my calcula=
tions, it turns out, that *no buffer* is ever cleared.</div><div class=3D"g=
mail_default" style=3D"font-size:small">I could understand missing a couple=
 of reads, which I don&#39;t, but all of them?</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">The buffer current pointer is advanced fine=
. I always read in the new data, never the same.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">But it doesn&#39;t delete the old reads b=
elow the current pointer:(</div><div class=3D"gmail_default" style=3D"font-=
size:small">Maybe it has to do with the &quot;strange memory&quot; I use.</=
div><div class=3D"gmail_default" style=3D"font-size:small">UHD uses a lot o=
f &quot;weird&quot; code that is not very portable.</div><div class=3D"gmai=
l_default" style=3D"font-size:small">What UHD file is it? I need to check i=
t, and run it through gdb...</div><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">TIA</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun &lt;<a href=3D"ma=
ilto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>It sounds like you are not permanently=C2=A0reading samples=
. Everytime rx_streamer::recv() returns, the samples are &quot;removed&quot=
; from the buffers.</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025=
 at 8:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.co=
m" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmai=
l_default" style=3D"font-size:small">Thanks Martin,</div><div class=3D"gmai=
l_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">for your fast response.</div><div class=3D"gmail=
_default" style=3D"font-size:small">My bad not mentioning my setup. But you=
 got them right:)</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">1) Yup. I start the recv() right after I start the str=
eamer.=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">2)=
 Can&#39;t change that. Buffers are created in OpenCL and am mapping them t=
o the host side to write them. They are limited to the FFT size, 1024 sampl=
es.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">The interesting thing=
 is that at first I am using an FFT batch size of 16x, that is 16384 sample=
s.</div><div class=3D"gmail_default" style=3D"font-size:small">That means t=
hat I have to back and get more samples 16x!</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">However, i am not getting=C2=A0 the OOs then.=
</div><div class=3D"gmail_default" style=3D"font-size:small">Later on, I on=
ly do a single pass, .num_samples =3D 1024, just enough for 1 FFT, for now.=
 This might change in the future.</div><div class=3D"gmail_default" style=
=3D"font-size:small">But this is where I&#39;m getting the OO&#39;s.</div><=
div class=3D"gmail_default" style=3D"font-size:small">My test results, coul=
dn&#39;t get OO&#39;s with 3e5 samples ~ 5 MB in 11 hrs. That shows that rx=
_streamer buffers are larger than 5 MB, in line with your</div><div class=
=3D"gmail_default" style=3D"font-size:small">estimation of 25 MBs:)</div><d=
iv class=3D"gmail_default" style=3D"font-size:small">These are big buffers:=
)</div><div class=3D"gmail_default" style=3D"font-size:small">Doing a few c=
alculations, I read 1133 samples in 16x mode ~18.5 MB=C2=A0+ 6.054 MB in=C2=
=A0 1x single FFT mode ~24.6 MBs before OOs appear.</div><div class=3D"gmai=
l_default" style=3D"font-size:small">Seems that I don&#39;t read anything! =
But I read every single sample:(</div><div class=3D"gmail_default" style=3D=
"font-size:small">Must be=C2=A0 that rx_streamer delivers the samples but d=
oesn&#39;t reduce its buffers...</div><div class=3D"gmail_default" style=3D=
"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size=
:small">This shouldn&#39;t be happening. Where in UHD sources is this contr=
olled?</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">TIA</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 20=
25 at 12:00=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettu=
s.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The si=
ze of the recv buffer depends on a bunch of things. On X310, when using 10 =
GbE, UHD will try and make the socket buffer 25MB in size. Until the socket=
 buffer is full, there will be no overrun.</div><div><br></div><div>BTW if =
you want to find O in UHD, grep for &quot;\&lt;O\&gt;&quot; (or ag &quot;\b=
O\b&quot;). But you don&#39;t have to, I can tell you that you will end up =
in radio_control_impl.cpp.</div><div><br></div><div>There are several knobs=
 for you to tune:</div><div><br></div><div>- Are you starting your recv() c=
all soon enough, or is the radio streaming before=C2=A0you recv?</div><div>=
- Can you increase the=C2=A0buffer size that you pass into recv? In an extr=
eme case, you would pass a buffer that is big enough for all num_samps, and=
 let UHD handle it.</div><div><br></div><div>Also, what&#39;s your rate, yo=
ur device, your transport...</div><div><br></div><div>--M</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul =
31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas=
@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div clas=
s=3D"gmail_default" style=3D"font-size:small">Did some more testing. Tried =
to fill rx_streamer&#39;s buffers in purpose.</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">.stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SA=
MPS_AND_DONE</div><div class=3D"gmail_default" style=3D"font-size:small">st=
reamer timeout set to 3&quot;.</div><div class=3D"gmail_default" style=3D"f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:s=
mall">1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1&q=
uot; each turn.</div><div class=3D"gmail_default" style=3D"font-size:small"=
>More than 16&quot; to complete the read. No OO&#39;s.</div><div class=3D"g=
mail_default" style=3D"font-size:small">2) .num_samps =3D 3e5. Read 1024 sa=
mples each time in a loop adding 1&quot; to sleep</div><div class=3D"gmail_=
default" style=3D"font-size:small">in each turn (1, 2, 3, 4, ...). 11 hrs t=
o complete the read. No OO&#39;s.</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">Is overflow even working right?</div><div class=3D"gmail_default=
" style=3D"font-size:small">How large are the streamer&#39;s receive buffer=
s?</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul=
 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas=
@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div clas=
s=3D"gmail_default" style=3D"font-size:small">Hi,</div><div class=3D"gmail_=
default" style=3D"font-size:small"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">I am getting a few overflow errors after sometime,=
 from using my code..</div><div class=3D"gmail_default" style=3D"font-size:=
small">First OOs in stdout and then metadata at which point it stalls.</div=
><div class=3D"gmail_default" style=3D"font-size:small">I&#39;m using .stre=
am_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,</div><div class=3D"gma=
il_default" style=3D"font-size:small">Each time I read .num_samps in a loop=
 until complete and then restart the streamer.</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">I can&#39;t think of any case that I don&#3=
9;t read all of the samples, so this shouldn&#39;t happen.</div><div class=
=3D"gmail_default" style=3D"font-size:small">What tools are there to debug =
this issue?</div><div class=3D"gmail_default" style=3D"font-size:small">A f=
unction to monitor the rx_streamer internal buffers would be very useful.</=
div><div class=3D"gmail_default" style=3D"font-size:small">Even the filenam=
e that implements this overflow would be helpful.</div><div class=3D"gmail_=
default" style=3D"font-size:small">Grepping &quot;OO&quot; in the sources d=
oesn&#39;t help. Always hits in &quot;BOOST&quot;:(</div><div class=3D"gmai=
l_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Nikos=C2=A0</div><div class=3D"gmail_default" style=3D"font=
-size:small"><br></div></div>
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
</blockquote></div>

--00000000000027a12f063cc330d2--

--===============4324382192135668209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4324382192135668209==--
