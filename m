Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D80F3131288
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 14:06:19 +0100 (CET)
Received: from [::1] (port=46426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioS5H-00044z-QW; Mon, 06 Jan 2020 08:06:15 -0500
Received: from mail-qt1-f170.google.com ([209.85.160.170]:41387)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ioS5D-0003zU-9x
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 08:06:11 -0500
Received: by mail-qt1-f170.google.com with SMTP id k40so42362941qtk.8
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 05:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P0PDBmyZXSboVc0d0T6+hAb1dCg/VzaIUVr5cTj8H/Q=;
 b=lT3TU6u+Eu5iBSJGPZel0T2zq2aZPl0yfTgkvgdwHPBYZHE3umY7vi1eMbnWBIp5NY
 ONPHxXp0bpkNx2mtV33sqQl3KhhVqUt7bX1MbTzuvB6nD1yNEyfj/xthUUJZv+noBTZI
 xMXTMhGNNFuC5O6DbvR0aQIw9/vjwgbzmNTj2w1PaXdhgVjFGdwrUQdSTKbUCakKhWsn
 KDyn+en0jiAWG4toO5VEDPISVpCbO4taN3BQmfHlntVpJebydMnuNiYezqWMYj4/ztxD
 QilyLgKQtd2c0VAl4uiGHC1t6drRzMZlMtpnfpttNLOIPcmvTISwHIs2Xd20tQUTQLLG
 Vq1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P0PDBmyZXSboVc0d0T6+hAb1dCg/VzaIUVr5cTj8H/Q=;
 b=OjNzCVmNyci93aw0kIdQWFJYtqPn3PbMLMN7UYwO5XLeiUpOmoMon2IdCkBmjU6RF0
 PT+ABkT9X/igzkfTLxjR3ardFybLitZPd3GmCyQFu6XsMljZSZWzS+hWX76/Z/QVHAOM
 /7cY1xJVugvvX8u1D9HlQJ5neP+TPBoWG3Wd017PJ+BZeZ6dM7pGP+OCrN9L+LrHfLmT
 G7/nm6YjSdjxRktzyD1HW/cTyEW0DBnO95rwebnxCqR6XU923jclKOmTCkNzJ24FtCti
 59g78wMKvtIu9Xk2oF7B4WGbtLQYgFIWj9Ky925/oW56KpPWEFolTxWgJgOAJVUyqVF+
 7u+g==
X-Gm-Message-State: APjAAAV7tAtn7SvfZPpij9JbTviXbQgkK87ynqxgeHdCjH81Ysk7FQOb
 3DjnDfuXXOLoIXxCdm/i2S8RDBIQFC4SG0FGLyI=
X-Google-Smtp-Source: APXvYqztuKNML+KTyNvCbSu/DXCF6nkz5mkGfyV9MR6dfC1FxbcSqm0Yrf3bryzwDtLTuC7I0DaK2esJJiQZxB1eYqg=
X-Received: by 2002:ac8:4151:: with SMTP id e17mr76358784qtm.234.1578315930482; 
 Mon, 06 Jan 2020 05:05:30 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnoNwwjxyCzTuVf5pJW3r3ZuxaGhZrQs6LR2eQRRkaya9g@mail.gmail.com>
 <7c13034bd08d309a6944916b27b0f7b33804ef1d.camel@ettus.com>
In-Reply-To: <7c13034bd08d309a6944916b27b0f7b33804ef1d.camel@ettus.com>
Date: Mon, 6 Jan 2020 13:04:54 +0000
Message-ID: <CAL1aUnqjDrmuA5JJCjSJjkwv3v3O5U4oOBRW8RGCE1K28geJBg@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
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
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4029488117718708401=="
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

--===============4029488117718708401==
Content-Type: multipart/alternative; boundary="000000000000613dcf059b785028"

--000000000000613dcf059b785028
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus:

Don't know when. I just left the E320 running overnight.

There is no user code running on it; neither is it communicating with the
host or doing any Rx/Tx.

I just updated the UHD software/mender on it yesterday.

I had a screen session running and I noticed the kernel panic this morning
when I came in.
So I am unable to pinpoint a particular sequence of operations that causes
this to happen.

Thank you
Subu



On Mon, Jan 6, 2020 at 12:44 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi Subu,
>
> when exactly does the panic occur?
>
> Best regards,
> Marcus
> On Mon, 2020-01-06 at 11:12 +0000, Subu Rama via USRP-users wrote:
> > I have a kernel panic on the E320 with the most recent release
> > v3.15.0.0
> > (I used the most recent mender process).
> >
> > Details on E320 to be used in the test setup:
> >
> > eth0 --- Management - 192.168.1.2/24
> > sfp0 --- Data - 192.168.10.2/24
> >
> > root@ni-e320-31BB638:~# ip a
> > 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
> >     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> >     inet 127.0.0.1/8 scope host lo
> >        valid_lft forever preferred_lft forever
> > 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> > qlen 1000
> >     link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff
> >     inet 192.168.1.2/24 brd 192.168.1.255 scope global eth0
> >        valid_lft forever preferred_lft forever
> > 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 8000 qdisc pfifo_fast
> > qlen 1000
> >     link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff
> >     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
> >        valid_lft forever preferred_lft forever
> > root@ni-e320-31BB638:~#
> >
> > MTU was changed to 1500 bytes as we are using the SFP to 1G adapter
> > to connect to a 1Gbps port on a switch.
> >
> > ------------------------
> > ramasu@nuc-qrc3:~$ uhd_find_devices
> > [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;
> > UHD_3.15.0.0-0-gaea0e2de
> > --------------------------------------------------
> > -- UHD Device 0
> > --------------------------------------------------
> > Device Address:
> >     serial: 31BB638
> >     claimed: False
> >     mgmt_addr: 192.168.1.2
> >     product: e320
> >     reachable: No
> >     type: e3xx
> >
> > -------------------------
> > ramasu@nuc-qrc3:~$ uhd_config_info --print-all
> > UHD 3.15.0.0-0-gaea0e2de
> > Build date: Sun, 05 Jan 2020 17:26:13
> > C compiler: GNU 9.2.1
> > C++ compiler: GNU 9.2.1
> > C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> > -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> > -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
> > -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2
> > -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR
> > C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> > -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> > -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED
> > -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2
> > -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=3Dhidden
> > -fvisibility-inlines-hidden
> > Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
> > Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230,
> > MPMD, N300, N320, E320, E300, OctoClock
> > Install prefix: /usr/local
> > Boost version: 1.72
> > Libusb version: 1.0.25
> > Package path: /usr/local
> > Images directory: /usr/local/share/uhd/images
> > ABI version string: 3.15.0
> > -------------------------------
> >
> > root@ni-e320-31BB638:~# uhd_usrp_probe
> >
> > [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> > UHD_3.15.0.0-0-gaea0e2de
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> > mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De320,serial=3D31BB638,claim=
ed=3DFal
> > se
> > [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> > 0xF1F0D00000000000)
> > [INFO] [MPM.PeriphManager] init() called with device args
> > `mgmt_addr=3D127.0.0.1,product=3De320'.
> > [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1339 MB/s)
> > [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)
> > [INFO] [0/Radio_0] Initializing block control (NOC ID:
> > 0x12AD100000003320)
> > [INFO] [0/DDC_0] Initializing block control (NOC ID:
> > 0xDDC0000000000000)
> > [INFO] [0/DUC_0] Initializing block control (NOC ID:
> > 0xD0C0000000000002)
> > [INFO] [0/Radio_0] Performing CODEC loopback test...
> > [INFO] [0/Radio_0] CODEC loopback test passed
> > [INFO] [0/Radio_0] Performing CODEC loopback test...
> > [INFO] [0/Radio_0] CODEC loopback test passed
> >   _____________________________________________________
> >  /
> > |       Device: E300-Series Device
> > |     _____________________________________________________
> > |    /
> > |   |       Mboard: ni-e320-31BB638
> > |   |   eeprom_version: 2
> > |   |   mpm_version: 3.15.0.0-gaea0e2de
> > |   |   pid: 58144
> > |   |   product: e320
> > |   |   rev: 4
> > |   |   rpc_connection: local
> > |   |   serial: 31BB638
> > |   |   type: e3xx
> > |   |   MPM Version: 1.2
> > |   |   FPGA Version: 3.1
> > |   |   FPGA git hash: fde2a94.clean
> > |   |   RFNoC capable: Yes
> > |   |
> > |   |   Time sources:  internal, external, gpsdo
> > |   |   Clock sources: external, internal, gpsdo
> > |   |   Sensors: gps_gpgga, gps_locked, temp_internal, fan, gps_time,
> > temp_fpga, gps_tpv, temp_main_power, gps_sky, temp_rf_channelB,
> > temp_rf_channelA, ref_locked
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       RX Dboard: A
> > |   |   |     _____________________________________________________
> > |   |   |    /
> > |   |   |   |       RX Frontend: 0
> > |   |   |   |   Name: E3xx
> > |   |   |   |   Antennas: RX2, TX/RX
> > |   |   |   |   Sensors: lo_locked, ad9361_temperature, lo_lock, rssi
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
> > |   |   |   |   Sensors: lo_locked, ad9361_temperature, lo_lock, rssi
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
> > |   |   |   * DmaFIFO_0
> > |   |   |   * Radio_0
> > |   |   |   * DDC_0
> > |   |   |   * DUC_0
> >
> >
> > --------------------------------------------------------------
> > Kernel panic:
> >
> > ni-e320-31BB638 login: [   15.050303] nixge 40000000.ethernet sfp0:
> > Link is Up - 1Gbps/Full - flow co
> > ntrol off
> > [  340.982001] cros-ec-dev cros-ec-dev.0.auto: Some logs may have
> > been dropped...
> > [35770.507386] Unable to handle kernel paging request at virtual
> > address fffffffe
> > [35770.514558] pgd =3D e909f41c
> > [35770.517224] [fffffffe] *pgd=3D2fffd861, *pte=3D00000000,
> > *ppte=3D00000000
> > [35770.523528] Internal error: Oops: 80000007 [#1] PREEMPT SMP ARM
> > [35770.529385] Modules linked in:
> > [35770.532420] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.18.33-
> > yocto-standard #1
> > [35770.539714] Hardware name: Xilinx Zynq Platform
> > [35770.544226] PC is at 0xfffffffe
> > [35770.547351] LR is at rcu_process_callbacks+0x55c/0x60c
> > [35770.552470] pc : [<fffffffe>]    lr : [<c018863c>]    psr:
> > a0000133
> > [35770.558720] sp : c0e01d70  ip : c0e01d70  fp : c0e01dcc
> > [35770.563927] r10: c0e01d70  r9 : ef6d6860  r8 : c0e15040
> > [35770.569135] r7 : c0e03cb0  r6 : c0e01d8c  r5 : c0e15040  r4 :
> > ef6d6840
> > [35770.575647] r3 : ffffffff  r2 : ffffffff  r1 : efd56a04  r0 :
> > eccf8994
> > [35770.582158] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA Thumb
> >  Segment none
> > [35770.589452] Control: 18c5387d  Table: 2d51c04a  DAC: 00000051
> > [35770.595177] Process swapper/0 (pid: 0, stack limit =3D 0x8c540e68)
> > [35770.601166] Stack: (0xc0e01d70 to 0xc0e02000)
> > [35770.605506] 1d60:                                     60000113
> > 00000000 00000001 c0e03c88
> > [35770.613676] 1d80: 0000000a c0ea40a0 ef6d60c0 ffffffff ed239e40
> > ffffffcb fffffffc a646c33b
> > [35770.621835] 1da0: ffffe000 c0e020a4 ffffe000 00000009 00000002
> > 0000000a 00000101 c0e02080
> > [35770.629994] 1dc0: c0e01e14 c0e01dd0 c0102c28 c01880ec 00000000
> > c0d93c6c 00000011 00000002
> > [35770.638153] 1de0: 00361faa 00200102 c053ce98 c0d93c80 00000000
> > c0d93c6c 00000011 ef03c800
> > [35770.646312] 1e00: 00000001 c0e01e88 c0e01e2c c0e01e18 c0129100
> > c01029d4 00000000 00000000
> > [35770.654471] 1e20: c0e01e5c c0e01e30 c017af58 c0129084 c0e01e88
> > f8f00100 c0e0450c c0e01e88
> > [35770.662631] 1e40: c0e6ebec f8f01100 c0e00000 00002088 c0e01e84
> > c0e01e60 c0102990 c017aec0
> > [35770.670790] 1e60: c0767d78 60000013 ffffffff c0e01ebc 00002088
> > c0e00000 c0e01f1c c0e01e88
> > [35770.678948] 1e80: c01020cc c0102934 00000000 c0ad7208 004d938c
> > 00000000 ef6d5438 00000001
> > [35770.687108] 1ea0: c0ea44c4 c0e8f99c 00002088 78614ac2 00002088
> > c0e01f1c c0e01eb0 c0e01ed8
> > [35770.695267] 1ec0: c053ce74 c0767d78 60000013 ffffffff 00000051
> > 00000000 c0d8f504 2e942000
> > [35770.703426] 1ee0: 782518dc 00000000 c0e01f04 c0e01ef8 c053ce74
> > ef6d5438 c0e8f99c c0e03c88
> > [35770.711586] 1f00: c0e03cb0 ffffe000 c0e03d00 00000001 c0e01f2c
> > c0e01f20 c0767ed4 c0767ad0
> > [35770.719745] 1f20: c0e01f3c c0e01f30 c0153428 c0767ebc c0e01f7c
> > c0e01f40 c0153848 c01533f0
> > [35770.727903] 1f40: 000000c2 00000001 01e03c88 a646c33b c0e03c80
> > 000000c2 00000002 c0e03c88
> > [35770.736064] 1f60: ffffffff c0e03c80 efffcd80 c0d5de40 c0e01f8c
> > c0e01f80 c0153bac c0153674
> > [35770.744223] 1f80: c0e01fa4 c0e01f90 c08f30dc c0153b90 c0eaef98
> > c0eaef40 c0e01ff4 c0e01fa8
> > [35770.752382] 1fa0: c0d00f18 c08f3030 ffffffff ffffffff 00000000
> > c0d00608 00000000 c0d5de40
> > [35770.760540] 1fc0: a642d11a 00000000 00000000 c0d00330 00000051
> > 10c0387d 00000000 1fff9000
> > [35770.768700] 1fe0: 413fc090 18c5387d 00000000 c0e01ff8 00000000
> > c0d00b30 00000000 00000000
> > [35770.776874] [<c018863c>] (rcu_process_callbacks) from [<c0102c28>]
> > (__do_softirq+0x260/0x3dc)
> > [35770.785375] [<c0102c28>] (__do_softirq) from [<c0129100>]
> > (irq_exit+0x88/0xe0)
> > [35770.792578] [<c0129100>] (irq_exit) from [<c017af58>]
> > (__handle_domain_irq+0xa4/0xf0)
> > [35770.800386] [<c017af58>] (__handle_domain_irq) from [<c0102990>]
> > (gic_handle_irq+0x68/0xa0)
> > [35770.808716] [<c0102990>] (gic_handle_irq) from [<c01020cc>]
> > (__irq_svc+0x6c/0xa8)
> > [35770.816173] Exception stack(0xc0e01e88 to 0xc0e01ed0)
> > [35770.821205] 1e80:                   00000000 c0ad7208 004d938c
> > 00000000 ef6d5438 00000001
> > [35770.829373] 1ea0: c0ea44c4 c0e8f99c 00002088 78614ac2 00002088
> > c0e01f1c c0e01eb0 c0e01ed8
> > [35770.837529] 1ec0: c053ce74 c0767d78 60000013 ffffffff
> > [35770.842568] [<c01020cc>] (__irq_svc) from [<c0767d78>]
> > (cpuidle_enter_state+0x2b4/0x3c0)
> > [35770.850644] [<c0767d78>] (cpuidle_enter_state) from [<c0767ed4>]
> > (cpuidle_enter+0x24/0x28)
> > [35770.858892] [<c0767ed4>] (cpuidle_enter) from [<c0153428>]
> > (call_cpuidle+0x44/0x48)
> > [35770.866526] [<c0153428>] (call_cpuidle) from [<c0153848>]
> > (do_idle+0x1e0/0x27c)
> > [35770.873815] [<c0153848>] (do_idle) from [<c0153bac>]
> > (cpu_startup_entry+0x28/0x2c)
> > [35770.881367] [<c0153bac>] (cpu_startup_entry) from [<c08f30dc>]
> > (rest_init+0xb8/0xd8)
> > [35770.889098] [<c08f30dc>] (rest_init) from [<c0d00f18>]
> > (start_kernel+0x3f4/0x498)
> > [35770.896555] Code: bad PC value
> > 35770.899675] ---[ end trace 198f77e2133e0637 ]---
> > [35770.904225] Kernel panic - not syncing: Fatal exception in
> > interrupt
> > [35770.910564] CPU1: stopping
> > [35770.913253] CPU: 1 PID: 93 Comm: systemd-journal Tainted: G      D
> >           4.18.33-yocto-standard #1
> > [35770.922540] Hardware name: Xilinx Zynq Platform
> > [35770.927067] [<c01130a4>] (unwind_backtrace) from [<c010d548>]
> > (show_stack+0x20/0x24)
> > [35770.934790] [<c010d548>] (show_stack) from [<c08dfbe0>]
> > (dump_stack+0x7c/0x98)
> > [35770.941990] [<c08dfbe0>] (dump_stack) from [<c010ff94>]
> > (handle_IPI+0x254/0x358)
> > [35770.949368] [<c010ff94>] (handle_IPI) from [<c01029bc>]
> > (gic_handle_irq+0x94/0xa0)
> > [35770.956918] [<c01029bc>] (gic_handle_irq) from [<c01024d4>]
> > (__irq_usr+0x54/0x80)
> > [35770.964375] Exception stack(0xedc77fb0 to 0xedc77ff8)
> > [35770.969407] 7fa0:                                     000000e8
> > 00000000 00000018 00000000
> > [35770.977576] 7fc0: 0003c378 00000000 00038090 be9942dc b6d2e350
> > 00000006 b64b7378 be99428c
> > [35770.985733] 7fe0: 00000006 be994250 b6e2ae8d b6e1e744 80000030
> > ffffffff
> > [35770.992329] ---[ end Kernel panic - not syncing: Fatal exception
> > in interrupt ]---
> >
> >
> > Any ideas?
> >
> > Thank you
> > Subu
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000613dcf059b785028
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus:</div><div><br></div><div>Don&#39;t know when.=
 I just left the E320 running overnight. <br></div><div><br></div><div>Ther=
e is no user code running on it; neither is it communicating with the host =
or doing any Rx/Tx.</div><div><br></div><div>I just updated the UHD softwar=
e/mender on it yesterday.</div><div><br></div><div>I had a screen session r=
unning and I noticed the kernel panic this morning when I came in.</div><di=
v>So I am unable to pinpoint a particular sequence of operations that cause=
s this to happen.</div><div><br></div><div>Thank you</div><div>Subu</div><d=
iv><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jan 6, 2020 at 12:44 PM Marcus M=C3=
=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi Subu,<br>
<br>
when exactly does the panic occur?<br>
<br>
Best regards,<br>
Marcus<br>
On Mon, 2020-01-06 at 11:12 +0000, Subu Rama via USRP-users wrote:<br>
&gt; I have a kernel panic on the E320 with the most recent release<br>
&gt; v3.15.0.0<br>
&gt; (I used the most recent mender process).<br>
&gt; <br>
&gt; Details on E320 to be used in the test setup:<br>
&gt; <br>
&gt; eth0 --- Management - <a href=3D"http://192.168.1.2/24" rel=3D"norefer=
rer" target=3D"_blank">192.168.1.2/24</a><br>
&gt; sfp0 --- Data - <a href=3D"http://192.168.10.2/24" rel=3D"noreferrer" =
target=3D"_blank">192.168.10.2/24</a><br>
&gt; <br>
&gt; root@ni-e320-31BB638:~# ip a<br>
&gt; 1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:=
00<br>
&gt;=C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://127.0.0.1/8" rel=3D"noreferr=
er" target=3D"_blank">127.0.0.1/8</a> scope host lo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever preferred_lft forever<br>
&gt; 2: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_=
fast<br>
&gt; qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:28:8d:7e brd ff:ff:ff:ff:ff:ff<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://192.168.1.2/24" rel=3D"noref=
errer" target=3D"_blank">192.168.1.2/24</a> brd 192.168.1.255 scope global =
eth0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever preferred_lft forever<br>
&gt; 3: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 8000 qdisc pfifo_=
fast<br>
&gt; qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0link/ether 00:80:2f:28:8d:7f brd ff:ff:ff:ff:ff:ff<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0inet <a href=3D"http://192.168.10.2/24" rel=3D"nore=
ferrer" target=3D"_blank">192.168.10.2/24</a> brd 192.168.10.255 scope glob=
al sfp0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid_lft forever preferred_lft forever<br>
&gt; root@ni-e320-31BB638:~# <br>
&gt; <br>
&gt; MTU was changed to 1500 bytes as we are using the SFP to 1G adapter<br=
>
&gt; to connect to a 1Gbps port on a switch.<br>
&gt; <br>
&gt; ------------------------<br>
&gt; ramasu@nuc-qrc3:~$ uhd_find_devices<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.2.1 20191008; Boost_107200;<br>
&gt; UHD_3.15.0.0-0-gaea0e2de<br>
&gt; --------------------------------------------------<br>
&gt; -- UHD Device 0<br>
&gt; --------------------------------------------------<br>
&gt; Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0serial: 31BB638<br>
&gt;=C2=A0 =C2=A0 =C2=A0claimed: False<br>
&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr: 192.168.1.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0product: e320<br>
&gt;=C2=A0 =C2=A0 =C2=A0reachable: No<br>
&gt;=C2=A0 =C2=A0 =C2=A0type: e3xx<br>
&gt; <br>
&gt; -------------------------<br>
&gt; ramasu@nuc-qrc3:~$ uhd_config_info --print-all<br>
&gt; UHD 3.15.0.0-0-gaea0e2de<br>
&gt; Build date: Sun, 05 Jan 2020 17:26:13<br>
&gt; C compiler: GNU 9.2.1<br>
&gt; C++ compiler: GNU 9.2.1<br>
&gt; C flags: -DBOOST_ERROR_CODE_HEADER_ONLY<br>
&gt; -DBOOST_ASIO_DISABLE_STD_STRING_VIEW<br>
&gt; -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED<=
br>
&gt; -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2<br=
>
&gt; -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR<br>
&gt; C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY<br>
&gt; -DBOOST_ASIO_DISABLE_STD_STRING_VIEW<br>
&gt; -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED<=
br>
&gt; -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2<br=
>
&gt; -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=3Dhidden=
<br>
&gt; -fvisibility-inlines-hidden<br>
&gt; Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,<br>
&gt; Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230,<br>
&gt; MPMD, N300, N320, E320, E300, OctoClock<br>
&gt; Install prefix: /usr/local<br>
&gt; Boost version: 1.72<br>
&gt; Libusb version: 1.0.25<br>
&gt; Package path: /usr/local<br>
&gt; Images directory: /usr/local/share/uhd/images<br>
&gt; ABI version string: 3.15.0<br>
&gt; -------------------------------<br>
&gt; <br>
&gt; root@ni-e320-31BB638:~# uhd_usrp_probe<br>
&gt; <br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;<br>
&gt; UHD_3.15.0.0-0-gaea0e2de<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args:<br>
&gt; mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De320,serial=3D31BB638,clai=
med=3DFal<br>
&gt; se<br>
&gt; [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:<br>
&gt; 0xF1F0D00000000000)<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args<br>
&gt; `mgmt_addr=3D127.0.0.1,product=3De320&#39;.<br>
&gt; [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1339 MB/s)<br>
&gt; [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1336 MB/s)<br>
&gt; [INFO] [0/Radio_0] Initializing block control (NOC ID:<br>
&gt; 0x12AD100000003320)<br>
&gt; [INFO] [0/DDC_0] Initializing block control (NOC ID:<br>
&gt; 0xDDC0000000000000)<br>
&gt; [INFO] [0/DUC_0] Initializing block control (NOC ID:<br>
&gt; 0xD0C0000000000002)<br>
&gt; [INFO] [0/Radio_0] Performing CODEC loopback test... <br>
&gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
&gt; [INFO] [0/Radio_0] Performing CODEC loopback test... <br>
&gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
&gt;=C2=A0 =C2=A0_____________________________________________________<br>
&gt;=C2=A0 /<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E300-Series Device<br>
&gt; |=C2=A0 =C2=A0 =C2=A0_________________________________________________=
____<br>
&gt; |=C2=A0 =C2=A0 /<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: ni-e320-31BB638<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0eeprom_version: 2<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_version: 3.15.0.0-gaea0e2de<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 58144<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e320<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 4<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connection: local<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 31BB638<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Version: 1.2<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 3.1<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash: fde2a94.clean<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0RFNoC capable: Yes<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 internal, external, gp=
sdo<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: external, internal, gpsdo<b=
r>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: gps_gpgga, gps_locked, temp_inter=
nal, fan, gps_time,<br>
&gt; temp_fpga, gps_tpv, temp_main_power, gps_sky, temp_rf_channelB,<br>
&gt; temp_rf_channelA, ref_locked<br>
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
cked, ad9361_temperature, lo_lock, rssi<br>
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
cked, ad9361_temperature, lo_lock, rssi<br>
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
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DmaFIFO_0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* Radio_0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DDC_0<br>
&gt; |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DUC_0<br>
&gt; <br>
&gt; <br>
&gt; --------------------------------------------------------------<br>
&gt; Kernel panic:<br>
&gt; <br>
&gt; ni-e320-31BB638 login: [=C2=A0 =C2=A015.050303] nixge 40000000.etherne=
t sfp0:<br>
&gt; Link is Up - 1Gbps/Full - flow co<br>
&gt; ntrol off<br>
&gt; [=C2=A0 340.982001] cros-ec-dev cros-ec-dev.0.auto: Some logs may have=
<br>
&gt; been dropped...<br>
&gt; [35770.507386] Unable to handle kernel paging request at virtual<br>
&gt; address fffffffe<br>
&gt; [35770.514558] pgd =3D e909f41c<br>
&gt; [35770.517224] [fffffffe] *pgd=3D2fffd861, *pte=3D00000000,<br>
&gt; *ppte=3D00000000<br>
&gt; [35770.523528] Internal error: Oops: 80000007 [#1] PREEMPT SMP ARM<br>
&gt; [35770.529385] Modules linked in:<br>
&gt; [35770.532420] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.18.33-<br>
&gt; yocto-standard #1<br>
&gt; [35770.539714] Hardware name: Xilinx Zynq Platform<br>
&gt; [35770.544226] PC is at 0xfffffffe<br>
&gt; [35770.547351] LR is at rcu_process_callbacks+0x55c/0x60c<br>
&gt; [35770.552470] pc : [&lt;fffffffe&gt;]=C2=A0 =C2=A0 lr : [&lt;c018863c=
&gt;]=C2=A0 =C2=A0 psr:<br>
&gt; a0000133<br>
&gt; [35770.558720] sp : c0e01d70=C2=A0 ip : c0e01d70=C2=A0 fp : c0e01dcc<b=
r>
&gt; [35770.563927] r10: c0e01d70=C2=A0 r9 : ef6d6860=C2=A0 r8 : c0e15040<b=
r>
&gt; [35770.569135] r7 : c0e03cb0=C2=A0 r6 : c0e01d8c=C2=A0 r5 : c0e15040=
=C2=A0 r4 :<br>
&gt; ef6d6840<br>
&gt; [35770.575647] r3 : ffffffff=C2=A0 r2 : ffffffff=C2=A0 r1 : efd56a04=
=C2=A0 r0 :<br>
&gt; eccf8994<br>
&gt; [35770.582158] Flags: NzCv=C2=A0 IRQs on=C2=A0 FIQs on=C2=A0 Mode SVC_=
32=C2=A0 ISA Thumb<br>
&gt;=C2=A0 Segment none<br>
&gt; [35770.589452] Control: 18c5387d=C2=A0 Table: 2d51c04a=C2=A0 DAC: 0000=
0051<br>
&gt; [35770.595177] Process swapper/0 (pid: 0, stack limit =3D 0x8c540e68)<=
br>
&gt; [35770.601166] Stack: (0xc0e01d70 to 0xc0e02000)<br>
&gt; [35770.605506] 1d60:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A060000113<br>
&gt; 00000000 00000001 c0e03c88<br>
&gt; [35770.613676] 1d80: 0000000a c0ea40a0 ef6d60c0 ffffffff ed239e40<br>
&gt; ffffffcb fffffffc a646c33b<br>
&gt; [35770.621835] 1da0: ffffe000 c0e020a4 ffffe000 00000009 00000002<br>
&gt; 0000000a 00000101 c0e02080<br>
&gt; [35770.629994] 1dc0: c0e01e14 c0e01dd0 c0102c28 c01880ec 00000000<br>
&gt; c0d93c6c 00000011 00000002<br>
&gt; [35770.638153] 1de0: 00361faa 00200102 c053ce98 c0d93c80 00000000<br>
&gt; c0d93c6c 00000011 ef03c800<br>
&gt; [35770.646312] 1e00: 00000001 c0e01e88 c0e01e2c c0e01e18 c0129100<br>
&gt; c01029d4 00000000 00000000<br>
&gt; [35770.654471] 1e20: c0e01e5c c0e01e30 c017af58 c0129084 c0e01e88<br>
&gt; f8f00100 c0e0450c c0e01e88<br>
&gt; [35770.662631] 1e40: c0e6ebec f8f01100 c0e00000 00002088 c0e01e84<br>
&gt; c0e01e60 c0102990 c017aec0<br>
&gt; [35770.670790] 1e60: c0767d78 60000013 ffffffff c0e01ebc 00002088<br>
&gt; c0e00000 c0e01f1c c0e01e88<br>
&gt; [35770.678948] 1e80: c01020cc c0102934 00000000 c0ad7208 004d938c<br>
&gt; 00000000 ef6d5438 00000001<br>
&gt; [35770.687108] 1ea0: c0ea44c4 c0e8f99c 00002088 78614ac2 00002088<br>
&gt; c0e01f1c c0e01eb0 c0e01ed8<br>
&gt; [35770.695267] 1ec0: c053ce74 c0767d78 60000013 ffffffff 00000051<br>
&gt; 00000000 c0d8f504 2e942000<br>
&gt; [35770.703426] 1ee0: 782518dc 00000000 c0e01f04 c0e01ef8 c053ce74<br>
&gt; ef6d5438 c0e8f99c c0e03c88<br>
&gt; [35770.711586] 1f00: c0e03cb0 ffffe000 c0e03d00 00000001 c0e01f2c<br>
&gt; c0e01f20 c0767ed4 c0767ad0<br>
&gt; [35770.719745] 1f20: c0e01f3c c0e01f30 c0153428 c0767ebc c0e01f7c<br>
&gt; c0e01f40 c0153848 c01533f0<br>
&gt; [35770.727903] 1f40: 000000c2 00000001 01e03c88 a646c33b c0e03c80<br>
&gt; 000000c2 00000002 c0e03c88<br>
&gt; [35770.736064] 1f60: ffffffff c0e03c80 efffcd80 c0d5de40 c0e01f8c<br>
&gt; c0e01f80 c0153bac c0153674<br>
&gt; [35770.744223] 1f80: c0e01fa4 c0e01f90 c08f30dc c0153b90 c0eaef98<br>
&gt; c0eaef40 c0e01ff4 c0e01fa8<br>
&gt; [35770.752382] 1fa0: c0d00f18 c08f3030 ffffffff ffffffff 00000000<br>
&gt; c0d00608 00000000 c0d5de40<br>
&gt; [35770.760540] 1fc0: a642d11a 00000000 00000000 c0d00330 00000051<br>
&gt; 10c0387d 00000000 1fff9000<br>
&gt; [35770.768700] 1fe0: 413fc090 18c5387d 00000000 c0e01ff8 00000000<br>
&gt; c0d00b30 00000000 00000000<br>
&gt; [35770.776874] [&lt;c018863c&gt;] (rcu_process_callbacks) from [&lt;c0=
102c28&gt;]<br>
&gt; (__do_softirq+0x260/0x3dc)<br>
&gt; [35770.785375] [&lt;c0102c28&gt;] (__do_softirq) from [&lt;c0129100&gt=
;]<br>
&gt; (irq_exit+0x88/0xe0)<br>
&gt; [35770.792578] [&lt;c0129100&gt;] (irq_exit) from [&lt;c017af58&gt;]<b=
r>
&gt; (__handle_domain_irq+0xa4/0xf0)<br>
&gt; [35770.800386] [&lt;c017af58&gt;] (__handle_domain_irq) from [&lt;c010=
2990&gt;]<br>
&gt; (gic_handle_irq+0x68/0xa0)<br>
&gt; [35770.808716] [&lt;c0102990&gt;] (gic_handle_irq) from [&lt;c01020cc&=
gt;]<br>
&gt; (__irq_svc+0x6c/0xa8)<br>
&gt; [35770.816173] Exception stack(0xc0e01e88 to 0xc0e01ed0)<br>
&gt; [35770.821205] 1e80:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A000000000 c0ad7208 004d938c<br>
&gt; 00000000 ef6d5438 00000001<br>
&gt; [35770.829373] 1ea0: c0ea44c4 c0e8f99c 00002088 78614ac2 00002088<br>
&gt; c0e01f1c c0e01eb0 c0e01ed8<br>
&gt; [35770.837529] 1ec0: c053ce74 c0767d78 60000013 ffffffff<br>
&gt; [35770.842568] [&lt;c01020cc&gt;] (__irq_svc) from [&lt;c0767d78&gt;]<=
br>
&gt; (cpuidle_enter_state+0x2b4/0x3c0)<br>
&gt; [35770.850644] [&lt;c0767d78&gt;] (cpuidle_enter_state) from [&lt;c076=
7ed4&gt;]<br>
&gt; (cpuidle_enter+0x24/0x28)<br>
&gt; [35770.858892] [&lt;c0767ed4&gt;] (cpuidle_enter) from [&lt;c0153428&g=
t;]<br>
&gt; (call_cpuidle+0x44/0x48)<br>
&gt; [35770.866526] [&lt;c0153428&gt;] (call_cpuidle) from [&lt;c0153848&gt=
;]<br>
&gt; (do_idle+0x1e0/0x27c)<br>
&gt; [35770.873815] [&lt;c0153848&gt;] (do_idle) from [&lt;c0153bac&gt;]<br=
>
&gt; (cpu_startup_entry+0x28/0x2c)<br>
&gt; [35770.881367] [&lt;c0153bac&gt;] (cpu_startup_entry) from [&lt;c08f30=
dc&gt;]<br>
&gt; (rest_init+0xb8/0xd8)<br>
&gt; [35770.889098] [&lt;c08f30dc&gt;] (rest_init) from [&lt;c0d00f18&gt;]<=
br>
&gt; (start_kernel+0x3f4/0x498)<br>
&gt; [35770.896555] Code: bad PC value<br>
&gt; 35770.899675] ---[ end trace 198f77e2133e0637 ]---<br>
&gt; [35770.904225] Kernel panic - not syncing: Fatal exception in<br>
&gt; interrupt<br>
&gt; [35770.910564] CPU1: stopping<br>
&gt; [35770.913253] CPU: 1 PID: 93 Comm: systemd-journal Tainted: G=C2=A0 =
=C2=A0 =C2=A0 D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04.18.33-yocto-standard #1<br>
&gt; [35770.922540] Hardware name: Xilinx Zynq Platform<br>
&gt; [35770.927067] [&lt;c01130a4&gt;] (unwind_backtrace) from [&lt;c010d54=
8&gt;]<br>
&gt; (show_stack+0x20/0x24)<br>
&gt; [35770.934790] [&lt;c010d548&gt;] (show_stack) from [&lt;c08dfbe0&gt;]=
<br>
&gt; (dump_stack+0x7c/0x98)<br>
&gt; [35770.941990] [&lt;c08dfbe0&gt;] (dump_stack) from [&lt;c010ff94&gt;]=
<br>
&gt; (handle_IPI+0x254/0x358)<br>
&gt; [35770.949368] [&lt;c010ff94&gt;] (handle_IPI) from [&lt;c01029bc&gt;]=
<br>
&gt; (gic_handle_irq+0x94/0xa0)<br>
&gt; [35770.956918] [&lt;c01029bc&gt;] (gic_handle_irq) from [&lt;c01024d4&=
gt;]<br>
&gt; (__irq_usr+0x54/0x80)<br>
&gt; [35770.964375] Exception stack(0xedc77fb0 to 0xedc77ff8)<br>
&gt; [35770.969407] 7fa0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0000000e8<br>
&gt; 00000000 00000018 00000000<br>
&gt; [35770.977576] 7fc0: 0003c378 00000000 00038090 be9942dc b6d2e350<br>
&gt; 00000006 b64b7378 be99428c<br>
&gt; [35770.985733] 7fe0: 00000006 be994250 b6e2ae8d b6e1e744 80000030<br>
&gt; ffffffff<br>
&gt; [35770.992329] ---[ end Kernel panic - not syncing: Fatal exception<br=
>
&gt; in interrupt ]---<br>
&gt; <br>
&gt; <br>
&gt; Any ideas?<br>
&gt; <br>
&gt; Thank you<br>
&gt; Subu<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--000000000000613dcf059b785028--


--===============4029488117718708401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4029488117718708401==--

