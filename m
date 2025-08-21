Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17938B2EEF7
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 09:00:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8227386536
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 03:00:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755759649; bh=GfohRJsOQtHhajZjkfL/UXWw/wUoEGDRp2VXUtlfBH4=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=yGxOnN/FqeOYzS9oMiXoxcfuj0coPjNh2+nHywSr90vuy/conAdoOagsHE5BtqzsL
	 Uwge7F7OvDg2x29prp1y4CRnXXKjBqHVAoHk66hlUeCe+ZgoZMnDkGYe/A4W0mQLSB
	 lRn/N8/y+JJMZvPuHp6Rmpj5m2bYEchB6DJm3ikp0tZvpkdmHzciIFcjrl4JBU50YT
	 DMo02dAtztWtEQ1mCNfaH8HpUKstbADnYQumdlzLMgKgM1MX4/XHGKEMMY3jKnHi+D
	 munai6islyTDSdUORuQt8tCvBgkJd41IWN22DvI5aDlRLY0vg9V6a5Skuz5EaMPgHB
	 OJoIeDyKk7qxA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B191A3862E8
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 02:59:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755759596; bh=4ivGaXkWdJGEDV1bAnLM2waHUS/WaIFLDLmgxVQXDGo=;
	h=Date:To:From:Subject:From;
	b=NxXKiJd2MUVxF2FutqeSFEN3m43lbJ427ILmGeOFoGq97Mx+g6ESM8LwmTBipSCHk
	 x78gmQ66Tio+wML8fAKBkrAkqpOvnRy3pULiCir+4k7BcWoMRPFt0Ubbv4e8IA87OO
	 57fWDeOJJMxFSMTBP2GwYsCNrQHIrjsGqXk7RXwvzZzrn0ZubXlkSQzXxYtiXlaM1b
	 nd1elBg/uptfF0TCMhyO/m57B/2ejry8PXUp3F7deKzrzs7IfAVjMWp1oSewH6shWx
	 oUD9hBIuRF4Zc+rX1biZuFozJFFhxufUmU7y6PunE9+llbFuK4hukF+m4uxptg7GHS
	 bnS5Vostt8Seg==
Date: Thu, 21 Aug 2025 06:59:56 +0000
To: usrp-users@lists.ettus.com
Message-ID: <ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AKYRKJCKWHITKAKGTNKPUSTU2HLM5YJB
X-Message-ID-Hash: AKYRKJCKWHITKAKGTNKPUSTU2HLM5YJB
X-MailFrom: rfserranor@indra.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error with ettus x440: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKYRKJCKWHITKAKGTNKPUSTU2HLM5YJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Rub=C3=A9n_Serrano_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: rfserranor@indra.es
Content-Type: multipart/mixed; boundary="===============5883458207670840308=="

This is a multi-part message in MIME format.

--===============5883458207670840308==
Content-Type: multipart/alternative;
 boundary="b1_ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s
Content-Type: text/plain; charset=us-ascii

Hi All,

**I am trying to run the following command with a configurated ettus x440:**

    *uhd_usrp_probe*

**, and i am getting the next (complete) output:**

```
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.heads-v4.8.0.0-0-g308126a4
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.0.3,type=x4xx,product=x440,serial=34B2ACC,name=ni-x4xx-34B2ACC,fpga=X4_400,claimed=False,addr=192.168.0.3
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=X4_400,mgmt_addr=192.168.0.3,name=ni-x4xx-34B2ACC,product=x440,clock_source=internal,time_source=internal,initializing=True'.
```

```
[WARNING] [UDP] The send buffer could not be resized sufficiently.
```

```
Target sock buff size: 2500000 bytes.
```

```
Actual sock buff size: 1048576 bytes.
```

```
See the transport application notes on buffer resizing.
```

```
Please run: sudo sysctl -w net.core.wmem_max=2500000
```

```
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError: OpTimeout: Control operation timed out waiting for ACK
```

