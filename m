Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F36D5A5F8
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 22:37:00 +0200 (CEST)
Received: from [::1] (port=47642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgxcB-0002k0-6E; Fri, 28 Jun 2019 16:36:59 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:32850)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hgxc6-0002bv-OZ
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 16:36:54 -0400
Received: by mail-io1-f47.google.com with SMTP id u13so15300472iop.0
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 13:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dWBmcQNlnZoA07WpQy56Vy2NjmsvdSSuJPdIBasD+9k=;
 b=wUeVJBq2NKQ2mTEu8V9YnNO2n4bzN19ap6vcMsIhBABp3heJed4hCxoLCcRI1pQpkV
 FE6GjWf/FU4wflrc7AQ8A1bJ4CJQ5XRPU0kgPH4uO/aCqk1z4ZBrSmZuik6xH0kignS7
 8T/n8OmseGKbYP7OdgyKhbZmygWn2iKIRk/PGpBnHP4dibivvmC4bNM9IO/JkQzig6o0
 KSo4lwXjJ9RpAqvoEcdl7yjDvmcsxI69S9VdNPiZX0kG0wjzVsCM7OoysyMSuRkVZ2Yq
 DM9pHyP92G3pALqwYbVQWEP3wUw7rSizUl4nU2eLXrXZTcuviEzlFtBOmpEzFDNTGkEl
 5oGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dWBmcQNlnZoA07WpQy56Vy2NjmsvdSSuJPdIBasD+9k=;
 b=JZjOLQ6Sbp/RIYMl6QEYwqBzoeny82pZTvQ9zEBsBu7rKfw3tKnfhCYrEvSj+Eww4K
 GMWOKXXa43/BEzB0T9R8Tsp/wW1/W0V/ut6ZkBnN4fBNGVeTUAb4PpQrlAfIndrME7SO
 XyM6ozLMaFx2JKoGl5GlEjo/Vsiel2UVOYHfCAt+Msf2yTaDwDkbwGn6+oPUz5J0qorJ
 y0ujkQx7zyNrD2jlPfgPDDowsOeYiC6q6LcIB1BxJiPOzxJdueJcIehd0g/eNzKMaBFj
 zZ/vN67cV38uy2sNK9Y8zV0LcUiGro7P95ZdH4laBOccnCZeYEn9qofvCyRyWZ63sg2i
 dVHg==
X-Gm-Message-State: APjAAAUHDtySLeJSY6T3TTNXTLIlxAuywJqeWIiBFg3YeGl987w0muuq
 beSOIL98x7BZEK/EZanU/uV5pZY1KYtMtg0DoAzUdeprqPo=
X-Google-Smtp-Source: APXvYqy6a+xGE4uPZpnbnCeYieROtBZVeo3ff5FBmwqCiiH66BrcSWdc7hoVLbbXeX8PEcgkB3VDPGK7gdKcRRYwfag=
X-Received: by 2002:a5d:9448:: with SMTP id x8mr13927964ior.102.1561754173887; 
 Fri, 28 Jun 2019 13:36:13 -0700 (PDT)
MIME-Version: 1.0
References: <149ce38836fec873c616f0818ed2d0e70616c0be.camel@sbcglobal.net>
 <5D16761D.4060201@gmail.com>
In-Reply-To: <5D16761D.4060201@gmail.com>
Date: Fri, 28 Jun 2019 13:36:03 -0700
Message-ID: <CAKJyDkJQJLoBMKFd9yRqHVEjp=aSRUyXH2La_AiiebqmMdF2tw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] E310 v3.15.0.0 pre-release
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1013018544766848031=="
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

--===============1013018544766848031==
Content-Type: multipart/alternative; boundary="000000000000c2f62e058c683a25"

--000000000000c2f62e058c683a25
Content-Type: text/plain; charset="UTF-8"

Maybe the contents of this file will point you in the right direction?
https://github.com/EttusResearch/meta-ettus/blob/master/meta-e31x/recipes-support/uhd/uhd-fpga-images_git.bbappend

