Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 616686DB2B9
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 20:21:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2189384B4F
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 14:21:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680891716; bh=lCSueotWfosBhvRTN028ILLe4JF1YF8ggaC6EKLYM+8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mu24EwrUYgkm/5099voLXvIBFnJNCRJHLz+9k8Uw2fH/haj123nYYrGFPC8NtDUvG
	 MrHd/MdN37L2qCsu/I7MXzW0VMH/Sf2BDw8VKofk9qSbVzP+n/lj47m8EY11xZQ+dm
	 feqtMd5QbuVGGXakvFxlqsIehG///3uHR8EdEJXxtIqAJiE0ciHb78EN5XKFKpWaG9
	 bL62ISK7ioljaSsBc6IRAiwvn9R/G6VcLmsCiLXbKHlARyT8R1EMySi/6j5D5U3N9Y
	 2Yb6yscv1CD13YznK7kTJ3VDd5WCpculrM65e39iF5EBJc+wC9ZRalYjUQYOZZH4X9
	 BgKNHwwzmspYw==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BEA89383B9F
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 14:20:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YVv6sPWv";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id ld14so1651675qvb.13
        for <usrp-users@lists.ettus.com>; Fri, 07 Apr 2023 11:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680891653; x=1683483653;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCumNX47BfmqMzMTMAwyig6vg1t3PdWQfPgrkXJcytA=;
        b=YVv6sPWvNOWCYRGCiscZcZ3IB6+BHKCCt05Exg/AGmbPl0Q644+clJHM3xhwMZH3cd
         x1qh3Le8dVgjOeFaAyDvmlJ+QbPcqEtbVd+xlHEDAK2tZW+5eOoLz3TwpM+tgptvn3gh
         I2ucJHq1J1E35Xlth3QHmVUZQjIZfoO9HxV4vZ9Kg0pC1wpnK+eHrTaFixexCntSwgez
         5od/KXjICn3iwqJHXS/aTk5dic3/NtlVWpCOHZKNiaGlTGEy0g0WtwS26IeVSzwFvxFR
         ZCU5BnpJ7x/jd1uE+46TAYXz8AN1OQX/bkyWrYxBhmCex5Ki3j5sx37LZg9r7bHw2qiL
         DfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680891653; x=1683483653;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xCumNX47BfmqMzMTMAwyig6vg1t3PdWQfPgrkXJcytA=;
        b=FWkIkPhrLP1ltiUdAL6nYBCGwrZy5ueSSgaWARwVVfJwuz/oZ7AYvZlgGNHxji1OG1
         2nPhir8/bWYYMMfjLKowj/cRv60YSr44kWIgR/RZfcqEn1xrvhrXFbwNrMKJD/Hrkit+
         iz9SEP/QF6lmXyj+XamwmCtG3QVbrlCkTR2Kt29E6Zcx2CVGp08eQIX9tT3sG8uFL2Un
         Howca7eqZITAcsqAxbYrj9h81JEu/x5PLtUlO51oAxjHu4S/TrkRfl/zWEhrk1YGSxKF
         r6HW1W/C8BMo06EBc1bp4ATApqB7gALJ/J1YoKdZfQgwQqVcFWkTyQVTvTEwNcH6oNX1
         SrmA==
X-Gm-Message-State: AAQBX9eaL2g9GLFreGkmVfneYVVzOoSngXbKGYFGuIBBMAxHETtiDLvK
	2Z0UkUjgJzRDhssdTa3UBZYazlPtVqQ=
X-Google-Smtp-Source: AKy350bLkmhHWFwkGNkDXHzzDM1ExqGpWWLF2bQeS/qzQz7dxHvmrk+8VB0i1WbpSdkGwol37jeZSg==
X-Received: by 2002:ad4:5be9:0:b0:5b4:55d3:90bc with SMTP id k9-20020ad45be9000000b005b455d390bcmr5189035qvc.35.1680891652683;
        Fri, 07 Apr 2023 11:20:52 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-111.dsl.bell.ca. [174.93.2.111])
        by smtp.googlemail.com with ESMTPSA id y79-20020a376452000000b007467a4d8691sm1477245qkb.47.2023.04.07.11.20.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 11:20:52 -0700 (PDT)
Message-ID: <20be146e-025b-f5c2-209f-ba6f6abcf10a@gmail.com>
Date: Fri, 7 Apr 2023 14:20:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPY8uVNRaqfjD=+a4wWfFPTAR5JiKfpkiGpru7aN48gVei=e-A@mail.gmail.com>
 <CAPY8uVMnbo=wQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gmail.com>
 <bda192cb-74f8-da5f-536e-11c287681ea6@gmail.com>
 <CAM4xKrq2Hnqr0U2fZMLZc4Ce+tLYd11zAe1kdX+4QvZimoCxoQ@mail.gmail.com>
 <CAPY8uVMigiysbqc9cBzYyFCh62QAN7ZabKtu3HX6N_rNdpPziQ@mail.gmail.com>
 <CAM4xKrp_K0LKAaEvvOzpdPWneA4Uo7fy3XtK8zjpdRMG56_c2A@mail.gmail.com>
 <CAPY8uVPtzX2BC-9eKtfhUhd52=XvXTSeB+23mgzK_q5tYe+B=w@mail.gmail.com>
 <CAPY8uVOV9h8NWcRUUjn6H=gk_o5b464ADoJmx5TKO17gdU_YJA@mail.gmail.com>
 <CAPY8uVNWKEpkMQg-NrG4BVqnagCJqA4St6LSpS+r99Znh1sV3g@mail.gmail.com>
 <CAPY8uVOJTuSad75yaKTxihmqjX-heE-a2SbwT4DZS2qo0WoYaA@mail.gmail.com>
 <CAPY8uVPPhkz7CcF7V9fu=t6UqhCD8NXfH_C4U_iL-u_ydH9N3g@mail.gmail.com>
 <CAM4xKrqnf63kqYbZXKiE6oK=6MbEZoHM44RmZ9iNS6aJGvG+jg@mail.gmail.com>
 <CAPY8uVMXNwDKGiTAwQ-zs+O-3CXQLFRK07Cm8RCQoyubL9-QBw@mail.gmail.com>
 <CAM4xKroo_Fmf4TybeTBLOs9uki1ncLuyaDpmu0sXhEtL4QGo2Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAM4xKroo_Fmf4TybeTBLOs9uki1ncLuyaDpmu0sXhEtL4QGo2Q@mail.gmail.com>
Message-ID-Hash: IYP3T5SDBIHD2R56Q7QCPXVFB7D26OIM
X-Message-ID-Hash: IYP3T5SDBIHD2R56Q7QCPXVFB7D26OIM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Spurs in UBX-160 Daughterboard with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYP3T5SDBIHD2R56Q7QCPXVFB7D26OIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2341866122008833637=="

This is a multi-part message in MIME format.
--===============2341866122008833637==
Content-Type: multipart/alternative;
 boundary="------------FcybVzMA8mvrtKpdmtoBPqQg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FcybVzMA8mvrtKpdmtoBPqQg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/04/2023 14:12, Michael West wrote:
> Hi Dor,
>
> The UBX is a direct conversion transceiver.=C2=A0 That means that you w=
ill=20
> have DC offset and IQ images.=C2=A0 Running the calibration utilities c=
an=20
> help reduce the amplitude of them and using an LO offset can shift=20
> them away (if your=C2=A0sample rate is 100 Msps or less), but it is up =
to=20
> you as the application developer to figure out how to compensate for=20
> them.=C2=A0 For a sample rate of 200 Msps, the best you can do is run t=
he=20
> calibration utilities to reduce the amplitude.
>
> Regards,
> Michael
I'll point out that in a superhet radio, you still have images--it's=20
just that they're typically "out of band" with respect to your
 =C2=A0 *final filter architecture*.=C2=A0 If your output stage has no fi=
ltering=20
(almost always for a very specific application), then those images
 =C2=A0 will show up in the output, and they'll typically be no better th=
an=20
40-50dB below carrier. =C2=A0 Such is the nature of mixers.

Similarly, superhet mixers have LO leakage.=C2=A0 And again, that LO leak=
age=20
will appear in the output, unless you filter it
 =C2=A0 out, and in radio designed *for a specific application*, the fina=
l=20
stage will have filters to eliminate images and the
 =C2=A0 LO leakage.

In a wide-band application, the LO leakage in a D-C design will=20
typically be very narrow, and constitute a TINY fraction
 =C2=A0 of your overall signal. =C2=A0 It will dehance your SNR only very=
 very=20
tiny amount in typical cases.=C2=A0 In fact, in deployed OFDM
 =C2=A0 systems, they very often don't allocate anything in the middle=20
carrier because so many OFDM systems are based on
 =C2=A0 D-C designs, and there'll be LO leakage right there...


>
> On Fri, Apr 7, 2023 at 4:19=E2=80=AFAM Dor Ratz <dorratz12@gmail.com> w=
rote:
>
>     Hey Michael,
>
>     Just to clarify - the spurs can bee seen in spectrum analyzer, as
>     I have this setup:
>
>     USRP X310 -> spectrum analyzer
>
>     If my *sample rate =3D 200MHz*, what do you recommend?
>
>     Thanks
>     Dor
>
>     =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=92=D7=B3, 4 =D7=91=D7=90=D7=A4=D7=A8=D7=B3 2023 =D7=91-1:03 =D7=9E=D7=90=
=D7=AA =E2=80=AAMichael West=E2=80=AC=E2=80=8F
>     <=E2=80=AAmichael.west@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>         Hi Dor,
>
>         I am glad to hear you had some success.=C2=A0 The integer-N ste=
p
>         size is the dboard_clock_rate, which defaults to 50 MHz.=C2=A0 =
You
>         can change that by setting "dboard_clock_rate=3D<rate>" in the
>         device args. Phase noise will increase as you reduce that
>         rate. But I believe the "spurs" you are seeing when not a
>         multiple of 50 MHz are likely the DC offset image (also known
>         as LO leakage).=C2=A0 You can try using an LO offset to shift t=
he
>         image out of the spectrum.=C2=A0 Just do something like:
>
>         uhd.tune_request_t(target_freq=3D1003e6,rf_freq=3D1050e6,rf_fre=
q_policy=3Duhd.tune_request_t.POLICY_MANUAL,args=3D"mode_n=3Dinteger"))
>
>         Since you are using a 20 Msps sample rate, the rf_freq should
>         be at least 10 MHz away from the target_freq and a multiple of
>         50 MHz.=C2=A0 (The rf_freq is the LO frequency.)
>
>         Regards,
>         MIchael
>
>         On Mon, Mar 27, 2023 at 5:55=E2=80=AFAM Dor Ratz <dorratz12@gma=
il.com>
>         wrote:
>
>             Hey Michael,
>
>             When the target_freq is not integer multiple of 50MHz,=C2=A0
>             then we have spurs in -40dBc in variable offset of
>             1Mhz/2Mhz/10Mhz/20Mhz.
>
>             What you recommend to do?
>
>             Thanks
>             Dor
>
>             =D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=93=D7=B3, 22 =D7=91=D7=9E=D7=A8=D7=A5 2023, 3:10 =D7=90=D7=97=D7=94=D7=B4=
=D7=A6, =D7=9E=D7=90=D7=AA Dor Ratz
>             =E2=80=8F<dorratz12@gmail.com>:
>
>                 Hey Michael,
>
>                 Not sure if you got my question.
>
>                 I'm trying to understand what are the limitations/
>                 disadvantages of integer mode of the PLL as I set.
>
>                 Thanks
>
>                 Dor
>
>
>
>
>                 =D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D=
 =D7=92=D7=B3, 14 =D7=91=D7=9E=D7=A8=D7=A5 2023, 9:32 =D7=9C=D7=A4=D7=A0=D7=
=94=D7=B4=D7=A6, =D7=9E=D7=90=D7=AA Dor Ratz
>                 =E2=80=8F<dorratz12@gmail.com>:
>
>                     Michael ,
>
>                     What are the limitations/ disadvantages of integer
>                     mode of the PLL as I set?
>
>                     Best
>                     Dor
>
>                     =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=92=D7=B3, 14 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-9:26 =D7=
=9E=D7=90=D7=AA =E2=80=AADor
>                     Ratz=E2=80=AC=E2=80=8F <=E2=80=AAdorratz12@gmail.co=
m=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>                         Hey,
>
>                         I've done it and the spur is gone, while the
>                         frequency=C2=A0is still accurate as the fractio=
nal
>                         mode.
>
>                         This is the flowgraph:
>
>                         In center frequency I've written=C2=A0that:
>                         =C2=A0uhd.tune_request(target_freq,
>                         args=3D"mode_n=3Dinteger")
>
>                         image.png
>
>                         image.png
>
>
>                         This is the flowgraph:
>                         image.png
>                         Thanks a lot
>
>                         Dor
>
>                         =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=
=99=D7=95=D7=9D =D7=90=D7=B3, 12 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-23:=
24 =D7=9E=D7=90=D7=AA =E2=80=AADor
>                         Ratz=E2=80=AC=E2=80=8F <=E2=80=AAdorratz12@gmai=
l.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>                             Hey Michael,
>
>                             Thanks a lot.
>
>                             1.Can I just type in UHD USRP Sink block
>                             in RF options in center frequency this line=
?
>
>
>                             uhd.tune_request_t(target_freq
>                             =3D1003e6,=C2=A0args=3D"mode_n=3Dinteger"))
>
>                             2. Or with older Gnuradio versions (tune
>                             request without t):
>
>                             uhd.tune_request(target_freq =3D1003e6,
>                             args=3D"mode_n=3Dinteger"))
>
>
>                             In order to transmit 1003MHz in integer
>                             mode with dsp tuning.
>
>                             Will both work? This is as Marcus
>                             suggested, If I understand correctly.
>
>                             Thanks
>
>                             Dor
>
>                             ---------- Forwarded message ---------
>                             =D7=9E=D7=90=D7=AA: *Michael West* <michael=
.west@ettus.com>
>                             =E2=80=AADate: =D7=99=D7=95=D7=9D =D7=95=D7=
=B3, 10 =D7=91=D7=9E=D7=A8=D7=A5 2023, 10:01 =D7=90=D7=97=D7=94=D7=B4=D7=A6=
=E2=80=AC
>                             Subject: Re: Spurs in UBX-160
>                             Daughterboard with USRP X310
>                             To: Dor Ratz <dorratz12@gmail.com>
>                             Cc: Ettus Research Technical Support
>                             <support@ettus.com>,
>                             <usrp-users@lists.ettus.com>
>
>
>                             Hi Dor,
>
>                             Answers inline...
>
>                             Regards,
>                             Michael
>
>                             On Thu, Mar 9, 2023 at 10:37=E2=80=AFAM Dor=
 Ratz
>                             <dorratz12@gmail.com> wrote:
>
>
>
>                                 Hi Michael and Marcus,
>
>                                 Thank you.
>
>
>                                 _Several questions:_
>
>                                 1. Why does the spur still exist=C2=A0w=
hen
>                                 doing your recommendation? please see
>                                 below the setup, maybe I need to
>                                 change something?
>                                 By the way, all the time(even in
>                                 original fractional mode) the spur
>                                 does not exist in specific
>                                 frequencies=C2=A0such as 1000MHz, 1110M=
Hz,
>                                 1200MHz...I guess=C2=A0that when
>                                 (dboard_clock/target_frequency =3D
>                                 integer)=C2=A0then we are OK.
>
>                                 If you can share your gnuradio
>                                 flowgraph / grc=C2=A0+ py files / spect=
rum
>                                 analyzer pictures that show the signal
>                                 - it would be helpful.
>
>
>                             It looks like the integer-n mode is not
>                             properly configured.=C2=A0 The "mode_n=3Din=
teger"
>                             needs to be part of the tune args and not
>                             the device args.=C2=A0 Try setting the
>                             frequency as Marcus suggested using:
>
>                             my_uhd_block.set_center_frequency(uhd.tune_=
request(target_freq=3D2.4e9,args=3D"mode_n=3Dinteger"))
>
>
>                                 2. When you said about breaking
>                                 coherency between channels - what
>                                 channels did you mean? the 2 different
>                                 TX or Rx channels on 2 different
>                                 UBX-160 daughterboards on the same X310=
?
>                                 If so, in case I'm using only a single
>                                 UBX-160 in the X310, can I ignore this
>                                 issue because it=C2=A0won't exist in my=
 case?
>
>                                 "The int_n_step tune arg will
>                                 explicitly change the step size by
>                                 changing the R divider value, which
>                                 will break phase coherency between
>                                 channels"
>
>
>                             It will break phase coherency=C2=A0between =
any
>                             channels on the same device or across
>                             devices.=C2=A0 If you are using a single
>                             channel or are using multiple channels and
>                             do not require=C2=A0phase coherency, you ca=
n
>                             ignore it.
>
>
>                                 3. Do you still recommend
>                                 putting=C2=A0"dboard_clock_rate=3D20e6"=
 in
