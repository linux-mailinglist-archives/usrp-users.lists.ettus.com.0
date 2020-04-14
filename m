Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BDD1A7839
	for <lists+usrp-users@lfdr.de>; Tue, 14 Apr 2020 12:15:16 +0200 (CEST)
Received: from [::1] (port=57708 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jOIb0-0006fV-7P; Tue, 14 Apr 2020 06:15:10 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:53273
 helo=us-smtp-delivery-1.mimecast.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
 (Exim 4.93) (envelope-from <fsalomon@mathworks.com>)
 id 1jOIaw-0006b7-6B
 for usrp-users@lists.ettus.com; Tue, 14 Apr 2020 06:15:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mathworks.com;
 s=mimecast20180117; t=1586859265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=QUSfmmIrQ0/TSXo0xjgLuQxXur3JYND9geVaDN3MDEM=;
 b=UxNIIa+GMBftJiHHzYYFz/4vathfOu0FsfewAZEdzohBTsj4zddizlvkCN6nnWZyHbNUBq
 LwhqI1xqB7O7dR+nm5VGBTgVjqkbv7RigIxIf06eU4x+y7wGwHqIjyXbw2CV77OgWMOj0w
 Rbdrkt7i9Roc0YQrykorf5VJS1ouBp4=
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2056.outbound.protection.outlook.com [104.47.46.56]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-C28vAVmJPHKzergjhcUt7A-1; Tue, 14 Apr 2020 06:14:23 -0400
X-MC-Unique: C28vAVmJPHKzergjhcUt7A-1
Received: from MN2PR05MB6158.namprd05.prod.outlook.com (2603:10b6:208:d2::30)
 by MN2PR05MB6544.namprd05.prod.outlook.com (2603:10b6:208:d5::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.21; Tue, 14 Apr
 2020 10:14:22 +0000
Received: from MN2PR05MB6158.namprd05.prod.outlook.com
 ([fe80::cc14:becb:bf4b:ca51]) by MN2PR05MB6158.namprd05.prod.outlook.com
 ([fe80::cc14:becb:bf4b:ca51%6]) with mapi id 15.20.2921.024; Tue, 14 Apr 2020
 10:14:22 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Bitstream on E312 - Failed to load
Thread-Index: AQHWEkFRX7envxTRHkuMOXiOoWAljA==
Date: Tue, 14 Apr 2020 10:14:22 +0000
Message-ID: <MN2PR05MB615836FD69E9F479FBCF3A76CCDA0@MN2PR05MB6158.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2.29.222.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2add4c2-d6bb-40e7-3324-08d7e05c9a32
x-ms-traffictypediagnostic: MN2PR05MB6544:
x-microsoft-antispam-prvs: <MN2PR05MB6544A22AE3A29C8E17D4EE1FCCDA0@MN2PR05MB6544.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR05MB6158.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(346002)(376002)(396003)(76116006)(316002)(186003)(6506007)(7696005)(33656002)(71200400001)(26005)(66946007)(86362001)(66556008)(64756008)(66446008)(66476007)(81156014)(52536014)(9686003)(6916009)(55016002)(19627405001)(2906002)(966005)(8676002)(8936002)(5660300002)(478600001)(19623455009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y+FArkf3wzcbtYk/w3ebHfH2IEjHDVLM5jOMwWw5s7YGg6d9o2udCTBmRlkwgYHz04uW1CTZg9DWhlAD9cinAWT8ssPJD3xGpeFarHmktNd0qN19pZjqSwJWqYjDbKeb7BsqTXb5mGaAu9Y2QvTBMV+qo3yzmb2QiZLtkPZmJ6ylQmveBXjC37JurxkqUr86PKizowKP5SF8IHaIs5Nc3eKwzGkGOrzhUeeR2WJvuTLtJAITreTQErCaySkroprZYGNtqQ7LLkX4OOceDoPNIeWpXS8vkkGwO0Gz9R+TXsp/MkycGqAGXre5Eg/SCK3mL9m33QNQHLPTMdHK3w7dMFOA8mcHW0+N6oJK5Orn2sbBIsurBdilVYZyYRreusAa/Y4mLNTDo0dOaNmrDlpgEu30/cdqgLrB5vhO3Ef4Y34C68i1n+55a94TP7px8KOQFpSxzBOJj6GRjF3HaFZ36wKcYBWt5CFg+oLGfeywqYxL0Dx/wq5LkA2Yg9mJeewl8VGt7uyE+hgXpnrNKSJ7xWecdRkCoTdwFYGAAi8kF5oknIQrfi2jV+wxgDKE9zb5AuEpaMcXI/9CCKnU79VaGQ==
x-ms-exchange-antispam-messagedata: DswaI8urFYPvRKOQSxf+jU10AnDJDkgKbY6Lqayg5tTfWi09GgENRrmG3MlGu40zzCkxaaGKXUCng2JYWiB3TH0T4+4+42raZ29W93LIzMAQbxKOrflzYl1rxkh4BQ/Qjy2nXydAbhSk6jV8EGbQEw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mathworks.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2add4c2-d6bb-40e7-3324-08d7e05c9a32
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 10:14:22.3529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99dd3a11-4348-4468-9bdd-e5072b1dc1e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pXBAOWjZzz46LujYnTdWsVUOk/IC5mgAHlogo33A7znF1SmSrLPZDlbFEDeXTc7BmpTkkOb9/mvDELBJOZ0AmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6544
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mathworks.com
Subject: [USRP-users] Bitstream on E312 - Failed to load
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
From: Francisco Salomon via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francisco Salomon <fsalomon@mathworks.com>
Content-Type: multipart/mixed; boundary="===============0160162807330962763=="
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

--===============0160162807330962763==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MN2PR05MB615836FD69E9F479FBCF3A76CCDA0MN2PR05MB6158namp_"

--_000_MN2PR05MB615836FD69E9F479FBCF3A76CCDA0MN2PR05MB6158namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

BLOT:  [ERROR] [MPMD] Failure during block enumeration: EnvironmentError: I=
OError when loading custom bitstream on E312

Hello,
I've built a custom bitstream for the E310 (with blocks from library, no cu=
stom blocks) by using this commands:
$ cd ~/rfnoc/src/uhd-fpga/usrp3/tools/scripts
$ ./uhd_image_builder.py window fft -d e310 -t E310_RFNOC_sg3 -m 5 --fill-w=
ith-fifos
More details about tools as postdata.

I found an issue during the building stage but managed to fix it as per des=
cribed here: http://ettus.80997.x6.nabble.com/USRP-users-Default-RFNoC-imag=
e-for-N310-does-not-compile-td13951.html

Then, I flashed an E312 (same as E310 I guess) with sdcard image from http:=
//files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sd=
img_default-v3.15.0.0.zip
The system runs OK, and uhd_usrp_probe shows no problem. Logging in over th=
e serial port, I got several warnings about potential memory leaks (like "W=
ARNING: memory leak will occur if overlay removed, property: /__symbols__/d=
evctrl"), but I guess that's unrelated. So far so good. Embedded UHD versio=
ns copied as postdata, but it's basically what you get from the sdcard imag=
e, I haven't changed anything.

So I copied my new bitstream to the E312, and to loaded it, with a few warn=
ings, the main one related to a DTS file  not found:
root@ni-e31x-30D84C7:~# uhd_image_loader --fpga-path=3D/tmp/e31x.bit  --arg=
s=3D"type=3De3xx,reset"
[INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; UHD_3.15.0.0-0-gae=
a0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30D84C7,claimed=3DFalse,sk=
ip_init=3D1
...
WARNING] [MPMD IMAGE LOADER] RuntimeError: Component file does not exist: /=
tmp/e31x.dts
[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
[WARNING] [MPM.GPSDIface] Could not connect to GPSd! None of the GPS sensor=
s will work!
...

And then, I got this error trying uhd_usrp_probe:
root@ni-e31x-30D84C7:~# uhd_usrp_probe
...
[INFO] [0/Window_0] Initializing block control (NOC ID: 0xD053000000000000)
[WARNING] [RFNOC] Can't find a block controller for key FFT, using default =
block controller!
[INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
[WARNING] [RFNOC] Can't find a block controller for key fosphor, using defa=
ult block controller!
[INFO] [0/fosphor_0] Initializing block control (NOC ID: 0x666F000000000000=
)
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/fosphor_0] sr_write() failed: AssertionError: not _outstanding_seqs.emp=
ty()
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)1; uint64_t =3D long=
 long unsigned int]
  at /cache/workdir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/bui=
ld/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/git/ho=
st/lib/rfnoc/ctrl_iface.cpp:139

I was confused because I didn't include any fosphor block, but also because=
 of that dts file warning when loading.
So I rebuilt the bitstream, cleaning the previous environment (-c option) a=
nd including a FOSPHOR block, just in case by running:
$ ./uhd_image_builder.py fft window fosphor -d e310 -t E310_RFNOC_sg3 -m 8 =
--fill-with-fifos -c

Then I reloaded the new bitstream, and I got the same error.

So my questions are:
- Have you seen this error before? Any idea to fix it?
- Could that be related to the lack of dts file? If that's the case, how ca=
n I generate it?

Any help will be much appreciated.
Many thanks!

Francisco

PD:
My host's tools are:
$ uhd_config_info --print-all
UHD 3.15.0.git-71-g18bc320d
Build date: Wed, 25 Sep 2019 11:43:40
C compiler: GNU 6.3.0
C++ compiler: GNU 6.3.0
C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_=
LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR
C++ flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUH=
D_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -f=
visibility=3Dhidden -fvisibility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, USB, B1=
00, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320, E320, E300, OctoClock
Install prefix: ~/rfnoc
Boost version: 1.62
Libusb version: 1.0.23
Package path: ~/rfnoc
Images directory:
ABI version string: 3.15.0

The E312 tools are:
root@ni-e31x-30D84C7:~# uhd_config_info --print-all
UHD 3.15.0.0-0-gaea0e2de
Build date: Wed, 01 Jan 2020 07:56:24
C compiler: GNU 8.2.0
C++ compiler: GNU 8.2.0
C flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_ASIO_DISABLE_STD_STRING_VIE=
W -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED -DH=
AVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_=
FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -mth=
umb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9  --sysroot=3D/cache/w=
orkdir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/w=
ork/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot  -O2=
 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/cache/workdi=
r/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/c=
ortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=3D/usr/src/debug/uhd/3.1=
5.0.0-r0 -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/bui=
ld_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-muslea=
bi/uhd/3.15.0.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/cache/workdir/OE=
_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/corte=
xa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot-native=3D   -=
march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9  =
--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.=
0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=
/recipe-sysroot
C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_ASIO_DISABLE_STD_STRING_V=
IEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DUHD_RFNOC_ENABLED -=
DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LO=
G_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -m=
thumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9  --sysroot=3D/cache=
/workdir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl=
/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot  -=
O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/cache/work=
dir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work=
/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=3D/usr/src/debug/uhd/3=
.15.0.0-r0 -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/b=
uild_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musl=
eabi/uhd/3.15.0.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/cache/workdir/=
OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/cor=
texa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot-native=3D  =
-fvisibility-inlines-hidden  -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-=
abi=3Dhard -mcpu=3Dcortex-a9  --sysroot=3D/cache/workdir/OE_Fedora_25_64_0/=
build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-=
linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot -fvisibility=3Dhidden -fvisib=
ility-inlines-hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, LIBERIO=
, MPMD, N300, N320, E320, E300, OctoClock
Install prefix: /usr
Boost version: 1.68
Libusb version: N/A
Package path: /usr
Images directory: /usr/share/uhd/images
ABI version string: 3.15.0


--_000_MN2PR05MB615836FD69E9F479FBCF3A76CCDA0MN2PR05MB6158namp_
Content-Type: text/html; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 2=
55);">
<div style=3D"margin: 0px">BLOT: &nbsp;[ERROR] [MPMD] Failure during block =
enumeration: EnvironmentError: IOError when loading custom bitstream on E31=
2<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">Hello,<br>
</div>
<div style=3D"margin: 0px">I've built a custom bitstream for the E310 (with=
 blocks from library, no custom blocks) by using this commands:<br>
