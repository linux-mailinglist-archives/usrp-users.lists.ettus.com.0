Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CCF131713
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 18:49:44 +0100 (CET)
Received: from [::1] (port=33404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioWVa-0002g7-Lq; Mon, 06 Jan 2020 12:49:42 -0500
Received: from mail-lj1-f178.google.com ([209.85.208.178]:45735)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ioWVX-0002aY-RB
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 12:49:40 -0500
Received: by mail-lj1-f178.google.com with SMTP id j26so51764417ljc.12
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 09:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fuIFOl5xImGyQvZre0SdYc1Dl+f61s1kqAeM8yhrSUU=;
 b=nSAfN/yop8gtnLVWd07wQefy/d+u5/WfWNkEd5NzBzJM7b4cD4UJdGwV6wkdHrtkY9
 qOWlbimmN6hG8j2i3H+VxMbgOHawrLShUTYW/irzDDCfuvBZGfPp79HHVZD1AyAs3M/f
 BVyf/kro4MZAUjm6RhZg42+mwFgZdv8kJtEL1gV2MVl/SakwWBe2cbXmgAS1ULDOy1bE
 /0RWyv3OLLoOooH/3j6+CUf/KQWD+oRvSyVLT7z/+/nVTTZWigfI+IOajZZQqiCkZXlv
 QVTXW6me4sTb/e8YOuzHkHD65dlX0QStH1rFwf43f+kyFNfhGuiWhW+/Eb233IOtjJvC
 INyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fuIFOl5xImGyQvZre0SdYc1Dl+f61s1kqAeM8yhrSUU=;
 b=FCvjiu41V6Jkg7jvr268RY8ajwqIi41Xf1VrykFZiZWhvKK7J9CTn916WAkS65pDuk
 u4kqG89jPyKRABhd88auFyiVtUI5J1ZbsRJtelsN8RLSFx5+j6ZFUR4EbXcDUGDxatOQ
 4Am/Wz8GCaEqg7pg9Zdi5VVSx3zMUu1m5v02GUmydQTRNQeT4pEunIBT8WJqAZV/XL/M
 fGQMh5a4yFa7+ypUwTcL0eYuVRMfrTXx60jzOwcscKPcvvZ76CQPSDSf5oqoBYxMdgMW
 9oqQeRmOb6SL1LYf0VHLXvpbG5RFZZfAhBX/7uYuaOaMRJSamUfWjtW2kAWPPHlJGwwj
 MVBw==
X-Gm-Message-State: APjAAAXa9E/kLSn54r6y7u+mdQOJ6V3V150d9gqOgVVoTWkmJS7LCikp
 58JnS1tVTPDgLLRsNjVikgbVuDuBYnsGhIlM5riwIB78
X-Google-Smtp-Source: APXvYqwOV8c6Y3tj9WfDrd8QeGlpUyPs0aYWxhDlvqXECm29xWoNoBNDRCAD6U4nbuLYh3io5pBj3i1hWCpm+tOyEUQ=
X-Received: by 2002:a2e:5357:: with SMTP id t23mr61443591ljd.227.1578332938353; 
 Mon, 06 Jan 2020 09:48:58 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnrCSa3naLL6CZvH3w08e5B3egXOyNKWy9NfYCVssBB2RQ@mail.gmail.com>
In-Reply-To: <CAL1aUnrCSa3naLL6CZvH3w08e5B3egXOyNKWy9NfYCVssBB2RQ@mail.gmail.com>
Date: Mon, 6 Jan 2020 11:48:47 -0600
Message-ID: <CANf970Z9-AM7VqNs262A3LvGtdMNvmcnibP1GN+kPSMMLt6_bA@mail.gmail.com>
To: Subu Rama <subu.rama@gmail.com>
Subject: Re: [USRP-users] E320 1GMgmt vs SFP-1G data streaming ethernet ports
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
Content-Type: multipart/mixed; boundary="===============7941274673311904243=="
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

--===============7941274673311904243==
Content-Type: multipart/alternative; boundary="00000000000020cf55059b7c46b1"

--00000000000020cf55059b7c46b1
Content-Type: text/plain; charset="UTF-8"

>
> Issue #1:
>     I sometimes see messages such as:
> root@ni-e320-31BB638:/data/network# [  340.972102] cros-ec-dev
> cros-ec-dev.0.auto: Some logs may have been dropped...
>

I've seen this before on certain host machines, but I've never actually
seen dropped logs. I'm not sure what the cause is, but it's been tricky for
me to reproduce. If you're concerned with it, I'd recommend you SSH into
the device rather than using the serial over USB.

Issue #2:
>    What is each Ethernet port used for? See that in the output above from
> uhd_find_devices,
> mgmt_addr is shown with both the eth0 and sfp0 addresses.
>

As I understand it, the RJ45 MGMT port is an ethernet connection to the MCU
and serves about the same purpose as the Serial connection, but over
ethernet. You can not stream data over this RJ45 port or use functions like
uhd_usrp_probe. The SFP+ port provides this ethernet link to the device
*and* is capable of streaming data on and off the device. UHD with refer to
this as a "CHDR interface" (e.g. trying to stream over the RJ45 will fail
with a "No valid CHDR interfaces found!"). Because both are available as
MGMT interfaces, you see them both listed as such by uhd_find_devices.

As to the other issues you're running into, I can't say I've seen anything
similar on my 3.15.0.0 setup. Because of this, I'd suspect theres some
config issue specific to your machine / network. But to play devils
advocate, you could try rolling back to 3.14.1.1 to see is any of your
problems resolve themselves?

Sam Reiter

On Mon, Jan 6, 2020 at 5:36 AM Subu Rama via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have an E320 that I initially set up using the 1G (not the SFP)
> management ethernet port.
> I set up a static IP on it and also set up the SFP port using the SFP to
> 1G adapter that came with the E320.
>
> The setup on the E320 is:
>
> root@ni-e320-31BB638:/data/network#  ip a
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN qlen
> 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>     inet 127.0.0.1/8 scope host lo
>        valid_lft forever preferred_lft forever
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state
> UP qlen 1000
>     link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
>     inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
>        valid_lft forever preferred_lft forever
> 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state
> UP qlen 1000
>     link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
>     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
>        valid_lft forever preferred_lft forever
>
> -------------------------------------
>
> The SD card does seem to have enough space:
>
> root@ni-e320-31BB638:/data/network# df -hP
> Filesystem      Size  Used Avail Use% Mounted on
> /dev/root       1.8G  1.4G  346M  80% /
> devtmpfs        500M     0  500M   0% /dev
> tmpfs           501M  4.0K  501M   1% /dev/shm
> tmpfs           501M  8.3M  492M   2% /run
> tmpfs           501M     0  501M   0% /sys/fs/cgroup
> tmpfs           501M  4.0K  501M   1% /tmp
> tmpfs           501M   44K  501M   1% /var/volatile
> /dev/mmcblk0p1   16M  462K   16M   3% /uboot
> /dev/mmcblk0p4   11G   28M   10G   1% /data
> ---------------------------------------------------
> root@ni-e320-31BB638:/data/network# uhd_config_info --print-all
> UHD 3.15.0.0-0-gaea0e2de
> Build date: Wed, 01 Jan 2020 06:06:23
> C compiler: GNU 8.2.0
> C++ compiler: GNU 8.2.0
> C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
> -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
> -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=/usr/src/debug/uhd/3.15.0.0-r0
> -fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=
> -fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot-native=
>   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
> C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
> -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
> -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=/usr/src/debug/uhd/3.15.0.0-r0
> -fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=
> -fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot-native=
>  -fvisibility-inlines-hidden  -march=armv7-a -mthumb -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
> -fvisibility=hidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> LIBERIO, MPMD, N300, N320, E320, E300, OctoClock
> Install prefix: /usr
> Boost version: 1.68
> Libusb version: N/A
> Package path: /usr
> Images directory: /usr/share/uhd/images
> ABI version string: 3.15.0
>
> ---------------------------------
> root@ni-e320-31BB638:/data/network# ls -l /usr/share/uhd/images
> total 26280
> -rw-r--r-- 1 root root 13321512 Jan  1 06:06 usrp_e320_fpga_1G.bit
> -rw-r--r-- 1 root root     9792 Jan  1 06:06 usrp_e320_fpga_1G.dts
> -rw-r--r-- 1 root root 13321512 Jan  1 06:06 usrp_e320_fpga_AA.bit
> -rw-r--r-- 1 root root     9335 Jan  1 06:06 usrp_e320_fpga_AA.dts
> -rw-r--r-- 1 root root 13321512 Jan  1 06:06 usrp_e320_fpga_XG.bit
> -rw-r--r-- 1 root root     9837 Jan  1 06:06 usrp_e320_fpga_XG.dts
> -------------------------------------------
>
> On my host:
> ----------------------------------
> ramasu@nuc-qrc3:~/references/EndRun$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;
> UHD_3.15.0.0-0-gaea0e2de
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31BB638
>     addr: 192.168.10.2
>     claimed: False
>     mgmt_addr: 192.168.1.2
>     mgmt_addr: 192.168.10.2
>     product: e320
>     type: e3xx
> -------------------------------------------------------------------------
>
> Issue #1:
>     I sometimes see messages such as:
> root@ni-e320-31BB638:/data/network# [  340.972102] cros-ec-dev
> cros-ec-dev.0.auto: Some logs may have been dropped...
>
> (I have it connected with screen from an Ubuntu box using the JTAG USB
> connection)
>
> What does it mean?
>
> ------------------
> Issue #2:
>    What is each Ethernet port used for? See that in the output above from
> uhd_find_devices,
> mgmt_addr is shown with both the eth0 and sfp0 addresses.
>
> Once configured, do I need to maintain both the Ethernet connections?
>
> --------------------
> If I run uhd_usrp_probe as follows:
> ramasu@nuc-qrc3:~/references/EndRun$ uhd_usrp_probe --args find_all
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;
> UHD_3.15.0.0-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=31BB638,claimed=False,addr=192.168.10.2,find_all=
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=192.168.10.2,find_all=,product=e320'.
> [WARNING] [MPM.get_mac_addr] More than one device with the same IP address
> `192.168.10.42' found. Picking entry at random.
> [WARNING] [MPM.get_mac_addr] More than one device with the same IP address
> `192.168.10.42' found. Picking entry at random.
> [ERROR] [UHD] Exception caught in safe-call.
>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG]
>   at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:50
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_00_Port_20) no response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
> unsigned int]
>   at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>
> [ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
> IOError: recv error on socket: Connection refused
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
> ---
> Issue #3: Huh?
>
> [WARNING] [MPM.get_mac_addr] More than one device with the same IP address
> `192.168.10.42' found. Picking entry at random.
>
> I do NOT have more than one device with that IP address.
>
> What I have on my host is:
>
> 2: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state
> UP group default qlen 1000
>     link/ether 1c:69:7a:0a:83:16 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.1.42/24 brd 192.168.1.255 scope global eno1
>        valid_lft forever preferred_lft forever
>     inet 192.168.10.42/24 scope global eno1
>        valid_lft forever preferred_lft forever
>     inet6 fe80::1e69:7aff:fe0a:8316/64 scope link
>        valid_lft forever preferred_lft forever
>
> And what's with the RuntimeError?
>
> Note that on the host I have compiled UHD with the latest Boost libraries.
> (v1.72).
> The UHD on the E320 uses v1.68
>
> The compiler used is GNU 9.2.1 on Ubuntu 19.10
> The UHD on the E320 used GNU 8.2.0
>
> (The entire output of uhd_config_info on the E320 is shown at the
> beginning of this message).
>
> ramasu@nuc-qrc3:~/references/EndRun$ uhd_config_info --print-all
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
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples,
> Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320,
> E320, E300, OctoClock
> Install prefix: /usr/local
> Boost version: 1.72
> Libusb version: 1.0.25
> Package path: /usr/local
> Images directory: /usr/local/share/uhd/images
> ABI version string: 3.15.0
>
> Much appreciate resolving these issues.
>
> Thank you
> Subu
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000020cf55059b7c46b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Issue #1=
:<br>=C2=A0 =C2=A0 I sometimes see messages such as:<br><div>root@ni-e320-3=
1BB638:/data/network# [ =C2=A0340.972102] cros-ec-dev cros-ec-dev.0.auto: S=
ome logs may have been dropped...</div></blockquote><div><br></div><div>I&#=
39;ve seen this before on certain host machines, but I&#39;ve never actuall=
y seen dropped logs. I&#39;m not sure what the cause is, but it&#39;s been =
tricky for me to reproduce. If you&#39;re concerned with it, I&#39;d recomm=
end you SSH into the device rather than using the serial over USB.</div><di=
v><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div>Iss=
ue #2:</div><div>=C2=A0=C2=A0 What is each Ethernet port used for? See that=
 in the output above from uhd_find_devices,</div><div>mgmt_addr is shown wi=
th both the eth0 and sfp0 addresses.</div></div></blockquote><div><br></div=
><div>As I understand it, the RJ45 MGMT port is an ethernet connection to t=
he MCU and serves about the same purpose as the Serial connection, but over=
 ethernet. You can not stream data over this RJ45 port or use functions lik=
e uhd_usrp_probe. The SFP+ port provides this ethernet link to the device <=
i>and</i> is capable of streaming data on and off the device. UHD with refe=
r to this as a &quot;CHDR interface&quot; (e.g. trying to stream over the R=
J45 will fail with a &quot;No valid CHDR interfaces found!&quot;). Because =
both are available as MGMT interfaces, you see them both listed as such by =
uhd_find_devices. <br></div><div><br></div><div>As to the other issues you&=
#39;re running into, I can&#39;t say I&#39;ve seen anything similar on my 3=
.15.0.0 setup. Because of this, I&#39;d suspect theres some config issue sp=
ecific to your machine / network. But to play devils advocate, you could tr=
y rolling back to 3.14.1.1 to see is any of your problems resolve themselve=
s?<br></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">S=
am Reiter <br></div></div></div></div></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 6, 2020 at 5:36 AM =
Subu Rama via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>I have an E320 that I initi=
ally set up using the 1G (not the SFP) management ethernet port.</div><div>=
I set up a static IP on it and also set up the SFP port using the SFP to 1G=
 adapter that came with the E320.</div><div><br></div><div>The setup on the=
 E320 is:</div><div><br></div><div>root@ni-e320-31BB638:/data/network# =C2=
=A0ip a<br>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue stat=
e UNKNOWN qlen 1000<br>=C2=A0 =C2=A0 link/loopback 00:00:00:00:00:00 brd 00=
:00:00:00:00:00<br>=C2=A0 =C2=A0 inet <a href=3D"http://127.0.0.1/8" target=
=3D"_blank">127.0.0.1/8</a> scope host lo<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0val=
id_lft forever preferred_lft forever<br>2: eth0: &lt;BROADCAST,MULTICAST,UP=
,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast state UP qlen 1000<br>=C2=A0 =C2=A0=
 link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <=
a href=3D"http://192.168.1.2/24" target=3D"_blank">192.168.1.2/24</a> brd 1=
92.168.1.255 scope global eth0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft fore=
ver preferred_lft forever<br>3: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&g=
t; mtu 1500 qdisc pfifo_fast state UP qlen 1000<br>=C2=A0 =C2=A0 link/ether=
 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"h=
ttp://192.168.10.2/24" target=3D"_blank">192.168.10.2/24</a> brd 192.168.10=
.255 scope global sfp0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever pref=
erred_lft forever</div><div><br></div><div>--------------------------------=
-----</div><div><br></div><div>The SD card does seem to have enough space:<=
/div><div><br></div><div>root@ni-e320-31BB638:/data/network# df -hP<br>File=
system =C2=A0 =C2=A0 =C2=A0Size =C2=A0Used Avail Use% Mounted on<br>/dev/ro=
ot =C2=A0 =C2=A0 =C2=A0 1.8G =C2=A01.4G =C2=A0346M =C2=A080% /<br>devtmpfs =
=C2=A0 =C2=A0 =C2=A0 =C2=A0500M =C2=A0 =C2=A0 0 =C2=A0500M =C2=A0 0% /dev<b=
r>tmpfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=A04.0K =C2=A0501M =C2=
=A0 1% /dev/shm<br>tmpfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=A08.3M=
 =C2=A0492M =C2=A0 2% /run<br>tmpfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M=
 =C2=A0 =C2=A0 0 =C2=A0501M =C2=A0 0% /sys/fs/cgroup<br>tmpfs =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 501M =C2=A04.0K =C2=A0501M =C2=A0 1% /tmp<br>tmpfs =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=A0 44K =C2=A0501M =C2=A0 1% /va=
r/volatile<br>/dev/mmcblk0p1 =C2=A0 16M =C2=A0462K =C2=A0 16M =C2=A0 3% /ub=
oot<br>/dev/mmcblk0p4 =C2=A0 11G =C2=A0 28M =C2=A0 10G =C2=A0 1% /data</div=
><div>---------------------------------------------------</div><div>root@ni=
-e320-31BB638:/data/network# uhd_config_info --print-all<br>UHD 3.15.0.0-0-=
gaea0e2de<br>Build date: Wed, 01 Jan 2020 06:06:23<br>C compiler: GNU 8.2.0=
<br>C++ compiler: GNU 8.2.0<br>C flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBO=
OST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRI=
NG_VIEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_L=
OG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAV=
E_LIBERIO -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3D=
cortex-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build=
_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd=
/3.15.0.0-r0/recipe-sysroot =C2=A0-O2 -pipe -g -feliminate-unused-debug-typ=
es -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e32=
0_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.1=
5.0.0-r0=3D/usr/src/debug/uhd/3.15.0.0-r0 -fdebug-prefix-map=3D/cache/workd=
ir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cort=
exa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=3D -fdebug-p=
refix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/=
build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/rec=
ipe-sysroot-native=3D =C2=A0 -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-=
abi=3Dhard -mcpu=3Dcortex-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_=
64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe=
-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot<br>C++ flags: -DBOOST_ERROR_=
CODE_HEADER_ONLY -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_=
STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_=
MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LO=
G_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloa=
t-abi=3Dhard -mcpu=3Dcortex-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_2=
5_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-=
oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot =C2=A0-O2 -pipe -g -felimi=
nate-unused-debug-types -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64=
_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-l=
inux-musleabi/uhd/3.15.0.0-r0=3D/usr/src/debug/uhd/3.15.0.0-r0 -fdebug-pref=
ix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/bui=
ld/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/=
build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleab=
i/uhd/3.15.0.0-r0/recipe-sysroot-native=3D =C2=A0-fvisibility-inlines-hidde=
n =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dco=
rtex-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e=
320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3=
.15.0.0-r0/recipe-sysroot -fvisibility=3Dhidden -fvisibility-inlines-hidden=
<br>Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, LIB=
ERIO, MPMD, N300, N320, E320, E300, OctoClock<br>Install prefix: /usr<br>Bo=
ost version: 1.68<br>Libusb version: N/A<br>Package path: /usr<br>Images di=
rectory: /usr/share/uhd/images<br>ABI version string: 3.15.0</div><div><br>=
</div><div>---------------------------------</div><div>root@ni-e320-31BB638=
:/data/network# ls -l /usr/share/uhd/images<br>total 26280<br>-rw-r--r-- 1 =
root root 13321512 Jan =C2=A01 06:06 usrp_e320_fpga_1G.bit<br>-rw-r--r-- 1 =
root root =C2=A0 =C2=A0 9792 Jan =C2=A01 06:06 usrp_e320_fpga_1G.dts<br>-rw=
-r--r-- 1 root root 13321512 Jan =C2=A01 06:06 usrp_e320_fpga_AA.bit<br>-rw=
-r--r-- 1 root root =C2=A0 =C2=A0 9335 Jan =C2=A01 06:06 usrp_e320_fpga_AA.=
dts<br>-rw-r--r-- 1 root root 13321512 Jan =C2=A01 06:06 usrp_e320_fpga_XG.=
bit<br>-rw-r--r-- 1 root root =C2=A0 =C2=A0 9837 Jan =C2=A01 06:06 usrp_e32=
0_fpga_XG.dts</div><div>-------------------------------------------</div><d=
iv><br></div><div>On my host:</div><div>----------------------------------<=
br></div><div>ramasu@nuc-qrc3:~/references/EndRun$ uhd_find_devices<br>[INF=
O] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200; UHD_3.15.0.0-=
0-gaea0e2de<br>--------------------------------------------------<br>-- UHD=
 Device 0<br>--------------------------------------------------<br>Device A=
ddress:<br>=C2=A0 =C2=A0 serial: 31BB638<br>=C2=A0 =C2=A0 addr: 192.168.10.=
2<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 mgmt_addr: 192.168.1.2<b=
r>=C2=A0 =C2=A0 mgmt_addr: 192.168.10.2<br>=C2=A0 =C2=A0 product: e320<br>=
=C2=A0 =C2=A0 type: e3xx</div><div>----------------------------------------=
---------------------------------</div><div><br></div><div>Issue #1: <br></=
div><div>=C2=A0=C2=A0=C2=A0 I sometimes see messages such as:</div><div>roo=
t@ni-e320-31BB638:/data/network# [ =C2=A0340.972102] cros-ec-dev cros-ec-de=
v.0.auto: Some logs may have been dropped...</div><div><br></div><div>(I ha=
ve it connected with screen from an Ubuntu box using the JTAG USB connectio=
n)</div><div><br></div><div>What does it mean?</div><div><br></div><div>---=
---------------<br></div><div>Issue #2:</div><div>=C2=A0=C2=A0 What is each=
 Ethernet port used for? See that in the output above from uhd_find_devices=
,</div><div>mgmt_addr is shown with both the eth0 and sfp0 addresses.</div>=
<div><br></div><div>Once configured, do I need to maintain both the Etherne=
t connections?</div><div><br></div><div>--------------------</div><div>If I=
 run uhd_usrp_probe as follows:</div><div>ramasu@nuc-qrc3:~/references/EndR=
un$ uhd_usrp_probe --args find_all<br>[INFO] [UHD] linux; GNU C++ version 9=
.2.1 20191008; Boost_107200; UHD_3.15.0.0-0-gaea0e2de<br>[INFO] [MPMD] Init=
ializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=
=3De3xx,product=3De320,serial=3D31BB638,claimed=3DFalse,addr=3D192.168.10.2=
,find_all=3D<br>[INFO] [MPM.PeriphManager] init() called with device args `=
mgmt_addr=3D192.168.10.2,find_all=3D,product=3De320&#39;.<br>[WARNING] [MPM=
.get_mac_addr] More than one device with the same IP address `192.168.10.42=
&#39; found. Picking entry at random.<br>[WARNING] [MPM.get_mac_addr] More =
than one device with the same IP address `192.168.10.42&#39; found. Picking=
 entry at random.<br>[ERROR] [UHD] Exception caught in safe-call.<br>=C2=A0=
 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with uhd::endia=
