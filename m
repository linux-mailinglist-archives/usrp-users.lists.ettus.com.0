Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 808DC38942F
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 18:54:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 756C53863B5
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 12:54:00 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE072385E2F
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 12:53:09 -0400 (EDT)
Date: Wed, 19 May 2021 16:53:09 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ED811382-97C0-47BC-A4EC-D096E87EA7AC@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AV4GA6H3NWLGPZ2PDZQ4YOQ6EJLF2YNN
X-Message-ID-Hash: AV4GA6H3NWLGPZ2PDZQ4YOQ6EJLF2YNN
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AV4GA6H3NWLGPZ2PDZQ4YOQ6EJLF2YNN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6007548353396652545=="

This is a multi-part message in MIME format.

--===============6007548353396652545==
Content-Type: multipart/alternative;
 boundary="b1_S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8
Content-Type: text/plain; charset=us-ascii

Yes. please have a look.

```
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:22:ff:b4
|   |   mac-addr1: 00:80:2f:22:ff:b5
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3176C83
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: e520e3f-dirty
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/FFT#0
|   |   * 0/Fosphor#0
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/Radio#0:0
|   |   * 0/Radio#0:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#0:0
|   |   * 0/Radio#0:1==>0/DDC#0:1
|   |   * 0/DDC#0:1==>0/SEP#1:0
|   |   * 0/SEP#2:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/Radio#1:0
|   |   * 0/Radio#1:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#2:0
|   |   * 0/Radio#1:1==>0/DDC#1:1
|   |   * 0/DDC#1:1==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/FFT#0:0
|   |   * 0/FFT#0:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/Fosphor#0:0
|   |   * 0/Fosphor#0:0==>0/SEP#5:0
|   |   * 0/Fosphor#0:1==>0/SEP#6:0
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No


THANKS
```

```
```

--b1_S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8
Content-Type: text/html; charset=us-ascii

<p>Yes. please have a look.</p><pre><code>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:22:ff:b4
|   |   mac-addr1: 00:80:2f:22:ff:b5
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3176C83
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: e520e3f-dirty
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/FFT#0
|   |   * 0/Fosphor#0
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==&gt;0/DUC#0:0
|   |   * 0/DUC#0:0==&gt;0/Radio#0:0
|   |   * 0/Radio#0:0==&gt;0/DDC#0:0
|   |   * 0/DDC#0:0==&gt;0/SEP#0:0
|   |   * 0/Radio#0:1==&gt;0/DDC#0:1
|   |   * 0/DDC#0:1==&gt;0/SEP#1:0
|   |   * 0/SEP#2:0==&gt;0/DUC#1:0
|   |   * 0/DUC#1:0==&gt;0/Radio#1:0
|   |   * 0/Radio#1:0==&gt;0/DDC#1:0
|   |   * 0/DDC#1:0==&gt;0/SEP#2:0
|   |   * 0/Radio#1:1==&gt;0/DDC#1:1
|   |   * 0/DDC#1:1==&gt;0/SEP#3:0
|   |   * 0/SEP#4:0==&gt;0/FFT#0:0
|   |   * 0/FFT#0:0==&gt;0/SEP#4:0
|   |   * 0/SEP#5:0==&gt;0/Fosphor#0:0
|   |   * 0/Fosphor#0:0==&gt;0/SEP#5:0
|   |   * 0/Fosphor#0:1==&gt;0/SEP#6:0
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No


THANKS</code></pre><pre><code><br></code></pre>


--b1_S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8--

--===============6007548353396652545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6007548353396652545==--
