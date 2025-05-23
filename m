Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCF4AC248C
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 15:58:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E75FA385882
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 09:58:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748008720; bh=t7kX7Qe43eC2Y+AkFcPLaNPyCCdI2LGej8JXiRkXKgM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cG+Dfvh1BQAfEcZLpBcTEVCLVlrisJlpcwQqmWDZ+/zj8AqbwuvWTE6jfK5Dys2/k
	 QARF67LVGqKzUhYUQAgcaxHVLhSuD1JAwafDHArlG7jEaR8Mzr/yYZedoZPB2l1MPE
	 QrM0aCULKaU3uyDGhHFLUAck9KcpJIyPbYLvOPqKipDaiqBCjhbQADd2cdTz7EZ6Y/
	 UIzkgfM/8TGSWFtoHyvD9LzNa2szHZeuO87S/8u3G6w5J464KTJcus0GMC6wwTWcq/
	 RTXsFSuwU041npDa2DExa8Qs/yWbOZ84tPonuetmuqZB6ANhkZVvGUFu65Jxg8QPrc
	 x9KbWtxvTd1Mg==
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 10B6D385267
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 09:57:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jwZfQ8sB";
	dkim-atps=neutral
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-22d95f0dda4so91573855ad.2
        for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 06:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748008665; x=1748613465; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nGf1CjCasHHdck39I4HoXJv2ttqlWOsvbZn6rwF7vog=;
        b=jwZfQ8sBCxuK1OgUDDhWOeCR3ilbDh+IIKsJHfPDQ/JWoreOmJLZHL8EzmyLJyVnKo
         qj5fMYhPwOv8AfhK82vbPLyHe4FHd58Czk+oZmsKaRoIoaqZK7vBnweslIqbR694yqop
         FDY59UApAk4y5D5cdXF1EqgLwsNZcNGreJZNiinXTmFzVoDhWElWhiKA4X7eSTuqlMwy
         LWhoxK6Mx0+nqAsnBgloNoWHji3SE2kuJ9CCqNWEUy7z3yV5rdRISgOeXwVr/uCVpqEB
         VmiG4oKskhvMGEZdQE+yUQ/TdPpfnB5BnSE6LMQ/36SKoyvK966imUntONKWg0i6cbh4
         3dMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748008665; x=1748613465;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nGf1CjCasHHdck39I4HoXJv2ttqlWOsvbZn6rwF7vog=;
        b=NbGbKvKka19dvo9HVnLpkR04mJNH/lVpb7kDejHscRd1KdkvZkR8nwqQpfvRNzES6F
         DGlA7Nb6QVxwY4pt2tuJAgm9TVFCZAcaVA7TlxT3jrptz2krFx7ZP5PhixoiKdvKpcZU
         CTfUTL5YyzAYHEXSD4DAYPtSq0gojvpoOPfnuFEvcfYQEK+Rxquxe0e+LHoHbeOZhlGb
         5o/vYwcHLZaVp+D4rxud8aJk8czS3MR4oDfzie23nzLu5Ne/L6IkUs9ZEk4QeQDH5h2e
         wh7hXV4E0mPHW8eLc55xSWw2E+gMCv5YACJc4/ZDDS0xWwNmibkAzhBQbzgdjztd5lzd
         TICg==
X-Gm-Message-State: AOJu0Yz1XjpJTSCNbSX+bi2iLC72tfB7yI9/wqRiOu4HCayciq+KMAbB
	89NuC7WXw3s0dBGo/8VKg/7TomhWovGnH/WIpW/Ii4HPLRNPxemXXpJ6TpZjFt2j
X-Gm-Gg: ASbGnctQv20xOUI18GFx6iXyLxNiHzyQ/+RhCqiWbYwC5gOL4ZIIhBD64Fe5nZGogo7
	zG1mk/8QNSlehH+XwhmynodxF67JJjkdhREffHd0TC7dREjAoiCDayJR4oysaUVix+6PMLTIZTt
	uIbnHXlJdu7mjHR5oi66a337mSpt5b10NdnE4kKNxehiLcWwRyJLtv5/YUpOppLuOwhTByJJCFb
	z0QB2Lso+gBdt/1egAJfE+Tmp4p7x8J6q18VR/I/1hfUwagpeyO/vLNwl3ptFK1FD9cmsIUpsHc
	Q6c+FBIJ5870QialuydLWf/CYZEO5CkG7lVyRoBiz/3TEsItUyvebSI0IRWJ
