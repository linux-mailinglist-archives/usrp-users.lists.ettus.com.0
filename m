Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4370A30E7E
	for <lists+usrp-users@lfdr.de>; Fri, 31 May 2019 15:03:29 +0200 (CEST)
Received: from [::1] (port=60686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWhBv-0000th-TC; Fri, 31 May 2019 09:03:27 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:46487)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saimanoj.katta@cumucore.com>)
 id 1hWhBr-0000mC-OQ
 for usrp-users@lists.ettus.com; Fri, 31 May 2019 09:03:23 -0400
Received: by mail-qk1-f177.google.com with SMTP id a132so6126938qkb.13
 for <usrp-users@lists.ettus.com>; Fri, 31 May 2019 06:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumucore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=IZmeAu8ySjgkGgHDTu4QgMHXGWtoCPznhvYoIAcoIjo=;
 b=ziLWaZXy8WpmKrkf40WLfOwMvreKbhBzCdxX9dNgyH2cfiv1imtKICFnZGSokcPoIH
 zdjmKUHkLqsZb9DvaU486jiKqx6f/kaspLu/+TA9c/6eV7hyxz/bpY41igWeNJi9LxAl
 lA14D41OwlHcs3eWO4SzTbssoD7x+GaRiTMvzjHctO5zfWo27CgFDh+3qCifv+uuEa+/
 spwZEn6erA1mfAxNBGNh+j9AnGSt6aUM6Vgtf5U6gVNLYMVNi4j4PMofXqGHXwlf0BO4
 b9i/uwV1Bbaz9VIoxe0jugz77Jk6YieplP9pvH0bs/lPE0eI9FPbcAK43mtTyKiNE4Nm
 lklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IZmeAu8ySjgkGgHDTu4QgMHXGWtoCPznhvYoIAcoIjo=;
 b=uOFS9QzyTYb5oxOB1ip6QXPT9p7TaWTTNze0KbKuChBLUEGWN3RPvUzcce6h9uF5lT
 yZa4Rj0iWZaX28DWtyRCWtvMUxkYqP7wuewNwHvFCTd4OSB5AFoyWzdfVTUCwVCl0kOt
 jzgNWn48QmUv+Mm1I2ZPBVz3pl1d/+V8YkteyY2TUvTTlT2Lg1SAC4+khmn7qmYq5LSL
 sFMfRU+WA3ANMX6cxPXARvYI8NmCJaFjFbFuoIF2d3DdzJ+2lmE3QT6CbERmSZw32hQO
 p+vIldYLDJ8H+Vnhflxg3naQk6T7yReAc6deCli0yQ0ZF2aZ4l/wvVbt26vq6vajWkLm
 awRA==
X-Gm-Message-State: APjAAAXi6koXSIqB+1w3prZaoQBHabfox8qA9DJuVv4RPpcTCqPUAnBK
 WfLX1Xifs0bLME6l7s8pmO/eMcMeXySEgt5X9kWe4E+iob8=
X-Google-Smtp-Source: APXvYqwIQ3JtYetf7d42XZ21ekKVOJMG/i79b12bEGyHjz5/lGaKbm1miRxNcV4Dbhma+E4D5RAMQ1S1BpnZarJiFio=
X-Received: by 2002:a37:a694:: with SMTP id p142mr8568786qke.26.1559307762898; 
 Fri, 31 May 2019 06:02:42 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 31 May 2019 16:02:32 +0300
Message-ID: <CABO=5RreJaEwnCGMDvLMO-5yv6xarq7zDjb4XVd9p=m6ooP4YA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Regarding detection of USRP devices
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Saimanoj Katta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saimanoj Katta <saimanoj.katta@cumucore.com>
Content-Type: multipart/mixed; boundary="===============2923202276812987683=="
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

--===============2923202276812987683==
Content-Type: multipart/alternative; boundary="0000000000004da92d058a2ea1b8"

