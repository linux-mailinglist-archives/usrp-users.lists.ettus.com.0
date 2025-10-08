Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3E8BC42B6
	for <lists+usrp-users@lfdr.de>; Wed, 08 Oct 2025 11:35:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC75038625E
	for <lists+usrp-users@lfdr.de>; Wed,  8 Oct 2025 05:35:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759916115; bh=fJJKhT5RnzaTA7JH9ReB76LEvtiOXKyfwboLiJxrwfI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kVE9po7tQFk2CFQ8djEEoCCfxAutxuC0lLmctWM9MjPLdn1t7nClOoHoEfnvOWp1+
	 4drLvf/NAJ1UbygcQU8T4pGhPPod9c/3vdDAHIyI12hSGJIhkqVqfHZWkGLP+Z1/SB
	 SgS8VS35c0DykClZ4sNbCXHmhdbo2nhf3klyZah8sTA2gCmhdaYKoVUSNF5Er5oYdM
	 tX6ekIuInVk6AItVGUAPidxwmIpRxuVysxfsc7+5jPZBNA+M0xZJYV2jOGUPTPPRKY
	 KafNjGcDCe+nzStX7u/iSLFyzHqiKEXE1avT2bNu4Q2TO2ZNKAKyhnkYtqWuUSfPGc
	 EA+hPpJPuYKzA==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E8543861F4
	for <usrp-users@lists.ettus.com>; Wed,  8 Oct 2025 05:34:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="MfMKbWox";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb78ead12so1303496166b.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Oct 2025 02:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1759916082; x=1760520882; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AVT6XOSfkEOrLxibPQiXhEyj3KPKhYwBAeGSKUVppjw=;
        b=MfMKbWoxe3hDi9ZaWv70ACKsGn7xERgPZFzY1CuVZSd8ppj1xBrbZb5yykcMFy5MTs
         iI6/fnK2qrOSZERP8rR0iMkXhwynZVon3Lpp/Aj4hA/ZoPb1EPn3zHHSp+zeBz0mqbz/
         xFwD3CkZ2KHLQhFEBNv8ODYGhbXnaHBIkdFaCNdPPqxiB4H56YR6e2HE7qu3uiy/PGnJ
         CXsy0E2mZg/tXIpl+6wUwFdwpayGlhUSE4BtaVDuebucb0PIKhEFrTvupFk7Ar8OsdWR
         lzOzglp4YvJuEZZuhlppRUX2vxY14va9VDyQGA/7cjxqlWjTrwPz89mETOYrijwuluUl
         FlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759916082; x=1760520882;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AVT6XOSfkEOrLxibPQiXhEyj3KPKhYwBAeGSKUVppjw=;
        b=p81ux2f3MMubX6rCLgOA7oFR0frcYKT4haBl3lJClKvVvphYcQy1gmbeqQtL9AE03f
         TmwCSKExParJgbisEABkz1LZZ3xx3ZLX9ghW7JDNRiMxODD5McL8Lh1I+uc9JIdyGt1E
         BqhJ+wAIbyuKRQGnB3afVqPCmha1JHhWJmSwQwf9S+30un1taCAWam6w/KCUI8HdAYp+
         CQgb9CTRzaFQEG8mUxu01OTiTpBZmiMFgVXVn4go1EO4Ssn8TD3PShNyKxT0utgtijB4
         kRv/bP++7/333yM9ttRDy7yBUrmb/uo1TmhqJXRwUQghJKs8lUBOQ4EDG7qiog2Fded+
         Afkw==
X-Gm-Message-State: AOJu0YyToUNKDK/9TiFs9Aj5oXH/BxlU82a6up8nU20aOVN95VQfJWV2
	ymz4g+95HW0mlkpExr2el8M2MIYZ4W4hVLE2LrPQ5Gad0Rb6/f1A2ugoMOX5wpIp01PC+XozEXB
	ERLYKzKXvAKpfAa9+KgFylwBmwNRuuqvpZ0B8s92eusIPKrGaLviieULbFKI4
X-Gm-Gg: ASbGnctGme3Lt8ZMpIPZeOG0fTzy/blLRxnxtz1OYC4n4XzV/aOUjSLlXH+VBujqpsx
	AiS/ayFSBY2AQbwkaTnBkxyPJcmJCrJeIQflGQv0vrqBwrdNSPmnD6fBwv0im1ikatM0zJbyXWO
	hiAqlEJ+SBdfHvrayTYbzUxzdFwc4+9j87LyG8t7K6+mZIyxjqmGTIdTcoAPUh9mfLz8K72VXRx
	mhZHAz6q6o5N3XliNAN8pyZK3J34BNi0dY5aGjtrfEgnFCzOr2XxsckjuJfX1/uF0Uo3z4=
X-Google-Smtp-Source: AGHT+IGWkGthzmHyEHqeLlZ803lpZoRZ87rxHxhZwSR6Lcf2fW2UlNGbs2v+JDaX40uR1rdxrqWME2GmhNOvAR50uv4=
X-Received: by 2002:a17:907:3f8a:b0:b3f:ccac:af47 with SMTP id
 a640c23a62f3a-b50ac1ccce8mr320039966b.31.1759916081910; Wed, 08 Oct 2025
 02:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U@lists.ettus.com>
