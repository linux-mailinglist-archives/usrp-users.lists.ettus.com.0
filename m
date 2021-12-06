Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8513546A59B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 20:23:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84CDD383E56
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 14:23:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jah2Gvn6";
	dkim-atps=neutral
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 279BF3845F0
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 14:22:40 -0500 (EST)
Received: by mail-wr1-f45.google.com with SMTP id u1so24521445wru.13
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 11:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y2DvrAP3L6tuDk5lVgbkT7+SYcjFhp0hp1KZzJWgzho=;
        b=Jah2Gvn6qdOawYTBOpKEBb6kMcNI7pR0dL77cahmgF3ik57KTFhX9QUvPVwVnH7OUg
         NFKtBfNXUpp6aVKDrGc/ngLhLZp/IO9TY0BKYwooz9Rj2EU5ngbV77rZmKDTVzD2+xEZ
         th9R7vL49aZdx3HzfLdTroFBm4I+htnAD9VFWxlxHO+oqbu7fD8VLn33SYnbeGKmtEkg
         O/LdsSfrVgHCKEQSPljt0E1PiJ4y075Fak+odS0SRRL5maaxYkWSwXONRfdq7Hg4dEZ5
         KHh2qpePZf+SqLNNXFDXhagSP88pXp+BwQgK5M1TxqBbTEzNxBOSNnUBBK63RUQklyb/
         b3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y2DvrAP3L6tuDk5lVgbkT7+SYcjFhp0hp1KZzJWgzho=;
        b=6jdMnpG+F0oXwXdF0u1jloWiiFSC2sfnEkZgkUbTeUrKEO3y4Yf5iAHhyuSYACWFHV
         GDNvV47710riToXR1C0RA2Mj0xW6sL4SWYtvDgC/hGDJYKUvugJsZyKHThhoFh3l1EHT
         8NH5omE+NVCmL4crn+GiyX4h2M4pllJ+SqpIg0+Vs5yp6BGDLlOXD+65toIhLsJnSbiP
         OggijY9bLUJz3zKh+rd3Ogh4BXt7C7WWVtPuBfnMxqUhAS3vQ717RRbkop04C1JPTURT
         ComjB17UnFaJ/qAlvEiL0b0kKoMVJXjLErtGqFvoGVBQkCf/aJ84knjnXo0MKuhSzf6A
         cWew==
X-Gm-Message-State: AOAM5315zowHCp0nVVAlsFy9YpR9VHJKwP8enV+SO+qV0hWoZB0wM+QJ
	3S6ACqEQaLATYGflFV2NuQ/AqRAz+7T8StRq3Dw=
X-Google-Smtp-Source: ABdhPJxoRLX+wPufFLZ7iomjkLq3W6acuHRXTRWiWGmoYmJjdGHxi3U7gr+zvbK1tdtzSpvd+53DYHRbPEVcHp5bGrQ=
X-Received: by 2002:a5d:5912:: with SMTP id v18mr44264868wrd.144.1638818559088;
 Mon, 06 Dec 2021 11:22:39 -0800 (PST)
MIME-Version: 1.0
References: <CANP_ax+zVTY=H8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gmail.com>
 <7aa2680a-f8e2-84ac-002f-4cf37fe3377d@gmail.com>
In-Reply-To: <7aa2680a-f8e2-84ac-002f-4cf37fe3377d@gmail.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Mon, 6 Dec 2021 22:22:27 +0300
Message-ID: <CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: VZZTPLK4FNN6LITQIGNPTNLGEYBFO2PW
X-Message-ID-Hash: VZZTPLK4FNN6LITQIGNPTNLGEYBFO2PW
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A question about external local oscillator
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VZZTPLK4FNN6LITQIGNPTNLGEYBFO2PW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1147851488855139843=="

--===============1147851488855139843==
Content-Type: multipart/alternative; boundary="00000000000010db9c05d27f2edf"

--00000000000010db9c05d27f2edf
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thanks for your prompt response! Your answer is in line with my
expectations. I was mostly wondering how set_rx_freq would interact with an
external LO. Like would the tune_request only allow for DSP tuning whereas
RF tuning would be (hardware) locked within UHD?

With external LO, would the tune request triggered calibration routines
induce substantial time? I believe for B210/E310 pll lock can be achieved
in a few ms and within 100/150ms after crossing a 100MHz calibration
threshold.   Whereas for AD9361 fastlock mode allows for 25 us lock-in time
(there was a demo by Analog Devices using iio in grcon19) and I was looking
into whether fast sweeping could be achieved using an external LO. In a
similar vein can such fast sweeping be achieved using an Ettus
daughterboard driven by an external LO?

Best,
Temir

