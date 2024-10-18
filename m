Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F8A9A436C
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 18:14:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A0923858D4
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 12:14:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729268048; bh=h8ASEnTdHQ8Fl+v6uBUxtrRIHA5OzU0N5mN0ENYZBXg=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nMZxAwkLrenYId6wUAZkI73brM/RJJJfBHFmuwgOCF3hqJxgON1OHcKDB93dfdq3c
	 dPOwUQOA229qpR8Vo2vurDBNrekvPZp+NS/gmviQZsQ7HO7ZtQUPzFcxtSh3AJ1TM4
	 +1lOXobBzkKEhDajJawP6xL/PFtklJa7pSPjdSAn3MZZWaso9oWkdorc5auHfCsTzt
	 mNW3/X5R+DeFCS+pb2YLEhQXSLjHQjaR62OpwJDAwWGMYjc/LuV7ZuHPJrtTkKRH0N
	 v/C1UqpzvS2iYbFGzF+LvP2JNUOWJDreHJo0gq2mxp7DTGqx4tqWIV4Rxts89UiiB3
	 expMXQJyApDAA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 32E0F38585A
	for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 12:13:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NlFkP/JQ";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4608da1bea5so15000221cf.1
        for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729268038; x=1729872838; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iyx41xp5EndzRKnrI75WfMYryA4eSsSXkX8I+VBGWWw=;
        b=NlFkP/JQ1RBhKdYVfy0He6gM9SGf8rl8URDHAdXfpGEpZ0jGoNIY0JmytHHVlAg9BP
         PYE5mYXGOcr3i9YnT/1wK8evmwDau5+xATaMfSDx+I2Osu4kvJ5TWEUH/kHD5kaVaH7+
         bLlbDb0MqX7QwFwgnFdFscr3x20kbmajCmQuiXIrnxAIPe1kV61TdUSmIuyco2BUnfNY
         7SZO0HbwobgqG401dQjf8fgorVr1KSsybIqDPp45hKEtIygomSUmFKOU40xNny03TqL3
         hpv7Qu69PHaMT/viDgOKkVleZ7govuM2k3iIL62x+CAcaqokSebbu73cK0EkxZnQbS1R
         4EvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729268038; x=1729872838;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iyx41xp5EndzRKnrI75WfMYryA4eSsSXkX8I+VBGWWw=;
        b=qXDML2fd8aniwJO1JuaQOrhRnhLwuyyTAnh/uHhkFMH5PGzKR0RDdXVwoBUcysWUrm
         dTmpLbKGeYbph0yNbFJyF6ARfkrBya9nyM+5Jv4POZ3TF1rYNNV/ZCRnUgld6PHko36e
         W5y4lo+iQP+vhOzorBoWOuKexJwHmttTJ+6qY2+pe295gWzQfHpaH6zTQiPRJ7BcLM9c
         GLB5f8ivwjZaN7FUy5zjq0kz7M6w1ThTM1+xF9ovaUo0wePCS+shL+GSWpYfifrTtsvk
         Uk7Ru2S91nCurowwxbYx0oxy2NcV/Z24yVHJW8hPuusd22ns5maru3pbQQMW5w4PrWB1
         PBnQ==
X-Gm-Message-State: AOJu0YwxrOR9cuUrNStYRq8V/q95FMEhWngA+WiHqStucya0Cc7xnRBJ
	0PBFbeOVKbYI2CCm98Gf4OWSAAsbVTNeTe5BpjCHoLVeE6Lct3PQ
X-Google-Smtp-Source: AGHT+IHPsJ3zW/AWnBrFhikQMJ3WHnmxaMsBWSgMabSjufp+NXiagtWP3y7twCqGm/ZFoWXyNHvbOw==
X-Received: by 2002:a05:622a:2298:b0:45d:9689:9de4 with SMTP id d75a77b69052e-460aee0367dmr43993721cf.43.1729268038374;
        Fri, 18 Oct 2024 09:13:58 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-460aea5f0e9sm8550331cf.85.2024.10.18.09.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 09:13:58 -0700 (PDT)
