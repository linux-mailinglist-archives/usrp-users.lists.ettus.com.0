Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5490D7C16
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 18:40:45 +0200 (CEST)
Received: from [::1] (port=39912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKPsK-0007MP-L8; Tue, 15 Oct 2019 12:40:44 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:32992)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1iKPsF-00077e-Ng
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 12:40:39 -0400
Received: by mail-qt1-f182.google.com with SMTP id r5so31554344qtd.0
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 09:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=gfvXzKf3sfoVa14gbXF2VOH9i4QAm5I4j6Zm6SHP/f8=;
 b=bwxfle+Ig7hYtOUQOj38LxiIOt9PhyOQBDqJPrHTm/mLrxAjfpbUj/IY+PI1/CgwCD
 MF3zZ1Figvh+hFauGp6duuAER28AVcZbO0fxdyNN1xeYy43fvCpins2j4UTpYNkWYQYv
 SMaB/lpCR0jAkFcxE1vqVBinTb6H2qBjiLNHZnRJTA7zPbsIOSJEGeyV/mLzx1WYffxH
 OBxrGqXEhcnIC/QsnNrRkMLntQFQHOAHyp7jTVK57IYTBmOxL4GdfS3rYFdO9I7IGuC4
 P9pWt0hvZTtAQnZf2Cum9HYEmUz86gxTeuxewVFaTNPm8YqV7t3rvE9/u1e5Yj22gP8Y
 P/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=gfvXzKf3sfoVa14gbXF2VOH9i4QAm5I4j6Zm6SHP/f8=;
 b=o6yoJxdGAq7IQdIucPvawj4YcSv98B0vtFomU1sVlAXr3fogQzUV1ONcOVl/4/el+u
 Pd876X2xxkao6kvpcqqvC7v6ZNZbbr+ZQtlp0Pyf+ldL/Y2990cIIT22/JjPEdwzFPnU
 khVi5LBNJRfcag/ASIzwGFXp/oQtwntcUozj+URKNpjFA3LlXZrZxEJaKQQj8RsF0OT+
 65nXGmq6Zyv3lkfnRx53GI2kso5ma9tzVb3akZL2GEIhcrhQsPW9gLFn+kCYdbAgmVf6
 tRtLq3mmBvL5ZqeQmB3wJi2knYLCgqcd5Lb4QJFWFVrGle/ePzv1WnuuHTozXzGK4GBT
 XS5Q==
X-Gm-Message-State: APjAAAWc83mUICzbmw9SQywIx7x8CHuyvcHP2qIMNfL0dA8p9Qgc6Tqy
 2INEW9rA7s2p5If9luN+UNp3eUAm6LBH32vqvErLRWlz7cBwn4OQ
X-Google-Smtp-Source: APXvYqzptMAdVduSd+4b2m6HV8jy8QRT5c3uKNwJKEOK6O39gM443a1lT9ap+Vz30zDRSnhm/hZrZPO32L5OEvdfVwc=
X-Received: by 2002:ac8:3473:: with SMTP id v48mr40462049qtb.240.1571157598776; 
 Tue, 15 Oct 2019 09:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <97669300-9876-51bd-aa3d-58d230d2d27f@ant.uni-bremen.de>
 <CAKJyDkL2tjPGB1apeM_afBY1OWwbembGe3v-Zkhs82FSQG=D+Q@mail.gmail.com>
 <aef0f433-9d1e-9082-1cb6-dcc72dca119c@ant.uni-bremen.de>
In-Reply-To: <aef0f433-9d1e-9082-1cb6-dcc72dca119c@ant.uni-bremen.de>
X-Google-Sender-Delegation: nate.temple@ettus.com
Date: Tue, 15 Oct 2019 09:40:04 -0700
X-Google-Sender-Auth: WdZAdZ7fEysl8SIWtcAO0BmB1ok
Message-ID: <CACSOXP33N29df1nsqbTugkPk+jx23eCuo5x6kv=zeSFmSKWFtA@mail.gmail.com>
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
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3509554185315844578=="
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

--===============3509554185315844578==
Content-Type: multipart/alternative; boundary="0000000000008fc81c0594f5a29f"

--0000000000008fc81c0594f5a29f
Content-Type: text/plain; charset="UTF-8"

Hi Johannes,


Verify that your MTU's match on both your host and N3xx. (1Gb should have a
MTU of 1500, 10Gb MTU should be 8000).


Is your .213 interface connected to the SFP port?


Regards,
Nate Temple

