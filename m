Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F00E73A774
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 19:41:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A8CB3809F3
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 13:41:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687455684; bh=X7WGubgdqv7e5+DnofHZ5fe9X/JulvYXyKXlz8r9+LI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ytQrJh2bYh2SMgsb7q4WnKppPAkaNVQ0xqupWZeXcOBUI7XY7VTCYRKI5unI5WWCf
	 kMVyUzISY6Fm/Fk3NvwXnQIL2MHFHbllWon8pOSkaJCZnqK75FtMEBHu+UrcK4SSqA
	 pZ2frwseSmZfBfxZFn8S/RYAT72XTnmhUrc7rKuSlhZ29ibBQWTfHOGkWk8gjCVTZ9
	 /j3nM/0y3Z7oRxoXQzazS3s5dx5EJ+nZ10ztXqSF1SgEIdYTHRhSgSzyrNYV5DNJxq
	 pcBZvyetpcw5OAfNYpEMmK8cym/XOD6MUx/hE+EOnJ4pnbAmF8Y+aTa2OyQyh2q6lN
	 pFRNH5qPzdbDg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 87D1E384A52
	for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 13:40:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VaOMsC7d";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7623bd6933eso44527685a.1
        for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 10:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687455627; x=1690047627;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yA/pGzHR8B9oBl7amxsp11hCubu/Wb4DOfUpfLMEt0Y=;
        b=VaOMsC7dr7Kr/gi4WwsM5/pScUQQmQyRvG13jI50HpQ+/PPHCXeWZ9sQvWq2I7lVTf
         iE5Qm70NT8YQTup3BG4JxOrEdPakfNsz76LehfvavOmlJQbwkGiD1JC+Lkv7865ym6ca
         +FdG0n6XQGITReMYjDBt/bkYPr8V7WYvYHYm9u17m4ONcGdR5XbL6SPiFFgJCO5O4MxO
         U0bzM0F6BZoLRElbCflTGPSPQMgEVF2MOL4HVC8UPZvpYM8bnVTWGNxqRLmzy/TK5fDF
         kcSkjXbI4gugTe/B19++yy5jNjt6SivFUHxK+a/NAlBT3/9jOkYIUe0RdvPuw3IAaAt+
         3WeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687455627; x=1690047627;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yA/pGzHR8B9oBl7amxsp11hCubu/Wb4DOfUpfLMEt0Y=;
        b=NtLhO+lRDpnIXZNNvmeWMJYUA5kJPNDOymcgd4F62G42o9BiIQMpBQ7IQ/e0yFLszN
         yfP8ivN0JXjShlpF4ZgHjkhwD/AUBETmMFr/etD6W8pmjv6hgWNBY5TQvIOiaYEWSl8D
         mLv8OADwZ5fGGhVBCRJkwJYx3WClo6rLmO2CCgm66s01w9Yh7ISlr3R9mxtgE86PH2us
         VD0PCL2pdkIr/Nw6d+QPQzBlVpZ+2+yVINpQwfnIRS+0h8ixxEf5btizr7hRhZuwSBXK
         45LYTL8cvpM7angSYn34Cr9XRaxR0kD0ODl5T1/YUmiUPMAgBG+sS62ft44O510wvlWr
         uMQw==
X-Gm-Message-State: AC+VfDzyyf7oAvMKmKVsDeUlsr3gDuMkeTALB9MRZPv/03ie8vR2dO/s
	ElPm8/7tjpMoQmTf7Ya6F6Z/IIPpxgs=
X-Google-Smtp-Source: ACHHUZ4Em1isL0m8Kyi2KORn9NN2IX5Rk3axThpmKbD/5QQrk8Z4MEuIXZsDT0yKEHgd9EgSu4lnqA==
X-Received: by 2002:a05:620a:27d4:b0:762:3cb0:11c4 with SMTP id i20-20020a05620a27d400b007623cb011c4mr21096258qkp.12.1687455626747;
        Thu, 22 Jun 2023 10:40:26 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k25-20020a05620a139900b0074ced3e0004sm3631852qki.63.2023.06.22.10.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 10:40:26 -0700 (PDT)
Message-ID: <d7d5ad49-4634-18a0-5ee4-368d3ebe2cb3@gmail.com>
Date: Thu, 22 Jun 2023 13:40:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Carlo Venier <venier.carlo@gmail.com>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <b8ebb484-ca34-37c3-7bc1-79a63735abef@gmail.com>
 <CAHRiTbk37Yu2xCvLGAEm2BmSS0jg0OMm9nSpFouEPSBasfEtCg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHRiTbk37Yu2xCvLGAEm2BmSS0jg0OMm9nSpFouEPSBasfEtCg@mail.gmail.com>
Message-ID-Hash: 2TC53FSRX2RIAVCYRW4REIWUD2JK574A
X-Message-ID-Hash: 2TC53FSRX2RIAVCYRW4REIWUD2JK574A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2TC53FSRX2RIAVCYRW4REIWUD2JK574A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8489967279908982969=="

