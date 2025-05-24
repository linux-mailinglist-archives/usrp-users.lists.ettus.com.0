Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8701AC2D2B
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 05:17:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86A3538520A
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 23:17:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748056652; bh=SL0+QcAxe/FWqQzEfD1/Z91rga9XCHDz7ARHoFnNgRU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tAcN8VxG3vvg+nUpIu/JV/PQ1iElvlEWO4BE1JjlFi2rcQCnnFy5NkFdvcIPQJN4l
	 7byQPyTrzhlGpdlmAuOzBTn74Se9p93cN9Ej0SmwKitbTN8mPpEsxocNxL9sVEqu3x
	 zBX0DqCPHWXmwxzopnIhkYuXAv0WwTQZ/ZIAID1XSXQEy5VQj++3xe886fnGlb5c4F
	 1zrPafFcDAlExSkj9K/S9PN7WinfE+7IG4Eg/yHUpaTwNJ1qA5HmlHkBOiT/Rv6uZ/
	 u+BiOmrgiNf3p9Nj4LXxs86YOzpnhBV9V+jpkwgdvxXS2jQZpWJ+56ePiGs/WJuzum
	 af4ARy0RR2QkA==
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id CC27B38139A
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 23:16:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XQFH+n9n";
	dkim-atps=neutral
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d6d6d82633so1457055ab.0
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 20:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748056598; x=1748661398; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+LGv8uHlyq3yLcVPIHS7Eb3YefN3JaxnOTNAtVOsKEs=;
        b=XQFH+n9n68X9wptvZSbIp1QflcxjK7/yukrSL5RoXUBduC7Uf1iPBoFrsto5eNTKr5
         V4hrI8dFkHpdvAiuBujKj+H9TUig2PeztpxqvUB/oyJI9nq5DoA5F/GUM19OljtOkGWH
         kiGU1r37dzVABeGU5LMdTso5jQ4N8wvVEiX99nFJ+mPs5M8X9aWzfZIrCdNlgoIT0G4c
         lgYpQiEIhxHA7t5Ed1E7M8QOJ4EsPBm3G2c1iHWET/kYV4mlzI4Nnw0iYMMw73XDwlh7
         hZhjr5GTqY07Xz1Ko9yqr2tVGSYKf5I0HvE0tVhdukI/p1n+qrMc8DS4NWdgX+jOP64Q
         By6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748056598; x=1748661398;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+LGv8uHlyq3yLcVPIHS7Eb3YefN3JaxnOTNAtVOsKEs=;
        b=ICCy+mgA64f1IHt3zpDX1agk05KuLb7CEnAfj0lJUSdkrJkTIIiwckbWeroqkTI3G1
         IYFkQDPOAiGw1kl+y78o9cVtAav8Em48FHOOYyqDSXSPfuX2Aq5qDl9GFSW2+X0e+ItN
         eXkqi2JlI1f/fZCl+y5MZC2ato2nlESCcPqJC5QkfYW1hzkpWQmyEms8Q/tenMKHRpNy
         3cFbeJnDTFRaqCLjYYNsJ4Q1o8egZw7RAgm1SwZYOUKZB3m07+pwHYJWWNKBRdmGqEyv
         2/RM2KH+tvm8YDiWDBAsD1Jn1pTk2nUEzZ+VfruNQdqo5xX4paAES59NPhwChMoFwhmp
         XITw==
X-Forwarded-Encrypted: i=1; AJvYcCXmMKdrD26GOwuFgMpyw1KszjSn+jyWT/KJesw42cQMnflDeJ2hjaEzVqeVOqHz9lpO5MO5cpCGCmRu@lists.ettus.com
X-Gm-Message-State: AOJu0YyF7FVqydJICFIUTpf5sbDQIFTMCSrYtnDMGc79AUrGmd4X2HOm
	ZqWATd8DZ8848ui4ezGk6ETVkV4adpCcdFYYMR7BOn0mL1z3/Otel7smVQwlmozbmXq6Hhhd8sA
	Jfo/8z4FjrGP9ad2mHBLHxMi4nE/jDsM=
X-Gm-Gg: ASbGncueOePxCGO7fa/ZbshBW6XNUC51cgqjoyFVFn88IfnQMXrRj1vGrp461gxICc6
	n2HE8OVUDLEM3I46dHSV3YioKBBzZbfxBNAagQCOYe98fazOZCACAxxWgK8nd6sYYMlbLaQyef6
	anxVz+HfAltcdkoifoFz/ndx1jkgQN
