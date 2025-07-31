Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E007B17888
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 23:56:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4587D3868DC
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 17:56:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753998990; bh=L4ZhvNi2wKKQc6/w8NwhV3mw+f5RRP7i56ibHhiAiKk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QAZu6SIjxJ6eogTEec+3Sdf7B/sXzxxGeHsbK7nUAZitD2RZWQaOTbT1zotOIAn43
	 ZLkIok2mtiEiuyjhvbH+So0inSBeAYoGYSom0w61f6ysiX4SzP8YeZLOWdy6140vHm
	 vOp6PMPcOcCtaMGretoAUA8ywUAYLK/HaK2ocjohjfCesKQDLYmg40TczFd5wX8xyV
	 iyngnHJ7XNCSfb2rMYXEsd4qZX9YuX7unsYBPkmNuHc0ysCmgrHFuYC2Z3xb1crKOU
	 FuRLE2mK298SAtsFnz+aAYxO4Un5DyLLtb30DrmRsW1SMEeFCp4u5aQ5Evq+ICSNuO
	 Bv5OkyFbI3ErQ==
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C0A1386869
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 17:55:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UH9Vfd4s";
	dkim-atps=neutral
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-87c070b2dfbso26346939f.3
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 14:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753998947; x=1754603747; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jpRdUjmZwRhmjiaJCMm299+1fsEGNIlBc8wrUl/aJwg=;
        b=UH9Vfd4sZFnja2vXQYYSrvJcxlY7OonT3wFzMstHOpcbuPFIxVfq1lcPcCZ0TH/mEI
         hGO4y4i6bc2LmHlGX/VTadBHiD1O0h5hPQWzsPKRNk+7+ugqAAGYjMjxf8duwkjXPTn7
         8T2AXqbh3J18las8obakAIDigmUffo547GrMrI2Ki3mR5OEbzcJ8cMmhpe7cJYAYmM8j
         wO1GNlJbZbs6emsvT2NsQW1XkaF4B9MeJVOe8COl12JcDRAYErhyKYDOqnJqMOXCPXOK
         pGI72NrR4r+TFSz1ZqxY7bSzrOnfk23otqIvMv4FecQZcDxjz0p33SzmbKcyt5htfprP
         lraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753998947; x=1754603747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jpRdUjmZwRhmjiaJCMm299+1fsEGNIlBc8wrUl/aJwg=;
        b=rPQ/rXYPL46xONOUcFj7X68/4tq2JNpFQ6DcFJGwM8BMsCpph1y5HQWoQj9NqR3t1c
         qhsXnRjeWDVOUWIE29XBJbsB279S/+yC7uPnm6E9A9YyYbgsyJ3WLQbw28dnNJd9vk9e
         m6vBmIJag5OxcKLn8Qfjg/2oCML5OrW/hmZNlrPVWMf3Cotw16SPIhEb7LnmEWnLeDk/
         mDPI4eOGaZSQ/NClQFRP9EPfDeK/uzYwV1303NYdLMLvjae00s+qxcXeTpNNNXEQhA9d
         s9AOt5Gv+aodNWqeqFnymyuIh9jvXlV7PjdpifkYC+eBwx8LZqTciKKjYOXYt/iSqpoe
         FT6A==
X-Gm-Message-State: AOJu0YzVs0QtaFUc/XYy6c9ITL3X98ynxOxuj0AcqtgQWDV2/Qk/Lit2
	1FKXsi4ZftLJgHnC1L6asEbCM8n2hZp3uNACh4NyXdLYQD7MxIj0BqQPmcb4fzkIWum1smVVs+b
	r9iMTRUDvxMxcsauLO4BsRZhl/yOz/fw=
X-Gm-Gg: ASbGncuAKT5nTkyN0ydbqz4PmbV1VkS4vszll9UtL7Wlgwaex3rZWdxCjB5UdE78AzW
	Y5AP10aCFk/oa8gqhVufq5MQ4VTOwF6CRpddw7IgvAphOwCc7w73TsBa28dwOcVkHVfuYqb1UZq
	ZnDIokVdeLsPyo/jPupiJKCsWJOd2oZs16reZozsICjodmeOIZV1Aq+RL15c7dn26xnTWTM2rZ7
	kz0rpCIlHjLTJBbIZs=
