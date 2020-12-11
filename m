Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCA32D7FAE
	for <lists+usrp-users@lfdr.de>; Fri, 11 Dec 2020 20:49:35 +0100 (CET)
Received: from [::1] (port=54938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knoPu-0001EI-Ny; Fri, 11 Dec 2020 14:49:26 -0500
Received: from mail-vs1-f49.google.com ([209.85.217.49]:33766)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1knoPq-000191-Rr
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 14:49:22 -0500
Received: by mail-vs1-f49.google.com with SMTP id e15so3920105vsa.0
 for <usrp-users@lists.ettus.com>; Fri, 11 Dec 2020 11:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BslfH/603jee6roGpCuqZASfAvoWCXKcBO+geGSu7fI=;
 b=OnvZmE6NgekAaxFUcTmzaLzbiMMT5NCc8ooDmBueqW8QM2FZITq74W1TK0cteMZiYN
 R6EUgSh1Kbn8PFmHDlgkhriantmf0pHeD/gUf7NyKOkTZrSeja0+G/4kGTW7chOxnG2x
 oXaY3q0s7nlydvfo15P8sfEmD8EhhX7YXqmuIxEc0anMcW59neFg0iABsQJ+SAvTmiEq
 nH7VNyHYgj/MUikFBE9NBAdntahRmy1Pv79A8nCArnyYWsP2ajhXIxu0EqgnBfBs+rl8
 6D09gg+YDrrkmbYyG9BioJwZ/BzZUcOd+6XT27ecr+6zR95qCjae6GzvtNgXGGCnGJmK
 7R0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BslfH/603jee6roGpCuqZASfAvoWCXKcBO+geGSu7fI=;
 b=cIEiMtRyutzYg7c2GDZBegEzqvCnYNLFRiAhl/Mq+MWudWYbiIUIHE9v+vpoqWIM56
 BFdbN3f+r/erM9aMCB5WPR0VIM/Ulp37EZJSbVPJjZbHY+hOfo1PFFxvu4pmPSfdMbxf
 if/NqPiflKS8NJzoCm5MTb0SmgHtsIoKpdRl8y8WF2LBz2rB//Q27jxCrXIkwi/lKhUi
 TQ/hO/78Q25FdQTK7AD8StCp50un1E995yEbnA7DyfULWsXzj6FWmvP22Pr7yS6SuaUm
 bLTGxUVWs9hQs+z18Xb8h/gMEtan1wrKWZuvx3MpAZlFZ8NSvIybKW3mtn3N1fKgL6Kz
 Siiw==
X-Gm-Message-State: AOAM531q+i54ussQ9BU2zd5lJV7gpd8gy0WvBkBhJstb3zyCJkaeYSwE
 lg6Oo1q0a+TWWBec9R7nDHY7bzLkcbD4evLFYaOAlJey
X-Google-Smtp-Source: ABdhPJyVmUBEtrHqOIO2/kQHzKDuX8uSC3Gd2h+wmG+pLNnoUXvdL6kcnUX+iRgCHUfqz3DMwKaOVHfK5a7/9v2KY8I=
X-Received: by 2002:a67:f555:: with SMTP id z21mr14696943vsn.7.1607716122236; 
 Fri, 11 Dec 2020 11:48:42 -0800 (PST)
MIME-Version: 1.0
References: <BN7PR04MB4387D9599B8341AFACDD24B18FCC0@BN7PR04MB4387.namprd04.prod.outlook.com>
In-Reply-To: <BN7PR04MB4387D9599B8341AFACDD24B18FCC0@BN7PR04MB4387.namprd04.prod.outlook.com>
Date: Fri, 11 Dec 2020 14:48:06 -0500
Message-ID: <CAL7q81tZsMy4jDZBB7TFbvfBiwC8EMLniBeBqRcxHPX0AYhbeg@mail.gmail.com>
To: Dylan Baros <dylan.baros@ni.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Receiver error ERROR_CODE_LATE_COMMAND with
 txrx_loopback_to_file example.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============1716178999375384510=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1716178999375384510==
Content-Type: multipart/alternative; boundary="0000000000005dac9e05b6359458"

--0000000000005dac9e05b6359458
Content-Type: text/plain; charset="UTF-8"

Hi Dylan,

Can you try adding "rx_usrp->set_time_now(uhd::time_spec_t(0.0));" after
line 526 in txrx_loopback_to_file.cpp, re-build, and see if that fixes your
issue?

Jonathon

On Wed, Dec 9, 2020 at 9:37 AM Dylan Baros via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Good morning,
>
> I am attempting to run the txrx_loopback_to_file example with the
> following hardware:
>
> USRP N320 @ 192.168.20.2 10g sfp+ port 1
> USRP N321 @ 192.168.10.2 10g sfp+ port 0
>
> Connection between RF1 TX/RX on N321 to the RF1 RX on N320.
>
> My command to run is:
>
> ./txrx_loopback_to_file \
> --tx-args "type=n3xx,addr=192.168.10.2,master_clock_rate=250e6" \
> --rx-args "type=n3xx,addr=192.168.20.2,master_clock_rate=250e6" \
> --file "txrx_const0_rate50e6_sanslo_cw500e6_march3_11am.dat" \
> --settling 5 \
> --nsamps 50000 \
> --tx-rate 50e6 \
> --rx-rate 50e6 \
> --tx-freq 500e6 \
> --rx-freq 500e6 \
> --ampl .5 \
> --tx-gain 10 \
> --rx-gain 40 \
> --tx-subdev "B:0" \
> --rx-subdev "B:0" \
> --tx-bw 10e6 \
> --rx-bw 10e6 \
> --wave-type "CONST" \
> --wave-freq 0 \
> --ref "external" \
> --tx-channels 0 \
> --rx-channels 0
>
>
> Output:
>
> Creating the transmit usrp device with:
> type=n3xx,addr=192.168.10.2,master_clock_rate=250e6...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-25-g1a34ba8a
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.10.2,type=n3xx,product=n320,serial=31EDB79,claimed=False,addr=192.168.10.2,master_clock_rate=250e6
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
> [INFO] [MPM.main] Spawning RPC process...
> [INFO] [MPM.PeriphManager] Device serial number: 31EDB79
> [INFO] [MPM.Rhodium-0] Enabling LO distribution board
> [INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
> [INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled
> in the device tree overlay (e.g., HG, XG images).
> [INFO] [MPM.PeriphManager] init() called with device args
> `clock_source=internal,time_source=internal'.
> [INFO] [MPM.Rhodium-0] init() called with args
> `clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1] init() called with args
> `clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [INFO] [MPM.PeriphManager] init() called with device args
> `master_clock_rate=250e6,mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'.
> [INFO] [MPM.Rhodium-0] init() called with args
> `master_clock_rate=250e6,mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1] init() called with args
> `master_clock_rate=250e6,mgmt_addr=192.168.10.2,product=n320,clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
>
> Creating the receive usrp device with:
> type=n3xx,addr=192.168.20.2,master_clock_rate=250e6...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.20.2,type=n3xx,product=n320,serial=31F2BA2,claimed=False,addr=192.168.20.2,master_clock_rate=250e6
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
> [INFO] [MPM.main] Spawning RPC process...
> [INFO] [MPM.PeriphManager] Device serial number: 31F2BA2
> [INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
> [INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled
> in the device tree overlay (e.g., HG, XG images).
> [INFO] [MPM.PeriphManager] init() called with device args
> `clock_source=internal,time_source=internal'.
> [INFO] [MPM.Rhodium-0] init() called with args
> `clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1] init() called with args
> `clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [INFO] [MPM.PeriphManager] init() called with device args
> `master_clock_rate=250e6,mgmt_addr=192.168.20.2,product=n320,clock_source=internal,time_source=internal'.
> [INFO] [MPM.Rhodium-0] init() called with args
> `master_clock_rate=250e6,mgmt_addr=192.168.20.2,product=n320,clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1] init() called with args
> `master_clock_rate=250e6,mgmt_addr=192.168.20.2,product=n320,clock_source=internal,time_source=internal'
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some
> time.
> [INFO] [MPM.Rhodium-0] init() called with args
> `master_clock_rate=250000000.0,mgmt_addr=192.168.10.2,product=n320,clock_source=external,time_source=internal,skip_rfic=None,ref_clk_freq=10000000.0'
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take some
> time.
> [INFO] [MPM.Rhodium-1] init() called with args
> `master_clock_rate=250000000.0,mgmt_addr=192.168.10.2,product=n320,clock_source=external,time_source=internal,skip_rfic=None,ref_clk_freq=10000000.0'
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some
> time.
> [INFO] [MPM.Rhodium-0] init() called with args
> `master_clock_rate=250000000.0,mgmt_addr=192.168.20.2,product=n320,clock_source=external,time_source=internal,skip_rfic=None,ref_clk_freq=10000000.0'
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training
> Complete
> [INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take some
> time.
> [INFO] [MPM.Rhodium-1] init() called with args
> `master_clock_rate=250000000.0,mgmt_addr=192.168.20.2,product=n320,clock_source=external,time_source=internal,skip_rfic=None,ref_clk_freq=10000000.0'
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> Using TX Device: Single USRP:
>   Device: N300-Series Device
>   Mboard 0: n320
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: Rhodium
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: Rhodium
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: Rhodium
>
> Using RX Device: Single USRP:
>   Device: N300-Series Device
>   Mboard 0: n320
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: Rhodium
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Rhodium
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: Rhodium
>
> Setting TX Rate: 50.000000 Msps...
> Actual TX Rate: 50.000000 Msps...
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
>
> Setting RX Rate: 50.000000 Msps...
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> Actual RX Rate: 50.000000 Msps...
>
> Setting TX Freq: 500.000000 MHz...
> Actual TX Freq: 500.000000 MHz...
>
> Setting TX Gain: 10.000000 dB...
> Actual TX Gain: 10.000000 dB...
>
> Setting TX Bandwidth: 10000000.000000 MHz...
> Actual TX Bandwidth: 10000000.000000 MHz...
>
> Setting RX Freq: 500.000000 MHz...
> Actual RX Freq: 500.000000 MHz...
>
> Setting RX Gain: 40.000000 dB...
> Actual RX Gain: 40.000000 dB...
>
> Setting RX Bandwidth: 10.000000 MHz...
> Actual RX Bandwidth: 10.000000 MHz...
>
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> Checking TX: all_los: locked ...
> Checking RX: all_los: locked ...
> Checking TX: ref_locked: locked ...
> Checking RX: ref_locked: locked ...
> Setting device timestamp to 0...
> L[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training
> Complete
> Error: Receiver error ERROR_CODE_LATE_COMMAND
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005dac9e05b6359458
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dylan,<div><br></div><div>Can you try adding &quot;rx_u=
srp-&gt;set_time_now(uhd::time_spec_t(0.0));&quot; after line 526 in txrx_l=
oopback_to_file.cpp, re-build, and see if that fixes your issue?</div><div>=
<br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Dec 9, 2020 at 9:37 AM Dylan Baros vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Good morning,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am attempting to run the txrx_loopback_to_file example with the following=
 hardware:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
USRP N320 @ 192.168.20.2 10g sfp+ port 1</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
USRP N321 @ 192.168.10.2 10g sfp+ port 0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Connection between RF1 TX/RX on N321 to the RF1 RX on N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
My command to run is:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
./txrx_loopback_to_file \
<div>--tx-args &quot;type=3Dn3xx,addr=3D192.168.10.2,master_clock_rate=3D25=
0e6&quot; \</div>
<div>--rx-args &quot;type=3Dn3xx,addr=3D192.168.20.2,master_clock_rate=3D25=
0e6&quot; \</div>
<div>--file &quot;txrx_const0_rate50e6_sanslo_cw500e6_march3_11am.dat&quot;=
 \</div>
<div>--settling 5 \</div>
<div>--nsamps 50000 \</div>
<div>--tx-rate 50e6 \</div>
<div>--rx-rate 50e6 \</div>
<div>--tx-freq 500e6 \</div>
<div>--rx-freq 500e6 \</div>
<div>--ampl .5 \</div>
<div>--tx-gain 10 \</div>
<div>--rx-gain 40 \</div>
<div>--tx-subdev &quot;B:0&quot; \</div>
<div>--rx-subdev &quot;B:0&quot; \</div>
<div>--tx-bw 10e6 \</div>
<div>--rx-bw 10e6 \</div>
<div>--wave-type &quot;CONST&quot; \</div>
<div>--wave-freq 0 \</div>
<div>--ref &quot;external&quot; \</div>
<div>--tx-channels 0 \</div>
<div>--rx-channels 0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
Output:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Creating the transmit usrp device with: type=3Dn3xx,addr=3D192.168.10.2,mas=
ter_clock_rate=3D250e6...
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-2=
5-g1a34ba8a</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31EDB79,claimed=3DFals=
e,addr=3D192.168.10.2,master_clock_rate=3D250e6</div>
<div>[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062</div>
<div>[INFO] [MPM.main] Spawning RPC process...</div>
<div>[INFO] [MPM.PeriphManager] Device serial number: 31EDB79</div>
<div>[INFO] [MPM.Rhodium-0] Enabling LO distribution board</div>
<div>[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).</div>
<div>[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disa=
bled in the device tree overlay (e.g., HG, XG images).</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.RPCServer] RPC server ready!</div>
<div>[INFO] [MPM.RPCServer] Spawning watchdog task...</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `master_cloc=
k_rate=3D250e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal&#39;.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div><br>
</div>
<div>Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.20.2=
,master_clock_rate=3D250e6...</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D31F2BA2,claimed=3DFals=
e,addr=3D192.168.20.2,master_clock_rate=3D250e6</div>
<div>[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062</div>
<div>[INFO] [MPM.main] Spawning RPC process...</div>
<div>[INFO] [MPM.PeriphManager] Device serial number: 31F2BA2</div>
<div>[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).</div>
<div>[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disa=
bled in the device tree overlay (e.g., HG, XG images).</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.RPCServer] RPC server ready!</div>
<div>[INFO] [MPM.RPCServer] Spawning watchdog task...</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `master_cloc=
k_rate=3D250e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal&#39;.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal&#39;</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0&#39;</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0&#39;</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0&#39;</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0&#39;</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>Using TX Device: Single USRP:</div>
<div>=C2=A0 Device: N300-Series Device</div>
<div>=C2=A0 Mboard 0: n320</div>
<div>=C2=A0 RX Channel: 0</div>
<div>=C2=A0 =C2=A0 RX DSP: 0</div>
<div>=C2=A0 =C2=A0 RX Dboard: A</div>
<div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
<div>=C2=A0 RX Channel: 1</div>
<div>=C2=A0 =C2=A0 RX DSP: 1</div>
<div>=C2=A0 =C2=A0 RX Dboard: B</div>
<div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
<div>=C2=A0 TX Channel: 0</div>
<div>=C2=A0 =C2=A0 TX DSP: 0</div>
<div>=C2=A0 =C2=A0 TX Dboard: B</div>
<div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
<div><br>
</div>
<div>Using RX Device: Single USRP:</div>
<div>=C2=A0 Device: N300-Series Device</div>
<div>=C2=A0 Mboard 0: n320</div>
<div>=C2=A0 RX Channel: 0</div>
<div>=C2=A0 =C2=A0 RX DSP: 0</div>
<div>=C2=A0 =C2=A0 RX Dboard: B</div>
<div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
<div>=C2=A0 TX Channel: 0</div>
<div>=C2=A0 =C2=A0 TX DSP: 0</div>
<div>=C2=A0 =C2=A0 TX Dboard: A</div>
<div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
<div>=C2=A0 TX Channel: 1</div>
<div>=C2=A0 =C2=A0 TX DSP: 1</div>
<div>=C2=A0 =C2=A0 TX Dboard: B</div>
<div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
<div><br>
</div>
<div>Setting TX Rate: 50.000000 Msps...</div>
<div>Actual TX Rate: 50.000000 Msps...</div>
<div>[WARNING] [0/DUC#1] The requested interpolation is odd; the user shoul=
d expect passband CIC rolloff.</div>
<div>Select an even interpolation to ensure that a halfband filter is enabl=
ed.</div>
<div><br>
</div>
<div><br>
</div>
<div>Setting RX Rate: 50.000000 Msps...</div>
<div>[WARNING] [0/DDC#1] The requested decimation is odd; the user should e=
xpect passband CIC rolloff.</div>
<div>Select an even decimation to ensure that a halfband filter is enabled.=
</div>
<div>Decimations factorable by 4 will enable 2 halfbands, those factorable =
by 8 will enable 3 halfbands.</div>
<div>decimation =3D dsp_rate/samp_rate -&gt; 5</div>
<div>[WARNING] [0/DDC#1] The requested decimation is odd; the user should e=
xpect passband CIC rolloff.</div>
<div>Select an even decimation to ensure that a halfband filter is enabled.=
</div>
<div>Decimations factorable by 4 will enable 2 halfbands, those factorable =
by 8 will enable 3 halfbands.</div>
<div>decimation =3D dsp_rate/samp_rate -&gt; 5</div>
<div>Actual RX Rate: 50.000000 Msps...</div>
<div><br>
</div>
<div>Setting TX Freq: 500.000000 MHz...</div>
<div>Actual TX Freq: 500.000000 MHz...</div>
<div><br>
</div>
<div>Setting TX Gain: 10.000000 dB...</div>
<div>Actual TX Gain: 10.000000 dB...</div>
<div><br>
</div>
<div>Setting TX Bandwidth: 10000000.000000 MHz...</div>
<div>Actual TX Bandwidth: 10000000.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Freq: 500.000000 MHz...</div>
<div>Actual RX Freq: 500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 40.000000 dB...</div>
<div>Actual RX Gain: 40.000000 dB...</div>
<div><br>
</div>
<div>Setting RX Bandwidth: 10.000000 MHz...</div>
<div>Actual RX Bandwidth: 10.000000 MHz...</div>
<div><br>
</div>
<div>[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.</div=
>
<div>Checking TX: all_los: locked ...</div>
<div>Checking RX: all_los: locked ...</div>
<div>Checking TX: ref_locked: locked ...</div>
<div>Checking RX: ref_locked: locked ...</div>
<div>Setting device timestamp to 0...</div>
<div>L[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>Error: Receiver error ERROR_CODE_LATE_COMMAND</div>
<br>
<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005dac9e05b6359458--


--===============1716178999375384510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1716178999375384510==--

