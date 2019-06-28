Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE105A5AD
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 22:09:11 +0200 (CEST)
Received: from [::1] (port=42752 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgxBA-0001OM-7H; Fri, 28 Jun 2019 16:09:04 -0400
Received: from sonic309-46.consmr.mail.bf2.yahoo.com ([74.6.129.220]:45096)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hgxB6-0001KH-5h
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 16:09:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1561752498; bh=scoe8AsnLFLniy/tQ1PTCwoh3ksN16mA30PiCAhpSAU=;
 h=Subject:From:To:Date:From:Subject;
 b=Bkk6qoILpw7++Rq+k/vg5IvezhYVJtz7NmJY41uCYO52IRaU1fBuGEs0o4utCUoa1Bm/JKomo+AyYQzRofXY8mq2XlEqXElgzG2S3GsH3+fXz0+N7u3dD5x/vEGPwI2mV4zLwFwtq20B9PIc0CYi5BSz+MBzSzmpZWz4N1RAXliIrqwAg/xrpXuyWTyoZC/ZfDIwsgAh3MGK3q40xxDzCM8b4Qhr4n0TKL+5TRnlQb52AstjnEZQzQ45sH9dMwmqWB4bo6l04aUdrWVDp/nUgHQ4ZALmk9nB2Q6skjZ61z2nR2sh+gqeXuQiVj2yuzKkH2hDmLqME56XfnaVBUKvKQ==
X-YMail-OSG: Z0Zto7cVM1n8oy.NG53RpM4ztLEbAFDOLd9al485Xtjllkh6rh6hzTzcN4bUf.e
 qUPx3hquc92qhW5QUTagcdQi45wn8Pmg3MSkMlpOw8p3NIhCVGgYD28entJa6KM_cESoINm8Hozy
 JiNp1JOeXA7plFbxYs7kv4_4ujbyLRS6XButVN3_QLD26wtxChipLQ3Ki4AMg8lb4OKVUU8qBvvh
 Dyz9P7zZ5P5K7Z17q59CyNdqlMrrYwfV6szOlsAGpHH.iz23Lfcyl0x1GVyukXxyxDjtcifH.5Oa
 DZ.hFj9QNoYc.V6CxbqHmGKfS0zbA1Ndd4oKCh2qKyBeL.LcKrl6yTyE5sce57OJMkkH4DAHyftY
 WzJCkdWLBHqKaU19KYJ3PbSCol9NdCOz3j3aTxTiG0x_epTEFO.7951NoldnHMcXYZROLHCunaa1
 dgxSG5z4IZXLL.OTn.VoH6L4Kni0e1o6Vq1to2k7IfkXbgUGcVhd79NA6Kbw3yNqMzcNREsdP8Cg
 1pZTSkOhsG.Ihi3.kFC6CZaiBsxS63ggBgErTxREodanI1X1WdJSOggaZkp6I6OtO2H_XQMEgq6z
 Rzx7oZhmVNN2BQhxDiT3.7UtNAnRugl1eGVq9fZTb7uBF5_v9gXXRBlaJgLDp0_7nQFoheTXYPsx
 HhwIoySrnx6fnIeXw_yZcS.UtgJTRNocQJ1tlXP_rje71I5dYjMEn2RxdhtBlm1I86GopPJiT7AH
 3PBgt3GnY8kPMQdeRDkiNefUerm7jEt3aCSaG6ldLatfaHqPGcyQIXebL4i6UEoPnt9C2eDyvjxC
 zfzKrWejTpQ4Dl9tdxsG93QQrMVH.bkJGzghHj8krkKAWnTqfwxtEGbtpwLCOIpJHcTcr9qciEZ9
 1W06myHOdNdkbWxOLavJQXQTu0gpI42GUH_qGnrZylfWcdlmU8xykeLrEKCQq2mVJ7iAU6DTJs7Q
 I.qSKWm7HZ3w_sZLOd1l3kC3HsOQQ5t1n1jf.i.e2EN0dzs552d5ACttpX_KnLweE3mjHmA.jBfs
 7va1vUdPro6RdPuqZ7hg9EyOrRF4Bpt6Xf7jb7VzDB5mNLH9CPya9_8Bq5tR8UXd_uo3QNpvJgQb
 FfMR5KRju44nsuI1M18Tvo5UvDPTN0rgzI8mUfhDMzYjJ3a0Jmx7dDbDfbvleSYBQC8zuKkfktXI
 9xDMjTI2ehtv5vdfrK0MzuXleS8uQp3.Digb4F33xjFJgf8ckhy15bDLclaLZRAlDzXRh31aRM3F
 HuFMPwvY.MijIrZkX1LEMag--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.bf2.yahoo.com with HTTP; Fri, 28 Jun 2019 20:08:18 +0000
Received: by smtp431.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 150ffa8b3010cfc738073d344f1c1a55; 
 Fri, 28 Jun 2019 20:06:18 +0000 (UTC)
Message-ID: <149ce38836fec873c616f0818ed2d0e70616c0be.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 28 Jun 2019 20:06:17 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

Marcus Leach wrote:
> See this thread here:

> 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-March/046784.html


I understand how it's supposed to work, and it's always worked that way
before including in the outdated 
http://files.ettus.com/e3xx_images/e3xx-release-4/ setup. With this new
image and toolchain (from 
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
), though, I can't seen to find out where uhd is getting the image it's
loading let alone change it. No matter what files are in standard
images path or $UHD_IMAGES_DIR or what I tell args="fpga="...
uhd_usrp_probe gives the exact same output that indicates 1 DDC and one
DUC.

logging doesn't seem to be working (maybe related to the first error)
so I've been attempting to use print statements (see "ddd" comments) to
trace the long and winding path that "args" takes as it makes its way
to MPM and eventually the function loads the fpga. I haven't found it
yet. I've gone so far as to delete all the existing fpga images I can
find but still uhd finds this one. That's what made me think that it
had been somehow baked into the uhd executable.

Here are a few outputs, first for uhd_usrp_probe and then for
uhd_config_info:

root@ni-e31x-*******:~/newinstall# uhd_usrp_probe 
Error opening log file: basic_ios::clear: iostream error
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
UHD_3.15.0.HEAD-0-g6563c537
ddd in rpc.hpp mb_args=
[ERROR] [UHD] Device discovery error: AssertionError:
libusb_init(&_context) == 0
  in libusb_session_impl::libusb_session_impl()
  at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36

[ERROR] [UHD] Device discovery error: AssertionError:
libusb_init(&_context) == 0
  in libusb_session_impl::libusb_session_impl()
  at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36

[ERROR] [UHD] Device discovery error: AssertionError:
libusb_init(&_context) == 0
  in libusb_session_impl::libusb_session_impl()
  at /home/mal/315/src/uhd/host/lib/transport/libusb1_base.cpp:36

[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse

[ddd
mb_args=mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,c
laimed=False
INFO] [MPMD dddddd in mpmd_mboard_impl.cpp mb_args=49601  size=4
] ddd in rpc.hpp mb_args=
MPMD Claiming mboard 0
[INFO] [MPMD ddd] Device args:
`mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=
False'. RPC address: 127.0.0.1
ddd in mpmd_mboard_impl.cpp mb_args=49601  size=4
ddd in rpc.hpp mb_args=
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPMD ddd] just called setup_mb

[INFO] [MPMD ddd] just called init_property_tree

[INFO] [MPMD] Mboard 0 reports 1 crossbar(s).


[INFO] [MPMD ddd] Enumerating RFNoC blocks for xbar 0. Total blocks: 3
Base port: 1 Local address: 2
[INFO] [0/Radio_0] Initializing block control (NOC ID:
0x12AD100000003310)
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=127.0.0.1,product=e310_sg1'.
[INFO] [0/DDC_0] Initializing block control (NOC ID:
0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID:
0xD0C0000000000002)
[INFO] [MPMD ddd] just called setup_rfnoc_blocks

[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] RX freq = 2.4e+09
[INFO] [0/Radio_0] RX band = 6
[INFO] [0/Radio_0] RX SW1 = 5
[INFO] [0/Radio_0] RX SWC = 0
[INFO] [0/Radio_0] RX SWB = 1
[INFO] [0/Radio_0] RX VCRX_SW = 1
[INFO] [0/Radio_0] RX VCTXRX_SW = 0
[INFO] [0/Radio_0] Performing CODEC loopback test... 
[INFO] [0/Radio_0] CODEC loopback test passed
[INFO] [0/Radio_0] Performing CODEC loopback test... 
[INFO] [0/Radio_0] CODEC loopback test passed
[INFO] [MPMD ddd] just called setup_rpc_blocks

[INFO] [MPMD ddd] done

  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e31x-309C7C2F
|   |   mpm_version: 3.15.0.git-g6563c537
|   |   pid: 30674
|   |   product: e310_sg1
|   |   rev: 4
|   |   rpc_connection: local
|   |   serial: 309C7C2
|   |   type: e3xx
|   |   MPM Version: 1.2
|   |   FPGA Version: 1.0
|   |   FPGA git hash: f52a643.clean
|   |   RFNoC capable: Yes
|   |   
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal
|   |   Sensors: temp_mb, temp_fpga, ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: RX2, TX/RX
|   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
|   |   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: RX2, TX/RX
|   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
|   |   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: AD9361 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature
|   |   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: E3xx
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature
|   |   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: AD9361 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |   
|   |   |   * Radio_0
|   |   |   * DDC_0
|   |   |   * DUC_0


first, using my und cross-compiled build:

root@ni-e31x-*******:~/newinstall# uhd_config_info --print-all
UHD 3.15.0.HEAD-0-g6563c537
Build date: Thu, 27 Jun 2019 13:41:23
C compiler: GNU 7.3.0
C++ compiler: GNU 7.3.0
C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
-DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused-
debug-types 
C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
-DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -O2 -pipe -g -feliminate-unused-
debug-types  -fvisibility=hidden -fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
Examples, Utils, Tests, LIBERIO, USB, B100, B200, USRP1, USRP2, X300,
N230, MPMD, N300, N320, E320, E300, OctoClock
Install prefix: /usr/local
Boost version: 1.66
Libusb version: 1.0.23
Package path: /usr/local
Images directory: /home/root/newinstall/usr/local/share/uhd/images
ABI version string: 3.15.0

then, using the version of uhd on the image from a fresh boot:
root@ni-e31x-********:~# uhd_config_info --print-all
UHD 3.15.0.git-0-g6563c537
Build date: Fri, 24 May 2019 20:20:44
C compiler: GNU 7.3.0
C++ compiler: GNU 7.3.0
C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
-DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
e310_prerelease/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-
types -fdebug-prefix-map=/home/oe-builder/build/tmp-
glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
e310_prerelease=/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-
prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot= -fdebug-
prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=   -
march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9  
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot
C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2
-DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
e310_prerelease/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debug-
types -fdebug-prefix-map=/home/oe-builder/build/tmp-
glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
e310_prerelease=/usr/src/debug/uhd/3.15.0.0-e310_prerelease -fdebug-
prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot= -fdebug-
prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-
linux-gnueabi/uhd/3.15.0.0-e310_prerelease/recipe-sysroot-native=  -
fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon -mfloat-
abi=hard -mcpu=cortex-a9  --sysroot=/home/oe-builder/build/tmp-
glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.15.0.0-
e310_prerelease/recipe-sysroot -fvisibility=hidden -fvisibility-
inlines-hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
LIBERIO, USB, GPSD, MPMD, N300, N320, E320, E300, OctoClock
Install prefix: /usr
Boost version: 1.66
Libusb version: 1.0.23
Package path: /usr
Images directory: 
ABI version string: 3.15.0




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
