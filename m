Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E55C4A32768
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 14:45:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFFA83861A1
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 08:45:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739367926; bh=ml1fMgYgRmwOnZVIubkYmhsiEdBVLCRdC6CUXXI/CKo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jLhcB0iarKLCgJZe4y8MpJOyYF/RZYq8/Eac5vNRlWh5MCQAWjXNFmhBaMOHbf0Ou
	 JXZH8GImjsWXKhxCwKXj73Uhjca6ZR42Jl6i/Uy9MzgUoiShZDGXo4fVq23uhqu01T
	 YDij5/fGQGu9orWijslQIoWJ1QR636nqbSUw4pXJ5cxnKLbPYeIg7tCoP2CNhnqgL7
	 MkzrrfF6VAb01NM6/8d+8zuOe89j4+u+1QyDNU7r5IN7rOuNFRTe7CMUVAgWj+RDn0
	 lrghNIwXBFqr0q2rOUg/1uMB7ersKEkE7FTqmCZC3638MXOCLWFnhsifktLKSjJYZf
	 cYyNT+1RUfTTA==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F5B5386134
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 08:44:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="XdgqYpMA";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5dca468c5e4so9680465a12.1
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 05:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739367889; x=1739972689; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tzdn9u7/fL0X2tFAlcD+6xU3H3VvdWk3ZJ8zJDH9TG0=;
        b=XdgqYpMADCJvUFkJjkXRxDY/q4C1zB8FrLFS/zPpA04+LE4Cq0n8SO91FlVPrDk5Pf
         v1vn1FW5H82afcmh8OGsLzs+e9RCKp8xuvkYSUH8g5XkqzqNOQIanZEXd66k6kR4zRY0
         jGqBu8Zgh2uJVkuG46iBT3W5cbVDjNrDaBSe5iNXwFJvbufr3hHkBDRK73rfIlTXejfP
         viEi+4WgSY4a71hNKtNHOD7AZCeFPuRR5VNAozblG7KUz2BSddj54M7heAjeKk61dwHX
         2HoX9DljtpoRMryWHS4/93KxJcD5GyBYsomqZWXtB/lJ144mfBLKJFev8E3WH8gmJcSt
         FSgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739367889; x=1739972689;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tzdn9u7/fL0X2tFAlcD+6xU3H3VvdWk3ZJ8zJDH9TG0=;
        b=w9OV+OTKjkfe0d58GP93g69MjjkpLjC1ZProK2pjV+EDqttWJbonhg4AhCWC7qdWIo
         412j8FdjyVuDYdrNDOjpnImM8iKSPt8l7SNOvYoOPU3RyO8eaVBt6xwEALgTrD7qOQYx
         rbi4Afa9DkyH1fZRE3fblio0l82G7RiU5Q8RsmdenpmQ80F3FixxtVWZq+A72lj59KFB
         2KQIWJOARfQd+x5BTd3a7TD/s/7QUGpNv/9IHUqj7taGXEKaccFoiks/6c/ZOjw+mlsc
         Z1nVsem8407MkWLZCIU1rWMoUNFqLzNKRQnfIN5SetaBrMA2Ptya9B4Yi6cK+VOiPEGz
         hR5w==
X-Gm-Message-State: AOJu0Yy8SyPQEYmGhiH2cwDp49MzwqacZg1dMOHzhVf/KsYTe1keSJlK
	BZBjN/205vZk7auLZZZYYaUkE30Da7FBEIoJ9OqeuYAJHn97y6i3WSK+nuYuJt8eFIBPsjjj4ua
	NEgKYlQtTMq/CktdjnWqCWzcgUjOxU3yEwipRTAWL/0oybUUQiv4=
X-Gm-Gg: ASbGncvLNuUkH1kDKvEI4zAxGWEaRNlje9+O4RfQaXj0Ql29G8sCcY1OPTxYD2czP1X
	8MswEQXwqfzO14Zd3mEmvZ2WKv6REQQUu9Egl2TuWUw3FtSaZwQs6TzUQwsJ/Zlg4taBAXVog2y
	aLVKa1t6PfAQNaEmFaveQWXnxa1/CO
