Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B75AC2803
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 19:00:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5801B3853D4
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 13:00:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748019617; bh=oFEjeXEU2zGeV/BgCgto9pgUxXLrwdpggWmrc5wP0Cw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=X5NSX5DTGwKOc4hrxMpUPkCIO2YQ3eYJlTmbvPIlEpSVdkQHPScNs2xXYXYBU3Exw
	 fB8E0qpEiCYL75HnVQ9oRTqR1UYqm5xkC0rTePBx0iXun+fXVJTtBgA9sy9W9Ijb26
	 WUxyMlz4qhC3DTXfn2gy7ewKmNJYqOYy+s99rHbug+eqaj5Vp74PlEyPzJ63PPPyEV
	 BHPWZY/PcTPPs53qfEuGTUtIQ8QP+alGe0msY9Jv0OYcUP5Zl9uQVPORbdbCnPoqUP
	 8+U0TFFB5JNk1lQWyM1qdq3gEpNMTk2dZfJxWI7n/ALMOy3O1WADk25Fqee90yiH88
	 u/8AKfVLDNs2g==
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 170FC3851C6
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 12:59:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="abbulDvL";
	dkim-atps=neutral
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-742af848148so164076b3a.1
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 09:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1748019562; x=1748624362; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0pyQhXFKHjHcoWPdKlMwdT1ofJ/I83kPMEM2uaLvTcg=;
        b=abbulDvL4NHcNhTsFS9yn6kwPhO1T5W3zecKmT14zE2uGkLFH4arlRF2ipEbauU5vh
         MaJLoWY2JQHskk/M4L9rcm8Fs8qR3/9yG3lXKOyomrjODuU7h3UApj7JBxn2CVoBc7IP
         YQN/FBGMyhCA0VaV1BcIqsZ/t/SV6LZ9PfpDDCSNEzckni1S5AEEhqs4YoRy9AzbiSZV
         l5K5x38083fv0jqxBXrqNyA/2Bqr+2GxU3D3IHR8FrmCDa+9r0LCj1vW8PL5HecvseyY
         TTQYKCZEQKrcWgM9sD2HWVdt7D+4H7Yuy3sbxEW7DPfLjLaJiiBLo+wVOevHOt6j+za/
         0/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748019562; x=1748624362;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0pyQhXFKHjHcoWPdKlMwdT1ofJ/I83kPMEM2uaLvTcg=;
        b=T073+b/5Rj2dLjq7ULaFsBS2CAng+OE7UF3hpf+CpKYXAvyJiTrcRTyC/WxFBn+wty
         79ZeiCFneno8W2McGksAG+3kbVW/Bilb1AulW/FE6tAUAJ4EKuX3DWrmixAnUBc9qnDA
         4lzmyv+R9b7MrBEfxC2CDvs1qZZ1TVF5iwLwDN5DirP0RurNbmHB1Hx6KQcAN8W+oA3V
         Aho//ukgbXQnHwHHKt3Q84bwkglMYiVm8hk/ltPwomwqpZUTAwpm4r97GRIvCMDBv1Of
         vFury2sxkcx4RUVCOVHKyQI66xr7frNyCibxUBQ+GAEAJNOJm0GwdLfz20LVdCFfMmqm
         IQBA==
X-Forwarded-Encrypted: i=1; AJvYcCWGt6JWh2fdKTF/G/XpYeY6IAi3P0jyIQTYeoBD6quGzR618vLEN7h29kk+dTOnoR3m179AOKecxB/I@lists.ettus.com
X-Gm-Message-State: AOJu0YxkIsMj29CgZCu9V8KWOAsb7sQpGfAp0B+lCdTHZCvF2p46YmZu
	WIfcnB7aZY3DsbiFJT2XV/oEg/6sgu62vvLd0/HZ2MAKVZwW1xQ/ziq8vQIsNzwW9NfUfZelK6T
	j1L8bCCf41CeHsKevTUFGJ5gz2gQio27IEmz8vMWK
