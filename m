Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A1473228
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 17:45:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B318385501
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 11:45:44 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F33CC385019
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 11:44:43 -0500 (EST)
Date: Mon, 13 Dec 2021 16:44:43 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: XN3OYnjdN0SfaRuMFAYmSflwqRzyG19Q2YDhki7l7o@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: MHPE537M34UW3GSUEJVEH5DU5TJQEDKF
X-Message-ID-Hash: MHPE537M34UW3GSUEJVEH5DU5TJQEDKF
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHPE537M34UW3GSUEJVEH5DU5TJQEDKF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6284504427123743982=="

This is a multi-part message in MIME format.

--===============6284504427123743982==
Content-Type: multipart/alternative;
 boundary="b1_j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Last update for today=E2=80=A6 Installed latest UHD from ETTUS repository=
, downloaded new images and tried the loader without success (the USRP pr=
obe shows the incompatibility of the FPGA image with new UHD version):

```
abusso@ttclabsdr:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
[INFO] [X300] X300 initialization sequence...
Error: RuntimeError: Expected FPGA compatibility number 38, but got 33:
The FPGA image on your device is not compatible with this host code build=
.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/lib/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2=
"

For more information, refer to the UHD manual:

 http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash


abusso@ttclabsdr:~$ sudo /usr/lib/uhd/utils/uhd_images_downloader.py
[INFO] Using base URL: https://files.ettus.com/binaries/cache/
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json. C=
reating an empty one.
09147 kB / 09147 kB (100%) x4xx_x410_fpga_default-gd5c2750.zip
21070 kB / 21070 kB (100%) x3xx_x310_fpga_default-gd5c2750.zip
19740 kB / 19740 kB (100%) x3xx_x300_fpga_default-gd5c2750.zip
01149 kB / 01149 kB (100%) e3xx_e310_sg1_fpga_default-gd5c2750.zip
01137 kB / 01137 kB (100%) e3xx_e310_sg3_fpga_default-gd5c2750.zip
10188 kB / 10188 kB (100%) e3xx_e320_fpga_default-gd5c2750.zip
20727 kB / 20727 kB (100%) n3xx_n310_fpga_default-gd5c2750.zip
14296 kB / 14296 kB (100%) n3xx_n300_fpga_default-gd5c2750.zip
27186 kB / 27186 kB (100%) n3xx_n320_fpga_default-gd5c2750.zip
00481 kB / 00481 kB (100%) b2xx_b200_fpga_default-g325e8e9.zip
00463 kB / 00463 kB (100%) b2xx_b200mini_fpga_default-g325e8e9.zip
00882 kB / 00882 kB (100%) b2xx_b210_fpga_default-g325e8e9.zip
00511 kB / 00511 kB (100%) b2xx_b205mini_fpga_default-g325e8e9.zip
00167 kB / 00167 kB (100%) b2xx_common_fw_default-g7f7d016.zip
00007 kB / 00007 kB (100%) usrp2_usrp2_fw_default-g6bea23d.zip
00450 kB / 00450 kB (100%) usrp2_usrp2_fpga_default-g6bea23d.zip
02415 kB / 02415 kB (100%) usrp2_n200_fpga_default-g6bea23d.zip
00009 kB / 00009 kB (100%) usrp2_n200_fw_default-g6bea23d.zip
02757 kB / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip
00009 kB / 00009 kB (100%) usrp2_n210_fw_default-g6bea23d.zip
02123 kB / 02123 kB (100%) n230_n230_fpga_default-ge57dfe0.zip
00319 kB / 00319 kB (100%) usrp1_usrp1_fpga_default-g6bea23d.zip
00522 kB / 00522 kB (100%) usrp1_b100_fpga_default-g6bea23d.zip
00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip
00017 kB / 00017 kB (100%) octoclock_octoclock_fw_default-g14000041.zip
04839 kB / 04839 kB (100%) usb_common_windrv_default-g14000041.zip
[INFO] Images download complete.


abusso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.3=
0.2" --fpga-path=3D"/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
```

Then, I re-flashed the FPGA with latest image using Vivado. Now, usrp pro=
be works again, but still, no way to upload using the image loader.

```
abusso@ttclabsdr:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
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
|   |   mac-addr0: 00:80:2f:30:8e:01
|   |   mac-addr1: 00:80:2f:30:8e:02
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 31D7872
|   |   name: TTC_X310
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: b1ca7f3
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1



abusso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.3=
0.2" --fpga-path=3D"/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
abusso@ttclabsdr:~$
```

I will try tomorrow with the 1G image, but I was wondering if (may be) th=
ere are some jumpers inside the box that may prevent reprogramming. It lo=
oks quite strange that it does not work.