Message-ID: <34fa686f-7914-4447-be55-f2f0c8fdfdef@gmail.com>
Date: Fri, 18 Oct 2024 12:13:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>,
 Patrice PAJUSCO <patrice.pajusco@imt-atlantique.fr>
References: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com>
 <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com>
 <1595059048.6269059.1729267010623.JavaMail.zimbra@imt-atlantique.fr>
 <CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmail.com>
Message-ID-Hash: HZYCZYXZUJJ2NJAME2M256357IGCBWO2
X-Message-ID-Hash: HZYCZYXZUJJ2NJAME2M256357IGCBWO2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZYCZYXZUJJ2NJAME2M256357IGCBWO2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2145009774906376406=="

This is a multi-part message in MIME format.
--===============2145009774906376406==
Content-Type: multipart/alternative;
 boundary="------------GYqggHKnncQYNiNeFTJGnhny"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GYqggHKnncQYNiNeFTJGnhny
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/10/2024 12:06, Brian Padalino wrote:
> Your options are to sample at 184.32 MHz and decimate in the host=20
> machine down to 30.72 MHz for LTE decoding, or if that isn't an option=20
> then you need to place an RFNoC block at the output of the radio but=20
> before the DDC which will give you an input power estimate that you=20
> can read from the host periodically.=C2=A0 You need to feed that into y=
our=20
> AGC algorithm as another input.
>
> Note the block can just update an internal register that you poll and=20
> not produce any samples.
>
> Brian
Without knowing much about LTE DSP and DR requirements, once your gain=20
level is at a level where you have adequate SNR in most
 =C2=A0 cases, then the only thing remaining is if your downstream DSP=20
algorithms require that samples be in the "saturated" {-1,+1}
 =C2=A0 domain, that can be done DSP-wise without ever touching the RF ga=
in.


>
> On Fri, Oct 18, 2024 at 11:57=E2=80=AFAM Patrice PAJUSCO=20
> <patrice.pajusco@imt-atlantique.fr> wrote:
>
>     Dear Marcus,
>
>     thank you for your answer. Just to clarify the problem a little
>     better.
>     We use a UBX160 daughter card.
>     To have optimal SNR, an automatic gain control has been
>     implemented based on the max IQ value.
>     The sample rate is 30.72 for LTE decoding.
>     Unfortunately, high power exists outside our useful band (30.72
>     MHz) but inside the bandwidth of the 160 daughter card (sampled by
>     the 200 MHz ADC).
>     We expected the AGC to saturate... but after DSP filtering process
>     by the motherboard, the IQ samples got with UHD is no longer
>     saturated.
>     As a result, the IQ max is low enough and AGC control continue to
>     increase the gain :-(
>     It is my current understanding of the situation.
>     Is there any way to have an estimate of the raw AGC input level
>     when the sample rate is not 200 MHz?
>     I hope to be clear enough... but surelty=C2=A0 not crystal clear :-=
)
>     Best regards
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Patrice
>
>     -------------------------------------------------------------------=
-----
>     *De: *"Marcus D. Leech" <patchvonbraun@gmail.com>
>     *=C3=80: *"usrp-users" <usrp-users@lists.ettus.com>
>     *Envoy=C3=A9: *Vendredi 18 Octobre 2024 17:38:43
>     *Objet: *[USRP-users] Re: ADC saturation problem in USRP X310
>
>     On 18/10/2024 11:35, je.amghar@gmail.com wrote:
>     >
>     > Hello,
>     >
>     > I am currently facing an issue with ADC saturation on a USRP X310
>     > equipped with a UBX daughterboard. We are conducting measurements
>     > using an LTE signal and a sinusoidal input signal, but it seems
>     that
>     > the ADC is saturating, leading to a loss of dynamic range in our
>     > measurements.
>     >
>     > Test context:
>     > We are transmitting (using a generator) an LTE signal with a
>     power of
>     > -50 dBm at a center frequency of 1815 MHz. Then, we add a
>     sinusoidal
>     > signal at 1865 MHz with a power of -30 dBm. This second, more
>     powerful
>     > signal seems to be causing the ADC to saturate, even though we
>     don=E2=80=99t
>     > see it directly in the IQ samples due to the digital filtering
>     applied
>     > downstream.
>     >
>     > Problem:
>     > We suspect that the ADC saturation occurs before IQ conversion
>     and is
>     > therefore masked by the digital filters. This results in a loss o=
f
>     > dynamic range in our measurements, and we feel that adjusting
>     the gain
>     > based on the IQ samples may not be reliable.
>     >
>     > Question:
>     > How can this ADC saturation be detected upstream of the IQ
>     processing?
>     > Are there tools or methods to directly monitor the sample values =
at
>     > the output of the ADC in the USRP (before digital filtering) to
>     > prevent saturation?
>     > Do you have any advice for implementing an automatic gain
>     controller
>     > (AGC) based on reliable saturation indicators?
>     > We would appreciate any suggestions or experiences in resolving
>     this
>     > issue. If you have encountered a similar problem or have ideas
>     on how
>     > to address it, we would be happy to hear your recommendations.
>     >
>     > Thank you very much for your help!
>     >
>     >
>     A -30dBm signal applied at the antenna inputs, and then amplified
>     greatly by the amplifier/mixer/gain-chain ahead of the ADC
>     =C2=A0=C2=A0 would very-likely saturate the ADC.=C2=A0=C2=A0 A -30d=
Bm signal from an
>     "over
>     the air" antenna is one that is thunderingly loud in
>     =C2=A0=C2=A0 the real world.=C2=A0 It would not surprise me to find=
 that gain
