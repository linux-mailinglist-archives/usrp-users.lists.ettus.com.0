Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 135D7154D84
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 21:49:37 +0100 (CET)
Received: from [::1] (port=49676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izo5Q-0005c8-7C; Thu, 06 Feb 2020 15:49:20 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:43479)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1izo5M-0005YN-1K
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 15:49:16 -0500
Received: by mail-lf1-f48.google.com with SMTP id 9so21479lfq.10
 for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2020 12:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YzbbHgPgUTTWgdIoGu9unwy2xRBAm+r7oCQ9zwO4WNM=;
 b=x4QlY34II85X2DZ6s8fya6DbCwOkIutaJ02kI99u6KxyEHg/zMVkeP+ZKmiLVkI1kB
 XrcHJLOsVafaNcP08/B1ExavY9YPZPF6SHiTptt/5lcwxAgwfuBXwSLzu2CVhb4MMbPs
 518HVPnyGmcaY0HyVQiexmAApu1XlSjkzwyyBsNGCblDxH/CfAsUvFiUkRcYT6OTlHjB
 9EImUOVujvWXqKlh7qUK2rC7M+CbHEJLhUqycRA2UOYnv8e05Rqx+t/p8G1jZLIxpleq
 qaADmwMb96GKacx2iRonoiGYdxGJNQcYBJu4vqxD4+haBa9VKla0eL5dKqPL7SOhMeOQ
 +b1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YzbbHgPgUTTWgdIoGu9unwy2xRBAm+r7oCQ9zwO4WNM=;
 b=XVIKEe8Eau1aEzMbJadOK758jRqCtE8tNsj6PkuYEB3e320G8EidfC4IvzjqAMIkTc
 d2Q4SsE1EnxP1lZd82a9qR7MVpQ8FiksT/wCCSq4+1elPC6v5E7xzjgsizqQ2AHZlEn7
 MWGk+KxMNx30/7hjthgDhxss5K1/8v6Ujx2AZqF8+bvzofQZKbjfuZTMqZxsKseh4sic
 /UX5u0BJ75E1lX7jUV+BWDfTZzZU8+R/gBFqLxnyAtvsS6gh/akAXfXZtqzqQiGmqWRU
 hxCWrnNreSu/XeoTHwrb1HK/kyZgeA93TRJyWS7sUIu6LH++8wtbMK3jvt+Dgs38tTLU
 Rb/w==
X-Gm-Message-State: APjAAAUoxx/XJb+sCKwDc1Dh+/f0r5uBUR3wHO6q+zK/9BuTV/JNGaP7
 n5tRdfeBSqVEoFxTPQCKupoTdsc+Dcv8ljsjDAECeXfj
X-Google-Smtp-Source: APXvYqzHbn29MdZ7+EJm9zIawpFaFonyzz1zBB8Tqp4n1lL+vMYCRXmZ6Pt0efqpHuKoOHbnl3jfr/W4yCwGdpMQRSA=
X-Received: by 2002:a05:6512:407:: with SMTP id
 u7mr2706592lfk.146.1581022114568; 
 Thu, 06 Feb 2020 12:48:34 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQfZ7J+ma2vkX-owQ0v97Z6oNrT-VKqZ1Mb2AFzGuhnVw@mail.gmail.com>
In-Reply-To: <CAB__hTQfZ7J+ma2vkX-owQ0v97Z6oNrT-VKqZ1Mb2AFzGuhnVw@mail.gmail.com>
Date: Thu, 6 Feb 2020 14:48:23 -0600
Message-ID: <CANf970Y9TVKQaTwokR2SapNBaoE9A15iUin0_NT-WtGXU6BwmA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Error "clock synchronizer offset" loading N310
 rfnoc image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3372597954810327278=="
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

--===============3372597954810327278==
Content-Type: multipart/alternative; boundary="000000000000856f3c059dee65f9"

--000000000000856f3c059dee65f9
Content-Type: text/plain; charset="UTF-8"

