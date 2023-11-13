Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 987167EA5A3
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 22:56:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 922CC385237
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 16:56:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699912614; bh=nOWKv3poVAUB+ZX6cxmd+Ja2ibTI5OBmislKU4pidOI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RGjPFZb/4Adj7YQ/Zsa5SsHauf5sxc5IXrBxEFGY5T2y8rvMbQYGs9LnHdBNJmhm7
	 pdSCLKQ1sPaH7NB5/hRd4OQfLD17suy7xqbqeUPO1HiI7bhTxt6GJ2G+qeCYSTEXfW
	 h3evsLX/cMk3BV8ZFWVWyeG0RS4jxVpF6DwRdxu8/utqWLm5X0bvUVqrcDFCE9CTxh
	 8ldgej6sul2UJy1o/higoqpZA+gA2OKQeeghtxGwHaT3rS4LA+XkkF0Jooj5zdMq8S
	 3kDmayUvg2O4t16B4bYNN68rUw9Dmmdi6iYQbFCMhsE5rghq4knkbPeQ3CN2nYCHdy
	 LKbb98nSvKNEg==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 945DF3851C9
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 16:55:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LGRDxEyk";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-66cfd35f595so25635256d6.2
        for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 13:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699912557; x=1700517357; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=apRigbTwXBMWuseJCLEe2daxt9fOy2NxZET304vzXec=;
        b=LGRDxEykgRHVvUQcuAMjWzdjWIoBDgqMvbwC4Th5TDHwXiiDzsOkOQR1fhhDW9c3fM
         WmEhBPuCH/2wL2uo0QTtctlTAd4pgzZp+cRASvboSgSFruo84A4FYcEwQfGGTseW4DAh
         JJYWtWljhDhcDQ/Uc82lCjciOQWgZKpTj7VKfZ5tbCgbYXZed8/yoflqThOqbzLnuhSD
         igxAFbI/MyC2N7FsHVzCW00BPuev6DPZC9/ZH5B2PNHlhYTZZJIhDAeuLkN8JMnO7ehU
         GRWSLp8HJxtL3AwWknaNxDqIvcAX1oWJZ2idgq/L+ocse+0CVbh6OOEAqsRQvOeZ4f9M
         LR/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699912557; x=1700517357;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=apRigbTwXBMWuseJCLEe2daxt9fOy2NxZET304vzXec=;
        b=EIlmOWs2BgHOYLY+Hm90yMkRl9Mqcyi0d75hJD+gZ0CwfK0YWfQHXWWLIPV89yuvaV
         Q8iXd1X8ezYoFkHOcvPOLU6+siptSNy269Jwmz+ZzmW7wZ0c9wfmHHk6i8RC4O92bKYZ
         qr6AoEEXfB1fNd8bTg3xt/2OTgvXZY0bXVYPJtvyYO8At8dvfwX/JX+U9DrviDY1fugX
         d4RKB8AOa0VywK396y6qPySJW0CVNPC6n3ELrAGA5eHajj/8AWdlWSQ01DCEJB3WabIn
         PTDAJ/6hbupr12WEZRX922ktZqgNVsjUL9ffsi32UEGXW/nIxavpl2f9rT1Gg+nNcvxf
         NSCQ==
X-Gm-Message-State: AOJu0YyDXBzjV1f8U/ZEaHbT33yPzzG7SKNkX5thG9JDluTYzJZ6bQoB
	mt0hlGioiZCzTk8ttEkAEeggK7wr+fE=
X-Google-Smtp-Source: AGHT+IEEQ/w4Eas4G3q1xxnbFuSDmNdsFVuihmDaXfOzgOubkgD4K5uCKpfyJhfPHQlWRPDNpRzMVQ==
X-Received: by 2002:a05:6214:2303:b0:66d:19b5:9a9 with SMTP id gc3-20020a056214230300b0066d19b509a9mr655838qvb.65.1699912556838;
        Mon, 13 Nov 2023 13:55:56 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id s19-20020a05620a16b300b00772662b7804sm2171028qkj.100.2023.11.13.13.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Nov 2023 13:55:56 -0800 (PST)
