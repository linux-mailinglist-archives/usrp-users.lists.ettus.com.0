Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F0297454F
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2024 00:01:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE1CB385649
	for <lists+usrp-users@lfdr.de>; Tue, 10 Sep 2024 18:01:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726005681; bh=PtA3yg2EOWw8cOuoamE55jycpkxdK2wwi/YnF1KU33Q=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=ty61DwcthmeNfpdxCp7cLxV/BfHzR/ZO86hMltzsTtgSWmwzsut38iWsjoK80lQ4G
	 hT+2mwIDLyZC6UYWRnILeB6Cz6hD3lDR7kGVIQgNFkFTCKiSf6pEKdxomtI4u9I4kr
	 85pJNPagqgYWlyypwhKfB9p1SrYCWnKh76AkSCrWA4rkOSs7ncRPWQAijLYy58A1rj
	 4uij26vXAYIeLJNwKCfXlwvBndzdtenARt4OqNP+fHsvEJKgOYKncyNtr80GdlrH6O
	 D4wvfjwc6n53XGaPwf48EVmJiFjUBfRgSOF3eKG/UuUMBmoGpkMbLU1PhfgJ/yudMn
	 EQp1gspYTk8IQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A2BA384D91
	for <usrp-users@lists.ettus.com>; Tue, 10 Sep 2024 18:00:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726005653; bh=LfcxXnNGwtJ4YYgajRBy7SmZ8Kv/q1n/gP2ZP1r9s0M=;
	h=Date:To:From:Subject:From;
	b=MPtnTk1S2w9SPVX42Rr+aXQmqDLZP0WKbeRAJgRlpmGTC78oY/GwDD3mZ1HF81zmT
	 4F3Cbz/7ZSuGpIfSFKZkQXB90UbPSfBKCDdPqCtuAzcpuU+35dNa8sGPyi0geBfVVd
	 KjEO8gZrTreSRtjqLenZ3rg2PbS8so87IB+4wcZ7usC7gKRf3t0YuS3NsZgG5T9hZt
	 Oq0AY4kSK6LokiCU+orciniQdIj6QTJK4YCLr+z4PktG9TcLtkCEFpalugXBERoL57
	 BQ1ayfmRgwvnbFTTxhUVw0Bm6CauUBSMFWH0SQK4gnani8sNZmuzn0b+vMHwyypkro
	 BEPSJuLMoILeQ==
Date: Tue, 10 Sep 2024 22:00:53 +0000
To: usrp-users@lists.ettus.com
Message-ID: <QxhXj4hPiutixI6Wg3DjqCzzjBMM2ZG9lcnNq1nwiA0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 43AI3LWP5G374R3MFXV2RTRIPQKF6FBS
X-Message-ID-Hash: 43AI3LWP5G374R3MFXV2RTRIPQKF6FBS
X-MailFrom: brian.diaz.476@my.csun.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Major compat number mismatch for noc_shell: Expecting 3, got 5 Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/43AI3LWP5G374R3MFXV2RTRIPQKF6FBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Brian Diaz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: brian.diaz.476@my.csun.edu
Content-Type: multipart/mixed; boundary="===============1192786325516582147=="

This is a multi-part message in MIME format.

--===============1192786325516582147==
Content-Type: multipart/alternative;
 boundary="b1_QxhXj4hPiutixI6Wg3DjqCzzjBMM2ZG9lcnNq1nwiA0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QxhXj4hPiutixI6Wg3DjqCzzjBMM2ZG9lcnNq1nwiA0
Content-Type: text/plain; charset=us-ascii

Hello, 

I am not sure what this error means and how to fix it. I tried running a command a received this error. This is my entire cmd prompt session: \
\
C:\\Program Files\\UHD\\bin>uhd_usrp_probe