In-Reply-To: <1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Oct 2025 11:34:30 +0200
X-Gm-Features: AS18NWAA9_DpQJ7_ff_AJj5K90F7hyFViKTK5gnFikOVhMB_O-TRkPYeQ7l6h4g
Message-ID: <CAFOi1A4NXt+6vZQ7-FR=pWikJG3jw7RV8psXopesjLqv-pQQmg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: TTPA3WOLVUN2QNCYCNRXF655AKCHKT2D
X-Message-ID-Hash: TTPA3WOLVUN2QNCYCNRXF655AKCHKT2D
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration USRP B210 UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTPA3WOLVUN2QNCYCNRXF655AKCHKT2D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3307170707697847099=="

--===============3307170707697847099==
Content-Type: multipart/alternative; boundary="000000000000e5a6ca0640a264c0"

--000000000000e5a6ca0640a264c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Dennis,

so UHD is reporting valid calibration files -- that's a good start. How are
you generating a signal with a specific power level? Are you doing
`uhd_siggen -p -10` or something like that?

Also, how did you install UHD? If you installed from source (which we don't
generally recommend if you can install from binaries, so I'm not expecting
this) then you can crank up the log level and watch the power API operate
in real time (export UHD_LOG_CONSOLE_LEVEL=3Dtrace, assuming you built with
`cmake -DUHD_LOG_MIN_LEVEL=3Dtrace`).

--M

On Wed, Sep 17, 2025 at 10:29=E2=80=AFAM <dennis.joosens@uantwerpen.be> wro=
te:

> Hi Martin,
>
> I am a bit stuck here (still). I performed several measurements using an
> OFDM signal (20 MHz, synthetic signal) and a sine wave on a smaller
> bandwidth (1 MHz, via uhd_siggen) to verify the effectiveness of the B210
> RX calibration files that I had created. All in a controlled, cabled setu=
p
> with a 30 dB attenuator in place. To this point, it is hard to tell, as I
> see little to no difference in power when loading the calibration files.
> Therefore, I have three hypotheses:
>
> 1) These values are so small that the power calibration is negligible.
>
> 2) The calibration file is not loaded correctly for the B210. Missing
> something in the code (I only get a True or False when found or not found=
)
>
> 3) A specific value in the calibration file is not loaded because of
> frequency offsets, which, by default, exist (I measured this), and so the
> value of the calibration file is not used.
>
>
> Is there another way to determine if a specific power value from the
> calibration file is loaded? Rather than getting the message now: "I am a
> B210 and found a valid calibration file for channel X or Y".
>
> Could you give me some advice on these points? Or am I missing some other
> critical point here?
>
> Thank you!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e5a6ca0640a264c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Dennis,</div><div><br></div><div>so UHD is report=
ing valid calibration files -- that&#39;s a good start. How are you generat=
ing a signal with a specific power level? Are you doing `uhd_siggen -p -10`=
 or something like that?</div><div><br></div><div>Also, how=C2=A0did you in=
stall UHD? If you installed from source (which we don&#39;t generally recom=
mend if you can install from binaries, so I&#39;m not expecting this) then =
you can crank up the log level and watch the power API operate in real time=
 (export UHD_LOG_CONSOLE_LEVEL=3Dtrace, assuming you built with `cmake -DUH=
D_LOG_MIN_LEVEL=3Dtrace`).</div><div><br></div><div>--M</div></div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Sep 17, 2025 at 10:29=E2=80=AFAM &lt;<a href=3D"mailto:denn=
is.joosens@uantwerpen.be">dennis.joosens@uantwerpen.be</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Martin,</p><p>I=
 am a bit stuck here (still). I performed several measurements using an OFD=
M signal (20 MHz, synthetic signal) and a sine wave on a smaller bandwidth =
(1 MHz, via uhd_siggen) to verify the effectiveness of the B210 RX calibrat=
ion files that I had created. All in a controlled, cabled setup with a 30 d=
B attenuator in place. To this point, it is hard to tell, as I see little t=
o no difference in power when loading the calibration files. Therefore, I h=
ave three hypotheses:</p><p>1) These values are so small that the power cal=
ibration is negligible.</p><p>2) The calibration file is not loaded correct=
ly for the B210. Missing something in the code (I only get a True or False =
when found or not found)</p><p>3) A specific value in the calibration file =
is not loaded because of frequency offsets, which, by default, exist (I mea=
sured this), and so the value of the calibration file is not used.</p><p><b=
r></p><p>Is there another way to determine if a specific power value from t=
he calibration file is loaded? Rather than getting the message now: &quot;I=
 am a B210 and found a valid calibration file for channel X or Y&quot;.</p>=
<p>Could you give me some advice on these points? Or am I missing some othe=
r critical point here?</p><p>Thank you!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e5a6ca0640a264c0--

--===============3307170707697847099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3307170707697847099==--