</div>
<div style=3D"margin: 0px">$ cd ~/rfnoc/src/uhd-fpga/usrp3/tools/scripts<br=
>
</div>
<div style=3D"margin: 0px">$ ./uhd_image_builder.py window fft -d e310 -t E=
310_RFNOC_sg3 -m 5 --fill-with-fifos<br>
</div>
<div style=3D"margin: 0px">More details about tools as postdata.<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">I found an issue during the building stage but m=
anaged to fix it as per described here: http://ettus.80997.x6.nabble.com/US=
RP-users-Default-RFNoC-image-for-N310-does-not-compile-td13951.html<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">Then, I flashed an E312 (same as E310 I guess) w=
ith sdcard image from http://files.ettus.com/binaries/cache/e3xx/meta-ettus=
-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15.0.0.zip<br>
</div>
<div style=3D"margin: 0px">The system runs OK, and uhd_usrp_probe shows no =
problem. Logging in over the serial port, I got several warnings about pote=
ntial memory leaks (like &quot;WARNING: memory leak will occur if overlay r=
emoved, property: /__symbols__/devctrl&quot;),
 but I guess that's unrelated. So far so good. Embedded UHD versions copied=
 as postdata, but it's basically what you get from the sdcard image, I have=
n't changed anything.<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">So I copied my new bitstream to the E312, and to=
 loaded it, with a few warnings, the main one related to a DTS file&nbsp; n=
