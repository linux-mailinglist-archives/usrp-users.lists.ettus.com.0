Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70994282F2B
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 05:54:37 +0200 (CEST)
Received: from [::1] (port=36026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPHa8-00079G-3W; Sun, 04 Oct 2020 23:54:36 -0400
Received: from mail-bn7nam10olkn2043.outbound.protection.outlook.com
 ([40.92.40.43]:29281 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <arthurlobo@msn.com>) id 1kPHa3-00071l-DT
 for usrp-users@lists.ettus.com; Sun, 04 Oct 2020 23:54:31 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9mMDcW3Ewx+3FeWGovPs2e5QJWu/W/Uzec2hQKqqKJH3wWwuBOxZ5LkAqGmSl1d44NlNS5/qEVOagOHAlSC+F+x9RwAQ9FTWnrvqzN19LFtOWlJlfmRvtx0xoTGB5H+YpQsPq7aIQ/tFS2UsiQoqpvxzUNrzVT2tRxraWcr8jngjW4xOtqZrvA1l01V6qIOfzxzQNLmUt8mwCVJg3d3E/I2Q/5rxnUzGIsTp21S00s+cL2WFVXx8jfA39gWYhToJTybpTC95G5jFwXyS7JqkakKEtRpO/bO2jikkK29T9Kj74W9Q/Hi8WnvZJWUW+5zPvRGT+KWU3hhr+hBZnfN7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZQ4OBi/mfXnqAhk0DL+rQs0PueFs0pTKvokVXTYV+w=;
 b=divERrt364ggPvL/nbldErfO9kFyOtZpuN6sJ4Hh8hHuMmbKZIXD2sMQjOJqt9MSbTERAxAHoJxkoaOLV2JpycWUtBRR7RAQkOAxB3X4FuAqDpMzLd5Gf1gfPjMr0yoYWGTGdfAptLb31t8jx8JwjwHNV1+SVH/ecZwYd1cq92kBOMFqN4FR9h9McZiqLOzuO1QOEaZUeYxe0sUU1vgrvwMlFYDCeI+6kD3q4n981Im0uZ0Xu+C9eZUdBSqPhh1SYfjEXt0Pd2MjDOhzfACup3ATjSBBx9T3kF+BzRobEhg77GiAZ8egdCJK5P/KiTADIjbEjQl4vpEJD55G+W4f+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZQ4OBi/mfXnqAhk0DL+rQs0PueFs0pTKvokVXTYV+w=;
 b=u2/MjZERvt5ZkaalN5t++/Fz0rRLhnVI4T12wPI5Xr5Nu2izHrX3q/4ENz+87oYaeDE4Y6VnJIZf3U+L9pXd5q+tEQO6rwXnwpZiG94yvK7QVwy/Rld2hbDYV5LxtjBSVDdPzMxOr2tv4RB3oDlmlRdky4zNnGAXDh71q645gMq1lfWrJnvgyLmSFOn12qBZsz9wdnNpabyg7gGPBMOC8CAm1LI8ESPriYIdCrKthOa4yKqosnD0KuTv8bI9/kCYSHcmVhVOFa5ySHw5+1UKRXyUVHdG5TJ6L2AtG2bs7urZci4VbFJV+CxvaJhghzYHCvpForkvG5poPE/shHo5LQ==
Received: from MW2NAM10FT055.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e87::42) by
 MW2NAM10HT204.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e87::327)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.21; Mon, 5 Oct
 2020 03:53:30 +0000
Received: from DM5PR16MB1451.namprd16.prod.outlook.com
 (2a01:111:e400:7e87::4b) by MW2NAM10FT055.mail.protection.outlook.com
 (2a01:111:e400:7e87::341) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34 via Frontend
 Transport; Mon, 5 Oct 2020 03:53:30 +0000
Received: from DM5PR16MB1451.namprd16.prod.outlook.com
 ([fe80::2860:e2c2:2512:1a43]) by DM5PR16MB1451.namprd16.prod.outlook.com
 ([fe80::2860:e2c2:2512:1a43%11]) with mapi id 15.20.3433.044; Mon, 5 Oct 2020
 03:53:30 +0000
