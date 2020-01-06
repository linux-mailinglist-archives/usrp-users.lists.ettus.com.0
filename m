Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E36131173
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 12:36:08 +0100 (CET)
Received: from [::1] (port=36568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioQfz-0007pQ-6n; Mon, 06 Jan 2020 06:36:03 -0500
Received: from mail-qv1-f49.google.com ([209.85.219.49]:37955)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ioQfu-0007j2-RL
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 06:35:58 -0500
Received: by mail-qv1-f49.google.com with SMTP id t6so18898488qvs.5
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 03:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=qbEtItgFICPLdGRhRddC0THs55qVoYP+omkW3WAas8U=;
 b=u2nNLe8E0FVohygSP9e18ySKOAlGYWluGVli7e9ws+D8R5PuBm1MMAM90/fFYYAnhs
 Idi/DoSuYUn4hQ8BTcVtXbR2cWFStXdgUHJJWPBfCPsRp7cZ38YO5hMh4rVeyFAkrcS2
 XC6y4FJfGxiFDmTP9Dan3rE4ItcYQWMN7yIIvc+h4xr8CHUpI1qm5ARCIdbRUt99IYz5
 hff+5lCgDKSe9C6Rfuq7s3DIdU/pclxe5TftAik6JCy8RV1MU42r5AwSsCge+w8n5c1C
 zpRZmGMEGKAifQrl8kpqNwUFE9Vghbbji6Ag8SrtZoAzgPjYp1kB2CBkDIemAcdZHfGm
 soIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=qbEtItgFICPLdGRhRddC0THs55qVoYP+omkW3WAas8U=;
 b=n2PVgIv1dQCkk30GILHAXh0xiGVHuDOFpiemU7tb6FVAj1nl7Bts/79gz+/HKZoFca
 9pEs6kqvCajPeFzuhISSt+MAYR5z9q7tOSNWIiTS6cpSMBQgQu8wkagB85yUV1EW32RA
 PFtb4XltWxV23bUQTDbCbCOwXBpKeOYpqT9h4qJtIPE0XD8QS5lNDn2A1rG04tJZ6bit
 4UCuq1zvnaKqJTdFqTWurZiqkyl3jeufHw/RL6hW3rtw4Q5TMmSD02Q8PseezzUtbTkf
 OWojErdLqVjbqAdR7H47Gm80/KZ7OSqRze4ljTaPZNhJVCxGOcCxWgol1BHcaE0ha0Uw
 31kw==
X-Gm-Message-State: APjAAAXOOYZIdCN9XhAO2WQJrEYGZlgJ6wf4SW/mZIPOYXdp9YCSqkfH
 HWJlcXpbAra6/bV+ecM2lw9ZrgrQagOuv9kt/Z41DDwx
X-Google-Smtp-Source: APXvYqwbwZgwB28Omt5d7wa3sxISZ5kGXdbX1BNiEoH3Ioa1IXzodolKNXQIw0dUp0FMyRufVo+1mdl5XDOGJivSCrs=
X-Received: by 2002:a05:6214:164:: with SMTP id
 y4mr73840523qvs.32.1578310517530; 
 Mon, 06 Jan 2020 03:35:17 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 6 Jan 2020 11:34:41 +0000
Message-ID: <CAL1aUnrCSa3naLL6CZvH3w08e5B3egXOyNKWy9NfYCVssBB2RQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] E320 1GMgmt vs SFP-1G data streaming ethernet ports
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
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Content-Type: multipart/mixed; boundary="===============0383763282972046214=="
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

--===============0383763282972046214==
Content-Type: multipart/alternative; boundary="000000000000be281e059b770d4a"

--000000000000be281e059b770d4a
Content-Type: text/plain; charset="UTF-8"

I have an E320 that I initially set up using the 1G (not the SFP)
management ethernet port.
I set up a static IP on it and also set up the SFP port using the SFP to 1G
adapter that came with the E320.

The setup on the E320 is:

root@ni-e320-31BB638:/data/network#  ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN qlen
1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state
UP qlen 1000
    link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
       valid_lft forever preferred_lft forever
3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state
UP qlen 1000
    link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
    inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
       valid_lft forever preferred_lft forever

-------------------------------------

The SD card does seem to have enough space:

root@ni-e320-31BB638:/data/network# df -hP
Filesystem      Size  Used Avail Use% Mounted on
/dev/root       1.8G  1.4G  346M  80% /
devtmpfs        500M     0  500M   0% /dev
tmpfs           501M  4.0K  501M   1% /dev/shm
tmpfs           501M  8.3M  492M   2% /run
tmpfs           501M     0  501M   0% /sys/fs/cgroup
tmpfs           501M  4.0K  501M   1% /tmp
tmpfs           501M   44K  501M   1% /var/volatile
/dev/mmcblk0p1   16M  462K   16M   3% /uboot
/dev/mmcblk0p4   11G   28M   10G   1% /data
---------------------------------------------------
root@ni-e320-31BB638:/data/network# uhd_config_info --print-all
UHD 3.15.0.0-0-gaea0e2de
Build date: Wed, 01 Jan 2020 06:06:23
C compiler: GNU 8.2.0
C++ compiler: GNU 8.2.0
C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
-DBOOST_ASIO_DISABLE_STD_STRING_VIEW
-DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
-DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
-DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
-march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
 --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
 -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=/usr/src/debug/uhd/3.15.0.0-r0
-fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=
-fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot-native=
  -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
 --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
-DBOOST_ASIO_DISABLE_STD_STRING_VIEW
-DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
-DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
-DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO
-march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
 --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
 -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=/usr/src/debug/uhd/3.15.0.0-r0
-fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=
-fdebug-prefix-map=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot-native=
 -fvisibility-inlines-hidden  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a9
 --sysroot=/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
-fvisibility=hidden -fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
LIBERIO, MPMD, N300, N320, E320, E300, OctoClock
Install prefix: /usr
Boost version: 1.68
Libusb version: N/A
Package path: /usr
Images directory: /usr/share/uhd/images
ABI version string: 3.15.0

---------------------------------
root@ni-e320-31BB638:/data/network# ls -l /usr/share/uhd/images
total 26280
-rw-r--r-- 1 root root 13321512 Jan  1 06:06 usrp_e320_fpga_1G.bit
-rw-r--r-- 1 root root     9792 Jan  1 06:06 usrp_e320_fpga_1G.dts
-rw-r--r-- 1 root root 13321512 Jan  1 06:06 usrp_e320_fpga_AA.bit
-rw-r--r-- 1 root root     9335 Jan  1 06:06 usrp_e320_fpga_AA.dts
-rw-r--r-- 1 root root 13321512 Jan  1 06:06 usrp_e320_fpga_XG.bit
-rw-r--r-- 1 root root     9837 Jan  1 06:06 usrp_e320_fpga_XG.dts
-------------------------------------------

On my host:
----------------------------------
ramasu@nuc-qrc3:~/references/EndRun$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;
UHD_3.15.0.0-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 31BB638
    addr: 192.168.10.2
    claimed: False
    mgmt_addr: 192.168.1.2
    mgmt_addr: 192.168.10.2
    product: e320
    type: e3xx
-------------------------------------------------------------------------

Issue #1:
    I sometimes see messages such as:
root@ni-e320-31BB638:/data/network# [  340.972102] cros-ec-dev
cros-ec-dev.0.auto: Some logs may have been dropped...

(I have it connected with screen from an Ubuntu box using the JTAG USB
connection)

What does it mean?

------------------
Issue #2:
   What is each Ethernet port used for? See that in the output above from
uhd_find_devices,
mgmt_addr is shown with both the eth0 and sfp0 addresses.

Once configured, do I need to maintain both the Ethernet connections?

--------------------
If I run uhd_usrp_probe as follows:
ramasu@nuc-qrc3:~/references/EndRun$ uhd_usrp_probe --args find_all
[INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;
UHD_3.15.0.0-0-gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=31BB638,claimed=False,addr=192.168.10.2,find_all=
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=192.168.10.2,find_all=,product=e320'.
[WARNING] [MPM.get_mac_addr] More than one device with the same IP address
`192.168.10.42' found. Picking entry at random.
[WARNING] [MPM.get_mac_addr] More than one device with the same IP address
`192.168.10.42' found. Picking entry at random.
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG]
  at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:50
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_00_Port_20) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
unsigned int]
  at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151