On Tue, Oct 15, 2019 at 9:14 AM Johannes Demel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Robin,
>
> thanks for your hint. The SD card image helped. And `bmaptool` seems the
> better tool to flash the SD card. Now, `ip a` shows the sfp ports again.
> Furthermore, `uhd_find_devices` shows all the info I'd expect.
> Also, the 'dtc' error during FPGA image update went away.
> After I updated the FPGA image, I did a `reboot now` on the device. I
> hope this is enough to make sure the device uses the new FPGA image?
>
> I followed the instructions:
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Configurations
> to update my network configuration. Actually, I did that before as well.
>
> Unfortunately, the `uhd_usrp_probe` error persists. How do I proceed
> from here?
>
> $ uhd_usrp_probe --args="addr=X.X.X.213"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g0347a6d8
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>
> mgmt_addr=X.X.X.129,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,addr=X.X.X.213
> [INFO] [MPM.PeriphManager] init() called with device args
>
> `time_source=internal,clock_source=internal,mgmt_addr=X.X.X.129,product=n310'.
> [ERROR] [UHD] Exception caught in safe-call.
>    in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness = (uhd::endianness_t)0]
>    at <installprefix>/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>    in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t =
> long unsigned int]
>    at <installprefix>/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> [ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
> IOError: recv error on socket: Connection refused
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
> Cheers
> Johannes
>
>
>
> I hope the following output helps with the debugging process.
>
> $ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g0347a6d8
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>      serial: XXXXXXX
>      addr: X.X.X.213
>      claimed: False
>      mgmt_addr: X.X.X.129
>      product: n310
>      type: n3xx
>
>
> On my HOST machine:
>
> $ uhd_config_info --print-all
> UHD 3.14.1.HEAD-0-g0347a6d8
> Build date: Tue, 15 Oct 2019 15:16:27
> C compiler: GNU 7.4.0
> C++ compiler: GNU 7.4.0
> C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> Examples, Utils, Tests, USB, B100, B200, E300, USRP1, USRP2, X300, N230,
> MPMD, N300, N320, E320, OctoClock
> Install prefix: <installprefix>
> Boost version: 1.65.1
> Libusb version: 1.0.23
> Package path: <installprefix>
> Images directory: <installprefix>/share/uhd/images
> ABI version string: 3.14.1
>
>
> ON the DEVICE itself:
> I noticed that `uhd_images_downloader' with my previous install got me
> an image where UHD reports: `Build date: Tue, 19 Feb 2019 00:05:23`. Now
> the build date is: `Thu, 26 Sep 2019 01:26:32'.
>
> This is the output on the device:
> $ uhd_config_info --print-all
> UHD 3.14.1.1-0-g0347a6d8
> Build date: Thu, 26 Sep 2019 01:26:32
> C compiler: GNU 7.3.0
> C++ compiler: GNU 7.3.0
> C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
> -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot
>
>   -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=/usr/src/debug/uhd/3.14.1.1-r1
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=
>
>    -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot
> C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
> -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot
>
>   -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=/usr/src/debug/uhd/3.14.1.1-r1
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=
>
> -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=
>
>   -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot
>
> -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> LIBERIO, USB, GPSD, MPMD, N300, N320, E320
> Install prefix: /usr
> Boost version: 1.66
> Libusb version: 1.0.23
> Package path: /usr
> Images directory: /usr/share/uhd/images
> ABI version string: 3.14.1
>
>
>
>
> On 15.10.19 16:22, Robin Coxe wrote:
> > Hi Johannes.  Things tend to go badly when the UHD and FPGA bitstream
> > versions on the N310 SD card don't match those on the host for the
> > N3xx.     Avoid using master with the N310 out of the box because the
> > filesystem/FPGA images most likely don't exist.
> >
> > Burn this SD card image:
> >
> http://files.ettus.com/binaries/cache/n3xx/meta-ettus-v3.14.1.1/n3xx_common_sdimg_default-v3.14.1.1.zip
> > (yes, the location is non-obvious) then build UHD v.3.14.1.1 on the host
> PC.
> >
> > Starting with UHD v.3.14, the SFP+ ports are mapped to IP addresses
> > 192.168.10.2 and 192.168.20.2, to be more consistent with the X310.
> > When you issue the uhd_usrp_probe command, try adding the --args
> > "addr=192.168.x0.2" command.
> > I can't remember for certain if the HG (SFP0 = 1gigE and SFP1=10 gigeE)
> > or XG image (both 10gigE) is loaded by default.   I think it's HG.   Set
> > the MTU on the host side to 8000 for the 10gigE port.
> >
> > The N310 Getting Started guide outlines the mender method of
> > updating the filesystem, which should also work, but I tend to prefer
> > downloading the SD card image and burning it myself.  Good luck.
> >
> > -Robin
> >
> >
> >
> > On Tue, Oct 15, 2019 at 2:47 AM Johannes Demel via USRP-users
> > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
> >
> >     Hi all,
> >
> >     we just received some new N310s. Yeah!
> >
> >     They don't work! Noooo.
> >
> >     Let me explain what I tried so far and what I found out. So far, I
> work
> >     with 2 devices.
> >
> >     Summary:
> >     With factory default image I can find the device but
> >     `uhd_usrp_probe` fails.
> >     With a newly flashed image on the SD card, The SFP ports don't show
> up
> >     anymore.
> >
> >
> >     How do I recover my device that doesn't show the SFP ports anymore?
> >
> >     What do I need to do to successfully run `uhd_usrp_probe`? Since this
> >     command errors out with the same error as a flowgraph, I assume if I
> >     get
> >     passed `uhd_usrp_probe` there is a good chance I'll be able to run a
> >     flowgraph.
> >
> >     What is dtc? It errors out during FPGA image updates.
> >
> >     What is the latest `sdimg` to install? I want to make sure I'm up to
> >     date. As soon as I figured out why the devices don't work.
> >
> >     I append all the information I could find so far for my devices.
> >
> >     Cheers
> >     Johannes
> >
> >
> >
> >     On Host:
> >     $ uhd_config_info --print-all
> >     UHD 3.15.0.git-79-gf353db8f
> >     Build date: Tue, 08 Oct 2019 12:08:10
> >     C compiler: GNU 7.4.0
> >     C++ compiler: GNU 7.4.0
> >     C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> >     -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> -DUHD_LOG_CONSOLE_COLOR
> >     C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> >     -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> >     -DUHD_LOG_CONSOLE_COLOR
> >     -fvisibility=hidden -fvisibility-inlines-hidden
> >     Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> >     Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230,
> >     MPMD,
> >     N300, N320, E320, E300, OctoClock
> >     Install prefix: <install_prefix>/gnuradio38
> >     Boost version: 1.65.1
> >     Libusb version: 1.0.23
> >     Package path: <install_prefix>/gnuradio38
> >     Images directory: <install_prefix>/gnuradio38/share/uhd/images
> >     ABI version string: 3.15.0
> >
> >
> >     $ uhd_image_loader --args "type=n3xx,addr=X.X.X.212,fpga=HG"
> >     [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> >     UHD_3.15.0.git-79-gf353db8f
> >     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
>  mgmt_addr=X.X.X.128,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,skip_init=1
> >     [INFO] [MPMD] Claimed device without full initialization.
> >     [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> >     [INFO] [MPM.PeriphManager] Updating component `fpga'
> >     [INFO] [MPM.PeriphManager] Updating component `dts'
> >     [ERROR] [MPM.PeriphManager] Error executing `dtc': Command '['dtc',
> >     '--symbols', '-O', 'dtb', '-q', '-o', '/lib/firmware/n310.dtbo',
> >     '/lib/firmware/n310.dts']' returned non-zero exit status 1
> >     [INFO] [MPM.RPCServer] Resetting peripheral manager.
> >     [INFO] [MPM.PeriphManager] Device serial number: XXXXXXX
> >     [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> >     [WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected
> >     compat for component `FPGA'. Expected: 5.2 Actual: 5.3
> >     [INFO] [MPM.PeriphManager] init() called with device args `'.
> >     [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> >
> >     Rebooted devices, then:
> >
> >     $ uhd_find_devices
> >     --------------------------------------------------
> >     -- UHD Device 0
> >     --------------------------------------------------
> >     Device Address:
> >           serial: XXXXXX
> >           addr: X.X.X.212
> >           claimed: False
> >           mgmt_addr: X.X.X.128
> >           product: n310
> >           type: n3xx
> >
> >
> >     --------------------------------------------------
> >     -- UHD Device 1
> >     --------------------------------------------------
> >     Device Address:
> >           serial: n/a
> >           claimed: False
> >           mgmt_addr: X.X.X.123
> >           product: n/a
> >           reachable: No
> >           type: n/a
> >
> >
> >     On Device 0:
> >
> >     $ uhd_config_info --print-all
> >     UHD 3.13.0.2-0-unknown
> >     Build date: Fri, 08 Mar 2019 18:43:32
> >     C compiler: GNU 7.3.0
> >     C++ compiler: GNU 7.3.0
> >     C flags: -DUHD_IMAGES_DIR=OFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> >     -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> >     -DUHD_LOG_CONSOLE_COLOR
> >     -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> >     -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
> >
> >        -O2 -pipe -g -feliminate-unused-debug-types
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=/usr/src/debug/uhd/3.13.0.2-r0
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native=
> >
> >         -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
> >     C++ flags: -DUHD_IMAGES_DIR=OFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> >     -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> >     -DUHD_LOG_CONSOLE_COLOR
> >     -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> >     -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
> >
> >        -O2 -pipe -g -feliminate-unused-debug-types
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=/usr/src/debug/uhd/3.13.0.2-r0
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native=
> >
> >        -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon
> >     -mfloat-abi=hard -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
> >
> >     -fvisibility=hidden -fvisibility-inlines-hidden
> >     Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> >     LIBERIO, USB, GPSD, MPMD, N300, E320
> >     Install prefix: /usr
> >     Boost version: 1.66
> >     Libusb version: 1.0.23
> >     Package path: /usr
> >     Images directory: /usr/share/uhd/images
> >     ABI version string: 3.13.0
> >
> >     $ ip a
> >     1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
> >           link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> >           inet 127.0.0.1/8 <http://127.0.0.1/8> scope host lo
> >              valid_lft forever preferred_lft forever
> >     2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> >     qlen 1000
> >           link/ether 00:80:2f:26:6c:c1 brd ff:ff:ff:ff:ff:ff
> >           inet X.X.X.128/24 brd X.X.X.255 scope global dynamic eth0
> >              valid_lft 43114sec preferred_lft 43114sec
> >     3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> >     qlen 1000
> >           link/ether 00:80:2f:26:6c:c2 brd ff:ff:ff:ff:ff:ff
> >           inet X.X.X.212/24 brd X.X.X.255 scope global sfp0
> >              valid_lft forever preferred_lft forever
> >     4: sfp1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 8000 qdisc
> pfifo_fast
> >     qlen 1000
> >           link/ether 00:80:2f:26:6c:c3 brd ff:ff:ff:ff:ff:ff
> >
> >     On Host for Device 0:
> >     $ uhd_usrp_probe --args="addr=X.X.X.212"
> >     [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> >     UHD_3.15.0.git-79-gf353db8f
> >     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
>  mgmt_addr=X.X.X.128,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,addr=X.X.X.212
> >     [WARNING] [MPMD] Could not determine link speed; using 1GibE max
> speed
> >     of 1.25e+08
> >     [INFO] [MPM.PeriphManager] init() called with device args
> >     `product=n310,mgmt_addr=X.X.X.128'.
> >     [ERROR] [UHD] Exception caught in safe-call.
> >         in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> >     uhd::endianness_t _endianness = (uhd::endianness_t)0]
> >         at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> >     this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block
> >     ctrl
> >     (CE_00_Port_30) no response packet - AssertionError: bool(buff)
> >         in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
> >     double)
> >     [with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t
> =
> >     long unsigned int]
> >         at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
> >
> >     [ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
> >     IOError: recv error on socket: Connection refused
> >     Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
> >
> >     That's where I hang now.
> >     The same error appears in case I try to run a GR flowgraph with that
> >     device.
> >
> >     For Device 1:
> >     I followed: https://files.ettus.com/manual/page_usrp_n3xx.html
> >     $ uhd_images_downloader -t n3xx_common_sdimg_default
> >     $ sudo dd if=<YOUR_IMAGE> of=/dev/<YOUR_SD_CARD> bs=1M
> >
> >     After quite some time `dd` reported success.
> >
> >     On Host
> >     $ uhd_find_devices
> >     --------------------------------------------------
> >     -- UHD Device 1
> >     --------------------------------------------------
> >     Device Address:
> >           serial: n/a
> >           claimed: False
> >           mgmt_addr: X.X.X.123
> >           product: n/a
> >           reachable: No
> >           type: n/a
> >
> >     On Device 1:
> >     $ uhd_config_info --print-all
> >     UHD 3.14.0.0-0-g655b9b0f
> >     Build date: Tue, 19 Feb 2019 00:05:23
> >     C compiler: GNU 7.3.0
> >     C++ compiler: GNU 7.3.0
> >     C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> >     -DUHD_LOG_CONSOLE_LEVEL=2
> >     -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
> >     -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
> >
> >        -O2 -pipe -g -feliminate-unused-debug-types
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=/usr/src/debug/uhd/3.14.0.0-r1
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native=
> >
> >         -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
> >     C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> >     -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> >     -DUHD_LOG_CONSOLE_COLOR
> >     -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard
> >     -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
> >
> >        -O2 -pipe -g -feliminate-unused-debug-types
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=/usr/src/debug/uhd/3.14.0.0-r1
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=
> >
> >
>  -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native=
> >
> >        -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon
> >     -mfloat-abi=hard -mcpu=cortex-a9
> >
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
> >
> >     -fvisibility=hidden -fvisibility-inlines-hidden
> >     Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> >     LIBERIO, USB, GPSD, MPMD, N300, N320, E320
> >     Install prefix: /usr
> >     Boost version: 1.66
> >     Libusb version: 1.0.23
> >     Package path: /usr
> >     Images directory: /usr/share/uhd/images
> >     ABI version string: 3.14.0
> >
> >     $ip a
> >     1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
> >           link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> >           inet 127.0.0.1/8 <http://127.0.0.1/8> scope host lo
> >              valid_lft forever preferred_lft forever
> >     2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> >     qlen 1000
> >           link/ether 00:80:2f:26:6c:b8 brd ff:ff:ff:ff:ff:ff
> >           inet X.X.X.123/24 brd X.X.X.255 scope global dynamic eth0
> >              valid_lft 40613sec preferred_lft 40613sec
> >
> >     The SFP ethernet devices don;t show up.
> >     Also, I wasn't able to load a current FPGA image on the device. Since
> >     the SFP port does not show up, I tried to use `mgmt_addr=X.X.X.123`.
> >     _______________________________________________
> >     USRP-users mailing list
> >     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008fc81c0594f5a29f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Johannes,<br><br><br>Verify that your MTU&#39;s match on bot=
h your host and N3xx. (1Gb should have a MTU of 1500, 10Gb MTU should be 80=
00).<br><br><br>Is your .213 interface connected to the SFP port?<br><br><b=
r>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Oct 15, 2019 at 9:14 AM Johannes Dem=
el via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hi Robin,<br>
<br>
thanks for your hint. The SD card image helped. And `bmaptool` seems the <b=
r>
better tool to flash the SD card. Now, `ip a` shows the sfp ports again. <b=
r>
Furthermore, `uhd_find_devices` shows all the info I&#39;d expect.<br>
Also, the &#39;dtc&#39; error during FPGA image update went away.<br>
After I updated the FPGA image, I did a `reboot now` on the device. I <br>
hope this is enough to make sure the device uses the new FPGA image?<br>
<br>
I followed the instructions:<br>
<a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gu=
ide#Updating_the_Network_Configurations" rel=3D"noreferrer" target=3D"_blan=
k">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Upda=
ting_the_Network_Configurations</a><br>
to update my network configuration. Actually, I did that before as well.<br=
>
<br>
Unfortunately, the `uhd_usrp_probe` error persists. How do I proceed <br>
from here?<br>
<br>
$ uhd_usrp_probe --args=3D&quot;addr=3DX.X.X.213&quot;<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; <br>
UHD_3.14.1.HEAD-0-g0347a6d8<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3DX.X.X.129,type=3Dn3xx,product=3Dn310,serial=3DXXXXXXX,claimed=
=3DFalse,addr=3DX.X.X.213<br>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`time_source=3Dinternal,clock_source=3Dinternal,mgmt_addr=3DX.X.X.129,produ=
ct=3Dn310&#39;.<br>
[ERROR] [UHD] Exception caught in safe-call.<br>
=C2=A0 =C2=A0in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [wit=
h <br>
uhd::endianness_t _endianness =3D (uhd::endianness_t)0]<br>
=C2=A0 =C2=A0at &lt;installprefix&gt;/src/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:52<br>
this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block c=
trl <br>
(CE_00_Port_30) no response packet - AssertionError: bool(buff)<br>
=C2=A0 =C2=A0in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(b=
ool, double) <br>
[with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D =
<br>
long unsigned int]<br>
=C2=A0 =C2=A0at &lt;installprefix&gt;/src/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:142<br>
<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: <br>
IOError: recv error on socket: Connection refused<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
<br>
Cheers<br>
Johannes<br>
<br>
<br>
<br>
I hope the following output helps with the debugging process.<br>
<br>
$ uhd_find_devices<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; <br>
UHD_3.14.1.HEAD-0-g0347a6d8<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 =C2=A0serial: XXXXXXX<br>
=C2=A0 =C2=A0 =C2=A0addr: X.X.X.213<br>
=C2=A0 =C2=A0 =C2=A0claimed: False<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.129<br>
=C2=A0 =C2=A0 =C2=A0product: n310<br>
=C2=A0 =C2=A0 =C2=A0type: n3xx<br>
<br>
<br>
On my HOST machine:<br>
<br>
$ uhd_config_info --print-all<br>
UHD 3.14.1.HEAD-0-g0347a6d8<br>
Build date: Tue, 15 Oct 2019 15:16:27<br>
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
Examples, Utils, Tests, USB, B100, B200, E300, USRP1, USRP2, X300, N230, <b=
r>
MPMD, N300, N320, E320, OctoClock<br>
Install prefix: &lt;installprefix&gt;<br>
Boost version: 1.65.1<br>
Libusb version: 1.0.23<br>
Package path: &lt;installprefix&gt;<br>
Images directory: &lt;installprefix&gt;/share/uhd/images<br>
ABI version string: 3.14.1<br>
<br>
<br>
ON the DEVICE itself:<br>
I noticed that `uhd_images_downloader&#39; with my previous install got me =
<br>
an image where UHD reports: `Build date: Tue, 19 Feb 2019 00:05:23`. Now <b=
r>
the build date is: `Thu, 26 Sep 2019 01:26:32&#39;.<br>
<br>
This is the output on the device:<br>
$ uhd_config_info --print-all<br>
UHD 3.14.1.1-0-g0347a6d8<br>
Build date: Thu, 26 Sep 2019 01:26:32<br>
C compiler: GNU 7.3.0<br>
C++ compiler: GNU 7.3.0<br>
C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D=
2 <br>
-DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO <br>
-march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 <b=
r>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.1.1-r1/recipe-sysroot <br>
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.1.1-r1=3D/usr/src/debug/uhd/3.14.1.1-r1 <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=3D <br>
=C2=A0 =C2=A0-march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.1.1-r1/recipe-sysroot<br>
C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 <br>
-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLO=
R <br>
-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard <br>
-mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.1.1-r1/recipe-sysroot <br>
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.1.1-r1=3D/usr/src/debug/uhd/3.14.1.1-r1 <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-=
oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=3D <br>
=C2=A0 -fvisibility-inlines-hidden=C2=A0 -march=3Darmv7-a -marm -mfpu=3Dneo=
n <br>
-mfloat-abi=3Dhard -mcpu=3Dcortex-a9 <br>
--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-=
gnueabi/uhd/3.14.1.1-r1/recipe-sysroot <br>
-fvisibility=3Dhidden -fvisibility-inlines-hidden<br>
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, <br>
LIBERIO, USB, GPSD, MPMD, N300, N320, E320<br>
Install prefix: /usr<br>
Boost version: 1.66<br>
Libusb version: 1.0.23<br>
Package path: /usr<br>
Images directory: /usr/share/uhd/images<br>
ABI version string: 3.14.1<br>
<br>
<br>
<br>
<br>
On 15.10.19 16:22, Robin Coxe wrote:<br>
&gt; Hi Johannes.=C2=A0 Things=C2=A0tend to go badly=C2=A0when the UHD and =
FPGA bitstream <br>
&gt; versions on the N310 SD card don&#39;t match those on the host for the=
 <br>
&gt; N3xx.=C2=A0 =C2=A0 =C2=A0Avoid using master with the N310 out of the b=
ox because the <br>
&gt; filesystem/FPGA images most likely don&#39;t exist.<br>
&gt; <br>
&gt; Burn this SD card image: <br>
&gt; <a href=3D"http://files.ettus.com/binaries/cache/n3xx/meta-ettus-v3.14=
.1.1/n3xx_common_sdimg_default-v3.14.1.1.zip" rel=3D"noreferrer" target=3D"=
_blank">http://files.ettus.com/binaries/cache/n3xx/meta-ettus-v3.14.1.1/n3x=
x_common_sdimg_default-v3.14.1.1.zip</a><br>
&gt; (yes, the location is non-obvious) then build UHD v.3.14.1.1 on the ho=
st PC.<br>
&gt; <br>
&gt; Starting with UHD v.3.14, the SFP+ ports are mapped to IP addresses <b=
r>
&gt; 192.168.10.2 and 192.168.20.2, to be more consistent with the X310.=C2=
=A0 <br>
&gt; When you issue the uhd_usrp_probe command, try adding the --args <br>
&gt; &quot;addr=3D192.168.x0.2&quot; command.<br>
&gt; I can&#39;t remember for certain if the HG (SFP0 =3D 1gigE and SFP1=3D=
10 gigeE) <br>
&gt; or XG image (both 10gigE) is loaded by default.=C2=A0 =C2=A0I think it=
&#39;s HG.=C2=A0 =C2=A0Set <br>
&gt; the MTU on the host side to 8000 for the 10gigE port.<br>
&gt; <br>
&gt; The N310 Getting Started guide outlines the mender method of <br>
&gt; updating=C2=A0the filesystem, which=C2=A0should also work, but I tend =
to prefer <br>
&gt; downloading the SD card image and burning it myself.=C2=A0 Good luck.<=
br>
&gt; <br>
&gt; -Robin<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; On Tue, Oct 15, 2019 at 2:47 AM Johannes Demel via USRP-users <br>
&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi all,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0we just received some new N310s. Yeah!<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0They don&#39;t work! Noooo.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Let me explain what I tried so far and what I found=
 out. So far, I work<br>
&gt;=C2=A0 =C2=A0 =C2=A0with 2 devices.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Summary:<br>
&gt;=C2=A0 =C2=A0 =C2=A0With factory default image I can find the device bu=
t<br>
&gt;=C2=A0 =C2=A0 =C2=A0`uhd_usrp_probe` fails.<br>
&gt;=C2=A0 =C2=A0 =C2=A0With a newly flashed image on the SD card, The SFP =
ports don&#39;t show up<br>
&gt;=C2=A0 =C2=A0 =C2=A0anymore.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0How do I recover my device that doesn&#39;t show th=
e SFP ports anymore?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0What do I need to do to successfully run `uhd_usrp_=
probe`? Since this<br>
&gt;=C2=A0 =C2=A0 =C2=A0command errors out with the same error as a flowgra=
ph, I assume if I<br>
&gt;=C2=A0 =C2=A0 =C2=A0get<br>
&gt;=C2=A0 =C2=A0 =C2=A0passed `uhd_usrp_probe` there is a good chance I&#3=
9;ll be able to run a<br>
&gt;=C2=A0 =C2=A0 =C2=A0flowgraph.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0What is dtc? It errors out during FPGA image update=
s.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0What is the latest `sdimg` to install? I want to ma=
ke sure I&#39;m up to<br>
&gt;=C2=A0 =C2=A0 =C2=A0date. As soon as I figured out why the devices don&=
#39;t work.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I append all the information I could find so far fo=
r my devices.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Cheers<br>
&gt;=C2=A0 =C2=A0 =C2=A0Johannes<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Host:<br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_config_info --print-all<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD 3.15.0.git-79-gf353db8f<br>
&gt;=C2=A0 =C2=A0 =C2=A0Build date: Tue, 08 Oct 2019 12:08:10<br>
&gt;=C2=A0 =C2=A0 =C2=A0C compiler: GNU 7.4.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0C++ compiler: GNU 7.4.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_=
LOG_MIN_LEVEL=3D1<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D=
2 -DUHD_LOG_CONSOLE_COLOR<br>
&gt;=C2=A0 =C2=A0 =C2=A0C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUH=
D_LOG_MIN_LEVEL=3D1<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D=
2<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_COLOR<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fvisibility=3Dhidden -fvisibility-inlines-hidden<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0Enabled components: LibUHD, LibUHD - C API, LibUHD =
- Python API,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Examples, Utils, Tests, USB, B100, B200, USRP1, USR=
P2, X300, N230,<br>
&gt;=C2=A0 =C2=A0 =C2=A0MPMD,<br>
&gt;=C2=A0 =C2=A0 =C2=A0N300, N320, E320, E300, OctoClock<br>
&gt;=C2=A0 =C2=A0 =C2=A0Install prefix: &lt;install_prefix&gt;/gnuradio38<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0Boost version: 1.65.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0Libusb version: 1.0.23<br>
&gt;=C2=A0 =C2=A0 =C2=A0Package path: &lt;install_prefix&gt;/gnuradio38<br>
&gt;=C2=A0 =C2=A0 =C2=A0Images directory: &lt;install_prefix&gt;/gnuradio38=
/share/uhd/images<br>
&gt;=C2=A0 =C2=A0 =C2=A0ABI version string: 3.15.0<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_image_loader --args &quot;type=3Dn3xx,addr=3D=
X.X.X.212,fpga=3DHG&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_10=
6501;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.git-79-gf353db8f<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr=3DX.X.X.128,type=3Dn3xx,product=3Dn310,se=
rial=3DXXXXXXX,claimed=3DFalse,skip_init=3D1<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPMD] Claimed device without full initializ=
ation.<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPMD IMAGE LOADER] Starting update. This ma=
y take a while.<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.PeriphManager] Updating component `fpga=
&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.PeriphManager] Updating component `dts&=
#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ERROR] [MPM.PeriphManager] Error executing `dtc&#3=
9;: Command &#39;[&#39;dtc&#39;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;--symbols&#39;, &#39;-O&#39;, &#39;dtb&#39;, &=
#39;-q&#39;, &#39;-o&#39;, &#39;/lib/firmware/n310.dtbo&#39;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;/lib/firmware/n310.dts&#39;]&#39; returned non=
-zero exit status 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.RPCServer] Resetting peripheral manager=
.<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.PeriphManager] Device serial number: XX=
XXXXX<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.PeriphManager] Initialized 2 daughterbo=
ard(s).<br>
&gt;=C2=A0 =C2=A0 =C2=A0[WARNING] [MPM.PeriphManager] Actual minor compat a=
head of expected<br>
&gt;=C2=A0 =C2=A0 =C2=A0compat for component `FPGA&#39;. Expected: 5.2 Actu=
al: 5.3<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.PeriphManager] init() called with devic=
e args `&#39;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPMD IMAGE LOADER] Update component functio=
n succeeded.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Rebooted devices, then:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_find_devices<br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-- UHD Device 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0serial: XXXXXX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0addr: X.X.X.212<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0claimed: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.128<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0product: n310<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0type: n3xx<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-- UHD Device 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0serial: n/a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0claimed: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.123<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0product: n/a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reachable: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0type: n/a<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Device 0:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_config_info --print-all<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD 3.13.0.2-0-unknown<br>
&gt;=C2=A0 =C2=A0 =C2=A0Build date: Fri, 08 Mar 2019 18:43:32<br>
&gt;=C2=A0 =C2=A0 =C2=A0C compiler: GNU 7.3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0C++ compiler: GNU 7.3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0C flags: -DUHD_IMAGES_DIR=3DOFF -DHAVE_CONFIG_H -DU=
HD_LOG_MIN_LEVEL=3D1<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D=
2<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_COLOR<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon =
-mfloat-abi=3Dhard<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -O2 -pipe -g -feliminate-unused-debug-types=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=3D/usr/src/debug/u=
hd/3.13.0.2-r0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=3D<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-nat=
ive=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-march=3Darmv7-a -marm -mfpu=3Dneon -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot<br>
&gt;=C2=A0 =C2=A0 =C2=A0C++ flags: -DUHD_IMAGES_DIR=3DOFF -DHAVE_CONFIG_H -=
DUHD_LOG_MIN_LEVEL=3D1<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D=
2<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_COLOR<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon =
-mfloat-abi=3Dhard<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -O2 -pipe -g -feliminate-unused-debug-types=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=3D/usr/src/debug/u=
hd/3.13.0.2-r0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot=3D<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-nat=
ive=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -fvisibility-inlines-hidden=C2=A0 -march=3D=
armv7-a -marm -mfpu=3Dneon<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fvisibility=3Dhidden -fvisibility-inlines-hidden<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0Enabled components: LibUHD, LibUHD - C API, Example=
s, Utils, Tests,<br>
&gt;=C2=A0 =C2=A0 =C2=A0LIBERIO, USB, GPSD, MPMD, N300, E320<br>
&gt;=C2=A0 =C2=A0 =C2=A0Install prefix: /usr<br>
&gt;=C2=A0 =C2=A0 =C2=A0Boost version: 1.66<br>
&gt;=C2=A0 =C2=A0 =C2=A0Libusb version: 1.0.23<br>
&gt;=C2=A0 =C2=A0 =C2=A0Package path: /usr<br>
&gt;=C2=A0 =C2=A0 =C2=A0Images directory: /usr/share/uhd/images<br>
&gt;=C2=A0 =C2=A0 =C2=A0ABI version string: 3.13.0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0$ ip a<br>
&gt;=C2=A0 =C2=A0 =C2=A01: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc=
 noqueue qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0link/loopback 00:00:00:00:00:0=
