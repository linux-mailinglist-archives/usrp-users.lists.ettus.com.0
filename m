Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 946A56E9794
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 16:50:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1ABC380911
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 10:50:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682002206; bh=qSHlWCaR2WAZAdLfoKtmNB9RI6VC7ZE7fYq1g9QksxQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oUzS0jRhv/KI/glaT+2ZazekrBttUvEyi/DoBo7kD/LVHRCdUSYnk9nS2NSkpp3kn
	 HCQDtRluFbNgNkBsZOEEiaB7t+0/CjHd1huL3FgiHa12M3E/ZSNvy607ybWzFfqq2O
	 UMn917LJGARO6hk3b/jTJ7qaD8FEWORwsQNfthUH1XZ1pxoAflHeyrp/iTWmM02BfR
	 g4JTX2bSlrj8eCPYBQykksG2pCDSsYhHu83IuRkaAZJs//+6TpIwDW3gjQ9bYufHFn
	 VSJUYAhDOGe2VVveJUeqky5lYfSFhhh1MgmUPNrEJ2fiIzQXlxoBn613rNUjC2zBd5
	 kY9kep1ATekSw==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id E2F9F380911
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 10:50:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QOQLegrD";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-74ab718c344so212992485a.1
        for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 07:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682002201; x=1684594201;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WaD3STBFgCB5kIi5KOxIBbJxpeAgUNKTMnezT3+WGh8=;
        b=QOQLegrDoGeACjbhCWEgHnfzzn+ZPCaYdxqSGJUVhE1TiZmdkMdWxch5jqrxZ/ohtx
         XV+wargx/qBaxRQq3z1z5urcjrQ3mSUHdL+i79TZKFqzzU6sbFGT92R5qEvSLIyPCgEc
         FTjkfKmoHehLnPrN2g1/hNl8MNS0GqsjR0cYxH0mSLbz2ll2crteWzg+tavuHFnE/knP
         wMY/1/QtzY9oDmjYJdyHpUhbGNgPLZzOTDdaJlKcsZ3Zvbk+gv0ZKwCw8StxdoCt/bur
         ablUB3bBpoJvXVGS4+u5vXz0fnTPLr02UlBki8RjIpE4PUFhGWbEyqVhQnLFIrZOnM8J
         23PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682002201; x=1684594201;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WaD3STBFgCB5kIi5KOxIBbJxpeAgUNKTMnezT3+WGh8=;
        b=G+xWq5JaCIUpHL3ZS/BchW9DAtlhgEUQV6FR3ccSdymWbK3uu+p5W6FoOrxkKEccR9
         b89aNIdDr/geS6bghGr5lFdaF0G7SLZ56HeTIjuhmzDUWLcgotFUorusUepsZr5gIs9e
         UlJaIuG91y79684uxpbZptCGOnAeIFke1QqmB7IBgz7TXuPgKPPjq8OulT0tVl6vPuX6
         faw8MoMa2kDjQBHxDegsR/aK8mb4XiND+iYiENggieAKdTrK3RClXJlxLBf2jgtuyfFq
         KwSywRa79vYdZgCqAfCFjCMGHzPV7WWfgvanRFbJphH0t38/M1zIWmr25UoEo7y7yZv0
         fx3Q==
X-Gm-Message-State: AAQBX9fRMEk0yNMquDiLohzbfY8tKcKG3qzhZZlpxMu8IMb9GKGgscPg
	uPOIXVs9z46OMxeIHhC+nWa2mftJvnw=
X-Google-Smtp-Source: AKy350YuTLeEjRVrL/io5MXByoANnXSAoicPV3pXzpB84CBpeV+syoHBKY9ghBPmQtjSJQQEvv9NzA==
X-Received: by 2002:a05:622a:5d0:b0:3ed:164c:6834 with SMTP id d16-20020a05622a05d000b003ed164c6834mr4030915qtb.27.1682002201043;
        Thu, 20 Apr 2023 07:50:01 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id l9-20020ac81489000000b003e302c1f498sm542368qtj.37.2023.04.20.07.50.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:50:00 -0700 (PDT)
