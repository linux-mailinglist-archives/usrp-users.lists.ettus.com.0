Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8F3AC2B68
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 23:34:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93ED53851FA
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 17:34:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748036085; bh=gPaI02Kw7PoObXQBsjdCM/O6kzTS94jAkYNjB/ebJUk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=p9/y5GnnSCru5mNbVHWoCZc3XlYLXXfjltQXy8nKF6FCN71py/EZc0IdIud1yWxIy
	 fDgnMvF7GiDmVMmtoPjklh/vv3TcY2r0e2akxa8aBy30ZR3hFNKON6ARUDEDrSqdRl
	 t9WJDq/TCCQ2ygSCiE4PRsaHJDssVx5JXkh6GDr4p6xdeoLYQJ32b9bV3uzFTGg6ld
	 SCeQYuF+cExB3oMNBkjBCXojnlRRWZPvOPa6ZIH1HnDFWEYnoIBqkPr/9bjwF7ecxz
	 q169TOPRN857cTOHV83yQ1cYJukJY+C10RmqpKfPHHIT7I71TCwaVkenfoxe/NJOZf
	 ZseSzy9t5Vx5w==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 35914380A79
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 17:33:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FuB10RLS";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6f5373067b3so2948036d6.2
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 14:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748036028; x=1748640828; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TsFjtbxOKDtDjbBPCi1fswRHISpKBvj3OSpHPjXyiSo=;
        b=FuB10RLSRZnGa2XfHF42fDSfmTVXDApQ+q9otAIZLm0fZztqBl6BSDkt+3ncRh9B3H
         x5NhmgEznHCvDcK6F4I0XC5nqU0HTxeACxYcOy+UPAsAQdLEnzbSDj/aER1p7zksALVk
         WWTDIU1JA/PAW1qNvjQCigDe/PrjMPVQZ+bYA7PXC62qYH0dbyA3O7e5HOD2Uj/xJJRV
         qQ/5+CWxDUDRh1jBDt3MbPwzLVyOpplkHeQYY88NSGMqkTiS64LF8YP+yfctqtAnx9F4
         IUGXyqGXZWg+XrPjn+xg/rV/83Gh5XyDUfbbdrmpZgIoH5Y0szPaybzCIFGLTAAHEBhA
         AHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748036028; x=1748640828;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TsFjtbxOKDtDjbBPCi1fswRHISpKBvj3OSpHPjXyiSo=;
        b=KppInmRy3LYV4L8DrnfX96ygFVt3ELaelfWtOm9xIk7utuQ2CwAobaSVmbXRnHsTdc
         DmfKB0znJCPsECuwSQy/UuOFwcOG1rl+jgEyRzsliqf8iQuOw7UBg7AiAFlIo/aLWVoi
         MX6V1c4ndNRvV9Oq3VHlhmHu/w90AOqKeNFMF3LB5uuW4rM3iJAWYhTZAtPzSZpNkpi5
         Z2jZ4+6zkyl7b2DEq6u2GIrTDOukT9er1301b4JaNxoP9ZfLkJY5LwTPeXNpUb4B5t6l
         /GiWKPh9AClmCTa7U8FPWCE25g1Ddyh7fV2YZeBBCozMqg+tWHhJtos/xp1u+c5NIGpj
         3thQ==
X-Gm-Message-State: AOJu0Yz/SvWP3vazKZe05Xiq6KxFmMZcKtv00rjxJawq1j8crhpuDMid
	kruZ/6xqic3skuADt377++lLOupyj7pDBHWNSwwWH5KojruofcDiolPIFmZPqqJJ
X-Gm-Gg: ASbGncvMrP+mVKAsUhKZQnuHWCM8WTbJMOm2s29yVOnE1JNU2hoQPaKvdTizQ08U8kf
	/aq4+Jb+1hzb3BFng7FA7RCfpBUGlPIvS79jlPIM6930XcyS+eNdtG8cqYpjFmQ7Gr6hFYo0VCm
	SqXjcW6TlBT5nb5wee9IrkzCe0TKbAv76MAmGL7wdVwNKMK5ppaY9ThMiQWRPmzPlizUcf9xCYw
	itPu2u8VCR2CHXzTj1ZCgoXHg1d72bnScylAw9S3ZLkjg5ZL9Gz6qL3mC4WooLCqip4yjZVuZqG
	PGLiSg07TdVoCqeJsKxs2o+QWZxvaTuvoZDJ/6lYXjCUKIhK6LiyahE0ajdx
