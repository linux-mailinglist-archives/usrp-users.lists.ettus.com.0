Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3C4708D70
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 03:40:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A2953848F1
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 21:40:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684460422; bh=q3IUQc1Zqy7lqbx/3xSL9K3Lvs2Uq7s3wAQbO/wUYM8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=y0KAJz76vGKEG6LNEraLMSuG39OjUkENhtXI3V30HgdoA0CJkE3YEma6WQxWFiqMW
	 BaYnhb9VaX4MSzl7rLpxjkqmR4wDHsbxNHwfK1s5DXzD1/cQZnBlbqTdaz/MSqzy+J
	 nvDB1QYPVubko/SS6NNRiHowIsaJ80yktS31n/lnkiys8HDCboV/M5W/amVbivlw0k
	 Cw7TyXOPYBgB1eIKkIWIbfSxh4D98R1e3tT/bqFtiuPbatNCZ8QLOk29GUAu8fBnGT
	 h3V6aaOonQ+b1iVpDrj5IbkFpdZDDpF/Z40QIqiXR33jm4bxC8VXFAjncywA3qxFLI
	 c2QEW4SddtzIw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id EF58438489A
	for <usrp-users@lists.ettus.com>; Thu, 18 May 2023 21:39:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="cdeKW9oe";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-510e682795fso2339872a12.3
        for <usrp-users@lists.ettus.com>; Thu, 18 May 2023 18:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684460360; x=1687052360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QjdaRp/9/kCt0cuxmKUEKg8+3mXSEUONu1Yk4eVZpQw=;
        b=cdeKW9oel/LlMqyU/XkwZEE8SnpUcnpVAWsx0PqcoOc5KXJF9QjV9GIvvkIuMslMNB
         AsXclLYBg3Smu/ELaY70Z0n+nj8hnjg3FqsVMhR9L/gNZRyPqtq9kxfYnvFaKZm7/X45
         EY9uSf9ysJyayRDBqTJ2SZ5gqcd6XbvInBPCIoGe1HpD7CyGB2iyWgd+1dzjxHKLH2zC
         2uNGTIWC9gUYMhawSobztqHU0k68ZwtabUkyIHV7HehRXFLtW3NU4IaNR9hZG285o2RR
         8BRUF3nq2gJn8Q5B6MV9bbFY5+cHaHWJieSPuvBDxwyzhpmbm8w7MlFp+BbdCvq3dMbS
         ZHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684460360; x=1687052360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QjdaRp/9/kCt0cuxmKUEKg8+3mXSEUONu1Yk4eVZpQw=;
        b=Q/mtjNFdyGl0ckkofp0HOy0mYpvNj0rH79OaWmN8UDBKhGJUP2HLUkZUtLVrcteCV3
         4h/FTiWqbXBMx5O4rAGhbvKRvteV704ApS+CsjOPAWeuYTJqxFa6njUpjypQF8pFCPDK
         5udjS31YtGfRQjeaMOWJhLh0oNBbC/C0baS7qHwh2ioUwVxOYujPy7cQPeQvoxXjGpNX
         ob+qlKaLllIbpdbaPplqeBZQqIWeIxiDIllLcmXcD3TkCkgZaANocwP5qynIEUGl8/jb
         0GXgtqIJuGTYl3buX5ZOB3aEGcrdylynYWABzBGqdVRX1vpv9EMY+uRv6jIry4XUTz+D
         OEGg==
X-Gm-Message-State: AC+VfDxdSEbxlALjtPaWMQEaWKabp4L9wWWcGdpvdY1ofxMhALd3kkdN
	RjF9rgagYAQf2G8C2gOgU3+t9qrlf3GSnn/BsoIXcY+0lWr5kgaTlV1haQ==
X-Google-Smtp-Source: ACHHUZ7Mar+JgdoeVXU4OjcBqcYs/5ralKsPA2OAfJHR+N2r007lnhfMzGhLCIxvlQ5WbBXRBSw/vFWvH1UKmKowUUU=
X-Received: by 2002:a17:907:980b:b0:966:3de0:89ac with SMTP id
 ji11-20020a170907980b00b009663de089acmr215175ejc.30.1684460359562; Thu, 18
 May 2023 18:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ@lists.ettus.com>
