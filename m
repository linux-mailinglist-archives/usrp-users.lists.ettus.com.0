Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 734C349735C
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 18:04:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5575D384DC0
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 12:04:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=sagaxcommunications.com header.i=@sagaxcommunications.com header.b="ess+hvxf";
	dkim-atps=neutral
Received: from cpanel34.tarhelypark.hu (cpanel34.tarhelypark.hu [185.111.89.222])
	by mm2.emwd.com (Postfix) with ESMTPS id E71AA384572
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 12:03:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sagaxcommunications.com; s=default; h=Content-Type:MIME-Version:Message-ID:
	Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/b4Yoaeqo9Rxm20h1rikfdrTNQIkHqLBPdJ2TvlkQmI=; b=ess+hvxf2Onw1sEezSoYW3AtaM
	EoVm+bVbNtmlHaZghqDYDXLlQJUmKB+ota3pPhejs2II7kdqte/KoygGqyI2FSsMVcDxQNDz50xsf
	LXZrUcbSIpfg4rlCpLMX31NGpgz8ZdfAJX5037AqfH/w6/Q064k7sW32zX5zo449TOsGzE4zWM2wW
	+kyyF0ZMbSmrPjXRzwzY6JdA0Vnz3WjfJHPTXOV+1yQginoK+vk46/S5m95uwH4pXSSLs/OSVYrH9
	IER7Baupmg4f5i1/DW+pU/QsQwYDqqVs+RaznINia65WoeiOdRrYX/mqoI/ecoGeX9w4VL5JbVF7F
	Ij4WYmFA==;
Received: from 1f2ece4f.catv.pool.telekom.hu ([31.46.206.79]:63862 helo=SGXNB01BEGED)
	by cpanel34.tarhelypark.hu with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bertalan.eged@sagaxcommunications.com>)
	id 1nBgHG-000gns-JC; Sun, 23 Jan 2022 18:03:44 +0100
From: <bertalan.eged@sagaxcommunications.com>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com> <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com> <002901d81059$502b5320$f081f960$@sagaxcommunications.com> <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com>
In-Reply-To: <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com>
Date: Sun, 23 Jan 2022 18:03:41 +0100
Message-ID: <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKyxz4Exbf96UgD0d16o7zVnlR1RQHxMgC5Arm0AqIB6kAOhqqGu3Gg
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel34.tarhelypark.hu
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - sagaxcommunications.com
X-Get-Message-Sender-Via: cpanel34.tarhelypark.hu: authenticated_id: bertalan.eged@sagaxcommunications.com
X-Authenticated-Sender: cpanel34.tarhelypark.hu: bertalan.eged@sagaxcommunications.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-ID-Hash: QSFDXKUNYWOIJZYD6NPYQ34XVZFHLSPJ
X-Message-ID-Hash: QSFDXKUNYWOIJZYD6NPYQ34XVZFHLSPJ
X-MailFrom: bertalan.eged@sagaxcommunications.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QSFDXKUNYWOIJZYD6NPYQ34XVZFHLSPJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9179214925771045326=="

This is a multipart message in MIME format.

--===============9179214925771045326==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_005D_01D81083.8E812C60"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_005D_01D81083.8E812C60
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=20

=20

From: Marcus D. Leech <patchvonbraun@gmail.com>=20
Sent: Sunday, January 23, 2022 4:48 PM
To: bertalan.eged@sagaxcommunications.com; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: N310 reachable no error windows

=20

On 2022-01-23 08:01, bertalan.eged@sagaxcommunications.com =
<mailto:bertalan.eged@sagaxcommunications.com>  wrote:

=20

=20

From: Marcus D. Leech  <mailto:patchvonbraun@gmail.com> =
<patchvonbraun@gmail.com>=20
Sent: Saturday, January 22, 2022 4:33 PM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: [USRP-users] Re: N310 reachable no error windows

=20

On 2022-01-22 05:09, bertalan.eged@sagaxcommunications.com =
<mailto:bertalan.eged@sagaxcommunications.com>  wrote:

Dear All, I have the same issue, and found this thread:

[USRP-users] Re: UHD 3.15 on Windows (mail-archive.com) =
<https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.html>=20

But without a solution at the end.

=20

In my case:

=20

C:\Users\sgx>uhd_find_devices

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: 3178D22

    name: MyB200

    product: B200

    type: b200