ot found:<br>
</div>
<div style=3D"margin: 0px">root@ni-e31x-30D84C7:~# uhd_image_loader --fpga-=
path=3D/tmp/e31x.bit &nbsp;--args=3D&quot;type=3De3xx,reset&quot;<br>
</div>
<div style=3D"margin: 0px">[INFO] [UHD] linux; GNU C&#43;&#43; version 8.2.=
0; Boost_106800; UHD_3.15.0.0-0-gaea0e2de<br>
</div>
<div style=3D"margin: 0px">[INFO] [MPMD] Initializing 1 device(s) in parall=
el with args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=
=3D30D84C7,claimed=3DFalse,skip_init=3D1<br>
</div>
<div style=3D"margin: 0px">...<br>
</div>
<div style=3D"margin: 0px">WARNING] [MPMD IMAGE LOADER] RuntimeError: Compo=
nent file does not exist: /tmp/e31x.dts<br>
</div>
<div style=3D"margin: 0px">[WARNING] [MPM.PeriphManager] Skipping HW/SW com=
patibility check!<br>
</div>
<div style=3D"margin: 0px">[WARNING] [MPM.GPSDIface] Could not connect to G=
PSd! None of the GPS sensors will work!<br>
</div>
<div style=3D"margin: 0px">...<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">And then, I got this error trying uhd_usrp_probe=
:<br>
</div>
<div style=3D"margin: 0px">root@ni-e31x-30D84C7:~# uhd_usrp_probe<br>
</div>
<div style=3D"margin: 0px">...</div>
<div style=3D"margin: 0px">[INFO] [0/Window_0] Initializing block control (=
NOC ID: 0xD053000000000000)<br>
</div>
<div style=3D"margin: 0px">[WARNING] [RFNOC] Can't find a block controller =
for key FFT, using default block controller!<br>
</div>
<div style=3D"margin: 0px">[INFO] [0/FFT_0] Initializing block control (NOC=
 ID: 0xFF70000000000000)<br>
