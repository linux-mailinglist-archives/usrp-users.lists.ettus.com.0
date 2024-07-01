Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A5891E260
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 16:27:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C2AB385535
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 10:27:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719844049; bh=UtM2tF1w4on9Qzlj2nTLVMjcNPBQtRlSpyQsBH84FJE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mgpTtSNCE1kM9bUG1GvKwG0iGPoShioR7k7EI+Koj458FL0MBIKNy05AeKwi3fh+s
	 ZwZ3qS5PN5oNq9rT7/+4U9ElHgrzF8qr6aUoubjomFTI4ieMBq0iEY1hwSFDS4i32p
	 WGbrxKm4KkN7LRAKLZwvQzUrzXi6FwJTciRHmMXElOyc21Xq9d6LWHf/MzFFtA1z/A
	 S2PvmWXwCVPU8feIl5vPcyISdZGMNbtffXhjhRz0rZjpzWDpB7FqnK8CJ0YzH5g/E2
	 rBOBczUjSniM98I+b1qgVjYL84SHi9hNE1nBm+ZjZsD6C6R+mOB+UJoGQUEWG9uK6a
	 CxP6iq/vyxxHQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46E7E385356
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 10:27:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719844043; bh=iXuo2I78ls5WCi9eGDCXtoK3MsGqLTtXnNJu27/rnjA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YomNa9fQehDJBFTehtHcajrPjwvHKufd/6PK4JrX7/it/yFSpjhLR8JgDHYhAJ4sF
	 K48CYiSNRSXjKfEM+sgw79tNQ9gCH2MAgnLj+pWBPcAs7HJSU+/fnBDwbfzW841o+6
	 Q34F6UA4x2JQKQOBaFtwkwdK7i3r+ahGT/HsOr8ibEwUhbynf8/8tigCeqP+/TkUNz
	 EKuHz6NN2c7CnbiFGAV3DlLrfsOpdqSVexztKeCEj9TuTaKrdWk62e5RGOViBpfVmU
	 OeaIOzbUS98a1xmDUu1Gwy4LExs7JsX6q+/amD/nFUkj5OJSQM7wr8Ka2Nd2o0ITQy
	 7seKzDml0eDQQ==
Date: Mon, 1 Jul 2024 14:27:23 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <63Ghf05Ibxp40J1j3KPXy69KPEzVIcgc4DQskuYdqw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b938ab03-a170-4391-b379-b55dcce97518@gmail.com
MIME-Version: 1.0
Message-ID-Hash: XQ37MBZRQKIJCD4F4NVHABKSF5SHO6WG
X-Message-ID-Hash: XQ37MBZRQKIJCD4F4NVHABKSF5SHO6WG
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQ37MBZRQKIJCD4F4NVHABKSF5SHO6WG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7974598265568358656=="

This is a multi-part message in MIME format.

--===============7974598265568358656==
Content-Type: multipart/alternative;
 boundary="b1_63Ghf05Ibxp40J1j3KPXy69KPEzVIcgc4DQskuYdqw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_63Ghf05Ibxp40J1j3KPXy69KPEzVIcgc4DQskuYdqw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I went back and looked at the 2974=E2=80=A6. Got it.  It=E2=80=99s one x3=
10 with 2 interfaces (30.2, 40.2), so it would make sense that the second=
 instance doesn=E2=80=99t work.  Thank you.

In regards to the 8000 MTU, I set this up on the server (directly connect=
ed to 30.2), I still get the same trickle of S=E2=80=99s at low sps of 6.=
25M.

Here are the results of an Rx at 200e6, a Tx at 200e6, Tx 6.25e6, Tx 1.0e=
6.  So strange that I get out of sequence at 6.25

```
~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --rx_rate=3D200e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000198] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.370079690] Setting device timestamp to 0...
[00:00:03.372464052] Testing receive rate 200.000000 Msps on 1 channels
[00:00:33.373075031] Benchmark complete.


Benchmark rate summary:
  Num received samples:     6000007360
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

~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --tx_rate=3D200e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000157] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.415515038] Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1996
[00:00:03.418182017] Testing transmit rate 200.000000 Msps on 1 channels
USSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSS[00:00:33.419713489] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  6000235480
  Num sequence errors (Tx): 76
  Num sequence errors (Rx): 0
  Num underruns detected:   1
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --tx_rate=3D6.25e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000187] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.350475486] Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1996
[00:00:03.353129760] Testing transmit rate 6.250000 Msps on 1 channels
SSSSS[00:00:33.375330149] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  187641964
  Num sequence errors (Tx): 5
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --tx_rate=3D1e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000162] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.351625101] Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1996
[00:00:03.354355919] Testing transmit rate 1.000000 Msps on 1 channels
[00:00:33.473151517] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  30117644
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!
```

--b1_63Ghf05Ibxp40J1j3KPXy69KPEzVIcgc4DQskuYdqw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I went back and looked at the 2974=E2=80=A6. Got it.  It=E2=80=99s one=
 x310 with 2 interfaces (30.2, 40.2), so it would make sense that the sec=
ond instance doesn=E2=80=99t work.  Thank you.</p><p>In regards to the 80=
00 MTU, I set this up on the server (directly connected to 30.2), I still=
 get the same trickle of S=E2=80=99s at low sps of 6.25M.</p><p>Here are =
the results of an Rx at 200e6, a Tx at 200e6, Tx 6.25e6, Tx 1.0e6.  So st=
range that I get out of sequence at 6.25</p><p><br></p><pre><code>~/uhd_v=
ersions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D"type=3D=
x300,addr=3D192.168.30.2" --rx_rate=3D200e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000198] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.370079690] Setting device timestamp to 0...
[00:00:03.372464052] Testing receive rate 200.000000 Msps on 1 channels
[00:00:33.373075031] Benchmark complete.


Benchmark rate summary:
  Num received samples:     6000007360
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

~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --tx_rate=3D200e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000157] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.415515038] Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1996
[00:00:03.418182017] Testing transmit rate 200.000000 Msps on 1 channels
USSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSS[00:00:33.419713489] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  6000235480
  Num sequence errors (Tx): 76
  Num sequence errors (Rx): 0
  Num underruns detected:   1
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --tx_rate=3D6.25e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000187] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.350475486] Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1996
[00:00:03.353129760] Testing transmit rate 6.250000 Msps on 1 channels
SSSSS[00:00:33.375330149] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  187641964
  Num sequence errors (Tx): 5
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./benchmark_rate --args=3D=
"type=3Dx300,addr=3D192.168.30.2" --tx_rate=3D1e6 --duration=3D30

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[00:00:00.000162] Creating the usrp device with: type=3Dx300,addr=3D192.1=
68.30.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:03.351625101] Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1996
[00:00:03.354355919] Testing transmit rate 1.000000 Msps on 1 channels
[00:00:33.473151517] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  30117644
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!</code></pre>


--b1_63Ghf05Ibxp40J1j3KPXy69KPEzVIcgc4DQskuYdqw--

--===============7974598265568358656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7974598265568358656==--
