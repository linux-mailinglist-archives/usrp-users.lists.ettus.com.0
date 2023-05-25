Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 957DB710DA1
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 15:51:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FC1D380BEA
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 09:51:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685022710; bh=yiaVv2HJbYdhOdBot93NNY2Tgzdlnasr036xRk9TEhI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GnyM/mjlNhyVSuarzuFznIr134WBKnHkOue4uhiX4djA2ObI6OPBfpTiWgJSKD89I
	 fWoFA+Gk6PPrM2P1Lc1I/IhLuaNYI0uNsMkFx+GFEeCO068+jNUNqHtad/jUNtYRcl
	 SYUE7xiHwAuxiwqvUq9hM3MNOAxdCwU3O6NxgMDvopqzWkd9gz4B8IpOD7yGUN03hV
	 qKFnlOT3q/vgxEoA+COwgg5o0CHIaECvFG6acNWQkJDE66uweST0u1bEJWVLsRnYtz
	 1i5Y0r/kF5mEZB1nqNJGhvcs64NMmErtXcmXhu3alrRwbfoyxrEAIWJRBgOUvKGrSL
	 ZIAovn1sjnhPQ==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id C3E21380BEA
	for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 09:50:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VmZjGr4I";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-623914a4bf0so4507756d6.3
        for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 06:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685022647; x=1687614647;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTYobpv4D5Hl3GRi/2jR8XxKXx9P1t/wBNW8nKPCmrQ=;
        b=VmZjGr4IJqcdJodatuRroeDyTiAydu3p/uVrmeibdtBaFGjm5gxhcUmzlZab+n0Pu0
         b62mnk977TXwcUjWSFZXWHklexFMMsCilP9RHqcXyrVvEI4K+RGxfD3f/4ovz5PfJ3S4
         Aqb298CZJ0jpNu80NKwfJ8E7pf61XJ948T2iSYoDRqm7S2C/BIm5iA6F7xeP54XGzS4v
         luJ7Z8rIjJpWBobG09lgSrp3jUAPFcVbI4aGRFEOKcQq4tlnAZqiw92Akbf8IBNfZykS
         mXbIzbXkRZCYi8/i5SR+0EGCUF2pH2iXjckq+Wx5RmybitmREiRIq7Oy0AQK4CRkX7h4
         AlQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685022647; x=1687614647;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tTYobpv4D5Hl3GRi/2jR8XxKXx9P1t/wBNW8nKPCmrQ=;
        b=VWnDmZq+eHnkkjGxGJQSO6R+WV6q62FcsXrmPRUdbAlP+XpC4ooN1JM7dM3b4TaLSM
         f9Ai84UwYVCH92SCgUvjckAsCLDgADAwJiardsDVX1G6PfWsgemghf+mDCq7oFwyS804
         EI0g6rqYX0WLI7lr5BHz8VH4uLOErb/+pD1mPRbbwObfqcmHe8L6cRdVGojIpAVlVjB0
         632Q0403XPP4ozWkFwsXgCyepeCWhZ2bh3KZO6s8XArfG0i3Bk313K85u770/avXZ5Ms
         QsZEbpQK7RQvo/EIDOoTZQwkStk6V+29V9DqDDLO3PnmnOUMjHy3y2hXGLlJwop87wOL
         RL9g==
X-Gm-Message-State: AC+VfDx1sRkmc7GGaW8V7B04iU1JMx25ew/m91niRS47GdfgyYRT4lpt
	7zJRkz8X90I/JR1r1xOS6FA=
X-Google-Smtp-Source: ACHHUZ5mptqT/Ttwh23niMLeuDfKuEaWUBfqj3r0VUz9lgx7VETTjws4LY5XCSPkCam7crkHMRYeHQ==
X-Received: by 2002:a05:6214:1bcd:b0:625:b752:6574 with SMTP id m13-20020a0562141bcd00b00625b7526574mr1530048qvc.55.1685022646927;
        Thu, 25 May 2023 06:50:46 -0700 (PDT)
