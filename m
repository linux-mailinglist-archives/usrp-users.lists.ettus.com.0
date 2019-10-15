Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AFAD7850
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 16:23:02 +0200 (CEST)
Received: from [::1] (port=49870 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKNj1-0004D2-DT; Tue, 15 Oct 2019 10:22:59 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:41721)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iKNiw-00040h-PQ
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 10:22:54 -0400
Received: by mail-io1-f54.google.com with SMTP id n26so46194141ioj.8
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 07:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yLLrIQ/Ss39gf21Eu4BUV1eTPNj816LD7c71S4rLz48=;
 b=HaLb/SUAD2eeoCq77xcUxdTe9ZCthYjbcBqQq0LD7KwlGyhZy3klo1qmLajtqWQZ3J
 OCW8NbMYPx6VlYfxhYnHAZWfXGAE3wzNV7XUz0wSsoBXWVarwswIEJs5osq05YcX+uJq
 h3pNRcuY+qj6GBLLe6EffH9EojR2OoR0phha3Ci0NTGbSvsWKxoHOIxkAyPneojqf/Ds
 8i0NZJlnpxAEFLrtevbp7hVE8R1SL1sAYlyuEgzGF2uP1DJE3vqSjC/RDpHhK/XSZKFY
 sGvXMTYz1DoaiY/2RofYZ/rhG4dbI57r2FUv6vB3QPSqTXXOmcGkQA2ldWul0YXg4J9C
 OykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yLLrIQ/Ss39gf21Eu4BUV1eTPNj816LD7c71S4rLz48=;
 b=QD+cTA44SL1//nvPkwepCJW8K63YW97Xs6tsUC6R2O8wxizxmCr6kFmCZRbe2URdeg
 PgMeAtCAT8K3FmH5CL2+5Csyl5WMVgwIpfH1EH9Q5XGlwsAp0NLinHtOrdto+eOYVrtX
 OiOaefPTgk8ASgprMTZ39yymZ20t0zMFsmpDr8w4OMNPczH6jdK3DAD6OsNLOo2odGWZ
 D6q2F+0M6g4SRDL5xhQaUvrZemk9xlbUgrQI472aDhMB7u3yIKu0I9+wfppB7JnPSpMm
 R47G3ngvHkj4R3Tv1oYQy/AMPEbet6YOZK3zrvvRZbG164SASX3nJuSvyI3eruu5ak/v
 ADqA==
X-Gm-Message-State: APjAAAXO3CrT5gjZKXHNG7VGPD5VxQbE6vkQzSAQ4gu+5z1M3xMFhWSl
 Js/F46/8owAzlyZFdz4E4R03bMkb5bqdXfy+lX0I1MonszY=
X-Google-Smtp-Source: APXvYqwo/jXHOHuwcGhaEqIsae6UlS+wQ4zj/RpmFr+mIeJ1a8ICZCYr5BqaOB0PXMP5zsNsU7JM/jORfn/IJFcHf3Y=
X-Received: by 2002:a6b:ce03:: with SMTP id p3mr5607897iob.290.1571149333733; 
 Tue, 15 Oct 2019 07:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <97669300-9876-51bd-aa3d-58d230d2d27f@ant.uni-bremen.de>
In-Reply-To: <97669300-9876-51bd-aa3d-58d230d2d27f@ant.uni-bremen.de>
Date: Tue, 15 Oct 2019 07:22:01 -0700
Message-ID: <CAKJyDkL2tjPGB1apeM_afBY1OWwbembGe3v-Zkhs82FSQG=D+Q@mail.gmail.com>
To: Johannes Demel <demel@ant.uni-bremen.de>
Subject: Re: [USRP-users] Getting started with our new N310s
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1834607828921722641=="
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

--===============1834607828921722641==
Content-Type: multipart/alternative; boundary="000000000000ed41de0594f3b50d"

--000000000000ed41de0594f3b50d
Content-Type: text/plain; charset="UTF-8"

Hi Johannes.  Things tend to go badly when the UHD and FPGA bitstream
versions on the N310 SD card don't match those on the host for the N3xx.
 Avoid using master with the N310 out of the box because the
filesystem/FPGA images most likely don't exist.

Burn this SD card image:
http://files.ettus.com/binaries/cache/n3xx/meta-ettus-v3.14.1.1/n3xx_common_sdimg_default-v3.14.1.1.zip
(yes, the location is non-obvious) then build UHD v.3.14.1.1 on the host PC.