[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:
recv error on socket: Connection refused
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

---
Issue #3: Huh?

[WARNING] [MPM.get_mac_addr] More than one device with the same IP address
`192.168.10.42' found. Picking entry at random.

I do NOT have more than one device with that IP address.

What I have on my host is:

2: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP
group default qlen 1000
    link/ether 1c:69:7a:0a:83:16 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.42/24 brd 192.168.1.255 scope global eno1
       valid_lft forever preferred_lft forever
    inet 192.168.10.42/24 scope global eno1
       valid_lft forever preferred_lft forever
    inet6 fe80::1e69:7aff:fe0a:8316/64 scope link
       valid_lft forever preferred_lft forever

And what's with the RuntimeError?

Note that on the host I have compiled UHD with the latest Boost libraries.
(v1.72).
The UHD on the E320 uses v1.68

The compiler used is GNU 9.2.1 on Ubuntu 19.10
The UHD on the E320 used GNU 8.2.0

(The entire output of uhd_config_info on the E320 is shown at the beginning
of this message).

ramasu@nuc-qrc3:~/references/EndRun$ uhd_config_info --print-all
UHD 3.15.0.0-0-gaea0e2de
Build date: Sun, 05 Jan 2020 17:26:13
C compiler: GNU 9.2.1
C++ compiler: GNU 9.2.1
C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
-DBOOST_ASIO_DISABLE_STD_STRING_VIEW
-DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
-DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
-DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
-DBOOST_ASIO_DISABLE_STD_STRING_VIEW
-DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
-DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
-DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=hidden
-fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples,
Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320,
E320, E300, OctoClock
Install prefix: /usr/local
Boost version: 1.72
Libusb version: 1.0.25
Package path: /usr/local
Images directory: /usr/local/share/uhd/images
ABI version string: 3.15.0

Much appreciate resolving these issues.

Thank you
Subu

--000000000000be281e059b770d4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have an E320 that I initially set up using the 1G (=
not the SFP) management ethernet port.</div><div>I set up a static IP on it=
 and also set up the SFP port using the SFP to 1G adapter that came with th=
e E320.</div><div><br></div><div>The setup on the E320 is:</div><div><br></=
div><div>root@ni-e320-31BB638:/data/network# =C2=A0ip a<br>1: lo: &lt;LOOPB=
ACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN qlen 1000<br>=C2=
=A0 =C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00<br>=C2=A0 =
=C2=A0 inet <a href=3D"http://127.0.0.1/8">127.0.0.1/8</a> scope host lo<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever<br>2: e=
th0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast stat=
e UP qlen 1000<br>=C2=A0 =C2=A0 link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:f=
f:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"http://192.168.1.2/24">192.168.1.2=
/24</a> brd 192.168.1.255 scope global eth0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0v=
alid_lft forever preferred_lft forever<br>3: sfp0: &lt;BROADCAST,MULTICAST,=
UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast state UP qlen 1000<br>=C2=A0 =C2=
=A0 link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 ine=
t <a href=3D"http://192.168.10.2/24">192.168.10.2/24</a> brd 192.168.10.255=
 scope global sfp0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferre=
d_lft forever</div><div><br></div><div>------------------------------------=
-</div><div><br></div><div>The SD card does seem to have enough space:</div=
><div><br></div><div>root@ni-e320-31BB638:/data/network# df -hP<br>Filesyst=
em =C2=A0 =C2=A0 =C2=A0Size =C2=A0Used Avail Use% Mounted on<br>/dev/root =
=C2=A0 =C2=A0 =C2=A0 1.8G =C2=A01.4G =C2=A0346M =C2=A080% /<br>devtmpfs =C2=
=A0 =C2=A0 =C2=A0 =C2=A0500M =C2=A0 =C2=A0 0 =C2=A0500M =C2=A0 0% /dev<br>t=
mpfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=A04.0K =C2=A0501M =C2=A0 1=
% /dev/shm<br>tmpfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=A08.3M =C2=
=A0492M =C2=A0 2% /run<br>tmpfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=
=A0 =C2=A0 0 =C2=A0501M =C2=A0 0% /sys/fs/cgroup<br>tmpfs =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 501M =C2=A04.0K =C2=A0501M =C2=A0 1% /tmp<br>tmpfs =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 501M =C2=A0 44K =C2=A0501M =C2=A0 1% /var/vola=
tile<br>/dev/mmcblk0p1 =C2=A0 16M =C2=A0462K =C2=A0 16M =C2=A0 3% /uboot<br=
>/dev/mmcblk0p4 =C2=A0 11G =C2=A0 28M =C2=A0 10G =C2=A0 1% /data</div><div>=
---------------------------------------------------</div><div>root@ni-e320-=
31BB638:/data/network# uhd_config_info --print-all<br>UHD 3.15.0.0-0-gaea0e=
2de<br>Build date: Wed, 01 Jan 2020 06:06:23<br>C compiler: GNU 8.2.0<br>C+=
+ compiler: GNU 8.2.0<br>C flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_AS=
IO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIE=
W -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CON=
SOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBE=
RIO -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_=
v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.=
0.0-r0/recipe-sysroot =C2=A0-O2 -pipe -g -feliminate-unused-debug-types -fd=
ebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.1=
5.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-=
r0=3D/usr/src/debug/uhd/3.15.0.0-r0 -fdebug-prefix-map=3D/cache/workdir/OE_=
Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2=
hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=3D -fdebug-prefix-=
map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/=
tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sy=
sroot-native=3D =C2=A0 -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3D=
hard -mcpu=3Dcortex-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/b=
uild_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux=
-musleabi/uhd/3.15.0.0-r0/recipe-sysroot<br>C++ flags: -DBOOST_ERROR_CODE_H=
EADER_ONLY -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EX=
PERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LE=
VEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONS=
OLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=
=3Dhard -mcpu=3Dcortex-a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_64_=
0/build_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-li=
nux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot =C2=A0-O2 -pipe -g -feliminate-=
unused-debug-types -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/bu=
ild_oe/build_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-=
musleabi/uhd/3.15.0.0-r0=3D/usr/src/debug/uhd/3.15.0.0-r0 -fdebug-prefix-ma=
p=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v3.15.0.0/build/tm=
p-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysr=
oot=3D -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build=
_e320_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd=
/3.15.0.0-r0/recipe-sysroot-native=3D =C2=A0-fvisibility-inlines-hidden =C2=
=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-=
a9 =C2=A0--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e320_v=
3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0=
.0-r0/recipe-sysroot -fvisibility=3Dhidden -fvisibility-inlines-hidden<br>E=
nabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, LIBERIO,=
 MPMD, N300, N320, E320, E300, OctoClock<br>Install prefix: /usr<br>Boost v=
ersion: 1.68<br>Libusb version: N/A<br>Package path: /usr<br>Images directo=
ry: /usr/share/uhd/images<br>ABI version string: 3.15.0</div><div><br></div=
><div>---------------------------------</div><div>root@ni-e320-31BB638:/dat=
a/network# ls -l /usr/share/uhd/images<br>total 26280<br>-rw-r--r-- 1 root =
root 13321512 Jan =C2=A01 06:06 usrp_e320_fpga_1G.bit<br>-rw-r--r-- 1 root =
root =C2=A0 =C2=A0 9792 Jan =C2=A01 06:06 usrp_e320_fpga_1G.dts<br>-rw-r--r=
-- 1 root root 13321512 Jan =C2=A01 06:06 usrp_e320_fpga_AA.bit<br>-rw-r--r=
-- 1 root root =C2=A0 =C2=A0 9335 Jan =C2=A01 06:06 usrp_e320_fpga_AA.dts<b=
r>-rw-r--r-- 1 root root 13321512 Jan =C2=A01 06:06 usrp_e320_fpga_XG.bit<b=
r>-rw-r--r-- 1 root root =C2=A0 =C2=A0 9837 Jan =C2=A01 06:06 usrp_e320_fpg=
a_XG.dts</div><div>-------------------------------------------</div><div><b=
r></div><div>On my host:</div><div>----------------------------------<br></=
div><div>ramasu@nuc-qrc3:~/references/EndRun$ uhd_find_devices<br>[INFO] [U=
HD] linux; GNU C++ version 9.2.1 20191008; Boost_107200; UHD_3.15.0.0-0-gae=
a0e2de<br>--------------------------------------------------<br>-- UHD Devi=
ce 0<br>--------------------------------------------------<br>Device Addres=
s:<br>=C2=A0 =C2=A0 serial: 31BB638<br>=C2=A0 =C2=A0 addr: 192.168.10.2<br>=
=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 mgmt_addr: 192.168.1.2<br>=C2=
=A0 =C2=A0 mgmt_addr: 192.168.10.2<br>=C2=A0 =C2=A0 product: e320<br>=C2=A0=
 =C2=A0 type: e3xx</div><div>----------------------------------------------=
---------------------------</div><div><br></div><div>Issue #1: <br></div><d=
iv>=C2=A0=C2=A0=C2=A0 I sometimes see messages such as:</div><div>root@ni-e=
320-31BB638:/data/network# [ =C2=A0340.972102] cros-ec-dev cros-ec-dev.0.au=
to: Some logs may have been dropped...</div><div><br></div><div>(I have it =
connected with screen from an Ubuntu box using the JTAG USB connection)</di=
v><div><br></div><div>What does it mean?</div><div><br></div><div>---------=
---------<br></div><div>Issue #2:</div><div>=C2=A0=C2=A0 What is each Ether=
net port used for? See that in the output above from uhd_find_devices,</div=
><div>mgmt_addr is shown with both the eth0 and sfp0 addresses.</div><div><=
br></div><div>Once configured, do I need to maintain both the Ethernet conn=
ections?</div><div><br></div><div>--------------------</div><div>If I run u=
hd_usrp_probe as follows:</div><div>ramasu@nuc-qrc3:~/references/EndRun$ uh=
d_usrp_probe --args find_all<br>[INFO] [UHD] linux; GNU C++ version 9.2.1 2=
0191008; Boost_107200; UHD_3.15.0.0-0-gaea0e2de<br>[INFO] [MPMD] Initializi=
ng 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3De3xx,=
product=3De320,serial=3D31BB638,claimed=3DFalse,addr=3D192.168.10.2,find_al=
l=3D<br>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_add=
r=3D192.168.10.2,find_all=3D,product=3De320&#39;.<br>[WARNING] [MPM.get_mac=
_addr] More than one device with the same IP address `192.168.10.42&#39; fo=
und. Picking entry at random.<br>[WARNING] [MPM.get_mac_addr] More than one=
 device with the same IP address `192.168.10.42&#39; found. Picking entry a=
t random.<br>[ERROR] [UHD] Exception caught in safe-call.<br>=C2=A0 in ctrl=
_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with uhd::endianness_t =
_endianness =3D uhd::ENDIANNESS_BIG]<br>=C2=A0 at /usr/local/src/uhd/host/l=
ib/rfnoc/ctrl_iface.cpp:50<br>this-&gt;send_cmd_pkt(0, 0, true); -&gt; Envi=
ronmentError: IOError: Block ctrl (CE_00_Port_20) no response packet - Asse=
rtionError: bool(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness=
&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endianness =3D uh=
d::ENDIANNESS_BIG; uint64_t =3D long unsigned int]<br>=C2=A0 at /usr/local/=
src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151<br><br>[ERROR] [MPMD] Failure dur=
ing block enumeration: EnvironmentError: IOError: recv error on socket: Con=
nection refused<br>Error: RuntimeError: Failed to run enumerate_rfnoc_block=
s()</div><div><br></div><div>---</div><div>Issue #3: Huh? <br></div><div><b=
r></div><div>[WARNING] [MPM.get_mac_addr] More than one device with the sam=
e IP address `192.168.10.42&#39; found. Picking entry at random.</div><div>=
<br></div><div>I do NOT have more than one device with that IP address.</di=
v><div><br></div><div>What I have on my host is:</div><div><br></div><div>2=
: eno1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel sta=
te UP group default qlen 1000<br>=C2=A0 =C2=A0 link/ether 1c:69:7a:0a:83:16=
 brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"http://192.168.1.42=
/24">192.168.1.42/24</a> brd 192.168.1.255 scope global eno1<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever<br>=C2=A0 =C2=A0 i=
net <a href=3D"http://192.168.10.42/24">192.168.10.42/24</a> scope global e=
no1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever<b=
r>=C2=A0 =C2=A0 inet6 fe80::1e69:7aff:fe0a:8316/64 scope link <br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forever</div><div><br><=
/div><div>And what&#39;s with the RuntimeError?</div><div><br></div><div>No=
te that on the host I have compiled UHD with the latest Boost libraries. (v=
1.72).</div><div>The UHD on the E320 uses v1.68</div><div><br></div><div>Th=
e compiler used is GNU 9.2.1 on Ubuntu 19.10</div><div>The UHD on the E320 =
used GNU 8.2.0</div><div><br></div><div>(The entire output of uhd_config_in=
fo on the E320 is shown at the beginning of this message).<br></div><div><b=
r></div><div>ramasu@nuc-qrc3:~/references/EndRun$ uhd_config_info --print-a=
ll<br>UHD 3.15.0.0-0-gaea0e2de<br>Build date: Sun, 05 Jan 2020 17:26:13<br>=
C compiler: GNU 9.2.1<br>C++ compiler: GNU 9.2.1<br>C flags: -DBOOST_ERROR_=
CODE_HEADER_ONLY -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_=
STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_=
MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LO=
G_CONSOLE_COLOR<br>C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_ASIO_D=
ISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -D=
UHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE=
_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=3D=
hidden -fvisibility-inlines-hidden<br>Enabled components: LibUHD, LibUHD - =
C API, LibUHD - Python API, Examples, Utils, Tests, USB, B100, B200, USRP1,=
 USRP2, X300, N230, MPMD, N300, N320, E320, E300, OctoClock<br>Install pref=
ix: /usr/local<br>Boost version: 1.72<br>Libusb version: 1.0.25<br>Package =
path: /usr/local<br>Images directory: /usr/local/share/uhd/images<br>ABI ve=
rsion string: 3.15.0</div><div><br></div><div>Much appreciate resolving the=
se issues.</div><div><br></div><div>Thank you</div><div>Subu</div><div><br>=
</div></div>

--000000000000be281e059b770d4a--


--===============0383763282972046214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0383763282972046214==--

