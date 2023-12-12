Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9155B80EB32
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 13:03:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EC493850F9
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 07:03:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702382633; bh=gPI0RNzyfonMFzG6oHSc3xIOYytnoX2SELZ/Qhjbb2w=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PzMEEqInui4gnfSyw/KZpl7NKQVZNwmB5d1QcR7j5JahE1diR59ExXKiBvoU7zjFH
	 RV/F1bI5OfPXIre2VpvGIUkAC5qIzhUxHFoWyvUCYRAUFryAsq2HPlh65LbJRGd+2O
	 ilO2pvEHhlPFtyO8Wa8fGtzzybE3bhTo4CdQNigcz78c0YMkHP7yDMMz75z86W3BDi
	 h7dmODtHwbX6q1TqhEH+5IpUFbHM2CktRdgvW41rdARd65XFSacPY6lcbiql78S5sa
	 LO+NA17/+rfiKOjwrVAqhaRut5R4gpFBLpgI0k4BxXE8xj5s0KD38kcHsrTg5Hqj+8
	 5ghtjYu/76H5A==
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D045384DC1
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 07:03:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mh+SSnMZ";
	dkim-atps=neutral
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d33819091fso1056635ad.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 04:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702382617; x=1702987417; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YnSPS4tdp2yubydtu0i5Aa85bFY8CAqfhYGspp9CkSk=;
        b=mh+SSnMZsP6QzCjhwdgvdFtdB39XIvhbGdOPMJoWmGWVFJW37VNu8EKduQVgTfhbhc
         gYOL9HO5EySz+tanDL8a1yXn9nGJZ1RdtJeddfIl5l3BctMt6w8LbnNb/h/Bj5llR/44
         lB0zPtSptkcPeaGV0DsjtFykRD35pXclUAcJJbUWrJ8QRV9WI/i00MRPjASSRa8EJ6XE
         KzGcxvUXU1jl7AwyHY9RCe3Vdl1K2C6iuuzOdqv+lP6vrhSK4SbXF/lzkjISH2gV5rCD
         0bmf7YSlgb53twmOHcCEdM+AZqrPI/JrN0eG8MqnUV0ffxWolnWSmAfEMSZD8nUBfD6P
         eRSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702382617; x=1702987417;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YnSPS4tdp2yubydtu0i5Aa85bFY8CAqfhYGspp9CkSk=;
        b=ubgn8Dyc5ildjLK5yluChLD8r4SFnY6+ssfnGmKJOSZ6gg/1lHYKWz/aB4I5bDcOGE
         IuqngtKniy6WvFQNP9ZvoPzb+SwujvZ+qj/upQ2qxOBwpwn1In7EwdfAEPMgFUogOWuU
         K5LIQ4IPagazP1TjO5aKobq2dgv1FDusW53fWUVTDVUSfQDYLnByv/s/TLxc/pQPNxrg
         Pl4JnleoSuf+tJZ2+F9vfbPhG7On7D4BTGmpU7A1MF1p8wq3IuwpbMmURXNqjipT4lpN
         6sMOWgzDybXv3A4VGPsY36eC4hqaGyn9/XXp45VbYzaPouuumFEjSSLqo8bWFLADuoo2
         4KRQ==
X-Gm-Message-State: AOJu0Yx7uOCZJ/J+8hOZ/sVl+0cSeFJSfGr+h+Kv17If9yNF5x9w03lT
	dKYA6unV26caHfnRUE+mOSx4xxM4Gqvs8qUqOpYsi5qmSfc=
X-Google-Smtp-Source: AGHT+IHf++JXvriGQxdPnz/C4IOj7H06eAtp+vdjy6FJZgdD5YhspbPvu9eRmw0NMIEPeCgkM5PNORrb4zCqcS19kgc=
X-Received: by 2002:a17:902:8a88:b0:1d0:8f0d:b6e0 with SMTP id
 p8-20020a1709028a8800b001d08f0db6e0mr11491225plo.1.1702382616677; Tue, 12 Dec
 2023 04:03:36 -0800 (PST)
MIME-Version: 1.0
From: Sachin Gupta <scngupta@gmail.com>
Date: Tue, 12 Dec 2023 17:33:25 +0530
Message-ID: <CABk6P9yMhg67yvhwBHyHW0yEo_zonBF3+tvdp--Lz3-EMqCPxg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: AK4DKTOBKQKRU4H2DACSEJFMIXV6A4XY
X-Message-ID-Hash: AK4DKTOBKQKRU4H2DACSEJFMIXV6A4XY
X-MailFrom: scngupta@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Benchmark problems with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AK4DKTOBKQKRU4H2DACSEJFMIXV6A4XY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5884183692638342408=="

--===============5884183692638342408==
Content-Type: multipart/alternative; boundary="000000000000239564060c4ed733"

--000000000000239564060c4ed733
Content-Type: text/plain; charset="UTF-8"

Dear Forum members,

I am trying to run an OAI 5G UE Simulator using USRP B210. The gNB
configuration that is planned to be used is DL 2x2 MIMO mode and 20 MHz
system bandwidth. Due to this I am trying to use benchmark_rate application
to see if my UE setup is working fine

My understanding is that to support 2x2 MIMO with a bandwidth of 20 MHz, I
will need 2 TX and 2 RX channels @ sampling rate of 30.72 msps. When I run
a benchmark_rate test with this configuration it is consistently failing.
Single channel and reduced sampling rate tests with dual channel are
passing

Request if someone can help troubleshoot this issue or point me in the
right direction to resolve this issue