```
Error: RuntimeError: Failure to create rfnoc_graph.
```

**I know that this is not an error due to the uhd installation because I have purchased another one ettus x440 device and the output obtained with the same command is completely different:**

```
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.8.0.0-0-g308126a4
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=127.0.0.1,type=x4xx,product=x440,serial=34B2ACC,name=ni-x4xx-34B2ACC,fpga=X4_400,claimed=False
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=X4_400,mgmt_addr=127.0.0.1,name=ni-x4xx-34B2ACC,product=x440,clock_source=internal,time_source=internal,initializing=True'.
```

```
  _____________________________________________________
```

```
 /
```

```
|       Device: X400-Series Device
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       Mboard: ni-x4xx-34B2ACC
```

```
|   |   module_pid: 42048
```

```
|   |   module_rev: 4
```

```
|   |   module_serial: 34B2ACC
```

```
|   |   pid: 1088
```

```
|   |   rev: 6
```

```
|   |   rev_compat: 6
```

```
|   |   serial: 345A6FE
```

```
|   |   MPM Version: 5.3
```

```
|   |   FPGA Version: 8.3
```

```
|   |   FPGA git hash: 8e780be.clean
```

```
|   |   Device DNA: 40020000017166A5242062C5
```

```
|   |   RFNoC capable: Yes
```

```
|   |   
```

```
|   |   Time sources:  internal, external, qsfp0, gpsdo
```

```
|   |   Clock sources: mboard, internal, external, nsync, gpsdo
```

```
|   |   Sensors: ref_locked, fan0, fan1, temp_fpga, temp_main_power0, temp_main_power1, temp_scu_internal, temp_sample_clock_pcb, temp_dram_pcb, temp_tmp464_internal, temp_power_supply_pcb, gps_alarm, gps_enabled, gps_gpgga, gps_locked, gps_phase_lock, gps_sky, gps_survey, gps_time, gps_tpv, gps_warmup
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       RFNoC blocks on this device:
```

```
|   |   
```

```
|   |   * 0/Radio#0
```

```
|   |   * 0/Radio#1
```

```
|   |   * 0/Replay#0
```

```
|   |   * 0/Replay#1
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       Static connections on this device:
```

```
|   |   
```

```
|   |   * 0/SEP#0:0==>0/Radio#0:0
```

```
|   |   * 0/Radio#0:0==>0/SEP#0:0
```

```
|   |   * 0/SEP#1:0==>0/Radio#0:1
```

```
|   |   * 0/Radio#0:1==>0/SEP#1:0
```

```
|   |   * 0/SEP#2:0==>0/Radio#0:2
```

```
|   |   * 0/Radio#0:2==>0/SEP#2:0
```

```
|   |   * 0/SEP#3:0==>0/Radio#0:3
```

```
|   |   * 0/Radio#0:3==>0/SEP#3:0
```

```
|   |   * 0/SEP#4:0==>0/Radio#1:0
```

```
|   |   * 0/Radio#1:0==>0/SEP#4:0
```

```
|   |   * 0/SEP#5:0==>0/Radio#1:1
```

```
|   |   * 0/Radio#1:1==>0/SEP#5:0
```

```
|   |   * 0/SEP#6:0==>0/Radio#1:2
```

```
|   |   * 0/Radio#1:2==>0/SEP#6:0
```

```
|   |   * 0/SEP#7:0==>0/Radio#1:3
```

```
|   |   * 0/Radio#1:3==>0/SEP#7:0
```

```
|   |   * 0/SEP#8:0==>0/Replay#0:0
```

```
|   |   * 0/Replay#0:0==>0/SEP#8:0
```

```
|   |   * 0/SEP#9:0==>0/Replay#0:1
```

```
|   |   * 0/Replay#0:1==>0/SEP#9:0
```

```
|   |   * 0/SEP#10:0==>0/Replay#0:2
```

```
|   |   * 0/Replay#0:2==>0/SEP#10:0
```