X-Google-Smtp-Source: AGHT+IHBdU81BBD2p/n4rWVctlIb/RgyogSDSFw92UHjjZOOXUvffrqO/BEXKHnPTJ0CgU7OAsqlhQ==
X-Received: by 2002:a05:6214:2aa8:b0:6f2:d45c:4a1d with SMTP id 6a1803df08f44-6fa9d29f4damr19408586d6.38.1748036028114;
        Fri, 23 May 2025 14:33:48 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6f8b0988a3bsm119604516d6.124.2025.05.23.14.33.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 14:33:47 -0700 (PDT)
Message-ID: <e86846d4-0a75-4bf5-8700-04b06668406b@gmail.com>
Date: Fri, 23 May 2025 17:33:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>, Rob Kossler <rkossler@nd.edu>
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com>
 <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
 <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
 <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com>
 <CAAxXO2EShVqaVvO3LBMOvvNGeq_gDF2-+FRShfpb_cdGh9eCRg@mail.gmail.com>
 <CAB__hTQq3yzT4v5qYhCDRaoPoWtVKZbd0zSiZ-Rw0j1C40yLhA@mail.gmail.com>
 <CAB__hTRpTLn2E9cdja1y3BrMp0pFQYEtYq0OGC6mgura4tNo-Q@mail.gmail.com>
 <CAAxXO2GTMr4JNZEv46z9WXk5F_Ux5qJLTA=cnkumredumDxvBA@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GTMr4JNZEv46z9WXk5F_Ux5qJLTA=cnkumredumDxvBA@mail.gmail.com>
Message-ID-Hash: SQ7AXSHFQAAUUYU4RKCD35VQRLDJFJ3J
X-Message-ID-Hash: SQ7AXSHFQAAUUYU4RKCD35VQRLDJFJ3J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SQ7AXSHFQAAUUYU4RKCD35VQRLDJFJ3J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9045404217936817920=="

This is a multi-part message in MIME format.
--===============9045404217936817920==
Content-Type: multipart/alternative;
 boundary="------------kGqdkos82UQcfXIFx7IZYrW2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kGqdkos82UQcfXIFx7IZYrW2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-05-23 13:41, Nikos Balkanas wrote:
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
I'll note that the C++ API has a couple of "helper" functions for=20
creating tune_request_t objects:

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d2c5=
fb89c10024b1acae43e88ebe7f

The second form, which takes both a desired target frequency, and the=20
desired lo_offset, is what I have used in the past.

I don't know if these are somehow available in the C API to form the=20
tune_request_t=C2=A0 structure.


>
> On Fri, May 23, 2025 at 7:59=E2=80=AFPM Rob Kossler <rkossler@nd.edu> w=
rote:
>
>     I forgot to mention, the function you were looking at
>     'uhd_usrp_set_rx_lo_freq' is not the function you need.=C2=A0 This =
is a
>     low-level function that is rarely needed. You will want to stay
>     with the function 'uhd_usrp_set_rx_freq' which will send the
>     appropriate command to the radio to set the LO and to the DDC to
>     set the desired DSP frequency shift that will compensate for the
>     LO being offset.
>     Rob
>
>     On Fri, May 23, 2025 at 12:55=E2=80=AFPM Rob Kossler <rkossler@nd.e=
du> wrote:
>
>         Hi Nikos,
>         Although I have not used the 'c' API, it appears it can do the
>         same thing as the c++ API with regard to tune request.=C2=A0 Th=
e
>         'c' structure uhd_tune_reqest_t
>         <https://github.com/EttusResearch/uhd/blob/master/host/include/=
uhd/types/tune_request.h#L28>
>         includes a field called 'dsp_freq'.=C2=A0 It seems that you can=
 set
