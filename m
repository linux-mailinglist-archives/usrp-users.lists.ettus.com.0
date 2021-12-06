Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7E46A5FE
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 20:51:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09C5F384DFF
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 14:51:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="liH8mW+8";
	dkim-atps=neutral
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 93509384633
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 14:50:01 -0500 (EST)
Received: by mail-wm1-f52.google.com with SMTP id p18so9007616wmq.5
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 11:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kU7KNHHF2bKZKYsxIi7pgOLX5nvfy4mvAj82wLOZQ58=;
        b=liH8mW+8JoNmqRGuV9k4kMizDwCGR1AAHWXVGc0IzYlFixlMnl0dWI5pAqvFC3qpY9
         R1C/lB39LrEq7R/X+V4lRl/mu8nBSG/JO+j9krhvZDmoowkdh7hByhGZMsIpQJJAR0mi
         Nbm3X3AyisskN/DXePvA9/OVFtqPE+2l4sVAzQJIRRCBK44hjRfSCU1XQWoS9kaJMNJz
         26r2DVRNe1/RK3I8kiRQDyRIurnu4fVQMAwBsm6tseiMT0ZzFDD6LdSuiqe8S4b9NXF0
         5wsymdBfxZCBjmRU70Y+MBeFbKSiKdQZcbYEEGAi2vNzRNOZc/vex8HKYpKHVU2mru6Z
         JuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kU7KNHHF2bKZKYsxIi7pgOLX5nvfy4mvAj82wLOZQ58=;
        b=KRTRLAW0v93v8dmMGlfWZa3QrkYKOPbc13HRL8hCDixq1o+HLTttEYU6Q3qm4GvS0u
         QjWmT2C2FEN7UECI1cdAb3urqyF23dTWiHbRHBphhOtId/uYiDJkD0DpbyBdDJ6hxDez
         7+KpPwZZAZ/2vI1LB09V4MTDUTBFfEC2JlqOHQEI7mt8xsZWalR3YTkCLK+XPKyLfCqA
         ibBiyScV1h4A8o7Z0KILQYmgqzfMfqqbaxCy7vGqvPM3QP0l0AtFjS04sJhFKIUWePIV
         yeowP2RtTyQv+8nWizcHzpMb4Tlm7b1sN0zN5EZuxSpG6J9Y9A7y+R/x58sLoIpE/VnS
         QJNw==
X-Gm-Message-State: AOAM5339R05VfK6roH8M0+usNa7Gje1amBeuF+1zOW0SViSUUuLDypI1
	mCllMMtiPGzpEQz59xSfDLUMtbjwRRrft+kJVzQ=
X-Google-Smtp-Source: ABdhPJwG/C1qgPkymetq6m/GBOHKAOOD8W2/VDTkDBVbhAC3nOI6iRZjROuw4qnIVWoP12cbuhiEO6q7G7vKUTeuvTk=
X-Received: by 2002:a7b:ce16:: with SMTP id m22mr804382wmc.39.1638820200606;
 Mon, 06 Dec 2021 11:50:00 -0800 (PST)
MIME-Version: 1.0
References: <CANP_ax+zVTY=H8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gmail.com>
 <7aa2680a-f8e2-84ac-002f-4cf37fe3377d@gmail.com> <CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmail.com>
 <cd880ff1-61ae-e84e-f57f-fce55965ecaa@gmail.com>
In-Reply-To: <cd880ff1-61ae-e84e-f57f-fce55965ecaa@gmail.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Mon, 6 Dec 2021 22:49:49 +0300
Message-ID: <CANP_ax+otLyhdbZU8-RG_yU1dzjPOjHzYCYw4Ywxj+jvU573Cw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: N5L5YJAF7CM5GGO5YFVX6EHHDI2SQP2U
X-Message-ID-Hash: N5L5YJAF7CM5GGO5YFVX6EHHDI2SQP2U
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A question about external local oscillator
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N5L5YJAF7CM5GGO5YFVX6EHHDI2SQP2U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7734545625723149693=="

--===============7734545625723149693==
Content-Type: multipart/alternative; boundary="000000000000e870d405d27f8f18"

--000000000000e870d405d27f8f18
Content-Type: text/plain; charset="UTF-8"

Yeah, I know 9361 doesn't support external LO, that's why I am looking into
purchasing N320. I am interested in the ability of fast sweeping to do
spectrum sensing/monitoring.