*// Dual channel (required for 2x2 MIMO), TX and RX rate test @ 30.72 msps *
benchmark_rate --tx_rate 30.72e6 --rx_rate 30.72e6 --rx_channels "0,1"
--tx_channels "0,1" --duration 100 => Fails with lot of overflows (logs
below)

*// Single channel (for 1x1 SISO), TX and RX rate test @ 30.72 msps *
benchmark_rate --tx_rate 30.72e6 --rx_rate 30.72e6 --rx_channels "0"
--tx_channels "0" --duration 100 => PASS w/o any overflow

*// Dual channel (required for 2x2 MIMO), RX rate test @ 30.72 msps and TX
rate test @ 15.36 msps => reduced TX rate to see if it is working*
benchmark_rate --tx_rate 15.36e6 --rx_rate 30.72e6 --rx_channels "0,1"
--tx_channels "0,1" --duration 100 => PASS

NOTE: As mentioned in Ettus documentation, external power supply is
provided for 2x2 configuration

*===========System Information==============*

# lscpu
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  6
  On-line CPU(s) list:   0-5
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
    CPU family:          6
    Model:               166
    Thread(s) per core:  1
    Core(s) per socket:  6
    Socket(s):           1
    Stepping:            0
    Frequency boost:     enabled
    CPU max MHz:         1601.0000
    CPU min MHz:         400.0000
    BogoMIPS:            3199.92
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr
pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe
syscall nx pd
                         pe1gb rdtscp lm constant_tsc art arch_perfmon pebs
bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq
dtes64 moni
                         tor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr
pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave
avx f16c rdr
                         and lahf_lm abm 3dnowprefetch cpuid_fault epb
invpcid_single ssbd ibrs ibpb stibp ibrs_enhanced tpr_shadow vnmi
flexpriority ept vpid
                          ept_ad fsgsbase tsc_adjust sgx bmi1 avx2 smep
bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec
xgetbv1 xsav
                         es dtherm ida arat pln pts hwp hwp_notify
hwp_act_window hwp_epp md_clear flush_l1d arch_capabilities
Virtualization features:
  Virtualization:        VT-x
Caches (sum of all):
  L1d:                   192 KiB (6 instances)
  L1i:                   192 KiB (6 instances)
  L2:                    1.5 MiB (6 instances)
  L3:                    12 MiB (1 instance)
NUMA:
  NUMA node(s):          1
  NUMA node0 CPU(s):     0-5
Vulnerabilities:
  Gather data sampling:  Not affected
  Itlb multihit:         KVM: Mitigation: VMX disabled
  L1tf:                  Not affected
  Mds:                   Not affected
  Meltdown:              Not affected
  Mmio stale data:       Mitigation; Clear CPU buffers; SMT disabled
  Retbleed:              Mitigation; Enhanced IBRS
  Spec rstack overflow:  Not affected
  Spec store bypass:     Mitigation; Speculative Store Bypass disabled via
prctl and seccomp
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user
pointer sanitization
  Spectre v2:            Mitigation; Enhanced IBRS, IBPB conditional, RSB
filling, PBRSB-eIBRS SW sequence
  Srbds:                 Not affected
  Tsx async abort:       Not affected

*========= Device Information=========*
# uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.6.0.0-3-g080b1baa
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 32308C2
    name: MyB210
    product: B210
    type: b200

# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.6.0.0-3-g080b1baa
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
  _____________________________________________________
 /
|       Device: B-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: B210
|   |   serial: 32308C2
|   |   name: MyB210
|   |   product: 2
|   |   revision: 4
|   |   FW Version: 8.0
|   |   FPGA Version: 16.0
|   |
|   |   Time sources:  none, internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX DSP: 0
|   |   |
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       RX DSP: 1
|   |   |
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: A
|   |   |   |   Name: FE-RX2
|   |   |   |   Antennas: TX/RX, RX2
|   |   |   |   Sensors: temp, rssi, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: B
|   |   |   |   Name: FE-RX1
|   |   |   |   Antennas: TX/RX, RX2
|   |   |   |   Sensors: temp, rssi, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: B210 RX dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX DSP: 0
|   |   |
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       TX DSP: 1
|   |   |
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: A
|   |   |   |   Name: FE-TX2
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: temp, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: B
|   |   |   |   Name: FE-TX1
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: temp, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: B210 TX dual DAC
|   |   |   |   Gain Elements: None

*========== Problem scenario Logs (TX and RX rate @ 30.72 msps)
==================*
Followed General Tuning notes @
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Tuning_Notes (*CPUs
2-5 isolated*)

# taskset -c "2-5" examples/benchmark_rate --tx_rate 30.72e6 --rx_rate
30.72e6 --rx_channels "0,1" --tx_channels "0,1" --duration 1 --priority high

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.6.0.0-3-g080b1baa
[00:00:00.000029] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B210
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX2
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX2
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:01.866378510] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[INFO] [B200] Asking for clock rate 30.720000 MHz...
[INFO] [B200] Actually got clock rate 30.720000 MHz.
[00:00:05.66457702] Testing receive rate 30.720000 Msps on 2 channels
Setting TX spp to 2040
[00:00:05.88338475] Testing transmit rate 30.720000 Msps on 2 channels
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.356178311] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.373353034] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.390809194] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.408309136] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.425513440] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.442918966] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.460473385] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.477327828] Detected Rx sequence
error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.494827031] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.512352750] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.529942938] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.547127246] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.564702200] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.581790507] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.599503284] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.616332439] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.633433429] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.650535502] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.667989498] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.685455166] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.702877567] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.720326408] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.737630193] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.754504596] Detected Rx sequence
error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.771535859] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.788576687] Detected Rx sequence
error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.806317150] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.823610494] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.840615113] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.857670406] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.874838720] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.892369065] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.909245514] Detected Rx sequence
error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.926880429] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.943781582] Detected Rx sequence
error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.960899743] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.978572166] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.995669275] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.12991071] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.30083109] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.47759726] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.65033966] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.82480858] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.99961987] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.117452418] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.134652518] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.152241203] Detected
Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.169706747] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.186942554] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.204331660] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.221620703] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.238834026] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.256245885] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.274190434]
Detected Rx sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.291702252] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.308942984] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.326528850] Detected Rx
sequence error.
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.343856658] Detected Rx
sequence error.
[00:00:06.344059518] Benchmark complete.