To: Ron Economos <w6rz@comcast.net>, "Marcus D. Leech"
 <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Raspberry Pi 4B and B205mini
Thread-Index: AQHWlrs54yGjeCni10GwDyJVFdJqNamApiuAgAfBQ5w=
Date: Mon, 5 Oct 2020 03:53:30 +0000
Message-ID: <DM5PR16MB145187CC2535EAC49B94320AC30C0@DM5PR16MB1451.namprd16.prod.outlook.com>
References: <DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com>,
 <c12ade38-b926-9cc7-0e39-74bce2543dae@comcast.net>
In-Reply-To: <c12ade38-b926-9cc7-0e39-74bce2543dae@comcast.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DC3136DEE88E0A0EFBCDCE5C45A77DBC2C1CDF9B74B41CC018AFB1E5F3CA94F1;
 UpperCasedChecksum:9CED33E9012221C15F5D2ABFC9341EF5670AF07898F483971498A786DA9E2A6C;
 SizeAsReceived:6998; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [SMce0dvkRWWmPJecKV9Gkt/pLuDnsAA7]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b513ed18-ffed-4d1d-0d2e-08d868e23912
x-ms-traffictypediagnostic: MW2NAM10HT204:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ay9HEPslDyO6UuUFqRnahr0krfVfDbfuyKKghr/e/p2KvEqEk4c0uTn11wWDi5MAGUVitkPfuXqxdi2u29UD45J7U8EI0ky0vdeooM4lLF6QSsQRQ5u7n0oiasUbCDpKDx4LScDjYGFmcwA9U/bgzF3QYVCtuxx0v7Fx9D/qZ+4h6CWRTTF2OTBemqy2ZqGVrtKDdXhvmQHMbhTiYeY9drNZiMYs/NiQNIK8ikxtuAoJciJ7tGD+jzwRU9FSGlcz
x-ms-exchange-antispam-messagedata: Wh/0/+T1E6xfyTEROAn1gz32HjXva33mYi+ElmIoRHqOrywZo3COu8jxtkpjVRwBCNBi69OQqUbpMq/9wVpawGXzSb/BbWErdzzyGWo3sOd4wF/P89uR8T/+82hh3V+n705J2gymrpiv8SjpTPFArQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT055.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b513ed18-ffed-4d1d-0d2e-08d868e23912
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2020 03:53:30.1797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT204
Subject: Re: [USRP-users] Raspberry Pi 4B and B205mini
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Arthur Lobo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arthur Lobo <arthurlobo@msn.com>
Content-Type: multipart/mixed; boundary="===============1796081567399609082=="
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

--===============1796081567399609082==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR16MB145187CC2535EAC49B94320AC30C0DM5PR16MB1451namp_"

--_000_DM5PR16MB145187CC2535EAC49B94320AC30C0DM5PR16MB1451namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus/Ron:

I built gcc 10.1 from source with the following compiler options in the .cm=
ake file:
set(CMAKE_CXX_FLAGS "-march=3Darmv8-a -mtune=3Dcortex-a72" CACHE STRING "" =
FORCE)
(Ref "New Major Release of GCC" https://www.raspberrypi.org/forums/viewtopi=
c.php?t=3D273441)
The other options "-mfpu=3Dneon-fp-armv8 -mfloat-abi=3Dhard" are not taken.
Benchmark_rate now runs at 30 MSPS for 900 sec (output as follows):

[INFO] [UHD] linux; GNU C++ version 10.1.0; Boost_107100; UHD_4.0.0.HEAD-0-=
g90ce6062
[00:00:00.022222] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B205mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B205mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:01.927367201] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 30.000000 MHz...
[INFO] [B200] Actually got clock rate 30.000000 MHz.
[00:00:02.244691822] Testing receive rate 30.000000 Msps on 1 channels
[00:15:02.295329970] Benchmark complete.