=20

=20

--------------------------------------------------

-- UHD Device 1

--------------------------------------------------

Device Address:

    serial: 31B3599

    claimed: False

    mgmt_addr: 10.1.3.82

    mgmt_addr: 192.168.10.2

    product: n310

    reachable: No

    type: n3xx

=20

=20

C:\Users\sgx>uhd_usrp_probe

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD =
session. Specify find_all to find all devices.

[INFO] [B200] Detected Device: B200

[INFO] [B200] Operating over USB 3.

[INFO] [B200] Initialize CODEC control...

[INFO] [B200] Initialize Radio control...

[INFO] [B200] Performing register loopback test...

[INFO] [B200] Register loopback test passed

[INFO] [B200] Setting master clock rate selection to 'automatic'.

[INFO] [B200] Asking for clock rate 16.000000 MHz...

[INFO] [B200] Actually got clock rate 16.000000 MHz.

[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD =
session. Specify find_all to find all devices.

  _____________________________________________________

/

|       Device: B-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: B200

|   |   revision: 5

|   |   product: 1

|   |   name: MyB200

|   |   serial: 3178D22

=20

(probe works well for B200, I just attached for cross probe the uhd =
functionality=E2=80=A6)

=20

Any suggestions? Where should I use the sugested find_all parameter?

Tks,

/Bertalan

=20

I'm not sure about "find_all" either.

What is your actual network configuration with your N310?     Do you =
have both the RJ-45 port AND SFP0 port connected?  Are you using default =
addresses on the N310?

If you:

uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"


What do you get?




Hi Marcus, yes all is standard. Yes boot port are connected.

As you can see the uhd_find_devices found both interfaces:

    mgmt_addr: 10.1.3.82

    mgmt_addr: 192.168.10.2

    product: n310

    reachable: No

    type: n3xx

=20

192.168.10.2 is the SPF which is connected to a host to the 10GbE NIC

=20

Meanwhile I made a test with Ubuntu, as I read it should work=E2=80=A6

I was not able to put into operation the 10GbE SFP connection, however =
on the 1GbE RJ45

I got the very similar response: reachable: No

=20

Your Hardware Enablement Stack (HWE) is supported until April 2023.

Last login: Sat Apr 24 06:45:03 2021 from 10.6.1.160

sgx@178-H110M-S2PV:~$ uhd_find_devices

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; =
UHD_4.1.0.4-release

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: 31B3599

    claimed: False

    mgmt_addr: 10.1.3.82

    product: n310

    reachable: No

    type: n3xx

=20

sgx@178-H110M-S2PV:~$






I switched back to windows to check your suggested response of =
addressing on 10GbE:

And if ask the specific devices, I got this error:

C:\Users\sgx>uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"

OK, so what if you simply try to ping  192.168.10.2   -- I think the =
WIndows command window supports "ping".





[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

Error: LookupError: KeyError: No devices found for ----->

Device Address:

    addr: 192.168.10.2

    type: n3xx

=20

but the device is there, only it says:     reachable: No

but why? How the MPM work? How MPM switch between the networked vs =
embedded mode? (external or internal control of the device)=20

I found not docs/reading on this=E2=80=A6

/B

=20

Embedded mode means that you're actually running your code *ON* the =
N310, rather than using an external host.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide



=20

=20


yes this is clear,  I can log into the embedded computer with ssh and =
run uhd_find_devices which will report the N300

and I can run the uhd_usrp_probe too without any problem

=20

=20

root@ni-n3xx-31B3599:~# uhd_find_devices

[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; =
UHD_3.14.1.1-0-g0347a6d8

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: 31B3599

    claimed: False

    mgmt_addr: 127.0.0.1

    product: n310

    type: n3xx

=20

=20

root@ni-n3xx-31B3599:~# uhd_probe_devices

-sh: uhd_probe_devices: command not found

root@ni-n3xx-31B3599:~# uhd_usrp_probe

[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; =
UHD_3.14.1.1-0-g0347a6d8

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D127.0.0.1,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claimed=
=3DFalse

[INFO] [MPM.main] Launching USRP/MPM, version: 3.14.1.1-g0347a6d8

[INFO] [MPM.main] Spawning RPC process...

[INFO] [MPM.PeriphManager] Device serial number: 31B3599

[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).

[INFO] [MPM.PeriphManager] init() called with device args =
`time_source=3Dinternal,clock_source=3Dinternal'.

[INFO] [MPM.RPCServer] RPC server ready!

[INFO] [MPM.RPCServer] Spawning watchdog task...

[INFO] [MPM.PeriphManager] init() called with device args =
`mgmt_addr=3D127.0.0.1,clock_source=3Dinternal,time_source=3Dinternal,pro=
duct=3Dn310'.

[INFO] [0/Replay_0] Initializing block control (NOC ID: =
0x4E91A00000000004)

[INFO] [0/Radio_0] Initializing block control (NOC ID: =
0x12AD100000011312)

[INFO] [0/Radio_1] Initializing block control (NOC ID: =
0x12AD100000011312)

[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)

[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)

[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)

[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)

[INFO] [0/FIFO_0] Initializing block control (NOC ID: =
0xF1F0000000000000)

[INFO] [0/FIFO_1] Initializing block control (NOC ID: =
0xF1F0000000000000)

[INFO] [0/FIFO_2] Initializing block control (NOC ID: =
0xF1F0000000000000)

[INFO] [0/FIFO_3] Initializing block control (NOC ID: =
0xF1F0000000000000)

  _____________________________________________________

/

|       Device: N300-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: ni-n3xx-31B3599

|   |   eeprom_version: 3

|   |   mpm_version: 3.14.1.1-g0347a6d8

|   |   pid: 16962

|   |   product: n310

|   |   rev: 7

|   |   rpc_connection: local

|   |   serial: 31B3599

|   |   type: n3xx

|   |   MPM Version: 1.2

|   |   FPGA Version: 5.3

|   |   FPGA git hash: bb85bdf.clean

|   |   RFNoC capable: Yes

|   |

|   |   Time sources:  internal, external, gpsdo, sfp0

|   |   Clock sources: external, internal, gpsdo

|   |   Sensors: gps_tpv, ref_locked, gps_gpgga, gps_time, gps_locked, =
temp, gps_sky, fan

|   |     _____________________________________________________

|   |    /

|   |   |       RX Dboard: A

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: 0

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: 1

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Codec: A

|   |   |   |   Name: AD9371 Dual ADC

|   |   |   |   Gain Elements: None

|   |     _____________________________________________________

|   |    /

|   |   |       RX Dboard: B

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: 0

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: 1

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Codec: B

|   |   |   |   Name: AD9371 Dual ADC

|   |   |   |   Gain Elements: None

|   |     _____________________________________________________

|   |    /

|   |   |       TX Dboard: A

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: 0

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: 1

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Codec: A

|   |   |   |   Name: AD9371 Dual DAC

|   |   |   |   Gain Elements: None

|   |     _____________________________________________________

|   |    /

|   |   |       TX Dboard: B

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: 0

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: 1

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX

|   |   |   |   Sensors: lo_locked, ad9371_lo_locked, lowband_lo_locked

|   |   |   |   Freq range: 1.000 to 6000.000 MHz

|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB

|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB

|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Codec: B

|   |   |   |   Name: AD9371 Dual DAC

|   |   |   |   Gain Elements: None

|   |     _____________________________________________________

|   |    /

|   |   |       RFNoC blocks on this device:

|   |   |

|   |   |   * Replay_0

|   |   |   * Radio_0

|   |   |   * Radio_1

|   |   |   * DDC_0

|   |   |   * DDC_1

|   |   |   * DUC_0

|   |   |   * DUC_1

|   |   |   * FIFO_0

|   |   |   * FIFO_1

|   |   |   * FIFO_2

|   |   |   * FIFO_3

=20

root@ni-n3xx-31B3599:~#

=20

=20

=20

=20

=20

It seems to be that the N300 is permanently available for the embedded =
computer,

However I like to use it in networked mode with an external, more =
prowerful computer.

=20

It is written that MPM is responsible for that:

USRP Hardware Driver and USRP Manual: The Module Peripheral Manager =
(MPM) Architecture (ettus.com) =
<https://files.ettus.com/manual/page_mpm.html>=20
however I was not able to understand how it works, and how can I switch =
between embedded vs networked mode.

=20

This is what I am looking for to switch my device from embedded to =
networked mode of operation.=20

Tks,

/Bertalan

=20


------=_NextPart_000_005D_01D81083.8E812C60
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Helv;
	panose-1:2 11 6 4 2 2 2 3 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.E-mailStlus18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.E-mailStlus19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.E-mailStlus20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span lang=3DHU>From:</span></b><span =
lang=3DHU> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; =
<br><b>Sent:</b> Sunday, January 23, 2022 4:48 PM<br><b>To:</b> =
bertalan.eged@sagaxcommunications.com; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] Re: N310 =
reachable no error windows<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
2022-01-23 08:01, <a =
href=3D"mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagax=
communications.com</a> wrote:<span =
style=3D'font-size:12.0pt'><o:p></o:p></span></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span lang=3DHU>From:</span></b><span =
lang=3DHU> Marcus D. Leech <a =
href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</=
a> <br><b>Sent:</b> Saturday, January 22, 2022 4:33 PM<br><b>To:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b> [USRP-users] Re: N310 reachable no error =
windows</span><o:p></o:p></p></div></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal>On =
2022-01-22 05:09, <a =
href=3D"mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagax=
communications.com</a> wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-GB>Dear All, I have the same issue, =
and found this thread:</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB><a =
href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.=
html">[USRP-users] Re: UHD 3.15 on Windows =
(mail-archive.com)</a></span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>But without a solution at the end.</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>In my case:</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
lang=3DEN-GB>C:\Users\sgx&gt;uhd_find_devices</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [UHD] Win32; Microsoft =
Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------</span><o:=
p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB>-- UHD Device =
0</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------</span><o:=
p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB>Device =
Address:</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; serial: 3178D22</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; name: =
MyB200</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; product: B200</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; type: =
b200</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------</span><o:=
p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB>-- UHD Device =
1</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------</span><o:=
p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB>Device =
Address:</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; serial: 31B3599</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; claimed: =
False</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; mgmt_addr: =
10.1.3.82</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; mgmt_addr: =
192.168.10.2</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; product: n310</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; <b>reachable: =
No</b></span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; type: n3xx</span><o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>C:\Users\sgx&gt;uhd_usrp_probe</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [UHD] Win32; Microsoft =
Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release</span><o:p></o:p></p><p class=3DMsoNormal><b><span =
lang=3DEN-GB>[INFO] [MPMD FIND] Found MPM devices, but none are =
reachable for a UHD session. Specify find_all to find all =
devices.</span></b><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Detected Device: B200</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [B200] Operating over USB =
3.</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB>[INFO] =
[B200] Initialize CODEC control...</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [B200] Initialize Radio =
control...</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Performing register loopback =
test...</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Register loopback test =
passed</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Setting master clock rate selection to =
'automatic'.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Asking for clock rate 16.000000 =
MHz...</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Actually got clock rate 16.000000 =
MHz.</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB>[INFO] =
[MPMD FIND] Found MPM devices, but none are reachable for a UHD session. =
Specify find_all to find all devices.</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp; =
_____________________________________________________</span><o:p></o:p></=
p><p class=3DMsoNormal><span lang=3DEN-GB>/</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: B-Series =
Device</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp;&nbsp;&nbsp; =
_____________________________________________________</span><o:p></o:p></=
p><p class=3DMsoNormal><span lang=3DEN-GB>|&nbsp;&nbsp;&nbsp; =
/</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: =
B200</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; revision: =
5</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; product: =
1</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; name: =
MyB200</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; serial: =
3178D22</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>(probe works well for B200, I just attached for cross probe =
the uhd functionality=E2=80=A6)</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'font-size:10.0pt;font-family:"Helv",sans-serif'>Any =
suggestions? Where should I use the sugested find_all =
parameter?</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-GB =
style=3D'font-size:10.0pt;font-family:"Helv",sans-serif'>Tks,</span><o:p>=
</o:p></p><p class=3DMsoNormal><span lang=3DEN-GB =
style=3D'font-size:10.0pt;font-family:"Helv",sans-serif'>/Bertalan</span>=
<o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;</span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman =
,serif",serif'>I'm not sure about &quot;find_all&quot; =
either.<br><br>What is your actual network configuration with your =
N310?&nbsp;&nbsp;&nbsp;&nbsp; Do you have both the RJ-45 port AND SFP0 =
port connected?&nbsp; Are you using default addresses on the =
N310?<br><br>If you:<br><br>uhd_usrp_probe --args =
&quot;addr=3D192.168.10.2,type=3Dn3xx&quot;<br><br><br>What do you =
get?<br><br><br></span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Hi Marcus, =
yes all is standard. Yes boot port are =
connected.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>As you can =
see the uhd_find_devices found both interfaces:</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; mgmt_addr: =
10.1.3.82</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; mgmt_addr: =
192.168.10.2</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; product: n310</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; <b>reachable: =
No</b></span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; type: n3xx</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>192.168.10.2 is the SPF which is connected to a =
host to the 10GbE NIC</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Meanwhile I =
made a test with Ubuntu, as I read it should =
work=E2=80=A6</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>I was not =
able to put into operation the 10GbE SFP connection, however on the 1GbE =
RJ45</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>I got the =
very similar response: reachable: No</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Your =
Hardware Enablement Stack (HWE) is supported until April =
2023.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Last login: =
Sat Apr 24 06:45:03 2021 from 10.6.1.160</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>sgx@178-H110M-S2PV:~$ =
uhd_find_devices</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>[INFO] =
[UHD] linux; GNU C++ version 7.5.0; Boost_106501; =
UHD_4.1.0.4-release</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>-------------------------------------------------=
-</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>-- UHD =
Device 0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>-------------------------------------------------=
-</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Device =
Address:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; serial: =
31B3599</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; claimed: =
False</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; mgmt_addr: =
10.1.3.82</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; product: =
n310</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; reachable: =
No</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; type: =
n3xx</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>sgx@178-H110M-S2PV:~$</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman =
,serif",serif'><br><br><br></span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>I switched =
back to windows to check your suggested response of addressing on =
10GbE:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>And if ask =
the specific devices, I got this error:</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;uhd_usrp_probe --args =
&quot;addr=3D192.168.10.2,type=3Dn3xx&quot;</span><o:p></o:p></p></blockq=
uote><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman",serif'>OK, so =
what if you simply try to ping&nbsp; 192.168.10.2&nbsp;&nbsp; -- I think =
the WIndows command window supports =
&quot;ping&quot;.<br><br><br><br><o:p></o:p></span></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>[INFO] =
[UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Error: =
LookupError: KeyError: No devices found for =
-----&gt;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Device =
Address:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; addr: =
192.168.10.2</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; type: =
n3xx</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>but the =
device is there, only it says: &nbsp;&nbsp;&nbsp;&nbsp;reachable: =
No</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>but why? =
How the MPM work? How MPM switch between the networked vs embedded mode? =
(external or internal control of the device) </span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>I found not docs/reading on =
this=E2=80=A6</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>/B</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'>Embedded mode means that you're actually running your code =
*ON* the N310, rather than using an external host.<br><br><a =
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</=
a><br><br><span style=3D'color:#1F497D'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><br><span style=3D'color:#1F497D'>yes this is clear, =
=C2=A0I can log into the embedded computer with ssh and run =
uhd_find_devices which will report the =
N300<o:p></o:p></span></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>and I can run the uhd_usrp_probe too without =
any problem<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>root@ni-n3xx-31B3599:~# =
uhd_find_devices<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [UHD] linux; GNU C++ version 7.3.0; =
Boost_106600; UHD_3.14.1.1-0-g0347a6d8<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>---------------------------------------------=
-----<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>-- UHD Device 0<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>---------------------------------------------=
-----<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>Device Address:<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>=C2=A0=C2=A0=C2=A0 serial: =
31B3599<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>=C2=A0=C2=A0=C2=A0 claimed: =
False<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>=C2=A0=C2=A0=C2=A0 mgmt_addr: =
127.0.0.1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>=C2=A0=C2=A0=C2=A0 product: =
n310<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>=C2=A0=C2=A0=C2=A0 type: =
n3xx<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>root@ni-n3xx-31B3599:~# =
uhd_probe_devices<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>-sh: uhd_probe_devices: command not =
found<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>root@ni-n3xx-31B3599:~# =
uhd_usrp_probe<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [UHD] linux; GNU C++ version 7.3.0; =
Boost_106600; UHD_3.14.1.1-0-g0347a6d8<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPMD] Initializing 1 device(s) in =
parallel with args: =
mgmt_addr=3D127.0.0.1,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claimed=
=3DFalse<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.main] Launching USRP/MPM, =
version: 3.14.1.1-g0347a6d8<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.main] Spawning RPC =
process...<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.PeriphManager] Device serial =
number: 31B3599<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.PeriphManager] Initialized 2 =
daughterboard(s).<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.PeriphManager] init() called =
with device args =
`time_source=3Dinternal,clock_source=3Dinternal'.<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif;color:#1F497D'>[INFO] [MPM.RPCServer] RPC server =
ready!<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.RPCServer] Spawning watchdog =
task...<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [MPM.PeriphManager] init() called =
with device args =
`mgmt_addr=3D127.0.0.1,clock_source=3Dinternal,time_source=3Dinternal,pro=
duct=3Dn310'.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/Replay_0] Initializing block =
control (NOC ID: 0x4E91A00000000004)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/Radio_0] Initializing block =
control (NOC ID: 0x12AD100000011312)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/Radio_1] Initializing block =
control (NOC ID: 0x12AD100000011312)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/DDC_0] Initializing block control =
(NOC ID: 0xDDC0000000000000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/DDC_1] Initializing block control =
(NOC ID: 0xDDC0000000000000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/DUC_0] Initializing block control =
(NOC ID: 0xD0C0000000000002)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/DUC_1] Initializing block control =
(NOC ID: 0xD0C0000000000002)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/FIFO_0] Initializing block control =
(NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/FIFO_1] Initializing block control =
(NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/FIFO_2] Initializing block control =
(NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>[INFO] [0/FIFO_3] Initializing block control =
(NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'> /<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Device: N300-Series Device<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: =
ni-n3xx-31B3599<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 eeprom_version: =
3<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 mpm_version: =
3.14.1.1-g0347a6d8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 pid: =
16962<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 product: =
n310<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 rev: =
7<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 rpc_connection: =
local<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: =
31B3599<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 type: =
n3xx<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 MPM Version: =
1.2<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA Version: =
5.3<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA git hash: =
bb85bdf.clean<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 RFNoC capable: =
Yes<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 Time =
sources:=C2=A0 internal, external, gpsdo, sfp0<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 Clock sources: =
external, internal, gpsdo<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: =
gps_tpv, ref_locked, gps_gpgga, gps_time, gps_locked, temp, gps_sky, =
fan<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: =
A<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Frontend: =
0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0 =C2=A0Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 75.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Frontend: =
1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 75.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Codec: =
A<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: AD9371 Dual ADC<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain Elements: None<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: =
B<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Frontend: =
0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 75.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Frontend: =
1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 75.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Codec: =
B<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: AD9371 Dual ADC<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain Elements: None<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
=C2=A0=C2=A0_____________________________________________________<o:p></o=
:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: =
A<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Frontend: =
0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 65.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Frontend: =
1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 65.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Codec: =
A<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: AD9371 Dual DAC<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain Elements: None<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: =
B<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Frontend: =
0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 65.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Frontend: =
1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: Magnesium<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Antennas: TX/RX<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: lo_locked, ad9371_lo_locked, =
lowband_lo_locked<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range all: 0.0 to 65.0 step 0.5 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 =
dB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 =
Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Connection Type: IQ<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Uses LO offset: No<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Codec: =
B<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Name: AD9371 Dual DAC<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Gain Elements: None<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blocks on this =
device:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 =
|<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
Replay_0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
Radio_0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
Radio_1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
DDC_0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
DDC_1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
DUC_0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
DUC_1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
FIFO_0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
FIFO_1<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
FIFO_2<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * =
FIFO_3<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>root@ni-n3xx-31B3599:~#<o:p></o:p></span></p>=
<p class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>It seems to be that the N300 is permanently =
available for the embedded computer,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>However I like to use it in <b>networked =
mode</b> with an external, more prowerful =
computer.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>It is written that MPM is responsible for =
that:<o:p></o:p></span></p><p class=3DMsoNormal><a =
href=3D"https://files.ettus.com/manual/page_mpm.html">USRP Hardware =
Driver and USRP Manual: The Module Peripheral Manager (MPM) Architecture =
(ettus.com)</a><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><br><span style=3D'color:#1F497D'>however I was not able =
to understand how it works, and how can I switch between =
</span></span><span style=3D'color:#1F497D'>embedded vs networked =
mode.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>This is what I am =
looking for to switch my device from embedded to networked mode of =
operation.</span><span style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#1F497D'>Tks,<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>/Bertalan<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_000_005D_01D81083.8E812C60--

--===============9179214925771045326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9179214925771045326==--
