Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7EF6DB294
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 20:13:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32BCB384B04
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 14:13:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680891198; bh=gHLxIEdrrReVxmcA5//ogBSBhWSbV+jbTmkPRPU06N4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uMA7/YbZ4YQSSRlGKsIg4bqai1CcwvA3AZSq9TAvKqO/IkCIR38FKG5+HdnZFgBrE
	 S6mI53EOo+Toy1f8Qt2OeZeGjM7aSAwcpWxtzS7Mv7Vr3qCEKbAbIZv0KLGNfKEZUd
	 TcT3qUJUjwU+lzKOw1uHnrp4p+p6AjLETicNONAsuPYX0XeHezMrKjIJIwSFdxkgAI
	 rAdiU3MUWwNk50lG06CkCjtPdE1HMwmHxdtjSm9+/L07T2iUuNiiBbIbnS0MU8JKqq
	 0TUqsL4hRMbrqD6rnK87JZLxEzZDmSN/sssl/k968ed1BWIbpELPtCw/4E4c40PLYu
	 jBLsvjQ8jZXtw==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D7869380CE5
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 14:12:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="2jbVncZO";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id n14so41273874qta.10
        for <usrp-users@lists.ettus.com>; Fri, 07 Apr 2023 11:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1680891158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QCE3mp8jE1zWQsYELFha4yYKpqOmtq+g4HytI8mSSPc=;
        b=2jbVncZOgap9U4M0wEmwwGz0jPwmAGZpaF606rOU7KbBmP943uHc5AKq7uvr8kkcGQ
         5wUQRHihzSuqJG8u4NLHxunQqHT5aMEvezCkie7hV6EpTNy0Zvy3E1eZT/yi+pVde8gj
         5cZ5gllFDZhd56bqbBOuswqcQcFKKGYTmvggX2let2VQk1HM9fqbN5iAU5aNekOsDsvB
         nFMKkixm5v+ZBz29WW9OhwB3tpoXmvCbGiZ+/ZKgXiSNGxB/60Etxk64ig2pSCEpZTw/
         UXe6EkxgwiVfjUSb+VwUgf8yCDuzVjcH9IOcEdTC+CCcJSfVr8MCBL+2alnUZ0QKHTdx
         IW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680891158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QCE3mp8jE1zWQsYELFha4yYKpqOmtq+g4HytI8mSSPc=;
        b=LzI8FzZ8VhE558xQYurSLCxHunBBYKaqhuHUPmlCyPvWov0NDbzjycDMUz+uGE10Ql
         IlRcF+PYbvOQqKLeWHSnUGujZ6PbMlK3UYMqkdC8hyjK6QYBMRiv2hP0RGS5RkgxFviq
         yqZOBnbnX4QhtR8XuLsxtExRVZ0uf00Q2/DpwJ3Y2B9qFXpb5xKT5xzJZgcVBQzRzdvi
         xSTa5MLmNfusSEF88MvM0iC3uhLWWD0du3ZSP7YKj31gfpCv0gQP25ljbYUGLpgxk0d3
         FS1mVArE9ugHbiKWCfz46s8nWsFNm0zvY7B1zaeywGytI5j7WtT7n1qbCA7Uf90LPFLK
         bdKg==
X-Gm-Message-State: AAQBX9dl+MI208TU/3TGxsL0QgVG4bfuZScYVTT7CyYqRABU49FcwUUC
	vyDrX4jGU4wXV77xEx2hhcZKZT/0Tma36gjPHepoz4OU
X-Google-Smtp-Source: AKy350YZvfpCZTZlOpSNDGJOXGhXW6EEZJdN221+aXWRAOc3wY2CEaWI78uVIqDfMYWxJGYiAwokdi7UTeUbVu1lbyM=
X-Received: by 2002:a05:622a:1452:b0:3e6:3632:1304 with SMTP id
 v18-20020a05622a145200b003e636321304mr1042102qtx.9.1680891157860; Fri, 07 Apr
 2023 11:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAPY8uVNRaqfjD=+a4wWfFPTAR5JiKfpkiGpru7aN48gVei=e-A@mail.gmail.com>
 <!&!AAAAAAAAAAAuAAAAAAAAADk5w6jZ0HRBqbYEaqPE+5YBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAAYa+0KIwYNRrN9iuP4xuCTAQAAAAA=@tlrnet.eu>
 <64195ea3-7f1c-4f73-32e0-dbcdee305b1b@gmail.com> <CAPY8uVODoepSuoMxL8zW9o=1ug3hBgtkFha4zaPfFv0P=W_qfw@mail.gmail.com>
 <dc19b613-52db-1929-bfe4-870ac06abe8a@ettus.com> <CAPY8uVNykOusBvhU3qOsfZc-Md0_TCB5gmEOnooLWiFCXEf1ag@mail.gmail.com>
 <CAPY8uVMysdDuovR15fnX4cKNiS5tMP47Z5yYf03h3Smn+HFWmg@mail.gmail.com>
 <bc4e7c60-5b80-8025-ede0-342180837eb8@gmail.com> <CAPY8uVPCyBvBcpdSHAUyJe1488kvx99f5bLBK731DYnrn+NoKw@mail.gmail.com>
 <cfd3a956-24af-f8f1-5a17-b7ca21b1f25a@gmail.com> <CAPY8uVN+QOkiZx=uCbmeJ1+K74FcjGT7aUeSY2-=WLGLj0NSaQ@mail.gmail.com>
 <dbe3f5ca-0a7e-9d41-bb9d-35dfeb72841a@gmail.com> <CAPY8uVMnbo=wQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gmail.com>
 <bda192cb-74f8-da5f-536e-11c287681ea6@gmail.com> <CAM4xKrq2Hnqr0U2fZMLZc4Ce+tLYd11zAe1kdX+4QvZimoCxoQ@mail.gmail.com>
 <CAPY8uVMigiysbqc9cBzYyFCh62QAN7ZabKtu3HX6N_rNdpPziQ@mail.gmail.com>
 <CAM4xKrp_K0LKAaEvvOzpdPWneA4Uo7fy3XtK8zjpdRMG56_c2A@mail.gmail.com>
 <CAPY8uVPtzX2BC-9eKtfhUhd52=XvXTSeB+23mgzK_q5tYe+B=w@mail.gmail.com>
 <CAPY8uVOV9h8NWcRUUjn6H=gk_o5b464ADoJmx5TKO17gdU_YJA@mail.gmail.com>
 <CAPY8uVNWKEpkMQg-NrG4BVqnagCJqA4St6LSpS+r99Znh1sV3g@mail.gmail.com>
 <CAPY8uVOJTuSad75yaKTxihmqjX-heE-a2SbwT4DZS2qo0WoYaA@mail.gmail.com>
 <CAPY8uVPPhkz7CcF7V9fu=t6UqhCD8NXfH_C4U_iL-u_ydH9N3g@mail.gmail.com>
 <CAM4xKrqnf63kqYbZXKiE6oK=6MbEZoHM44RmZ9iNS6aJGvG+jg@mail.gmail.com> <CAPY8uVMXNwDKGiTAwQ-zs+O-3CXQLFRK07Cm8RCQoyubL9-QBw@mail.gmail.com>
In-Reply-To: <CAPY8uVMXNwDKGiTAwQ-zs+O-3CXQLFRK07Cm8RCQoyubL9-QBw@mail.gmail.com>
From: Michael West <michael.west@ettus.com>
Date: Fri, 7 Apr 2023 11:12:26 -0700
Message-ID: <CAM4xKroo_Fmf4TybeTBLOs9uki1ncLuyaDpmu0sXhEtL4QGo2Q@mail.gmail.com>
To: Dor Ratz <dorratz12@gmail.com>
Message-ID-Hash: HZRLPS66CPJN7UZOKLN4L4HKJVWRK6FU
X-Message-ID-Hash: HZRLPS66CPJN7UZOKLN4L4HKJVWRK6FU
X-MailFrom: michael.west@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Spurs in UBX-160 Daughterboard with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZRLPS66CPJN7UZOKLN4L4HKJVWRK6FU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2853547044034371382=="

--===============2853547044034371382==
Content-Type: multipart/related; boundary="0000000000005f6bbe05f8c2f886"

--0000000000005f6bbe05f8c2f886
Content-Type: multipart/alternative; boundary="0000000000005f6bbd05f8c2f885"

--0000000000005f6bbd05f8c2f885
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dor,

The UBX is a direct conversion transceiver.  That means that you will have
DC offset and IQ images.  Running the calibration utilities can help reduce
the amplitude of them and using an LO offset can shift them away (if
your sample rate is 100 Msps or less), but it is up to you as the
application developer to figure out how to compensate for them.  For a
sample rate of 200 Msps, the best you can do is run the calibration
utilities to reduce the amplitude.

Regards,
Michael

On Fri, Apr 7, 2023 at 4:19=E2=80=AFAM Dor Ratz <dorratz12@gmail.com> wrote=
:

> Hey Michael,
>
> Just to clarify - the spurs can bee seen in spectrum analyzer, as I have
> this setup:
>
> USRP X310 -> spectrum analyzer
>
> If my *sample rate =3D 200MHz*, what do you recommend?
>
> Thanks
> Dor
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=92=
=D7=B3, 4 =D7=91=D7=90=D7=A4=D7=A8=D7=B3 2023 =D7=91-1:03 =D7=9E=D7=90=D7=
=AA =E2=80=AAMichael West=E2=80=AC=E2=80=8F <=E2=80=AA
> michael.west@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>> Hi Dor,
>>
>> I am glad to hear you had some success.  The integer-N step size is the
>> dboard_clock_rate, which defaults to 50 MHz.  You can change that by
>> setting "dboard_clock_rate=3D<rate>" in the device args.  Phase noise wi=
ll
>> increase as you reduce that rate.  But I believe the "spurs" you are see=
ing
>> when not a multiple of 50 MHz are likely the DC offset image (also known=
 as
>> LO leakage).  You can try using an LO offset to shift the image out of t=
he
>> spectrum.  Just do something like:
>>
>> uhd.tune_request_t(target_freq=3D1003e6,
>> rf_freq=3D1050e6,rf_freq_policy=3Duhd.tune_request_t.POLICY_MANUAL,args=
=3D"mode_n=3Dinteger"))
>>
>> Since you are using a 20 Msps sample rate, the rf_freq should be at leas=
t
>> 10 MHz away from the target_freq and a multiple of 50 MHz.  (The rf_freq=
 is
>> the LO frequency.)
>>
>> Regards,
>> MIchael
>>
>> On Mon, Mar 27, 2023 at 5:55=E2=80=AFAM Dor Ratz <dorratz12@gmail.com> w=
rote:
>>
>>> Hey Michael,
>>>
>>> When the target_freq is not integer multiple of 50MHz,  then we have
>>> spurs in -40dBc in variable offset of 1Mhz/2Mhz/10Mhz/20Mhz.
>>>
>>> What you recommend to do?
>>>
>>> Thanks
>>> Dor
>>>
>>> =D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 2=
2 =D7=91=D7=9E=D7=A8=D7=A5 2023, 3:10 =D7=90=D7=97=D7=94=D7=B4=D7=A6, =D7=
=9E=D7=90=D7=AA Dor Ratz =E2=80=8F<
>>> dorratz12@gmail.com>:
>>>
>>>> Hey Michael,
>>>>
>>>> Not sure if you got my question.
>>>>
>>>> I'm trying to understand what are the limitations/ disadvantages of
>>>> integer mode of the PLL as I set.
>>>>
>>>> Thanks
>>>>
>>>> Dor
>>>>
>>>>
>>>>
>>>>
>>>> =D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=92=D7=B3, =
14 =D7=91=D7=9E=D7=A8=D7=A5 2023, 9:32 =D7=9C=D7=A4=D7=A0=D7=94=D7=B4=D7=A6=
, =D7=9E=D7=90=D7=AA Dor Ratz =E2=80=8F<
>>>> dorratz12@gmail.com>:
>>>>
>>>>> Michael ,
>>>>>
>>>>> What are the limitations/ disadvantages of integer mode of the PLL as
>>>>> I set?
>>>>>
>>>>> Best
>>>>> Dor
>>>>>
>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=92=D7=B3, 14 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-9:26 =D7=9E=D7=90=D7=AA =
=E2=80=AADor Ratz=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>> dorratz12@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>
>>>>>> Hey,
>>>>>>
>>>>>> I've done it and the spur is gone, while the frequency is still
>>>>>> accurate as the fractional mode.
>>>>>>
>>>>>> This is the flowgraph:
>>>>>>
>>>>>> In center frequency I've written that:
>>>>>>  uhd.tune_request(target_freq, args=3D"mode_n=3Dinteger")
>>>>>>
>>>>>> [image: image.png]
>>>>>>
>>>>>> [image: image.png]
>>>>>>
>>>>>>
>>>>>> This is the flowgraph:
>>>>>> [image: image.png]
>>>>>> Thanks a lot
>>>>>>
>>>>>> Dor
>>>>>>
>>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=90=D7=B3, 12 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-23:24 =D7=9E=D7=90=D7=AA=
 =E2=80=AADor Ratz=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>>> dorratz12@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>>
>>>>>>> Hey Michael,
>>>>>>>
>>>>>>> Thanks a lot.
>>>>>>>
>>>>>>> 1.Can I just type in UHD USRP Sink block in RF options in center
>>>>>>> frequency this line?
>>>>>>>
>>>>>>>
>>>>>>> uhd.tune_request_t(target_freq =3D1003e6, args=3D"mode_n=3Dinteger"=
))
>>>>>>>
>>>>>>> 2. Or with older Gnuradio versions (tune request without t):
>>>>>>>
>>>>>>> uhd.tune_request(target_freq =3D1003e6, args=3D"mode_n=3Dinteger"))
>>>>>>>
>>>>>>>
>>>>>>> In order to transmit 1003MHz in integer mode with dsp tuning.
>>>>>>>
>>>>>>> Will both work? This is as Marcus suggested, If I understand
>>>>>>> correctly.
>>>>>>>
>>>>>>> Thanks
>>>>>>>
>>>>>>> Dor
>>>>>>>
>>>>>>> ---------- Forwarded message ---------
>>>>>>> =D7=9E=D7=90=D7=AA: Michael West <michael.west@ettus.com>
>>>>>>> =E2=80=AADate: =D7=99=D7=95=D7=9D =D7=95=D7=B3, 10 =D7=91=D7=9E=D7=
=A8=D7=A5 2023, 10:01 =D7=90=D7=97=D7=94=D7=B4=D7=A6=E2=80=AC
>>>>>>> Subject: Re: Spurs in UBX-160 Daughterboard with USRP X310
>>>>>>> To: Dor Ratz <dorratz12@gmail.com>
>>>>>>> Cc: Ettus Research Technical Support <support@ettus.com>, <
>>>>>>> usrp-users@lists.ettus.com>
>>>>>>>
>>>>>>>
>>>>>>> Hi Dor,
>>>>>>>
>>>>>>> Answers inline...
>>>>>>>
>>>>>>> Regards,
>>>>>>> Michael
>>>>>>>
>>>>>>> On Thu, Mar 9, 2023 at 10:37=E2=80=AFAM Dor Ratz <dorratz12@gmail.c=
om>
>>>>>>> wrote:
>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> Hi Michael and Marcus,
>>>>>>>>
>>>>>>>> Thank you.
>>>>>>>>
>>>>>>>>
>>>>>>>> *Several questions:*
>>>>>>>>
>>>>>>>> 1. Why does the spur still exist when doing your recommendation?
>>>>>>>> please see below the setup, maybe I need to change something?
>>>>>>>> By the way, all the time(even in original fractional mode) the spu=
r
>>>>>>>> does not exist in specific frequencies such as 1000MHz, 1110MHz,
>>>>>>>> 1200MHz...I guess that when (dboard_clock/target_frequency =3D int=
eger) then
>>>>>>>> we are OK.
>>>>>>>>
>>>>>>>> If you can share your gnuradio flowgraph / grc + py files  /
>>>>>>>> spectrum analyzer pictures that show the signal - it would be help=
ful.
>>>>>>>>
>>>>>>>>
>>>>>>> It looks like the integer-n mode is not properly configured.  The
>>>>>>> "mode_n=3Dinteger" needs to be part of the tune args and not the de=
vice
>>>>>>> args.  Try setting the frequency as Marcus suggested using:
>>>>>>>
>>>>>>>
>>>>>>> my_uhd_block.set_center_frequency(uhd.tune_request(target_freq=3D2.=
4e9,args=3D"mode_n=3Dinteger"))
>>>>>>>
>>>>>>>
>>>>>>>> 2. When you said about breaking coherency between channels - what
>>>>>>>> channels did you mean? the 2 different TX or Rx channels on 2 diff=
erent
>>>>>>>> UBX-160 daughterboards on the same X310?
>>>>>>>> If so, in case I'm using only a single UBX-160 in the X310, can I
>>>>>>>> ignore this issue because it won't exist in my case?
>>>>>>>>
>>>>>>>> "The int_n_step tune arg will explicitly change the step size by
>>>>>>>> changing the R divider value, which will break phase coherency bet=
ween
>>>>>>>> channels"
>>>>>>>>
>>>>>>>>
>>>>>>> It will break phase coherency between any channels on the same
>>>>>>> device or across devices.  If you are using a single channel or are=
 using