X-Google-Smtp-Source: AGHT+IGrg3Go2HGUOYlS0A9Ir9/0tGDVSr/it56sSD3CVNha+wFpMmrD7YhLn3k2ZRmUTFXbPvbngSNUUF6P6Dz/xFI=
X-Received: by 2002:a05:6402:34c7:b0:5dc:1f35:56a with SMTP id
 4fb4d7f45d1cf-5deadd7b8demr2873034a12.5.1739367887571; Wed, 12 Feb 2025
 05:44:47 -0800 (PST)
MIME-Version: 1.0
References: <yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk@lists.ettus.com> <CAOEzSFQ1VM1ahBwM+02saTafP7CxDoGKqRh59BTBpex16fLL=g@mail.gmail.com>
In-Reply-To: <CAOEzSFQ1VM1ahBwM+02saTafP7CxDoGKqRh59BTBpex16fLL=g@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 12 Feb 2025 14:44:36 +0100
X-Gm-Features: AWEUYZnD1Fngik-kNS11KMPtkzi5EQpMCvpYNUkwk0wSr1ilIrorXHvA7JT4PBE
Message-ID: <CAFOi1A6Qoy-xA-WfYjKKaC7yKVBWFOqNkPg5H93jH14SNPbeKg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: TVSBWPB2KO6LGRJUEBBF5K3U7AUSK34Y
X-Message-ID-Hash: TVSBWPB2KO6LGRJUEBBF5K3U7AUSK34Y
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVSBWPB2KO6LGRJUEBBF5K3U7AUSK34Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6830332220940936664=="

--===============6830332220940936664==
Content-Type: multipart/alternative; boundary="00000000000012a592062df225ba"

--00000000000012a592062df225ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

a lot going on here, but let me just confirm a few things:

- The _200 suffix is derived from the max analog bandwidth you get, but
like Chris says there is no analog filtering on the X440, so really it's a
maximum sampling rate (of 250Msps). With the _200 image, you get access to
resamplers, and thus also to lower sampling rates (and therefore analog
bandwidths, but you still need to filter outside of the X440).
- The _400 and _1600 images have no resamplers, but they have some
flexibility in the available sampling rates.
- 10 Msps is about the limit you can achieve on the device itself.

--M

On Fri, Feb 7, 2025 at 5:32=E2=80=AFPM Chris Rogers <c1337rogers@gmail.com>=
 wrote:

> I=E2=80=99d suggest taking a look at this section of the manual
> https://files.ettus.com/manual/page_usrp_x4xx.html#x440_usage_mcrs and
> the link Marcus sent
> https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_=
USRP_X440.
> This is a unique USRP architecture that requires some frequency and clock
> planning
>
> You should probably manually set your desired Master Clock Rate (MCR) and
> Converter Rate (Fc) based on your frequencies of interest. It=E2=80=99s i=
mportant
> to note that the X440 has no analog front end, so you cannot adjust any
> analog bandwidth filters, but you can reduce the MCR and Fc which will
> reduce the bandwidth digitally, and DDC will further reduce the bandwidth=
.
> You can set these clocks in the device arguments. So basically, if you se=
t
> rx_rate=3D100e6, you=E2=80=99ll be getting 100 MHz of bandwidth, but wher=
e in the
> spectrum that 100 MHz is located and how many aliases you=E2=80=99ll see =
is decided
> by how you configure the clocks and what you set the RF center frequency =
to.
>
> Your timeout error is probably caused by running UHD programs on the X440
> itself. It=E2=80=99s really designed to stream samples to it from a diffe=
rent host
> computer over the QSFP ports
>
> On Fri, Feb 7, 2025 at 8:44=E2=80=AFAM Rilbert Lima via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Thank you, Chris.
>>
>> I have updated the FPGA image from the USRP X440 to the X4_200, and upon
>> executing, the sampling rate has been reduced to approximately 5 Msps.
>>
>> Another matter I would like to inquire about is whether it is possible t=
o
>> reduce the analog bandwidth of the signal from 200 MHz to 100 MHz. I am
>> aiming to use the X440 with OpenAirInterface5G in FR1, but since the ima=
ge
>> is from the X4_200, which is tied to a 200 MHz bandwidth, I would like t=
o
>> know if there is any workaround to perform this downgrade."
>>
>> However, in some tests that were performed, the receive timeout error
>> appears, even using the 5e6 sampling rate, increasing the value to 99 *N=
um
>> timeouts (Rx): 99*. And I don't know why these receive errors appeared.
>>
>>
>> root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate
>> 5e6 --tx_rate 5e6
>>
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800;
>> UHD_4.7.0.0-0-ga5ed1872
>>
>> [00:00:00.029460] Creating the usrp device with: ...
>>
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=
=3Dni-x4xx-342597F,fpga=3DX4_200,claimed=3DFalse
>>
>> [WARNING] [MPM.RPCServer] A timeout event occured!
>>
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx4=
40,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
>>
>> Using Device: Single USRP:
>>
>> Device: X400-Series Device
>>
>> Mboard 0: x440
>>
>> RX Channel: 0
>>
>> RX DSP: 0
>>
>> RX Dboard: A
>>
>> RX Subdev: 0
>>
>> RX Channel: 1
>>
>> RX DSP: 1
>>
>> RX Dboard: A
>>
>> RX Subdev: 1
>>
>> RX Channel: 2
>>
>> RX DSP: 2
>>
>> RX Dboard: A
>>
>> RX Subdev: 2
>>
>> RX Channel: 3
>>
>> RX DSP: 3
>>
>> RX Dboard: A
>>
>> RX Subdev: 3
>>
>> RX Channel: 4
>>
>> RX DSP: 4
>>
>> RX Dboard: B
>>
>> RX Subdev: 0
>>
>> RX Channel: 5
>>
>> RX DSP: 5
>>
>> RX Dboard: B
>>
>> RX Subdev: 1
>>
>> RX Channel: 6
>>
>> RX DSP: 6
>>
>> RX Dboard: B
>>
>> RX Subdev: 2
>>
>> RX Channel: 7
>>
>> RX DSP: 7
>>
>> RX Dboard: B
>>
>> RX Subdev: 3
>>
>> TX Channel: 0
>>
>> TX DSP: 0
>>
>> TX Dboard: A
>>
>> TX Subdev: 0
>>
>> TX Channel: 1
>>
>> TX DSP: 1
>>
>> TX Dboard: A
>>
>> TX Subdev: 1
>>
>> TX Channel: 2
>>
>> TX DSP: 2
>>
>> TX Dboard: A
>>
>> TX Subdev: 2
>>
>> TX Channel: 3
>>
>> TX DSP: 3
>>
>> TX Dboard: A
>>
>> TX Subdev: 3
>>
>> TX Channel: 4
>>
>> TX DSP: 4
>>
>> TX Dboard: B
>>
>> TX Subdev: 0
>>
>> TX Channel: 5
>>
>> TX DSP: 5
>>
>> TX Dboard: B
>>
>> TX Subdev: 1
>>
>> TX Channel: 6
>>
>> TX DSP: 6
>>
>> TX Dboard: B
>>
>> TX Subdev: 2
>>
>> TX Channel: 7
>>
>> TX DSP: 7
>>
>> TX Dboard: B
>>
>> TX Subdev: 3
>>
>> [00:00:04.112276974] Setting device timestamp to 0...
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even decimation to ensure that a halfband filter is enabled.
>>
>> Decimations factorable by 4 will enable 2 halfbands, those factorable by
>> 8 will enable 3 halfbands.
>>
>> decimation =3D dsp_rate/samp_rate -> 49
>>
>> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [00:00:04.465504150] Testing receive rate 5.015510 Msps on 1 channels
>>
>> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
>> expect passband CIC rolloff.
>>
>> Select an even interpolation to ensure that a halfband filter is enabled=
.
>>
>> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s
>> 5.016 MHz
>>
>> Setting TX spp to 352
>>
>> [00:00:04.801908845] Testing transmit rate 5.015510 Msps on 1 channels
>>
>> [00:00:14.826000429] Benchmark complete.
>>
>> Benchmark rate summary:
>>
>> Num received samples: 50161056
>>
>> Num dropped samples: 0
>>
>> Num overruns detected: 0
>>
>> Num transmitted samples: 50201888
>>
>> Num sequence errors (Tx): 0
>>
>> Num sequence errors (Rx): 0
>>
>> Num underruns detected: 0
>>
>> Num late commands: 0
>>
>> Num timeouts (Tx): 0
>>
>> Num timeouts (Rx): 0
>>
>> Done!
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000012a592062df225ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>a lot going on here,=
 but let me just confirm a few things:</div><div><br></div><div>- The _200 =