I thought about building a custom super-heterodyne front-end and driving it
from, say, the GPIO pins of the SDR but looking at Ettus' offerings, N320
seemed promising as a built-in solution. However, from your replies it
looks like there are further complications and nuances and it is not as
straightforward as I hoped.

Best,
Temir


On Mon, Dec 6, 2021 at 10:28 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-12-06 14:22, Temir Karakurum wrote:
>
> Hi Marcus,
>
> Thanks for your prompt response! Your answer is in line with my
> expectations. I was mostly wondering how set_rx_freq would interact with an
> external LO. Like would the tune_request only allow for DSP tuning whereas
> RF tuning would be (hardware) locked within UHD?
>
> With external LO, would the tune request triggered calibration routines
> induce substantial time? I believe for B210/E310 pll lock can be achieved
> in a few ms and within 100/150ms after crossing a 100MHz calibration
> threshold.   Whereas for AD9361 fastlock mode allows for 25 us lock-in time
> (there was a demo by Analog Devices using iio in grcon19) and I was looking
> into whether fast sweeping could be achieved using an external LO. In a
> similar vein can such fast sweeping be achieved using an Ettus
> daughterboard driven by an external LO?
>
> Best,
> Temir
>
> Again, the AD9361 DOES NOT SUPPORT an external LO, which eliminates E3xx
> and B2xx devices.
>
> The whole "fast lock" thing isn't easily achievable if you need your
> device to be fully-general, because there are only a few calibration
> "cache" slots, and managing that cache from
>   the host side would be quite complex.
>
> The X3xx supports the TwinRX series, which can be made to support an
> external LO, and there's an article in the KB about exposing the external
> LO sharing signals to the
>   "outside world" on X3xx.
>
> https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing
>
> The "tune_request" objects can be constructed to ONLY tune the DSP logic,
> which is fast.   So as long as you're staying within the bandwidth of the
> ADC, you can fast-hop
>   within that bandwidth.
>
> https://files.ettus.com/manual/structuhd__tune__request__t.html
>
>
>
>
> On Mon, Dec 6, 2021 at 9:58 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-12-06 13:42, Temir Karakurum wrote:
>>
>> Hi,
>>
>> I have some experience working with E310 and B210 and one of the
>> bottlenecks for my application is the frequency tuning/hopping time of
>> AD9361. I understand that N320 has the ability to use an external reference
>> oscillator but I am not sure what this actually entails.
>>
>> Does this mean that the LO used in the homodyne IQ receiver architecture
>> is no longer generated by the PLL but is directly supplied by the
>> external reference? If so, does this mean that I can sweep the frequencies
>> as fast as I can generate LO frequencies in a similar fashion to a swept
>> spectrum analyzer? Is external LO mode useful for spectrum
>> sensing/frequency hopping applications or is it mostly used for
>> applications that requires
>> phase coherence?
>>
>> Also are there any UHD examples or tutorials depicting how to build
>> tune_request objects under 'external LO' mode?
>>
>> Best,
>> Temir
>>
>> External LO is largely about providing phase-coherence.   The AD9361 in
>> the E310 and B210 has NO support for external LOs, but the AD9371 in the
>> N310 does have support
>>   for a 2XLO.
>>
>> When you create the multi_usrp device object, you'll pass in an
>> "rx_lo_source=external" argument, and make sure the external  LO, at that
>> moment, is operating at 5GHz.
>>   Once device initialization has completed, you can
>> set_lo_source("external").  See:
>>
>>
>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html#ae24f390fef2a0692dc230a5284ad1002
>>
>> Now, how that interacts with future set_rx_freq() or set_tx_freq() I'm
>> not clear on.  The AD9371 in the N310 must necessarily complete some I/Q
>> calibration and compensation
>>   functions every time it tunes to a new frequency.  It's not clear (and
>> I cannot find examples) how you can trigger that calibration process after
>> you change your external LO.
>>
>> In any case, the external LO needs to be at *TWICE* the desired tuned
>> frequency (because of the 2XLO mixers), and that input is limited to 8GHz,
>> which means you can only
>>   use external LO usefully for center frequencies between 300Mhz and 4GHz.
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000e870d405d27f8f18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yeah, I know 9361 doesn&#39;t support external LO, that&#3=
9;s why I am looking into purchasing N320. I am interested in the ability o=
f fast sweeping to do spectrum sensing/monitoring.=C2=A0<div><br></div><div=
>I thought about building a custom super-heterodyne front-end and driving i=
t from, say, the GPIO pins of the SDR but looking at Ettus&#39; offerings, =
N320 seemed promising as=C2=A0a built-in solution. However, from your repli=
es it looks like there are further complications and nuances and it is not =
as straightforward as I hoped.=C2=A0</div><div><br></div><div>Best,</div><d=
iv>Temir</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Dec 6, 2021 at 10:28 PM Marcus D. Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-12-06 14:22, Temir Karakurum
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
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
            calibration=C2=A0routines induce substantial time? I believe fo=
