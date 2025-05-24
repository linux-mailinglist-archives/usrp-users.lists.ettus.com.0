Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 880E8AC2E97
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 11:31:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F218385193
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 05:31:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748079092; bh=S5leu0c7T7icamFUIkdzKkkA4DIs0zNSq/4BKbbJebw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UiyGuR3h0AAi2S+tIX3239JePQCAUKwehLzI4GGYNHY827SzjRdvGYn+2dcQAgefd
	 G4V5mWo3SGqqlz8wuRpUV6Mg8K4l4tNotseASig4JB8ZTCQHvMa4Xp70AeKFNADl9x
	 EUpWV9+Uzm6rN5jEDXShbVZiKmKy3cvlM2aZ7OFLrB08o9fL1Y10eGSa7I4WppwiKq
	 lfE4IzAeEazWEnbaghgDhu+tbtClS0wEwK2SUOvKR+ZILC2CkaqaSJK+dMRPQwh1Yk
	 TdVLrU+usZ4UVyhocX4QHeVKH3/WEdQlpmNOeZmAnw+UwZcEwR3DTjaDAEXm2xcmV3
	 ghsS4OixTMqYQ==
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E2A3380E2A
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 05:30:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GR0yfQ08";
	dkim-atps=neutral
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3dc978d52edso6893875ab.1
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 02:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748079038; x=1748683838; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eiRcc2WpE0uZ+Nqg6l0er3UViQnFOYAIJUjfpgnFfwQ=;
        b=GR0yfQ08bi/T+Pa5uLamgIz0OH9ADUZ3kcb/XaX22DgyKRA0icFyDL+hZeZUJ/uVs7
         l8hTE9F8vXIgODHweCI7CpjIds8HgXmwRMynxF3y9x6/1cBGwkjA3Huy73RqlqSb9mxw
         vtuDlcwoJJ4cFSSPod6L5v0jL3OOPJS1ettGoYSGPdCeWigb3Hc0Uc5n4VkQ7EAcdGCP
         dHopXvYt8XqyzAV+0ViiBmIfxAOt28B6yMNZPV4JcazOMJh9C0lKlmE9X88GwP1p0GoU
         +nMsNUM+htn/aCuCWIDy7lwqkeN97P9LesnsBMn5T2ZhvgKNDsH3aE4xxzCxpEJCqSby
         WHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748079038; x=1748683838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eiRcc2WpE0uZ+Nqg6l0er3UViQnFOYAIJUjfpgnFfwQ=;
        b=lrJXh/IMbOMeWJyiiLJjm0oZi4iPKhtJ9Fw29Nak/pUY0gfJEOz7CiwaULc8wJy2OZ
         aIhIrSSykScZaUwo69Et5/RgvX1SspFkwvjqDPdWmsLUODzNrNokBv1WLNMg0YfUhuel
         mDjGjX7fbImCzN3NPD9E3OCJEJpLaHdYgOgwBnhg1y6Uq0yTicjAlxqz7OX6NHKECkiH
         It+pc1MZNdP60haI27qAIZh0btHwk/bFKbaE3gEcuFUFNeePXPEMzY7aXX7uset+dwrO
         kmAgoCHZjZgYSmiDwANyQd/93e6f7fcpCxvxazPEUL+NaJ+FgOm0WCtTn/eB0OfETs32
         IfYw==
X-Forwarded-Encrypted: i=1; AJvYcCXHalHwHyD+KK0FoNO25sIpwm6ZBlDt8y9BhDSwyiD2EOVlBjj1V2b5fhxdp+2ITr+/xoj7FHoOPjEV@lists.ettus.com
X-Gm-Message-State: AOJu0YwQt5NpHBOwcsn0O6Y/FaUE1vi3gC280cSCCAM62i/2wVz1lb5C
	n6ovcKyNXjm3AvcYDuj3l7I6i5NUkuA/i4ZUO65btSumebM/tWuyiI1N9dtbTVWb2nDc6VfNNGK
	ByCZdowji58QWoq1jQqsLhP3G7zvEO9k=
X-Gm-Gg: ASbGncsaEglhy6P6QBFRSIrxQ8/+z2ZAudHovNJ8o53ZjPJyyAmIi2nQ+18hA7Azr3n
	NyGXTyTilC0aCGZG6wxqOHKs4f6aYIserdZgmV6BVnJMYnIaFXNW6R8a8Sp0CthUxbZaUqmjbRn
	expf7xE11XH5wyiBqmP9Jrucl+WTRx
