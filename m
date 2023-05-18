Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E919708285
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 15:18:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3B5438480A
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 09:18:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684415884; bh=jfn6aeQYI9NfDOQxb9dntVmN36B4rVL3HbbB64tyZJQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AEeG7XLYYgx3MvjONGeMY0MdygjqBKF/3XJraFYHDSdjKLxgR6psj24GyHy+UApwW
	 G4OcmhfKIkqdTiYFfKhZZxERu3mqBWoPw6IGgcfzDffSvXoEsqL0CKT51Jq7r0HpLc
	 Hm1X2C2CqhTmj6Kys7KRHz5yKQJxvRiavx7vEFrkbhkM94Wxyw8FwsxikGaaFvRFTu
	 7vjELjFrMt8/X7mmP3+EZtGphLdpkiBbFeQuo8davDolyXmjklZ9OpUlO04C/UXhPS
	 wsbjeZD4Vg/1NpbiQM11unSoJT6ZG1x6DEj7H+LDzU3OOJqSwWhLJfWFgWgVTNmysn
	 5ht1w4zTXjTWw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 986BF384663
	for <usrp-users@lists.ettus.com>; Thu, 18 May 2023 09:17:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684415821; bh=szJ3dibqThsPuXXR22ElTYih7mPcUIefkuOyR7ZzqyA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=QgvoVJvPLW+gyExoDncOQUJ10yVvDOoZuRC56LZRm6XbS3P7DQ+TSuBn43ZfaNkRI
	 RiAt57nQ7dgoA20vZPnx49hnVL/UqHg7FUhGXCuNTowot8l3vFW+4rD77xdV/qehqg
	 2CB33Mch3I+A1NDEXiE0tSitQEUykaOpkoNglvGi0WB7EOTsuMJ41ZJ/HZ44i2vzqb
	 KdD8E4G7KzfxbBZHEip5lIRHSwHspbQfLVkyJQShcPCbjmketragbBnh3xO6jh7LPV
	 DoRQsNvXTFj0AXJvKdjHM9mu9S20QK7lZGlzebPWKDS65ZVjKxnv32oBMxyi7Y4bqd
	 sjGRXbYJ6yFRQ==
Date: Thu, 18 May 2023 13:17:01 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: bfb8072d-774e-3e34-b604-bb9f7c6a0de6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2E72YMWCFS3IBNANOE6OAJPQ4MUPKYR6
X-Message-ID-Hash: 2E72YMWCFS3IBNANOE6OAJPQ4MUPKYR6
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2E72YMWCFS3IBNANOE6OAJPQ4MUPKYR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5029196157081236831=="

This is a multi-part message in MIME format.

--===============5029196157081236831==
Content-Type: multipart/alternative;
 boundary="b1_IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Any luck here?  Even when specifying the mac (no arp required), the FPGA =
still doesn=E2=80=99t send anything, though the control plane believes it=
 is.

Here is the log, but no stream being transmitted.

---