Benchmark rate summary:
  Num received samples:     28048518
  Num dropped samples:      23595022
  Num overruns detected:    58
  Num transmitted samples:  58833600
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 58
  Num underruns detected:   2214
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

*========== Working scenario Logs (TX Rate @ 15.36 msps, RX Rate @ 30.72
msps) ============*

# taskset -c "2-5" examples/benchmark_rate --tx_rate 15.36e6 --rx_rate
30.72e6 --rx_channels "0,1" --tx_channels "0,1" --duration 1 --priority high
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.6.0.0-3-g080b1baa
[00:00:00.000108] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B210
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX2
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX2
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:01.866204171] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[INFO] [B200] Asking for clock rate 30.720000 MHz...
[INFO] [B200] Actually got clock rate 30.720000 MHz.
[00:00:05.497349995] Testing receive rate 30.720000 Msps on 2 channels
Setting TX spp to 2040
[00:00:05.519203256] Testing transmit rate 15.360000 Msps on 2 channels
[00:00:06.771457104] Benchmark complete.


Benchmark rate summary:
  Num received samples:     75074598
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  30787680
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!
=================

Best Regards,
Sachin

--000000000000239564060c4ed733
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr">Dear Forum members,=C2=A0<div><br></div><div>I am tryin=
g to run an OAI 5G UE Simulator using USRP B210. The gNB configuration that=
 is planned to be used is DL 2x2 MIMO mode and 20 MHz system bandwidth. Due=
 to this I am trying to use benchmark_rate application to see if my UE setu=
p is working fine</div><div><br></div><div>My understanding is that to supp=
ort 2x2 MIMO with a bandwidth of 20 MHz, I will need 2 TX and 2 RX channels=
=C2=A0@ sampling rate of 30.72 msps. When I run a benchmark_rate test with =
this configuration it is consistently failing. Single channel and reduced s=
ampling rate tests with dual channel are passing=C2=A0</div><div><br></div>=
<div>Request if someone can help troubleshoot this issue or point me in the=
 right direction to resolve this issue</div><div><br></div><div><div><b>// =
Dual channel (required for 2x2 MIMO), TX and RX rate test @ 30.72 msps=C2=
=A0</b></div><div>benchmark_rate --tx_rate 30.72e6 --rx_rate 30.72e6 --rx_c=
hannels &quot;0,1&quot; --tx_channels &quot;0,1&quot; --duration 100 =3D&gt=
;<font color=3D"#ff0000">=C2=A0Fails with lot of overflows (logs below)</fo=
nt></div><div><br></div></div><div><div><b>// Single channel (for 1x1 SISO)=
, TX and RX rate test @ 30.72 msps=C2=A0</b></div><div>benchmark_rate --tx_=
rate 30.72e6 --rx_rate 30.72e6 --rx_channels &quot;0&quot; --tx_channels &q=
uot;0&quot; --duration 100 =3D&gt; <font color=3D"#00ff00">PASS w/o any ove=
rflow</font></div><div><br></div><div><b>// Dual channel (required for 2x2 =
MIMO), RX rate test @ 30.72 msps and TX rate test @ 15.36 msps =3D&gt; redu=
ced TX rate to see if it is working</b><br></div><div>benchmark_rate --tx_r=
ate 15.36e6 --rx_rate 30.72e6 --rx_channels &quot;0,1&quot; --tx_channels &=
quot;0,1&quot; --duration 100 <font color=3D"#00ff00">=3D&gt; PASS</font></=
div></div><div><br></div><div>NOTE: As mentioned in Ettus documentation, ex=
ternal power supply is provided for 2x2 configuration</div><div><br></div><=
div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DSystem Information=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</b></div><div><div><br></div><div><font face=3D=
"monospace"># lscpu</font></div><div><font face=3D"monospace">Architecture:=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 x86_64</font></div><div><font fac=
e=3D"monospace">=C2=A0 CPU op-mode(s):=C2=A0 =C2=A0 =C2=A0 =C2=A0 32-bit, 6=
4-bit</font></div><div><font face=3D"monospace">=C2=A0 Address sizes:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A039 bits physical, 48 bits virtual</font></div><=
div><font face=3D"monospace">=C2=A0 Byte Order:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Little Endian</font></div><div><font face=3D"monospace">CPU(s=
):=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6</font></=
div><div><font face=3D"monospace">=C2=A0 On-line CPU(s) list:=C2=A0 =C2=A00=
-5</font></div><div><font face=3D"monospace">Vendor ID:=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GenuineIntel</font></div><div><font face=
=3D"monospace">=C2=A0 Model name:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz</font></div><div><font face=3D"mo=
nospace">=C2=A0 =C2=A0 CPU family:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6</fon=
t></div><div><font face=3D"monospace">=C2=A0 =C2=A0 Model:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0166</font></div><div><font face=3D"mo=
nospace">=C2=A0 =C2=A0 Thread(s) per core:=C2=A0 1</font></div><div><font f=
ace=3D"monospace">=C2=A0 =C2=A0 Core(s) per socket:=C2=A0 6</font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 Socket(s):=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A01</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =
Stepping:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font></div><div><font=
 face=3D"monospace">=C2=A0 =C2=A0 Frequency boost:=C2=A0 =C2=A0 =C2=A0enabl=