On Fri, Jun 28, 2019 at 1:19 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/28/2019 04:06 PM, d.des via USRP-users wrote:
> > Marcus Leach wrote:
> >> See this thread here:
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-March/046784.html
> >
> >
> > I understand how it's supposed to work, and it's always worked that way
> > before including in the outdated
> > http://files.ettus.com/e3xx_images/e3xx-release-4/ setup. With this new
> > image and toolchain (from
> >
> http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
> > ), though, I can't seen to find out where uhd is getting the image it's
> > loading let alone change it. No matter what files are in standard
> > images path or $UHD_IMAGES_DIR or what I tell args="fpga="...
> > uhd_usrp_probe gives the exact same output that indicates 1 DDC and one
> > DUC.
> >
> > logging doesn't seem to be working (maybe related to the first error)
> > so I've been attempting to use print statements (see "ddd" comments) to
> > trace the long and winding path that "args" takes as it makes its way
> > to MPM and eventually the function loads the fpga. I haven't found it
> > yet. I've gone so far as to delete all the existing fpga images I can
> > find but still uhd finds this one. That's what made me think that it
> > had been somehow baked into the uhd executable.
> What happens if you specify an fpga image that doesn't actually exist?
> Does it error out?
>
>
> >
> > Here are a few outputs, first for uhd_usrp_probe and then for
> > uhd_config_info:
> >
> > root@ni-e31x-*******:~/newinstall# uhd_usrp_probe
> > Error opening log file: basic_ios::clear: iostream error
> > [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> > UHD_3.15.0.HEAD-0-g6563c537
> > ddd in rpc.hpp mb_args=
> > [ERROR] [UHD] Device discovery error: AssertionError:
> > libusb_init(&_context) == 0
> >    in libusb_session_impl::libusb_session_impl()
> >    at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36
> >
> > [ERROR] [UHD] Device discovery error: AssertionError:
> > libusb_init(&_context) == 0
> >    in libusb_session_impl::libusb_session_impl()
> >    at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36
> >
> > [ERROR] [UHD] Device discovery error: AssertionError:
> > libusb_init(&_context) == 0
> >    in libusb_session_impl::libusb_session_impl()
> >    at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36
> >
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> > mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
> > alse
> >
> > [ddd
> > mb_args=mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,c
> > laimed=False
> > INFO] [MPMD dddddd in mpmd_mboard_impl.cpp mb_args=49601  size=4
> > ] ddd in rpc.hpp mb_args=
> > MPMD Claiming mboard 0
> > [INFO] [MPMD ddd] Device args:
> > `mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=
> > False'. RPC address: 127.0.0.1
> > ddd in mpmd_mboard_impl.cpp mb_args=49601  size=4
> > ddd in rpc.hpp mb_args=
> > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> > [INFO] [MPMD ddd] just called setup_mb
> >
> > [INFO] [MPMD ddd] just called init_property_tree
> >
> > [INFO] [MPMD] Mboard 0 reports 1 crossbar(s).
> >
> >
> > [INFO] [MPMD ddd] Enumerating RFNoC blocks for xbar 0. Total blocks: 3
> > Base port: 1 Local address: 2
> > [INFO] [0/Radio_0] Initializing block control (NOC ID:
> > 0x12AD100000003310)
> > [INFO] [MPM.PeriphManager] init() called with device args
> > `mgmt_addr=127.0.0.1,product=e310_sg1'.
> > [INFO] [0/DDC_0] Initializing block control (NOC ID:
> > 0xDDC0000000000000)
> > [INFO] [0/DUC_0] Initializing block control (NOC ID:
> > 0xD0C0000000000002)
> > [INFO] [MPMD ddd] just called setup_rfnoc_blocks
> >
> > [INFO] [0/Radio_0] RX freq = 2.4e+09
> > [INFO] [0/Radio_0] RX band = 6
> > [INFO] [0/Radio_0] RX SW1 = 5
> > [INFO] [0/Radio_0] RX SWC = 0
> > [INFO] [0/Radio_0] RX SWB = 1
> > [INFO] [0/Radio_0] RX VCRX_SW = 1
> > [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> > [INFO] [0/Radio_0] RX freq = 2.4e+09
> > [INFO] [0/Radio_0] RX band = 6
> > [INFO] [0/Radio_0] RX SW1 = 5
> > [INFO] [0/Radio_0] RX SWC = 0
> > [INFO] [0/Radio_0] RX SWB = 1
> > [INFO] [0/Radio_0] RX VCRX_SW = 1
> > [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> > [INFO] [0/Radio_0] RX freq = 2.4e+09
> > [INFO] [0/Radio_0] RX band = 6
> > [INFO] [0/Radio_0] RX SW1 = 5
> > [INFO] [0/Radio_0] RX SWC = 0
> > [INFO] [0/Radio_0] RX SWB = 1
> > [INFO] [0/Radio_0] RX VCRX_SW = 1
> > [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> > [INFO] [0/Radio_0] RX freq = 2.4e+09
> > [INFO] [0/Radio_0] RX band = 6
> > [INFO] [0/Radio_0] RX SW1 = 5
> > [INFO] [0/Radio_0] RX SWC = 0
> > [INFO] [0/Radio_0] RX SWB = 1
> > [INFO] [0/Radio_0] RX VCRX_SW = 1
> > [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> > [INFO] [0/Radio_0] RX freq = 2.4e+09
> > [INFO] [0/Radio_0] RX band = 6
> > [INFO] [0/Radio_0] RX SW1 = 5
> > [INFO] [0/Radio_0] RX SWC = 0
> > [INFO] [0/Radio_0] RX SWB = 1
> > [INFO] [0/Radio_0] RX VCRX_SW = 1
> > [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> > [INFO] [0/Radio_0] RX freq = 2.4e+09
> > [INFO] [0/Radio_0] RX band = 6
> > [INFO] [0/Radio_0] RX SW1 = 5
> > [INFO] [0/Radio_0] RX SWC = 0
> > [INFO] [0/Radio_0] RX SWB = 1
> > [INFO] [0/Radio_0] RX VCRX_SW = 1
> > [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> > [INFO] [0/Radio_0] Performing CODEC loopback test...
> > [INFO] [0/Radio_0] CODEC loopback test passed
> > [INFO] [0/Radio_0] Performing CODEC loopback test...
> > [INFO] [0/Radio_0] CODEC loopback test passed
> > [INFO] [MPMD ddd] just called setup_rpc_blocks
> >
> > [INFO] [MPMD ddd] done
> >
> >    _____________________________________________________
> >   /
> > |       Device: E300-Series Device
> > |     _____________________________________________________
> > |    /
> > |   |       Mboard: ni-e31x-309C7C2F
> > |   |   mpm_version: 3.15.0.git-g6563c537
> > |   |   pid: 30674
> > |   |   product: e310_sg1
> > |   |   rev: 4
> > |   |   rpc_connection: local
> > |   |   serial: 309C7C2
> > |   |   type: e3xx
> > |   |   MPM Version: 1.2
> > |   |   FPGA Version: 1.0
> > |   |   FPGA git hash: f52a643.clean
> > |   |   RFNoC capable: Yes
> > |   |
> > |   |   Time sources:  internal, external, gpsdo
> > |   |   Clock sources: internal
> > |   |   Sensors: temp_mb, temp_fpga, ref_locked
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       RX Dboard: A
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       RX Frontend: 0
> > |   |   |   |   Name: E3xx
> > |   |   |   |   Antennas: RX2, TX/RX
> > |   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
> > |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> > |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> > |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> > |   |   |   |   Connection Type: IQ
> > |   |   |   |   Uses LO offset: No
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       RX Frontend: 1
> > |   |   |   |   Name: E3xx
> > |   |   |   |   Antennas: RX2, TX/RX
> > |   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
> > |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> > |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> > |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> > |   |   |   |   Connection Type: IQ
> > |   |   |   |   Uses LO offset: No
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       RX Codec: A
> > |   |   |   |   Name: AD9361 Dual ADC
> > |   |   |   |   Gain Elements: None
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       TX Dboard: A
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       TX Frontend: 0
> > |   |   |   |   Name: E3xx
> > |   |   |   |   Antennas: TX/RX
> > |   |   |   |   Sensors: lo_locked, ad9361_temperature
> > |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> > |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> > |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> > |   |   |   |   Connection Type: IQ
> > |   |   |   |   Uses LO offset: No
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       TX Frontend: 1
> > |   |   |   |   Name: E3xx
> > |   |   |   |   Antennas: TX/RX
> > |   |   |   |   Sensors: lo_locked, ad9361_temperature
> > |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> > |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> > |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> > |   |   |   |   Connection Type: IQ
> > |   |   |   |   Uses LO offset: No
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       TX Codec: A
> > |   |   |   |   Name: AD9361 Dual DAC
> > |   |   |   |   Gain Elements: None
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       RFNoC blocks on this device:
> > |   |   |
> > |   |   |   * Radio_0
> > |   |   |   * DDC_0
> > |   |   |   * DUC_0
> >
> >
> > first, using my und cross-compiled build:
> >
> > root@ni-e31x-*******:~/newinstall# uhd_config_info --print-all
> > UHD 3.15.0.HEAD-0-g6563c537
> > Build date: Thu, 27 Jun 2019 13:41:23
> > C compiler: GNU 7.3.0
> > C++ compiler: GNU 7.3.0
> > C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> > -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> > -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused-
> > debug-types
> > C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> > -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> > -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused-
> > debug-types  -fvisibility=hidden -fvisibility-inlines-hidden
> > Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> > Examples, Utils, Tests, LIBERIO, USB, B100, B200, USRP1, USRP2, X300,
> > N230, MPMD, N300, N320, E320, E300, OctoClock
> > Install prefix: /usr/local
> > Boost version: 1.66
> > Libusb version: 1.0.23
> > Package path: /usr/local
> > Images directory: /home/root/newinstall/usr/local/share/uhd/images
> > ABI version string: 3.15.0
> >
> > then, using the version of uhd on the image from a fresh boot:
> > root@ni-e31x-********:~# uhd_config_info --print-all
> > UHD 3.15.0.git-0-g6563c537
> > Build date: Fri, 24 May 2019 20:20:44
> > C compiler: GNU 7.3.0
> > C++ compiler: GNU 7.3.0
> > C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> > -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> > -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon
> > -mfloat-abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
> > glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> > e310_prerelease/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-
> > types -fdebug-prefix-map=/home/oe-builder/build/tmp-
> > glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> > e310_prerelease=/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-
> > prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> > linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot= -fdebug-
> > prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> > linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=   -
> > march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> > --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> > linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot
> > C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> > -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> > -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon
> > -mfloat-abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
> > glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> > e310_prerelease/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-
> > types -fdebug-prefix-map=/home/oe-builder/build/tmp-
> > glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> > e310_prerelease=/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-
> > prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> > linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot= -fdebug-
> > prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> > linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=  -
> > fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon -mfloat-
> > abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
> > glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> > e310_prerelease/recipe-sysroot -fvisibility=hidden -fvisibility-
> > inlines-hidden
> > Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> > LIBERIO, USB, GPSD, MPMD, N300, N320, E320, E300, OctoClock
> > Install prefix: /usr
> > Boost version: 1.66
> > Libusb version: 1.0.23
> > Package path: /usr
> > Images directory:
> > ABI version string: 3.15.0
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c2f62e058c683a25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Maybe the contents of this file will point you in the=
 right direction?</div><a href=3D"https://github.com/EttusResearch/meta-ett=
us/blob/master/meta-e31x/recipes-support/uhd/uhd-fpga-images_git.bbappend">=
https://github.com/EttusResearch/meta-ettus/blob/master/meta-e31x/recipes-s=
upport/uhd/uhd-fpga-images_git.bbappend</a><br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 28, 2019 at 1:19=
 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">On 06/28/2019 04:06 PM, d.des via USRP-=
users wrote:<br>
&gt; Marcus Leach wrote:<br>
&gt;&gt; See this thread here:<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2016-March/046784.html" rel=3D"noreferrer" target=3D"_blank">http://lists.=
ettus.com/pipermail/usrp-users_lists.ettus.com/2016-March/046784.html</a><b=
r>
&gt;<br>
&gt;<br>
&gt; I understand how it&#39;s supposed to work, and it&#39;s always worked=
 that way<br>
&gt; before including in the outdated<br>
&gt; <a href=3D"http://files.ettus.com/e3xx_images/e3xx-release-4/" rel=3D"=
noreferrer" target=3D"_blank">http://files.ettus.com/e3xx_images/e3xx-relea=
se-4/</a> setup. With this new<br>
&gt; image and toolchain (from<br>
&gt; <a href=3D"http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15=
.0.0-e310_prerelease/" rel=3D"noreferrer" target=3D"_blank">http://files.et=
tus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/</a><br>
&gt; ), though, I can&#39;t seen to find out where uhd is getting the image=
 it&#39;s<br>
&gt; loading let alone change it. No matter what files are in standard<br>
&gt; images path or $UHD_IMAGES_DIR or what I tell args=3D&quot;fpga=3D&quo=
t;...<br>
&gt; uhd_usrp_probe gives the exact same output that indicates 1 DDC and on=
e<br>
&gt; DUC.<br>
&gt;<br>
&gt; logging doesn&#39;t seem to be working (maybe related to the first err=
or)<br>
&gt; so I&#39;ve been attempting to use print statements (see &quot;ddd&quo=
t; comments) to<br>
&gt; trace the long and winding path that &quot;args&quot; takes as it make=
s its way<br>
&gt; to MPM and eventually the function loads the fpga. I haven&#39;t found=
 it<br>
&gt; yet. I&#39;ve gone so far as to delete all the existing fpga images I =
can<br>
&gt; find but still uhd finds this one. That&#39;s what made me think that =
it<br>
&gt; had been somehow baked into the uhd executable.<br>
What happens if you specify an fpga image that doesn&#39;t actually exist?=
=C2=A0 <br>
Does it error out?<br>
<br>
<br>
&gt;<br>
&gt; Here are a few outputs, first for uhd_usrp_probe and then for<br>
&gt; uhd_config_info:<br>
&gt;<br>
&gt; root@ni-e31x-*******:~/newinstall# uhd_usrp_probe<br>
&gt; Error opening log file: basic_ios::clear: iostream error<br>
&gt; [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;<br>
&gt; UHD_3.15.0.HEAD-0-g6563c537<br>
&gt; ddd in rpc.hpp mb_args=3D<br>
&gt; [ERROR] [UHD] Device discovery error: AssertionError:<br>
&gt; libusb_init(&amp;_context) =3D=3D 0<br>
&gt;=C2=A0 =C2=A0 in libusb_session_impl::libusb_session_impl()<br>
&gt;=C2=A0 =C2=A0 at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.=
cpp:36<br>
&gt;<br>
&gt; [ERROR] [UHD] Device discovery error: AssertionError:<br>
&gt; libusb_init(&amp;_context) =3D=3D 0<br>
&gt;=C2=A0 =C2=A0 in libusb_session_impl::libusb_session_impl()<br>
&gt;=C2=A0 =C2=A0 at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.=
cpp:36<br>
&gt;<br>
&gt; [ERROR] [UHD] Device discovery error: AssertionError:<br>
&gt; libusb_init(&amp;_context) =3D=3D 0<br>
&gt;=C2=A0 =C2=A0 in libusb_session_impl::libusb_session_impl()<br>
&gt;=C2=A0 =C2=A0 at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.=
cpp:36<br>
&gt;<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args:<br>
&gt; mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,=
claimed=3DF<br>
&gt; alse<br>
&gt;<br>
&gt; [ddd<br>
&gt; mb_args=3Dmgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=
=3D309C7C2,c<br>
&gt; laimed=3DFalse<br>
&gt; INFO] [MPMD dddddd in mpmd_mboard_impl.cpp mb_args=3D49601=C2=A0 size=
=3D4<br>
&gt; ] ddd in rpc.hpp mb_args=3D<br>
&gt; MPMD Claiming mboard 0<br>
&gt; [INFO] [MPMD ddd] Device args:<br>
&gt; `mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2=
,claimed=3D<br>
&gt; False&#39;. RPC address: 127.0.0.1<br>
&gt; ddd in mpmd_mboard_impl.cpp mb_args=3D49601=C2=A0 size=3D4<br>
&gt; ddd in rpc.hpp mb_args=3D<br>
&gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
&gt; [INFO] [MPMD ddd] just called setup_mb<br>
&gt;<br>
&gt; [INFO] [MPMD ddd] just called init_property_tree<br>
&gt;<br>
&gt; [INFO] [MPMD] Mboard 0 reports 1 crossbar(s).<br>
&gt;<br>
&gt;<br>
&gt; [INFO] [MPMD ddd] Enumerating RFNoC blocks for xbar 0. Total blocks: 3=
<br>
&gt; Base port: 1 Local address: 2<br>
&gt; [INFO] [0/Radio_0] Initializing block control (NOC ID:<br>
&gt; 0x12AD100000003310)<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args<br>
&gt; `mgmt_addr=3D127.0.0.1,product=3De310_sg1&#39;.<br>
&gt; [INFO] [0/DDC_0] Initializing block control (NOC ID:<br>
&gt; 0xDDC0000000000000)<br>
&gt; [INFO] [0/DUC_0] Initializing block control (NOC ID:<br>
&gt; 0xD0C0000000000002)<br>
&gt; [INFO] [MPMD ddd] just called setup_rfnoc_blocks<br>
&gt;<br>
&gt; [INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
&gt; [INFO] [0/Radio_0] RX band =3D 6<br>
&gt; [INFO] [0/Radio_0] RX SW1 =3D 5<br>
&gt; [INFO] [0/Radio_0] RX SWC =3D 0<br>
&gt; [INFO] [0/Radio_0] RX SWB =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
&gt; [INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
&gt; [INFO] [0/Radio_0] RX band =3D 6<br>
&gt; [INFO] [0/Radio_0] RX SW1 =3D 5<br>
&gt; [INFO] [0/Radio_0] RX SWC =3D 0<br>
&gt; [INFO] [0/Radio_0] RX SWB =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
&gt; [INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
&gt; [INFO] [0/Radio_0] RX band =3D 6<br>
&gt; [INFO] [0/Radio_0] RX SW1 =3D 5<br>
&gt; [INFO] [0/Radio_0] RX SWC =3D 0<br>
&gt; [INFO] [0/Radio_0] RX SWB =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
&gt; [INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
&gt; [INFO] [0/Radio_0] RX band =3D 6<br>
&gt; [INFO] [0/Radio_0] RX SW1 =3D 5<br>
&gt; [INFO] [0/Radio_0] RX SWC =3D 0<br>
&gt; [INFO] [0/Radio_0] RX SWB =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
&gt; [INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
&gt; [INFO] [0/Radio_0] RX band =3D 6<br>
&gt; [INFO] [0/Radio_0] RX SW1 =3D 5<br>
&gt; [INFO] [0/Radio_0] RX SWC =3D 0<br>
&gt; [INFO] [0/Radio_0] RX SWB =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
&gt; [INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
&gt; [INFO] [0/Radio_0] RX band =3D 6<br>
&gt; [INFO] [0/Radio_0] RX SW1 =3D 5<br>
&gt; [INFO] [0/Radio_0] RX SWC =3D 0<br>
&gt; [INFO] [0/Radio_0] RX SWB =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
&gt; [INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
&gt; [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
&gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
&gt; [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
&gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
&gt; [INFO] [MPMD ddd] just called setup_rpc_blocks<br>
&gt;<br>
&gt; [INFO] [MPMD ddd] done<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 _____________________________________________________<br>
&gt;=C2=A0 =C2=A0/<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E300-Series Device<br>
&gt; |=C2=A0 =C2=A0 =C2=A0_________________________________________________=
____<br>
&gt; |=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: ni-e31x-309C7C2F<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_version: 3.15.0.git-g6563c537<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 30674<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e310_sg1<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 4<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connection: local<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 309C7C2<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Version: 1.2<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 1.0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash: f52a643.clean<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0RFNoC capable: Yes<br>
&gt; |=C2=A0 =C2=A0|<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 internal, external, gp=
sdo<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: internal<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: temp_mb, temp_fpga, ref_locked<br=
>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0___________________________________=
__________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: A<b=
r>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
RX Frontend: 0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2,=
 TX/RX<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_lo=
cked, rssi, lo_lock, ad9361_temperature<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70=
.000 to 6000.000 MHz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA=
: 0.0 to 76.0 step 1.0 dB<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth rang=
e: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Typ=
e: IQ<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset=
: No<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
RX Frontend: 1<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2,=
 TX/RX<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_lo=
cked, rssi, lo_lock, ad9361_temperature<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70=
.000 to 6000.000 MHz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA=
: 0.0 to 76.0 step 1.0 dB<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth rang=
e: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Typ=
e: IQ<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset=
: No<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
RX Codec: A<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: AD9361 D=
ual ADC<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements:=
 None<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0___________________________________=
__________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: A<b=
r>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
TX Frontend: 0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/R=
X<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_lo=
cked, ad9361_temperature<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47=
.000 to 6000.000 MHz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA=
: 0.0 to 89.8 step 0.2 dB<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth rang=
e: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Typ=
e: IQ<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset=
: No<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
TX Frontend: 1<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/R=
X<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_lo=
cked, ad9361_temperature<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47=
.000 to 6000.000 MHz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA=
: 0.0 to 89.8 step 0.2 dB<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth rang=
e: 20000000.0 to 40000000.0 step 0.0 Hz<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Typ=
e: IQ<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset=
: No<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0_____________________=
________________________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
TX Codec: A<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: AD9361 D=
ual DAC<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements:=
 None<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0___________________________________=
__________________<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RFNoC blocks o=
n this device:<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* Radio_0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DDC_0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DUC_0<br>
&gt;<br>
&gt;<br>
&gt; first, using my und cross-compiled build:<br>
&gt;<br>
&gt; root@ni-e31x-*******:~/newinstall# uhd_config_info --print-all<br>
&gt; UHD 3.15.0.HEAD-0-g6563c537<br>
&gt; Build date: Thu, 27 Jun 2019 13:41:23<br>
&gt; C compiler: GNU 7.3.0<br>
&gt; C++ compiler: GNU 7.3.0<br>
&gt; C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1<b=
r>
&gt; -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2<br>
&gt; -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused=
-<br>
&gt; debug-types<br>
&gt; C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1=
<br>
&gt; -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2<br>
&gt; -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused=
-<br>
&gt; debug-types=C2=A0 -fvisibility=3Dhidden -fvisibility-inlines-hidden<br=
>
&gt; Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,<br>
&gt; Examples, Utils, Tests, LIBERIO, USB, B100, B200, USRP1, USRP2, X300,<=
br>
&gt; N230, MPMD, N300, N320, E320, E300, OctoClock<br>
&gt; Install prefix: /usr/local<br>
&gt; Boost version: 1.66<br>
&gt; Libusb version: 1.0.23<br>
&gt; Package path: /usr/local<br>
&gt; Images directory: /home/root/newinstall/usr/local/share/uhd/images<br>
&gt; ABI version string: 3.15.0<br>
&gt;<br>
&gt; then, using the version of uhd on the image from a fresh boot:<br>
&gt; root@ni-e31x-********:~# uhd_config_info --print-all<br>
&gt; UHD 3.15.0.git-0-g6563c537<br>
&gt; Build date: Fri, 24 May 2019 20:20:44<br>
&gt; C compiler: GNU 7.3.0<br>
&gt; C++ compiler: GNU 7.3.0<br>
&gt; C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1<b=
r>
&gt; -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2<br>
&gt; -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3D=
neon<br>
&gt; -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=C2=A0 --sysroot=3D/home/oe-builde=
r/build/tmp-<br>
&gt; glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-<br>
&gt; e310_prerelease/recipe-sysroot=C2=A0 -O2 -pipe -g -feliminate-unused-d=
ebug-<br>
&gt; types -fdebug-prefix-map=3D/home/oe-builder/build/tmp-<br>
&gt; glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-<br>
&gt; e310_prerelease=3D/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-=
<br>
&gt; prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-=
<br>
&gt; linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot=3D -fdebug-<=
br>
&gt; prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-=
<br>
&gt; linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=3D=C2=
=A0 =C2=A0-<br>
&gt; march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a=
9<br>
&gt; --sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-<=
br>
&gt; linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot<br>
&gt; C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1=
<br>
&gt; -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2<br>
&gt; -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -marm -mfpu=3D=
neon<br>
&gt; -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=C2=A0 --sysroot=3D/home/oe-builde=
r/build/tmp-<br>
&gt; glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-<br>
&gt; e310_prerelease/recipe-sysroot=C2=A0 -O2 -pipe -g -feliminate-unused-d=
ebug-<br>
&gt; types -fdebug-prefix-map=3D/home/oe-builder/build/tmp-<br>
&gt; glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-<br>
&gt; e310_prerelease=3D/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-=
<br>
&gt; prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-=
<br>
&gt; linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot=3D -fdebug-<=
br>
&gt; prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-=
<br>
&gt; linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=3D=C2=
=A0 -<br>
&gt; fvisibility-inlines-hidden=C2=A0 -march=3Darmv7-a -marm -mfpu=3Dneon -=
mfloat-<br>
&gt; abi=3Dhard -mcpu=3Dcortex-a9=C2=A0 --sysroot=3D/home/oe-builder/build/=
tmp-<br>
&gt; glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-<br>
&gt; e310_prerelease/recipe-sysroot -fvisibility=3Dhidden -fvisibility-<br>
&gt; inlines-hidden<br>
&gt; Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,<br=
>
&gt; LIBERIO, USB, GPSD, MPMD, N300, N320, E320, E300, OctoClock<br>
&gt; Install prefix: /usr<br>
&gt; Boost version: 1.66<br>
&gt; Libusb version: 1.0.23<br>
&gt; Package path: /usr<br>
&gt; Images directory:<br>
&gt; ABI version string: 3.15.0<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c2f62e058c683a25--


--===============1013018544766848031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1013018544766848031==--

