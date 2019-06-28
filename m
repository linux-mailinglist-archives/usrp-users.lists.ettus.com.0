Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC1C5A5CB
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 22:19:26 +0200 (CEST)
Received: from [::1] (port=45330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgxL9-00022Q-HC; Fri, 28 Jun 2019 16:19:23 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:41519)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hgxL5-0001m8-KT
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 16:19:19 -0400
Received: by mail-qt1-f195.google.com with SMTP id d17so7766621qtj.8
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 13:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=eUFTJF+gMCblw1shNBhGj75lSvY/yzlEO0qQSl5lErA=;
 b=R9GN+Ix7LyNsklgmlBkQn5WBlYsJL+7xKGepIBIqgnE+2/rCkVS72A/KCC3x4x57Po
 UzpAVXW4Tqzz3hpII99eLKfwJ1/2QGmko5y4ggZnuHZC34wTvcpyVk/aMN4NLVGuT8zG
 JVn9/VXy3ROo7rbiotxfrL3kzvzYyxWokSGzj9QagS7fiyjFsHfRSBhPfkmgS0GRyyJT
 4Q/EWaYEu4ahzIu6G1cd5nFmm1dK2cnK90I00wgcaXlPpwjY0zLnAdUpneyhu/1Moc5e
 9Bvt2xev52Jg6iSldf16qhm/c8A3grJi3ybhE7tBprcC5EALODzsGNNZq8sxmOhBl2ZB
 1XoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=eUFTJF+gMCblw1shNBhGj75lSvY/yzlEO0qQSl5lErA=;
 b=EshGDtsCtoIY8rVMZ6/pPdUa+CineIB4J/ef+3ioSVyluCt9V2ALV4IRCWqDoYp8zH
 CJdYOCv6JjrzbXdeq/GC3a8oJC7w9eSqBA3DYbT+M1oyv12kyuxJlIilZ0pSJ+E+y1b9
 CExApvfu7svZFTpG4x6nqnrbZXhcVW/c/SxsY6GqL2Lhc0zRKbrf8p/5aIx3valuQQ1S
 0Aiz0DFMjHaRdyRX2WomSoUUjiJTOXjc4ZhNiO0HaZ8m/EuIj75Grhew8cx90kJ6pfs7
 b67AZeb9pSgk/svdj49yT/m9kHPOO0t1Ndvs3Tk8S8/pVWn9jOSbYOd/tdO+K0IHbmuY
 lTzQ==
X-Gm-Message-State: APjAAAUKz/NcMnfmHNs/nS/xnJF51n9MXxN4TNkc/Ti4POzsqeYKNxBj
 xR35HVlib5XVVvea/NYl/44nD+lh
X-Google-Smtp-Source: APXvYqxZOTVccQaG3CIUKLHllBEUJFRX0XPdmhn/Jd0Wc5l9kcejdfhxvCYGO4bzCw5zHnqlvGU5ug==
X-Received: by 2002:ac8:3613:: with SMTP id m19mr9624746qtb.193.1561753118934; 
 Fri, 28 Jun 2019 13:18:38 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id u7sm1904876qkm.62.2019.06.28.13.18.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 13:18:38 -0700 (PDT)
Message-ID: <5D16761D.4060201@gmail.com>
Date: Fri, 28 Jun 2019 16:18:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <149ce38836fec873c616f0818ed2d0e70616c0be.camel@sbcglobal.net>
In-Reply-To: <149ce38836fec873c616f0818ed2d0e70616c0be.camel@sbcglobal.net>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 06/28/2019 04:06 PM, d.des via USRP-users wrote:
> Marcus Leach wrote:
>> See this thread here:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-March/046784.html
>
>
> I understand how it's supposed to work, and it's always worked that way
> before including in the outdated
> http://files.ettus.com/e3xx_images/e3xx-release-4/ setup. With this new
> image and toolchain (from
> http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
> ), though, I can't seen to find out where uhd is getting the image it's
> loading let alone change it. No matter what files are in standard
> images path or $UHD_IMAGES_DIR or what I tell args="fpga="...
> uhd_usrp_probe gives the exact same output that indicates 1 DDC and one
> DUC.
>
> logging doesn't seem to be working (maybe related to the first error)
> so I've been attempting to use print statements (see "ddd" comments) to
> trace the long and winding path that "args" takes as it makes its way
> to MPM and eventually the function loads the fpga. I haven't found it
> yet. I've gone so far as to delete all the existing fpga images I can
> find but still uhd finds this one. That's what made me think that it
> had been somehow baked into the uhd executable.
What happens if you specify an fpga image that doesn't actually exist?  
Does it error out?