Received: from [192.168.2.134] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id cz4-20020a056214088400b00621268e14efsm415864qvb.55.2023.05.25.06.50.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 06:50:46 -0700 (PDT)
Message-ID: <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com>
Date: Thu, 25 May 2023 09:50:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>, Leon Wabeke <LWabeke@csir.co.za>
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com>
 <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
Message-ID-Hash: ULGUQHOZTI6SZYXDVYQQV23OPPHYWIFK
X-Message-ID-Hash: ULGUQHOZTI6SZYXDVYQQV23OPPHYWIFK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULGUQHOZTI6SZYXDVYQQV23OPPHYWIFK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8513237117635835380=="

This is a multi-part message in MIME format.
--===============8513237117635835380==
Content-Type: multipart/alternative;
 boundary="------------rgI0FJ5mRCWzpBNbWVb77L0Y"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rgI0FJ5mRCWzpBNbWVb77L0Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/05/2023 09:41, Rob Kossler wrote:
> I may be off-base here, but I thought that the GPIO control occurred=20
> from the Radio block such that a DUC group delay would not be the=20
> place to look. I am wondering if the GPIO control does not use timed=20
> commands.=C2=A0 Instead of the automatic setting of the Tx GPIO, we hav=
e=20
> used custom GPIO with timed commands=C2=A0to pulse a GPIO bit as a trig=
ger=20
> at the same time as we begin the radios.=C2=A0 But, I have not checked =
the=20
> relative timing between my GPIO pulse and the RF because I was only=20
> interested in repeatability rather than knowing the precise relative=20
> timing.
It was certainly the case in the past that the ATR logic was somewhat=20
asynchronous to the state of the DUC.=C2=A0 This may well have
 =C2=A0 changed while I wasn't paying attention.=C2=A0=C2=A0 Since I'm no=
t in R&D, and=20
not an FPGA guy, this could be the case.

Regardless, my point about T/R control signals occurring=20
not-precisely-aligned with when sinusoids are coming out the antenna
 =C2=A0 port remains.=C2=A0 It will always be tricky to get it "exact".


>
>
> On Thu, May 25, 2023 at 4:55=E2=80=AFAM Leon Wabeke <LWabeke@csir.co.za=
> wrote:
>
>     Hi
>
>     We have also used a =E2=80=9Cmeasure in the lab approach=E2=80=9D, =
together with
>     zero padding before and after and have at times seen these need to
>     be adjusted after a UHD upgrade.
>
>     We have also in some cases taken the GPIO strobe via another FPGA
>     to adjust the strobe by adding an extra configurable delays on
>     rising and falling edges. It is just annoying to use an external
>     function to do this and it would in my opinion be a very useful
>     feature if such configurable delays were part of the basic
>     built-in GPIO functionality at least in terms of the =E2=80=9Cautom=
atic
>     strobe state machine=E2=80=9D, thus not requiring another FPGA or h=
aving
>     to try to integrate custom logic inside the UHD firmware, which
>     might need to be reintegrated on subsequent updates.
>
>     Thanks
>
>     Leon
>
>     *From: *Marcus D. Leech <patchvonbraun@gmail.com>
>     *Date: *Wednesday, 24 May 2023 at 23:14
>     *To: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>     *Subject: *[USRP-users] Re: N320 - GPIO ATR output to TX output del=
ay
>
>     [The e-mail server of the sender could not be verified (SPF Record)=
]
>
>     On 24/05/2023 16:22, mena@chaosinc.com wrote:
>
>         Thanks. Two follow up questions:
>
>          1. For a given sample rate, is there a way to
>             deterministically calculate the group delay?
>
>     Look at the filter code in the version of the FPGA image that
>     you're using, determine which filter bits and
>     =C2=A0 pieces are "in circuit" when you select your sample-rate, an=
d
>     calculate the group delay from that.
>
>     =C2=A0 Many folks who have run into the same problem have used a
>     "measure it in the lab" approach, and done
>     =C2=A0 that for new releases of the FPGA code--the R&D team does
>     occasionally make changes to the filter
>     =C2=A0 parameters and "doctrine" in order to optimize for certain t=
ypes
>     of applications.=C2=A0 This may well
>     =C2=A0 de-optimize for others.=C2=A0 SDRs are general-purpose devic=
es, which
>     means that there will be cases where they
>     =C2=A0 aren't "out of the factory" optimized for any *particular*
>     application.
>
>     The approach some have take is to pad at one end or the other (or
>     both) to account for these delays, which comprise
>     =C2=A0 a deterministic-but-version-dependent component, and an anal=
og
>     component that is less deterministic, but at much
>     =C2=A0 smaller times scales.
>
>
>
>          1. Why do I not see the same delay at the back end of the
>             transmission (i.e. after the GPIO goes low)?
>
>     My suspicion is that part of what you're seeing is an analog
>     switching effect, and things like turn-on/turn-off
>     =C2=A0 times are not perfectly symmetric.
>
>     This issue (lack of tight synchronization between ATR signals and
>     actual waveforms appearing at the antenna) has been
>     =C2=A0 an issue in digital comms since I got involved in the 1980s,
>     albeit, in the 1980s, the time-scales were much larger.
>     =C2=A0 You simply had to account for these effects for every new ra=
dio
>     your application encountered.=C2=A0=C2=A0 In the DSP age, the
>     =C2=A0 effects are at much smaller time-scales, but so are the data=
 rates.