ed</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 CPU max MHz:=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01601.0000</font></div><div><font face=3D"mon=
ospace">=C2=A0 =C2=A0 CPU min MHz:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0400.000=
0</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 BogoMIPS:=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3199.92</font></div><div><font face=3D"m=
onospace">=C2=A0 =C2=A0 Flags:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat=
 pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pd</font>=
</div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pe1gb rdtscp lm constan=
t_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid a=
perfmperf pni pclmulqdq dtes64 moni</font></div><div><font face=3D"monospac=
e">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0tor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pc=
id sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c =
rdr</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and lahf_lm a=
bm 3dnowprefetch cpuid_fault epb invpcid_single ssbd ibrs ibpb stibp ibrs_e=
nhanced tpr_shadow vnmi flexpriority ept vpid</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ept_ad fsgsbase tsc_adjust sgx bmi1 avx2 sm=
ep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsave=
c xgetbv1 xsav</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0es=
 dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flu=
sh_l1d arch_capabilities</font></div><div><font face=3D"monospace">Virtuali=
zation features:</font></div><div><font face=3D"monospace">=C2=A0 Virtualiz=
ation:=C2=A0 =C2=A0 =C2=A0 =C2=A0 VT-x</font></div><div><font face=3D"monos=
pace">Caches (sum of all):</font></div><div><font face=3D"monospace">=C2=A0=
 L1d:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01=
92 KiB (6 instances)</font></div><div><font face=3D"monospace">=C2=A0 L1i:=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0192 Ki=
B (6 instances)</font></div><div><font face=3D"monospace">=C2=A0 L2:=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1.5 MiB (6 i=
nstances)</font></div><div><font face=3D"monospace">=C2=A0 L3:=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 12 MiB (1 instance=
)</font></div><div><font face=3D"monospace">NUMA:</font></div><div><font fa=
ce=3D"monospace">=C2=A0 NUMA node(s):=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1</=
font></div><div><font face=3D"monospace">=C2=A0 NUMA node0 CPU(s):=C2=A0 =
=C2=A0 =C2=A00-5</font></div><div><font face=3D"monospace">Vulnerabilities:=
</font></div><div><font face=3D"monospace">=C2=A0 Gather data sampling:=C2=
=A0 Not affected</font></div><div><font face=3D"monospace">=C2=A0 Itlb mult=
ihit:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0KVM: Mitigation: VMX disabled</font>=
</div><div><font face=3D"monospace">=C2=A0 L1tf:=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Not affected</font></div><div><font fac=
e=3D"monospace">=C2=A0 Mds:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0Not affected</font></div><div><font face=3D"monospace"=
>=C2=A0 Meltdown:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Not affec=
ted</font></div><div><font face=3D"monospace">=C2=A0 Mmio stale data:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0Mitigation; Clear CPU buffers; SMT disabled</font></di=
v><div><font face=3D"monospace">=C2=A0 Retbleed:=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Mitigation; Enhanced IBRS</font></div><div><font face=
=3D"monospace">=C2=A0 Spec rstack overflow:=C2=A0 Not affected</font></div>=
<div><font face=3D"monospace">=C2=A0 Spec store bypass:=C2=A0 =C2=A0 =C2=A0=
Mitigation; Speculative Store Bypass disabled via prctl and seccomp</font><=
/div><div><font face=3D"monospace">=C2=A0 Spectre v1:=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Mitigation; usercopy/swapgs barriers and __user pointe=
r sanitization</font></div><div><font face=3D"monospace">=C2=A0 Spectre v2:=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; Enhanced IBRS, IBPB c=
onditional, RSB filling, PBRSB-eIBRS SW sequence</font></div><div><font fac=
e=3D"monospace">=C2=A0 Srbds:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0Not affected</font></div><div><font face=3D"monospace">=C2=
=A0 Tsx async abort:=C2=A0 =C2=A0 =C2=A0 =C2=A0Not affected</font></div></d=
iv><div><br></div><div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D Device Information=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</b></div><div><div><font face=3D"monospace"># uhd_=
find_devices</font></div><div><font face=3D"monospace">[INFO] [UHD] linux; =
GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-3-g080b1baa</font></div><=
div><font face=3D"monospace">----------------------------------------------=
----</font></div><div><font face=3D"monospace">-- UHD Device 0</font></div>=
<div><font face=3D"monospace">---------------------------------------------=
-----</font></div><div><font face=3D"monospace">Device Address:</font></div=
><div><font face=3D"monospace">=C2=A0 =C2=A0 serial: 32308C2</font></div><d=
iv><font face=3D"monospace">=C2=A0 =C2=A0 name: MyB210</font></div><div><fo=
nt face=3D"monospace">=C2=A0 =C2=A0 product: B210</font></div><div><font fa=
ce=3D"monospace">=C2=A0 =C2=A0 type: b200</font></div></div><div><font face=
=3D"monospace"><br></font></div><div><div><font face=3D"monospace"># uhd_us=
rp_probe</font></div><div><font face=3D"monospace">[INFO] [UHD] linux; GNU =
C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-3-g080b1baa</font></div><div>=
<font face=3D"monospace">[INFO] [B200] Detected Device: B210</font></div><d=
iv><font face=3D"monospace">[INFO] [B200] Operating over USB 3.</font></div=
><div><font face=3D"monospace">[INFO] [B200] Initialize CODEC control...</f=
ont></div><div><font face=3D"monospace">[INFO] [B200] Initialize Radio cont=
rol...</font></div><div><font face=3D"monospace">[INFO] [B200] Performing r=
egister loopback test...</font></div><div><font face=3D"monospace">[INFO] [=
B200] Register loopback test passed</font></div><div><font face=3D"monospac=
e">[INFO] [B200] Performing register loopback test...</font></div><div><fon=
t face=3D"monospace">[INFO] [B200] Register loopback test passed</font></di=
v><div><font face=3D"monospace">[INFO] [B200] Setting master clock rate sel=
ection to &#39;automatic&#39;.</font></div><div><font face=3D"monospace">[I=
NFO] [B200] Asking for clock rate 16.000000 MHz...</font></div><div><font f=
ace=3D"monospace">[INFO] [B200] Actually got clock rate 16.000000 MHz.</fon=
t></div><div><font face=3D"monospace">=C2=A0 ______________________________=
_______________________</font></div><div><font face=3D"monospace">=C2=A0/</=
font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0 =C2=A0Device=
: B-Series Device</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =
=C2=A0_____________________________________________________</font></div><di=
v><font face=3D"monospace">|=C2=A0 =C2=A0 /</font></div><div><font face=3D"=
monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: B210</font></d=
iv><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 32308C=
2</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0nam=
e: MyB210</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0product: 2</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0revision: 4</font></div><div><font face=3D"monospace">|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0FW Version: 8.0</font></div><div><font face=3D"monospac=
e">|=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 16.0</font></div><div><font fa=
ce=3D"monospace">|=C2=A0 =C2=A0|</font></div><div><font face=3D"monospace">=
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 none, internal, external, g=
psdo</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0=
Clock sources: internal, external, gpsdo</font></div><div><font face=3D"mon=
ospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: ref_locked</font></div><div><f=
ont face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_________________=
____________________________________</font></div><div><font face=3D"monospa=
ce">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><div><font face=3D"monospace=
">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX DSP: 0</font><=
/div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|</font></di=
v><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0F=
req range: -8.000 to 8.000 MHz</font></div><div><font face=3D"monospace">|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_________________________________________=
____________</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 /</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX DSP: 1</font></div><div><font face=
=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|</font></div><div><font face=3D=
"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: -8.000 to=
 8.000 MHz</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0 =C2=A0_____________________________________________________</font></=