Message-ID: <957950fe-114f-4db7-80e9-207cb5541db3@gmail.com>
Date: Mon, 13 Nov 2023 16:55:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steve Hamn <stevehamn311@gmail.com>
References: <CAOYGa73uEs_dg2Tb8O8VHpVkyY-HJ3+r2e690zoJvgoT4=h=CA@mail.gmail.com>
 <14c9a612-99e9-4310-a234-bf8f444d618c@gmail.com>
 <CAOYGa71iDGV63jtAVvXR_w=8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa71iDGV63jtAVvXR_w=8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gmail.com>
Message-ID-Hash: GL34RIWC2Y4QEIBPX77OQXJAT4IWKBM3
X-Message-ID-Hash: GL34RIWC2Y4QEIBPX77OQXJAT4IWKBM3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 AGC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GL34RIWC2Y4QEIBPX77OQXJAT4IWKBM3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3730993703388887036=="

This is a multi-part message in MIME format.
--===============3730993703388887036==
Content-Type: multipart/alternative;
 boundary="------------nIbcqp4gZYaMHrPJeeAA5U9t"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nIbcqp4gZYaMHrPJeeAA5U9t
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/11/2023 16:48, Steve Hamn wrote:
> Thanks for the response. Reading that page about the tune_request_t it=20
> says "/The daughterboards that support this functionality are: WBX=20
> (all revisions), WBX-120, SBX (all revisions), SBX-120, CBX, CBX-120,=20
> UBX, UBX-160/" so will that work for the N320? I actually am trying to=20
> avoid the DC signal and have manually tuned 2MHz above the LO=20
> (fc=3D220MHz, BW=3D2MHz-4MHz) but still see this behavior.
The N320 has a different parts line-up from any of those boards, which=20
are intended for "motherboard" type radios--including
 =C2=A0 the USRP N2xx and USRP X3xx.

>
> I haven't exactly measured the dBm of my signals. I'm transmitting=20
> over the air from one N320 and receiving from a second N320, but by=20
> strong/weak I mean my "weak" signal is -30dB down from my "strong"=20
> signal. I don't see any clipping in my "strong" signal.
>
> I guess what should I expect from the digital samples out from the SDR=20
> and how does that work? Should I see=C2=A0+/- 1.0 for -15dBm, and=20
> then=C2=A0+/-0.001 for a -45dBm signal? (my understanding is that's NOT=
 how=20
> it works). Is there some kind of adaptive behavior that autoscales the=20
> data, and are there any details available how that works or how to=20
> turn it off? It appears to me from my sporadic testing that in short=20
> time scales (e.g. microseconds) a XdB change in signal level does=20
> result in an XdB change in digital output, but from longer timescales=20
> (e.g. 100's of milliseconds or just receive command to receive=20
> command) they do not appear correlated.
>
There is no autoscaling of the data, unless you're doing it yourself.=C2=A0=
=C2=A0=C2=A0=20
Remember that in a DSP radios the samples are
 =C2=A0 linear-proxies for antenna *VOLTAGE*,=C2=A0=C2=A0 so a change in =
voltage of a=20
factor of 100 is a change in *power* of 100**2.

The power in a complex-baseband signal is:

PWR =3D AVG(I*I + Q*Q)

So with this, if you change the input power by 10dB, the PWR calculated=20
should change by approximately 10dB (there's edge
 =C2=A0 roll-off in the passband).

A -15dBm signal will likely be clipped, depending your RF gain setting.