>                                 the device arguments parameter when
>                                 transmitting frequencies smaller than
>                                 1GHz as written here
>                                 <https://kb.ettus.com/UBX#Phase_Synchro=
nization>?
>
>
>                             That is required to keep phase
>                             coherency=C2=A0between channels.=C2=A0 If y=
ou are
>                             using a single channel or are using
>                             multiple channels and do not require=C2=A0p=
hase
>                             coherency, you can ignore it.=C2=A0 The def=
ault
>                             reference clock rate of 50 MHz provides
>                             best phase noise performance.
>
>
>
>                                 _The spur still exists as before with
>                                 your proposal- does the=C2=A0setup matc=
h
>                                 your recommendation or should I change
>                                 something??_
>
>                                 Please see gnuradio=C2=A0flowgraph:
>                                 _
>                                 _
>                                 ''mode_n=3Dinteger'' in Device Address
>                                 and Device Arguments_
>                                 _
>                                 center freq =3D 1003e6 [Hz]
>
>                                 DSP tuning policy=C2=A0- didn't touch i=
t so
>                                 I guess it is default =3D POLICY_AUTO.
>                                 dboard_clock_rate =3D didn't touch it s=
o
>                                 I guess it is default=3D50MHz.
>                                 _
>                                 _
>
>                                 image.png
>                                 image.png
>
>                                 image.png
>
>
>
>                                 _This gnuradio flowgraph moves the
>                                 signal to the original frequency of
>                                 the spur(=3Dfrequency offset of 3-6KHz,
>                                 that's bad) but eliminate the original
>                                 spur itself_
>                                 _
>                                 _
>                                 I guess that anyway the=C2=A0frequency
>                                 resolution range is:
>
>                                   * When dboard_clock_rate=3D50MHz ->
>                                     ranges from 50MHz when R divider=3D
>                                     1[-] up to 0.05[MHz] when R
>                                     divider =3D 1000[-]
>                                   * When dboard_clock_rate=3D20MHz
>                                     ->ranges from 20MHz when R
>                                     divider=3D 1[-] up to 0.02[MHz] whe=
n
>                                     R divider =3D 1000[-]
>
>                                 _
>                                 _
>                                 =C2=A0center freq :
>                                 uhd.tune_request(target_freq,
>                                 dsp_freq=3D0,
>                                 dsp_freq_policy=3Duhd.tune_request.POLI=
CY_MANUAL)_
>                                 _
>
>                                 ''mode_n=3Dinteger'' in Device Address
>                                 and Device Arguments_
>                                 _
>
>                                 dboard_clock_rate =3D didn't touch it s=
o
>                                 I guess it is default=3D50MHz.
>
>
>                                 image.png
>                                 image.png
>                                 _
>                                 _
>                                 image.png
>                                 _
>                                 _
>
>
>                                 Thanks
>                                 Dor
>                                 ---------- Forwarded message ---------
>                                 =D7=9E=D7=90=D7=AA: *Michael West*
>                                 <michael.west@ettus.com>
>                                 =E2=80=AADate: =D7=99=D7=95=D7=9D =D7=92=
=D7=B3, 7 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-4:22=E2=80=AC
>                                 Subject: Re: Spurs in UBX-160
>                                 Daughterboard with USRP X310
>                                 To: Marcus D. Leech
>                                 <patchvonbraun@gmail.com>
>                                 Cc: Dor Ratz <dorratz12@gmail.com>,
>                                 Marcus M=C3=BCller
>                                 <marcus.mueller@ettus.com>,
>                                 <mmueller@gnuradio.org>,
>                                 usrp-users@lists.ettus.com
>                                 <usrp-users@lists.ettus.com>, Eduard
>                                 Sivolenko <eduard.sivolenko@ni.com>,
>                                 <derek.mckay@utu.fi>, Michael Dickens
>                                 <michael.dickens@ettus.com>,
>                                 <claudio.franchini@tlrnet.eu>
>
>
>                                 Hi Dor,
>
>                                 There are 2 arguments that can control
>                                 the integer-N step size:=C2=A0 the
>                                 int_n_step tune arg and the
>                                 dboard_clock_rate device arg. The
>                                 int_n_step tune arg will explicitly
>                                 change the step size by changing the R
>                                 divider value, which will break phase
>                                 coherency between channels.=C2=A0 The
>                                 'dboard_clock_rate' value in the
>                                 device args controls the reference
>                                 clock rate, which will keep the R
>                                 divider set to 1 and support phase
>                                 coherency between channels. Both will
>                                 change the PFD frequency for the PLL.=C2=
=A0
>                                 The UBX was designed for a PFD
>                                 frequency of 50 MHz, which is why 50
>                                 MHz is the default reference=C2=A0clock
>                                 rate and the default R value is 1.
>                                 Reducing the PFD frequency will result
>                                 in more phase noise.=C2=A0 My
>                                 recommendation is to set the
>                                 'mode_n=3Dinteger' in the tune args, le=
t
>                                 the DSP tuning take care of the offset
>                                 by leaving the DSP tuning policy to
>                                 the default (POLICY_AUTO), and use the
>                                 highest dboard_clock_rate possible (up
>                                 to 50 MHz). The highest
>                                 'dboard_clock_rate' can be achieved
>                                 based on the required bandwidth of the
>                                 application by using the formula:
>
>                                 dbaord_clock_rate =3D (160 MHz -
>                                 bandwidth) / 2
>
>                                 I hope this helps.
>
>                                 Best regards,
>                                 Michael E. West
>
>                                 On Mon, Mar 6, 2023 at 3:07=E2=80=AFPM =
Marcus
>                                 D. Leech <patchvonbraun@gmail.com> wrot=
e:
>
>                                     On 06/03/2023 17:13, Dor Ratz wrote=
:
>>                                     Hey,
>>
>>                                     Thanks a lot.
>>
>>                                     _Several questions after thinking
>>                                     about it:_
>>
>>                                     1. Do you mean R&D of Ettus or
>>                                     GNURadio? Can you address me to
>>                                     the relevant email address?
>                                     This thread really belongs on the
>                                     usrp-users mailing list now,
>                                     rather than discuss-gnuradio, i
>                                     have copied usrp-users, and
>                                     =C2=A0 removed discuss-gnuradio.
>
>
>
>
>>
>>                                     2. Let me see if I get it right
>>                                     for USRP X310 with UBX-160:
>>
>>                                       * Motherboard clock =3D MCR
>>                                         =3Dmaster_clock_rate =3D main
>>                                         clock rate =3D default value i=
s
>>                                         200MHz. The 10MHz REFCLK is
>>                                         used to set it.
>>                                       * Daughterboard Clock Rate in
>>                                         Hz =3D=C2=A0dboard_clock_rate =
=3D
>>                                         default value is 50MHz, need
>>                                         to change it to 20MHz for
>>                                         center frequencies=C2=A0under =
1GHz
>>                                         do decrease spurs.
>>                                         This is actually the clock
>>                                         that the motherboard injects
>>                                         into the daughterboard , i.e
>>                                         it is the reference=C2=A0clock=
 of
>>                                         the MAX2871 PLL which is on
>>                                         the daughterboard.
>>                                       * According to this link
>>                                         <http://www.radio-science.net/=
2017/12/adventures-in-usrp-tuning.html>,
>>                                         if I
>>                                         set=C2=A0"mode_n=3Dinteger","i=
nt_n_step=3D100e3",
>>                                         in Device Address parameter
>>                                         in USRP Sink block, then the
>>                                         frequency resolution on the
>>                                         PLL is:
>>                                         frequency resolution [Hz] =3D
>>                                         int_n_step [Hz] =3D
>>                                         dboard_clock_rate [Hz] / (R
>>                                         divider=C2=A0 [-])
>>
>>                                         For example:
>>                                         100e3 [Hz] =3D 50e6 [Hz] / 500
>>
>>                                         So ->*the
>>                                         frequency=C2=A0resolution of t=
he
>>                                         PLL is set by the
>>                                         "int_n_step" parameter* -> it
>>                                         calculates=C2=A0the R divider =
[-]
>>                                         in the PLL relating to
>>                                         dboard_clock_rate and desired
>>                                         int_n__step.
>>                                         I guess that the result must
>>                                         be in the range of allowed
>>                                         PLL's R divider values from 1
>>                                         to 1023.
>>
>>                                     3.=C2=A0 =C2=A0Do I must set the
>>                                     "int_n_step" parameter as follows?
>>
>>                                     4. Does the frequency resolution
>>                                     range from 50MHz when R divider=3D
>>                                     1[-] up to 0.05[MHz] when R
>>                                     divider =3D 1000[-] ?
>>
>>                                     Referring to this sentence in
>>                                     max2871 PLL datasheet
>>                                     <https://www.analog.com/media/en/t=
echnical-documentation/data-sheets/max2871.pdf>:
>>                                     ""The minimum R counter divide
>>                                     ratio is 1, and the maximum
>>                                     divide ratio is 1023"
>>
>>
>>                                     5. Where can I find the relevant
>>                                     source code? I've looked here
>>                                     <https://github.com/EttusResearch/=
uhd>=C2=A0but
>>                                     I'm not sure where the
>>                                     daughterboard code/relevant code i=
s.
>>
>>                                     Thanks
>>                                     Dor
>>
>>
>>                                     =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=
=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=A5 202=
3
>>                                     =D7=91-19:10 =D7=9E=D7=90=D7=AA =E2=
=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F
>>                                     <=E2=80=AApatchvonbraun@gmail.com=E2=
=80=AC=E2=80=8F>:=E2=80=AC
>>
>>                                         On 06/03/2023 08:54, Dor Ratz
>>                                         wrote:
>>>                                         Hey Marcus,
>>>
>>>                                         Thanks a lot.
>>>
>>>                                         I'm=C2=A0using external 10 MH=
z
>>>                                         reference clock (REFCLK)
>>>                                         with 1e-12[Hz] frequency
>>>                                         resolution -> it feeds my
>>>                                         PLL in the UBX-160
>>>                                         daughterboard in the X310 USR=
P.
>>                                         The REFCLCK input to the X310
>>                                         is used to control the
>>                                         master-clock(s) on the
>>                                         motherboard, which, in turn
>>                                         produce clocks for
>>                                         =C2=A0 the daughtercards--but =
the
>>                                         daughtercards never see your
>>                                         external clock directly.
>>>
>>>                                         So, *when defining
>>>                                         "mode_n=3Dinteger"* in the
>>>                                         Device Address parameter of
>>>                                         the UHD: USRP Sink block in
>>>                                         GNURadio to set PLL in
>>>                                         integer-N mode, *what is
>>>                                         exactly R-DIVIDER=3D referenc=
e
>>>                                         divider of the PLL*?
>>>
>>>                                         I've looked in the PLL
>>>                                         (max2871) datasheet:
>>>                                         https://www.analog.com/media/=
en/technical-documentation/data-sheets/max2871.pdf
>>>
>>>                                         According to it:
>>>                                         "The minimum R counter
>>>                                         divide ratio is 1, and the
>>>                                         maximum divide ratio is 1023"
>>>
>>>                                         I understand that if for
>>>                                         example, the R
>>>                                         counter=3D(R-DIVIDER)=3D1000 =
->
>>>                                         the frequency resolution is
>>>                                         10MHz/1000 =3D 0.01MHz=3D 10K=
Hz,
>>>                                         correct?
>>>
>>>                                         But I don't know what is the
>>>                                         R-DIVIDER chosen=C2=A0in the =
PLL
>>>                                         with the settings in gnuradio=
.
>>>
>>>                                         Thanks,
>>>
>>>                                         Dor
>>>
>>                                         You'd have to go looking
>>                                         through the source code.
>>                                         Unless someone from R&D
>>                                         happens to know off the top
>>                                         of their heads.
>>                                         =C2=A0 10 years ago, I kept al=
l of
>>                                         this in my head--when there
>>                                         were FAR fewer products to
>>                                         keep track of and the
>>                                         codebase was
>>                                         =C2=A0 more modest.
>>
>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>                                         =E2=80=AB=D7=91=D7=AA=D7=90=D7=
=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=94=D7=B3, 2 =D7=91=D7=9E=D7=A8=D7=A5=
 2023
>>>                                         =D7=91-21:55 =D7=9E=D7=90=D7=AA=
 =E2=80=AAMarcus D.
>>>                                         Leech=E2=80=AC=E2=80=8F
>>>                                         <=E2=80=AApatchvonbraun@gmail=
.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>
>>>                                             On 02/03/2023 13:09, Dor
>>>                                             Ratz wrote:
>>>>                                             Hey,
>>>>
>>>>                                             Do you know how=C2=A0to
>>>>                                             assess the RF PLL
>>>>                                             resolution in integer-N
>>>>                                             mode?
>>>>
>>>>                                             I've looked in ANALOG
>>>>                                             max2871 PLL datasheet -
>>>>                                             not sure I found the
>>>>                                             answer there.
>>>>                                             https://www.analog.com/m=
edia/en/technical-documentation/data-sheets/max2871.pdf
>>>>
>>>>                                             The Ettus team is CC
>>>>                                             here too - it will be
>>>>                                             helpful to know what
>>>>                                             you suggest.
>>>>
>>>>                                             Thanks,
>>>>                                             Dor
>>>                                             It will depend on the
>>>                                             REFCLK that is being
>>>                                             used by that board (I do
>>>                                             not happen to know off
>>>                                             the top of my head), and =
by
>>>                                             =C2=A0 whatever flexibili=
ty
>>>                                             in reference divider the
>>>                                             PLL has.
>>>
>>>                                             In an Integer-N PLL (and
>>>                                             you can spend quite a
>>>                                             bit of time learning how
>>>                                             PLL synthesizers work
>>>                                             online), the "step size" =
is
>>>                                             =C2=A0 dependent on the
>>>                                             REFCLK, which itself may
>>>                                             have a divider on it.=C2=A0
>>>                                             So, let's say your
>>>                                             REFCLK is 10MHz and
>>>                                             there's a divider
>>>                                             =C2=A0 that can divide th=
e
>>>                                             reference clock by up to
>>>                                             10000, then your minimum
>>>                                             step size is 1kHz.=C2=A0=C2=
=A0
>>>                                             This is in tension with t=
he
>>>                                             =C2=A0 fact that having a
>>>                                             high ratio between the
>>>                                             desired frequency and
>>>                                             the reference frequency
>>>                                             tends to create
>>>                                             signal-quality issues,
>>>                                             =C2=A0 like, as I recall,
>>>                                             phase noise.=C2=A0 But I'=
d
>>>                                             research the datasheet
>>>                                             and the overall concept
>>>                                             of PLL synthesis.
>>>
>>>                                             My recollection on the
>>>                                             X310 is that the
>>>                                             reference-clock
>>>                                             frequency is 100MHz, but
>>>                                             that's just a hazy memory=
.
>>>
>>>
>>>
>>>>
>>>>
>>>>                                             =E2=80=AB=D7=91=D7=AA=D7=
=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=
=D7=A5
>>>>                                             2023 =D7=91-21:10 =D7=9E=
=D7=90=D7=AA
>>>>                                             =E2=80=AAMarcus D. Leech=
=E2=80=AC=E2=80=8F
>>>>                                             <=E2=80=AApatchvonbraun@=
gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>
>>>>                                                 On 01/03/2023
>>>>                                                 13:14, Dor Ratz wrot=
e:
>>>>>                                                 Hey Marcus, How
>>>>>                                                 are you?
>>>>>
>>>>>                                                 Not sure if you
>>>>>                                                 got my email.
>>>>>
>>>>>                                                 Do you know anyway
>>>>>                                                 I can change
>>>>>                                                 transmitted
>>>>>                                                 frequency using
>>>>>                                                 PMT message when
>>>>>                                                 doing your solution=
?
>>>>>
>>>>>
>>>>>                                                 In addition,
>>>>>                                                 something that
>>>>>                                                 seemed to help me:
>>>>>
>>>>>                                                 I used this:
>>>>>
>>>>>                                                 https://lists.gnu.o=
rg/archive/html/discuss-gnuradio/2011-09/msg00309.html
>>>>>
>>>>>
>>>>>                                                 In the USRP Sinc
>>>>>                                                 block, in center
>>>>>                                                 frequency
>>>>>                                                 parameter, I've
>>>>>                                                 put this:
>>>>>
>>>>>                                                 uhd.tune_request(ta=
rget_freq=3D1003e6, dsp_freq=3D0,
>>>>>                                                 dsp_freq_policy=3Du=
hd.tune_request.POLICY_MANUAL)
>>>>>
>>>>>                                                 With this, the
>>>>>                                                 transmitted
>>>>>                                                 1003MHz signal is
>>>>>                                                 cleaner and the
>>>>>                                                 spur is now
>>>>>                                                 further away at
>>>>>                                                 16KHz offset with
>>>>>                                                 amplitude of 60dBc
>>>>>                                                 below the signal.
>>>>>
>>>>>                                                 This alone cleans
>>>>>                                                 the spectrum!
>>>>>
>>>>>                                                 In addition, I
>>>>>                                                 type
>>>>>                                                 "mode_n=3Dinteger"
>>>>>                                                 in the
>>>>>                                                 Device Address
>>>>>                                                 parameter of the
>>>>>                                                 UHD: USRP Sink
>>>>>                                                 block, but it
>>>>>                                                 doesn't seem to
>>>>>                                                 affect. The tuning
>>>>>                                                 without DSP
>>>>>                                                 correction in the
>>>>>                                                 FPGA seems to just
>>>>>                                                 be sufficient to
>>>>>                                                 clean the spectrum.
>>>>>
>>>>>                                                 Why is that? Do
>>>>>                                                 you recommend
>>>>>                                                 using something els=
e?
>>>>>
>>>>>                                                 Thanks
>>>>>
>>>>>                                                 Dor
>>>>                                                 Note that only
>>>>                                                 works if the
>>>>                                                 underlying RF PLL
>>>>                                                 has enough
>>>>                                                 "resolution" to
>>>>                                                 make that
>>>>                                                 work--particularly
>>>>                                                 in integer-N mode.
>>>>
>>>>                                                 I'm surprised that
>>>>                                                 the DDC/DUC have
>>>>                                                 such significant
>>>>                                                 "close in"
>>>>                                                 spurs.=C2=A0=C2=A0=C2=
=A0 I don't
>>>>                                                 know if there's
>>>>                                                 anyone from the R&D
>>>>                                                 team
>>>>                                                 =C2=A0 on here who c=
an
>>>>                                                 authoritatively
>>>>                                                 comment, but this
>>>>                                                 is a bit of a surpri=
se.
>>>>
>>>>
>>>>>
>>>>>
>>>>>
>>>>>                                                 =E2=80=AB=D7=91=D7=AA=
=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=D7=B3, 27
>>>>>                                                 =D7=91=D7=A4=D7=91=D7=
=A8=D7=B3 2023 =D7=91-15:08
>>>>>                                                 =D7=9E=D7=90=D7=AA =
=E2=80=AADor Ratz=E2=80=AC=E2=80=8F
>>>>>                                                 <=E2=80=AAdorratz12=
@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>
>>>>>                                                     Hi Marcus,
>>>>>
>>>>>                                                     Can I pass the
>>>>>                                                     desired center
>>>>>                                                     frequency with
>>>>>                                                     a PMT message?
>>>>>                                                     I want to
>>>>>                                                     dynamically
>>>>>                                                     change the
>>>>>                                                     transmitted
>>>>>                                                     center
>>>>>                                                     frequency of
>>>>>                                                     UHD: USRP Sink
>>>>>                                                     block.
>>>>>
>>>>>                                                     So static
>>>>>                                                     frequency=C2=A0=
in
>>>>>                                                     the block is
>>>>>                                                     not sufficient.
>>>>>
>>>>>                                                     Thanks
>>>>>                                                     Dor
>>>>>
>>>>>                                                     =E2=80=AB=D7=91=
=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
>>>>>                                                     =D7=91=D7=B3, 2=
7 =D7=91=D7=A4=D7=91=D7=A8=D7=B3
>>>>>                                                     2023 =D7=91-13:=
44
>>>>>                                                     =D7=9E=D7=90=D7=
=AA =E2=80=AAMarcus
>>>>>                                                     M=C3=BCller=E2=80=
=AC=E2=80=8F
>>>>>                                                     <=E2=80=AAmarcu=
s.mueller@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>
>>>>>                                                         Hi Dor,
>>>>>
>>>>>                                                         >=C2=A0 1. =
How
>>>>>                                                         to change
>>>>>                                                         the to
>>>>>                                                         integer_n
>>>>>                                                         tuning?
>>>>>                                                         Should I
>>>>>                                                         just type
>>>>>                                                         "mode_n=3Di=
nteger"
>>>>>                                                         in the
>>>>>                                                         > =C2=A0Dev=
ice
>>>>>                                                         Address
>>>>>                                                         parameter
>>>>>                                                         of the
>>>>>                                                         UHD: USRP
>>>>>                                                         Sink block
>>>>>                                                         in the grc?
>>>>>
>>>>>                                                         yes. Or,
>>>>>                                                         better,
>>>>>                                                         instead of
>>>>>                                                         just
>>>>>                                                         tuning to
>>>>>                                                         the target
>>>>>                                                         frequency,
>>>>>                                                         you can
>>>>>                                                         pass a
>>>>>                                                         uhd.tune_re=
quest_t
>>>>>                                                         to
>>>>>                                                         uhd_usrp_{s=
ink,source}.set_center_frequency,
>>>>>                                                         like this:
>>>>>
>>>>>                                                         my_uhd_bloc=
k.set_center_frequency(uhd.tune_request_t(
>>>>>                                                         =C2=A0targe=
t_freq
>>>>>                                                         =3D 2.4e9,
>>>>>                                                         =C2=A0args=3D=
"mode_n=3Dinteger"))
>>>>>
>>>>>                                                         (you can
>>>>>                                                         also use a
>>>>>                                                         uhd.tune_re=
quest_t
>>>>>                                                         in the RF
>>>>>                                                         frequency
>>>>>                                                         fields of
>>>>>                                                         the GRC blo=
ck)
>>>>>
>>>>>                                                         Note that
>>>>>                                                         you're
>>>>>                                                         probably
>>>>>                                                         best off
>>>>>                                                         using
>>>>>                                                         tune_reques=
t_t
>>>>>                                                         anyway, as
>>>>>                                                         it allows
>>>>>                                                         you to tune
>>>>>                                                         your LO
>>>>>                                                         far away
>>>>>                                                         from your
>>>>>                                                         band of
>>>>>                                                         interest,
>>>>>                                                         given the
>>>>>                                                         analog
>>>>>                                                         bandwidth
>>>>>                                                         allows for
>>>>>                                                         that,
>>>>>                                                         using
>>>>>                                                         `target_fre=
q=3D`
>>>>>                                                         and
>>>>>                                                         `rf_freq`
>>>>>                                                         or `dsp_fre=
q`.
>>>>>
>>>>>                                                         For more
>>>>>                                                         information
>>>>>                                                         on tuning,
>>>>>                                                         see the
>>>>>                                                         UHD manual =
[1]
>>>>>
>>>>>                                                         >=C2=A0 2. =
How
>>>>>                                                         to know
>>>>>                                                         for sure
>>>>>                                                         what the
>>>>>                                                         mode(intege=
r
>>>>>                                                         of
>>>>>                                                         fractional)
>>>>>                                                         of the NCO
>>>>>                                                         is? Can I
>>>>>                                                         print
>>>>>                                                         >=C2=A0 =C2=
=A0 =C2=A0its
>>>>>                                                         status/get
>>>>>                                                         it somehow?
>>>>>
>>>>>                                                         looking at
>>>>>                                                         the UHD
>>>>>                                                         source
>>>>>                                                         code: the
>>>>>                                                         routines
>>>>>                                                         responsible
>>>>>                                                         for tuning
>>>>>                                                         just
>>>>>                                                         themselves
>>>>>                                                         check
>>>>>                                                         for
>>>>>                                                         "mode_n"
>>>>>                                                         being set
>>>>>                                                         to
>>>>>                                                         "integer"
>>>>>                                                         in the
>>>>>                                                         device or
>>>>>                                                         tune
>>>>>                                                         request
>>>>>                                                         arguments.
>>>>>
>>>>>                                                         Best regard=
s,
>>>>>                                                         Marcus
>>>>>
>>>>>                                                         [1]
>>>>>                                                         https://fil=
es.ettus.com/manual/page_general.html#general_tuning
>>>>>
>>>>
>>>
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------FcybVzMA8mvrtKpdmtoBPqQg
Content-Type: multipart/related;
 boundary="------------pw0jGYTfq3uRW00Vzy1EWMph"

--------------pw0jGYTfq3uRW00Vzy1EWMph
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/04/2023 14:12, Michael West
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAM4xKroo_Fmf4TybeTBLOs9uki1ncLuyaDpmu0sXhEtL4QGo2Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Dor,
        <div><br>
        </div>
        <div>The UBX is a direct conversion transceiver.=C2=A0 That means
          that you will have DC offset and IQ images.=C2=A0 Running the
          calibration utilities can help reduce the amplitude of them
          and using an LO offset can shift them away (if your=C2=A0sample
          rate is 100 Msps or less), but it is up to you as the
          application developer to figure out how to compensate for
          them.=C2=A0 For a sample rate of 200 Msps, the best you can do =
is
          run the calibration utilities to reduce the amplitude.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Michael</div>
      </div>
    </blockquote>
    I'll point out that in a superhet radio, you still have images--it's
    just that they're typically "out of band" with respect to your<br>
    =C2=A0 *final filter architecture*.=C2=A0 If your output stage has no
    filtering (almost always for a very specific application), then
    those images<br>
    =C2=A0 will show up in the output, and they'll typically be no better
    than 40-50dB below carrier. =C2=A0 Such is the nature of mixers.<br>
    <br>
    Similarly, superhet mixers have LO leakage.=C2=A0 And again, that LO
    leakage will appear in the output, unless you filter it<br>
    =C2=A0 out, and in radio designed *for a specific application*, the f=
inal
    stage will have filters to eliminate images and the<br>
    =C2=A0 LO leakage.<br>
    <br>
    In a wide-band application, the LO leakage in a D-C design will
    typically be very narrow, and constitute a TINY fraction<br>
    =C2=A0 of your overall signal. =C2=A0 It will dehance your SNR only v=
ery very
    tiny amount in typical cases.=C2=A0 In fact, in deployed OFDM<br>
    =C2=A0 systems, they very often don't allocate anything in the middle
    carrier because so many OFDM systems are based on<br>
    =C2=A0 D-C designs, and there'll be LO leakage right there...<br>
    <br>
    =C2=A0=C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAM4xKroo_Fmf4TybeTBLOs9uki1ncLuyaDpmu0sXhEtL4QGo2Q@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 7, 2023 at 4:19=
=E2=80=AFAM
          Dor Ratz &lt;<a href=3D"mailto:dorratz12@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">dorr=
atz12@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"rtl">
            <div dir=3D"ltr">Hey Michael,</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">Just to clarify - the spurs can bee seen in
              spectrum analyzer, as I have this setup:</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">USRP X310 -&gt; spectrum analyzer</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">If my <b>sample rate =3D 200MHz</b>, what do
              you recommend?=C2=A0</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">Thanks</div>
            <div dir=3D"ltr">Dor</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=
=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=92=D7=B3, 4 =D7=91=D7=90=D7=A4=
=D7=A8=D7=B3
              2023 =D7=91-1:03 =D7=9E=D7=90=D7=AA =E2=80=AAMichael West=E2=
=80=AC=E2=80=8F &lt;=E2=80=AA<a
                href=3D"mailto:michael.west@ettus.com" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
michael.west@ettus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">Hi Dor,
                <div><br>
                </div>
                <div>I am glad to hear you had some success.=C2=A0 The
                  integer-N step size is the dboard_clock_rate, which
                  defaults to 50 MHz.=C2=A0 You can change that by settin=
g
                  "dboard_clock_rate=3D&lt;rate&gt;" in the device args.=C2=
=A0
                  Phase noise will increase as you reduce that rate.=C2=A0
                  But I believe the "spurs" you are seeing when not a
                  multiple of 50 MHz are likely the DC offset image
                  (also known as LO leakage).=C2=A0 You can try using an =
LO
                  offset to shift the image out of the spectrum.=C2=A0 Ju=
st
                  do something like:</div>
                <div><br>
                </div>
                <div><span style=3D"font-size:12.8px">uhd.tune_request_t(=
</span><span
                    style=3D"font-size:12.8px">target_freq=3D1003e6,</spa=
n><span
                    style=3D"font-size:12.8px">rf_freq=3D1050e6,rf_freq_p=
olicy=3Duhd.tune_request_t.POLICY_MANUAL,args=3D"mode_n=3Dinteger"))</spa=
n><br>
                </div>
                <div><span style=3D"font-size:12.8px"><br>
                  </span></div>
                <div><span style=3D"font-size:12.8px">Since you are using
                    a 20 Msps sample rate, the rf_freq should be at
                    least 10 MHz away from the target_freq and a
                    multiple of 50 MHz.=C2=A0 (The rf_freq is the LO
                    frequency.)</span></div>
                <div><br>
                </div>
                <div>Regards,</div>
                <div>MIchael</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 27, 202=