I could not check with the PCIe, since, apparently the divers are not ins=
talled yet on the new PC with PCIe card (and I cannot do too much with th=
at since it is not =E2=80=9Cmine=E2=80=9D).

--b1_j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Last update for today=E2=80=A6 Installed latest UHD from ETTUS reposit=
ory, downloaded new images and tried the loader without success (the USRP=
 probe shows the incompatibility of the FPGA image with new UHD version):=
</p><pre><code>abusso@ttclabsdr:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
[INFO] [X300] X300 initialization sequence...
Error: RuntimeError: Expected FPGA compatibility number 38, but got 33:
The FPGA image on your device is not compatible with this host code build=
.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/lib/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2=
"

For more information, refer to the UHD manual:

 http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash


abusso@ttclabsdr:~$ sudo /usr/lib/uhd/utils/uhd_images_downloader.py
[INFO] Using base URL: https://files.ettus.com/binaries/cache/
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json. C=
reating an empty one.
09147 kB / 09147 kB (100%) x4xx_x410_fpga_default-gd5c2750.zip
21070 kB / 21070 kB (100%) x3xx_x310_fpga_default-gd5c2750.zip
19740 kB / 19740 kB (100%) x3xx_x300_fpga_default-gd5c2750.zip
01149 kB / 01149 kB (100%) e3xx_e310_sg1_fpga_default-gd5c2750.zip
01137 kB / 01137 kB (100%) e3xx_e310_sg3_fpga_default-gd5c2750.zip
10188 kB / 10188 kB (100%) e3xx_e320_fpga_default-gd5c2750.zip
20727 kB / 20727 kB (100%) n3xx_n310_fpga_default-gd5c2750.zip
14296 kB / 14296 kB (100%) n3xx_n300_fpga_default-gd5c2750.zip
27186 kB / 27186 kB (100%) n3xx_n320_fpga_default-gd5c2750.zip
00481 kB / 00481 kB (100%) b2xx_b200_fpga_default-g325e8e9.zip
00463 kB / 00463 kB (100%) b2xx_b200mini_fpga_default-g325e8e9.zip
00882 kB / 00882 kB (100%) b2xx_b210_fpga_default-g325e8e9.zip
00511 kB / 00511 kB (100%) b2xx_b205mini_fpga_default-g325e8e9.zip
00167 kB / 00167 kB (100%) b2xx_common_fw_default-g7f7d016.zip
00007 kB / 00007 kB (100%) usrp2_usrp2_fw_default-g6bea23d.zip
00450 kB / 00450 kB (100%) usrp2_usrp2_fpga_default-g6bea23d.zip
02415 kB / 02415 kB (100%) usrp2_n200_fpga_default-g6bea23d.zip
00009 kB / 00009 kB (100%) usrp2_n200_fw_default-g6bea23d.zip
02757 kB / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip
00009 kB / 00009 kB (100%) usrp2_n210_fw_default-g6bea23d.zip
02123 kB / 02123 kB (100%) n230_n230_fpga_default-ge57dfe0.zip
00319 kB / 00319 kB (100%) usrp1_usrp1_fpga_default-g6bea23d.zip
00522 kB / 00522 kB (100%) usrp1_b100_fpga_default-g6bea23d.zip
00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip
00017 kB / 00017 kB (100%) octoclock_octoclock_fw_default-g14000041.zip
04839 kB / 04839 kB (100%) usb_common_windrv_default-g14000041.zip
[INFO] Images download complete.


abusso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.3=
0.2" --fpga-path=3D"/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.</cod=
e></pre><p><br></p><p><br></p><p>Then, I re-flashed the FPGA with latest =
image using Vivado. Now, usrp probe works again, but still, no way to upl=
oad using the image loader.</p><pre><code>abusso@ttclabsdr:~$ uhd_usrp_pr=
obe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
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
|   |   mac-addr0: 00:80:2f:30:8e:01
|   |   mac-addr1: 00:80:2f:30:8e:02
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 31D7872
|   |   name: TTC_X310
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: b1ca7f3
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1



abusso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.3=
0.2" --fpga-path=3D"/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
abusso@ttclabsdr:~$</code></pre><p>I will try tomorrow with the 1G image,=
 but I was wondering if (may be) there are some jumpers inside the box th=
at may prevent reprogramming. It looks quite strange that it does not wor=
k.</p><p>I could not check with the PCIe, since, apparently the divers ar=
e not installed yet on the new PC with PCIe card (and I cannot do too muc=
h with that since it is not =E2=80=9Cmine=E2=80=9D).</p>


--b1_j993ZQjG9UoYDBiAShtG9zCLKRnOb3jRcGMkrhrZM--

--===============6284504427123743982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6284504427123743982==--