In-Reply-To: <IthyXvZX6GkLJjevZTgpuRLTcPRH0b7tmwmuKbJASuQ@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 18 May 2023 20:39:03 -0500
Message-ID: <CAFche=jaieL6Hakoc_UQq1diftVhhyHpA=X+Bg9j5v3OhPWUYw@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: OB2HVMI2VHTYDCPUKRU22H7HG3OB5BPV
X-Message-ID-Hash: OB2HVMI2VHTYDCPUKRU22H7HG3OB5BPV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OB2HVMI2VHTYDCPUKRU22H7HG3OB5BPV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1079026878105703674=="

--===============1079026878105703674==
Content-Type: multipart/alternative; boundary="0000000000005eca1e05fc01fd04"

--0000000000005eca1e05fc01fd04
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On the USRP-2974 I thought "sfp1" on the FPGA was the port that goes to the
internal NIC/CPU. Maybe try sfp0?

You should be able to see the packets in wireshark if you run that on the
other computer. Also, the activity lite on the USR-2974 should blink.

Thanks,

Wade

On Thu, May 18, 2023 at 8:18=E2=80=AFAM <cjohnson@serranosystems.com> wrote=
:

> Hi,
>
> Any luck here? Even when specifying the mac (no arp required), the FPGA
> still doesn=E2=80=99t send anything, though the control plane believes it=
 is.
