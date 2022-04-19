Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6DF507197
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 17:22:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B78F4383D29
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 11:22:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650381750; bh=+74OdCnWUWLw7tVJz7UgvRgXA/C8EQcWqtBRKBAk2Ig=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J4RQXMjHZfsXt/OvMJZo5/DpPpqWrlG3k2kHrKQoxK4qiob0kYCC2Fq3dOjqcL4gu
	 fNhvYlNbQLrkJl0sOmQX92okk33qIH2DD3Jyn/nZBbB/XkkSqnwOGFYbBuKYGu4HGf
	 4xR1iEaOkxfVHNiOVFzoKqH4puRp6qmZUBlO+JT5qKJMdqApbWWbVxRZQUB7MLQlAj
	 xjq3gIh5UG+z/Cc22NR12Gket5K6c8etKs3iscc677jctsHsQZT2IDWPUVv3DiBtW8
	 It4t1lrb50n7ZM2x3B9+xX7y25oq6936Z+Ww0KmbByDBYXBAuO5Gb97x3XQKRHdkxw
	 YYnCYm1xHW3HA==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id DFE2E38423F
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 11:21:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qd+rMsOk";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id a186so11010150qkc.10
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 08:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=eSQPLb5Y2cf8dfM9ULxYYRVlzHB4EiBC/Qagt7YpuBE=;
        b=qd+rMsOkoypOO6iTK1VfV+ddkCMwO695B83Gr+xg3Jejdcs6GFgfW4PhZFtFbKhwtI
         zeQeiG13hX+wMigMyMZp6YLsSvXuRXgpfgSQHDrWwzg9AgylhUNkjHcIV6acrtHba1yu
         LvHcxXfUL2WS7xDVD8asZ/62zXFF27MpoFg/oMrAaedzOaq+lnevMJsE1ukzS07VfzaJ
         AMBNAvgobJm8DoOTC1ddvkrgJ2KyVGK+YxlyZtTUqHUj/r56ZfaZkD496zz21qxXF2mX
         Ij23uUgIde7sNdvoeZ5IZbEG7Ev30uJQAqPSqr/650LT0PyppmA6e4nagRPbylOUot/2
         ompw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=eSQPLb5Y2cf8dfM9ULxYYRVlzHB4EiBC/Qagt7YpuBE=;
        b=gJpnMZbLijIHT7HmD3ws9qFX74+g/ipiKtEsSygZLHakRMlHpIRTTvVEkNd1TuCUkI
         tNnILoDW1Zph1Dnjcxz8iWSexC2qctHX06aE6KWdkDB4Y78cgVswDjrhk1jLFwp1p0t7
         vemUe7dV3smhh0gthKuMjnGE/kvzomCPe6mVq2IOAcMF/lGGve5xIxn32OzxrHP7mbKY
         A4VSdL8wEdQgJVa4bn2OgSda8RheT8MkJn4pBGqoCTIhUls7/JFHsDptBui8D2S9/jVW
         mPpC8/gYVGCAohvs6bi0h3YP9RelkahG8lknueeSbV5Vy8zia6d4LGDMQVTWsKg5bpTh
         EgXw==
X-Gm-Message-State: AOAM530eQrdcbjHK7HdKEJLpYEAIaUq/VYq5wNwhcazIXVJL2fipLYeC
	n30l0pSgwJx+h2Y7u439abVIVCQsqd6nkQ==
X-Google-Smtp-Source: ABdhPJz0wYlNt9Xj2I+2Lq6woIkaN6bVf5PgKTLvto02R5euQpeXwaGYaBqxMWXVRvO0GKHz+lFjmg==
X-Received: by 2002:a05:620a:2848:b0:67d:35de:bb5b with SMTP id h8-20020a05620a284800b0067d35debb5bmr9775325qkp.499.1650381681842;
        Tue, 19 Apr 2022 08:21:21 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id n186-20020a37bdc3000000b0069c218173e8sm123073qkf.112.2022.04.19.08.21.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 08:21:21 -0700 (PDT)