X-Google-Smtp-Source: AGHT+IEjoX614Ql2Ap9lElWgEBf5gTom4D/Brumk7l7mY8Kx44pfEfVZ28/KDgSoSFHwYZmA5M28zQ==
X-Received: by 2002:a05:6214:d07:b0:6f9:201a:c05d with SMTP id 6a1803df08f44-6f9201ac50emr174718546d6.33.1748008654386;
        Fri, 23 May 2025 06:57:34 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6f8b097a782sm114820716d6.104.2025.05.23.06.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 06:57:33 -0700 (PDT)
Message-ID: <39c78583-ffdf-4575-8749-f37e1876dff5@gmail.com>
Date: Fri, 23 May 2025 09:57:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Kossler <rkossler@nd.edu>, Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
 <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com>
 <CAAxXO2FJK5QP4NPiYC_S0pu94SA4Xb5jn6OW_PfmY3cmf_PGfQ@mail.gmail.com>
 <CAAxXO2EsEM8xZk_awdZ9DW2w-CqRTKy9owCzy1ERckT=K5S7sQ@mail.gmail.com>
 <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRsMCtJ=VOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gmail.com>
Message-ID-Hash: 7SPDYMTG6Q6WCEEEZUGXX4MYMCEFYOVQ
X-Message-ID-Hash: 7SPDYMTG6Q6WCEEEZUGXX4MYMCEFYOVQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7SPDYMTG6Q6WCEEEZUGXX4MYMCEFYOVQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7030244091138841606=="

This is a multi-part message in MIME format.
--===============7030244091138841606==
Content-Type: multipart/alternative;
 boundary="------------hbwU07TL20H9ZjMG6TwB4Cor"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------hbwU07TL20H9ZjMG6TwB4Cor
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-05-23 09:49, Rob Kossler wrote:
> Hi Nikos,
> Your RF card has 120 MHz bandwidth.=C2=A0 The strong tone you see will=20
> always be at the center.=C2=A0 But, if your application can tolerate us=
ing=20
> an instantaneous bandwidth < 60 MHz, you can use offset tuning as=20
> Marcus mentioned.=C2=A0 To do this you simply need to create a tune req=
uest=20
> with your desired RF frequency and then specify an LO offset frequency=20
> of 30 MHz. This is all that is needed (again assuming that your=20
> bandwidth of interest is < 60 MHz). This link=20
> <https://dsp.stackexchange.com/questions/30562/large-spike-at-the-cente=
r-frequency-when-using-ettus-x310>=20
> discusses the topic.
>
> Also, if you want to reduce the DC offset, there are calibrations for=20
> the X310 - one of which will mitigate this signal.
> Rob
Just a note that AFAIR, the *RX* DC-offset correction is something that=20
doesn't require input from the calibration routines--it runs all the=20
time (if its turned on).

But phase/amplitude *balance* does require that you run the appropriate=20
CAL utilities:

https://files.ettus.com/manual/page_calibration.html