\[INFO\] \[UHD\] Win32; Microsoft Visual C++ version 1920; Boost_107000; UHD_3.14.1.1-release

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=False,addr=192.168.10.2

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`mgmt_addr=192.168.10.2,time_source=internal,product=n310,clock_source=internal'.

\[INFO\] \[0/Replay_0\] Initializing block control (NOC ID: 0x4E91A00000000004)

\[INFO\] \[0/Radio_0\] Initializing block control (NOC ID: 0x12AD100000011312)

\[INFO\] \[0/Radio_1\] Initializing block control (NOC ID: 0x12AD100000011312)

\[INFO\] \[0/DDC_0\] Initializing block control (NOC ID: 0xDDC0000000000000)

\[INFO\] \[0/DDC_1\] Initializing block control (NOC ID: 0xDDC0000000000000)

\[INFO\] \[0/DUC_0\] Initializing block control (NOC ID: 0xD0C0000000000002)

\[INFO\] \[0/DUC_1\] Initializing block control (NOC ID: 0xD0C0000000000002)

\[INFO\] \[0/FIFO_0\] Initializing block control (NOC ID: 0xF1F0000000000000)

\[INFO\] \[0/FIFO_1\] Initializing block control (NOC ID: 0xF1F0000000000000)

\[INFO\] \[0/FIFO_2\] Initializing block control (NOC ID: 0xF1F0000000000000)

\[INFO\] \[0/FIFO_3\] Initializing block control (NOC ID: 0xF1F0000000000000)

  _____________________________________________________

 /

|       Device: N300-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: ni-n3xx-3177E63

|   |   eeprom_version: 3

|   |   mpm_version: 3.14.1.1-g0347a6d8

|   |   pid: 16962

|   |   product: n310

|   |   rev: 10

|   |   rpc_connection: remote

|   |   serial: 3177E63

|   |   type: n3xx

|   |   MPM Version: 1.2

|   |   FPGA Version: 5.3

|   |   FPGA git hash: bb85bdf.clean

|   |   RFNoC capable: Yes

|   |

|   |   Time sources:  internal, external, gpsdo, sfp0

|   |   Clock sources: external, internal, gpsdo

|   |   Sensors: gps_time, temp, gps_locked, gps_tpv, fan, ref_locked, gps_gpgga, gps_sky

|   |     _____________________________________________________

|   |    /

|   |   |       RX Dboard: A

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: 0

|   |   |   |   Name: Magnesium

|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked

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

|   |   |   \* Replay_0

|   |   |   \* Radio_0

|   |   |   \* Radio_1

|   |   |   \* DDC_0

|   |   |   \* DDC_1

|   |   |   \* DUC_0

|   |   |   \* DUC_1

|   |   |   \* FIFO_0

|   |   |   \* FIFO_1

|   |   |   \* FIFO_2

|   |   |   \* FIFO_3

C:\\Program Files\\UHD\\bin>cd C:\\Program Files\\UHD\\lib\\uhd\\examples

C:\\Program Files\\UHD\\lib\\uhd\\examples>txrx_loopback_to_file tx-args 192.168.10.2 rx-args 192.168.10.2 --file = new_test.dat --nsamps = 10000 --tx-rate 1e6 --rx-rate 1e6 --tx-freq 2.4e9 --rx-freq 2.4e9 --tx-gain 5 --rx-gain 5 --wave-type = SINE --tx-channels=0 --rx-channels=2

Error: the argument ('=') for option '--nsamps' is invalid

C:\\Program Files\\UHD\\lib\\uhd\\examples>txrx_loopback_to_file tx-args 192.168.10.2 rx-args 192.168.10.2 --file = new_test.dat --nsamps=10000 --tx-rate 1e6 --rx-rate 1e6 --tx-freq 2.4e9 --rx-freq 2.4e9 --tx-gain 5 --rx-gain 5 --wave-type = SINE --tx-channels=0 --rx-channels=2

Creating the transmit usrp device with: ...

\[INFO\] \[UHD\] Win32; Microsoft Visual C++ version 14.0; Boost_105900; UHD_3.13.1.0-release

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=False,addr=192.168.10.2

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`mgmt_addr=192.168.10.2,time_source=internal,product=n310,clock_source=internal'.

\[WARNING\] \[RFNOC\] Can't find a block controller for key Replay, using default block controller!

\[INFO\] \[0/Replay_0\] Initializing block control (NOC ID: 0x4E91A00000000004)

\[ERROR\] \[0/Replay_0\] Major compat number mismatch for noc_shell: Expecting 3, got 5.

\[ERROR\] \[MPMD\] Failure during block enumeration: RuntimeError: FPGA component \`noc_shell' is revision 5 and UHD supports revision 3. Please either upgrade UHD  (recommended) or downgrade the FPGA image.

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

C:\\Program Files\\UHD\\lib\\uhd\\examples>

--b1_QxhXj4hPiutixI6Wg3DjqCzzjBMM2ZG9lcnNq1nwiA0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello, </p><p>I am not sure what this error means and how to fix it. I t=
ried running a command a received this error. This is my entire cmd prompt =
session: <br><br>C:\Program Files\UHD\bin&gt;uhd_usrp_probe</p><p>[INFO] [U=
HD] Win32; Microsoft Visual C++ version 1920; Boost_107000; UHD_3.14.1.1-re=
lease</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: m=
gmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3177E63,claimed=
=3DFalse,addr=3D192.168.10.2</p><p>[INFO] [MPM.PeriphManager] init() called=
 with device args `mgmt_addr=3D192.168.10.2,time_source=3Dinternal,product=