```
|   |   * 0/SEP#11:0==>0/Replay#0:3
```

```
|   |   * 0/Replay#0:3==>0/SEP#11:0
```

```
|   |   * 0/SEP#12:0==>0/Replay#1:0
```

```
|   |   * 0/Replay#1:0==>0/SEP#12:0
```

```
|   |   * 0/SEP#13:0==>0/Replay#1:1
```

```
|   |   * 0/Replay#1:1==>0/SEP#13:0
```

```
|   |   * 0/SEP#14:0==>0/Replay#1:2
```

```
|   |   * 0/Replay#1:2==>0/SEP#14:0
```

```
|   |   * 0/SEP#15:0==>0/Replay#1:3
```

```
|   |   * 0/Replay#1:3==>0/SEP#15:0
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       TX Dboard: 0/Radio#0
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 0
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 1
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 2
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 3
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0__________________________
```

```
|   |    /
```

```
|   |   |       RX Frontend: 3
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       TX Dboard: 0/Radio#1
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 0
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 1
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 2
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Frontend: 3
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, CAL_LOOPBACK
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       RX Dboard: 0/Radio#1
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RX Frontend: 0
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RX Frontend: 1
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RX Frontend: 2
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

```
|   |   |   Uses LO offset: No
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RX Frontend: 3
```

```
|   |   |   Name: FBX
```

```
|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM
```

```
|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked
```

```
|   |   |   Freq range: 1.000 to 4000.000 MHz
```

```
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB
```

```
|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz
```

```
|   |   |   Connection Type: IQ
```

|   |   |   Uses LO offset: No


**Do you have any idea of what is happening or could you help me to fix the error?**

--b1_ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p><strong>I am trying to run the following command with a co=
nfigurated ettus x440:</strong></p><p>    <em>uhd_usrp_probe</em></p><p><st=
rong>, and i am getting the next (complete) output:</strong></p><pre><code>=
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.heads-v=
4.8.0.0-0-g308126a4</code></pre><pre><code>[INFO] [MPMD] Initializing 1 dev=
ice(s) in parallel with args: mgmt_addr=3D192.168.0.3,type=3Dx4xx,product=
=3Dx440,serial=3D34B2ACC,name=3Dni-x4xx-34B2ACC,fpga=3DX4_400,claimed=3DFal=
se,addr=3D192.168.0.3</code></pre><pre><code>[INFO] [MPM.PeriphManager] ini=
t() called with device args `fpga=3DX4_400,mgmt_addr=3D192.168.0.3,name=3Dn=
i-x4xx-34B2ACC,product=3Dx440,clock_source=3Dinternal,time_source=3Dinterna=
l,initializing=3DTrue'.</code></pre><pre><code>[WARNING] [UDP] The send buf=
fer could not be resized sufficiently.</code></pre><pre><code>Target sock b=
uff size: 2500000 bytes.</code></pre><pre><code>Actual sock buff size: 1048=
576 bytes.</code></pre><pre><code>See the transport application notes on bu=
ffer resizing.</code></pre><pre><code>Please run: sudo sysctl -w net.core.w=
mem_max=3D2500000</code></pre><pre><code>[ERROR] [RFNOC::GRAPH] Caught exce=
ption while initializing graph: RfnocError: OpTimeout: Control operation ti=
med out waiting for ACK</code></pre><pre><code>Error: RuntimeError: Failure=
 to create rfnoc_graph.
<br></code></pre><p><strong>I know that this is not an error due to the uhd=
 installation because I have purchased another one ettus x440 device and th=