--0000000000004da92d058a2ea1b8
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using USRP X310 and when I run these commands: uhd_find_devices,
uhd_usrp_probe, I don't get any results on my terminal. When I run the
above commands with --args addr=192.168.50.2, I get the output. IP
address(static) at the host is 192.168.10.3 with subnet of 255.255.0.0. I
have given the subnet to detect more ip addresses.

As far as I know, the uhd_images_downloader has images correctly installed
in the local library and all the Firmware drivers installed. Can you help
me what is wrong? I have the same issue running GNU radio( the fm receiver
example is not detecting the device/ip address).

Any suggestions would be appreciated! Many thanks in advance.

Here are the outputs, I got:

uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.14.0.HEAD-0-g6875d061
No UHD Devices Found

uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.14.0.HEAD-0-g6875d061
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

uhd_images_downloader [INFO] Images destination: /usr/local/share/uhd/images
[INFO] Target usrp1_b100_fw_default is up to date.
[INFO] Target x3xx_x310_fpga_default is up to date.
[INFO] Target usrp2_n210_fpga_default is up to date.
[INFO] Target n230_n230_fpga_default is up to date.
[INFO] Target usrp1_b100_fpga_default is up to date.
[INFO] Target b2xx_b200_fpga_default is up to date.
[INFO] Target usrp2_n200_fpga_default is up to date.
[INFO] Target e3xx_e320_fpga_default is up to date.
[INFO] Target n3xx_n310_fpga_default is up to date.
[INFO] Target b2xx_b205mini_fpga_default is up to date.
[INFO] Target x3xx_x300_fpga_default is up to date.
[INFO] Target octoclock_octoclock_fw_default is up to date.
[INFO] Target usrp2_usrp2_fw_default is up to date.
[INFO] Target usrp2_n200_fw_default is up to date.
[INFO] Target usrp2_usrp2_fpga_default is up to date.
[INFO] Target b2xx_common_fw_default is up to date.
[INFO] Target n3xx_n320_fpga_default is up to date.
[INFO] Target b2xx_b200mini_fpga_default is up to date.
[INFO] Target usrp1_usrp1_fpga_default is up to date.
[INFO] Target usb_common_windrv_default is up to date.
[INFO] Target usrp2_n210_fw_default is up to date.
[INFO] Target n3xx_n300_fpga_default is up to date.
[INFO] Target e3xx_e310_fpga_default is up to date.
[INFO] Target b2xx_b210_fpga_default is up to date.

uhd_find_devices --args addr=192.168.50.2
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.14.0.HEAD-0-g6875d061
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 30CBE93
    addr: 192.168.50.2
    fpga: HG
    name:
    product: X310
    type: x300

uhd_usrp_probe --args addr=192.168.50.2
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.14.0.HEAD-0-g6875d061
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1293 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 8
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:23:d2:4d
|   |   mac-addr1: 00:80:2f:23:d2:4e
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.50.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.60.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.70.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.80.2
|   |   subnet3: 255.255.255.0
|   |   serial: 30CBE93
|   |   FW Version: 6.0
|   |   FPGA Version: 35.1
|   |   FPGA git hash: 4c165a5
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo,
ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |   ID: UBX-160 v1 (0x007a)
|   |   |   Serial: 30CF8F2
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: UBX RX
|   |   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |   ID: UBX-160 v1 (0x007a)
|   |   |   Serial: 30BA660
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: UBX RX
|   |   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: B
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |   ID: UBX-160 v1 (0x0079)
|   |   |   Serial: 30CF8F2
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: UBX TX
|   |   |   |   Antennas: TX/RX, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |   ID: UBX-160 v1 (0x0079)
|   |   |   Serial: 30BA660
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: UBX TX
|   |   |   |   Antennas: TX/RX, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: B
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * DmaFIFO_0
|   |   |   * Radio_0
|   |   |   * Radio_1
|   |   |   * DDC_0
|   |   |   * DDC_1
|   |   |   * DUC_0
|   |   |   * DUC_1
Thanks and Regards,
Manu