Message-ID: <9cbde8ad-08e9-c0d2-a010-edd4fbf64c26@gmail.com>
Date: Thu, 20 Apr 2023 10:50:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <JN1P275MB053554638C3D2E4F1C0C67BD95639@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JN1P275MB053554638C3D2E4F1C0C67BD95639@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Message-ID-Hash: UPIKGQVMBZMOTNZTKTEGIO4PCIDWYZPG
X-Message-ID-Hash: UPIKGQVMBZMOTNZTKTEGIO4PCIDWYZPG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX phase synchronisation using different versions of UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UPIKGQVMBZMOTNZTKTEGIO4PCIDWYZPG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6598103346791503239=="

This is a multi-part message in MIME format.
--===============6598103346791503239==
Content-Type: multipart/alternative;
 boundary="------------l0Fcv5iTZZq69Qz3Wnf8Zu07"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------l0Fcv5iTZZq69Qz3Wnf8Zu07
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/04/2023 10:42, Leon Wabeke wrote:
>
> I am using code utilizing the UHD library to capture samples from a=20
> X310 with 2 TwinRX daughterboards. The sample rate is set to 25MSps.=20
> This is to characterize the system to ultimately use it in for phase=20
> interferometry direction finding similar to AN-244=20
> (https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series=
_and_TwinRX%E2%84%A2).=20
> (I tried installing that, but still some compiling issues to try to=20
> resolve)
>
> As a test setup, I am using another X310 with UBX to generate a test=20
> signal, passing through a 4 way splitter to the 4 channels of the=20
> TwinRX. In software I correlate with the transmitted signal and=20
> extract the phase of the peak. I then plot it relative to ch0=E2=80=99s=
 phase.=20
> Theory says that if I do it for different frequencies, the slope of=20
> the phase over frequency corresponds to path length differences of the=20
> cables (and the splitter/receiver response).
>
> Using an application developed a few years ago using UHD v3.13.0.0=20
> directly (and UHD v3.15.0.0), I am able to successfully capture data.=20
> The process is script driven, launch the custom app to initialize the=20
> SDR on a specific frequency and capture data to a file. Then close and=20
> quit the app and repeat this over 60 frequencies.
>
> The application also supported a mode where instead of quitting=20
> completely, it could stop streaming, change frequency and start=20
> capturing again. I only tested this mode using UHD-3.13, however in=20
> that case, I saw that after the frequency change, there was a random=20
> multiple of 90 degrees phase offset present on some of the channels.=20
> This implies there was some nuance in the process of stopping,=20
> changing frequency and restarting streaming that was different from my=20
> process of initializing (during which a frequency is selected).=20
> Testing seemed to indicate that if I stopped and restarted on the same=20
> frequency, these phase jumps did not occur.
>
> When I tried upgrading to UHD v4.2.0.0 or UHD v4.4.0.0, I found that=20
> this random frequency offset was also present if I captured just using=20
> the initialize process.
>
> The attached figure shows the phase in the frequency range 5.25GHz,=20
> with the solid lines from the capturing using UHD 3.13 while the dots=20
> are from the capture using UHD 4.4. The change in the lines between=20
> 5.21-53GHz and 5.51-5.6GHz I assume is due to changes in internal=20
> mixing strategy chosen by the expert mode tuner to avoid mixing=20
> products? While that is not nice, it atleast is repeatable while the=20
> offsets in the dots are random multiples of 90.
>
> I assume that the 90 degrees originate either from mixing up I and Q=20
> somewhere in the data stream or what I suspect has to do with the=20
> decimation process to reduce the sample rate down to 25MSps. Years ago=20
> I worked with another sampler, where the clocks were not constrained=20
> properly and it also exhibited this behaviour due to clocks locking on=20
> one of 4 clock edges.
>
> Any ideas where I can further dig to locate the problem? For the 3.13=20
> the fact that it seemed consistent on initialization, while being=20
> problematic on freq change hinted I need to carefully study the=20
> sequence of events during those activities, but the fact that the=20
> initialization sequence no longer gives consistent results in >=3D4.2,=20
> makes me wonder that even if I chase that difference, it might only be=20
> of historic value. Can someone confirm that they have either seen this=20
> 90 degree random phase and/or that they are getting consistent phases=20
> (under what conditions?)
>
> Thanks
>
> Leon
>
>
Are you LO-sharing across channels, or relying on synthesizer=20
phase-reset and timed tuning?