e output obtained with the same command is completely different:</strong></=
p><p><br></p><pre><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_1=
07800; UHD_4.8.0.0-0-g308126a4</code></pre><pre><code>[INFO] [MPMD] Initial=
izing 1 device(s) in parallel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,=
product=3Dx440,serial=3D34B2ACC,name=3Dni-x4xx-34B2ACC,fpga=3DX4_400,claime=
d=3DFalse</code></pre><pre><code>[INFO] [MPM.PeriphManager] init() called w=
ith device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-34B2ACC=
,product=3Dx440,clock_source=3Dinternal,time_source=3Dinternal,initializing=
=3DTrue'.</code></pre><pre><code>  ________________________________________=
_____________</code></pre><pre><code> /</code></pre><pre><code>|       Devi=
ce: X400-Series Device</code></pre><pre><code>|     _______________________=
______________________________</code></pre><pre><code>|    /</code></pre><p=
re><code>|   |       Mboard: ni-x4xx-34B2ACC</code></pre><pre><code>|   |  =
 module_pid: 42048</code></pre><pre><code>|   |   module_rev: 4</code></pre=
><pre><code>|   |   module_serial: 34B2ACC</code></pre><pre><code>|   |   p=
id: 1088</code></pre><pre><code>|   |   rev: 6</code></pre><pre><code>|   |=
   rev_compat: 6</code></pre><pre><code>|   |   serial: 345A6FE</code></pre=
><pre><code>|   |   MPM Version: 5.3</code></pre><pre><code>|   |   FPGA Ve=
rsion: 8.3</code></pre><pre><code>|   |   FPGA git hash: 8e780be.clean</cod=
e></pre><pre><code>|   |   Device DNA: 40020000017166A5242062C5</code></pre=
><pre><code>|   |   RFNoC capable: Yes</code></pre><pre><code>|   |   </cod=
e></pre><pre><code>|   |   Time sources:  internal, external, qsfp0, gpsdo<=
/code></pre><pre><code>|   |   Clock sources: mboard, internal, external, n=
sync, gpsdo</code></pre><pre><code>|   |   Sensors: ref_locked, fan0, fan1,=
 temp_fpga, temp_main_power0, temp_main_power1, temp_scu_internal, temp_sam=
ple_clock_pcb, temp_dram_pcb, temp_tmp464_internal, temp_power_supply_pcb, =
gps_alarm, gps_enabled, gps_gpgga, gps_locked, gps_phase_lock, gps_sky, gps=
_survey, gps_time, gps_tpv, gps_warmup</code></pre><pre><code>|     _______=
______________________________________________</code></pre><pre><code>|    =
/</code></pre><pre><code>|   |       RFNoC blocks on this device:</code></p=
re><pre><code>|   |   </code></pre><pre><code>|   |   * 0/Radio#0</code></p=
re><pre><code>|   |   * 0/Radio#1</code></pre><pre><code>|   |   * 0/Replay=
#0</code></pre><pre><code>|   |   * 0/Replay#1</code></pre><pre><code>|    =
 _____________________________________________________</code></pre><pre><co=
de>|    /</code></pre><pre><code>|   |       Static connections on this dev=
ice:</code></pre><pre><code>|   |   </code></pre><pre><code>|   |   * 0/SEP=
#0:0=3D=3D&gt;0/Radio#0:0</code></pre><pre><code>|   |   * 0/Radio#0:0=3D=
=3D&gt;0/SEP#0:0</code></pre><pre><code>|   |   * 0/SEP#1:0=3D=3D&gt;0/Radi=
o#0:1</code></pre><pre><code>|   |   * 0/Radio#0:1=3D=3D&gt;0/SEP#1:0</code=
></pre><pre><code>|   |   * 0/SEP#2:0=3D=3D&gt;0/Radio#0:2</code></pre><pre=
><code>|   |   * 0/Radio#0:2=3D=3D&gt;0/SEP#2:0</code></pre><pre><code>|   =
|   * 0/SEP#3:0=3D=3D&gt;0/Radio#0:3</code></pre><pre><code>|   |   * 0/Rad=
io#0:3=3D=3D&gt;0/SEP#3:0</code></pre><pre><code>|   |   * 0/SEP#4:0=3D=3D&=
gt;0/Radio#1:0</code></pre><pre><code>|   |   * 0/Radio#1:0=3D=3D&gt;0/SEP#=
4:0</code></pre><pre><code>|   |   * 0/SEP#5:0=3D=3D&gt;0/Radio#1:1</code><=
/pre><pre><code>|   |   * 0/Radio#1:1=3D=3D&gt;0/SEP#5:0</code></pre><pre><=
code>|   |   * 0/SEP#6:0=3D=3D&gt;0/Radio#1:2</code></pre><pre><code>|   | =
  * 0/Radio#1:2=3D=3D&gt;0/SEP#6:0</code></pre><pre><code>|   |   * 0/SEP#7=