--0000000000004da92d058a2ea1b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I =
am using USRP X310 and when I run these commands: uhd_find_devices, uhd_usr=
p_probe, I don&#39;t get any results on my terminal. When I run the above c=
ommands with --args addr=3D192.168.50.2, I get the output. IP address(stati=
c) at the host is 192.168.10.3 with subnet of 255.255.0.0. I have given the=
 subnet to detect more ip addresses.<br></div><div><br></div><div>As far as=
 I know, the uhd_images_downloader has images correctly installed in the lo=
cal library and all the Firmware drivers installed. Can you help me what is=
 wrong? I have the same issue running GNU radio( the fm receiver example is=
 not detecting the device/ip address). <br></div><div><br></div><div>Any su=
ggestions would be appreciated! Many thanks in advance. <br></div><div><br>=
</div><div>Here are the outputs, I got: <br></div><div><br></div><div>uhd_f=
ind_devices <br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UH=
D_3.14.0.HEAD-0-g6875d061<br>No UHD Devices Found</div><div><br></div><div>=
uhd_usrp_probe <br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;=
 UHD_3.14.0.HEAD-0-g6875d061<br>Error: LookupError: KeyError: No devices fo=
und for -----&gt;<br>Empty Device Address</div><div><br></div><div>uhd_imag=
es_downloader [INFO] Images destination: /usr/local/share/uhd/images<br>[IN=
FO] Target usrp1_b100_fw_default is up to date.<br>[INFO] Target x3xx_x310_=
fpga_default is up to date.<br>[INFO] Target usrp2_n210_fpga_default is up =
to date.<br>[INFO] Target n230_n230_fpga_default is up to date.<br>[INFO] T=
arget usrp1_b100_fpga_default is up to date.<br>[INFO] Target b2xx_b200_fpg=
a_default is up to date.<br>[INFO] Target usrp2_n200_fpga_default is up to =
date.<br>[INFO] Target e3xx_e320_fpga_default is up to date.<br>[INFO] Targ=
et n3xx_n310_fpga_default is up to date.<br>[INFO] Target b2xx_b205mini_fpg=
a_default is up to date.<br>[INFO] Target x3xx_x300_fpga_default is up to d=
ate.<br>[INFO] Target octoclock_octoclock_fw_default is up to date.<br>[INF=
O] Target usrp2_usrp2_fw_default is up to date.<br>[INFO] Target usrp2_n200=
_fw_default is up to date.<br>[INFO] Target usrp2_usrp2_fpga_default is up =
to date.<br>[INFO] Target b2xx_common_fw_default is up to date.<br>[INFO] T=
arget n3xx_n320_fpga_default is up to date.<br>[INFO] Target b2xx_b200mini_=
fpga_default is up to date.<br>[INFO] Target usrp1_usrp1_fpga_default is up=
 to date.<br>[INFO] Target usb_common_windrv_default is up to date.<br>[INF=
O] Target usrp2_n210_fw_default is up to date.<br>[INFO] Target n3xx_n300_f=
pga_default is up to date.<br>[INFO] Target e3xx_e310_fpga_default is up to=
 date.<br>[INFO] Target b2xx_b210_fpga_default is up to date.</div><div><br=
></div><div>uhd_find_devices --args addr=3D192.168.50.2<br>[INFO] [UHD] lin=
ux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.0.HEAD-0-g6875d061<br>---=
-----------------------------------------------<br>-- UHD Device 0<br>-----=
---------------------------------------------<br>Device Address:<br>=C2=A0 =
=C2=A0 serial: 30CBE93<br>=C2=A0 =C2=A0 addr: 192.168.50.2<br>=C2=A0 =C2=A0=
 fpga: HG<br>=C2=A0 =C2=A0 name: <br>=C2=A0 =C2=A0 product: X310<br>=C2=A0 =
