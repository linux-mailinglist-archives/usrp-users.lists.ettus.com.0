Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F53A43E0
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 16:15:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17DE3384BE0
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 10:15:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="cbXs/OJo";
	dkim-atps=neutral
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 39B97383F7F
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 10:14:51 -0400 (EDT)
Received: by mail-wm1-f43.google.com with SMTP id s70-20020a1ca9490000b02901a589651424so6463258wme.0
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 07:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=mMme/qyISxUHvRkUv6H6o4CVapFwvpme3DYyK2rIyQc=;
        b=cbXs/OJoJTl9LHV4m6s0K7mGzEHF51qGx6XR19gxUPqOT8BtPzi38lAwAfOIfcOxlQ
         g8paw4K8nxl/W46w2sfpftYVq/pQEoGbEttc98WQN63V/IyvniHmkeueULIZj2tr5tZA
         X34OwiA4a5kV8xBq7aK6xAC3H4nlTVv6lBduHXeRYN1+pvhjhRY7qakjRHc0rKTCMjiB
         LhWVmTJilz0jiTPSP50Q+Eo1lgngT3dccWlUJIBHdS5d6tzmaYrahomulttDyhMnKhie
         Wp2hCA57YblRoRuMrOsBQCnSVMgRcBZAG+FU1mbP2CExFVZ1wWpi95lxyDkRg67Gh+JJ
         jL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mMme/qyISxUHvRkUv6H6o4CVapFwvpme3DYyK2rIyQc=;
        b=IIm2J/B2UbeoNmIEJvBtvsylunSm9KOxHp35Wa/fpkPzrd/CR215UD3SbyBc7TVzgm
         a6IOVDAzbi/FAp1oXHQO8oWkrQ8f7svRZ9NX4NXawcv5KVxLNYTBfEKvhN80vAiFLItw
         5MlAXDFryjSGv4VHGl8dTrYn08GHuOkkHs5pDqJ2Q4UbsrTJ1X1V+w74zADlUOAeVBRp
         NVKnbdQ3WtCZnK6K/PleayZGOmtToTsnVLdxh07fRUihdW5OQK0+P24CaoxDjHMsps83
         fn/w0fwdCyyJqmh4s/YbH492KRZYEvrUMSu5ZfIUspRan97IhNJ1Leq+aeM2EFkCwMb9
         ivtQ==
X-Gm-Message-State: AOAM532N6bJ7P7hr0l/VBEowJkjdauux93tzXbXBeDaWyM3sjAHEkvb+
	dnMJobhrELBtQVilGPwtBks0l5i7bbTqgNNf
X-Google-Smtp-Source: ABdhPJyGZ8PvRWvk+WK2gZ0fL4OuYZOFyH8QJwyEaHmTq9uBVjH4snPPOWGV/STLlQVpdtL5ApY0NQ==
X-Received: by 2002:a05:600c:1546:: with SMTP id f6mr21145373wmg.47.1623420889894;
        Fri, 11 Jun 2021 07:14:49 -0700 (PDT)
Received: from [192.168.1.141] (HSI-KBW-46-223-163-41.hsi.kabel-badenwuerttemberg.de. [46.223.163.41])
        by smtp.gmail.com with ESMTPSA id q20sm9240060wrf.45.2021.06.11.07.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 07:14:49 -0700 (PDT)
From: Martin Braun <martin.braun@ettus.com>
To: Devin Kelly <dwwkelly@gmail.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
 <CAFOi1A4JGHB-UtgLAwtbKTKHdmXWsKa-kKMiDJ_P_v5Vvzq18A@mail.gmail.com>
 <CAFOi1A5RwDQcwsvg-9sJNv-OdJLveXsbMT0SxuFv8PHr5CuEmA@mail.gmail.com>
 <CAANLyuYOzm43jEors7D1OjVsmAeFdSVnS7STdmTcua0JXUz+jQ@mail.gmail.com>
 <CAFOi1A7NdH_O4iGja0TtMVOftDKrZMc3DJHBz1o=_1+hVJwWXQ@mail.gmail.com>
Message-ID: <01f33eeb-c125-2110-eafc-6a596e993dbc@ettus.com>
Date: Fri, 11 Jun 2021 16:14:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAFOi1A7NdH_O4iGja0TtMVOftDKrZMc3DJHBz1o=_1+hVJwWXQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: ROJXNKR6VV3GSIK4OIKK6VTA6GEOIBPT
X-Message-ID-Hash: ROJXNKR6VV3GSIK4OIKK6VTA6GEOIBPT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROJXNKR6VV3GSIK4OIKK6VTA6GEOIBPT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 18/05/2021 18:33, Martin Braun wrote:
> Hey Devin,
> 
> you don't need a calibrated receiver for a calibrated TX. I'll need to 
> get back to my setup to see if maybe there is a bug here and I simply 
> missed it because I had a lingering RX calibration file.


Devin,

sorry for the eternity between replies.

I tried again with a clear, empty cal directory. Then I re-ran 
uhd_power_cal.py to create new data (I only calibrated a few points)

Then I tried tx_waveforms -- works fine.

I tried stripping it down to this Python script:

```
import uhd
import time
U = uhd.usrp.MultiUSRP("type=x300")
print("Flushing logs...")
time.sleep(.5)
U.set_tx_power_reference(-10)
```

(The sleep and print are to make sure I can exactly get the log messages 
when the set_tx_power_reference() call starts).

This is what looks like:


```
[...]
Flushing logs...
[TRACE] [X300-CAL-TX] Looking for power cal data for 
x3xx_pwr_generic_tx_tx+rx, serial 30ED045#0
[TRACE] [CAL::DATABASE] Checking for file at 
/home/mbr0wn/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_30ED045#0.cal
[TRACE] [CAL::DATABASE] Checking for file at 
/home/mbr0wn/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_30ED045#0.cal
[TRACE] [CAL::DATABASE] Checking for file at 
/home/mbr0wn/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_30ED045#0.cal
[TRACE] [CAL::DATABASE] Reading 472 bytes from 
"/home/mbr0wn/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_30ED045#0.cal"
[TRACE] [X300-CAL-TX] power cal data found for key 
x3xx_pwr_generic_tx_tx+rx, key x3xx_pwr_generic_tx_tx+rx, serial 30ED045#0
[TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [X300-CAL-TX] Desired power: -10 dBm -> desired gain: 0 dB; 
Actual HW power: -6.57071 dBm -> actual HW gain: 0 dB, Actual total 
power: -6.57071 dBm -> actual total gain: 0 dB
[TRACE] [RFNOC::GRAPH] Shutting down detail::graph...
[...]
```

In your logs, this is obviously not behaving the same way:

>         Actual TX Freq: 900.000000 MHz...
> 
>         [TRACE] [X300-CAL-RX] Looking for power cal data for
>         x3xx_pwr_generic_rx_rx2, serial 311A8A8#0
>         [TRACE] [CAL::DATABASE] Checking for file at
>         /home/lb/.local/share/uhd/cal/x3xx_pwr_generic_rx_rx2_311A8A8#0.cal
>         ERROR: USRP does not have a reference power API on channel 0!
>         [TRACE] [X300-CAL-RX] No power cal data found for key
>         x3xx_pwr_generic_rx_rx2, key x3xx_pwr_generic_rx_rx2, serial
>         311A8A8#0

UHD is asking the RX power manager for cal data, when it's the TX power 
manager who needs them. But I can't figure out why (nor can I reproduce it).


Can you run the Python script above, and paste the full logs? Maybe 
that's more enlightening.

--M
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
