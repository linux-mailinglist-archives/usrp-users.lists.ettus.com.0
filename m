Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ECFD7278
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 11:47:56 +0200 (CEST)
Received: from [::1] (port=34810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKJQm-0004BQ-5F; Tue, 15 Oct 2019 05:47:52 -0400
Received: from mail-eopbgr30138.outbound.protection.outlook.com
 ([40.107.3.138]:39549 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <demel@ant.uni-bremen.de>)
 id 1iKJQi-00045a-0q
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 05:47:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ia1wtrHGH2bsbTYbslrhs7MXveqqRFPTfLh07X3Sfpz2VIVyI5Rl69Un4hrwrZ8qoJb9BBrIlZjiMVNGSF5Bz6OqPlM+Ar17GuCEAoAMiAi/XbrHqpwndj02fOVKJAB/IHMU7uAJ6TQHpLopgoUanAg9dhtGAnav2Ri3IUxi7TKWi5oR4d7rFJj+lwM4DjVeReNkyF39GbqZifsoGBHUC8oFoLPsKXRI8VMW0sqbMyXs/xYCivdk8s9NUNJm3yUJ+Ztn06+5P3+fHFtyFh9r8BUhfanFU+JFxkYI3BwpXeqBFwrgs6bqXEafN0qKAcwYXPSaJlWUsmYAiZX2G/q16w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5U3wGbc+TBuqttELKoOcTYnk3Vp9HzwrGc6Aiffu8+c=;
 b=TdxSVOiUHQmm45YGlSG12onY4wIIUTqE6M4JNaQbpQaVY3oUhECN0ak6bMO4rcsSGgPtHKezCWKLkiVElgpMEVjNNgEVULYQJtwSA0WXYE0yRmxkoCdxFZmVLxWXEcPlwhbbhjT37PS6gKX+qRiG671iDTl5nff0734QBanyvtab21Y5+ysvkOd7fmxjfU6kF6AE7tTDF7jRTqTfYoYfwsCVn1U5bqzHb/nY077x/OpLzIgLPJi/2pZwrR4Jjx/23/wRd7N9YiAXc+G0UzA7QM0m2XyYkUux+QvkikFosSBJQOOQeyA0qTQGuRlHXnGmRcWxDGCq/QjXhMh6zaeySQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5U3wGbc+TBuqttELKoOcTYnk3Vp9HzwrGc6Aiffu8+c=;
 b=dnvU7sOSXgl2RfW1zyr0NC4SmTigqR+eqzbCH3jtgMI6ZpHiKtYjN9sGKSxaS/PJTBlRuQT+QkphFB2chH+DL+0B55UdG3UqDExFF3+w/IRmhOd8Dd5+CDyC1/cdrCzOJl1wpabwbP/8YXRsYLAM45AYNsf7ekbR4w8twaCQclI=
Received: from AM0PR04MB6787.eurprd04.prod.outlook.com (52.132.215.71) by
 AM0PR04MB7172.eurprd04.prod.outlook.com (10.186.128.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 09:47:06 +0000
Received: from AM0PR04MB6787.eurprd04.prod.outlook.com
 ([fe80::51a2:617d:239b:de85]) by AM0PR04MB6787.eurprd04.prod.outlook.com
 ([fe80::51a2:617d:239b:de85%4]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 09:47:05 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Getting started with our new N310s
Thread-Index: AQHVgz2AuUu0m5rX40eJLmFim5lCIw==
Date: Tue, 15 Oct 2019 09:47:05 +0000
Message-ID: <97669300-9876-51bd-aa3d-58d230d2d27f@ant.uni-bremen.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR07CA0020.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::33) To AM0PR04MB6787.eurprd04.prod.outlook.com
 (2603:10a6:208:18a::7)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [134.102.176.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cad8693c-6cb2-42b9-8713-08d75154a364
x-ms-traffictypediagnostic: AM0PR04MB7172:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB717218DD81E35D7B88D156BEA9930@AM0PR04MB7172.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(136003)(346002)(376002)(396003)(40224003)(45914002)(199004)(189003)(53754006)(508600001)(6306002)(102836004)(2906002)(2501003)(966005)(5660300002)(31686004)(6436002)(3846002)(66066001)(30864003)(5640700003)(476003)(2351001)(25786009)(2616005)(6512007)(6116002)(6486002)(26005)(486006)(71200400001)(71190400001)(316002)(14444005)(305945005)(256004)(31696002)(6916009)(786003)(66946007)(14454004)(64756008)(66446008)(66476007)(66556008)(7736002)(52116002)(8936002)(8676002)(81156014)(86362001)(81166006)(99286004)(386003)(6506007)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR04MB7172;
 H:AM0PR04MB6787.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NbwfWhQZe0nWZ7Er+PiFXyQ0vAsF66r/NGvcPIyEJ2u60d09zQF/asInJ6jsb2Qgz93JpdU1js7iEK7nls+rBNy7suuKmOveto5cv17LMS+opGxBSaaaEi1u31TQ4SSHBE2FwZFUFMFcPGFjJ4RD+RaTCh4Dff9lXUJiDjkMnGqgRkiwNMzOeDu9ZqFLH/Wu3qWIjU+E965B6qgkgI2L3aZqCWYAK9MxIKSwTb6fyFWgXNiLxbZMZrJYiwv6BFB6TBgiT8O6mOJcXawKZ7DL4mKt8SHyII0QjRFElmugzplusvLdt01fmR+eyjXPUzXx+a/xbb1ZbPITjZM2txLUArexBWGzNg7/B8tfBAHfSWUffBsQk+1goM1cemaOcub45MqMWqa9vYwMpbwwbLV+fUUwRZTeZsqulPkXSa2OxZMidIj4Y94Qatwhg4rmeTR3N8R6u05rEK6zG1/V/nOPCA==
x-ms-exchange-transport-forked: True
Content-ID: <021835349C424F4CA2264267CAED6F73@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: cad8693c-6cb2-42b9-8713-08d75154a364
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 09:47:05.8274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IPfufMufo902BxQSubHpGZtyLhtMXyasS7dSvpXxnUIIKG+0JfI0jh+ULdhI3Ml5pTyKeuRrGlGg6O6V5+iODA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7172
Subject: [USRP-users] Getting started with our new N310s
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
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
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

Hi all,

we just received some new N310s. Yeah!

They don't work! Noooo.

Let me explain what I tried so far and what I found out. So far, I work 
with 2 devices.

Summary:
With factory default image I can find the device but `uhd_usrp_probe` fails.
With a newly flashed image on the SD card, The SFP ports don't show up 
anymore.


How do I recover my device that doesn't show the SFP ports anymore?

What do I need to do to successfully run `uhd_usrp_probe`? Since this 
command errors out with the same error as a flowgraph, I assume if I get 
passed `uhd_usrp_probe` there is a good chance I'll be able to run a 
flowgraph.

What is dtc? It errors out during FPGA image updates.

What is the latest `sdimg` to install? I want to make sure I'm up to 
date. As soon as I figured out why the devices don't work.

I append all the information I could find so far for my devices.

Cheers
Johannes



On Host:
$ uhd_config_info --print-all
UHD 3.15.0.git-79-gf353db8f
Build date: Tue, 08 Oct 2019 12:08:10
C compiler: GNU 7.4.0
C++ compiler: GNU 7.4.0
C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR 
-fvisibility=hidden -fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, 
Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, 
N300, N320, E320, E300, OctoClock
Install prefix: <install_prefix>/gnuradio38
Boost version: 1.65.1
Libusb version: 1.0.23
Package path: <install_prefix>/gnuradio38
Images directory: <install_prefix>/gnuradio38/share/uhd/images
ABI version string: 3.15.0


$ uhd_image_loader --args "type=n3xx,addr=X.X.X.212,fpga=HG"
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; 
UHD_3.15.0.git-79-gf353db8f
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=X.X.X.128,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,skip_init=1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[ERROR] [MPM.PeriphManager] Error executing `dtc': Command '['dtc', 
'--symbols', '-O', 'dtb', '-q', '-o', '/lib/firmware/n310.dtbo', 
'/lib/firmware/n310.dts']' returned non-zero exit status 1
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: XXXXXXX
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[WARNING] [MPM.PeriphManager] Actual minor compat ahead of expected 
compat for component `FPGA'. Expected: 5.2 Actual: 5.3
[INFO] [MPM.PeriphManager] init() called with device args `'.
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.

Rebooted devices, then:

$ uhd_find_devices
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
     serial: XXXXXX
     addr: X.X.X.212
     claimed: False
     mgmt_addr: X.X.X.128
     product: n310
     type: n3xx


--------------------------------------------------
-- UHD Device 1
--------------------------------------------------
Device Address:
     serial: n/a
     claimed: False
     mgmt_addr: X.X.X.123
     product: n/a
     reachable: No
     type: n/a


On Device 0:

$ uhd_config_info --print-all
UHD 3.13.0.2-0-unknown
Build date: Fri, 08 Mar 2019 18:43:32
C compiler: GNU 7.3.0
C++ compiler: GNU 7.3.0
C flags: -DUHD_IMAGES_DIR=OFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR 
-DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard 
-mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot 
  -O2 -pipe -g -feliminate-unused-debug-types 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=/usr/src/debug/uhd/3.13.0.2-r0 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native= 
   -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot
C++ flags: -DUHD_IMAGES_DIR=OFF -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR 
-DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard 
-mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot 
  -O2 -pipe -g -feliminate-unused-debug-types 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0=/usr/src/debug/uhd/3.13.0.2-r0 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot-native= 
  -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon 
-mfloat-abi=hard -mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.13.0.2-r0/recipe-sysroot 
-fvisibility=hidden -fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, 
LIBERIO, USB, GPSD, MPMD, N300, E320
Install prefix: /usr
Boost version: 1.66
Libusb version: 1.0.23
Package path: /usr
Images directory: /usr/share/uhd/images
ABI version string: 3.13.0

$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
     inet 127.0.0.1/8 scope host lo
        valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast 
qlen 1000
     link/ether 00:80:2f:26:6c:c1 brd ff:ff:ff:ff:ff:ff
     inet X.X.X.128/24 brd X.X.X.255 scope global dynamic eth0
        valid_lft 43114sec preferred_lft 43114sec
3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast 
qlen 1000
     link/ether 00:80:2f:26:6c:c2 brd ff:ff:ff:ff:ff:ff
     inet X.X.X.212/24 brd X.X.X.255 scope global sfp0
        valid_lft forever preferred_lft forever
4: sfp1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 8000 qdisc pfifo_fast 
qlen 1000
     link/ether 00:80:2f:26:6c:c3 brd ff:ff:ff:ff:ff:ff

On Host for Device 0:
$ uhd_usrp_probe --args="addr=X.X.X.212"
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; 
UHD_3.15.0.git-79-gf353db8f
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=X.X.X.128,type=n3xx,product=n310,serial=XXXXXXX,claimed=False,addr=X.X.X.212
[WARNING] [MPMD] Could not determine link speed; using 1GibE max speed 
of 1.25e+08
[INFO] [MPM.PeriphManager] init() called with device args 
`product=n310,mgmt_addr=X.X.X.128'.
[ERROR] [UHD] Exception caught in safe-call.
   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with 
uhd::endianness_t _endianness = (uhd::endianness_t)0]
   at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl 
(CE_00_Port_30) no response packet - AssertionError: bool(buff)
   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) 
[with uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = 
long unsigned int]
   at /home/ant/gnuradio38/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151

[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: 
IOError: recv error on socket: Connection refused
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

That's where I hang now.
The same error appears in case I try to run a GR flowgraph with that device.

For Device 1:
I followed: https://files.ettus.com/manual/page_usrp_n3xx.html
$ uhd_images_downloader -t n3xx_common_sdimg_default
$ sudo dd if=<YOUR_IMAGE> of=/dev/<YOUR_SD_CARD> bs=1M

After quite some time `dd` reported success.

On Host
$ uhd_find_devices
--------------------------------------------------
-- UHD Device 1
--------------------------------------------------
Device Address:
     serial: n/a
     claimed: False
     mgmt_addr: X.X.X.123
     product: n/a
     reachable: No
     type: n/a

On Device 1:
$ uhd_config_info --print-all
UHD 3.14.0.0-0-g655b9b0f
Build date: Tue, 19 Feb 2019 00:05:23
C compiler: GNU 7.3.0
C++ compiler: GNU 7.3.0
C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2 
-DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO 
-march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot 
  -O2 -pipe -g -feliminate-unused-debug-types 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=/usr/src/debug/uhd/3.14.0.0-r1 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot= 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native= 
   -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot
C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 
-DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR 
-DHAVE_LIBERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard 
-mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot 
  -O2 -pipe -g -feliminate-unused-debug-types 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1=/usr/src/debug/uhd/3.14.0.0-r1 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot= 
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot-native= 
  -fvisibility-inlines-hidden  -march=armv7-a -marm -mfpu=neon 
-mfloat-abi=hard -mcpu=cortex-a9 
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.0.0-r1/recipe-sysroot 
-fvisibility=hidden -fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, 
LIBERIO, USB, GPSD, MPMD, N300, N320, E320
Install prefix: /usr
Boost version: 1.66
Libusb version: 1.0.23
Package path: /usr
Images directory: /usr/share/uhd/images
ABI version string: 3.14.0

$ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
     inet 127.0.0.1/8 scope host lo
        valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast 
qlen 1000
     link/ether 00:80:2f:26:6c:b8 brd ff:ff:ff:ff:ff:ff
     inet X.X.X.123/24 brd X.X.X.255 scope global dynamic eth0
        valid_lft 40613sec preferred_lft 40613sec

The SFP ethernet devices don;t show up.
Also, I wasn't able to load a current FPGA image on the device. Since 
the SFP port does not show up, I tried to use `mgmt_addr=X.X.X.123`.
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