0 brd 00:00:00:00:00:00<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://127.0.0=
.1/8" rel=3D"noreferrer" target=3D"_blank">127.0.0.1/8</a> &lt;<a href=3D"h=
ttp://127.0.0.1/8" rel=3D"noreferrer" target=3D"_blank">http://127.0.0.1/8<=
/a>&gt; scope host lo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever pref=
erred_lft forever<br>
&gt;=C2=A0 =C2=A0 =C2=A02: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mt=
u 1500 qdisc pfifo_fast<br>
&gt;=C2=A0 =C2=A0 =C2=A0qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:c1 b=
rd ff:ff:ff:ff:ff:ff<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet X.X.X.128/24 brd X.X.X.25=
5 scope global dynamic eth0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft 43114sec pre=
ferred_lft 43114sec<br>
&gt;=C2=A0 =C2=A0 =C2=A03: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mt=
u 1500 qdisc pfifo_fast<br>
&gt;=C2=A0 =C2=A0 =C2=A0qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:c2 b=
rd ff:ff:ff:ff:ff:ff<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet X.X.X.212/24 brd X.X.X.25=
5 scope global sfp0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever pref=
erred_lft forever<br>
&gt;=C2=A0 =C2=A0 =C2=A04: sfp1: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; =
mtu 8000 qdisc pfifo_fast<br>
&gt;=C2=A0 =C2=A0 =C2=A0qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:c3 b=
rd ff:ff:ff:ff:ff:ff<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Host for Device 0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_usrp_probe --args=3D&quot;addr=3DX.X.X.212&qu=
ot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_10=
6501;<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD_3.15.0.git-79-gf353db8f<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr=3DX.X.X.128,type=3Dn3xx,product=3Dn310,se=
rial=3DXXXXXXX,claimed=3DFalse,addr=3DX.X.X.212<br>
&gt;=C2=A0 =C2=A0 =C2=A0[WARNING] [MPMD] Could not determine link speed; us=
ing 1GibE max speed<br>
&gt;=C2=A0 =C2=A0 =C2=A0of 1.25e+08<br>
&gt;=C2=A0 =C2=A0 =C2=A0[INFO] [MPM.PeriphManager] init() called with devic=
e args<br>
&gt;=C2=A0 =C2=A0 =C2=A0`product=3Dn310,mgmt_addr=3DX.X.X.128&#39;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ERROR] [UHD] Exception caught in safe-call.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0in ctrl_iface_impl&lt;_endianness&gt;=
::~ctrl_iface_impl() [with<br>
&gt;=C2=A0 =C2=A0 =C2=A0uhd::endianness_t _endianness =3D (uhd::endianness_=
t)0]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0at /home/ant/gnuradio38/src/uhd/host/=
lib/rfnoc/ctrl_iface.cpp:52<br>
&gt;=C2=A0 =C2=A0 =C2=A0this-&gt;send_cmd_pkt(0, 0, true); -&gt; Environmen=
tError: IOError: Block<br>
&gt;=C2=A0 =C2=A0 =C2=A0ctrl<br>
&gt;=C2=A0 =C2=A0 =C2=A0(CE_00_Port_30) no response packet - AssertionError=
: bool(buff)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0in uint64_t ctrl_iface_impl&lt;_endia=
nness&gt;::wait_for_ack(bool,<br>
&gt;=C2=A0 =C2=A0 =C2=A0double)<br>
&gt;=C2=A0 =C2=A0 =C2=A0[with uhd::endianness_t _endianness =3D (uhd::endia=
nness_t)0; uint64_t =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0long unsigned int]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0at /home/ant/gnuradio38/src/uhd/host/=
lib/rfnoc/ctrl_iface.cpp:151<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0[ERROR] [MPMD] Failure during block enumeration: En=
vironmentError:<br>
&gt;=C2=A0 =C2=A0 =C2=A0IOError: recv error on socket: Connection refused<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0Error: RuntimeError: Failed to run enumerate_rfnoc_=
blocks()<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0That&#39;s where I hang now.<br>
&gt;=C2=A0 =C2=A0 =C2=A0The same error appears in case I try to run a GR fl=
owgraph with that<br>
&gt;=C2=A0 =C2=A0 =C2=A0device.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0For Device 1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0I followed: <a href=3D"https://files.ettus.com/manu=
al/page_usrp_n3xx.html" rel=3D"noreferrer" target=3D"_blank">https://files.=
ettus.com/manual/page_usrp_n3xx.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_images_downloader -t n3xx_common_sdimg_defaul=
t<br>
&gt;=C2=A0 =C2=A0 =C2=A0$ sudo dd if=3D&lt;YOUR_IMAGE&gt; of=3D/dev/&lt;YOU=
R_SD_CARD&gt; bs=3D1M<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0After quite some time `dd` reported success.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Host<br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_find_devices<br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-- UHD Device 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0serial: n/a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0claimed: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mgmt_addr: X.X.X.123<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0product: n/a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reachable: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0type: n/a<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Device 1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0$ uhd_config_info --print-all<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD 3.14.0.0-0-g655b9b0f<br>
&gt;=C2=A0 =C2=A0 =C2=A0Build date: Tue, 19 Feb 2019 00:05:23<br>
&gt;=C2=A0 =C2=A0 =C2=A0C compiler: GNU 7.3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0C++ compiler: GNU 7.3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_LEVEL=3D2<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -D=
HAVE_LIBERIO<br>
&gt;=C2=A0 =C2=A0 =C2=A0-march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dh=
ard -mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -O2 -pipe -g -feliminate-unused-debug-types=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=3D/usr/src/debug/u=
hd/3.14.0.0-r1<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=3D<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-nat=
ive=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-march=3Darmv7-a -marm -mfpu=3Dneon -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot<br>
&gt;=C2=A0 =C2=A0 =C2=A0C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D=
2<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DUHD_LOG_CONSOLE_COLOR<br>
&gt;=C2=A0 =C2=A0 =C2=A0-DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3Dneon =
-mfloat-abi=3Dhard<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -O2 -pipe -g -feliminate-unused-debug-types=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=3D/usr/src/debug/u=
hd/3.14.0.0-r1<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot=3D<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-gli=
bc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-nat=
ive=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -fvisibility-inlines-hidden=C2=A0 -march=3D=
armv7-a -marm -mfpu=3Dneon<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a9<br>
&gt;=C2=A0 =C2=A0 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-fvisibility=3Dhidden -fvisibility-inlines-hidden<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0Enabled components: LibUHD, LibUHD - C API, Example=
s, Utils, Tests,<br>
&gt;=C2=A0 =C2=A0 =C2=A0LIBERIO, USB, GPSD, MPMD, N300, N320, E320<br>
&gt;=C2=A0 =C2=A0 =C2=A0Install prefix: /usr<br>
&gt;=C2=A0 =C2=A0 =C2=A0Boost version: 1.66<br>
&gt;=C2=A0 =C2=A0 =C2=A0Libusb version: 1.0.23<br>
&gt;=C2=A0 =C2=A0 =C2=A0Package path: /usr<br>
&gt;=C2=A0 =C2=A0 =C2=A0Images directory: /usr/share/uhd/images<br>
&gt;=C2=A0 =C2=A0 =C2=A0ABI version string: 3.14.0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0$ip a<br>
&gt;=C2=A0 =C2=A0 =C2=A01: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc=
 noqueue qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0link/loopback 00:00:00:00:00:0=
0 brd 00:00:00:00:00:00<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://127.0.0=
.1/8" rel=3D"noreferrer" target=3D"_blank">127.0.0.1/8</a> &lt;<a href=3D"h=
ttp://127.0.0.1/8" rel=3D"noreferrer" target=3D"_blank">http://127.0.0.1/8<=
/a>&gt; scope host lo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever pref=
erred_lft forever<br>
&gt;=C2=A0 =C2=A0 =C2=A02: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mt=
u 1500 qdisc pfifo_fast<br>
&gt;=C2=A0 =C2=A0 =C2=A0qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:26:6c:b8 b=
rd ff:ff:ff:ff:ff:ff<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet X.X.X.123/24 brd X.X.X.25=
5 scope global dynamic eth0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft 40613sec pre=
ferred_lft 40613sec<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0The SFP ethernet devices don;t show up.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Also, I wasn&#39;t able to load a current FPGA imag=
e on the device. Since<br>
&gt;=C2=A0 =C2=A0 =C2=A0the SFP port does not show up, I tried to use `mgmt=
_addr=3DX.X.X.123`.<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@lists.ettus.com" targe=
t=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:US=
RP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mailman/listinfo/=
usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008fc81c0594f5a29f--


--===============3509554185315844578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3509554185315844578==--