Message-ID: <adb11a34-56f9-622b-394b-c653a7e81bc2@gmail.com>
Date: Tue, 19 Apr 2022 11:21:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
 <CAB__hTQo=pnO8-TBvBJFK8AbFStqnzMz72fLWJ2bVOjTL3wpOg@mail.gmail.com>
 <CAOucfANc6BoeQNv==c8obv-hEdZiQ0gxrjhpZMs=v+FGF4yu=Q@mail.gmail.com>
 <CAOucfAPmDgkZyXShtofoqhu7TkH38tgWN=2DBYTgNF2Kt1DLXA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOucfAPmDgkZyXShtofoqhu7TkH38tgWN=2DBYTgNF2Kt1DLXA@mail.gmail.com>
Message-ID-Hash: AVBHHUVLC53DXBLXEY4XIVUS2VQEDLIG
X-Message-ID-Hash: AVBHHUVLC53DXBLXEY4XIVUS2VQEDLIG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AVBHHUVLC53DXBLXEY4XIVUS2VQEDLIG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7568543646299367669=="

This is a multi-part message in MIME format.
--===============7568543646299367669==
Content-Type: multipart/alternative;
 boundary="------------iVrbIQGafNZ0WSM4ftMLTu9U"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------iVrbIQGafNZ0WSM4ftMLTu9U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-19 10:26, Lautaro Lorenzen wrote:
> Well, I've rebuilt and reloaded the FPGA image, and.... it works. Both=20
> from the embedded and the host, including gnu-radio.
>
> I presumably did nothing different, and used the same YAML as last=20
> time. Of course, I must have done something in the middle that is=20
> beyond me.
> In my defense, the error was quite strange :)
>
> Thank you for your time and your help.
> Lautaro.
This whole time, I assumed you were using a factory FPGA image.


