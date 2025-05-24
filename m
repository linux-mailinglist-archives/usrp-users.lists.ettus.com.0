Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F94AC2EF1
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 12:44:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B04D33855D1
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 06:44:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748083463; bh=3NPi7Q6ir9P/TO2VELY7ZOU8QO+kMoJRihxzUGrdQfM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZCdwTW7rLnmPOvV2Y0ZT5UVhReubyYgNpYCPrM1lx7lMgztJSf2V/D62GU3bGLFm9
	 f470/P1yO220Hn3LB/HIqQIrYYQ+y4g9g7MakSIwdGpPO4MymS9Fv+olKAJik8dWyQ
	 fRJqH6Nwy4ZCqRR86w95czPPwjoF6QWB4RpFJFl48+yZCoRYnBTU4rzfVi/Ih5h7kL
	 G9WanEpvF/bHMAuN+x4xoMVBN6BDOKVezDlUkueyugC+0iFR8PJpShto6YWBe5kGve
	 QBxSDttrG/1g08yfTCJJsACOqhdFWMCqttdogh2GEoar1Dh2L6GFIGyfJk6JtuIsyL
	 n/fCsNNOjv7JQ==
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 510EC380AC2
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 06:43:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eXr9Xi3p";
	dkim-atps=neutral
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-864a22fcdf2so26770039f.0
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 03:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748083407; x=1748688207; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nhPGQAa2Ky+WbDwXxX/HssdOc/Rsw5FMRFfSy7ctXhI=;
        b=eXr9Xi3pHzB/9nzSR9mi3rtZXb1b96L2kbxCFcmqobRZvbE2Ly8WyW2gTTxkgT44NX
         1/betSeIVIeEaizZcLkwW0cGu3IxonhN4hhIZcKUoEvGYyqpDSUwfICB7OEMteQT3JVX
         gy/fxlMN6b9HzzvOAqGieOZmP+OhKWaM0LzfJTwkOVGo6AstsYJjFX9QVRft+Yy9fUqp
         gz5A2X+cOTuzOWM/7tApQdjIxPPRUmDWxQraKtrYs3FJUwdZ5m/IX/F86e31mZsOlyVK
         NKffD4Du0Vbvfdu6Dn64NgRr8QMQOCej/qLdaFIPspYMPRTUFd9z7uxzPuUjObhqRjTy
         pefw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748083407; x=1748688207;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nhPGQAa2Ky+WbDwXxX/HssdOc/Rsw5FMRFfSy7ctXhI=;
        b=FYMOz24JoFR9OPeMePwJceXPd+R3Rv3VDecdmTtcSh2Zj78KlV1/JAF/uj8lVH6B5H
         w3lNSy/9BI8RRmzoyH7dERGNRxEy7VceYjGt17aYu/LhnR1urDtR+sJI8s0OdKNx8Yi4
         QAd1r7ODC3pw04sNeN5P1hHPRrTgaccF0E2XqZrF29h4FbHv2RO9I0InNO3DLqk6Qz2q
         sDBDT5+uz1vBFkby3bNBVVH3mxge5sWjrar6gTUPUIe+DMo5D4gN8T4uHn7dshlpw5Sc
         Ra84chp1XdPuGuQN4bIVvbQeiA+m6jel+v1SWOHj3z9pzdj88OkVjzsnK2PXxzSGLo4V
         3hNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnWnFVX1b4uLk/k8dZo7xkQsgWqD2Ju9PcwiarQesOatbjY/XOLXOYvnm3K85gwEIuK39jdRojszF4@lists.ettus.com
X-Gm-Message-State: AOJu0YzB2L4veXO0utyPn4+6sXi5bJl+TfFb99+VXmzDwDodTizRhCSZ
	EI0uvXoLYJfAdsOcDlohZwHYEjTF69GRt52wW0S/DsU251hsQ8DhDffPd8l2xZwQDZsScqwic7D
	ByYJMvNknhy+i5KhmAixHY8xPGWnRfpW9AA==
X-Gm-Gg: ASbGncuhqP6s9XwWGME7IHrO6pqMfLrM7CwHl/AnWm8vHpPS3zc2VgK43WikZm48vEE
	iSm+SDPYySCYE8u060Qm/sQ5LPhsKE08diW3pR+DQffSgOO2M7Mdy7b7CRxZV7/H2NPXRWx/Ql5
	pTEvtfrkeOfb/6qveRfhmyn+MXSQAKWKN1XxUSIHM=