>     elements
>     ahead of the ADC are *also* becoming non-linear.
>
>     Turn your gain down.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------GYqggHKnncQYNiNeFTJGnhny
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/10/2024 12:06, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">Your options are to sampl=
e
            at 184.32 MHz and decimate in the host machine down to 30.72
            MHz for LTE decoding, or if that isn't an option then you
            need to place an RFNoC block at the output of the radio but
            before the DDC which will give you an input power estimate
            that you can read from the host periodically.=C2=A0 You need =
to
            feed that into your AGC algorithm as another input.<br>
          </div>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div class=3D"gmail_attr">Note the block can just update an
            internal register that you poll and not produce any samples.<=
/div>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div class=3D"gmail_attr">Brian</div>
        </div>
      </div>
    </blockquote>
    Without knowing much about LTE DSP and DR requirements, once your
    gain level is at a level where you have adequate SNR in most<br>
    =C2=A0 cases, then the only thing remaining is if your downstream DSP
    algorithms require that samples be in the "saturated" {-1,+1}<br>
    =C2=A0 domain, that can be done DSP-wise without ever touching the RF
    gain.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 18, 2024 at
            11:57=E2=80=AFAM Patrice PAJUSCO &lt;<a
              href=3D"mailto:patrice.pajusco@imt-atlantique.fr"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
trice.pajusco@imt-atlantique.fr</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div>
              <div id=3D"m_8500105023683579753zimbraEditorContainer"
style=3D"font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(=
0,0,0)">
                <div>Dear Marcus,<br>
                </div>
                <div><br>
                </div>
                <div>thank you for your answer. Just to clarify the
                  problem a little better.</div>
                <div> We use a UBX160 daughter card. </div>
                <div>To have optimal SNR, an automatic gain control has
                  been implemented based on the max IQ value.</div>
                <div> The sample rate is 30.72 for LTE decoding. </div>
                <div>Unfortunately, high power exists outside our useful
                  band (30.72 MHz) but inside the bandwidth of the 160
                  daughter card (sampled by the 200 MHz ADC).</div>
                <div>We expected the AGC to saturate... but after DSP
                  filtering process by the motherboard, the IQ samples
                  got with UHD is no longer saturated.<br>
                  As a result, the IQ max is low enough and AGC control
                  continue to increase the gain :-(<br>
                  It is my current understanding of the situation. <br>
                  Is there any way to have an estimate of the raw AGC
                  input level when the sample rate is not 200 MHz?<br>
                  I hope to be clear enough... but surelty=C2=A0 not crys=
tal
                  clear :-)</div>
                <div>Best regards<br>
                </div>
                <div><br>
                </div>
                <div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Patrice<br>
                </div>
                <div><br>
                </div>
                <hr id=3D"m_8500105023683579753zwchr">
                <div><b>De: </b>"Marcus D. Leech" &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;<br>
                  <b>=C3=80: </b>"usrp-users" &lt;<a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a>&gt;<br>
                  <b>Envoy=C3=A9: </b>Vendredi 18 Octobre 2024 17:38:43<b=