div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></di=
v><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =
=C2=A0 =C2=A0RX Dboard: A</font></div><div><font face=3D"monospace">|=C2=A0=
 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_________________________________=
____________________</font></div><div><font face=3D"monospace">|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><div><font face=3D"monospace"=
>|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX F=
rontend: A</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: FE-RX2</font></div><div><font face=
=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Ante=
nnas: TX/RX, RX2</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: temp, rssi, lo_locked</fo=
nt></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Freq range: 50.000 to 6000.000 MHz</font></div><div><fo=
nt face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB</font></div><div><font face=3D"m=
onospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth=
 range: 200000.0 to 56000000.0 step 0.0 Hz</font></div><div><font face=3D"m=
onospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connectio=
n Type: IQ</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No</font></div><div><font=
 face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0______=
_______________________________________________</font></div><div><font face=
=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><di=
v><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0RX Frontend: B</font></div><div><font face=3D"monos=
pace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: FE-RX1<=
/font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX, RX2</font></div><div><font face=3D=
"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors=
: temp, rssi, lo_locked</font></div><div><font face=3D"monospace">|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 50.000 to 6000.=
000 MHz</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 76.0 step 1.0 dB</fon=
t></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz</fo=
nt></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0Connection Type: IQ</font></div><div><font face=3D"mono=
space">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offs=
et: No</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0 =C2=A0___________________________________________________=
__</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Codec: A</font></=
div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0Name: B210 RX dual ADC</font></div><div><font face=3D"mono=
space">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Element=
s: None</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0 =C2=A0_____________________________________________________</font></div=
><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><=
div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0TX DSP: 0</font></div><div><font face=3D"monospace">|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0|</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0=
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: -8.000 to 8.000 MHz</font></div><di=
v><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________=
________________________________________</font></div><div><font face=3D"mon=
ospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><div><font face=3D"monos=
pace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX DSP: 1</fo=
nt></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|</font>=
</div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0Freq range: -8.000 to 8.000 MHz</font></div><div><font face=3D"monospace=
">|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0______________________________________=
_______________</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: A</font></div><div><fon=
t face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____=
________________________________________________</font></div><div><font fac=
e=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><d=
iv><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: A</font></div><div><font face=3D"monos=
pace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: FE-TX2<=
/font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX</font></div><div><font face=3D"mono=
space">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: tem=
p, lo_locked</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 50.000 to 6000.000 MHz</f=
ont></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0=
 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 step 0.2 dB</font></div><d=
iv><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz</font></div><=
div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0Connection Type: IQ</font></div><div><font face=3D"monospace">|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No</=
font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=
=A0 =C2=A0 =C2=A0_____________________________________________________</fon=
t></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0 /</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Frontend: B</font></div>=
<div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Name: FE-TX1</font></div><div><font face=3D"monospace">|=C2=A0=
 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX</font></di=