r
            B210/E310 pll lock can be achieved in a few ms and within
            100/150ms after crossing a 100MHz calibration threshold.=C2=A0
            =C2=A0Whereas for AD9361 fastlock mode allows for 25 us lock-in
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
    The whole &quot;fast lock&quot; thing isn&#39;t easily achievable if yo=
u need your
    device to be fully-general, because there are only a few calibration
    &quot;cache&quot; slots, and managing that cache from<br>
    =C2=A0 the host side would be quite complex.<br>
    <br>
    The X3xx supports the TwinRX series, which can be made to support an
    external LO, and there&#39;s an article in the KB about exposing the
    external LO sharing signals to the<br>
    =C2=A0 &quot;outside world&quot; on X3xx.<br>
    <br>
<a href=3D"https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_S=
haring" target=3D"_blank">https://kb.ettus.com/Modifying_an_X310_Chassis_fo=
r_External_LO_Sharing</a><br>
    <br>
    The &quot;tune_request&quot; objects can be constructed to ONLY tune th=
e DSP
    logic, which is fast.=C2=A0=C2=A0 So as long as you&#39;re staying with=
in the
    bandwidth of the ADC, you can fast-hop<br>
    =C2=A0 within that bandwidth.<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/structuhd__tune__request__t.h=
tml" target=3D"_blank">https://files.ettus.com/manual/structuhd__tune__requ=
est__t.html</a><br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 6, 2021 at 9:58
            PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                    external=C2=A0reference? If so, does this mean that I c=
an
                    sweep the frequencies as fast as I can generate LO
                    frequencies in a similar fashion to a swept spectrum
                    analyzer? Is external LO mode useful for spectrum
                    sensing/frequency hopping applications or is it
                    mostly used for applications that requires=C2=A0</div>
                  <div>phase coherence?</div>
                  <div><br>
                  </div>
                  <div>Also are there any UHD examples or tutorials
                    depicting how to build tune_request objects under
                    &#39;external LO&#39; mode?</div>
                  <div><br>
                  </div>
                  <div>Best,</div>
                  <div>Temir</div>
                </div>
              </blockquote>
              External LO is largely about providing phase-coherence.=C2=A0=
=C2=A0
              The AD9361 in the E310 and B210 has NO support for
              external LOs, but the AD9371 in the N310 does have support<br=
>
              =C2=A0 for a 2XLO.<br>
              <br>
              When you create the multi_usrp device object, you&#39;ll pass
              in an &quot;rx_lo_source=3Dexternal&quot; argument, and make =
sure the
              external=C2=A0 LO, at that moment, is operating at 5GHz.<br>
              =C2=A0 Once device initialization has completed, you can
              set_lo_source(&quot;external&quot;).=C2=A0 See:<br>
              <br>
              <a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uh=
d_1_1usrp__source.html#ae24f390fef2a0692dc230a5284ad1002" target=3D"_blank"=
>https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html#a=
e24f390fef2a0692dc230a5284ad1002</a><br>
              <br>
              Now, how that interacts with future set_rx_freq() or
              set_tx_freq() I&#39;m not clear on.=C2=A0 The AD9371 in the N=
310
              must necessarily complete some I/Q calibration and
              compensation<br>
              =C2=A0 functions every time it tunes to a new frequency.=C2=
=A0 It&#39;s
              not clear (and I cannot find examples) how you can trigger
              that calibration process after you change your external
              LO.<br>
              <br>
              In any case, the external LO needs to be at *TWICE* the
              desired tuned frequency (because of the 2XLO mixers), and
              that input is limited to 8GHz, which means you can only<br>
              =C2=A0 use external LO usefully for center frequencies betwee=
n
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>=
<br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>
</blockquote></div>

--000000000000e870d405d27f8f18--

--===============7734545625723149693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7734545625723149693==--