This is a multi-part message in MIME format.
--===============8489967279908982969==
Content-Type: multipart/alternative;
 boundary="------------PqH518nxYJJnANEAe9Rl0iaV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PqH518nxYJJnANEAe9Rl0iaV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/06/2023 12:03, Carlo Venier wrote:
> Hi Marcus,
>
> when I turn down the gain, the shape of the spectrum noisefloor=20
> remains non-flat. Also at a gain of 0, the shape is wavy.
> I'm not feeding any RF source to the channels: they are 50 Ohm terminat=
ed.
> The plots of the spectrum were produced with a third party application.
> However, I've recorded the samples by using the "rx_samples_to_file"=20
> tool and then plotted them with Matlab but the shape remains the same=20
> (non-flat).
> I am aware that the final spectrum is the convolution of all the=20
> filtering stages, but I would like to know if this is the expected=20
> noisefloor spectrum for the TwinRx (for example for UBX the spectrum=20
> noisefloor is much more flat).
> For this reason, I am asking if someone can provide a plot of the=20
> spectrum of both channels at a sampling rate of 100 Msps.
>
> Thank you.
>
> Regards,
> Carlo Venier
I can't get to this myself until probably the weekend.

It is conventional when measuring receiver/filter response to use a=20
noise source that produces enough power to be
 =C2=A0 considerably *above* the noise figure of the receiver.=C2=A0 At m=
ax gain,=20
the TwinRx has a noise figure of about 4-5dB,
 =C2=A0 and a terminator is a noise equivalent of 3dB.=C2=A0 A noise sour=
ce of=20
+15dB ENR would be useful here.

What I have noticed is that at narrower bandwidths (10MHz), the response=20
is non-flat (ignoring the inevitable edge roll-off)
 =C2=A0 at a level of about 1dB.=C2=A0 That isn't unexpected when you hav=
e a long=20
filter chain.




>
> Il gio 22 giu 2023, 15:30 Marcus D. Leech <patchvonbraun@gmail.com> ha=20
> scritto:
>
>     On 22/06/2023 05:48, Carlo Venier wrote:
>>     Good morning,
>>
>>     I have some questions regarding the TwinRX daughterboard.
>>
>>     1) With the following settings:
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Master Clock Rate =3D 2=
00 MHz
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tuning Frequency =3D 24=
50 MHz
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sample rate =3D 100 Msp=
s
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Gain =3D 93
>>     =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 Every RF connector is 50 Ohm term=
inated
>>     =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 LO_OFFSET disabled
>>
>>     I get a non-flat spectrum. In particular, the center portion of
>>     it is up to 5 dB higher than at +/- 40 MHz from the tuning
>>     frequency. You can see this behaviour in the attached figures.
>>
>>     2) The two channels have a different behaviour below 1.8 GHz (for
>>     example at 450 MHz). The spectrum of channel :1 is a lot more
>>     wavy than the spectrum of the channel :0. You can see this
>>     behaviour in the attached figures.
>>     In any case, also below 1.8 GHz the delta between min and max
>>     level is about 5 dBs.
>>
>>     3) Sometimes, the DC component pops up. As the TwinRX channels
>>     are a superheterodyne receivers, I don't expect that the DC
>>     component appears, but it happens.
>>
>>     Is it possible that the TwinRX I'm using is not working properly?
>>     Or am I missing some settings?
>>
>>     4) Can somebody provide a screenshot of the spectrum of the
>>     TwinRx channels with the same settings at 1) for the tuning
>>     frequencies of 450 MHz and 2450 MHz?
>>
>>     Thank you.
>>
>>
>>     Best regards,
>>
>>     Carlo Venier
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     What happens if you turn the gain down about 5dB?=C2=A0=C2=A0=C2=A0=
 What are you