>
>
>
>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------rgI0FJ5mRCWzpBNbWVb77L0Y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/05/2023 09:41, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">I may be off-base here, but I thought that the
          GPIO control occurred from the Radio block such that a DUC
          group delay would not be the place to look. I am wondering if
          the GPIO control does not use timed commands.=C2=A0 Instead of =
the
          automatic setting of the Tx GPIO, we have used custom GPIO
          with timed commands=C2=A0to pulse a GPIO bit as a trigger at th=
e
          same time as we begin the radios.=C2=A0 But, I have not checked=
 the
          relative timing between my GPIO pulse and the RF because I was
          only interested in repeatability rather than knowing the
          precise relative timing.</div>
      </div>
    </blockquote>
    It was certainly the case in the past that the ATR logic was
    somewhat asynchronous to the state of the DUC.=C2=A0 This may well ha=
ve<br>
    =C2=A0 changed while I wasn't paying attention.=C2=A0=C2=A0 Since I'm=
 not in
    R&amp;D, and not an FPGA guy, this could be the case.<br>
    <br>
    Regardless, my point about T/R control signals occurring
    not-precisely-aligned with when sinusoids are coming out the antenna<=
br>
    =C2=A0 port remains.=C2=A0 It will always be tricky to get it "exact"=
.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 25, 2023 at
            4:55=E2=80=AFAM Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csi=
r.co.za"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">LW=
abeke@csir.co.za</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div class=3D"msg3278616206152528484">
              <div style=3D"overflow-wrap: break-word;" lang=3D"EN-ZA">
                <div class=3D"m_-6926515693448721747WordSection1">
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">H=
i</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=
=A0</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">W=
e
                      have also used a =E2=80=9Cmeasure in the lab approa=
ch=E2=80=9D,
                      together with zero padding before and after and
                      have at times seen these need to be adjusted after
                      a UHD upgrade.</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=
=A0</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">W=
e
                      have also in some cases taken the GPIO strobe via
                      another FPGA to adjust the strobe by adding an
                      extra configurable delays on rising and falling
                      edges. It is just annoying to use an external
                      function to do this and it would in my opinion be
                      a very useful feature if such configurable delays
                      were part of the basic built-in GPIO functionality
                      at least in terms of the =E2=80=9Cautomatic strobe =
state
                      machine=E2=80=9D, thus not requiring another FPGA o=
r
                      having to try to integrate custom logic inside the
                      UHD firmware, which might need to be reintegrated
                      on subsequent updates.</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=
=A0</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">T=
hanks</span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">L=
eon
                    </span></p>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=
=A0</span></p>
                  <div