X-Google-Smtp-Source: AGHT+IFK8Z7ZehdYpGA2vil468bhBLeXEE0V6k6keO5HujRI3FuMY4m2/9ObJ8/NSABv/XaIPsNBIw2rZ9hgWmHm65M=
X-Received: by 2002:a05:6e02:2701:b0:3d9:6485:39f0 with SMTP id
 e9e14a558f8ab-3dc9b6a9e4emr17687795ab.9.1748079038328; Sat, 24 May 2025
 02:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com> <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
 <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
 <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com> <CAAxXO2EShVqaVvO3LBMOvvNGeq_gDF2-+FRShfpb_cdGh9eCRg@mail.gmail.com>
 <CAB__hTQq3yzT4v5qYhCDRaoPoWtVKZbd0zSiZ-Rw0j1C40yLhA@mail.gmail.com>
 <CAB__hTRpTLn2E9cdja1y3BrMp0pFQYEtYq0OGC6mgura4tNo-Q@mail.gmail.com>
 <CAAxXO2GTMr4JNZEv46z9WXk5F_Ux5qJLTA=cnkumredumDxvBA@mail.gmail.com>
 <e86846d4-0a75-4bf5-8700-04b06668406b@gmail.com> <CAAxXO2HovWZumzKtUedBzuSt6eci=pvWE0Wf6TV3-Nr5u+220Q@mail.gmail.com>
In-Reply-To: <CAAxXO2HovWZumzKtUedBzuSt6eci=pvWE0Wf6TV3-Nr5u+220Q@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 12:30:26 +0300
X-Gm-Features: AX0GCFug3oHTqG_gSJgdA_uBjzDVWdfime2c_jBKqcGv_XqIfh-HuwAg2olXOdE
Message-ID: <CAAxXO2GTDHgY8rPoK1NBV489b=LsyxR0kJZHkZBHjE62Rui0tg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: QYWYDCQWAAWB7JKE5PSTWAJSS6WIQIXW
X-Message-ID-Hash: QYWYDCQWAAWB7JKE5PSTWAJSS6WIQIXW
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYWYDCQWAAWB7JKE5PSTWAJSS6WIQIXW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4057554553198242302=="

--===============4057554553198242302==
Content-Type: multipart/alternative; boundary="0000000000001e71570635de5e2c"

--0000000000001e71570635de5e2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Problem fixed:) It was easier than I thought. No patches needed:)
The answer was in host/lib/types/tune.cpp always:

tune_request_t::tune_request_t(double target_freq, double lo_off)
 .target_freq(target_freq)
, rf_freq_policy(POLICY_MANUAL)
, rf_freq(target_freq + lo_off)
, dsp_freq_policy(POLICY_AUTO)
, dsp_freq(0.0)

There is only a labeling confusion in the definition of tune_request_t.
The first 3 fields refer to the RF chain. It is curious that there are both
target_freq and  rf_freq
at the same time. Rf_freq should be renamed lo_freq!
rf_freq_policy affects both target freq and lo_freq:)

HTH
Nikos




On Sat, May 24, 2025 at 6:16=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Hi Marcus,
>
> I am aware of those. I wouldn't be doing all these if they were available
> to me:(
> You can check C API availability in usrp.h:)
>
> BR
> Nikos
>
> On Sat, May 24, 2025 at 12:33=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 2025-05-23 13:41, Nikos Balkanas wrote:
>>
>> Hi Rob,
>>
>> I've done all these, but they do not affect LO offset.
>> C API exports only these low level LO commands (in usrp.h)
>> So, either I work it out with what I have, or I expand the C API
>> to include the higher level C++ constructors.
>> My luck. Both issues have to do with the C API:)
>> Sampling rate is very important, but not useful in this case.
>> I leave it on auto. RF is on manual:)
>>
>> BR
>> Nikos
>>
>> I'll note that the C++ API has a couple of "helper" functions for
>> creating tune_request_t objects:
>>
>>
>> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d2c=
5fb89c10024b1acae43e88ebe7f
>>
>> The second form, which takes both a desired target frequency, and the
>> desired lo_offset, is what I have used in the past.
>>
>> I don't know if these are somehow available in the C API to form the
>> tune_request_t  structure.
>>
>>
>>
>> On Fri, May 23, 2025 at 7:59=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wr=
ote:
>>
>>> I forgot to mention, the function you were looking at
>>> 'uhd_usrp_set_rx_lo_freq' is not the function you need.  This is a
>>> low-level function that is rarely needed. You will want to stay with th=
e
>>> function 'uhd_usrp_set_rx_freq' which will send the appropriate command=
 to
>>> the radio to set the LO and to the DDC to set the desired DSP frequency
>>> shift that will compensate for the LO being offset.
>>> Rob
>>>
>>> On Fri, May 23, 2025 at 12:55=E2=80=AFPM Rob Kossler <rkossler@nd.edu> =
wrote:
>>>
>>>> Hi Nikos,
>>>> Although I have not used the 'c' API, it appears it can do the same
>>>> thing as the c++ API with regard to tune request.  The 'c' structure
>>>> uhd_tune_reqest_t
>>>> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/typ=
es/tune_request.h#L28>
>>>> includes a field called 'dsp_freq'.  It seems that you can set this to=
 30