3
                  at 5:55=E2=80=AFAM Dor Ratz &lt;<a
                    href=3D"mailto:dorratz12@gmail.com" target=3D"_blank"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">dorratz12@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"auto">Hey Michael,
                    <div dir=3D"auto"><br>
                    </div>
                    <div dir=3D"auto">When the target_freq is not integer
                      multiple of 50MHz,=C2=A0 then we have spurs in -40d=
Bc
                      in variable offset of 1Mhz/2Mhz/10Mhz/20Mhz.</div>
                    <div dir=3D"auto"><br>
                    </div>
                    <div dir=3D"auto">What you recommend to do?</div>
                    <div dir=3D"auto"><br>
                    </div>
                    <div dir=3D"auto">Thanks</div>
                    <div dir=3D"auto">Dor=C2=A0</div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">=D7=91=D7=AA=D7=
=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 22
                      =D7=91=D7=9E=D7=A8=D7=A5 2023, 3:10 =D7=90=D7=97=D7=
=94=D7=B4=D7=A6, =D7=9E=D7=90=D7=AA Dor Ratz =E2=80=8F&lt;<a
                        href=3D"mailto:dorratz12@gmail.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">dorratz12@gmail.c=
om</a>&gt;:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"auto">
                        <div>Hey Michael,=C2=A0</div>
                        <div dir=3D"auto"><br>
                        </div>
                        <div dir=3D"auto">Not sure if you got my question=
.</div>
                        <div dir=3D"auto"><br>
                        </div>
                        <div dir=3D"auto">I'm trying to understand what
                          are the limitations/ disadvantages of integer
                          mode of the PLL as I set.</div>
                        <div dir=3D"auto"><br>
                        </div>
                        <div dir=3D"auto">Thanks</div>
                        <div dir=3D"auto"><br>
                        </div>
                        <div dir=3D"auto">Dor=C2=A0<br>
                          <div dir=3D"auto"><br>
                          </div>
                          <div dir=3D"auto"><br>
                          </div>
                          <br>
                          <br>
                          <div class=3D"gmail_quote" dir=3D"auto">
                            <div dir=3D"ltr" class=3D"gmail_attr">=D7=91=D7=
=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                              =D7=92=D7=B3, 14 =D7=91=D7=9E=D7=A8=D7=A5 2=
023, 9:32 =D7=9C=D7=A4=D7=A0=D7=94=D7=B4=D7=A6, =D7=9E=D7=90=D7=AA Dor
                              Ratz =E2=80=8F&lt;<a
                                href=3D"mailto:dorratz12@gmail.com"
                                rel=3D"noreferrer" target=3D"_blank"
                                moz-do-not-send=3D"true"
                                class=3D"moz-txt-link-freetext">dorratz12=
@gmail.com</a>&gt;:<br>
                            </div>
                            <blockquote class=3D"gmail_quote"
                              style=3D"margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div dir=3D"rtl">
                                <div dir=3D"ltr">Michael ,</div>
                                <div dir=3D"ltr"><br>
                                </div>
                                <div dir=3D"ltr">What are the limitations=
/
                                  disadvantages of integer mode of the
                                  PLL as I set?</div>
                                <div dir=3D"ltr"><br>
                                </div>
                                <div dir=3D"ltr">Best</div>
                                <div dir=3D"ltr">Dor</div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"rtl" class=3D"gmail_attr">=E2=
=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A
                                  =D7=99=D7=95=D7=9D =D7=92=D7=B3, 14 =D7=
=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-9:26 =D7=9E=D7=90=D7=AA =E2=80=AADor
                                  Ratz=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a
                                    href=3D"mailto:dorratz12@gmail.com"
                                    rel=3D"noreferrer noreferrer"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">dorra=
tz12@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div dir=3D"rtl">
                                    <div dir=3D"rtl">
                                      <div dir=3D"ltr">Hey,=C2=A0</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">I've done it and
                                        the spur is gone, while the
                                        frequency=C2=A0is still accurate =
as
                                        the fractional mode.</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">This is the
                                        flowgraph:</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">In center frequenc=
y
                                        I've written=C2=A0that:</div>
                                      <div dir=3D"ltr">=C2=A0uhd.tune_req=
uest(target_freq,
                                        args=3D"mode_n=3Dinteger")<br>
                                      </div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr"><img
                                          src=3D"cid:part1.IM7X1sH8.tZX4w=
CxD@gmail.com"
                                          alt=3D"image.png" class=3D""
                                          width=3D"562" height=3D"507"><b=
r>
                                      </div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr"><img
                                          src=3D"cid:part2.4O905s0k.5lmuZ=
G62@gmail.com"
                                          alt=3D"image.png" class=3D""
                                          width=3D"562" height=3D"493"><b=
r>
                                      </div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">This is the
                                        flowgraph:</div>
                                      <div dir=3D"ltr"><img
                                          src=3D"cid:part3.bdSHgxaI.1sdNU=
AbV@gmail.com"
                                          alt=3D"image.png" class=3D""
                                          width=3D"562" height=3D"330"><b=
r>
                                      </div>
                                      <div dir=3D"ltr">Thanks a lot</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Dor</div>
                                    </div>
                                    <br>
                                    <div class=3D"gmail_quote">
                                      <div dir=3D"rtl" class=3D"gmail_att=
r">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A
                                        =D7=99=D7=95=D7=9D =D7=90=D7=B3, =
12 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-23:24 =D7=9E=D7=90=D7=AA
                                        =E2=80=AADor Ratz=E2=80=AC=E2=80=8F=
 &lt;=E2=80=AA<a
                                          href=3D"mailto:dorratz12@gmail.=
com"
                                          rel=3D"noreferrer noreferrer"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>dorratz12@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote"
                                        style=3D"margin:0px 0px 0px
                                        0.8ex;border-left:1px solid
                                        rgb(204,204,204);padding-left:1ex=
">
                                        <div dir=3D"auto">
                                          <div>Hey Michael,
                                            <div dir=3D"auto"><br>
                                            </div>
                                            <div dir=3D"auto">Thanks a
                                              lot.</div>
                                            <div dir=3D"auto"><br>
                                            </div>
                                            <div dir=3D"auto">1.Can I jus=
t
                                              type in UHD USRP Sink
                                              block in RF options in
                                              center frequency this
                                              line?</div>
                                            <div dir=3D"auto"><br>
                                            </div>
                                            <div dir=3D"auto"><br>
                                            </div>
                                            <span
                                              style=3D"font-size:12.8px">=
uhd.tune_request_t(</span><span
                                              style=3D"font-size:12.8px">=
target_freq
                                              =3D1003e6,</span><span
                                              style=3D"font-size:12.8px">=
=C2=A0args=3D"mode_n=3Dinteger"))</span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
2.
                                              Or with older Gnuradio
                                              versions (tune request
                                              without t):</span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
uhd.tune_request(target_freq
                                              =3D1003e6,
                                              args=3D"mode_n=3Dinteger"))=
</span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
In
                                              order to transmit 1003MHz
                                              in integer mode with dsp
                                              tuning.</span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
Will
                                              both work? This is as
                                              Marcus suggested, If I
                                              understand correctly.</span=
></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
Thanks</span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
<br>
                                            </span></div>
                                          <div dir=3D"auto"><span
                                              style=3D"font-size:12.8px">=
Dor=C2=A0<br>
                                            </span><br>
                                            <div class=3D"gmail_quote"
                                              dir=3D"auto">
                                              <div dir=3D"ltr"
                                                class=3D"gmail_attr">----=
------
                                                Forwarded message
                                                ---------<br>
                                                =D7=9E=D7=90=D7=AA: <stro=
ng
                                                  class=3D"gmail_senderna=
me"
                                                  dir=3D"auto">Michael
                                                  West</strong> <span
                                                  dir=3D"auto">&lt;<a
                                                    href=3D"mailto:michae=
l.west@ettus.com"
                                                    rel=3D"noreferrer
                                                    noreferrer
                                                    noreferrer"
                                                    target=3D"_blank"
                                                    moz-do-not-send=3D"tr=
ue"
class=3D"moz-txt-link-freetext">michael.west@ettus.com</a>&gt;</span><br>
                                                =E2=80=AADate: =D7=99=D7=95=
=D7=9D =D7=95=D7=B3, 10 =D7=91=D7=9E=D7=A8=D7=A5
                                                2023, 10:01 =D7=90=D7=97=D7=
=94=D7=B4=D7=A6=E2=80=AC<br>
                                                Subject: Re: Spurs in
                                                UBX-160 Daughterboard
                                                with USRP X310<br>
                                                To: Dor Ratz &lt;<a
                                                  href=3D"mailto:dorratz1=
2@gmail.com"
                                                  rel=3D"noreferrer
                                                  noreferrer noreferrer"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
"
class=3D"moz-txt-link-freetext">dorratz12@gmail.com</a>&gt;<br>
                                                Cc: Ettus Research
                                                Technical Support &lt;<a
href=3D"mailto:support@ettus.com" rel=3D"noreferrer noreferrer noreferrer=
"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
"
class=3D"moz-txt-link-freetext">support@ettus.com</a>&gt;, &lt;<a
                                                  href=3D"mailto:usrp-use=
rs@lists.ettus.com"
                                                  rel=3D"noreferrer
                                                  noreferrer noreferrer"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
"
class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a>&gt;<br>
                                              </div>
                                              <br>
                                              <br>
                                              <div dir=3D"ltr">
                                                <div>Hi Dor,</div>
                                                <div><br>
                                                </div>
                                                <div>Answers inline...</d=
iv>
                                                <div><br>
                                                </div>
                                                <div>Regards,</div>
                                                <div>Michael</div>
                                                <br>
                                                <div class=3D"gmail_quote=
">
                                                  <div dir=3D"ltr"
                                                    class=3D"gmail_attr">=
On
                                                    Thu, Mar 9, 2023 at
                                                    10:37=E2=80=AFAM Dor =
Ratz
                                                    &lt;<a
                                                      href=3D"mailto:dorr=
atz12@gmail.com"
                                                      rel=3D"noreferrer
                                                      noreferrer
                                                      noreferrer
                                                      noreferrer"
                                                      target=3D"_blank"
                                                      moz-do-not-send=3D"=
true"
class=3D"moz-txt-link-freetext">dorratz12@gmail.com</a>&gt; wrote:<br>
                                                  </div>
                                                  <blockquote
                                                    class=3D"gmail_quote"
                                                    style=3D"margin:0px
                                                    0px 0px
                                                    0.8ex;border-left:1px
                                                    solid
                                                    rgb(204,204,204);padd=
ing-left:1ex">
                                                    <div dir=3D"rtl">
                                                      <div
                                                        style=3D"directio=
n:ltr"><br>
                                                      </div>
                                                      <div><br>
                                                      </div>
                                                      <div dir=3D"ltr">Hi
                                                        Michael and
                                                        Marcus,</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">Th=
ank
                                                        you.</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
>Several
                                                          questions:</u><=
/div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">1.
                                                        Why does the
                                                        spur still
                                                        exist=C2=A0when d=
oing
                                                        your
                                                        recommendation?
                                                        please see below
                                                        the setup, maybe
                                                        I need to change
                                                        something?</div>
                                                      <div dir=3D"ltr">By
                                                        the way, all the
                                                        time(even in
                                                        original
                                                        fractional mode)
                                                        the spur does
                                                        not exist in
                                                        specific
                                                        frequencies=C2=A0=
such
                                                        as 1000MHz,
                                                        1110MHz,
                                                        1200MHz...I
                                                        guess=C2=A0that w=
hen
(dboard_clock/target_frequency =3D integer)=C2=A0then we are OK.</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">If
                                                        you can share
                                                        your gnuradio
                                                        flowgraph /
                                                        grc=C2=A0+ py fil=
es=C2=A0
                                                        / spectrum
                                                        analyzer
                                                        pictures that
                                                        show the signal
                                                        - it would be
                                                        helpful.</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                    </div>
                                                  </blockquote>
                                                  <div><br>
                                                  </div>
                                                  <div>It looks like the
                                                    integer-n mode is
                                                    not properly
                                                    configured.=C2=A0 The
                                                    "mode_n=3Dinteger"
                                                    needs to be part of
                                                    the tune args and
                                                    not the device
                                                    args.=C2=A0 Try setti=
ng
                                                    the frequency as
                                                    Marcus suggested
                                                    using:</div>
                                                  <div><br>
                                                  </div>
                                                  <div>my_uhd_block.set_c=
