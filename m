Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A15389346
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 18:09:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 704E1385B3F
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 12:09:51 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13FAF383F48
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 12:09:01 -0400 (EDT)
Date: Wed, 19 May 2021 16:09:01 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SWTDVNEKZKASPGCHM26XJ3LAZ4ZVGNZ7
X-Message-ID-Hash: SWTDVNEKZKASPGCHM26XJ3LAZ4ZVGNZ7
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble running commands from host on E320 - Timed out getting recv buff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SWTDVNEKZKASPGCHM26XJ3LAZ4ZVGNZ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5513034973395242574=="

This is a multi-part message in MIME format.

--===============5513034973395242574==
Content-Type: multipart/alternative;
 boundary="b1_cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have an E320 connected to my host computer over a 1Gb to USB3 adapter. =
I can SSH into the E320 just fine and run uhd_usrp_probe, but when I run =
it from my host computer I get:

```
dan@ubuntu:~/Desktop$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400; UHD_4.0.0.HEAD-=
0-g90ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.0.11,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse,=
addr=3D192.168.0.11
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D19=
2.168.0.11,product=3De320'.
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErr=
or: IOError: Timed out getting recv buff for management transaction
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environ=
mentError: IOError: Timed out getting recv buff for management transactio=
n
Error: RuntimeError: Failure to create rfnoc_graph.
```

At least it=E2=80=99s finding it and identifying it correctly. Running fr=
om the device, everything appears to be fine:

```
root@ni-e320-317989F:~/localinstall# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.HEAD-0=
-g90ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
127.0.0.1,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D12=
7.0.0.1,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...=20
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...=20
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e320-317989F
|   |   eeprom_version: 2
|   |   fs_version: 20200914014807
|   |   mender_artifact: v4.0.0.0_e320
|   |   mpm_sw_version: 4.0.0.0-g90ce6062
|   |   pid: 58144
|   |   product: e320
|   |   rev: 2
|   |   rpc_connection: local
|   |   serial: 317989F
|   |   type: e3xx
|   |   MPM Version: 3.0
|   |   FPGA Version: 6.0
|   |   FPGA git hash: 413ebee.clean
|   |  =20
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, t=
emp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, g=
ps_time, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |  =20
|   |   * 0/DDC#0
|   |   * 0/DUC#0
|   |   * 0/DmaFIFO#0
|   |   * 0/Radio#0
```

--b1_cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have an E320 connected to my host computer over a 1Gb to USB3 adapte=
r. I can SSH into the E320 just fine and run uhd_usrp_probe, but when I r=
un it from my host computer I get:</p><pre><code>dan@ubuntu:~/Desktop$ uh=
d_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400; UHD_4.0.0.HEAD-=
0-g90ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.0.11,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse,=
addr=3D192.168.0.11
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D19=
2.168.0.11,product=3De320'.
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErr=
or: IOError: Timed out getting recv buff for management transaction
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environ=
mentError: IOError: Timed out getting recv buff for management transactio=
n
Error: RuntimeError: Failure to create rfnoc_graph.
<br></code></pre><p>At least it=E2=80=99s finding it and identifying it c=
orrectly. Running from the device, everything appears to be fine:</p><p><=
br></p><pre><code>root@ni-e320-317989F:~/localinstall# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.HEAD-0=
-g90ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
127.0.0.1,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D12=
7.0.0.1,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...=20
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...=20
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e320-317989F
|   |   eeprom_version: 2
|   |   fs_version: 20200914014807
|   |   mender_artifact: v4.0.0.0_e320
|   |   mpm_sw_version: 4.0.0.0-g90ce6062
|   |   pid: 58144
|   |   product: e320
|   |   rev: 2
|   |   rpc_connection: local
|   |   serial: 317989F
|   |   type: e3xx
|   |   MPM Version: 3.0
|   |   FPGA Version: 6.0
|   |   FPGA git hash: 413ebee.clean
|   |  =20
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, t=
emp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, g=
ps_time, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |  =20
|   |   * 0/DDC#0
|   |   * 0/DUC#0
|   |   * 0/DmaFIFO#0
|   |   * 0/Radio#0
<br></code></pre><p><br></p><p><br></p>


--b1_cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4--

--===============5513034973395242574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5513034973395242574==--