=3Dn310,clock_source=3Dinternal'.</p><p>[INFO] [0/Replay_0] Initializing bl=
ock control (NOC ID: 0x4E91A00000000004)</p><p>[INFO] [0/Radio_0] Initializ=
ing block control (NOC ID: 0x12AD100000011312)</p><p>[INFO] [0/Radio_1] Ini=
tializing block control (NOC ID: 0x12AD100000011312)</p><p>[INFO] [0/DDC_0]=
 Initializing block control (NOC ID: 0xDDC0000000000000)</p><p>[INFO] [0/DD=
C_1] Initializing block control (NOC ID: 0xDDC0000000000000)</p><p>[INFO] [=
0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)</p><p>[INF=
O] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)</p><p>=
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</=
p><p>[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F00000000000=
00)</p><p>[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F000000=
0000000)</p><p>[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0=
000000000000)</p><p>  _____________________________________________________=
</p><p> /</p><p>|       Device: N300-Series Device</p><p>|     ____________=
_________________________________________</p><p>|    /</p><p>|   |       Mb=
oard: ni-n3xx-3177E63</p><p>|   |   eeprom_version: 3</p><p>|   |   mpm_ver=
sion: 3.14.1.1-g0347a6d8</p><p>|   |   pid: 16962</p><p>|   |   product: n3=
10</p><p>|   |   rev: 10</p><p>|   |   rpc_connection: remote</p><p>|   |  =
 serial: 3177E63</p><p>|   |   type: n3xx</p><p>|   |   MPM Version: 1.2</p=
><p>|   |   FPGA Version: 5.3</p><p>|   |   FPGA git hash: bb85bdf.clean</p=
><p>|   |   RFNoC capable: Yes</p><p>|   |</p><p>|   |   Time sources:  int=
ernal, external, gpsdo, sfp0</p><p>|   |   Clock sources: external, interna=
l, gpsdo</p><p>|   |   Sensors: gps_time, temp, gps_locked, gps_tpv, fan, r=
ef_locked, gps_gpgga, gps_sky</p><p>|   |     _____________________________=
________________________</p><p>|   |    /</p><p>|   |   |       RX Dboard: =
A</p><p>|   |   |     _____________________________________________________=
</p><p>|   |   |    /</p><p>|   |   |   |       RX Frontend: 0</p><p>|   | =
  |   |   Name: Magnesium</p><p>|   |   |   |   Antennas: TX/RX, RX2, CAL, =
LOCAL</p><p>|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_l=
o_locked</p><p>|   |   |   |   Freq range: 1.000 to 6000.000 MHz</p><p>|   =
|   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB</p><p>|   |   |   |   G=
ain range rfic: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range dsa=
: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range amp: 0.0 to 0.0 s=
tep 0.0 dB</p><p>|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0=
 step 0.0 Hz</p><p>|   |   |   |   Connection Type: IQ</p><p>|   |   |   | =
  Uses LO offset: No</p><p>|   |   |     __________________________________=
___________________</p><p>|   |   |    /</p><p>|   |   |   |       RX Front=
end: 1</p><p>|   |   |   |   Name: Magnesium</p><p>|   |   |   |   Antennas=
: TX/RX, RX2, CAL, LOCAL</p><p>|   |   |   |   Sensors: lo_locked, lowband_=
lo_locked, ad9371_lo_locked</p><p>|   |   |   |   Freq range: 1.000 to 6000=
.000 MHz</p><p>|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB</p><=
p>|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |  =
 |   Gain range dsa: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain rang=
e amp: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Bandwidth range: 200000=
00.0 to 100000000.0 step 0.0 Hz</p><p>|   |   |   |   Connection Type: IQ</=
p><p>|   |   |   |   Uses LO offset: No</p><p>|   |   |     _______________=
______________________________________</p><p>|   |   |    /</p><p>|   |   |=
   |       RX Codec: A</p><p>|   |   |   |   Name: AD9371 Dual ADC</p><p>| =
  |   |   |   Gain Elements: None</p><p>|   |     _________________________=
____________________________</p><p>|   |    /</p><p>|   |   |       RX Dboa=
rd: B</p><p>|   |   |     _________________________________________________=
____</p><p>|   |   |    /</p><p>|   |   |   |       RX Frontend: 0</p><p>| =
  |   |   |   Name: Magnesium</p><p>|   |   |   |   Antennas: TX/RX, RX2, C=