v><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Sensors: temp, lo_locked</font></div><div><font face=3D"monosp=
ace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 50=
.000 to 6000.000 MHz</font></div><div><font face=3D"monospace">|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0 to 89.8 st=
ep 0.2 dB</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 200000.0 to 56000000.0 s=
tep 0.0 Hz</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ</font></div><div><fon=
t face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0Uses LO offset: No</font></div><div><font face=3D"monospace">|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________________________=
________________</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div><div><font face=3D"monospace">|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Cod=
ec: A</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: B210 TX dual DAC</font></div><div><fon=
t face=3D"monospace">|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=
=A0Gain Elements: None</font></div></div><div><font face=3D"monospace"><br>=
</font></div><div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Problem scenario Logs (=
TX and RX rate @ 30.72 msps) =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</b></div><div><div>Followed General Tuning notes=C2=A0@=C2=A0<a h=
ref=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Tuning_Notes"=
>https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Tuning_Notes</a> (<=
b>CPUs 2-5 isolated</b>)</div><div><br></div><div><font face=3D"monospace">=
# taskset -c &quot;2-5&quot; examples/benchmark_rate --tx_rate 30.72e6 --rx=
_rate 30.72e6 --rx_channels &quot;0,1&quot; --tx_channels &quot;0,1&quot; -=
-duration 1 --priority high</font></div><div><font face=3D"monospace"><br><=
/font></div><div><font face=3D"monospace">[INFO] [UHD] linux; GNU C++ versi=
on 11.4.0; Boost_107400; UHD_4.6.0.0-3-g080b1baa</font></div><div><font fac=
e=3D"monospace">[00:00:00.000029] Creating the usrp device with: ...</font>=
</div><div><font face=3D"monospace">[INFO] [B200] Detected Device: B210</fo=
nt></div><div><font face=3D"monospace">[INFO] [B200] Operating over USB 3.<=
/font></div><div><font face=3D"monospace">[INFO] [B200] Initialize CODEC co=
ntrol...</font></div><div><font face=3D"monospace">[INFO] [B200] Initialize=
 Radio control...</font></div><div><font face=3D"monospace">[INFO] [B200] P=
erforming register loopback test...</font></div><div><font face=3D"monospac=
e">[INFO] [B200] Register loopback test passed</font></div><div><font face=
=3D"monospace">[INFO] [B200] Performing register loopback test...</font></d=
iv><div><font face=3D"monospace">[INFO] [B200] Register loopback test passe=
d</font></div><div><font face=3D"monospace">[INFO] [B200] Setting master cl=
ock rate selection to &#39;automatic&#39;.</font></div><div><font face=3D"m=
onospace">[INFO] [B200] Asking for clock rate 16.000000 MHz...</font></div>=
<div><font face=3D"monospace">[INFO] [B200] Actually got clock rate 16.0000=
00 MHz.</font></div><div><font face=3D"monospace">Using Device: Single USRP=
:</font></div><div><font face=3D"monospace">=C2=A0 Device: B-Series Device<=
/font></div><div><font face=3D"monospace">=C2=A0 Mboard 0: B210</font></div=
><div><font face=3D"monospace">=C2=A0 RX Channel: 0</font></div><div><font =
face=3D"monospace">=C2=A0 =C2=A0 RX DSP: 0</font></div><div><font face=3D"m=
onospace">=C2=A0 =C2=A0 RX Dboard: A</font></div><div><font face=3D"monospa=
ce">=C2=A0 =C2=A0 RX Subdev: FE-RX2</font></div><div><font face=3D"monospac=
e">=C2=A0 RX Channel: 1</font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 RX DSP: 1</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 RX=
 Dboard: A</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 RX Subde=
v: FE-RX1</font></div><div><font face=3D"monospace">=C2=A0 TX Channel: 0</f=
ont></div><div><font face=3D"monospace">=C2=A0 =C2=A0 TX DSP: 0</font></div=
><div><font face=3D"monospace">=C2=A0 =C2=A0 TX Dboard: A</font></div><div>=
<font face=3D"monospace">=C2=A0 =C2=A0 TX Subdev: FE-TX2</font></div><div><=
font face=3D"monospace">=C2=A0 TX Channel: 1</font></div><div><font face=3D=
"monospace">=C2=A0 =C2=A0 TX DSP: 1</font></div><div><font face=3D"monospac=
e">=C2=A0 =C2=A0 TX Dboard: A</font></div><div><font face=3D"monospace">=C2=
=A0 =C2=A0 TX Subdev: FE-TX1</font></div><div><font face=3D"monospace"><br>=
</font></div><div><font face=3D"monospace">[00:00:01.866378510] Setting dev=
ice timestamp to 0...</font></div><div><font face=3D"monospace">[INFO] [MUL=
TI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time transition at pps edge</font></di=
v><div><font face=3D"monospace">[INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) s=
et times next pps (synchronously)</font></div><div><font face=3D"monospace"=
>[INFO] [B200] Asking for clock rate 30.720000 MHz...</font></div><div><fon=
t face=3D"monospace">[INFO] [B200] Actually got clock rate 30.720000 MHz.</=
font></div><div><font face=3D"monospace">[00:00:05.66457702] Testing receiv=
e rate 30.720000 Msps on 2 channels</font></div><div><font face=3D"monospac=
e">Setting TX spp to 2040</font></div><div><font face=3D"monospace">[00:00:=
05.88338475] Testing transmit rate 30.720000 Msps on 2 channels</font></div=
><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO=
[D00:00:05.356178311] Detected Rx sequence error.</font></div><div><font fa=
ce=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.373353034=
] Detected Rx sequence error.</font></div><div><font face=3D"monospace">UUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.390809194] Detected Rx sequ=
ence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUO[D00:00:05.408309136] Detected Rx sequence error.</fo=
nt></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO=
[D00:00:05.425513440] Detected Rx sequence error.</font></div><div><font fa=
ce=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.442918=
966] Detected Rx sequence error.</font></div><div><font face=3D"monospace">=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.460473385] Detected Rx=
 sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUO[D00:00:05.477327828] Detected Rx sequence error.</font></=