X-Gm-Gg: ASbGnctMRV/dZzbY2CB6k6y7/wtIFkl/oRF8JDeJkoN5SOvz0VcDQL5xbRsXclLhvC1
	pKK4OvzSH42dOzf3wLhAixPlqEy5Tod0pgRhHeyEak1GORpXVoT7EnzidBSteenJbHfV3nLAbd5
	8+MTTUYUW5shdFGRyV0ETMPcUkPJeYF081
X-Google-Smtp-Source: AGHT+IHeVa5PzogrWoz79hpg70uZc+xwQFXPNnS/rJ9W6EaIh2CCdBpRbh+DIeIuZQg5UhxmEJukDQa7VI/w/QYBFOQ=
X-Received: by 2002:a05:6a00:3a0e:b0:736:3979:369e with SMTP id
 d2e1a72fcca58-745fde9e443mr338125b3a.9.1748019561956; Fri, 23 May 2025
 09:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com> <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
 <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
 <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com> <CAAxXO2EShVqaVvO3LBMOvvNGeq_gDF2-+FRShfpb_cdGh9eCRg@mail.gmail.com>
 <CAB__hTQq3yzT4v5qYhCDRaoPoWtVKZbd0zSiZ-Rw0j1C40yLhA@mail.gmail.com>
In-Reply-To: <CAB__hTQq3yzT4v5qYhCDRaoPoWtVKZbd0zSiZ-Rw0j1C40yLhA@mail.gmail.com>
Date: Fri, 23 May 2025 12:59:08 -0400
X-Gm-Features: AX0GCFtppKKw5YgRp30IJnMJZYEs94HaqFyXkzS0SukEHrfxo21C61SnLQdS5Co
Message-ID: <CAB__hTRpTLn2E9cdja1y3BrMp0pFQYEtYq0OGC6mgura4tNo-Q@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: BLC6RKNYZENJCEEVE6DJTSRZ4GXYZQAN
X-Message-ID-Hash: BLC6RKNYZENJCEEVE6DJTSRZ4GXYZQAN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BLC6RKNYZENJCEEVE6DJTSRZ4GXYZQAN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6683308913962823337=="

--===============6683308913962823337==
Content-Type: multipart/alternative; boundary="0000000000000d2b150635d08557"

--0000000000000d2b150635d08557
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I forgot to mention, the function you were looking at
'uhd_usrp_set_rx_lo_freq' is not the function you need.  This is a
low-level function that is rarely needed. You will want to stay with the
function 'uhd_usrp_set_rx_freq' which will send the appropriate command to
the radio to set the LO and to the DDC to set the desired DSP frequency
shift that will compensate for the LO being offset.
Rob

On Fri, May 23, 2025 at 12:55=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrot=
e:

> Hi Nikos,
> Although I have not used the 'c' API, it appears it can do the same thing
> as the c++ API with regard to tune request.  The 'c' structure
> uhd_tune_reqest_t
> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/types/=
tune_request.h#L28>
> includes a field called 'dsp_freq'.  It seems that you can set this to 30
> MHz.  The c++ documentation  for tune_request_t
> <https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d2c=
5fb89c10024b1acae43e88ebe7f>
> indicates that you should set the RF policy to manual and the DSP policy =
to
> automatic.  I don't know for certain if you should set the 'target_freq' =
or
> the 'rf_freq' field of the tune request to the desired frequency but I'm
> guessing 'target_freq'.
>
> There is an example program called rx_samples_c.c
> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_sample=
s_c.c>
> which you may have seen. This shows using a tune request but without an L=
O
> offset.
> Rob
>
> On Fri, May 23, 2025 at 12:09=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.=
com>
> wrote:
>
>> Ty Rob for the link and the suggestions,
>>
>> We agree completely. I need to offset my LO.
>> You are probably not aware that I am using the C API.
>> I cannot use the C++ constructors for tune_request unless they are
>> exported as C API.
>> I can just use the tune_request_t struct, which has no lo_off member.
>> So, I have  to offset my LO manually:
>> uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, char *name,
>> size_t channel, double *outfreq)
>> I have everything that I need except the LO name:(
>> To get name I use:
>> uhd_usrp_get_rx_lo_names()
>> That's my problem, right there. It just returns me an empty list of
>> names. No errors either. Why?
>> Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(
>> Unfortunately, gdb is no help in this case. After 10 calls to the
>> /usr/include/c++ files and 7 more
>> calls to boost and preprocessor defines, it just advances to the next
>> source line.
>> Not gdb friendly sources:(
>> I am also looking to export as C API the tune_request(freq, lo_off) C++
>> constructor.
>> This will mean to change code in uhd, which I will eventually have to,
>> but right now,
>> getting uhd_usrp_get_rx_lo_names() to work, is better:)
>>
>> BR
>> Nikos
>>
>>
>>
>>
>>
>> On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 2025-05-23 09:49, Rob Kossler wrote:
>>>
>>> Hi Nikos,
>>> Your RF card has 120 MHz bandwidth.  The strong tone you see will alway=
s
>>> be at the center.  But, if your application can tolerate using an
>>> instantaneous bandwidth < 60 MHz, you can use offset tuning as Marcus
>>> mentioned.  To do this you simply need to create a tune request with yo=
ur
>>> desired RF frequency and then specify an LO offset frequency of 30 MHz.
>>> This is all that is needed (again assuming that your bandwidth of inter=
est
>>> is < 60 MHz).  This link
>>> <https://dsp.stackexchange.com/questions/30562/large-spike-at-the-cente=
r-frequency-when-using-ettus-x310>
>>> discusses the topic.
>>>
>>> Also, if you want to reduce the DC offset, there are calibrations for
>>> the X310 - one of which will mitigate this signal.
>>> Rob
>>>
>>> Just a note that AFAIR, the *RX* DC-offset correction is something that
>>> doesn't require input from the calibration routines--it runs all the ti=
me
>>> (if its turned on).
>>>
>>> But phase/amplitude *balance* does require that you run the appropriate
>>> CAL utilities:
>>>
>>> https://files.ettus.com/manual/page_calibration.html
>>>
>>>
>>>
>>> On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>
>>> wrote:
>>>
>>>> I have implemented the following calls for uhd_usrp_set_rx_lo_freq:
>>>>
>>>> uhd_string_vector_handle  names;
>>>> uhd_string_vector_make(&names);
>>>> if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names)))
>>>>        warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN, FN,
>>>> err, uhdError(err));
>>>> if ((err =3D uhd_string_vector_size(names, &len)))
>>>>      warn(log, "Failed to get lo names size (%d).
>>>> %s.\n",0,FL,LN,FN,err, uhdError(err));
>>>> if (!len)
>>>> {
>>>>       error(log, "No lo names found on channel %d.\n", 0, FL, LN, FN,
>>>> channel);
>>>>        uhd_string_vector_free(&names);
>>>>         return(FAIL);
>>>> }
>>>> uhd_string_vector_free(&names);
>>>>
>>>> The problem is that names always returns 0. This is not right for my
>>>> SBX-120, or any
>>>> daughterboard with  a tuner:( This is what i can get from the API.
>>>> There are no LO examples.
>>>> I have seen lo_enable() in c++, but nothing exported to C. What am I
>>>> missing?
>>>>
>>>> TIA
>>>> Nikos
>>>>
>>>> On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>>> wrote:
>>>>
>>>>> Thx Marcus,
>>>>>
>>>>> For your fast and informative answers. Sorry it took me a while to
>>>>> reply,
>>>>> but I'm still trying to get:
>>>>> tune_request(freq, lo_off)
>>>>> to work in C.
>>>>> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>>>>> True about the tuner. Much cheaper and easier to implement it in
>>>>> analog.
>>>>> I am using your FPGA image. Haven't touched it myself, yet.
>>>>> So, the spike is pretty narrow to interfere with my signals, but stil=
l
>>>>> messes my power calculations:(
>>>>> I already implemented the integer frequency tuner and working on the
>>>>> low oscillator offset.
>>>>> If you have any pointers about it, feel free to advise.
>>>>> LO is not part of the request_tuner_t struct. It is set independently=
.
>>>>> Is this the same LO in uhd_usrp_set_rx_lo_freq?
>>>>> If this is the case I can modify it externally:)
>>>>>
>>>>> BR
>>>>> Nikos
>>>>>
>>>>> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <
>>>>> patchvonbraun@gmail.com> wrote:
>>>>>
>>>>>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>>>>
>>>>>> The spike is very clean to come from outside.
>>>>>> Must be from my X310. My tuner must be adding a signal to the
>>>>>> center frequency. The small artifact at 2 Ghz is probably the tuner
>>>>>> not
>>>>>> equilibrating fully.
>>>>>> I recently updated my FPGA image. Is that where the tuner lives?
>>>>>>
>>>>>> You haven't mentioned in this thread which daughtercard you're
>>>>>> using.   RF front-ends that use complex-baseband
>>>>>>   downconversion suffer from something called "DC-offset", which
>>>>>> produces a spike at 0Hz in the complex spectrum.
>>>>>>   The radio block in the standard FPGAs has methods for reducing
>>>>>> this, unless you turn it off.  This is a very very
>>>>>>   *normal* thing for complex-baseband receiver chains.
>>>>>>
>>>>>> If the algorithms are engaged and working, then there'll still be a
>>>>>> central spike, but *considerably* reduced, and I find that
>>>>>>   said spike is usually swamped by external signals, even in radio
>>>>>> astronomy.
>>>>>>
>>>>>> The other method that people use is to use "offset tuning".  Where
>>>>>> the tuner is tuned to a different RF frequency, and the
>>>>>>    DDC brings your signal of interest down to 0Hz.
>>>>>>
>>>>>> https://files.ettus.com/manual/page_general.html#general_tuning
>>>>>>
>>>>>> The "tuner" is an analog collection of components, including an LO
>>>>>> generator, and mixers.  While it is *controlled* through
>>>>>>   the FPGA, it is an analog subsystem.
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gm=
ail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hello,
>>>>>>>
>>>>>>> Whenever I look at my spectrum I always see an energy spike at the
>>>>>>> center frequency.
>>>>>>> In the first image you can see a spike at 2, but not at 2.001 Ghz.
>>>>>>> In the next image,
>>>>>>>  at 2.001 Ghz you can see the energy spike at the center frequency,
>>>>>>> but also a small
>>>>>>>  spike at 2 Ghz.
>>>>>>> I have verified these results by both fosphor (OpenCL fft) and
>>>>>>> fftw3f. Besides, if it were
>>>>>>>  an fft artifact, why is the spike at 2 Ghz still visible after a
>>>>>>> few mins? These spikes
>>>>>>>  seem to be transient, but real. In that part of the spectrum, you
>>>>>>> there is no traffic. Could it be  harmonics from my power supply? P=
roblems
>>>>>>> with my X-310? My transmitter
>>>>>>>  doing funny things (I have 2 boards and not enabling my transmitte=
r
>>>>>>> anywhere)?
>>>>>>> Naming of images is freq_sr.jpg. All are in Mhz.
>>>>>>>
>>>>>>> TIA
>>>>>>> Nikos
>>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>

--0000000000000d2b150635d08557
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I forgot to mention, the function you wer=
e looking at &#39;uhd_usrp_set_rx_lo_freq&#39; is not the function you need=
.=C2=A0 This is a low-level function that is rarely needed. You will want t=
o stay with the function &#39;uhd_usrp_set_rx_freq&#39; which will send the=
 appropriate command to the radio to set the LO and to the DDC to set the d=
esired DSP frequency shift that will compensate for the LO being offset.</d=
iv><div>Rob</div><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at 12:55=E2=80=AFPM R=
ob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi Nikos,<div>Although I have not used the &#39;c&#39; API, it app=
ears it can do the same thing as the c++ API with regard to tune request.=
=C2=A0 The &#39;c&#39; structure <a href=3D"https://github.com/EttusResearc=
h/uhd/blob/master/host/include/uhd/types/tune_request.h#L28" target=3D"_bla=
nk">uhd_tune_reqest_t</a> includes a field called &#39;dsp_freq&#39;.=C2=A0=
 It seems that you can set this to 30 MHz.=C2=A0 The c++ documentation=C2=
=A0 for <a href=3D"https://files.ettus.com/manual/structuhd_1_1tune__reques=
t__t.html#af9d2c5fb89c10024b1acae43e88ebe7f" target=3D"_blank">tune_request=
_t</a> indicates that you should set the RF policy to manual and the DSP po=
licy to automatic.=C2=A0 I don&#39;t know for certain if you should set the=
 &#39;target_freq&#39; or the &#39;rf_freq&#39; field of the tune request t=
o the desired frequency but I&#39;m guessing &#39;target_freq&#39;.=C2=A0</=
div><div><br></div><div>There is an example program called <a href=3D"https=
://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_c.c" t=
arget=3D"_blank">rx_samples_c.c</a> which you may have seen. This shows usi=
ng a tune request but without an LO offset.</div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May =
23, 2025 at 12:09=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas=
@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div styl=
e=3D"font-size:small">Ty Rob for the link and the suggestions,</div><div st=
yle=3D"font-size:small"><br></div><div style=3D"font-size:small">We agree c=
ompletely. I need to offset my LO.</div><div style=3D"font-size:small">You =
are probably not aware that I am using the C API.</div><div style=3D"font-s=
ize:small">I cannot use the C++ constructors for tune_request unless they a=
re exported as C API.</div><div style=3D"font-size:small">I can just use th=
e tune_request_t struct, which has no lo_off member.</div><div style=3D"fon=
t-size:small">So, I have=C2=A0 to offset my LO manually:</div><div style=3D=
"font-size:small">uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, c=
har *name, size_t channel, double *outfreq)</div><div style=3D"font-size:sm=
all">I have everything that I need except the LO name:(</div><div style=3D"=
font-size:small">To get name I use:</div><div style=3D"font-size:small">uhd=
_usrp_get_rx_lo_names()</div><div style=3D"font-size:small">That&#39;s my p=
roblem, right there. It just returns me an empty list of names. No errors e=
ither. Why?</div><div style=3D"font-size:small">Without it, I cannot use th=
e uhd_usrp_set_rx_lo_freq:(</div><div style=3D"font-size:small">Unfortunate=
ly, gdb is no help in this case. After 10 calls to the /usr/include/c++ fil=
es and 7 more</div><div style=3D"font-size:small">calls to boost and prepro=
cessor defines, it just advances to the next source line.</div><div style=
=3D"font-size:small">Not gdb friendly sources:(</div><div style=3D"font-siz=
e:small">I am also looking to export as C API the tune_request(freq, lo_off=
) C++ constructor.</div><div style=3D"font-size:small">This will mean to ch=
ange code in uhd, which I will eventually have to, but right now,</div><div=
 style=3D"font-size:small">getting=C2=A0uhd_usrp_get_rx_lo_names() to work,=
 is better:)</div><div style=3D"font-size:small"><br></div><div style=3D"fo=
nt-size:small">BR</div><div style=3D"font-size:small">Nikos</div><div style=
=3D"font-size:small"><br></div><div style=3D"font-size:small"><br></div><di=
v style=3D"font-size:small"><br></div><div style=3D"font-size:small"><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u=
></u>

 =20
   =20
 =20
  <div>
    <div>On 2025-05-23 09:49, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Nikos,
        <div>Your RF card has 120 MHz bandwidth.=C2=A0 The strong tone you
          see will always be at the center.=C2=A0 But, if your application
          can tolerate using an instantaneous bandwidth &lt; 60 MHz, you
          can use offset tuning as Marcus mentioned.=C2=A0 To do this you
          simply need to create a tune request with your desired RF
          frequency and then specify an LO offset frequency of 30 MHz.=C2=
=A0
          This is all that is needed (again assuming that your bandwidth
          of interest is &lt; 60 MHz).=C2=A0 <a href=3D"https://dsp.stackex=
change.com/questions/30562/large-spike-at-the-center-frequency-when-using-e=
ttus-x310" target=3D"_blank">This link</a> discusses the topic.</div>
        <div><br>
        </div>
        <div>Also, if you want to reduce the DC offset, there are
          calibrations for the X310 - one of which will mitigate this
          signal.</div>
        <div>Rob</div>
      </div>
    </blockquote>
    Just a note that AFAIR, the *RX* DC-offset correction is something
    that doesn&#39;t require input from the calibration routines--it runs
    all the time (if its turned on).<br>
    <br>
    But phase/amplitude *balance* does require that you run the
    appropriate CAL utilities:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_calibration.html" target=
=3D"_blank">https://files.ettus.com/manual/page_calibration.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          8:11=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div style=3D"font-size:small">I have
              implemented the following calls for
              uhd_usrp_set_rx_lo_freq:</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">uhd_string_vector_handle
              =C2=A0names;<br>
              uhd_string_vector_make(&amp;names);<br>
              if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel,
              &amp;names)))<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, &quot;Failed to get lo n=