> ```
> cjohnson@demo:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --r=
ate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --des=
t-port=3D54321 --adapter=3D'sfp1' --dest-mac-addr=3D3c:ec:ef:c2:43:47
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjo=
hnson-fb-sdrx-68-g02558b69
> [TRACE] [MULTI_USRP] multi_usrp::make with args Empty Device Address
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 192.168.0.255 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 192.168.30.255 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 192.168.30.255 49600
> [TRACE] [UDP] Creating udp transport for 192.168.0.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.0.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
> [TRACE] [NIRIO] rpc_client connection request cancelled/aborted.
> [TRACE] [UHD] Device hash: 2306081079422837585
> [INFO] [X300] X300 initialization sequence...
> [DEBUG] [X300] Motherboard 0 has remote device ID: 1
> [DEBUG] [X300] Setting up basic communication...
> [TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
> [DEBUG] [X300] Using FPGA version: 39.1 git hash: 92c09f7
> [DEBUG] [X300] Loading values from EEPROM...
> [TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
> [TRACE] [UDP] Creating udp transport for 192.168.30.2 49158
> [DEBUG] [X300] Determining maximum frame size...=20
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [DEBUG] [X300] Setting up RF frontend clocking...
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D8, Requested=3D=
0.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coe=
rced Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D4, Requested=3D=
0.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coe=
rced Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D5, Requested=3D=
0.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coe=
rced Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D0, Requested=3D=
0.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coe=
rced Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D2, Requested=3D=
0.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coe=
rced Delay=3D0.000000ns
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [X300] Radio 1x clock: 200 MHz
> [DEBUG] [X300] Motherboard 0 has local device IDs:=20
> [DEBUG] [X300] * 2
> [TRACE] [UDP] Created UDP link to 192.168.30.2:49153
> [TRACE] [UDP] Local UDP socket endpoint: 192.168.30.1:46819
> [TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 byte=
s
> [TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 byte=
s
> [DEBUG] [RFNOC::MGMT] Starting topology discovery from device[local]:2/=
sep:1
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/xport:0
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/xbar:0
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/xbar:0
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:0
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:0
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:1
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:2
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:2
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:3
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:3
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:4
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:4
> [DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:5
> [DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:5
> [DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device=
[local]:2/sep:1
> [DEBUG] [RFNOC::MGMT] * 1:0
> [DEBUG] [RFNOC::MGMT] * 1:1
> [DEBUG] [RFNOC::MGMT] * 1:2
> [DEBUG] [RFNOC::MGMT] * 1:3
> [DEBUG] [RFNOC::MGMT] * 1:4
> [DEBUG] [RFNOC::MGMT] * 1:5
> [DEBUG] [RFNOC::LSM] Adding node device:1/xport:1 to topology graph out=
side of discovery.
> [DEBUG] [RFNOC::LSM] Adding transport adapter on xbar port 1
> [DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adap=
ter 0 (0 =3D no preference)...=20
> [DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=3D(1,0) to EPID=3D=
2
> [DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages cont=
rol messages on EPID 1
> [DEBUG] [RFNOC::MGMT] Established a route from EPID=3D1 (SW) to EPID=3D=
2
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
> [DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Dev=
ice 2. Using EPIDs 1 -> 2.
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
> [DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0': =
Expecting 0.1, actual: 0.1.
> [DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolatio=
n 255
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=3Dd=
0c00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
> [DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0': =
Expecting 0.1, actual: 0.1.
> [DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 2=
55
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=3Dd=
dc00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
> [DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#=
0': Expecting 0.1, actual: 0.1.
> [DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=3D16, Window=3D=
24, TapDelay=3D78.125ps, Iter=3D1)
> [TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D42.000000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095,=
 T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D=
4200.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D41.800000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D=
4180.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
> [TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D47.600000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D=
4760.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D47.400000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D=
4740.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
> [DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=3D=
12ad1000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
> [DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1': =
Expecting 0.1, actual: 0.1.
> [DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolatio=
n 255
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=3Dd=
0c00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
> [DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1': =
Expecting 0.1, actual: 0.1.
> [DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 2=
55
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=3Dd=
dc00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
> [DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#=
1': Expecting 0.1, actual: 0.1.
> [DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=3D20, Window=3D=
21, TapDelay=3D78.125ps, Iter=3D1)
> [TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D42.000000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095,=
 T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D=
4200.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D41.800000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D=
4180.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
> [TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D47.600000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D=
4760.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, =
fbdiv=3D47.400000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D=
4740.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
> [DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=3D=
12ad1000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
> [DEBUG] [0/Replay#0] Checking compat number for FPGA component `0/Repla=
y#0': Expecting 1.1, actual: 1.1.
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Replay#0 (NOC ID=3D=
4e91a000)
> [DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
> [DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
> [DEBUG] [0/DUC#1] Not setting frequency until sampling rate is set.
> [DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
> [DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
> [DEBUG] [0/DUC#0] Not setting frequency until sampling rate is set.
> [DEBUG] [0/Radio#0] Running ADC self-cal...
> [DEBUG] [0/Radio#1] Running ADC self-cal...
> Requesting sampling rate 200.0 Msps...
> Using sampling rate: 200.0 Msps.
> Requesting center frequency 1223.0 MHz...
> [TRACE] [MULTI_USRP] Frequency Range 0.000MHz->6080.000MHz
> Actual center frequency: 1223.0000032784735 MHz.
> Requesting gain 20.0 dB...
> [TRACE] [MULTI_USRP] Clipped RX frequency requested: 1223.000000MHz
> Actual gain: 20.0 dB.
> [TRACE] [MULTI_USRP] Target RF Freq: 1223.000000MHz
> Selected 0 RX channels.
> Generating RX streamer object...
> [TRACE] [UBX] UBX RX: the requested frequency is 1223.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D8.000000, =
fbdiv=3D24.460073
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D24, FRAC=3D1884, MOD=3D40=
95, T=3D0, D=3D0, RFdiv=3D4, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D1223.00, ACT=3D1223.00, VCO=3D=
4892.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX RX: the actual frequency is 1223.003663 MHz
> [TRACE] [MULTI_USRP] Target DSP Freq: 0.003663MHz
> [TRACE] [UBX] UBX RX Gain: 20.000000 dB, Code: 40, IO Bits 0xa000
> [DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
>   Input format:  sc16_chdr
>   Num inputs:    1
>   Output format: sc16
>   Num outputs:   1
>  Using best available prio: 0
> [TRACE] [UDP] Created UDP link to 192.168.30.2:49153
> [TRACE] [UDP] Local UDP socket endpoint: 192.168.30.1:36354
> [TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 byte=
s
> [TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 byte=
s
> [DEBUG] [RFNOC::MGMT] Established a route from EPID=3D3 (SW) to EPID=3D=
2
> [DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% (0x0)
> [DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3D2
> [DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3D2
> [DEBUG] [RFNOC::LSM] Remote stream is using different transport adapter=
 (device:1/xport:1) than local streamer object. Setting up remote route..=
.
> [DEBUG] [RFNOC::LSM] Adding virtual endpoint: device:2/virtual:3 (EPID:=
 3)
> [DEBUG] [DEBUG] /home/cjohnson/ettus_repo/uhd/host/lib/rfnoc/mgmt_porta=
l.cpp:385 (virtual void uhd::rfnoc::mgmt::mgmt_portal_impl::setup_remote_=
route(uhd::rfnoc::chdr_ctrl_xport&, const sep_id_t&, const sep_id_t&))
> [DEBUG] [RFNOC::MGMT] Programmed a route from EPID=3D1 to EPID=3D3
> [DEBUG] [RFNOC] Creating diverted RX stream with arguments: dest_addr=3D=
192.168.30.30,dest_port=3D54321,stream_mode=3Draw_payload,adapter=3Dsfp1,=
dest_mac_addr=3D3c:ec:ef:c2:43:47,enable_remote_stream=3D1,enable_fc=3D0
> [DEBUG] [X300::SFP1::TA_CTL] On transport adapter 1: Adding route from =
EPID 3 to destination 192.168.30.30:54321 (MAC Address: 3c:ec:ef:c2:43:47=
), stream mode RAW_PAYLOAD (1)
> Starting stream...
> Stream started. Press Ctrl-C to stop.
> [DEBUG] [0/Radio#0] spp value 2044 exceeds MTU of 8000! Coercing to 199=
6
>=20
>=20
> ```

--b1_IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>Any luck here?  Even when specifying the mac (no arp require=
d), the FPGA still doesn=E2=80=99t send anything, though the control plan=
e believes it is.</p><p>Here is the log, but no stream being transmitted.=
</p><div contenteditable=3D"false"><hr></div><blockquote><pre><code>cjohn=
son@demo:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --rate=3D2=
00e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D=
54321 --adapter=3D'sfp1' --dest-mac-addr=3D3c:ec:ef:c2:43:47
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjohn=
son-fb-sdrx-68-g02558b69
[TRACE] [MULTI_USRP] multi_usrp::make with args Empty Device Address
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 192.168.0.255 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 192.168.30.255 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[TRACE] [UDP] Creating udp transport for 192.168.30.255 49600
[TRACE] [UDP] Creating udp transport for 192.168.0.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.0.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.255 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
[TRACE] [NIRIO] rpc_client connection request cancelled/aborted.
[TRACE] [UHD] Device hash: 2306081079422837585
[INFO] [X300] X300 initialization sequence...
[DEBUG] [X300] Motherboard 0 has remote device ID: 1
[DEBUG] [X300] Setting up basic communication...
[TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
[DEBUG] [X300] Using FPGA version: 39.1 git hash: 92c09f7
[DEBUG] [X300] Loading values from EEPROM...
[TRACE] [UDP] Creating udp transport for 192.168.30.2 49152
[TRACE] [UDP] Creating udp transport for 192.168.30.2 49158
[DEBUG] [X300] Determining maximum frame size...=20
[INFO] [X300] Maximum frame size: 8000 bytes.
[DEBUG] [X300] Setting up RF frontend clocking...
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D8, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coer=
ced Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D4, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coer=
ced Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D5, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coer=
ced Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D0, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coer=
ced Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D2, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coer=
ced Delay=3D0.000000ns
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
[DEBUG] [X300] Motherboard 0 has local device IDs:=20
[DEBUG] [X300] * 2
[TRACE] [UDP] Created UDP link to 192.168.30.2:49153
[TRACE] [UDP] Local UDP socket endpoint: 192.168.30.1:46819
[TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 bytes
[TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 bytes
[DEBUG] [RFNOC::MGMT] Starting topology discovery from device[local]:2/se=
p:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:4
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:4
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:5
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:5
[DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device[l=
ocal]:2/sep:1
[DEBUG] [RFNOC::MGMT] * 1:0
[DEBUG] [RFNOC::MGMT] * 1:1
[DEBUG] [RFNOC::MGMT] * 1:2
[DEBUG] [RFNOC::MGMT] * 1:3
[DEBUG] [RFNOC::MGMT] * 1:4
[DEBUG] [RFNOC::MGMT] * 1:5
[DEBUG] [RFNOC::LSM] Adding node device:1/xport:1 to topology graph outsi=
de of discovery.
[DEBUG] [RFNOC::LSM] Adding transport adapter on xbar port 1
[DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adapte=
r 0 (0 =3D no preference)...=20
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=3D(1,0) to EPID=3D2
[DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages contro=
l messages on EPID 1
[DEBUG] [RFNOC::MGMT] Established a route from EPID=3D1 (SW) to EPID=3D2
[DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
[DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Devic=
e 2. Using EPIDs 1 -&gt; 2.
[DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
[DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0': Ex=
pecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolation =
255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=3Dd0c=
00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
[DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0': Ex=
pecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=3Dddc=
00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
[DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0'=
: Expecting 0.1, actual: 0.1.
[DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=3D16, Window=3D2=
4, TapDelay=3D78.125ps, Iter=3D1)
[TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D42.000000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095, T=
=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D=
4200.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D41.800000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D=
4180.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
[TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.600000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D=
4760.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.400000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D=
4740.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
[DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=3D1=
2ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
[DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1': Ex=
pecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolation =
255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=3Dd0c=
00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
[DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1': Ex=
pecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=3Dddc=
00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
[DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#1'=
: Expecting 0.1, actual: 0.1.
[DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=3D20, Window=3D2=
1, TapDelay=3D78.125ps, Iter=3D1)
[TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D42.000000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095, T=
=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D=
4200.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D41.800000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D=
4180.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
[TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.600000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D=
4760.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.400000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D=
4740.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
[DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=3D1=
2ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
[DEBUG] [0/Replay#0] Checking compat number for FPGA component `0/Replay#=
0': Expecting 1.1, actual: 1.1.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Replay#0 (NOC ID=3D=
4e91a000)
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/Radio#0] Running ADC self-cal...
[DEBUG] [0/Radio#1] Running ADC self-cal...
Requesting sampling rate 200.0 Msps...
Using sampling rate: 200.0 Msps.
Requesting center frequency 1223.0 MHz...
[TRACE] [MULTI_USRP] Frequency Range 0.000MHz-&gt;6080.000MHz
Actual center frequency: 1223.0000032784735 MHz.
Requesting gain 20.0 dB...
[TRACE] [MULTI_USRP] Clipped RX frequency requested: 1223.000000MHz
Actual gain: 20.0 dB.
[TRACE] [MULTI_USRP] Target RF Freq: 1223.000000MHz
Selected 0 RX channels.
Generating RX streamer object...
[TRACE] [UBX] UBX RX: the requested frequency is 1223.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D8.000000, fb=
div=3D24.460073
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D24, FRAC=3D1884, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D4, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D1223.00, ACT=3D1223.00, VCO=3D=
4892.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX RX: the actual frequency is 1223.003663 MHz
[TRACE] [MULTI_USRP] Target DSP Freq: 0.003663MHz
[TRACE] [UBX] UBX RX Gain: 20.000000 dB, Code: 40, IO Bits 0xa000
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_chdr
  Num inputs:    1
  Output format: sc16
  Num outputs:   1
 Using best available prio: 0
[TRACE] [UDP] Created UDP link to 192.168.30.2:49153
[TRACE] [UDP] Local UDP socket endpoint: 192.168.30.1:36354
[TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 bytes
[TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 bytes
[DEBUG] [RFNOC::MGMT] Established a route from EPID=3D3 (SW) to EPID=3D2
[DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% (0x0)
[DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3D2
[DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3D2
[DEBUG] [RFNOC::LSM] Remote stream is using different transport adapter (=
device:1/xport:1) than local streamer object. Setting up remote route...
[DEBUG] [RFNOC::LSM] Adding virtual endpoint: device:2/virtual:3 (EPID: 3=
)
[DEBUG] [DEBUG] /home/cjohnson/ettus_repo/uhd/host/lib/rfnoc/mgmt_portal.=
cpp:385 (virtual void uhd::rfnoc::mgmt::mgmt_portal_impl::setup_remote_ro=
ute(uhd::rfnoc::chdr_ctrl_xport&amp;, const sep_id_t&amp;, const sep_id_t=
&amp;))
[DEBUG] [RFNOC::MGMT] Programmed a route from EPID=3D1 to EPID=3D3
[DEBUG] [RFNOC] Creating diverted RX stream with arguments: dest_addr=3D1=
92.168.30.30,dest_port=3D54321,stream_mode=3Draw_payload,adapter=3Dsfp1,d=
est_mac_addr=3D3c:ec:ef:c2:43:47,enable_remote_stream=3D1,enable_fc=3D0
[DEBUG] [X300::SFP1::TA_CTL] On transport adapter 1: Adding route from EP=
ID 3 to destination 192.168.30.30:54321 (MAC Address: 3c:ec:ef:c2:43:47),=
 stream mode RAW_PAYLOAD (1)
Starting stream...
Stream started. Press Ctrl-C to stop.
[DEBUG] [0/Radio#0] spp value 2044 exceeds MTU of 8000! Coercing to 1996

<br></code></pre></blockquote>


--b1_IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ--

--===============5029196157081236831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5029196157081236831==--