div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[=
D00:00:05.494827031] Detected Rx sequence error.</font></div><div><font fac=
e=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.512352=
750] Detected Rx sequence error.</font></div><div><font face=3D"monospace">=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.529942938] Detected R=
x sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.547127246] Detected Rx sequence error.</f=
ont></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUO[D00:00:05.564702200] Detected Rx sequence error.</font></div><div><=
font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.581790=
507] Detected Rx sequence error.</font></div><div><font face=3D"monospace">=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.599503284] Detected Rx=
 sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.616332439] Detected Rx sequence error.</font><=
/div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D=
00:00:05.633433429] Detected Rx sequence error.</font></div><div><font face=
=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.650535502] D=
etected Rx sequence error.</font></div><div><font face=3D"monospace">UUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.667989498] Detected Rx sequenc=
e error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.685455166] Detected Rx sequence error.</font><=
/div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUO[D00:00:05.702877567] Detected Rx sequence error.</font></div><div><fon=
t face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.=
720326408] Detected Rx sequence error.</font></div><div><font face=3D"monos=
pace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.737630193] Detected=
 Rx sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.754504596] Detected Rx sequence error.</font><=
/div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:=
00:05.771535859] Detected Rx sequence error.</font></div><div><font face=3D=
"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.788576687] Detected=
 Rx sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.806317150] Detected Rx sequence er=
ror.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUO[D00:00:05.823610494] Detected Rx sequence error.</font></div><div=
><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.840=
615113] Detected Rx sequence error.</font></div><div><font face=3D"monospac=
e">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.857670406] Detected Rx sequ=
ence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUO[D00:00:05.874838720] Detected Rx sequence error.</font></div>=
<div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:=
00:05.892369065] Detected Rx sequence error.</font></div><div><font face=3D=
"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.909245514] Detected=
 Rx sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.926880429] Detected Rx sequence err=
or.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUO[D00:00:05.943781582] Detected Rx sequence error.</font></div><div><fon=
t face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.96089=
9743] Detected Rx sequence error.</font></div><div><font face=3D"monospace"=
>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.978572166] Detected R=
x sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.995669275] Detected Rx sequence error.</=
font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUO[D00:00:06.12991071] Detected Rx sequence error.</font></div><div><fon=
t face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.30083109=
] Detected Rx sequence error.</font></div><div><font face=3D"monospace">UUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.47759726] Detected Rx se=
quence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUO[D00:00:06.65033966] Detected Rx sequence error.</font></d=
iv><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D=
00:00:06.82480858] Detected Rx sequence error.</font></div><div><font face=
=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.99961=
987] Detected Rx sequence error.</font></div><div><font face=3D"monospace">=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.117452418] Detected R=
x sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUO[D00:00:06.134652518] Detected Rx sequence error.</fon=
t></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUO[D00:00:06.152241203] Detected Rx sequence error.</font></div><div><f=
ont face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06=
.169706747] Detected Rx sequence error.</font></div><div><font face=3D"mono=
space">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.186942554] Detect=
ed Rx sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.204331660] Detected Rx sequence er=
ror.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUO[D00:00:06.221620703] Detected Rx sequence error.</font></div><d=
iv><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:=
06.238834026] Detected Rx sequence error.</font></div><div><font face=3D"mo=
nospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.256245885] Detect=
ed Rx sequence error.</font></div><div><font face=3D"monospace">UUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.274190434] Detected Rx seque=
nce error.</font></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUO[D00:00:06.291702252] Detected Rx sequence error.</font=
></div><div><font face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUO[D00:00:06.308942984] Detected Rx sequence error.</font></div><div><font=
 face=3D"monospace">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.326=
528850] Detected Rx sequence error.</font></div><div><font face=3D"monospac=
e">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.343856658] Detected Rx=
 sequence error.</font></div><div><font face=3D"monospace">[00:00:06.344059=
518] Benchmark complete.</font></div><div><font face=3D"monospace"><br></fo=
nt></div><div><font face=3D"monospace"><br></font></div><div><font face=3D"=
monospace">Benchmark rate summary:</font></div><div><font face=3D"monospace=
">=C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A028048518</font></div><div=
><font face=3D"monospace">=C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 2=
3595022</font></div><div><font face=3D"monospace">=C2=A0 Num overruns detec=
ted:=C2=A0 =C2=A0 58</font></div><div><font face=3D"monospace">=C2=A0 Num t=
ransmitted samples:=C2=A0 58833600</font></div><div><font face=3D"monospace=
">=C2=A0 Num sequence errors (Tx): 0</font></div><div><font face=3D"monospa=
ce">=C2=A0 Num sequence errors (Rx): 58</font></div><div><font face=3D"mono=
space">=C2=A0 Num underruns detected:=C2=A0 =C2=A02214</font></div><div><fo=
nt face=3D"monospace">=C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
0</font></div><div><font face=3D"monospace">=C2=A0 Num timeouts (Tx):=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0</font></div><div><font face=3D"monospace">=C2=A0 Nu=
m timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace"><br></font></=
div><div><font face=3D"monospace">Done!</font></div></div><div><br></div><d=
iv><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Working scenario Logs (TX Rate @ 15.36=
 msps, RX Rate @ 30.72 msps) =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</b></div>=
<div><b><br></b></div><div><div><font face=3D"monospace"># taskset -c &quot=
;2-5&quot; examples/benchmark_rate --tx_rate 15.36e6 --rx_rate 30.72e6 --rx=
_channels &quot;0,1&quot; --tx_channels &quot;0,1&quot; --duration 1 --prio=
rity high</font></div><div><font face=3D"monospace">[INFO] [UHD] linux; GNU=
 C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-3-g080b1baa<br></font></div>=