AL, LOCAL</p><p>|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad93=
71_lo_locked</p><p>|   |   |   |   Freq range: 1.000 to 6000.000 MHz</p><p>=
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB</p><p>|   |   |   |=
   Gain range rfic: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range=
 dsa: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range amp: 0.0 to 0=
.0 step 0.0 dB</p><p>|   |   |   |   Bandwidth range: 20000000.0 to 1000000=
00.0 step 0.0 Hz</p><p>|   |   |   |   Connection Type: IQ</p><p>|   |   | =
  |   Uses LO offset: No</p><p>|   |   |     ______________________________=
_______________________</p><p>|   |   |    /</p><p>|   |   |   |       RX F=
rontend: 1</p><p>|   |   |   |   Name: Magnesium</p><p>|   |   |   |   Ante=
nnas: TX/RX, RX2, CAL, LOCAL</p><p>|   |   |   |   Sensors: lo_locked, lowb=
and_lo_locked, ad9371_lo_locked</p><p>|   |   |   |   Freq range: 1.000 to =
6000.000 MHz</p><p>|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB<=
/p><p>|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB</p><p>|   |  =
 |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain =
range amp: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Bandwidth range: 20=
000000.0 to 100000000.0 step 0.0 Hz</p><p>|   |   |   |   Connection Type: =
IQ</p><p>|   |   |   |   Uses LO offset: No</p><p>|   |   |     ___________=
__________________________________________</p><p>|   |   |    /</p><p>|   |=
   |   |       RX Codec: B</p><p>|   |   |   |   Name: AD9371 Dual ADC</p><=
p>|   |   |   |   Gain Elements: None</p><p>|   |     _____________________=
________________________________</p><p>|   |    /</p><p>|   |   |       TX =
Dboard: A</p><p>|   |   |     _____________________________________________=
________</p><p>|   |   |    /</p><p>|   |   |   |       TX Frontend: 0</p><=
p>|   |   |   |   Name: Magnesium</p><p>|   |   |   |   Antennas: TX/RX</p>=
<p>|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<=
/p><p>|   |   |   |   Freq range: 1.000 to 6000.000 MHz</p><p>|   |   |   |=
   Gain range all: 0.0 to 65.0 step 0.5 dB</p><p>|   |   |   |   Gain range=
 rfic: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range dsa: 0.0 to =
0.0 step 0.0 dB</p><p>|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 d=
B</p><p>|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz</p><p>|   |   |   |   Connection Type: IQ</p><p>|   |   |   |   Uses LO=
 offset: No</p><p>|   |   |     ___________________________________________=
__________</p><p>|   |   |    /</p><p>|   |   |   |       TX Frontend: 1</p=
><p>|   |   |   |   Name: Magnesium</p><p>|   |   |   |   Antennas: TX/RX</=
p><p>|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locke=
d</p><p>|   |   |   |   Freq range: 1.000 to 6000.000 MHz</p><p>|   |   |  =
 |   Gain range all: 0.0 to 65.0 step 0.5 dB</p><p>|   |   |   |   Gain ran=
ge rfic: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range dsa: 0.0 t=
o 0.0 step 0.0 dB</p><p>|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0=
 dB</p><p>|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0=
.0 Hz</p><p>|   |   |   |   Connection Type: IQ</p><p>|   |   |   |   Uses =
LO offset: No</p><p>|   |   |     _________________________________________=
____________</p><p>|   |   |    /</p><p>|   |   |   |       TX Codec: A</p>=
<p>|   |   |   |   Name: AD9371 Dual DAC</p><p>|   |   |   |   Gain Element=
s: None</p><p>|   |     ___________________________________________________=
__</p><p>|   |    /</p><p>|   |   |       TX Dboard: B</p><p>|   |   |     =
_____________________________________________________</p><p>|   |   |    /<=
/p><p>|   |   |   |       TX Frontend: 0</p><p>|   |   |   |   Name: Magnes=
ium</p><p>|   |   |   |   Antennas: TX/RX</p><p>|   |   |   |   Sensors: lo=
_locked, lowband_lo_locked, ad9371_lo_locked</p><p>|   |   |   |   Freq ran=
ge: 1.000 to 6000.000 MHz</p><p>|   |   |   |   Gain range all: 0.0 to 65.0=
 step 0.5 dB</p><p>|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB<=
/p><p>|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB</p><p>|   |   =
|   |   Gain range amp: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Bandwi=
dth range: 20000000.0 to 100000000.0 step 0.0 Hz</p><p>|   |   |   |   Conn=
ection Type: IQ</p><p>|   |   |   |   Uses LO offset: No</p><p>|   |   |   =
  _____________________________________________________</p><p>|   |   |    =