>         this to 30 MHz.=C2=A0 The c++ documentation for tune_request_t
>         <https://files.ettus.com/manual/structuhd_1_1tune__request__t.h=
tml#af9d2c5fb89c10024b1acae43e88ebe7f>
>         indicates that you should set the RF policy to manual and the
>         DSP policy to automatic.=C2=A0 I don't know for certain if you
>         should set the 'target_freq' or the 'rf_freq' field of the
>         tune request to the desired frequency but I'm guessing
>         'target_freq'.
>
>         There is an example program called rx_samples_c.c
>         <https://github.com/EttusResearch/uhd/blob/master/host/examples=
/rx_samples_c.c>
>         which you may have seen. This shows using a tune request but
>         without an LO offset.
>         Rob
>
>         On Fri, May 23, 2025 at 12:09=E2=80=AFPM Nikos Balkanas
>         <nbalkanas@gmail.com> wrote:
>
>             Ty Rob for the link and the suggestions,
>
>             We agree completely. I need to offset my LO.
>             You are probably not aware that I am using the C API.
>             I cannot use the C++ constructors for tune_request unless
>             they are exported as C API.
>             I can just use the tune_request_t struct, which has no
>             lo_off member.
>             So, I have=C2=A0 to offset my LO manually:
>             uhd_usrp_set_rx_lo_freq(uhd_usrp_handle h, double freq,
>             char *name, size_t channel, double *outfreq)
>             I have everything that I need except the LO name:(
>             To get name I use:
>             uhd_usrp_get_rx_lo_names()
>             That's my problem, right there. It just returns me an
>             empty list of names. No errors either. Why?
>             Without it, I cannot use the uhd_usrp_set_rx_lo_freq:(
>             Unfortunately, gdb is no help in this case. After 10 calls
>             to the /usr/include/c++ files and 7 more
>             calls to boost and preprocessor defines, it just advances
>             to the next source line.
>             Not gdb friendly sources:(
>             I am also looking to export as C API the
>             tune_request(freq, lo_off) C++ constructor.
>             This will mean to change code in uhd, which I will
>             eventually have to, but right now,
>             getting=C2=A0uhd_usrp_get_rx_lo_names() to work, is better:=
)
>
>             BR
>             Nikos
>
>
>
>
>
>             On Fri, May 23, 2025 at 4:57=E2=80=AFPM Marcus D. Leech
>             <patchvonbraun@gmail.com> wrote:
>
>                 On 2025-05-23 09:49, Rob Kossler wrote:
>>                 Hi Nikos,
>>                 Your RF card has 120 MHz bandwidth. The strong tone
>>                 you see will always be at the center.=C2=A0 But, if yo=
ur
>>                 application can tolerate using an instantaneous
>>                 bandwidth < 60 MHz, you can use offset tuning as
>>                 Marcus mentioned.=C2=A0 To do this you simply need to
>>                 create a tune request with your desired RF frequency
>>                 and then specify an LO offset frequency of 30 MHz.=C2=A0
>>                 This is all that is needed (again assuming that your
>>                 bandwidth of interest is < 60 MHz). This link
>>                 <https://dsp.stackexchange.com/questions/30562/large-s=
pike-at-the-center-frequency-when-using-ettus-x310>
>>                 discusses the topic.
>>
>>                 Also, if you want to reduce the DC offset, there are
>>                 calibrations for the X310 - one of which will
>>                 mitigate this signal.
>>                 Rob
>                 Just a note that AFAIR, the *RX* DC-offset correction
>                 is something that doesn't require input from the
>                 calibration routines--it runs all the time (if its
>                 turned on).
>
>                 But phase/amplitude *balance* does require that you
>                 run the appropriate CAL utilities:
>
>                 https://files.ettus.com/manual/page_calibration.html
>
>
>>
>>                 On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas
>>                 <nbalkanas@gmail.com> wrote:
>>
>>                     I have implemented the following calls for
>>                     uhd_usrp_set_rx_lo_freq:
>>
>>                     uhd_string_vector_handle =C2=A0names;
>>                     uhd_string_vector_make(&names);
>>                     if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel]=
,
>>                     channel, &names)))
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, "Failed to ge=
t lo names (%d).
>>                     %s.\n", 0, FL, LN, FN, err, uhdError(err));
>>                     if ((err =3D uhd_string_vector_size(names, &len)))
>>                     =C2=A0 =C2=A0 =C2=A0warn(log, "Failed to get lo na=
mes size (%d).
>>                     %s.\n",0,FL,LN,FN,err, uhdError(err));
>>                     if (!len)
>>                     {
>>                     =C2=A0 =C2=A0 =C2=A0 error(log, "No lo names found=
 on channel
>>                     %d.\n", 0, FL, LN, FN, channel);
>>                     =C2=A0uhd_string_vector_free(&names);
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);
>>                     }
>>                     uhd_string_vector_free(&names);
>>
>>                     The problem is that names always returns 0. This
>>                     is not right for my SBX-120, or any
>>                     daughterboard with=C2=A0 a tuner:( This is what i =
can
>>                     get from the API. There are no LO examples.
>>                     I have seen lo_enable() in c++, but nothing
>>                     exported to C. What am I missing?
>>
>>                     TIA
>>                     Nikos
>>
>>                     On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balk=
anas
>>                     <nbalkanas@gmail.com> wrote:
>>
>>                         Thx Marcus,
>>
>>                         For your fast and informative answers. Sorry
>>                         it took me a while to reply,
>>                         but I'm still trying to get:
>>                         tune_request(freq, lo_off)
>>                         to work in C.
>>                         My X310 has 2 SBX-120 boards. Using uhd 4.6.0
>>                         in Ubuntu 24.04.
>>                         True about the tuner. Much cheaper and easier
>>                         to implement it in analog.
>>                         I am using your FPGA image. Haven't touched
>>                         it myself, yet.
>>                         So, the spike is pretty narrow to interfere
>>                         with my signals, but still messes my power
>>                         calculations:(
>>                         I already implemented the integer frequency
>>                         tuner and working on the low oscillator offset=
.
>>                         If you have any pointers about it, feel free
>>                         to advise.
>>                         LO is not part of the request_tuner_t struct.
>>                         It is set independently.
>>                         Is this the same LO in uhd_usrp_set_rx_lo_freq=
?
>>                         If this is the case I can modify it externally=
:)
>>
>>                         BR
>>                         Nikos
>>
>>                         On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus=
 D.
>>                         Leech <patchvonbraun@gmail.com> wrote:
>>
>>                             On 2025-05-22 21:31, Nikos Balkanas wrote:
>>>                             The spike is very clean to come from
>>>                             outside.
>>>                             Must be from my X310. My tuner must be
>>>                             adding a signal to the
>>>                             center frequency. The small artifact at
>>>                             2 Ghz is probably the tuner not
>>>                             equilibrating fully.
>>>                             I recently updated my FPGA image. Is
>>>                             that where the tuner lives?
>>                             You haven't mentioned in this thread
>>                             which daughtercard you're using.=C2=A0=C2=A0=
 RF
>>                             front-ends that use complex-baseband
>>                             =C2=A0 downconversion suffer from somethin=
g
>>                             called "DC-offset", which produces a
>>                             spike at 0Hz in the complex spectrum.
>>                             =C2=A0 The radio block in the standard FPG=
As
>>                             has methods for reducing this, unless you
>>                             turn it off.=C2=A0 This is a very very
>>                             =C2=A0 *normal* thing for complex-baseband
>>                             receiver chains.
>>
>>                             If the algorithms are engaged and
>>                             working, then there'll still be a central
>>                             spike, but *considerably* reduced, and I
>>                             find that
>>                             =C2=A0 said spike is usually swamped by
>>                             external signals, even in radio astronomy.
>>
>>                             The other method that people use is to
>>                             use "offset tuning".=C2=A0 Where the tuner=
 is
>>                             tuned to a different RF frequency, and the
>>                             =C2=A0=C2=A0 DDC brings your signal of int=
erest
>>                             down to 0Hz.
>>
>>                             https://files.ettus.com/manual/page_genera=
l.html#general_tuning
>>
>>                             The "tuner" is an analog collection of
>>                             components, including an LO generator,
>>                             and mixers.=C2=A0 While it is *controlled*=
 through
>>                             =C2=A0 the FPGA, it is an analog subsystem=
.
>>
>>
>>>
>>>                             On Fri, May 23, 2025 at 3:19=E2=80=AFAM N=
ikos
>>>                             Balkanas <nbalkanas@gmail.com> wrote:
>>>
>>>                                 Hello,
>>>
>>>                                 Whenever I look at my spectrum I
>>>                                 always see an energy spike at the
>>>                                 center frequency.
>>>                                 In the first image you can see a
>>>                                 spike at 2, but not at 2.001 Ghz. In
>>>                                 the next image,
>>>                                 =C2=A0at 2.001 Ghz you can see the en=
ergy
>>>                                 spike at the center frequency, but
>>>                                 also a small
>>>                                 =C2=A0spike at 2 Ghz.
>>>                                 I have verified these results by
>>>                                 both fosphor (OpenCL fft) and
>>>                                 fftw3f. Besides, if it were
>>>                                 =C2=A0an fft artifact, why is the spi=
ke
>>>                                 at 2 Ghz still visible after a few
>>>                                 mins? These spikes
>>>                                 =C2=A0seem to be transient, but real.=
 In
>>>                                 that part of the spectrum, you there
>>>                                 is no traffic. Could it be harmonics
>>>                                 from my power supply? Problems with
>>>                                 my X-310? My transmitter
>>>                                 =C2=A0doing funny things (I have 2 bo=
ards
>>>                                 and not enabling my transmitter
>>>                                 anywhere)?
>>>                                 Naming of images is freq_sr.jpg. All
>>>                                 are in Mhz.
>>>
>>>                                 TIA
>>>                                 Nikos
>>>
>>>
>>>                             _________________________________________=
______
>>>                             USRP-users mailing list --usrp-users@list=
s.ettus.com
>>>                             To unsubscribe send an email tousrp-users=
-leave@lists.ettus.com
>>
>>                             __________________________________________=
_____
>>                             USRP-users mailing list --
>>                             usrp-users@lists.ettus.com
>>                             To unsubscribe send an email to
>>                             usrp-users-leave@lists.ettus.com
>>
>>                     _______________________________________________
>>                     USRP-users mailing list -- usrp-users@lists.ettus.=
com
>>                     To unsubscribe send an email to
>>                     usrp-users-leave@lists.ettus.com
>>
>

--------------kGqdkos82UQcfXIFx7IZYrW2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-05-23 13:41, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GTMr4JNZEv46z9WXk5F_Ux5qJLTA=3DcnkumredumDxvBA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Hi Rob,</d=
iv>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">I've done =
all
          these, but they do not affect LO offset.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">C API expo=
rts
          only these low level LO commands (in usrp.h)</div>
        <div class=3D"gmail_default" style=3D"font-size:small">So, either=
 I
          work it out with what I have, or I expand the C API</div>
        <div class=3D"gmail_default" style=3D"font-size:small">to include
          the higher level C++ constructors.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">My luck. B=
oth
          issues have to do with the C API:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Sampling r=
ate
          is very important, but not useful in this case.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I leave it=
 on
          auto. RF is on manual:)</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div=
>
      </div>
    </blockquote>
    I'll note that the C++ API has a couple of "helper" functions for
    creating tune_request_t objects:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/structuhd_1_1tune__request__t.html#af9d2c5fb89c10024b1acae43e88ebe7f">ht=
tps://files.ettus.com/manual/structuhd_1_1tune__request__t.html#af9d2c5fb=
89c10024b1acae43e88ebe7f</a><br>
    <br>
    The second form, which takes both a desired target frequency, and
    the desired lo_offset, is what I have used in the past.<br>
    <br>
    I don't know if these are somehow available in the C API to form the
    tune_request_t=C2=A0 structure.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GTMr4JNZEv46z9WXk5F_Ux5qJLTA=3DcnkumredumDxvBA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          7:59=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.e=
du"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rkos=
sler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">I forgot to mention, the function you were
              looking at 'uhd_usrp_set_rx_lo_freq' is not the function
              you need.=C2=A0 This is a low-level function that is rarely
              needed. You will want to stay with the function
              'uhd_usrp_set_rx_freq' which will send the appropriate
              command to the radio to set the LO and to the DDC to set
              the desired DSP frequency shift that will compensate for
              the LO being offset.</div>
            <div>Rob</div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 =
at
                12:55=E2=80=AFPM Rob Kossler &lt;<a
                  href=3D"mailto:rkossler@nd.edu" target=3D"_blank"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">rkossler@nd.edu</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                <div dir=3D"ltr">Hi Nikos,
                  <div>Although I have not used the 'c' API, it appears
                    it can do the same thing as the c++ API with regard
                    to tune request.=C2=A0 The 'c' structure <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd=
/types/tune_request.h#L28"
                      target=3D"_blank" moz-do-not-send=3D"true">uhd_tune=
_reqest_t</a>
                    includes a field called 'dsp_freq'.=C2=A0 It seems th=
at
                    you can set this to 30 MHz.=C2=A0 The c++ documentati=
on=C2=A0
                    for <a
href=3D"https://files.ettus.com/manual/structuhd_1_1tune__request__t.html=
#af9d2c5fb89c10024b1acae43e88ebe7f"
                      target=3D"_blank" moz-do-not-send=3D"true">tune_req=
uest_t</a>
                    indicates that you should set the RF policy to
                    manual and the DSP policy to automatic.=C2=A0 I don't
                    know for certain if you should set the 'target_freq'
                    or the 'rf_freq' field of the tune request to the
                    desired frequency but I'm guessing 'target_freq'.=C2=A0=
</div>
                  <div><br>
                  </div>
                  <div>There is an example program called <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/rx=
_samples_c.c"
                      target=3D"_blank" moz-do-not-send=3D"true">rx_sampl=
es_c.c</a>
                    which you may have seen. This shows using a tune
                    request but without an LO offset.</div>
                  <div>Rob</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2=
025
                    at 12:09=E2=80=AFPM Nikos Balkanas &lt;<a
                      href=3D"mailto:nbalkanas@gmail.com" target=3D"_blan=
k"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">nbalkanas@gmail.com=
</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
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
                      <div style=3D"font-size:small">So, I have=C2=A0 to =
offset
                        my LO manually:</div>
                      <div style=3D"font-size:small">uhd_usrp_set_rx_lo_f=
req(uhd_usrp_handle
                        h, double freq, char *name, size_t channel,
                        double *outfreq)</div>
                      <div style=3D"font-size:small">I have everything
                        that I need except the LO name:(</div>
                      <div style=3D"font-size:small">To get name I use:</=
div>
                      <div style=3D"font-size:small">uhd_usrp_get_rx_lo_n=
ames()</div>
                      <div style=3D"font-size:small">That's my problem,
                        right there. It just returns me an empty list of
                        names. No errors either. Why?</div>
                      <div style=3D"font-size:small">Without it, I cannot
                        use the uhd_usrp_set_rx_lo_freq:(</div>
                      <div style=3D"font-size:small">Unfortunately, gdb i=
s
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
                      <div style=3D"font-size:small">getting=C2=A0uhd_usr=
p_get_rx_lo_names()
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
                      <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 2=
3,
                        2025 at 4:57=E2=80=AFPM Marcus D. Leech &lt;<a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">patchvonbraun@g=
mail.com</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                        <div>
                          <div>On 2025-05-23 09:49, Rob Kossler wrote:<br=
>
                          </div>
                          <blockquote type=3D"cite">
                            <div dir=3D"ltr">Hi Nikos,
                              <div>Your RF card has 120 MHz bandwidth.=C2=
=A0
                                The strong tone you see will always be
                                at the center.=C2=A0 But, if your applica=
tion
                                can tolerate using an instantaneous
                                bandwidth &lt; 60 MHz, you can use
                                offset tuning as Marcus mentioned.=C2=A0 =
To
                                do this you simply need to create a tune
                                request with your desired RF frequency
                                and then specify an LO offset frequency
                                of 30 MHz.=C2=A0 This is all that is need=
ed
                                (again assuming that your bandwidth of
                                interest is &lt; 60 MHz).=C2=A0 <a
href=3D"https://dsp.stackexchange.com/questions/30562/large-spike-at-the-=
center-frequency-when-using-ettus-x310"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue">This
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
                          correction is something that doesn't require
                          input from the calibration routines--it runs
                          all the time (if its turned on).<br>
                          <br>
                          But phase/amplitude *balance* does require
                          that you run the appropriate CAL utilities:<br>
                          <br>
                          <a
href=3D"https://files.ettus.com/manual/page_calibration.html"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">https://files=
.ettus.com/manual/page_calibration.html</a><br>
                          <br>
                          <br>
                          <blockquote type=3D"cite"><br>
                            <div class=3D"gmail_quote">
                              <div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i,
                                May 23, 2025 at 8:11=E2=80=AFAM Nikos Bal=
kanas
                                &lt;<a href=3D"mailto:nbalkanas@gmail.com=
"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"
                                  class=3D"moz-txt-link-freetext">nbalkan=
as@gmail.com</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                <div dir=3D"ltr">
                                  <div style=3D"font-size:small">I have
                                    implemented the following calls for
                                    uhd_usrp_set_rx_lo_freq:</div>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">uhd_stri=
ng_vector_handle
                                    =C2=A0names;<br>
                                    uhd_string_vector_make(&amp;names);<b=
r>
                                    if ((err =3D
                                    uhd_usrp_get_rx_lo_names(dev[channel]=
,
                                    channel, &amp;names)))<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, =
"Failed to get lo
                                    names (%d). %s.\n", 0, FL, LN, FN,
                                    err, uhdError(err));<br>
                                    if ((err =3D
                                    uhd_string_vector_size(names,
                                    &amp;len)))<br>
                                    =C2=A0 =C2=A0 =C2=A0warn(log, "Failed=
 to get lo
                                    names size (%d).
                                    %s.\n",0,FL,LN,FN,err,
                                    uhdError(err));<br>
                                    if (!len)<br>
                                    {<br>
                                    =C2=A0 =C2=A0 =C2=A0 error(log, "No l=
o names found
                                    on channel %d.\n", 0, FL, LN, FN,
                                    channel);<br>
                                    =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0uhd_string_vector_free(&amp;nam=
es);<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FA=
IL);</div>
                                  <div style=3D"font-size:small">}</div>
                                  <div style=3D"font-size:small">uhd_stri=
ng_vector_free(&amp;names);</div>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">The
                                    problem is that names always returns
                                    0. This is not right for my SBX-120,
                                    or any</div>
                                  <div style=3D"font-size:small">daughter=
board
                                    with=C2=A0 a tuner:( This is what i c=
an
                                    get from the API. There are no LO
                                    examples.</div>
                                  <div style=3D"font-size:small">I have
                                    seen lo_enable() in c++, but nothing
                                    exported to C. What am I missing?</di=
v>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">TIA</div=
>
                                  <div style=3D"font-size:small">Nikos</d=
iv>
                                </div>
                                <br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"ltr" class=3D"gmail_attr">O=
n
                                    Fri, May 23, 2025 at 8:12=E2=80=AFAM =
Nikos
                                    Balkanas &lt;<a
                                      href=3D"mailto:nbalkanas@gmail.com"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">nba=
lkanas@gmail.com</a>&gt;
                                    wrote:<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
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
                                        I'm still trying to get:=C2=A0</d=
iv>
                                      <div style=3D"font-size:small">tune=
_request(freq,
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
                                        using your FPGA image. Haven't
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
                                        feel free to advise.=C2=A0=C2=A0<=
/div>
                                      <div style=3D"font-size:small">LO i=
s
                                        not part of the request_tuner_t
                                        struct. It is set independently.<=
/div>
                                      <div style=3D"font-size:small">Is
                                        this the same LO in
                                        uhd_usrp_set_rx_lo_freq?</div>
                                      <div style=3D"font-size:small">If
                                        this is the case I can modify it
                                        externally:)</div>
                                      <div style=3D"font-size:small"><br>
                                      </div>
                                      <div style=3D"font-size:small">BR</=
div>
                                      <div style=3D"font-size:small">Niko=
s</div>
                                    </div>
                                    <br>
                                    <div class=3D"gmail_quote">
                                      <div dir=3D"ltr" class=3D"gmail_att=
r">On
                                        Fri, May 23, 2025 at 4:40=E2=80=AF=
AM
                                        Marcus D. Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>patchvonbraun@gmail.com</a>&gt;
                                        wrote:<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                        <div>
                                          <div>On 2025-05-22 21:31,
                                            Nikos Balkanas wrote:<br>
                                          </div>
                                          <blockquote type=3D"cite">
                                            <div dir=3D"ltr">
                                              <div
                                                style=3D"font-size:small"=
>The
                                                spike is very clean to
                                                come from outside.</div>
                                              <div
                                                style=3D"font-size:small"=
>Must
                                                be from my X310. My
                                                tuner must be adding a
                                                signal to the</div>
                                              <div
                                                style=3D"font-size:small"=
>center
                                                frequency. The small
                                                artifact at 2 Ghz is
                                                probably the tuner not=C2=
=A0</div>
                                              <div
                                                style=3D"font-size:small"=
>equilibrating
                                                fully.</div>
                                              <div
                                                style=3D"font-size:small"=
>I
                                                recently updated my FPGA
                                                image. Is that where the
                                                tuner lives?</div>
                                            </div>
                                          </blockquote>
                                          You haven't mentioned in this
                                          thread which daughtercard
                                          you're using.=C2=A0=C2=A0 RF fr=
ont-ends
                                          that use complex-baseband<br>
                                          =C2=A0 downconversion suffer fr=
om
                                          something called "DC-offset",
                                          which produces a spike at 0Hz
                                          in the complex spectrum.<br>
                                          =C2=A0 The radio block in the
                                          standard FPGAs has methods for
                                          reducing this, unless you turn
                                          it off.=C2=A0 This is a very ve=
ry<br>
                                          =C2=A0 *normal* thing for
                                          complex-baseband receiver
                                          chains.<br>
                                          <br>
                                          If the algorithms are engaged
                                          and working, then there'll
                                          still be a central spike, but
                                          *considerably* reduced, and I
                                          find that<br>
                                          =C2=A0 said spike is usually
                                          swamped by external signals,
                                          even in radio astronomy.<br>
                                          <br>
                                          The other method that people
                                          use is to use "offset
                                          tuning".=C2=A0 Where the tuner =
is
                                          tuned to a different RF
                                          frequency, and the<br>
                                          =C2=A0=C2=A0 DDC brings your si=
gnal of
                                          interest down to 0Hz.<br>
                                          <br>
                                          <a
href=3D"https://files.ettus.com/manual/page_general.html#general_tuning"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">https://files.ettus.com/manual/page_gener=
al.html#general_tuning</a><br>
                                          <br>
                                          The "tuner" is an analog
                                          collection of components,
                                          including an LO generator, and
                                          mixers.=C2=A0 While it is
                                          *controlled* through<br>
                                          =C2=A0 the FPGA, it is an analo=
g
                                          subsystem.<br>
                                          <br>
                                          <br>
                                          <blockquote type=3D"cite"><br>
                                            <div class=3D"gmail_quote">
                                              <div dir=3D"ltr"
                                                class=3D"gmail_attr">On
                                                Fri, May 23, 2025 at
                                                3:19=E2=80=AFAM Nikos Bal=
kanas
                                                &lt;<a
href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank" moz-do-not-send=3D"=
true"
class=3D"moz-txt-link-freetext">nbalkanas@gmail.com</a>&gt; wrote:<br>
                                              </div>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div dir=3D"ltr">
                                                  <div
style=3D"font-size:small">Hello,</div>
                                                  <div
style=3D"font-size:small"><br>
                                                  </div>
                                                  <div
style=3D"font-size:small">Whenever I look at my spectrum I always see an
                                                    energy spike at the
                                                    center frequency.</di=
v>
                                                  <div
style=3D"font-size:small">In the first image you can see a spike at 2, bu=
t
                                                    not at 2.001 Ghz. In
                                                    the next image,</div>
                                                  <div
style=3D"font-size:small">=C2=A0at 2.001 Ghz you can see the energy spike=
 at
                                                    the center
                                                    frequency, but also
                                                    a small</div>
                                                  <div
style=3D"font-size:small">=C2=A0spike at 2 Ghz.</div>
                                                  <div
style=3D"font-size:small">I have verified these results by both fosphor
                                                    (OpenCL fft) and
                                                    fftw3f. Besides, if
                                                    it were</div>
                                                  <div
style=3D"font-size:small">=C2=A0an fft artifact, why is the spike at 2 Gh=
z
                                                    still visible after
                                                    a few mins? These
                                                    spikes</div>
                                                  <div
style=3D"font-size:small">=C2=A0seem to be transient, but real. In that p=
art of
                                                    the spectrum, you
                                                    there is no traffic.
                                                    Could it be=C2=A0
                                                    harmonics from my
                                                    power supply?
                                                    Problems with my
                                                    X-310? My
                                                    transmitter</div>
                                                  <div
style=3D"font-size:small">=C2=A0doing funny things (I have 2 boards and n=
ot
                                                    enabling my
                                                    transmitter
                                                    anywhere)?</div>
                                                  <div
style=3D"font-size:small">Naming of images is freq_sr.jpg. All are in Mhz=
.</div>
                                                  <div
style=3D"font-size:small"><br>
                                                  </div>
                                                  <div
style=3D"font-size:small">TIA</div>
                                                  <div
style=3D"font-size:small">Nikos</div>
                                                </div>
                                              </blockquote>
                                            </div>
                                            <br>
                                            <fieldset></fieldset>
                                            <pre>________________________=
_______________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
                                          </blockquote>
                                          <br>
                                        </div>
_______________________________________________<br>
                                        USRP-users mailing list -- <a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a><br>
                                        To unsubscribe send an email to
                                        <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>usrp-users-leave@lists.ettus.com</a><br>
                                      </blockquote>
                                    </div>
                                  </blockquote>
                                </div>
_______________________________________________<br>
                                USRP-users mailing list -- <a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                  moz-do-not-send=3D"true"
                                  class=3D"moz-txt-link-freetext">usrp-us=
ers@lists.ettus.com</a><br>
                                To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                  moz-do-not-send=3D"true"
                                  class=3D"moz-txt-link-freetext">usrp-us=
ers-leave@lists.ettus.com</a><br>
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
  </body>
</html>

--------------kGqdkos82UQcfXIFx7IZYrW2--

--===============9045404217936817920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9045404217936817920==--
