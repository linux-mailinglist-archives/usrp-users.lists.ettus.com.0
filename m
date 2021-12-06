Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E1E46A5AE
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 20:29:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 125DF384E56
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 14:29:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mQ/2x7vE";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id AA58D38473A
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 14:28:58 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id n15so11994894qta.0
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 11:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=YcwtScDONX00J39+73IE92EYRWjKng35mZJ6hAQbJag=;
        b=mQ/2x7vERiA3QDJSgTPAaWv5k2BxaNuPt8Aw2GXEYAhfpOrrx7C3FpOUIobp6zvgmq
         Bp68AFPQTz3vD3khF/qYHoftzVUkKfXzuvMviytjg+Atl0miPYAwrEy1ZVy1GcQ6ZZow
         iG6EMphDxaVVOF1AYml/f2GQRPbpUwXsGiExK3OMYAIgDdvRlgOsMjHGLfEhcXKH68if
         z4O8hZjrfeP5PKTAGnNoVBQdf8ZxxqtbOfg6vXGg7AVoCu+22PI1s80jJL2sCZJKzMXt
         pX1mNQ+ombol8vbUSpBM4VGXsOYgb/tekaHH6E+4o6cTcwlKsGsaRpbZwnpHUZaMwn5n
         XAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=YcwtScDONX00J39+73IE92EYRWjKng35mZJ6hAQbJag=;
        b=ydty/VuFff+sHh2jSyJmAQ8noSHOgPBvl4QIt4sZLE0aJJd6gq1Y8NuROiskRSDd3l
         +n1EUp2BNgSrZ4TO1+u61QDUJluK5LaBeT1/SUQyQjy/gGwPwgnxpd7ocKyTbrgL0cdR
         AV74b9JTFzsqxHCy5h1Wc4Rjf00TCGFmJhd7+ywSk4p1IIL1zb61429FPZSuVpm+cccL
         2pLtSQQUTBkZVOMSLlyfp6n4lO3IFHaZJa81vW79rKVoyQTimqOuzRPdgXSoVAogFq7w
         MfYKJrtpNPVkKiHDQgD75IAyioqIDnFaOl/Oifqg0UdPRZUs5eInGD00gXgvySXPBZ4l
         fjtg==
X-Gm-Message-State: AOAM532fCDyYTShDnqnhO6nl/JGGxfdnV1VO3jRUityU7YzOLa+YTkOu
	iZQ1ltHxNil7Si0ig5VekTDNRbXkNEk=
X-Google-Smtp-Source: ABdhPJyxhtOhSiVznnCkTH1v3WbAoagruVW91ZVLkKK9M+Rzt4clxDlLJ4DetaFqYknqYqPxmm7ZEw==
X-Received: by 2002:a05:622a:1755:: with SMTP id l21mr43239235qtk.539.1638818938063;
        Mon, 06 Dec 2021 11:28:58 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id k19sm7373244qko.73.2021.12.06.11.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 11:28:57 -0800 (PST)
Message-ID: <cd880ff1-61ae-e84e-f57f-fce55965ecaa@gmail.com>
Date: Mon, 6 Dec 2021 14:28:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Temir Karakurum <temirkarakurum@gmail.com>
References: <CANP_ax+zVTY=H8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gmail.com>
 <7aa2680a-f8e2-84ac-002f-4cf37fe3377d@gmail.com>
 <CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmail.com>
Message-ID-Hash: QHB7GB4Z4BHGT6AS2ZQVW7IENKPKP6H6
X-Message-ID-Hash: QHB7GB4Z4BHGT6AS2ZQVW7IENKPKP6H6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A question about external local oscillator
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QHB7GB4Z4BHGT6AS2ZQVW7IENKPKP6H6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5300910308620328133=="

This is a multi-part message in MIME format.
--===============5300910308620328133==
Content-Type: multipart/alternative;
 boundary="------------IzGQvAulxBfwaw6Rbvt00a30"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IzGQvAulxBfwaw6Rbvt00a30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 14:22, Temir Karakurum wrote:
> Hi Marcus,
>
> Thanks for your prompt response! Your answer is in line with my=20
> expectations. I was mostly wondering how set_rx_freq would interact=20
> with an external LO. Like would the tune_request only allow for DSP=20
> tuning whereas RF tuning would be (hardware) locked within UHD?
>
> With external LO, would the tune request triggered=20
> calibration=C2=A0routines induce substantial time? I believe for B210/E=
310=20
> pll lock can be achieved in a few ms and within 100/150ms after=20
> crossing a 100MHz calibration threshold. =C2=A0Whereas for AD9361 fastl=
ock=20
> mode allows for 25 us lock-in time (there was a demo by Analog Devices=20
> using iio in grcon19) and I was looking into whether fast sweeping=20
> could be achieved using an external LO. In a similar vein can such=20
> fast sweeping be achieved using an Ettus daughterboard driven by an=20
> external LO?
>
> Best,
> Temir
Again, the AD9361 DOES NOT SUPPORT an external LO, which eliminates E3xx=20
and B2xx devices.

The whole "fast lock" thing isn't easily achievable if you need your=20
device to be fully-general, because there are only a few calibration=20
"cache" slots, and managing that cache from
 =C2=A0 the host side would be quite complex.

The X3xx supports the TwinRX series, which can be made to support an=20
external LO, and there's an article in the KB about exposing the=20
external LO sharing signals to the
 =C2=A0 "outside world" on X3xx.

https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing

The "tune_request" objects can be constructed to ONLY tune the DSP=20
logic, which is fast.=C2=A0=C2=A0 So as long as you're staying within the=
=20
bandwidth of the ADC, you can fast-hop
 =C2=A0 within that bandwidth.

https://files.ettus.com/manual/structuhd__tune__request__t.html



>
> On Mon, Dec 6, 2021 at 9:58 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-12-06 13:42, Temir Karakurum wrote:
>>     Hi,
>>
>>     I have some experience working with E310 and B210 and one of the
>>     bottlenecks for my application is the frequency tuning/hopping
>>     time of AD9361. I understand that N320 has the ability to use an
>>     external reference oscillator but I am not sure what this
>>     actually entails.
>>
>>     Does this mean that the LO used in the homodyne IQ receiver
>>     architecture is no longer generated by the PLL but is directly
>>     supplied by the external=C2=A0reference? If so, does this mean tha=
t I
>>     can sweep the frequencies as fast as I can generate LO
>>     frequencies in a similar fashion to a swept spectrum analyzer? Is
>>     external LO mode useful for spectrum sensing/frequency hopping
>>     applications or is it mostly used for applications that requires
>>     phase coherence?
>>
>>     Also are there any UHD examples or tutorials depicting how to
>>     build tune_request objects under 'external LO' mode?
>>
>>     Best,
>>     Temir
>     External LO is largely about providing phase-coherence. The AD9361
>     in the E310 and B210 has NO support for external LOs, but the
>     AD9371 in the N310 does have support
>     =C2=A0 for a 2XLO.
>
>     When you create the multi_usrp device object, you'll pass in an
>     "rx_lo_source=3Dexternal" argument, and make sure the external=C2=A0=
 LO,
>     at that moment, is operating at 5GHz.
>     =C2=A0 Once device initialization has completed, you can
>     set_lo_source("external").=C2=A0 See:
>
>     https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source=
.html#ae24f390fef2a0692dc230a5284ad1002
>
>     Now, how that interacts with future set_rx_freq() or set_tx_freq()
>     I'm not clear on.=C2=A0 The AD9371 in the N310 must necessarily
>     complete some I/Q calibration and compensation
>     =C2=A0 functions every time it tunes to a new frequency.=C2=A0 It's=
 not
>     clear (and I cannot find examples) how you can trigger that
>     calibration process after you change your external LO.
>
>     In any case, the external LO needs to be at *TWICE* the desired
>     tuned frequency (because of the 2XLO mixers), and that input is
>     limited to 8GHz, which means you can only
>     =C2=A0 use external LO usefully for center frequencies between 300M=
hz
>     and 4GHz.
>
>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------IzGQvAulxBfwaw6Rbvt00a30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 14:22, Temir Karakurum
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hi Marcus,=C2=A0
          <div><br>
          </div>
          <div>Thanks for your prompt response! Your answer is in line
            with my expectations. I was mostly wondering how set_rx_freq
            would interact with an external LO. Like would the
            tune_request only allow for DSP tuning whereas RF tuning
            would be (hardware) locked within UHD?=C2=A0</div>
          <div><br>
          </div>
          <div>With external LO, would the tune request triggered
            calibration=C2=A0routines induce substantial time? I believe =
for
            B210/E310 pll lock can be achieved in a few ms and within
            100/150ms after crossing a 100MHz calibration threshold.=C2=A0
            =C2=A0Whereas for AD9361 fastlock mode allows for 25 us lock-=