suffix is derived from the max analog bandwidth you get, but like Chris say=
s there is no analog filtering on the X440, so really it&#39;s a maximum sa=
mpling rate (of 250Msps). With the _200 image, you get access to resamplers=
, and thus also to lower sampling rates (and therefore analog bandwidths, b=
ut you still need to filter outside of the X440).</div><div>- The _400 and =
_1600 images have no resamplers, but they have some flexibility in the avai=
lable sampling rates.</div><div>- 10 Msps is about the limit you can achiev=
e on the device itself.</div><div><br></div><div>--M</div></div><br><div cl=
ass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Feb 7, 2025 at 5:32=E2=80=AFPM Chris Rogers &lt;<a href=3D"mai=
lto:c1337rogers@gmail.com">c1337rogers@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">



















<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:&quot=
;Aptos&quot;,sans-serif"><span style=3D"font-size:11pt">I=E2=80=99d
suggest taking a look at this section of the manual <a href=3D"https://file=
s.ettus.com/manual/page_usrp_x4xx.html#x440_usage_mcrs" style=3D"color:rgb(=
70,120,134);text-decoration:underline" target=3D"_blank">https://files.ettu=
s.com/manual/page_usrp_x4xx.html#x440_usage_mcrs</a>
and the link Marcus sent <a href=3D"https://kb.ettus.com/About_Sampling_Rat=
es_and_Master_Clock_Rates_for_the_USRP_X440" style=3D"color:rgb(70,120,134)=
;text-decoration:underline" target=3D"_blank">https://kb.ettus.com/About_Sa=
mpling_Rates_and_Master_Clock_Rates_for_the_USRP_X440</a>.
This is a unique USRP architecture that requires some frequency and clock
planning<br>
<br>
You should probably manually set your desired Master Clock Rate (MCR) and
Converter Rate (Fc) based on your frequencies of interest. It=E2=80=99s imp=
ortant to
note that the X440 has no analog front end, so you cannot adjust any analog
bandwidth filters, but you can reduce the MCR and Fc which will reduce the
bandwidth digitally, and DDC will further reduce the bandwidth. You can set=
 these
clocks in the device arguments. So basically, if you set rx_rate=3D100e6, y=
ou=E2=80=99ll
be getting 100 MHz of bandwidth, but where in the spectrum that 100 MHz is
located and how many aliases you=E2=80=99ll see is decided by how you confi=
gure the
clocks and what you set the RF center frequency to.<br>
<br>
Your timeout error is probably caused by running UHD programs on the X440 i=
tself.
It=E2=80=99s really designed to stream samples to it from a different host =
computer over
the QSFP ports<span></span></span></p>





</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Feb 7, 2025 at 8:44=E2=80=AFAM Rilbert Lima via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Thank you, Chris. </p><p>I have updated the FPGA image from t=
he USRP X440 to the X4_200, and upon executing, the sampling rate has been =
reduced to approximately 5 Msps.</p><p>Another matter I would like to inqui=
re about is whether it is possible to reduce the analog bandwidth of the si=
gnal from 200 MHz to 100 MHz. I am aiming to use the X440 with OpenAirInter=
face5G in FR1, but since the image is from the X4_200, which is tied to a 2=
00 MHz bandwidth, I would like to know if there is any workaround to perfor=
m this downgrade.&quot;</p><p>However, in some tests that were performed, t=
he receive timeout error appears, even using the 5e6 sampling rate, increas=
ing the value to 99 *Num timeouts (Rx): 99*. And I don&#39;t know why these=
 receive errors appeared.</p><p><br></p><p>root@ni-x4xx-342597F:/usr/lib/uh=
d/examples# ./benchmark_rate --rx_rate 5e6 --tx_rate 5e6</p><p>[INFO] [UHD]=
 linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.7.0.0-0-ga5ed1872</p><p=