> Thank you,
>
> Steve
>
> On Mon, Nov 13, 2023 at 8:04=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 13/11/2023 05:08, Steve Hamn wrote:
>     > Hello,
>     >
>     > Does the Ettus N320 employ any type of AGC? If so is there a
>     detailed
>     > description of it anywhere? Or can it be disabled?
>     I don't believe the N320 implements any type of AGC.
>     >
>     > I notice that if I send in a strong signal the digital output
>     from the
>     > SDR is approx +/-1. If I send in a weak signal it's also +/-1 jus=
t
>     > noisier. I've been experimenting with sending in amplitude
>     modulated
>     > pulses. Seems like over 'long' timescales there is some sort of
>     > automatic adjustment going on that is corrupting my
>     measurements. What
>     > am I missing here?
>     A narrowband signal right at the tuning center can get modified by
>     the
>     built-in DC offset compensation in the DSP logic
>     =C2=A0=C2=A0 in the radio.=C2=A0 Look into "offset tuning":
>
>     https://files.ettus.com/manual/page_general.html
>
>     And the API bits here:
>
>     https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>
>     The idea is that you ask the radio to offset the LO away from the D=
C
>     anomaly, and then the DSP in the radio shifts the bandwidth
>     =C2=A0=C2=A0so that you get exactly the desired center frequency th=
at you
>     asked for.
>
>
>
>     What do you mean by "weak" and "strong" signal.=C2=A0 The maximum
>     recommended
>     input to the radio is -15dBM, and its narrowband
>     =C2=A0=C2=A0 MDS at max gain is probably somewhere south of -120dBm=
.=C2=A0=C2=A0=C2=A0 So both
>     your "weak" and "strong" signals may just be clipping, or
>     =C2=A0=C2=A0 you're mis-interpreting the data that you are collecti=
ng.=C2=A0 The
>     radio
>     really does have a quite high dynamic range, but it
>     =C2=A0=C2=A0 does not implement AGC as far as I know.=C2=A0 That wo=
uld be something
>     you'd have to implement in your signal processing flow.
>
>
>     >
>     > Conversely it appears I am able to control the TX signal by just
>     > sending out smaller numbers, and I don't see this (or am I just
>     > missing it)?
>     >
>     > Thanks in advance for any=C2=A0help or insight you can provide!
>     >
>     > Thanks,
>     >
>     > Steve
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------nIbcqp4gZYaMHrPJeeAA5U9t
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/11/2023 16:48, Steve Hamn wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa71iDGV63jtAVvXR_w=3D8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thanks for the response. Reading that page about the
          tune_request_t it says "<i>The daughterboards that support
            this functionality are: WBX (all revisions), WBX-120, SBX
            (all revisions), SBX-120, CBX, CBX-120, UBX, UBX-160</i>" so
          will that work for the N320? I actually am trying to avoid the
          DC signal and have manually tuned 2MHz above the LO
          (fc=3D220MHz, BW=3D2MHz-4MHz) but still see this behavior. <br>
        </div>
      </div>
    </blockquote>
    The N320 has a different parts line-up from any of those boards,
    which are intended for "motherboard" type radios--including<br>
    =C2=A0 the USRP N2xx and USRP X3xx.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa71iDGV63jtAVvXR_w=3D8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>I haven't exactly measured the dBm of my signals. I'm
          transmitting over the air from one N320 and receiving from a
          second N320, but by strong/weak I mean my "weak" signal is
          -30dB down from my "strong" signal. I don't see any clipping
          in my "strong" signal.=C2=A0</div>
        <div><br>
        </div>
        <div>I guess what should I expect from the digital samples out
          from the SDR and how does that work? Should I see=C2=A0+/- 1.0 =
