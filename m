Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBF7375CF9
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 23:47:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BE1B384796
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 17:47:36 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F925383DAF
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 17:46:43 -0400 (EDT)
Date: Thu, 6 May 2021 21:46:43 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81ukqSiWnBod806hjCdeVFq139xev8Onvoia5L5OWBdueQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: GUA4XMHFW42DN4LXMM5ADSMWRVXRKDHB
X-Message-ID-Hash: GUA4XMHFW42DN4LXMM5ADSMWRVXRKDHB
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GUA4XMHFW42DN4LXMM5ADSMWRVXRKDHB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7760287669899210906=="

This is a multi-part message in MIME format.

--===============7760287669899210906==
Content-Type: multipart/alternative;
 boundary="b1_uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc
Content-Type: text/plain; charset=us-ascii

sure,

1. I went through the device recovery because of the issue I am currently having. However, I noticed this issue fro the first time after using vivado ILA, I was programming the device using the hardware manager, debugging, making changes to the custom rfnoc block and creating images. When I finished using vivado for debugging and testing, I wanted to load the image using the python script uhd_image_loader but I noticed the device initialization issue, then I went through the device recovery process which did not work.

2. I can load a custom image or the default image via Vivado, connect rfnoc blocks, get the right information and display data with no issues. Also, the uhd_usrp_probe is working as shown below. But I can not restart the device because the image is not written EEPROM. If I do, UHD does not find any device, I have to use vivado to load images for now.

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
|   |   * 0/FFT#1
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
|   |   * 0/SEP#5:0==>0/FFT#1:0
|   |   * 0/FFT#1:0==>0/SEP#5:0
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

THANKS.
```

--b1_uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>sure,</p><ol><li><p>I went through the device recovery because of the is=
sue I am currently having. However, I noticed this issue fro the first time=
 after using vivado ILA, I was programming the device using the hardware ma=
nager, debugging, making changes to the custom rfnoc block and creating ima=
ges. When I finished using vivado for debugging and testing, I wanted to lo=
ad the image using the python script uhd_image_loader but I noticed the dev=
ice initialization issue, then I went through the device recovery process w=
hich did not work.</p></li><li><p>I can load a custom image or the default =
image via Vivado, connect rfnoc blocks, get the right information and displ=
ay data with no issues. Also, the uhd_usrp_probe is working as shown below.=
 But I can not restart the device because the image is not written EEPROM. =
If I do, UHD does not find any device, I have to use vivado to load images =
for now.</p></li></ol><pre><code>[INFO] [UHD] linux; GNU C++ version 9.3.0;=
 Boost_107100; UHD_4.0.0.0-50-ge520e3ff
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
|   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, ref=
_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/FFT#0
|   |   * 0/FFT#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0
|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0
|   |   * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0
|   |   * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1
|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0
|   |   * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0
|   |   * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0
|   |   * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1
|   |   * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0
|   |   * 0/SEP#4:0=3D=3D&gt;0/FFT#0:0
|   |   * 0/FFT#0:0=3D=3D&gt;0/SEP#4:0
|   |   * 0/SEP#5:0=3D=3D&gt;0/FFT#1:0
|   |   * 0/FFT#1:0=3D=3D&gt;0/SEP#5:0
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

THANKS.
<br></code></pre>

--b1_uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc--

--===============7760287669899210906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7760287669899210906==--
