Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC0713123F
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 13:45:43 +0100 (CET)
Received: from [::1] (port=41646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioRlM-0002X7-9V; Mon, 06 Jan 2020 07:45:40 -0500
Received: from mail-wr1-f42.google.com ([209.85.221.42]:38484)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1ioRlI-0002Su-F8
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 07:45:36 -0500
Received: by mail-wr1-f42.google.com with SMTP id y17so49468044wrh.5
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 04:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=XkSyGjcSF4tN33cfMKrMFa7uxkdiuUxjT7aLz+6wtMQ=;
 b=Ors3FzJ5yg8gt5ld3YbQgt9u1jEX/YR1w6zJtDQw7JiAmhjFwibmsAUD9kH0CJiROB
 rIMZYuSeHUCPpa6xSVB3DsNg171QYd1PvvesAdsdHqls/Jo7mr6CvI9r1etvDpeGsesk
 cFpXFAn0X0bB/JhvPYORhk6nc1r1it6SoyHDdt0/jaTaOZUcqFzUqbzzlq9+N1v+Qpg3
 FfGMgdrGJ9NFqWxQbCGD9UcQRD4qFoqfBh+QrvCyUFjaO/DEhBaeJ1+QEgEJtYJDsdTw
 8ZnaPmZbj5RjczwABVxFAE9oqDxfaQ9vixrNmPXhwL48yJk9MP1hhROsPG5ssd4eXJxr
 Fa3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=XkSyGjcSF4tN33cfMKrMFa7uxkdiuUxjT7aLz+6wtMQ=;
 b=mb7T5ToJ0AmR+o1z2y4g8c++k4ixydLuvp2Y2U7Jl/yYbWrG9JnyEDMo4A4PiPabKg
 KYMKbOrjzsxMsNRyHy23Os5h7im365hENP/AXwlFfoZSdxYRVx5xr3lJpIPl2EDDHB7L
 kbmMLlszR0zbbOorbjF1G7xxwofPVjFNY/yk35gx97HtdIGPGtlilNG6nU3moFvz1sKw
 +3cFAqGiQJSS5jxeN2TGrFbD5OSGtZRmJ9BRErIiswopEsN/DEJ14mHvZ1xxjNx5IPI7
 x5hS2NKHWU+k8BzFJchS9/uVb64SX/Kic6vrRIK8t0UuSQLOgLK8B0PTDzoH6kv1kLaB
 waxQ==
X-Gm-Message-State: APjAAAWpD+xll/2xhUakN9OhIDqyl6U4Gy2v3SZ9VhFjG1siQW10G3LQ
 dTMzG6x7cYxKE5GK301Uk9uiCVot
X-Google-Smtp-Source: APXvYqwqeBMAIBk1G3++D1YNQiii7ZN53R9/B0q5jg6YDhX9jdS6aBmQe9nmmGNUW8EE5XiY/upx9g==
X-Received: by 2002:a5d:6ac5:: with SMTP id u5mr102663174wrw.271.1578314694886; 
 Mon, 06 Jan 2020 04:44:54 -0800 (PST)
Received: from workhorse.lan
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.googlemail.com with ESMTPSA id j2sm23302140wmk.23.2020.01.06.04.44.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 04:44:53 -0800 (PST)
Message-ID: <7c13034bd08d309a6944916b27b0f7b33804ef1d.camel@ettus.com>
To: Subu Rama <subu.rama@gmail.com>, usrp-users@lists.ettus.com
Date: Mon, 06 Jan 2020 13:44:53 +0100
In-Reply-To: <CAL1aUnoNwwjxyCzTuVf5pJW3r3ZuxaGhZrQs6LR2eQRRkaya9g@mail.gmail.com>
References: <CAL1aUnoNwwjxyCzTuVf5pJW3r3ZuxaGhZrQs6LR2eQRRkaya9g@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Kernel Panic with v3.15.0.0 on E320
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Subu,

when exactly does the panic occur?

Best regards,
Marcus
On Mon, 2020-01-06 at 11:12 +0000, Subu Rama via USRP-users wrote:
> I have a kernel panic on the E320 with the most recent release
> v3.15.0.0
> (I used the most recent mender process).
> 
> Details on E320 to be used in the test setup:
> 
> eth0 --- Management - 192.168.1.2/24
> sfp0 --- Data - 192.168.10.2/24
> 
> root@ni-e320-31BB638:~# ip a
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>     inet 127.0.0.1/8 scope host lo
>        valid_lft forever preferred_lft forever
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> qlen 1000
>     link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
>     inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
>        valid_lft forever preferred_lft forever
> 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 8000 qdisc pfifo_fast
> qlen 1000
>     link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
>     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
>        valid_lft forever preferred_lft forever
> root@ni-e320-31BB638:~# 
> 
> MTU was changed to 1500 bytes as we are using the SFP to 1G adapter
> to connect to a 1Gbps port on a switch.
> 
> ------------------------
> ramasu@nuc-qrc3:~$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;
> UHD_3.15.0.0-0-gaea0e2de
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31BB638
>     claimed: False
>     mgmt_addr: 192.168.1.2
>     product: e320
>     reachable: No
>     type: e3xx
> 
> -------------------------
> ramasu@nuc-qrc3:~$ uhd_config_info --print-all
> UHD 3.15.0.0-0-gaea0e2de
> Build date: Sun, 05 Jan 2020 17:26:13
> C compiler: GNU 9.2.1
> C++ compiler: GNU 9.2.1
> C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
> -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
> -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=hidden
> -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230,
> MPMD, N300, N320, E320, E300, OctoClock
> Install prefix: /usr/local
> Boost version: 1.72
> Libusb version: 1.0.25
> Package path: /usr/local
> Images directory: /usr/local/share/uhd/images
> ABI version string: 3.15.0
> -------------------------------
> 
> root@ni-e320-31BB638:~# uhd_usrp_probe
> 
> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=127.0.0.1,type=e3xx,product=e320,serial=31BB638,claimed=Fal
> se
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=127.0.0.1,product=e320'.
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1339 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000003320)
> [INFO] [0/DDC_0] Initializing block control (NOC ID:
> 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID:
> 0xD0C0000000000002)
> [INFO] [0/Radio_0] Performing CODEC loopback test... 
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [0/Radio_0] Performing CODEC loopback test... 
> [INFO] [0/Radio_0] CODEC loopback test passed
>   _____________________________________________________
>  /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e320-31BB638
> |   |   eeprom_version: 2
> |   |   mpm_version: 3.15.0.0-gaea0e2de
> |   |   pid: 58144
> |   |   product: e320
> |   |   rev: 4
> |   |   rpc_connection: local
> |   |   serial: 31BB638
> |   |   type: e3xx
> |   |   MPM Version: 1.2
> |   |   FPGA Version: 3.1
> |   |   FPGA git hash: fde2a94.clean
> |   |   RFNoC capable: Yes
> |   |   
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: gps_gpgga, gps_locked, temp_internal, fan, gps_time,
> temp_fpga, gps_tpv, temp_main_power, gps_sky, temp_rf_channelB,
> temp_rf_channelA, ref_locked
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: E3xx
> |   |   |   |   Antennas: RX2, TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature, lo_lock, rssi
> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 1
> |   |   |   |   Name: E3xx
> |   |   |   |   Antennas: RX2, TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature, lo_lock, rssi
> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: A
> |   |   |   |   Name: AD9361 Dual ADC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: E3xx
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 1
> |   |   |   |   Name: E3xx
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: A
> |   |   |   |   Name: AD9361 Dual DAC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RFNoC blocks on this device:
> |   |   |   
> |   |   |   * DmaFIFO_0
> |   |   |   * Radio_0
> |   |   |   * DDC_0
> |   |   |   * DUC_0
> 
> 
> --------------------------------------------------------------
> Kernel panic:
> 
> ni-e320-31BB638 login: [   15.050303] nixge 40000000.ethernet sfp0:
> Link is Up - 1Gbps/Full - flow co
> ntrol off
> [  340.982001] cros-ec-dev cros-ec-dev.0.auto: Some logs may have
> been dropped...
> [35770.507386] Unable to handle kernel paging request at virtual
> address fffffffe
> [35770.514558] pgd = e909f41c
> [35770.517224] [fffffffe] *pgd=2fffd861, *pte=00000000,
> *ppte=00000000
> [35770.523528] Internal error: Oops: 80000007 [#1] PREEMPT SMP ARM
> [35770.529385] Modules linked in:
> [35770.532420] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.18.33-
> yocto-standard #1
> [35770.539714] Hardware name: Xilinx Zynq Platform
> [35770.544226] PC is at 0xfffffffe
> [35770.547351] LR is at rcu_process_callbacks+0x55c/0x60c
> [35770.552470] pc : [<fffffffe>]    lr : [<c018863c>]    psr:
> a0000133
> [35770.558720] sp : c0e01d70  ip : c0e01d70  fp : c0e01dcc
> [35770.563927] r10: c0e01d70  r9 : ef6d6860  r8 : c0e15040
> [35770.569135] r7 : c0e03cb0  r6 : c0e01d8c  r5 : c0e15040  r4 :
> ef6d6840
> [35770.575647] r3 : ffffffff  r2 : ffffffff  r1 : efd56a04  r0 :
> eccf8994
> [35770.582158] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA Thumb
>  Segment none
> [35770.589452] Control: 18c5387d  Table: 2d51c04a  DAC: 00000051
> [35770.595177] Process swapper/0 (pid: 0, stack limit = 0x8c540e68)
> [35770.601166] Stack: (0xc0e01d70 to 0xc0e02000)
> [35770.605506] 1d60:                                     60000113
> 00000000 00000001 c0e03c88
> [35770.613676] 1d80: 0000000a c0ea40a0 ef6d60c0 ffffffff ed239e40
> ffffffcb fffffffc a646c33b
> [35770.621835] 1da0: ffffe000 c0e020a4 ffffe000 00000009 00000002
> 0000000a 00000101 c0e02080
> [35770.629994] 1dc0: c0e01e14 c0e01dd0 c0102c28 c01880ec 00000000
> c0d93c6c 00000011 00000002
> [35770.638153] 1de0: 00361faa 00200102 c053ce98 c0d93c80 00000000
> c0d93c6c 00000011 ef03c800
> [35770.646312] 1e00: 00000001 c0e01e88 c0e01e2c c0e01e18 c0129100
> c01029d4 00000000 00000000
> [35770.654471] 1e20: c0e01e5c c0e01e30 c017af58 c0129084 c0e01e88
> f8f00100 c0e0450c c0e01e88
> [35770.662631] 1e40: c0e6ebec f8f01100 c0e00000 00002088 c0e01e84
> c0e01e60 c0102990 c017aec0
> [35770.670790] 1e60: c0767d78 60000013 ffffffff c0e01ebc 00002088
> c0e00000 c0e01f1c c0e01e88
> [35770.678948] 1e80: c01020cc c0102934 00000000 c0ad7208 004d938c
> 00000000 ef6d5438 00000001
> [35770.687108] 1ea0: c0ea44c4 c0e8f99c 00002088 78614ac2 00002088
> c0e01f1c c0e01eb0 c0e01ed8
> [35770.695267] 1ec0: c053ce74 c0767d78 60000013 ffffffff 00000051
> 00000000 c0d8f504 2e942000
> [35770.703426] 1ee0: 782518dc 00000000 c0e01f04 c0e01ef8 c053ce74
> ef6d5438 c0e8f99c c0e03c88
> [35770.711586] 1f00: c0e03cb0 ffffe000 c0e03d00 00000001 c0e01f2c
> c0e01f20 c0767ed4 c0767ad0
> [35770.719745] 1f20: c0e01f3c c0e01f30 c0153428 c0767ebc c0e01f7c
> c0e01f40 c0153848 c01533f0
> [35770.727903] 1f40: 000000c2 00000001 01e03c88 a646c33b c0e03c80
> 000000c2 00000002 c0e03c88
> [35770.736064] 1f60: ffffffff c0e03c80 efffcd80 c0d5de40 c0e01f8c
> c0e01f80 c0153bac c0153674
> [35770.744223] 1f80: c0e01fa4 c0e01f90 c08f30dc c0153b90 c0eaef98
> c0eaef40 c0e01ff4 c0e01fa8
> [35770.752382] 1fa0: c0d00f18 c08f3030 ffffffff ffffffff 00000000
> c0d00608 00000000 c0d5de40
> [35770.760540] 1fc0: a642d11a 00000000 00000000 c0d00330 00000051
> 10c0387d 00000000 1fff9000
> [35770.768700] 1fe0: 413fc090 18c5387d 00000000 c0e01ff8 00000000
> c0d00b30 00000000 00000000
> [35770.776874] [<c018863c>] (rcu_process_callbacks) from [<c0102c28>]
> (__do_softirq+0x260/0x3dc)
> [35770.785375] [<c0102c28>] (__do_softirq) from [<c0129100>]
> (irq_exit+0x88/0xe0)
> [35770.792578] [<c0129100>] (irq_exit) from [<c017af58>]
> (__handle_domain_irq+0xa4/0xf0)
> [35770.800386] [<c017af58>] (__handle_domain_irq) from [<c0102990>]
> (gic_handle_irq+0x68/0xa0)
> [35770.808716] [<c0102990>] (gic_handle_irq) from [<c01020cc>]
> (__irq_svc+0x6c/0xa8)
> [35770.816173] Exception stack(0xc0e01e88 to 0xc0e01ed0)
> [35770.821205] 1e80:                   00000000 c0ad7208 004d938c
> 00000000 ef6d5438 00000001
> [35770.829373] 1ea0: c0ea44c4 c0e8f99c 00002088 78614ac2 00002088
> c0e01f1c c0e01eb0 c0e01ed8
> [35770.837529] 1ec0: c053ce74 c0767d78 60000013 ffffffff
> [35770.842568] [<c01020cc>] (__irq_svc) from [<c0767d78>]
> (cpuidle_enter_state+0x2b4/0x3c0)
> [35770.850644] [<c0767d78>] (cpuidle_enter_state) from [<c0767ed4>]
> (cpuidle_enter+0x24/0x28)
> [35770.858892] [<c0767ed4>] (cpuidle_enter) from [<c0153428>]
> (call_cpuidle+0x44/0x48)
> [35770.866526] [<c0153428>] (call_cpuidle) from [<c0153848>]
> (do_idle+0x1e0/0x27c)
> [35770.873815] [<c0153848>] (do_idle) from [<c0153bac>]
> (cpu_startup_entry+0x28/0x2c)
> [35770.881367] [<c0153bac>] (cpu_startup_entry) from [<c08f30dc>]
> (rest_init+0xb8/0xd8)
> [35770.889098] [<c08f30dc>] (rest_init) from [<c0d00f18>]
> (start_kernel+0x3f4/0x498)
> [35770.896555] Code: bad PC value
> 35770.899675] ---[ end trace 198f77e2133e0637 ]---
> [35770.904225] Kernel panic - not syncing: Fatal exception in
> interrupt
> [35770.910564] CPU1: stopping
> [35770.913253] CPU: 1 PID: 93 Comm: systemd-journal Tainted: G      D
>           4.18.33-yocto-standard #1
> [35770.922540] Hardware name: Xilinx Zynq Platform
> [35770.927067] [<c01130a4>] (unwind_backtrace) from [<c010d548>]
> (show_stack+0x20/0x24)
> [35770.934790] [<c010d548>] (show_stack) from [<c08dfbe0>]
> (dump_stack+0x7c/0x98)
> [35770.941990] [<c08dfbe0>] (dump_stack) from [<c010ff94>]
> (handle_IPI+0x254/0x358)
> [35770.949368] [<c010ff94>] (handle_IPI) from [<c01029bc>]
> (gic_handle_irq+0x94/0xa0)
> [35770.956918] [<c01029bc>] (gic_handle_irq) from [<c01024d4>]
> (__irq_usr+0x54/0x80)
> [35770.964375] Exception stack(0xedc77fb0 to 0xedc77ff8)
> [35770.969407] 7fa0:                                     000000e8
> 00000000 00000018 00000000
> [35770.977576] 7fc0: 0003c378 00000000 00038090 be9942dc b6d2e350
> 00000006 b64b7378 be99428c
> [35770.985733] 7fe0: 00000006 be994250 b6e2ae8d b6e1e744 80000030
> ffffffff
> [35770.992329] ---[ end Kernel panic - not syncing: Fatal exception
> in interrupt ]---
> 
> 
> Any ideas?
> 
> Thank you
> Subu
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