for
          -15dBm, and then=C2=A0+/-0.001 for a -45dBm signal? (my
          understanding is that's NOT how it works). Is there some kind
          of adaptive behavior that autoscales the data, and are there
          any details available how that works or how to turn it off? It
          appears to me from my sporadic testing that in short time
          scales (e.g. microseconds) a XdB change in signal level does
          result in an XdB change in digital output, but from longer
          timescales (e.g. 100's of milliseconds or just receive command
          to receive command) they do not appear correlated.=C2=A0</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    There is no autoscaling of the data, unless you're doing it
    yourself.=C2=A0=C2=A0=C2=A0 Remember that in a DSP radios the samples=
 are<br>
    =C2=A0 linear-proxies for antenna *VOLTAGE*,=C2=A0=C2=A0 so a change =
in voltage of
    a factor of 100 is a change in *power* of 100**2.<br>
    <br>
    The power in a complex-baseband signal is:<br>
    <br>
    PWR =3D AVG(I*I + Q*Q)<br>
    <br>
    So with this, if you change the input power by 10dB, the PWR
    calculated should change by approximately 10dB (there's edge<br>
    =C2=A0 roll-off in the passband).<br>
    <br>
    A -15dBm signal will likely be clipped, depending your RF gain
    setting.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa71iDGV63jtAVvXR_w=3D8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>Thank you,=C2=A0</div>
        <div><br>
        </div>
        <div>Steve</div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 13, 2023 at
            8:04=E2=80=AFAM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On
            13/11/2023 05:08, Steve Hamn wrote:<br>
            &gt; Hello,<br>
            &gt;<br>
            &gt; Does the Ettus N320 employ any type of AGC? If so is
            there a detailed <br>
            &gt; description of it anywhere? Or can it be disabled?<br>
            I don't believe the N320 implements any type of AGC.<br>
            &gt;<br>
            &gt; I notice that if I send in a strong signal the digital
            output from the <br>
            &gt; SDR is approx +/-1. If I send in a weak signal it's
            also +/-1 just <br>
            &gt; noisier. I've been experimenting with sending in
            amplitude modulated <br>
            &gt; pulses. Seems like over 'long' timescales there is some
            sort of <br>
            &gt; automatic adjustment going on that is corrupting my
            measurements. What <br>
            &gt; am I missing here?<br>
            A narrowband signal right at the tuning center can get
            modified by the <br>
            built-in DC offset compensation in the DSP logic<br>
            =C2=A0=C2=A0 in the radio.=C2=A0 Look into "offset tuning":<b=
r>
            <br>
            <a href=3D"https://files.ettus.com/manual/page_general.html"
              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"tru=
e"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/page_general.html</a><br>
            <br>
            And the API bits here:<br>
            <br>
            <a
href=3D"https://files.ettus.com/manual/structuhd_1_1tune__request__t.html=
"
              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"tru=
e"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/structuhd_1_1tune__request__t.html</a><br>
            <br>
            The idea is that you ask the radio to offset the LO away
            from the DC <br>
            anomaly, and then the DSP in the radio shifts the bandwidth<b=
r>
            =C2=A0=C2=A0so that you get exactly the desired center freque=
ncy that
            you asked for.<br>
            <br>
            <br>
            <br>
            What do you mean by "weak" and "strong" signal.=C2=A0 The max=
imum
            recommended <br>
            input to the radio is -15dBM, and its narrowband<br>
            =C2=A0=C2=A0 MDS at max gain is probably somewhere south of
            -120dBm.=C2=A0=C2=A0=C2=A0 So both <br>
            your "weak" and "strong" signals may just be clipping, or<br>
            =C2=A0=C2=A0 you're mis-interpreting the data that you are
            collecting.=C2=A0 The radio <br>
            really does have a quite high dynamic range, but it<br>
            =C2=A0=C2=A0 does not implement AGC as far as I know.=C2=A0 T=
hat would be
            something <br>
            you'd have to implement in your signal processing flow.<br>
            <br>
            <br>
            &gt;<br>
            &gt; Conversely it appears I am able to control the TX
            signal by just <br>
            &gt; sending out smaller numbers, and I don't see this (or
            am I just <br>
            &gt; missing it)?<br>
            &gt;<br>
            &gt; Thanks in advance for any=C2=A0help or insight you can
            provide!<br>
            &gt;<br>
            &gt; Thanks,<br>
            &gt;<br>
            &gt; Steve<br>
            &gt;<br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            &gt; To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------nIbcqp4gZYaMHrPJeeAA5U9t--

--===============3730993703388887036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3730993703388887036==--