>
> On Fri, May 23, 2025 at 8:11=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>=20
> wrote:
>
>     I have implemented the following calls for uhd_usrp_set_rx_lo_freq:
>
>     uhd_string_vector_handle =C2=A0names;
>     uhd_string_vector_make(&names);
>     if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel, &names=
)))
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, "Failed to get lo names (%d). =
%s.\n", 0, FL, LN,
>     FN, err, uhdError(err));
>     if ((err =3D uhd_string_vector_size(names, &len)))
>     =C2=A0 =C2=A0 =C2=A0warn(log, "Failed to get lo names size (%d).
>     %s.\n",0,FL,LN,FN,err, uhdError(err));
>     if (!len)
>     {
>     =C2=A0 =C2=A0 =C2=A0 error(log, "No lo names found on channel %d.\n=
", 0, FL, LN,
>     FN, channel);
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_string_vector_free(&names);
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);
>     }
>     uhd_string_vector_free(&names);
>
>     The problem is that names always returns 0. This is not right for
>     my SBX-120, or any
>     daughterboard with=C2=A0 a tuner:( This is what i can get from the =
API.
>     There are no LO examples.
>     I have seen lo_enable() in c++, but nothing exported to C. What am
>     I missing?
>
>     TIA
>     Nikos
>
>     On Fri, May 23, 2025 at 8:12=E2=80=AFAM Nikos Balkanas
>     <nbalkanas@gmail.com> wrote:
>
>         Thx Marcus,
>
>         For your fast and informative answers. Sorry it took me a
>         while to reply,
>         but I'm still trying to get:
>         tune_request(freq, lo_off)
>         to work in C.
>         My X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu 24.04.
>         True about the tuner. Much cheaper and easier to implement it
>         in analog.
>         I am using your FPGA image. Haven't touched it myself, yet.
>         So, the spike is pretty narrow to interfere with my signals,
>         but still messes my power calculations:(
>         I already implemented the integer frequency tuner and working
>         on the low oscillator offset.
>         If you have any pointers about it, feel free to advise.
>         LO is not part of the request_tuner_t struct. It is set
>         independently.
>         Is this the same LO in uhd_usrp_set_rx_lo_freq?
>         If this is the case I can modify it externally:)
>
>         BR
>         Nikos
>
>         On Fri, May 23, 2025 at 4:40=E2=80=AFAM Marcus D. Leech
>         <patchvonbraun@gmail.com> wrote:
>
>             On 2025-05-22 21:31, Nikos Balkanas wrote:
>>             The spike is very clean to come from outside.
>>             Must be from my X310. My tuner must be adding a signal to =
the
>>             center frequency. The small artifact at 2 Ghz is probably
>>             the tuner not
>>             equilibrating fully.
>>             I recently updated my FPGA image. Is that where the tuner
>>             lives?
>             You haven't mentioned in this thread which daughtercard
>             you're using.=C2=A0=C2=A0 RF front-ends that use complex-ba=
seband
>             =C2=A0 downconversion suffer from something called "DC-offs=
et",
>             which produces a spike at 0Hz in the complex spectrum.
>             =C2=A0 The radio block in the standard FPGAs has methods fo=
r
>             reducing this, unless you turn it off.=C2=A0 This is a very=
 very
>             =C2=A0 *normal* thing for complex-baseband receiver chains.
>
>             If the algorithms are engaged and working, then there'll
>             still be a central spike, but *considerably* reduced, and
>             I find that
>             =C2=A0 said spike is usually swamped by external signals, e=
ven
>             in radio astronomy.
>
>             The other method that people use is to use "offset
>             tuning".=C2=A0 Where the tuner is tuned to a different RF
>             frequency, and the
>             =C2=A0=C2=A0 DDC brings your signal of interest down to 0Hz=
.
>
>             https://files.ettus.com/manual/page_general.html#general_tu=
ning
>
>             The "tuner" is an analog collection of components,
>             including an LO generator, and mixers.=C2=A0 While it is
>             *controlled* through
>             =C2=A0 the FPGA, it is an analog subsystem.
>
>
>>
>>             On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas
>>             <nbalkanas@gmail.com> wrote:
>>
>>                 Hello,
>>
>>                 Whenever I look at my spectrum I always see an energy
>>                 spike at the center frequency.
>>                 In the first image you can see a spike at 2, but not
>>                 at 2.001 Ghz. In the next image,
>>                 =C2=A0at 2.001 Ghz you can see the energy spike at the
>>                 center frequency, but also a small
>>                 =C2=A0spike at 2 Ghz.
>>                 I have verified these results by both fosphor (OpenCL
>>                 fft) and fftw3f. Besides, if it were
>>                 =C2=A0an fft artifact, why is the spike at 2 Ghz still
>>                 visible after a few mins? These spikes
>>                 =C2=A0seem to be transient, but real. In that part of =
the
>>                 spectrum, you there is no traffic. Could it be=C2=A0
>>                 harmonics from my power supply? Problems with my
>>                 X-310? My transmitter
>>                 =C2=A0doing funny things (I have 2 boards and not enab=
ling
>>                 my transmitter anywhere)?
>>                 Naming of images is freq_sr.jpg. All are in Mhz.
>>
>>                 TIA
>>                 Nikos
>>
>>
>>             _______________________________________________
>>             USRP-users mailing list --usrp-users@lists.ettus.com
>>             To unsubscribe send an email tousrp-users-leave@lists.ettu=
s.com
>
>             _______________________________________________
>             USRP-users mailing list -- usrp-users@lists.ettus.com
>             To unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------hbwU07TL20H9ZjMG6TwB4Cor
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-05-23 09:49, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRsMCtJ=3DVOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Nikos,
        <div>Your RF card has 120 MHz bandwidth.=C2=A0 The strong tone yo=
u
          see will always be at the center.=C2=A0 But, if your applicatio=
n
          can tolerate using an instantaneous bandwidth &lt; 60 MHz, you
          can use offset tuning as Marcus mentioned.=C2=A0 To do this you
          simply need to create a tune request with your desired RF
          frequency and then specify an LO offset frequency of 30 MHz.=C2=
=A0
          This is all that is needed (again assuming that your bandwidth
          of interest is &lt; 60 MHz).=C2=A0 <a
href=3D"https://dsp.stackexchange.com/questions/30562/large-spike-at-the-=
center-frequency-when-using-ettus-x310"
            moz-do-not-send=3D"true">This link</a> discusses the topic.</=
div>
        <div><br>
        </div>
        <div>Also, if you want to reduce the DC offset, there are
          calibrations for the X310 - one of which will mitigate this
          signal.</div>
        <div>Rob</div>
      </div>
    </blockquote>
    Just a note that AFAIR, the *RX* DC-offset correction is something
    that doesn't require input from the calibration routines--it runs
    all the time (if its turned on).<br>
    <br>
    But phase/amplitude *balance* does require that you run the
    appropriate CAL utilities:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_calibration.html">https://files.ettus.com/manual/page_calibrati=
on.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRsMCtJ=3DVOh+q3G30o6wP90Kk1aNVuECm6AJgOwR6Q6-w@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          8:11=E2=80=AFAM Nikos Balkanas &lt;<a
            href=3D"mailto:nbalkanas@gmail.com" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              implemented the following calls for
              uhd_usrp_set_rx_lo_freq:</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">uhd_st=
ring_vector_handle
              =C2=A0names;<br>
              uhd_string_vector_make(&amp;names);<br>
              if ((err =3D uhd_usrp_get_rx_lo_names(dev[channel], channel=
,
              &amp;names)))<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0warn(log, "Failed to get lo name=
s (%d). %s.\n", 0,
              FL, LN, FN, err, uhdError(err));<br>
              if ((err =3D uhd_string_vector_size(names, &amp;len)))<br>
              =C2=A0 =C2=A0 =C2=A0warn(log, "Failed to get lo names size =
(%d).
              %s.\n",0,FL,LN,FN,err, uhdError(err));<br>
              if (!len)<br>
              {<br>
              =C2=A0 =C2=A0 =C2=A0 error(log, "No lo names found on chann=
el %d.\n", 0,
              FL, LN, FN, channel);<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_string_vector_free(&amp;name=
s);<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);</div>
            <div class=3D"gmail_default" style=3D"font-size:small">}</div=
>
            <div class=3D"gmail_default" style=3D"font-size:small">uhd_st=
ring_vector_free(&amp;names);</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">The
              problem is that names always returns 0. This is not right
              for my SBX-120, or any</div>
            <div class=3D"gmail_default" style=3D"font-size:small">daught=
erboard
              with=C2=A0 a tuner:( This is what i can get from the API. T=
here
              are no LO examples.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              seen lo_enable() in c++, but nothing exported to C. What
              am I missing?</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">TIA</d=
iv>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos<=
/div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
              8:12=E2=80=AFAM Nikos Balkanas &lt;<a
                href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
nbalkanas@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">Th=
x
                  Marcus,</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><b=
r>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">Fo=
r
                  your fast and informative answers. Sorry it took me a
                  while to reply,</div>
                <div class=3D"gmail_default" style=3D"font-size:small">bu=
t
                  I'm still trying to get:=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">tu=
ne_request(freq,
                  lo_off)</div>
                <div class=3D"gmail_default" style=3D"font-size:small">to
                  work in C.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">My
                  X310 has 2 SBX-120 boards. Using uhd 4.6.0 in Ubuntu
                  24.04.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Tr=
ue
                  about the tuner. Much cheaper and easier to implement
                  it in analog.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I =
am
                  using your FPGA image. Haven't touched it myself, yet.<=
/div>
                <div class=3D"gmail_default" style=3D"font-size:small">So=
,
                  the spike is pretty narrow to interfere with my
                  signals, but still messes my power calculations:(</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I
                  already implemented the integer frequency tuner and
                  working on the low oscillator offset.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">If
                  you have any pointers about it, feel free to advise.=C2=
=A0=C2=A0</div>
                <div class=3D"gmail_default" style=3D"font-size:small">LO=
 is
                  not part of the request_tuner_t struct. It is set
                  independently.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Is
                  this the same LO in uhd_usrp_set_rx_lo_freq?</div>
                <div class=3D"gmail_default" style=3D"font-size:small">If
                  this is the case I can modify it externally:)</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><b=
r>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">BR=
</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Ni=
kos</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 202=
5
                  at 4:40=E2=80=AFAM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div>
                    <div>On 2025-05-22 21:31, Nikos Balkanas wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">The spike is very
                          clean to come from outside.</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Must be from my X310.
                          My tuner must be adding a signal to the</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">center frequency. The
                          small artifact at 2 Ghz is probably the tuner
                          not=C2=A0</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">equilibrating fully.<=
/div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">I recently updated my
                          FPGA image. Is that where the tuner lives?</div=
>
                      </div>
                    </blockquote>
                    You haven't mentioned in this thread which
                    daughtercard you're using.=C2=A0=C2=A0 RF front-ends =
that use
                    complex-baseband<br>
                    =C2=A0 downconversion suffer from something called
                    "DC-offset", which produces a spike at 0Hz in the
                    complex spectrum.<br>
                    =C2=A0 The radio block in the standard FPGAs has meth=
ods
                    for reducing this, unless you turn it off.=C2=A0 This=
 is
                    a very very<br>
                    =C2=A0 *normal* thing for complex-baseband receiver
                    chains.<br>
                    <br>
                    If the algorithms are engaged and working, then
                    there'll still be a central spike, but
                    *considerably* reduced, and I find that<br>
                    =C2=A0 said spike is usually swamped by external sign=
als,
                    even in radio astronomy.<br>
                    <br>
                    The other method that people use is to use "offset
                    tuning".=C2=A0 Where the tuner is tuned to a differen=
t RF
                    frequency, and the<br>
                    =C2=A0=C2=A0 DDC brings your signal of interest down =
to 0Hz.<br>
                    <br>
                    <a
href=3D"https://files.ettus.com/manual/page_general.html#general_tuning"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://files.ettus=
.com/manual/page_general.html#general_tuning</a><br>
                    <br>
                    The "tuner" is an analog collection of components,
                    including an LO generator, and mixers.=C2=A0 While it=
 is
                    *controlled* through<br>
                    =C2=A0 the FPGA, it is an analog subsystem.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May
                          23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas &lt;=
<a
                            href=3D"mailto:nbalkanas@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">nbalkanas@gma=
il.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Hello,</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small"><br>
                            </div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Whenever I look a=
t
                              my spectrum I always see an energy spike
                              at the center frequency.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">In the first imag=
e
                              you can see a spike at 2, but not at 2.001
                              Ghz. In the next image,</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">=C2=A0at 2.001 Gh=
z you
                              can see the energy spike at the center
                              frequency, but also a small</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">=C2=A0spike at 2 =
Ghz.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">I have verified
                              these results by both fosphor (OpenCL fft)
                              and fftw3f. Besides, if it were</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">=C2=A0an fft arti=
fact,
                              why is the spike at 2 Ghz still visible
                              after a few mins? These spikes</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">=C2=A0seem to be
                              transient, but real. In that part of the
                              spectrum, you there is no traffic. Could
                              it be=C2=A0 harmonics from my power supply?
                              Problems with my X-310? My transmitter</div=
>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">=C2=A0doing funny
                              things (I have 2 boards and not enabling
                              my transmitter anywhere)?</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Naming of images
                              is freq_sr.jpg. All are in Mhz.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small"><br>
                            </div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">TIA</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Nikos</div>
                          </div>
                        </blockquote>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>
To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------hbwU07TL20H9ZjMG6TwB4Cor--

--===============7030244091138841606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7030244091138841606==--