--------------l0Fcv5iTZZq69Qz3Wnf8Zu07
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/04/2023 10:42, Leon Wabeke wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:JN1P275MB053554638C3D2E4F1C0C67BD95639@JN1P275MB0535.ZAFP275.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I am using code
            utilizing the UHD library to capture samples from a X310
            with 2 TwinRX daughterboards. The sample rate is set to
            25MSps. This is to characterize the system to ultimately use
            it in for phase interferometry direction finding similar to
            AN-244 (<a
href=3D"https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-S=
eries_and_TwinRX%E2%84%A2"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_=
TwinRX%E2%84%A2</a>).
            (I tried installing that, but still some compiling issues to
            try to resolve)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">As a test setup, I am
            using another X310 with UBX to generate a test signal,
            passing through a 4 way splitter to the 4 channels of the
            TwinRX. In software I correlate with the transmitted signal
            and extract the phase of the peak. I then plot it relative
            to ch0=E2=80=99s phase. Theory says that if I do it for diffe=
rent
            frequencies, the slope of the phase over frequency
            corresponds to path length differences of the cables (and
            the splitter/receiver response).
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Using an application
            developed a few years ago using UHD v3.13.0.0 directly (and
            UHD v3.15.0.0), I am able to successfully capture data. The
            process is script driven, launch the custom app to
            initialize the SDR on a specific frequency and capture data
            to a file. Then close and quit the app and repeat this over
            60 frequencies.
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The application also
            supported a mode where instead of quitting completely, it
            could stop streaming, change frequency and start capturing
            again. I only tested this mode using UHD-3.13, however in
            that case, I saw that after the frequency change, there was
            a random multiple of 90 degrees phase offset present on some
            of the channels. This implies there was some nuance in the
            process of stopping, changing frequency and restarting
            streaming that was different from my process of initializing
            (during which a frequency is selected). Testing seemed to
            indicate that if I stopped and restarted on the same
            frequency, these phase jumps did not occur.<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">When I tried upgradin=
g
            to UHD v4.2.0.0 or UHD v4.4.0.0, I found that this random
            frequency offset was also present if I captured just using
            the initialize process.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The attached figure
            shows the phase in the frequency range 5.25GHz, with the
            solid lines from the capturing using UHD 3.13 while the dots
            are from the capture using UHD 4.4. The change in the lines
            between 5.21-53GHz and 5.51-5.6GHz I assume is due to
            changes in internal mixing strategy chosen by the expert
            mode tuner to avoid mixing products? While that is not nice,
            it atleast is repeatable while the offsets in the dots are
            random multiples of 90.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I assume that the 90
            degrees originate either from mixing up I and Q somewhere in
            the data stream or what I suspect has to do with the
            decimation process to reduce the sample rate down to 25MSps.
            Years ago I worked with another sampler, where the clocks
            were not constrained properly and it also exhibited this
            behaviour due to clocks locking on one of 4 clock edges.<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Any ideas where I can
            further dig to locate the problem? For the 3.13 the fact
            that it seemed consistent on initialization, while being
            problematic on freq change hinted I need to carefully study
            the sequence of events during those activities, but the fact
            that the initialization sequence no longer gives consistent
            results in &gt;=3D4.2, makes me wonder that even if I chase
            that difference, it might only be of historic value. Can
            someone confirm that they have either seen this 90 degree
            random phase and/or that they are getting consistent phases
            (under what conditions?)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Leon =C2=A0<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p></sp=
an></p>
        <br>
      </div>
    </blockquote>
    Are you LO-sharing across channels, or relying on synthesizer
    phase-reset and timed tuning?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------l0Fcv5iTZZq69Qz3Wnf8Zu07--

--===============6598103346791503239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6598103346791503239==--