>>>>>>> multiple channels and do not require phase coherency, you can ignor=
e it.
>>>>>>>
>>>>>>>
>>>>>>>> 3. Do you still recommend putting "dboard_clock_rate=3D20e6" in th=
e
>>>>>>>> device arguments parameter when transmitting frequencies smaller t=
han 1GHz
>>>>>>>> as written here <https://kb.ettus.com/UBX#Phase_Synchronization>?
>>>>>>>>
>>>>>>>>
>>>>>>> That is required to keep phase coherency between channels.  If you
>>>>>>> are using a single channel or are using multiple channels and do no=
t
>>>>>>> require phase coherency, you can ignore it.  The default reference =
clock
>>>>>>> rate of 50 MHz provides best phase noise performance.
>>>>>>>
>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> *The spur still exists as before with your proposal- does the setu=
p
>>>>>>>> match your recommendation or should I change something??*
>>>>>>>>
>>>>>>>> Please see gnuradio flowgraph:
>>>>>>>>
>>>>>>>> ''mode_n=3Dinteger'' in Device Address and Device Arguments
>>>>>>>> center freq =3D 1003e6 [Hz]
>>>>>>>>
>>>>>>>> DSP tuning policy - didn't touch it so I guess it is default =3D
>>>>>>>> POLICY_AUTO.
>>>>>>>> dboard_clock_rate =3D didn't touch it so I guess it is default=3D5=
0MHz.
>>>>>>>>
>>>>>>>>
>>>>>>>> [image: image.png]
>>>>>>>> [image: image.png]
>>>>>>>>
>>>>>>>> [image: image.png]
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> *This gnuradio flowgraph moves the signal to the original frequenc=
y
>>>>>>>> of the spur(=3Dfrequency offset of 3-6KHz, that's bad) but elimina=
te the
>>>>>>>> original spur itself*
>>>>>>>>
>>>>>>>> I guess that anyway the frequency resolution range is:
>>>>>>>>
>>>>>>>>    - When dboard_clock_rate=3D50MHz -> ranges from 50MHz when R
>>>>>>>>    divider=3D 1[-] up to 0.05[MHz] when R divider =3D 1000[-]
>>>>>>>>    - When dboard_clock_rate=3D20MHz ->ranges from 20MHz when R
>>>>>>>>    divider=3D 1[-] up to 0.02[MHz] when R divider =3D 1000[-]
>>>>>>>>
>>>>>>>>
>>>>>>>>  center freq :  uhd.tune_request(target_freq, dsp_freq=3D0,
>>>>>>>> dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)
>>>>>>>>
>>>>>>>> ''mode_n=3Dinteger'' in Device Address and Device Arguments
>>>>>>>>
>>>>>>>> dboard_clock_rate =3D didn't touch it so I guess it is default=3D5=
0MHz.
>>>>>>>>
>>>>>>>>
>>>>>>>> [image: image.png]
>>>>>>>> [image: image.png]
>>>>>>>>
>>>>>>>> [image: image.png]
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> Thanks
>>>>>>>> Dor
>>>>>>>> ---------- Forwarded message ---------
>>>>>>>> =D7=9E=D7=90=D7=AA: Michael West <michael.west@ettus.com>
>>>>>>>> =E2=80=AADate: =D7=99=D7=95=D7=9D =D7=92=D7=B3, 7 =D7=91=D7=9E=D7=
=A8=D7=A5 2023 =D7=91-4:22=E2=80=AC
>>>>>>>> Subject: Re: Spurs in UBX-160 Daughterboard with USRP X310
>>>>>>>> To: Marcus D. Leech <patchvonbraun@gmail.com>
>>>>>>>> Cc: Dor Ratz <dorratz12@gmail.com>, Marcus M=C3=BCller <
>>>>>>>> marcus.mueller@ettus.com>, <mmueller@gnuradio.org>,
>>>>>>>> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>, Eduard
>>>>>>>> Sivolenko <eduard.sivolenko@ni.com>, <derek.mckay@utu.fi>, Michael
>>>>>>>> Dickens <michael.dickens@ettus.com>, <claudio.franchini@tlrnet.eu>
>>>>>>>>
>>>>>>>>
>>>>>>>> Hi Dor,
>>>>>>>>
>>>>>>>> There are 2 arguments that can control the integer-N step size:
>>>>>>>> the int_n_step tune arg and the dboard_clock_rate device arg.  The
>>>>>>>> int_n_step tune arg will explicitly change the step size by changi=
ng the R
>>>>>>>> divider value, which will break phase coherency between channels. =
 The
>>>>>>>> 'dboard_clock_rate' value in the device args controls the referenc=
e clock
>>>>>>>> rate, which will keep the R divider set to 1 and support phase coh=
erency
>>>>>>>> between channels.  Both will change the PFD frequency for the PLL.=
  The UBX
>>>>>>>> was designed for a PFD frequency of 50 MHz, which is why 50 MHz is=
 the
>>>>>>>> default reference clock rate and the default R value is 1.  Reduci=
ng the
>>>>>>>> PFD frequency will result in more phase noise.  My recommendation =
is to set
>>>>>>>> the 'mode_n=3Dinteger' in the tune args, let the DSP tuning take c=
are of the
>>>>>>>> offset by leaving the DSP tuning policy to the default (POLICY_AUT=
O), and
>>>>>>>> use the highest dboard_clock_rate possible (up to 50 MHz).  The hi=
ghest
>>>>>>>> 'dboard_clock_rate' can be achieved based on the required bandwidt=
h of the
>>>>>>>> application by using the formula:
>>>>>>>>
>>>>>>>> dbaord_clock_rate =3D (160 MHz - bandwidth) / 2
>>>>>>>>
>>>>>>>> I hope this helps.
>>>>>>>>
>>>>>>>> Best regards,
>>>>>>>> Michael E. West
>>>>>>>>
>>>>>>>> On Mon, Mar 6, 2023 at 3:07=E2=80=AFPM Marcus D. Leech <
>>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> On 06/03/2023 17:13, Dor Ratz wrote:
>>>>>>>>>
>>>>>>>>> Hey,
>>>>>>>>>
>>>>>>>>> Thanks a lot.
>>>>>>>>>
>>>>>>>>> *Several questions after thinking about it:*
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> 1. Do you mean R&D of Ettus or GNURadio? Can you address me to th=
e
>>>>>>>>> relevant email address?
>>>>>>>>>
>>>>>>>>> This thread really belongs on the usrp-users mailing list now,
>>>>>>>>> rather than discuss-gnuradio, i have copied usrp-users, and
>>>>>>>>>   removed discuss-gnuradio.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> 2. Let me see if I get it right for USRP X310 with UBX-160:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    - Motherboard clock =3D MCR  =3Dmaster_clock_rate  =3D main cl=
ock
>>>>>>>>>    rate =3D default value is 200MHz. The 10MHz REFCLK is used to =
set it.
>>>>>>>>>    - Daughterboard Clock Rate in Hz =3D dboard_clock_rate =3D def=
ault
>>>>>>>>>    value is 50MHz, need to change it to 20MHz for center frequenc=
ies under
>>>>>>>>>    1GHz do decrease spurs.
>>>>>>>>>    This is actually the clock that the motherboard injects into
>>>>>>>>>    the daughterboard , i.e it is the reference clock of the MAX28=
71 PLL which
>>>>>>>>>    is on the daughterboard.
>>>>>>>>>    - According to this link
>>>>>>>>>    <http://www.radio-science.net/2017/12/adventures-in-usrp-tunin=
g.html>,
>>>>>>>>>    if I set "mode_n=3Dinteger","int_n_step=3D100e3", in Device Ad=
dress parameter
>>>>>>>>>    in USRP Sink block, then the frequency resolution on the PLL i=
s:
>>>>>>>>>    frequency resolution [Hz] =3D int_n_step [Hz] =3D
>>>>>>>>>    dboard_clock_rate [Hz] / (R divider  [-])
>>>>>>>>>
>>>>>>>>>    For example:
>>>>>>>>>    100e3 [Hz] =3D 50e6 [Hz] / 500
>>>>>>>>>
>>>>>>>>>    So ->* the frequency resolution of the PLL is set by the
>>>>>>>>>    "int_n_step" parameter* -> it calculates the R divider [-] in
>>>>>>>>>    the PLL relating to dboard_clock_rate and desired int_n__step.
>>>>>>>>>    I guess that the result must be in the range of allowed PLL's
>>>>>>>>>    R divider values from 1 to 1023.
>>>>>>>>>
>>>>>>>>> 3.   Do I must set the  "int_n_step" parameter as follows?
>>>>>>>>>
>>>>>>>>> 4.  Does the frequency resolution range from 50MHz when R divider=
=3D
>>>>>>>>> 1[-] up to 0.05[MHz] when R divider =3D 1000[-] ?
>>>>>>>>>
>>>>>>>>> Referring to this sentence in max2871 PLL datasheet
>>>>>>>>> <https://www.analog.com/media/en/technical-documentation/data-she=
ets/max2871.pdf>
>>>>>>>>> :
>>>>>>>>> ""The minimum R counter divide ratio is 1, and the maximum divide
>>>>>>>>> ratio is 1023"
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> 5. Where can I find the relevant source code? I've looked here
>>>>>>>>> <https://github.com/EttusResearch/uhd> but I'm not sure where the
>>>>>>>>> daughterboard code/relevant code is.
>>>>>>>>>
>>>>>>>>> Thanks
>>>>>>>>> Dor
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =
=D7=91=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-19:10 =D7=9E=D7=90=D7=
=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>>>>>> patchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>>>>>
>>>>>>>>>> On 06/03/2023 08:54, Dor Ratz wrote:
>>>>>>>>>>
>>>>>>>>>> Hey Marcus,
>>>>>>>>>>
>>>>>>>>>> Thanks a lot.
>>>>>>>>>>
>>>>>>>>>> I'm using external 10 MHz reference clock (REFCLK) with
>>>>>>>>>> 1e-12[Hz] frequency resolution -> it feeds my PLL in the UBX-160
>>>>>>>>>> daughterboard in the X310 USRP.
>>>>>>>>>>
>>>>>>>>>> The REFCLCK input to the X310 is used to control the
>>>>>>>>>> master-clock(s) on the motherboard, which, in turn produce clock=
s for
>>>>>>>>>>   the daughtercards--but the daughtercards never see your
>>>>>>>>>> external clock directly.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> So, *when defining "mode_n=3Dinteger"* in the Device Address
>>>>>>>>>> parameter of the UHD: USRP Sink block in GNURadio to set PLL in =
integer-N
>>>>>>>>>> mode, *what is exactly R-DIVIDER=3D reference divider of the PLL=
*?
>>>>>>>>>>
>>>>>>>>>> I've looked in the PLL (max2871) datasheet:
>>>>>>>>>>
>>>>>>>>>> https://www.analog.com/media/en/technical-documentation/data-she=
ets/max2871.pdf
>>>>>>>>>>
>>>>>>>>>> According to it:
>>>>>>>>>> "The minimum R counter divide ratio is 1, and the maximum divide
>>>>>>>>>> ratio is 1023"
>>>>>>>>>>
>>>>>>>>>> I understand that if for example, the R counter=3D(R-DIVIDER)=3D=
1000
>>>>>>>>>> -> the frequency resolution is 10MHz/1000 =3D 0.01MHz=3D 10KHz, =
correct?
>>>>>>>>>>
>>>>>>>>>> But I don't know what is the R-DIVIDER chosen in the PLL with th=
e
>>>>>>>>>> settings in gnuradio.
>>>>>>>>>>
>>>>>>>>>> Thanks,
>>>>>>>>>>
>>>>>>>>>> Dor
>>>>>>>>>>
>>>>>>>>>> You'd have to go looking through the source code.  Unless someon=
e
>>>>>>>>>> from R&D happens to know off the top of their heads.
>>>>>>>>>>   10 years ago, I kept all of this in my head--when there were
>>>>>>>>>> FAR fewer products to keep track of and the codebase was
>>>>>>>>>>   more modest.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D=
 =D7=94=D7=B3, 2 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:55 =D7=9E=D7=90=D7=
=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>>>>>>> patchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>>>>>>
>>>>>>>>>>> On 02/03/2023 13:09, Dor Ratz wrote:
>>>>>>>>>>>
>>>>>>>>>>> Hey,
>>>>>>>>>>>
>>>>>>>>>>> Do you know how to assess the RF PLL resolution in integer-N
>>>>>>>>>>> mode?
>>>>>>>>>>>
>>>>>>>>>>> I've looked in ANALOG max2871 PLL datasheet - not sure I found
>>>>>>>>>>> the answer there.
>>>>>>>>>>>
>>>>>>>>>>> https://www.analog.com/media/en/technical-documentation/data-sh=
eets/max2871.pdf
>>>>>>>>>>>
>>>>>>>>>>> The Ettus team is CC here too - it will be helpful to know what
>>>>>>>>>>> you suggest.
>>>>>>>>>>>
>>>>>>>>>>> Thanks,
>>>>>>>>>>> Dor
>>>>>>>>>>>
>>>>>>>>>>> It will depend on the REFCLK that is being used by that board (=
I
>>>>>>>>>>> do not happen to know off the top of my head), and by
>>>>>>>>>>>   whatever flexibility in reference divider the PLL has.
>>>>>>>>>>>
>>>>>>>>>>> In an Integer-N PLL (and you can spend quite a bit of time
>>>>>>>>>>> learning how PLL synthesizers work online), the "step size" is
>>>>>>>>>>>   dependent on the REFCLK, which itself may have a divider on
>>>>>>>>>>> it.  So, let's say your REFCLK is 10MHz and there's a divider
>>>>>>>>>>>   that can divide the reference clock by up to 10000, then your
>>>>>>>>>>> minimum step size is 1kHz.   This is in tension with the
>>>>>>>>>>>   fact that having a high ratio between the desired frequency
>>>>>>>>>>> and the reference frequency tends to create signal-quality issu=
es,
>>>>>>>>>>>   like, as I recall, phase noise.  But I'd research the
>>>>>>>>>>> datasheet and the overall concept of PLL synthesis.
>>>>>>>>>>>
>>>>>>>>>>> My recollection on the X310 is that the reference-clock
>>>>>>>>>>> frequency is 100MHz, but that's just a hazy memory.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=
=9D =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:10 =D7=9E=D7=90=
=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>>>>>>>> patchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>>>>>>>
>>>>>>>>>>>> On 01/03/2023 13:14, Dor Ratz wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> Hey Marcus, How are you?
>>>>>>>>>>>>
>>>>>>>>>>>> Not sure if you got my email.
>>>>>>>>>>>>
>>>>>>>>>>>> Do you know anyway I can change transmitted frequency using PM=
T
>>>>>>>>>>>> message when doing your solution?
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> In addition, something that seemed to help me:
>>>>>>>>>>>>
>>>>>>>>>>>> I used this:
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> https://lists.gnu.org/archive/html/discuss-gnuradio/2011-09/ms=
g00309.html
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> In the USRP Sinc block, in center frequency parameter, I've pu=
t
>>>>>>>>>>>> this:
>>>>>>>>>>>>
>>>>>>>>>>>> uhd.tune_request(target_freq=3D1003e6, dsp_freq=3D0,
>>>>>>>>>>>> dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> With this, the transmitted 1003MHz signal is cleaner and the
>>>>>>>>>>>> spur is now further away at 16KHz offset with amplitude of 60d=
Bc below the
>>>>>>>>>>>> signal.
>>>>>>>>>>>>
>>>>>>>>>>>> This alone cleans the spectrum!
>>>>>>>>>>>>
>>>>>>>>>>>> In addition, I type "mode_n=3Dinteger" in the
>>>>>>>>>>>> Device Address parameter of the UHD: USRP Sink block, but it
>>>>>>>>>>>> doesn't seem to affect. The tuning without DSP correction in t=
he FPGA seems
>>>>>>>>>>>> to just be sufficient to clean the spectrum.
>>>>>>>>>>>>
>>>>>>>>>>>> Why is that? Do you recommend using something else?
>>>>>>>>>>>>
>>>>>>>>>>>> Thanks
>>>>>>>>>>>>
>>>>>>>>>>>> Dor
>>>>>>>>>>>>
>>>>>>>>>>>> Note that only works if the underlying RF PLL has enough
>>>>>>>>>>>> "resolution" to make that work--particularly in integer-N mode=
.
>>>>>>>>>>>>
>>>>>>>>>>>> I'm surprised that the DDC/DUC have such significant "close in=
"
>>>>>>>>>>>> spurs.    I don't know if there's anyone from the R&D team
>>>>>>>>>>>>   on here who can authoritatively comment, but this is a bit o=
f
>>>>>>>>>>>> a surprise.
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=
=9D =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-15:08 =D7=
=9E=D7=90=D7=AA =E2=80=AADor Ratz=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>>>>>>>>> dorratz12@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>>>>>>>>
>>>>>>>>>>>>> Hi Marcus,
>>>>>>>>>>>>>
>>>>>>>>>>>>> Can I pass the desired center frequency with a PMT message?
>>>>>>>>>>>>> I want to dynamically change the transmitted center frequency
>>>>>>>>>>>>> of UHD: USRP Sink block.
>>>>>>>>>>>>>
>>>>>>>>>>>>> So static frequency in the block is not sufficient.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Thanks
>>>>>>>>>>>>> Dor
>>>>>>>>>>>>>
>>>>>>>>>>>>> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=
=9D =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-13:44 =D7=
=9E=D7=90=D7=AA =E2=80=AAMarcus M=C3=BCller=E2=80=AC=E2=80=8F <=E2=80=AA
>>>>>>>>>>>>> marcus.mueller@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Hi Dor,
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> >  1. How to change the to integer_n tuning? Should I just
>>>>>>>>>>>>>> type "mode_n=3Dinteger" in the
>>>>>>>>>>>>>> >     Device Address parameter of the UHD: USRP Sink block i=
n
>>>>>>>>>>>>>> the grc?
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> yes. Or, better, instead of just tuning to the target
>>>>>>>>>>>>>> frequency, you can pass a
>>>>>>>>>>>>>> uhd.tune_request_t to
>>>>>>>>>>>>>> uhd_usrp_{sink,source}.set_center_frequency, like this:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> my_uhd_block.set_center_frequency(uhd.tune_request_t(
>>>>>>>>>>>>>>                target_freq =3D 2.4e9,
>>>>>>>>>>>>>>                args=3D"mode_n=3Dinteger"))
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> (you can also use a uhd.tune_request_t in the RF frequency
>>>>>>>>>>>>>> fields of the GRC block)
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Note that you're probably best off using tune_request_t
>>>>>>>>>>>>>> anyway, as it allows you to tune
>>>>>>>>>>>>>> your LO far away from your band of interest, given the analo=
g
>>>>>>>>>>>>>> bandwidth allows for that,
>>>>>>>>>>>>>> using `target_freq=3D` and `rf_freq` or `dsp_freq`.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> For more information on tuning, see the UHD manual [1]
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> >  2. How to know for sure what the mode(integer of
>>>>>>>>>>>>>> fractional) of the NCO is? Can I print
>>>>>>>>>>>>>> >     its status/get it somehow?
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> looking at the UHD source code: the routines responsible for
>>>>>>>>>>>>>> tuning just themselves check
>>>>>>>>>>>>>> for "mode_n" being set to "integer" in the device or tune
>>>>>>>>>>>>>> request arguments.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Best regards,
>>>>>>>>>>>>>> Marcus
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> [1]
>>>>>>>>>>>>>> https://files.ettus.com/manual/page_general.html#general_tun=
ing
>>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>

--0000000000005f6bbd05f8c2f885
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dor,<div><br></div><div>The UBX is a direct conversion =
transceiver.=C2=A0 That means that you will have DC offset and IQ images.=
=C2=A0 Running the calibration utilities can help reduce the amplitude of t=
hem and using an LO offset can shift them away (if your=C2=A0sample rate is=
 100 Msps or less), but it is up to you as the application developer to fig=
ure out how to compensate for them.=C2=A0 For a sample rate of 200 Msps, th=
e best you can do is run the calibration utilities to reduce the amplitude.=
</div><div><br></div><div>Regards,</div><div>Michael</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 7, 20=
23 at 4:19=E2=80=AFAM Dor Ratz &lt;<a href=3D"mailto:dorratz12@gmail.com">d=
orratz12@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"rtl"><div dir=3D"ltr">Hey Michael,</div><div =
dir=3D"ltr"><br></div><div dir=3D"ltr">Just to clarify - the spurs can bee =
seen in spectrum analyzer, as I have this setup:</div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr">USRP X310 -&gt; spectrum analyzer</div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr">If my <b>sample rate =3D 200MHz</b>, what do=
 you recommend?=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Than=
ks</div><div dir=3D"ltr">Dor</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=
=D7=9A =D7=99=D7=95=D7=9D =D7=92=D7=B3, 4 =D7=91=D7=90=D7=A4=D7=A8=D7=B3 20=
23 =D7=91-1:03 =D7=9E=D7=90=D7=AA =E2=80=AAMichael West=E2=80=AC=E2=80=8F &=
lt;=E2=80=AA<a href=3D"mailto:michael.west@ettus.com" target=3D"_blank">mic=
hael.west@ettus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Dor,<div><br></=
div><div>I am glad to hear you had some success.=C2=A0 The integer-N step s=
ize is the dboard_clock_rate, which defaults to 50 MHz.=C2=A0 You can chang=
e that by setting &quot;dboard_clock_rate=3D&lt;rate&gt;&quot; in the devic=
e args.=C2=A0 Phase noise will increase as you reduce that rate.=C2=A0 But =
I believe the &quot;spurs&quot; you are seeing when not a multiple of 50 MH=
z are likely the DC offset image (also known as LO leakage).=C2=A0 You can =
try using an LO offset to shift the image out of the spectrum.=C2=A0 Just d=
o something like:</div><div><br></div><div><span style=3D"font-size:12.8px"=
>uhd.tune_request_t(</span><span style=3D"font-size:12.8px">target_freq=3D1=
003e6,</span><span style=3D"font-size:12.8px">rf_freq=3D1050e6,rf_freq_poli=
cy=3Duhd.tune_request_t.POLICY_MANUAL,args=3D&quot;mode_n=3Dinteger&quot;))=
</span><br></div><div><span style=3D"font-size:12.8px"><br></span></div><di=
v><span style=3D"font-size:12.8px">Since you are using a 20 Msps sample rat=
e, the rf_freq should be at least 10 MHz away from the target_freq and a mu=
ltiple of 50 MHz.=C2=A0 (The rf_freq is the LO frequency.)</span></div><div=
><br></div><div>Regards,</div><div>MIchael</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 27, 2023 at 5:5=
5=E2=80=AFAM Dor Ratz &lt;<a href=3D"mailto:dorratz12@gmail.com" target=3D"=
_blank">dorratz12@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"auto">Hey Michael,<div dir=3D"auto">=
<br></div><div dir=3D"auto">When the target_freq is not integer multiple of=
 50MHz,=C2=A0 then we have spurs in -40dBc in variable offset of 1Mhz/2Mhz/=
10Mhz/20Mhz.</div><div dir=3D"auto"><br></div><div dir=3D"auto">What you re=
commend to do?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</d=
iv><div dir=3D"auto">Dor=C2=A0</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =
=D7=99=D7=95=D7=9D =D7=93=D7=B3, 22 =D7=91=D7=9E=D7=A8=D7=A5 2023, 3:10 =D7=
=90=D7=97=D7=94=D7=B4=D7=A6, =D7=9E=D7=90=D7=AA Dor Ratz =E2=80=8F&lt;<a hr=
ef=3D"mailto:dorratz12@gmail.com" target=3D"_blank">dorratz12@gmail.com</a>=
&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto"><div>Hey Michael,=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Not sure if you got my question.</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">I&#39;m trying to understand what are the limitations/ d=
isadvantages of integer mode of the PLL as I set.</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Thanks</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Dor=C2=A0<br><div dir=3D"auto"><br></div><div dir=3D"auto"><br></=
div><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=
=3D"gmail_attr">=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=92=D7=B3, 14 =D7=91=D7=9E=D7=A8=D7=A5 2023, 9:32 =D7=9C=D7=A4=D7=A0=D7=94=
=D7=B4=D7=A6, =D7=9E=D7=90=D7=AA Dor Ratz =E2=80=8F&lt;<a href=3D"mailto:do=
rratz12@gmail.com" rel=3D"noreferrer" target=3D"_blank">dorratz12@gmail.com=
</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"rtl"><div dir=3D"ltr">Michael ,</div><div dir=3D"ltr"><br></div><div =
dir=3D"ltr">What are the limitations/ disadvantages of integer mode of the =
PLL as I set?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best</div><d=
iv dir=3D"ltr">Dor</div></div><br><div class=3D"gmail_quote"><div dir=3D"rt=
l" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=
=99=D7=95=D7=9D =D7=92=D7=B3, 14 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-9:26 =
=D7=9E=D7=90=D7=AA =E2=80=AADor Ratz=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=
=3D"mailto:dorratz12@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">dorratz12@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div dir=3D"r=
tl"><div dir=3D"ltr">Hey,=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D=
"ltr">I&#39;ve done it and the spur is gone, while the frequency=C2=A0is st=
ill accurate as the fractional mode.</div><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr">This is the flowgraph:</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">In center frequency I&#39;ve written=C2=A0that:</div><div dir=3D"l=
tr">=C2=A0uhd.tune_request(target_freq, args=3D&quot;mode_n=3Dinteger&quot;=
)<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><img src=3D"cid:ii_l=
f7xhe3c0" alt=3D"image.png" width=3D"562" height=3D"507"><br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr"><img src=3D"cid:ii_lf7xi17g2" alt=3D"im=
age.png" width=3D"562" height=3D"493"><br></div><div dir=3D"ltr"><br></div>=
<div dir=3D"ltr"><br></div><div dir=3D"ltr">This is the flowgraph:</div><di=
v dir=3D"ltr"><img src=3D"cid:ii_lf7xitvl3" alt=3D"image.png" width=3D"562"=
 height=3D"330"><br></div><div dir=3D"ltr">Thanks a lot</div><div dir=3D"lt=