:0=3D=3D&gt;0/Radio#1:3</code></pre><pre><code>|   |   * 0/Radio#1:3=3D=3D&=
gt;0/SEP#7:0</code></pre><pre><code>|   |   * 0/SEP#8:0=3D=3D&gt;0/Replay#0=
:0</code></pre><pre><code>|   |   * 0/Replay#0:0=3D=3D&gt;0/SEP#8:0</code><=
/pre><pre><code>|   |   * 0/SEP#9:0=3D=3D&gt;0/Replay#0:1</code></pre><pre>=
<code>|   |   * 0/Replay#0:1=3D=3D&gt;0/SEP#9:0</code></pre><pre><code>|   =
|   * 0/SEP#10:0=3D=3D&gt;0/Replay#0:2</code></pre><pre><code>|   |   * 0/R=
eplay#0:2=3D=3D&gt;0/SEP#10:0</code></pre><pre><code>|   |   * 0/SEP#11:0=
=3D=3D&gt;0/Replay#0:3</code></pre><pre><code>|   |   * 0/Replay#0:3=3D=3D&=
gt;0/SEP#11:0</code></pre><pre><code>|   |   * 0/SEP#12:0=3D=3D&gt;0/Replay=
#1:0</code></pre><pre><code>|   |   * 0/Replay#1:0=3D=3D&gt;0/SEP#12:0</cod=
e></pre><pre><code>|   |   * 0/SEP#13:0=3D=3D&gt;0/Replay#1:1</code></pre><=
pre><code>|   |   * 0/Replay#1:1=3D=3D&gt;0/SEP#13:0</code></pre><pre><code=
>|   |   * 0/SEP#14:0=3D=3D&gt;0/Replay#1:2</code></pre><pre><code>|   |   =
* 0/Replay#1:2=3D=3D&gt;0/SEP#14:0</code></pre><pre><code>|   |   * 0/SEP#1=
5:0=3D=3D&gt;0/Replay#1:3</code></pre><pre><code>|   |   * 0/Replay#1:3=3D=
=3D&gt;0/SEP#15:0</code></pre><pre><code>|     ____________________________=
_________________________</code></pre><pre><code>|    /</code></pre><pre><c=
ode>|   |       TX Dboard: 0/Radio#0</code></pre><pre><code>|   |     _____=
________________________________________________</code></pre><pre><code>|  =
 |    /</code></pre><pre><code>|   |   |       TX Frontend: 0</code></pre><=
pre><code>|   |   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas=
: TX/RX0, CAL_LOOPBACK</code></pre><pre><code>|   |   |   Sensors: temperat=
ure, rfdc_rate, lo_locked, nco_locked</code></pre><pre><code>|   |   |   Fr=
eq range: 1.000 to 4000.000 MHz</code></pre><pre><code>|   |   |   Gain ran=
ge all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|   |   |   Bandwidth=
 range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></pre><pre><code>|  =
 |   |   Connection Type: IQ</code></pre><pre><code>|   |   |   Uses LO off=