nness_t _endianness =3D uhd::ENDIANNESS_BIG]<br>=C2=A0 at /usr/local/src/uh=
d/host/lib/rfnoc/ctrl_iface.cpp:50<br>this-&gt;send_cmd_pkt(0, 0, true); -&=
gt; EnvironmentError: IOError: Block ctrl (CE_00_Port_20) no response packe=
t - AssertionError: bool(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_en=
dianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endiannes=
s =3D uhd::ENDIANNESS_BIG; uint64_t =3D long unsigned int]<br>=C2=A0 at /us=
r/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151<br><br>[ERROR] [MPMD] Fai=
lure during block enumeration: EnvironmentError: IOError: recv error on soc=
ket: Connection refused<br>Error: RuntimeError: Failed to run enumerate_rfn=
oc_blocks()</div><div><br></div><div>---</div><div>Issue #3: Huh? <br></div=
><div><br></div><div>[WARNING] [MPM.get_mac_addr] More than one device with=
 the same IP address `192.168.10.42&#39; found. Picking entry at random.</d=
iv><div><br></div><div>I do NOT have more than one device with that IP addr=
ess.</div><div><br></div><div>What I have on my host is:</div><div><br></di=
v><div>2: eno1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_c=
odel state UP group default qlen 1000<br>=C2=A0 =C2=A0 link/ether 1c:69:7a:=
0a:83:16 brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"http://192.=
168.1.42/24" target=3D"_blank">192.168.1.42/24</a> brd 192.168.1.255 scope =
global eno1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft f=
orever<br>=C2=A0 =C2=A0 inet <a href=3D"http://192.168.10.42/24" target=3D"=
_blank">192.168.10.42/24</a> scope global eno1<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0valid_lft forever preferred_lft forever<br>=C2=A0 =C2=A0 inet6 fe80::1e6=
9:7aff:fe0a:8316/64 scope link <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft for=
ever preferred_lft forever</div><div><br></div><div>And what&#39;s with the=
 RuntimeError?</div><div><br></div><div>Note that on the host I have compil=
ed UHD with the latest Boost libraries. (v1.72).</div><div>The UHD on the E=
320 uses v1.68</div><div><br></div><div>The compiler used is GNU 9.2.1 on U=
buntu 19.10</div><div>The UHD on the E320 used GNU 8.2.0</div><div><br></di=
v><div>(The entire output of uhd_config_info on the E320 is shown at the be=
ginning of this message).<br></div><div><br></div><div>ramasu@nuc-qrc3:~/re=
ferences/EndRun$ uhd_config_info --print-all<br>UHD 3.15.0.0-0-gaea0e2de<br=
>Build date: Sun, 05 Jan 2020 17:26:13<br>C compiler: GNU 9.2.1<br>C++ comp=
iler: GNU 9.2.1<br>C flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_ASIO_DIS=
ABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUH=
D_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_L=
EVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR<br>C++ flags: -DB=
OOST_ERROR_CODE_HEADER_ONLY -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_AS=
IO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H=
 -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=
=3D2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=3Dhidden -fvisibility-inlines-hid=
den<br>Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Exa=
mples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300,=
 N320, E320, E300, OctoClock<br>Install prefix: /usr/local<br>Boost version=
: 1.72<br>Libusb version: 1.0.25<br>Package path: /usr/local<br>Images dire=
ctory: /usr/local/share/uhd/images<br>ABI version string: 3.15.0</div><div>=
<br></div><div>Much appreciate resolving these issues.</div><div><br></div>=
<div>Thank you</div><div>Subu</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000020cf55059b7c46b1--


--===============7941274673311904243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7941274673311904243==--