>     using to provide a perfectly-flat noise input?
>
>     What are you using to collect the data that produced these plots?
>
>     The analog bandwidth of the TwinRX is limited to 80MHz, and uses
>     SAW filters at the 1st IF (TA0824A and TA0851A, depending
>     =C2=A0 on whether it's operating in "low band" or "high band"). The
>     final IF filter is a discrete multi-stage design, but I don't
>     =C2=A0 know what it's filter shape is.
>
>     IN ADDITION, there are RF input filters that are selected based on
>     the tuned RF frequency.=C2=A0=C2=A0=C2=A0 The end result of all of =
these
>     =C2=A0 filters is that the final filter "shape" is the convolution =
of
>     all of those individual filter shapes.
>
>     I'm not sure what you mean by "sometimes the DC component shows
>     up".=C2=A0=C2=A0=C2=A0 I would expect there to be spurs at some poi=
nts--
>     =C2=A0 for example those that are exact multiples of internal clock=
s, etc.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------PqH518nxYJJnANEAe9Rl0iaV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/06/2023 12:03, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTbk37Yu2xCvLGAEm2BmSS0jg0OMm9nSpFouEPSBasfEtCg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto"><span
          style=3D"font-family:-moz-fixed;font-size:14px">Hi Marcus,</spa=
n><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <br style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">when I turn
          down the gain, the shape of the spectrum noisefloor remains
          non-flat. Also at a gain of 0, the shape is wavy.</span><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">I'm not
          feeding any RF source to the channels: they are 50 Ohm
          terminated.</span><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">The plots o=
f
          the spectrum were produced with a third party application.</spa=
n><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">However,
          I've recorded the samples by using the "rx_samples_to_file"
          tool and then plotted them with Matlab but the shape remains
          the same (non-flat).</span><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">I am aware
          that the final spectrum is the convolution of all the
          filtering stages, but I would like to know if this is the
          expected noisefloor spectrum for the TwinRx (for example for
          UBX the spectrum noisefloor is much more flat).</span><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">For this
          reason, I am asking if someone can provide a plot of the
          spectrum of both channels at a sampling rate of 100 Msps.</span=
><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <br style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">Thank you.<=
/span><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <br style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">Regards,</s=
pan><br
          style=3D"font-family:-moz-fixed;font-size:14px">
        <span style=3D"font-family:-moz-fixed;font-size:14px">Carlo Venie=
r</span></div>
    </blockquote>
    I can't get to this myself until probably the weekend.<br>
    <br>
    It is conventional when measuring receiver/filter response to use a
    noise source that produces enough power to be<br>
    =C2=A0 considerably *above* the noise figure of the receiver.=C2=A0 A=
t max
    gain, the TwinRx has a noise figure of about 4-5dB,<br>
    =C2=A0 and a terminator is a noise equivalent of 3dB.=C2=A0 A noise s=
ource of
    +15dB ENR would be useful here.<br>
    <br>
    What I have noticed is that at narrower bandwidths (10MHz), the
    response is non-flat (ignoring the inevitable edge roll-off)<br>
    =C2=A0 at a level of about 1dB.=C2=A0 That isn't unexpected when you =
have a
    long filter chain.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTbk37Yu2xCvLGAEm2BmSS0jg0OMm9nSpFouEPSBasfEtCg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Il gio 22 giu 2023, 15:30
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          ha scritto:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div>
            <div>On 22/06/2023 05:48, Carlo Venier wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"auto"><span style=3D"font-size:12.8px">Good
                  morning,</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">I have some questions
                  regarding the TwinRX daughterboard.</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">1) With the following
                  settings:</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Master Clock Rate
                  =3D 200 MHz</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Tuning Frequency
                  =3D 2450 MHz</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Sample rate =3D 100
                  Msps</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Gain =3D 93</span><br
                  style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0 =C2=A0=
=C2=A0 Every RF
                  connector is 50 Ohm terminated</span><br
                  style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 LO_OFFSET
                  disabled</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">I get a non-flat
                  spectrum. In particular, the center portion of it is
                  up to 5 dB higher than at +/- 40 MHz from the tuning
                  frequency. You can see this behaviour in the attached
                  figures.</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">2) The two channels have
                  a different behaviour below 1.8 GHz (for example at
                  450 MHz). The spectrum of channel :1 is a lot more
                  wavy than the spectrum of the channel :0. You can see
                  this behaviour in the attached figures.</span><br
                  style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">In any case, also below
                  1.8 GHz the delta between min and max level is about 5
                  dBs.</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">3) Sometimes, the DC
                  component pops up. As the TwinRX channels are a
                  superheterodyne receivers, I don't expect that the DC
                  component appears, but it happens.</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Is it possible that the
                  TwinRX I'm using is not working properly? Or am I
                  missing some settings?</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">4) Can somebody provide =
a
                  screenshot of the spectrum of the TwinRx channels with
                  the same settings at 1) for the tuning frequencies of
                  450 MHz and 2450 MHz?</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Thank you.</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Best regards,</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Carlo Venier</span></div=
>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true" class=3D"mo=
z-txt-link-freetext">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true" =
class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            What happens if you turn the gain down about 5dB?=C2=A0=C2=A0=
=C2=A0 What
            are you using to provide a perfectly-flat noise input?<br>
            <br>
            What are you using to collect the data that produced these
            plots?<br>
            <br>
            The analog bandwidth of the TwinRX is limited to 80MHz, and
            uses SAW filters at the 1st IF (TA0824A and TA0851A,
            depending<br>
            =C2=A0 on whether it's operating in "low band" or "high band"=
).=C2=A0
            The final IF filter is a discrete multi-stage design, but I
            don't<br>
            =C2=A0 know what it's filter shape is.<br>
            <br>
            IN ADDITION, there are RF input filters that are selected
            based on the tuned RF frequency.=C2=A0=C2=A0=C2=A0 The end re=
sult of all of
            these<br>
            =C2=A0 filters is that the final filter "shape" is the
            convolution of all of those individual filter shapes.<br>
            <br>
            I'm not sure what you mean by "sometimes the DC component
            shows up".=C2=A0=C2=A0=C2=A0 I would expect there to be spurs=
 at some
            points--<br>
            =C2=A0 for example those that are exact multiples of internal
            clocks, etc.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a=
><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------PqH518nxYJJnANEAe9Rl0iaV--

--===============8489967279908982969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8489967279908982969==--