X-Google-Smtp-Source: AGHT+IEFtL0TYYiElQV2EOVF15vppxB+sesvuYWBxovpRVyyBo1B726xoaaajTHX0/om1T6+COHvEopVklTbfzb/Nzk=
X-Received: by 2002:a05:6e02:17c9:b0:3e3:f7f8:fbc9 with SMTP id
 e9e14a558f8ab-3e40d700001mr8457035ab.12.1753998946665; Thu, 31 Jul 2025
 14:55:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
 <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
 <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com> <CAFOi1A6Qv2zq6-CWZScBp=3Xh6uLR_u=xv=xTXecVhvDKVeCjw@mail.gmail.com>
In-Reply-To: <CAFOi1A6Qv2zq6-CWZScBp=3Xh6uLR_u=xv=xTXecVhvDKVeCjw@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 1 Aug 2025 00:55:34 +0300
X-Gm-Features: Ac12FXxEDI0NgQ4FfL_I1lIVx9IQx0eZRyUT1f-nDlS8uyr55TjwNOI3wwpR6jI
Message-ID: <CAAxXO2GFY0iYeezAk767dZegidxSTWLY7bqnnUksaneb=Xy-pw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: PKGAE7EXUADDQCXYIB26DSE2HYTPVTF5
X-Message-ID-Hash: PKGAE7EXUADDQCXYIB26DSE2HYTPVTF5
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PKGAE7EXUADDQCXYIB26DSE2HYTPVTF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3133305475346796455=="

--===============3133305475346796455==
Content-Type: multipart/alternative; boundary="0000000000002709b3063b40b486"

--0000000000002709b3063b40b486
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I always read my buffers. That's the whole point. Not using my X310 for
anything else.
Not transmitting anything.
Besides, between your X310 estimations and my calculations, it turns out,
that *no buffer* is ever cleared.
I could understand missing a couple of reads, which I don't, but all of
them?
The buffer current pointer is advanced fine. I always read in the new data,
never the same.
But it doesn't delete the old reads below the current pointer:(
Maybe it has to do with the "strange memory" I use.
UHD uses a lot of "weird" code that is not very portable.
What UHD file is it? I need to check it, and run it through gdb...

TIA
Nikos

On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun <martin.braun@ettus.c=
om>
wrote:

> It sounds like you are not permanently reading samples. Everytime
> rx_streamer::recv() returns, the samples are "removed" from the buffers.
>
> --M
>
> On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Thanks Martin,
>>
>> for your fast response.
>> My bad not mentioning my setup. But you got them right:)
>> Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.
>>
>> 1) Yup. I start the recv() right after I start the streamer.
>> 2) Can't change that. Buffers are created in OpenCL and am mapping them
>> to the host side to write them. They are limited to the FFT size, 1024
>> samples.
>>
>> The interesting thing is that at first I am using an FFT batch size of
>> 16x, that is 16384 samples.
>> That means that I have to back and get more samples 16x!
>> However, i am not getting  the OOs then.
>> Later on, I only do a single pass, .num_samples =3D 1024, just enough fo=
r 1
>> FFT, for now. This might change in the future.
>> But this is where I'm getting the OO's.
>> My test results, couldn't get OO's with 3e5 samples ~ 5 MB in 11 hrs.
>> That shows that rx_streamer buffers are larger than 5 MB, in line with y=
our
>> estimation of 25 MBs:)
>> These are big buffers:)
>> Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB +
>> 6.054 MB in  1x single FFT mode ~24.6 MBs before OOs appear.
>> Seems that I don't read anything! But I read every single sample:(
>> Must be  that rx_streamer delivers the samples but doesn't reduce its
>> buffers...
>>
>> This shouldn't be happening. Where in UHD sources is this controlled?
>>
>> TIA
>> Nikos
>>
>> On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun <martin.braun@ettu=
s.com>
>> wrote:
>>
>>> The size of the recv buffer depends on a bunch of things. On X310, when
>>> using 10 GbE, UHD will try and make the socket buffer 25MB in size. Unt=
il
>>> the socket buffer is full, there will be no overrun.
>>>
>>> BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b"). But
>>> you don't have to, I can tell you that you will end up in
>>> radio_control_impl.cpp.
>>>
>>> There are several knobs for you to tune:
>>>
>>> - Are you starting your recv() call soon enough, or is the radio
>>> streaming before you recv?
>>> - Can you increase the buffer size that you pass into recv? In an
>>> extreme case, you would pass a buffer that is big enough for all num_sa=
mps,
>>> and let UHD handle it.
>>>
>>> Also, what's your rate, your device, your transport...
>>>
>>> --M
>>>
>>> On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>> wrote:
>>>
>>>> Did some more testing. Tried to fill rx_streamer's buffers in purpose.
>>>> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>>>> streamer timeout set to 3".
>>>>
>>>> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1" e=
ach
>>>> turn.
>>>> More than 16" to complete the read. No OO's.
>>>> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1"=
 to