>
> Here is the log, but no stream being transmitted.
> ------------------------------
>
> cjohnson@demo:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --rat=
e=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-po=
rt=3D54321 --adapter=3D'sfp1' --dest-mac-addr=3D3c:ec:ef:c2:43:47
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjohn=
son-fb-sdrx-68-g02558b69
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
> [DEBUG] [X300] Determining maximum frame size...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [DEBUG] [X300] Setting up RF frontend clocking...
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D8, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerce=
d Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D4, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerce=
d Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D5, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerce=
d Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D0, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerce=
d Delay=3D0.000000ns
> [DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D2, Requested=3D0=
.000000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerce=
d Delay=3D0.000000ns
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [X300] Radio 1x clock: 200 MHz
> [DEBUG] [X300] Motherboard 0 has local device IDs:
> [DEBUG] [X300] * 2
> [TRACE] [UDP] Created UDP link to 192.168.30.2:49153
> [TRACE] [UDP] Local UDP socket endpoint: 192.168.30.1:46819
> [TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 bytes
> [TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 bytes
> [DEBUG] [RFNOC::MGMT] Starting topology discovery from device[local]:2/se=
p:1
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
> [DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device[l=
ocal]:2/sep:1
> [DEBUG] [RFNOC::MGMT] * 1:0
> [DEBUG] [RFNOC::MGMT] * 1:1
> [DEBUG] [RFNOC::MGMT] * 1:2
> [DEBUG] [RFNOC::MGMT] * 1:3
> [DEBUG] [RFNOC::MGMT] * 1:4
> [DEBUG] [RFNOC::MGMT] * 1:5
> [DEBUG] [RFNOC::LSM] Adding node device:1/xport:1 to topology graph outsi=
de of discovery.
> [DEBUG] [RFNOC::LSM] Adding transport adapter on xbar port 1
> [DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adapte=
r 0 (0 =3D no preference)...
> [DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=3D(1,0) to EPID=3D2
> [DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages contro=
l messages on EPID 1
> [DEBUG] [RFNOC::MGMT] Established a route from EPID=3D1 (SW) to EPID=3D2
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
> [DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Devic=
e 2. Using EPIDs 1 -> 2.
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
> [DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0': Ex=
pecting 0.1, actual: 0.1.
> [DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolation =
255
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=3Dd0c=
00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
> [DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0': Ex=
pecting 0.1, actual: 0.1.
> [DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 255
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=3Dddc=
00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
> [DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0'=
: Expecting 0.1, actual: 0.1.
> [DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=3D16, Window=3D2=
4, TapDelay=3D78.125ps, Iter=3D1)
> [TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D42.000000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095, T=
=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D=
4200.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D41.800000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D=
4180.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
> [TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.600000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D=
4760.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.400000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D=
4740.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
> [DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=3D1=
2ad1000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
> [DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1': Ex=
pecting 0.1, actual: 0.1.
> [DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolation =
255
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=3Dd0c=
00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
> [DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1': Ex=
pecting 0.1, actual: 0.1.
> [DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 255
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=3Dddc=
00000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
> [DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#1'=
: Expecting 0.1, actual: 0.1.
> [DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=3D20, Window=3D2=
1, TapDelay=3D78.125ps, Iter=3D1)
> [TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D42.000000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095, T=
=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D=
4200.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D41.800000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D=
4180.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
> [TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
> [TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.600000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D=
4760.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fb=
div=3D47.400000
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
> [TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D=
4740.00, PFD=3D50.00, BAND=3D0.05
> [TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
> [DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
> [DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=3D1=
2ad1000)
> [DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
> [DEBUG] [0/Replay#0] Checking compat number for FPGA component `0/Replay#=
0': Expecting 1.1, actual: 1.1.
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
> [TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D8.000000, fb=
div=3D24.460073
> [TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D24, FRAC=3D1884, MOD=3D4095=
, T=3D0, D=3D0, RFdiv=3D4, type=3DFractional
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
> [TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 bytes
> [TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 bytes
> [DEBUG] [RFNOC::MGMT] Established a route from EPID=3D3 (SW) to EPID=3D2
> [DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% (0x0)
> [DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3D2
> [DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3D2
> [DEBUG] [RFNOC::LSM] Remote stream is using different transport adapter (=
device:1/xport:1) than local streamer object. Setting up remote route...
> [DEBUG] [RFNOC::LSM] Adding virtual endpoint: device:2/virtual:3 (EPID: 3=
)
> [DEBUG] [DEBUG] /home/cjohnson/ettus_repo/uhd/host/lib/rfnoc/mgmt_portal.=
cpp:385 (virtual void uhd::rfnoc::mgmt::mgmt_portal_impl::setup_remote_rout=
e(uhd::rfnoc::chdr_ctrl_xport&, const sep_id_t&, const sep_id_t&))
> [DEBUG] [RFNOC::MGMT] Programmed a route from EPID=3D1 to EPID=3D3
> [DEBUG] [RFNOC] Creating diverted RX stream with arguments: dest_addr=3D1=
92.168.30.30,dest_port=3D54321,stream_mode=3Draw_payload,adapter=3Dsfp1,des=
t_mac_addr=3D3c:ec:ef:c2:43:47,enable_remote_stream=3D1,enable_fc=3D0
> [DEBUG] [X300::SFP1::TA_CTL] On transport adapter 1: Adding route from EP=
ID 3 to destination 192.168.30.30:54321 (MAC Address: 3c:ec:ef:c2:43:47), s=
tream mode RAW_PAYLOAD (1)
> Starting stream...
> Stream started. Press Ctrl-C to stop.
> [DEBUG] [0/Radio#0] spp value 2044 exceeds MTU of 8000! Coercing to 1996
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005eca1e05fc01fd04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>On the USRP-2974 I thoug=
ht &quot;sfp1&quot; on the FPGA was the port that goes to the internal NIC/=
CPU. Maybe try sfp0?<br></div><div><br></div><div>You should be able to see=
 the packets in wireshark if you run that on the other computer. Also, the =
activity lite on the USR-2974 should blink.<br></div><div><br></div><div>Th=
anks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 18, 2023 at 8:18=
=E2=80=AFAM &lt;<a href=3D"mailto:cjohnson@serranosystems.com">cjohnson@ser=
ranosystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>Hi,</p><p>Any luck here?  Even when specifying the mac (n=
o arp required), the FPGA still doesn=E2=80=99t send anything, though the c=
ontrol plane believes it is.</p><p>Here is the log, but no stream being tra=
nsmitted.</p><div><hr></div><blockquote><pre><code>cjohnson@demo:~/ettus_re=
po/uhd/host/examples/python$ ./remote_rx.py --rate=3D200e6 --freq=3D1223e6 =
--gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D54321 --adapter=3D&#3=
9;sfp1&#39; --dest-mac-addr=3D3c:ec:ef:c2:43:47
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjohnso=
n-fb-sdrx-68-g02558b69
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
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D8, Requested=3D0.0=
00000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerced =
Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D4, Requested=3D0.0=
00000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerced =
Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D5, Requested=3D0.0=
00000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerced =
Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D0, Requested=3D0.0=
00000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerced =
Delay=3D0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=3D2, Requested=3D0.0=
00000, Digital Taps=3D5, Half Shift=3DOFF, Analog Delay=3D0 (OFF), Coerced =
Delay=3D0.000000ns
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
[DEBUG] [X300] Motherboard 0 has local device IDs:=20
[DEBUG] [X300] * 2
[TRACE] [UDP] Created UDP link to <a href=3D"http://192.168.30.2:49153" tar=
get=3D"_blank">192.168.30.2:49153</a>
[TRACE] [UDP] Local UDP socket endpoint: <a href=3D"http://192.168.30.1:468=
19" target=3D"_blank">192.168.30.1:46819</a>
[TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 bytes
[TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 bytes
[DEBUG] [RFNOC::MGMT] Starting topology discovery from device[local]:2/sep:=
1
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
[DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device[loc=
al]:2/sep:1
[DEBUG] [RFNOC::MGMT] * 1:0
[DEBUG] [RFNOC::MGMT] * 1:1
[DEBUG] [RFNOC::MGMT] * 1:2
[DEBUG] [RFNOC::MGMT] * 1:3
[DEBUG] [RFNOC::MGMT] * 1:4
[DEBUG] [RFNOC::MGMT] * 1:5
[DEBUG] [RFNOC::LSM] Adding node device:1/xport:1 to topology graph outside=
 of discovery.
[DEBUG] [RFNOC::LSM] Adding transport adapter on xbar port 1
[DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adapter =
0 (0 =3D no preference)...=20
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=3D(1,0) to EPID=3D2
[DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages control =
messages on EPID 1
[DEBUG] [RFNOC::MGMT] Established a route from EPID=3D1 (SW) to EPID=3D2
[DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
[DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Device =
2. Using EPIDs 1 -&gt; 2.
[DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
[DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0&#39;: =
Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolation 25=
5
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=3Dd0c00=
000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
[DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0&#39;: =
Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=3Dddc00=
000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
[DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0&#3=
9;: Expecting 0.1, actual: 0.1.
[DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=3D16, Window=3D24,=
 TapDelay=3D78.125ps, Iter=3D1)
[TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D42.000000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095, T=
=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D42=
00.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D41.800000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D41=
80.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
[TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D47.600000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D47=
60.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D47.400000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D47=
40.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
[DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=3D12a=
d1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
[DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1&#39;: =
Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolation 25=
5
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=3Dd0c00=
000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
[DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1&#39;: =
Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=3Dddc00=
000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
[DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#1&#3=
9;: Expecting 0.1, actual: 0.1.
[DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=3D20, Window=3D21,=
 TapDelay=3D78.125ps, Iter=3D1)
[TRACE] [UBX] UBX TX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX TX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D42.000000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D42, FRAC=3D0, MOD=3D4095, T=
=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2100.00, ACT=3D2100.00, VCO=3D42=
00.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D41.800000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D41, FRAC=3D3276, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2090.00, ACT=3D2090.00, VCO=3D41=
80.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX TX: the actual frequency is 10.000000 MHz
[TRACE] [UBX] UBX RX Gain: 0.000000 dB, Code: 0, IO Bits 0x0000
[TRACE] [UBX] UBX RX: the requested frequency is 10.000000 MHz
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D47.600000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D2457, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2380.00, ACT=3D2380.00, VCO=3D47=
60.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D4.000000, fbdi=
v=3D47.400000
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D47, FRAC=3D1638, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D2, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D2370.00, ACT=3D2370.00, VCO=3D47=
40.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX RX: the actual frequency is 10.000000 MHz
[DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=3D12a=
d1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
[DEBUG] [0/Replay#0] Checking compat number for FPGA component `0/Replay#0&=
#39;: Expecting 1.1, actual: 1.1.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Replay#0 (NOC ID=3D4e=
91a000)
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
[TRACE] [MAX287X] Intermediates: ref=3D50000000.00, outdiv=3D8.000000, fbdi=
v=3D24.460073
[TRACE] [MAX287X] Tune: R=3D1, BS=3D1000, N=3D24, FRAC=3D1884, MOD=3D4095, =
T=3D0, D=3D0, RFdiv=3D4, type=3DFractional
[TRACE] [MAX287X] Frequencies (MHz): REQ=3D1223.00, ACT=3D1223.00, VCO=3D48=
92.00, PFD=3D50.00, BAND=3D0.05
[TRACE] [UBX] UBX RX: the actual frequency is 1223.003663 MHz
[TRACE] [MULTI_USRP] Target DSP Freq: 0.003663MHz
[TRACE] [UBX] UBX RX Gain: 20.000000 dB, Code: 40, IO Bits 0xa000
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_chdr
  Num inputs:    1
  Output format: sc16
  Num outputs:   1
 Using best available prio: 0
[TRACE] [UDP] Created UDP link to <a href=3D"http://192.168.30.2:49153" tar=
get=3D"_blank">192.168.30.2:49153</a>
[TRACE] [UDP] Local UDP socket endpoint: <a href=3D"http://192.168.30.1:363=
54" target=3D"_blank">192.168.30.1:36354</a>
[TRACE] [UDP] Target/actual recv sock buff size: 24912805/24912805 bytes
[TRACE] [UDP] Target/actual send sock buff size: 24912805/24912805 bytes
[DEBUG] [RFNOC::MGMT] Established a route from EPID=3D3 (SW) to EPID=3D2
[DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% (0x0)
[DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3D2
[DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3D2
[DEBUG] [RFNOC::LSM] Remote stream is using different transport adapter (de=
vice:1/xport:1) than local streamer object. Setting up remote route...
[DEBUG] [RFNOC::LSM] Adding virtual endpoint: device:2/virtual:3 (EPID: 3)
[DEBUG] [DEBUG] /home/cjohnson/ettus_repo/uhd/host/lib/rfnoc/mgmt_portal.cp=
p:385 (virtual void uhd::rfnoc::mgmt::mgmt_portal_impl::setup_remote_route(=
uhd::rfnoc::chdr_ctrl_xport&amp;, const sep_id_t&amp;, const sep_id_t&amp;)=
)
[DEBUG] [RFNOC::MGMT] Programmed a route from EPID=3D1 to EPID=3D3
[DEBUG] [RFNOC] Creating diverted RX stream with arguments: dest_addr=3D192=
.168.30.30,dest_port=3D54321,stream_mode=3Draw_payload,adapter=3Dsfp1,dest_=
mac_addr=3D3c:ec:ef:c2:43:47,enable_remote_stream=3D1,enable_fc=3D0
[DEBUG] [X300::SFP1::TA_CTL] On transport adapter 1: Adding route from EPID=
 3 to destination <a href=3D"http://192.168.30.30:54321" target=3D"_blank">=
192.168.30.30:54321</a> (MAC Address: 3c:ec:ef:c2:43:47), stream mode RAW_P=
AYLOAD (1)
Starting stream...
Stream started. Press Ctrl-C to stop.
[DEBUG] [0/Radio#0] spp value 2044 exceeds MTU of 8000! Coercing to 1996

<br></code></pre></blockquote>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005eca1e05fc01fd04--

--===============1079026878105703674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1079026878105703674==--