<div><font face=3D"monospace">[00:00:00.000108] Creating the usrp device wi=
th: ...</font></div><div><font face=3D"monospace">[INFO] [B200] Detected De=
vice: B210</font></div><div><font face=3D"monospace">[INFO] [B200] Operatin=
g over USB 3.</font></div><div><font face=3D"monospace">[INFO] [B200] Initi=
alize CODEC control...</font></div><div><font face=3D"monospace">[INFO] [B2=
00] Initialize Radio control...</font></div><div><font face=3D"monospace">[=
INFO] [B200] Performing register loopback test...</font></div><div><font fa=
ce=3D"monospace">[INFO] [B200] Register loopback test passed</font></div><d=
iv><font face=3D"monospace">[INFO] [B200] Performing register loopback test=
...</font></div><div><font face=3D"monospace">[INFO] [B200] Register loopba=
ck test passed</font></div><div><font face=3D"monospace">[INFO] [B200] Sett=
ing master clock rate selection to &#39;automatic&#39;.</font></div><div><f=
ont face=3D"monospace">[INFO] [B200] Asking for clock rate 16.000000 MHz...=
</font></div><div><font face=3D"monospace">[INFO] [B200] Actually got clock=
 rate 16.000000 MHz.</font></div><div><font face=3D"monospace">Using Device=
: Single USRP:</font></div><div><font face=3D"monospace">=C2=A0 Device: B-S=
eries Device</font></div><div><font face=3D"monospace">=C2=A0 Mboard 0: B21=
0</font></div><div><font face=3D"monospace">=C2=A0 RX Channel: 0</font></di=
v><div><font face=3D"monospace">=C2=A0 =C2=A0 RX DSP: 0</font></div><div><f=
ont face=3D"monospace">=C2=A0 =C2=A0 RX Dboard: A</font></div><div><font fa=
ce=3D"monospace">=C2=A0 =C2=A0 RX Subdev: FE-RX2</font></div><div><font fac=
e=3D"monospace">=C2=A0 RX Channel: 1</font></div><div><font face=3D"monospa=
ce">=C2=A0 =C2=A0 RX DSP: 1</font></div><div><font face=3D"monospace">=C2=
=A0 =C2=A0 RX Dboard: A</font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 RX Subdev: FE-RX1</font></div><div><font face=3D"monospace">=C2=A0 T=
X Channel: 0</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 TX DSP=
: 0</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 TX Dboard: A</f=
ont></div><div><font face=3D"monospace">=C2=A0 =C2=A0 TX Subdev: FE-TX2</fo=
nt></div><div><font face=3D"monospace">=C2=A0 TX Channel: 1</font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 TX DSP: 1</font></div><div><font f=
ace=3D"monospace">=C2=A0 =C2=A0 TX Dboard: A</font></div><div><font face=3D=
"monospace">=C2=A0 =C2=A0 TX Subdev: FE-TX1</font></div><div><font face=3D"=
monospace"><br></font></div><div><font face=3D"monospace">[00:00:01.8662041=
71] Setting device timestamp to 0...</font></div><div><font face=3D"monospa=
ce">[INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time transition at pps =
edge</font></div><div><font face=3D"monospace">[INFO] [MULTI_USRP]=C2=A0 =
=C2=A0 =C2=A02) set times next pps (synchronously)</font></div><div><font f=
ace=3D"monospace">[INFO] [B200] Asking for clock rate 30.720000 MHz...</fon=
t></div><div><font face=3D"monospace">[INFO] [B200] Actually got clock rate=
 30.720000 MHz.</font></div><div><font face=3D"monospace">[00:00:05.4973499=
95] Testing receive rate 30.720000 Msps on 2 channels</font></div><div><fon=
t face=3D"monospace">Setting TX spp to 2040</font></div><div><font face=3D"=
monospace">[00:00:05.519203256] Testing transmit rate 15.360000 Msps on 2 c=
hannels</font></div><div><font face=3D"monospace">[00:00:06.771457104] Benc=
hmark complete.</font></div><div><font face=3D"monospace"><br></font></div>=
<div><font face=3D"monospace"><br></font></div><div><font face=3D"monospace=
">Benchmark rate summary:</font></div><div><font face=3D"monospace">=C2=A0 =
Num received samples:=C2=A0 =C2=A0 =C2=A075074598</font></div><div><font fa=
ce=3D"monospace">=C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0</font></=
div><div><font face=3D"monospace">=C2=A0 Num overruns detected:=C2=A0 =C2=
=A0 0</font></div><div><font face=3D"monospace">=C2=A0 Num transmitted samp=
les:=C2=A0 30787680</font></div><div><font face=3D"monospace">=C2=A0 Num se=
quence errors (Tx): 0</font></div><div><font face=3D"monospace">=C2=A0 Num =
sequence errors (Rx): 0</font></div><div><font face=3D"monospace">=C2=A0 Nu=
m underruns detected:=C2=A0 =C2=A00</font></div><div><font face=3D"monospac=
e">=C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font></div><div>=
<font face=3D"monospace">=C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0</font></div><div><font face=3D"monospace">=C2=A0 Num timeouts (Rx):=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font></div><div><font face=3D"monospace"><br=
></font></div><div><font face=3D"monospace"><br></font></div><div><font fac=
e=3D"monospace">Done!</font></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</div></div><div><br></div><div>Best Regards,</div><div>Sach=
in=C2=A0</div><div><br></div></div></div></div></div></div></div></div></di=
v></div></div>

--000000000000239564060c4ed733--

--===============5884183692638342408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5884183692638342408==--