Starting with UHD v.3.14, the SFP+ ports are mapped to IP addresses
192.168.10.2 and 192.168.20.2, to be more consistent with the X310.  When
you issue the uhd_usrp_probe command, try adding the --args
"addr=192.168.x0.2" command.
I can't remember for certain if the HG (SFP0 = 1gigE and SFP1=10 gigeE) or
XG image (both 10gigE) is loaded by default.   I think it's HG.   Set the
MTU on the host side to 8000 for the 10gigE port.

The N310 Getting Started guide outlines the mender method of updating the
filesystem, which should also work, but I tend to prefer downloading the SD
card image and burning it myself.  Good luck.

-Robin



On Tue, Oct 15, 2019 at 2:47 AM Johannes Demel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> we just received some new N310s. Yeah!
>
> They don't work! Noooo.
>
> Let me explain what I tried so far and what I found out. So far, I work
> with 2 devices.
>
> Summary:
> With factory default image I can find the device but `uhd_usrp_probe`
> fails.
> With a newly flashed image on the SD card, The SFP ports don't show up
> anymore.
>
>
> How do I recover my device that doesn't show the SFP ports anymore?
>
> What do I need to do to successfully run `uhd_usrp_probe`? Since this
> command errors out with the same error as a flowgraph, I assume if I get
> passed `uhd_usrp_probe` there is a good chance I'll be able to run a
> flowgraph.
>
> What is dtc? It errors out during FPGA image updates.
>
> What is the latest `sdimg` to install? I want to make sure I'm up to
> date. As soon as I figured out why the devices don't work.
>
> I append all the information I could find so far for my devices.
>
> Cheers
> Johannes
>
>
>
> On Host:
> $ uhd_config_info --print-all
> UHD 3.15.0.git-79-gf353db8f
> Build date: Tue, 08 Oct 2019 12:08:10
> C compiler: GNU 7.4.0
> C++ compiler: GNU 7.4.0
> C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD,
> N300, N320, E320, E300, OctoClock
> Install prefix: <install_prefix>/gnuradio38
> Boost version: 1.65.1
> Libusb version: 1.0.23
> Package path: <install_prefix>/gnuradio38
> Images directory: <install_prefix>/gnuradio38/share/uhd/images
> ABI version string: 3.15.0
>
>
> $ uhd_image_loader --args "type=n3xx,addr=X.X.X.212,fpga=HG"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-79-gf353db8f
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>
> mgmt_addr=X.X.X.128,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,skip_init=1
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.PeriphManager] Updating component `dts'
> [ERROR] [MPM.PeriphManager] Error executing `dtc': Command '['dtc',
> '--symbols', '-O', 'dtb', '-q', '-o', '/lib/firmware/n310.dtbo',
> '/lib/firmware/n310.dts']' returned non-zero exit status 1
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: XXXXXXX
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected
> compat for component `FPGA'. Expected: 5.2 Actual: 5.3
> [INFO] [MPM.PeriphManager] init() called with device args `'.
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> Rebooted devices, then:
>
> $ uhd_find_devices
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>      serial: XXXXXX
>      addr: X.X.X.212
>      claimed: False
>      mgmt_addr: X.X.X.128
>      product: n310
>      type: n3xx
>
>
> --------------------------------------------------
> -- UHD Device 1
> --------------------------------------------------
> Device Address:
>      serial: n/a
>      claimed: False
>      mgmt_addr: X.X.X.123
>      product: n/a
>      reachable: No
>      type: n/a
>
>
> On Device 0:
>
> $ uhd_config_info --print-all
> UHD 3.13.0.2-0-unknown
> Build date: Fri, 08 Mar 2019 18:43:32
> C compiler: GNU 7.3.0
> C++ compiler: GNU 7.3.0
> C flags: -DUHD_IMAGES_DIR=OFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
>
>   -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=/usr/src/debug/uhd/3.13.0.2-r0
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native=
>
>    -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
> C++ flags: -DUHD_IMAGES_DIR=OFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
>
>   -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=/usr/src/debug/uhd/3.13.0.2-r0
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native=
>
>   -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
>
> -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> LIBERIO, USB, GPSD, MPMD, N300, E320
> Install prefix: /usr
> Boost version: 1.66
> Libusb version: 1.0.23
> Package path: /usr
> Images directory: /usr/share/uhd/images
> ABI version string: 3.13.0
>
> $ ip a
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>      link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>      inet 127.0.0.1/8 scope host lo
>         valid_lft forever preferred_lft forever
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> qlen 1000
>      link/ether 00:80:2f:26:6c:c1 brd ff:ff:ff:ff:ff:ff
>      inet X.X.X.128/24 brd X.X.X.255 scope global dynamic eth0
>         valid_lft 43114sec preferred_lft 43114sec
> 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> qlen 1000
>      link/ether 00:80:2f:26:6c:c2 brd ff:ff:ff:ff:ff:ff
>      inet X.X.X.212/24 brd X.X.X.255 scope global sfp0
>         valid_lft forever preferred_lft forever
> 4: sfp1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 8000 qdisc pfifo_fast
> qlen 1000
>      link/ether 00:80:2f:26:6c:c3 brd ff:ff:ff:ff:ff:ff
>
> On Host for Device 0:
> $ uhd_usrp_probe --args="addr=X.X.X.212"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-79-gf353db8f
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>
> mgmt_addr=X.X.X.128,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,addr=X.X.X.212
> [WARNING] [MPMD] Could not determine link speed; using 1GibE max speed
> of 1.25e+08
> [INFO] [MPM.PeriphManager] init() called with device args
> `product=n310,mgmt_addr=X.X.X.128'.
> [ERROR] [UHD] Exception caught in safe-call.
>    in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness = (uhd::endianness_t)0]
>    at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>    in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t =
> long unsigned int]
>    at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>
> [ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
> IOError: recv error on socket: Connection refused
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
> That's where I hang now.
> The same error appears in case I try to run a GR flowgraph with that
> device.
>
> For Device 1:
> I followed: https://files.ettus.com/manual/page_usrp_n3xx.html
> $ uhd_images_downloader -t n3xx_common_sdimg_default
> $ sudo dd if=<YOUR_IMAGE> of=/dev/<YOUR_SD_CARD> bs=1M
>
> After quite some time `dd` reported success.
>
> On Host
> $ uhd_find_devices
> --------------------------------------------------
> -- UHD Device 1
> --------------------------------------------------
> Device Address:
>      serial: n/a
>      claimed: False
>      mgmt_addr: X.X.X.123
>      product: n/a
>      reachable: No
>      type: n/a
>
> On Device 1:
> $ uhd_config_info --print-all
> UHD 3.14.0.0-0-g655b9b0f
> Build date: Tue, 19 Feb 2019 00:05:23
> C compiler: GNU 7.3.0
> C++ compiler: GNU 7.3.0
> C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
> -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
>
>   -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=/usr/src/debug/uhd/3.14.0.0-r1
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native=
>
>    -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
> C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
>
>   -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=/usr/src/debug/uhd/3.14.0.0-r1
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native=
>
>   -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
>
> -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> LIBERIO, USB, GPSD, MPMD, N300, N320, E320
> Install prefix: /usr
> Boost version: 1.66
> Libusb version: 1.0.23
> Package path: /usr
> Images directory: /usr/share/uhd/images
> ABI version string: 3.14.0
>
> $ip a
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>      link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>      inet 127.0.0.1/8 scope host lo
>         valid_lft forever preferred_lft forever
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> qlen 1000
>      link/ether 00:80:2f:26:6c:b8 brd ff:ff:ff:ff:ff:ff
>      inet X.X.X.123/24 brd X.X.X.255 scope global dynamic eth0
>         valid_lft 40613sec preferred_lft 40613sec
>
> The SFP ethernet devices don;t show up.
> Also, I wasn't able to load a current FPGA image on the device. Since
> the SFP port does not show up, I tried to use `mgmt_addr=X.X.X.123`.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ed41de0594f3b50d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Johannes.=C2=A0 Things=C2=A0tend to go badly=C2=A0=
when the UHD and FPGA bitstream versions on the N310 SD card don&#39;t matc=
h those on the host for the N3xx.=C2=A0 =C2=A0 =C2=A0Avoid using master wit=
h the N310 out of the box because the filesystem/FPGA images most likely do=
n&#39;t exist.=C2=A0</div><div><br></div><div>Burn this SD card image:=C2=
=A0<a href=3D"http://files.ettus.com/binaries/cache/n3xx/meta-ettus-v3.14.1=
.1/n3xx_common_sdimg_default-v3.14.1.1.zip">http://files.ettus.com/binaries=
/cache/n3xx/meta-ettus-v3.14.1.1/n3xx_common_sdimg_default-v3.14.1.1.zip</a=
></div><div>(yes, the location is non-obvious) then build UHD v.3.14.1.1 on=
 the host PC.</div><div><div><br></div><div>Starting with UHD v.3.14, the S=
FP+ ports are mapped to IP addresses 192.168.10.2 and 192.168.20.2, to be m=
ore consistent with the X310.=C2=A0 When you issue the uhd_usrp_probe comma=
nd, try adding the --args &quot;addr=3D192.168.x0.2&quot; command.</div></d=
iv><div>I can&#39;t remember for certain if the HG (SFP0 =3D 1gigE and SFP1=
=3D10 gigeE) or XG image (both 10gigE) is loaded by default.=C2=A0 =C2=A0I =
think it&#39;s HG.=C2=A0 =C2=A0Set the MTU on the host side to 8000 for the=
 10gigE port.</div><div><br></div><div>The N310 Getting Started guide outli=
nes the mender method of updating=C2=A0the filesystem, which=C2=A0should al=
so work, but I tend to prefer downloading the SD card image and burning it =
myself.=C2=A0 Good luck.</div><div><br></div><div>-Robin</div><div><br></di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Oct 15, 2019 at 2:47 AM Johannes Demel via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi all,<br>
<br>
we just received some new N310s. Yeah!<br>
<br>
They don&#39;t work! Noooo.<br>
<br>
Let me explain what I tried so far and what I found out. So far, I work <br=
>
with 2 devices.<br>
<br>
Summary:<br>
With factory default image I can find the device but `uhd_usrp_probe` fails=
.<br>
With a newly flashed image on the SD card, The SFP ports don&#39;t show up =
<br>
anymore.<br>
<br>
<br>
How do I recover my device that doesn&#39;t show the SFP ports anymore?<br>
<br>
What do I need to do to successfully run `uhd_usrp_probe`? Since this <br>
command errors out with the same error as a flowgraph, I assume if I get <b=
r>
passed `uhd_usrp_probe` there is a good chance I&#39;ll be able to run a <b=
r>
flowgraph.<br>
<br>
What is dtc? It errors out during FPGA image updates.<br>
<br>
What is the latest `sdimg` to install? I want to make sure I&#39;m up to <b=
r>
date. As soon as I figured out why the devices don&#39;t work.<br>
<br>
I append all the information I could find so far for my devices.<br>
<br>
Cheers<br>
Johannes<br>
<br>
<br>
<br>
On Host:<br>
$ uhd_config_info --print-all<br>
UHD 3.15.0.git-79-gf353db8f<br>
Build date: Tue, 08 Oct 2019 12:08:10<br>
C compiler: GNU 7.4.0<br>
C++ compiler: GNU 7.4.0<br>
C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 <br>
-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLO=
R<br>
C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 <br>
-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLO=
R <br>
-fvisibility=3Dhidden -fvisibility-inlines-hidden<br>
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, <br>
Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, <b=
r>
N300, N320, E320, E300, OctoClock<br>
Install prefix: &lt;install_prefix&gt;/gnuradio38<br>
Boost version: 1.65.1<br>
Libusb version: 1.0.23<br>
Package path: &lt;install_prefix&gt;/gnuradio38<br>
Images directory: &lt;install_prefix&gt;/gnuradio38/share/uhd/images<br>
ABI version string: 3.15.0<br>
<br>
<br>
$ uhd_image_loader --args &quot;type=3Dn3xx,addr=3DX.X.X.212,fpga=3DHG&quot=
;<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; <br>
UHD_3.15.0.git-79-gf353db8f<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3DX.X.X.128,type=3Dn3xx,product=3Dn310,serial=3DXXXXXXX,claimed=
=3DFalse,skip_init=3D1<br>
[INFO] [MPMD] Claimed device without full initialization.<br>
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>
[INFO] [MPM.PeriphManager] Updating component `fpga&#39;<br>
[INFO] [MPM.PeriphManager] Updating component `dts&#39;<br>
[ERROR] [MPM.PeriphManager] Error executing `dtc&#39;: Command &#39;[&#39;d=
tc&#39;, <br>
&#39;--symbols&#39;, &#39;-O&#39;, &#39;dtb&#39;, &#39;-q&#39;, &#39;-o&#39=
;, &#39;/lib/firmware/n310.dtbo&#39;, <br>
&#39;/lib/firmware/n310.dts&#39;]&#39; returned non-zero exit status 1<br>
[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
[INFO] [MPM.PeriphManager] Device serial number: XXXXXXX<br>
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
[WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected <br>
compat for component `FPGA&#39;. Expected: 5.2 Actual: 5.3<br>
[INFO] [MPM.PeriphManager] init() called with device args `&#39;.<br>
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>
<br>
Rebooted devices, then:<br>
<br>
$ uhd_find_devices<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 =C2=A0serial: XXXXXX<br>
=C2=A0 =C2=A0 =C2=A0addr: X.X.X.212<br>
=C2=A0 =C2=A0 =C2=A0claimed: False<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.128<br>
=C2=A0 =C2=A0 =C2=A0product: n310<br>
=C2=A0 =C2=A0 =C2=A0type: n3xx<br>
<br>
<br>
--------------------------------------------------<br>
-- UHD Device 1<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 =C2=A0serial: n/a<br>
=C2=A0 =C2=A0 =C2=A0claimed: False<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.123<br>
=C2=A0 =C2=A0 =C2=A0product: n/a<br>
=C2=A0 =C2=A0 =C2=A0reachable: No<br>
=C2=A0 =C2=A0 =C2=A0type: n/a<br>
<br>
<br>
On Device 0:<br>
<br>
$ uhd_config_info --print-all<br>
UHD 3.13.0.2-0-unknown<br>
Build date: Fri, 08 Mar 2019 18:43:32<br>
C compiler: GNU 7.3.0<br>
C++ compiler: GNU 7.3.0<br>
C flags: -DUHD_IMAGES_DIR=3DOFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 <br=
>
-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLO=
R <br>
-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard <br>
-mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.13.0.2-r0/recipe-sysroot <br>
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.13.0.2-r0=3D/usr/src/debug/uhd/3.13.0.2-r0 <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native=3D <br>
=C2=A0 =C2=A0-march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.13.0.2-r0/recipe-sysroot<br>
C++ flags: -DUHD_IMAGES_DIR=3DOFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 <=
br>
-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLO=
R <br>
-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard <br>
-mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.13.0.2-r0/recipe-sysroot <br>
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.13.0.2-r0=3D/usr/src/debug/uhd/3.13.0.2-r0 <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native=3D <br>
=C2=A0 -fvisibility-inlines-hidden=C2=A0 -march=3Darmv7-a -marm -mfpu=3Dneo=
n <br>
-mfloat-abi=3Dhard -mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.13.0.2-r0/recipe-sysroot <br>
-fvisibility=3Dhidden -fvisibility-inlines-hidden<br>
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, <br>
LIBERIO, USB, GPSD, MPMD, N300, E320<br>
Install prefix: /usr<br>
Boost version: 1.66<br>
Libusb version: 1.0.23<br>
Package path: /usr<br>
Images directory: /usr/share/uhd/images<br>
ABI version string: 3.13.0<br>
<br>
$ ip a<br>
1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000<br>
=C2=A0 =C2=A0 =C2=A0link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00<b=
r>
=C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://127.0.0.1/8" rel=3D"noreferrer" =
target=3D"_blank">127.0.0.1/8</a> scope host lo<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever preferred_lft forever<br>
2: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast =
<br>
qlen 1000<br>
=C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:c1 brd ff:ff:ff:ff:ff:ff<br>
=C2=A0 =C2=A0 =C2=A0inet X.X.X.128/24 brd X.X.X.255 scope global dynamic et=
h0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft 43114sec preferred_lft 43114sec<br>
3: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast =
<br>
qlen 1000<br>
=C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:c2 brd ff:ff:ff:ff:ff:ff<br>
=C2=A0 =C2=A0 =C2=A0inet X.X.X.212/24 brd X.X.X.255 scope global sfp0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever preferred_lft forever<br>
4: sfp1: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 8000 qdisc pfifo_fas=
t <br>
qlen 1000<br>
=C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:c3 brd ff:ff:ff:ff:ff:ff<br>
<br>
On Host for Device 0:<br>
$ uhd_usrp_probe --args=3D&quot;addr=3DX.X.X.212&quot;<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; <br>
UHD_3.15.0.git-79-gf353db8f<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3DX.X.X.128,type=3Dn3xx,product=3Dn310,serial=3DXXXXXXX,claimed=
=3DFalse,addr=3DX.X.X.212<br>
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed <br>
of 1.25e+08<br>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`product=3Dn310,mgmt_addr=3DX.X.X.128&#39;.<br>
[ERROR] [UHD] Exception caught in safe-call.<br>
=C2=A0 =C2=A0in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [wit=
h <br>
uhd::endianness_t _endianness =3D (uhd::endianness_t)0]<br>
=C2=A0 =C2=A0at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:=
52<br>
this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block c=
trl <br>
(CE_00_Port_30) no response packet - AssertionError: bool(buff)<br>
=C2=A0 =C2=A0in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(b=
ool, double) <br>
[with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D =
<br>
long unsigned int]<br>
=C2=A0 =C2=A0at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:=
151<br>
<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: <br>
IOError: recv error on socket: Connection refused<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
<br>
That&#39;s where I hang now.<br>
The same error appears in case I try to run a GR flowgraph with that device=
.<br>
<br>
For Device 1:<br>
I followed: <a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html" =
rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/page_us=
rp_n3xx.html</a><br>
$ uhd_images_downloader -t n3xx_common_sdimg_default<br>
$ sudo dd if=3D&lt;YOUR_IMAGE&gt; of=3D/dev/&lt;YOUR_SD_CARD&gt; bs=3D1M<br=
>
<br>
After quite some time `dd` reported success.<br>
<br>
On Host<br>
$ uhd_find_devices<br>
--------------------------------------------------<br>
-- UHD Device 1<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 =C2=A0serial: n/a<br>
=C2=A0 =C2=A0 =C2=A0claimed: False<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.123<br>
=C2=A0 =C2=A0 =C2=A0product: n/a<br>
=C2=A0 =C2=A0 =C2=A0reachable: No<br>
=C2=A0 =C2=A0 =C2=A0type: n/a<br>
<br>
On Device 1:<br>
$ uhd_config_info --print-all<br>
UHD 3.14.0.0-0-g655b9b0f<br>
Build date: Tue, 19 Feb 2019 00:05:23<br>
C compiler: GNU 7.3.0<br>
C++ compiler: GNU 7.3.0<br>
C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D=
2 <br>
-DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO <br>
-march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 <b=
r>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.0.0-r1/recipe-sysroot <br>
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.0.0-r1=3D/usr/src/debug/uhd/3.14.0.0-r1 <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native=3D <br>
=C2=A0 =C2=A0-march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.0.0-r1/recipe-sysroot<br>
C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 <br>
-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLO=
R <br>
-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard <br>
-mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.0.0-r1/recipe-sysroot <br>
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.0.0-r1=3D/usr/src/debug/uhd/3.14.0.0-r1 <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native=3D <br>
=C2=A0 -fvisibility-inlines-hidden=C2=A0 -march=3Darmv7-a -marm -mfpu=3Dneo=
n <br>
-mfloat-abi=3Dhard -mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.0.0-r1/recipe-sysroot <br>
-fvisibility=3Dhidden -fvisibility-inlines-hidden<br>
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, <br>
LIBERIO, USB, GPSD, MPMD, N300, N320, E320<br>
Install prefix: /usr<br>
Boost version: 1.66<br>
Libusb version: 1.0.23<br>
Package path: /usr<br>
Images directory: /usr/share/uhd/images<br>
ABI version string: 3.14.0<br>
<br>
$ip a<br>
1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000<br>
=C2=A0 =C2=A0 =C2=A0link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00<b=
r>
=C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://127.0.0.1/8" rel=3D"noreferrer" =
target=3D"_blank">127.0.0.1/8</a> scope host lo<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever preferred_lft forever<br>
2: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast =
<br>
qlen 1000<br>
=C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:b8 brd ff:ff:ff:ff:ff:ff<br>
=C2=A0 =C2=A0 =C2=A0inet X.X.X.123/24 brd X.X.X.255 scope global dynamic et=
h0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft 40613sec preferred_lft 40613sec<br>
<br>
The SFP ethernet devices don;t show up.<br>
Also, I wasn&#39;t able to load a current FPGA image on the device. Since <=
br>
the SFP port does not show up, I tried to use `mgmt_addr=3DX.X.X.123`.<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ed41de0594f3b50d--


--===============1834607828921722641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1834607828921722641==--