r"><br></div><div dir=3D"ltr">Dor</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=
=99=D7=9A =D7=99=D7=95=D7=9D =D7=90=D7=B3, 12 =D7=91=D7=9E=D7=A8=D7=A5 2023=
 =D7=91-23:24 =D7=9E=D7=90=D7=AA =E2=80=AADor Ratz=E2=80=AC=E2=80=8F &lt;=
=E2=80=AA<a href=3D"mailto:dorratz12@gmail.com" rel=3D"noreferrer noreferre=
r" target=3D"_blank">dorratz12@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=
=AC<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
auto"><div>Hey Michael,<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=
 a lot.</div><div dir=3D"auto"><br></div><div dir=3D"auto">1.Can I just typ=
e in UHD USRP Sink block in RF options in center frequency this line?</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><span style=3D"font=
-size:12.8px">uhd.tune_request_t(</span><span style=3D"font-size:12.8px">ta=
rget_freq =3D1003e6,</span><span style=3D"font-size:12.8px">=C2=A0args=3D&q=
uot;mode_n=3Dinteger&quot;))</span></div><div dir=3D"auto"><span style=3D"f=
ont-size:12.8px"><br></span></div><div dir=3D"auto"><span style=3D"font-siz=
e:12.8px">2. Or with older Gnuradio versions (tune request without t):</spa=
n></div><div dir=3D"auto"><span style=3D"font-size:12.8px"><br></span></div=
><div dir=3D"auto"><span style=3D"font-size:12.8px">uhd.tune_request(target=
_freq =3D1003e6, args=3D&quot;mode_n=3Dinteger&quot;))</span></div><div dir=
=3D"auto"><span style=3D"font-size:12.8px"><br></span></div><div dir=3D"aut=
o"><span style=3D"font-size:12.8px"><br></span></div><div dir=3D"auto"><spa=
n style=3D"font-size:12.8px">In order to transmit 1003MHz in integer mode w=
ith dsp tuning.</span></div><div dir=3D"auto"><span style=3D"font-size:12.8=
px"><br></span></div><div dir=3D"auto"><span style=3D"font-size:12.8px">Wil=
l both work? This is as Marcus suggested, If I understand correctly.</span>=
</div><div dir=3D"auto"><span style=3D"font-size:12.8px"><br></span></div><=
div dir=3D"auto"><span style=3D"font-size:12.8px">Thanks</span></div><div d=
ir=3D"auto"><span style=3D"font-size:12.8px"><br></span></div><div dir=3D"a=
uto"><span style=3D"font-size:12.8px">Dor=C2=A0<br></span><br><div class=3D=
"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">----------=
 Forwarded message ---------<br>=D7=9E=D7=90=D7=AA: <strong class=3D"gmail_=
