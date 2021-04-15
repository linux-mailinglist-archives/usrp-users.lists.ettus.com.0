Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE06360822
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 13:20:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90452383F1E
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 07:20:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AhJjomAt";
	dkim-atps=neutral
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6BD8D383EFE
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 07:19:48 -0400 (EDT)
Received: by mail-ej1-f53.google.com with SMTP id u17so36311991ejk.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 04:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FrbT7vpNa36DJE1//30PdxskFsX+StBKmO3v4UtEFLY=;
        b=AhJjomAtQ3DmXbcQhIk3wq0dEbh1DR5+B/IMwVYnEEDTJyh5Iv228cOcJAlhbTLP/G
         XXNFgQRf7je+r+uwDAtHOdmqU3fcNzsT5huhnsra9IAQlu0oYaJcZ+Rx3QTXJ7w4qMMu
         yKMavZOgN5bL1+wTWW3pjeamhsoeRxbMRmI7csWOhkHwOwiiGFJD8Bmz5AFWJbOku5v5
         YOlkqYAee+7wmIpR2rEEP6oAXQXLg4cztC+JZxPTBOg5vGEmwMjXhdfC/3hygVE3juRm
         ECdDSdg8o7QLDrPkE1P+ytCtqfQ20/EFQAedZyyyqy8zwCF+WvYNXlQ6/ecvMVxt9+cr
         Ed5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FrbT7vpNa36DJE1//30PdxskFsX+StBKmO3v4UtEFLY=;
        b=rVVZvoJt5HQWhcw/JkdbsAujE7w+kdWTaHLU63uDlgyfGFbQ4IU99TaS7p4NCUsMiX
         7CMrSnflwnaWGy8ejxIgU7ZeYMe6saDZ7KW4kxU7Nh1jYjByPlyI2d+jWTHbp+TkEpcz
         0JSSrUm5xsgKmWHEV99XCcE1dW62RuHQiAUJY2CA56iGMjFv15DEX5g6dXM/xeAJbH8G
         /WbPzWv8VLIVSbXUqefYz9JEeRmQMM2gHgLnMXmBdySaxNviV7PM3TwFT/Mzzl4cI+Kt
         jJTHo03bt2ILBBCqXulChNkvrxkcJujeZmoVS3xaeS2j+KZEup00OSzvITHua1xNm8U0
         HGGQ==
X-Gm-Message-State: AOAM531/k6C6KbWxMf48GoOgJi19sv478gpeEqkP9jBlxdjuLLANiOo7
	A2h4N1moTueX+q2iCbKe5sVNpInq3ArlYcGjPLo=
X-Google-Smtp-Source: ABdhPJwPliIt3piTqKGVUgHL1i92s11nV6akfCpuZ7DaoUASp5P2UQHvxIbxz7ORI9TbTSay60SXm3UyS9gmyZA7hM4=
X-Received: by 2002:a17:906:d110:: with SMTP id b16mr2910855ejz.146.1618485587062;
 Thu, 15 Apr 2021 04:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
 <29D4AD3E-11D9-42A0-A6C3-60D03ED19AE5@elitecoding.org> <7c1e57a9-6dbb-7473-479f-5fadadcd7d52@elitecoding.org>
 <CAG16vQVXNTpn5uzrD-73-BLNiDb11o1ErLpZL9807zvdf9THww@mail.gmail.com>
 <CAG16vQU8M1MjzWP_F4uWSnzHPcwJHP-miTqnO0TW_=3V1LkREw@mail.gmail.com> <d4c0d281-0726-7378-2f03-979d52f373d6@elitecoding.org>
In-Reply-To: <d4c0d281-0726-7378-2f03-979d52f373d6@elitecoding.org>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 15 Apr 2021 13:19:34 +0200
Message-ID: <CAG16vQVXRr-nS=jer1jn4_u_uam=WwTx4sJ9jePYBG_X_9gftA@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: S3MVJQHNETIQB7NMOOBORT6RPOVN7F2O
X-Message-ID-Hash: S3MVJQHNETIQB7NMOOBORT6RPOVN7F2O
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S3MVJQHNETIQB7NMOOBORT6RPOVN7F2O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2260473955644853618=="

--===============2260473955644853618==
Content-Type: multipart/alternative; boundary="0000000000007db38905c0010a75"

--0000000000007db38905c0010a75
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

I'm having some issues with the cross-compilation of the E320 USRP (there
are missing libraries) that I'm trying to resolve to run my python script
inside the USRP.

If I continue with the compilation (ignoring that these libraries are
missing), I can see that the uhd_usrp_probe command inside the E320 returns
my last email messages, i.e, it is passing through the ad9361_iface. This
iface talks with the rpcc, so perhaps, as you said, there's
different behavior between network and embedded modes, and I need to
cross-compile the UHD driver with my changes in order to be able to talk to
the chipset. When I compile my UHD driver code in my host PC changing the
thresholds of the ad9361 agc, and run my python script in network mode
(without cross-compiling) I see that my waveform is still moving between
-10 and -12 dB which are the defaults values in the UHD driver (that's not
happened with the B210 USRP which outputs the expected waveform) so I'm
almost sure that the cross-compilation could be the problem.

I'll try to fix the cross-compilation issues and let you know if it
resolves the problem.

Thanks again.

Kind Regards,

Maria


El lun, 12 abr 2021 a las 17:54, Julian Arnold (<julian@elitecoding.org>)
escribi=C3=B3:

> Maria,
>
> have you tried running your code in embedded mode (directly on the E320)?
>
> Way back when the E310 was a new product, there definetly were
> differences between networked and embedded mode.
>
> Nowadays, with NPM, both modes should access the hardware in the same
> way if undertand it correctly.
>
> However, you might still only be seeing the log messages coming from
> your host machine but not the logs that are generated on the E320 when
> running in networked mode (just guessing here).
> So running in embedded mode would probably be a valuable next step.
>
> >> I have debugged the code running the "usrp-filter-explorer.cpp"
> :D Nice, until now I wasn't aware of any people still using this tool.
> Maybe it deserves an update ;)
>
> Cheers,
> Julian
>
> On 4/12/21 2:53 PM, Maria Mu=C3=B1oz wrote:
> > Hi Julian,
> >
> > I have debugged the code running the "usrp-filter-explorer.cpp" which
> > also change some of the ad9361 configurations and I have the opportunit=
y
> > to check it both in USRP E320 and USRP B210 (same as the one you have).
> >
> > I have been able to see that the path through the source code using the
> > B210 is as expected (as you said, it goes through the ad9361_device.cpp
> > file) but that's not happening with the USRP E320.
> > The b210 log output (with added comments) is this:
> > /[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> > UHD_4.0.0.HEAD-0-g90ce6062
> > [INFO] [B200] Detected Device: B210
> > [INFO] [B200] Operating over USB 2.
> > [INFO] [B200] Initialize CODEC control...
> > *[INFO] [AD9361_DEVICE] initialize*
> > *[INFO] [AD9361_DEVICE] setup_gain_control_agc
> > [INFO] [AD9361_device] setup_adc*
> > [INFO] [B200] Initialize Radio control...
> > *[INFO] [AD9361_CTRL] set_agc
> > [INFO] [AD9361_DEVICE] set_agc
> > [INFO] [AD9361_DEVICE] setup_gain_control_agc
> > [INFO] [AD9361_CTRL] set_agc
> > [INFO] [AD9361_DEVICE] set_agc
> > [INFO] [AD9361_DEVICE] setup_gain_control_agc
> > [INFO] [AD9361_DEVICE] setup_gain_control_agc*
> > [INFO] [B200] Performing register loopback test...
> > [INFO] [B200] Register loopback test passed
> > *[INFO] [MANAGER] agc
> > [INFO] [AD9361_DEVICE] filter
> > [INFO] [AD9361_DEVICE] filter*
> > [INFO] [B200] Performing register loopback test...
> > [INFO] [B200] Register loopback test passed
> > *[INFO] [MANAGER] agc
> > [INFO] [AD9361_DEVICE] filter
> > [INFO] [AD9361_DEVICE] filter*
> > [INFO] [B200] Setting master clock rate selection to 'automatic'.
> > [INFO] [B200] Asking for clock rate 16.000000 MHz...
> > [INFO] [AD9361_DEVICE] setup_gain_control_agc
> > *[INFO] [AD9361_device] setup_adc*
> > [INFO] [B200] Actually got clock rate 16.000000 MHz.
> > [INFO] [MULTI_USRP] Setting master clock rate selection to 'manual'.
> > [INFO] [B200] Asking for clock rate 32.000000 MHz...
> > *[INFO] [AD9361_DEVICE] setup_gain_control_agc
> > [INFO] [AD9361_device] setup_adc*
> > [INFO] [B200] Actually got clock rate 32.000000 MHz.
> >
> > Using master clock rate: 3.2e+07
> > Using search mask: rx_frontends/A/
> >
> > Found the following filters matching "rx_frontends/A/":
> > /mboards/0/dboards/A/rx_frontends/A/filters/DEC_3
> > /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
> >
> > Active filters:
> > [INFO] [AD9361_DEVICE] filter
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
> >
> > Available Info on Active Filters:
> > [INFO] [AD9361_DEVICE] filter
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
> > [filter_info_base]
> > type: Digital FIR (i16)
> > bypass enable: 0
> > position index: 5
> >          [digital_filter_base]
> >          input rate: 6.4e+07
> >          interpolation: 1
> >          decimation: 2
> >          full-scale: 32767
> >          max num taps: 128
> >          taps:
> >                  (tap 0: 0)(tap 1: 0)(tap 2: 1)(tap 3: 0)(tap 4: -2)(ta=
p
> > 5: 0)(tap 6: 3)(tap 7: 0)(tap 8: -5)(tap 9: 0)(tap 10: 8)
> >                  (tap 11: 0)(tap 12: -11)(tap 13: 0)(tap 14: 17)(tap 15=
:
> > 0)(tap 16: -24)(tap 17: 0)(tap 18: 33)(tap 19: 0)(tap 20: -45)
> >                  (tap 21: 0)(tap 22: 61)(tap 23: 0)(tap 24: -80)(tap 25=
:
> > 0)(tap 26: 104)(tap 27: 0)(tap 28: -134)(tap 29: 0)(tap 30: 169)
> >                  (tap 31: 0)(tap 32: -213)(tap 33: 0)(tap 34: 264)(tap
> > 35: 0)(tap 36: -327)(tap 37: 0)(tap 38: 401)(tap 39: 0)(tap 40: -489)
> >                  (tap 41: 0)(tap 42: 595)(tap 43: 0)(tap 44: -724)(tap
> > 45: 0)(tap 46: 880)(tap 47: 0)(tap 48: -1075)(tap 49: 0)(tap 50: 1323)
> >                  (tap 51: 0)(tap 52: -1652)(tap 53: 0)(tap 54: 2114)(ta=
p
> > 55: 0)(tap 56: -2819)(tap 57: 0)(tap 58: 4056)(tap 59: 0)(tap 60: -6883=
)
> >                  (tap 61: 0)(tap 62: 20837)(tap 63: 32767)(tap 64:
> > 20837)(tap 65: 0)(tap 66: -6883)(tap 67: 0)(tap 68: 4056)(tap 69: 0)(ta=
p
> > 70: -2819)
> >                  (tap 71: 0)(tap 72: 2114)(tap 73: 0)(tap 74: -1652)(ta=
p
> > 75: 0)(tap 76: 1323)(tap 77: 0)(tap 78: -1075)(tap 79: 0)(tap 80: 880)
> >                  (tap 81: 0)(tap 82: -724)(tap 83: 0)(tap 84: 595)(tap
> > 85: 0)(tap 86: -489)(tap 87: 0)(tap 88: 401)(tap 89: 0)(tap 90: -327)
> >                  (tap 91: 0)(tap 92: 264)(tap 93: 0)(tap 94: -213)(tap
> > 95: 0)(tap 96: 169)(tap 97: 0)(tap 98: -134)(tap 99: 0)(tap 100: 104)
> >                  (tap 101: 0)(tap 102: -80)(tap 103: 0)(tap 104: 61)(ta=
p
> > 105: 0)(tap 106: -45)(tap 107: 0)(tap 108: 33)(tap 109: 0)(tap 110: -24=
)
> >                  (tap 111: 0)(tap 112: 17)(tap 113: 0)(tap 114: -11)(ta=
p
> > 115: 0)(tap 116: 8)(tap 117: 0)(tap 118: -5)(tap 119: 0)(tap 120: 3)
> >                  (tap 121: 0)(tap 122: -2)(tap 123: 0)(tap 124: 1)(tap
> > 125: 0)(tap 126: 0)(tap 127: 0)
> >
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
> > [filter_info_base]
> > type: Digital (i16)
> > bypass enable: 0
> > position index: 4
> >          [digital_filter_base]
> >          input rate: 1.28e+08
> >          interpolation: 1
> >          decimation: 2
> >          full-scale: 2048
> >          max num taps: 15
> >          taps:
> >                  (tap 0: -8)(tap 1: 0)(tap 2: 42)(tap 3: 0)(tap 4:
> > -147)(tap 5: 0)(tap 6: 619)(tap 7: 1013)(tap 8: 619)(tap 9: 0)(tap 10:
> -147)
> >                  (tap 11: 0)(tap 12: 42)(tap 13: 0)(tap 14: -8)
> >
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
> > [filter_info_base]
> > type: Digital (i16)
> > bypass enable: 0
> > position index: 3
> >          [digital_filter_base]
> >          input rate: 2.56e+08
> >          interpolation: 1
> >          decimation: 2
> >          full-scale: 256
> >          max num taps: 7
> >          taps:
> >                  (tap 0: -9)(tap 1: 0)(tap 2: 73)(tap 3: 128)(tap 4:
> > 73)(tap 5: 0)(tap 6: -9)
> >
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
> > [filter_info_base]
> > type: Digital (i16)
> > bypass enable: 0
> > position index: 2
> >          [digital_filter_base]
> >          input rate: 5.12e+08
> >          interpolation: 1
> >          decimation: 2
> >          full-scale: 16
> >          max num taps: 5
> >          taps:
> >                  (tap 0: 1)(tap 1: 4)(tap 2: 6)(tap 3: 4)(tap 4: 1)
> >
> > [INFO] [AD9361_DEVICE] filter
> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
> > [filter_info_base]
> > type: Analog Low-pass
> > bypass enable: 0
> > position index: 1
> >          [analog_filter_base]
> >          desc: third-order Butterworth
> >                  [analog_filter_lp]
> >                  cutoff: 2.24e+07
> >                  rolloff: 60
> >
> > /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
> > [INFO] [AD9361_DEVICE] filter
> > [filter_info_base]
> > type: Analog Low-pass
> > bypass enable: 0
> > position index: 0
> >          [analog_filter_base]
> >          desc: single-pole
> >                  [analog_filter_lp]
> >                  cutoff: 4e+07
> >                  rolloff: 20/
> > /
> > /
> > On the other hand, the USRP E320 returns this:/
> > /
> >
> > /[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> > UHD_4.0.0.HEAD-0-g90ce6062
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
> mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D31DFBB7,clai=
med=3DFalse,addr=3D192.168.10.2
> > [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
> > [INFO] [MPM.main] Spawning RPC process...
> > [INFO] [MPM.PeriphManager] Device serial number: 31DFBB7
> > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> > [INFO] [MPM.RPCServer] RPC server ready!
> > [INFO] [MPM.RPCServer] Spawning watchdog task...
> > [INFO] [MPM.PeriphManager] init() called with device args
> > `mgmt_addr=3D192.168.10.2,product=3De320'.
> > *[INFO] [AD9361_IFACE] agc
> > [INFO] [AD9361_IFACE] agc*
> > [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> > [INFO] [0/Radio#0] CODEC loopback test passed
> > [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> > [INFO] [0/Radio#0] CODEC loopback test passed
> > [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
> MB/s)
> > [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
> MB/s)
> >
> > Using master clock rate: 3.2e+07
> > Using search mask: rx_frontends/A/
> >
> > Found the following filters matching "rx_frontends/A/":
> > *[INFO] [E3xx_radio_ctrl] filter*
> >
> > Active filters:
> >
> > Available Info on Active Filters:
> > /
> > /
> > /
> > The E320 goes to the ad9361_iface file (I have not called the set_agc
> > command so perhaps is called for the initial configuration?) and the
> > E3xx_radio_ctrl for the filter command (that's strange because I would
> > expected that it had passed through the iface too). There's also no
> > single filter name printed, maybe the correct tree path in the E320 is
> > not "rx_frontends/A/.
> >
> > The call in ad9361_iface file is this one (which calls the rpc_client,
> > that's why I thought on the previous email that the configuration goes
> > that way):
> >
> > /void set_agc(const std::string& which, bool enable)
> > {
> > UHD_LOG_INFO("AD9361_IFACE", "agc");
> > _rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc", which,
> > enable);/
> >
> > I am running the same source code for both USRP's, in the same
> > environment, just changing the connection from one USRP to another in m=
y
> > PC, so I'm afraid this is an specific E320 problem.
> >
> > Kind Regards,
> >
> > Maria
> > //
> >
> > El lun, 12 abr 2021 a las 9:55, Maria Mu=C3=B1oz (<mamuki92@gmail.com
> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
> >
> >     Hi Julian,
> >
> >     Thanks for the answer.
> >
> >     Yes, I'm working with the E320. I'll try to force the "_setup_agc"
> >     code as you said and debug again to see if hopefully, I get the AGC
> >     configured.
> >     If someone has configured the E320 before I will also appreciate an=
y
> >     help on this.
> >
> >     Thanks again for the help
> >
> >     Kind Regards,
> >
> >     Maria
> >
> >     El lun, 12 abr 2021 a las 9:43, Julian Arnold
> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=
=C3=B3:
> >
> >         Maria,
> >
> >         it just dawned on me, that you are working with an e320 not an
> e310.
> >
> >         Although most of what I said should still apply (especially
> >         erverything
> >         related to the (AD936x)) things might be a little bit different=
.
> >         I'm
> >         epecially unsure about the RPC part, here.
> >
> >         Maybe someone else can chime in regarding this aspect.
> >
> >         However, I think that `_setup_gain_control(false)` should run
> >         regardless
> >         during device init. So you should see some logging output there=
.
> >
> >         If _setup_agc() is not beeing called you could try to force the
> >         AGC on,
> >         just for verification purposes, by changing
> >         `_setup_gain_control(false)`
> >         to `_setup_gain_control(true)` in `initialize()` and
> >         `set_clock_rate()`.
> >
> >         Cheers,
> >         Julian
> >
> >         On 4/9/21 3:34 PM, Julian Arnold wrote:
> >          > Maria,
> >          >
> >          > the properties you want to change (min/max thresholds) are
> >         not exposed
> >          > via the property tree. Only the mode is (slow or fast).
> >          > However, the same code that configures the AGC that worked
> >         for me on the
> >          > B210 should run on the E310. The RPC client should not be
> >         involved in
> >          > that case (although I=E2=80=99m not sure about that).
> >          >
> >          > Have you tried applying my patch directly (I had slightly
> >         modified
> >          > register values).
> >          >
> >          > Also, could you try running your code directly on the E310
> >         (bypassing
> >          > networked-mode) to see if that makes a difference?
> >          >
> >          > Cheers,
> >          > Julian
> >          >
> >          >
> >          > Julian Arnold, M.Sc
> >          >
> >          >> Am 09.04.2021 um 09:48 schrieb Maria Mu=C3=B1oz
> >         <mamuki92@gmail.com <mailto:mamuki92@gmail.com>>:
> >          >>
> >          >> =EF=BB=BF
> >          >> Hi Julian,
> >          >>
> >          >> Sorry for the late reply and thanks for the answer.
> >          >>
> >          >> I have been debugging the configuration printing the entrie=
s
> of
> >          >> "set_agc" that I have found on cpp/py files in the uhd
> >         driver and
> >          >> ettus repositories, and I can confirm that the code is not
> >         getting to
> >          >> the ad9361_device.cpp as I thought in the beginning.
> >          >>
> >          >> If I go through the code from my python script to the
> >          >> ad9361_device.cpp configuration file I see the following:
> >          >>
> >          >>   * The python scripts calls for
> >         ettus.rfnoc_rx_radio.set_agc method,
> >          >>     which is found in ettus repository (for usrp_source is =
on
> >          >>     gnuradio/uhd lib)
> >          >>
> >          >>   * The rfnoc_rx_radio class is defined in
> >          >>     gr-ettus/lib/rfnoc_rx_radio_impl.h, where there is also
> >         a pointer
> >          >>     to the radio_control class defined:
> >          >>
> >          >>         /class rfnoc_rx_radio_impl : public rfnoc_rx_radio
> >          >>         {
> >          >>         public:
> >          >>
> >         rfnoc_rx_radio_impl(::uhd:://rfnoc::noc_block_base::sptr
> >          >>         block_ref);
> >          >>             ~rfnoc_rx_radio_impl();
> >          >>
> >          >>             /*** API
> >          >>
> >
>  ******************************//******************************//*****/
> >          >>             double set_rate(const double rate);
> >          >>             void set_antenna(const std::string& antenna,
> >         const size_t
> >          >>         chan);
> >          >>             double set_frequency(const double frequency,
> >         const size_t
> >          >>         chan);
> >          >>             void set_tune_args(const ::uhd::device_addr_t&
> >         args, const
> >          >>         size_t chan);
> >          >>             double set_gain(const double gain, const size_t
> >         chan);
> >          >>             double set_gain(const double gain, const
> >         std::string&
> >          >>         name, const size_t chan);
> >          >>             void set_agc(const bool enable, const size_t
> chan);
> >          >>             void set_gain_profile(const std::string&
> >         profile, const
> >          >>         size_t chan);
> >          >>             double set_bandwidth(const double bandwidth,
> >         const size_t
> >          >>         chan);
> >          >>             void
> >          >>             set_lo_source(const std::string& source, const
> >          >>         std::string& name, const size_t chan);
> >          >>             void
> >          >>             set_lo_export_enabled(const bool enabled, const
> >          >>         std::string& name, const size_t chan);
> >          >>             double set_lo_freq(const double freq, const
> >         std::string&
> >          >>         name, const size_t chan);
> >          >>             void set_dc_offset(const bool enable, const
> >         size_t chan);
> >          >>             void set_dc_offset(const std::complex<double>&
> >         offset,
> >          >>         const size_t chan);
> >          >>             void set_iq_balance(const bool enable, const
> >         size_t chan);
> >          >>             void set_iq_balance(const std::complex<double>&
> >          >>         correction, const size_t chan);
> >          >>
> >          >>         private:
> >          >>             ::uhd::rfnoc::radio_control:://sptr d_radio_ref=
;
> >          >>         };/
> >          >>
> >          >>   * In gr-ettus/lib/rfnoc_rx_radio_impl.cpp when set_agc
> >         command is
> >          >>     received, it returns a call to the pointer I mention
> >         before, and
> >          >>     therefore, to the radio_control class:
> >          >>
> >          >>         /void rfnoc_rx_radio_impl::set_agc(//const bool
> >         enable, const
> >          >>         size_t chan)
> >          >>         {
> >          >>             return d_radio_ref->set_rx_agc(//enable, chan);
> >          >>         }/
> >          >>
> >          >>   * The radio_control class is found in the UHD driver
> >         repository in
> >          >>     uhd/host/include/uhd/rfnoc/radio_control.hpp which is
> >         virtually
> >          >>     implemented as radio_control_impl class in
> >          >>     e3xx_radio_control_impl.cpp (host/lib/usrp/board/e3xx)
> >          >>   * This file calls to the ad9361_ctrl class which is
> >         implemented in
> >          >>     e3xx_ad9361_iface.cpp (host/lib/usrp/board/e3xx)
> >          >>   * At this point, there is a call for the rpc_client where
> >         I get kind
> >          >>     of lost about how to change the registers this way:
> >          >>
> >          >>
> >          >>         /void set_agc(const std::string& which, bool enable=
)
> >          >>         {
> >          >>         _rpcc->request_with_token<void>(this->_rpc_prefix +
> >         "set_agc",
> >          >>         which, enable);
> >          >>         }/
> >          >>
> >          >>
> >          >>
> >          >> To be brief:
> >          >>
> >          >>   * When debugging I can't see that my code gets to the onl=
y
> >          >>     configuration file I found which is the ad9361_device.c=
pp
> >          >>   * The set_agc command seems to be manage through the
> >         rpc_client (I
> >          >>     think this is related to the module peripheral manager
> >         which is a
> >          >>     "layer of control that UHD uses to access, configure an=
d
> >         control
> >          >>     the hardware",
> https://files.ettus.com/manual/page_mpm.html)
> >          >>   * Inside the code, in multi_usrp files there is a comment
> >         that the
> >          >>     specific configuration of the AGC is set in the
> >         property_tree but
> >          >>     I don't know how to write the configuration registers o=
f
> >         the agc
> >          >>     through the property_tree.
> >          >>
> >          >>
> >          >> So my questions here are:
> >          >>
> >          >>  1. How can I set the configuration registers of the AGC,
> >         through the
> >          >>     MPM or the property tree?
> >          >>  2. Are there examples on how I can set these registers
> >         through the
> >          >>     MPM or the property_tree?
> >          >>
> >          >>
> >          >> Kind Regards,
> >          >>
> >          >> Maria
> >          >>
> >          >> El mi=C3=A9, 24 mar 2021 a las 11:20, Julian Arnold
> >          >> (<julian@elitecoding.org <mailto:julian@elitecoding.org>
> >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
> >          >>
> >          >>     Maria,
> >          >>
> >          >>     that sounds about right!
> >          >>     However, to make absolutely sure GNU Radio picks up the
> >         modified
> >          >>     libuhd
> >          >>     you could add a print statement somewhere in your UHD
> code.
> >          >>     You could also compare your UHD install prefix to the
> >         path gr-uhd
> >          >>     uses for linking libuhd.
> >          >>
> >          >>     Below is the patch I used for my tests:
> >          >>
> >          >>     diff --git
> >         a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >          >>     b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >          >>     index 9e088871d..0e5bc86c5 100644
> >          >>     ---
> a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >          >>     +++
> b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >          >>     @@ -1089,7 +1089,7 @@ void
> >          >>     ad9361_device_t::_setup_gain_control(bool agc)
> >          >>               _io_iface->poke8(0x0FD, 0x4C); // Max Full/LM=
T
> >         Gain
> >          >>     Table Index
> >          >>               _io_iface->poke8(0x0FE, 0x44); // Decr Step
> >         Size, Peak
> >          >>     Overload Time
> >          >>               _io_iface->poke8(0x100, 0x6F); // Max Digital
> Gain
> >          >>     -        _io_iface->poke8(0x101, 0x0A); // Max Digital
> Gain
> >          >>     +        _io_iface->poke8(0x101, 0x02); // Max Digital
> Gain
> >          >>               _io_iface->poke8(0x103, 0x08); // Max Digital
> Gain
> >          >>               _io_iface->poke8(0x104, 0x2F); // ADC Small
> >         Overload
> >          >>     Threshold
> >          >>               _io_iface->poke8(0x105, 0x3A); // ADC Large
> >         Overload
> >          >>     Threshold
> >          >>     @@ -1098,14 +1098,14 @@ void
> >          >>     ad9361_device_t::_setup_gain_control(bool agc)
> >          >>               _io_iface->poke8(0x108, 0x31);
> >          >>               _io_iface->poke8(0x111, 0x0A);
> >          >>               _io_iface->poke8(0x11A, 0x1C);
> >          >>     -        _io_iface->poke8(0x120, 0x0C);
> >          >>     +        _io_iface->poke8(0x120, 0x04);
> >          >>               _io_iface->poke8(0x121, 0x44);
> >          >>               _io_iface->poke8(0x122, 0x44);
> >          >>               _io_iface->poke8(0x123, 0x11);
> >          >>               _io_iface->poke8(0x124, 0xF5);
> >          >>               _io_iface->poke8(0x125, 0x3B);
> >          >>               _io_iface->poke8(0x128, 0x03);
> >          >>     -        _io_iface->poke8(0x129, 0x56);
> >          >>     +        _io_iface->poke8(0x129, 0x11);
> >          >>               _io_iface->poke8(0x12A, 0x22);
> >          >>           } else {
> >          >>               _io_iface->poke8(0x0FA, 0xE0); // Gain Contro=
l
> >         Mode Select
> >          >>
> >          >>
> >          >>     Cheers,
> >          >>     Julian
> >          >>
> >          >>     On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:
> >          >>     > Hi Julian,
> >          >>     >
> >          >>     > I have the chance to test the AGC with a B210 and
> >         perform the
> >          >>     same graph
> >          >>     > as you send me but I am unable to see what you saw so
> >         I think I'm
> >          >>     > missing something.
> >          >>     > I also have UHD 4.0 and GNURadio 3.8 (installed by
> >         source).
> >          >>     >
> >          >>     > The steps I take are these:
> >          >>     >
> >          >>     >   * First, I change the ad9361_device.cpp that is in
> uhd
> >          >>     repository in
> >          >>     >
> >           //uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
> >          >>     >     registers 0x101, 0x120, 0x129, 0x123 and 0x12A./
> >          >>     >   * Then, I do "make" and "make install" to compile
> >         the changes in
> >          >>     >     build-host folder.
> >          >>     >   * After that, I generate the python script for the
> >         GRC flow
> >          >>     graph and
> >          >>     >     move the "set_agc" command after the "set_rate"
> one.
> >          >>     >   * Finally, I run the python.
> >          >>     >
> >          >>     > I can't see my waveform between the values I set. Is
> there
> >          >>     something
> >          >>     > wrong with those steps? Did you do anything else?
> >          >>     >
> >          >>     > King Regards,
> >          >>     >
> >          >>     > Maria
> >          >>     >
> >          >>     > /
> >          >>     > /
> >          >>     >
> >          >>     > El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz
> >         (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >          >>     > <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com=
>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>>)
> escribi=C3=B3:
> >          >>     >
> >          >>     >     Hi Julian,
> >          >>     >
> >          >>     >     Thanks for the checking!
> >          >>     >
> >          >>     >     I have also checked my graph and samp_rate is
> >         setting first,
> >          >>     so I'll
> >          >>     >     try to test it with a sine waveform as you
> >         suggested and see
> >          >>     if that
> >          >>     >     works. If not, maybe is an RFNoC/gr-ettus problem=
.
> >         I'll put
> >          >>     an issue
> >          >>     >     in the gr-ettus repository in that case.
> >          >>     >
> >          >>     >     Thanks again for your help.
> >          >>     >
> >          >>     >     Kind Regards,
> >          >>     >
> >          >>     >     Maria.
> >          >>     >
> >          >>     >     El mar, 23 mar 2021 a las 0:36, Julian Arnold
> >          >>     >     (<julian@elitecoding.org
> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>)
> >          >>     escribi=C3=B3:
> >          >>     >
> >          >>     >         Maria,
> >          >>     >
> >          >>     >         I couldn't resist trying this myself, as your
> >          >>     modifications seemed
> >          >>     >         reasonable.
> >          >>     >
> >          >>     >         So I did set up a simple test with a b210
> >         connected to
> >          >>     my siggen
> >          >>     >         feeding
> >          >>     >         it with a tone of varying power at 2.4102GHz.
> >          >>     >
> >          >>     >         For the default UHD AGC settings I could
> >         confirm that
> >          >>     the signal
> >          >>     >         was
> >          >>     >         kept between -10 dBFS and -12 dBFS (20 *
> >         log10(|x|) over a
> >          >>     >         pretty wide
> >          >>     >         input power range.
> >          >>     >         This was using GR 3.8 and UHD 4.0.
> >          >>     >
> >          >>     >         However, I had to modify the generate
> flow-graph
> >          >>     slightly, as
> >          >>     >         the AGC
> >          >>     >         was enables before the sample-rate was set
> >         (maybe double
> >          >>     check
> >          >>     >         that, too).
> >          >>     >
> >          >>     >         Afterwards, I used your settings (I did chang=
e
> >         reg 0x129
> >          >>     to 0x11
> >          >>     >         (1dB
> >          >>     >         +-), though).
> >          >>     >         Also those settings worked as expected and th=
e
> >         signal
> >          >>     was nicely
> >          >>     >         kept
> >          >>     >         between -2 dBFS and -4 dBFS.
> >          >>     >
> >          >>     >         Attached is a picture of the flow-graph I use=
d
> >         for testing.
> >          >>     >         Maybe you
> >          >>     >         could also start by testing with a sine wave =
to
> >          >>     verifying that your
> >          >>     >         values get applied properly.
> >          >>     >
> >          >>     >         Cheers,
> >          >>     >         Julian
> >          >>     >
> >          >>     >         On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
> >          >>     >          > Hi Julian,
> >          >>     >          >
> >          >>     >          > Sure.
> >          >>     >          >
> >          >>     >          > I am receiving a QPSK through the radio an=
d
> >          >>     plotting it in a
> >          >>     >         QT graph
> >          >>     >          > (see grc.png)
> >          >>     >          > If I have AGC disable, I get what is shown
> in
> >          >>     >         "test_without_agc.png",
> >          >>     >          > then if I enable it, I see what is on
> >          >>     "test_with_agc.png" where
> >          >>     >          > "Quadrature" is always center more or less
> >         in 0.25 which
> >          >>     >         might fit with
> >          >>     >          > the values given by default (inner high
> >         threshold =3D
> >          >>     -12dBFS,
> >          >>     >         inner low
> >          >>     >          > threshold =3D -10 dBFS).
> >          >>     >          >
> >          >>     >          > If I change the ad9361_device.cpp
> >         (attached) from
> >          >>     line 1085,
> >          >>     >         by changing
> >          >>     >          > registers 0x101, 0x120 and 0x129 with
> >         values 0x02,
> >          >>     0x04 and 0x16
> >          >>     >          > respectively to move between -2dbFS and -4
> >         dBFS,  I
> >          >>     see the same
> >          >>     >          > waveform that I have in "test_with_agc.png=
"
> >         (I expect
> >          >>     it to
> >          >>     >         be around 0.7)
> >          >>     >          >
> >          >>     >          > Kind regards,
> >          >>     >          >
> >          >>     >          > Maria
> >          >>     >          >
> >          >>     >          > El lun, 22 mar 2021 a las 17:45, Julian
> Arnold
> >          >>     >         (<julian@elitecoding.org
> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          > <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>>) escribi=C3=B3:
> >          >>     >          >
> >          >>     >          >     Maria,
> >          >>     >          >
> >          >>     >          >     would you mind sharing your patch?
> >         Otherwise,
> >          >>     it=E2=80=99s hard
> >          >>     >         to tell what
> >          >>     >          >     exactly is going on.
> >          >>     >          >
> >          >>     >          >     Cheers,
> >          >>     >          >     Julian
> >          >>     >          >
> >          >>     >          >>     Am 22.03.2021 um 16:24 schrieb Maria
> Mu=C3=B1oz
> >          >>     >         <mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>
> >          >>     >          >>     <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com
> >>>>>:
> >          >>     >          >>
> >          >>     >          >>     =EF=BB=BF
> >          >>     >          >>     Hi Julian,
> >          >>     >          >>
> >          >>     >          >>     I re-open this topic to ask a questio=
n
> >         about the
> >          >>     >         configuration of
> >          >>     >          >>     the ad9361 registers in GNUradio/RFNo=
C
> >          >>     >          >>
> >          >>     >          >>     As I understand, when AGC is
> >         enabled in slow
> >          >>     mode, there
> >          >>     >         are 4
> >          >>     >          >>     configurable thresholds (inner low,
> >         inner high,
> >          >>     >         outer low, and
> >          >>     >          >>     outer high) and also 4 configurable
> >         steps to
> >          >>     reach the zone
> >          >>     >          >>     between the inner thresholds.
> >          >>     >          >>
> >          >>     >          >>     I have found the configuration of
> >         these registers
> >          >>     >          >>
> >          >>
> >            in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >          >>     >          >>     and changed their values there. Then,
> >         I have
> >          >>     recompiled
> >          >>     >         uhd (make
> >          >>     >          >>     & make install) but, when I re-run my
> >         graph I see no
> >          >>     >         change in my
> >          >>     >          >>     waveform (it seem to stay in the same
> >         limits as
> >          >>     the default
> >          >>     >          >>     configuration).
> >          >>     >          >>
> >          >>     >          >>     Am I missing any other step that I
> >         have to done to
> >          >>     >         configure these
> >          >>     >          >>     parameters?
> >          >>     >          >>
> >          >>     >          >>     Kind Regards,
> >          >>     >          >>
> >          >>     >          >>     Maria
> >          >>     >          >>
> >          >>     >          >>     El vie, 12 mar 2021 a las 10:04, Mari=
a
> >         Mu=C3=B1oz
> >          >>     >         (<mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>
> >          >>     >          >>     <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >          >>     >         <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>>>>) escribi=C3=B3:
> >          >>     >          >>
> >          >>     >          >>         Ok Julian, I will check the tree
> >         node and try to
> >          >>     >         modify the
> >          >>     >          >>         properties. Thanks again for the
> help!
> >          >>     >          >>
> >          >>     >          >>         Kind Regards,
> >          >>     >          >>         Maria
> >          >>     >          >>
> >          >>     >          >>         El jue, 11 mar 2021 a las 18:26,
> >         Julian Arnold
> >          >>     >          >>         (<julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>> <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>>)
> >          >>     >          >>         escribi=C3=B3:
> >          >>     >          >>
> >          >>     >          >>             Maria,
> >          >>     >          >>
> >          >>     >          >>             >>
> >          >>     >         /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False=
,
> 0)/
> >          >>     >          >>             >>
> >          >>     >          >>             >> but I have received the
> >         following
> >          >>     errorThat's
> >          >>     >         why I
> >          >>     >          >>             gave the reference ([1])
> >         showing the correct
> >          >>     >         syntax ;)
> >          >>     >          >>             Anyways, glad it worked out
> >         for you!
> >          >>     >          >>             You might consider filing a
> >         bug issue
> >          >>     against
> >          >>     >         gr-ettus on
> >          >>     >          >>             github.
> >          >>     >          >>
> >          >>     >          >>             >> By the way, I have read
> >         that there are
> >          >>     >         several modes
> >          >>     >          >>             for AGC
> >          >>     >          >>             >> (fast,slow,hybrid..) I was
> >         wondering
> >          >>     which
> >          >>     >         type is
> >          >>     >          >>             implemented by
> >          >>     >          >>             >> default and if it is
> >         possible to
> >          >>     change AGC
> >          >>     >         mode in the
> >          >>     >          >>             flowgraph.
> >          >>     >          >>             Those modes were mainly
> >         dictated by the
> >          >>     AD9361.
> >          >>     >         Default
> >          >>     >          >>             should be
> >          >>     >          >>             "slow". The "hybrid" mode is
> not
> >          >>     implemented as
> >          >>     >         far as I know.
> >          >>     >          >>             Which mode you want ("slow" /
> >         "fast")
> >          >>     depends on the
> >          >>     >          >>             signal you want to
> >          >>     >          >>             receive. For burst-mode
> >         digital signals you
> >          >>     >         might want to
> >          >>     >          >>             switch to the
> >          >>     >          >>             "fast" mode.
> >          >>     >          >>             However, I think this is only
> >         possible by
> >          >>     >         directly writing
> >          >>     >          >>             to the corresponding
> >         property-tree node.
> >          >>     Again,
> >          >>     >         I'm not
> >          >>     >          >>             sure about
> >          >>     >          >>             UHD-4.0/gr-ettus though.
> >          >>     >          >>
> >          >>     >          >>             Cheers,
> >          >>     >          >>             Julian
> >          >>     >          >>
> >          >>     >          >>
> >          >>     >          >>             On 3/11/21 5:26 PM, Maria
> >         Mu=C3=B1oz wrote:
> >          >>     >          >>             > Hi Julian,
> >          >>     >          >>             >
> >          >>     >          >>             > I have initially changed th=
e
> >         python
> >          >>     generated
> >          >>     >         for my
> >          >>     >          >>             flowgraph with this
> >          >>     >          >>             > line:
> >          >>     >          >>             >
> >          >>     >          >>             >
> >          >>     /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >          >>     >          >>             >
> >          >>     >          >>             > but I have received the
> >         following error:
> >          >>     >          >>             >
> >          >>     >          >>             > T/raceback (most recent cal=
l
> >         last):
> >          >>     >          >>             >    File
> >          >>     "constellation_soft_decoder.py", line
> >          >>     >         301, in
> >          >>     >          >>             <module>
> >          >>     >          >>             >      main()
> >          >>     >          >>             >    File
> >          >>     "constellation_soft_decoder.py", line
> >          >>     >         277, in main
> >          >>     >          >>             >      tb =3D top_block_cls()
> >          >>     >          >>             >    File
> >          >>     "constellation_soft_decoder.py", line
> >          >>     >         166, in
> >          >>     >          >>             __init__
> >          >>     >          >>             >
> >          >>     >         self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, =
0)
> >          >>     >          >>             > AttributeError:
> >         'rfnoc_rx_radio_sptr'
> >          >>     object
> >          >>     >         has no
> >          >>     >          >>             attribute 'set_rx_agc'/
> >          >>     >          >>             >
> >          >>     >          >>             > But rfnoc_radio_impl.cc
> >         defines it:
> >          >>     >          >>             >
> >          >>     >          >>             > /void
> >          >>     rfnoc_rx_radio_impl::set_agc(const bool
> >          >>     >         enable,
> >          >>     >          >>             const size_t chan)
> >          >>     >          >>             > {
> >          >>     >          >>             >      return
> >          >>     d_radio_ref->set_rx_agc(enable, chan);
> >          >>     >          >>             > }/
> >          >>     >          >>             >
> >          >>     >          >>             > Searching the
> >         rfnoc_rx_radio_sptr with
> >          >>     grep
> >          >>     >         takes me to
> >          >>     >          >>             "swig" files. I
> >          >>     >          >>             > have looked at ettus_swig.p=
y
> >         and seen
> >          >>     that the
> >          >>     >         command
> >          >>     >          >>             name is set_agc
> >          >>     >          >>             > instead of set_rx_agc:
> >          >>     >          >>             >
> >          >>     >          >>             > /def set_agc(self, enable:
> "bool
> >          >>     const", chan:
> >          >>     >         "size_t
> >          >>     >          >>             const") -> "void":
> >          >>     >          >>             >          r"""
> >          >>     >          >>             >
> >         set_agc(rfnoc_rx_radio self, bool
> >          >>     >         const enable,
> >          >>     >          >>             size_t const chan)
> >          >>     >          >>             >          Enable/disable the
> >         AGC for
> >          >>     this RX
> >          >>     >         radio (if
> >          >>     >          >>             available)
> >          >>     >          >>             >          """
> >          >>     >          >>             >          return
> >          >>     >         _ettus_swig.rfnoc_rx_radio_set_agc(self,
> >          >>     >          >>             enable, chan)/
> >          >>     >          >>             > /
> >          >>     >          >>             > /
> >          >>     >          >>             > Changing this in the
> >         flowgraph.py seems to
> >          >>     >         work!! Thanks
> >          >>     >          >>             for the help on
> >          >>     >          >>             > this! I put this informatio=
n
> >         here just
> >          >>     in case
> >          >>     >         someone
> >          >>     >          >>             is stuck in the
> >          >>     >          >>             > same point.
> >          >>     >          >>             >
> >          >>     >          >>             > By the way, I have read tha=
t
> >         there are
> >          >>     several
> >          >>     >         modes for
> >          >>     >          >>             AGC
> >          >>     >          >>             > (fast,slow,hybrid..) I was
> >         wondering
> >          >>     which type is
> >          >>     >          >>             implemented by
> >          >>     >          >>             > default and if it is
> possible to
> >          >>     change AGC
> >          >>     >         mode in the
> >          >>     >          >>             flowgraph.
> >          >>     >          >>             >
> >          >>     >          >>             > Kind Regards,
> >          >>     >          >>             >
> >          >>     >          >>             > Maria
> >          >>     >          >>             >
> >          >>     >          >>             >
> >          >>     >          >>             > El mi=C3=A9, 10 mar 2021 a =
las
> >         12:03, Maria
> >          >>     Mu=C3=B1oz
> >          >>     >          >>             (<mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>=
>
> >          >>     >         <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>>
> >          >>     >          >>             > <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >          >>     >         <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>>
> >          >>     >          >>             <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >          >>     >         <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>>>>>) escribi=C3=B3:
> >          >>     >          >>             >
> >          >>     >          >>             >     Hi Jules,
> >          >>     >          >>             >
> >          >>     >          >>             >     Thank you, I will try i=
t
> >         and let
> >          >>     you know
> >          >>     >         as soon as
> >          >>     >          >>             possible.
> >          >>     >          >>             >
> >          >>     >          >>             >     By the way, I have
> >         checked the python
> >          >>     >          >>             generated using the UHD USRP
> >          >>     >          >>             >     SOURCE block (instead o=
f
> >         the RFNoC
> >          >>     radio
> >          >>     >         block) with
> >          >>     >          >>             AGC active and
> >          >>     >          >>             >     it generates the set of
> >         AGC fine.
> >          >>     So, as
> >          >>     >         you said,
> >          >>     >          >>             it is fixed in
> >          >>     >          >>             >     gr-uhd but it might
> >         still be a bug in
> >          >>     >         gr-ettus.
> >          >>     >          >>             >
> >          >>     >          >>             >     Thanks again for the
> help!
> >          >>     >          >>             >
> >          >>     >          >>             >     Kind Regards,
> >          >>     >          >>             >
> >          >>     >          >>             >     Maria
> >          >>     >          >>             >
> >          >>     >          >>             >     El mi=C3=A9, 10 mar 202=
1 a
> >         las 11:25,
> >          >>     Julian Arnold
> >          >>     >          >>             >     (<julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>>>) escribi=C3=B3:
> >          >>     >          >>             >
> >          >>     >          >>             >         Maria,
> >          >>     >          >>             >
> >          >>     >          >>             >          >> So, if I
> understand
> >          >>     correctly, I
> >          >>     >         have to put
> >          >>     >          >>             there also
> >          >>     >          >>             >         something like
> >          >>     >          >>             >          >>
> >          >>     >          >>
> >          >>     >
> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
> >          >>     isn't it?
> >          >>     >          >>             >
> >          >>     >          >>             >         Exactly! Take a loo=
k
> >         at [1]
> >          >>     for the
> >          >>     >         correct syntax.
> >          >>     >          >>             >
> >          >>     >          >>             >         [1]
> >          >>     >          >>             >
> >          >>     >          >>
> >          >>     >
> >          >>
> >
> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4=
971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
> >          >>     >          >>             >
> >          >>     >          >>             >         Let me know if that
> >         worked out
> >          >>     for you.
> >          >>     >          >>             >
> >          >>     >          >>             >         Cheers,
> >          >>     >          >>             >         Julian
> >          >>     >          >>             >
> >          >>     >          >>             >
> >          >>     >          >>             >         On 3/10/21 9:59 AM,
> >         Maria
> >          >>     Mu=C3=B1oz wrote:
> >          >>     >          >>             >          > Hi Julian,
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > Thanks for the
> >         quick answer.
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > I think you migh=
t
> >         be right
> >          >>     about
> >          >>     >         the possible
> >          >>     >          >>             bug turning on
> >          >>     >          >>             >         the AGC
> >          >>     >          >>             >          > from GRC. I have
> >         checked
> >          >>     the flow graph
> >          >>     >          >>             generated and there's no
> >          >>     >          >>             >          > set_rx_agc enabl=
e
> >         option (I
> >          >>     checked
> >          >>     >         the c++
> >          >>     >          >>             definition block
> >          >>     >          >>             >         where this
> >          >>     >          >>             >          > option did appea=
r
> >         but I
> >          >>     hadn't look
> >          >>     >         at the
> >          >>     >          >>             python generated).
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > The lines relate=
d
> >         to the
> >          >>     radio in my
> >          >>     >          >>             flowgraph are these:
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >
> >         /self.ettus_rfnoc_rx_radio_0 =3D
> >          >>     >          >>             ettus.rfnoc_rx_radio(
> >          >>     >          >>             >          >
> >         self.rfnoc_graph,
> >          >>     >          >>             >          >
> >          >>     uhd.device_addr(''),
> >          >>     >          >>             >          >              -1,
> >          >>     >          >>             >          >              -1)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>      self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>      self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>      self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>      self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>     >
> >           self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>      self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>      self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > So, if I
> understand
> >          >>     correctly, I
> >          >>     >         have to put
> >          >>     >          >>             there also
> >          >>     >          >>             >         something like
> >          >>     >          >>             >          >
> >          >>     >          >>
> >          >>     >
> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
> >          >>     isn't it?
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > Kind Regards,
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > Maria
> >          >>     >          >>             >          >
> >          >>     >          >>             >          > El mi=C3=A9, 10 =
mar
> >         2021 a las 9:16,
> >          >>     >         Julian Arnold
> >          >>     >          >>             >
> >           (<julian@elitecoding.org <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>>
> >          >>     >          >>             >          >
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>
> >          >>     >          >>             >
> >           <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org=
>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>     >          >>             <mailto:julian@elitecoding.or=
g
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>     >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>     <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>>>>) escribi=C3=B3:
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     Maria,
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     I might not
> >         be the
> >          >>     right person
> >          >>     >         to answer
> >          >>     >          >>             this, as my
> >          >>     >          >>             >         experience with
> >          >>     >          >>             >          >     UHD 4.0 is
> >         relatively
> >          >>     limited
> >          >>     >         at the moment.
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     However, I
> >         cant tell
> >          >>     you that
> >          >>     >         the AGC on
> >          >>     >          >>             B2x0 devices is
> >          >>     >          >>             >         controlled via
> >          >>     >          >>             >          >     software
> (using
> >          >>     set_rx_agc()).
> >          >>     >         There is
> >          >>     >          >>             no need to
> >          >>     >          >>             >         directly modify the
> >          >>     >          >>             >          >     state of any
> >         pins of
> >          >>     the FPGA.
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     I vaguely
> >         remember that
> >          >>     there
> >          >>     >         was a bug
> >          >>     >          >>             in an earlier
> >          >>     >          >>             >         version of gr-uhd
> >          >>     >          >>             >          >     (somewhere i=
n
> >         3.7) that
> >          >>     made it
> >          >>     >         difficult
> >          >>     >          >>             to turn on the
> >          >>     >          >>             >         AGC using GRC.
> >          >>     >          >>             >          >     That
> >         particular one is
> >          >>     fixed in
> >          >>     >         gr-uhd.
> >          >>     >          >>             Not sure about
> >          >>     >          >>             >         gr-ettus, though.
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     Maybe try
> using
> >          >>     set_rx_agc()
> >          >>     >         manually in
> >          >>     >          >>             you flow-graph
> >          >>     >          >>             >         (*.py) and see
> >          >>     >          >>             >          >     if that help=
s.
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     Cheers,
> >          >>     >          >>             >          >     Julian
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >     On 3/9/21
> >         5:11 PM,
> >          >>     Maria Mu=C3=B1oz via
> >          >>     >          >>             USRP-users wrote:
> >          >>     >          >>             >          >      > Hi all,
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      > I was
> >         wondering if it is
> >          >>     >         possible to
> >          >>     >          >>             enable AGC from
> >          >>     >          >>             >         the RFNoC radio
> >          >>     >          >>             >          >      > block in
> >         GNURadio. I
> >          >>     use UHD 4.0
> >          >>     >          >>             version and GNURadio
> >          >>     >          >>             >         3.8 with
> >          >>     >          >>             >          >     gr-ettus.
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      > I see tha=
t
> >         the RFNoC Rx
> >          >>     >         radio block has an
> >          >>     >          >>             >
>  enable/disable/default
> >          >>     >          >>             >          >     AGC
> >          >>     >          >>             >          >      > option in
> the
> >          >>     GNURadio block
> >          >>     >         which I
> >          >>     >          >>             assume calls the
> >          >>     >          >>             >         UHD function
> >          >>     >          >>             >          >      >
> "set_rx_agc"
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >
> >          >>     >          >>             >
> >          >>     >          >>
> >          >>     >
> >          >>
> >             (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      > I have
> >         also checked
> >          >>     on the
> >          >>     >         FPGA side
> >          >>     >          >>             that there is a
> >          >>     >          >>             >         pin from
> >          >>     >          >>             >          >     FPGA to
> >          >>     >          >>             >          >      > AD9361
> >          >>     called XCVR_ENA_AGC
> >          >>     >         which is
> >          >>     >          >>             set always to 1 on
> >          >>     >          >>             >         the top
> >          >>     >          >>             >          >     level of
> >          >>     >          >>             >          >      > the FPGA
> >         image (see
> >          >>     attached
> >          >>     >         file
> >          >>     >          >>             "e320.v", line 872).
> >          >>     >          >>             >         This pin,
> >          >>     >          >>             >          >      > according
> to
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >
> >          >>     >          >>             >
> >          >>     >          >>
> >          >>     >
> >          >>
> >
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> >          >>     >          >>             >          >
> >          >>     >          >>             >          >      > is the
> "Manual
> >          >>     Control Input for
> >          >>     >          >>             Automatic Gain
> >          >>     >          >>             >         Control (AGC)".
> >          >>     >          >>             >          >      > Must be
> >         this pin set
> >          >>     to 0 to
> >          >>     >         have AGC
> >          >>     >          >>             working?
> >          >>     >          >>             >          >      > If not,
> >         how can
> >          >>     I get AGC
> >          >>     >         working?
> >          >>     >          >>             I've made some tests
> >          >>     >          >>             >          >      >
> >         enabling/disabling this
> >          >>     >         option but I
> >          >>     >          >>             do not see any
> >          >>     >          >>             >         changes
> >          >>     >          >>             >          >     between the
> >          >>     >          >>             >          >      > waveforms
> >         received.
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      > Any help
> >         would be
> >          >>     appreciated.
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      > Kind
> Regards,
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      > Maria
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >      >
> >          >>     >          >>
> >          >>      _______________________________________________
> >          >>     >          >>             >          >      > USRP-user=
s
> >         mailing list
> >          >>     >          >>             >          >      >
> >          >> USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>
> >          >>     >          >>
> >           <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>>
> >          >>     >          >>             >
> >          >>      <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>
> >          >>     >          >>
> >           <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>>>
> >          >>     >          >>             >
> >          >>      <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>
> >          >>     >          >>
> >           <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>>
> >          >>     >          >>             >
> >          >>      <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>
> >          >>     >          >>
> >           <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>     >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>     <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>>>>
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >
> >          >>     >          >>
> >          >>     >
> >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >          >>     >          >>             >          >      >
> >          >>     >          >>             >          >
> >          >>     >          >>             >
> >          >>     >          >>
> >          >>     >
> >          >>
> >          >
> >          > _______________________________________________
> >          > USRP-users mailing list -- usrp-users@lists.ettus.com
> >         <mailto:usrp-users@lists.ettus.com>
> >          > To unsubscribe send an email to
> >         usrp-users-leave@lists.ettus.com
> >         <mailto:usrp-users-leave@lists.ettus.com>
> >          >
> >
>

--0000000000007db38905c0010a75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+SSYjMzk7bSBoYXZp
bmcgc29tZSBpc3N1ZXMgd2l0aCB0aGUgY3Jvc3MtY29tcGlsYXRpb24gb2YgdGhlIEUzMjAgVVNS
UCAodGhlcmUgYXJlIG1pc3NpbmcgbGlicmFyaWVzKSB0aGF0IEkmIzM5O20gdHJ5aW5nIHRvIHJl
c29sdmUgdG/CoHJ1biBteSBweXRob24gc2NyaXB0IGluc2lkZSB0aGUgVVNSUC48L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2PklmIEkgY29udGludWUgd2l0aCB0aGUgY29tcGlsYXRpb24gKGlnbm9y
aW5nIHRoYXQgdGhlc2UgbGlicmFyaWVzIGFyZSBtaXNzaW5nKSwgSSBjYW4gc2VlIHRoYXQgdGhl
IHVoZF91c3JwX3Byb2JlIGNvbW1hbmQgaW5zaWRlIHRoZSBFMzIwIHJldHVybnMgbXkgbGFzdCBl
bWFpbCBtZXNzYWdlcywgaS5lLCBpdCBpcyBwYXNzaW5nIHRocm91Z2ggdGhlIGFkOTM2MV9pZmFj
ZS4gVGhpcyBpZmFjZSB0YWxrcyB3aXRoIHRoZSBycGNjLCBzbyBwZXJoYXBzLCBhcyB5b3Ugc2Fp
ZCwgdGhlcmUmIzM5O3MgZGlmZmVyZW50wqBiZWhhdmlvciBiZXR3ZWVuIG5ldHdvcmsgYW5kIGVt
YmVkZGVkIG1vZGVzLCBhbmQgSSBuZWVkIHRvIGNyb3NzLWNvbXBpbGUgdGhlIFVIRCBkcml2ZXIg
d2l0aCBteSBjaGFuZ2VzIGluIG9yZGVyIHRvIGJlIGFibGUgdG8gdGFsayB0byB0aGUgY2hpcHNl
dC4gV2hlbiBJIGNvbXBpbGUgbXkgVUhEIGRyaXZlciBjb2RlIGluIG15IGhvc3QgUEMgY2hhbmdp
bmcgdGhlIHRocmVzaG9sZHMgb2YgdGhlIGFkOTM2MSBhZ2MsIGFuZCBydW4gbXkgcHl0aG9uIHNj
cmlwdCBpbiBuZXR3b3JrIG1vZGUgKHdpdGhvdXQgY3Jvc3MtY29tcGlsaW5nKSBJIHNlZSB0aGF0
IG15IHdhdmVmb3JtIGlzIHN0aWxsIG1vdmluZyBiZXR3ZWVuIC0xMCBhbmQgLTEyIGRCIHdoaWNo
IGFyZSB0aGUgZGVmYXVsdHMgdmFsdWVzIGluIHRoZSBVSEQgZHJpdmVyICh0aGF0JiMzOTtzIG5v
dCBoYXBwZW5lZCB3aXRoIHRoZSBCMjEwIFVTUlAgd2hpY2ggb3V0cHV0cyB0aGUgZXhwZWN0ZWQg
d2F2ZWZvcm0pIHNvIEkmIzM5O20gYWxtb3N0IHN1cmUgdGhhdCB0aGUgY3Jvc3MtY29tcGlsYXRp
b24gY291bGQgYmUgdGhlIHByb2JsZW0uPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JJiMzOTts
bCB0cnkgdG8gZml4IHRoZSBjcm9zcy1jb21waWxhdGlvbiBpc3N1ZXMgYW5kIGxldCB5b3Uga25v
dyBpZiBpdCByZXNvbHZlcyB0aGUgcHJvYmxlbS48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlRo
YW5rcyBhZ2Fpbi48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PktpbmQgUmVnYXJkcyw8L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2Pk1hcmlhPC9kaXY+PGRpdj48YnI+PC9kaXY+PC9kaXY+PGJyPjxk
aXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+
RWwgbHVuLCAxMiBhYnIgMjAyMSBhIGxhcyAxNzo1NCwgSnVsaWFuIEFybm9sZCAoJmx0OzxhIGhy
ZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
PC9hPiZndDspIGVzY3JpYmnDszo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1
b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xp
ZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPk1hcmlhLDxicj4NCjxicj4NCmhh
dmUgeW91IHRyaWVkIHJ1bm5pbmcgeW91ciBjb2RlIGluIGVtYmVkZGVkIG1vZGUgKGRpcmVjdGx5
IG9uIHRoZSBFMzIwKT88YnI+DQo8YnI+DQpXYXkgYmFjayB3aGVuIHRoZSBFMzEwIHdhcyBhIG5l
dyBwcm9kdWN0LCB0aGVyZSBkZWZpbmV0bHkgd2VyZSA8YnI+DQpkaWZmZXJlbmNlcyBiZXR3ZWVu
IG5ldHdvcmtlZCBhbmQgZW1iZWRkZWQgbW9kZS48YnI+DQo8YnI+DQpOb3dhZGF5cywgd2l0aCBO
UE0sIGJvdGggbW9kZXMgc2hvdWxkIGFjY2VzcyB0aGUgaGFyZHdhcmUgaW4gdGhlIHNhbWUgPGJy
Pg0Kd2F5IGlmIHVuZGVydGFuZCBpdCBjb3JyZWN0bHkuPGJyPg0KPGJyPg0KSG93ZXZlciwgeW91
IG1pZ2h0IHN0aWxsIG9ubHkgYmUgc2VlaW5nIHRoZSBsb2cgbWVzc2FnZXMgY29taW5nIGZyb20g
PGJyPg0KeW91ciBob3N0IG1hY2hpbmUgYnV0IG5vdCB0aGUgbG9ncyB0aGF0IGFyZSBnZW5lcmF0
ZWQgb24gdGhlIEUzMjAgd2hlbiA8YnI+DQpydW5uaW5nIGluIG5ldHdvcmtlZCBtb2RlIChqdXN0
IGd1ZXNzaW5nIGhlcmUpLjxicj4NClNvIHJ1bm5pbmcgaW4gZW1iZWRkZWQgbW9kZSB3b3VsZCBw
cm9iYWJseSBiZSBhIHZhbHVhYmxlIG5leHQgc3RlcC48YnI+DQo8YnI+DQomZ3Q7Jmd0OyBJIGhh
dmUgZGVidWdnZWQgdGhlIGNvZGUgcnVubmluZyB0aGUgJnF1b3Q7dXNycC1maWx0ZXItZXhwbG9y
ZXIuY3BwJnF1b3Q7IDxicj4NCjpEIE5pY2UsIHVudGlsIG5vdyBJIHdhc24mIzM5O3QgYXdhcmUg
b2YgYW55IHBlb3BsZSBzdGlsbCB1c2luZyB0aGlzIHRvb2wuIDxicj4NCk1heWJlIGl0IGRlc2Vy
dmVzIGFuIHVwZGF0ZSA7KTxicj4NCjxicj4NCkNoZWVycyw8YnI+DQpKdWxpYW48YnI+DQo8YnI+
DQpPbiA0LzEyLzIxIDI6NTMgUE0sIE1hcmlhIE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7IEhpIEp1
bGlhbiw8YnI+DQomZ3Q7IDxicj4NCiZndDsgSSBoYXZlIGRlYnVnZ2VkIHRoZSBjb2RlIHJ1bm5p
bmcgdGhlICZxdW90O3VzcnAtZmlsdGVyLWV4cGxvcmVyLmNwcCZxdW90OyB3aGljaCA8YnI+DQom
Z3Q7IGFsc28gY2hhbmdlIHNvbWUgb2YgdGhlIGFkOTM2MSBjb25maWd1cmF0aW9ucyBhbmQgSSBo
YXZlIHRoZSBvcHBvcnR1bml0eSA8YnI+DQomZ3Q7IHRvIGNoZWNrIGl0IGJvdGggaW4gVVNSUCBF
MzIwIGFuZCBVU1JQIEIyMTAgKHNhbWUgYXMgdGhlIG9uZSB5b3UgaGF2ZSkuPGJyPg0KJmd0OyA8
YnI+DQomZ3Q7IEkgaGF2ZSBiZWVuIGFibGUgdG8gc2VlIHRoYXQgdGhlIHBhdGggdGhyb3VnaCB0
aGUgc291cmNlIGNvZGUgdXNpbmcgdGhlIDxicj4NCiZndDsgQjIxMCBpcyBhcyBleHBlY3RlZCAo
YXMgeW91IHNhaWQsIGl0IGdvZXMgdGhyb3VnaCB0aGUgYWQ5MzYxX2RldmljZS5jcHAgPGJyPg0K
Jmd0OyBmaWxlKSBidXQgdGhhdCYjMzk7cyBub3QgaGFwcGVuaW5nIHdpdGggdGhlIFVTUlAgRTMy
MC48YnI+DQomZ3Q7IFRoZSBiMjEwIGxvZyBvdXRwdXQgKHdpdGggYWRkZWQgY29tbWVudHMpIGlz
IHRoaXM6PGJyPg0KJmd0OyAvW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gOS4z
LjA7IEJvb3N0XzEwNzEwMDsgPGJyPg0KJmd0OyBVSERfNC4wLjAuSEVBRC0wLWc5MGNlNjA2Mjxi
cj4NCiZndDsgW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZpY2U6IEIyMTA8YnI+DQomZ3Q7IFtJ
TkZPXSBbQjIwMF0gT3BlcmF0aW5nIG92ZXIgVVNCIDIuPGJyPg0KJmd0OyBbSU5GT10gW0IyMDBd
IEluaXRpYWxpemUgQ09ERUMgY29udHJvbC4uLjxicj4NCiZndDsgKltJTkZPXSBbQUQ5MzYxX0RF
VklDRV0gaW5pdGlhbGl6ZSo8YnI+DQomZ3Q7ICpbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIHNldHVw
X2dhaW5fY29udHJvbF9hZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX2RldmljZV0gc2V0dXBf
YWRjKjxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBJbml0aWFsaXplIFJhZGlvIGNvbnRyb2wuLi48
YnI+DQomZ3Q7ICpbSU5GT10gW0FEOTM2MV9DVFJMXSBzZXRfYWdjPGJyPg0KJmd0OyBbSU5GT10g
W0FEOTM2MV9ERVZJQ0VdIHNldF9hZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0g
c2V0dXBfZ2Fpbl9jb250cm9sX2FnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfQ1RSTF0gc2V0
X2FnYzxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBzZXRfYWdjPGJyPg0KJmd0OyBb
SU5GT10gW0FEOTM2MV9ERVZJQ0VdIHNldHVwX2dhaW5fY29udHJvbF9hZ2M8YnI+DQomZ3Q7IFtJ
TkZPXSBbQUQ5MzYxX0RFVklDRV0gc2V0dXBfZ2Fpbl9jb250cm9sX2FnYyo8YnI+DQomZ3Q7IFtJ
TkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29wYmFjayB0ZXN0Li4uPGJyPg0KJmd0
OyBbSU5GT10gW0IyMDBdIFJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QgcGFzc2VkPGJyPg0KJmd0OyAq
W0lORk9dIFtNQU5BR0VSXSBhZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmls
dGVyPGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcio8YnI+DQomZ3Q7IFtJ
TkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29wYmFjayB0ZXN0Li4uPGJyPg0KJmd0
OyBbSU5GT10gW0IyMDBdIFJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QgcGFzc2VkPGJyPg0KJmd0OyAq
W0lORk9dIFtNQU5BR0VSXSBhZ2M8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmls
dGVyPGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcio8YnI+DQomZ3Q7IFtJ
TkZPXSBbQjIwMF0gU2V0dGluZyBtYXN0ZXIgY2xvY2sgcmF0ZSBzZWxlY3Rpb24gdG8gJiMzOTth
dXRvbWF0aWMmIzM5Oy48YnI+DQomZ3Q7IFtJTkZPXSBbQjIwMF0gQXNraW5nIGZvciBjbG9jayBy
YXRlIDE2LjAwMDAwMCBNSHouLi48YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gc2V0
dXBfZ2Fpbl9jb250cm9sX2FnYzxicj4NCiZndDsgKltJTkZPXSBbQUQ5MzYxX2RldmljZV0gc2V0
dXBfYWRjKjxicj4NCiZndDsgW0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSAx
Ni4wMDAwMDAgTUh6Ljxicj4NCiZndDsgW0lORk9dIFtNVUxUSV9VU1JQXSBTZXR0aW5nIG1hc3Rl
ciBjbG9jayByYXRlIHNlbGVjdGlvbiB0byAmIzM5O21hbnVhbCYjMzk7Ljxicj4NCiZndDsgW0lO
Rk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMzIuMDAwMDAwIE1Iei4uLjxicj4NCiZn
dDsgKltJTkZPXSBbQUQ5MzYxX0RFVklDRV0gc2V0dXBfZ2Fpbl9jb250cm9sX2FnYzxicj4NCiZn
dDsgW0lORk9dIFtBRDkzNjFfZGV2aWNlXSBzZXR1cF9hZGMqPGJyPg0KJmd0OyBbSU5GT10gW0Iy
MDBdIEFjdHVhbGx5IGdvdCBjbG9jayByYXRlIDMyLjAwMDAwMCBNSHouPGJyPg0KJmd0OyA8YnI+
DQomZ3Q7IFVzaW5nIG1hc3RlciBjbG9jayByYXRlOiAzLjJlKzA3PGJyPg0KJmd0OyBVc2luZyBz
ZWFyY2ggbWFzazogcnhfZnJvbnRlbmRzL0EvPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEZvdW5kIHRo
ZSBmb2xsb3dpbmcgZmlsdGVycyBtYXRjaGluZyAmcXVvdDtyeF9mcm9udGVuZHMvQS8mcXVvdDs6
PGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0RF
Q18zPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJz
L0ZJUl8xPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0
ZXJzL0hCXzE8YnI+DQomZ3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2Zp
bHRlcnMvSEJfMjxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0Ev
ZmlsdGVycy9IQl8zPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMv
QS9maWx0ZXJzL0xQRl9CQjxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRl
bmRzL0EvZmlsdGVycy9MUEZfVElBPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEFjdGl2ZSBmaWx0ZXJz
Ojxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IFtJTkZP
XSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9y
eF9mcm9udGVuZHMvQS9maWx0ZXJzL0ZJUl8xPGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJ
Q0VdIGZpbHRlcjxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0Ev
ZmlsdGVycy9IQl8xPGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4N
CiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8yPGJy
Pg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4NCiZndDsgL21ib2FyZHMv
MC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8zPGJyPg0KJmd0OyBbSU5GT10g
W0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4NCiZndDsgL21ib2FyZHMvMC9kYm9hcmRzL0Evcnhf
ZnJvbnRlbmRzL0EvZmlsdGVycy9MUEZfQkI8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklD
RV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9m
aWx0ZXJzL0xQRl9USUE8YnI+DQomZ3Q7IDxicj4NCiZndDsgQXZhaWxhYmxlIEluZm8gb24gQWN0
aXZlIEZpbHRlcnM6PGJyPg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4N
CiZndDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IC9tYm9hcmRzLzAv
ZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvRklSXzE8YnI+DQomZ3Q7IFtmaWx0ZXJf
aW5mb19iYXNlXTxicj4NCiZndDsgdHlwZTogRGlnaXRhbCBGSVIgKGkxNik8YnI+DQomZ3Q7IGJ5
cGFzcyBlbmFibGU6IDA8YnI+DQomZ3Q7IHBvc2l0aW9uIGluZGV4OiA1PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIFtkaWdpdGFsX2ZpbHRlcl9iYXNlXTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBp
bnB1dCByYXRlOiA2LjRlKzA3PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGludGVycG9sYXRpb246
IDE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgZGVjaW1hdGlvbjogMjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCBmdWxsLXNjYWxlOiAzMjc2Nzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBtYXggbnVt
IHRhcHM6IDEyODxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCB0YXBzOjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDA6IDApKHRhcCAxOiAwKSh0YXAgMjogMSkodGFwIDM6
IDApKHRhcCA0OiAtMikodGFwIDxicj4NCiZndDsgNTogMCkodGFwIDY6IDMpKHRhcCA3OiAwKSh0
YXAgODogLTUpKHRhcCA5OiAwKSh0YXAgMTA6IDgpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgICh0YXAgMTE6IDApKHRhcCAxMjogLTExKSh0YXAgMTM6IDApKHRhcCAxNDogMTcp
KHRhcCAxNTogPGJyPg0KJmd0OyAwKSh0YXAgMTY6IC0yNCkodGFwIDE3OiAwKSh0YXAgMTg6IDMz
KSh0YXAgMTk6IDApKHRhcCAyMDogLTQ1KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAodGFwIDIxOiAwKSh0YXAgMjI6IDYxKSh0YXAgMjM6IDApKHRhcCAyNDogLTgwKSh0YXAg
MjU6IDxicj4NCiZndDsgMCkodGFwIDI2OiAxMDQpKHRhcCAyNzogMCkodGFwIDI4OiAtMTM0KSh0
YXAgMjk6IDApKHRhcCAzMDogMTY5KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAodGFwIDMxOiAwKSh0YXAgMzI6IC0yMTMpKHRhcCAzMzogMCkodGFwIDM0OiAyNjQpKHRhcCA8
YnI+DQomZ3Q7IDM1OiAwKSh0YXAgMzY6IC0zMjcpKHRhcCAzNzogMCkodGFwIDM4OiA0MDEpKHRh
cCAzOTogMCkodGFwIDQwOiAtNDg5KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAodGFwIDQxOiAwKSh0YXAgNDI6IDU5NSkodGFwIDQzOiAwKSh0YXAgNDQ6IC03MjQpKHRhcCA8
YnI+DQomZ3Q7IDQ1OiAwKSh0YXAgNDY6IDg4MCkodGFwIDQ3OiAwKSh0YXAgNDg6IC0xMDc1KSh0
YXAgNDk6IDApKHRhcCA1MDogMTMyMyk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgKHRhcCA1MTogMCkodGFwIDUyOiAtMTY1MikodGFwIDUzOiAwKSh0YXAgNTQ6IDIxMTQpKHRh
cCA8YnI+DQomZ3Q7IDU1OiAwKSh0YXAgNTY6IC0yODE5KSh0YXAgNTc6IDApKHRhcCA1ODogNDA1
NikodGFwIDU5OiAwKSh0YXAgNjA6IC02ODgzKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAodGFwIDYxOiAwKSh0YXAgNjI6IDIwODM3KSh0YXAgNjM6IDMyNzY3KSh0YXAgNjQ6
IDxicj4NCiZndDsgMjA4MzcpKHRhcCA2NTogMCkodGFwIDY2OiAtNjg4MykodGFwIDY3OiAwKSh0
YXAgNjg6IDQwNTYpKHRhcCA2OTogMCkodGFwIDxicj4NCiZndDsgNzA6IC0yODE5KTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDcxOiAwKSh0YXAgNzI6IDIxMTQpKHRh
cCA3MzogMCkodGFwIDc0OiAtMTY1MikodGFwIDxicj4NCiZndDsgNzU6IDApKHRhcCA3NjogMTMy
MykodGFwIDc3OiAwKSh0YXAgNzg6IC0xMDc1KSh0YXAgNzk6IDApKHRhcCA4MDogODgwKTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDgxOiAwKSh0YXAgODI6IC03MjQp
KHRhcCA4MzogMCkodGFwIDg0OiA1OTUpKHRhcCA8YnI+DQomZ3Q7IDg1OiAwKSh0YXAgODY6IC00
ODkpKHRhcCA4NzogMCkodGFwIDg4OiA0MDEpKHRhcCA4OTogMCkodGFwIDkwOiAtMzI3KTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDkxOiAwKSh0YXAgOTI6IDI2NCko
dGFwIDkzOiAwKSh0YXAgOTQ6IC0yMTMpKHRhcCA8YnI+DQomZ3Q7IDk1OiAwKSh0YXAgOTY6IDE2
OSkodGFwIDk3OiAwKSh0YXAgOTg6IC0xMzQpKHRhcCA5OTogMCkodGFwIDEwMDogMTA0KTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDEwMTogMCkodGFwIDEwMjogLTgw
KSh0YXAgMTAzOiAwKSh0YXAgMTA0OiA2MSkodGFwIDxicj4NCiZndDsgMTA1OiAwKSh0YXAgMTA2
OiAtNDUpKHRhcCAxMDc6IDApKHRhcCAxMDg6IDMzKSh0YXAgMTA5OiAwKSh0YXAgMTEwOiAtMjQp
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICh0YXAgMTExOiAwKSh0YXAgMTEy
OiAxNykodGFwIDExMzogMCkodGFwIDExNDogLTExKSh0YXAgPGJyPg0KJmd0OyAxMTU6IDApKHRh
cCAxMTY6IDgpKHRhcCAxMTc6IDApKHRhcCAxMTg6IC01KSh0YXAgMTE5OiAwKSh0YXAgMTIwOiAz
KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDEyMTogMCkodGFwIDEy
MjogLTIpKHRhcCAxMjM6IDApKHRhcCAxMjQ6IDEpKHRhcCA8YnI+DQomZ3Q7IDEyNTogMCkodGFw
IDEyNjogMCkodGFwIDEyNzogMCk8YnI+DQomZ3Q7IDxicj4NCiZndDsgW0lORk9dIFtBRDkzNjFf
REVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IC9tYm9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5k
cy9BL2ZpbHRlcnMvSEJfMTxicj4NCiZndDsgW2ZpbHRlcl9pbmZvX2Jhc2VdPGJyPg0KJmd0OyB0
eXBlOiBEaWdpdGFsIChpMTYpPGJyPg0KJmd0OyBieXBhc3MgZW5hYmxlOiAwPGJyPg0KJmd0OyBw
b3NpdGlvbiBpbmRleDogNDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBbZGlnaXRhbF9maWx0ZXJf
YmFzZV08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgaW5wdXQgcmF0ZTogMS4yOGUrMDg8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgaW50ZXJwb2xhdGlvbjogMTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCBkZWNpbWF0aW9uOiAyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGZ1bGwtc2NhbGU6IDIwNDg8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgbWF4IG51bSB0YXBzOiAxNTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCB0YXBzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFwIDA6
IC04KSh0YXAgMTogMCkodGFwIDI6IDQyKSh0YXAgMzogMCkodGFwIDQ6IDxicj4NCiZndDsgLTE0
NykodGFwIDU6IDApKHRhcCA2OiA2MTkpKHRhcCA3OiAxMDEzKSh0YXAgODogNjE5KSh0YXAgOTog
MCkodGFwIDEwOiAtMTQ3KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAodGFw
IDExOiAwKSh0YXAgMTI6IDQyKSh0YXAgMTM6IDApKHRhcCAxNDogLTgpPGJyPg0KJmd0OyA8YnI+
DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVyPGJyPg0KJmd0OyAvbWJvYXJkcy8w
L2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0hCXzI8YnI+DQomZ3Q7IFtmaWx0ZXJf
aW5mb19iYXNlXTxicj4NCiZndDsgdHlwZTogRGlnaXRhbCAoaTE2KTxicj4NCiZndDsgYnlwYXNz
IGVuYWJsZTogMDxicj4NCiZndDsgcG9zaXRpb24gaW5kZXg6IDM8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgW2RpZ2l0YWxfZmlsdGVyX2Jhc2VdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGlucHV0
IHJhdGU6IDIuNTZlKzA4PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGludGVycG9sYXRpb246IDE8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgZGVjaW1hdGlvbjogMjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCBmdWxsLXNjYWxlOiAyNTY8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgbWF4IG51bSB0YXBz
OiA3PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIHRhcHM6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgICh0YXAgMDogLTkpKHRhcCAxOiAwKSh0YXAgMjogNzMpKHRhcCAzOiAxMjgp
KHRhcCA0OiA8YnI+DQomZ3Q7IDczKSh0YXAgNTogMCkodGFwIDY6IC05KTxicj4NCiZndDsgPGJy
Pg0KJmd0OyBbSU5GT10gW0FEOTM2MV9ERVZJQ0VdIGZpbHRlcjxicj4NCiZndDsgL21ib2FyZHMv
MC9kYm9hcmRzL0EvcnhfZnJvbnRlbmRzL0EvZmlsdGVycy9IQl8zPGJyPg0KJmd0OyBbZmlsdGVy
X2luZm9fYmFzZV08YnI+DQomZ3Q7IHR5cGU6IERpZ2l0YWwgKGkxNik8YnI+DQomZ3Q7IGJ5cGFz
cyBlbmFibGU6IDA8YnI+DQomZ3Q7IHBvc2l0aW9uIGluZGV4OiAyPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIFtkaWdpdGFsX2ZpbHRlcl9iYXNlXTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBpbnB1
dCByYXRlOiA1LjEyZSswODxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBpbnRlcnBvbGF0aW9uOiAx
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGRlY2ltYXRpb246IDI8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgZnVsbC1zY2FsZTogMTY8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgbWF4IG51bSB0YXBz
OiA1PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIHRhcHM6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgICh0YXAgMDogMSkodGFwIDE6IDQpKHRhcCAyOiA2KSh0YXAgMzogNCkodGFw
IDQ6IDEpPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IFtJTkZPXSBbQUQ5MzYxX0RFVklDRV0gZmlsdGVy
PGJyPg0KJmd0OyAvbWJvYXJkcy8wL2Rib2FyZHMvQS9yeF9mcm9udGVuZHMvQS9maWx0ZXJzL0xQ
Rl9CQjxicj4NCiZndDsgW2ZpbHRlcl9pbmZvX2Jhc2VdPGJyPg0KJmd0OyB0eXBlOiBBbmFsb2cg
TG93LXBhc3M8YnI+DQomZ3Q7IGJ5cGFzcyBlbmFibGU6IDA8YnI+DQomZ3Q7IHBvc2l0aW9uIGlu
ZGV4OiAxPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIFthbmFsb2dfZmlsdGVyX2Jhc2VdPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIGRlc2M6IHRoaXJkLW9yZGVyIEJ1dHRlcndvcnRoPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIFthbmFsb2dfZmlsdGVyX2xwXTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjdXRvZmY6IDIuMjRlKzA3PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJvbGxvZmY6IDYwPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC9t
Ym9hcmRzLzAvZGJvYXJkcy9BL3J4X2Zyb250ZW5kcy9BL2ZpbHRlcnMvTFBGX1RJQTxicj4NCiZn
dDsgW0lORk9dIFtBRDkzNjFfREVWSUNFXSBmaWx0ZXI8YnI+DQomZ3Q7IFtmaWx0ZXJfaW5mb19i
YXNlXTxicj4NCiZndDsgdHlwZTogQW5hbG9nIExvdy1wYXNzPGJyPg0KJmd0OyBieXBhc3MgZW5h
YmxlOiAwPGJyPg0KJmd0OyBwb3NpdGlvbiBpbmRleDogMDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCBbYW5hbG9nX2ZpbHRlcl9iYXNlXTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCBkZXNjOiBzaW5n
bGUtcG9sZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBbYW5hbG9nX2ZpbHRl
cl9scF08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgY3V0b2ZmOiA0ZSswNzxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByb2xsb2ZmOiAyMC88YnI+DQomZ3Q7
IC88YnI+DQomZ3Q7IC88YnI+DQomZ3Q7IE9uIHRoZSBvdGhlciBoYW5kLCB0aGUgVVNSUCBFMzIw
IHJldHVybnMgdGhpczovPGJyPg0KJmd0OyAvPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC9bSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA5LjMuMDsgQm9vc3RfMTA3MTAwOyA8YnI+DQom
Z3Q7IFVIRF80LjAuMC5IRUFELTAtZzkwY2U2MDYyPGJyPg0KJmd0OyBbSU5GT10gW01QTURdIElu
aXRpYWxpemluZyAxIGRldmljZShzKSBpbiBwYXJhbGxlbCB3aXRoIGFyZ3M6IDxicj4NCiZndDsg
bWdtdF9hZGRyPTE5Mi4xNjguMTAuMix0eXBlPWUzeHgscHJvZHVjdD1lMzIwLHNlcmlhbD0zMURG
QkI3LGNsYWltZWQ9RmFsc2UsYWRkcj0xOTIuMTY4LjEwLjI8YnI+DQomZ3Q7IFtJTkZPXSBbTVBN
Lm1haW5dIExhdW5jaGluZyBVU1JQL01QTSwgdmVyc2lvbjogNC4wLjAuMC1nOTBjZTYwNjI8YnI+
DQomZ3Q7IFtJTkZPXSBbTVBNLm1haW5dIFNwYXduaW5nIFJQQyBwcm9jZXNzLi4uPGJyPg0KJmd0
OyBbSU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBEZXZpY2Ugc2VyaWFsIG51bWJlcjogMzFERkJC
Nzxicj4NCiZndDsgW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gRm91bmQgMSBkYXVnaHRlcmJv
YXJkKHMpLjxicj4NCiZndDsgW0lORk9dIFtNUE0uUlBDU2VydmVyXSBSUEMgc2VydmVyIHJlYWR5
ITxicj4NCiZndDsgW0lORk9dIFtNUE0uUlBDU2VydmVyXSBTcGF3bmluZyB3YXRjaGRvZyB0YXNr
Li4uPGJyPg0KJmd0OyBbSU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBpbml0KCkgY2FsbGVkIHdp
dGggZGV2aWNlIGFyZ3MgPGJyPg0KJmd0OyBgbWdtdF9hZGRyPTE5Mi4xNjguMTAuMixwcm9kdWN0
PWUzMjAmIzM5Oy48YnI+DQomZ3Q7ICpbSU5GT10gW0FEOTM2MV9JRkFDRV0gYWdjPGJyPg0KJmd0
OyBbSU5GT10gW0FEOTM2MV9JRkFDRV0gYWdjKjxicj4NCiZndDsgW0lORk9dIFswL1JhZGlvIzBd
IFBlcmZvcm1pbmcgQ09ERUMgbG9vcGJhY2sgdGVzdCBvbiBjaGFubmVsIDAgLi4uPGJyPg0KJmd0
OyBbSU5GT10gWzAvUmFkaW8jMF0gQ09ERUMgbG9vcGJhY2sgdGVzdCBwYXNzZWQ8YnI+DQomZ3Q7
IFtJTkZPXSBbMC9SYWRpbyMwXSBQZXJmb3JtaW5nIENPREVDIGxvb3BiYWNrIHRlc3Qgb24gY2hh
bm5lbCAxIC4uLjxicj4NCiZndDsgW0lORk9dIFswL1JhZGlvIzBdIENPREVDIGxvb3BiYWNrIHRl
c3QgcGFzc2VkPGJyPg0KJmd0OyBbSU5GT10gWzAvRG1hRklGTyMwXSBCSVNUIHBhc3NlZCAoRXN0
aW1hdGVkIE1pbmltdW0gVGhyb3VnaHB1dDogMTM2MSBNQi9zKTxicj4NCiZndDsgW0lORk9dIFsw
L0RtYUZJRk8jMF0gQklTVCBwYXNzZWQgKEVzdGltYXRlZCBNaW5pbXVtIFRocm91Z2hwdXQ6IDEz
NjEgTUIvcyk8YnI+DQomZ3Q7IDxicj4NCiZndDsgVXNpbmcgbWFzdGVyIGNsb2NrIHJhdGU6IDMu
MmUrMDc8YnI+DQomZ3Q7IFVzaW5nIHNlYXJjaCBtYXNrOiByeF9mcm9udGVuZHMvQS88YnI+DQom
Z3Q7IDxicj4NCiZndDsgRm91bmQgdGhlIGZvbGxvd2luZyBmaWx0ZXJzIG1hdGNoaW5nICZxdW90
O3J4X2Zyb250ZW5kcy9BLyZxdW90Ozo8YnI+DQomZ3Q7ICpbSU5GT10gW0UzeHhfcmFkaW9fY3Ry
bF0gZmlsdGVyKjxicj4NCiZndDsgPGJyPg0KJmd0OyBBY3RpdmUgZmlsdGVyczo8YnI+DQomZ3Q7
IDxicj4NCiZndDsgQXZhaWxhYmxlIEluZm8gb24gQWN0aXZlIEZpbHRlcnM6PGJyPg0KJmd0OyAv
PGJyPg0KJmd0OyAvPGJyPg0KJmd0OyAvPGJyPg0KJmd0OyBUaGUgRTMyMCBnb2VzIHRvIHRoZSBh
ZDkzNjFfaWZhY2UgZmlsZSAoSSBoYXZlIG5vdCBjYWxsZWQgdGhlIHNldF9hZ2MgPGJyPg0KJmd0
OyBjb21tYW5kIHNvIHBlcmhhcHMgaXMgY2FsbGVkIGZvciB0aGUgaW5pdGlhbCBjb25maWd1cmF0
aW9uPykgYW5kIHRoZSA8YnI+DQomZ3Q7IEUzeHhfcmFkaW9fY3RybCBmb3IgdGhlIGZpbHRlciBj
b21tYW5kICh0aGF0JiMzOTtzIHN0cmFuZ2UgYmVjYXVzZSBJIHdvdWxkIDxicj4NCiZndDsgZXhw
ZWN0ZWQgdGhhdCBpdCBoYWQgcGFzc2VkIHRocm91Z2ggdGhlIGlmYWNlIHRvbykuIFRoZXJlJiMz
OTtzIGFsc28gbm8gPGJyPg0KJmd0OyBzaW5nbGUgZmlsdGVyIG5hbWUgcHJpbnRlZCwgbWF5YmUg
dGhlIGNvcnJlY3QgdHJlZSBwYXRoIGluIHRoZSBFMzIwIGlzIDxicj4NCiZndDsgbm90ICZxdW90
O3J4X2Zyb250ZW5kcy9BLy48YnI+DQomZ3Q7IDxicj4NCiZndDsgVGhlIGNhbGwgaW4gYWQ5MzYx
X2lmYWNlIGZpbGUgaXMgdGhpcyBvbmUgKHdoaWNoIGNhbGxzIHRoZSBycGNfY2xpZW50LCA8YnI+
DQomZ3Q7IHRoYXQmIzM5O3Mgd2h5IEkgdGhvdWdodCBvbiB0aGUgcHJldmlvdXMgZW1haWwgdGhh
dCB0aGUgY29uZmlndXJhdGlvbiBnb2VzIDxicj4NCiZndDsgdGhhdCB3YXkpOjxicj4NCiZndDsg
PGJyPg0KJmd0OyAvdm9pZCBzZXRfYWdjKGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDsgd2hpY2gsIGJv
b2wgZW5hYmxlKTxicj4NCiZndDsgezxicj4NCiZndDsgVUhEX0xPR19JTkZPKCZxdW90O0FEOTM2
MV9JRkFDRSZxdW90OywgJnF1b3Q7YWdjJnF1b3Q7KTs8YnI+DQomZ3Q7IF9ycGNjLSZndDtyZXF1
ZXN0X3dpdGhfdG9rZW4mbHQ7dm9pZCZndDsodGhpcy0mZ3Q7X3JwY19wcmVmaXggKyAmcXVvdDtz
ZXRfYWdjJnF1b3Q7LCB3aGljaCwgPGJyPg0KJmd0OyBlbmFibGUpOy88YnI+DQomZ3Q7IDxicj4N
CiZndDsgSSBhbSBydW5uaW5nIHRoZSBzYW1lIHNvdXJjZSBjb2RlIGZvciBib3RoIFVTUlAmIzM5
O3MsIGluIHRoZSBzYW1lIDxicj4NCiZndDsgZW52aXJvbm1lbnQsIGp1c3QgY2hhbmdpbmcgdGhl
IGNvbm5lY3Rpb24gZnJvbSBvbmUgVVNSUCB0byBhbm90aGVyIGluIG15IDxicj4NCiZndDsgUEMs
IHNvIEkmIzM5O20gYWZyYWlkIHRoaXMgaXMgYW4gc3BlY2lmaWMgRTMyMCBwcm9ibGVtLjxicj4N
CiZndDsgPGJyPg0KJmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IE1hcmlh
PGJyPg0KJmd0OyAvLzxicj4NCiZndDsgPGJyPg0KJmd0OyBFbCBsdW4sIDEyIGFiciAyMDIxIGEg
bGFzIDk6NTUsIE1hcmlhIE11w7FveiAoJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFp
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+IDxicj4NCiZndDsg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0
OyA8YnI+DQomZ3Q7wqAgwqAgwqBIaSBKdWxpYW4sPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAg
wqBUaGFua3MgZm9yIHRoZSBhbnN3ZXIuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqBZZXMs
IEkmIzM5O20gd29ya2luZyB3aXRoIHRoZSBFMzIwLiBJJiMzOTtsbCB0cnkgdG8gZm9yY2UgdGhl
ICZxdW90O19zZXR1cF9hZ2MmcXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqBjb2RlIGFzIHlvdSBzYWlk
IGFuZCBkZWJ1ZyBhZ2FpbiB0byBzZWUgaWYgaG9wZWZ1bGx5LCBJIGdldCB0aGUgQUdDPGJyPg0K
Jmd0O8KgIMKgIMKgY29uZmlndXJlZC48YnI+DQomZ3Q7wqAgwqAgwqBJZiBzb21lb25lIGhhcyBj
b25maWd1cmVkIHRoZSBFMzIwIGJlZm9yZSBJIHdpbGwgYWxzbyBhcHByZWNpYXRlIGFueTxicj4N
CiZndDvCoCDCoCDCoGhlbHAgb24gdGhpcy48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoFRo
YW5rcyBhZ2FpbiBmb3IgdGhlIGhlbHA8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoEtpbmQg
UmVnYXJkcyw8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoE1hcmlhPGJyPg0KJmd0OyA8YnI+
DQomZ3Q7wqAgwqAgwqBFbCBsdW4sIDEyIGFiciAyMDIxIGEgbGFzIDk6NDMsIEp1bGlhbiBBcm5v
bGQ8YnI+DQomZ3Q7wqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4gJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQom
Z3Q7IDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE1hcmlhLDxicj4NCiZndDsgPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgaXQganVzdCBkYXduZWQgb24gbWUsIHRoYXQgeW91IGFyZSB3b3JraW5nIHdp
dGggYW4gZTMyMCBub3QgYW4gZTMxMC48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oEFsdGhvdWdoIG1vc3Qgb2Ygd2hhdCBJIHNhaWQgc2hvdWxkIHN0aWxsIGFwcGx5IChlc3BlY2lh
bGx5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZXJ2ZXJ5dGhpbmc8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqByZWxhdGVkIHRvIHRoZSAoQUQ5MzZ4KSkgdGhpbmdzIG1pZ2h0IGJlIGEgbGl0dGxlIGJp
dCBkaWZmZXJlbnQuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSSYjMzk7bTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoGVwZWNpYWxseSB1bnN1cmUgYWJvdXQgdGhlIFJQQyBwYXJ0LCBoZXJlLjxicj4N
CiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgTWF5YmUgc29tZW9uZSBlbHNlIGNhbiBjaGlt
ZSBpbiByZWdhcmRpbmcgdGhpcyBhc3BlY3QuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqBIb3dldmVyLCBJIHRoaW5rIHRoYXQgYF9zZXR1cF9nYWluX2NvbnRyb2woZmFsc2UpYCBz
aG91bGQgcnVuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcmVnYXJkbGVzczxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoGR1cmluZyBkZXZpY2UgaW5pdC4gU28geW91IHNob3VsZCBzZWUgc29tZSBsb2dn
aW5nIG91dHB1dCB0aGVyZS48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoElmIF9z
ZXR1cF9hZ2MoKSBpcyBub3QgYmVlaW5nIGNhbGxlZCB5b3UgY291bGQgdHJ5IHRvIGZvcmNlIHRo
ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEFHQyBvbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBq
dXN0IGZvciB2ZXJpZmljYXRpb24gcHVycG9zZXMsIGJ5IGNoYW5naW5nPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgYF9zZXR1cF9nYWluX2NvbnRyb2woZmFsc2UpYDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoHRvIGBfc2V0dXBfZ2Fpbl9jb250cm9sKHRydWUpYCBpbiBgaW5pdGlhbGl6ZSgpYCBhbmQ8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBgc2V0X2Nsb2NrX3JhdGUoKWAuPGJyPg0KJmd0OyA8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSnVsaWFu
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBPbiA0LzkvMjEgMzozNCBQTSwgSnVs
aWFuIEFybm9sZCB3cm90ZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBNYXJpYSw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHRo
ZSBwcm9wZXJ0aWVzIHlvdSB3YW50IHRvIGNoYW5nZSAobWluL21heCB0aHJlc2hvbGRzKSBhcmU8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBub3QgZXhwb3NlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7IHZpYSB0aGUgcHJvcGVydHkgdHJlZS4gT25seSB0aGUgbW9kZSBpcyAoc2xvdyBvciBm
YXN0KS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBIb3dldmVyLCB0aGUgc2FtZSBjb2Rl
IHRoYXQgY29uZmlndXJlcyB0aGUgQUdDIHRoYXQgd29ya2VkPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgZm9yIG1lIG9uIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEIyMTAgc2hvdWxk
IHJ1biBvbiB0aGUgRTMxMC4gVGhlIFJQQyBjbGllbnQgc2hvdWxkIG5vdCBiZTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGludm9sdmVkIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgdGhh
dCBjYXNlIChhbHRob3VnaCBJ4oCZbSBub3Qgc3VyZSBhYm91dCB0aGF0KS48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEhhdmUgeW91IHRy
aWVkIGFwcGx5aW5nIG15IHBhdGNoIGRpcmVjdGx5IChJIGhhZCBzbGlnaHRseTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoG1vZGlmaWVkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgcmVnaXN0
ZXIgdmFsdWVzKS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IEFsc28sIGNvdWxkIHlvdSB0cnkgcnVubmluZyB5b3VyIGNvZGUgZGlyZWN0
bHkgb24gdGhlIEUzMTA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAoYnlwYXNzaW5nPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsgbmV0d29ya2VkLW1vZGUpIHRvIHNlZSBpZiB0aGF0IG1ha2Vz
IGEgZGlmZmVyZW5jZT88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7IENoZWVycyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBKdWxp
YW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSnVsaWFuIEFybm9sZCwgTS5TYzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
IEFtIDA5LjA0LjIwMjEgdW0gMDk6NDggc2NocmllYiBNYXJpYSBNdcOxb3o8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29t
PC9hPiZndDsmZ3Q7Ojxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyDvu788YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDsgSGkgSnVsaWFuLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkgYW5kIHRoYW5r
cyBmb3IgdGhlIGFuc3dlci48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgSSBoYXZlIGJlZW4gZGVidWdnaW5nIHRoZSBjb25m
aWd1cmF0aW9uIHByaW50aW5nIHRoZSBlbnRyaWVzIG9mPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7ICZxdW90O3NldF9hZ2MmcXVvdDsgdGhhdCBJIGhhdmUgZm91bmQgb24gY3BwL3B5
IGZpbGVzIGluIHRoZSB1aGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBkcml2ZXIgYW5kPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7IGV0dHVzIHJlcG9zaXRvcmllcywgYW5kIEkgY2Fu
IGNvbmZpcm0gdGhhdCB0aGUgY29kZSBpcyBub3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBnZXR0
aW5nIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7IHRoZSBhZDkzNjFfZGV2aWNl
LmNwcCBhcyBJIHRob3VnaHQgaW4gdGhlIGJlZ2lubmluZy48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgSWYgSSBnbyB0aHJv
dWdoIHRoZSBjb2RlIGZyb20gbXkgcHl0aG9uIHNjcmlwdCB0byB0aGU8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDsgYWQ5MzYxX2RldmljZS5jcHAgY29uZmlndXJhdGlvbiBmaWxlIEkg
c2VlIHRoZSBmb2xsb3dpbmc6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAqIFRoZSBweXRob24gc2NyaXB0cyBjYWxs
cyBmb3I8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBldHR1cy5yZm5vY19yeF9yYWRpby5zZXRfYWdj
IG1ldGhvZCw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHdoaWNoIGlz
IGZvdW5kIGluIGV0dHVzIHJlcG9zaXRvcnkgKGZvciB1c3JwX3NvdXJjZSBpcyBvbjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgZ251cmFkaW8vdWhkIGxpYik8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCogVGhlIHJmbm9jX3J4X3JhZGlvIGNsYXNzIGlzIGRlZmluZWQgaW48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGdyLWV0dHVzL2xpYi9yZm5vY19yeF9yYWRp
b19pbXBsLmgsIHdoZXJlIHRoZXJlIGlzIGFsc288YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhIHBv
aW50ZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRvIHRoZSByYWRp
b19jb250cm9sIGNsYXNzIGRlZmluZWQ6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAvY2xhc3MgcmZu
b2NfcnhfcmFkaW9faW1wbCA6IHB1YmxpYyByZm5vY19yeF9yYWRpbzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgcHVibGljOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHJmbm9jX3J4X3Jh
ZGlvX2ltcGwoOjp1aGQ6Oi8vcmZub2M6Om5vY19ibG9ja19iYXNlOjpzcHRyPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBibG9ja19yZWYpOzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgfnJmbm9jX3J4X3JhZGlv
X2ltcGwoKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIC8qKiogQVBJPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovLyoqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKi8vKioqKiovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqDCoCDCoCBkb3VibGUgc2V0X3JhdGUoY29uc3QgZG91YmxlIHJhdGUpOzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfYW50ZW5u
YShjb25zdCBzdGQ6OnN0cmluZyZhbXA7IGFudGVubmEsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Y29uc3Qgc2l6ZV90PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKg
IMKgIGRvdWJsZSBzZXRfZnJlcXVlbmN5KGNvbnN0IGRvdWJsZSBmcmVxdWVuY3ksPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgY29uc3Qgc2l6ZV90PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0X3R1bmVfYXJncyhjb25zdCA6OnVoZDo6ZGV2aWNl
X2FkZHJfdCZhbXA7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYXJncywgY29uc3Q8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRvdWJsZSBzZXRf
Z2Fpbihjb25zdCBkb3VibGUgZ2FpbiwgY29uc3Qgc2l6ZV90PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDC
oCDCoCBkb3VibGUgc2V0X2dhaW4oY29uc3QgZG91YmxlIGdhaW4sIGNvbnN0PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgc3RkOjpzdHJpbmcmYW1wOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgbmFtZSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfYWdjKGNvbnN0
IGJvb2wgZW5hYmxlLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9nYWluX3Byb2ZpbGUoY29uc3Qg
c3RkOjpzdHJpbmcmYW1wOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHByb2ZpbGUsIGNvbnN0PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBzaXplX3QgY2hhbik7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCBkb3Vi
bGUgc2V0X2JhbmR3aWR0aChjb25zdCBkb3VibGUgYmFuZHdpZHRoLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoGNvbnN0IHNpemVfdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqDCoCDCoCB2b2lkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqDCoCDCoCBzZXRfbG9fc291cmNlKGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDsgc291cmNlLCBj
b25zdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgc3RkOjpz
dHJpbmcmYW1wOyBuYW1lLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCBzZXRfbG9fZXhwb3J0X2VuYWJsZWQoY29u
c3QgYm9vbCBlbmFibGVkLCBjb25zdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgc3RkOjpzdHJpbmcmYW1wOyBuYW1lLCBjb25zdCBzaXplX3QgY2hhbik7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCBkb3VibGUg
c2V0X2xvX2ZyZXEoY29uc3QgZG91YmxlIGZyZXEsIGNvbnN0PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgc3RkOjpzdHJpbmcmYW1wOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgbmFtZSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfZGNfb2Zmc2V0KGNvbnN0IGJv
b2wgZW5hYmxlLCBjb25zdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0
X2RjX29mZnNldChjb25zdCBzdGQ6OmNvbXBsZXgmbHQ7ZG91YmxlJmd0OyZhbXA7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgb2Zmc2V0LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfaXFfYmFsYW5jZShjb25zdCBib29s
IGVuYWJsZSwgY29uc3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBzaXplX3QgY2hhbik7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9p
cV9iYWxhbmNlKGNvbnN0IHN0ZDo6Y29tcGxleCZsdDtkb3VibGUmZ3Q7JmFtcDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoGNvcnJlY3Rpb24sIGNvbnN0IHNp
emVfdCBjaGFuKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoHByaXZhdGU6PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCA6OnVoZDo6cmZub2M6OnJhZGlv
X2NvbnRyb2w6Oi8vc3B0ciBkX3JhZGlvX3JlZjs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoH07Lzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgKiBJbiBnci1ldHR1cy9saWIvcmZu
b2NfcnhfcmFkaW9faW1wbC5jcHAgd2hlbiBzZXRfYWdjPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Y29tbWFuZCBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcmVjZWl2
ZWQsIGl0IHJldHVybnMgYSBjYWxsIHRvIHRoZSBwb2ludGVyIEkgbWVudGlvbjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGJlZm9yZSwgYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqB0aGVyZWZvcmUsIHRvIHRoZSByYWRpb19jb250cm9sIGNsYXNzOjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgL3ZvaWQgcmZub2NfcnhfcmFkaW9faW1wbDo6c2V0X2FnYygvL2NvbnN0IGJv
b2w8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGUsIGNvbnN0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBzaXplX3QgY2hhbik8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHJldHVybiBkX3JhZGlvX3JlZi0mZ3Q7c2V0X3J4
X2FnYygvL2VuYWJsZSwgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqB9Lzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgKiBUaGUgcmFkaW9fY29udHJvbCBjbGFzcyBpcyBm
b3VuZCBpbiB0aGUgVUhEIGRyaXZlcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHJlcG9zaXRvcnkg
aW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHVoZC9ob3N0L2luY2x1
ZGUvdWhkL3Jmbm9jL3JhZGlvX2NvbnRyb2wuaHBwIHdoaWNoIGlzPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgdmlydHVhbGx5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBp
bXBsZW1lbnRlZCBhcyByYWRpb19jb250cm9sX2ltcGwgY2xhc3MgaW48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGUzeHhfcmFkaW9fY29udHJvbF9pbXBsLmNwcCAoaG9z
dC9saWIvdXNycC9ib2FyZC9lM3h4KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgKiBUaGlzIGZpbGUgY2FsbHMgdG8gdGhlIGFkOTM2MV9jdHJsIGNsYXNzIHdoaWNoIGlzPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgaW1wbGVtZW50ZWQgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoGUzeHhfYWQ5MzYxX2lmYWNlLmNwcCAoaG9zdC9saWIvdXNycC9i
b2FyZC9lM3h4KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgKiBBdCB0aGlz
IHBvaW50LCB0aGVyZSBpcyBhIGNhbGwgZm9yIHRoZSBycGNfY2xpZW50IHdoZXJlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgSSBnZXQga2luZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgb2YgbG9zdCBhYm91dCBob3cgdG8gY2hhbmdlIHRoZSByZWdpc3RlcnMgdGhpcyB3
YXk6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAvdm9pZCBzZXRfYWdjKGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDsgd2hpY2gsIGJvb2wgZW5hYmxl
KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgezxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgX3JwY2MtJmd0O3JlcXVlc3Rf
d2l0aF90b2tlbiZsdDt2b2lkJmd0Oyh0aGlzLSZndDtfcnBjX3ByZWZpeCArPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJnF1b3Q7c2V0X2FnYyZxdW90Oyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoHdoaWNoLCBlbmFibGUpOzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgfS88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgVG8gYmUgYnJp
ZWY6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAqIFdoZW4gZGVidWdnaW5nIEkgY2FuJiMzOTt0IHNlZSB0aGF0IG15
IGNvZGUgZ2V0cyB0byB0aGUgb25seTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgY29uZmlndXJhdGlvbiBmaWxlIEkgZm91bmQgd2hpY2ggaXMgdGhlIGFkOTM2MV9kZXZp
Y2UuY3BwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAqIFRoZSBzZXRfYWdj
IGNvbW1hbmQgc2VlbXMgdG8gYmUgbWFuYWdlIHRocm91Z2ggdGhlPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgcnBjX2NsaWVudCAoSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgdGhpbmsgdGhpcyBpcyByZWxhdGVkIHRvIHRoZSBtb2R1bGUgcGVyaXBoZXJhbCBtYW5hZ2Vy
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgd2hpY2ggaXMgYTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJnF1b3Q7bGF5ZXIgb2YgY29udHJvbCB0aGF0IFVIRCB1c2VzIHRv
IGFjY2VzcywgY29uZmlndXJlIGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNvbnRyb2w8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRoZSBoYXJkd2FyZSZxdW90Oywg
PGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfbXBtLmh0bWwiIHJl
bD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21h
bnVhbC9wYWdlX21wbS5odG1sPC9hPik8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCogSW5zaWRlIHRoZSBjb2RlLCBpbiBtdWx0aV91c3JwIGZpbGVzIHRoZXJlIGlzIGEgY29t
bWVudDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRoYXQgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBzcGVjaWZpYyBjb25maWd1cmF0aW9uIG9mIHRoZSBBR0MgaXMg
c2V0IGluIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHByb3BlcnR5X3RyZWUgYnV0PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBJIGRvbiYjMzk7dCBrbm93IGhvdyB0
byB3cml0ZSB0aGUgY29uZmlndXJhdGlvbiByZWdpc3RlcnMgb2Y8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqB0aGUgYWdjPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB0aHJv
dWdoIHRoZSBwcm9wZXJ0eV90cmVlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0OyBTbyBteSBxdWVzdGlvbnMgaGVyZSBhcmU6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgMS4gSG93IGNhbiBJ
IHNldCB0aGUgY29uZmlndXJhdGlvbiByZWdpc3RlcnMgb2YgdGhlIEFHQyw8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqB0aHJvdWdoIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgTVBNIG9yIHRoZSBwcm9wZXJ0eSB0cmVlPzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIDIuIEFyZSB0aGVyZSBleGFtcGxlcyBvbiBob3cgSSBjYW4gc2V0IHRoZXNlIHJl
Z2lzdGVyczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRocm91Z2ggdGhlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBNUE0gb3IgdGhlIHByb3BlcnR5X3RyZWU/PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7IEtpbmQgUmVnYXJkcyw8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDsgTWFyaWE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDsgRWwgbWnDqSwgMjQgbWFyIDIwMjEgYSBsYXMgMTE6MjAsIEp1bGlh
biBBcm5vbGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgKCZsdDs8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoE1hcmlhLDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgdGhhdCBzb3VuZHMgYWJvdXQgcmlnaHQhPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBIb3dldmVyLCB0byBtYWtlIGFic29sdXRlbHkgc3VyZSBHTlUg
UmFkaW8gcGlja3MgdXAgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgbW9kaWZpZWQ8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGxpYnVoZDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgeW91IGNvdWxkIGFkZCBhIHByaW50IHN0YXRlbWVudCBz
b21ld2hlcmUgaW4geW91ciBVSEQgY29kZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoFlvdSBjb3VsZCBhbHNvIGNvbXBhcmUgeW91ciBVSEQgaW5zdGFsbCBwcmVmaXgg
dG8gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcGF0aCBnci11aGQ8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHVzZXMgZm9yIGxpbmtpbmcgbGlidWhkLjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgQmVsb3cgaXMgdGhlIHBhdGNoIEkgdXNlZCBmb3IgbXkgdGVzdHM6PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqBkaWZmIC0tZ2l0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYS9ob3N0L2xpYi91c3Jw
L2NvbW1vbi9hZDkzNjFfZHJpdmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBiL2hvc3QvbGliL3VzcnAvY29tbW9uL2FkOTM2MV9kcml2
ZXIvYWQ5MzYxX2RldmljZS5jcHA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoGluZGV4IDllMDg4ODcxZC4uMGU1YmM4NmM1IDEwMDY0NDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgLS0tIGEvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2Ry
aXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgKysrIGIvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2
aWNlLmNwcDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgQEAgLTEwODks
NyArMTA4OSw3IEBAIHZvaWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oGFkOTM2MV9kZXZpY2VfdDo6X3NldHVwX2dhaW5fY29udHJvbChib29sIGFnYyk8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0m
Z3Q7cG9rZTgoMHgwRkQsIDB4NEMpOyAvLyBNYXggRnVsbC9MTVQ8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqBHYWluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBUYWJsZSBJ
bmRleDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAg
wqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDBGRSwgMHg0NCk7IC8vIERlY3IgU3RlcDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoFNpemUsIFBlYWs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoE92ZXJsb2FkIFRpbWU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDAsIDB4NkYpOyAv
LyBNYXggRGlnaXRhbCBHYWluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAtwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwMSwgMHgwQSk7IC8vIE1heCBE
aWdpdGFsIEdhaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCvCoCDC
oCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTAxLCAweDAyKTsgLy8gTWF4IERpZ2l0YWwg
R2Fpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAg
wqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwMywgMHgwOCk7IC8vIE1heCBEaWdpdGFsIEdhaW48
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9p
b19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDQsIDB4MkYpOyAvLyBBREMgU21hbGw8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBPdmVybG9hZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgVGhyZXNob2xkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDC
oCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTA1LCAweDNBKTsgLy8gQURDIExhcmdl
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgT3ZlcmxvYWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoFRocmVzaG9sZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgQEAgLTEwOTgsMTQgKzEwOTgsMTQgQEAgdm9pZDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYWQ5MzYxX2RldmljZV90Ojpfc2V0dXBfZ2Fpbl9jb250cm9s
KGJvb2wgYWdjKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAg
wqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwOCwgMHgzMSk7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bv
a2U4KDB4MTExLCAweDBBKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMUEsIDB4MUMpOzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgLcKgIMKgIMKgIMKgIF9pb19pZmFjZS0m
Z3Q7cG9rZTgoMHgxMjAsIDB4MEMpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgK8KgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjAsIDB4MDQpOzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lm
YWNlLSZndDtwb2tlOCgweDEyMSwgMHg0NCk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTIyLCAweDQ0
KTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKg
IF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjMsIDB4MTEpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEy
NCwgMHhGNSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDC
oCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTI1LCAweDNCKTs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9r
ZTgoMHgxMjgsIDB4MDMpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
LcKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjksIDB4NTYpOzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgK8KgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7
cG9rZTgoMHgxMjksIDB4MTEpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyQSwgMHgyMik7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCB9IGVsc2Ugezxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lm
YWNlLSZndDtwb2tlOCgweDBGQSwgMHhFMCk7IC8vIEdhaW4gQ29udHJvbDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoE1vZGUgU2VsZWN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqBKdWxpYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoE9uIDMvMjQvMjEgOTo1OSBBTSwgTWFyaWEgTXXD
sW96IHdyb3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0OyBI
aSBKdWxpYW4sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEkgaGF2ZSB0aGUgY2hh
bmNlIHRvIHRlc3QgdGhlIEFHQyB3aXRoIGEgQjIxMCBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBwZXJmb3JtIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgc2Ft
ZSBncmFwaDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0OyBhcyB5
b3Ugc2VuZCBtZSBidXQgSSBhbSB1bmFibGUgdG8gc2VlIHdoYXQgeW91IHNhdyBzbzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoEkgdGhpbmsgSSYjMzk7bTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0OyBtaXNzaW5nIHNvbWV0aGluZy48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDsgSSBhbHNvIGhhdmUgVUhEIDQuMCBhbmQgR05VUmFk
aW8gMy44IChpbnN0YWxsZWQgYnk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBzb3VyY2UpLjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0OyBUaGUgc3RlcHMgSSB0YWtlIGFyZSB0aGVzZTo8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCogRmlyc3QsIEkgY2hhbmdlIHRo
ZSBhZDkzNjFfZGV2aWNlLmNwcCB0aGF0IGlzIGluIHVoZDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgcmVwb3NpdG9yeSBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgLy91aGQv
aG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcCw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoHJlZ2lzdGVy
cyAweDEwMSwgMHgxMjAsIDB4MTI5LCAweDEyMyBhbmQgMHgxMkEuLzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgKiBUaGVuLCBJIGRvICZxdW90O21ha2Um
cXVvdDsgYW5kICZxdW90O21ha2UgaW5zdGFsbCZxdW90OyB0byBjb21waWxlPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgdGhlIGNoYW5nZXMgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoGJ1aWxkLWhvc3QgZm9sZGVyLjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgKiBBZnRlcsKgdGhhdCwgSSBnZW5lcmF0
ZSB0aGUgcHl0aG9uIHNjcmlwdCBmb3IgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgR1JDIGZs
b3c8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGdyYXBoIGFuZDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgbW92ZSB0aGUg
JnF1b3Q7c2V0X2FnYyZxdW90OyBjb21tYW5kIGFmdGVyIHRoZSAmcXVvdDtzZXRfcmF0ZSZxdW90
OyBvbmUuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAq
IEZpbmFsbHksIEkgcnVuIHRoZSBweXRob24uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7IEkgY2FuJiMzOTt0IHNlZSBteSB3YXZlZm9ybSBiZXR3ZWVuIHRoZSB2YWx1ZXMgSSBzZXQu
IElzIHRoZXJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBzb21ldGhp
bmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDsgd3Jvbmcgd2l0
aCB0aG9zZSBzdGVwcz8gRGlkIHlvdSBkbyBhbnl0aGluZyBlbHNlPzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0OyBLaW5nwqBSZWdhcmRzLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0OyBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0OyAvPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IC88YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDsgRWwgbWFyLCAyMyBtYXIgMjAyMSBhIGxhcyA5OjIzLCBNYXJpYSBNdcOx
b3o8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRh
cmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWls
LmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNv
bTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29t
PC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0OykgZXNjcmli
acOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgSGkgSnVsaWFuLDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgVGhhbmtzIGZvciB0aGUgY2hl
Y2tpbmchPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBJIGhhdmUgYWxz
byBjaGVja2VkIG15IGdyYXBoIGFuZCBzYW1wX3JhdGUgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBzZXR0aW5nIGZpcnN0LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
c28gSSYjMzk7bGw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoHRyeSB0byB0ZXN0IGl0IHdpdGggYSBzaW5lIHdhdmVmb3JtIGFzIHlvdTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoHN1Z2dlc3RlZCBhbmQgc2VlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqBpZiB0aGF0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqB3b3Jrcy4gSWYgbm90LCBtYXliZSBpcyBhbiBSRk5vQy9nci1l
dHR1cyBwcm9ibGVtLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEkmIzM5O2xsIHB1dDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYW4gaXNzdWU8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoGluIHRoZSBnci1ldHR1cyByZXBv
c2l0b3J5IGluIHRoYXQgY2FzZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoFRoYW5rcyBhZ2FpbiBmb3IgeW91ciBoZWxwLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgS2luZCBSZWdhcmRzLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgTWFyaWEuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqBFbCBtYXIsIDIzIG1hciAyMDIxIGEgbGFzIDA6MzYsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCgmbHQ7PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0i
X2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0Oyk8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoE1hcmlhLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgSSBjb3VsZG4mIzM5O3QgcmVzaXN0IHRyeWluZyB0aGlzIG15
c2VsZiwgYXMgeW91cjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgbW9k
aWZpY2F0aW9ucyBzZWVtZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoHJlYXNvbmFibGUuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBTbyBJIGRpZCBzZXQgdXAgYSBzaW1wbGUgdGVzdCB3aXRoIGEg
YjIxMDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNvbm5lY3RlZCB0bzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgbXkgc2lnZ2VuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBmZWVkaW5nPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBpdCB3aXRoIGEgdG9u
ZSBvZiB2YXJ5aW5nIHBvd2VyIGF0IDIuNDEwMkdIei48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoEZvciB0aGUgZGVmYXVsdCBVSEQgQUdDIHNldHRpbmdzIEkg
Y291bGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBjb25maXJtIHRoYXQ8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRoZSBzaWduYWw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdhczxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKga2VwdCBiZXR3ZWVuIC0x
MCBkQkZTIGFuZCAtMTIgZEJGUyAoMjAgKjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGxvZzEwKHx4
fCkgb3ZlciBhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBwcmV0dHkgd2lkZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgaW5wdXQgcG93ZXIgcmFuZ2UuPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBUaGlzIHdhcyB1c2lu
ZyBHUiAzLjggYW5kIFVIRCA0LjAuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBIb3dldmVyLCBJIGhhZCB0byBtb2RpZnkgdGhlIGdlbmVyYXRlIGZsb3ctZ3Jh
cGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHNsaWdodGx5LCBhczxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
dGhlIEFHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgd2FzIGVuYWJsZXMgYmVmb3JlIHRoZSBzYW1wbGUtcmF0ZSB3YXMgc2V0PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgKG1heWJlIGRvdWJsZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgY2hlY2s8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoYXQsIHRvbykuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBBZnRlcndhcmRzLCBJIHVzZWQgeW91ciBzZXR0aW5ncyAo
SSBkaWQgY2hhbmdlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcmVnIDB4MTI5PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB0byAweDExPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoMWRCPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqArLSksIHRob3VnaCku
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqBBbHNvIHRob3NlIHNldHRpbmdzIHdvcmtlZCBhcyBleHBlY3RlZCBhbmQgdGhlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgc2lnbmFsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqB3YXMgbmljZWx5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBrZXB0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBiZXR3ZWVuIC0yIGRCRlMgYW5kIC00IGRCRlMuPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBBdHRhY2hlZCBpcyBhIHBp
Y3R1cmUgb2YgdGhlIGZsb3ctZ3JhcGggSSB1c2VkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZm9y
IHRlc3RpbmcuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBNYXliZSB5b3U8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvdWxkIGFsc28gc3RhcnQgYnkgdGVzdGluZyB3aXRoIGEg
c2luZSB3YXZlIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB2ZXJp
ZnlpbmcgdGhhdCB5b3VyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqB2YWx1ZXMgZ2V0IGFwcGxpZWQgcHJvcGVybHkuPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBKdWxpYW48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoE9uIDMvMjIvMjEgNjoyMSBQ
TSwgTWFyaWEgTXXDsW96IHdyb3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSGkgSnVsaWFuLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IFN1
cmUuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsgSSBhbSByZWNlaXZpbmcgYSBRUFNLIHRocm91Z2ggdGhlIHJhZGlv
IGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcGxvdHRpbmfCoGl0
IGluIGE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoFFUIGdyYXBoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyAoc2VlIGdyYy5wbmcpPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBJZiBJIGhhdmUgQUdD
IGRpc2FibGUsIEkgZ2V0IHdoYXQgaXMgc2hvd24gaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZxdW90O3Rlc3Rfd2l0aG91dF9hZ2Mu
cG5nJnF1b3Q7LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsgdGhlbiBpZiBJIGVuYWJsZSBpdCwgSSBzZWUgd2hhdCBpcyBvbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJnF1b3Q7dGVzdF93aXRoX2Fn
Yy5wbmcmcXVvdDsgd2hlcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7ICZxdW90O1F1YWRyYXR1cmUmcXVvdDsgaXMgYWx3YXlz
IGNlbnRlciBtb3JlIG9yIGxlc3M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBpbiAwLjI1IHdoaWNo
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqBtaWdodCBmaXQgd2l0aDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsgdGhlIHZhbHVlcyBnaXZlbiBieSBkZWZhdWx0IChpbm5l
ciBoaWdoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdGhyZXNob2xkID08YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoC0xMmRCRlMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBpbm5lciBsb3c8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHRocmVz
aG9sZCA9IC0xMCBkQkZTKS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBJZiBJIGNoYW5nZSB0aGUgYWQ5MzYxX2Rl
dmljZS5jcHA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAoYXR0YWNoZWQpIGZyb208YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGxpbmUgMTA4NSw8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGJ5IGNoYW5naW5nPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyByZWdpc3RlcnMgMHgxMDEsIDB4MTIwIGFuZCAweDEyOSB3aXRoPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgdmFsdWVzIDB4MDIsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAweDA0IGFuZCAweDE2PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyByZXNwZWN0aXZlbHkgdG8gbW92ZSBiZXR3ZWVuIC0y
ZGJGUyBhbmQgLTQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBkQkZTLMKgIEk8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHNlZSB0aGUgc2FtZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgd2F2ZWZvcm0g
dGhhdCBJIGhhdmUgaW4gJnF1b3Q7dGVzdF93aXRoX2FnYy5wbmcmcXVvdDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAoSSBleHBlY3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoGl0IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBiZSBhcm91bmQgMC43KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEtpbmQgcmVnYXJkcyw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEVsIGx1biwgMjIgbWFyIDIwMjEgYSBsYXMg
MTc6NDUsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZn
dDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIg
dGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPiZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9i
bGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZn
dDsmZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgTWFyaWEsPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDvCoCDCoCDCoHdvdWxkIHlvdSBtaW5kIHNoYXJpbmcgeW91ciBwYXRjaD88YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqBPdGhlcndpc2UsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqBpdOKAmXMgaGFyZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdG8gdGVsbCB3aGF0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgZXhh
Y3RseSBpcyBnb2luZyBvbi48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoEp1bGlhbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgQW0gMjIuMDMuMjAyMSB1bSAxNjoy
NCBzY2hyaWViIE1hcmlhIE11w7Fvejxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFp
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29t
IiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtp
OTJAZ21haWwuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdt
YWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Om1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwv
YT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWls
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtp
OTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFt
dWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwu
Y29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRh
cmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDs6
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg77u/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEhpIEp1
bGlhbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBJIHJlLW9wZW4gdGhpcyB0b3BpYyB0
byBhc2sgYSBxdWVzdGlvbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGFib3V0IHRoZTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY29uZmln
dXJhdGlvbiBvZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB0aGUgYWQ5MzYxIHJlZ2lzdGVycyBpbiBHTlVy
YWRpby9SRk5vQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEFzIEkgdW5kZXJzdGFuZCwg
d2hlbiBBR0MgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGVkwqBpbiBzbG93PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBtb2RlLCB0aGVyZTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgYXJlIDQ8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgY29uZmlndXJhYmxlIHRocmVzaG9sZHMgKGlubmVyIGxvdyw8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqBpbm5lciBoaWdoLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgb3V0ZXLCoGxvdywgYW5kPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoG91dGVywqBoaWdoKSBhbmQgYWxzbyA0IGNvbmZpZ3VyYWJsZTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoHN0ZXBzIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqByZWFjaCB0aGUgem9uZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBiZXR3ZWVuwqB0aGUgaW5uZXIgdGhy
ZXNob2xkcy48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBJIGhhdmUgZm91bmQgdGhlIGNv
bmZpZ3VyYXRpb24gb2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGVzZSByZWdpc3RlcnM8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgwqBpbsKgL3VoZC9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFfZHJp
dmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGFuZMKgY2hhbmdlZCB0aGVp
ciB2YWx1ZXMgdGhlcmUuIFRoZW4sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSSBoYXZlPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqByZWNvbXBpbGVkPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB1aGQgKG1ha2U8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmFtcDsgbWFrZSBpbnN0YWxsKSBidXQsIHdoZW4gSSByZS1ydW4g
bXk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBncmFwaCBJIHNlZSBubzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY2hhbmdlIGluIG15PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoHdhdmVmb3JtIChpdCBzZWVtIHRvIHN0YXkgaW4gdGhlIHNhbWU8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqBsaW1pdHMgYXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoHRoZSBkZWZhdWx0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNvbmZpZ3VyYXRpb24p
Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEFtIEkgbWlzc2luZ8KgYW55wqBvdGhlcsKg
c3RlcCB0aGF0IEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBoYXZlIHRvIGRvbmXCoHRvPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjb25m
aWd1cmUgdGhlc2U8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcGFyYW1ldGVycz88YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
TWFyaWE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBFbCB2aWUsIDEyIG1hciAyMDIxIGEg
bGFzIDEwOjA0LCBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE11w7Fvejxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgKCZsdDs8YSBo
cmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJA
Z21haWwuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWls
LmNvbTwvYT4mZ3Q7ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRh
cmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4g
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4m
Z3Q7Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
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
aTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7Jmd0OyZndDsmZ3Q7KSBlc2NyaWJp
w7M6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgT2sgSnVsaWFuLCBJIHdpbGwg
Y2hlY2sgdGhlIHRyZWU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBub2RlIGFuZCB0cnkgdG88YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1v
ZGlmeSB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgcHJvcGVydGllcy4gVGhhbmtzIGFnYWlu
IGZvciB0aGUgaGVscCE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBLaW5kIFJl
Z2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgRWwganVlLCAxMSBtYXIgMjAyMSBhIGxhcyAxODoyNiw8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqBKdWxpYW4gQXJub2xkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCgmbHQ7
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
aXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2Js
YW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9h
PiZndDsmZ3Q7Jmd0OyZndDsmZ3Q7KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBlc2NyaWJpw7M6
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgTWFyaWEsPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoC9zZWxmLmV0dHVzX3Jm
bm9jX3J4X3JhZGlvXzAuc2V0X3J4X2FnYyhGYWxzZSwgMCkvPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7
IGJ1dCBJIGhhdmUgcmVjZWl2ZWQgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZm9sbG93aW5n
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBlcnJvclRoYXQmIzM5O3M8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oHdoeSBJPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdhdmUgdGhlIHJlZmVyZW5jZSAo
WzFdKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHNob3dpbmcgdGhlIGNvcnJlY3Q8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHN5bnRheCA7
KTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBBbnl3YXlzLCBnbGFkIGl0IHdvcmtlZCBv
dXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmb3IgeW91ITxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBZb3UgbWlnaHQgY29uc2lkZXIgZmlsaW5nIGE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBidWcgaXNzdWU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGFnYWlu
c3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoGdyLWV0dHVzIG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdpdGh1Yi48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyBCeSB0aGUgd2F5
LCBJIGhhdmUgcmVhZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRoYXQgdGhlcmUgYXJlPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzZXZl
cmFsIG1vZGVzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZvciBBR0M8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgKGZhc3Qsc2xvdyxoeWJyaWQuLikgSSB3YXM8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB3b25kZXJpbmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoHdoaWNoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0eXBlIGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoGltcGxlbWVudGVkIGJ5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7
IGRlZmF1bHQgYW5kIGlmIGl0IGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcG9zc2libGUgdG88
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNoYW5nZSBBR0M8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1vZGUg
aW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaC48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgVGhvc2UgbW9kZXMgd2VyZSBtYWlubHk8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBkaWN0YXRlZCBieSB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoEFEOTM2MS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoERlZmF1bHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
c2hvdWxkIGJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3Nsb3cmcXVvdDsu
IFRoZSAmcXVvdDtoeWJyaWQmcXVvdDsgbW9kZSBpcyBub3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoGltcGxlbWVudGVkIGFzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBmYXIgYXMgSSBrbm93Ljxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBXaGljaCBtb2RlIHlvdSB3YW50ICgmcXVvdDtzbG93JnF1
b3Q7IC88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmcXVvdDtmYXN0JnF1b3Q7KTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgZGVwZW5kcyBvbiB0aGU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgc2lnbmFsIHlvdSB3YW50IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoHJlY2VpdmUuIEZvciBidXJzdC1tb2RlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ZGlnaXRhbCBzaWduYWxzIHlvdTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgbWlnaHQgd2FudCB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBzd2l0Y2ggdG8gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90
O2Zhc3QmcXVvdDsgbW9kZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSG93ZXZlciwg
SSB0aGluayB0aGlzIGlzIG9ubHk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBwb3NzaWJsZSBieTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ZGlyZWN0bHkgd3JpdGluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0byB0aGUgY29y
cmVzcG9uZGluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHByb3BlcnR5LXRyZWUgbm9kZS48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEFnYWluLDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgSSYjMzk7bSBub3Q8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc3VyZSBhYm91dDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBVSEQtNC4wL2dyLWV0dHVzIHRob3VnaC48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoEp1bGlhbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgT24gMy8xMS8yMSA1OjI2IFBNLCBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE11
w7FveiB3cm90ZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBIaSBKdWxpYW4s
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0OyBJIGhhdmUgaW5pdGlhbGx5IGNoYW5nZWQgdGhlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgcHl0aG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBn
ZW5lcmF0ZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoGZvciBteTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmbG93Z3JhcGgg
d2l0aCB0aGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgbGluZTo8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAvc2VsZi5ldHR1
c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoRmFsc2UsIDApLzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgYnV0
IEkgaGF2ZSByZWNlaXZlZCB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmb2xsb3dpbmcgZXJy
b3I6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyBUL3JhY2ViYWNrIChtb3N0IHJlY2VudCBjYWxsPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgbGFzdCk6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCBGaWxlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmcXVvdDtjb25z
dGVsbGF0aW9uX3NvZnRfZGVjb2Rlci5weSZxdW90OywgbGluZTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgMzAxLCBpbjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bW9kdWxlJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgbWFpbigpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCBGaWxlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
cXVvdDtjb25zdGVsbGF0aW9uX3NvZnRfZGVjb2Rlci5weSZxdW90OywgbGluZTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgMjc3LCBpbiBt
YWluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCB0YiA9IHRvcF9i
bG9ja19jbHMoKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgRmlsZTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJnF1b3Q7Y29uc3RlbGxhdGlv
bl9zb2Z0X2RlY29kZXIucHkmcXVvdDssIGxpbmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoDE2NiwgaW48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgX19pbml0X188YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoVHJ1ZSwgMCk8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBBdHRyaWJ1dGVFcnJvcjo8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmIzM5O3Jmbm9jX3J4X3JhZGlvX3NwdHImIzM5Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgb2JqZWN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBoYXMgbm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgYXR0cmlidXRlICYjMzk7c2V0X3J4X2FnYyYjMzk7Lzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQnV0
IHJmbm9jX3JhZGlvX2ltcGwuY2M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBkZWZpbmVzIGl0Ojxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsgL3ZvaWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oHJmbm9jX3J4X3JhZGlvX2ltcGw6OnNldF9hZ2MoY29uc3QgYm9vbDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZW5hYmxlLDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBjb25zdCBzaXplX3QgY2hhbik8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0OyB7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCByZXR1cm48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGRf
cmFkaW9fcmVmLSZndDtzZXRfcnhfYWdjKGVuYWJsZSwgY2hhbik7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsgfS88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IFNlYXJjaGluZyB0aGU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqByZm5vY19yeF9yYWRpb19zcHRyIHdpdGg8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoGdyZXA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRha2VzIG1lIHRvPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZxdW90O3N3aWcmcXVvdDsgZmlsZXMuIEk8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyBoYXZlIGxvb2tlZCBhdCBldHR1c19zd2lnLnB5PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgYW5kIHNlZW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoHRoYXQgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBjb21tYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoG5hbWUg
aXMgc2V0X2FnYzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IGluc3RlYWQgb2Yg
c2V0X3J4X2FnYzo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC9kZWYgc2V0X2FnYyhzZWxmLCBlbmFibGU6ICZxdW90
O2Jvb2w8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNvbnN0JnF1b3Q7
LCBjaGFuOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgJnF1b3Q7c2l6ZV90PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0
JnF1b3Q7KSAtJmd0OyAmcXVvdDt2b2lkJnF1b3Q7Ojxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgciZxdW90OyZxdW90OyZxdW90Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBzZXRfYWdjKHJmbm9jX3J4X3JhZGlvIHNlbGYsIGJvb2w8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvbnN0IGVuYWJsZSw8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2l6ZV90IGNvbnN0IGNoYW4pPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCBFbmFibGUvZGlzYWJsZSB0aGU8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqBBR0MgZm9yPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqB0aGlzIFJYPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqByYWRpbyAoaWY8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgYXZhaWxhYmxlKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJnF1b3Q7JnF1b3Q7JnF1b3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCByZXR1cm48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoF9ldHR1c19zd2lnLnJmbm9jX3J4X3JhZGlvX3NldF9h
Z2Moc2VsZiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZW5hYmxlLCBjaGFuKS88YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsgLzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IENoYW5naW5n
IHRoaXMgaW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZmxvd2dyYXBoLnB5IHNlZW1zIHRv
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqB3b3JrISEgVGhhbmtzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZvciB0aGUgaGVs
cCBvbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IHRoaXMhIEkgcHV0IHRoaXMg
aW5mb3JtYXRpb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBoZXJlIGp1c3Q8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGluIGNhc2U8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHNvbWVvbmU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgaXMgc3R1Y2sgaW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsgc2FtZSBwb2ludC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEJ5IHRoZSB3YXksIEkgaGF2ZSBy
ZWFkIHRoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGVyZSBhcmU8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHNldmVyYWw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1vZGVzIGZvcjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBBR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAo
ZmFzdCxzbG93LGh5YnJpZC4uKSBJIHdhczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHdvbmRlcmlu
Zzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgd2hpY2ggdHlwZSBpczxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpbXBsZW1lbnRlZCBieTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IGRlZmF1bHQgYW5kIGlmIGl0IGlzIHBvc3NpYmxlIHRvPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBjaGFuZ2UgQUdDPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBtb2RlIGlu
IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmbG93Z3JhcGguPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBFbCBtacOpLCAxMCBtYXIgMjAyMSBhIGxhczxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoDEyOjAzLCBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgTXXDsW96PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCgmbHQ7
PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVr
aTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBn
bWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpt
YW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNv
bTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpt
YW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+
Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFt
dWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsm
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7ICZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTky
QGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFp
bC5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11
a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0
OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0i
X2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5j
b208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9h
PiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21h
aWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFt
dWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZn
dDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRh
cmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdt
YWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5j
b20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0
OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgSGkgSnVsZXMsPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgVGhhbmsgeW91LCBJIHdpbGwgdHJ5IGl0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgYW5kwqBsZXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHlv
dSBrbm93PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqBhcyBzb29uIGFzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHBvc3NpYmxl
Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoEJ5IHRoZSB3YXksIEkgaGF2ZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoGNoZWNrZWQgdGhlIHB5dGhvbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBn
ZW5lcmF0ZWTCoHVzaW5nIHRoZSBVSEQgVVNSUDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqBTT1VSQ0UgYmxvY2sgKGluc3RlYWQgb2Y8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqB0aGUgUkZOb0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHJh
ZGlvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBibG9jaykgd2l0aDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBBR0MgYWN0aXZl
IGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBpdCBnZW5lcmF0
ZXMgdGhlIHNldCBvZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEFHQyBmaW5lLjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgU28sIGFzPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB5b3Ugc2FpZCw8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgaXQgaXMgZml4ZWQgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgZ3ItdWhkIGJ1dCBpdCBtaWdodDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoHN0aWxsIGJlIGEgYnVnIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBnci1ldHR1cy48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBU
aGFua3MgYWdhaW4gZm9yIHRoZSBoZWxwITxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEtpbmQgUmVnYXJk
cyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEVsIG1pw6ks
IDEwIG1hciAyMDIxIGE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBsYXMgMTE6MjUsPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBKdWxpYW4gQXJub2xkPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
PC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2Js
YW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0i
X2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVj
b2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9y
ZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPiZndDsmZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
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
OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTWFyaWEsPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7IFNvLCBpZiBJIHVuZGVyc3RhbmQ8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNvcnJlY3RseSwgSTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgaGF2ZSB0
byBwdXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhlcmUgYWxzbzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgbGlrZTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7c2VsZi5ldHR1c19yZm5v
Y19yeF9yYWRpb18wLnNldF9yeF9hZ2MoZW5hYmxlLDApJnF1b3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBpc24mIzM5O3QgaXQ/PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgRXhhY3RseSEgVGFrZSBhIGxvb2s8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhdCBbMV08
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGZvciB0aGU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvcnJlY3Qg
c3ludGF4Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFsxXTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqA8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC9n
ci1ldHR1cy9ibG9iLzEwMzhjNGNlNTEzNWEyODAzYjUzNTU0ZmM0OTcxZmUzZGU3NDdkOWEvaW5j
bHVkZS9ldHR1cy9yZm5vY19yeF9yYWRpby5oI0w5NyIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9
Il9ibGFuayI+aHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMvYmxvYi8x
MDM4YzRjZTUxMzVhMjgwM2I1MzU1NGZjNDk3MWZlM2RlNzQ3ZDlhL2luY2x1ZGUvZXR0dXMvcmZu
b2NfcnhfcmFkaW8uaCNMOTc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTGV0IG1lIGtu
b3cgaWYgdGhhdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHdvcmtlZCBvdXQ8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGZvciB5b3UuPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgQ2hlZXJzLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBKdWxpYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoE9uIDMvMTAvMjEgOTo1OSBBTSw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBNYXJpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgTXXDsW96IHdy
b3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyBIaSBKdWxpYW4sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7IFRoYW5rcyBmb3IgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcXVpY2sgYW5zd2Vy
Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBJIHRo
aW5rIHlvdSBtaWdodDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGJlIHJpZ2h0PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBhYm91dDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdGhlIHBvc3NpYmxlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoGJ1ZyB0dXJuaW5nIG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBBR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgZnJvbSBHUkMuIEkgaGF2ZTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoGNoZWNrZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoHRoZSBmbG93IGdyYXBoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdlbmVy
YXRlZCBhbmQgdGhlcmUmIzM5O3Mgbm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsgc2V0X3J4X2FnYyBlbmFibGU8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqBvcHRpb24gKEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGNo
ZWNrZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoHRoZSBjKys8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZGVmaW5pdGlvbiBi
bG9jazxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3aGVy
ZSB0aGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7IG9wdGlvbiBkaWQgYXBwZWFyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYnV0IEk8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoGhhZG4mIzM5O3QgbG9vazxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgYXQgdGhl
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHB5dGhvbiBnZW5lcmF0ZWQpLjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBUaGUgbGluZXMgcmVs
YXRlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHRvIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgcmFkaW8gaW4gbXk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgZmxvd2dyYXBoIGFyZSB0aGVzZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAvc2VsZi5ldHR1c19yZm5v
Y19yeF9yYWRpb18wID08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZXR0dXMucmZub2Nf
cnhfcmFkaW8oPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBzZWxmLnJm
bm9jX2dyYXBoLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdWhkLmRldmlj
ZV9hZGRyKCYjMzk7JiMzOTspLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIC0xLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IC0xKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDCoHNl
bGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcmF0ZShzYW1wX3JhdGUpPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5vY19y
eF9yYWRpb18wLnNldF9hbnRlbm5hKCYjMzk7UlgyJiMzOTssIDApPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5vY19yeF9yYWRp
b18wLnNldF9mcmVxdWVuY3koY2YsIDApPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9nYWluKGdh
aW4sIDApPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZu
b2NfcnhfcmFkaW9fMC5zZXRfYmFuZHdpZHRoKHNhbXBfcmF0ZSwgMCk8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3Jh
ZGlvXzAuc2V0X2RjX29mZnNldChUcnVlLCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfaXFf
YmFsYW5jZShUcnVlLCAwKS88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsgU28sIGlmIEkgdW5kZXJzdGFuZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgY29ycmVjdGx5LCBJPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBoYXZlIHRvIHB1dDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqB0aGVyZSBhbHNvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHNvbWV0aGluZyBsaWtlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCZxdW90O3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKGVu
YWJsZSwwKSZxdW90Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgaXNu
JiMzOTt0IGl0Pzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IEVsIG1pw6ksIDEwIG1hcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoDIwMjEg
YSBsYXMgOToxNiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgKCZsdDs8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJf
YmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZn
dDsmZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0
OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPiZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJf
YmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4gJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9
Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDsmZ3Q7Jmd0Oykg
ZXNjcmliacOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgTWFyaWEsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7wqAgwqAgwqBJIG1pZ2h0IG5vdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGJl
IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcmlnaHQgcGVyc29u
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqB0byBhbnN3ZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhpcywgYXMgbXk8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZXhwZXJpZW5jZSB3
aXRoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
wqAgwqAgwqBVSEQgNC4wIGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgcmVsYXRpdmVseTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgbGltaXRlZDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgYXQgdGhlIG1vbWVu
dC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoEhvd2V2ZXIsIEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBjYW50IHRlbGw8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHlvdSB0aGF0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgQUdDIG9uPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEIyeDAgZGV2aWNlcyBpczxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjb250cm9sbGVkIHZpYTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgc29mdHdh
cmUgKHVzaW5nPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBzZXRfcnhf
YWdjKCkpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgVGhlcmUgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbm8gbmVlZCB0
bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaXJlY3Rs
eSBtb2RpZnkgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqBzdGF0ZSBvZiBhbnk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBwaW5z
IG9mPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqB0aGUgRlBHQS48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkg
dmFndWVseTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHJlbWVtYmVyIHRoYXQ8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRoZXJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3YXMgYSBidWc8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgaW4gYW4gZWFybGllcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB2ZXJzaW9uIG9mIGdyLXVoZDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgKHNvbWV3aGVyZSBp
bjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoDMuNykgdGhhdDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgbWFkZSBpdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZGlmZmljdWx0PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoHRvIHR1cm4gb24gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoEFHQyB1c2luZyBHUkMuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBUaGF0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgcGFydGljdWxhciBvbmUgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoGZpeGVkIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBnci11aGQuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE5v
dCBzdXJlIGFib3V0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoGdyLWV0dHVzLCB0aG91Z2guPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXliZSB0cnkgdXNpbmc8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoHNldF9yeF9hZ2MoKTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgbWFudWFsbHkgaW48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgeW91IGZsb3ctZ3JhcGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgKCoucHkpIGFuZCBzZWU8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoGlmIHRoYXQgaGVs
cHMuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoE9uIDMvOS8yMTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oDU6MTEgUE0sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBNYXJpYSBN
dcOxb3ogdmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFVTUlAtdXNlcnMgd3JvdGU6
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqAgJmd0OyBIaSBhbGwsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSSB3YXM8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqB3b25kZXJpbmcgaWYgaXQgaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHBvc3NpYmxlIHRvPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoGVuYWJsZSBBR0MgZnJvbTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgUkZOb0MgcmFkaW88YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IGJsb2NrIGlu
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgR05VUmFkaW8uIEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoHVzZSBVSEQgNC4wPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoHZlcnNpb24gYW5kIEdOVVJhZGlvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoDMuOCB3aXRoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBnci1ldHR1cy48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
OyBJIHNlZSB0aGF0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdGhlIFJGTm9DIFJ4PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqByYWRpbyBi
bG9jayBoYXMgYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgZW5hYmxlL2Rpc2FibGUvZGVmYXVsdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgQUdDPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBvcHRpb24gaW4gdGhl
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBHTlVSYWRpbyBibG9jazxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
d2hpY2ggSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBhc3N1bWUgY2FsbHMgdGhlPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFVIRCBmdW5jdGlv
bjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgICZndDsgJnF1b3Q7c2V0X3J4X2FnYyZxdW90Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqA8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqDCoMKgKDxhIGhyZWY9Imh0dHBzOi8vZmlsZXMuZXR0
dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11bHRpX191c3JwLmh0bWwjYWJkYWIx
ZjZjMzc3NWE5MDcxYjE1Yzk4MDVmODY2NDg2IiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2Js
YW5rIj5odHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvY2xhc3N1aGRfMV8xdXNycF8xXzFt
dWx0aV9fdXNycC5odG1sI2FiZGFiMWY2YzM3NzVhOTA3MWIxNWM5ODA1Zjg2NjQ4NjwvYT4pPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgICZndDsgSSBoYXZlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYWxzbyBjaGVj
a2VkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBvbiB0aGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEZQR0Eg
c2lkZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGF0IHRoZXJlIGlzIGE8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgcGluIGZyb208YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEZQ
R0EgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoCAmZ3Q7IEFEOTM2MTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgY2FsbGVkwqBYQ1ZSX0VOQV9BR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdoaWNoIGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoHNldCBhbHdheXMgdG8gMSBvbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgdG9wPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBsZXZlbCBvZjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgdGhlIEZQ
R0E8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBpbWFnZSAoc2VlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBhdHRhY2hlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZmlsZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmcXVvdDtlMzIwLnYmcXVvdDssIGxpbmUgODcyKS48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgVGhpcyBwaW4sPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBhY2NvcmRp
bmcgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Imh0
dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0
YS1zaGVldHMvQUQ5MzYxLnBkZiIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0
cHM6Ly93d3cuYW5hbG9nLmNvbS9tZWRpYS9lbi90ZWNobmljYWwtZG9jdW1lbnRhdGlvbi9kYXRh
LXNoZWV0cy9BRDkzNjEucGRmPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgaXMgdGhlICZxdW90O01hbnVhbDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgQ29udHJvbCBJbnB1dCBmb3I8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQXV0b21hdGljIEdhaW48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgQ29udHJvbCAoQUdDKSZxdW90Oy48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAm
Z3Q7IE11c3QgYmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGlzIHBpbiBzZXQ8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRvIDAgdG88YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGhhdmUgQUdDPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoHdvcmtpbmc/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBJZsKgbm90LDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoGhvdyBjYW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoEnCoGdldCBBR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoHdvcmtpbmc/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oEkmIzM5O3ZlIG1hZGUgc29tZSB0ZXN0czxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBlbmFibGluZy9kaXNhYmxpbmcgdGhpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgb3B0aW9uIGJ1dCBJPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoGRvIG5vdCBzZWUgYW55PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoGNoYW5nZXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoGJldHdlZW4gdGhlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyB3YXZl
Zm9ybXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqByZWNlaXZlZC48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
OyBBbnkgaGVscDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHdvdWxkIGJlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBhcHByZWNpYXRlZC48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgTWFyaWE8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDC
oF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
OyBVU1JQLXVzZXJzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgbWFpbGluZyBsaXN0PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0OyA8YSBocmVmPSJtYWlsdG86VVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
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
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwv
YT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9
Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
PC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9h
PiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsm
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5V
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7Jmd0OyZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
OlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
PC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9h
Pjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRh
cmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZn
dDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8
YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5r
Ij5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7Jmd0OyZn
dDsmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgPGEgaHJlZj0iaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tIiByZWw9Im5vcmVmZXJyZXIi
IHRhcmdldD0iX2JsYW5rIj5odHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFpbHRvOnVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyA8
YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+DQo=
--0000000000007db38905c0010a75--

--===============2260473955644853618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2260473955644853618==--