>>>> sleep
>>>> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO's.
>>>>
>>>> Is overflow even working right?
>>>> How large are the streamer's receive buffers?
>>>>
>>>> Nikos
>>>>
>>>> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>>> wrote:
>>>>
>>>>> Hi,
>>>>>
>>>>> I am getting a few overflow errors after sometime, from using my code=
..
>>>>> First OOs in stdout and then metadata at which point it stalls.
>>>>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>> Each time I read .num_samps in a loop until complete and then restart
>>>>> the streamer.
>>>>> I can't think of any case that I don't read all of the samples, so
>>>>> this shouldn't happen.
>>>>> What tools are there to debug this issue?
>>>>> A function to monitor the rx_streamer internal buffers would be very
>>>>> useful.
>>>>> Even the filename that implements this overflow would be helpful.
>>>>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(
>>>>>
>>>>> TIA
>>>>> Nikos
>>>>>
>>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002709b3063b40b486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">I a=
lways read my buffers. That&#39;s the whole point. Not using my X310 for an=
ything else.</div><div class=3D"gmail_default" style=3D"font-size:small">No=
t transmitting anything.</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Besides, between your X310 estimations and my calculations, it tu=
rns out, that *no buffer* is ever cleared.</div><div class=3D"gmail_default=
" style=3D"font-size:small">I could understand missing a couple of reads, w=
hich I don&#39;t, but all of them?</div><div class=3D"gmail_default" style=
=3D"font-size:small">The buffer current pointer is advanced fine. I always =
read in the new data, never the same.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">But it doesn&#39;t delete the old reads below the cu=
rrent pointer:(</div><div class=3D"gmail_default" style=3D"font-size:small"=
>Maybe it has to do with the &quot;strange memory&quot; I use.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">UHD uses a lot of &quot;wei=
rd&quot; code that is not very portable.</div><div class=3D"gmail_default" =
style=3D"font-size:small">What UHD file is it? I need to check it, and run =
it through gdb...</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</di=
v><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jul 31, 2025 at 11:25=E2=80=AFPM Martin Braun &lt;<=
a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>It sounds like you are not permanently=C2=A0reading samples. Ever=
ytime rx_streamer::recv() returns, the samples are &quot;removed&quot; from=
 the buffers.</div><div><br></div><div>--M</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 8:0=
4=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" targ=
et=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-size:small">Thanks Martin,</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">for your fast response.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">My bad not mentioning my setup. But you got t=
hem right:)</div><div class=3D"gmail_default" style=3D"font-size:small">Ubu=
ntu 24.04, UHD 4.6, X310, 10 Gbe line.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fon=
t-size:small">1) Yup. I start the recv() right after I start the streamer.=
=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">2) Can&#=
39;t change that. Buffers are created in OpenCL and am mapping them to the =
host side to write them. They are limited to the FFT size, 1024 samples.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">The interesting thing is th=
at at first I am using an FFT batch size of 16x, that is 16384 samples.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">That means that I =
have to back and get more samples 16x!</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">However, i am not getting=C2=A0 the OOs then.</div>=
<div class=3D"gmail_default" style=3D"font-size:small">Later on, I only do =
a single pass, .num_samples =3D 1024, just enough for 1 FFT, for now. This =
might change in the future.</div><div class=3D"gmail_default" style=3D"font=
-size:small">But this is where I&#39;m getting the OO&#39;s.</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">My test results, couldn&#39;t=
 get OO&#39;s with 3e5 samples ~ 5 MB in 11 hrs. That shows that rx_streame=
r buffers are larger than 5 MB, in line with your</div><div class=3D"gmail_=
default" style=3D"font-size:small">estimation of 25 MBs:)</div><div class=
=3D"gmail_default" style=3D"font-size:small">These are big buffers:)</div><=
div class=3D"gmail_default" style=3D"font-size:small">Doing a few calculati=
ons, I read 1133 samples in 16x mode ~18.5 MB=C2=A0+ 6.054 MB in=C2=A0 1x s=
ingle FFT mode ~24.6 MBs before OOs appear.</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">Seems that I don&#39;t read anything! But I re=
ad every single sample:(</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Must be=C2=A0 that rx_streamer delivers the samples but doesn&#39=
;t reduce its buffers...</div><div class=3D"gmail_default" style=3D"font-si=
ze:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">=
This shouldn&#39;t be happening. Where in UHD sources is this controlled?</=
div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div c=
lass=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"gma=
il_default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 12=
:00=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" t=
arget=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The size of th=
e recv buffer depends on a bunch of things. On X310, when using 10 GbE, UHD=
 will try and make the socket buffer 25MB in size. Until the socket buffer =
is full, there will be no overrun.</div><div><br></div><div>BTW if you want=
 to find O in UHD, grep for &quot;\&lt;O\&gt;&quot; (or ag &quot;\bO\b&quot=
;). But you don&#39;t have to, I can tell you that you will end up in radio=
_control_impl.cpp.</div><div><br></div><div>There are several knobs for you=
 to tune:</div><div><br></div><div>- Are you starting your recv() call soon=
 enough, or is the radio streaming before=C2=A0you recv?</div><div>- Can yo=
u increase the=C2=A0buffer size that you pass into recv? In an extreme case=
, you would pass a buffer that is big enough for all num_samps, and let UHD=
 handle it.</div><div><br></div><div>Also, what&#39;s your rate, your devic=
e, your transport...</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025=
 at 10:17=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.c=
om" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_default" style=3D"font-size:small">Did some more testing. Tried to fill =
rx_streamer&#39;s buffers in purpose.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">.stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_=
DONE</div><div class=3D"gmail_default" style=3D"font-size:small">streamer t=
imeout set to 3&quot;.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">1)=
 .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1&quot; eac=
h turn.</div><div class=3D"gmail_default" style=3D"font-size:small">More th=
an 16&quot; to complete the read. No OO&#39;s.</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">2) .num_samps =3D 3e5. Read 1024 samples ea=
ch time in a loop adding 1&quot; to sleep</div><div class=3D"gmail_default"=
 style=3D"font-size:small">in each turn (1, 2, 3, 4, ...). 11 hrs to comple=
te the read. No OO&#39;s.</div><div class=3D"gmail_default" style=3D"font-s=
ize:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small"=
>Is overflow even working right?</div><div class=3D"gmail_default" style=3D=
"font-size:small">How large are the streamer&#39;s receive buffers?</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 30, 202=
5 at 3:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.c=
om" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_default" style=3D"font-size:small">Hi,</div><div class=3D"gmail_default"=
 style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"=
font-size:small">I am getting a few overflow errors after sometime, from us=
ing my code..</div><div class=3D"gmail_default" style=3D"font-size:small">F=
irst OOs in stdout and then metadata at which point it stalls.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">I&#39;m using .stream_mode =
=3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">Each time I read .num_samps in a loop until c=
omplete and then restart the streamer.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">I can&#39;t think of any case that I don&#39;t read=
 all of the samples, so this shouldn&#39;t happen.</div><div class=3D"gmail=
_default" style=3D"font-size:small">What tools are there to debug this issu=
e?</div><div class=3D"gmail_default" style=3D"font-size:small">A function t=
o monitor the rx_streamer internal buffers would be very useful.</div><div =
class=3D"gmail_default" style=3D"font-size:small">Even the filename that im=
plements this overflow would be helpful.</div><div class=3D"gmail_default" =
style=3D"font-size:small">Grepping &quot;OO&quot; in the sources doesn&#39;=
t help. Always hits in &quot;BOOST&quot;:(</div><div class=3D"gmail_default=
" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D=
"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:=
small">Nikos=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br></div></div>
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

--0000000000002709b3063b40b486--

--===============3133305475346796455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3133305475346796455==--