in
            time (there was a demo by Analog Devices using iio in
            grcon19) and I was looking into whether fast sweeping could
            be achieved using an external LO. In a similar vein can such
            fast sweeping be achieved using an Ettus daughterboard
            driven by an external LO?</div>
          <div><br>
          </div>
          <div>Best,</div>
          <div>Temir</div>
        </div>
      </div>
    </blockquote>
    Again, the AD9361 DOES NOT SUPPORT an external LO, which eliminates
    E3xx and B2xx devices.<br>
    <br>
    The whole "fast lock" thing isn't easily achievable if you need your
    device to be fully-general, because there are only a few calibration
    "cache" slots, and managing that cache from<br>
    =C2=A0 the host side would be quite complex.<br>
    <br>
    The X3xx supports the TwinRX series, which can be made to support an
    external LO, and there's an article in the KB about exposing the
    external LO sharing signals to the<br>
    =C2=A0 "outside world" on X3xx.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Modifying=
_an_X310_Chassis_for_External_LO_Sharing">https://kb.ettus.com/Modifying_=
an_X310_Chassis_for_External_LO_Sharing</a><br>
    <br>
    The "tune_request" objects can be constructed to ONLY tune the DSP
    logic, which is fast.=C2=A0=C2=A0 So as long as you're staying within=
 the
    bandwidth of the ADC, you can fast-hop<br>
    =C2=A0 within that bandwidth.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/structuhd__tune__request__t.html">https://files.ettus.com/manual/str=
uctuhd__tune__request__t.html</a><br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmai=
l.com">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 6, 2021 at 9:=
58
            PM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <div>On 2021-12-06 13:42, Temir Karakurum wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">Hi,
                  <div><br>
                  </div>
                  <div>I have some experience working with E310 and B210
                    and one of the bottlenecks for my application is the
                    frequency tuning/hopping time of AD9361. I
                    understand that N320 has the ability to use an
                    external reference oscillator but I am not sure what
                    this actually entails.</div>
                  <div><br>
                  </div>
                  <div>Does this mean that the LO used in the homodyne
                    IQ receiver architecture is no longer generated by
                    the PLL but is directly supplied by the
                    external=C2=A0reference? If so, does this mean that I=
 can
                    sweep the frequencies as fast as I can generate LO
                    frequencies in a similar fashion to a swept spectrum
                    analyzer? Is external LO mode useful for spectrum
                    sensing/frequency hopping applications or is it
                    mostly used for applications that requires=C2=A0</div=
>
                  <div>phase coherence?</div>
                  <div><br>
                  </div>
                  <div>Also are there any UHD examples or tutorials
                    depicting how to build tune_request objects under
                    'external LO' mode?</div>
                  <div><br>
                  </div>
                  <div>Best,</div>
                  <div>Temir</div>
                </div>
              </blockquote>
              External LO is largely about providing phase-coherence.=C2=A0=
=C2=A0
              The AD9361 in the E310 and B210 has NO support for
              external LOs, but the AD9371 in the N310 does have support<=
br>
              =C2=A0 for a 2XLO.<br>
              <br>
              When you create the multi_usrp device object, you'll pass
              in an "rx_lo_source=3Dexternal" argument, and make sure the
              external=C2=A0 LO, at that moment, is operating at 5GHz.<br=
>
              =C2=A0 Once device initialization has completed, you can
              set_lo_source("external").=C2=A0 See:<br>
              <br>
              <a
href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sour=
ce.html#ae24f390fef2a0692dc230a5284ad1002"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">https://www.gnuradio.org/=
doc/doxygen/classgr_1_1uhd_1_1usrp__source.html#ae24f390fef2a0692dc230a52=
84ad1002</a><br>
              <br>
              Now, how that interacts with future set_rx_freq() or
              set_tx_freq() I'm not clear on.=C2=A0 The AD9371 in the N31=
0
              must necessarily complete some I/Q calibration and
              compensation<br>
              =C2=A0 functions every time it tunes to a new frequency.=C2=
=A0 It's
              not clear (and I cannot find examples) how you can trigger
              that calibration process after you change your external
              LO.<br>
              <br>
              In any case, the external LO needs to be at *TWICE* the
              desired tuned frequency (because of the 2XLO mixers), and
              that input is limited to 8GHz, which means you can only<br>
              =C2=A0 use external LO usefully for center frequencies betw=
een
              300Mhz and 4GHz.<br>
              <br>
              <br>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div><br>
                  </div>
                </div>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
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
--------------IzGQvAulxBfwaw6Rbvt00a30--

--===============5300910308620328133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5300910308620328133==--