>
> El mar, 19 abr 2022 a la(s) 10:14, Lautaro Lorenzen=20
> (lorenzen.lautaro@gmail.com) escribi=C3=B3:
>
>     Hello Rob,
>
>     You are right, the UHD version running on the embedded is 4.1.0.4.
>     In any case, I don't quite get why the examples running on the
>     ettus don't work either.
>
>     If I run ./benchmark_rate --rx_rate 1e6 --tx_rate 1e6
>     --rx_channels 1 --tx_channels 0, I get:
>
>     [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
>     UHD_4.1.0.4-0-g25d617ca
>     [00:00:00.044121] Creating the usrp device with: ...
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D=
8B,fpga=3Dn/a,claimed=3DFalse
>     [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>     [INFO] [MPM.PeriphManager] init() called with device args
>     `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
>     [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>     [INFO] [0/Radio#0] CODEC loopback test passed
>     [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>     [INFO] [0/Radio#0] CODEC loopback test passed
>     Using Device: Single USRP:
>     =C2=A0 Device: E300-Series Device
>     =C2=A0 Mboard 0: e310_sg3
>     =C2=A0 RX Channel: 0
>     =C2=A0 =C2=A0 RX DSP: n/a
>     =C2=A0 =C2=A0 RX Dboard: A
>     =C2=A0 =C2=A0 RX Subdev: E3xx
>     =C2=A0 RX Channel: 1
>     =C2=A0 =C2=A0 RX DSP: n/a
>     =C2=A0 =C2=A0 RX Dboard: A
>     =C2=A0 =C2=A0 RX Subdev: E3xx
>     =C2=A0 TX Channel: 0
>     =C2=A0 =C2=A0 TX DSP: n/a
>     =C2=A0 =C2=A0 TX Dboard: A
>     =C2=A0 =C2=A0 TX Subdev: E3xx
>     =C2=A0 TX Channel: 1
>     =C2=A0 =C2=A0 TX DSP: n/a
>     =C2=A0 =C2=A0 TX Dboard: A
>     =C2=A0 =C2=A0 TX Subdev: E3xx
>
>     [00:00:06.286834383] Setting device timestamp to 0...
>     Setting TX spp to 364
>     [00:00:10.136939135] Testing receive rate 1.000000 Msps on 1 channe=
ls
>     [00:00:10.564365285] Testing transmit rate 1.000000 Msps on 1 chann=
els
>     [00:00:20.827293545] Benchmark complete.
>
>
>     Benchmark rate summary:
>     =C2=A0 Num received samples: =C2=A0 =C2=A0 10248264
>     =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00
>     =C2=A0 Num overruns detected: =C2=A0 =C2=A00
>     =C2=A0 Num transmitted samples: =C2=A010257884
>     =C2=A0 Num sequence errors (Tx): 0
>     =C2=A0 Num sequence errors (Rx): 0
>     =C2=A0 Num underruns detected: =C2=A0 0
>     =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
>     =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>     =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>
>
>     Done!
>
>
>     On the other hand, If I include tx channel "1" in any way (2Tx 2Rx
>     or 1Tx 1Rx) the test fails.
>
>     [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
>     UHD_4.1.0.4-0-g25d617ca
>     [00:00:00.044036] Creating the usrp device with: ...
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D=
8B,fpga=3Dn/a,claimed=3DFalse
>     [WARNING] [MPM.RPCServer] A timeout event occured!
>     [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>     [INFO] [MPM.PeriphManager] init() called with device args
>     `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
>     [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>     [INFO] [0/Radio#0] CODEC loopback test passed
>     [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>     [INFO] [0/Radio#0] CODEC loopback test passed
>     Using Device: Single USRP:
>     =C2=A0 Device: E300-Series Device
>     =C2=A0 Mboard 0: e310_sg3
>     =C2=A0 RX Channel: 0
>     =C2=A0 =C2=A0 RX DSP: n/a
>     =C2=A0 =C2=A0 RX Dboard: A
>     =C2=A0 =C2=A0 RX Subdev: E3xx
>     =C2=A0 RX Channel: 1
>     =C2=A0 =C2=A0 RX DSP: n/a
>     =C2=A0 =C2=A0 RX Dboard: A
>     =C2=A0 =C2=A0 RX Subdev: E3xx
>     =C2=A0 TX Channel: 0
>     =C2=A0 =C2=A0 TX DSP: n/a
>     =C2=A0 =C2=A0 TX Dboard: A
>     =C2=A0 =C2=A0 TX Subdev: E3xx
>     =C2=A0 TX Channel: 1
>     =C2=A0 =C2=A0 TX DSP: n/a
>     =C2=A0 =C2=A0 TX Dboard: A
>     =C2=A0 =C2=A0 TX Subdev: E3xx
>
>     [00:00:06.466089847] Setting device timestamp to 0...
>     Setting TX spp to 364
>     [00:00:10.313807747] Testing receive rate 1.000000 Msps on 1 channe=
ls
>     [00:00:10.748820483] Testing transmit rate 1.000000 Msps on 1 chann=
els
>     [00:00:11.753567712] Tx timeouts: 1
>     [00:00:21.857387286] Benchmark complete.
>
>
>     Benchmark rate summary:
>     =C2=A0 Num received samples: =C2=A0 =C2=A0 10248286
>     =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00
>     =C2=A0 Num overruns detected: =C2=A0 =C2=A00
>     =C2=A0 Num transmitted samples: =C2=A00
>     =C2=A0 Num sequence errors (Tx): 0
>     =C2=A0 Num sequence errors (Rx): 0
>     =C2=A0 Num underruns detected: =C2=A0 0
>     =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
>     =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A011
>     =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>
>
>     Done!
>
>     The only message that is different between tests and calls my
>     attention is: "[WARNING] [MPM.RPCServer] A timeout event occured!"
>
>     Any ideas?
>
>     In the meantime I'll try to reload the file system and the default
>     FPGA image, I'll let you know if I've any news.
>
>     Thank you,
>     Lautaro.
>
>     El jue, 14 abr 2022 a la(s) 00:23, Rob Kossler (rkossler@nd.edu)
>     escribi=C3=B3:
>
>         Hi Lautaro,
>         When you run embedded, what is the version that runs? I am
>         wondering if your embedded file system (and also MPM version)
>         is old and does not match the UHD version 4.1.0.5 that you are
>         using on a host workstation. If this is the case, perhaps
>         reload the file system using "dd" (don't use bmaptool).
>         Another thought would be to try benchmark_rate with 2 channels
>         tx and 2 channels rx (at a slow rate) and see if the lights
>         come on.
>         Rob
>
>         On Wed, Apr 13, 2022 at 12:33 PM Lautaro Lorenzen
>         <lorenzen.lautaro@gmail.com> wrote:
>
>             Hi everyone,
>
>             I'm trying to run a simple example on an Ettus E310.
>             I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>
>             Everything seems to work okay, but I can not manage to get
>             the second channel (TRX-B) to transmit anything. FYI: I
>             can receive from both channels RX-A and RX-B.
>             The problem came up when I tried to transmit something via
>             gnu-radio, changing the "subdev" arg to "A:1" instead of
>             leaving it blank as I normally do.
>             When I pressed start, everything seemed to compile fine,
>             but the GUI freezes (something that did not happen when
>             using TRX-A).
>
>             To see if gnu-radio was the problem, I logged in the
>             embedded linux and tried some uhd examples from
>             usr/lib/uhd/examples.
>             As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6
>             --subdev A:0=C2=A0 and the tx light turned on and I could s=
ee
>             something on my oscilloscope. Also, a few "LLLLL" appeared
>             on the console.
>
>             When I ran:
>             ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1,
>             everything looks the same but no light, no signal, and no
>             "LLLLL" are displayed on the console. Just the message
>             "press ctrl+C to stop streaming".
>
>             Any help would be very much appreciated.
>             Regards,
>             Lautaro.
>
>             _______________________________________________
>             USRP-users mailing list -- usrp-users@lists.ettus.com
>             To unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------iVrbIQGafNZ0WSM4ftMLTu9U
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-19 10:26, Lautaro Lorenzen
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOucfAPmDgkZyXShtofoqhu7TkH38tgWN=3D2DBYTgNF2Kt1DLXA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">Well, I've
          rebuilt and reloaded the FPGA image, and.... it works. Both
          from the embedded and the host, including gnu-radio. <br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif"><br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">I presumably
          did nothing different, and used the same YAML as last time. Of
          course, I must have done something in the middle that is
          beyond me. <br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">In my defense,
          the error was quite strange :)<br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif"><br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">Thank you for
          your time and your help.</div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br>
        </div>
      </div>
    </blockquote>
    This whole time, I assumed you were using a factory FPGA image.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOucfAPmDgkZyXShtofoqhu7TkH38tgWN=3D2DBYTgNF2Kt1DLXA@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif"><span
            class=3D"gmail-ILfuVd"><span class=3D"gmail-hgKElc"></span></=
span></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mar, 19 abr 2022 a la(s)
          10:14, Lautaro Lorenzen (<a
            href=3D"mailto:lorenzen.lautaro@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">lore=
nzen.lautaro@gmail.com</a>)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">Hello Rob,=
</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">You are
              right, the UHD version running on the embedded is 4.1.0.4.
              In any case, I don't quite get why the examples running on
              the ettus don't work either.=C2=A0</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">If I run
              ./benchmark_rate --rx_rate 1e6 --tx_rate 1e6 --rx_channels
              1 --tx_channels 0, I get:<br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">[INFO]
              [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
              UHD_4.1.0.4-0-g25d617ca<br>
              [00:00:00.044121] Creating the usrp device with: ...<br>
              [INFO] [MPMD] Initializing 1 device(s) in parallel with
              args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpg=
a=3Dn/a,claimed=3DFalse<br>
              [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
              [INFO] [MPM.PeriphManager] init() called with device args
              `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.<br>
              [INFO] [0/Radio#0] Performing CODEC loopback test on
              channel 0 ... <br>
              [INFO] [0/Radio#0] CODEC loopback test passed<br>
              [INFO] [0/Radio#0] Performing CODEC loopback test on
              channel 1 ... <br>
              [INFO] [0/Radio#0] CODEC loopback test passed<br>
              Using Device: Single USRP:<br>
              =C2=A0 Device: E300-Series Device<br>
              =C2=A0 Mboard 0: e310_sg3<br>
              =C2=A0 RX Channel: 0<br>
              =C2=A0 =C2=A0 RX DSP: n/a<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: E3xx<br>
              =C2=A0 RX Channel: 1<br>
              =C2=A0 =C2=A0 RX DSP: n/a<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: E3xx<br>
              =C2=A0 TX Channel: 0<br>
              =C2=A0 =C2=A0 TX DSP: n/a<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: E3xx<br>
              =C2=A0 TX Channel: 1<br>
              =C2=A0 =C2=A0 TX DSP: n/a<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: E3xx<br>
              <br>
              [00:00:06.286834383] Setting device timestamp to 0...<br>
              Setting TX spp to 364<br>
              [00:00:10.136939135] Testing receive rate 1.000000 Msps on
              1 channels<br>
              [00:00:10.564365285] Testing transmit rate 1.000000 Msps
              on 1 channels<br>
              [00:00:20.827293545] Benchmark complete.<br>
              <br>
              <br>
              Benchmark rate summary:<br>
              =C2=A0 Num received samples: =C2=A0 =C2=A0 10248264<br>
              =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>
              =C2=A0 Num transmitted samples: =C2=A010257884<br>
              =C2=A0 Num sequence errors (Tx): 0<br>
              =C2=A0 Num sequence errors (Rx): 0<br>
              =C2=A0 Num underruns detected: =C2=A0 0<br>
              =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              <br>
              <br>
              Done!</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">On the
              other hand, If I include tx channel "1" in any way (2Tx
              2Rx or 1Tx 1Rx) the test fails. <br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">[INFO]
              [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
              UHD_4.1.0.4-0-g25d617ca<br>
              [00:00:00.044036] Creating the usrp device with: ...<br>
              [INFO] [MPMD] Initializing 1 device(s) in parallel with
              args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpg=
a=3Dn/a,claimed=3DFalse<br>
              [WARNING] [MPM.RPCServer] A timeout event occured!<br>
              [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
              [INFO] [MPM.PeriphManager] init() called with device args
              `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.<br>
              [INFO] [0/Radio#0] Performing CODEC loopback test on
              channel 0 ... <br>
              [INFO] [0/Radio#0] CODEC loopback test passed<br>
              [INFO] [0/Radio#0] Performing CODEC loopback test on
              channel 1 ... <br>
              [INFO] [0/Radio#0] CODEC loopback test passed<br>
              Using Device: Single USRP:<br>
              =C2=A0 Device: E300-Series Device<br>
              =C2=A0 Mboard 0: e310_sg3<br>
              =C2=A0 RX Channel: 0<br>
              =C2=A0 =C2=A0 RX DSP: n/a<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: E3xx<br>
              =C2=A0 RX Channel: 1<br>
              =C2=A0 =C2=A0 RX DSP: n/a<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: E3xx<br>
              =C2=A0 TX Channel: 0<br>
              =C2=A0 =C2=A0 TX DSP: n/a<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: E3xx<br>
              =C2=A0 TX Channel: 1<br>
              =C2=A0 =C2=A0 TX DSP: n/a<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: E3xx<br>
              <br>
              [00:00:06.466089847] Setting device timestamp to 0...<br>
              Setting TX spp to 364<br>
              [00:00:10.313807747] Testing receive rate 1.000000 Msps on
              1 channels<br>
              [00:00:10.748820483] Testing transmit rate 1.000000 Msps
              on 1 channels<br>
              [00:00:11.753567712] Tx timeouts: 1<br>
              [00:00:21.857387286] Benchmark complete.<br>
              <br>
              <br>
              Benchmark rate summary:<br>
              =C2=A0 Num received samples: =C2=A0 =C2=A0 10248286<br>
              =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>
              =C2=A0 Num transmitted samples: =C2=A00<br>
              =C2=A0 Num sequence errors (Tx): 0<br>
              =C2=A0 Num sequence errors (Rx): 0<br>
              =C2=A0 Num underruns detected: =C2=A0 0<br>
              =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A011<br>
              =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              <br>
              <br>
              Done!</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">The only
              message that is different between tests and calls my
              attention is: "[WARNING] [MPM.RPCServer] A timeout event
              occured!"</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">Any ideas?=
</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">In the
              meantime I'll try to reload the file system and the
              default FPGA image, I'll let you know if I've any news.</di=
v>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif"><br>
            </div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">Thank you,=
</div>
            <div class=3D"gmail_default"
              style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<b=
r>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 abr 2022 a
              la(s) 00:23, Rob Kossler (<a href=3D"mailto:rkossler@nd.edu=
"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">rkossler@nd.edu</a>)
              escribi=C3=B3:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div dir=3D"ltr">Hi Lautaro,
                  <div>When you run embedded, what is the version that
                    runs? I am wondering if your embedded file system
                    (and also MPM version) is old and does not match the
                    UHD version 4.1.0.5 that you are using on a host
                    workstation. If this is the case, perhaps reload the
                    file system using "dd" (don't use bmaptool).=C2=A0
                    Another thought would be to try benchmark_rate with
                    2 channels tx and 2 channels rx (at a slow rate) and
                    see if the lights come on.</div>
                  <div>Rob</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 13, 2=
022
                    at 12:33 PM Lautaro Lorenzen &lt;<a
                      href=3D"mailto:lorenzen.lautaro@gmail.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">lorenzen.lautaro@gm=
ail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"ltr">
                      <div
                        style=3D"font-family:arial,helvetica,sans-serif">=
Hi
                        everyone,</div>
                      <div
                        style=3D"font-family:arial,helvetica,sans-serif">=
<br>
                      </div>
                      <div
                        style=3D"font-family:arial,helvetica,sans-serif">=
I'm
                        trying to run a simple example on an Ettus E310.
                        <br>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">I'm
                          using an E312 with UHD 4.1.0.5 and gnuradio
                          v3.8.0.5. <br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
"><br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">Everything
                          seems to work okay, but I can not manage to
                          get the second channel (TRX-B) to transmit
                          anything. FYI: I can receive from both
                          channels RX-A and RX-B.<br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">The
                          problem came up when I tried to transmit
                          something via gnu-radio, changing the "subdev"
                          arg to "A:1" instead of leaving it blank as I
                          normally do. <br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">When
                          I pressed start, everything seemed to compile
                          fine, but the GUI freezes (something that did
                          not happen when using TRX-A).</div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
"><br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">To
                          see if gnu-radio was the problem, I logged in
                          the embedded linux and tried some uhd examples
                          from usr/lib/uhd/examples.</div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">As
                          expected, I ran ./tx_waveforms --rate 1e6
                          --freq 100e6 --subdev A:0=C2=A0 and the tx ligh=
t
                          turned on and I could see something on my
                          oscilloscope. Also, a few "LLLLL" appeared on
                          the console.</div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
"><br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">When
                          I ran: <br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">./tx_waveforms
                          --rate 1e6 --freq 100e6 --subdev A:1,
                          everything looks the same but no light, no
                          signal, and no "LLLLL" are displayed on the
                          console. Just the message "press ctrl+C to
                          stop streaming".</div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
"><br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">Any
                          help would be very much appreciated. <br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">Regards,</div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
">Lautaro.<br>
                        </div>
                        <div
                          style=3D"font-family:arial,helvetica,sans-serif=
"><br>
                        </div>
                      </div>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list -- <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a><br>
                    To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users-leave@li=
sts.ettus.com</a><br>
                  </blockquote>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
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

--------------iVrbIQGafNZ0WSM4ftMLTu9U--

--===============7568543646299367669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7568543646299367669==--