On Mon, Dec 6, 2021 at 9:58 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-12-06 13:42, Temir Karakurum wrote:
>
> Hi,
>
> I have some experience working with E310 and B210 and one of the
> bottlenecks for my application is the frequency tuning/hopping time of
> AD9361. I understand that N320 has the ability to use an external reference
> oscillator but I am not sure what this actually entails.
>
> Does this mean that the LO used in the homodyne IQ receiver architecture
> is no longer generated by the PLL but is directly supplied by the
> external reference? If so, does this mean that I can sweep the frequencies
> as fast as I can generate LO frequencies in a similar fashion to a swept
> spectrum analyzer? Is external LO mode useful for spectrum
> sensing/frequency hopping applications or is it mostly used for
> applications that requires
> phase coherence?
>
> Also are there any UHD examples or tutorials depicting how to build
> tune_request objects under 'external LO' mode?
>
> Best,
> Temir
>
> External LO is largely about providing phase-coherence.   The AD9361 in
> the E310 and B210 has NO support for external LOs, but the AD9371 in the
> N310 does have support
>   for a 2XLO.
>
> When you create the multi_usrp device object, you'll pass in an
> "rx_lo_source=external" argument, and make sure the external  LO, at that
> moment, is operating at 5GHz.
>   Once device initialization has completed, you can
> set_lo_source("external").  See:
>
>
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html#ae24f390fef2a0692dc230a5284ad1002
>
> Now, how that interacts with future set_rx_freq() or set_tx_freq() I'm not
> clear on.  The AD9371 in the N310 must necessarily complete some I/Q
> calibration and compensation
>   functions every time it tunes to a new frequency.  It's not clear (and I
> cannot find examples) how you can trigger that calibration process after
> you change your external LO.
>
> In any case, the external LO needs to be at *TWICE* the desired tuned
> frequency (because of the 2XLO mixers), and that input is limited to 8GHz,
> which means you can only
>   use external LO usefully for center frequencies between 300Mhz and 4GHz.
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000010db9c05d27f2edf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,=C2=A0<div><br></div><div>Thank=
s for your prompt response! Your answer is in line with my expectations. I =
was mostly wondering how set_rx_freq would interact with an external LO. Li=
ke would the tune_request only allow for DSP tuning whereas RF tuning would=
 be (hardware) locked within UHD?=C2=A0</div><div><br></div><div>With exter=
nal LO, would the tune request triggered calibration=C2=A0routines induce s=
ubstantial time? I believe for B210/E310 pll lock can be achieved in a few =
ms and within 100/150ms after crossing a 100MHz calibration threshold.=C2=
=A0 =C2=A0Whereas for AD9361 fastlock mode allows for 25 us lock-in time (t=
here was a demo by Analog Devices using iio in grcon19) and I was looking i=
nto whether fast sweeping could be achieved using an external LO. In a simi=
lar vein can such fast sweeping be achieved using an Ettus daughterboard dr=
iven by an external LO?</div><div><br></div><div>Best,</div><div>Temir</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Mon, Dec 6, 2021 at 9:58 PM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-12-06 13:42, Temir Karakurum
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I have some experience working with E310 and B210 and one
          of the bottlenecks for my application is the frequency
          tuning/hopping time of AD9361. I understand that N320 has the
          ability to use an external reference oscillator but I am not
          sure what this actually entails.</div>
        <div><br>
        </div>
        <div>Does this mean that the LO used in the homodyne IQ receiver
          architecture is no longer generated by the PLL but is directly
          supplied by the external=C2=A0reference? If so, does this mean th=
at
          I can sweep the frequencies as fast as I can generate LO
          frequencies in a similar fashion to a swept spectrum analyzer?
          Is external LO mode useful for spectrum sensing/frequency
          hopping applications or is it mostly used for applications
          that requires=C2=A0</div>
        <div>phase coherence?</div>
        <div><br>
        </div>
        <div>Also are there any UHD examples or tutorials depicting how
          to build tune_request objects under &#39;external LO&#39; mode?</=
div>
        <div><br>
        </div>
        <div>Best,</div>
        <div>Temir</div>
      </div>
    </blockquote>
    External LO is largely about providing phase-coherence.=C2=A0=C2=A0 The=
 AD9361
    in the E310 and B210 has NO support for external LOs, but the AD9371
    in the N310 does have support<br>
    =C2=A0 for a 2XLO.<br>
    <br>
    When you create the multi_usrp device object, you&#39;ll pass in an
    &quot;rx_lo_source=3Dexternal&quot; argument, and make sure the externa=
l=C2=A0 LO, at
    that moment, is operating at 5GHz.<br>
    =C2=A0 Once device initialization has completed, you can
    set_lo_source(&quot;external&quot;).=C2=A0 See:<br>
    <br>
<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sou=
rce.html#ae24f390fef2a0692dc230a5284ad1002" target=3D"_blank">https://www.g=
nuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html#ae24f390fef2a06=
92dc230a5284ad1002</a><br>
    <br>
    Now, how that interacts with future set_rx_freq() or set_tx_freq()
    I&#39;m not clear on.=C2=A0 The AD9371 in the N310 must necessarily com=
plete
    some I/Q calibration and compensation<br>
    =C2=A0 functions every time it tunes to a new frequency.=C2=A0 It&#39;s=
 not clear
    (and I cannot find examples) how you can trigger that calibration
    process after you change your external LO.<br>
    <br>
    In any case, the external LO needs to be at *TWICE* the desired
    tuned frequency (because of the 2XLO mixers), and that input is
    limited to 8GHz, which means you can only<br>
    =C2=A0 use external LO usefully for center frequencies between 300Mhz a=
nd
    4GHz.<br>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000010db9c05d27f2edf--

--===============1147851488855139843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1147851488855139843==--