Benchmark rate summary:
  Num received samples:     27001584054
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!


real 15m2.837s
user 3m35.016s
sys 10m32.291s


Benchmark_rate at 40 MSPS still causes ERROR_CODE_TIMEOUT messages after ~1=
 min 15 sec.

With Device Arguments set to "recv_frame_size=3D16360,num_recv_frames=3D128=
" and
Realtime Scheduling turned on in the Options Block, the GRC block approach =
with
Qt GUI Frequency Sink runs upto 40 MSPS with a 1024-point FFT spectrum disp=
lay refresh rate of ~1 per sec with wireless X forwarding.
Connecting a monitor instead of X forwarding allows upto 35 MSPS (complex i=
nt16) with combined Qt GUI Frequency Sink and waterfall
and an update rate of ~3 per sec.

uhd_fft freezes at 8 MSPS.

Thanks.

Arthur

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Ron Econ=
omos via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, September 30, 2020 5:23 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Raspberry Pi 4B and B205mini


Just for comparison, I can easily do 10 Msps with a Beagleboard X-15 and B2=
10. Also, benchmark_rate works fine at 20 Msps. This is without Thread Prio=
rity Scheduling.


I'm also using X forwarding (with a wired 1 Gbps Ethernet connection). The =
GUI Frequency Sink is sending 120 Mbps over the network.


Some items I'm using.


1) "recv_frame_size=3D16360, num_recv_frames=3D128" in the UHD USRP Source =
block

Device Address.


2) I'm building UHD with specific NEON flags. The Beagleboard X-15 has a 2-=
core 32-bit armv7 processor at 1.5 GHz.


cmake -DCMAKE_CXX_FLAGS:STRING=3D"-march=3Darmv7ve -mfloat-abi=3Dhard -mfpu=
=3Dneon-vfpv4 -mtune=3Dcortex-a15 -Wno-psabi" -DCMAKE_C_FLAGS:STRING=3D"-ma=
rch=3Darmv7ve -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-a15 -Wn=
o-psabi" -DCMAKE_ASM_FLAGS:STRING=3D"-march=3Darmv7ve -mfloat-abi=3Dhard -m=
fpu=3Dneon-vfpv4 -mtune=3Dcortex-a15 -g" ../


You could try some other options for the Pi4, especially if you're using a =
64-bit OS.


-march=3Darmv8-a or -march=3Dnative

-mtune=3Dcortex-a72

-mfpu=3Dneon-fp-armv8


Unfortunately, I don't have a Pi4 test these options with.


Ron


On 9/29/20 17:00, Arthur Lobo via USRP-users wrote:
Hi All:

I installed UHD 4.0 and GRC 3.9 on a Raspberry Pi 4B following the procedur=
e at:
https://wiki.gnuradio.org/index.php/InstallingGRFromSource_on_Raspberry_Pi
However I did not specify DNEON_SIMD_ENABLE=3DOFF in the command cmake -DNE=
ON_SIMD_ENABLE=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr/local ../
while building UHD.
I also set the CPU Governor and Thread Priority Scheduling according to:
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

Testing USRP Source->Frequency Sink in GRC at 4 MSPS with a B205mini on a h=
eadless RPI (X forwarding to
a NUC7i7BNH PC) over USB3 shows an update rate (spectrum refresh rate on th=
e display) of once per second and at 10 MSPS freezes.

Running benchmark_rate at 20 MSPS will cause ERROR_CODE_TIMEOUT messages.

I also overclocked the RPi4B to 2.2 GHz with the same result.

Any suggestions to get higher sampling rates with the RPi4B-B205mini setup?

Thanks.

Arthur



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_000_DM5PR16MB145187CC2535EAC49B94320AC30C0DM5PR16MB1451namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hi Marcus/Ron:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div><br>
</div>
<div>I built gcc 10.1 from source with the following compiler options in th=
e .cmake file:</div>
<div>set(CMAKE_CXX_FLAGS &quot;-march=3Darmv8-a -mtune=3Dcortex-a72&quot; C=
ACHE STRING &quot;&quot; FORCE)</div>
<div>(Ref &quot;New Major Release of GCC&quot; https://www.raspberrypi.org/=
forums/viewtopic.php?t=3D273441)</div>
<div>The other options &quot;-mfpu=3Dneon-fp-armv8 -mfloat-abi=3Dhard&quot;=
 are not taken. </div>