X-Google-Smtp-Source: AGHT+IEoPozd/CbK24y0K7F+Mm+EOgdDK80rr6VJV+LwtOyNW1Z1kKmcs1Rvr+ZuZUhZf3gUZhLtB8F3OQiJFYQp3fE=
X-Received: by 2002:a05:6e02:1c25:b0:3dc:8b57:b76c with SMTP id
 e9e14a558f8ab-3dc9b68e0c3mr10940255ab.9.1748056597872; Fri, 23 May 2025
 20:16:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com> <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
 <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
 <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com> <CAAxXO2EShVqaVvO3LBMOvvNGeq_gDF2-+FRShfpb_cdGh9eCRg@mail.gmail.com>
 <CAB__hTQq3yzT4v5qYhCDRaoPoWtVKZbd0zSiZ-Rw0j1C40yLhA@mail.gmail.com>
 <CAB__hTRpTLn2E9cdja1y3BrMp0pFQYEtYq0OGC6mgura4tNo-Q@mail.gmail.com>
 <CAAxXO2GTMr4JNZEv46z9WXk5F_Ux5qJLTA=cnkumredumDxvBA@mail.gmail.com> <e86846d4-0a75-4bf5-8700-04b06668406b@gmail.com>
In-Reply-To: <e86846d4-0a75-4bf5-8700-04b06668406b@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 06:16:25 +0300
X-Gm-Features: AX0GCFtlJEzPoUWAa0ftn423kc2M8W0Y1AQQi5_elMLYm0LiqWSZsM2m66LapSo
Message-ID: <CAAxXO2HovWZumzKtUedBzuSt6eci=pvWE0Wf6TV3-Nr5u+220Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PSFDFFEKTNZS44GE376T7OBF2M5BS56V
X-Message-ID-Hash: PSFDFFEKTNZS44GE376T7OBF2M5BS56V
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PSFDFFEKTNZS44GE376T7OBF2M5BS56V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5159892257428982229=="

--===============5159892257428982229==
Content-Type: multipart/alternative; boundary="0000000000009051350635d9241a"

--0000000000009051350635d9241a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I am aware of those. I wouldn't be doing all these if they were available
to me:(
You can check C API availability in usrp.h:)

BR
Nikos

On Sat, May 24, 2025 at 12:33=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 2025-05-23 13:41, Nikos Balkanas wrote:
>
> Hi Rob,
>
> I've done all these, but they do not affect LO offset.
> C API exports only these low level LO commands (in usrp.h)
> So, either I work it out with what I have, or I expand the C API
> to include the higher level C++ constructors.
> My luck. Both issues have to do with the C API:)
> Sampling rate is very important, but not useful in this case.
> I leave it on auto. RF is on manual:)
>
> BR
> Nikos
>
> I'll note that the C++ API has a couple of "helper" functions for creatin=
g
> tune_request_t objects:
>
>
> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d2c5=
fb89c10024b1acae43e88ebe7f
>
> The second form, which takes both a desired target frequency, and the
> desired lo_offset, is what I have used in the past.
>
> I don't know if these are somehow available in the C API to form the
> tune_request_t  structure.
>
>
>
> On Fri, May 23, 2025 at 7:59=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wro=
te:
>
>> I forgot to mention, the function you were looking at
>> 'uhd_usrp_set_rx_lo_freq' is not the function you need.  This is a
>> low-level function that is rarely needed. You will want to stay with the
>> function 'uhd_usrp_set_rx_freq' which will send the appropriate command =
to
>> the radio to set the LO and to the DDC to set the desired DSP frequency
>> shift that will compensate for the LO being offset.
>> Rob
>>
>> On Fri, May 23, 2025 at 12:55=E2=80=AFPM Rob Kossler <rkossler@nd.edu> w=
rote:
>>
>>> Hi Nikos,
>>> Although I have not used the 'c' API, it appears it can do the same
>>> thing as the c++ API with regard to tune request.  The 'c' structure
>>> uhd_tune_reqest_t
>>> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/type=
s/tune_request.h#L28>
>>> includes a field called 'dsp_freq'.  It seems that you can set this to =
30
>>> MHz.  The c++ documentation  for tune_request_t
>>> <https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d=
2c5fb89c10024b1acae43e88ebe7f>
>>> indicates that you should set the RF policy to manual and the DSP polic=
y to
>>> automatic.  I don't know for certain if you should set the 'target_freq=
' or
>>> the 'rf_freq' field of the tune request to the desired frequency but I'=
m
>>> guessing 'target_freq'.
>>>
>>> There is an example program called rx_samples_c.c
>>> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samp=
les_c.c>
>>> which you may have seen. This shows using a tune request but without an=
 LO