Rob,

I'm not sure what the implications would be, but you could try recompiling
UHD with an updated *trace_delay_offset* and/or *offset_error* threshold:

https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/mpm/python/usrp_mpm/dboard_manager/mg_init.py#L212

I'm not sure why your custom RFNoC block would change the measured
propagation delay though.... on the surface, it seems like that would
strictly be a characteristic of the motherboard.

Sam Reiter

On Fri, Jan 31, 2020 at 4:28 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I just successfully built an N310 rfnoc XG image (build rpt attached) with
> some custom blocks using fpga-src version v3.15.0.0, but I can't load the
> image successfully on the device.  Below you will find four consecutive
> commands (highlighted in yellow) where I do the following:
>
>    1. uhd_image_loader to load my custom image (results show "clock
>    synchronizer offset" error)
>    2. uhd_usrp_probe (results show "'NoneType' object has no attribute
>    'get'" error)
>    3. uhd_image_loader to load default XG image (no errors)
>    4. uhd_usrp_probe (no errors)
>
> I have tried multiple times but I am getting the same results each time. I
> have tried rebooting the N310, but still the same results.  Any suggestions?
> Rob
>
>
> $ uhd_image_loader --args="type=n3xx,addr=192.168.64.2"
> --fpga-path=usrp_n310_fpga_RFNOC_XG.bit
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,skip_init=1
> [INFO] [MPMD] Claimed device without full initialization.
> [WARNING] [MPMD IMAGE LOADER] RuntimeError: Component file does not exist:
> /home/irisheyes1/uhd_nd/fpga_images/n310/v3.15.0.0/20200131_ddc-duc-txarb-radarfilter3-fifo/build/usrp_n310_fpga_RFNOC_XG.dts
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 318F043
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args
> `time_source=internal,clock_source=internal'.
> [ERROR] [MPM.Magnesium-0.init] Clock synchronizer measured an offset of
> 132.5 ps!
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> [WARNING] [MPM.PeriphManager] Failed to initialize device on boot: Clock
> synchronizer measured an offset of 132.5 ps!
>
> $ uhd_usrp_probe --args="addr=192.168.64.2"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,addr=192.168.64.2
> [ERROR] [RPC] 'NoneType' object has no attribute 'get'
> [INFO] [MPM.PeriphManager] init() called with device args
> `time_source=internal,clock_source=internal,product=n310,mgmt_addr=192.168.64.2'.
> [ERROR] [MPM.RPCServer] init() failed with error: 'NoneType' object has no
> attribute 'get'
> Error: RuntimeError: Error during RPC call to `init'. Error message:
> 'NoneType' object has no attribute 'get'
>
> $ uhd_image_loader --args="type=n3xx,addr=192.168.64.2,fpga=XG"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,skip_init=1
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.PeriphManager] Updating component `dts'
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 318F043
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args
> `clock_source=internal,time_source=internal'.
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> $ uhd_usrp_probe --args="addr=192.168.64.2"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,addr=192.168.64.2
> [INFO] [MPM.PeriphManager] init() called with device args
> `time_source=internal,clock_source=internal,product=n310,mgmt_addr=192.168.64.2'.
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
>   _____________________________________________________
>  /
> |       Device: N300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-n3xx-318F043
> |   |   eeprom_version: 2
> |   |   mpm_version: 3.15.0.0-gaea0e2de
> |   |   pid: 16962
> |   |   product: n310
> |   |   rev: 7
> |   |   rpc_connection: remote
> |   |   serial: 318F043
> |   |   type: n3xx
> |   |   MPM Version: 1.2
> |   |   FPGA Version: 5.3
> |   |   FPGA git hash: fde2a94.clean
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo, sfp0
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: gps_tpv, gps_locked, ref_locked, fan, gps_sky, temp,
> gps_gpgga, gps_time
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 1
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: A
> |   |   |   |   Name: AD9371 Dual ADC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: B
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 1
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: B
> |   |   |   |   Name: AD9371 Dual ADC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 1
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: A
> |   |   |   |   Name: AD9371 Dual DAC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: B
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 1
> |   |   |   |   Name: Magnesium
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
> |   |   |   |   Freq range: 1.000 to 6000.000 MHz
> |   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
> |   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: B
> |   |   |   |   Name: AD9371 Dual DAC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RFNoC blocks on this device:
> |   |   |
> |   |   |   * Replay_0
> |   |   |   * Radio_0
> |   |   |   * Radio_1
> |   |   |   * DDC_0
> |   |   |   * DDC_1
> |   |   |   * DUC_0
> |   |   |   * DUC_1
> |   |   |   * FIFO_0
> |   |   |   * FIFO_1
> |   |   |   * FIFO_2
> |   |   |   * FIFO_3
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000856f3c059dee65f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rob,</div><div><br></div><div>I&#39;m not sure what t=
he implications would be, but you could try recompiling UHD with an updated=
 <span class=3D"gmail-pl-s1"><b>trace_delay_offset</b> and/or <b>offset_err=
or</b> threshold</span>:</div><div><br></div><div><a href=3D"https://github=
.com/EttusResearch/uhd/blob/UHD-3.15.LTS/mpm/python/usrp_mpm/dboard_manager=
/mg_init.py#L212">https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/mp=
m/python/usrp_mpm/dboard_manager/mg_init.py#L212</a></div><div><br></div><d=
iv>I&#39;m not sure why your custom RFNoC block would change the measured p=
ropagation delay though.... on the surface, it seems like that would strict=
ly be a characteristic of the motherboard.<br></div><div><br></div><div><di=
v><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0</div></div></d=
iv></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Jan 31, 2020 at 4:28 PM Rob Kossler via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div><div>Hi,</div><div>I just successfully built an=
 N310 rfnoc XG image (build rpt attached) with some custom blocks using fpg=
a-src version v3.15.0.0, but I can&#39;t load the image successfully on the=
 device.=C2=A0 Below you will find four consecutive commands (highlighted i=
n yellow) where I do the following:</div><div><ol><li>uhd_image_loader to l=
oad my custom image (results show &quot;clock synchronizer offset&quot; err=
or)</li><li>uhd_usrp_probe (results show &quot;&#39;NoneType&#39; object ha=
s no attribute &#39;get&#39;&quot; error)</li><li>uhd_image_loader to load =
default XG image (no errors)</li><li>uhd_usrp_probe (no errors)</li></ol></=
div><div>I have tried multiple times but I am getting the same results each=
 time. I have tried rebooting the N310, but still the same results.=C2=A0 A=
ny suggestions?</div><div>Rob</div><div><br></div><div><br></div><div>$ <sp=
an style=3D"background-color:rgb(255,255,0)">uhd_image_loader --args=3D&quo=
t;type=3Dn3xx,addr=3D192.168.64.2&quot; --fpga-path=3Dusrp_n310_fpga_RFNOC_=
XG.bit</span> <br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; =
UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D192.168.64.2,type=3Dn3xx,product=3Dn310,seria=
l=3D318F043,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Claimed device w=
ithout full initialization.<br><font color=3D"#ff9900">[WARNING] [MPMD IMAG=
E LOADER] RuntimeError: Component file does not exist: /home/irisheyes1/uhd=
_nd/fpga_images/n310/v3.15.0.0/20200131_ddc-duc-txarb-radarfilter3-fifo/bui=
ld/usrp_n310_fpga_RFNOC_XG.dts</font><br>[INFO] [MPMD IMAGE LOADER] Startin=
g update. This may take a while.<br>[INFO] [MPM.PeriphManager] Updating com=
ponent `fpga&#39;<br>[INFO] [MPM.RPCServer] Resetting peripheral manager.<b=
r>[INFO] [MPM.PeriphManager] Device serial number: 318F043<br>[INFO] [MPM.P=
eriphManager] Initialized 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager]=
 init() called with device args `time_source=3Dinternal,clock_source=3Dinte=
rnal&#39;.<br><span style=3D"background-color:rgb(255,255,255)"><font color=
=3D"#ff0000">[ERROR] [MPM.Magnesium-0.init] Clock synchronizer measured an =
offset of 132.5 ps!</font></span><br>[INFO] [MPMD IMAGE LOADER] Update comp=
onent function succeeded.<br><font color=3D"#ff9900">[WARNING] [MPM.PeriphM=
anager] Failed to initialize device on boot: Clock synchronizer measured an=
 offset of 132.5 ps!</font><br><br></div><div>$ <span style=3D"background-c=
olor:rgb(255,255,0)">uhd_usrp_probe --args=3D&quot;addr=3D192.168.64.2&quot=
;</span><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.=
15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Initializing 1 device(s) in parallel=
 with args: mgmt_addr=3D192.168.64.2,type=3Dn3xx,product=3Dn310,serial=3D31=
8F043,claimed=3DFalse,addr=3D192.168.64.2<br><font color=3D"#ff0000">[ERROR=
] [RPC] &#39;NoneType&#39; object has no attribute &#39;get&#39;</font><br>=
[INFO] [MPM.PeriphManager] init() called with device args `time_source=3Din=
ternal,clock_source=3Dinternal,product=3Dn310,mgmt_addr=3D192.168.64.2&#39;=
.<br><font color=3D"#ff0000">[ERROR] [MPM.RPCServer] init() failed with err=
or: &#39;NoneType&#39; object has no attribute &#39;get&#39;<br>Error: Runt=
imeError: Error during RPC call to `init&#39;. Error message: &#39;NoneType=
&#39; object has no attribute &#39;get&#39;</font><br></div></div><div><fon=
t color=3D"#ff0000"><br></font></div><div>$ <span style=3D"background-color=
:rgb(255,255,0)">uhd_image_loader --args=3D&quot;type=3Dn3xx,addr=3D192.168=
.64.2,fpga=3DXG&quot;</span><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; =
Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Initializing 1 d=
evice(s) in parallel with args: mgmt_addr=3D192.168.64.2,type=3Dn3xx,produc=
t=3Dn310,serial=3D318F043,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Cl=
aimed device without full initialization.<br>[INFO] [MPMD IMAGE LOADER] Sta=
rting update. This may take a while.<br>[INFO] [MPM.PeriphManager] Updating=
 component `fpga&#39;<br>[INFO] [MPM.PeriphManager] Updating component `dts=
&#39;<br>[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>[INFO] [MP=
M.PeriphManager] Device serial number: 318F043<br>[INFO] [MPM.PeriphManager=
] Initialized 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init() call=
ed with device args `clock_source=3Dinternal,time_source=3Dinternal&#39;.<b=
r>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<div><br><=
div>$ <span style=3D"background-color:rgb(255,255,0)">uhd_usrp_probe --args=
=3D&quot;addr=3D192.168.64.2&quot;</span><br>[INFO] [UHD] linux; GNU C++ ve=
rsion 7.4.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Ini=
tializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.64.2,type=
=3Dn3xx,product=3Dn310,serial=3D318F043,claimed=3DFalse,addr=3D192.168.64.2=
<br>[INFO] [MPM.PeriphManager] init() called with device args `time_source=
=3Dinternal,clock_source=3Dinternal,product=3Dn310,mgmt_addr=3D192.168.64.2=
&#39;.<br>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00=
000000004)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD=
100000011312)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x1=
2AD100000011312)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0x=
DDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0=
xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: =
0xD0C0000000000002)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID:=
 0xD0C0000000000002)<br>[INFO] [0/FIFO_0] Initializing block control (NOC I=
D: 0xF1F0000000000000)<br>[INFO] [0/FIFO_1] Initializing block control (NOC=
 ID: 0xF1F0000000000000)<br>[INFO] [0/FIFO_2] Initializing block control (N=
OC ID: 0xF1F0000000000000)<br>[INFO] [0/FIFO_3] Initializing block control =
(NOC ID: 0xF1F0000000000000)<br>=C2=A0 ____________________________________=
_________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: N300-Series =
Device<br>| =C2=A0 =C2=A0 _________________________________________________=
____<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx=
-318F043<br>| =C2=A0 | =C2=A0 eeprom_version: 2<br>| =C2=A0 | =C2=A0 mpm_ve=
rsion: 3.15.0.0-gaea0e2de<br>| =C2=A0 | =C2=A0 pid: 16962<br>| =C2=A0 | =C2=
=A0 product: n310<br>| =C2=A0 | =C2=A0 rev: 7<br>| =C2=A0 | =C2=A0 rpc_conn=
ection: remote<br>| =C2=A0 | =C2=A0 serial: 318F043<br>| =C2=A0 | =C2=A0 ty=
pe: n3xx<br>| =C2=A0 | =C2=A0 MPM Version: 1.2<br>| =C2=A0 | =C2=A0 FPGA Ve=
rsion: 5.3<br>| =C2=A0 | =C2=A0 FPGA git hash: fde2a94.clean<br>| =C2=A0 | =
=C2=A0 RFNoC capable: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time s=
ources: =C2=A0internal, external, gpsdo, sfp0<br>| =C2=A0 | =C2=A0 Clock so=
urces: external, internal, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: gps_tpv, gps=
_locked, ref_locked, fan, gps_sky, temp, gps_gpgga, gps_time<br>| =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboa=
rd: A<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ________________________________=
_____________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 An=
tennas: TX/RX, RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Senso=
rs: lo_locked, lowband_lo_locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Gain range all: 0.0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.=
0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 _____________________________________________________<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: =
Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL,=
 LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_l=
