Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD8446A544
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 19:58:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B07C3842E5
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 13:58:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OphyTCf4";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 9455638455A
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 13:57:19 -0500 (EST)
Received: by mail-qv1-f54.google.com with SMTP id j9so10750089qvm.10
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 10:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=KxTNsqLrqtHGQvOX0nM3M/lKB+PydxYb8QkzjwnvjkU=;
        b=OphyTCf4adgL7vxc8wf2Leex73Js8pW6+Di+5uaKU9ta4Xn/AoaqmJ+TiRbRT9Lpd5
         HRy9U0GCDf+395OhFAk5QQOwhmgH1sigr/FV+Rdos9sa9jomUtwaynAtAfYNp0dLAoAJ
         4EGMUx2G5w6vPGGNjYgoULWtovdt8j/VoeHP58o8zvLYFD9xcaHfHKUctvzrrJ8MoPX8
         nmX7aiNCN/qGuibmnTsctKROrUtMSCoQAPuwUUqCYsdq28Cjdm+lrHlsi+PQU7oZ3g8B
         7h4inVzSRGvLruGosfUc5LFUYSpJrCi1dhMxqd3rPEOLasBoyXv0TPML1hTRxfJFbyll
         C2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=KxTNsqLrqtHGQvOX0nM3M/lKB+PydxYb8QkzjwnvjkU=;
        b=7CsPLvXuqPMcX8hM25XddUz2K8MgJm741m2qAusAiVHfHHqyIJEM+fP6qhRL+yf915
         r74oPgxYr44ay7/Q95zKiLF0RMemNKbCUbw7ykd/vOEFZe6nmEDGvae6eOLtpYYWH3xS
         IjJBbrZ8WaQPIybrGkigp3UYAQv0HUU7AWkRksAaAgQKHbe4ZeOCWUc7x3Ak54NBOi4r
         sklb8kBOJsOuonuxzsI7/2dHW3Br3zKlPuoQbhgWkbMew3jU/1qs1PZBIiFgY+Awjwk5
         gp+CtISX5+NfLUSYZRRZBoW1Q5W7SPRcMSK5sTld69TFD7LNnP9ocfJ3O5Sl3g5weW7U
         UcRw==
X-Gm-Message-State: AOAM531Yax0n6z+dm3py+4WCxKps9xTLpLXv5X6Hd8bLENx3C8DRPStr
	8NIPhFJO/4EeeurcPpIMCUFj7yp/8q8=
X-Google-Smtp-Source: ABdhPJwTo/JkpB1rZZI4UUoHfDThCz84PYYwF47BdU1Du0DFjJgtx0A9teqcgiTkAHC2DP2TGGgyQw==
X-Received: by 2002:ad4:4ea6:: with SMTP id ed6mr38518219qvb.54.1638817038873;
        Mon, 06 Dec 2021 10:57:18 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bj30sm6779331qkb.58.2021.12.06.10.57.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 10:57:18 -0800 (PST)
Message-ID: <7aa2680a-f8e2-84ac-002f-4cf37fe3377d@gmail.com>
Date: Mon, 6 Dec 2021 13:57:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANP_ax+zVTY=H8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANP_ax+zVTY=H8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gmail.com>
Message-ID-Hash: Z4K7PS6LDWMC3PXZXCEBQGD6XWF2ZKKD
X-Message-ID-Hash: Z4K7PS6LDWMC3PXZXCEBQGD6XWF2ZKKD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A question about external local oscillator
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z4K7PS6LDWMC3PXZXCEBQGD6XWF2ZKKD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5650526445194005304=="

This is a multi-part message in MIME format.
--===============5650526445194005304==
Content-Type: multipart/alternative;
 boundary="------------9LsmqFGXn8UZOwAkQxCfcPYV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9LsmqFGXn8UZOwAkQxCfcPYV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 13:42, Temir Karakurum wrote:
> Hi,
>
> I have some experience working with E310 and B210 and one of the=20
> bottlenecks for my application is the frequency tuning/hopping time of=20
> AD9361. I understand that N320 has the ability to use an external=20
> reference oscillator but I am not sure what this actually entails.
>
> Does this mean that the LO used in the homodyne IQ receiver=20
> architecture is no longer generated by the PLL but is directly=20
> supplied by the external=C2=A0reference? If so, does this mean that I c=
an=20
> sweep the frequencies as fast as I can generate LO frequencies in a=20
> similar fashion to a swept spectrum analyzer? Is external LO mode=20
> useful for spectrum sensing/frequency hopping applications or is it=20
> mostly used for applications that requires
> phase coherence?
>
> Also are there any UHD examples or tutorials depicting how to build=20
> tune_request objects under 'external LO' mode?
>
> Best,
> Temir
External LO is largely about providing phase-coherence.=C2=A0=C2=A0 The A=
D9361 in=20
the E310 and B210 has NO support for external LOs, but the AD9371 in the=20
N310 does have support
 =C2=A0 for a 2XLO.

When you create the multi_usrp device object, you'll pass in an=20
"rx_lo_source=3Dexternal" argument, and make sure the external=C2=A0 LO, =
at=20
that moment, is operating at 5GHz.
 =C2=A0 Once device initialization has completed, you can=20
set_lo_source("external").=C2=A0 See:

https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html#=
ae24f390fef2a0692dc230a5284ad1002

Now, how that interacts with future set_rx_freq() or set_tx_freq() I'm=20
not clear on.=C2=A0 The AD9371 in the N310 must necessarily complete some=
 I/Q=20
calibration and compensation
 =C2=A0 functions every time it tunes to a new frequency.=C2=A0 It's not =
clear=20
(and I cannot find examples) how you can trigger that calibration=20
process after you change your external LO.

In any case, the external LO needs to be at *TWICE* the desired tuned=20
frequency (because of the 2XLO mixers), and that input is limited to=20
8GHz, which means you can only
 =C2=A0 use external LO usefully for center frequencies between 300Mhz an=
d 4GHz.


>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------9LsmqFGXn8UZOwAkQxCfcPYV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 13:42, Temir Karakurum
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANP_ax+zVTY=3DH8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
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
          supplied by the external=C2=A0reference? If so, does this mean =
that
          I can sweep the frequencies as fast as I can generate LO
          frequencies in a similar fashion to a swept spectrum analyzer?
          Is external LO mode useful for spectrum sensing/frequency
          hopping applications or is it mostly used for applications
          that requires=C2=A0</div>
        <div>phase coherence?</div>
        <div><br>
        </div>
        <div>Also are there any UHD examples or tutorials depicting how
          to build tune_request objects under 'external LO' mode?</div>
        <div><br>
        </div>
        <div>Best,</div>
        <div>Temir</div>
      </div>
    </blockquote>
    External LO is largely about providing phase-coherence.=C2=A0=C2=A0 T=
he AD9361
    in the E310 and B210 has NO support for external LOs, but the AD9371
    in the N310 does have support<br>
    =C2=A0 for a 2XLO.<br>
    <br>
    When you create the multi_usrp device object, you'll pass in an
    "rx_lo_source=3Dexternal" argument, and make sure the external=C2=A0 =
LO, at
    that moment, is operating at 5GHz.<br>
    =C2=A0 Once device initialization has completed, you can
    set_lo_source("external").=C2=A0 See:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.gnuradio.org/doc/d=
oxygen/classgr_1_1uhd_1_1usrp__source.html#ae24f390fef2a0692dc230a5284ad1=
002">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.=
html#ae24f390fef2a0692dc230a5284ad1002</a><br>
    <br>
    Now, how that interacts with future set_rx_freq() or set_tx_freq()
    I'm not clear on.=C2=A0 The AD9371 in the N310 must necessarily compl=
ete
    some I/Q calibration and compensation<br>
    =C2=A0 functions every time it tunes to a new frequency.=C2=A0 It's n=
ot clear
    (and I cannot find examples) how you can trigger that calibration
    process after you change your external LO.<br>
    <br>
    In any case, the external LO needs to be at *TWICE* the desired
    tuned frequency (because of the 2XLO mixers), and that input is
    limited to 8GHz, which means you can only<br>
    =C2=A0 use external LO usefully for center frequencies between 300Mhz=
 and
    4GHz.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANP_ax+zVTY=3DH8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------9LsmqFGXn8UZOwAkQxCfcPYV--

--===============5650526445194005304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5650526445194005304==--