=C2=A0 type: x300</div><div><br></div><div>uhd_usrp_probe --args addr=3D192=
.168.50.2<br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3=
.14.0.HEAD-0-g6875d061<br>[INFO] [X300] X300 initialization sequence...<br>=
[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clo=
ck: 200 MHz<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.=
929a<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000=
00000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1293 MB/s)<br>[I=
NFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)<br>[INFO] [0/Radio_0=
] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radi=
o_1] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/D=
DC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/=
DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0=
/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [=
0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br>=C2=A0 =
_____________________________________________________<br>=C2=A0/<br>| =C2=
=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>| =C2=A0 =C2=A0 ______________=
_______________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>| =C2=A0 | =C2=A0 revision: 8<br>| =C2=
=A0 | =C2=A0 revision_compat: 7<br>| =C2=A0 | =C2=A0 product: 30818<br>| =
=C2=A0 | =C2=A0 mac-addr0: 00:80:2f:23:d2:4d<br>| =C2=A0 | =C2=A0 mac-addr1=
: 00:80:2f:23:d2:4e<br>| =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>| =C2=A0 =
| =C2=A0 ip-addr0: 192.168.50.2<br>| =C2=A0 | =C2=A0 subnet0: 255.255.255.0=
<br>| =C2=A0 | =C2=A0 ip-addr1: 192.168.60.2<br>| =C2=A0 | =C2=A0 subnet1: =
255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr2: 192.168.70.2<br>| =C2=A0 | =C2=
=A0 subnet2: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr3: 192.168.80.2<br>|=
 =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>| =C2=A0 | =C2=A0 serial: 30CBE9=
3<br>| =C2=A0 | =C2=A0 FW Version: 6.0<br>| =C2=A0 | =C2=A0 FPGA Version: 3=
5.1<br>| =C2=A0 | =C2=A0 FPGA git hash: 4c165a5<br>| =C2=A0 | =C2=A0 RFNoC =
capable: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =C2=
=A0internal, external, gpsdo<br>| =C2=A0 | =C2=A0 Clock sources: internal, =
external, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: gps_gpgga, gps_gprmc, gps_tim=
e, gps_locked, gps_servo, ref_locked<br>| =C2=A0 | =C2=A0 =C2=A0 __________=
___________________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br=
>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: A<br>| =C2=A0 | =C2=A0=
 | =C2=A0 ID: UBX-160 v1 (0x007a)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 30C=
F8F2<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _________________________________=
____________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Name: UBX RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Anten=
nas: TX/RX, RX2, CAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_loc=
ked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 M=
Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step=
 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0=
 to 160000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connecti=
on Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Name: ads62p48<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range digita=
l: 0.0 to 6.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________=
________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: B<br>| =C2=A0 | =C2=A0 | =C2=A0 I=
D: UBX-160 v1 (0x007a)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 30BA660<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Name: UBX RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX,=
 RX2, CAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<=
br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 1600=
00000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type:=
 IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 RX Codec: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Nam=
e: ads62p48<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range digital: 0.0 =
to 6.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 =C2=A0 ____________________________=
_________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: UBX-=
160 v1 (0x0079)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 30CF8F2<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Name: UBX TX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000000.0 step=
 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: ad9146<=
br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboa=
rd: B<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: UBX-160 v1 (0x0079)<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Serial: 30BA660<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Fronten=
d: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range=
: 10.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range =
PGA0: 0.0 to 31.5 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwi=
dth range: 160000000.0 to 160000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________=
__________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: B<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Name: ad9146<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 _______________________=
______________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br>| =C2=A0 | =
=C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 | =C2=A0 * DmaFIFO_0<br>| =C2=A0 | =
=C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_1<br>| =C2=
=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_1<br>| =
=C2=A0 | =C2=A0 | =C2=A0 * DUC_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_1<br><=
/div><div>Thanks and Regards, <br></div><div>Manu<br></div></div></div>

--0000000000004da92d058a2ea1b8--


--===============2923202276812987683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2923202276812987683==--

