Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2CF364802
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:12:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04212383E0A
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 12:12:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MFfAfMc0";
	dkim-atps=neutral
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 1743B383DBB
	for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 12:11:57 -0400 (EDT)
Received: by mail-ed1-f54.google.com with SMTP id y3so5135618eds.5
        for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 09:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gNgO/zV6kk5aYzoSqiyQYZiPsz6v50MuqXEF+aPNtjk=;
        b=MFfAfMc0Smpy24JUc/g+YUfjQLZ5YxZcPUe78XmSYb85QoKtjSe69Rk8bzvT7X7ADy
         mw9XVAX831wVCXA0r9FtogOJE8IiaNW22OyLrw5PiIXQObJEUaYrhQE/CdzxFdR8G5+2
         wTZQHBB0RfLlwilkG/MFLzJvd8L/zzGMUJrDQ30CRhv8qpaSVT/X0krsnKqFf4Uq7B7r
         6efQTwM370y5B+rfj2jV1Sq7QFnwUMOBmu6s3V3+Akn7PptVOmwKmZXBzWmqHpcDmHDS
         f46PpqHaSi0PXytIS90g7mO6k+sZpXVW23nzTpQiSJg0ZsmZNmQgFruVEai9aA9Vrezz
         dhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gNgO/zV6kk5aYzoSqiyQYZiPsz6v50MuqXEF+aPNtjk=;
        b=RAasOcQMFFGWM9Xul3VD43htPXZ0mr39DzL9K7NZEtfevFogA+CnRky+Ezchj3PJ2D
         C6wQ0hVvzow6a4q4g1bFl8qfKjLSo0iElPtXE2VlPI3BuBg1a1Vr3jfE1UvAua71XySK
         l/ssINm9xeebPrWtwwvKwbgktFQSUZVudIoVTPaaIJ+eOlrJpboIRBC781H49UaLYJ0Y
         cJ2wIuancSHLmO1vYRKDTUTQ9TCz9DAxHobPaTstrffuuCiLRAI6Z8BDqS+zoYMTq2mS
         GHi1p2pMfPQhb4eZyUeaVHBRQnTYnp30zKT9CEcQirIMV9rASiW698YG+SG9Jy0Ofv+k
         FCaA==
X-Gm-Message-State: AOAM530NeYNqRtBctJCwOwlYPfR8zVrGYMRXl4LI1PiR77m1fty+tvPx
	K7M5osph3sPEsBwzy0fDV6ut/GnPqV9hE/ml3JiuiCltIJD4jg==
X-Google-Smtp-Source: ABdhPJz0JbVbZmLdaN7Is39hBD8JXULiGYK5HOIj0Fo0fcNwdgB8k0M2vTVEF3zCtE2VGbE3q2nKierMjeOos5odV/I=
X-Received: by 2002:a05:6402:35cd:: with SMTP id z13mr26807577edc.21.1618848716746;
 Mon, 19 Apr 2021 09:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
 <29D4AD3E-11D9-42A0-A6C3-60D03ED19AE5@elitecoding.org> <7c1e57a9-6dbb-7473-479f-5fadadcd7d52@elitecoding.org>
 <CAG16vQVXNTpn5uzrD-73-BLNiDb11o1ErLpZL9807zvdf9THww@mail.gmail.com>
 <CAG16vQU8M1MjzWP_F4uWSnzHPcwJHP-miTqnO0TW_=3V1LkREw@mail.gmail.com>
 <d4c0d281-0726-7378-2f03-979d52f373d6@elitecoding.org> <CAG16vQVXRr-nS=jer1jn4_u_uam=WwTx4sJ9jePYBG_X_9gftA@mail.gmail.com>
In-Reply-To: <CAG16vQVXRr-nS=jer1jn4_u_uam=WwTx4sJ9jePYBG_X_9gftA@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 19 Apr 2021 18:11:44 +0200
Message-ID: <CAG16vQWZ=QP-v9+U8yffkNMOtNNdRcdSr11D01=7Qpgj-P=m7g@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: SXEZGTNH7MI3GVOKR7STUIQPM77WKB7U
X-Message-ID-Hash: SXEZGTNH7MI3GVOKR7STUIQPM77WKB7U
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SXEZGTNH7MI3GVOKR7STUIQPM77WKB7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0137810915713250358=="

--===============0137810915713250358==
Content-Type: multipart/alternative; boundary="000000000000b4f41005c05596b8"

--000000000000b4f41005c05596b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

Great news. I have finally managed to configure the AGC in the USRP E320!

I write you to tell you the steps I have done and just in case someone is
stuck the way I was.

As far as I have understood, for E320 USRP (and I imagine that this applies
to all USRP with MPM), the low-level configuration is done through the MPM
layer. So, while making the changes and compiling the driver is sufficient
to configure the AGC in B210, in the USRP E320 is not. MPM must be compiled
inside the device.

So first, I modify the ad9361_device.cpp file that is located in
uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp (as we did long
emails ago).
Then, I follow the steps that are in this guide  (
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev) to
compile MPM natively in the E320 (these steps are all done inside the
USRP):

mkdir uhd # Create a new, empty directory called uhd

$ sshfs user@yourcomputer:src/uhd uhd # This will mount ~/src/uhd from
the remote machine to ~/uhd on the device

$ mkdir build_mpm

$ cd build_mpm # You are now in /home/root/build_mpm

$ cmake -DMPM_DEVICE=3De320 ../uhd/mpm

$ make -j2 install # This will take several minutes


And finally (and this one cost me headaches to figure it out), reboot the
device. That way I get my device working as I expect.

Again, many thanks for your help!!

Kind Regards,

Maria

El jue, 15 abr 2021 a las 13:19, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
escribi=C3=B3:

> Hi Julian,
>
> I'm having some issues with the cross-compilation of the E320 USRP (there
> are missing libraries) that I'm trying to resolve to run my python script
> inside the USRP.
>
> If I continue with the compilation (ignoring that these libraries are
> missing), I can see that the uhd_usrp_probe command inside the E320 retur=
ns
> my last email messages, i.e, it is passing through the ad9361_iface. This
> iface talks with the rpcc, so perhaps, as you said, there's
> different behavior between network and embedded modes, and I need to
> cross-compile the UHD driver with my changes in order to be able to talk =
to
> the chipset. When I compile my UHD driver code in my host PC changing the
> thresholds of the ad9361 agc, and run my python script in network mode
> (without cross-compiling) I see that my waveform is still moving between
> -10 and -12 dB which are the defaults values in the UHD driver (that's no=
t
> happened with the B210 USRP which outputs the expected waveform) so I'm
> almost sure that the cross-compilation could be the problem.
>
> I'll try to fix the cross-compilation issues and let you know if it
> resolves the problem.
>
> Thanks again.
>
> Kind Regards,
>
> Maria
>
>
> El lun, 12 abr 2021 a las 17:54, Julian Arnold (<julian@elitecoding.org>)
> escribi=C3=B3:
>
>> Maria,
>>
>> have you tried running your code in embedded mode (directly on the E320)=
?
>>
>> Way back when the E310 was a new product, there definetly were
>> differences between networked and embedded mode.
>>
>> Nowadays, with NPM, both modes should access the hardware in the same
>> way if undertand it correctly.
>>
>> However, you might still only be seeing the log messages coming from
>> your host machine but not the logs that are generated on the E320 when
>> running in networked mode (just guessing here).
>> So running in embedded mode would probably be a valuable next step.
>>
>> >> I have debugged the code running the "usrp-filter-explorer.cpp"
>> :D Nice, until now I wasn't aware of any people still using this tool.
>> Maybe it deserves an update ;)
>>
>> Cheers,
>> Julian
>>
>> On 4/12/21 2:53 PM, Maria Mu=C3=B1oz wrote:
>> > Hi Julian,
>> >
>> > I have debugged the code running the "usrp-filter-explorer.cpp" which
>> > also change some of the ad9361 configurations and I have the
>> opportunity
>> > to check it both in USRP E320 and USRP B210 (same as the one you have)=
.
>> >
>> > I have been able to see that the path through the source code using th=
e
>> > B210 is as expected (as you said, it goes through the ad9361_device.cp=
p
>> > file) but that's not happening with the USRP E320.
>> > The b210 log output (with added comments) is this:
>> > /[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> > UHD_4.0.0.HEAD-0-g90ce6062
>> > [INFO] [B200] Detected Device: B210
>> > [INFO] [B200] Operating over USB 2.
>> > [INFO] [B200] Initialize CODEC control...
>> > *[INFO] [AD9361_DEVICE] initialize*
>> > *[INFO] [AD9361_DEVICE] setup_gain_control_agc
>> > [INFO] [AD9361_device] setup_adc*
>> > [INFO] [B200] Initialize Radio control...
>> > *[INFO] [AD9361_CTRL] set_agc
>> > [INFO] [AD9361_DEVICE] set_agc
>> > [INFO] [AD9361_DEVICE] setup_gain_control_agc
>> > [INFO] [AD9361_CTRL] set_agc
>> > [INFO] [AD9361_DEVICE] set_agc
>> > [INFO] [AD9361_DEVICE] setup_gain_control_agc
>> > [INFO] [AD9361_DEVICE] setup_gain_control_agc*
>> > [INFO] [B200] Performing register loopback test...
>> > [INFO] [B200] Register loopback test passed
>> > *[INFO] [MANAGER] agc
>> > [INFO] [AD9361_DEVICE] filter
>> > [INFO] [AD9361_DEVICE] filter*
>> > [INFO] [B200] Performing register loopback test...
>> > [INFO] [B200] Register loopback test passed
>> > *[INFO] [MANAGER] agc
>> > [INFO] [AD9361_DEVICE] filter
>> > [INFO] [AD9361_DEVICE] filter*
>> > [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> > [INFO] [B200] Asking for clock rate 16.000000 MHz...
>> > [INFO] [AD9361_DEVICE] setup_gain_control_agc
>> > *[INFO] [AD9361_device] setup_adc*
>> > [INFO] [B200] Actually got clock rate 16.000000 MHz.
>> > [INFO] [MULTI_USRP] Setting master clock rate selection to 'manual'.
>> > [INFO] [B200] Asking for clock rate 32.000000 MHz...
>> > *[INFO] [AD9361_DEVICE] setup_gain_control_agc
>> > [INFO] [AD9361_device] setup_adc*
>> > [INFO] [B200] Actually got clock rate 32.000000 MHz.
>> >
>> > Using master clock rate: 3.2e+07
>> > Using search mask: rx_frontends/A/
>> >
>> > Found the following filters matching "rx_frontends/A/":
>> > /mboards/0/dboards/A/rx_frontends/A/filters/DEC_3
>> > /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
>> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
>> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
>> >
>> > Active filters:
>> > [INFO] [AD9361_DEVICE] filter
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
>> >
>> > Available Info on Active Filters:
>> > [INFO] [AD9361_DEVICE] filter
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
>> > [filter_info_base]
>> > type: Digital FIR (i16)
>> > bypass enable: 0
>> > position index: 5
>> >          [digital_filter_base]
>> >          input rate: 6.4e+07
>> >          interpolation: 1
>> >          decimation: 2
>> >          full-scale: 32767
>> >          max num taps: 128
>> >          taps:
>> >                  (tap 0: 0)(tap 1: 0)(tap 2: 1)(tap 3: 0)(tap 4:
>> -2)(tap
>> > 5: 0)(tap 6: 3)(tap 7: 0)(tap 8: -5)(tap 9: 0)(tap 10: 8)
>> >                  (tap 11: 0)(tap 12: -11)(tap 13: 0)(tap 14: 17)(tap
>> 15:
>> > 0)(tap 16: -24)(tap 17: 0)(tap 18: 33)(tap 19: 0)(tap 20: -45)
>> >                  (tap 21: 0)(tap 22: 61)(tap 23: 0)(tap 24: -80)(tap
>> 25:
>> > 0)(tap 26: 104)(tap 27: 0)(tap 28: -134)(tap 29: 0)(tap 30: 169)
>> >                  (tap 31: 0)(tap 32: -213)(tap 33: 0)(tap 34: 264)(tap
>> > 35: 0)(tap 36: -327)(tap 37: 0)(tap 38: 401)(tap 39: 0)(tap 40: -489)
>> >                  (tap 41: 0)(tap 42: 595)(tap 43: 0)(tap 44: -724)(tap
>> > 45: 0)(tap 46: 880)(tap 47: 0)(tap 48: -1075)(tap 49: 0)(tap 50: 1323)
>> >                  (tap 51: 0)(tap 52: -1652)(tap 53: 0)(tap 54:
>> 2114)(tap
>> > 55: 0)(tap 56: -2819)(tap 57: 0)(tap 58: 4056)(tap 59: 0)(tap 60: -688=
3)
>> >                  (tap 61: 0)(tap 62: 20837)(tap 63: 32767)(tap 64:
>> > 20837)(tap 65: 0)(tap 66: -6883)(tap 67: 0)(tap 68: 4056)(tap 69:
>> 0)(tap
>> > 70: -2819)
>> >                  (tap 71: 0)(tap 72: 2114)(tap 73: 0)(tap 74:
>> -1652)(tap
>> > 75: 0)(tap 76: 1323)(tap 77: 0)(tap 78: -1075)(tap 79: 0)(tap 80: 880)
>> >                  (tap 81: 0)(tap 82: -724)(tap 83: 0)(tap 84: 595)(tap
>> > 85: 0)(tap 86: -489)(tap 87: 0)(tap 88: 401)(tap 89: 0)(tap 90: -327)
>> >                  (tap 91: 0)(tap 92: 264)(tap 93: 0)(tap 94: -213)(tap
>> > 95: 0)(tap 96: 169)(tap 97: 0)(tap 98: -134)(tap 99: 0)(tap 100: 104)
>> >                  (tap 101: 0)(tap 102: -80)(tap 103: 0)(tap 104:
>> 61)(tap
>> > 105: 0)(tap 106: -45)(tap 107: 0)(tap 108: 33)(tap 109: 0)(tap 110: -2=
4)
>> >                  (tap 111: 0)(tap 112: 17)(tap 113: 0)(tap 114:
>> -11)(tap
>> > 115: 0)(tap 116: 8)(tap 117: 0)(tap 118: -5)(tap 119: 0)(tap 120: 3)
>> >                  (tap 121: 0)(tap 122: -2)(tap 123: 0)(tap 124: 1)(tap
>> > 125: 0)(tap 126: 0)(tap 127: 0)
>> >
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
>> > [filter_info_base]
>> > type: Digital (i16)
>> > bypass enable: 0
>> > position index: 4
>> >          [digital_filter_base]
>> >          input rate: 1.28e+08
>> >          interpolation: 1
>> >          decimation: 2
>> >          full-scale: 2048
>> >          max num taps: 15
>> >          taps:
>> >                  (tap 0: -8)(tap 1: 0)(tap 2: 42)(tap 3: 0)(tap 4:
>> > -147)(tap 5: 0)(tap 6: 619)(tap 7: 1013)(tap 8: 619)(tap 9: 0)(tap 10:
>> -147)
>> >                  (tap 11: 0)(tap 12: 42)(tap 13: 0)(tap 14: -8)
>> >
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
>> > [filter_info_base]
>> > type: Digital (i16)
>> > bypass enable: 0
>> > position index: 3
>> >          [digital_filter_base]
>> >          input rate: 2.56e+08
>> >          interpolation: 1
>> >          decimation: 2
>> >          full-scale: 256
>> >          max num taps: 7
>> >          taps:
>> >                  (tap 0: -9)(tap 1: 0)(tap 2: 73)(tap 3: 128)(tap 4:
>> > 73)(tap 5: 0)(tap 6: -9)
>> >
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
>> > [filter_info_base]
>> > type: Digital (i16)
>> > bypass enable: 0
>> > position index: 2
>> >          [digital_filter_base]
>> >          input rate: 5.12e+08
>> >          interpolation: 1
>> >          decimation: 2
>> >          full-scale: 16
>> >          max num taps: 5
>> >          taps:
>> >                  (tap 0: 1)(tap 1: 4)(tap 2: 6)(tap 3: 4)(tap 4: 1)
>> >
>> > [INFO] [AD9361_DEVICE] filter
>> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
>> > [filter_info_base]
>> > type: Analog Low-pass
>> > bypass enable: 0
>> > position index: 1
>> >          [analog_filter_base]
>> >          desc: third-order Butterworth
>> >                  [analog_filter_lp]
>> >                  cutoff: 2.24e+07
>> >                  rolloff: 60
>> >
>> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
>> > [INFO] [AD9361_DEVICE] filter
>> > [filter_info_base]
>> > type: Analog Low-pass
>> > bypass enable: 0
>> > position index: 0
>> >          [analog_filter_base]
>> >          desc: single-pole
>> >                  [analog_filter_lp]
>> >                  cutoff: 4e+07
>> >                  rolloff: 20/
>> > /
>> > /
>> > On the other hand, the USRP E320 returns this:/
>> > /
>> >
>> > /[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> > UHD_4.0.0.HEAD-0-g90ce6062
>> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> >
>> mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D31DFBB7,cla=
imed=3DFalse,addr=3D192.168.10.2
>> > [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
>> > [INFO] [MPM.main] Spawning RPC process...
>> > [INFO] [MPM.PeriphManager] Device serial number: 31DFBB7
>> > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>> > [INFO] [MPM.RPCServer] RPC server ready!
>> > [INFO] [MPM.RPCServer] Spawning watchdog task...
>> > [INFO] [MPM.PeriphManager] init() called with device args
>> > `mgmt_addr=3D192.168.10.2,product=3De320'.
>> > *[INFO] [AD9361_IFACE] agc
>> > [INFO] [AD9361_IFACE] agc*
>> > [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>> > [INFO] [0/Radio#0] CODEC loopback test passed
>> > [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>> > [INFO] [0/Radio#0] CODEC loopback test passed
>> > [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>> MB/s)
>> > [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>> MB/s)
>> >
>> > Using master clock rate: 3.2e+07
>> > Using search mask: rx_frontends/A/
>> >
>> > Found the following filters matching "rx_frontends/A/":
>> > *[INFO] [E3xx_radio_ctrl] filter*
>> >
>> > Active filters:
>> >
>> > Available Info on Active Filters:
>> > /
>> > /
>> > /
>> > The E320 goes to the ad9361_iface file (I have not called the set_agc
>> > command so perhaps is called for the initial configuration?) and the
>> > E3xx_radio_ctrl for the filter command (that's strange because I would
>> > expected that it had passed through the iface too). There's also no
>> > single filter name printed, maybe the correct tree path in the E320 is
>> > not "rx_frontends/A/.
>> >
>> > The call in ad9361_iface file is this one (which calls the rpc_client,
>> > that's why I thought on the previous email that the configuration goes
>> > that way):
>> >
>> > /void set_agc(const std::string& which, bool enable)
>> > {
>> > UHD_LOG_INFO("AD9361_IFACE", "agc");
>> > _rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc", which,
>> > enable);/
>> >
>> > I am running the same source code for both USRP's, in the same
>> > environment, just changing the connection from one USRP to another in
>> my
>> > PC, so I'm afraid this is an specific E320 problem.
>> >
>> > Kind Regards,
>> >
>> > Maria
>> > //
>> >
>> > El lun, 12 abr 2021 a las 9:55, Maria Mu=C3=B1oz (<mamuki92@gmail.com
>> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
>> >
>> >     Hi Julian,
>> >
>> >     Thanks for the answer.
>> >
>> >     Yes, I'm working with the E320. I'll try to force the "_setup_agc"
>> >     code as you said and debug again to see if hopefully, I get the AG=
C
>> >     configured.
>> >     If someone has configured the E320 before I will also appreciate a=
ny
>> >     help on this.
>> >
>> >     Thanks again for the help
>> >
>> >     Kind Regards,
>> >
>> >     Maria
>> >
>> >     El lun, 12 abr 2021 a las 9:43, Julian Arnold
>> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>)
>> escribi=C3=B3:
>> >
>> >         Maria,
>> >
>> >         it just dawned on me, that you are working with an e320 not an
>> e310.
>> >
>> >         Although most of what I said should still apply (especially
>> >         erverything
>> >         related to the (AD936x)) things might be a little bit differen=
t.
>> >         I'm
>> >         epecially unsure about the RPC part, here.
>> >
>> >         Maybe someone else can chime in regarding this aspect.
>> >
>> >         However, I think that `_setup_gain_control(false)` should run
>> >         regardless
>> >         during device init. So you should see some logging output ther=
e.
>> >
>> >         If _setup_agc() is not beeing called you could try to force th=
e
>> >         AGC on,
>> >         just for verification purposes, by changing
>> >         `_setup_gain_control(false)`
>> >         to `_setup_gain_control(true)` in `initialize()` and
>> >         `set_clock_rate()`.
>> >
>> >         Cheers,
>> >         Julian
>> >
>> >         On 4/9/21 3:34 PM, Julian Arnold wrote:
>> >          > Maria,
>> >          >
>> >          > the properties you want to change (min/max thresholds) are
>> >         not exposed
>> >          > via the property tree. Only the mode is (slow or fast).
>> >          > However, the same code that configures the AGC that worked
>> >         for me on the
>> >          > B210 should run on the E310. The RPC client should not be
>> >         involved in
>> >          > that case (although I=E2=80=99m not sure about that).
>> >          >
>> >          > Have you tried applying my patch directly (I had slightly
>> >         modified
>> >          > register values).
>> >          >
>> >          > Also, could you try running your code directly on the E310
>> >         (bypassing
>> >          > networked-mode) to see if that makes a difference?
>> >          >
>> >          > Cheers,
>> >          > Julian
>> >          >
>> >          >
>> >          > Julian Arnold, M.Sc
>> >          >
>> >          >> Am 09.04.2021 um 09:48 schrieb Maria Mu=C3=B1oz
>> >         <mamuki92@gmail.com <mailto:mamuki92@gmail.com>>:
>> >          >>
>> >          >> =EF=BB=BF
>> >          >> Hi Julian,
>> >          >>
>> >          >> Sorry for the late reply and thanks for the answer.
>> >          >>
>> >          >> I have been debugging the configuration printing the
>> entries of
>> >          >> "set_agc" that I have found on cpp/py files in the uhd
>> >         driver and
>> >          >> ettus repositories, and I can confirm that the code is not
>> >         getting to
>> >          >> the ad9361_device.cpp as I thought in the beginning.
>> >          >>
>> >          >> If I go through the code from my python script to the
>> >          >> ad9361_device.cpp configuration file I see the following:
>> >          >>
>> >          >>   * The python scripts calls for
>> >         ettus.rfnoc_rx_radio.set_agc method,
>> >          >>     which is found in ettus repository (for usrp_source is
>> on
>> >          >>     gnuradio/uhd lib)
>> >          >>
>> >          >>   * The rfnoc_rx_radio class is defined in
>> >          >>     gr-ettus/lib/rfnoc_rx_radio_impl.h, where there is als=
o
>> >         a pointer
>> >          >>     to the radio_control class defined:
>> >          >>
>> >          >>         /class rfnoc_rx_radio_impl : public rfnoc_rx_radio
>> >          >>         {
>> >          >>         public:
>> >          >>
>> >         rfnoc_rx_radio_impl(::uhd:://rfnoc::noc_block_base::sptr
>> >          >>         block_ref);
>> >          >>             ~rfnoc_rx_radio_impl();
>> >          >>
>> >          >>             /*** API
>> >          >>
>> >
>>  ******************************//******************************//*****/
>> >          >>             double set_rate(const double rate);
>> >          >>             void set_antenna(const std::string& antenna,
>> >         const size_t
>> >          >>         chan);
>> >          >>             double set_frequency(const double frequency,
>> >         const size_t
>> >          >>         chan);
>> >          >>             void set_tune_args(const ::uhd::device_addr_t&
>> >         args, const
>> >          >>         size_t chan);
>> >          >>             double set_gain(const double gain, const size_=
t
>> >         chan);
>> >          >>             double set_gain(const double gain, const
>> >         std::string&
>> >          >>         name, const size_t chan);
>> >          >>             void set_agc(const bool enable, const size_t
>> chan);
>> >          >>             void set_gain_profile(const std::string&
>> >         profile, const
>> >          >>         size_t chan);
>> >          >>             double set_bandwidth(const double bandwidth,
>> >         const size_t
>> >          >>         chan);
>> >          >>             void
>> >          >>             set_lo_source(const std::string& source, const
>> >          >>         std::string& name, const size_t chan);
>> >          >>             void
>> >          >>             set_lo_export_enabled(const bool enabled, cons=
t
>> >          >>         std::string& name, const size_t chan);
>> >          >>             double set_lo_freq(const double freq, const
>> >         std::string&
>> >          >>         name, const size_t chan);
>> >          >>             void set_dc_offset(const bool enable, const
>> >         size_t chan);
>> >          >>             void set_dc_offset(const std::complex<double>&
>> >         offset,
>> >          >>         const size_t chan);
>> >          >>             void set_iq_balance(const bool enable, const
>> >         size_t chan);
>> >          >>             void set_iq_balance(const std::complex<double>=
&
>> >          >>         correction, const size_t chan);
>> >          >>
>> >          >>         private:
>> >          >>             ::uhd::rfnoc::radio_control:://sptr d_radio_re=
f;
>> >          >>         };/
>> >          >>
>> >          >>   * In gr-ettus/lib/rfnoc_rx_radio_impl.cpp when set_agc
>> >         command is
>> >          >>     received, it returns a call to the pointer I mention
>> >         before, and
>> >          >>     therefore, to the radio_control class:
>> >          >>
>> >          >>         /void rfnoc_rx_radio_impl::set_agc(//const bool
>> >         enable, const
>> >          >>         size_t chan)
>> >          >>         {
>> >          >>             return d_radio_ref->set_rx_agc(//enable, chan)=
;
>> >          >>         }/
>> >          >>
>> >          >>   * The radio_control class is found in the UHD driver
>> >         repository in
>> >          >>     uhd/host/include/uhd/rfnoc/radio_control.hpp which is
>> >         virtually
>> >          >>     implemented as radio_control_impl class in
>> >          >>     e3xx_radio_control_impl.cpp (host/lib/usrp/board/e3xx)
>> >          >>   * This file calls to the ad9361_ctrl class which is
>> >         implemented in
>> >          >>     e3xx_ad9361_iface.cpp (host/lib/usrp/board/e3xx)
>> >          >>   * At this point, there is a call for the rpc_client wher=
e
>> >         I get kind
>> >          >>     of lost about how to change the registers this way:
>> >          >>
>> >          >>
>> >          >>         /void set_agc(const std::string& which, bool enabl=
e)
>> >          >>         {
>> >          >>         _rpcc->request_with_token<void>(this->_rpc_prefix =
+
>> >         "set_agc",
>> >          >>         which, enable);
>> >          >>         }/
>> >          >>
>> >          >>
>> >          >>
>> >          >> To be brief:
>> >          >>
>> >          >>   * When debugging I can't see that my code gets to the on=
ly
>> >          >>     configuration file I found which is the
>> ad9361_device.cpp
>> >          >>   * The set_agc command seems to be manage through the
>> >         rpc_client (I
>> >          >>     think this is related to the module peripheral manager
>> >         which is a
>> >          >>     "layer of control that UHD uses to access, configure a=
nd
>> >         control
>> >          >>     the hardware",
>> https://files.ettus.com/manual/page_mpm.html)
>> >          >>   * Inside the code, in multi_usrp files there is a commen=
t
>> >         that the
>> >          >>     specific configuration of the AGC is set in the
>> >         property_tree but
>> >          >>     I don't know how to write the configuration registers =
of
>> >         the agc
>> >          >>     through the property_tree.
>> >          >>
>> >          >>
>> >          >> So my questions here are:
>> >          >>
>> >          >>  1. How can I set the configuration registers of the AGC,
>> >         through the
>> >          >>     MPM or the property tree?
>> >          >>  2. Are there examples on how I can set these registers
>> >         through the
>> >          >>     MPM or the property_tree?
>> >          >>
>> >          >>
>> >          >> Kind Regards,
>> >          >>
>> >          >> Maria
>> >          >>
>> >          >> El mi=C3=A9, 24 mar 2021 a las 11:20, Julian Arnold
>> >          >> (<julian@elitecoding.org <mailto:julian@elitecoding.org>
>> >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
>> >          >>
>> >          >>     Maria,
>> >          >>
>> >          >>     that sounds about right!
>> >          >>     However, to make absolutely sure GNU Radio picks up th=
e
>> >         modified
>> >          >>     libuhd
>> >          >>     you could add a print statement somewhere in your UHD
>> code.
>> >          >>     You could also compare your UHD install prefix to the
>> >         path gr-uhd
>> >          >>     uses for linking libuhd.
>> >          >>
>> >          >>     Below is the patch I used for my tests:
>> >          >>
>> >          >>     diff --git
>> >         a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >          >>     b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >          >>     index 9e088871d..0e5bc86c5 100644
>> >          >>     ---
>> a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >          >>     +++
>> b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >          >>     @@ -1089,7 +1089,7 @@ void
>> >          >>     ad9361_device_t::_setup_gain_control(bool agc)
>> >          >>               _io_iface->poke8(0x0FD, 0x4C); // Max Full/L=
MT
>> >         Gain
>> >          >>     Table Index
>> >          >>               _io_iface->poke8(0x0FE, 0x44); // Decr Step
>> >         Size, Peak
>> >          >>     Overload Time
>> >          >>               _io_iface->poke8(0x100, 0x6F); // Max Digita=
l
>> Gain
>> >          >>     -        _io_iface->poke8(0x101, 0x0A); // Max Digital
>> Gain
>> >          >>     +        _io_iface->poke8(0x101, 0x02); // Max Digital
>> Gain
>> >          >>               _io_iface->poke8(0x103, 0x08); // Max Digita=
l
>> Gain
>> >          >>               _io_iface->poke8(0x104, 0x2F); // ADC Small
>> >         Overload
>> >          >>     Threshold
>> >          >>               _io_iface->poke8(0x105, 0x3A); // ADC Large
>> >         Overload
>> >          >>     Threshold
>> >          >>     @@ -1098,14 +1098,14 @@ void
>> >          >>     ad9361_device_t::_setup_gain_control(bool agc)
>> >          >>               _io_iface->poke8(0x108, 0x31);
>> >          >>               _io_iface->poke8(0x111, 0x0A);
>> >          >>               _io_iface->poke8(0x11A, 0x1C);
>> >          >>     -        _io_iface->poke8(0x120, 0x0C);
>> >          >>     +        _io_iface->poke8(0x120, 0x04);
>> >          >>               _io_iface->poke8(0x121, 0x44);
>> >          >>               _io_iface->poke8(0x122, 0x44);
>> >          >>               _io_iface->poke8(0x123, 0x11);
>> >          >>               _io_iface->poke8(0x124, 0xF5);
>> >          >>               _io_iface->poke8(0x125, 0x3B);
>> >          >>               _io_iface->poke8(0x128, 0x03);
>> >          >>     -        _io_iface->poke8(0x129, 0x56);
>> >          >>     +        _io_iface->poke8(0x129, 0x11);
>> >          >>               _io_iface->poke8(0x12A, 0x22);
>> >          >>           } else {
>> >          >>               _io_iface->poke8(0x0FA, 0xE0); // Gain Contr=
ol
>> >         Mode Select
>> >          >>
>> >          >>
>> >          >>     Cheers,
>> >          >>     Julian
>> >          >>
>> >          >>     On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:
>> >          >>     > Hi Julian,
>> >          >>     >
>> >          >>     > I have the chance to test the AGC with a B210 and
>> >         perform the
>> >          >>     same graph
>> >          >>     > as you send me but I am unable to see what you saw s=
o
>> >         I think I'm
>> >          >>     > missing something.
>> >          >>     > I also have UHD 4.0 and GNURadio 3.8 (installed by
>> >         source).
>> >          >>     >
>> >          >>     > The steps I take are these:
>> >          >>     >
>> >          >>     >   * First, I change the ad9361_device.cpp that is in
>> uhd
>> >          >>     repository in
>> >          >>     >
>> >           //uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
>> >          >>     >     registers 0x101, 0x120, 0x129, 0x123 and 0x12A./
>> >          >>     >   * Then, I do "make" and "make install" to compile
>> >         the changes in
>> >          >>     >     build-host folder.
>> >          >>     >   * After that, I generate the python script for the
>> >         GRC flow
>> >          >>     graph and
>> >          >>     >     move the "set_agc" command after the "set_rate"
>> one.
>> >          >>     >   * Finally, I run the python.
>> >          >>     >
>> >          >>     > I can't see my waveform between the values I set. Is
>> there
>> >          >>     something
>> >          >>     > wrong with those steps? Did you do anything else?
>> >          >>     >
>> >          >>     > King Regards,
>> >          >>     >
>> >          >>     > Maria
>> >          >>     >
>> >          >>     > /
>> >          >>     > /
>> >          >>     >
>> >          >>     > El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz
>> >         (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>=
>
>> >          >>     > <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.co=
m
>> >
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>>)
>> escribi=C3=B3:
>> >          >>     >
>> >          >>     >     Hi Julian,
>> >          >>     >
>> >          >>     >     Thanks for the checking!
>> >          >>     >
>> >          >>     >     I have also checked my graph and samp_rate is
>> >         setting first,
>> >          >>     so I'll
>> >          >>     >     try to test it with a sine waveform as you
>> >         suggested and see
>> >          >>     if that
>> >          >>     >     works. If not, maybe is an RFNoC/gr-ettus proble=
m.
>> >         I'll put
>> >          >>     an issue
>> >          >>     >     in the gr-ettus repository in that case.
>> >          >>     >
>> >          >>     >     Thanks again for your help.
>> >          >>     >
>> >          >>     >     Kind Regards,
>> >          >>     >
>> >          >>     >     Maria.
>> >          >>     >
>> >          >>     >     El mar, 23 mar 2021 a las 0:36, Julian Arnold
>> >          >>     >     (<julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>)
>> >          >>     escribi=C3=B3:
>> >          >>     >
>> >          >>     >         Maria,
>> >          >>     >
>> >          >>     >         I couldn't resist trying this myself, as you=
r
>> >          >>     modifications seemed
>> >          >>     >         reasonable.
>> >          >>     >
>> >          >>     >         So I did set up a simple test with a b210
>> >         connected to
>> >          >>     my siggen
>> >          >>     >         feeding
>> >          >>     >         it with a tone of varying power at 2.4102GHz=
.
>> >          >>     >
>> >          >>     >         For the default UHD AGC settings I could
>> >         confirm that
>> >          >>     the signal
>> >          >>     >         was
>> >          >>     >         kept between -10 dBFS and -12 dBFS (20 *
>> >         log10(|x|) over a
>> >          >>     >         pretty wide
>> >          >>     >         input power range.
>> >          >>     >         This was using GR 3.8 and UHD 4.0.
>> >          >>     >
>> >          >>     >         However, I had to modify the generate
>> flow-graph
>> >          >>     slightly, as
>> >          >>     >         the AGC
>> >          >>     >         was enables before the sample-rate was set
>> >         (maybe double
>> >          >>     check
>> >          >>     >         that, too).
>> >          >>     >
>> >          >>     >         Afterwards, I used your settings (I did chan=
ge
>> >         reg 0x129
>> >          >>     to 0x11
>> >          >>     >         (1dB
>> >          >>     >         +-), though).
>> >          >>     >         Also those settings worked as expected and t=
he
>> >         signal
>> >          >>     was nicely
>> >          >>     >         kept
>> >          >>     >         between -2 dBFS and -4 dBFS.
>> >          >>     >
>> >          >>     >         Attached is a picture of the flow-graph I us=
ed
>> >         for testing.
>> >          >>     >         Maybe you
>> >          >>     >         could also start by testing with a sine wave
>> to
>> >          >>     verifying that your
>> >          >>     >         values get applied properly.
>> >          >>     >
>> >          >>     >         Cheers,
>> >          >>     >         Julian
>> >          >>     >
>> >          >>     >         On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
>> >          >>     >          > Hi Julian,
>> >          >>     >          >
>> >          >>     >          > Sure.
>> >          >>     >          >
>> >          >>     >          > I am receiving a QPSK through the radio a=
nd
>> >          >>     plotting it in a
>> >          >>     >         QT graph
>> >          >>     >          > (see grc.png)
>> >          >>     >          > If I have AGC disable, I get what is show=
n
>> in
>> >          >>     >         "test_without_agc.png",
>> >          >>     >          > then if I enable it, I see what is on
>> >          >>     "test_with_agc.png" where
>> >          >>     >          > "Quadrature" is always center more or les=
s
>> >         in 0.25 which
>> >          >>     >         might fit with
>> >          >>     >          > the values given by default (inner high
>> >         threshold =3D
>> >          >>     -12dBFS,
>> >          >>     >         inner low
>> >          >>     >          > threshold =3D -10 dBFS).
>> >          >>     >          >
>> >          >>     >          > If I change the ad9361_device.cpp
>> >         (attached) from
>> >          >>     line 1085,
>> >          >>     >         by changing
>> >          >>     >          > registers 0x101, 0x120 and 0x129 with
>> >         values 0x02,
>> >          >>     0x04 and 0x16
>> >          >>     >          > respectively to move between -2dbFS and -=
4
>> >         dBFS,  I
>> >          >>     see the same
>> >          >>     >          > waveform that I have in "test_with_agc.pn=
g"
>> >         (I expect
>> >          >>     it to
>> >          >>     >         be around 0.7)
>> >          >>     >          >
>> >          >>     >          > Kind regards,
>> >          >>     >          >
>> >          >>     >          > Maria
>> >          >>     >          >
>> >          >>     >          > El lun, 22 mar 2021 a las 17:45, Julian
>> Arnold
>> >          >>     >         (<julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          > <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>>) escribi=C3=B3:
>> >          >>     >          >
>> >          >>     >          >     Maria,
>> >          >>     >          >
>> >          >>     >          >     would you mind sharing your patch?
>> >         Otherwise,
>> >          >>     it=E2=80=99s hard
>> >          >>     >         to tell what
>> >          >>     >          >     exactly is going on.
>> >          >>     >          >
>> >          >>     >          >     Cheers,
>> >          >>     >          >     Julian
>> >          >>     >          >
>> >          >>     >          >>     Am 22.03.2021 um 16:24 schrieb Maria
>> Mu=C3=B1oz
>> >          >>     >         <mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>
>> >          >>     >          >>     <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>=
>
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com
>> >>>>>:
>> >          >>     >          >>
>> >          >>     >          >>     =EF=BB=BF
>> >          >>     >          >>     Hi Julian,
>> >          >>     >          >>
>> >          >>     >          >>     I re-open this topic to ask a questi=
on
>> >         about the
>> >          >>     >         configuration of
>> >          >>     >          >>     the ad9361 registers in GNUradio/RFN=
oC
>> >          >>     >          >>
>> >          >>     >          >>     As I understand, when AGC is
>> >         enabled in slow
>> >          >>     mode, there
>> >          >>     >         are 4
>> >          >>     >          >>     configurable thresholds (inner low,
>> >         inner high,
>> >          >>     >         outer low, and
>> >          >>     >          >>     outer high) and also 4 configurable
>> >         steps to
>> >          >>     reach the zone
>> >          >>     >          >>     between the inner thresholds.
>> >          >>     >          >>
>> >          >>     >          >>     I have found the configuration of
>> >         these registers
>> >          >>     >          >>
>> >          >>
>> >            in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cp=
p
>> >          >>     >          >>     and changed their values there. Then=
,
>> >         I have
>> >          >>     recompiled
>> >          >>     >         uhd (make
>> >          >>     >          >>     & make install) but, when I re-run m=
y
>> >         graph I see no
>> >          >>     >         change in my
>> >          >>     >          >>     waveform (it seem to stay in the sam=
e
>> >         limits as
>> >          >>     the default
>> >          >>     >          >>     configuration).
>> >          >>     >          >>
>> >          >>     >          >>     Am I missing any other step that I
>> >         have to done to
>> >          >>     >         configure these
>> >          >>     >          >>     parameters?
>> >          >>     >          >>
>> >          >>     >          >>     Kind Regards,
>> >          >>     >          >>
>> >          >>     >          >>     Maria
>> >          >>     >          >>
>> >          >>     >          >>     El vie, 12 mar 2021 a las 10:04, Mar=
ia
>> >         Mu=C3=B1oz
>> >          >>     >         (<mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>
>> >          >>     >          >>     <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>=
>
>> >          >>     >         <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>>>>) escribi=C3=B3:
>> >          >>     >          >>
>> >          >>     >          >>         Ok Julian, I will check the tree
>> >         node and try to
>> >          >>     >         modify the
>> >          >>     >          >>         properties. Thanks again for the
>> help!
>> >          >>     >          >>
>> >          >>     >          >>         Kind Regards,
>> >          >>     >          >>         Maria
>> >          >>     >          >>
>> >          >>     >          >>         El jue, 11 mar 2021 a las 18:26,
>> >         Julian Arnold
>> >          >>     >          >>         (<julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>> <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>>)
>> >          >>     >          >>         escribi=C3=B3:
>> >          >>     >          >>
>> >          >>     >          >>             Maria,
>> >          >>     >          >>
>> >          >>     >          >>             >>
>> >          >>     >
>>  /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >          >>     >          >>             >>
>> >          >>     >          >>             >> but I have received the
>> >         following
>> >          >>     errorThat's
>> >          >>     >         why I
>> >          >>     >          >>             gave the reference ([1])
>> >         showing the correct
>> >          >>     >         syntax ;)
>> >          >>     >          >>             Anyways, glad it worked out
>> >         for you!
>> >          >>     >          >>             You might consider filing a
>> >         bug issue
>> >          >>     against
>> >          >>     >         gr-ettus on
>> >          >>     >          >>             github.
>> >          >>     >          >>
>> >          >>     >          >>             >> By the way, I have read
>> >         that there are
>> >          >>     >         several modes
>> >          >>     >          >>             for AGC
>> >          >>     >          >>             >> (fast,slow,hybrid..) I wa=
s
>> >         wondering
>> >          >>     which
>> >          >>     >         type is
>> >          >>     >          >>             implemented by
>> >          >>     >          >>             >> default and if it is
>> >         possible to
>> >          >>     change AGC
>> >          >>     >         mode in the
>> >          >>     >          >>             flowgraph.
>> >          >>     >          >>             Those modes were mainly
>> >         dictated by the
>> >          >>     AD9361.
>> >          >>     >         Default
>> >          >>     >          >>             should be
>> >          >>     >          >>             "slow". The "hybrid" mode is
>> not
>> >          >>     implemented as
>> >          >>     >         far as I know.
>> >          >>     >          >>             Which mode you want ("slow" =
/
>> >         "fast")
>> >          >>     depends on the
>> >          >>     >          >>             signal you want to
>> >          >>     >          >>             receive. For burst-mode
>> >         digital signals you
>> >          >>     >         might want to
>> >          >>     >          >>             switch to the
>> >          >>     >          >>             "fast" mode.
>> >          >>     >          >>             However, I think this is onl=
y
>> >         possible by
>> >          >>     >         directly writing
>> >          >>     >          >>             to the corresponding
>> >         property-tree node.
>> >          >>     Again,
>> >          >>     >         I'm not
>> >          >>     >          >>             sure about
>> >          >>     >          >>             UHD-4.0/gr-ettus though.
>> >          >>     >          >>
>> >          >>     >          >>             Cheers,
>> >          >>     >          >>             Julian
>> >          >>     >          >>
>> >          >>     >          >>
>> >          >>     >          >>             On 3/11/21 5:26 PM, Maria
>> >         Mu=C3=B1oz wrote:
>> >          >>     >          >>             > Hi Julian,
>> >          >>     >          >>             >
>> >          >>     >          >>             > I have initially changed t=
he
>> >         python
>> >          >>     generated
>> >          >>     >         for my
>> >          >>     >          >>             flowgraph with this
>> >          >>     >          >>             > line:
>> >          >>     >          >>             >
>> >          >>     >          >>             >
>> >          >>     /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >          >>     >          >>             >
>> >          >>     >          >>             > but I have received the
>> >         following error:
>> >          >>     >          >>             >
>> >          >>     >          >>             > T/raceback (most recent ca=
ll
>> >         last):
>> >          >>     >          >>             >    File
>> >          >>     "constellation_soft_decoder.py", line
>> >          >>     >         301, in
>> >          >>     >          >>             <module>
>> >          >>     >          >>             >      main()
>> >          >>     >          >>             >    File
>> >          >>     "constellation_soft_decoder.py", line
>> >          >>     >         277, in main
>> >          >>     >          >>             >      tb =3D top_block_cls(=
)
>> >          >>     >          >>             >    File
>> >          >>     "constellation_soft_decoder.py", line
>> >          >>     >         166, in
>> >          >>     >          >>             __init__
>> >          >>     >          >>             >
>> >          >>     >         self.ettus_rfnoc_rx_radio_0.set_rx_agc(True,
>> 0)
>> >          >>     >          >>             > AttributeError:
>> >         'rfnoc_rx_radio_sptr'
>> >          >>     object
>> >          >>     >         has no
>> >          >>     >          >>             attribute 'set_rx_agc'/
>> >          >>     >          >>             >
>> >          >>     >          >>             > But rfnoc_radio_impl.cc
>> >         defines it:
>> >          >>     >          >>             >
>> >          >>     >          >>             > /void
>> >          >>     rfnoc_rx_radio_impl::set_agc(const bool
>> >          >>     >         enable,
>> >          >>     >          >>             const size_t chan)
>> >          >>     >          >>             > {
>> >          >>     >          >>             >      return
>> >          >>     d_radio_ref->set_rx_agc(enable, chan);
>> >          >>     >          >>             > }/
>> >          >>     >          >>             >
>> >          >>     >          >>             > Searching the
>> >         rfnoc_rx_radio_sptr with
>> >          >>     grep
>> >          >>     >         takes me to
>> >          >>     >          >>             "swig" files. I
>> >          >>     >          >>             > have looked at ettus_swig.=
py
>> >         and seen
>> >          >>     that the
>> >          >>     >         command
>> >          >>     >          >>             name is set_agc
>> >          >>     >          >>             > instead of set_rx_agc:
>> >          >>     >          >>             >
>> >          >>     >          >>             > /def set_agc(self, enable:
>> "bool
>> >          >>     const", chan:
>> >          >>     >         "size_t
>> >          >>     >          >>             const") -> "void":
>> >          >>     >          >>             >          r"""
>> >          >>     >          >>             >
>> >         set_agc(rfnoc_rx_radio self, bool
>> >          >>     >         const enable,
>> >          >>     >          >>             size_t const chan)
>> >          >>     >          >>             >          Enable/disable th=
e
>> >         AGC for
>> >          >>     this RX
>> >          >>     >         radio (if
>> >          >>     >          >>             available)
>> >          >>     >          >>             >          """
>> >          >>     >          >>             >          return
>> >          >>     >         _ettus_swig.rfnoc_rx_radio_set_agc(self,
>> >          >>     >          >>             enable, chan)/
>> >          >>     >          >>             > /
>> >          >>     >          >>             > /
>> >          >>     >          >>             > Changing this in the
>> >         flowgraph.py seems to
>> >          >>     >         work!! Thanks
>> >          >>     >          >>             for the help on
>> >          >>     >          >>             > this! I put this informati=
on
>> >         here just
>> >          >>     in case
>> >          >>     >         someone
>> >          >>     >          >>             is stuck in the
>> >          >>     >          >>             > same point.
>> >          >>     >          >>             >
>> >          >>     >          >>             > By the way, I have read th=
at
>> >         there are
>> >          >>     several
>> >          >>     >         modes for
>> >          >>     >          >>             AGC
>> >          >>     >          >>             > (fast,slow,hybrid..) I was
>> >         wondering
>> >          >>     which type is
>> >          >>     >          >>             implemented by
>> >          >>     >          >>             > default and if it is
>> possible to
>> >          >>     change AGC
>> >          >>     >         mode in the
>> >          >>     >          >>             flowgraph.
>> >          >>     >          >>             >
>> >          >>     >          >>             > Kind Regards,
>> >          >>     >          >>             >
>> >          >>     >          >>             > Maria
>> >          >>     >          >>             >
>> >          >>     >          >>             >
>> >          >>     >          >>             > El mi=C3=A9, 10 mar 2021 a=
 las
>> >         12:03, Maria
>> >          >>     Mu=C3=B1oz
>> >          >>     >          >>             (<mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>=
>
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com
>> >>>
>> >          >>     >         <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>>
>> >          >>     >          >>             > <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>=
>
>> >          >>     >         <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>>
>> >          >>     >          >>             <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>=
>
>> >          >>     >         <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>
>> >          >>     <mailto:mamuki92@gmail.com
>> >         <mailto:mamuki92@gmail.com>>>>>>) escribi=C3=B3:
>> >          >>     >          >>             >
>> >          >>     >          >>             >     Hi Jules,
>> >          >>     >          >>             >
>> >          >>     >          >>             >     Thank you, I will try =
it
>> >         and let
>> >          >>     you know
>> >          >>     >         as soon as
>> >          >>     >          >>             possible.
>> >          >>     >          >>             >
>> >          >>     >          >>             >     By the way, I have
>> >         checked the python
>> >          >>     >          >>             generated using the UHD USRP
>> >          >>     >          >>             >     SOURCE block (instead =
of
>> >         the RFNoC
>> >          >>     radio
>> >          >>     >         block) with
>> >          >>     >          >>             AGC active and
>> >          >>     >          >>             >     it generates the set o=
f
>> >         AGC fine.
>> >          >>     So, as
>> >          >>     >         you said,
>> >          >>     >          >>             it is fixed in
>> >          >>     >          >>             >     gr-uhd but it might
>> >         still be a bug in
>> >          >>     >         gr-ettus.
>> >          >>     >          >>             >
>> >          >>     >          >>             >     Thanks again for the
>> help!
>> >          >>     >          >>             >
>> >          >>     >          >>             >     Kind Regards,
>> >          >>     >          >>             >
>> >          >>     >          >>             >     Maria
>> >          >>     >          >>             >
>> >          >>     >          >>             >     El mi=C3=A9, 10 mar 20=
21 a
>> >         las 11:25,
>> >          >>     Julian Arnold
>> >          >>     >          >>             >     (<
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>>>) escribi=C3=B3:
>> >          >>     >          >>             >
>> >          >>     >          >>             >         Maria,
>> >          >>     >          >>             >
>> >          >>     >          >>             >          >> So, if I
>> understand
>> >          >>     correctly, I
>> >          >>     >         have to put
>> >          >>     >          >>             there also
>> >          >>     >          >>             >         something like
>> >          >>     >          >>             >          >>
>> >          >>     >          >>
>> >          >>     >
>> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
>> >          >>     isn't it?
>> >          >>     >          >>             >
>> >          >>     >          >>             >         Exactly! Take a lo=
ok
>> >         at [1]
>> >          >>     for the
>> >          >>     >         correct syntax.
>> >          >>     >          >>             >
>> >          >>     >          >>             >         [1]
>> >          >>     >          >>             >
>> >          >>     >          >>
>> >          >>     >
>> >          >>
>> >
>> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc=
4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>> >          >>     >          >>             >
>> >          >>     >          >>             >         Let me know if tha=
t
>> >         worked out
>> >          >>     for you.
>> >          >>     >          >>             >
>> >          >>     >          >>             >         Cheers,
>> >          >>     >          >>             >         Julian
>> >          >>     >          >>             >
>> >          >>     >          >>             >
>> >          >>     >          >>             >         On 3/10/21 9:59 AM=
,
>> >         Maria
>> >          >>     Mu=C3=B1oz wrote:
>> >          >>     >          >>             >          > Hi Julian,
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > Thanks for the
>> >         quick answer.
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > I think you mig=
ht
>> >         be right
>> >          >>     about
>> >          >>     >         the possible
>> >          >>     >          >>             bug turning on
>> >          >>     >          >>             >         the AGC
>> >          >>     >          >>             >          > from GRC. I hav=
e
>> >         checked
>> >          >>     the flow graph
>> >          >>     >          >>             generated and there's no
>> >          >>     >          >>             >          > set_rx_agc enab=
le
>> >         option (I
>> >          >>     checked
>> >          >>     >         the c++
>> >          >>     >          >>             definition block
>> >          >>     >          >>             >         where this
>> >          >>     >          >>             >          > option did appe=
ar
>> >         but I
>> >          >>     hadn't look
>> >          >>     >         at the
>> >          >>     >          >>             python generated).
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > The lines relat=
ed
>> >         to the
>> >          >>     radio in my
>> >          >>     >          >>             flowgraph are these:
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >
>> >         /self.ettus_rfnoc_rx_radio_0 =3D
>> >          >>     >          >>             ettus.rfnoc_rx_radio(
>> >          >>     >          >>             >          >
>> >         self.rfnoc_graph,
>> >          >>     >          >>             >          >
>> >          >>     uhd.device_addr(''),
>> >          >>     >          >>             >          >              -1=
,
>> >          >>     >          >>             >          >              -1=
)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>      self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>      self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>      self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>      self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>     >
>> >           self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>      self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>      self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > So, if I
>> understand
>> >          >>     correctly, I
>> >          >>     >         have to put
>> >          >>     >          >>             there also
>> >          >>     >          >>             >         something like
>> >          >>     >          >>             >          >
>> >          >>     >          >>
>> >          >>     >
>> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
>> >          >>     isn't it?
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > Kind Regards,
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > Maria
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          > El mi=C3=A9, 10=
 mar
>> >         2021 a las 9:16,
>> >          >>     >         Julian Arnold
>> >          >>     >          >>             >
>> >           (<julian@elitecoding.org <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>>
>> >          >>     >          >>             >          >
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>
>> >          >>     >          >>             >
>> >           <mailto:julian@elitecoding.org <mailto:julian@elitecoding.or=
g
>> >
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>
>> >          >>     >          >>             <mailto:
>> julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>
>> >          >>     >         <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>
>> >          >>     <mailto:julian@elitecoding.org
>> >         <mailto:julian@elitecoding.org>>>>>>>) escribi=C3=B3:
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     Maria,
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     I might not
>> >         be the
>> >          >>     right person
>> >          >>     >         to answer
>> >          >>     >          >>             this, as my
>> >          >>     >          >>             >         experience with
>> >          >>     >          >>             >          >     UHD 4.0 is
>> >         relatively
>> >          >>     limited
>> >          >>     >         at the moment.
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     However, I
>> >         cant tell
>> >          >>     you that
>> >          >>     >         the AGC on
>> >          >>     >          >>             B2x0 devices is
>> >          >>     >          >>             >         controlled via
>> >          >>     >          >>             >          >     software
>> (using
>> >          >>     set_rx_agc()).
>> >          >>     >         There is
>> >          >>     >          >>             no need to
>> >          >>     >          >>             >         directly modify th=
e
>> >          >>     >          >>             >          >     state of an=
y
>> >         pins of
>> >          >>     the FPGA.
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     I vaguely
>> >         remember that
>> >          >>     there
>> >          >>     >         was a bug
>> >          >>     >          >>             in an earlier
>> >          >>     >          >>             >         version of gr-uhd
>> >          >>     >          >>             >          >     (somewhere =
in
>> >         3.7) that
>> >          >>     made it
>> >          >>     >         difficult
>> >          >>     >          >>             to turn on the
>> >          >>     >          >>             >         AGC using GRC.
>> >          >>     >          >>             >          >     That
>> >         particular one is
>> >          >>     fixed in
>> >          >>     >         gr-uhd.
>> >          >>     >          >>             Not sure about
>> >          >>     >          >>             >         gr-ettus, though.
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     Maybe try
>> using
>> >          >>     set_rx_agc()
>> >          >>     >         manually in
>> >          >>     >          >>             you flow-graph
>> >          >>     >          >>             >         (*.py) and see
>> >          >>     >          >>             >          >     if that
>> helps.
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     Cheers,
>> >          >>     >          >>             >          >     Julian
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >     On 3/9/21
>> >         5:11 PM,
>> >          >>     Maria Mu=C3=B1oz via
>> >          >>     >          >>             USRP-users wrote:
>> >          >>     >          >>             >          >      > Hi all,
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      > I was
>> >         wondering if it is
>> >          >>     >         possible to
>> >          >>     >          >>             enable AGC from
>> >          >>     >          >>             >         the RFNoC radio
>> >          >>     >          >>             >          >      > block in
>> >         GNURadio. I
>> >          >>     use UHD 4.0
>> >          >>     >          >>             version and GNURadio
>> >          >>     >          >>             >         3.8 with
>> >          >>     >          >>             >          >     gr-ettus.
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      > I see th=
at
>> >         the RFNoC Rx
>> >          >>     >         radio block has an
>> >          >>     >          >>             >
>>  enable/disable/default
>> >          >>     >          >>             >          >     AGC
>> >          >>     >          >>             >          >      > option i=
n
>> the
>> >          >>     GNURadio block
>> >          >>     >         which I
>> >          >>     >          >>             assume calls the
>> >          >>     >          >>             >         UHD function
>> >          >>     >          >>             >          >      >
>> "set_rx_agc"
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >
>> >          >>     >          >>
>> >          >>     >
>> >          >>
>> >             (
>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abda=
b1f6c3775a9071b15c9805f866486
>> )
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      > I have
>> >         also checked
>> >          >>     on the
>> >          >>     >         FPGA side
>> >          >>     >          >>             that there is a
>> >          >>     >          >>             >         pin from
>> >          >>     >          >>             >          >     FPGA to
>> >          >>     >          >>             >          >      > AD9361
>> >          >>     called XCVR_ENA_AGC
>> >          >>     >         which is
>> >          >>     >          >>             set always to 1 on
>> >          >>     >          >>             >         the top
>> >          >>     >          >>             >          >     level of
>> >          >>     >          >>             >          >      > the FPGA
>> >         image (see
>> >          >>     attached
>> >          >>     >         file
>> >          >>     >          >>             "e320.v", line 872).
>> >          >>     >          >>             >         This pin,
>> >          >>     >          >>             >          >      > accordin=
g
>> to
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >
>> >          >>     >          >>
>> >          >>     >
>> >          >>
>> >
>> https://www.analog.com/media/en/technical-documentation/data-sheets/AD93=
61.pdf
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >          >      > is the
>> "Manual
>> >          >>     Control Input for
>> >          >>     >          >>             Automatic Gain
>> >          >>     >          >>             >         Control (AGC)".
>> >          >>     >          >>             >          >      > Must be
>> >         this pin set
>> >          >>     to 0 to
>> >          >>     >         have AGC
>> >          >>     >          >>             working?
>> >          >>     >          >>             >          >      > If not,
>> >         how can
>> >          >>     I get AGC
>> >          >>     >         working?
>> >          >>     >          >>             I've made some tests
>> >          >>     >          >>             >          >      >
>> >         enabling/disabling this
>> >          >>     >         option but I
>> >          >>     >          >>             do not see any
>> >          >>     >          >>             >         changes
>> >          >>     >          >>             >          >     between the
>> >          >>     >          >>             >          >      > waveform=
s
>> >         received.
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      > Any help
>> >         would be
>> >          >>     appreciated.
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      > Kind
>> Regards,
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      > Maria
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>
>> >          >>      _______________________________________________
>> >          >>     >          >>             >          >      > USRP-use=
rs
>> >         mailing list
>> >          >>     >          >>             >          >      >
>> >          >> USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>
>> >          >>     >          >>
>> >           <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>>
>> >          >>     >          >>             >
>> >          >>      <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>
>> >          >>     >          >>
>> >           <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>>>
>> >          >>     >          >>             >
>> >          >>      <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>
>> >          >>     >          >>
>> >           <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>>
>> >          >>     >          >>             >
>> >          >>      <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>
>> >          >>     >          >>
>> >           <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>
>> >          >>     >         <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>
>> >          >>     <mailto:USRP-users@lists.ettus.com
>> >         <mailto:USRP-users@lists.ettus.com>>>>>>
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >
>> >          >>     >          >>
>> >          >>     >
>> >
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >          >>     >          >>             >          >      >
>> >          >>     >          >>             >          >
>> >          >>     >          >>             >
>> >          >>     >          >>
>> >          >>     >
>> >          >>
>> >          >
>> >          > _______________________________________________
>> >          > USRP-users mailing list -- usrp-users@lists.ettus.com
>> >         <mailto:usrp-users@lists.ettus.com>
>> >          > To unsubscribe send an email to
>> >         usrp-users-leave@lists.ettus.com
>> >         <mailto:usrp-users-leave@lists.ettus.com>
>> >          >
>> >
>>
>

--000000000000b4f41005c05596b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+R3JlYXQgbmV3cy4g
SSBoYXZlIGZpbmFsbHkgbWFuYWdlZCB0byBjb25maWd1cmUgdGhlIEFHQyBpbiB0aGUgVVNSUCBF
MzIwITwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SSB3cml0ZSB5b3UgdG8gdGVsbCB5b3UgdGhl
IHN0ZXBzIEkgaGF2ZSBkb25lIGFuZCBqdXN0IGluIGNhc2Ugc29tZW9uZSBpcyBzdHVjayB0aGXC
oHdheSBJIHdhcy48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5BcyBmYXIgYXMgSSBoYXZl
IHVuZGVyc3Rvb2QsIGZvciBFMzIwIFVTUlAgKGFuZCBJIGltYWdpbmUgdGhhdCB0aGlzIGFwcGxp
ZXMgdG8gYWxsIFVTUlAgd2l0aCBNUE0pLCB0aGUgbG93LWxldmVsIGNvbmZpZ3VyYXRpb24gaXMg
ZG9uZSB0aHJvdWdoIHRoZSBNUE0gbGF5ZXIuIFNvLCB3aGlsZSBtYWtpbmcgdGhlIGNoYW5nZXMg
YW5kIGNvbXBpbGluZyB0aGUgZHJpdmVyIGlzIHN1ZmZpY2llbnQgdG8gY29uZmlndXJlIHRoZSBB
R0MgaW4gQjIxMCwgaW4gdGhlIFVTUlAgRTMyMCBpcyBub3QuIE1QTSBtdXN0IGJlIGNvbXBpbGVk
IGluc2lkZSB0aGUgZGV2aWNlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+U28gZmlyc3QsIEkg
bW9kaWZ5IHRoZSBhZDkzNjFfZGV2aWNlLmNwcCBmaWxlIHRoYXQgaXMgbG9jYXRlZCBpbiB1aGQv
aG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcCAoYXMg
d2UgZGlkIGxvbmcgZW1haWxzIGFnbykuwqA8L2Rpdj48ZGl2PlRoZW4sIEkgZm9sbG93IHRoZSBz
dGVwcyB0aGF0IGFyZSBpbiB0aGlzIGd1aWRlwqAgKDxhIGhyZWY9Imh0dHBzOi8vZmlsZXMuZXR0
dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfZTN4eC5odG1sI2UzeHhfc29mdHdhcmVfZGV2Ij5odHRw
czovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX2UzeHguaHRtbCNlM3h4X3NvZnR3
YXJlX2RldjwvYT4pIHRvIGNvbXBpbGUgTVBNIG5hdGl2ZWx5IGluIHRoZSBFMzIwICh0aGVzZSBz
dGVwcyBhcmUgYWxsIGRvbmUgaW5zaWRlIHRoZSBVU1JQKTrCoDwvZGl2PjxkaXY+PGJyPjwvZGl2
PjxibG9ja3F1b3RlIHN0eWxlPSJtYXJnaW46MCAwIDAgNDBweDtib3JkZXI6bm9uZTtwYWRkaW5n
OjBweCI+PGRpdj48cHJlIGNsYXNzPSJnbWFpbC1mcmFnbWVudCIgc3R5bGU9ImJvcmRlcjoxcHgg
c29saWQgcmdiKDE5NiwyMDcsMjI5KTtiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTEsMjUyLDI1Myk7
cGFkZGluZzo0cHggNnB4O21hcmdpbjo0cHggOHB4IDRweCAycHg7b3ZlcmZsb3c6YXV0bztsaW5l
LWhlaWdodDoxOC4zNzVweDtmb250LWZhbWlseTptb25vc3BhY2UsZml4ZWQ7Zm9udC1zaXplOjE0
LjdweDtjb2xvcjpyZ2IoMCwwLDApIj5ta2RpciB1aGQgIyBDcmVhdGUgYSBuZXcsIGVtcHR5IGRp
cmVjdG9yeSBjYWxsZWQgdWhkPC9wcmU+PC9kaXY+PGRpdj48cHJlIGNsYXNzPSJnbWFpbC1mcmFn
bWVudCIgc3R5bGU9ImJvcmRlcjoxcHggc29saWQgcmdiKDE5NiwyMDcsMjI5KTtiYWNrZ3JvdW5k
LWNvbG9yOnJnYigyNTEsMjUyLDI1Myk7cGFkZGluZzo0cHggNnB4O21hcmdpbjo0cHggOHB4IDRw
eCAycHg7b3ZlcmZsb3c6YXV0bztsaW5lLWhlaWdodDoxOC4zNzVweDtmb250LWZhbWlseTptb25v
c3BhY2UsZml4ZWQ7Zm9udC1zaXplOjE0LjdweDtjb2xvcjpyZ2IoMCwwLDApIj4kIHNzaGZzIHVz
ZXJAeW91cmNvbXB1dGVyOnNyYy91aGQgdWhkICMgVGhpcyB3aWxsIG1vdW50IH4vc3JjL3VoZCBm
cm9tIHRoZSByZW1vdGUgbWFjaGluZSB0byB+L3VoZCBvbiB0aGUgZGV2aWNlPC9wcmU+PC9kaXY+
PGRpdj48cHJlIGNsYXNzPSJnbWFpbC1mcmFnbWVudCIgc3R5bGU9ImJvcmRlcjoxcHggc29saWQg
cmdiKDE5NiwyMDcsMjI5KTtiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTEsMjUyLDI1Myk7cGFkZGlu
Zzo0cHggNnB4O21hcmdpbjo0cHggOHB4IDRweCAycHg7b3ZlcmZsb3c6YXV0bztsaW5lLWhlaWdo
dDoxOC4zNzVweDtmb250LWZhbWlseTptb25vc3BhY2UsZml4ZWQ7Zm9udC1zaXplOjE0LjdweDtj
b2xvcjpyZ2IoMCwwLDApIj4kIG1rZGlyIGJ1aWxkX21wbTwvcHJlPjwvZGl2PjxkaXY+PHByZSBj
bGFzcz0iZ21haWwtZnJhZ21lbnQiIHN0eWxlPSJib3JkZXI6MXB4IHNvbGlkIHJnYigxOTYsMjA3
LDIyOSk7YmFja2dyb3VuZC1jb2xvcjpyZ2IoMjUxLDI1MiwyNTMpO3BhZGRpbmc6NHB4IDZweDtt
YXJnaW46NHB4IDhweCA0cHggMnB4O292ZXJmbG93OmF1dG87bGluZS1oZWlnaHQ6MTguMzc1cHg7
Zm9udC1mYW1pbHk6bW9ub3NwYWNlLGZpeGVkO2ZvbnQtc2l6ZToxNC43cHg7Y29sb3I6cmdiKDAs
MCwwKSI+JCBjZCBidWlsZF9tcG0gIyBZb3UgYXJlIG5vdyBpbiAvaG9tZS9yb290L2J1aWxkX21w
bTwvcHJlPjwvZGl2PjxkaXY+PHByZSBjbGFzcz0iZ21haWwtZnJhZ21lbnQiIHN0eWxlPSJib3Jk
ZXI6MXB4IHNvbGlkIHJnYigxOTYsMjA3LDIyOSk7YmFja2dyb3VuZC1jb2xvcjpyZ2IoMjUxLDI1
MiwyNTMpO3BhZGRpbmc6NHB4IDZweDttYXJnaW46NHB4IDhweCA0cHggMnB4O292ZXJmbG93OmF1
dG87bGluZS1oZWlnaHQ6MTguMzc1cHg7Zm9udC1mYW1pbHk6bW9ub3NwYWNlLGZpeGVkO2ZvbnQt
c2l6ZToxNC43cHg7Y29sb3I6cmdiKDAsMCwwKSI+JCBjbWFrZSAtRE1QTV9ERVZJQ0U9ZTMyMCAu
Li91aGQvbXBtPC9wcmU+PC9kaXY+PGRpdj48cHJlIGNsYXNzPSJnbWFpbC1mcmFnbWVudCIgc3R5
bGU9ImJvcmRlcjoxcHggc29saWQgcmdiKDE5NiwyMDcsMjI5KTtiYWNrZ3JvdW5kLWNvbG9yOnJn
YigyNTEsMjUyLDI1Myk7cGFkZGluZzo0cHggNnB4O21hcmdpbjo0cHggOHB4IDRweCAycHg7b3Zl
cmZsb3c6YXV0bztsaW5lLWhlaWdodDoxOC4zNzVweDtmb250LWZhbWlseTptb25vc3BhY2UsZml4
ZWQ7Zm9udC1zaXplOjE0LjdweDtjb2xvcjpyZ2IoMCwwLDApIj4kIG1ha2UgLWoyIGluc3RhbGwg
IyBUaGlzIHdpbGwgdGFrZSBzZXZlcmFsIG1pbnV0ZXM8L3ByZT48L2Rpdj48L2Jsb2NrcXVvdGU+
PGZvbnQgY29sb3I9IiMwMDAwMDAiIGZhY2U9Im1vbm9zcGFjZSwgZml4ZWQiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTQuN3B4O3doaXRlLXNwYWNlOnByZSI+PGRpdj48Zm9udCBjb2xvcj0iIzAw
MDAwMCIgZmFjZT0ibW9ub3NwYWNlLCBmaXhlZCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC43
cHg7d2hpdGUtc3BhY2U6cHJlIj48YnI+PC9zcGFuPjwvZm9udD48L2Rpdj5BbmQgZmluYWxseSAo
YW5kIHRoaXMgb25lIGNvc3QgbWUgaGVhZGFjaGVzIHRvIGZpZ3VyZSBpdCBvdXQpLCByZWJvb3Qg
dGhlIGRldmljZS4gVGhhdCB3YXkgSSBnZXQgbXkgZGV2aWNlIHdvcmtpbmcgYXMgSSBleHBlY3Qu
PC9zcGFuPjwvZm9udD48ZGl2Pjxmb250IGNvbG9yPSIjMDAwMDAwIiBmYWNlPSJtb25vc3BhY2Us
IGZpeGVkIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0LjdweDt3aGl0ZS1zcGFjZTpwcmUiPjxi
cj48L3NwYW4+PC9mb250PjwvZGl2PjxkaXY+PGZvbnQgY29sb3I9IiMwMDAwMDAiIGZhY2U9Im1v
bm9zcGFjZSwgZml4ZWQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTQuN3B4O3doaXRlLXNwYWNl
OnByZSI+QWdhaW4sIG1hbnkgdGhhbmtzIGZvciB5b3VyIGhlbHAhITwvc3Bhbj48L2ZvbnQ+PC9k
aXY+PGRpdj48Zm9udCBjb2xvcj0iIzAwMDAwMCIgZmFjZT0ibW9ub3NwYWNlLCBmaXhlZCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxNC43cHg7d2hpdGUtc3BhY2U6cHJlIj48YnI+PC9zcGFuPjwv
Zm9udD48L2Rpdj48ZGl2Pjxmb250IGNvbG9yPSIjMDAwMDAwIiBmYWNlPSJtb25vc3BhY2UsIGZp
eGVkIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0LjdweDt3aGl0ZS1zcGFjZTpwcmUiPktpbmQg
UmVnYXJkcyw8L3NwYW4+PC9mb250PjwvZGl2PjxkaXY+PGZvbnQgY29sb3I9IiMwMDAwMDAiIGZh
Y2U9Im1vbm9zcGFjZSwgZml4ZWQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTQuN3B4O3doaXRl
LXNwYWNlOnByZSI+PGJyPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+PGRpdj48Zm9udCBjb2xvcj0iIzAw
MDAwMCIgZmFjZT0ibW9ub3NwYWNlLCBmaXhlZCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC43
cHg7d2hpdGUtc3BhY2U6cHJlIj5NYXJpYTwvc3Bhbj48L2ZvbnQ+PC9kaXY+PC9kaXY+PGJyPjxk
aXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+
RWwganVlLCAxNSBhYnIgMjAyMSBhIGxhcyAxMzoxOSwgTWFyaWEgTXXDsW96ICgmbHQ7PGEgaHJl
Zj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsp
IGVzY3JpYmnDszo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHls
ZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0
LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxkaXYgZGlyPSJsdHIiPkhpIEp1bGlhbiw8ZGl2
Pjxicj48L2Rpdj48ZGl2PkkmIzM5O20gaGF2aW5nIHNvbWUgaXNzdWVzIHdpdGggdGhlIGNyb3Nz
LWNvbXBpbGF0aW9uIG9mIHRoZSBFMzIwIFVTUlAgKHRoZXJlIGFyZSBtaXNzaW5nIGxpYnJhcmll
cykgdGhhdCBJJiMzOTttIHRyeWluZyB0byByZXNvbHZlIHRvwqBydW4gbXkgcHl0aG9uIHNjcmlw
dCBpbnNpZGUgdGhlIFVTUlAuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JZiBJIGNvbnRpbnVl
IHdpdGggdGhlIGNvbXBpbGF0aW9uIChpZ25vcmluZyB0aGF0IHRoZXNlIGxpYnJhcmllcyBhcmUg
bWlzc2luZyksIEkgY2FuIHNlZSB0aGF0IHRoZSB1aGRfdXNycF9wcm9iZSBjb21tYW5kIGluc2lk
ZSB0aGUgRTMyMCByZXR1cm5zIG15IGxhc3QgZW1haWwgbWVzc2FnZXMsIGkuZSwgaXQgaXMgcGFz
c2luZyB0aHJvdWdoIHRoZSBhZDkzNjFfaWZhY2UuIFRoaXMgaWZhY2UgdGFsa3Mgd2l0aCB0aGUg
cnBjYywgc28gcGVyaGFwcywgYXMgeW91IHNhaWQsIHRoZXJlJiMzOTtzIGRpZmZlcmVudMKgYmVo
YXZpb3IgYmV0d2VlbiBuZXR3b3JrIGFuZCBlbWJlZGRlZCBtb2RlcywgYW5kIEkgbmVlZCB0byBj
cm9zcy1jb21waWxlIHRoZSBVSEQgZHJpdmVyIHdpdGggbXkgY2hhbmdlcyBpbiBvcmRlciB0byBi
ZSBhYmxlIHRvIHRhbGsgdG8gdGhlIGNoaXBzZXQuIFdoZW4gSSBjb21waWxlIG15IFVIRCBkcml2
ZXIgY29kZSBpbiBteSBob3N0IFBDIGNoYW5naW5nIHRoZSB0aHJlc2hvbGRzIG9mIHRoZSBhZDkz
NjEgYWdjLCBhbmQgcnVuIG15IHB5dGhvbiBzY3JpcHQgaW4gbmV0d29yayBtb2RlICh3aXRob3V0
IGNyb3NzLWNvbXBpbGluZykgSSBzZWUgdGhhdCBteSB3YXZlZm9ybSBpcyBzdGlsbCBtb3Zpbmcg
YmV0d2VlbiAtMTAgYW5kIC0xMiBkQiB3aGljaCBhcmUgdGhlIGRlZmF1bHRzIHZhbHVlcyBpbiB0
aGUgVUhEIGRyaXZlciAodGhhdCYjMzk7cyBub3QgaGFwcGVuZWQgd2l0aCB0aGUgQjIxMCBVU1JQ
IHdoaWNoIG91dHB1dHMgdGhlIGV4cGVjdGVkIHdhdmVmb3JtKSBzbyBJJiMzOTttIGFsbW9zdCBz
dXJlIHRoYXQgdGhlIGNyb3NzLWNvbXBpbGF0aW9uIGNvdWxkIGJlIHRoZSBwcm9ibGVtLjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+SSYjMzk7bGwgdHJ5IHRvIGZpeCB0aGUgY3Jvc3MtY29tcGls
YXRpb24gaXNzdWVzIGFuZCBsZXQgeW91IGtub3cgaWYgaXQgcmVzb2x2ZXMgdGhlIHByb2JsZW0u
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5UaGFua3MgYWdhaW4uPC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj5LaW5kIFJlZ2FyZHMsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5NYXJpYTwvZGl2
PjxkaXY+PGJyPjwvZGl2PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBk
aXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPkVsIGx1biwgMTIgYWJyIDIwMjEgYSBsYXMgMTc6
NTQsIEp1bGlhbiBBcm5vbGQgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OykgZXNj
cmliacOzOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJt
YXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0
LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+TWFyaWEsPGJyPg0KPGJyPg0KaGF2ZSB5b3UgdHJpZWQg
cnVubmluZyB5b3VyIGNvZGUgaW4gZW1iZWRkZWQgbW9kZSAoZGlyZWN0bHkgb24gdGhlIEUzMjAp
Pzxicj4NCjxicj4NCldheSBiYWNrIHdoZW4gdGhlIEUzMTAgd2FzIGEgbmV3IHByb2R1Y3QsIHRo
ZXJlIGRlZmluZXRseSB3ZXJlIDxicj4NCmRpZmZlcmVuY2VzIGJldHdlZW4gbmV0d29ya2VkIGFu
ZCBlbWJlZGRlZCBtb2RlLjxicj4NCjxicj4NCk5vd2FkYXlzLCB3aXRoIE5QTSwgYm90aCBtb2Rl
cyBzaG91bGQgYWNjZXNzIHRoZSBoYXJkd2FyZSBpbiB0aGUgc2FtZSA8YnI+DQp3YXkgaWYgdW5k
ZXJ0YW5kIGl0IGNvcnJlY3RseS48YnI+DQo8YnI+DQpIb3dldmVyLCB5b3UgbWlnaHQgc3RpbGwg
b25seSBiZSBzZWVpbmcgdGhlIGxvZyBtZXNzYWdlcyBjb21pbmcgZnJvbSA8YnI+DQp5b3VyIGhv
c3QgbWFjaGluZSBidXQgbm90IHRoZSBsb2dzIHRoYXQgYXJlIGdlbmVyYXRlZCBvbiB0aGUgRTMy
MCB3aGVuIDxicj4NCnJ1bm5pbmcgaW4gbmV0d29ya2VkIG1vZGUgKGp1c3QgZ3Vlc3NpbmcgaGVy
ZSkuPGJyPg0KU28gcnVubmluZyBpbiBlbWJlZGRlZCBtb2RlIHdvdWxkIHByb2JhYmx5IGJlIGEg
dmFsdWFibGUgbmV4dCBzdGVwLjxicj4NCjxicj4NCiZndDsmZ3Q7IEkgaGF2ZSBkZWJ1Z2dlZCB0
aGUgY29kZSBydW5uaW5nIHRoZSAmcXVvdDt1c3JwLWZpbHRlci1leHBsb3Jlci5jcHAmcXVvdDsg
PGJyPg0KOkQgTmljZSwgdW50aWwgbm93IEkgd2FzbiYjMzk7dCBhd2FyZSBvZiBhbnkgcGVvcGxl
IHN0aWxsIHVzaW5nIHRoaXMgdG9vbC4gPGJyPg0KTWF5YmUgaXQgZGVzZXJ2ZXMgYW4gdXBkYXRl
IDspPGJyPg0KPGJyPg0KQ2hlZXJzLDxicj4NCkp1bGlhbjxicj4NCjxicj4NCk9uIDQvMTIvMjEg
Mjo1MyBQTSwgTWFyaWEgTXXDsW96IHdyb3RlOjxicj4NCiZndDsgSGkgSnVsaWFuLDxicj4NCiZn
dDsgPGJyPg0KJmd0OyBJIGhhdmUgZGVidWdnZWQgdGhlIGNvZGUgcnVubmluZyB0aGUgJnF1b3Q7
dXNycC1maWx0ZXItZXhwbG9yZXIuY3BwJnF1b3Q7IHdoaWNoIDxicj4NCiZndDsgYWxzbyBjaGFu
Z2Ugc29tZSBvZiB0aGUgYWQ5MzYxIGNvbmZpZ3VyYXRpb25zIGFuZCBJIGhhdmUgdGhlIG9wcG9y
dHVuaXR5IDxicj4NCiZndDsgdG8gY2hlY2sgaXQgYm90aCBpbiBVU1JQIEUzMjAgYW5kIFVTUlAg
QjIxMCAoc2FtZSBhcyB0aGUgb25lIHlvdSBoYXZlKS48YnI+DQomZ3Q7IDxicj4NCiZndDsgSSBo
YXZlIGJlZW4gYWJsZSB0byBzZWUgdGhhdCB0aGUgcGF0aCB0aHJvdWdoIHRoZSBzb3VyY2UgY29k
ZSB1c2luZyB0aGUgPGJyPg0KJmd0OyBCMjEwIGlzIGFzIGV4cGVjdGVkIChhcyB5b3Ugc2FpZCwg
aXQgZ29lcyB0aHJvdWdoIHRoZSBhZDkzNjFfZGV2aWNlLmNwcCA8YnI+DQomZ3Q7IGZpbGUpIGJ1
dCB0aGF0JiMzOTtzIG5vdCBoYXBwZW5pbmcgd2l0aCB0aGUgVVNSUCBFMzIwLjxicj4NCiZndDsg
VGhlIGIyMTAgbG9nIG91dHB1dCAod2l0aCBhZGRlZCBjb21tZW50cykgaXMgdGhpczo8YnI+DQom
Z3Q7IC9bSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA5LjMuMDsgQm9vc3RfMTA3
MTAwOyA8YnI+DQomZ3Q7IFVIRF80LjAuMC5IRUFELTAtZzkwY2U2MDYyPGJyPg0KJmd0OyBbSU5G
T10gW0IyMDBdIERldGVjdGVkIERldmljZTogQjIxMDxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBP
cGVyYXRpbmcgb3ZlciBVU0IgMi48YnI+DQomZ3Q7IFtJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBD
T0RFQyBjb250cm9sLi4uPGJyPg0KJmd0OyAqW0lORk9dIFtBRDkzNjFfREVWSUNFXSBpbml0aWFs
aXplKjxicj4NCiZndDsgKltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gc2V0dXBfZ2Fpbl9jb250cm9s
X2FnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfZGV2aWNlXSBzZXR1cF9hZGMqPGJyPg0KJmd0
OyBbSU5GT10gW0IyMDBdIEluaXRpYWxpemUgUmFkaW8gY29udHJvbC4uLjxicj4NCiZndDsgKltJ
TkZPXSBbQUQ5MzYxX0NUUkxdIHNldF9hZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklD
RV0gc2V0X2FnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBzZXR1cF9nYWluX2Nv
bnRyb2xfYWdjPGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9DVFJMXSBzZXRfYWdjPGJyPg0KJmd0
OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIHNldF9hZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYx
X0RFVklDRV0gc2V0dXBfZ2Fpbl9jb250cm9sX2FnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFf
REVWSUNFXSBzZXR1cF9nYWluX2NvbnRyb2xfYWdjKjxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBQ
ZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi48YnI+DQomZ3Q7IFtJTkZPXSBbQjIw
MF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQ8YnI+DQomZ3Q7ICpbSU5GT10gW01BTkFH
RVJdIGFnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7
IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyKjxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBQ
ZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi48YnI+DQomZ3Q7IFtJTkZPXSBbQjIw
MF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQ8YnI+DQomZ3Q7ICpbSU5GT10gW01BTkFH
RVJdIGFnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7
IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyKjxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBT
ZXR0aW5nIG1hc3RlciBjbG9jayByYXRlIHNlbGVjdGlvbiB0byAmIzM5O2F1dG9tYXRpYyYjMzk7
Ljxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMTYuMDAwMDAw
IE1Iei4uLjxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBzZXR1cF9nYWluX2NvbnRy
b2xfYWdjPGJyPg0KJmd0OyAqW0lORk9dIFtBRDkzNjFfZGV2aWNlXSBzZXR1cF9hZGMqPGJyPg0K
Jmd0OyBbSU5GT10gW0IyMDBdIEFjdHVhbGx5IGdvdCBjbG9jayByYXRlIDE2LjAwMDAwMCBNSHou
PGJyPg0KJmd0OyBbSU5GT10gW01VTFRJX1VTUlBdIFNldHRpbmcgbWFzdGVyIGNsb2NrIHJhdGUg
c2VsZWN0aW9uIHRvICYjMzk7bWFudWFsJiMzOTsuPGJyPg0KJmd0OyBbSU5GT10gW0IyMDBdIEFz
a2luZyBmb3IgY2xvY2sgcmF0ZSAzMi4wMDAwMDAgTUh6Li4uPGJyPg0KJmd0OyAqW0lORk9dIFtB
RDkzNjFfREVWSUNFXSBzZXR1cF9nYWluX2NvbnRyb2xfYWdjPGJyPg0KJmd0OyBbSU5GT10gW0FE
OTM2MV9kZXZpY2VdIHNldHVwX2FkYyo8YnI+DQomZ3Q7IFtJTkZPXSBbQjIwMF0gQWN0dWFsbHkg
Z290IGNsb2NrIHJhdGUgMzIuMDAwMDAwIE1Iei48YnI+DQomZ3Q7IDxicj4NCiZndDsgVXNpbmcg
bWFzdGVyIGNsb2NrIHJhdGU6IDMuMmUrMDc8YnI+DQomZ3Q7IFVzaW5nIHNlYXJjaCBtYXNrOiBy
eF9mcm9udGVuZHMvQS88YnI+DQomZ3Q7IDxicj4NCiZndDsgRm91bmQgdGhlIGZvbGxvd2luZyBm
aWx0ZXJzIG1hdGNoaW5nICZxdW90O3J4X2Zyb250ZW5kcy9BLyZxdW90Ozo8YnI+DQomZ3Q7IC9t
Ym9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvREVDXzM8YnI+DQomZ3Q7
IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvRklSXzE8YnI+DQom
Z3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvSEJfMTxicj4N
CiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8yPGJy
Pg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzM8
YnI+DQomZ3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvTFBG
X0JCPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJz
L0xQRl9USUE8YnI+DQomZ3Q7IDxicj4NCiZndDsgQWN0aXZlIGZpbHRlcnM6PGJyPg0KJmd0OyBb
SU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVW
SUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9B
L2ZpbHRlcnMvRklSXzE8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJy
Pg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzE8
YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJk
cy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzI8YnI+DQomZ3Q7IFtJTkZP
XSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9y
eF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzM8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklD
RV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9m
aWx0ZXJzL0xQRl9CQjxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+
DQomZ3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvTFBGX1RJ
QTxicj4NCiZndDsgPGJyPg0KJmd0OyBBdmFpbGFibGUgSW5mbyBvbiBBY3RpdmUgRmlsdGVyczo8
YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPg0KJmd0OyBbSU5GT10g
W0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0Evcnhf
ZnJvbnRlbmRzL0EvZmlsdGVycy9GSVJfMTxicj4NCiZndDsgW2ZpbHRlcl9pbmZvX2Jhc2VdPGJy
Pg0KJmd0OyB0eXBlOiBEaWdpdGFsIEZJUiAoaTE2KTxicj4NCiZndDsgYnlwYXNzIGVuYWJsZTog
MDxicj4NCiZndDsgcG9zaXRpb24gaW5kZXg6IDU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgW2Rp
Z2l0YWxfZmlsdGVyX2Jhc2VdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGlucHV0IHJhdGU6IDYu
NGUrMDc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgaW50ZXJwb2xhdGlvbjogMTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCBkZWNpbWF0aW9uOiAyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGZ1bGwt
c2NhbGU6IDMyNzY3PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIG1heCBudW0gdGFwczogMTI4PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIHRhcHM6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgICh0YXAgMDogMCkodGFwIDE6IDApKHRhcCAyOiAxKSh0YXAgMzogMCkodGFwIDQ6IC0y
KSh0YXAgPGJyPg0KJmd0OyA1OiAwKSh0YXAgNjogMykodGFwIDc6IDApKHRhcCA4OiAtNSkodGFw
IDk6IDApKHRhcCAxMDogOCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKHRh
cCAxMTogMCkodGFwIDEyOiAtMTEpKHRhcCAxMzogMCkodGFwIDE0OiAxNykodGFwIDE1OiA8YnI+
DQomZ3Q7IDApKHRhcCAxNjogLTI0KSh0YXAgMTc6IDApKHRhcCAxODogMzMpKHRhcCAxOTogMCko
dGFwIDIwOiAtNDUpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMjE6
IDApKHRhcCAyMjogNjEpKHRhcCAyMzogMCkodGFwIDI0OiAtODApKHRhcCAyNTogPGJyPg0KJmd0
OyAwKSh0YXAgMjY6IDEwNCkodGFwIDI3OiAwKSh0YXAgMjg6IC0xMzQpKHRhcCAyOTogMCkodGFw
IDMwOiAxNjkpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMzE6IDAp
KHRhcCAzMjogLTIxMykodGFwIDMzOiAwKSh0YXAgMzQ6IDI2NCkodGFwIDxicj4NCiZndDsgMzU6
IDApKHRhcCAzNjogLTMyNykodGFwIDM3OiAwKSh0YXAgMzg6IDQwMSkodGFwIDM5OiAwKSh0YXAg
NDA6IC00ODkpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgNDE6IDAp
KHRhcCA0MjogNTk1KSh0YXAgNDM6IDApKHRhcCA0NDogLTcyNCkodGFwIDxicj4NCiZndDsgNDU6
IDApKHRhcCA0NjogODgwKSh0YXAgNDc6IDApKHRhcCA0ODogLTEwNzUpKHRhcCA0OTogMCkodGFw
IDUwOiAxMzIzKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDUxOiAw
KSh0YXAgNTI6IC0xNjUyKSh0YXAgNTM6IDApKHRhcCA1NDogMjExNCkodGFwIDxicj4NCiZndDsg
NTU6IDApKHRhcCA1NjogLTI4MTkpKHRhcCA1NzogMCkodGFwIDU4OiA0MDU2KSh0YXAgNTk6IDAp
KHRhcCA2MDogLTY4ODMpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAg
NjE6IDApKHRhcCA2MjogMjA4MzcpKHRhcCA2MzogMzI3NjcpKHRhcCA2NDogPGJyPg0KJmd0OyAy
MDgzNykodGFwIDY1OiAwKSh0YXAgNjY6IC02ODgzKSh0YXAgNjc6IDApKHRhcCA2ODogNDA1Niko
dGFwIDY5OiAwKSh0YXAgPGJyPg0KJmd0OyA3MDogLTI4MTkpPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgICh0YXAgNzE6IDApKHRhcCA3MjogMjExNCkodGFwIDczOiAwKSh0YXAg
NzQ6IC0xNjUyKSh0YXAgPGJyPg0KJmd0OyA3NTogMCkodGFwIDc2OiAxMzIzKSh0YXAgNzc6IDAp
KHRhcCA3ODogLTEwNzUpKHRhcCA3OTogMCkodGFwIDgwOiA4ODApPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgODE6IDApKHRhcCA4MjogLTcyNCkodGFwIDgzOiAwKSh0
YXAgODQ6IDU5NSkodGFwIDxicj4NCiZndDsgODU6IDApKHRhcCA4NjogLTQ4OSkodGFwIDg3OiAw
KSh0YXAgODg6IDQwMSkodGFwIDg5OiAwKSh0YXAgOTA6IC0zMjcpPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgOTE6IDApKHRhcCA5MjogMjY0KSh0YXAgOTM6IDApKHRh
cCA5NDogLTIxMykodGFwIDxicj4NCiZndDsgOTU6IDApKHRhcCA5NjogMTY5KSh0YXAgOTc6IDAp
KHRhcCA5ODogLTEzNCkodGFwIDk5OiAwKSh0YXAgMTAwOiAxMDQpPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMTAxOiAwKSh0YXAgMTAyOiAtODApKHRhcCAxMDM6IDAp
KHRhcCAxMDQ6IDYxKSh0YXAgPGJyPg0KJmd0OyAxMDU6IDApKHRhcCAxMDY6IC00NSkodGFwIDEw
NzogMCkodGFwIDEwODogMzMpKHRhcCAxMDk6IDApKHRhcCAxMTA6IC0yNCk8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKHRhcCAxMTE6IDApKHRhcCAxMTI6IDE3KSh0YXAgMTEz
OiAwKSh0YXAgMTE0OiAtMTEpKHRhcCA8YnI+DQomZ3Q7IDExNTogMCkodGFwIDExNjogOCkodGFw
IDExNzogMCkodGFwIDExODogLTUpKHRhcCAxMTk6IDApKHRhcCAxMjA6IDMpPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMTIxOiAwKSh0YXAgMTIyOiAtMikodGFwIDEy
MzogMCkodGFwIDEyNDogMSkodGFwIDxicj4NCiZndDsgMTI1OiAwKSh0YXAgMTI2OiAwKSh0YXAg
MTI3OiAwKTxicj4NCiZndDsgPGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRl
cjxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9I
Ql8xPGJyPg0KJmd0OyBbZmlsdGVyX2luZm9fYmFzZV08YnI+DQomZ3Q7IHR5cGU6IERpZ2l0YWwg
KGkxNik8YnI+DQomZ3Q7IGJ5cGFzcyBlbmFibGU6IDA8YnI+DQomZ3Q7IHBvc2l0aW9uIGluZGV4
OiA0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIFtkaWdpdGFsX2ZpbHRlcl9iYXNlXTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCBpbnB1dCByYXRlOiAxLjI4ZSswODxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCBpbnRlcnBvbGF0aW9uOiAxPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGRlY2ltYXRpb246
IDI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgZnVsbC1zY2FsZTogMjA0ODxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCBtYXggbnVtIHRhcHM6IDE1PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIHRhcHM6
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMDogLTgpKHRhcCAxOiAw
KSh0YXAgMjogNDIpKHRhcCAzOiAwKSh0YXAgNDogPGJyPg0KJmd0OyAtMTQ3KSh0YXAgNTogMCko
dGFwIDY6IDYxOSkodGFwIDc6IDEwMTMpKHRhcCA4OiA2MTkpKHRhcCA5OiAwKSh0YXAgMTA6IC0x
NDcpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMTE6IDApKHRhcCAx
MjogNDIpKHRhcCAxMzogMCkodGFwIDE0OiAtOCk8YnI+DQomZ3Q7IDxicj4NCiZndDsgW0lORk9d
IFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4
X2Zyb250ZW5kcy9BL2ZpbHRlcnMvSEJfMjxicj4NCiZndDsgW2ZpbHRlcl9pbmZvX2Jhc2VdPGJy
Pg0KJmd0OyB0eXBlOiBEaWdpdGFsIChpMTYpPGJyPg0KJmd0OyBieXBhc3MgZW5hYmxlOiAwPGJy
Pg0KJmd0OyBwb3NpdGlvbiBpbmRleDogMzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBbZGlnaXRh
bF9maWx0ZXJfYmFzZV08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgaW5wdXQgcmF0ZTogMi41NmUr
MDg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgaW50ZXJwb2xhdGlvbjogMTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCBkZWNpbWF0aW9uOiAyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGZ1bGwtc2Nh
bGU6IDI1Njxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBtYXggbnVtIHRhcHM6IDc8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgdGFwczo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
KHRhcCAwOiAtOSkodGFwIDE6IDApKHRhcCAyOiA3MykodGFwIDM6IDEyOCkodGFwIDQ6IDxicj4N
CiZndDsgNzMpKHRhcCA1OiAwKSh0YXAgNjogLTkpPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IFtJTkZP
XSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9y
eF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzM8YnI+DQomZ3Q7IFtmaWx0ZXJfaW5mb19iYXNlXTxi
cj4NCiZndDsgdHlwZTogRGlnaXRhbCAoaTE2KTxicj4NCiZndDsgYnlwYXNzIGVuYWJsZTogMDxi
cj4NCiZndDsgcG9zaXRpb24gaW5kZXg6IDI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgW2RpZ2l0
YWxfZmlsdGVyX2Jhc2VdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGlucHV0IHJhdGU6IDUuMTJl
KzA4PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGludGVycG9sYXRpb246IDE8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgZGVjaW1hdGlvbjogMjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBmdWxsLXNj
YWxlOiAxNjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBtYXggbnVtIHRhcHM6IDU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgdGFwczo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
KHRhcCAwOiAxKSh0YXAgMTogNCkodGFwIDI6IDYpKHRhcCAzOiA0KSh0YXAgNDogMSk8YnI+DQom
Z3Q7IDxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IC9t
Ym9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvTFBGX0JCPGJyPg0KJmd0
OyBbZmlsdGVyX2luZm9fYmFzZV08YnI+DQomZ3Q7IHR5cGU6IEFuYWxvZyBMb3ctcGFzczxicj4N
CiZndDsgYnlwYXNzIGVuYWJsZTogMDxicj4NCiZndDsgcG9zaXRpb24gaW5kZXg6IDE8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgW2FuYWxvZ19maWx0ZXJfYmFzZV08YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgZGVzYzogdGhpcmQtb3JkZXIgQnV0dGVyd29ydGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgW2FuYWxvZ19maWx0ZXJfbHBdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIGN1dG9mZjogMi4yNGUrMDc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgcm9sbG9mZjogNjA8YnI+DQomZ3Q7IDxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9h
cmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9MUEZfVElBPGJyPg0KJmd0OyBbSU5GT10gW0FE
OTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4NCiZndDsgW2ZpbHRlcl9pbmZvX2Jhc2VdPGJyPg0KJmd0
OyB0eXBlOiBBbmFsb2cgTG93LXBhc3M8YnI+DQomZ3Q7IGJ5cGFzcyBlbmFibGU6IDA8YnI+DQom
Z3Q7IHBvc2l0aW9uIGluZGV4OiAwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIFthbmFsb2dfZmls
dGVyX2Jhc2VdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGRlc2M6IHNpbmdsZS1wb2xlPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIFthbmFsb2dfZmlsdGVyX2xwXTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjdXRvZmY6IDRlKzA3PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJvbGxvZmY6IDIwLzxicj4NCiZndDsgLzxicj4NCiZndDsg
Lzxicj4NCiZndDsgT24gdGhlIG90aGVyIGhhbmQsIHRoZSBVU1JQIEUzMjAgcmV0dXJucyB0aGlz
Oi88YnI+DQomZ3Q7IC88YnI+DQomZ3Q7IDxicj4NCiZndDsgL1tJTkZPXSBbVUhEXSBsaW51eDsg
R05VIEMrKyB2ZXJzaW9uIDkuMy4wOyBCb29zdF8xMDcxMDA7IDxicj4NCiZndDsgVUhEXzQuMC4w
LkhFQUQtMC1nOTBjZTYwNjI8YnI+DQomZ3Q7IFtJTkZPXSBbTVBNRF0gSW5pdGlhbGl6aW5nIDEg
ZGV2aWNlKHMpIGluIHBhcmFsbGVsIHdpdGggYXJnczogPGJyPg0KJmd0OyBtZ210X2FkZHI9MTky
LjE2OC4xMC4yLHR5cGU9ZTN4eCxwcm9kdWN0PWUzMjAsc2VyaWFsPTMxREZCQjcsY2xhaW1lZD1G
YWxzZSxhZGRyPTE5Mi4xNjguMTAuMjxicj4NCiZndDsgW0lORk9dIFtNUE0ubWFpbl0gTGF1bmNo
aW5nIFVTUlAvTVBNLCB2ZXJzaW9uOiA0LjAuMC4wLWc5MGNlNjA2Mjxicj4NCiZndDsgW0lORk9d
IFtNUE0ubWFpbl0gU3Bhd25pbmcgUlBDIHByb2Nlc3MuLi48YnI+DQomZ3Q7IFtJTkZPXSBbTVBN
LlBlcmlwaE1hbmFnZXJdIERldmljZSBzZXJpYWwgbnVtYmVyOiAzMURGQkI3PGJyPg0KJmd0OyBb
SU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBGb3VuZCAxIGRhdWdodGVyYm9hcmQocykuPGJyPg0K
Jmd0OyBbSU5GT10gW01QTS5SUENTZXJ2ZXJdIFJQQyBzZXJ2ZXIgcmVhZHkhPGJyPg0KJmd0OyBb
SU5GT10gW01QTS5SUENTZXJ2ZXJdIFNwYXduaW5nIHdhdGNoZG9nIHRhc2suLi48YnI+DQomZ3Q7
IFtJTkZPXSBbTVBNLlBlcmlwaE1hbmFnZXJdIGluaXQoKSBjYWxsZWQgd2l0aCBkZXZpY2UgYXJn
cyA8YnI+DQomZ3Q7IGBtZ210X2FkZHI9MTkyLjE2OC4xMC4yLHByb2R1Y3Q9ZTMyMCYjMzk7Ljxi
cj4NCiZndDsgKltJTkZPXSBbQUQ5MzYxX0lGQUNFXSBhZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5
MzYxX0lGQUNFXSBhZ2MqPGJyPg0KJmd0OyBbSU5GT10gWzAvUmFkaW8jMF0gUGVyZm9ybWluZyBD
T0RFQyBsb29wYmFjayB0ZXN0IG9uIGNoYW5uZWwgMCAuLi48YnI+DQomZ3Q7IFtJTkZPXSBbMC9S
YWRpbyMwXSBDT0RFQyBsb29wYmFjayB0ZXN0IHBhc3NlZDxicj4NCiZndDsgW0lORk9dIFswL1Jh
ZGlvIzBdIFBlcmZvcm1pbmcgQ09ERUMgbG9vcGJhY2sgdGVzdCBvbiBjaGFubmVsIDEgLi4uPGJy
Pg0KJmd0OyBbSU5GT10gWzAvUmFkaW8jMF0gQ09ERUMgbG9vcGJhY2sgdGVzdCBwYXNzZWQ8YnI+
DQomZ3Q7IFtJTkZPXSBbMC9EbWFGSUZPIzBdIEJJU1QgcGFzc2VkIChFc3RpbWF0ZWQgTWluaW11
bSBUaHJvdWdocHV0OiAxMzYxIE1CL3MpPGJyPg0KJmd0OyBbSU5GT10gWzAvRG1hRklGTyMwXSBC
SVNUIHBhc3NlZCAoRXN0aW1hdGVkIE1pbmltdW0gVGhyb3VnaHB1dDogMTM2MSBNQi9zKTxicj4N
CiZndDsgPGJyPg0KJmd0OyBVc2luZyBtYXN0ZXIgY2xvY2sgcmF0ZTogMy4yZSswNzxicj4NCiZn
dDsgVXNpbmcgc2VhcmNoIG1hc2s6IHJ4X2Zyb250ZW5kcy9BLzxicj4NCiZndDsgPGJyPg0KJmd0
OyBGb3VuZCB0aGUgZm9sbG93aW5nIGZpbHRlcnMgbWF0Y2hpbmcgJnF1b3Q7cnhfZnJvbnRlbmRz
L0EvJnF1b3Q7Ojxicj4NCiZndDsgKltJTkZPXSBbRTN4eF9yYWRpb19jdHJsXSBmaWx0ZXIqPGJy
Pg0KJmd0OyA8YnI+DQomZ3Q7IEFjdGl2ZSBmaWx0ZXJzOjxicj4NCiZndDsgPGJyPg0KJmd0OyBB
dmFpbGFibGUgSW5mbyBvbiBBY3RpdmUgRmlsdGVyczo8YnI+DQomZ3Q7IC88YnI+DQomZ3Q7IC88
YnI+DQomZ3Q7IC88YnI+DQomZ3Q7IFRoZSBFMzIwIGdvZXMgdG8gdGhlIGFkOTM2MV9pZmFjZSBm
aWxlIChJIGhhdmUgbm90IGNhbGxlZCB0aGUgc2V0X2FnYyA8YnI+DQomZ3Q7IGNvbW1hbmQgc28g
cGVyaGFwcyBpcyBjYWxsZWQgZm9yIHRoZSBpbml0aWFsIGNvbmZpZ3VyYXRpb24/KSBhbmQgdGhl
IDxicj4NCiZndDsgRTN4eF9yYWRpb19jdHJsIGZvciB0aGUgZmlsdGVyIGNvbW1hbmQgKHRoYXQm
IzM5O3Mgc3RyYW5nZSBiZWNhdXNlIEkgd291bGQgPGJyPg0KJmd0OyBleHBlY3RlZCB0aGF0IGl0
IGhhZCBwYXNzZWQgdGhyb3VnaCB0aGUgaWZhY2UgdG9vKS4gVGhlcmUmIzM5O3MgYWxzbyBubyA8
YnI+DQomZ3Q7IHNpbmdsZSBmaWx0ZXIgbmFtZSBwcmludGVkLCBtYXliZSB0aGUgY29ycmVjdCB0
cmVlIHBhdGggaW4gdGhlIEUzMjAgaXMgPGJyPg0KJmd0OyBub3QgJnF1b3Q7cnhfZnJvbnRlbmRz
L0EvLjxicj4NCiZndDsgPGJyPg0KJmd0OyBUaGUgY2FsbCBpbiBhZDkzNjFfaWZhY2UgZmlsZSBp
cyB0aGlzIG9uZSAod2hpY2ggY2FsbHMgdGhlIHJwY19jbGllbnQsIDxicj4NCiZndDsgdGhhdCYj
Mzk7cyB3aHkgSSB0aG91Z2h0IG9uIHRoZSBwcmV2aW91cyBlbWFpbCB0aGF0IHRoZSBjb25maWd1
cmF0aW9uIGdvZXMgPGJyPg0KJmd0OyB0aGF0IHdheSk6PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC92
b2lkIHNldF9hZ2MoY29uc3Qgc3RkOjpzdHJpbmcmYW1wOyB3aGljaCwgYm9vbCBlbmFibGUpPGJy
Pg0KJmd0OyB7PGJyPg0KJmd0OyBVSERfTE9HX0lORk8oJnF1b3Q7QUQ5MzYxX0lGQUNFJnF1b3Q7
LCAmcXVvdDthZ2MmcXVvdDspOzxicj4NCiZndDsgX3JwY2MtJmd0O3JlcXVlc3Rfd2l0aF90b2tl
biZsdDt2b2lkJmd0Oyh0aGlzLSZndDtfcnBjX3ByZWZpeCArICZxdW90O3NldF9hZ2MmcXVvdDss
IHdoaWNoLCA8YnI+DQomZ3Q7IGVuYWJsZSk7Lzxicj4NCiZndDsgPGJyPg0KJmd0OyBJIGFtIHJ1
bm5pbmcgdGhlIHNhbWUgc291cmNlIGNvZGUgZm9yIGJvdGggVVNSUCYjMzk7cywgaW4gdGhlIHNh
bWUgPGJyPg0KJmd0OyBlbnZpcm9ubWVudCwganVzdCBjaGFuZ2luZyB0aGUgY29ubmVjdGlvbiBm
cm9tIG9uZSBVU1JQIHRvIGFub3RoZXIgaW4gbXkgPGJyPg0KJmd0OyBQQywgc28gSSYjMzk7bSBh
ZnJhaWQgdGhpcyBpcyBhbiBzcGVjaWZpYyBFMzIwIHByb2JsZW0uPGJyPg0KJmd0OyA8YnI+DQom
Z3Q7IEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7IDxicj4NCiZndDsgTWFyaWE8YnI+DQomZ3Q7IC8v
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEVsIGx1biwgMTIgYWJyIDIwMjEgYSBsYXMgOTo1NSwgTWFy
aWEgTXXDsW96ICgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gPGJyPg0KJmd0OyAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7IDxicj4NCiZndDvC
oCDCoCDCoEhpIEp1bGlhbiw8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoFRoYW5rcyBmb3Ig
dGhlIGFuc3dlci48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoFllcywgSSYjMzk7bSB3b3Jr
aW5nIHdpdGggdGhlIEUzMjAuIEkmIzM5O2xsIHRyeSB0byBmb3JjZSB0aGUgJnF1b3Q7X3NldHVw
X2FnYyZxdW90Ozxicj4NCiZndDvCoCDCoCDCoGNvZGUgYXMgeW91IHNhaWQgYW5kIGRlYnVnIGFn
YWluIHRvIHNlZSBpZiBob3BlZnVsbHksIEkgZ2V0IHRoZSBBR0M8YnI+DQomZ3Q7wqAgwqAgwqBj
b25maWd1cmVkLjxicj4NCiZndDvCoCDCoCDCoElmIHNvbWVvbmUgaGFzIGNvbmZpZ3VyZWQgdGhl
IEUzMjAgYmVmb3JlIEkgd2lsbCBhbHNvIGFwcHJlY2lhdGUgYW55PGJyPg0KJmd0O8KgIMKgIMKg
aGVscCBvbiB0aGlzLjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgVGhhbmtzIGFnYWluIGZv
ciB0aGUgaGVscDxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgS2luZCBSZWdhcmRzLDxicj4N
CiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgTWFyaWE8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDC
oEVsIGx1biwgMTIgYWJyIDIwMjEgYSBsYXMgOTo0MywgSnVsaWFuIEFybm9sZDxicj4NCiZndDvC
oCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVs
aXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDsgPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgTWFyaWEsPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBp
dCBqdXN0IGRhd25lZCBvbiBtZSwgdGhhdCB5b3UgYXJlIHdvcmtpbmcgd2l0aCBhbiBlMzIwIG5v
dCBhbiBlMzEwLjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgQWx0aG91Z2ggbW9z
dCBvZiB3aGF0IEkgc2FpZCBzaG91bGQgc3RpbGwgYXBwbHkgKGVzcGVjaWFsbHk8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqBlcnZlcnl0aGluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHJlbGF0ZWQg
dG8gdGhlIChBRDkzNngpKSB0aGluZ3MgbWlnaHQgYmUgYSBsaXR0bGUgYml0IGRpZmZlcmVudC48
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBJJiMzOTttPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZXBl
Y2lhbGx5IHVuc3VyZSBhYm91dCB0aGUgUlBDIHBhcnQsIGhlcmUuPGJyPg0KJmd0OyA8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqBNYXliZSBzb21lb25lIGVsc2UgY2FuIGNoaW1lIGluIHJlZ2FyZGlu
ZyB0aGlzIGFzcGVjdC48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEhvd2V2ZXIs
IEkgdGhpbmsgdGhhdCBgX3NldHVwX2dhaW5fY29udHJvbChmYWxzZSlgIHNob3VsZCBydW48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqByZWdhcmRsZXNzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZHVy
aW5nIGRldmljZSBpbml0LiBTbyB5b3Ugc2hvdWxkIHNlZSBzb21lIGxvZ2dpbmcgb3V0cHV0IHRo
ZXJlLjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSWYgX3NldHVwX2FnYygpIGlz
IG5vdCBiZWVpbmcgY2FsbGVkIHlvdSBjb3VsZCB0cnkgdG8gZm9yY2UgdGhlPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgQUdDIG9uLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGp1c3QgZm9yIHZlcmlm
aWNhdGlvbiBwdXJwb3NlcywgYnkgY2hhbmdpbmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBgX3Nl
dHVwX2dhaW5fY29udHJvbChmYWxzZSlgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdG8gYF9zZXR1
cF9nYWluX2NvbnRyb2wodHJ1ZSlgIGluIGBpbml0aWFsaXplKClgIGFuZDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoGBzZXRfY2xvY2tfcmF0ZSgpYC48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7IDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoE9uIDQvOS8yMSAzOjM0IFBNLCBKdWxpYW4gQXJub2xkIHdy
b3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IE1hcmlhLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgdGhlIHByb3BlcnRpZXMg
eW91IHdhbnQgdG8gY2hhbmdlIChtaW4vbWF4IHRocmVzaG9sZHMpIGFyZTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoG5vdCBleHBvc2VkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgdmlhIHRo
ZSBwcm9wZXJ0eSB0cmVlLiBPbmx5IHRoZSBtb2RlIGlzIChzbG93IG9yIGZhc3QpLjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEhvd2V2ZXIsIHRoZSBzYW1lIGNvZGUgdGhhdCBjb25maWd1
cmVzIHRoZSBBR0MgdGhhdCB3b3JrZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmb3IgbWUgb24g
dGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgQjIxMCBzaG91bGQgcnVuIG9uIHRoZSBF
MzEwLiBUaGUgUlBDIGNsaWVudCBzaG91bGQgbm90IGJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
aW52b2x2ZWQgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyB0aGF0IGNhc2UgKGFsdGhv
dWdoIEnigJltIG5vdCBzdXJlIGFib3V0IHRoYXQpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSGF2ZSB5b3UgdHJpZWQgYXBwbHlpbmcg
bXkgcGF0Y2ggZGlyZWN0bHkgKEkgaGFkIHNsaWdodGx5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
bW9kaWZpZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyByZWdpc3RlciB2YWx1ZXMpLjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
QWxzbywgY291bGQgeW91IHRyeSBydW5uaW5nIHlvdXIgY29kZSBkaXJlY3RseSBvbiB0aGUgRTMx
MDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoChieXBhc3Npbmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyBuZXR3b3JrZWQtbW9kZSkgdG8gc2VlIGlmIHRoYXQgbWFrZXMgYSBkaWZmZXJlbmNl
Pzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsgQ2hlZXJzLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEp1bGlhbjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyBKdWxpYW4gQXJub2xkLCBNLlNjPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgQW0gMDkuMDQuMjAy
MSB1bSAwOTo0OCBzY2hyaWViIE1hcmlhIE11w7Fvejxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZs
dDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFt
dWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDs6
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7IO+7vzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyBIaSBKdWxpYW4s
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7IFNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSBhbmQgdGhhbmtzIGZvciB0aGUgYW5z
d2VyLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0OyBJIGhhdmUgYmVlbiBkZWJ1Z2dpbmcgdGhlIGNvbmZpZ3VyYXRpb24gcHJp
bnRpbmcgdGhlIGVudHJpZXMgb2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgJnF1
b3Q7c2V0X2FnYyZxdW90OyB0aGF0IEkgaGF2ZSBmb3VuZCBvbiBjcHAvcHkgZmlsZXMgaW4gdGhl
IHVoZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGRyaXZlciBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDsgZXR0dXMgcmVwb3NpdG9yaWVzLCBhbmQgSSBjYW4gY29uZmlybSB0aGF0
IHRoZSBjb2RlIGlzIG5vdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGdldHRpbmcgdG88YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgdGhlIGFkOTM2MV9kZXZpY2UuY3BwIGFzIEkgdGhv
dWdodCBpbiB0aGUgYmVnaW5uaW5nLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyBJZiBJIGdvIHRocm91Z2ggdGhlIGNvZGUg
ZnJvbSBteSBweXRob24gc2NyaXB0IHRvIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0OyBhZDkzNjFfZGV2aWNlLmNwcCBjb25maWd1cmF0aW9uIGZpbGUgSSBzZWUgdGhlIGZvbGxv
d2luZzo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCogVGhlIHB5dGhvbiBzY3JpcHRzIGNhbGxzIGZvcjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoGV0dHVzLnJmbm9jX3J4X3JhZGlvLnNldF9hZ2MgbWV0aG9kLDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgd2hpY2ggaXMgZm91bmQgaW4gZXR0
dXMgcmVwb3NpdG9yeSAoZm9yIHVzcnBfc291cmNlIGlzIG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBnbnVyYWRpby91aGQgbGliKTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgKiBUaGUg
cmZub2NfcnhfcmFkaW8gY2xhc3MgaXMgZGVmaW5lZCBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgZ3ItZXR0dXMvbGliL3Jmbm9jX3J4X3JhZGlvX2ltcGwuaCwgd2hl
cmUgdGhlcmUgaXMgYWxzbzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGEgcG9pbnRlcjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdG8gdGhlIHJhZGlvX2NvbnRyb2wgY2xh
c3MgZGVmaW5lZDo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoC9jbGFzcyByZm5vY19yeF9yYWRpb19p
bXBsIDogcHVibGljIHJmbm9jX3J4X3JhZGlvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqB7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqBwdWJsaWM6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcmZub2NfcnhfcmFkaW9faW1wbCg6OnVo
ZDo6Ly9yZm5vYzo6bm9jX2Jsb2NrX2Jhc2U6OnNwdHI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoGJsb2NrX3JlZik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB+cmZub2NfcnhfcmFkaW9faW1wbCgpOzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgLyoqKiBBUEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCoqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKi8vKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLy8qKioq
Ki88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRv
dWJsZSBzZXRfcmF0ZShjb25zdCBkb3VibGUgcmF0ZSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9hbnRlbm5hKGNvbnN0IHN0ZDo6
c3RyaW5nJmFtcDsgYW50ZW5uYSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBjb25zdCBzaXplX3Q8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoGNoYW4pOzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgZG91YmxlIHNl
dF9mcmVxdWVuY3koY29uc3QgZG91YmxlIGZyZXF1ZW5jeSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBjb25zdCBzaXplX3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoGNoYW4pOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
wqAgwqAgdm9pZCBzZXRfdHVuZV9hcmdzKGNvbnN0IDo6dWhkOjpkZXZpY2VfYWRkcl90JmFtcDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhcmdzLCBjb25zdDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgc2l6ZV90IGNoYW4pOzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgZG91YmxlIHNldF9nYWluKGNvbnN0IGRv
dWJsZSBnYWluLCBjb25zdCBzaXplX3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBjaGFuKTs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRvdWJsZSBz
ZXRfZ2Fpbihjb25zdCBkb3VibGUgZ2FpbiwgY29uc3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBz
dGQ6OnN0cmluZyZhbXA7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqBuYW1lLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9hZ2MoY29uc3QgYm9vbCBlbmFibGUs
IGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0X2dhaW5fcHJvZmlsZShjb25zdCBzdGQ6OnN0cmluZyZh
bXA7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcHJvZmlsZSwgY29uc3Q8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRvdWJsZSBzZXRfYmFuZHdp
ZHRoKGNvbnN0IGRvdWJsZSBiYW5kd2lkdGgsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgY29uc3Qg
c2l6ZV90PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBjaGFu
KTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZv
aWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHNl
dF9sb19zb3VyY2UoY29uc3Qgc3RkOjpzdHJpbmcmYW1wOyBzb3VyY2UsIGNvbnN0PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBzdGQ6OnN0cmluZyZhbXA7IG5h
bWUsIGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoMKgIMKgIHNldF9sb19leHBvcnRfZW5hYmxlZChjb25zdCBib29sIGVuYWJs
ZWQsIGNvbnN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBz
dGQ6OnN0cmluZyZhbXA7IG5hbWUsIGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRvdWJsZSBzZXRfbG9fZnJlcShj
b25zdCBkb3VibGUgZnJlcSwgY29uc3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBzdGQ6OnN0cmlu
ZyZhbXA7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBuYW1l
LCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9kY19vZmZzZXQoY29uc3QgYm9vbCBlbmFibGUsIGNv
bnN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgc2l6ZV90IGNoYW4pOzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfZGNfb2Zmc2V0KGNv
bnN0IHN0ZDo6Y29tcGxleCZsdDtkb3VibGUmZ3Q7JmFtcDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBvZmZzZXQsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBj
b25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqDCoCDCoCB2b2lkIHNldF9pcV9iYWxhbmNlKGNvbnN0IGJvb2wgZW5hYmxlLCBjb25z
dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0X2lxX2JhbGFuY2UoY29u
c3Qgc3RkOjpjb21wbGV4Jmx0O2RvdWJsZSZndDsmYW1wOzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgY29ycmVjdGlvbiwgY29uc3Qgc2l6ZV90IGNoYW4pOzxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgcHJpdmF0ZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIDo6dWhkOjpyZm5vYzo6cmFkaW9fY29udHJvbDo6Ly9z
cHRyIGRfcmFkaW9fcmVmOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgfTsvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAqIEluIGdyLWV0dHVzL2xpYi9yZm5vY19yeF9yYWRpb19p
bXBsLmNwcCB3aGVuIHNldF9hZ2M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBjb21tYW5kIGlzPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqByZWNlaXZlZCwgaXQgcmV0dXJu
cyBhIGNhbGwgdG8gdGhlIHBvaW50ZXIgSSBtZW50aW9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
YmVmb3JlLCBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRoZXJl
Zm9yZSwgdG8gdGhlIHJhZGlvX2NvbnRyb2wgY2xhc3M6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAv
dm9pZCByZm5vY19yeF9yYWRpb19pbXBsOjpzZXRfYWdjKC8vY29uc3QgYm9vbDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGVuYWJsZSwgY29uc3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgwqAgwqAgcmV0dXJuIGRfcmFkaW9fcmVmLSZndDtzZXRfcnhfYWdjKC8vZW5hYmxl
LCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoH0v
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAqIFRoZSByYWRpb19jb250cm9sIGNsYXNzIGlzIGZvdW5kIGluIHRoZSBV
SEQgZHJpdmVyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcmVwb3NpdG9yeSBpbjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdWhkL2hvc3QvaW5jbHVkZS91aGQvcmZub2Mv
cmFkaW9fY29udHJvbC5ocHAgd2hpY2ggaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB2aXJ0dWFs
bHk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGltcGxlbWVudGVkIGFz
IHJhZGlvX2NvbnRyb2xfaW1wbCBjbGFzcyBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgZTN4eF9yYWRpb19jb250cm9sX2ltcGwuY3BwIChob3N0L2xpYi91c3JwL2Jv
YXJkL2UzeHgpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAqIFRoaXMgZmls
ZSBjYWxscyB0byB0aGUgYWQ5MzYxX2N0cmwgY2xhc3Mgd2hpY2ggaXM8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqBpbXBsZW1lbnRlZCBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgZTN4eF9hZDkzNjFfaWZhY2UuY3BwIChob3N0L2xpYi91c3JwL2JvYXJkL2UzeHgpPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAqIEF0IHRoaXMgcG9pbnQsIHRoZXJl
IGlzIGEgY2FsbCBmb3IgdGhlIHJwY19jbGllbnQgd2hlcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBJIGdldCBraW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBvZiBs
b3N0IGFib3V0IGhvdyB0byBjaGFuZ2UgdGhlIHJlZ2lzdGVycyB0aGlzIHdheTo8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoC92b2lkIHNldF9h
Z2MoY29uc3Qgc3RkOjpzdHJpbmcmYW1wOyB3aGljaCwgYm9vbCBlbmFibGUpPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqB7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBfcnBjYy0mZ3Q7cmVxdWVzdF93aXRoX3Rva2VuJmx0
O3ZvaWQmZ3Q7KHRoaXMtJmd0O19ycGNfcHJlZml4ICs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
cXVvdDtzZXRfYWdjJnF1b3Q7LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgd2hpY2gsIGVuYWJsZSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqB9Lzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyBUbyBiZSBicmllZjo8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCogV2hlbiBkZWJ1Z2dpbmcgSSBjYW4mIzM5O3Qgc2VlIHRoYXQgbXkgY29kZSBnZXRzIHRv
IHRoZSBvbmx5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBjb25maWd1
cmF0aW9uIGZpbGUgSSBmb3VuZCB3aGljaCBpcyB0aGUgYWQ5MzYxX2RldmljZS5jcHA8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCogVGhlIHNldF9hZ2MgY29tbWFuZCBzZWVt
cyB0byBiZSBtYW5hZ2UgdGhyb3VnaCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBycGNfY2xp
ZW50IChJPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB0aGluayB0aGlz
IGlzIHJlbGF0ZWQgdG8gdGhlIG1vZHVsZSBwZXJpcGhlcmFsIG1hbmFnZXI8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqB3aGljaCBpcyBhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmcXVvdDtsYXllciBvZiBjb250cm9sIHRoYXQgVUhEIHVzZXMgdG8gYWNjZXNzLCBjb25m
aWd1cmUgYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgY29udHJvbDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdGhlIGhhcmR3YXJlJnF1b3Q7LCA8YSBocmVmPSJodHRw
czovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9tcG0uaHRtbCIgcmVsPSJub3JlZmVycmVy
IiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfbXBt
Lmh0bWw8L2E+KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgKiBJbnNpZGUg
dGhlIGNvZGUsIGluIG11bHRpX3VzcnAgZmlsZXMgdGhlcmUgaXMgYSBjb21tZW50PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgdGhhdCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoHNwZWNpZmljIGNvbmZpZ3VyYXRpb24gb2YgdGhlIEFHQyBpcyBzZXQgaW4gdGhlPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgcHJvcGVydHlfdHJlZSBidXQ8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoEkgZG9uJiMzOTt0IGtub3cgaG93IHRvIHdyaXRlIHRoZSBj
b25maWd1cmF0aW9uIHJlZ2lzdGVycyBvZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRoZSBhZ2M8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRocm91Z2ggdGhlIHByb3Bl
cnR5X3RyZWUuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7IFNvIG15
IHF1ZXN0aW9ucyBoZXJlIGFyZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCAxLiBIb3cgY2FuIEkgc2V0IHRoZSBjb25m
aWd1cmF0aW9uIHJlZ2lzdGVycyBvZiB0aGUgQUdDLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRo
cm91Z2ggdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBNUE0gb3Ig
dGhlIHByb3BlcnR5IHRyZWU/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgMi4g
QXJlIHRoZXJlIGV4YW1wbGVzIG9uIGhvdyBJIGNhbiBzZXQgdGhlc2UgcmVnaXN0ZXJzPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgdGhyb3VnaCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoE1QTSBvciB0aGUgcHJvcGVydHlfdHJlZT88YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgS2luZCBSZWdhcmRzLDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyBNYXJpYTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0OyBFbCBtacOpLCAyNCBtYXIgMjAyMSBhIGxhcyAxMToyMCwgSnVsaWFuIEFybm9sZDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyAoJmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7
Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgTWFyaWEsPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB0
aGF0IHNvdW5kcyBhYm91dCByaWdodCE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoEhvd2V2ZXIsIHRvIG1ha2UgYWJzb2x1dGVseSBzdXJlIEdOVSBSYWRpbyBwaWNrcyB1
cCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBtb2RpZmllZDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgbGlidWhkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqB5b3UgY291bGQgYWRkIGEgcHJpbnQgc3RhdGVtZW50IHNvbWV3aGVyZSBpbiB5
b3VyIFVIRCBjb2RlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgWW91
IGNvdWxkIGFsc28gY29tcGFyZSB5b3VyIFVIRCBpbnN0YWxsIHByZWZpeCB0byB0aGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqBwYXRoIGdyLXVoZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgdXNlcyBmb3IgbGlua2luZyBsaWJ1aGQuPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBCZWxv
dyBpcyB0aGUgcGF0Y2ggSSB1c2VkIGZvciBteSB0ZXN0czo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGRpZmYg
LS1naXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhL2hvc3QvbGliL3VzcnAvY29tbW9uL2FkOTM2
MV9kcml2ZXIvYWQ5MzYxX2RldmljZS5jcHA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoGIvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2
aWNlLmNwcDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgaW5kZXggOWUw
ODg4NzFkLi4wZTViYzg2YzUgMTAwNjQ0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAtLS0gYS9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFfZHJpdmVyL2FkOTM2MV9k
ZXZpY2UuY3BwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqArKysgYi9o
b3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFfZHJpdmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBAQCAtMTA4OSw3ICsxMDg5LDcgQEAg
dm9pZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYWQ5MzYxX2Rldmlj
ZV90Ojpfc2V0dXBfZ2Fpbl9jb250cm9sKGJvb2wgYWdjKTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDBG
RCwgMHg0Qyk7IC8vIE1heCBGdWxsL0xNVDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEdhaW48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoFRhYmxlIEluZGV4PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2Ut
Jmd0O3Bva2U4KDB4MEZFLCAweDQ0KTsgLy8gRGVjciBTdGVwPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgU2l6ZSwgUGVhazxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgT3Zl
cmxvYWQgVGltZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAg
wqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwMCwgMHg2Rik7IC8vIE1heCBEaWdpdGFs
IEdhaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoC3CoCDCoCDCoCDC
oCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTAxLCAweDBBKTsgLy8gTWF4IERpZ2l0YWwgR2Fpbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgK8KgIMKgIMKgIMKgIF9pb19p
ZmFjZS0mZ3Q7cG9rZTgoMHgxMDEsIDB4MDIpOyAvLyBNYXggRGlnaXRhbCBHYWluPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2Ut
Jmd0O3Bva2U4KDB4MTAzLCAweDA4KTsgLy8gTWF4IERpZ2l0YWwgR2Fpbjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtw
b2tlOCgweDEwNCwgMHgyRik7IC8vIEFEQyBTbWFsbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE92
ZXJsb2FkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBUaHJlc2hvbGQ8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9p
b19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDUsIDB4M0EpOyAvLyBBREMgTGFyZ2U8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBPdmVybG9hZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgVGhyZXNob2xkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBAQCAt
MTA5OCwxNCArMTA5OCwxNCBAQCB2b2lkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqBhZDkzNjFfZGV2aWNlX3Q6Ol9zZXR1cF9nYWluX2NvbnRyb2woYm9vbCBhZ2MpPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9f
aWZhY2UtJmd0O3Bva2U4KDB4MTA4LCAweDMxKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMTEsIDB4
MEEpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAg
wqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDExQSwgMHgxQyk7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAtwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEy
MCwgMHgwQyk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqArwqAgwqAg
wqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyMCwgMHgwNCk7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4
KDB4MTIxLCAweDQ0KTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKg
IMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjIsIDB4NDQpOzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZn
dDtwb2tlOCgweDEyMywgMHgxMSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTI0LCAweEY1KTs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19p
ZmFjZS0mZ3Q7cG9rZTgoMHgxMjUsIDB4M0IpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyOCwgMHgw
Myk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAtwqAgwqAgwqAgwqAg
X2lvX2lmYWNlLSZndDtwb2tlOCgweDEyOSwgMHg1Nik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqArwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyOSwg
MHgxMSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDC
oCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTJBLCAweDIyKTs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIH0gZWxzZSB7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4
KDB4MEZBLCAweEUwKTsgLy8gR2FpbiBDb250cm9sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgTW9k
ZSBTZWxlY3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oENoZWVycyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEp1bGlhbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgT24gMy8yNC8yMSA5OjU5IEFNLCBNYXJpYSBNdcOxb3ogd3JvdGU6PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEhpIEp1bGlhbiw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDsgSSBoYXZlIHRoZSBjaGFuY2UgdG8gdGVzdCB0
aGUgQUdDIHdpdGggYSBCMjEwIGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHBlcmZvcm0gdGhl
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBzYW1lIGdyYXBoPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IGFzIHlvdSBzZW5kIG1lIGJ1
dCBJIGFtIHVuYWJsZSB0byBzZWUgd2hhdCB5b3Ugc2F3IHNvPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgSSB0aGluayBJJiMzOTttPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7IG1pc3Npbmcgc29tZXRoaW5nLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0OyBJIGFsc28gaGF2ZSBVSEQgNC4wIGFuZCBHTlVSYWRpbyAzLjggKGluc3Rh
bGxlZCBieTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNvdXJjZSkuPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7IFRoZSBzdGVwcyBJIHRha2UgYXJlIHRoZXNlOjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgKiBGaXJzdCwgSSBjaGFuZ2UgdGhlIGFkOTM2MV9kZXZp
Y2UuY3BwIHRoYXQgaXMgaW4gdWhkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqByZXBvc2l0b3J5IGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAvL3VoZC9ob3N0L2xpYi91c3Jw
L2NvbW1vbi9hZDkzNjFfZHJpdmVyL2FkOTM2MV9kZXZpY2UuY3BwLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgcmVnaXN0ZXJzIDB4MTAxLCAweDEy
MCwgMHgxMjksIDB4MTIzIGFuZCAweDEyQS4vPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAqIFRoZW4sIEkgZG8gJnF1b3Q7bWFrZSZxdW90OyBhbmQgJnF1
b3Q7bWFrZSBpbnN0YWxsJnF1b3Q7IHRvIGNvbXBpbGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0
aGUgY2hhbmdlcyBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgYnVpbGQtaG9zdCBmb2xkZXIuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAqIEFmdGVywqB0aGF0LCBJIGdlbmVyYXRlIHRoZSBweXRob24g
c2NyaXB0IGZvciB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBHUkMgZmxvdzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgZ3JhcGggYW5kPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBtb3ZlIHRoZSAmcXVvdDtzZXRfYWdj
JnF1b3Q7IGNvbW1hbmQgYWZ0ZXIgdGhlICZxdW90O3NldF9yYXRlJnF1b3Q7IG9uZS48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCogRmluYWxseSwgSSBy
dW4gdGhlIHB5dGhvbi48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDsgSSBjYW4mIzM5
O3Qgc2VlIG15IHdhdmVmb3JtIGJldHdlZW4gdGhlIHZhbHVlcyBJIHNldC4gSXMgdGhlcmU8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHNvbWV0aGluZzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0OyB3cm9uZyB3aXRoIHRob3NlIHN0ZXBz
PyBEaWQgeW91IGRvIGFueXRoaW5nIGVsc2U/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7IEtpbmfCoFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IE1hcmlh
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IC88YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDsgLzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
OyBFbCBtYXIsIDIzIG1hciAyMDIxIGEgbGFzIDk6MjMsIE1hcmlhIE11w7Fvejxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwu
Y29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtp
OTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJA
Z21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBIaSBKdWxpYW4sPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBUaGFua3MgZm9yIHRoZSBjaGVja2luZyE8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoEkgaGF2ZSBhbHNvIGNoZWNrZWQgbXkg
Z3JhcGggYW5kIHNhbXBfcmF0ZSBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNldHRpbmcgZmly
c3QsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBzbyBJJiMzOTtsbDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgdHJ5IHRv
IHRlc3QgaXQgd2l0aCBhIHNpbmUgd2F2ZWZvcm0gYXMgeW91PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgc3VnZ2VzdGVkIGFuZCBzZWU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoGlmIHRoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoHdvcmtzLiBJZiBub3QsIG1heWJlIGlzIGFuIFJGTm9DL2dyLWV0dHVzIHByb2JsZW0u
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSSYjMzk7bGwgcHV0PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBhbiBpc3N1ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgaW4gdGhlIGdyLWV0dHVzIHJlcG9zaXRvcnkgaW4gdGhh
dCBjYXNlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgVGhhbmtzIGFn
YWluIGZvciB5b3VyIGhlbHAuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBN
YXJpYS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoEVsIG1hciwgMjMg
bWFyIDIwMjEgYSBsYXMgMDozNiwgSnVsaWFuIEFybm9sZDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgZXNjcmliacOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgTWFyaWEsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqBJIGNvdWxkbiYjMzk7dCByZXNpc3QgdHJ5aW5nIHRoaXMgbXlzZWxmLCBhcyB5b3Vy
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBtb2RpZmljYXRpb25zIHNl
ZW1lZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgcmVhc29uYWJsZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoFNvIEkgZGlkIHNldCB1cCBhIHNpbXBsZSB0ZXN0IHdpdGggYSBiMjEwPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgY29ubmVjdGVkIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqBteSBzaWdnZW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGZlZWRpbmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGl0IHdpdGggYSB0b25lIG9mIHZhcnlpbmcg
cG93ZXIgYXQgMi40MTAyR0h6Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgRm9yIHRoZSBkZWZhdWx0IFVIRCBBR0Mgc2V0dGluZ3MgSSBjb3VsZDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoGNvbmZpcm0gdGhhdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgdGhlIHNpZ25hbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgd2FzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBrZXB0IGJldHdlZW4gLTEwIGRCRlMgYW5kIC0x
MiBkQkZTICgyMCAqPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgbG9nMTAofHh8KSBvdmVyIGE8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHBy
ZXR0eSB3aWRlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBpbnB1dCBwb3dlciByYW5nZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFRoaXMgd2FzIHVzaW5nIEdSIDMuOCBhbmQg
VUhEIDQuMC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEhv
d2V2ZXIsIEkgaGFkIHRvIG1vZGlmeSB0aGUgZ2VuZXJhdGUgZmxvdy1ncmFwaDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgc2xpZ2h0bHksIGFzPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgQUdDPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3YXMg
ZW5hYmxlcyBiZWZvcmUgdGhlIHNhbXBsZS1yYXRlIHdhcyBzZXQ8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAobWF5YmUgZG91YmxlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqBjaGVjazxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgdGhhdCwgdG9vKS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoEFmdGVyd2FyZHMsIEkgdXNlZCB5b3VyIHNldHRpbmdzIChJIGRpZCBjaGFuZ2U8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqByZWcgMHgxMjk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoHRvIDB4MTE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCgxZEI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCstKSwgdGhvdWdoKS48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEFsc28gdGhvc2Ug
c2V0dGluZ3Mgd29ya2VkIGFzIGV4cGVjdGVkIGFuZCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBzaWduYWw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHdhcyBuaWNl
bHk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoGtlcHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoGJldHdlZW4gLTIgZEJGUyBhbmQgLTQgZEJGUy48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEF0dGFjaGVkIGlzIGEgcGljdHVyZSBvZiB0aGUg
Zmxvdy1ncmFwaCBJIHVzZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmb3IgdGVzdGluZy48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoE1h
eWJlIHlvdTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgY291bGQgYWxzbyBzdGFydCBieSB0ZXN0aW5nIHdpdGggYSBzaW5lIHdhdmUgdG88
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHZlcmlmeWluZyB0aGF0IHlv
dXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoHZhbHVlcyBnZXQgYXBwbGllZCBwcm9wZXJseS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEp1bGlhbjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgT24gMy8yMi8yMSA2OjIxIFBNLCBNYXJpYSBNdcOx
b3ogd3JvdGU6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgU3VyZS48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyBJIGFtIHJlY2VpdmluZyBhIFFQU0sgdGhyb3VnaCB0aGUgcmFkaW8gYW5kPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBwbG90dGluZ8KgaXQgaW4gYTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgUVQgZ3Jh
cGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7IChzZWUgZ3JjLnBuZyk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IElmIEkgaGF2ZSBBR0MgZGlzYWJsZSwgSSBn
ZXQgd2hhdCBpcyBzaG93biBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgJnF1b3Q7dGVzdF93aXRob3V0X2FnYy5wbmcmcXVvdDssPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyB0aGVuIGlmIEkgZW5hYmxlIGl0LCBJIHNlZSB3aGF0IGlzIG9uPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmcXVvdDt0ZXN0X3dpdGhfYWdjLnBuZyZxdW90OyB3
aGVyZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsgJnF1b3Q7UXVhZHJhdHVyZSZxdW90OyBpcyBhbHdheXMgY2VudGVyIG1vcmUg
b3IgbGVzczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGluIDAuMjUgd2hpY2g8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1pZ2h0IGZpdCB3
aXRoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyB0aGUgdmFsdWVzIGdpdmVuIGJ5IGRlZmF1bHQgKGlubmVyIGhpZ2g8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqB0aHJlc2hvbGQgPTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgLTEyZEJGUyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGlubmVyIGxvdzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgdGhyZXNob2xkID0gLTEwIGRC
RlMpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7IElmIEkgY2hhbmdlIHRoZSBhZDkzNjFfZGV2aWNlLmNwcDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoChhdHRhY2hlZCkgZnJvbTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgbGluZSAxMDg1LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgYnkgY2hhbmdpbmc8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHJlZ2lzdGVy
cyAweDEwMSwgMHgxMjAgYW5kIDB4MTI5IHdpdGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB2YWx1
ZXMgMHgwMiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoDB4MDQgYW5k
IDB4MTY8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IHJlc3BlY3RpdmVseSB0byBtb3ZlIGJldHdlZW4gLTJkYkZTIGFuZCAtNDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoGRCRlMswqAgSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgc2VlIHRoZSBzYW1lPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyB3YXZlZm9ybSB0aGF0IEkgaGF2ZSBp
biAmcXVvdDt0ZXN0X3dpdGhfYWdjLnBuZyZxdW90Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoChJ
IGV4cGVjdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgaXQgdG88YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGJl
IGFyb3VuZCAwLjcpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgS2luZCByZWdhcmRzLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IE1h
cmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsgRWwgbHVuLCAyMiBtYXIgMjAyMSBhIGxhcyAxNzo0NSwgSnVsaWFu
IEFybm9sZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIg
dGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0
OykgZXNjcmliacOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgd291bGQgeW91IG1pbmQgc2hhcmluZyB5b3VyIHBhdGNoPzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoE90aGVyd2lzZSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oGl04oCZcyBoYXJkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqB0byB0ZWxsIHdoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBleGFjdGx5IGlzIGdvaW5n
IG9uLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgSnVsaWFuPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBBbSAyMi4wMy4yMDIxIHVtIDE2OjI0IHNjaHJpZWIgTWFy
aWEgTXXDsW96PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFt
dWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZn
dDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11
a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdt
YWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21h
aWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11
a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5j
b208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5
MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0Ozo8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqDvu788YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgSGkgSnVsaWFuLDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoEkgcmUtb3BlbiB0aGlzIHRvcGljIHRvIGFzayBhIHF1ZXN0
aW9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYWJvdXQgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjb25maWd1cmF0aW9uIG9mPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoHRoZSBhZDkzNjEgcmVnaXN0ZXJzIGluIEdOVXJhZGlvL1JGTm9DPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgQXMgSSB1bmRlcnN0YW5kLCB3aGVuIEFHQyBpczxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoGVuYWJsZWTCoGluIHNsb3c8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoG1vZGUsIHRoZXJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBhcmUgNDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqBjb25maWd1cmFibGUgdGhyZXNob2xkcyAoaW5uZXIgbG93LDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoGlubmVyIGhpZ2gsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBvdXRlcsKgbG93LCBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgb3V0ZXLC
oGhpZ2gpIGFuZCBhbHNvIDQgY29uZmlndXJhYmxlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgc3Rl
cHMgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHJlYWNoIHRoZSB6
b25lPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoGJldHdlZW7CoHRoZSBpbm5lciB0aHJlc2hvbGRzLjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEkgaGF2ZSBmb3VuZCB0aGUgY29uZmlndXJhdGlvbiBv
Zjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRoZXNlIHJlZ2lzdGVyczxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqDCoGluwqAvdWhkL2hvc3QvbGliL3VzcnAvY29tbW9uL2FkOTM2MV9kcml2ZXIvYWQ5MzYxX2Rl
dmljZS5jcHA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYW5kwqBjaGFuZ2VkIHRoZWlyIHZhbHVlcyB0aGVy
ZS4gVGhlbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBJIGhhdmU8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoHJlY29tcGlsZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHVoZCAobWFrZTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmYW1wOyBtYWtlIGluc3RhbGwpIGJ1dCwgd2hlbiBJIHJlLXJ1biBteTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGdyYXBoIEkgc2VlIG5vPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjaGFuZ2UgaW4gbXk8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgd2F2ZWZvcm0gKGl0IHNlZW0gdG8gc3RheSBpbiB0aGUgc2FtZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoGxpbWl0cyBhczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
dGhlIGRlZmF1bHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY29uZmlndXJhdGlvbikuPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgQW0gSSBtaXNzaW5nwqBhbnnCoG90aGVywqBzdGVwIHRoYXQgSTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoGhhdmUgdG8gZG9uZcKgdG88YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvbmZpZ3VyZSB0aGVzZTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqBwYXJhbWV0ZXJzPzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBNYXJpYTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoEVsIHZpZSwgMTIgbWFyIDIwMjEgYSBsYXMgMTA6MDQsIE1h
cmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgTXXDsW96PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzpt
YW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtp
OTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTky
QGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFp
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29t
IiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4g
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFp
bC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29t
PC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBPayBKdWxpYW4sIEkgd2lsbCBjaGVjayB0aGUgdHJl
ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoG5vZGUgYW5kIHRyeSB0bzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgbW9kaWZ5IHRoZTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqBwcm9wZXJ0aWVzLiBUaGFua3MgYWdhaW4gZm9yIHRoZSBoZWxw
ITxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoEtpbmQgUmVnYXJkcyw8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgTWFyaWE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqBFbCBqdWUsIDExIG1hciAyMDIxIGEgbGFzIDE4OjI2LDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIg
dGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2Js
YW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0i
X2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9h
Pjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
PC9hPiZndDsmZ3Q7Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVj
b2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4m
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIg
dGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9y
ZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7
Jmd0OyZndDspPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgL3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9f
MC5zZXRfcnhfYWdjKEZhbHNlLCAwKS88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgYnV0IEkgaGF2ZSBy
ZWNlaXZlZCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmb2xsb3dpbmc8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGVycm9yVGhhdCYjMzk7czxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgd2h5IEk8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2F2ZSB0aGUgcmVmZXJlbmNlIChbMV0pPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgc2hvd2luZyB0aGUgY29ycmVjdDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgc3ludGF4IDspPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoEFueXdheXMsIGdsYWQgaXQgd29ya2VkIG91dDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGZvciB5b3UhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFlvdSBt
aWdodCBjb25zaWRlciBmaWxpbmcgYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGJ1ZyBpc3N1ZTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYWdhaW5zdDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZ3ItZXR0dXMg
b248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2l0aHViLjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IEJ5IHRoZSB3YXksIEkgaGF2ZSByZWFk
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdGhhdCB0aGVyZSBhcmU8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHNldmVyYWwgbW9kZXM8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZm9yIEFHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7Jmd0OyAoZmFzdCxzbG93LGh5YnJpZC4uKSBJIHdhczxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoHdvbmRlcmluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgd2hpY2g8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoHR5cGUgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgaW1wbGVtZW50
ZWQgYnk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgZGVmYXVsdCBhbmQg
aWYgaXQgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBwb3NzaWJsZSB0bzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY2hhbmdlIEFHQzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgbW9kZSBpbiB0aGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZmxvd2dyYXBoLjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBUaG9zZSBtb2RlcyB3ZXJlIG1haW5seTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGRp
Y3RhdGVkIGJ5IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgQUQ5
MzYxLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgRGVmYXVsdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzaG91bGQgYmU8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7c2xvdyZxdW90Oy4gVGhlICZxdW90O2h5
YnJpZCZxdW90OyBtb2RlIGlzIG5vdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgaW1wbGVtZW50ZWQgYXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGZhciBhcyBJIGtub3cuPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoFdoaWNoIG1vZGUgeW91IHdhbnQgKCZxdW90O3Nsb3cmcXVvdDsgLzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCZxdW90O2Zhc3QmcXVvdDspPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqBkZXBlbmRzIG9uIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqBzaWduYWwgeW91IHdhbnQgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgcmVj
ZWl2ZS4gRm9yIGJ1cnN0LW1vZGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBkaWdpdGFsIHNpZ25h
bHMgeW91PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqBtaWdodCB3YW50IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHN3aXRj
aCB0byB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7ZmFzdCZxdW90OyBt
b2RlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBIb3dldmVyLCBJIHRoaW5rIHRoaXMg
aXMgb25seTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHBvc3NpYmxlIGJ5PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaXJlY3RseSB3cml0
aW5nPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRvIHRoZSBjb3JyZXNwb25kaW5nPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgcHJvcGVydHktdHJlZSBub2RlLjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgQWdhaW4sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBJJiMzOTttIG5vdDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBzdXJlIGFib3V0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oFVIRC00LjAvZ3ItZXR0dXMgdGhvdWdoLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSnVsaWFuPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBPbiAzLzEx
LzIxIDU6MjYgUE0sIE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgTXXDsW96IHdyb3RlOjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEhpIEp1bGlhbiw8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
IEkgaGF2ZSBpbml0aWFsbHkgY2hhbmdlZCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBweXRo
b248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGdlbmVyYXRlZDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZm9y
IG15PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaCB3aXRoIHRoaXM8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBsaW5lOjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoC9zZWxmLmV0dHVzX3Jmbm9jX3J4X3Jh
ZGlvXzAuc2V0X3J4X2FnYyhGYWxzZSwgMCkvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBidXQgSSBoYXZlIHJlY2Vp
dmVkIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGZvbGxvd2luZyBlcnJvcjo8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7IFQvcmFjZWJhY2sgKG1vc3QgcmVjZW50IGNhbGw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBs
YXN0KTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZpbGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZxdW90O2NvbnN0ZWxsYXRpb25fc29m
dF9kZWNvZGVyLnB5JnF1b3Q7LCBsaW5lPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAzMDEsIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZsdDttb2R1bGUmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCBtYWluKCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZp
bGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZxdW90O2NvbnN0ZWxs
YXRpb25fc29mdF9kZWNvZGVyLnB5JnF1b3Q7LCBsaW5lPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAyNzcsIGluIG1haW48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIHRiID0gdG9wX2Jsb2NrX2NscygpPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCBGaWxlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmcXVvdDtjb25zdGVsbGF0aW9uX3NvZnRfZGVjb2Rl
ci5weSZxdW90OywgbGluZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgMTY2LCBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBf
X2luaXRfXzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jm
bm9jX3J4X3JhZGlvXzAuc2V0X3J4X2FnYyhUcnVlLCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7IEF0dHJpYnV0ZUVycm9yOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCYjMzk7
cmZub2NfcnhfcmFkaW9fc3B0ciYjMzk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqBvYmplY3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoGhhcyBubzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBhdHRy
aWJ1dGUgJiMzOTtzZXRfcnhfYWdjJiMzOTsvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBCdXQgcmZub2NfcmFkaW9f
aW1wbC5jYzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGRlZmluZXMgaXQ6PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAv
dm9pZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcmZub2NfcnhfcmFk
aW9faW1wbDo6c2V0X2FnYyhjb25zdCBib29sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGUsPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoGNvbnN0IHNpemVfdCBjaGFuKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7IHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIHJldHVy
bjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgZF9yYWRpb19yZWYtJmd0
O3NldF9yeF9hZ2MoZW5hYmxlLCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyB9Lzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgU2VhcmNoaW5nIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oHJmbm9jX3J4X3JhZGlvX3NwdHIgd2l0aDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgZ3JlcDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgdGFrZXMgbWUgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
JnF1b3Q7c3dpZyZxdW90OyBmaWxlcy4gSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7IGhhdmUgbG9va2VkIGF0IGV0dHVzX3N3aWcucHk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBh
bmQgc2Vlbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdGhhdCB0aGU8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oGNvbW1hbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbmFtZSBpcyBzZXRfYWdjPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgaW5zdGVhZCBvZiBzZXRfcnhfYWdjOjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsgL2RlZiBzZXRfYWdjKHNlbGYsIGVuYWJsZTogJnF1b3Q7Ym9vbDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY29uc3QmcXVvdDssIGNoYW46PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmcXVv
dDtzaXplX3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgY29uc3QmcXVvdDspIC0mZ3Q7
ICZxdW90O3ZvaWQmcXVvdDs6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCByJnF1b3Q7JnF1b3Q7JnF1b3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNldF9hZ2MocmZu
b2NfcnhfcmFkaW8gc2VsZiwgYm9vbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY29uc3QgZW5hYmxlLDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBzaXplX3QgY29uc3QgY2hhbik8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgIEVuYWJsZS9kaXNhYmxlIHRoZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoEFHQyBmb3I8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRo
aXMgUlg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoHJhZGlvIChpZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBhdmFpbGFibGUp
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmcXVvdDsm
cXVvdDsmcXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgIHJldHVybjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgX2V0dHVzX3N3aWcucmZub2NfcnhfcmFkaW9fc2V0X2FnYyhzZWxmLDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBlbmFibGUsIGNoYW4pLzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7IC88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAv
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQ2hhbmdpbmcgdGhpcyBpbiB0aGU8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmbG93Z3JhcGgucHkgc2VlbXMgdG88YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdvcmshISBUaGFu
a3M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZm9yIHRoZSBoZWxwIG9uPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgdGhpcyEgSSBwdXQgdGhpcyBpbmZvcm1hdGlvbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoGhlcmUganVzdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgaW4gY2FzZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgc29tZW9uZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqBpcyBzdHVjayBpbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBz
YW1lIHBvaW50Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQnkgdGhlIHdheSwgSSBoYXZlIHJlYWQgdGhhdDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoHRoZXJlIGFyZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgc2V2ZXJhbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgbW9kZXMgZm9yPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoEFHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IChmYXN0LHNsb3csaHli
cmlkLi4pIEkgd2FzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgd29uZGVyaW5nPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB3aGljaCB0eXBlIGlzPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoGltcGxlbWVudGVkIGJ5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsgZGVmYXVsdCBhbmQgaWYgaXQgaXMgcG9zc2libGUgdG88YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNoYW5nZSBBR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1vZGUgaW4gdGhlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEtpbmQgUmVnYXJk
cyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7IE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7IEVsIG1pw6ksIDEwIG1hciAyMDIxIGEgbGFzPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgMTI6MDMsIE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqBNdcOxb3o8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWls
dG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29t
PC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4m
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWls
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdt
YWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFt
dWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwu
Y29tPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJA
Z21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWls
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwu
Y29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5j
b208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9h
Pjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVr
aTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBn
bWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+
bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVr
aTkyQGdtYWlsLmNvbTwvYT4mZ3Q7ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTky
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFp
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Om1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwv
YT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11
a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJA
Z21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5j
b20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11
a2k5MkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0OyZndDspIGVz
Y3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBIaSBKdWxlcyw8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqBUaGFuayB5b3UsIEkgd2lsbCB0cnkgaXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhbmTCoGxl
dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgeW91IGtub3c8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGFzIHNv
b24gYXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgcG9zc2libGUuPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgQnkgdGhlIHdheSwgSSBoYXZlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgY2hlY2tl
ZCB0aGUgcHl0aG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdlbmVyYXRlZMKgdXNp
bmcgdGhlIFVIRCBVU1JQPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oFNPVVJDRSBibG9jayAoaW5zdGVhZCBvZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRoZSBSRk5v
Qzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcmFkaW88YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGJsb2NrKSB3
aXRoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFHQyBhY3RpdmUgYW5kPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoGl0IGdlbmVyYXRlcyB0aGUgc2V0IG9m
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgQUdDIGZpbmUuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqBTbywgYXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHlvdSBzYWlkLDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBpdCBpcyBmaXhlZCBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqBnci11aGQgYnV0IGl0IG1pZ2h0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgc3RpbGwg
YmUgYSBidWcgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoGdyLWV0dHVzLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoFRoYW5rcyBhZ2FpbiBm
b3IgdGhlIGhlbHAhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgS2luZCBSZWdhcmRzLDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgRWwgbWnDqSwgMTAgbWFyIDIwMjEg
YTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGxhcyAxMToyNSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9i
bGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0
OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVj
b2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIg
dGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9y
ZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0OyZndDspIGVz
Y3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDsgU28sIGlmIEkgdW5kZXJzdGFuZDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY29ycmVjdGx5LCBJPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBoYXZlIHRvIHB1dDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGVyZSBhbHNvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHNvbWV0aGluZyBsaWtlPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqA8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAmcXVvdDtzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAu
c2V0X3J4X2FnYyhlbmFibGUsMCkmcXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoGlzbiYjMzk7dCBpdD88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBFeGFjdGx5
ISBUYWtlIGEgbG9vazxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGF0IFsxXTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgZm9yIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY29ycmVjdCBzeW50YXguPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgWzFdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oDxhIGhyZWY9Imh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL2dyLWV0dHVzL2Jsb2Iv
MTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9pbmNsdWRlL2V0dHVzL3Jm
bm9jX3J4X3JhZGlvLmgjTDk3IiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRw
czovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC9nci1ldHR1cy9ibG9iLzEwMzhjNGNlNTEzNWEy
ODAzYjUzNTU0ZmM0OTcxZmUzZGU3NDdkOWEvaW5jbHVkZS9ldHR1cy9yZm5vY19yeF9yYWRpby5o
I0w5NzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBMZXQgbWUga25vdyBpZiB0aGF0PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgd29ya2VkIG91dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgZm9yIHlvdS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBDaGVlcnMs
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEp1bGlhbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgT24gMy8xMC8yMSA5OjU5IEFNLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE1hcmlhPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBNdcOxb3ogd3JvdGU6PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEhpIEp1bGlhbiw8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgVGhhbmtz
IGZvciB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBxdWljayBhbnN3ZXIuPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEkgdGhpbmsgeW91IG1pZ2h0
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYmUgcmlnaHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoGFib3V0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgcG9zc2libGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgYnVnIHR1cm5pbmcgb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgdGhlIEFHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyBmcm9tIEdSQy4gSSBoYXZlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgY2hlY2tlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdGhlIGZs
b3cgZ3JhcGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2VuZXJhdGVkIGFuZCB0aGVy
ZSYjMzk7cyBubzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyBzZXRfcnhfYWdjIGVuYWJsZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoG9wdGlvbiAo
STxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY2hlY2tlZDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdGhlIGMr
Kzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBkZWZpbml0aW9uIGJsb2NrPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdoZXJlIHRoaXM8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgb3B0aW9uIGRp
ZCBhcHBlYXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBidXQgSTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgaGFkbiYjMzk7dCBsb29rPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBhdCB0aGU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgcHl0aG9uIGdlbmVyYXRlZCkuPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IFRoZSBsaW5lcyByZWxhdGVkPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgdG8gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqByYWRpbyBpbiBteTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmbG93Z3JhcGgg
YXJlIHRoZXNlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoC9zZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAg
PTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBldHR1cy5yZm5vY19yeF9yYWRpbyg8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNlbGYucmZub2NfZ3JhcGgsPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB1aGQuZGV2aWNlX2FkZHIoJiMzOTsm
IzM5OyksPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgLTEsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgLTEpPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5v
Y19yeF9yYWRpb18wLnNldF9yYXRlKHNhbXBfcmF0ZSk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0
X2FudGVubmEoJiMzOTtSWDImIzM5OywgMCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X2ZyZXF1
ZW5jeShjZiwgMCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X2dhaW4oZ2FpbiwgMCk8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgc2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18w
LnNldF9iYW5kd2lkdGgoc2FtcF9yYXRlLCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfZGNf
b2Zmc2V0KFRydWUsIDApPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoMKgc2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9pcV9iYWxhbmNlKFRydWUs
IDApLzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBT
bywgaWYgSSB1bmRlcnN0YW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqBjb3JyZWN0bHksIEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoGhhdmUgdG8gcHV0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHRoZXJlIGFsc288YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgc29tZXRoaW5nIGxpa2U8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgJnF1
b3Q7c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoZW5hYmxlLDApJnF1b3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBpc24mIzM5O3QgaXQ/PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEtpbmQgUmVn
YXJkcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
TWFyaWE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
RWwgbWnDqSwgMTAgbWFyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgMjAyMSBhIGxhcyA5OjE2LDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
SnVsaWFuIEFybm9sZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9h
PiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVj
b2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFu
QGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIg
dGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJf
YmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZn
dDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVs
aXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJf
YmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2Js
YW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9h
PiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVs
aXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFu
QGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2Js
YW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBN
YXJpYSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvC
oCDCoCDCoEkgbWlnaHQgbm90PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYmUgdGhlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqByaWdodCBwZXJzb248YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRvIGFuc3dlcjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGlzLCBhcyBteTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBleHBlcmllbmNlIHdpdGg8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoFVIRCA0
LjAgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqByZWxhdGl2ZWx5PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBsaW1pdGVkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBhdCB0aGUgbW9tZW50Ljxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgSG93ZXZlciwg
STxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNhbnQgdGVsbDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgeW91IHRoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBBR0Mgb248YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgQjJ4MCBkZXZpY2VzIGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoGNvbnRyb2xsZWQgdmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBzb2Z0d2FyZSAodXNpbmc8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHNldF9yeF9hZ2MoKSkuPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBUaGVy
ZSBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBubyBuZWVkIHRvPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGRpcmVjdGx5IG1vZGlmeSB0aGU8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoHN0YXRlIG9mIGFueTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHBpbnMgb2Y8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRoZSBGUEdBLjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgSSB2YWd1ZWx5PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgcmVtZW1iZXIgdGhhdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgdGhlcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoHdhcyBhIGJ1Zzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqBpbiBhbiBlYXJsaWVyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoHZlcnNpb24gb2YgZ3ItdWhkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAoc29tZXdoZXJlIGluPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgMy43KSB0aGF0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqBtYWRlIGl0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBkaWZmaWN1bHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdG8g
dHVybiBvbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgQUdDIHVzaW5nIEdSQy48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoFRoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBwYXJ0aWN1
bGFyIG9uZSBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgZml4ZWQg
aW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoGdyLXVoZC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgTm90IHN1cmUgYWJvdXQ8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZ3ItZXR0dXMs
IHRob3VnaC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoE1heWJlIHRyeSB1c2luZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgc2V0X3J4X2FnYygpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBtYW51YWxseSBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqB5b3UgZmxvdy1ncmFwaDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAoKi5weSkgYW5kIHNlZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgaWYgdGhhdCBoZWxwcy48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoENoZWVycyw8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoEp1bGlhbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgT24gMy85LzIxPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgNToxMSBQTSw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoE1hcmlhIE11w7FveiB2aWE8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgVVNSUC11c2VycyB3cm90ZTo8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEhp
IGFsbCw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBJIHdhczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHdv
bmRlcmluZyBpZiBpdCBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgcG9zc2libGUgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgZW5hYmxlIEFHQyBmcm9tPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoHRoZSBSRk5vQyByYWRpbzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgYmxvY2sgaW48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBHTlVSYWRpby4gSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgdXNlIFVIRCA0LjA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdmVyc2lvbiBh
bmQgR05VUmFkaW88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgMy44IHdpdGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoGdyLWV0dHVzLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEkgc2VlIHRoYXQ8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgUkZOb0MgUng8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHJhZGlvIGJsb2NrIGhhcyBhbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGUvZGlz
YWJsZS9kZWZhdWx0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqBBR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IG9wdGlvbiBpbiB0aGU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEdOVVJhZGlvIGJsb2NrPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3aGljaCBJPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGFzc3VtZSBjYWxscyB0aGU8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgVUhEIGZ1bmN0aW9uPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyAm
cXVvdDtzZXRfcnhfYWdjJnF1b3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoMKgwqAoPGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFs
L2NsYXNzdWhkXzFfMXVzcnBfMV8xbXVsdGlfX3VzcnAuaHRtbCNhYmRhYjFmNmMzNzc1YTkwNzFi
MTVjOTgwNWY4NjY0ODYiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8v
ZmlsZXMuZXR0dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11bHRpX191c3JwLmh0
bWwjYWJkYWIxZjZjMzc3NWE5MDcxYjE1Yzk4MDVmODY2NDg2PC9hPik8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAg
Jmd0OyBJIGhhdmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhbHNvIGNoZWNrZWQ8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoG9uIHRoZTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgRlBHQSBzaWRlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRoYXQgdGhlcmUgaXMgYTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBwaW4gZnJvbTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgRlBHQSB0bzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZn
dDsgQUQ5MzYxPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBjYWxsZWTC
oFhDVlJfRU5BX0FHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgd2hpY2ggaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2V0
IGFsd2F5cyB0byAxIG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoHRoZSB0b3A8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDvCoCDCoCDCoGxldmVsIG9mPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyB0aGUgRlBHQTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGltYWdlIChzZWU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoGF0dGFjaGVkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBmaWxlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90
O2UzMjAudiZxdW90OywgbGluZSA4NzIpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBUaGlzIHBpbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IGFjY29yZGluZyB0bzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgPGEgaHJlZj0iaHR0cHM6Ly93d3cuYW5h
bG9nLmNvbS9tZWRpYS9lbi90ZWNobmljYWwtZG9jdW1lbnRhdGlvbi9kYXRhLXNoZWV0cy9BRDkz
NjEucGRmIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL3d3dy5hbmFs
b2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1bWVudGF0aW9uL2RhdGEtc2hlZXRzL0FEOTM2
MS5wZGY8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0OyBpcyB0aGUgJnF1b3Q7TWFudWFsPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBDb250cm9sIElucHV0IGZvcjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBBdXRvbWF0aWMgR2Fpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBDb250cm9sIChBR0MpJnF1b3Q7Ljxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgTXVzdCBiZTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoHRoaXMgcGluIHNldDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgdG8gMCB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgaGF2ZSBBR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgd29ya2luZz88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IElmwqBub3QsPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgaG93IGNhbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgScKgZ2V0
IEFHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgd29ya2luZz88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSSYjMzk7dmUgbWFk
ZSBzb21lIHRlc3RzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGVuYWJsaW5nL2Rp
c2FibGluZyB0aGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBvcHRpb24gYnV0IEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
ZG8gbm90IHNlZSBhbnk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgY2hhbmdlczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0O8KgIMKgIMKgYmV0d2VlbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IHdhdmVmb3Jtczxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoHJlY2VpdmVkLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEFueSBoZWxwPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgd291bGQgYmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoGFwcHJlY2lhdGVkLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEtpbmQgUmVnYXJk
cyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IFVTUlAtdXNlcnM8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBtYWlsaW5nIGxpc3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7IDxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5r
Ij5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
OlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5V
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
PlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5r
Ij5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5V
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwv
YT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9
Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4m
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
PlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9
Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRh
cmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDsmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqA8YSBocmVmPSJodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20iIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxh
bmsiPmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwv
YT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgPGEgaHJlZj0ibWFp
bHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT4m
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7IDxicj4NCjwvYmxvY2tx
dW90ZT48L2Rpdj4NCjwvYmxvY2txdW90ZT48L2Rpdj4NCg==
--000000000000b4f41005c05596b8--

--===============0137810915713250358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0137810915713250358==--