set: No</code></pre><pre><code>|   |     __________________________________=
___________________</code></pre><pre><code>|   |    /</code></pre><pre><cod=
e>|   |   |       TX Frontend: 1</code></pre><pre><code>|   |   |   Name: F=
BX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, CAL_LOOPBACK</code>=
</pre><pre><code>|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nc=
o_locked</code></pre><pre><code>|   |   |   Freq range: 1.000 to 4000.000 M=
Hz</code></pre><pre><code>|   |   |   Gain range all: 0.0 to 0.0 step 0.0 d=
B</code></pre><pre><code>|   |   |   Bandwidth range: 1600000000.0 to 16000=
00000.0 step 0.0 Hz</code></pre><pre><code>|   |   |   Connection Type: IQ<=
/code></pre><pre><code>|   |   |   Uses LO offset: No</code></pre><pre><cod=
e>|   |     _____________________________________________________</code></p=
re><pre><code>|   |    /</code></pre><pre><code>|   |   |       TX Frontend=
: 2</code></pre><pre><code>|   |   |   Name: FBX</code></pre><pre><code>|  =
 |   |   Antennas: TX/RX0, CAL_LOOPBACK</code></pre><pre><code>|   |   |   =
Sensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><pre><co=
de>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><code>|  =
 |   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|   =
|   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></p=
re><pre><code>|   |   |   Connection Type: IQ</code></pre><pre><code>|   | =
  |   Uses LO offset: No</code></pre><pre><code>|   |     _________________=
____________________________________</code></pre><pre><code>|   |    /</cod=
e></pre><pre><code>|   |   |       TX Frontend: 3</code></pre><pre><code>| =
  |   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, CA=
L_LOOPBACK</code></pre><pre><code>|   |   |   Sensors: temperature, rfdc_ra=
te, lo_locked, nco_locked</code></pre><pre><code>|   |   |   Freq range: 1.=
000 to 4000.000 MHz</code></pre><pre><code>|   |   |   Gain range all: 0.0 =
to 0.0 step 0.0 dB</code></pre><pre><code>|   |   |   Bandwidth range: 1600=
000000.0__________________________</code></pre><pre><code>|   |    /</code>=
</pre><pre><code>|   |   |       RX Frontend: 3</code></pre><pre><code>|   =
|   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, RX1,=
 SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code></pre><pre><code>|   |   |   =
Sensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><pre><co=
de>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><code>|  =
 |   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|   =
|   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></p=
re><pre><code>|   |   |   Connection Type: IQ</code></pre><pre><code>|   | =
  |   Uses LO offset: No</code></pre><pre><code>|     _____________________=
________________________________</code></pre><pre><code>|    /</code></pre>=
<pre><code>|   |       TX Dboard: 0/Radio#1</code></pre><pre><code>|   |   =
  _____________________________________________________</code></pre><pre><c=
ode>|   |    /</code></pre><pre><code>|   |   |       TX Frontend: 0</code>=
</pre><pre><code>|   |   |   Name: FBX</code></pre><pre><code>|   |   |   A=
ntennas: TX/RX0, CAL_LOOPBACK</code></pre><pre><code>|   |   |   Sensors: t=
emperature, rfdc_rate, lo_locked, nco_locked</code></pre><pre><code>|   |  =
 |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><code>|   |   |   G=
ain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|   |   |   Ba=
ndwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></pre><pre><c=
ode>|   |   |   Connection Type: IQ</code></pre><pre><code>|   |   |   Uses=
 LO offset: No</code></pre><pre><code>|   |     ___________________________=
__________________________</code></pre><pre><code>|   |    /</code></pre><p=
re><code>|   |   |       TX Frontend: 1</code></pre><pre><code>|   |   |   =
Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, CAL_LOOPBACK=
</code></pre><pre><code>|   |   |   Sensors: temperature, rfdc_rate, lo_loc=
ked, nco_locked</code></pre><pre><code>|   |   |   Freq range: 1.000 to 400=
0.000 MHz</code></pre><pre><code>|   |   |   Gain range all: 0.0 to 0.0 ste=
p 0.0 dB</code></pre><pre><code>|   |   |   Bandwidth range: 1600000000.0 t=
o 1600000000.0 step 0.0 Hz</code></pre><pre><code>|   |   |   Connection Ty=
pe: IQ</code></pre><pre><code>|   |   |   Uses LO offset: No</code></pre><p=
re><code>|   |     _____________________________________________________</c=
ode></pre><pre><code>|   |    /</code></pre><pre><code>|   |   |       TX F=
rontend: 2</code></pre><pre><code>|   |   |   Name: FBX</code></pre><pre><c=
ode>|   |   |   Antennas: TX/RX0, CAL_LOOPBACK</code></pre><pre><code>|   |=
   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><=