</div>
<div style=3D"margin: 0px">[WARNING] [RFNOC] Can't find a block controller =
for key fosphor, using default block controller!<br>
</div>
<div style=3D"margin: 0px">[INFO] [0/fosphor_0] Initializing block control =
(NOC ID: 0x666F000000000000)<br>
</div>
<div style=3D"margin: 0px">[ERROR] [MPMD] Failure during block enumeration:=
 EnvironmentError: IOError: [0/fosphor_0] sr_write() failed: AssertionError=
: not _outstanding_seqs.empty()<br>
</div>
<div style=3D"margin: 0px">&nbsp; in uint64_t ctrl_iface_impl&lt;_endiannes=
s&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endianness =3D (=
uhd::endianness_t)1; uint64_t =3D long long unsigned int]<br>
</div>
<div style=3D"margin: 0px">&nbsp; at /cache/workdir/OE_Fedora_25_64_0/build=
_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux=
-musleabi/uhd/3.15.0.0-r0/git/host/lib/rfnoc/ctrl_iface.cpp:139<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">I was confused because I didn't include any fosp=
hor block, but also because of that dts file warning when loading.<br>
</div>
<div style=3D"margin: 0px">So I rebuilt the bitstream, cleaning the previou=
s environment (-c option) and including a FOSPHOR block, just in case by ru=
nning:</div>
<div style=3D"margin: 0px"><span>$ ./uhd_image_builder.py fft window fospho=
r -d e310 -t E310_RFNOC_sg3 -m 8 --fill-with-fifos -c<br>
</span><span></span><br>
</div>
<div style=3D"margin: 0px">Then I reloaded the new bitstream, and I got the=
 same error.</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">So my questions are:<br>