r>
                  <b>Objet: </b>[USRP-users] Re: ADC saturation problem
                  in USRP X310<br>
                </div>
                <div><br>
                </div>
                <div>On 18/10/2024 11:35, <a
                    href=3D"mailto:je.amghar@gmail.com" target=3D"_blank"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">je.amghar@gmail.com</a>
                  wrote:<br>
                  &gt;<br>
                  &gt; Hello,<br>
                  &gt;<br>
                  &gt; I am currently facing an issue with ADC
                  saturation on a USRP X310 <br>
                  &gt; equipped with a UBX daughterboard. We are
                  conducting measurements <br>
                  &gt; using an LTE signal and a sinusoidal input
                  signal, but it seems that <br>
                  &gt; the ADC is saturating, leading to a loss of
                  dynamic range in our <br>
                  &gt; measurements.<br>
                  &gt;<br>
                  &gt; Test context:<br>
                  &gt; We are transmitting (using a generator) an LTE
                  signal with a power of <br>
                  &gt; -50 dBm at a center frequency of 1815 MHz. Then,
                  we add a sinusoidal <br>
                  &gt; signal at 1865 MHz with a power of -30 dBm. This
                  second, more powerful <br>
                  &gt; signal seems to be causing the ADC to saturate,
                  even though we don=E2=80=99t <br>
                  &gt; see it directly in the IQ samples due to the
                  digital filtering applied <br>
                  &gt; downstream.<br>
                  &gt;<br>
                  &gt; Problem:<br>
                  &gt; We suspect that the ADC saturation occurs before
                  IQ conversion and is <br>
                  &gt; therefore masked by the digital filters. This
                  results in a loss of <br>
                  &gt; dynamic range in our measurements, and we feel
                  that adjusting the gain <br>
                  &gt; based on the IQ samples may not be reliable.<br>
                  &gt;<br>
                  &gt; Question:<br>
                  &gt; How can this ADC saturation be detected upstream
                  of the IQ processing? <br>
                  &gt; Are there tools or methods to directly monitor
                  the sample values at <br>
                  &gt; the output of the ADC in the USRP (before digital
                  filtering) to <br>
                  &gt; prevent saturation?<br>
                  &gt; Do you have any advice for implementing an
                  automatic gain controller <br>
                  &gt; (AGC) based on reliable saturation indicators?<br>
                  &gt; We would appreciate any suggestions or
                  experiences in resolving this <br>
                  &gt; issue. If you have encountered a similar problem
                  or have ideas on how <br>
                  &gt; to address it, we would be happy to hear your
                  recommendations.<br>
                  &gt;<br>
                  &gt; Thank you very much for your help!<br>
                  &gt;<br>
                  &gt;<br>
                  A -30dBm signal applied at the antenna inputs, and
                  then amplified <br>
                  greatly by the amplifier/mixer/gain-chain ahead of the
                  ADC<br>
                  =C2=A0=C2=A0 would very-likely saturate the ADC.=C2=A0=C2=
=A0 A -30dBm
                  signal from an "over <br>
                  the air" antenna is one that is thunderingly loud in<br=
>
                  =C2=A0=C2=A0 the real world.=C2=A0 It would not surpris=
e me to find
                  that gain elements <br>
                  ahead of the ADC are *also* becoming non-linear.<br>
                  <br>
                  Turn your gain down.<br>
                  <br>
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
                </div>
              </div>
            </div>
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

--------------GYqggHKnncQYNiNeFTJGnhny--

--===============2145009774906376406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2145009774906376406==--