sendername" dir=3D"auto">Michael West</strong> <span dir=3D"auto">&lt;<a hr=
ef=3D"mailto:michael.west@ettus.com" rel=3D"noreferrer noreferrer noreferre=
r" target=3D"_blank">michael.west@ettus.com</a>&gt;</span><br>=E2=80=AADate=
: =D7=99=D7=95=D7=9D =D7=95=D7=B3, 10 =D7=91=D7=9E=D7=A8=D7=A5 2023, 10:01 =
=D7=90=D7=97=D7=94=D7=B4=D7=A6=E2=80=AC<br>Subject: Re: Spurs in UBX-160 Da=
ughterboard with USRP X310<br>To: Dor Ratz &lt;<a href=3D"mailto:dorratz12@=
gmail.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">dorra=
tz12@gmail.com</a>&gt;<br>Cc: Ettus Research Technical Support &lt;<a href=
=3D"mailto:support@ettus.com" rel=3D"noreferrer noreferrer noreferrer" targ=
et=3D"_blank">support@ettus.com</a>&gt;,  &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt;<br></div><br><br><div dir=3D"ltr"><div>=
Hi Dor,</div><div><br></div><div>Answers inline...</div><div><br></div><div=
>Regards,</div><div>Michael</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Mar 9, 2023 at 10:37=E2=80=AFAM Dor Ratz=
 &lt;<a href=3D"mailto:dorratz12@gmail.com" rel=3D"noreferrer noreferrer no=