>>> offset.
>>> Rob
>>>
>>> On Fri, May 23, 2025 at 12:09=E2=80=AFPM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>> wrote:
>>>
>>>> Ty Rob for the link and the suggestions,
>>>>
>>>> We agree completely. I need to offset my LO.
>>>> You are probably not aware that I am using the C API.
>>>> I cannot use the C++ constructors for tune_request unless they are
>>>> exported as C API.
>>>> I can just use the tune_request_t struct, which has no lo_off member.
>>>> So, I have  to offset my LO manually:
>>>> uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, char *name,
>>>> size_t channel, double *outfreq)
>>>> I have everything that I need except the LO name:(
>>>> To get name I use:
>>>> uhd_usrp_get_rx_lo_names()
>>>> That's my problem, right there. It just returns me an empty list of
>>>> names. No errors either. Why?
>>>> Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(
>>>> Unfortunately, gdb is no help in this case. After 10 calls to the
>>>> /usr/include/c++ files and 7 more
>>>> calls to boost and preprocessor defines, it just advances to the next
>>>> source line.
>>>> Not gdb friendly sources:(
>>>> I am also looking to export as C API the tune_request(freq, lo_off) C+=
+
>>>> constructor.
>>>> This will mean to change code in uhd, which I will eventually have to,
>>>> but right now,
>>>> getting uhd_usrp_get_rx_lo_names() to work, is better:)
>>>>
>>>> BR
>>>> Nikos
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech <
>>>> patchvonbraun@gmail.com> wrote:
>>>>
>>>>> On 2025-05-23 09:49, Rob Kossler wrote:
>>>>>
>>>>> Hi Nikos,
>>>>> Your RF card has 120 MHz bandwidth.  The strong tone you see will
>>>>> always be at the center.  But, if your application can tolerate using=
 an
>>>>> instantaneous bandwidth < 60 MHz, you can use offset tuning as Marcus
>>>>> mentioned.  To do this you simply need to create a tune request with =
your
>>>>> desired RF frequency and then specify an LO offset frequency of 30 MH=
z.
>>>>> This is all that is needed (again assuming that your bandwidth of int=
erest
>>>>> is < 60 MHz).  This link
>>>>> <https://dsp.stackexchange.com/questions/30562/large-spike-at-the-cen=
ter-frequency-when-using-ettus-x310>
>>>>> discusses the topic.
>>>>>
>>>>> Also, if you want to reduce the DC offset, there are calibrations for
>>>>> the X310 - one of which will mitigate this signal.
>>>>> Rob
>>>>>
>>>>> Just a note that AFAIR, the *RX* DC-offset correction is something
>>>>> that doesn't require input from the calibration routines--it runs all=
 the
>>>>> time (if its turned on).
>>>>>
>>>>> But phase/amplitude *balance* does require that you run the
>>>>> appropriate CAL utilities:
>>>>>
>>>>> https://files.ettus.com/manual/page_calibration.html
>>>>>
>>>>>
>>>>>
>>>>> On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@gma=
il.com>
>>>>> wrote:
>>>>>
>>>>>> I have implemented the following calls for uhd_usrp_set_rx_lo_freq:
>>>>>>
>>>>>> uhd_string_vector_handle  names;
>>>>>> uhd_string_vector_make(&names);
>>>>>> if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names)=
))
>>>>>>        warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN, FN=
,
>>>>>> err, uhdError(err));
>>>>>> if ((err =3D uhd_string_vector_size(names, &len)))
>>>>>>      warn(log, "Failed to get lo names size (%d).
>>>>>> %s.\n",0,FL,LN,FN,err, uhdError(err));
>>>>>> if (!len)
>>>>>> {
>>>>>>       error(log, "No lo names found on channel %d.\n", 0, FL, LN, FN=
,
>>>>>> channel);
>>>>>>        uhd_string_vector_free(&names);
>>>>>>         return(FAIL);
>>>>>> }
>>>>>> uhd_string_vector_free(&names);
>>>>>>
>>>>>> The problem is that names always returns 0. This is not right for my
>>>>>> SBX-120, or any
>>>>>> daughterboard with  a tuner:( This is what i can get from the API.
>>>>>> There are no LO examples.
>>>>>> I have seen lo_enable() in c++, but nothing exported to C. What am I
>>>>>> missing?
>>>>>>
>>>>>> TIA
>>>>>> Nikos
>>>>>>
>>>>>> On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@gm=
ail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Thx Marcus,
>>>>>>>
>>>>>>> For your fast and informative answers. Sorry it took me a while to
>>>>>>> reply,
>>>>>>> but I'm still trying to get:
>>>>>>> tune_request(freq, lo_off)
>>>>>>> to work in C.
>>>>>>> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>>>>>>> True about the tuner. Much cheaper and easier to implement it in
>>>>>>> analog.
>>>>>>> I am using your FPGA image. Haven't touched it myself, yet.
>>>>>>> So, the spike is pretty narrow to interfere with my signals, but
>>>>>>> still messes my power calculations:(
>>>>>>> I already implemented the integer frequency tuner and working on th=
e
>>>>>>> low oscillator offset.
>>>>>>> If you have any pointers about it, feel free to advise.
>>>>>>> LO is not part of the request_tuner_t struct. It is set
>>>>>>> independently.
>>>>>>> Is this the same LO in uhd_usrp_set_rx_lo_freq?
>>>>>>> If this is the case I can modify it externally:)
>>>>>>>
>>>>>>> BR
>>>>>>> Nikos
>>>>>>>
>>>>>>> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <
>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>
>>>>>>>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>>>>>>
>>>>>>>> The spike is very clean to come from outside.
>>>>>>>> Must be from my X310. My tuner must be adding a signal to the
>>>>>>>> center frequency. The small artifact at 2 Ghz is probably the tune=
r
>>>>>>>> not
>>>>>>>> equilibrating fully.
>>>>>>>> I recently updated my FPGA image. Is that where the tuner lives?
>>>>>>>>
>>>>>>>> You haven't mentioned in this thread which daughtercard you're
>>>>>>>> using.   RF front-ends that use complex-baseband
>>>>>>>>   downconversion suffer from something called "DC-offset", which
>>>>>>>> produces a spike at 0Hz in the complex spectrum.
>>>>>>>>   The radio block in the standard FPGAs has methods for reducing
>>>>>>>> this, unless you turn it off.  This is a very very
>>>>>>>>   *normal* thing for complex-baseband receiver chains.
>>>>>>>>
>>>>>>>> If the algorithms are engaged and working, then there'll still be =
a
>>>>>>>> central spike, but *considerably* reduced, and I find that
>>>>>>>>   said spike is usually swamped by external signals, even in radio
>>>>>>>> astronomy.
>>>>>>>>
>>>>>>>> The other method that people use is to use "offset tuning".  Where
>>>>>>>> the tuner is tuned to a different RF frequency, and the
>>>>>>>>    DDC brings your signal of interest down to 0Hz.
>>>>>>>>
>>>>>>>> https://files.ettus.com/manual/page_general.html#general_tuning
>>>>>>>>
>>>>>>>> The "tuner" is an analog collection of components, including an LO
>>>>>>>> generator, and mixers.  While it is *controlled* through
>>>>>>>>   the FPGA, it is an analog subsystem.
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@=
gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hello,
>>>>>>>>>
>>>>>>>>> Whenever I look at my spectrum I always see an energy spike at th=
e
>>>>>>>>> center frequency.
>>>>>>>>> In the first image you can see a spike at 2, but not at 2.001 Ghz=
.
>>>>>>>>> In the next image,
>>>>>>>>>  at 2.001 Ghz you can see the energy spike at the center
>>>>>>>>> frequency, but also a small
>>>>>>>>>  spike at 2 Ghz.
>>>>>>>>> I have verified these results by both fosphor (OpenCL fft) and
>>>>>>>>> fftw3f. Besides, if it were
>>>>>>>>>  an fft artifact, why is the spike at 2 Ghz still visible after a
>>>>>>>>> few mins? These spikes
>>>>>>>>>  seem to be transient, but real. In that part of the spectrum, yo=
u
>>>>>>>>> there is no traffic. Could it be  harmonics from my power supply?=
 Problems
>>>>>>>>> with my X-310? My transmitter
>>>>>>>>>  doing funny things (I have 2 boards and not enabling my
>>>>>>>>> transmitter anywhere)?
>>>>>>>>> Naming of images is freq_sr.jpg. All are in Mhz.
>>>>>>>>>
>>>>>>>>> TIA
>>>>>>>>> Nikos
>>>>>>>>>
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>
>>>>>
>

--0000000000009051350635d9241a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Marcus,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">I am aware of tho=
se. I wouldn&#39;t be doing all these if they were available to me:(</div><=
div class=3D"gmail_default" style=3D"font-size:small">You can check C API a=
vailability in usrp.h:)</div><div class=3D"gmail_default" style=3D"font-siz=
e:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">B=
R</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Sat, May 24, 2025 at 12:33=E2=80=AFAM Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u>=
</u>

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

--0000000000009051350635d9241a--

--===============5159892257428982229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5159892257428982229==--