>
> Here are a few outputs, first for uhd_usrp_probe and then for
> uhd_config_info:
>
> root@ni-e31x-*******:~/newinstall# uhd_usrp_probe
> Error opening log file: basic_ios::clear: iostream error
> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> UHD_3.15.0.HEAD-0-g6563c537
> ddd in rpc.hpp mb_args=
> [ERROR] [UHD] Device discovery error: AssertionError:
> libusb_init(&_context) == 0
>    in libusb_session_impl::libusb_session_impl()
>    at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36
>
> [ERROR] [UHD] Device discovery error: AssertionError:
> libusb_init(&_context) == 0
>    in libusb_session_impl::libusb_session_impl()
>    at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36
>
> [ERROR] [UHD] Device discovery error: AssertionError:
> libusb_init(&_context) == 0
>    in libusb_session_impl::libusb_session_impl()
>    at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
> alse
>
> [ddd
> mb_args=mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,c
> laimed=False
> INFO] [MPMD dddddd in mpmd_mboard_impl.cpp mb_args=49601  size=4
> ] ddd in rpc.hpp mb_args=
> MPMD Claiming mboard 0
> [INFO] [MPMD ddd] Device args:
> `mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=
> False'. RPC address: 127.0.0.1
> ddd in mpmd_mboard_impl.cpp mb_args=49601  size=4
> ddd in rpc.hpp mb_args=
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [INFO] [MPMD ddd] just called setup_mb
>
> [INFO] [MPMD ddd] just called init_property_tree
>
> [INFO] [MPMD] Mboard 0 reports 1 crossbar(s).
>
>
> [INFO] [MPMD ddd] Enumerating RFNoC blocks for xbar 0. Total blocks: 3
> Base port: 1 Local address: 2
> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000003310)
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=127.0.0.1,product=e310_sg1'.
> [INFO] [0/DDC_0] Initializing block control (NOC ID:
> 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID:
> 0xD0C0000000000002)
> [INFO] [MPMD ddd] just called setup_rfnoc_blocks
>
> [INFO] [0/Radio_0] RX freq = 2.4e+09
> [INFO] [0/Radio_0] RX band = 6
> [INFO] [0/Radio_0] RX SW1 = 5
> [INFO] [0/Radio_0] RX SWC = 0
> [INFO] [0/Radio_0] RX SWB = 1
> [INFO] [0/Radio_0] RX VCRX_SW = 1
> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> [INFO] [0/Radio_0] RX freq = 2.4e+09
> [INFO] [0/Radio_0] RX band = 6
> [INFO] [0/Radio_0] RX SW1 = 5
> [INFO] [0/Radio_0] RX SWC = 0
> [INFO] [0/Radio_0] RX SWB = 1
> [INFO] [0/Radio_0] RX VCRX_SW = 1
> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> [INFO] [0/Radio_0] RX freq = 2.4e+09
> [INFO] [0/Radio_0] RX band = 6
> [INFO] [0/Radio_0] RX SW1 = 5
> [INFO] [0/Radio_0] RX SWC = 0
> [INFO] [0/Radio_0] RX SWB = 1
> [INFO] [0/Radio_0] RX VCRX_SW = 1
> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> [INFO] [0/Radio_0] RX freq = 2.4e+09
> [INFO] [0/Radio_0] RX band = 6
> [INFO] [0/Radio_0] RX SW1 = 5
> [INFO] [0/Radio_0] RX SWC = 0
> [INFO] [0/Radio_0] RX SWB = 1
> [INFO] [0/Radio_0] RX VCRX_SW = 1
> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> [INFO] [0/Radio_0] RX freq = 2.4e+09
> [INFO] [0/Radio_0] RX band = 6
> [INFO] [0/Radio_0] RX SW1 = 5
> [INFO] [0/Radio_0] RX SWC = 0
> [INFO] [0/Radio_0] RX SWB = 1
> [INFO] [0/Radio_0] RX VCRX_SW = 1
> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> [INFO] [0/Radio_0] RX freq = 2.4e+09
> [INFO] [0/Radio_0] RX band = 6
> [INFO] [0/Radio_0] RX SW1 = 5
> [INFO] [0/Radio_0] RX SWC = 0
> [INFO] [0/Radio_0] RX SWB = 1
> [INFO] [0/Radio_0] RX VCRX_SW = 1
> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [MPMD ddd] just called setup_rpc_blocks
>
> [INFO] [MPMD ddd] done
>
>    _____________________________________________________
>   /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e31x-309C7C2F
> |   |   mpm_version: 3.15.0.git-g6563c537
> |   |   pid: 30674
> |   |   product: e310_sg1
> |   |   rev: 4
> |   |   rpc_connection: local
> |   |   serial: 309C7C2
> |   |   type: e3xx
> |   |   MPM Version: 1.2
> |   |   FPGA Version: 1.0
> |   |   FPGA git hash: f52a643.clean
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal
> |   |   Sensors: temp_mb, temp_fpga, ref_locked
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: E3xx
> |   |   |   |   Antennas: RX2, TX/RX
> |   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
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
> |   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
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
> |   |   |   * Radio_0
> |   |   |   * DDC_0
> |   |   |   * DUC_0
>
>
> first, using my und cross-compiled build:
>
> root@ni-e31x-*******:~/newinstall# uhd_config_info --print-all
> UHD 3.15.0.HEAD-0-g6563c537
> Build date: Thu, 27 Jun 2019 13:41:23
> C compiler: GNU 7.3.0
> C++ compiler: GNU 7.3.0
> C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused-
> debug-types
> C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused-
> debug-types  -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> Examples, Utils, Tests, LIBERIO, USB, B100, B200, USRP1, USRP2, X300,
> N230, MPMD, N300, N320, E320, E300, OctoClock
> Install prefix: /usr/local
> Boost version: 1.66
> Libusb version: 1.0.23
> Package path: /usr/local
> Images directory: /home/root/newinstall/usr/local/share/uhd/images
> ABI version string: 3.15.0
>
> then, using the version of uhd on the image from a fresh boot:
> root@ni-e31x-********:~# uhd_config_info --print-all
> UHD 3.15.0.git-0-g6563c537
> Build date: Fri, 24 May 2019 20:20:44
> C compiler: GNU 7.3.0
> C++ compiler: GNU 7.3.0
> C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
> glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> e310_prerelease/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-
> types -fdebug-prefix-map=/home/oe-builder/build/tmp-
> glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> e310_prerelease=/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-
> prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot= -fdebug-
> prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=   -
> march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
> --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot
> C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
> -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
> glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> e310_prerelease/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-
> types -fdebug-prefix-map=/home/oe-builder/build/tmp-
> glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> e310_prerelease=/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-
> prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot= -fdebug-
> prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
> linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=  -
> fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon -mfloat-
> abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
> glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
> e310_prerelease/recipe-sysroot -fvisibility=hidden -fvisibility-
> inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> LIBERIO, USB, GPSD, MPMD, N300, N320, E320, E300, OctoClock
> Install prefix: /usr
> Boost version: 1.66
> Libusb version: 1.0.23
> Package path: /usr
> Images directory:
> ABI version string: 3.15.0
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