referrer noreferrer" target=3D"_blank">dorratz12@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl">=
<div style=3D"direction:ltr"><br></div><div><br></div><div dir=3D"ltr">Hi M=
ichael and Marcus,</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thank y=
ou.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr"><u>Several questions:</u></div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr">1. Why does the spur still exist=C2=A0when doing your recommendation? =
please see below the setup, maybe I need to change something?</div><div dir=
=3D"ltr">By the way, all the time(even in original fractional mode) the spu=
r does not exist in specific frequencies=C2=A0such as 1000MHz, 1110MHz, 120=
0MHz...I guess=C2=A0that when (dboard_clock/target_frequency =3D integer)=
=C2=A0then we are OK.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">If y=
ou can share your gnuradio flowgraph / grc=C2=A0+ py files=C2=A0 / spectrum=
 analyzer pictures that show the signal - it would be helpful.</div><div di=
r=3D"ltr"><br></div></div></blockquote><div><br></div><div>It looks like th=
e integer-n mode is not properly configured.=C2=A0 The &quot;mode_n=3Dinteg=
er&quot; needs to be part of the tune args and not the device args.=C2=A0 T=
ry setting the frequency as Marcus suggested using:</div><div><br></div><di=
v>my_uhd_block.set_center_frequency(uhd.tune_request(target_freq=3D2.4e9,ar=
gs=3D&quot;mode_n=3Dinteger&quot;))</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div dir=3D"ltr"></div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr">2. When you said about breaking c=
oherency between channels - what channels did you mean? the 2 different TX =
or Rx channels on 2 different UBX-160 daughterboards on the same X310?</div=
><div dir=3D"ltr">If so, in case I&#39;m using only a single UBX-160 in the=
 X310, can I ignore this issue because it=C2=A0won&#39;t exist in my case?<=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&quot;The int_n_step tune =
arg will explicitly change the step size by changing the R divider value, w=
hich will break phase coherency between channels&quot;<br></div><div dir=3D=
"ltr"><br></div></div></blockquote><div><br></div><div>It will break phase =
coherency=C2=A0between any channels on the same device or across devices.=
=C2=A0 If you are using a single channel or are using multiple channels and=
 do not require=C2=A0phase coherency, you can ignore it.</div><div><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div d=
ir=3D"ltr"></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">3. Do you stil=
l recommend putting=C2=A0&quot;dboard_clock_rate=3D20e6&quot; in the device=
 arguments parameter when transmitting frequencies smaller than 1GHz as wri=
tten=C2=A0<a href=3D"https://kb.ettus.com/UBX#Phase_Synchronization" rel=3D=
"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">here</a>?</=
div><div dir=3D"ltr"><br></div></div></blockquote><div><br></div><div>That =
is required to keep phase coherency=C2=A0between channels.=C2=A0 If you are=
 using a single channel or are using multiple channels and do not require=
=C2=A0phase coherency, you can ignore it.=C2=A0 The default reference clock=
 rate of 50 MHz provides best phase noise performance.</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div d=
ir=3D"ltr"></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr"><u>The spur still exists as before with your proposal- does th=
e=C2=A0setup match your recommendation or should I change something??</u></=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Please see gnuradio=C2=A0fl=
owgraph:</div><div dir=3D"ltr"><u><br></u></div><div dir=3D"ltr">&#39;&#39;=
mode_n=3Dinteger&#39;&#39; in Device Address and Device Arguments<u><br></u=
></div><div dir=3D"ltr">center freq =3D 1003e6 [Hz]</div><div dir=3D"ltr"><=
br></div><div dir=3D"ltr">DSP tuning policy=C2=A0- didn&#39;t touch it so I=
 guess it is default =3D POLICY_AUTO.<br></div><div dir=3D"ltr">dboard_cloc=
k_rate =3D didn&#39;t touch it so I guess it is default=3D50MHz.<br></div><=
div dir=3D"ltr"><u><br></u></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
"><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;=
attid=3D0.1&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=
=3D186d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ8fQWzWuAdCq5UXM=
OUTGFsPOfBoUvA7cqJC5Vg1Y5zgsUpPdFZL--_e0bFfd9jDKnuRIsr9ksBtZBnM4kSn5gZEb12S=
9yUi19rnFIHl7cJC6Igbx0x2HleEidI&amp;disp=3Demb&amp;realattid=3Dii_lf0weri10=
&amp;zw" alt=3D"image.png" width=3D"563" height=3D"355"><br></div><div dir=
=3D"ltr"><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cf=
b3&amp;attid=3D0.2&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&a=
mp;rm=3D186d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ-5BCHxSIi-=
LzbUC_-4r894ScPfD8CZyWtiYs_P5dVrIR94JoBqwQ5U9iFUbKxib9bv2aC1BliVnrcuIlv9EHs=
w6boYejNDGmbThIWwLiO0Ye_TnvexF8ghx4U&amp;disp=3Demb&amp;realattid=3Dii_lf0w=
krco4&amp;zw" alt=3D"image.png" width=3D"562" height=3D"491"><br></div><div=
 dir=3D"ltr"><br></div><div dir=3D"ltr"><img src=3D"https://mail.google.com=