<div>Benchmark_rate now runs at 30 MSPS for 900 sec (output as follows):</d=
iv>
<div><br>
</div>
<div>[INFO] [UHD] linux; GNU C++ version 10.1.0; Boost_107100; UHD_4.0.0.HE=
AD-0-g90ce6062</div>
<div>[00:00:00.022222] Creating the usrp device with: ...</div>
<div>[INFO] [B200] Detected Device: B205mini</div>
<div>[INFO] [B200] Operating over USB 3.</div>
<div>[INFO] [B200] Initialize CODEC control...</div>
<div>[INFO] [B200] Initialize Radio control...</div>
<div>[INFO] [B200] Performing register loopback test... </div>
<div>[INFO] [B200] Register loopback test passed</div>
<div>[INFO] [B200] Setting master clock rate selection to 'automatic'.</div=
>
<div>[INFO] [B200] Asking for clock rate 16.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 16.000000 MHz.</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: B-Series Device</div>
<div>&nbsp; Mboard 0: B205mini</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: FE-RX1</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: FE-TX1</div>
<div><br>
</div>
<div>[00:00:01.927367201] Setting device timestamp to 0...</div>
<div>[INFO] [B200] Asking for clock rate 30.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 30.000000 MHz.</div>
<div>[00:00:02.244691822] Testing receive rate 30.000000 Msps on 1 channels=
</div>
<div>[00:15:02.295329970] Benchmark complete.</div>
<div><br>
</div>
<div><br>
</div>
<div>Benchmark rate summary:</div>
<div>&nbsp; Num received samples: &nbsp; &nbsp; 27001584054</div>
<div>&nbsp; Num dropped samples: &nbsp; &nbsp; &nbsp;0</div>
<div>&nbsp; Num overruns detected: &nbsp; &nbsp;0</div>
<div>&nbsp; Num transmitted samples: &nbsp;0</div>
<div>&nbsp; Num sequence errors (Tx): 0</div>
<div>&nbsp; Num sequence errors (Rx): 0</div>
<div>&nbsp; Num underruns detected: &nbsp; 0</div>
<div>&nbsp; Num late commands: &nbsp; &nbsp; &nbsp; &nbsp;0</div>
<div>&nbsp; Num timeouts (Tx): &nbsp; &nbsp; &nbsp; &nbsp;0</div>
<div>&nbsp; Num timeouts (Rx): &nbsp; &nbsp; &nbsp; &nbsp;0</div>
<div><br>
</div>
<div><br>
</div>
<div>Done!</div>
<div><br>
</div>
<div><br>
</div>
<div>real 15m2.837s</div>
<div>user 3m35.016s</div>
<div>sys 10m32.291s</div>
<div><br>
</div>
<div><br>
</div>
<div>Benchmark_rate at 40 MSPS still causes ERROR_CODE_TIMEOUT messages aft=
er ~1 min 15 sec.</div>
<div><br>
</div>
<div>With Device Arguments set to &quot;recv_frame_size=3D16360,num_recv_fr=
ames=3D128&quot; and
</div>
<div>Realtime Scheduling turned on in the Options Block, the GRC block appr=
oach with
</div>
<div>Qt GUI Frequency Sink runs upto 40 MSPS with a 1024-point FFT spectrum=
 display refresh rate of ~1 per sec with wireless X forwarding.</div>
<div>Connecting a monitor instead of X forwarding allows upto 35 MSPS (comp=
lex int16) with combined Qt GUI Frequency Sink and waterfall</div>
<div>and an update rate of ~3 per sec.</div>
<div><br>
</div>
<div>uhd_fft freezes at 8 MSPS.</div>
<div><br>
</div>
<div>Thanks.</div>
<div><br>
</div>
Arthur<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Ron Economos via USRP-users=
 &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, September 30, 2020 5:23 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Raspberry Pi 4B and B205mini</font>