/</p><p>|   |   |   |       TX Frontend: 1</p><p>|   |   |   |   Name: Magn=
esium</p><p>|   |   |   |   Antennas: TX/RX</p><p>|   |   |   |   Sensors: =
lo_locked, lowband_lo_locked, ad9371_lo_locked</p><p>|   |   |   |   Freq r=
ange: 1.000 to 6000.000 MHz</p><p>|   |   |   |   Gain range all: 0.0 to 65=
.0 step 0.5 dB</p><p>|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 d=
B</p><p>|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB</p><p>|   | =
  |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB</p><p>|   |   |   |   Band=
width range: 20000000.0 to 100000000.0 step 0.0 Hz</p><p>|   |   |   |   Co=
nnection Type: IQ</p><p>|   |   |   |   Uses LO offset: No</p><p>|   |   | =
    _____________________________________________________</p><p>|   |   |  =
  /</p><p>|   |   |   |       TX Codec: B</p><p>|   |   |   |   Name: AD937=
1 Dual DAC</p><p>|   |   |   |   Gain Elements: None</p><p>|   |     ______=
_______________________________________________</p><p>|   |    /</p><p>|   =
|   |       RFNoC blocks on this device:</p><p>|   |   |</p><p>|   |   |   =
* Replay_0</p><p>|   |   |   * Radio_0</p><p>|   |   |   * Radio_1</p><p>| =
  |   |   * DDC_0</p><p>|   |   |   * DDC_1</p><p>|   |   |   * DUC_0</p><p=
>|   |   |   * DUC_1</p><p>|   |   |   * FIFO_0</p><p>|   |   |   * FIFO_1<=
/p><p>|   |   |   * FIFO_2</p><p>|   |   |   * FIFO_3</p><p>C:\Program File=
s\UHD\bin&gt;cd C:\Program Files\UHD\lib\uhd\examples</p><p>C:\Program File=
s\UHD\lib\uhd\examples&gt;txrx_loopback_to_file tx-args 192.168.10.2 rx-arg=
s 192.168.10.2 --file =3D new_test.dat --nsamps =3D 10000 --tx-rate 1e6 --r=
x-rate 1e6 --tx-freq 2.4e9 --rx-freq 2.4e9 --tx-gain 5 --rx-gain 5 --wave-t=
ype =3D SINE --tx-channels=3D0 --rx-channels=3D2</p><p>Error: the argument =
('=3D') for option '--nsamps' is invalid</p><p>C:\Program Files\UHD\lib\uhd=
\examples&gt;txrx_loopback_to_file tx-args 192.168.10.2 rx-args 192.168.10.=
2 --file =3D new_test.dat --nsamps=3D10000 --tx-rate 1e6 --rx-rate 1e6 --tx=
-freq 2.4e9 --rx-freq 2.4e9 --tx-gain 5 --rx-gain 5 --wave-type =3D SINE --=
tx-channels=3D0 --rx-channels=3D2</p><p>Creating the transmit usrp device w=
ith: ...</p><p>[INFO] [UHD] Win32; Microsoft Visual C++ version 14.0; Boost=
_105900; UHD_3.13.1.0-release</p><p>[INFO] [MPMD] Initializing 1 device(s) =
in parallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,=
serial=3D3177E63,claimed=3DFalse,addr=3D192.168.10.2</p><p>[INFO] [MPM.Peri=
phManager] init() called with device args `mgmt_addr=3D192.168.10.2,time_so=
urce=3Dinternal,product=3Dn310,clock_source=3Dinternal'.</p><p>[WARNING] [R=
FNOC] Can't find a block controller for key Replay, using default block con=
troller!</p><p>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E=
91A00000000004)</p><p>[ERROR] [0/Replay_0] Major compat number mismatch for=
 noc_shell: Expecting 3, got 5.</p><p>[ERROR] [MPMD] Failure during block e=
numeration: RuntimeError: FPGA component `noc_shell' is revision 5 and UHD =
supports revision 3. Please either upgrade UHD  (recommended) or downgrade =
the FPGA image.</p><p>Error: RuntimeError: Failed to run enumerate_rfnoc_bl=
ocks()</p><p>C:\Program Files\UHD\lib\uhd\examples&gt;</p>

--b1_QxhXj4hPiutixI6Wg3DjqCzzjBMM2ZG9lcnNq1nwiA0--

--===============1192786325516582147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1192786325516582147==--