ames (%d). %s.\n&quot;, 0,
              FL, LN, FN, err, uhdError(err));<br>
              if ((err =3D uhd_string_vector_size(names, &amp;len)))<br>
              =C2=A0 =C2=A0 =C2=A0warn(log, &quot;Failed to get lo names si=
ze (%d).
              %s.\n&quot;,0,FL,LN,FN,err, uhdError(err));<br>
              if (!len)<br>
              {<br>
              =C2=A0 =C2=A0 =C2=A0 error(log, &quot;No lo names found on ch=
annel %d.\n&quot;, 0,
              FL, LN, FN, channel);<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_string_vector_free(&amp;names)=
;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);</div>
            <div style=3D"font-size:small">}</div>
            <div style=3D"font-size:small">uhd_string_vector_free(&amp;name=
s);</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">The
              problem is that names always returns 0. This is not right
              for my SBX-120, or any</div>
            <div style=3D"font-size:small">daughterboard
              with=C2=A0 a tuner:( This is what i can get from the API. The=
re
              are no LO examples.</div>
            <div style=3D"font-size:small">I have
              seen lo_enable() in c++, but nothing exported to C. What
              am I missing?</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">TIA</div>
            <div style=3D"font-size:small">Nikos</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
              8:12=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkana=
s@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div style=3D"font-size:small">Thx
                  Marcus,</div>
                <div style=3D"font-size:small"><br>
                </div>
                <div style=3D"font-size:small">For
                  your fast and informative answers. Sorry it took me a
                  while to reply,</div>
                <div style=3D"font-size:small">but
                  I&#39;m still trying to get:=C2=A0</div>
                <div style=3D"font-size:small">tune_request(freq,
                  lo_off)</div>
                <div style=3D"font-size:small">to
                  work in C.</div>
                <div style=3D"font-size:small">My
                  X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu
                  24.04.</div>
                <div style=3D"font-size:small">True
                  about the tuner. Much cheaper and easier to implement
                  it in analog.</div>
                <div style=3D"font-size:small">I am
                  using your FPGA image. Haven&#39;t touched it myself, yet=
.</div>
                <div style=3D"font-size:small">So,
                  the spike is pretty narrow to interfere with my
                  signals, but still messes my power calculations:(</div>
                <div style=3D"font-size:small">I
                  already implemented the integer frequency tuner and
                  working on the low oscillator offset.</div>
                <div style=3D"font-size:small">If
                  you have any pointers about it, feel free to advise.=C2=
=A0=C2=A0</div>
                <div style=3D"font-size:small">LO is
                  not part of the request_tuner_t struct. It is set
                  independently.</div>
                <div style=3D"font-size:small">Is
                  this the same LO in uhd_usrp_set_rx_lo_freq?</div>
                <div style=3D"font-size:small">If
                  this is the case I can modify it externally:)</div>
                <div style=3D"font-size:small"><br>
                </div>
                <div style=3D"font-size:small">BR</div>
                <div style=3D"font-size:small">Nikos</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025
                  at 4:40=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2025-05-22 21:31, Nikos Balkanas wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div style=3D"font-size:small">The spike is very
                          clean to come from outside.</div>
                        <div style=3D"font-size:small">Must be from my X310=
.
                          My tuner must be adding a signal to the</div>
                        <div style=3D"font-size:small">center frequency. Th=
e
                          small artifact at 2 Ghz is probably the tuner
                          not=C2=A0</div>
                        <div style=3D"font-size:small">equilibrating fully.=
</div>
                        <div style=3D"font-size:small">I recently updated m=
y
                          FPGA image. Is that where the tuner lives?</div>
                      </div>
                    </blockquote>
                    You haven&#39;t mentioned in this thread which
                    daughtercard you&#39;re using.=C2=A0=C2=A0 RF front-end=
s that use
                    complex-baseband<br>
                    =C2=A0 downconversion suffer from something called
                    &quot;DC-offset&quot;, which produces a spike at 0Hz in=
 the
                    complex spectrum.<br>
                    =C2=A0 The radio block in the standard FPGAs has method=
s
                    for reducing this, unless you turn it off.=C2=A0 This i=
s
                    a very very<br>
                    =C2=A0 *normal* thing for complex-baseband receiver
                    chains.<br>
                    <br>
                    If the algorithms are engaged and working, then
                    there&#39;ll still be a central spike, but
                    *considerably* reduced, and I find that<br>
                    =C2=A0 said spike is usually swamped by external signal=
s,
                    even in radio astronomy.<br>
                    <br>
                    The other method that people use is to use &quot;offset
                    tuning&quot;.=C2=A0 Where the tuner is tuned to a diffe=
rent RF
                    frequency, and the<br>
                    =C2=A0=C2=A0 DDC brings your signal of interest down to=
 0Hz.<br>
                    <br>
                    <a href=3D"https://files.ettus.com/manual/page_general.=
html#general_tuning" target=3D"_blank">https://files.ettus.com/manual/page_=
general.html#general_tuning</a><br>
                    <br>
                    The &quot;tuner&quot; is an analog collection of compon=
ents,
                    including an LO generator, and mixers.=C2=A0 While it i=
s
                    *controlled* through<br>
                    =C2=A0 the FPGA, it is an analog subsystem.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May
                          23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas &lt;<a=
 href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com<=
/a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div style=3D"font-size:small">Hello,</div>
                            <div style=3D"font-size:small"><br>
                            </div>
                            <div style=3D"font-size:small">Whenever I look =
at
                              my spectrum I always see an energy spike
                              at the center frequency.</div>
                            <div style=3D"font-size:small">In the first ima=
ge
                              you can see a spike at 2, but not at 2.001
                              Ghz. In the next image,</div>
                            <div style=3D"font-size:small">=C2=A0at 2.001 G=
hz you
                              can see the energy spike at the center
                              frequency, but also a small</div>
                            <div style=3D"font-size:small">=C2=A0spike at 2=
 Ghz.</div>
                            <div style=3D"font-size:small">I have verified
                              these results by both fosphor (OpenCL fft)
                              and fftw3f. Besides, if it were</div>
                            <div style=3D"font-size:small">=C2=A0an fft art=
ifact,
                              why is the spike at 2 Ghz still visible
                              after a few mins? These spikes</div>
                            <div style=3D"font-size:small">=C2=A0seem to be
                              transient, but real. In that part of the
                              spectrum, you there is no traffic. Could
                              it be=C2=A0 harmonics from my power supply?
                              Problems with my X-310? My transmitter</div>
                            <div style=3D"font-size:small">=C2=A0doing funn=
y
                              things (I have 2 boards and not enabling
                              my transmitter anywhere)?</div>
                            <div style=3D"font-size:small">Naming of images
                              is freq_sr.jpg. All are in Mhz.</div>
                            <div style=3D"font-size:small"><br>
                            </div>
                            <div style=3D"font-size:small">TIA</div>
                            <div style=3D"font-size:small">Nikos</div>
                          </div>
                        </blockquote>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--0000000000000d2b150635d08557--

--===============6683308913962823337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6683308913962823337==--