</div>
<div style=3D"margin: 0px">- Have you seen this error before? Any idea to f=
ix it?<br>
</div>
<div style=3D"margin: 0px">- Could that be related to the lack of dts file?=
 If that's the case, how can I generate it?<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">Any help will be much appreciated.</div>
<div style=3D"margin: 0px">Many thanks!<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">Francisco<br>
</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">PD:</div>
<div style=3D"margin: 0px">My host's tools are:<br>
</div>
<div style=3D"margin: 0px"><span style=3D"margin: 0px">$ uhd_config_info --=
print-all<br>
</span>
<div style=3D"margin: 0px">UHD 3.15.0.git-71-g18bc320d<br>
</div>
<div style=3D"margin: 0px">Build date: Wed, 25 Sep 2019 11:43:40<br>
</div>
<div style=3D"margin: 0px">C compiler: GNU 6.3.0<br>
</div>
<div style=3D"margin: 0px">C&#43;&#43; compiler: GNU 6.3.0<br>
</div>
<div style=3D"margin: 0px">C flags: -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DU=
HD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -=
DUHD_LOG_CONSOLE_COLOR<br>
</div>
<div style=3D"margin: 0px">C&#43;&#43; flags: -DUHD_RFNOC_ENABLED -DHAVE_CO=
NFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_L=
EVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -fvisibility=3Dhidden -fvisibility-inlines=
-hidden<br>
</div>
<div style=3D"margin: 0px">Enabled components: LibUHD, LibUHD - C API, Exam=
ples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, =
N320, E320, E300, OctoClock<br>
</div>
<div style=3D"margin: 0px">Install prefix: ~/rfnoc<br>
</div>
<div style=3D"margin: 0px">Boost version: 1.62<br>
</div>
<div style=3D"margin: 0px">Libusb version: 1.0.23<br>
</div>
<div style=3D"margin: 0px">Package path: ~/rfnoc<br>
</div>
<div style=3D"margin: 0px">Images directory:<br>
</div>
<span style=3D"margin: 0px">ABI version string: 3.15.0</span><br>
</div>
<div style=3D"margin: 0px"><span style=3D"margin: 0px"><br>
</span></div>
<span style=3D"margin: 0px">The E312 tools are:</span><br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 2=
55);">
<span style=3D"margin: 0px">
<div style=3D"margin: 0px">root@ni-e31x-30D84C7:~# uhd_config_info --print-=
all<br>
</div>
<div style=3D"margin: 0px">UHD 3.15.0.0-0-gaea0e2de<br>
</div>
<div style=3D"margin: 0px">Build date: Wed, 01 Jan 2020 07:56:24<br>
</div>
<div style=3D"margin: 0px">C compiler: GNU 8.2.0<br>
</div>
<div style=3D"margin: 0px">C&#43;&#43; compiler: GNU 8.2.0<br>
</div>
<div style=3D"margin: 0px">C flags: -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_=
ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_V=
IEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_C=
ONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2
 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -mthumb -mfpu=3Dne=