/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=3D0.3&amp;th=3D186d7b012caf9a2e=
&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D186d7b012caf9a2e&amp;sz=3Dw1600-h100=
0&amp;attbid=3DANGjdJ_Qk8gL494QCnlfDPWHJQI6k-l0z2DAdgfkXINDOIlmjJZ3DneVpWKB=
9-oMlcj1rPhLkoxRNbE2pB1avJ6lz3jEuKmULWZqiB_eex9AWTJpbArmauFDagqzVW0&amp;dis=
p=3Demb&amp;realattid=3Dii_lf0wmthd5&amp;zw" alt=3D"image.png" width=3D"562=
" height=3D"503"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><u>This gnuradio flowgrap=
h moves the signal to the original frequency of the spur(=3Dfrequency offse=
t of 3-6KHz, that&#39;s bad) but eliminate the original spur itself</u></di=
v><div dir=3D"ltr"><u><br></u></div><div dir=3D"ltr">I guess that anyway th=
e=C2=A0frequency resolution range is:</div><div dir=3D"ltr"><ul><li>When db=
oard_clock_rate=3D50MHz -&gt; ranges from 50MHz when R divider=3D 1[-] up t=
o 0.05[MHz] when R divider =3D 1000[-]</li><li>When dboard_clock_rate=3D20M=
Hz -&gt;ranges from 20MHz when R divider=3D 1[-] up to 0.02[MHz] when R div=
ider =3D 1000[-]</li></ul></div><div dir=3D"ltr"><u><br></u></div><div dir=
=3D"ltr">=C2=A0center freq :=C2=A0 uhd.tune_request(target_freq, dsp_freq=
=3D0, =C2=A0 =C2=A0 dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)<u><br=
></u></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr">&#39;&#39;mode_n=3Dinteger&#39;&#39; in Device Address and De=
vice Arguments<u><br></u></div><br></div></div><div dir=3D"ltr"><div dir=3D=
"ltr">dboard_clock_rate =3D didn&#39;t touch it so I guess it is default=3D=
50MHz.<br></div><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><img =
src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=
=3D0.5&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D186d=
7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ8BnIPmI4uGPyorNmsXTRk-=
63ZjDQaPx2s6REEPO3iRVFp2IrgzT1dvktLavoqSzD_DTASLkLjdRUmgNjYR4NbjlCPnF_W8O9L=
hZaeo9PohVMFeIEe-hTb0ucI&amp;disp=3Demb&amp;realattid=3Dii_lf0xmhye4&amp;zw=
" alt=3D"image.png" width=3D"562" height=3D"358"><br></div><div dir=3D"ltr"=
><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;a=
ttid=3D0.6&amp;th=3D186d7b012caf9a2e&amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D=
186d7b012caf9a2e&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ8Log3RySpZ4j3H_A_J=
fqaKyd2W8eNe2cIvesaNCcvG3arz5y4kjD0hD0ZLV5EHWCyTfoLDJuYUfi8uix2VSnNJWlheRMo=
IYkObnat3VLL6vvMijG2lauv_Hn0&amp;disp=3Demb&amp;realattid=3Dii_lf0xo4q65&am=
p;zw" alt=3D"image.png" width=3D"562" height=3D"486"><br></div><div dir=3D"=
ltr"><u><br></u></div><div dir=3D"ltr"><img src=3D"https://mail.google.com/=
mail/?ui=3D2&amp;ik=3D7adc42cfb3&amp;attid=3D0.4&amp;th=3D186d7b012caf9a2e&=
amp;view=3Dfimg&amp;fur=3Dip&amp;rm=3D186d7b012caf9a2e&amp;sz=3Dw1600-h1000=
&amp;attbid=3DANGjdJ89XMc4hgJA5HKSMu8CM98YTAHyZZA3p5-tHnLyQsPPP6kdhlD2NK8MK=
7p3EsZhXvaI-kH3EDodez6lHvRq1TvjJxmYn4sO6dBev4-gsoFOoZ_9NNHtRLgACv4&amp;disp=
=3Demb&amp;realattid=3Dii_lf0xk8i13&amp;zw" alt=3D"image.png" width=3D"562"=
 height=3D"497"><br></div><div dir=3D"ltr"><u><br></u></div><div dir=3D"ltr=
"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thanks=C2=A0</div><=
div dir=3D"ltr">Dor</div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>=D7=9E=D7=90=D7=
=AA: <strong class=3D"gmail_sendername" dir=3D"auto">Michael West</strong> =
<span dir=3D"auto">&lt;<a href=3D"mailto:michael.west@ettus.com" rel=3D"nor=
eferrer noreferrer noreferrer noreferrer" target=3D"_blank">michael.west@et=
tus.com</a>&gt;</span><br>=E2=80=AADate: =D7=99=D7=95=D7=9D =D7=92=D7=B3, 7=
 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-4:22=E2=80=AC<br>Subject: Re: Spurs i=
n UBX-160 Daughterboard with USRP X310<br>To: Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer noreferrer=
 noreferrer" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>Cc: Dor R=
atz &lt;<a href=3D"mailto:dorratz12@gmail.com" rel=3D"noreferrer noreferrer=
 noreferrer noreferrer" target=3D"_blank">dorratz12@gmail.com</a>&gt;, Marc=
us M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" rel=3D"noref=
errer noreferrer noreferrer noreferrer" target=3D"_blank">marcus.mueller@et=
tus.com</a>&gt;,  &lt;<a href=3D"mailto:mmueller@gnuradio.org" rel=3D"noref=
errer noreferrer noreferrer noreferrer" target=3D"_blank">mmueller@gnuradio=
.org</a>&gt;, <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferr=
er noreferrer noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ett=
us.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"norefer=
rer noreferrer noreferrer noreferrer" target=3D"_blank">usrp-users@lists.et=
tus.com</a>&gt;, Eduard Sivolenko &lt;<a href=3D"mailto:eduard.sivolenko@ni=
.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"=
>eduard.sivolenko@ni.com</a>&gt;,  &lt;<a href=3D"mailto:derek.mckay@utu.fi=
" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">der=
ek.mckay@utu.fi</a>&gt;, Michael Dickens &lt;<a href=3D"mailto:michael.dick=
ens@ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=
=3D"_blank">michael.dickens@ettus.com</a>&gt;,  &lt;<a href=3D"mailto:claud=
io.franchini@tlrnet.eu" rel=3D"noreferrer noreferrer noreferrer noreferrer"=
 target=3D"_blank">claudio.franchini@tlrnet.eu</a>&gt;<br></div><br><br><di=
v dir=3D"ltr"><div>Hi Dor,</div><div><br></div><div>There are 2 arguments t=
hat can control the integer-N step size:=C2=A0 the int_n_step tune arg and =
the dboard_clock_rate device arg.=C2=A0 The int_n_step tune arg will explic=
itly change the step size by changing the R divider value, which will break=
 phase coherency between channels.=C2=A0 The &#39;dboard_clock_rate&#39; va=
lue in the device args controls the reference clock rate, which will keep t=
he R divider set to 1 and support phase coherency between channels.=C2=A0 B=
oth will change the PFD frequency for the PLL.=C2=A0 The UBX was designed f=
or a PFD frequency of 50 MHz, which is why 50 MHz is the default reference=
=C2=A0clock rate and the default R value is 1.=C2=A0 Reducing the PFD frequ=
ency will result in more phase noise.=C2=A0 My recommendation is to set the=
 &#39;mode_n=3Dinteger&#39; in the tune args, let the DSP tuning take care =
of the offset by leaving the DSP tuning policy to the default (POLICY_AUTO)=
, and use the highest dboard_clock_rate possible (up to 50 MHz).=C2=A0 The =
highest &#39;dboard_clock_rate&#39; can be achieved based on the required b=
andwidth of the application by using the formula:</div><div><br></div><div>=
dbaord_clock_rate =3D (160 MHz - bandwidth) / 2</div><div><br></div><div>I =
hope this helps.</div><div></div><div></div><div><br></div><div>Best regard=
s,</div><div>Michael E. West</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Mar 6, 2023 at 3:07=E2=80=AFPM Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer =
noreferrer noreferrer noreferrer" target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 06/03/2023 17:13, Dor Ratz wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"rtl">
        <div dir=3D"ltr">Hey,=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks a lot.=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><u>Several questions after thinking about it:</u><=
/div>
      </div>
    </blockquote>
    <blockquote type=3D"cite">
      <div dir=3D"rtl">
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">1. Do you mean R&amp;D of Ettus or GNURadio? Can
          you address me to the relevant email address? <br>
        </div>
      </div>
    </blockquote>
    This thread really belongs on the usrp-users mailing list now,
    rather than discuss-gnuradio, i have copied usrp-users, and<br>
    =C2=A0 removed discuss-gnuradio.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"rtl">
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">2. Let me see if I get it right for USRP X310
          with UBX-160:</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">
          <ul>
            <li>Motherboard clock =3D MCR=C2=A0 =3Dmaster_clock_rate=C2=A0 =
=3D main
              clock rate =3D default value is 200MHz. The 10MHz REFCLK is
              used to set it.<br>
            </li>
            <li>Daughterboard Clock Rate in Hz =3D=C2=A0dboard_clock_rate =
=3D
              default value is 50MHz, need to change it to 20MHz for
              center frequencies=C2=A0under 1GHz do decrease spurs.<br>
              This is actually the clock that the motherboard injects
              into the daughterboard , i.e it is the reference=C2=A0clock o=
f
              the MAX2871 PLL which is on the daughterboard.</li>
            <li>According to=C2=A0<a href=3D"http://www.radio-science.net/2=
017/12/adventures-in-usrp-tuning.html" rel=3D"noreferrer noreferrer norefer=
rer noreferrer" target=3D"_blank">this link</a>, if I
              set=C2=A0&quot;mode_n=3Dinteger&quot;,&quot;int_n_step=3D100e=
3&quot;, in Device Address
              parameter in USRP Sink block, then the frequency
              resolution on the PLL is:<br>
              frequency resolution [Hz] =3D int_n_step [Hz] =3D
              dboard_clock_rate [Hz] / (R divider=C2=A0 [-])=C2=A0<br>
              <br>
              For example:<br>
              100e3 [Hz] =3D 50e6 [Hz] / 500<br>
              <br>
              So -&gt;<b> the frequency=C2=A0resolution of the PLL is set b=
y
                the &quot;int_n_step&quot; parameter</b> -&gt; it calculate=
s=C2=A0the R
              divider [-] in the PLL relating to dboard_clock_rate and
              desired int_n__step.<br>
              I guess that the result must be in the range of allowed
              PLL&#39;s R divider values from 1 to 1023.</li>
          </ul>
          3.=C2=A0 =C2=A0Do I must set the=C2=A0
          &quot;int_n_step&quot; parameter as follows?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">4.=C2=A0 Does the frequency resolution range from
          50MHz when R divider=3D 1[-] up to 0.05[MHz] when R divider =3D
          1000[-] ?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Referring to this sentence in=C2=A0<a href=3D"http=
s://www.analog.com/media/en/technical-documentation/data-sheets/max2871.pdf=
" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">max=
2871 PLL datasheet</a>:</div>
        <div dir=3D"ltr">&quot;&quot;The minimum R counter divide ratio is =
1, and
          the maximum divide ratio is 1023&quot;</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">5. Where can I find the relevant source code?
          I&#39;ve looked=C2=A0<a href=3D"https://github.com/EttusResearch/=
uhd" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">=
here</a>=C2=A0but I&#39;m not sure where the
          daughterboard code/relevant code is.=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks=C2=A0</div>
        <div dir=3D"ltr">Dor</div>
        <div dir=3D"ltr">
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=
=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=
=A5 2023
          =D7=91-19:10 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=
=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gmail.com" rel=3D"no=
referrer noreferrer noreferrer noreferrer" target=3D"_blank">patchvonbraun@=
gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 06/03/2023 08:54, Dor Ratz wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr">Hey Marcus,=C2=A0</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Thanks a lot.</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I&#39;m=C2=A0using e<span>xternal 10 MHz r=
eference
                    clock (</span>REFCLK) with 1e-12[Hz] frequency
                  resolution -&gt; it feeds my PLL in the UBX-160
                  daughterboard in the X310 USRP.</div>
              </div>
            </blockquote>
            The REFCLCK input to the X310 is used to control the
            master-clock(s) on the motherboard, which, in turn produce
            clocks for<br>
            =C2=A0 the daughtercards--but the daughtercards never see your
            external clock directly.<br>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">So, <b>when defining &quot;mode_n=3Dintege=
r&quot;</b>
                  in the Device Address parameter of the UHD: USRP Sink
                  block in GNURadio to set PLL in integer-N mode, <b>what
                    is exactly R-DIVIDER=3D reference divider of the PLL</b=
>?</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I&#39;ve looked in the PLL (max2871)
                  datasheet:</div>
                <div dir=3D"ltr"><a href=3D"https://www.analog.com/media/en=
/technical-documentation/data-sheets/max2871.pdf" rel=3D"noreferrer norefer=
rer noreferrer noreferrer" target=3D"_blank">https://www.analog.com/media/e=
n/technical-documentation/data-sheets/max2871.pdf</a><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">According to it:</div>
                <div dir=3D"ltr">&quot;The minimum R counter divide ratio i=
s 1,
                  and the maximum divide ratio is 1023&quot;</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I understand that if for example, the R
                  counter=3D(R-DIVIDER)=3D1000 -&gt; the frequency
                  resolution is 10MHz/1000 =3D 0.01MHz=3D 10KHz, correct?</=
div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">But I don&#39;t know what is the R-DIVIDER
                  chosen=C2=A0in the PLL with the settings in gnuradio.</di=
v>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Thanks,</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Dor</div>
                <div dir=3D"ltr"><br>
                </div>
              </div>
            </blockquote>
            You&#39;d have to go looking through the source code.=C2=A0 Unl=
ess
            someone from R&amp;D happens to know off the top of their
            heads.<br>
            =C2=A0 10 years ago, I kept all of this in my head--when there
            were FAR fewer products to keep track of and the codebase
            was<br>
            =C2=A0 more modest.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=
=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=94=D7=B3, 2 =D7=91=D7=9E=D7=
=A8=D7=A5
                  2023 =D7=91-21:55 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. L=
eech=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gmail.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">p=
atchvonbraun@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 02/03/2023 13:09, Dor Ratz wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"rtl">
                        <div dir=3D"ltr">Hey,</div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">Do you know how=C2=A0to assess the=
 RF
                          PLL resolution in integer-N mode?</div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">I&#39;ve looked in ANALOG max2871 =
PLL
                          datasheet - not sure I found the answer there.</d=
iv>
                        <div dir=3D"ltr"><a href=3D"https://www.analog.com/=
media/en/technical-documentation/data-sheets/max2871.pdf" rel=3D"noreferrer=
 noreferrer noreferrer noreferrer" target=3D"_blank">https://www.analog.com=
/media/en/technical-documentation/data-sheets/max2871.pdf</a><br>
                        </div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">The Ettus team is CC here too -
                          it will be helpful to know what you suggest.</div=
>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">Thanks,</div>
                        <div dir=3D"ltr">Dor <br>
                        </div>
                      </div>
                    </blockquote>
                    It will depend on the REFCLK that is being used by
                    that board (I do not happen to know off the top of
                    my head), and by<br>
                    =C2=A0 whatever flexibility in reference divider the PL=
L
                    has.<br>
                    <br>
                    In an Integer-N PLL (and you can spend quite a bit
                    of time learning how PLL synthesizers work online),
                    the &quot;step size&quot; is<br>
                    =C2=A0 dependent on the REFCLK, which itself may have a
                    divider on it.=C2=A0 So, let&#39;s say your REFCLK is 1=
0MHz
                    and there&#39;s a divider<br>
                    =C2=A0 that can divide the reference clock by up to
                    10000, then your minimum step size is 1kHz.=C2=A0=C2=A0=
 This
                    is in tension with the<br>
                    =C2=A0 fact that having a high ratio between the desire=
d
                    frequency and the reference frequency tends to
                    create signal-quality issues,<br>
                    =C2=A0 like, as I recall, phase noise.=C2=A0 But I&#39;=
d research
                    the datasheet and the overall concept of PLL
                    synthesis.<br>
                    <br>
                    My recollection on the X310 is that the
                    reference-clock frequency is 100MHz, but that&#39;s jus=
t
                    a hazy memory.<br>
                    <br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"rtl">
                        <div dir=3D"ltr"><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=
=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                          =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=
=91-21:10 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F
                          &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gmai=
l.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank=
">patchvonbraun@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 01/03/2023 13:14, Dor Ratz wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div dir=3D"rtl">
                                  <div dir=3D"ltr">Hey Marcus, How are
                                    you?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Not sure if you got my
                                    email.</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Do you know anyway I
                                    can change transmitted frequency
                                    using PMT message when doing your
                                    solution?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In addition, something
                                    that seemed to help me:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">I used this:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><a href=3D"https://lists=
.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00309.html" rel=3D"norefe=
rrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">https:/=
/lists.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00309.html</a></div=
>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In the USRP Sinc block,
                                    in center frequency parameter, I&#39;ve
                                    put this:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">
                                    <pre style=3D"color:rgb(0,0,0)">uhd.tun=
e_request(target_freq=3D1003e6, dsp_freq=3D0,
dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)</pre>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">With this, the
                                    transmitted 1003MHz signal is
                                    cleaner and the spur is now further
                                    away at 16KHz offset with amplitude
                                    of 60dBc below the signal.</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">This alone cleans the
                                    spectrum!</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In addition, I type
                                    &quot;mode_n=3Dinteger&quot; in the</di=
v>
                                  <div dir=3D"ltr">Device Address
                                    parameter of the UHD: USRP Sink
                                    block, but it doesn&#39;t seem to
                                    affect. The tuning without DSP
                                    correction in the FPGA seems to just
                                    be sufficient to clean the spectrum.</d=
iv>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Why is that? Do you
                                    recommend using something else?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Thanks</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Dor <br>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            Note that only works if the underlying RF
                            PLL has enough &quot;resolution&quot; to make t=
hat
                            work--particularly in integer-N mode.<br>
                            <br>
                            I&#39;m surprised that the DDC/DUC have such
                            significant &quot;close in&quot; spurs.=C2=A0=
=C2=A0=C2=A0 I don&#39;t
                            know if there&#39;s anyone from the R&amp;D tea=
m<br>
                            =C2=A0 on here who can authoritatively comment,
                            but this is a bit of a surprise.<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div dir=3D"rtl">
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                </div>
                                <br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"rtl" class=3D"gmail_attr">=E2=
=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A
                                    =D7=99=D7=95=D7=9D =D7=91=D7=B3, 27 =D7=
=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-15:08 =D7=9E=D7=90=D7=AA
                                    =E2=80=AADor Ratz=E2=80=AC=E2=80=8F &lt=
;=E2=80=AA<a href=3D"mailto:dorratz12@gmail.com" rel=3D"noreferrer noreferr=
er
                                      noreferrer noreferrer noreferrer nore=
ferrer noreferrer noreferrer" target=3D"_blank">dorratz12@gmail.com</a>=E2=
=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div dir=3D"rtl">
                                      <div dir=3D"ltr">Hi Marcus,</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Can I pass the
                                        desired center frequency with a
                                        PMT message?=C2=A0</div>
                                      <div dir=3D"ltr">I want to
                                        dynamically change the
                                        transmitted center frequency of
                                        UHD: USRP Sink block.=C2=A0</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">So static
                                        frequency=C2=A0in the block is not
                                        sufficient.</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Thanks=C2=A0</div>
                                      <div dir=3D"ltr">Dor</div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"rtl" class=3D"gmail_att=
r">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                                          =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=
=91=D7=A8=D7=B3 2023 =D7=91-13:44 =D7=9E=D7=90=D7=AA
                                          =E2=80=AAMarcus M=C3=BCller=E2=80=
=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:marcus.mueller@ettus.com" rel=
=3D"noreferrer noreferrer
                                            noreferrer noreferrer noreferre=
r noreferrer noreferrer noreferrer" target=3D"_blank">marcus.mueller@ettus.=
com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi
                                          Dor,<br>
                                          <br>
                                          &gt;=C2=A0 1. How to change the t=
o
                                          integer_n tuning? Should I
                                          just type &quot;mode_n=3Dinteger&=
quot; in
                                          the<br>
                                          &gt;=C2=A0 =C2=A0 =C2=A0Device Ad=
dress
                                          parameter of the UHD: USRP
                                          Sink block in the grc?<br>
                                          <br>
                                          yes. Or, better, instead of
                                          just tuning to the target
                                          frequency, you can pass a <br>
                                          uhd.tune_request_t to
                                          uhd_usrp_{sink,source}.set_center=
_frequency,
                                          like this:<br>
                                          <br>
my_uhd_block.set_center_frequency(uhd.tune_request_t(<br>
                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0target_freq =3D
                                          2.4e9,<br>
                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0
                                          =C2=A0args=3D&quot;mode_n=3Dinteg=
er&quot;))<br>
                                          <br>
                                          (you can also use a
                                          uhd.tune_request_t in the RF
                                          frequency fields of the GRC
                                          block)<br>
                                          <br>
                                          Note that you&#39;re probably bes=
t
                                          off using tune_request_t
                                          anyway, as it allows you to
                                          tune <br>
                                          your LO far away from your
                                          band of interest, given the
                                          analog bandwidth allows for
                                          that, <br>
                                          using `target_freq=3D` and
                                          `rf_freq` or `dsp_freq`.<br>
                                          <br>
                                          For more information on
                                          tuning, see the UHD manual [1]<br=
>
                                          <br>
                                          &gt;=C2=A0 2. How to know for sur=
e
                                          what the mode(integer of
                                          fractional) of the NCO is? Can
                                          I print<br>
                                          &gt;=C2=A0 =C2=A0 =C2=A0its statu=
s/get it
                                          somehow? <br>
                                          <br>
                                          looking at the UHD source
                                          code: the routines responsible
                                          for tuning just themselves
                                          check <br>
                                          for &quot;mode_n&quot; being set =
to
                                          &quot;integer&quot; in the device=
 or
                                          tune request arguments.<br>
                                          <br>
                                          Best regards,<br>
                                          Marcus<br>
                                          <br>
                                          [1] <a href=3D"https://files.ettu=
s.com/manual/page_general.html#general_tuning" rel=3D"noreferrer noreferrer
                                            noreferrer noreferrer
                                            noreferrer noreferrer noreferre=
r noreferrer noreferrer" target=3D"_blank">https://files.ettus.com/manual/p=
age_general.html#general_tuning</a><br>
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

</blockquote></div></div>
</div></div>
</blockquote></div></div>
</div></div></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000005f6bbd05f8c2f885--

--0000000000005f6bbe05f8c2f886
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lf7xitvl3>
X-Attachment-Id: ii_lf7xitvl3

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
--0000000000005f6bbe05f8c2f886
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lf7xi17g2>
X-Attachment-Id: ii_lf7xi17g2

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
--0000000000005f6bbe05f8c2f886
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lf7xhe3c0>
X-Attachment-Id: ii_lf7xhe3c0

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
QmCC
--0000000000005f6bbe05f8c2f886--

--===============2853547044034371382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2853547044034371382==--