X-Google-Smtp-Source: AGHT+IED3zOXV9t6rIZrjIesvXZEN86LIuzJosCScDJJJE3LZJNwYltoXgyKZOiEeNVsTGiPwMFeNpzyPG9NBZKHomo=
X-Received: by 2002:a05:6602:90:b0:85d:ad56:af88 with SMTP id
 ca18e2360f4ac-86cadb9546bmr504956139f.1.1748083407319; Sat, 24 May 2025
 03:43:27 -0700 (PDT)
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
 <CAAxXO2GTDHgY8rPoK1NBV489b=LsyxR0kJZHkZBHjE62Rui0tg@mail.gmail.com>
In-Reply-To: <CAAxXO2GTDHgY8rPoK1NBV489b=LsyxR0kJZHkZBHjE62Rui0tg@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 13:43:14 +0300
X-Gm-Features: AX0GCFtXQhL8Quyr3rvDn4Eh66_Hft6SSabaz5Sx2eykzMWh1BpCxJ2LyYi9vhc
Message-ID: <CAAxXO2E_Z4Pc3P8dPZD4dt=wOKCErxPW0k46f0DXN2REMvDTLQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BQD3VTLP7JU47GIE5S75GFN5YCXMHI6E
X-Message-ID-Hash: BQD3VTLP7JU47GIE5S75GFN5YCXMHI6E
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQD3VTLP7JU47GIE5S75GFN5YCXMHI6E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5303064096911414576=="

--===============5303064096911414576==
Content-Type: multipart/alternative; boundary="00000000000087f6b40635df62c9"

--00000000000087f6b40635df62c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I got the chance to look into uhd's guts.
My driver for the X300, x300_radio_control.cpp, uses get_tree() to set/get
all its properties.
This tree is maintained in RFNOC. I don't use it. I use Vivado.
The path given for get_rx_lo_names db_path("rx", channel) didn't have any /
"los" key in it.
I guess all other keys must have worked, or i couldn't set/get anything in
my box.
Could it be because i don't use RFNOC? that would be a shame:(

TIA
Nikos

On Sat, May 24, 2025 at 12:30=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.co=
m> wrote:

> Hi,
>
> Problem fixed:) It was easier than I thought. No patches needed:)
> The answer was in host/lib/types/tune.cpp always:
>
> tune_request_t::tune_request_t(double target_freq, double lo_off)
>  .target_freq(target_freq)
> , rf_freq_policy(POLICY_MANUAL)
> , rf_freq(target_freq + lo_off)
> , dsp_freq_policy(POLICY_AUTO)
> , dsp_freq(0.0)
>
> There is only a labeling confusion in the definition of tune_request_t.
> The first 3 fields refer to the RF chain. It is curious that there are
> both target_freq and  rf_freq
> at the same time. Rf_freq should be renamed lo_freq!
> rf_freq_policy affects both target freq and lo_freq:)
>
> HTH
> Nikos
>
>
>
>
> On Sat, May 24, 2025 at 6:16=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Hi Marcus,
>>
>> I am aware of those. I wouldn't be doing all these if they were availabl=
e
>> to me:(
>> You can check C API availability in usrp.h:)
>>
>> BR
>> Nikos
>>
>> On Sat, May 24, 2025 at 12:33=E2=80=AFAM Marcus D. Leech <patchvonbraun@=
gmail.com>
>> wrote:
>>
>>> On 2025-05-23 13:41, Nikos Balkanas wrote:
>>>
>>> Hi Rob,
>>>
>>> I've done all these, but they do not affect LO offset.
>>> C API exports only these low level LO commands (in usrp.h)
>>> So, either I work it out with what I have, or I expand the C API
>>> to include the higher level C++ constructors.
>>> My luck. Both issues have to do with the C API:)
>>> Sampling rate is very important, but not useful in this case.
>>> I leave it on auto. RF is on manual:)
>>>
>>> BR
>>> Nikos
>>>
>>> I'll note that the C++ API has a couple of "helper" functions for
>>> creating tune_request_t objects:
>>>
>>>
>>> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d2=
c5fb89c10024b1acae43e88ebe7f
>>>
>>> The second form, which takes both a desired target frequency, and the
>>> desired lo_offset, is what I have used in the past.
>>>
>>> I don't know if these are somehow available in the C API to form the
>>> tune_request_t  structure.
>>>
>>>
>>>
>>> On Fri, May 23, 2025 at 7:59=E2=80=AFPM Rob Kossler <rkossler@nd.edu> w=
rote:
>>>
>>>> I forgot to mention, the function you were looking at
>>>> 'uhd_usrp_set_rx_lo_freq' is not the function you need.  This is a
>>>> low-level function that is rarely needed. You will want to stay with t=
he
>>>> function 'uhd_usrp_set_rx_freq' which will send the appropriate comman=
d to
>>>> the radio to set the LO and to the DDC to set the desired DSP frequenc=
y
>>>> shift that will compensate for the LO being offset.
>>>> Rob
>>>>
>>>> On Fri, May 23, 2025 at 12:55=E2=80=AFPM Rob Kossler <rkossler@nd.edu>=
 wrote:
>>>>
>>>>> Hi Nikos,
>>>>> Although I have not used the 'c' API, it appears it can do the same
>>>>> thing as the c++ API with regard to tune request.  The 'c' structure
>>>>> uhd_tune_reqest_t
>>>>> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/ty=
pes/tune_request.h#L28>
>>>>> includes a field called 'dsp_freq'.  It seems that you can set this t=
o 30
>>>>> MHz.  The c++ documentation  for tune_request_t
>>>>> <https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af=
9d2c5fb89c10024b1acae43e88ebe7f>
>>>>> indicates that you should set the RF policy to manual and the DSP pol=
icy to
>>>>> automatic.  I don't know for certain if you should set the 'target_fr=
eq' or
>>>>> the 'rf_freq' field of the tune request to the desired frequency but =
I'm
>>>>> guessing 'target_freq'.
>>>>>
>>>>> There is an example program called rx_samples_c.c
>>>>> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_sa=
mples_c.c>
>>>>> which you may have seen. This shows using a tune request but without =
an LO
>>>>> offset.
>>>>> Rob
>>>>>
>>>>> On Fri, May 23, 2025 at 12:09=E2=80=AFPM Nikos Balkanas <nbalkanas@gm=
ail.com>
>>>>> wrote:
>>>>>
>>>>>> Ty Rob for the link and the suggestions,
>>>>>>
>>>>>> We agree completely. I need to offset my LO.
>>>>>> You are probably not aware that I am using the C API.
>>>>>> I cannot use the C++ constructors for tune_request unless they are
>>>>>> exported as C API.
>>>>>> I can just use the tune_request_t struct, which has no lo_off member=
.
>>>>>> So, I have  to offset my LO manually:
>>>>>> uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq, char *name,
>>>>>> size_t channel, double *outfreq)
>>>>>> I have everything that I need except the LO name:(
>>>>>> To get name I use:
>>>>>> uhd_usrp_get_rx_lo_names()
>>>>>> That's my problem, right there. It just returns me an empty list of
>>>>>> names. No errors either. Why?
>>>>>> Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(
>>>>>> Unfortunately, gdb is no help in this case. After 10 calls to the
>>>>>> /usr/include/c++ files and 7 more
>>>>>> calls to boost and preprocessor defines, it just advances to the nex=
t
>>>>>> source line.
>>>>>> Not gdb friendly sources:(
>>>>>> I am also looking to export as C API the tune_request(freq, lo_off)
>>>>>> C++ constructor.
>>>>>> This will mean to change code in uhd, which I will eventually have
>>>>>> to, but right now,
>>>>>> getting uhd_usrp_get_rx_lo_names() to work, is better:)
>>>>>>
>>>>>> BR
>>>>>> Nikos
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech <
>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>
>>>>>>> On 2025-05-23 09:49, Rob Kossler wrote:
>>>>>>>
>>>>>>> Hi Nikos,
>>>>>>> Your RF card has 120 MHz bandwidth.  The strong tone you see will
>>>>>>> always be at the center.  But, if your application can tolerate usi=
ng an
>>>>>>> instantaneous bandwidth < 60 MHz, you can use offset tuning as Marc=
us
>>>>>>> mentioned.  To do this you simply need to create a tune request wit=
h your
>>>>>>> desired RF frequency and then specify an LO offset frequency of 30 =
MHz.
>>>>>>> This is all that is needed (again assuming that your bandwidth of i=
nterest
>>>>>>> is < 60 MHz).  This link
>>>>>>> <https://dsp.stackexchange.com/questions/30562/large-spike-at-the-c=
enter-frequency-when-using-ettus-x310>
>>>>>>> discusses the topic.
>>>>>>>
>>>>>>> Also, if you want to reduce the DC offset, there are calibrations
>>>>>>> for the X310 - one of which will mitigate this signal.
>>>>>>> Rob
>>>>>>>
>>>>>>> Just a note that AFAIR, the *RX* DC-offset correction is something
>>>>>>> that doesn't require input from the calibration routines--it runs a=
ll the
>>>>>>> time (if its turned on).
>>>>>>>
>>>>>>> But phase/amplitude *balance* does require that you run the
>>>>>>> appropriate CAL utilities:
>>>>>>>
>>>>>>> https://files.ettus.com/manual/page_calibration.html
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@g=
mail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> I have implemented the following calls for uhd_usrp_set_rx_lo_freq=
:
>>>>>>>>
>>>>>>>> uhd_string_vector_handle  names;
>>>>>>>> uhd_string_vector_make(&names);
>>>>>>>> if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &name=
s)))
>>>>>>>>        warn(log, "Failed to get lo names (%d). %s.\n", 0, FL, LN,
>>>>>>>> FN, err, uhdError(err));
>>>>>>>> if ((err =3D uhd_string_vector_size(names, &len)))
>>>>>>>>      warn(log, "Failed to get lo names size (%d).
>>>>>>>> %s.\n",0,FL,LN,FN,err, uhdError(err));
>>>>>>>> if (!len)
>>>>>>>> {
>>>>>>>>       error(log, "No lo names found on channel %d.\n", 0, FL, LN,
>>>>>>>> FN, channel);
>>>>>>>>        uhd_string_vector_free(&names);
>>>>>>>>         return(FAIL);
>>>>>>>> }
>>>>>>>> uhd_string_vector_free(&names);
>>>>>>>>
>>>>>>>> The problem is that names always returns 0. This is not right for
>>>>>>>> my SBX-120, or any
>>>>>>>> daughterboard with  a tuner:( This is what i can get from the API.
>>>>>>>> There are no LO examples.
>>>>>>>> I have seen lo_enable() in c++, but nothing exported to C. What am
>>>>>>>> I missing?
>>>>>>>>
>>>>>>>> TIA
>>>>>>>> Nikos
>>>>>>>>
>>>>>>>> On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas <nbalkanas@=
gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Thx Marcus,
>>>>>>>>>
>>>>>>>>> For your fast and informative answers. Sorry it took me a while t=
o
>>>>>>>>> reply,
>>>>>>>>> but I'm still trying to get:
>>>>>>>>> tune_request(freq, lo_off)
>>>>>>>>> to work in C.
>>>>>>>>> My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>>>>>>>>> True about the tuner. Much cheaper and easier to implement it in
>>>>>>>>> analog.
>>>>>>>>> I am using your FPGA image. Haven't touched it myself, yet.
>>>>>>>>> So, the spike is pretty narrow to interfere with my signals, but
>>>>>>>>> still messes my power calculations:(
>>>>>>>>> I already implemented the integer frequency tuner and working on
>>>>>>>>> the low oscillator offset.
>>>>>>>>> If you have any pointers about it, feel free to advise.
>>>>>>>>> LO is not part of the request_tuner_t struct. It is set
>>>>>>>>> independently.
>>>>>>>>> Is this the same LO in uhd_usrp_set_rx_lo_freq?
>>>>>>>>> If this is the case I can modify it externally:)
>>>>>>>>>
>>>>>>>>> BR
>>>>>>>>> Nikos
>>>>>>>>>
>>>>>>>>> On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech <
>>>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>>>>>>>>
>>>>>>>>>> The spike is very clean to come from outside.
>>>>>>>>>> Must be from my X310. My tuner must be adding a signal to the
>>>>>>>>>> center frequency. The small artifact at 2 Ghz is probably the
>>>>>>>>>> tuner not
>>>>>>>>>> equilibrating fully.
>>>>>>>>>> I recently updated my FPGA image. Is that where the tuner lives?
>>>>>>>>>>
>>>>>>>>>> You haven't mentioned in this thread which daughtercard you're
>>>>>>>>>> using.   RF front-ends that use complex-baseband
>>>>>>>>>>   downconversion suffer from something called "DC-offset", which
>>>>>>>>>> produces a spike at 0Hz in the complex spectrum.
>>>>>>>>>>   The radio block in the standard FPGAs has methods for reducing
>>>>>>>>>> this, unless you turn it off.  This is a very very
>>>>>>>>>>   *normal* thing for complex-baseband receiver chains.
>>>>>>>>>>
>>>>>>>>>> If the algorithms are engaged and working, then there'll still b=
e
>>>>>>>>>> a central spike, but *considerably* reduced, and I find that
>>>>>>>>>>   said spike is usually swamped by external signals, even in
>>>>>>>>>> radio astronomy.
>>>>>>>>>>
>>>>>>>>>> The other method that people use is to use "offset tuning".
>>>>>>>>>> Where the tuner is tuned to a different RF frequency, and the
>>>>>>>>>>    DDC brings your signal of interest down to 0Hz.
>>>>>>>>>>
>>>>>>>>>> https://files.ettus.com/manual/page_general.html#general_tuning
>>>>>>>>>>
>>>>>>>>>> The "tuner" is an analog collection of components, including an
>>>>>>>>>> LO generator, and mixers.  While it is *controlled* through
>>>>>>>>>>   the FPGA, it is an analog subsystem.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <
>>>>>>>>>> nbalkanas@gmail.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hello,
>>>>>>>>>>>
>>>>>>>>>>> Whenever I look at my spectrum I always see an energy spike at
>>>>>>>>>>> the center frequency.
>>>>>>>>>>> In the first image you can see a spike at 2, but not at 2.001
>>>>>>>>>>> Ghz. In the next image,
>>>>>>>>>>>  at 2.001 Ghz you can see the energy spike at the center
>>>>>>>>>>> frequency, but also a small
>>>>>>>>>>>  spike at 2 Ghz.
>>>>>>>>>>> I have verified these results by both fosphor (OpenCL fft) and
>>>>>>>>>>> fftw3f. Besides, if it were
>>>>>>>>>>>  an fft artifact, why is the spike at 2 Ghz still visible after
>>>>>>>>>>> a few mins? These spikes
>>>>>>>>>>>  seem to be transient, but real. In that part of the spectrum,
>>>>>>>>>>> you there is no traffic. Could it be  harmonics from my power s=
upply?
>>>>>>>>>>> Problems with my X-310? My transmitter
>>>>>>>>>>>  doing funny things (I have 2 boards and not enabling my
>>>>>>>>>>> transmitter anywhere)?
>>>>>>>>>>> Naming of images is freq_sr.jpg. All are in Mhz.
>>>>>>>>>>>
>>>>>>>>>>> TIA
>>>>>>>>>>> Nikos
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>
>>>>>>>
>>>

--00000000000087f6b40635df62c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">I g=
ot the chance to look into uhd&#39;s guts.</div><div class=3D"gmail_default=
" style=3D"font-size:small">My driver for the X300, x300_radio_control.cpp,=
 uses get_tree() to set/get all its properties.=C2=A0</div><div class=3D"gm=
ail_default" style=3D"font-size:small">This tree is maintained in RFNOC. I =
don&#39;t use it. I use Vivado.</div><div class=3D"gmail_default" style=3D"=
font-size:small">The path given for get_rx_lo_names db_path(&quot;rx&quot;,=
 channel) didn&#39;t have any / &quot;los&quot; key in it.</div><div class=
=3D"gmail_default" style=3D"font-size:small">I guess all other keys must ha=
ve worked, or i couldn&#39;t set/get anything in my box.</div><div class=3D=
"gmail_default" style=3D"font-size:small">Could it be because i don&#39;t u=
se RFNOC? that would be a shame:(</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:small">=
Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sat, May 24, 2025 at 12:30=E2=80=AFPM N=
ikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi=
,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small">Problem fixed:) It was =
easier than I thought. No patches needed:)</div><div class=3D"gmail_default=
" style=3D"font-size:small">The answer was in host/lib/types/tune.cpp alway=
s:</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">tune_request_t::tune_r=
equest_t(double target_freq, double lo_off)</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">=C2=A0.target_freq(target_freq)<br>, rf_freq_p=
olicy(POLICY_MANUAL)<br>, rf_freq(target_freq + lo_off)<br>, dsp_freq_polic=
y(POLICY_AUTO)<br>, dsp_freq(0.0)<br><br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">There is only a labeling confusion in the defini=
tion of tune_request_t.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">The first 3 fields refer to the RF chain. It is curious that there=
 are both target_freq and=C2=A0 rf_freq</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">at the same time. Rf_freq should be renamed lo_fre=
q!</div><div class=3D"gmail_default" style=3D"font-size:small">rf_freq_poli=
cy affects both target freq and lo_freq:)</div><div class=3D"gmail_default"=
 style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"=
font-size:small">HTH</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">Nikos</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small"><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 2=
4, 2025 at 6:16=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@g=
mail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-size:small">Hi Marcus,</div><div class=3D"=
gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">I am aware of those. I wouldn&#39;t be doing=
 all these if they were available to me:(</div><div class=3D"gmail_default"=
 style=3D"font-size:small">You can check C API availability in usrp.h:)</di=
v><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">BR</div><div class=3D"gmail_=
default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 24, 2025 at 12:33=
=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><u></u>

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
</blockquote></div>

--00000000000087f6b40635df62c9--

--===============5303064096911414576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5303064096911414576==--