>>>> MHz.  The c++ documentation  for tune_request_t
>>>> <https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9=
d2c5fb89c10024b1acae43e88ebe7f>
>>>> indicates that you should set the RF policy to manual and the DSP poli=
cy to
>>>> automatic.  I don't know for certain if you should set the 'target_fre=
q' or
>>>> the 'rf_freq' field of the tune request to the desired frequency but I=
'm
>>>> guessing 'target_freq'.
>>>>
>>>> There is an example program called rx_samples_c.c
>>>> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_sam=
ples_c.c>
>>>> which you may have seen. This shows using a tune request but without a=
n LO
>>>> offset.
>>>> Rob
>>>>
>>>> On Fri, May 23, 2025 at 12:09=E2=80=AFPM Nikos Balkanas <nbalkanas@gma=
il.com>
>>>> wrote:
>>>>
>>>>> Ty Rob for the link and the suggestions,
>>>>>
>>>>> We agree completely. I need to offset my LO.
>>>>> You are probably not aware that I am using the C API.
>>>>> I cannot use the C++ constructors for tune_request unless they are
>>>>> exported as C API.
>>>>> I can just use the tune_request_t struct, which has no lo_off member.
>>>>> So, I have  to offset my LO manually:
>>>>> uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, char *name,
>>>>> size_t channel, double *outfreq)
>>>>> I have everything that I need except the LO name:(
>>>>> To get name I use:
>>>>> uhd_usrp_get_rx_lo_names()
>>>>> That's my problem, right there. It just returns me an empty list of
>>>>> names. No errors either. Why?
>>>>> Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(
>>>>> Unfortunately, gdb is no help in this case. After 10 calls to the
>>>>> /usr/include/c++ files and 7 more
>>>>> calls to boost and preprocessor defines, it just advances to the next
>>>>> source line.
>>>>> Not gdb friendly sources:(
>>>>> I am also looking to export as C API the tune_request(freq, lo_off)
>>>>> C++ constructor.
>>>>> This will mean to change code in uhd, which I will eventually have to=
,
>>>>> but right now,
>>>>> getting uhd_usrp_get_rx_lo_names() to work, is better:)
>>>>>
>>>>> BR
>>>>> Nikos
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech <
>>>>> patchvonbraun@gmail.com> wrote:
>>>>>
>>>>>> On 2025-05-23 09:49, Rob Kossler wrote:
>>>>>>
>>>>>> Hi Nikos,
>>>>>> Your RF card has 120 MHz bandwidth.  The strong tone you see will
>>>>>> always be at the center.  But, if your application can tolerate usin=
g an
>>>>>> instantaneous bandwidth < 60 MHz, you can use offset tuning as Marcu=
s
>>>>>> mentioned.  To do this you simply need to create a tune request with=
 your
>>>>>> desired RF frequency and then specify an LO offset frequency of 30 M=
Hz.
>>>>>> This is all that is needed (again assuming that your bandwidth of in=
terest
>>>>>> is < 60 MHz).  This link
>>>>>> <https://dsp.stackexchange.com/questions/30562/large-spike-at-the-ce=
nter-frequency-when-using-ettus-x310>
>>>>>> discusses the topic.
>>>>>>
>>>>>> Also, if you want to reduce the DC offset, there are calibrations fo=
r
>>>>>> the X310 - one of which will mitigate this signal.
>>>>>> Rob
>>>>>>
>>>>>> Just a note that AFAIR, the *RX* DC-offset correction is something
>>>>>> that doesn't require input from the calibration routines--it runs al=
l the
>>>>>> time (if its turned on).
>>>>>>
>>>>>> But phase/amplitude *balance* does require that you run the
>>>>>> appropriate CAL utilities:
>>>>>>
>>>>>> https://files.ettus.com/manual/page_calibration.html
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@gm=
ail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> I have implemented the following calls for uhd_usrp_set_rx_lo_freq:
>>>>>>>
>>>>>>> uhd_string_vector_handle  names;
>>>>>>> uhd_string_vector_make(&names);
>>>>>>> if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names=
)))
>>>>>>>        warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN,
>>>>>>> FN, err, uhdError(err));
>>>>>>> if ((err =3D uhd_string_vector_size(names, &len)))
>>>>>>>      warn(log, "Failed to get lo names size (%d).
>>>>>>> %s.\n",0,FL,LN,FN,err, uhdError(err));
>>>>>>> if (!len)
>>>>>>> {
>>>>>>>       error(log, "No lo names found on channel %d.\n", 0, FL, LN,
>>>>>>> FN, channel);
>>>>>>>        uhd_string_vector_free(&names);
>>>>>>>         return(FAIL);
>>>>>>> }
>>>>>>> uhd_string_vector_free(&names);
>>>>>>>
>>>>>>> The problem is that names always returns 0. This is not right for m=
y
>>>>>>> SBX-120, or any
>>>>>>> daughterboard with  a tuner:( This is what i can get from the API.
>>>>>>> There are no LO examples.
>>>>>>> I have seen lo_enable() in c++, but nothing exported to C. What am =
I
>>>>>>> missing?
>>>>>>>
>>>>>>> TIA
>>>>>>> Nikos
>>>>>>>
>>>>>>> On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@g=
mail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Thx Marcus,
>>>>>>>>
>>>>>>>> For your fast and informative answers. Sorry it took me a while to
>>>>>>>> reply,
>>>>>>>> but I'm still trying to get:
>>>>>>>> tune_request(freq, lo_off)
>>>>>>>> to work in C.
>>>>>>>> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>>>>>>>> True about the tuner. Much cheaper and easier to implement it in
>>>>>>>> analog.
>>>>>>>> I am using your FPGA image. Haven't touched it myself, yet.
>>>>>>>> So, the spike is pretty narrow to interfere with my signals, but
>>>>>>>> still messes my power calculations:(
>>>>>>>> I already implemented the integer frequency tuner and working on
>>>>>>>> the low oscillator offset.
>>>>>>>> If you have any pointers about it, feel free to advise.
>>>>>>>> LO is not part of the request_tuner_t struct. It is set
>>>>>>>> independently.
>>>>>>>> Is this the same LO in uhd_usrp_set_rx_lo_freq?
>>>>>>>> If this is the case I can modify it externally:)
>>>>>>>>
>>>>>>>> BR
>>>>>>>> Nikos
>>>>>>>>
>>>>>>>> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <
>>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>>>>>>>
>>>>>>>>> The spike is very clean to come from outside.
>>>>>>>>> Must be from my X310. My tuner must be adding a signal to the
>>>>>>>>> center frequency. The small artifact at 2 Ghz is probably the
>>>>>>>>> tuner not
>>>>>>>>> equilibrating fully.
>>>>>>>>> I recently updated my FPGA image. Is that where the tuner lives?
>>>>>>>>>
>>>>>>>>> You haven't mentioned in this thread which daughtercard you're
>>>>>>>>> using.   RF front-ends that use complex-baseband
>>>>>>>>>   downconversion suffer from something called "DC-offset", which
>>>>>>>>> produces a spike at 0Hz in the complex spectrum.
>>>>>>>>>   The radio block in the standard FPGAs has methods for reducing
>>>>>>>>> this, unless you turn it off.  This is a very very
>>>>>>>>>   *normal* thing for complex-baseband receiver chains.
>>>>>>>>>
>>>>>>>>> If the algorithms are engaged and working, then there'll still be
>>>>>>>>> a central spike, but *considerably* reduced, and I find that
>>>>>>>>>   said spike is usually swamped by external signals, even in radi=
o
>>>>>>>>> astronomy.
>>>>>>>>>
>>>>>>>>> The other method that people use is to use "offset tuning".  Wher=
e
>>>>>>>>> the tuner is tuned to a different RF frequency, and the
>>>>>>>>>    DDC brings your signal of interest down to 0Hz.
>>>>>>>>>
>>>>>>>>> https://files.ettus.com/manual/page_general.html#general_tuning
>>>>>>>>>
>>>>>>>>> The "tuner" is an analog collection of components, including an L=
O
>>>>>>>>> generator, and mixers.  While it is *controlled* through
>>>>>>>>>   the FPGA, it is an analog subsystem.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <
>>>>>>>>> nbalkanas@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> Hello,
>>>>>>>>>>
>>>>>>>>>> Whenever I look at my spectrum I always see an energy spike at
>>>>>>>>>> the center frequency.
>>>>>>>>>> In the first image you can see a spike at 2, but not at 2.001
>>>>>>>>>> Ghz. In the next image,
>>>>>>>>>>  at 2.001 Ghz you can see the energy spike at the center
>>>>>>>>>> frequency, but also a small
>>>>>>>>>>  spike at 2 Ghz.
>>>>>>>>>> I have verified these results by both fosphor (OpenCL fft) and
>>>>>>>>>> fftw3f. Besides, if it were
>>>>>>>>>>  an fft artifact, why is the spike at 2 Ghz still visible after =
a
>>>>>>>>>> few mins? These spikes
>>>>>>>>>>  seem to be transient, but real. In that part of the spectrum,
>>>>>>>>>> you there is no traffic. Could it be  harmonics from my power su=
pply?
>>>>>>>>>> Problems with my X-310? My transmitter
>>>>>>>>>>  doing funny things (I have 2 boards and not enabling my
>>>>>>>>>> transmitter anywhere)?
>>>>>>>>>> Naming of images is freq_sr.jpg. All are in Mhz.
>>>>>>>>>>
>>>>>>>>>> TIA
>>>>>>>>>> Nikos
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>>
>>>>>>
>>

--0000000000001e71570635de5e2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi,=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">Problem fixed:) It was e=
asier than I thought. No patches needed:)</div><div class=3D"gmail_default"=
 style=3D"font-size:small">The answer was in host/lib/types/tune.cpp always=
:</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small">tune_request_t::tune_re=
quest_t(double target_freq, double lo_off)</div><div class=3D"gmail_default=
" style=3D"font-size:small">=C2=A0.target_freq(target_freq)<br>, rf_freq_po=
licy(POLICY_MANUAL)<br>, rf_freq(target_freq + lo_off)<br>, dsp_freq_policy=
(POLICY_AUTO)<br>, dsp_freq(0.0)<br><br></div><div class=3D"gmail_default" =
style=3D"font-size:small">There is only a labeling confusion in the definit=
ion of tune_request_t.</div><div class=3D"gmail_default" style=3D"font-size=
:small">The first 3 fields refer to the RF chain. It is curious that there =
are both target_freq and=C2=A0 rf_freq</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">at the same time. Rf_freq should be renamed lo_freq=
!</div><div class=3D"gmail_default" style=3D"font-size:small">rf_freq_polic=
y affects both target freq and lo_freq:)</div><div class=3D"gmail_default" =
style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"f=
ont-size:small">HTH</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">Nikos</div><div class=3D"gmail_default" style=3D"font-size:small"><br>=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small"><br></div></div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, May 24, 2025 at 6:16=E2=80=AFAM Nikos Balkanas &lt;<a href=
=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Hi Marcus,</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">I am aware of those. I wouldn&#39;t be d=
oing all these if they were available to me:(</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">You can check C API availability in usrp.h:)=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">BR</div><div class=3D"gm=
ail_default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 24, 2025 at 1=
2:33=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2025-05-23 13:41, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Hi Rob,</div=
>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">I&#39;ve don=
e all
          these, but they do not affect LO offset.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">C API export=
s
          only these low level LO commands (in usrp.h)</div>
        <div class=3D"gmail_default" style=3D"font-size:small">So, either I
          work it out with what I have, or I expand the C API</div>
        <div class=3D"gmail_default" style=3D"font-size:small">to include
          the higher level C++ constructors.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">My luck. Bot=
h
          issues have to do with the C API:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Sampling rat=
e
          is very important, but not useful in this case.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I leave it o=
n
          auto. RF is on manual:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div>
      </div>
    </blockquote>
    I&#39;ll note that the C++ API has a couple of &quot;helper&quot; funct=
ions for
    creating tune_request_t objects:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/structuhd_1_1tune__request__t.htm=
l#af9d2c5fb89c10024b1acae43e88ebe7f" target=3D"_blank">https://files.ettus.=
com/manual/structuhd_1_1tune__request__t.html#af9d2c5fb89c10024b1acae43e88e=
be7f</a><br>
    <br>
    The second form, which takes both a desired target frequency, and
    the desired lo_offset, is what I have used in the past.<br>
    <br>
    I don&#39;t know if these are somehow available in the C API to form th=
e
    tune_request_t=C2=A0 structure.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          7:59=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu=
" target=3D"_blank">rkossler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">I forgot to mention, the function you were
              looking at &#39;uhd_usrp_set_rx_lo_freq&#39; is not the funct=
ion
              you need.=C2=A0 This is a low-level function that is rarely
              needed. You will want to stay with the function
              &#39;uhd_usrp_set_rx_freq&#39; which will send the appropriat=
e
              command to the radio to set the LO and to the DDC to set
              the desired DSP frequency shift that will compensate for
              the LO being offset.</div>
            <div>Rob</div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
                12:55=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler=
@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">Hi Nikos,
                  <div>Although I have not used the &#39;c&#39; API, it app=
ears
                    it can do the same thing as the c++ API with regard
                    to tune request.=C2=A0 The &#39;c&#39; structure <a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/type=
s/tune_request.h#L28" target=3D"_blank">uhd_tune_reqest_t</a>
                    includes a field called &#39;dsp_freq&#39;.=C2=A0 It se=
ems that
                    you can set this to 30 MHz.=C2=A0 The c++ documentation=
=C2=A0
                    for <a href=3D"https://files.ettus.com/manual/structuhd=
_1_1tune__request__t.html#af9d2c5fb89c10024b1acae43e88ebe7f" target=3D"_bla=
nk">tune_request_t</a>
                    indicates that you should set the RF policy to
                    manual and the DSP policy to automatic.=C2=A0 I don&#39=
;t
                    know for certain if you should set the &#39;target_freq=
&#39;
                    or the &#39;rf_freq&#39; field of the tune request to t=
he
                    desired frequency but I&#39;m guessing &#39;target_freq=
&#39;.=C2=A0</div>
                  <div><br>
                  </div>
                  <div>There is an example program called <a href=3D"https:=
//github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_c.c" ta=
rget=3D"_blank">rx_samples_c.c</a>
                    which you may have seen. This shows using a tune
                    request but without an LO offset.</div>
                  <div>Rob</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 202=
5
                    at 12:09=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailt=
o:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"ltr">
                      <div style=3D"font-size:small">Ty Rob for the link
                        and the suggestions,</div>
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small">We agree completely.
                        I need to offset my LO.</div>
                      <div style=3D"font-size:small">You are probably not
                        aware that I am using the C API.</div>
                      <div style=3D"font-size:small">I cannot use the C++
                        constructors for tune_request unless they are
                        exported as C API.</div>
                      <div style=3D"font-size:small">I can just use the
                        tune_request_t struct, which has no lo_off
                        member.</div>
                      <div style=3D"font-size:small">So, I have=C2=A0 to of=
fset
                        my LO manually:</div>
                      <div style=3D"font-size:small">uhd_usrp_set_rx_lo_fre=
q(uhd_usrp_handle
                        h, double freq, char *name, size_t channel,
                        double *outfreq)</div>
                      <div style=3D"font-size:small">I have everything
                        that I need except the LO name:(</div>
                      <div style=3D"font-size:small">To get name I use:</di=
v>
                      <div style=3D"font-size:small">uhd_usrp_get_rx_lo_nam=
es()</div>
                      <div style=3D"font-size:small">That&#39;s my problem,
                        right there. It just returns me an empty list of
                        names. No errors either. Why?</div>
                      <div style=3D"font-size:small">Without it, I cannot
                        use the uhd_usrp_set_rx_lo_freq:(</div>
                      <div style=3D"font-size:small">Unfortunately, gdb is
                        no help in this case. After 10 calls to the
                        /usr/include/c++ files and 7 more</div>
                      <div style=3D"font-size:small">calls to boost and
                        preprocessor defines, it just advances to the
                        next source line.</div>
                      <div style=3D"font-size:small">Not gdb friendly
                        sources:(</div>
                      <div style=3D"font-size:small">I am also looking to
                        export as C API the tune_request(freq, lo_off)
                        C++ constructor.</div>
                      <div style=3D"font-size:small">This will mean to
                        change code in uhd, which I will eventually have
                        to, but right now,</div>
                      <div style=3D"font-size:small">getting=C2=A0uhd_usrp_=
get_rx_lo_names()
                        to work, is better:)</div>
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small">BR</div>
                      <div style=3D"font-size:small">Nikos</div>
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small"><br>
                      </div>
                    </div>
                    <br>
                    <div class=3D"gmail_quote">
                      <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23,
                        2025 at 4:57=E2=80=AFPM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                        <div>
                          <div>On 2025-05-23 09:49, Rob Kossler wrote:<br>
                          </div>
                          <blockquote type=3D"cite">
                            <div dir=3D"ltr">Hi Nikos,
                              <div>Your RF card has 120 MHz bandwidth.=C2=
=A0
                                The strong tone you see will always be
                                at the center.=C2=A0 But, if your applicati=
on
                                can tolerate using an instantaneous
                                bandwidth &lt; 60 MHz, you can use
                                offset tuning as Marcus mentioned.=C2=A0 To
                                do this you simply need to create a tune
                                request with your desired RF frequency
                                and then specify an LO offset frequency
                                of 30 MHz.=C2=A0 This is all that is needed
                                (again assuming that your bandwidth of
                                interest is &lt; 60 MHz).=C2=A0 <a href=3D"=
https://dsp.stackexchange.com/questions/30562/large-spike-at-the-center-fre=
quency-when-using-ettus-x310" target=3D"_blank">This
                                  link</a> discusses the topic.</div>
                              <div><br>
                              </div>
                              <div>Also, if you want to reduce the DC
                                offset, there are calibrations for the
                                X310 - one of which will mitigate this
                                signal.</div>
                              <div>Rob</div>
                            </div>
                          </blockquote>
                          Just a note that AFAIR, the *RX* DC-offset
                          correction is something that doesn&#39;t require
                          input from the calibration routines--it runs
                          all the time (if its turned on).<br>
                          <br>
                          But phase/amplitude *balance* does require
                          that you run the appropriate CAL utilities:<br>
                          <br>
                          <a href=3D"https://files.ettus.com/manual/page_ca=
libration.html" target=3D"_blank">https://files.ettus.com/manual/page_calib=
ration.html</a><br>
                          <br>
                          <br>
                          <blockquote type=3D"cite"><br>
                            <div class=3D"gmail_quote">
                              <div dir=3D"ltr" class=3D"gmail_attr">On Fri,
                                May 23, 2025 at 8:11=E2=80=AFAM Nikos Balka=
nas
                                &lt;<a href=3D"mailto:nbalkanas@gmail.com" =
target=3D"_blank">nbalkanas@gmail.com</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
                                <div dir=3D"ltr">
                                  <div style=3D"font-size:small">I have
                                    implemented the following calls for
                                    uhd_usrp_set_rx_lo_freq:</div>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">uhd_string=
_vector_handle
                                    =C2=A0names;<br>
                                    uhd_string_vector_make(&amp;names);<br>
                                    if ((err =3D
                                    uhd_usrp_get_rx_lo_names(dev[channel],
                                    channel, &amp;names)))<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, &q=
uot;Failed to get lo
                                    names (%d). %s.\n&quot;, 0, FL, LN, FN,
                                    err, uhdError(err));<br>
                                    if ((err =3D
                                    uhd_string_vector_size(names,
                                    &amp;len)))<br>
                                    =C2=A0 =C2=A0 =C2=A0warn(log, &quot;Fai=
led to get lo
                                    names size (%d).
                                    %s.\n&quot;,0,FL,LN,FN,err,
                                    uhdError(err));<br>
                                    if (!len)<br>
                                    {<br>
                                    =C2=A0 =C2=A0 =C2=A0 error(log, &quot;N=
o lo names found
                                    on channel %d.\n&quot;, 0, FL, LN, FN,
                                    channel);<br>
                                    =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0uhd_string_vector_free(&amp;names=
);<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL=
);</div>
                                  <div style=3D"font-size:small">}</div>
                                  <div style=3D"font-size:small">uhd_string=
_vector_free(&amp;names);</div>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">The
                                    problem is that names always returns
                                    0. This is not right for my SBX-120,
                                    or any</div>
                                  <div style=3D"font-size:small">daughterbo=
ard
                                    with=C2=A0 a tuner:( This is what i can
                                    get from the API. There are no LO
                                    examples.</div>
                                  <div style=3D"font-size:small">I have
                                    seen lo_enable() in c++, but nothing
                                    exported to C. What am I missing?</div>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">TIA</div>
                                  <div style=3D"font-size:small">Nikos</div=
>
                                </div>
                                <br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"ltr" class=3D"gmail_attr">On
                                    Fri, May 23, 2025 at 8:12=E2=80=AFAM Ni=
kos
                                    Balkanas &lt;<a href=3D"mailto:nbalkana=
s@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
                                    wrote:<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div dir=3D"ltr">
                                      <div style=3D"font-size:small">Thx
                                        Marcus,</div>
                                      <div style=3D"font-size:small"><br>
                                      </div>
                                      <div style=3D"font-size:small">For
                                        your fast and informative
                                        answers. Sorry it took me a
                                        while to reply,</div>
                                      <div style=3D"font-size:small">but
                                        I&#39;m still trying to get:=C2=A0<=
/div>
                                      <div style=3D"font-size:small">tune_r=
equest(freq,
                                        lo_off)</div>
                                      <div style=3D"font-size:small">to
                                        work in C.</div>
                                      <div style=3D"font-size:small">My
                                        X310 has 2 SBX-120 boards. Using
                                        uhd 4.6.0 in Ubuntu 24.04.</div>
                                      <div style=3D"font-size:small">True
                                        about the tuner. Much cheaper
                                        and easier to implement it in
                                        analog.</div>
                                      <div style=3D"font-size:small">I am
                                        using your FPGA image. Haven&#39;t
                                        touched it myself, yet.</div>
                                      <div style=3D"font-size:small">So,
                                        the spike is pretty narrow to
                                        interfere with my signals, but
                                        still messes my power
                                        calculations:(</div>
                                      <div style=3D"font-size:small">I
                                        already implemented the integer
                                        frequency tuner and working on
                                        the low oscillator offset.</div>
                                      <div style=3D"font-size:small">If
                                        you have any pointers about it,
                                        feel free to advise.=C2=A0=C2=A0</d=
iv>
                                      <div style=3D"font-size:small">LO is
                                        not part of the request_tuner_t
                                        struct. It is set independently.</d=
iv>
                                      <div style=3D"font-size:small">Is
                                        this the same LO in
                                        uhd_usrp_set_rx_lo_freq?</div>
                                      <div style=3D"font-size:small">If
                                        this is the case I can modify it
                                        externally:)</div>
                                      <div style=3D"font-size:small"><br>
                                      </div>
                                      <div style=3D"font-size:small">BR</di=
v>
                                      <div style=3D"font-size:small">Nikos<=
/div>
                                    </div>
                                    <br>
                                    <div class=3D"gmail_quote">
                                      <div dir=3D"ltr" class=3D"gmail_attr"=
>On
                                        Fri, May 23, 2025 at 4:40=E2=80=AFA=
M
                                        Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t;
                                        wrote:<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
                                        <div>
                                          <div>On 2025-05-22 21:31,
                                            Nikos Balkanas wrote:<br>
                                          </div>
                                          <blockquote type=3D"cite">
                                            <div dir=3D"ltr">
                                              <div style=3D"font-size:small=
">The
                                                spike is very clean to
                                                come from outside.</div>
                                              <div style=3D"font-size:small=
">Must
                                                be from my X310. My
                                                tuner must be adding a
                                                signal to the</div>
                                              <div style=3D"font-size:small=
">center
                                                frequency. The small
                                                artifact at 2 Ghz is
                                                probably the tuner not=C2=
=A0</div>
                                              <div style=3D"font-size:small=
">equilibrating
                                                fully.</div>
                                              <div style=3D"font-size:small=
">I
                                                recently updated my FPGA
                                                image. Is that where the
                                                tuner lives?</div>
                                            </div>
                                          </blockquote>
                                          You haven&#39;t mentioned in this
                                          thread which daughtercard
                                          you&#39;re using.=C2=A0=C2=A0 RF =
front-ends
                                          that use complex-baseband<br>
                                          =C2=A0 downconversion suffer from
                                          something called &quot;DC-offset&=
quot;,
                                          which produces a spike at 0Hz
                                          in the complex spectrum.<br>
                                          =C2=A0 The radio block in the
                                          standard FPGAs has methods for
                                          reducing this, unless you turn
                                          it off.=C2=A0 This is a very very=
<br>
                                          =C2=A0 *normal* thing for
                                          complex-baseband receiver
                                          chains.<br>
                                          <br>
                                          If the algorithms are engaged
                                          and working, then there&#39;ll
                                          still be a central spike, but
                                          *considerably* reduced, and I
                                          find that<br>
                                          =C2=A0 said spike is usually
                                          swamped by external signals,
                                          even in radio astronomy.<br>
                                          <br>
                                          The other method that people
                                          use is to use &quot;offset
                                          tuning&quot;.=C2=A0 Where the tun=
er is
                                          tuned to a different RF
                                          frequency, and the<br>
                                          =C2=A0=C2=A0 DDC brings your sign=
al of
                                          interest down to 0Hz.<br>
                                          <br>
                                          <a href=3D"https://files.ettus.co=
m/manual/page_general.html#general_tuning" target=3D"_blank">https://files.=
ettus.com/manual/page_general.html#general_tuning</a><br>
                                          <br>
                                          The &quot;tuner&quot; is an analo=
g
                                          collection of components,
                                          including an LO generator, and
                                          mixers.=C2=A0 While it is
                                          *controlled* through<br>
                                          =C2=A0 the FPGA, it is an analog
                                          subsystem.<br>
                                          <br>
                                          <br>
                                          <blockquote type=3D"cite"><br>
                                            <div class=3D"gmail_quote">
                                              <div dir=3D"ltr" class=3D"gma=
il_attr">On
                                                Fri, May 23, 2025 at
                                                3:19=E2=80=AFAM Nikos Balka=
nas
                                                &lt;<a href=3D"mailto:nbalk=
anas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br>
                                              </div>
                                              <blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
                                                <div dir=3D"ltr">
                                                  <div style=3D"font-size:s=
mall">Hello,</div>
                                                  <div style=3D"font-size:s=
mall"><br>
                                                  </div>
                                                  <div style=3D"font-size:s=
mall">Whenever I look at my spectrum I always see an
                                                    energy spike at the
                                                    center frequency.</div>
                                                  <div style=3D"font-size:s=
mall">In the first image you can see a spike at 2, but
                                                    not at 2.001 Ghz. In
                                                    the next image,</div>
                                                  <div style=3D"font-size:s=
mall">=C2=A0at 2.001 Ghz you can see the energy spike at
                                                    the center
                                                    frequency, but also
                                                    a small</div>
                                                  <div style=3D"font-size:s=
mall">=C2=A0spike at 2 Ghz.</div>
                                                  <div style=3D"font-size:s=
mall">I have verified these results by both fosphor
                                                    (OpenCL fft) and
                                                    fftw3f. Besides, if
                                                    it were</div>
                                                  <div style=3D"font-size:s=
mall">=C2=A0an fft artifact, why is the spike at 2 Ghz
                                                    still visible after
                                                    a few mins? These
                                                    spikes</div>
                                                  <div style=3D"font-size:s=
mall">=C2=A0seem to be transient, but real. In that part of
                                                    the spectrum, you
                                                    there is no traffic.
                                                    Could it be=C2=A0
                                                    harmonics from my
                                                    power supply?
                                                    Problems with my
                                                    X-310? My
                                                    transmitter</div>
                                                  <div style=3D"font-size:s=
mall">=C2=A0doing funny things (I have 2 boards and not
                                                    enabling my
                                                    transmitter
                                                    anywhere)?</div>
                                                  <div style=3D"font-size:s=
mall">Naming of images is freq_sr.jpg. All are in Mhz.</div>
                                                  <div style=3D"font-size:s=
mall"><br>
                                                  </div>
                                                  <div style=3D"font-size:s=
mall">TIA</div>
                                                  <div style=3D"font-size:s=
mall">Nikos</div>
                                                </div>
                                              </blockquote>
                                            </div>
                                            <br>
                                            <fieldset></fieldset>
                                            <pre>__________________________=
_____________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                                          </blockquote>
                                          <br>
                                        </div>
_______________________________________________<br>
                                        USRP-users mailing list -- <a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a><br>
                                        To unsubscribe send an email to
                                        <a href=3D"mailto:usrp-users-leave@=
lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
                                      </blockquote>
                                    </div>
                                  </blockquote>
                                </div>
_______________________________________________<br>
                                USRP-users mailing list -- <a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>
                                To unsubscribe send an email to <a href=3D"=
mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a><br>
                              </blockquote>
                            </div>
                          </blockquote>
                          <br>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>

--0000000000001e71570635de5e2c--

--===============4057554553198242302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4057554553198242302==--