o_locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq rang=
e: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range =
all: 0.0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain ra=
nge rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gai=
n range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________=
___________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9371 Dual ADC<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 __=
___________________________________________________<br>| =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: B<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX,=
 RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked,=
 lowband_lo_locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 G=
ain range all: 0.0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 |=
 =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0=
 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =
_____________________________________________________<br>| =C2=A0 | =C2=A0 =
| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Fr=
ontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locked, ad9371_l=
o_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.0=
00 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 75.0 s=
tep 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0=
.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 t=
o 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.=
0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range=
: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offs=
et: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _______________________________=
______________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: B<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Name: AD9371 Dual ADC<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 _______________________=
______________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>=
| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 65.0 step 0.5 dB=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.=
0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step=
 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 s=
tep 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000=
.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connec=
tion Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>=
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _________________________________________=
____________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: T=
X/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_=
locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range:=
 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range al=
l: 0.0 to 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain rang=
e rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain =
range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ga=
in range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9371 Dual DAC<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 _____=
________________________________________________<br>| =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: B<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locked, a=
d9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to=
 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to=
 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0=
.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa=
: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range =
amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidt=
h range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Use=
s LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_l=
ocked, lowband_lo_locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Gain range all: 0.0 to 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.=
0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0=
 =C2=A0 TX Codec: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9371 Dua=
l DAC<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=
=A0 | =C2=A0 =C2=A0 _____________________________________________________<b=
r>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFN=
oC blocks on this device:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=
=A0 | =C2=A0 * Replay_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0=
 | =C2=A0 | =C2=A0 * Radio_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=
=A0 | =C2=A0 | =C2=A0 * DDC_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_0<br>| =
=C2=A0 | =C2=A0 | =C2=A0 * DUC_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * FIFO_0<br>=
| =C2=A0 | =C2=A0 | =C2=A0 * FIFO_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * FIFO_2<=
br>| =C2=A0 | =C2=A0 | =C2=A0 * FIFO_3<br><br></div><div><br></div></div></=
div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000856f3c059dee65f9--


--===============3372597954810327278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3372597954810327278==--