pre><code>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><c=
ode>|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><co=
de>|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</c=
ode></pre><pre><code>|   |   |   Connection Type: IQ</code></pre><pre><code=
>|   |   |   Uses LO offset: No</code></pre><pre><code>|   |     __________=
___________________________________________</code></pre><pre><code>|   |   =
 /</code></pre><pre><code>|   |   |       TX Frontend: 3</code></pre><pre><=
code>|   |   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/=
RX0, CAL_LOOPBACK</code></pre><pre><code>|   |   |   Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code></pre><pre><code>|   |   |   Freq ra=
nge: 1.000 to 4000.000 MHz</code></pre><pre><code>|   |   |   Gain range al=
l: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|   |   |   Bandwidth rang=
e: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></pre><pre><code>|   |   =
|   Connection Type: IQ</code></pre><pre><code>|   |   |   Uses LO offset: =
No</code></pre><pre><code>|     ___________________________________________=
__________</code></pre><pre><code>|    /</code></pre><pre><code>|   |      =
 RX Dboard: 0/Radio#1</code></pre><pre><code>|   |     ____________________=
_________________________________</code></pre><pre><code>|   |    /</code><=
/pre><pre><code>|   |   |       RX Frontend: 0</code></pre><pre><code>|   |=
   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, RX1, =
SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code></pre><pre><code>|   |   |   S=
ensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><pre><cod=
e>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><code>|   =
|   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|   |=
   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></pr=
e><pre><code>|   |   |   Connection Type: IQ</code></pre><pre><code>|   |  =
 |   Uses LO offset: No</code></pre><pre><code>|   |     __________________=
___________________________________</code></pre><pre><code>|   |    /</code=
></pre><pre><code>|   |   |       RX Frontend: 1</code></pre><pre><code>|  =
 |   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, RX1=
, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code></pre><pre><code>|   |   |  =
 Sensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><pre><c=
ode>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><code>| =
  |   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|  =
 |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code></=
pre><pre><code>|   |   |   Connection Type: IQ</code></pre><pre><code>|   |=
   |   Uses LO offset: No</code></pre><pre><code>|   |     ________________=
_____________________________________</code></pre><pre><code>|   |    /</co=
de></pre><pre><code>|   |   |       RX Frontend: 2</code></pre><pre><code>|=
   |   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0, R=
X1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code></pre><pre><code>|   |   |=
   Sensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><pre>=
<code>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><code>=
|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code>|=
   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</code>=
</pre><pre><code>|   |   |   Connection Type: IQ</code></pre><pre><code>|  =
 |   |   Uses LO offset: No</code></pre><pre><code>|   |     ______________=
_______________________________________</code></pre><pre><code>|   |    /</=
code></pre><pre><code>|   |   |       RX Frontend: 3</code></pre><pre><code=
>|   |   |   Name: FBX</code></pre><pre><code>|   |   |   Antennas: TX/RX0,=
 RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code></pre><pre><code>|   |  =
 |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked</code></pre><pr=
e><code>|   |   |   Freq range: 1.000 to 4000.000 MHz</code></pre><pre><cod=
e>|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB</code></pre><pre><code=
>|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz</cod=
e></pre><pre><code>|   |   |   Connection Type: IQ</code></pre><p>|   |   |=
   Uses LO offset: No


<strong>Do you have any idea of what is happening or could you help me to f=
ix the error?=20

Thank you all!!!</strong></p>

--b1_ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s--

--===============5883458207670840308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5883458207670840308==--