>[00:00:00.029460] Creating the usrp device with: ...</p><p>[INFO] [MPMD] I=
nitializing 1 device(s) in parallel with args: mgmt_addr=3D127.0.0.1,type=
=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni-x4xx-342597F,fpga=3DX4_20=
0,claimed=3DFalse</p><p>[WARNING] [MPM.RPCServer] A timeout event occured!<=
/p><p>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_=
200,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx440,clock_sourc=
e=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</p><p>Using D=
evice: Single USRP:</p><p>  Device: X400-Series Device</p><p>  Mboard 0: x4=
40</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboard: A</p><p> =
   RX Subdev: 0</p><p>  RX Channel: 1</p><p>    RX DSP: 1</p><p>    RX Dboa=
rd: A</p><p>    RX Subdev: 1</p><p>  RX Channel: 2</p><p>    RX DSP: 2</p><=
p>    RX Dboard: A</p><p>    RX Subdev: 2</p><p>  RX Channel: 3</p><p>    R=
X DSP: 3</p><p>    RX Dboard: A</p><p>    RX Subdev: 3</p><p>  RX Channel: =
4</p><p>    RX DSP: 4</p><p>    RX Dboard: B</p><p>    RX Subdev: 0</p><p> =
 RX Channel: 5</p><p>    RX DSP: 5</p><p>    RX Dboard: B</p><p>    RX Subd=
ev: 1</p><p>  RX Channel: 6</p><p>    RX DSP: 6</p><p>    RX Dboard: B</p><=
p>    RX Subdev: 2</p><p>  RX Channel: 7</p><p>    RX DSP: 7</p><p>    RX D=
board: B</p><p>    RX Subdev: 3</p><p>  TX Channel: 0</p><p>    TX DSP: 0</=
p><p>    TX Dboard: A</p><p>    TX Subdev: 0</p><p>  TX Channel: 1</p><p>  =
  TX DSP: 1</p><p>    TX Dboard: A</p><p>    TX Subdev: 1</p><p>  TX Channe=