on -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 &nbsp;--sysroot=3D/cache/workdir/OE=
_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/corte=
xa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
 &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ca=
che/workdir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-m=
usl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=3D/usr/src/deb=
ug/uhd/3.15.0.0-r0 -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/bu=
ild_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-li=
nux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=3D
 -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e310_=
sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3=
.15.0.0-r0/recipe-sysroot-native=3D &nbsp; -march=3Darmv7-a -mthumb -mfpu=
=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 &nbsp;--sysroot=3D/cache/workd=
ir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/=
cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot<br>
</div>
<div style=3D"margin: 0px">C&#43;&#43; flags: -DBOOST_ERROR_CODE_HEADER_ONL=
Y -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ASIO_DISABLE_STD_EXPERIMENTA=
L_STRING_VIEW -DUHD_RFNOC_ENABLED -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -=
DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2
 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBERIO -march=3Darmv7-a -mthumb -mfpu=3Dne=
on -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 &nbsp;--sysroot=3D/cache/workdir/OE=
_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/corte=
xa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot
 &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ca=
che/workdir/OE_Fedora_25_64_0/build_oe/build_e310_sg3_v3.15.0.0/build/tmp-m=
usl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3.15.0.0-r0=3D/usr/src/deb=
ug/uhd/3.15.0.0-r0 -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/bu=
ild_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-li=
nux-musleabi/uhd/3.15.0.0-r0/recipe-sysroot=3D
 -fdebug-prefix-map=3D/cache/workdir/OE_Fedora_25_64_0/build_oe/build_e310_=
sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux-musleabi/uhd/3=
.15.0.0-r0/recipe-sysroot-native=3D &nbsp;-fvisibility-inlines-hidden &nbsp=
;-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard
 -mcpu=3Dcortex-a9 &nbsp;--sysroot=3D/cache/workdir/OE_Fedora_25_64_0/build=
_oe/build_e310_sg3_v3.15.0.0/build/tmp-musl/work/cortexa9t2hf-neon-oe-linux=
-musleabi/uhd/3.15.0.0-r0/recipe-sysroot -fvisibility=3Dhidden -fvisibility=
-inlines-hidden<br>
</div>
<div style=3D"margin: 0px">Enabled components: LibUHD, LibUHD - C API, Exam=
ples, Utils, Tests, LIBERIO, MPMD, N300, N320, E320, E300, OctoClock<br>
</div>
<div style=3D"margin: 0px">Install prefix: /usr<br>
</div>
<div style=3D"margin: 0px">Boost version: 1.68<br>
</div>
<div style=3D"margin: 0px">Libusb version: N/A<br>
</div>
<div style=3D"margin: 0px">Package path: /usr<br>
</div>
<div style=3D"margin: 0px">Images directory: /usr/share/uhd/images<br>
</div>
<div style=3D"margin: 0px">ABI version string: 3.15.0</div>
</span></div>
<br>
</div>
</body>
</html>

--_000_MN2PR05MB615836FD69E9F479FBCF3A76CCDA0MN2PR05MB6158namp_--



--===============0160162807330962763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0160162807330962763==--