style=3D"border-right:none;border-bottom:none;border-left:none;border-top=
:1pt
                    solid rgb(181,196,223);padding:3pt 0cm 0cm">
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><=
b><span
                          style=3D"font-size:12pt;color:black">From:
                        </span></b><span
                        style=3D"font-size:12pt;color:black">Marcus D.
                        Leech &lt;<a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">patchvonbraun@g=
mail.com</a>&gt;<br>
                        <b>Date: </b>Wednesday, 24 May 2023 at 23:14<br>
                        <b>To: </b><a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a>
                        &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a>&gt;<br>
                        <b>Subject: </b>[USRP-users] Re: N320 - GPIO
                        ATR output to TX output delay</span></p>
                  </div>
                  <pre>[The e-mail server of the sender could not be veri=
fied (SPF Record)]</pre>
                  <div>
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt"=
>On
                        24/05/2023 16:22, <a
                          href=3D"mailto:mena@chaosinc.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          mena@chaosinc.com</a> wrote:</span></p>
                  </div>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p>Thanks. Two follow up questions:</p>
                    <ol type=3D"1" start=3D"1">
                      <li>For a given sample rate, is there a way to
                        deterministically calculate the group delay?</li>
                    </ol>
                  </blockquote>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">L=
ook
                      at the filter code in the version of the FPGA
                      image that you're using, determine which filter
                      bits and<br>
                      =C2=A0 pieces are "in circuit" when you select your
                      sample-rate, and calculate the group delay from
                      that.<br>
                      <br>
                      =C2=A0 Many folks who have run into the same proble=
m
                      have used a "measure it in the lab" approach, and
                      done<br>
                      =C2=A0 that for new releases of the FPGA code--the
                      R&amp;D team does occasionally make changes to the
                      filter<br>
                      =C2=A0 parameters and "doctrine" in order to optimi=
ze
                      for certain types of applications.=C2=A0 This may w=
ell<br>
                      =C2=A0 de-optimize for others.=C2=A0 SDRs are
                      general-purpose devices, which means that there
                      will be cases where they<br>
                      =C2=A0 aren't "out of the factory" optimized for an=
y
                      *particular* application.<br>
                      <br>
                      The approach some have take is to pad at one end
                      or the other (or both) to account for these
                      delays, which comprise<br>
                      =C2=A0 a deterministic-but-version-dependent compon=
ent,
                      and an analog component that is less
                      deterministic, but at much<br>
                      =C2=A0 smaller times scales.<br>
                      <br>
                      <br>
                      <br>
                    </span></p>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <ol type=3D"1" start=3D"1">
                      <li>Why do I not see the same delay at the back
                        end of the transmission (i.e. after the GPIO
                        goes low)?</li>
                    </ol>
                  </blockquote>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">M=
y
                      suspicion is that part of what you're seeing is an
                      analog switching effect, and things like
                      turn-on/turn-off<br>
                      =C2=A0 times are not perfectly symmetric.<br>
                      <br>
                      This issue (lack of tight synchronization between
                      ATR signals and actual waveforms appearing at the
                      antenna) has been<br>
                      =C2=A0 an issue in digital comms since I got involv=
ed
                      in the 1980s, albeit, in the 1980s, the
                      time-scales were much larger.<br>
                      =C2=A0 You simply had to account for these effects =
for
                      every new radio your application encountered.=C2=A0=
=C2=A0 In
                      the DSP age, the<br>
                      =C2=A0 effects are at much smaller time-scales, but=
 so
                      are the data rates.<br>
                      <br>
                      <br>
                      <br>
                    </span></p>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt"=
><br>
                        <br>
                      </span></p>
                    <pre>_______________________________________________<=
/pre>
                    <pre>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=
=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a></pre>
                    <pre>To unsubscribe send an email to <a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"=
true" class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a=
></pre>
                  </blockquote>
                  <p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=
=A0</span></p>
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------rgI0FJ5mRCWzpBNbWVb77L0Y--

--===============8513237117635835380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8513237117635835380==--