<div>&nbsp;</div>
</div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Just for comparison, I ca=
n easily do 10 Msps with a Beagleboard X-15 and B210. Also, benchmark_rate =
works fine at 20 Msps. This is without Thread Priority Scheduling.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I'm also using X forwardi=
ng (with a wired 1 Gbps Ethernet connection). The GUI Frequency Sink is sen=
ding 120 Mbps over the network.<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Some items I'm using.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">1) &quot;recv_frame_size=
=3D16360, num_recv_frames=3D128&quot; in the UHD USRP Source block</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Device Address.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">2) I'm building UHD with =
specific NEON flags. The Beagleboard X-15 has a 2-core 32-bit armv7 process=
or at 1.5 GHz.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">cmake -DCMAKE_CXX_FLAGS:S=
TRING=3D&quot;-march=3Darmv7ve -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=
=3Dcortex-a15 -Wno-psabi&quot; -DCMAKE_C_FLAGS:STRING=3D&quot;-march=3Darmv=
7ve -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-a15 -Wno-psabi&qu=
ot;
 -DCMAKE_ASM_FLAGS:STRING=3D&quot;-march=3Darmv7ve -mfloat-abi=3Dhard -mfpu=
=3Dneon-vfpv4 -mtune=3Dcortex-a15 -g&quot; ../</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">You could try some other =
options for the Pi4, especially if you're using a 64-bit OS.<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">-march=3Darmv8-a or -marc=
h=3Dnative</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">-mtune=3Dcortex-a72</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">-mfpu=3Dneon-fp-armv8</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Unfortunately, I don't ha=
ve a Pi4 test these options with.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Ron<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<div class=3D"x_moz-cite-prefix">On 9/29/20 17:00, Arthur Lobo via USRP-use=
rs wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Hi All:
<div><br>
</div>
<div>I installed UHD 4.0 and GRC 3.9 on a Raspberry Pi 4B following the pro=
cedure at:</div>
<div><a class=3D"x_moz-txt-link-freetext" href=3D"https://wiki.gnuradio.org=
/index.php/InstallingGRFromSource_on_Raspberry_Pi">https://wiki.gnuradio.or=
g/index.php/InstallingGRFromSource_on_Raspberry_Pi</a></div>
<div>However I did not specify DNEON_SIMD_ENABLE=3DOFF in the command cmake=
 -DNEON_SIMD_ENABLE=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr/local ../</div>
<div>while building UHD.</div>
<div>I also set the CPU Governor and Thread Priority Scheduling according t=
o:</div>
<div><a class=3D"x_moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP=
_Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_Pe=
rformance_Tuning_Tips_and_Tricks</a></div>
<div><br>
</div>
<div>Testing USRP Source-&gt;Frequency Sink in GRC at 4 MSPS with a B205min=
i on a headless RPI (X forwarding to</div>
<div>a NUC7i7BNH PC) over USB3 shows an update rate (spectrum refresh rate =
on the display) of once per second and at 10 MSPS freezes.</div>
<div><br>
</div>
<div>Running benchmark_rate at 20 MSPS will cause ERROR_CODE_TIMEOUT messag=
es.</div>
<div><br>
</div>
<div>I also overclocked the RPi4B to 2.2 GHz with the same result.</div>
<div><br>
</div>
<div>Any suggestions to get higher sampling rates with the RPi4B-B205mini s=
etup?</div>
<div><br>
</div>
Thanks.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
Arthur<br>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___=0A=
USRP-users mailing list=0A=
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>=0A=
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>=0A=
</pre>
</blockquote>
</div>
</div>
</body>
</html>

--_000_DM5PR16MB145187CC2535EAC49B94320AC30C0DM5PR16MB1451namp_--


--===============1796081567399609082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1796081567399609082==--