enter_frequency(uhd.tune_request(target_freq=3D2.4e9,args=3D"mode_n=3Dint=
eger"))</div>
                                                  <div><br>
                                                  </div>
                                                  <blockquote
                                                    class=3D"gmail_quote"
                                                    style=3D"margin:0px
                                                    0px 0px
                                                    0.8ex;border-left:1px
                                                    solid
                                                    rgb(204,204,204);padd=
ing-left:1ex">
                                                    <div dir=3D"rtl">
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">2.
                                                        When you said
                                                        about breaking
                                                        coherency
                                                        between channels
                                                        - what channels
                                                        did you mean?
                                                        the 2 different
                                                        TX or Rx
                                                        channels on 2
                                                        different
                                                        UBX-160
                                                        daughterboards
                                                        on the same
                                                        X310?</div>
                                                      <div dir=3D"ltr">If
                                                        so, in case I'm
                                                        using only a
                                                        single UBX-160
                                                        in the X310, can
                                                        I ignore this
                                                        issue because
                                                        it=C2=A0won't exi=
st
                                                        in my case?</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">"T=
he
                                                        int_n_step tune
                                                        arg will
                                                        explicitly
                                                        change the step
                                                        size by changing
                                                        the R divider
                                                        value, which
                                                        will break phase
                                                        coherency
                                                        between
                                                        channels"<br>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                    </div>
                                                  </blockquote>
                                                  <div><br>
                                                  </div>
                                                  <div>It will break
                                                    phase
                                                    coherency=C2=A0betwee=
n
                                                    any channels on the
                                                    same device or
                                                    across devices.=C2=A0=
 If
                                                    you are using a
                                                    single channel or
                                                    are using multiple
                                                    channels and do not
                                                    require=C2=A0phase
                                                    coherency, you can
                                                    ignore it.</div>
                                                  <div><br>
                                                  </div>
                                                  <blockquote
                                                    class=3D"gmail_quote"
                                                    style=3D"margin:0px
                                                    0px 0px
                                                    0.8ex;border-left:1px
                                                    solid
                                                    rgb(204,204,204);padd=
ing-left:1ex">
                                                    <div dir=3D"rtl">
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">3.
                                                        Do you still
                                                        recommend
                                                        putting=C2=A0"dbo=
ard_clock_rate=3D20e6"
                                                        in the device
                                                        arguments
                                                        parameter when
                                                        transmitting
                                                        frequencies
                                                        smaller than
                                                        1GHz as written=C2=
=A0<a
href=3D"https://kb.ettus.com/UBX#Phase_Synchronization" rel=3D"noreferrer
                                                          noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true">here</a>?</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                    </div>
                                                  </blockquote>
                                                  <div><br>
                                                  </div>
                                                  <div>That is required
                                                    to keep phase
                                                    coherency=C2=A0betwee=
n
                                                    channels.=C2=A0 If yo=
u
                                                    are using a single
                                                    channel or are using
                                                    multiple channels
                                                    and do not
                                                    require=C2=A0phase
                                                    coherency, you can
                                                    ignore it.=C2=A0 The
                                                    default reference
                                                    clock rate of 50 MHz
                                                    provides best phase
                                                    noise performance.</d=
iv>
                                                  <div>=C2=A0</div>
                                                  <blockquote
                                                    class=3D"gmail_quote"
                                                    style=3D"margin:0px
                                                    0px 0px
                                                    0.8ex;border-left:1px
                                                    solid
                                                    rgb(204,204,204);padd=
ing-left:1ex">
                                                    <div dir=3D"rtl">
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
>The
                                                          spur still
                                                          exists as
                                                          before with
                                                          your proposal-
                                                          does the=C2=A0s=
etup
                                                          match your
                                                          recommendation
                                                          or should I
                                                          change
                                                          something??</u>=
</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">Pl=
ease
                                                        see
                                                        gnuradio=C2=A0flo=
wgraph:</div>
                                                      <div dir=3D"ltr"><u=
><br>
                                                        </u></div>
                                                      <div dir=3D"ltr">''=
mode_n=3Dinteger''
                                                        in Device
                                                        Address and
                                                        Device Arguments<=
u><br>
                                                        </u></div>
                                                      <div dir=3D"ltr">ce=
nter
                                                        freq =3D 1003e6
                                                        [Hz]</div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">DS=
P
                                                        tuning policy=C2=A0=
-
                                                        didn't touch it
                                                        so I guess it is
                                                        default =3D
                                                        POLICY_AUTO.<br>
                                                      </div>
                                                      <div dir=3D"ltr">db=
oard_clock_rate
                                                        =3D didn't touch
                                                        it so I guess it
                                                        is
                                                        default=3D50MHz.<=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
><br>
                                                        </u></div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><i=
mg
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.1&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D18=
6d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ8fQWzWuAdCq5UXMOUT=
GFsPOfBoUvA7cqJC5Vg1Y5zgsUpPdFZL--_e0bFfd9jDKnuRIsr9ksBtZBnM4kSn5gZEb12S9=
yUi19rnFIHl7cJC6Igbx0x2HleEidI&amp;disp=3Demb&amp;realattid=3Dii_lf0weri1=
0&amp;zw"
alt=3D"image.png" moz-do-not-send=3D"true" width=3D"563" height=3D"355"><=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><i=
mg
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.2&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D18=
6d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ-5BCHxSIi-LzbUC_-4=
r894ScPfD8CZyWtiYs_P5dVrIR94JoBqwQ5U9iFUbKxib9bv2aC1BliVnrcuIlv9EHsw6boYe=
jNDGmbThIWwLiO0Ye_TnvexF8ghx4U&amp;disp=3Demb&amp;realattid=3Dii_lf0wkrco=
4&amp;zw"
alt=3D"image.png" moz-do-not-send=3D"true" width=3D"562" height=3D"491"><=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><i=
mg
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.3&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D18=
6d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ_Qk8gL494QCnlfDPWH=
JQI6k-l0z2DAdgfkXINDOIlmjJZ3DneVpWKB9-oMlcj1rPhLkoxRNbE2pB1avJ6lz3jEuKmUL=
WZqiB_eex9AWTJpbArmauFDagqzVW0&amp;disp=3Demb&amp;realattid=3Dii_lf0wmthd=
5&amp;zw"
alt=3D"image.png" moz-do-not-send=3D"true" width=3D"562" height=3D"503"><=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
>This
                                                          gnuradio
                                                          flowgraph
                                                          moves the
                                                          signal to the
                                                          original
                                                          frequency of
                                                          the
                                                          spur(=3Dfrequen=
cy
                                                          offset of
                                                          3-6KHz, that's
                                                          bad) but
                                                          eliminate the
                                                          original spur
                                                          itself</u></div=
>
                                                      <div dir=3D"ltr"><u=
><br>
                                                        </u></div>
                                                      <div dir=3D"ltr">I
                                                        guess that
                                                        anyway
                                                        the=C2=A0frequenc=
y
                                                        resolution range
                                                        is:</div>
                                                      <div dir=3D"ltr">
                                                        <ul>
                                                          <li>When
                                                          dboard_clock_ra=
te=3D50MHz
                                                          -&gt; ranges
                                                          from 50MHz
                                                          when R
                                                          divider=3D 1[-]
                                                          up to
                                                          0.05[MHz] when
                                                          R divider =3D
                                                          1000[-]</li>
                                                          <li>When
                                                          dboard_clock_ra=
te=3D20MHz
                                                          -&gt;ranges
                                                          from 20MHz
                                                          when R
                                                          divider=3D 1[-]
                                                          up to
                                                          0.02[MHz] when
                                                          R divider =3D
                                                          1000[-]</li>
                                                        </ul>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
><br>
                                                        </u></div>
                                                      <div dir=3D"ltr">=C2=
=A0center
                                                        freq :=C2=A0
                                                        uhd.tune_request(=
target_freq,
                                                        dsp_freq=3D0, =C2=
=A0 =C2=A0
dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)<u><br>
                                                        </u></div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr=
">''mode_n=3Dinteger''
                                                          in Device
                                                          Address and
                                                          Device
                                                          Arguments<u><br=
>
                                                          </u></div>
                                                          <br>
                                                        </div>
                                                      </div>
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">=
dboard_clock_rate
                                                          =3D didn't touc=
h
                                                          it so I guess
                                                          it is
                                                          default=3D50MHz=
.<br>
                                                        </div>
                                                        <br>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><i=
mg
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.5&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D18=
6d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ8BnIPmI4uGPyorNmsX=
TRk-63ZjDQaPx2s6REEPO3iRVFp2IrgzT1dvktLavoqSzD_DTASLkLjdRUmgNjYR4NbjlCPnF=
_W8O9LhZaeo9PohVMFeIEe-hTb0ucI&amp;disp=3Demb&amp;realattid=3Dii_lf0xmhye=
4&amp;zw"
alt=3D"image.png" moz-do-not-send=3D"true" width=3D"562" height=3D"358"><=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><i=
mg
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.6&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D18=
6d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ8Log3RySpZ4j3H_A_J=
fqaKyd2W8eNe2cIvesaNCcvG3arz5y4kjD0hD0ZLV5EHWCyTfoLDJuYUfi8uix2VSnNJWlheR=
MoIYkObnat3VLL6vvMijG2lauv_Hn0&amp;disp=3Demb&amp;realattid=3Dii_lf0xo4q6=
5&amp;zw"
alt=3D"image.png" moz-do-not-send=3D"true" width=3D"562" height=3D"486"><=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
><br>
                                                        </u></div>
                                                      <div dir=3D"ltr"><i=
mg
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.4&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D18=
6d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ89XMc4hgJA5HKSMu8C=
M98YTAHyZZA3p5-tHnLyQsPPP6kdhlD2NK8MK7p3EsZhXvaI-kH3EDodez6lHvRq1TvjJxmYn=
4sO6dBev4-gsoFOoZ_9NNHtRLgACv4&amp;disp=3Demb&amp;realattid=3Dii_lf0xk8i1=
3&amp;zw"
alt=3D"image.png" moz-do-not-send=3D"true" width=3D"562" height=3D"497"><=
br>
                                                      </div>
                                                      <div dir=3D"ltr"><u=
><br>
                                                        </u></div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <div dir=3D"ltr">Th=
anks=C2=A0</div>
                                                      <div dir=3D"ltr">Do=
r</div>
                                                      <div
                                                        class=3D"gmail_qu=
ote">
                                                        <div dir=3D"ltr"
                                                          class=3D"gmail_=
attr">----------
                                                          Forwarded
                                                          message
                                                          ---------<br>
                                                          =D7=9E=D7=90=D7=
=AA: <strong
class=3D"gmail_sendername" dir=3D"auto">Michael West</strong> <span
                                                          dir=3D"auto">&l=
t;<a
href=3D"mailto:michael.west@ettus.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">michael.west@ett=
us.com</a>&gt;</span><br>
                                                          =E2=80=AADate: =
=D7=99=D7=95=D7=9D =D7=92=D7=B3,
                                                          7 =D7=91=D7=9E=D7=
=A8=D7=A5 2023
                                                          =D7=91-4:22=E2=80=
=AC<br>
                                                          Subject: Re:
                                                          Spurs in
                                                          UBX-160
                                                          Daughterboard
                                                          with USRP X310<=
br>
                                                          To: Marcus D.
                                                          Leech &lt;<a
                                                          href=3D"mailto:=
patchvonbraun@gmail.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt;<br>
                                                          Cc: Dor Ratz
                                                          &lt;<a
                                                          href=3D"mailto:=
dorratz12@gmail.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">dorratz12@gmail.com</a>&gt;, Marcus M=C3=BC=
ller
                                                          &lt;<a
                                                          href=3D"mailto:=
marcus.mueller@ettus.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">marcus.mueller@ettus.com</a>&gt;, &lt;<a
                                                          href=3D"mailto:=
mmueller@gnuradio.org"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">mmueller@gnuradio.org</a>&gt;, <a
                                                          href=3D"mailto:=
usrp-users@lists.ettus.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a> &lt;<a
                                                          href=3D"mailto:=
usrp-users@lists.ettus.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a>&gt;, Eduar=
d
                                                          Sivolenko &lt;<=
a
href=3D"mailto:eduard.sivolenko@ni.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">eduard.sivolenko=
@ni.com</a>&gt;,
                                                          &lt;<a
                                                          href=3D"mailto:=
derek.mckay@utu.fi"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">derek.mckay@utu.fi</a>&gt;, Michael
                                                          Dickens &lt;<a
href=3D"mailto:michael.dickens@ettus.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">michael.dickens@=
ettus.com</a>&gt;,
                                                          &lt;<a
                                                          href=3D"mailto:=
claudio.franchini@tlrnet.eu"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">claudio.franchini@tlrnet.eu</a>&gt;<br>
                                                        </div>
                                                        <br>
                                                        <br>
                                                        <div dir=3D"ltr">
                                                          <div>Hi Dor,</d=
iv>
                                                          <div><br>
                                                          </div>
                                                          <div>There are
                                                          2 arguments
                                                          that can
                                                          control the
                                                          integer-N step
                                                          size:=C2=A0 the
                                                          int_n_step
                                                          tune arg and
                                                          the
                                                          dboard_clock_ra=
te
                                                          device arg.=C2=A0
                                                          The int_n_step
                                                          tune arg will
                                                          explicitly
                                                          change the
                                                          step size by
                                                          changing the R
                                                          divider value,
                                                          which will
                                                          break phase
                                                          coherency
                                                          between
                                                          channels.=C2=A0=
 The
'dboard_clock_rate' value in the device args controls the reference
                                                          clock rate,
                                                          which will
                                                          keep the R
                                                          divider set to
                                                          1 and support
                                                          phase
                                                          coherency
                                                          between
                                                          channels.=C2=A0
                                                          Both will
                                                          change the PFD
                                                          frequency for
                                                          the PLL.=C2=A0 =
The
                                                          UBX was
                                                          designed for a
                                                          PFD frequency
                                                          of 50 MHz,
                                                          which is why
                                                          50 MHz is the
                                                          default
                                                          reference=C2=A0=
clock
                                                          rate and the
                                                          default R
                                                          value is 1.=C2=A0
                                                          Reducing the
                                                          PFD frequency
                                                          will result in
                                                          more phase
                                                          noise.=C2=A0 My
                                                          recommendation
                                                          is to set the
'mode_n=3Dinteger' in the tune args, let the DSP tuning take care of the
                                                          offset by
                                                          leaving the
                                                          DSP tuning
                                                          policy to the
                                                          default
                                                          (POLICY_AUTO),
                                                          and use the
                                                          highest
                                                          dboard_clock_ra=
te
                                                          possible (up
                                                          to 50 MHz).=C2=A0
                                                          The highest
                                                          'dboard_clock_r=
ate'
                                                          can be
                                                          achieved based
                                                          on the
                                                          required
                                                          bandwidth of
                                                          the
                                                          application by
                                                          using the
                                                          formula:</div>
                                                          <div><br>
                                                          </div>
                                                          <div>dbaord_clo=
ck_rate
                                                          =3D (160 MHz -
                                                          bandwidth) / 2<=
/div>
                                                          <div><br>
                                                          </div>
                                                          <div>I hope
                                                          this helps.</di=
v>
                                                          <div><br>
                                                          </div>
                                                          <div>Best
                                                          regards,</div>
                                                          <div>Michael
                                                          E. West</div>
                                                          <br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"ltr=
"
class=3D"gmail_attr">On Mon, Mar 6, 2023 at 3:07=E2=80=AFPM Marcus D. Lee=
ch &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patchvonbraun@gm=
ail.com</a>&gt;
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          06/03/2023
                                                          17:13, Dor
                                                          Ratz wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
">Hey,=C2=A0</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks
                                                          a lot.=C2=A0</d=
iv>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><u>Several
                                                          questions
                                                          after thinking
                                                          about it:</u></=
div>
                                                          </div>
                                                          </blockquote>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">1.
                                                          Do you mean
                                                          R&amp;D of
                                                          Ettus or
                                                          GNURadio? Can
                                                          you address me
                                                          to the
                                                          relevant email
                                                          address? <br>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          This thread
                                                          really belongs
                                                          on the
                                                          usrp-users
                                                          mailing list
                                                          now, rather
                                                          than
                                                          discuss-gnuradi=
o,
                                                          i have copied
                                                          usrp-users,
                                                          and<br>
                                                          =C2=A0 removed
                                                          discuss-gnuradi=
o.<br>
                                                          <br>
                                                          <br>
                                                          <br>
                                                          <br>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">2.
                                                          Let me see if
                                                          I get it right
                                                          for USRP X310
                                                          with UBX-160:</=
div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">
                                                          <ul>
                                                          <li>Motherboard
                                                          clock =3D MCR=C2=
=A0
                                                          =3Dmaster_clock=
_rate=C2=A0
                                                          =3D main clock
                                                          rate =3D defaul=
t
                                                          value is
                                                          200MHz. The
                                                          10MHz REFCLK
                                                          is used to set
                                                          it.<br>
                                                          </li>
                                                          <li>Daughterboa=
rd
                                                          Clock Rate in
                                                          Hz
                                                          =3D=C2=A0dboard=
_clock_rate
                                                          =3D default
                                                          value is
                                                          50MHz, need to
                                                          change it to
                                                          20MHz for
                                                          center
                                                          frequencies=C2=A0=
under
                                                          1GHz do
                                                          decrease
                                                          spurs.<br>
                                                          This is
                                                          actually the
                                                          clock that the
                                                          motherboard
                                                          injects into
                                                          the
                                                          daughterboard
                                                          , i.e it is
                                                          the
                                                          reference=C2=A0=
clock
                                                          of the MAX2871
                                                          PLL which is
                                                          on the
                                                          daughterboard.<=
/li>
                                                          <li>According
                                                          to=C2=A0<a
href=3D"http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.ht=
ml"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true">this
                                                          link</a>, if I
set=C2=A0"mode_n=3Dinteger","int_n_step=3D100e3", in Device Address param=
eter in
                                                          USRP Sink
                                                          block, then
                                                          the frequency
                                                          resolution on
                                                          the PLL is:<br>
                                                          frequency
                                                          resolution
                                                          [Hz] =3D
                                                          int_n_step
                                                          [Hz] =3D
                                                          dboard_clock_ra=
te
                                                          [Hz] / (R
                                                          divider=C2=A0 [=
-])=C2=A0<br>
                                                          <br>
                                                          For example:<br=
>
                                                          100e3 [Hz] =3D
                                                          50e6 [Hz] /
                                                          500<br>
                                                          <br>
                                                          So -&gt;<b>
                                                          the
                                                          frequency=C2=A0=
resolution
                                                          of the PLL is
                                                          set by the
                                                          "int_n_step"
                                                          parameter</b>
                                                          -&gt; it
                                                          calculates=C2=A0=
the
                                                          R divider [-]
                                                          in the PLL
                                                          relating to
                                                          dboard_clock_ra=
te
                                                          and desired
                                                          int_n__step.<br=
>
                                                          I guess that
                                                          the result
                                                          must be in the
                                                          range of
                                                          allowed PLL's
                                                          R divider
                                                          values from 1
                                                          to 1023.</li>
                                                          </ul>
                                                          3.=C2=A0 =C2=A0=
Do I must
                                                          set the=C2=A0
                                                          "int_n_step"
                                                          parameter as
                                                          follows?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">4.=C2=A0
                                                          Does the
                                                          frequency
                                                          resolution
                                                          range from
                                                          50MHz when R
                                                          divider=3D 1[-]
                                                          up to
                                                          0.05[MHz] when
                                                          R divider =3D
                                                          1000[-] ?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Referring
                                                          to this
                                                          sentence in=C2=A0=
<a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/max2871.pdf"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true">max2871
                                                          PLL datasheet</=
a>:</div>
                                                          <div dir=3D"ltr=
">""The
                                                          minimum R
                                                          counter divide
                                                          ratio is 1,
                                                          and the
                                                          maximum divide
                                                          ratio is 1023"<=
/div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">5.
                                                          Where can I
                                                          find the
                                                          relevant
                                                          source code?
                                                          I've looked=C2=A0=
<a
href=3D"https://github.com/EttusResearch/uhd" rel=3D"noreferrer noreferre=
r
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true">here</a>=C2=A0but I'm not sure where the daughte=
rboard
                                                          code/relevant
                                                          code is.=C2=A0<=
/div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks=C2=A0</div>
                                                          <div dir=3D"ltr=
">Dor</div>
                                                          <div dir=3D"ltr=
">
                                                          <div><br>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          <br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"rtl=
"
class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=91=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-19:10 =D7=
=9E=D7=90=D7=AA =E2=80=AAMarcus D.
                                                          Leech=E2=80=AC=E2=
=80=8F &lt;=E2=80=AA<a
href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patchvonbraun@gm=
ail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          06/03/2023
                                                          08:54, Dor
                                                          Ratz wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
">Hey
                                                          Marcus,=C2=A0</=
div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks
                                                          a lot.</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">I'm=C2=A0using
                                                          e<span>xternal
                                                          10 MHz
                                                          reference
                                                          clock (</span>R=
EFCLK)
                                                          with 1e-12[Hz]
                                                          frequency
                                                          resolution
                                                          -&gt; it feeds
                                                          my PLL in the
                                                          UBX-160
                                                          daughterboard
                                                          in the X310
                                                          USRP.</div>
                                                          </div>
                                                          </blockquote>
                                                          The REFCLCK
                                                          input to the
                                                          X310 is used
                                                          to control the
master-clock(s) on the motherboard, which, in turn produce clocks for<br>
                                                          =C2=A0 the
                                                          daughtercards--=
but
                                                          the
                                                          daughtercards
                                                          never see your
                                                          external clock
                                                          directly.<br>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">So,
                                                          <b>when
                                                          defining
                                                          "mode_n=3Dinteg=
er"</b>
                                                          in the Device
                                                          Address
                                                          parameter of
                                                          the UHD: USRP
                                                          Sink block in
                                                          GNURadio to
                                                          set PLL in
                                                          integer-N
                                                          mode, <b>what
                                                          is exactly
                                                          R-DIVIDER=3D
                                                          reference
                                                          divider of the
                                                          PLL</b>?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">I've
                                                          looked in the
                                                          PLL (max2871)
                                                          datasheet:</div=
>
                                                          <div dir=3D"ltr=
"><a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/max2871.pdf"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">https://www.analog.com/media/en/technical=
-documentation/data-sheets/max2871.pdf</a><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">According
                                                          to it:</div>
                                                          <div dir=3D"ltr=
">"The
                                                          minimum R
                                                          counter divide
                                                          ratio is 1,
                                                          and the
                                                          maximum divide
                                                          ratio is 1023"<=
/div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">I
                                                          understand
                                                          that if for
                                                          example, the R
counter=3D(R-DIVIDER)=3D1000 -&gt; the frequency resolution is 10MHz/1000=
 =3D
                                                          0.01MHz=3D
                                                          10KHz,
                                                          correct?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">But
                                                          I don't know
                                                          what is the
                                                          R-DIVIDER
                                                          chosen=C2=A0in =
the
                                                          PLL with the
                                                          settings in
                                                          gnuradio.</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks,</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Dor</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          You'd have to
                                                          go looking
                                                          through the
                                                          source code.=C2=
=A0
                                                          Unless someone
                                                          from R&amp;D
                                                          happens to
                                                          know off the
                                                          top of their
                                                          heads.<br>
                                                          =C2=A0 10 years
                                                          ago, I kept
                                                          all of this in
                                                          my head--when
                                                          there were FAR
                                                          fewer products
                                                          to keep track
                                                          of and the
                                                          codebase was<br=
>
                                                          =C2=A0 more mod=
est.<br>
                                                          <br>
                                                          <br>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          </div>
                                                          <br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"rtl=
"
class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=94=D7=B3, 2 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:55 =D7=
=9E=D7=90=D7=AA =E2=80=AAMarcus D.
                                                          Leech=E2=80=AC=E2=
=80=8F &lt;=E2=80=AA<a
href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patchvonbraun@gm=
ail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          02/03/2023
                                                          13:09, Dor
                                                          Ratz wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
">Hey,</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Do
                                                          you know
                                                          how=C2=A0to ass=
ess
                                                          the RF PLL
                                                          resolution in
                                                          integer-N
                                                          mode?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">I've
                                                          looked in
                                                          ANALOG max2871
                                                          PLL datasheet
                                                          - not sure I
                                                          found the
                                                          answer there.</=
div>
                                                          <div dir=3D"ltr=
"><a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/max2871.pdf"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-freetext">https://www.analog.com/media/en/technical=
-documentation/data-sheets/max2871.pdf</a><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">The
                                                          Ettus team is
                                                          CC here too -
                                                          it will be
                                                          helpful to
                                                          know what you
                                                          suggest.</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks,</div>
                                                          <div dir=3D"ltr=
">Dor
                                                          <br>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          It will depend
                                                          on the REFCLK
                                                          that is being
                                                          used by that
                                                          board (I do
                                                          not happen to
                                                          know off the
                                                          top of my
                                                          head), and by<b=
r>
                                                          =C2=A0 whatever
                                                          flexibility in
                                                          reference
                                                          divider the
                                                          PLL has.<br>
                                                          <br>
                                                          In an
                                                          Integer-N PLL
                                                          (and you can
                                                          spend quite a
                                                          bit of time
                                                          learning how
                                                          PLL
                                                          synthesizers
                                                          work online),
                                                          the "step
                                                          size" is<br>
                                                          =C2=A0 dependen=
t on
                                                          the REFCLK,
                                                          which itself
                                                          may have a
                                                          divider on
                                                          it.=C2=A0 So, l=
et's
                                                          say your
                                                          REFCLK is
                                                          10MHz and
                                                          there's a
                                                          divider<br>
                                                          =C2=A0 that can
                                                          divide the
                                                          reference
                                                          clock by up to
                                                          10000, then
                                                          your minimum
                                                          step size is
                                                          1kHz.=C2=A0=C2=A0=
 This
                                                          is in tension
                                                          with the<br>
                                                          =C2=A0 fact tha=
t
                                                          having a high
                                                          ratio between
                                                          the desired
                                                          frequency and
                                                          the reference
                                                          frequency
                                                          tends to
                                                          create
                                                          signal-quality
                                                          issues,<br>
                                                          =C2=A0 like, as=
 I
                                                          recall, phase
                                                          noise.=C2=A0 Bu=
t
                                                          I'd research
                                                          the datasheet
                                                          and the
                                                          overall
                                                          concept of PLL
                                                          synthesis.<br>
                                                          <br>
                                                          My
                                                          recollection
                                                          on the X310 is
                                                          that the
                                                          reference-clock
                                                          frequency is
                                                          100MHz, but
                                                          that's just a
                                                          hazy memory.<br=
>
                                                          <br>
                                                          <br>
                                                          <br>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          </div>
                                                          <br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"rtl=
"
class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:10 =D7=
=9E=D7=90=D7=AA =E2=80=AAMarcus D.
                                                          Leech=E2=80=AC=E2=
=80=8F &lt;=E2=80=AA<a
href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patchvonbraun@gm=
ail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          01/03/2023
                                                          13:14, Dor
                                                          Ratz wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div
                                                          dir=3D"auto">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
">Hey
                                                          Marcus, How
                                                          are you?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Not
                                                          sure if you
                                                          got my email.</=
div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Do
                                                          you know
                                                          anyway I can
                                                          change
                                                          transmitted
                                                          frequency
                                                          using PMT
                                                          message when
                                                          doing your
                                                          solution?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">In
                                                          addition,
                                                          something that
                                                          seemed to help
                                                          me:</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">I
                                                          used this:</div=
>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><a
href=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00=
309.html"
rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://lists.gn=
u.org/archive/html/discuss-gnuradio/2011-09/msg00309.html</a></div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">In
                                                          the USRP Sinc
                                                          block, in
                                                          center
                                                          frequency
                                                          parameter,
                                                          I've put this:<=
/div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">
                                                          <pre style=3D"c=
olor:rgb(0,0,0)">uhd.tune_request(target_freq=3D1003e6, dsp_freq=3D0,
dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)</pre>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">With
                                                          this, the
                                                          transmitted
                                                          1003MHz signal
                                                          is cleaner and
                                                          the spur is
                                                          now further
                                                          away at 16KHz
                                                          offset with
                                                          amplitude of
                                                          60dBc below
                                                          the signal.</di=
v>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">This
                                                          alone cleans
                                                          the spectrum!</=
div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">In
                                                          addition, I
                                                          type
                                                          "mode_n=3Dinteg=
er"
                                                          in the</div>
                                                          <div dir=3D"ltr=
">Device
                                                          Address
                                                          parameter of
                                                          the UHD: USRP
                                                          Sink block,
                                                          but it doesn't
                                                          seem to
                                                          affect. The
                                                          tuning without
                                                          DSP correction
                                                          in the FPGA
                                                          seems to just
                                                          be sufficient
                                                          to clean the
                                                          spectrum.</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Why
                                                          is that? Do
                                                          you recommend
                                                          using
                                                          something
                                                          else?</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Dor
                                                          <br>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          Note that only
                                                          works if the
                                                          underlying RF
                                                          PLL has enough
                                                          "resolution"
                                                          to make that
                                                          work--particula=
rly
                                                          in integer-N
                                                          mode.<br>
                                                          <br>
                                                          I'm surprised
                                                          that the
                                                          DDC/DUC have
                                                          such
                                                          significant
                                                          "close in"
                                                          spurs.=C2=A0=C2=
=A0=C2=A0 I
                                                          don't know if
                                                          there's anyone
                                                          from the
                                                          R&amp;D team<br=
>
                                                          =C2=A0 on here =
who
                                                          can
                                                          authoritatively
                                                          comment, but
                                                          this is a bit
                                                          of a surprise.<=
br>
                                                          <br>
                                                          <br>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div
                                                          dir=3D"auto">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          </div>
                                                          <br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"rtl=
"
class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-=
15:08 =D7=9E=D7=90=D7=AA =E2=80=AADor Ratz=E2=80=AC=E2=80=8F
                                                          &lt;=E2=80=AA<a
                                                          href=3D"mailto:=
dorratz12@gmail.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">dorratz12@gmail.=
com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div dir=3D"rtl=
">
                                                          <div dir=3D"ltr=
">Hi
                                                          Marcus,</div>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Can
                                                          I pass the
                                                          desired center
                                                          frequency with
                                                          a PMT
                                                          message?=C2=A0<=
/div>
                                                          <div dir=3D"ltr=
">I
                                                          want to
                                                          dynamically
                                                          change the
                                                          transmitted
                                                          center
                                                          frequency of
                                                          UHD: USRP Sink
                                                          block.=C2=A0</d=
iv>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">So
                                                          static
                                                          frequency=C2=A0=
in
                                                          the block is
                                                          not
                                                          sufficient.</di=
v>
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <div dir=3D"ltr=
">Thanks=C2=A0</div>
                                                          <div dir=3D"ltr=
">Dor</div>
                                                          <br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"rtl=
"
class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-=
13:44 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus
                                                          M=C3=BCller=E2=80=
=AC=E2=80=8F &lt;=E2=80=AA<a
href=3D"mailto:marcus.mueller@ettus.com" rel=3D"noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer
                                                          noreferrer
                                                          noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">marcus.mueller@e=
ttus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">Hi
                                                          Dor,<br>
                                                          <br>
                                                          &gt;=C2=A0 1. H=
ow
                                                          to change the
                                                          to integer_n
                                                          tuning? Should
                                                          I just type
                                                          "mode_n=3Dinteg=
er"
                                                          in the<br>
                                                          &gt;=C2=A0 =C2=A0
                                                          =C2=A0Device
                                                          Address
                                                          parameter of
                                                          the UHD: USRP
                                                          Sink block in
                                                          the grc?<br>
                                                          <br>
                                                          yes. Or,
                                                          better,
                                                          instead of
                                                          just tuning to
                                                          the target
                                                          frequency, you
                                                          can pass a <br>
uhd.tune_request_t to uhd_usrp_{sink,source}.set_center_frequency, like
                                                          this:<br>
                                                          <br>
my_uhd_block.set_center_frequency(uhd.tune_request_t(<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0target_fr=
eq =3D
                                                          2.4e9,<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0args=3D"mode_n=3Dinteger"))<br>
                                                          <br>
                                                          (you can also
                                                          use a
                                                          uhd.tune_reques=
t_t
                                                          in the RF
                                                          frequency
                                                          fields of the
                                                          GRC block)<br>
                                                          <br>
                                                          Note that
                                                          you're
                                                          probably best
                                                          off using
                                                          tune_request_t
                                                          anyway, as it
                                                          allows you to
                                                          tune <br>
                                                          your LO far
                                                          away from your
                                                          band of
                                                          interest,
                                                          given the
                                                          analog
                                                          bandwidth
                                                          allows for
                                                          that, <br>
                                                          using
                                                          `target_freq=3D=
`
                                                          and `rf_freq`
                                                          or `dsp_freq`.<=
br>
                                                          <br>
                                                          For more
                                                          information on
                                                          tuning, see
                                                          the UHD manual
                                                          [1]<br>
                                                          <br>
                                                          &gt;=C2=A0 2. H=
ow
                                                          to know for
                                                          sure what the
                                                          mode(integer
                                                          of fractional)
                                                          of the NCO is?
                                                          Can I print<br>
                                                          &gt;=C2=A0 =C2=A0=
 =C2=A0its
                                                          status/get it
                                                          somehow? <br>
                                                          <br>
                                                          looking at the
                                                          UHD source
                                                          code: the
                                                          routines
                                                          responsible
                                                          for tuning
                                                          just
                                                          themselves
                                                          check <br>
                                                          for "mode_n"
                                                          being set to
                                                          "integer" in
                                                          the device or
                                                          tune request
                                                          arguments.<br>
                                                          <br>
                                                          Best regards,<b=
r>
                                                          Marcus<br>
                                                          <br>
                                                          [1] <a
                                                          href=3D"https:/=
/files.ettus.com/manual/page_general.html#general_tuning"
rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer
                                                          noreferrer
                                                          noreferrer
                                                          noreferrer"
                                                          target=3D"_blan=
k"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://files.et=
tus.com/manual/page_general.html#general_tuning</a><br>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </blockquote>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </blockquote>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </blockquote>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </blockquote>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </blockquote>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
                            </blockquote>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------pw0jGYTfq3uRW00Vzy1EWMph
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.IM7X1sH8.tZX4wCxD@gmail.com>
Content-Transfer-Encoding: base64

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
muJLvf3/AUeT4gRLQoJuAAAAAElFTkSuQmCC
--------------pw0jGYTfq3uRW00Vzy1EWMph
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part2.4O905s0k.5lmuZG62@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAmIAAAIXCAYAAAA/uTKUAAAABHNCSVQICAgIfAhkiAAAIABJ
REFUeF7snQd4VMXXxt9tSTa9VwgQWpDeBGnSEVFAUdC/UhQbdmzYELuCIioqohQ/xIJSFBHp
UqQovUNCCqkkpLftu9+5m8Ky2XLTSEjOPK5k751y5jdzZ849c2ZWsmLFCpPRaITwSU1NxZ7d
u2HU66HWaKDVamEwGGAymcCBCTABJsAEmAATYAJMoDIBiUQCmUwGFxcXuLm6Qkb/DhgwABER
EZBKpeaPEEf4WP5t/i4oYIKidfnyZbMSplWrkZuXh5KSEuhJIWMlrDJwvsIEmAATYAJMgAkw
gXICgq4k6EyC7iToUBr69589e8y6lXCvXNcS/i7/lKeVChfUpHzFxMRAo1KhoLCQlS/uW0yA
CTABJsAEmAATqAYBQa8SdCk16VQXLlww61j2lDHhutkilkfaW2J8PIqKi6tRJCdhAkyACTAB
JsAEmAATsCRQVFSEeFLE8vPzr7KIWVvHzBYxwZSmIs1N+JsDE2ACTIAJMAEmwASYQM0ICDqV
oFsVk5HLnkVMKMFsEROc8nU6Xc1K5NRMgAkwASbABJgAE2ACFQQE3UrQscqtYNbWMPPSpPA/
YWekcJMDE2ACTIAJMAEmwASYQO0QEHSr8tMnBH3L1kduqZ3VTrGcCxNgAkyACTABJsAErj8C
EhI5TGGEn6zUOJVjkOKSTorqOm6VK16CriUcVeFQEbv+cLHETIAJMAEmwASYABOoOYFguRET
/DQY4KGDP/1tGbL1UuwtVmB1risu099VDeX+YeXniFkrY/LyC1XNmOMzASbABJgAE2ACTOB6
J3CHrwbTAtRwkdi2ewWQYjbWR4NbvLVYnu2G3/Jcq1RlS8Wr3DJmmYFZEWP/sCox5chMgAkw
ASbABJhAIyDwRJAKt5GSJSYIitqjgSrz0uWiy0oxScxxrF3ALC1kwt9mZ33hw4EJMAEmwASY
QAUBaTC6j5+Cx55/EiMjq74cwySZQEMncCdZwsQqYZZ1Eaxj4ymt2GC9FFmuc5X/a1bEODAB
JtB0CEhdfRHRtg1C3Kzq7N4djy75C1t+W4C7ouRNB0hTqGl12lbWDrc98Rgm3zkY7X1YEWsK
3aQp1TGIlhun0nLkVUHioJ9b3ROWMgOtfMkc8XOkjLGPmCNyfI8JWBOQNsP4Dz/FI73D4O1G
O2AMOqjyM3Hx7CH8vXYl1uxLhfj3JOvM6/67xGs0Plg/GwPk5/D1/Q/h+4tXnFKlwZ1xY3tf
eMi6o0+0B9bE51d7p5ComigGYPbGebjFQ4UtL9+Ct3aXnWWo6INZv32Csf567Jw9Cq/tiMAD
332Hh9oCZ766D49+n4RSqZUYOXcT5gySI3vds5gw7yB00ua4c+5neKhXMLxdaaeTUQd1YRZS
L5zCv1vX4peNx5GtFyUdIFa+bWrIQ/rg3kenYvSN0Qj3lUNfkIG4E/9g3bdfY1Mc9QhpOG6d
/QGm9Q5HgI87+aLozf0m6dxh7PrtR/y6JwnmKaGa/ctZ+de8bUUi5mhMoL4I3E2O+Vf5hJGi
5Tt7BTT//AHVjlVXiaUcOgmuA25H3jtTQIOK+Z4rLVPeRVaxr7OcL1FaK2FCestrrIjVVy/g
cq9TAq7wCw2BDylhRk0xirQyKH0jcEP/Zuhw0yB0eW86Xt14qUxRaIBVpMFGJhM2aFcOxovr
sWC+B4YGXMAff9exEla5+Fq64gKfkCBqH2lZ+0ih9A5D217haNtzOG4fvRSzXliOk8W1uBLg
1g0zPvsIk1ooICnzuZX5NkOnAb1xcOkXZfVSIqR1FCIC5DSO07lCRjnc/ajP9KNP3yHo8fF0
PL8uhfpNNfqXiPIbR9vWUhfhbJo8AWEE7Ee7I68KpGCp/1kP70ffB+QKqLasNN92GzoRXo++
h8Klb1YoYeXpBnjqsJgUMWejibUiZr00yYrY1U3B35iASAIGnFs63Wydkfp2wn3vLsBDPf1x
010jEbnlb0Q99iju7NMRUREB8JRrkHthDd549GscNwSi+z2P4aE7BqBDiAtK0k5h16rFWPzb
aRQIT7OsDca/9jRu79gS4UG+cJdpkJ1wBDtWLcHyTbGo0B9kgej1vyfw0PgBaB8kQ2HKCez8
4Ut8vTEWJUI+ZBka+nhlGea8mFxaP3kHPPbzXjxG33THFmDSE78gQ9YJdzwxGbe4p8H0399Y
eJJMR87KgQwh/afj2UduQ89WfpCr85CZuB0LX/ocx6Mewfx37kJw/Aq89uIKnLFaBRAJuprR
rrQPlGHoOmYGZj09HM27PoBXHvgPU784Ddcej9aKfPLoIRjSnJQwQzxWPfM4vjycD3hGoGNn
P6TFGazk1+Ps14JVLwWKwA6Y8Pp8zOjjgx63D0Wz31cgqSK2g/61aQUSLXbXiypfbtW2Z1pS
P3sGYzs2R7C/DzxdTShKP43dP36BL9efv9LPLKVXtMSEjxbh2T7eUJ1cgmeeWY6zqmo2Dydj
AvVIIJSc7YWdkNZBveMX8yWzMkbBpNea/xaUsHLFzDKNkEcI5SWcM+Yo2FLELN3C2EfMET2+
xwREENDnncHWvfEQplxpQBD8FS3Qf9xQdG8dAndjIfKKZfA0FCHH6IHuT32OBU+OQbcID7LY
mOAV2RvjX1yI+VPbQSGUJQ1F54G9EN08AK66fOSp5AhqNwj3vv4V5k5qhVLPLXd0f/wzfDzj
FnQK1CMrsxjuLW7EhFcX4JXhATDbu2R2ZCjXC0wa5KUlISkpCcmXCs2yVw7Oy5EEjsYLb0/D
oLa+0GckIDGTBq4gF2iLJWjeZzA6+HsguNvN6BHseKCqXHbtXTGq0nF09XuYuy4NRokczYeP
RCe5tNbkMxUVolBQfiUBaNe7K5p7SmEoSsWJ/aeQVXmsL6uYEZrcDGQUlL2Vy2Sk0toOlfqX
FcpqlW/uZz3RvnkQPFCMghIpfJr3wriX5uLx3jaWWqQ+6P3ke3jyRh8YUjfivVf/j5Uw283F
V68DAv5lh7XaElVQxgoXvwav6W+WKmH0ty0lrDxtgIO8LPO35Y9frqCxR66tluBrTEAkAYmU
lpJa9sGEEW3NSpIh8xIul0++pjSsmXkPWZYMUChkMASOwwt3tITClIFtbz6Kd7bmImzCXHzz
XF9E33s/+q9+AzvLHcxM6Vj3AqU9pUSXxz7HZ5Oj0XXy/9Drt/fwn/coTL2TlDLdKSx+4Al8
H69H8LiPsXJWXwwcNxhB29cgs1x+Kxn0ylGld8h68/NzV/uIWWsC0mDn5WQHNUe4K/nKqY/g
myefx28ZBkjlREJvgOT3r/Bj6K0IurgOm1LsaiQiSQvR5Ljh8VXY87h1EjF5a3Dm6Bmo746A
u38zRHga8VctyWeIW41FqwfhnYlt0X3qXKy8Nwvn9mzE2p9+xubTuVZKrgxRkz7G97dK4BEY
gkBPsqQZC3Dkj+0wu+tZKVkO+1cZhqqVb8WO+tna56ifnQnChE9/wMxeQeg/qCM+/e8Qrizc
uCBq4rsYPZj6XPY+zH9hHnbZ1zCtG4e/MwEmUEbA2jJWDoaXJrmLMIFqEShVCnZbKAUmQyZ2
rtqMVGO0VY4m6HR6KNp2RLQL+ZblHsCfOzMg+Iwnb96CE0/3wQDPaHRsIcPOGOukhTi19k+c
vjca3b3bo0O4FIfDOiGalB+JpBMe+2GXeXmxPBhDIxBCk3mFIlZxp1QGiQ1jh1WJFV9lbUWU
k7Af+5LvRYuWN+L5n9dg1N/r8evKX/B3fBGMabvx9Zzd9rKvxnU6asdIH8uU9JMhUtsub5Xy
l0ilpdZCykHYLG6oLflMeTjw6XTct2M4brv9Vowc3APRw6bg1cG3YtCHj+HVDakWPoMSuAU0
R8uAMvGMqdjyznOYu6l8A0K52I76l1XVqlR+JSylF6jvnj6TCWOvFvAJ8DXr5BWKmDQINw4N
osOQ8rHj83fxe6KVb42dLPkyE2ioBISfLbIXLH3CypcmLX3GrNNlO8irPG65Amadtvw7W8Ts
keHrTMAhAToI2aCHTquh3W8ZSDxzEDvW/IT1R7JgNK8x2gjOPDptJBEumXS60klRUDoER3tS
KIRhxKSJJd+xvbA0NhnzjyNDsKzYW+cSzg00lyMocnYKLL8sphz1MSyaMQOJ903GxNv6ofPo
h9F58EAse+IRLDvrbMLWQasjaSQKeHt7kER5pbIpvOClJOFMdF9ruWhqKPOvqrxr0klN6LYn
uvftTDudSJ/IpOVYUc76VZFPh8wTf2EZfZYviMK4Nz7D8zcHot/ksWj/1yKcrWh7vXnn5+M7
emDushfRxysMnbtFQLGZdk1e1T8c9C+blXVSvs00V1/Ua7WlFyoU1rL7xmJkXjYgMMQbNz/+
HIaeeBPbzZ2MAxO4PgkIPl3CzxZZ+4kJSpgtn7BynzHrJUohjwwn/mGWhCwtYsL1iqVJZ5ra
9YmZpWYCdU2AnKkX329xlILz8gx0hMI57S3o5dsXYwaH4MjWHISNGomuclraK47B2YuWSocM
crouLMeFDhyIaFKsTCVJSEg3wKCKRbx+FDor/OCSsQ0//BaHYpoXFb5h8NWWLY3aUcRMmiLa
6UkzvjIUUa1I+UkshMS8lKivtNPTkCCiHLk3/Ewx+PPLl/HnsjZ4YOFyPNSxDQb2bY7vc8Mx
9ZHRCEr8Dd+sPIhs67nbkIgLCXqY/BToduf96HNkOY4V+NHy3iTcKBwNok9EbKJt7zXntMtj
SODi1xp9JzyJ528NohOsdYjd9BfOCPsQQgfggdqQTxqGnsNaofDEMcRllMCgK8Dl3NKdCRKl
B9wFrdmqGoZU2qG6bASWPdMDoWOewdSNR/HFCcvdDFXoX2LKFw/MRsw8/P3h+9A+Nh/3tx+G
l+acRfwzPyHBmZ5tIye+xAQaAgHhnUf47UjhYNaKQDvK3fqPNfuHWR5fIfiM0Wur+fgK1dYf
r9o5+U+RwumOSSF/W3qWpc8YW8QaQq9gGZoEAWPmFnz/+yR0vTsSw99ajX4vaqHwdCcnfTXO
//oD9hYRhnJrmjQEEz7biMG5engF+pAlR4/kv9biAMUxFm/E95sn4P0x4Rj4wgr8OSMfRSYl
vD3U2PTCWLy/38EMqT+LwydKMOImX5JhLbo/o4FbySY8N+ULnLZqBSM5ZTsrRx49BV99dSfc
M9NwmQal0ChBYyxGemo+2tzxPqaMbgGZPhTJOw9jZZKVJmbMxLYf/sI9XcYivMN9mL/mvisS
mAzI2LYSm5IpjTPLnc3eI0P0Iyuw9SEZXBTy0uVLUsIy932Od7+PoWVhun/Hk7Uinyx6PJ6b
MwUtZcLSKSnKlLeM1ksltB0+Y/9enBfWoCvVwYjkdV9izdjFuD8qEuNnjMNvT6xCis26OL4o
ay+i/BqO9KbiE1j61rfosuRJdO32MGbd8y+e+j7ewo/MsYx8lwk0NAK/0g94C78dWXGWGD2v
ee9OuUrRKpdZUMxUf/961T2NSYJfq/ibk/YYmBdKLTUzexH5OhNgAjUkYCrCoc+fwkuLt+L0
JTUUShlKUo/hz8+exfNLz159EKxJjczUXMhpyQ4FyTj4y9t46YvDKDE/sHnYO/dxvPj1XziW
nA+9mw+8XbS4HHeOzOSuled8S7GNl7Fp3tv4cX8C8gxu8PN3RWEhHWxoy4ImohyZtAApiQVw
CWqFtm1CyDntNLYufhWfbMtB8sFdOJ9bguyTe3A009ocZq4I8vd9jCdf+Bp/HU1CjkpH1iSK
f/EoNi1+CU98sBM5VV7OpaNC0jNot6mRLH0uVC8DSnKScGbfeiyZMx1TX1qNC+aXYCNSakk+
afFZ/L31EC5kFEJromVjgwo5SSew/bvX8cwn+0lJttNvtGfx8/JdyDdKoOxyD+7tWQUHPoss
q12+HbHsXdYl/IKPvzsNFZToNOUZjAmz72djLw++zgQaCoEsWlYUfsD7qlB2WKtNGa3uLcty
My9vignlOpY9y5hk3rx5pvj4ePx34ICY/DgOE2ACdUmg/DR3Osvr58eEHZdij4GvS6E4bybA
BJhA4yQwg370+6olShHV/J0sYWJO1C/P6sa+fREVFUXuJnI6UJss5vQp/1tKPpk1NFiLkJij
MAEmwASYABNgAkygARJYdFmJdHK4f4B+O/KqnzyyIauWliOXkiVsfb6rjbvVv8SKWPXZcUom
wASYABNgAkzgOifwG1m49pCP693025HCzxZZ76YUliCF+4JPWI7I5UhbSKzdwMq/syJmixZf
YwL1RUD3D94Z0Q/v1Ff5XC4TYAJMoAkSEJQtYblR+O1I4WeLyk/MF84JE46osOfqWV1UvGuy
uuQ4HRNgAkyACTABJtBoCQgKl3DOmLPfj6xNAOJc/muzRM6LCTABJsAEmAATYAJMwEyAFTHu
CEyACTABJsAEmAATqCcCrIjVE3gulgkwASbABJgAE2ACrIhxH2ACTIAJMAEmwASYQD0RYEWs
nsBzsUyACTABJsAEmAATYEWM+wATYAJMgAkwASbABOqJACti9QSei2UCTIAJMAEmwASYQMWB
rjm5uUyDCTABJsAEmAATYAJM4BoSqFDEzp47dw2L5aKYABNgAkyACTABJtD4CcycOdNhJXlp
0iEevskEmAATYAJMgAkwgbojwIpY3bHlnJkAE2ACTIAJMAEm4JAAK2IO8fBNJsAEmAATYAJM
gAnUHQFWxOqOLefMBJgAE2ACTIAJMAGHBFgRc4iHbzIBJsAEmAATYAJMoO4IsCJWd2w5ZybA
BJgAE2ACTIAJOCTAiphDPHyTCTABJsAEmAATYAJ1R4AVsbpjyzkzASbABJgAE2ACTMAhAVbE
HOLhm0yACTABJsAEmAATqDsCrIjVHVvOmQkwASbABJgAE2ACDgmwIuYQD99kAkyACTABJsAE
mEDdEWBFrO7Ycs5MgAkwASbABJgAE3BIoOJHvx3G4pulBExqZCUlISNXA6/WnRDpJbmuyZg0
+cjIyEKe1hMtW4fA7TqtTmOpx3XdmVh4JsAEmAATqBYBtohVBZsxC+f3/4sjp+JwWW2qSsoG
GdeQfgw7du3D4fMZUDdICcUJ1VjqIa62tR9LUGTT4uORqbHKW3UCy5++G+Pvew2/Jeprv2DO
scETMBnUKMzNRXEVm99uOl0Gjv71K35eux3n8owNvv4sIBO4FgSunUVMl4fEM6cQc/EScorU
0EMBpZcfgiPaoFPnKPgprkV1G3kZqnjsXL8PyVrAo+1QjO0bjmvXwI2cbVWqZ7qELfPexo9H
LyG7oBhaE/V170A0b9sN/cfchfE3NYObkJ8xASufeAIr4irPchLlELyx+hX0t/FcmIoTsGv1
KmzYcwwXLhXAoPBFaJvuGDR2Iu4a0ALKKlg2TUXb8Oa9H2G/oR0eXPwZ7ml+5d3MePkMDl/I
R4nhBA7HlmBcS29UIeuqEGs4cU2FOL9zG45fKoZGb4JEIoPcVQkv3yCEtWqHDlHBUDaV11ct
jSdr9iLFGIDut41GJx+Rre8gnankMtJz1NAZM5CWrUO0r2vDaXuWhAnUE4FrMk+bVCn4b+se
xORbTjhalORl4KLWG627kCJWTwAaT7Em5MaeRaq21FJXnHAW8Z3D0M5D5ODZeEDUf01MKmQm
JiItR08TuRQymR6qvDSc/48+B/fg+FML8d5t4bgyn0sgc3WDm9ziitLVphJtyjmAhbPew58X
NaiwyWqzcPH4Vnx/4h/su3MOPnykB8TOmTAZYTDatu5Km4/G40+UYHdOFEYPbAJKmLnnGKAp
KSlVwmQKuMgAvaYIOZeETyIuxHXBkKFdEGRDQa7/jlfLEphMoP+qHhykk/i0Re/eOlxU+6FN
C1bCqg6XUzRGAtdAEVMj6dB+xJISJnENQnSvXoiO8IVSZqDJKROX1N4ILZeCJrBLZ47gWEwK
clRGuHgGI7JjD3Rv7Uf2MwqmXMTsO4QLWYUoVmugJb3OxZMsDTf0RM+2/qVxzPGc5VOIi0eO
4nw6+UcVqshiIYObb3sMuqUzjCd24GB8HopUOphkrvAKaoGOPbsjyvcaoKpJD9On4VxMLowy
f4QHlSD9UjrOx+aiTTf/KxO+Nhsxhw/jTHIWig0u8HY3QVgcKFXV1Ij7ex32pRigbDcMd/QJ
g4ym+vxTf2HD0WxIQnpj7Ig2KDrugI/Y9oEG2bHHcexcEjILaD3MxROB7W/C0C7BkDlrO4GR
w3rUBGJtp5Wj3YPf4LNJEdDlnMf6j1/HkkMFOL55N9JuvQfNKoqToc39X1K8ZhbKmQ1ZTPn4
Z/GnZiUMHu0xlqxpd/eNhLIgDnt+XIjFWxMRt24Bvuu1GM/0dCedIh5/zv8GfxHn9Kw8qIxu
8I/sgkF3TsH9w6Lgbqmj689j2fRbsIyKlXd+HN99PB7B+rPYsGQVtqnCIOk5AI/eQM+AMQfH
1y7Dig0HEHNZC2XoDRhwxzQ8MCYaZpdJKnPD/MVUZgou5xWgSC2BZ2g0+t31CB4Z3aasTAMy
//0eX/3fFhxLzIPBzRtBkTfjkbceQ1/RGqQNPrV6SYqArrfilo7epIkVITPuKPYfTkRh5kns
PxmGMT2C6PmgQP014+xRHKcxK6vEAIVnECKju6Fbu0BcUTPs9Pf2hdi1Zh9STeUWJxMy/vsN
W8+XwLXNUEy4iZR1eqZi9x9G7GUak0pozDPJ4RHQHK2bK5GbmID0PHIqcPVBWLue6NMp9Iqf
p7PnSPSzSnU0ZuPo+pU4Sn9KaRwYT+NAoaNxoLwdKqWLhofxMmKOnEK83guSsEj0DKKXD2cM
qyJrrfYBzowJXBsCdW9kVyUjNllNU7ocIV0HomdUIDxd5ZDJXeEZ2BxtmvmUTT46ZBzZhh1H
4nFZJYHSXQFdAVkQ9m/H/kRVKQ1jMS4nC8s9JdCR2uWqMEFTcAmx/+7EkfRya5uYfPKREnuR
nO6LoZO4wI3yMf9L1guJtpiUFDncPNyhIOf8vLRz2L/nFLIbuDuDOikGF1VEOaQ9+nRpBQ8J
KVFxMbhUjsVUgrh92/HfhQwUaiVwURhRVCi0S3lwQ3izYGolE9SkxOUKN4QBMj2PlDUp/CIi
KE8nfES1jx5Zx7djy4HzSKNJxCR3gUxPy3fEX0qt6rQPOK3HtXlwqlaKhObKYAR7lSnzBrJC
VS0Dc2xT7l78uS8XJokrukx9DU8Mj0aIpzu8wztjzLMvY2JrOSTGTOzcdAglQgL6+/T+o4hJ
zYZW4Q0fNx0ux+3D6o9ewBvrLpJ7gEWgPH1Cm6FZM/oEe5YqGdYyEvvj38zCq99uwcn0Ekhd
JShKOYINC2fhtZ8uUOuVlnlm/zHEpmaRDB5mZT8/9Rg2fv4mlhwtfY5NOduw8P2fsC8uD/Lg
FogMckEhLVO5NFDrrUTuiZD2/XBTW096aTGigKydWebxgPrr4a3YfjgOGYU6SGQSaPPTEfPv
Vuw4mVPWxo76uzVgG9/pmcpMSqcxj9w5pK5wlepRlBmH44dPISlHA6lcAn1JDpKO78HB5HIn
PxHPkahntVweelH19Ia3N308hOfUyThQUQ3rdDbqJ4ZhlWS1VQZfYwINm0Cdm3mMBXkoEAYt
KVm+QtwtfEy0KDS/pQuTVCC8DQk4GUNvx7IgdL91BDr5SlEc+zf+OJBKSlMSSlq0B73jlwaJ
J9oPHYuegSU4v+0P/HepBClk5ekdFgpJSVXy8UL0MMqH3sqMRlI3SNHw6j0ek3oboCWLm06V
hAObDyG9IAOZJSYEKBtoY5JfS3xsOg1pLmjRujk8g/3QyvscTuZfJCW4G8JbucFUmEATMi1n
SbzQftho3BjmCm3831i9N6VCGXOLaI4gWRrSi9KRlm9CoFs6UrNIZZAGoHkzYRKSIFgMH0ft
o0rA8TPZ0Evc0Kz3SAxs7wO5SQedgWyeJTFO+4BSRD0aTisZkLhuNh7dakJxdiayyeNZ4N95
1CCYXbEqlHs9zi99ELcsLZdcjjbTFuGL/7W4ykJmSE1Eqo40ZFkL9OwZfLW/ljwSPboFY+WF
NGhSaGcv5d2q4nkJw23vLMGjHdQ4vXwWZq2KxclVq3F0zPPoVR5H1hIT3rvaR8yaoylrO378
M4leWoIweNYCvDTEF5fWv4VnvjyI82t+wYFxr2KgS1kqSRhuf5fKbJ+N9a8+jC+PXsaBvefx
eI9ukGSlIp2W0CWu3TDto3dwWxDZXvXEps5HI+saVeW7DIEhgZCfK4JOXQjSu8hiGI8TMfkw
SDzQcsAo9G/phqLzO7HpYBqyz55GavRANNfb7+8SQ7Z4AcqfKe8U/LN+NxLUUoT3vQPDWhsQ
s2M9/k3T4FJaNoyR4VUcA+2PpRVv6VJfdBh6tY+Ym6NxoHzZ1kY66wqbip0zjCwXxMG4UvcW
BWvJ+TsTqD0C13bos1wKoR2Ip//egVgaUCIHTsQAeRayza/ol3H0jx/NZvDyICkuQjHNPxWK
WMUNDwQGekByKR8albp0mS2nGvlQflKpYCIvQdrRffjv/CUUkaNuRaC3UJonGmww5cYj7rIB
ErcWaBVBCyJkXWrZ0g+nj+cg7cJFFLdsDzdSiPNpcpYowxAZUrpoYq6zRZC4N0fLkMNIT8tD
amoB+ZelIIPqLQ1sgRbe1HhV5UMTVKX2yb6MLMpT4tYM7duQEiaUL1FAQX8YLjlvO1cR9Wg4
DUUW25xUXMwpk0gahqEvvoeZw6yXIK19xORwF5yTrAN1ydJe6cTvz6LrXpUFTWQ33D4SHVbH
4njhBcSkG9ErwLoQ+9/1cecQKyhQvr0xaqBgPQWaDRuCTt8cwv7iWJxLNmBga6v0skBEtw+C
9GgyCnJJaaHbri1uRJ+INUhOOoyFD07F9oG34I6Jd2Bgy2s7HNmvqe07JsH3qeyW0ALG3Czk
UIUkbuFoHelhVpq9o1oh6HAaUmj5PIteZiLU9vt7tcyiLgEIouXbBNq1rdcJir0HAvxpDEzL
h06jrf4YaONZtavcOBsHquA/J4ZhpLUDcVVktd2UfJUJNCgCdT7yScjierkeAAAgAElEQVSk
7UlPdLGhAJfIctXJhwYNmwjKBjmZH1p2aFbqb1I+6LkGl/qW2JhgpLKy4aLCq7R6+QhF6ZKP
YO+ZdGhdgtC+ezsEK3LJufoMMquzjmSzjnVx0YDLdPQAjfkwqWmX08/xVxVipGWMhALa7VV+
VXDOtsGx9LYSzVqFQpFGPnpJ8Yhxv0RWNhlCWrWAJzWaLqnqfOy2j9ALKnUEEW0nqh51wbk6
ecrRfvo3WDDwON546nMcKsrA6ZNkuRzaDLSqZxHE+YjJwpsjgpaiMnWJOEIWpknNQ64g1Cfj
6LFMUhRo2Zksm8HCY2Gr38oVoCxIiyD/QMFJXyLYOYVgdO6YXam9xDGRK8pmZqOh1Ajo2gnT
589H5K+rsG7zvzizbQXO/LMf93/8KSa3q8IsLq74WopFy31pl81IJUpveIkWs1x5s9Hfy9mb
N0yIFJN2cUppCVRQyQXFUAh2n7GajqV22tvpOGknncgaiopWuc6iknEkJtAgCdh96aktaQUr
S1SoMGrpkXH8Hxy5mAu1MJoJioNFIVIfP9BqJM0Hahg8WqJjV3J47dYNnaPboG2bcPJPEidR
9fMh36jCQggrP1L/KCo3Ci1bhcHHPOiVBWHglArfNSguNnvE1H/QZyA+sZhYSsnHpsyPQ/Dl
8PaCUlCzybk6PiGHrBj+8CMji0mTgtiEQptztFAZt+Zt0JxOdjVmncWpFDoHQxGG1i2FZUkR
fETQKG8fkyYVFxKLyuQwQkdv92LaTiqyHiJEuWZRpOGj8cT9XaAkNSRzy9f48Yz1gV3iRJEE
9MeoG2n3okmD49+9j8V/xyKrWIXCS6ex8bMPsYqOwTDRMvLAkT2trMcGGMwWXj0y9+9HTJlF
MjJERsZTD3goqE8bMpF4scT8TJqXCW2IJI+KRlsX6gn5B7F5TyblpkPK9r9xkh4aiXsbtGtm
w4pnIx/oC5EnaYNRD83B199/gSnR5JmoTsD+Q2lXVmttpaunawZ1LpKP78b+OIGPDH5RUQik
sUrqFwR/8zOVhrikYpLdgIL4BGQKSpXCHwFkRXbU3yGnnbICe3ItyLpcyr42qijmORJVjswF
LsKYbCpGbn7peGciZVrlbJy0mY4UfRuFimFoIxlfYgKNikCdW8RohEZU715Izf0XSSWZOLN7
A87QtC4hZ3LLrdESryh0ijqPXReKkPzvBvx6xBUKiR4anQxRQyagX4S4Qb76+UjgHuBPZzDR
jsJLR7Bp40V4u2jp1HmL4UNCDs9eNDJlaXFx3wYckI9D32Z1j9BRj9OlJyBZOFxWEYHetw5B
lPmAKiEYkXXkD2w6XWB2Ls7u0on4nsPOWOK7fz1+PaaE3KAyK0JXaeOKcLRt5YmEs6Sskf+e
ks5OijTnKYJPWcmO/hHa54aW57A7vhgX9/6G1EN0TINRB31IH9w5xHkfkHgKcUTUw5EQ1/ye
FBFjHsK4jTOx6mIKNizbiNs+ugPhVZVD4o/BM57Eofh52J52Fms/eAJrLfMgh/vI0c/gwRsF
xdkikNP+769Mwh4fGYqyC+g1Qo6IEbfjRg+KY2qHbh2V+PtgPnZ+MAUnFrtAoxyG9xY9fMWK
WpaVJHAo7hm9Did/T8HOD6fh34W0oYYUQT3tD2wz/i709aSIIt5P9LE/47nn/4AqOAyB7jo6
6kNY3/NAaKhvZSNpVRnVWnwjso9twM/HTTCQuap0FJDCvVlP9OtUthPZoxU6tz2LzHMFSNxD
fflfGQxaHT15cvhHd0Qz8peTuDjq75GIbKZE3AVyifhvPVafdCGlTmVTYalKtao/BlqVQkp9
aLACCalqqt86ZCipfvIoDO7lZJy0k27YbT0QaFWERARDu2+NVYHCcZlAAyZQ5xYxoe5SrzYY
RA74faKbI9DLDcJxScKbpULphYDwlgj3EcQg5+0+IzGkexRCvF0hMWigMcjg7hcAD5lYu71Q
WvXzkYXSoZi9WiOY1lLVOZfoCAjyu3AlGUND4CM4IQuO7n1vRJtgL1paol2bNDDVb9AgNSEF
Zj0stAUiKpQwM3UEtIiE2bWr6CISMmnyvZH4dmtFu/cUNODTWUlG8kXypsE21M9iq70MQe3b
k9O+kIUv2nYIrzgWxCkfUTDcENl3BAZ3aYkgL4Kqo00R5Ljv7SqF3iSm7VxF1kOUMNcukks7
TLi/P7UHWRZPr8XqY2U7gasogTToZrz4+QK8MOlmdGrmByU51ync/RHZZSj+N+tTfPp0H/hZ
W49JQQsK8yFDVDE5MUWgx/iX8M5DXclCR0ESiOFPv4S7e7cg6y/tEs7VwsPThTZP2BCMlKXu
j87DO9OGoEOwG/RqI9zDOmPUox/g/cntLfqQjbQWlwxGL0REekGXdREXEi7DFNQBQ6a9jicG
+zQARYx2+nl40JluZPkj64/wMiKnpchAOni668DRuG1we7NluTQoENprBI1ZLRHoKYdRb4TC
KwStew3DsC4BZTtPHfV3BSJ6DcaNbUIgPApa8nPVy9zg5R+CiCDLjU2OeVa+K+Y5qpyq0hXh
JbpPf3SM8IEb+cmqaSnDxZUqH+JsnLSdzrZLhBiGlSTjC0ygURGQzJs3zxRPPkYLFixoVBXj
yjCBJk9AdwDzJs4xnwM24RPawSicA8aBCTABJsAErimBmTNnIopcGmQy+qUOOR3fRf9afq6J
Reya1pgLYwJMgAkwASbABJjAdUKAFbHrpKFYTCbABJgAE2ACTKDxEeC1isbXplwjJlBKQNEX
L63bjJeYBxNgAkyACTRYAmwRa7BNw4IxASbABJgAE2ACjZ0AK2KNvYW5fkyACTABJsAEmECD
JcCKWINtGhaMCTABJsAEmAATaOwEWBFr7C3M9WMCTIAJMAEmwAQaLAFWxBps07BgTIAJMAEm
wASYQGMnwIpYY29hrh8TYAJMgAkwASbQYAmwItZgm4YFYwJMgAkwASbABBo7AT5HrLG3MNev
xgQKJneocR6cQd0Q8P7+bN1kzLkyASbABK4RAbaIXSPQXAwTYAJMgAkwASbABKwJVLKIHT58
2DoOf2cCTZpA2yZd+4ZdeR6vGnb7sHRMoCkT6Nmzp6jqV1LE+vfvLyohR2ICTYZA/4QmU9Xr
raLB15vALC8TYAJNhoBarRZV10qKmKhUHIkJVIOAVqNGclwsCnKyYTAYqpEDJ2ECTIAJMAEm
0DAJyGQyePsFoFlUa7gq3UULyYqYaFQcsSYEtBoNzh45iJDQMDTr2BEKOXe9mvDktEyACTAB
JtCwCOj0euTk5uHcscPo0ONG0cLxbCgaFUesCYHkuBgEh4SSIhYKiRu9KUh4n0hNeHJaJsAE
mAATaFgEXE1GhLopzUKl0JwXHiXOw5hnw4bVjo1WGmE50t/Pl5WwRtvCXDEmwASYQBMnQAYG
iau7ea7Lz8kRDYMVMdGoOGJNCAg+YeblSLaE1QQjp2UCTIAJMIGGTEAqNc91BoNetJSsiIlG
xRGZABNgAkyACTABJlC7BFgRq12enBsTYAJMgAkwASbABEQTYEVMNCqOyASYABNgAkyACTCB
2iXAuyZrlyfnVgMCmXe3qkFqTsoEmAATYAINkUDwr3wotqN2YYuYIzp8jwkwASbABJgAE2AC
dUiAFbE6hMtZ1yEBiR8UI2fBo2+k+EIkIXC59UW4dw8Sn4Zj1hEBd8hHPg9lG586yp+zZQI2
CPAYYANKbV5SQj7gWbh38avNTBt9XnWjiOmP4bN7pmPZBf4Zm/rvQTrELp+BZ35OgrGmwhhT
8Mszj+Dbc7qa5lTz9JJguIx4AG6tfcXnJW0OlzHT4drCy3YaiQdk7YfCpbmn7ft8VTwBJywl
bWbAe8ptkLub6EiTBsa9uvIoO0P5xGoEfHcewT+dQsCMUZCIJ9b4Y8oHwGtJDPzvbAtJv68Q
9ONKKP2uMSFnY8C1bAVZD3jMP4KAqX3F9ZPq9su6qpPN9qTnOXQIPB57ES4e17ht66qe1yDf
GihiGiTvXoI5M+7F2JHDMOyWOzD1uY/wy9EsiFG/TMVnsfrth3DnqBG4ZcKjeH99LFRVqnDN
yrdblP4kvvjfZHx9Vkwt7OZy9Q1jPL6bPhSDBg268hlyX+2WYUcUU94ufL81DOPHNIe5sc2y
jMKrW0uuSqHeMRujpi5FrKNqSyNw64Tm2LFiO3LoeWt0QdYV7s8vgke3gEZXtWteIUcsJaFw
mzgF0sPzUXyyAHAU95oLTgVWSx45FBM+hWfHbKi+nIzcOQ+icOMhNMbHpNpNYtLApDXCpNMC
WuHHkLUwiT9qqdrFNtiEpiIY0+Kgz6ZnQEyoVr8Uk3E149hsTw30f3wItXE8PEa0qWbGTS9Z
NZ31DUhZPxtPflOIYU++jm/6tYavJA+Jh7dg1c4jKOgU7IRkMQ4umoOVRRPx0ZpxCEn5FXNe
moNvI5fh6W5uTtIKt52U320krvWLVoXQRiOMdKBbZQ1Xgf6vrMVbw8p+CFQigUwuu7qudtOK
QGIzihGZOzbgTKe78YpXbbydSOB543B0/fxHbEsfiYnhlWtpUwy+yAQsCUTcBWWnXKjf3gJj
Y9FUJBFQdIiA8cCLKDl4hNvbFgFTPkxFehjz6MTxolwYVQb6NJYOYKvCTq4ZY6Caf3cVDRBO
8ryWt+21p/4/lGwjy+fwSVBseBe6pqxsi2yP6ilixQewYtlZdH76//DUSP8ys2ooogdPwZzB
9GDpj1PxRhSc/BGvv7MaB9NNCB/wEN54eSxaudAt9VFs2S3DiPfGoa2nAoi+G1OG/Ia3Nx/H
Y936wIXSpuz6Hpt0g/DA8FawUlcAZ+VTEfqM/fju08X481gaVK7h6HXXs3jhvm7wNdCy6f0L
oL61Lwr+O4q07HxIO9yH182y6bD/s3fw56Us4NV7sUMhR8cHv8Abt/jD4DS/PsjbdwjJ2u6Y
ufgp9KRqWQeJ3AUuLgKAsiAs4ZpluTpt1xw7sktMKDm/Dh/NXYEDGVIEd7kdI322YbPfbCx/
NLoyJ3pQDh2IReshnSFGvS0XS/PPXEz+eD+9r5YGg7oAJa0fxfcLJyHctRO6t43H5kO5uHts
gDiTujUIMd/l/eD11XLI/xiJ3D8ulqYIfhB+nz4M/fuDUHhGuEQK78AFCBgWBqmbDsaEHVD9
3xyUxJS9YSpawfXeN+AxqA9kSjWMsWdgInO546GfLBtTdiJ4ipC/BpoF3ZH/X3fHspwOgOu0
j+HRox1kAX7EpAQGa1lkEXCZ8Co8Bt4Eub+UDJNbUPLdO1DFFTqmIQmCy8S34XFTD8iD/alj
Z0K79E7k78ogy42TPKWBUIx+EZ6jhlNab6pODr2Bn4FmzUsoOnQZcMb4FC1BOyqDlkrkw2bD
a/wtkAfSC0ZBAjQ/TkfBzpSyOtlguU8LWc/hkOXtgOZCeQ8TotuJO+IL+E4aCKmnK1AYB+32
D1H4y07QOwstaTpgI6G6j3kZnrcMI9loqVmVCUPyMai+exqqeDL7OqqXWXpb8jiw2UvcIHGR
QXb7GgTfLqTXQ/fDKOT+Xlh37WeW014gWeqCXYKbkza3Jw9dN6ZBn3AKSC+BKfscdBe8YDC3
Y2jp89OzPWT+9DNoKILh9K8o+U8DxeDb4dKCfp+2JB7aP99A4fpDV5R3Kfl8jn+NLC9DIPcx
wXjxb6h+eA8lpzKvCCFmDHDaF+zUqVxuR8+9naTmy9L28Jj7O9yOTUT2DyeucHCYn51+6awO
NXke7D5ndtqTDCWGg1tgmDgRrlEfQhfDmpijbiDcq5Yipr9wGMfUXfBI/3IlzLKYMsuLIRk7
90rx7mdr8JbkJL6e+ToWbR2AuWP8YcpIRJKmBXq1KtdW5GjRpjlK/kpElrEPwqUGXDr0O9aq
2mCqDUXMafn6C/hx9lwc6T0b375Nk2jWPnz5yrv4NIKWUgeSrCTbwcQp+PLTGQgxJWHVzCfx
Ncn2Icl20zOzMebwPMhnf4fHOpSpgCLyOxAzCV8sfBwRCsfTfKUGIVmuSktlrbAne7+LWPLW
ChTfOR9r7mwJ7fEleOXVSyArsO1AeccleaNZhHuVFCbXAbPwy4DSLE2FR/Hl0+8iaUQ/BJsN
YEo0i/RDctxFmmoCYEPftC1LHV01pW5E8Z8HSHUPh8u4V+D53KvQz3yZVj684DJtObwHFEL9
80wUpeho3LsbHm2dKWJ66Nc/ioJdaSSxCabLwhKKkyDxgfyG3pAmfYyCb07B5NqCZHnpiiwq
dyj+txw+/VNJ+XoEhTm+cLnjbXi++BoMgqwO5ndI/KHoNQyyS5+iYMlBGGXk3J5GLwpwlqcb
FBO/g+9Yb2j/mIuC06kkVze4P/Y0FM3IR05QxJwGJ2UETYf3g0Ng/PU55B2jyc8nCpJsi0mQ
ekhllh5QtKMfwo1fBv1V47OtuDR3n/8JRZ8vgaGYLMidHobnPZ/AM3EwCg6Qsm2XjVD35fC9
3R3a1W8gP5Z4Bd0Gz8fGQREoI0XM1XF7mF0gbcvjGJkRhh1PI//P8+ZoptxkkjGqntqPLPN1
wU7vrM0dESqCZtE99HojhF9R8EFZXGnZ85M4F/lfkaLm2RXKaS/B677TUP1MffenYkh7Pg2v
e+fDPWY4is4KDURtPImeqdEmUv5nojiF+sfNz8Hz5aWQvHkXii9QKRIxY4CTPu7w2XT23Dti
YeOes3HEbr90VocaPg8ae2OQwXZ7ClXLOAZdEY01rWl1LEYYSzk4IlAtRcxUmI9CN1/4WBh3
KhVCu9oG3TsRnXyFIrpgRL8gzIlLJl2ZlDdVCVT0Bqmkl9zSIIFSSb9YrlahdNpToNfza7Gx
UqalF5yVrz+/GZuy++PZqT0RKGgKYf0x9c61mLbrODQDaSIjR+9B429GiLn2EejZIwi/lclm
C4jz/Pwx8M4RpIQJ+dlbAtTh3/kTcdtnpXWQt74fn30UbZ5MLNM6KqvY7xj+MQzFa+Naw52U
Ivfu9+Pu3uuxzA4nmIpRXOKKIKW1TFfLYk6uV0EX0vLqnIyXsHnu+9jf4Xl8Ma55mdYuhbu7
K0ouF9sr9RpeJ3+T+K1QH6G3SQravEi4vHcnXFvJoU0eAeWgUOhXTUHhX0mlMp0pgHzIEKfK
oykvAfqkMiuckNJWp6hUS1La0v6F5qQgC1kTc5qRLHeUypI0Eu4jQqFdMomMubnmlPolEXBd
+AzcOrwB7RFLy1CljOkC1TP5H2hOldbTHMPTSZ7nh8P9lnYwrBuHgl/PlloBZRq4qE1O618h
gbMytAGQSvKhPXMAugTB55AmUatQiSVZMaQBMhjPpVWyTFaKS3mZknZDU9Z8+oR8MuL9Abe2
rYEDR8tKssHGfSSUo9vDsJ7q/ltZ3X0iyYo2rjSNs3qVYbYlj3X9rv5OL2EF9IKSFHPlcqlj
Zj20H/XHumDn7aDN27+GAPL7lVXyWCCl9pfbkfPrOQf4SN70Q9SXBPiHYQgdTdauWGi2/QWt
oLCTbqsY+C1commX9Nk4wIP696jW0K+9FQWb6LsQziZC2nwD3G8fipIFf8HkKWIMcNYXnD6b
Dp57wyzHPNbYeml3kF9Zt6rUL53V4dyQmj0PxwS4Np6zUuq2/29MhyEbcAkOp/usiNmGdOWq
qCnGOhOJlw+81JnIF+YPeyYRqTd8fcqfSIl5SU6XrzMPvlKlO5QmNVTCq5E5vQkqFb16uClF
LaE5K9+YfRlZBUcw/8HjV8TTlUDRtgQlJlLEpB7wdC9XTiSQk6+WTlcqm3Vdhe/O86O6elca
fayykqP7w19h1iBSOIUg94C/lJ4sgZNFWkdlFeXlotC/PWgeKwuuCAzytuGPVnablo483DXE
1vqBt5KFomv2foQH15XnK/yrxrkVb+Gb3LH48PV+Fj53RpSUaKD09LCM3DD+zrxIyxa0tOFJ
bREWTe2aDs351PqR7bKFLOE3QO5KOwNnHEDQY+XiSCGR0+DmK+zQJJ+ZqgZneUZ0pjLToDke
W0nhEV2UszL2/EjO9qPgOXsT5P/8BNXmVdAkOKmLRElLeGSV1JTaRRzL4gJZ76fgOW40FOH0
Zq3PozGCOn9MxRuc7eQRXaFwpbY/YafuzuplO9favepMhhq3Xx2xO++gzROXIH/WVYNIGTNS
LujlRnwg37Ecsqy6kdInNLWgiBkvk28Zvbd6lO14NvOhNj5j8cJkSID27CW49+gCuewv6MSM
Ac7aoarPpuVzTysWjnm0dI7EMj97sZ3VoT6eB5rfyZcfEteqOMXYq2Djv14tRUzepie6uX2I
nftyMGyE9fKk9aRfGaKULC+RrhsRf5GesI6CCHpcJIuUe4uJCHSmz1BsZ+VLfQMQEDgCryx/
Cl2sFUXyy3IWzItXFtVwnp+1xclWCaSMegciKKjMWV+IYl6auTqto7L0x2LglXMZ2eTi0szM
SYPsrAIYhZcOW0HWHK0jC7A7lXwyunhblFRZFrW3q8V9E3L++RRvbwzCjIX3oZ3ls2RSISUp
F5F0fle1Oo8tOW1dM5HziOA/IqtCKUY9NRspOBV9iNjSpogqBVvdtzqyGATF3kIWUybUX01F
seCfVBFIEcvNr5J4V0V2lGczod5CP7ZVobJcxNTLURm6HKg+GApt5wlQ3k5LVh+S/97PU5G3
7mTp42OraGGA1ppogLZSpmzFjXwYPs9OhWn72yhYfoKU7Cg6HuJzOFHD6OVGeFMhzgZbmZbX
3Ul7OEha/QazSumIrZj2cyRIXbHTnbff5poM6BPJd7E2gnndmpZczM+v0I9pXU5oz4qHW+xz
LWIMcNQOVa2L5XPvjIeIuQ6VxhE7AjmqQ/OaPg/VOHfR7DNJzaYR4dphp0pN6bKYrlCZh0df
TJ4WjZMLZ+PLrWeQUUROzUUZOLdzBd5asBW5zgYxt+4YOUiPbSs3IIF2zhTHrsMPO+UYMqqr
8OhREJz1/w9LtiXYPgrDSfmF0aMw0nMHvl1xCBm0FAOjBrmJh3HgXJ5z64DUC96ehUi/VFwR
V96hBvlVpufwiqOyZNE3Y4D0b/z4RwJUNInmH/8Rv/znoKOTz0HPPm0Qd/RUmV+Gw6IrbuoS
1+DdT2Jol+dLGB5i1UU0p3HsQiv06WWtgIvLW3QsEzmW55PfR0QLu4u9DvNKPQm9lvzGurQR
n96sJNBY72l1zlhNZUk/B70uEPIwWpJLjYOh4pMAY4mj80Ic1NBZnsJ9fRgU7ZvZz8RZvZyV
IeRsoo0JJ75H0Xu3Iu/PbMhH004pQXe2x9KYQRZmAy1Phl1pFztxJZGdIZMchOqXNdDGxZCj
9wnoi0SchnfpAjmBh5MvWoTtujurlx15bGdWzavOZBDTfg6KrjN2jtpcWJpclQDh52yu/sTC
/25yw6jNYH6+qX/fQEuV5UHWCoroUCCR7gmPlZgxwFk71ETm2uZhr186q0NNn4fqMJCG0cYl
wZCZXp3UTS5NFcwNlmxkaD7+HSz0W4mlP72N6fMuQ6sMRGSH/hg7+TZ4S5KcgPRA7xlv4n8f
z8dz47+EyrMVBj3wFh6uOLrCsbM+mUkcl+/ijynvzQIWLsbjE5JQbFLCL7ITRj74HPo4kQzS
SAybeBN2fXEPbv1Ijq5PLMMHt7Wrfn7OyrO+r3BQlltXTH/jPsyb+yzuXCor3TV5cyg2W+dR
8V2KkKG3IXrNNvxbeBNuFnWEhRGpuzfhWP4lxL87FTvK8pJFT8PCd26Dx3/bcKzNGDxU10dX
GOOgORgD9/Gz4JXoCvVFWpcIbk8+SXYre/WN4q0o2RQL3zu+hjc+heos+Sm49YTczSIDr1Fk
xZkLxaEnkLN8L0xG8g27qIF7/xlwj11JBssISAu2QR1TQ1kKt0C143H4jP0C3oYvoDpPsrjS
QOWZBPXuIw6NVnZr6yzPoq1Q7X4GvncthJf+C2hS9JBG3wVXX9qxWZ6pM8bOyggeCmVHKflE
pcMkD4NLM1r2L6RjCYQXMbssC6GLvQAM70rLR39AJ0yY9uKmnodBMhXKCXfAuC8GRkMIZBUu
BXbJkJ8W8d73LHzuWkAuFAuhTjXRTs3bqTzh5CoKzuplT54Y6oO1FZzJIKb9ZJ3h8fFaKGMe
QvaiXVe9ZJrqil2IgzavtaVJEZCLt9HzHQffO6l/qz+BJllw1n8eHs1jUbJ0RykLMWOAs3Zw
ZlRwJKpTHi0dpa58z26/dDK+1PR5qCyJ8ytBtDzsdQm6uFqykDov8bqOUU1FTKizGyJvfghv
0ady8KeT3JdaXJai5ZRvsNriisTjBtw1ZynuqpyYrjh21i9N4qh8ihHcFw+8Q59K+TuTTYrw
4S9jCX0sg0x0fpUKpKWSKExbakNdknez4lSa1n5Z5KPa4S689V05NT1Of7XdgSJG1h2/wZg8
fC2+2piMgZMiIbUji9vQd7B5aJnsU5ZgxxQb9TCmYvW6JAx5+CUEiFWIbGQj7pIB+t+fRqEX
Hd0w4RO4echo7wEdQRC7n1yFRFhFyMdNt4qWyQpp9+LIN2hSpuMbdPkwpv9HSonFkRGWS5em
XGh+eAOqJ16Ex/Mj6ciDi9D+fJwUsbwaylIE7YrJyC94GR5DSJa7yS+sJB36A3Oh2X3VKrg4
NOZYTvI0FUL73TTka+bA467PoHRXETtyXNdZzizOGDsuA74d4DruQXiGkF+eIR+G+O0oWvRN
qTUC9lkajmylre20qaL1XNraTktO9rhvWYyCpSF0PMZs+NzqBYm+hPyE4qG75GQ5V8hv2YMo
0L4G94kLqe+oYbhAmwPKl2KdsrMvexUayElUx2xNotrPBRIF7Y6kc7kq6QsJdcNO4qjNDbW4
NOmEHj2c9Hw/SP2bjq8Y/ync6PEWjq8onvsuSi6UrxKIGQOctINTORxEqI2lScvs7T0nMbGO
x5eaPg8Oqmj7Fh2d0nsk5Lk7UBR/1dZo29H5KiTz5s0zxcfHY8GCBWYcbm7sXHf99AtBEZuG
ubLXbZ8j1oAqcmjXdvTo0QNSL/u/QZZ5d6sGJHEjFEXWC56fr960nvYAACAASURBVIRi663I
/S2+/iooCYPy1c3wKJqFnM//ujaHukY8Af+P7ob2TTr+4Ho918i6/TzGw+fr12BaMAgFRxyd
s1DDpm4M7GqIoNElr8s2de0Dz4+Xw+Xv8chZW7rVU1iqbkrBSCsDR44cQac+/c3VnjlzJqKi
oiCTyWgTmdz8r+WnBhaxpoSV68oEmECtETClQ/0L/c7gnBfg0XEPCk8V1VrWpRnRYNd3ChQS
8jHNodPcPdqR5e4ByDJX067OxvOGLmnVDfLsP1BwqjaVsKbBrpY7XAPP7lq2qQvkdJCyUrYe
+ZtjGziXhiNetRSxH374oeHUoKlL4jMao+jcnZ9/OFwvJO677756KbfRFOozCb6LPoSL9e5e
oYK0pKB+vw8KjplPcmxUwRT7BQp/oKNjtNUaghyzkNCRLm1vgbI//dKBDy0Dqy9Bf/pnFCxa
SMfUOE5q924DbCfTqTeR/Tw5vlVzv4fNutYFO5sFXQcXG2CbV4vaNW1Tep6z9qL4m6XQFlda
MK+W+E0hUbWWJgsLnfwsS1Mgx3U0E/DystphaIeLmKVJO0kb92V9DuLPJKHAltubRI6AqI5o
LmqTRePGVO+143aq9ya45gJwm19z5I2lwGuyNCl28m0sULkeTKDOCMj9EdWFfkOSQ8MmwO3U
sNunLqTjNq8LqpynDQLVO0fMRkZ8iQkwASbABJgAE2ACTKBqBFgRqxovjs0EmAATYAJMgAkw
gVojwIpYraHkjJgAE2ACTIAJMAEmUDUCrIhVjRfHriYB4cwUnfD7ccKhmhyYABNgAkyACTRG
Akajea6TVeF3klkRa4wdoQHWydsvADm59Fuf6hI6ApuVsQbYRCwSE2ACTIAJ1IQAzW3CHCfM
dd7+4jdh1cEhPjWpBadtrAQiolrj/LHSs878/Xzph6G56zXWtuZ6MQEmwASaIgHBEiYoYZkZ
lxDdrVflnx6zA4VnQztg+HLtEnBTuuOGHjciOS4GZ06fgcHQeE44r11SnBsTYAJMgAlcjwRk
ZGDw9vM3K2GuSiXU6vLfPXVcG1bEHPPhu7VIQOHqiqgbOtdijpwVE2ACTIAJMIHrmwD7iF3f
7cfSMwEmwASYABNgAtcxAbaIXceNd72JrsnJRMLxw8iTu8Mg5a53vbUfy8sEmAATYAL2CciM
evjqS9Dihi5QhkTYj2h1h2dD0ag4Yk0IaHMu48TJUwi/FIeorAS4aFU1yY7TMgEmwASYABNo
UAS0LkpkBkbhlNQVXRUugLu432JmRaxBNWPjFSbh+CGEXYpHRNqZxltJrhkTYAJMgAk0WQKC
gaFZ2mlz/ROMGrS4aYgoFuwjJgoTR6opgVxajgzOiq9pNpyeCTABJsAEmECDJiDMdbkyd9Ey
siImGhVHrAkBwSeMlyNrQpDTMgEmwASYwPVAQJjrDHyy/vXQVCwjE2ACTIAJMAEm0NQJsEWs
qfcArj8TYAJMgAkwASZQbwRYEas39FwwE2ACTIAJMAEm0NQJsCLW1HsA158JMAEmwASYABOo
NwKsiNUbei6YCTABJsAEmAATaOoEWBFr6j2A688EmAATYAJMgAnUG4GGrYjpj+Gze6Zj2QVD
vQFyWLD+NBbdPxlfn72G8tVHmQ4h8E0mwASYABNgAkygugQawMn6GiTv/h5LftqOo3GZKJZ6
o9kN/TBm8gOY0Nl5tUzFZ7Fm/nz8uPciSjyjMGjqC5g5ti2UzpOWxdAgZc+PWPbzVhyKzYBK
7ouQyLboOXwS7h/fHUGOCEnDMHDaVEhCJaJLM0c0ZePPWffj1/afY+n0tpBZpC7+5z3c97kS
s79/Dj1dq5ZtY4pdlH4ak5fuQ9Gw+7DlJneUEzYVnsHI93Zhm/5KbeUhPbD/+T7o1bBfKxpT
83BdmAATYAJMoJYIOFIzaqkIR9kYkLJ+Np78phDDnnwd3/RrDV9JHhIPb8GqnUdQ0CnYUWK6
V4yDi+ZgZdFEfLRmHEJSfsWcl+bg28hleLqbm5O0wm0Dkn+fjaeWFGLo4y9jUb92CFSUIOPC
YWz/bQcO3dwVo4MczO5Sf3QaPlxEOVZRJP4YOLInFi3fhnNT26JjeSuYCvDv1gNwv/kDdGmi
SphBlY01uw9izu6LiNVKYP0DEUaNFkWSQLw4fTD+51Oqnkno1P52Dpqp6g3EKZgAE2ACTIAJ
XBsC9Tt9FR/AimVn0fnp9/DULR0R6u0GN69QRA+egjkzR8DPPM8aUXDyR7w+dRxGjRyLB95e
jwRtGRz1UWzZLcOIyePQ1lMB7+i7MWWIHn9vPo7SKEak7Po/LNmWQCqXjVC8H98vP4dOQvmj
uyDCxw2u7v6I7DICD7zxfKkSZsrHwWUv46GJt2P0yFswbuosLPk3i6SiYLlMaF5GnYq5Kxbh
tScfwQP3TsJ0S1mvKl4C75tGoW/xTmw9WV4ZMpTl7cPWQ/4YOjwcx+yVaZmPbjfeHvMM1maa
pREEwomF9+KBJTEV9dVn7MeSV6bhjtEjccv4aXh95THkma4SpgF9MSHhv7148ZwC0ycPxD02
zJomlQZ5Ek90aRWEbuGB5k/XYPcqWEAbUHVZFCbABJgAE2jyBOpVEdOT5emYugsG9/evWHq6
0iJli1GGZOzcK8U9n63Bxl/fQq/ExVi0NQeCLmHMSESSpgVat1KUJZOjRZvmKLmYiCyzbmLA
pUO/Y+2BtFLFyaq59ReOlJbfz1b55ZFNcG01BrO+/hV/blqHhfd6YOsHi/BPsY2+Q7IeTGyH
pz/9BstXfISRmUvwdZmslWJ79MbI/nrs2XoUavNNI7L2bMWx8GEY3kYqvsxKGVtc0F/Aj7Pn
4kjUU/h2/Sb8vugh+G97F5/uzDPza3hBgjaDbkfCM8PwQltP0G/XVwrGEhVyZBKoCoqQY7E8
WSkiX2ACTIAJMAEmcB0QqFdFzFSYj0I3X/jYmnHL4Un8MOjeiejkK4fMpwtG9AtCclyy2eJj
UpVAJXGDsmIZTwKlkswoalWZcqNAr+fXYuPr/VGuqlm2SWn5PlfKN6Zh3UsTMH78ePrciwX/
6gCJL7oMGYi2/m6QSpWIHDERQ33O4WSCDS1AEoxB429GiLDUqIhAzx5BSCqTtXJfcEP3kTfD
Zd8WHBSUOmMGdm09g9YjhiFSVoUyK2dccUV/fjM2ZffHtKk9acmVlLuw/ph6ZyQO7zoOjYN0
9XpLIoGjTqnWSRDgloGXPlmJwNeWo/N3B/FXXrlFsF4l58KZABNgAkyACVSZQL36iEm8fOCl
zkS+sDpnS1MSqkPO+74+5VOzBC4uLtDl68wWHamSlqRMatBqVVl6E1QqFeCmhBgPsUrlS0Mx
+vVvcbPmAlY+8ybyBLlMxTi/YTG+/e0gEvP0kMoMKM4xYYjahk1J6gFP93K3cgnkchl0ulJZ
bbWMouNIDPF+EVv2F6Bf+7+x7UIHjH4jDNKqlGkr47JrxuzLyCo4gvkPHr+CV1cCRdsSlJD4
blXcY+CgqGt2y7vTzThDHxg1uBAfi7fX7cdd/yfDgad6oLMjDe6aScgFMQEmwASYABMQT6Be
FTF5m57o5vYhdu7LwbAR1suDNhQdq3pJQ1oi0nUj4i+Sdcrs8a7HRbJAubeYiEARk7K8TQ90
dfsIuw/kYtgwP1oelcLN2x9uBm+4lW1lNMT/gnnLL+P2+d9ibitPyAwxWPLgK8gTz9h+THk7
jBgWjCe37sLR5O1I6XY3BpHg4stUQK4wQF9hnDOhpFgFY5lvldQ3AAGBI/DK8qfQxZ6ia1+6
hn1H6oo2bTph0a0Z2LgiHhsud0fnkOtQs2zYlFk6JsAEmAATqGMCItSVOpTAoy8mT4vGyYWz
8SUty2UUaaApysC5nSvw1oKtyHWmi7l1x8hBemxbuQEJKrJUxa7DDzvlGDKqa5l/kRNnfaH8
qa1x7LPX8cXmU0gvUEOnKcSlc6dxscgEWiUzL3+qXYPRPJSUMPLjyju8ATtTbLr+VwOUFC2G
j0SL4/+HeRsy0XNkf9o1WoUyZS3QplkKjhzNNvvA6dK3YcOBwgo55B1GYaTnDny74hAyBAse
WZFyEw/jwLmG6iNWdYRGZ32k6llyCibABJgAE2AC14xAvVrEQKpN8/HvYKHfSiz96W1Mn3cZ
WmUgIjv0x9jJt8FbkuQEhAd6z3gT//t4Pp4b/yVUnq0w6IG38HDF0RVlzvqqNpg6vNVV53WV
ZixH5B3v4wsqf9mq9/DIfDrHzOSGwBadcdP9dJ5XH7I4ye7Co33fwSfTp8M3yBs+rTqjY6Tl
yV9ORHRyWxo2BCM6LMFn8UPwTB8v86YF+Q0iy6RzzMbMmISj857ElN/84RfSHd26ByGlvExF
O0x5bxawcDEen5BEdVPCL7ITRj74HPo4katB3jYWYM3OOOQFB6K1UoL8rBTaDHEB6mY3YmwQ
W8MaZJuxUEyACTABJuCQgGTevHmm+Ph4LFiwwBzRzU2Md5XDPEXf/OGHH0TH5Yi1S+C+++6r
3Qyd5LZ37170P1CF9jYk4cG3NiF59P1XDnQ1ZGPRqj34PDYLccUGuHn4oHeHDphNR48M9mJF
zEkT8G0mwASYABO4RgT29r0PPXv2NJc2c+ZMREVFQSaTke84bTykfy0/9WoRGzt27DVCwsVc
dwRkkVj29iNXiy0LwIz/jceM664yLDATYAJMgAkwAdsE6lUR8/Lysi0VX2UCTIAJMAEmwASY
QBMgUL/O+k0AMFeRCTABJsAEmAATYAL2CLAiZo8MX2cCTIAJMAEmwASYQB0TYEWsjgFz9kyA
CTABJsAEmAATsEeAFTF7ZPg6E2ACTIAJMAEmwATqmAArYnUMmLNnAkyACTABJsAEmIA9AqyI
2SPD15kAE2ACTIAJMAEmUMcEWBGrY8CcfSkBmVEPrUvZj2AyFCbABJgAE2ACjZSAMNfJDBU/
Au20lqyIOUXEEWqDgK++BJmBUbWRFefBBJgAE2ACTKDBEsgMag1fQ4lo+er1QFfRUnLE655A
ixu64KTUFcKPaQZfjoeLVnXd14krwASYABNgAkygnIBgCcsMikJaWDS6dIgWDYYVMdGoOGJN
CChDItDNxQUJRg2OhHeCQcZdryY8OS0TYAJMgAk0LAJygw4+BpVZCXMLDodarRYlIM+GojBx
pNog4OIXhPZDRtdGVpwHE2ACTIAJMIFGQYB9xBpFM3IlmAATYAJMgAkwgeuRAFvErsdWu05l
1mg0SEhIQF5eHgwGw3VaCxabCdgmIJPJ4OvrixYtWkCp5B3CtinxVSbABKwJsCJmTYS/1wkB
rVaL48ePIywszDxRuZC/GAcm0JgICH08KysLJ0+eRLdu3biPN6bG5bowgTokwEuTdQiXs75C
QLCECUpYeHg4T1DcMRolAeHlQujfQj8X+jsHJsAEmIAYAqyIiaHEcWpMIDc3F0FBQTXOhzNg
Ag2dQGBgIIT+zoEJMAEmIIYAK2JiKHGcGhMQfMIUCkWN8+EMmEBDJyBYxtgHsqG3EsvHBBoO
AVbEGk5bsCRMgAkwASbABJhAEyPAilgTa3CuLhNgAkyACTABJtBwCLAi1nDagiVhAkyACTAB
JsAEmhgBVsSaWINzdZkAE2ACTIAJMIGGQ4AVsYbTFiwJE2ACTIAJMAEm0MQIsCLWxBq80VXX
lI9TG5bi+z3pMNZV5UyZ2PPN2/jkr5S6K8Ou7Gqc/30Zfj9XCJOtOKZsHF27BD//m2P7fqU0
Glzc/h1WHS4QGb9SBnyBCTABJsAEapHA9aOI6Y/hs3umY9mFBvrTOPrTWHT/ZHx9toHKV4ud
pkFlRYrIkd9/wdZz+XWnWBhzcX7fPziZrhJXhqkE6acP4HBiibj4DoBqz/2AeYv+RmKxxHYs
Qzr2r/4Vu+KLRZYlgS71X/zfx9/iYJFN1c52OXyVCTABJsAE6oRAA/uJIw2Sd3+PJT9tx9G4
TBRLvdHshn4YM/kBTOj8/+3dB3gU5RqG4Xc3nRQCJJQQAqH3roAgvdkAGxZQsB8bdgEREbEB
InIsKCBd7IoIiIAeVFAUEZAuHQIEgpRQ0nfP7CaBEFIWQslMnrmuHE92p3z//S3syz+zs/mP
33l8vb4cNUozluzQiaDKat3naT3RrZo8/9a3JMX8MkMTP1mgPzftU4J3qMpEVVOTjreod49G
Cs9Ly15OV/btI1vZXN4wcyv/+HwN7P6yliTntIKvWg2epVc7FcvpySLzmPPQAr3Q53Utr9ZP
k97orjJnSXzRodI26tMhL2hzz8lqXKkAvXPGacHkmTrY4kn1aRwkj4btPKpfRj2sN/8Xq/iE
VMnbT4ElIlS1/pW6vs9tujLST1V73q+u8wZq0qyb1PT2ijLPv8Yueic5IAIIIHDBBfKKFhf8
4KcfIE0xswbrkXFH1eGR5zXuiioKtR3W9uXz9emivxRft3Q+9RzXsrFDNP1YT4380nizjvlc
Q54dovFRE9WvoX8+27qeTtOubwbr0QlH1f6hARp7RXWF+ZzQvs3L9cPMH/Vnmwa6KjyPtyx7
SdXt2NGD42RbJbCjhn3XVg7X5ETqCv33jteV9sx0PdHYdfNTm+zeRf0mqA7tmPullnmXUMDq
LzVz3dV6oE7RMHHs/F6zVoSo06hWxp8FT19aqTqyL1bHq/fWG/c1lU/ycR3avUbzP/lEQ585
rNcnPq6mAQ3U49pozZkzR2t7PqR6hehvAU9HyXoIIICAVQQKz1/Bx5dq6sT1qtdvih7tXDLj
X/9lVbPtnRrS1kgpqasMc4fiV8/Q88O+0LK9TkW0ulcvDOimaNf3Ryeu0PyfvdTple6qFmS8
Ude8WXe2m6mXvl+l/zRsJl9j25ifpmleSmvd1TFaXtk7ePw3TZu0QXX7TdajnTKP76+o+p10
l/HjXozrkZZNek0fzFur3YdT5Fuuga576Bnd3SxMdtepyb6vyzZosv5TbbXG9B6txKubK/6P
Fdrz7xHZa/XS85m1nnZsu7x9Mr4A2+ZjzE4Y77je3tr/1eN6eO0NmvZSR4W410/Rqv/eqdc1
QFMfcuq9XqN1vHNjxa/cqIOH443936pnn7xWlTMyZ+q+3zT5rQ80Z+UeJfhFqOlNj+vpXg3P
4g39tCIv3S+Jf+nrWbvV8O7X1WLRs5r01a+6vXYbBZ8WTJw68sd4PfnzJm3Yl6KgyEbqctcj
uuvKCLkjm3GqcPOc9/TfGT9rw/5E+YSWV4v7XtOgLmXTX2eOf7X84/c0YdZSbTlkU8kqzdXt
/gd1a6NSOc8WGYH5rVv7u2e83u4Z4d6Hc+8Xeqzvp6r8+sd63D17m6a1Y3up/VjX//dV6xdm
aWg7P+N1vE9Lp7+vaQtXaOsBh0pUb6VbHn5Y3WoEZpvxcmjPb0u0vWQLPVwzS/BMjtGiD9/R
5PkrtSfBX2VrVZHvUWf6OLN0yVY8SrVr15ZxRKnhZbosaJdufHmt1u11qGlluyJbtVL0lO+0
5J/7Va924flrIMsQ+L8IIIBAkRDIY4rn4o4/1Zh5WplYX21bZoagrMfPeNdN26VFS+y6dcyX
mvv5UDXd/oHGLki/SNmxb7t2JlVUlejMNy1vVaxaQSd2bJfxfmcsaYr98xt9tXRPjhdcp27+
K/34V+R0/MxanPKLvkb93/9cc+Z9rbdvC9SC18Zq8fEcrIxal22vrn5vjdOkqSPVef8EvZ9R
aw5rZ3vIroh2nVT57x/06+GM63iSVmnBYm+17VQn/U3XsVN/bKuhx0e/p3GTR+mGxCl6adoG
I64ZS+pmzRg8XH9VflTjZ83TN2PvVcmFL+utRYc9vI4o/wovzhpOHV4yS4vUVjd1qK2ON1wp
79++0Y/7s1/b5FRSSoia3PaMXn51gG6rvl/fDBugD1YmuMt0bPtCw/+7VIHXDNRbY9/ViGd7
q1ONUhnBJ0nrJ/bXoBk7FX3rIA0fPlA9K23TRwMHasqGHM8Xezh0L1W95XV9OHGiJk4cp4eb
uf+1oNUT+uvFuQm6/L5hGvPmAF0bvFzvDh6rP05k361xkf667bJXq6WqmTnJeVx/vtdfr845
qLp3DNJrr/ZXr0aBxtizb5vld2eKjsX+rdkL1ii1TH3Vi0j/I2+PqK2awXHasMHTi/zzOIaJ
n5oxY4batWuX58/kyZNNPEJKRwCBwi5QaP4p7Dx6REf9Q1U8Y3IoRzhbCbW+rafqhrrKrq9O
V4RryJZdRsQywlPCCSXY/BXgngJwLTYFBBhXhyUmGG9/rsVHTZ/6SnMzns3+n/TjFz91fMce
fT3gUU35x3XxfYDaDJyqJ5qFqn67K09uGtWpp9p/PEyrt6Wqdc1se7SVVusebVTGLVxeTRqH
a2ZGrZ6g20u3UaeaU/TD4n/V5bowJS5foN+C2ml4dWNrVw4xLFp276Cy7p2VUbvuLTR+zE/a
cndNVd34veb921KP92linF41ni7XUn1u+Ep9f1qlpHZt5MmJ2myjuTS/OmO1cNafKtHpTTUM
sMn7suvUodST+va7rbq2b5Uss5p2lW55i3pdXdP92GWNo5W8417N+OZ33dWwrfyOHNIRBalp
w0aqXc01+monx+M8+qs+/WanKveeoKevj3LPgDWqH6mEbffp089+U88X2ijwHEfvV7KCoqPT
Z8xcu3AeXazPvz2gyx4fozvbFHcHwWqPxeqP3lP10+rH1KxZlpkvxwHF7jdmzOqVNubT0hdn
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
r9NVnbuqe5/+mvD7gfTTde5Tfn00fOpYDXrkft112y26J2ttxpzaiY1faejdPXTV1cYs38Bp
WnUyWTp15LsBum7gvPSwmbZR4+9or6uG/E/HXUMzZrbevb2Pxm80ijjt1GRe+0zRb2OGaU7s
bn3z3G3q2fN2DZ13MGNmLw/D7E0xxvzn0k2q0qie/LM/l8fvSYuHq2ePHuqR8XNd1/bq8PCn
2uPKXn511ajaVi3989CFm2lM3auxS+IU0aKN3m8ZrS71G2pij2oK2LJK42IuZADMA4WnEEAA
AQQQuIAC9tDQ0ALtPnXzcq1MrK+2LUvqzLmXjEfSdmnRErtuHfOl5n4+VE23f6CxC9IDhmPf
du1Mqqgq0T4ZdXirYtUKOrFjuw6433vTFPvnN/pq6R6PrnVyJMVpxf+W6VC1uqrizpdO+UVf
o/7vf645877W27cFasFrY7XYnZZcu9+lZdurq99b4zRp6kh13j9B72fUpqS/NWHoVMV3Hakv
Zn+ht25O0k+L9mXUYVNw3fqK/GeV1hmXTjkOrNaalNIK+Wel/nH9vvdvrUmqowbRXhkHyvhP
nvv0UYvHBuuasuXV/dWP9dlnMzSka4ZrHoanHyB9TFt2hiiyfLEcenLG2icf8GvVX5/NnKmZ
xs/X04aoS7kSatLpCpV2TeTZAhQZVUK7tuxQau67KNAzaf/u0+9HfdWyWrj8MvYUHB2p5vaj
WrrzhEf9L1ABbIwAAggggMBFFijAVFh6pc6jR3TUP1TFffOo3FZCrW/rqbqhrsPVV6crwjVk
yy4jYhkhI+GEEmz+Csh85zWiQ0BAgJSYoPSTkz5q+tRXmpvH7qUULR7WVa2HuVayyR5UU7e9
0kXl3WcCQ1W/3ZUnt47q1FPtPx6m1dtS1bqma/XSat2jjcq4JcqrSeNwzcyozTi3qsWpbTTw
+moKNPYV2Li3bm46S5Mz9mYvV191/edp1dZU1duzWnGNbtE1u77T3zGpil7/t2Kqt1dNV77M
cv1Vaj77PFlo9v+Th+EZTXQe1/ETfgoPyB6NU/T7qJ66dkyWnacmKKVMpdOP5ojV98Nf1W+1
ntI73Ssoff92FSvmpxNxmQk2e4EF/91x7ITiFKByQVnq9glURKBTG+ITjCAWlH69W8EPxR4Q
QAABBBAoFAJnvIefbVW24OIKTtyvI67ziJmTWtl3Yg9RaPHM66Ns8vX1VcqRFPcpLntAMQU4
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
yfJzjLHdHQAAAABJRU5ErkJggg==
--------------pw0jGYTfq3uRW00Vzy1EWMph
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part3.bdSHgxaI.1sdNUAbV@gmail.com>
Content-Transfer-Encoding: base64

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
icMAAAAASUVORK5CYII=

--------------pw0jGYTfq3uRW00Vzy1EWMph--

--------------FcybVzMA8mvrtKpdmtoBPqQg--

--===============2341866122008833637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2341866122008833637==--