l: 2</p><p>    TX DSP: 2</p><p>    TX Dboard: A</p><p>    TX Subdev: 2</p><=
p>  TX Channel: 3</p><p>    TX DSP: 3</p><p>    TX Dboard: A</p><p>    TX S=
ubdev: 3</p><p>  TX Channel: 4</p><p>    TX DSP: 4</p><p>    TX Dboard: B</=
p><p>    TX Subdev: 0</p><p>  TX Channel: 5</p><p>    TX DSP: 5</p><p>    T=
X Dboard: B</p><p>    TX Subdev: 1</p><p>  TX Channel: 6</p><p>    TX DSP: =
6</p><p>    TX Dboard: B</p><p>    TX Subdev: 2</p><p>  TX Channel: 7</p><p=
>    TX DSP: 7</p><p>    TX Dboard: B</p><p>    TX Subdev: 3</p><p>[00:00:0=
4.112276974] Setting device timestamp to 0...</p><p>[WARNING] [0/DDC#0] The=
 requested decimation is odd; the user should expect passband CIC rolloff.<=
/p><p>Select an even decimation to ensure that a halfband filter is enabled=
.</p><p>Decimations factorable by 4 will enable 2 halfbands, those factorab=
le by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&=
gt; 49</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user =
should expect passband CIC rolloff.</p><p>Select an even decimation to ensu=
re that a halfband filter is enabled.</p><p>Decimations factorable by 4 wil=
l enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>=
decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Cou=
ld not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [=
0/DDC#0] The requested decimation is odd; the user should expect passband C=
IC rolloff.</p><p>Select an even decimation to ensure that a halfband filte=
r is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, th=
ose factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/=
samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The requested decimation is od=
d; the user should expect passband CIC rolloff.</p><p>Select an even decima=
tion to ensure that a halfband filter is enabled.</p><p>Decimations factora=
ble by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfb=
ands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MUL=
TI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p=
>[WARNING] [0/DDC#0] The requested decimation is odd; the user should expec=
t passband CIC rolloff.</p><p>Select an even decimation to ensure that a ha=
lfband filter is enabled.</p><p>Decimations factorable by 4 will enable 2 h=
alfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =
=3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The requested dec=
imation is odd; the user should expect passband CIC rolloff.</p><p>Select a=
n even decimation to ensure that a halfband filter is enabled.</p><p>Decima=
tions factorable by 4 will enable 2 halfbands, those factorable by 8 will e=
nable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[=
WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5.=
016 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user=
 should expect passband CIC rolloff.</p><p>Select an even decimation to ens=
ure that a halfband filter is enabled.</p><p>Decimations factorable by 4 wi=
ll enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p=
>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The r=
equested decimation is odd; the user should expect passband CIC rolloff.</p=
><p>Select an even decimation to ensure that a halfband filter is enabled.<=
/p><p>Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt=
; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actua=
l rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is o=
dd; the user should expect passband CIC rolloff.</p><p>Select an even decim=
ation to ensure that a halfband filter is enabled.</p><p>Decimations factor=
able by 4 will enable 2 halfbands, those factorable by 8 will enable 3 half=
bands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/=
DDC#1] The requested decimation is odd; the user should expect passband CIC=
 rolloff.</p><p>Select an even decimation to ensure that a halfband filter =
is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, thos=
e factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/sa=
mp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.00=
0 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested dec=
imation is odd; the user should expect passband CIC rolloff.</p><p>Select a=
n even decimation to ensure that a halfband filter is enabled.</p><p>Decima=
tions factorable by 4 will enable 2 halfbands, those factorable by 8 will e=
nable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[=
WARNING] [0/DDC#1] The requested decimation is odd; the user should expect =
passband CIC rolloff.</p><p>Select an even decimation to ensure that a half=
band filter is enabled.</p><p>Decimations factorable by 4 will enable 2 hal=
fbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =3D=
 dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX =
rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The r=
equested decimation is odd; the user should expect passband CIC rolloff.</p=
><p>Select an even decimation to ensure that a halfband filter is enabled.<=
/p><p>Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt=
; 49</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user sh=
ould expect passband CIC rolloff.</p><p>Select an even decimation to ensure=
 that a halfband filter is enabled.</p><p>Decimations factorable by 4 will =
enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>de=
cimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could=
 not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/=
DDC#1] The requested decimation is odd; the user should expect passband CIC=
 rolloff.</p><p>Select an even decimation to ensure that a halfband filter =
is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, thos=
e factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/sa=
mp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.00=
0 MHz. Actual rate is 5.016 MHz</p><p>[00:00:04.465504150] Testing receive =
rate 5.015510 Msps on 1 channels</p><p>[WARNING] [0/DUC#0] The requested in=
terpolation is odd; the user should expect passband CIC rolloff.</p><p>Sele=
ct an even interpolation to ensure that a halfband filter is enabled.</p><p=
>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is =
5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; the=
 user should expect passband CIC rolloff.</p><p>Select an even interpolatio=
n to ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP]=
 Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNIN=
G] [0/DUC#0] The requested interpolation is odd; the user should expect pas=
sband CIC rolloff.</p><p>Select an even interpolation to ensure that a half=
band filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate =
to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#0] The reques=
ted interpolation is odd; the user should expect passband CIC rolloff.</p><=
p>Select an even interpolation to ensure that a halfband filter is enabled.=
</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual ra=
te is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is od=
d; the user should expect passband CIC rolloff.</p><p>Select an even interp=
olation to ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI=
_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[=
WARNING] [0/DUC#1] The requested interpolation is odd; the user should expe=
ct passband CIC rolloff.</p><p>Select an even interpolation to ensure that =
a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX=
 rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The =
requested interpolation is odd; the user should expect passband CIC rolloff=
.</p><p>Select an even interpolation to ensure that a halfband filter is en=
abled.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Act=
ual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation=
 is odd; the user should expect passband CIC rolloff.</p><p>Select an even =
interpolation to ensure that a halfband filter is enabled.</p><p>[WARNING] =
[MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</=
p><p>Setting TX spp to 352</p><p>[00:00:04.801908845] Testing transmit rate=
 5.015510 Msps on 1 channels</p><p>[00:00:14.826000429] Benchmark complete.=
</p><p>Benchmark rate summary:</p><p>  Num received samples:     50161056</=
p><p>  Num dropped samples:      0</p><p>  Num overruns detected:    0</p><=
p>  Num transmitted samples:  50201888</p><p>  Num sequence errors (Tx): 0<=
/p><p>  Num sequence errors (Rx): 0</p><p>  Num underruns detected:   0</p>=
<p>  Num late commands:        0</p><p>  Num timeouts (Tx):        0</p><p>=
  Num timeouts (Rx):        0</p><p>Done!</p>
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

--00000000000012a592062df225ba--

--===============6830332220940936664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6830332220940936664==--
