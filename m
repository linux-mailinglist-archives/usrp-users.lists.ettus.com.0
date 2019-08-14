Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A69398CA73
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 06:39:08 +0200 (CEST)
Received: from [::1] (port=46284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxl3x-00075j-4T; Wed, 14 Aug 2019 00:39:05 -0400
Received: from sonic303-1.consmr.mail.bf2.yahoo.com ([74.6.131.40]:34286)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <t_whit_87@yahoo.com>) id 1hxl3t-0006zW-Ne
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 00:39:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565757501; bh=EdqUq5urK+TdLvsLGDN8HKLD5KoLWq6KYTljl2HuSP4=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=LHwv3yKeiGIFLy/HmfB9x9J1Oy84v4ChbOjslxT/B9EpIbVsE8F+57DH84UPvNROKyPAhEClTfAGO31PX83DijsuXogiGLcn/A6FcYHh3LrJoenJf5SANxjLmx1TjTBPJALL6150h0J42LjQZsBCIZJcNyj/hVM3QgXX2WKV3D+9N4REAb19EZPyH+7AU3vefEPjTWxZpjydgQAIXUh54ZkoT7w0uCodMUPV7QsPH1F3mOWSxHx2tj+kZ4BMsCQgxSCriOyLpOORH+mEbCp4xMdLfcVrLk5DT5/9EG5hyN2/TUHMxJi70La6fnTbJ+uIGjfDeNlQrvsW0kNlDRH+kw==
X-YMail-OSG: wGiNnVIVM1mSwMvq_DlQ5C8YdzfdX.uUPbT0KOt7oi6Y5L.yo5798SFwu._GAyZ
 MjGJjmmrnGirznkQLf0rHoWnCwBb4jPjdkqDPJdelmSOjXCf_1opgW.eFfvJorQ8NlLYSXotuLCu
 R3G.Bzni0lr2Wr6G1eYeXnORrJwVfCdWFRy4Cg9OjXuEclTIvW0bNOhPMiEu01hyVe69GdfM2u4r
 cKBSh89e_SMT_H4Px83VdszQwlFPAk1jeosNmh58I2sT47sbHY_JXL7Z.pRvQZJsao7FldDc1uii
 iX53.udVxFAXPx.mxm9DXcVqJ_EMD0pgiYReje304mTFJtL1Z63xeC22FrN0XCfVbukIuOcSEL2X
 6yz3KEYsmFQPOfgllKLlnx6EOV1r1laO00YioIc1JFdj7iXHRnfWKndQc_TfWSvWMmbbxBD61ISE
 b.HdJlrY3FS1ipveu_yExWPAGc6B1CymY9dq.BXTLDhVspil9z6nnv6Tf.PF6GuEZgMfUjecgQfW
 rjln1jgo1xRzmVFONmWo0YxZkiiCKo02AjIRNGqPEqd1dVqXxCxm.9kGRfHmVKyWzpOAHNkBd0ND
 GRLmAxT9dZiZvWcCW_dKcvUZKvrBqbLECa.3pdPCZp46Sdw8UiAWkZxYHrxvwxOYZeM56wvt8s7P
 qPj0NgpqBuT7X6Blf9K0IkVWP_CU6tI2JhhmbOjFCbjA6k9Ny2.sLZMRqVk468uXeTQLgaLpsyQE
 1xsnrDU6jZgt.AcPIDSJA9YoWY6v8Q35YEfpwoRdiZ_vTbNUGRaMSU9rVvYEwh7Q78JS_s0V7Xbr
 2vzaDLcVM6HyFdCdOf4f1DT.NSosO4osot5Vz11ozdEL1OUoWjd70qemsB_kX_AdFWpwQBYY.GUb
 PEazW1R3JwZxDxak503XZejQkaShZIbA4uTEvLNJT1UCcFiKklCAGC.5eA8bo7Yi8SNpmMJGcWiw
 R8jGe84z5h7NWLN7bciZXC7qDK5qqPPtoDUplyfRv86TE5APj50fUmhaCrIcTSDh9Pg5EPO_WsN.
 SFTx_sjBJ8WXjMmAMIRi8XI_0SVhbb5DyktMWV9coAHMXsF0chat8oZwvYrq6c7FatDtFT.T0Rrm
 MyI43NSXHe3eEMhEY0xM_kwyBhIB4ztiwXbu2qaD9gRAlwG3zYbLktiYhOgKHzC.jQexDvO5Nmiz
 49PUDNe8nDpsM52FL3nSWJyEZMe4DeQvA_2f5dDoKqg82U.NpF9MQOD5wV_ruuyMYx4pJzYHG8c2
 1164fF5UUE6M-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.bf2.yahoo.com with HTTP; Wed, 14 Aug 2019 04:38:21 +0000
Date: Wed, 14 Aug 2019 04:38:16 +0000 (UTC)
To: usrp-users@lists.ettus.com, "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <451633320.3650050.1565757496009@mail.yahoo.com>
In-Reply-To: <5D5382D4.60007@gmail.com>
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com> <5D5382D4.60007@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14097 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140
 Safari/537.36 Edge/18.17763
Subject: Re: [USRP-users] UHD Error with X310
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
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7488048283475968828=="
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

--===============7488048283475968828==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3650049_2061397118.1565757496004"
Content-Length: 61612

------=_Part_3650049_2061397118.1565757496004
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Marcus=C2=A0After running sudo_images downloader" it seems that the images=
 are "up to date" as shown below.=C2=A0
mitll@mitll-virtual-machine:~$ sudo uhd_images_downloader
[INFO] Images destination: /usr/local/share/uhd/images
[INFO] Target usrp1_usrp1_fpga_default is up to date.
[INFO] Target b2xx_b210_fpga_default is up to date.
[INFO] Target b2xx_b205mini_fpga_default is up to date.
[INFO] Target e3xx_e320_fpga_default is up to date.
[INFO] Target usb_common_windrv_default is up to date.
[INFO] Target b2xx_common_fw_default is up to date.
[INFO] Target e3xx_e310_sg3_fpga_default is up to date.
[INFO] Target usrp2_n200_fpga_default is up to date.
[INFO] Target n230_n230_fpga_default is up to date.
[INFO] Target usrp1_b100_fpga_default is up to date.
[INFO] Target usrp1_b100_fw_default is up to date.
[INFO] Target n3xx_n320_fpga_default is up to date.
[INFO] Target n3xx_n310_fpga_default is up to date.
[INFO] Target n3xx_n300_fpga_default is up to date.
[INFO] Target usrp2_usrp2_fw_default is up to date.
[INFO] Target x3xx_x300_fpga_default is up to date.
[INFO] Target e3xx_e310_sg1_fpga_default is up to date.
[INFO] Target x3xx_x310_fpga_default is up to date.
[INFO] Target b2xx_b200mini_fpga_default is up to date.
[INFO] Target usrp2_n210_fw_default is up to date.
[INFO] Target usrp2_usrp2_fpga_default is up to date.
[INFO] Target octoclock_octoclock_fw_default is up to date.
[INFO] Target usrp2_n200_fw_default is up to date.
[INFO] Target usrp2_n210_fpga_default is up to date.
[INFO] Target b2xx_b200_fpga_default is up to date.

However, I re-flashed the device with "=C2=A0uhd_image_loader --args type=
=3Dx300" , power cycled and after running uhd_usrp_probe=C2=A0 get what's s=
hown below. This doesn't seem to be the new image. It's showing RFNoC block=
s from a previous image that was installed prior to my use and when I try t=
o run a flowgraph I'm getting the same error as mentioned in my previous me=
ssage. Ideas??
mitll@mitll-virtual-machine:~$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.=
0.git-34-g3c8ed1b5
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1307 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
=C2=A0 _____________________________________________________
=C2=A0/
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: X-Series Device
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____
|=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: X310
|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 11
|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision_compat: 7
|=C2=A0=C2=A0 |=C2=A0=C2=A0 product: 30818
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr0: 00:80:2f:18:33:28
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr1: 00:80:2f:18:33:29
|=C2=A0=C2=A0 |=C2=A0=C2=A0 gateway: 192.168.10.1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr0: 192.168.10.3
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet0: 255.255.255.0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr1: 192.168.20.2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet1: 255.255.255.0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr2: 192.168.30.2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet2: 255.255.255.0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr3: 192.168.40.2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet3: 255.255.255.0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 3138B7C
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FW Version: 6.0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA Version: 36.0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA git hash: 4bc2c6f
|=C2=A0=C2=A0 |=C2=A0=C2=A0 RFNoC capable: Yes
|=C2=A0=C2=A0 |=C2=A0=C2=A0=20
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Time sources:=C2=A0 internal, external, gpsdo
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Clock sources: internal, external, gpsdo
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: ref_locked
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard=
: A
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: TwinRX Rev C (0x0095)
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3137E4E
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: TwinRX RX0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: RX1, RX2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0=
 to 93.0 step 1.0 dB
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: II
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: TwinRX RX1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: RX1, RX2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0=
 to 93.0 step 1.0 dB
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: QQ
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Codec: A
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ads62p48
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range digital:=
 0.0 to 6.0 step 0.5 dB
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard=
: B
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: TwinRX Rev B (0x0093)
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 31411AC
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: TwinRX RX0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: RX1, RX2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0=
 to 93.0 step 1.0 dB
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: II
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: TwinRX RX1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: RX1, RX2
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range all: 0.0=
 to 93.0 step 1.0 dB
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 80=
000000.0 to 80000000.0 step 0.0 Hz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: QQ
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Codec: B
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ads62p48
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range digital:=
 0.0 to 6.0 step 0.5 dB
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard=
: A
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: Unknown (0x0094)
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3137E6C
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: 0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Unknown (0x00=
94) - 0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas:=20
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors:=20
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 0.000 t=
o 0.000 MHz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Codec: A
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9146
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard=
: B
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: Unknown (0x0092)
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 31411CD
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: 0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Unknown (0x00=
92) - 0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas:=20
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors:=20
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 0.000 t=
o 0.000 MHz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Codec: B
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9146
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blo=
cks on this device:
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=20
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DmaFIFO_0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_1
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_0
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_1


    On Tuesday, August 13, 2019, 11:41:52 PM EDT, Marcus D. Leech via USRP-=
users <usrp-users@lists.ettus.com> wrote: =20
=20
  On 08/13/2019 11:33 PM, Tellrell White via USRP-users wrote:
 =20
          Hello All=20
  I seem to be receiving an a uhd error that is causing flowgraphs to stop =
when trying to send and receive using the USRP X310. Now, I'm receiving the=
 same error shown below when running the "uhd_usrp_probe" command. Not quit=
e sure where this error is coming from but I see rfnoc in the last line of =
the printout below which leads me to believe that rfnoc could have somethin=
g to do with the error. However, I'm not working with the rfnoc branch of u=
hd. I believe someone else who was using the device before me may have been=
 using rfnoc. So, if this is indeed the issue, is there a way to rid the fp=
ga of rfnoc and use a regular, up to date image?=C2=A0o,=C2=A0=20
  I'm working inside of a VM running Ubuntu 16.04 LTS. I'm using UHD_3.15.0=
.git-34-g3c8ed1b5 as shown below, with GNU Radio 3.7.7.=C2=A0=20
  mitll@mitll-virtual-machine:~$ uhd_usrp_probe=20
 [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15=
.0.git-34-g3c8ed1b5
 [INFO] [X300] X300 initialization sequence...
 [INFO] [X300] Maximum frame size: 1472 bytes.
 [INFO] [X300] Radio 1x clock: 200 MHz
 [WARNING] [UDP] The recv buffer could not be resized sufficiently.
 Target sock buff size: 24266666 bytes.
 Actual sock buff size: 212992 bytes.
 See the transport application notes on buffer resizing.
 Please run: sudo sysctl -w net.core.rmem_max=3D24266666
 [WARNING] [UDP] The send buffer could not be resized sufficiently.
 Target sock buff size: 24266666 bytes.
 Actual sock buff size: 212992 bytes.
 See the transport application notes on buffer resizing.
 Please run: sudo sysctl -w net.core.wmem_max=3D24266666
 [WARNING] [UDP] The current recv_buff_size of 212992 is less than the mini=
mum recommended size of 816000 and may result in dropped packets on some NI=
Cs
 [ERROR] [UHD] Exception caught in safe-call.
 =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endi=
anness_t _endianness =3D (uhd::endianness_t)0u]
 =C2=A0 at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
 this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (=
CE_00_Port_30) no response packet - AssertionError: bool(buff)
 =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double=
) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =
=3D long unsigned int]
 =C2=A0 at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142 Error: Environ=
mentError: IOError: Block ctrl (CE_00_Port_30) no response packet - Asserti=
onError: bool(buff)
 =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double=
) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =
=3D long unsigned int]
 =C2=A0 at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142=20
  Regards
  Tellrell=C2=A0=20
       =20
    =20
 Use:
=20
 uhd_image_loader --args type=3Dx300
=20
 Assuming that you have already downloaded matching image files with:
=20
 sudo uhd_images_downloader
=20
 _______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
 =20
------=_Part_3650049_2061397118.1565757496004
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpfeed99a8yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"></div><div class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"font-family:He=
lvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        </div><div class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr=
" data-setdir=3D"false">Marcus&nbsp;</div><div class=3D"ydpfeed99a8yahoo-st=
yle-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif=
;font-size:13px;" dir=3D"ltr" data-setdir=3D"false">After running sudo_imag=
es downloader" it seems that the images are "up to date" as shown below.&nb=
sp;</div><div class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"font-family:He=
lvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><b></b><i></i><=
u></u><sub></sub><sup></sup><strike></strike><br></div><div class=3D"ydpfee=
d99a8yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;">mitll@mitll-virtual-machine:~$ sudo uhd_imag=
es_downloader<br>[INFO] Images destination: /usr/local/share/uhd/images<br>=
[INFO] Target usrp1_usrp1_fpga_default is up to date.<br>[INFO] Target b2xx=
_b210_fpga_default is up to date.<br>[INFO] Target b2xx_b205mini_fpga_defau=
lt is up to date.<br>[INFO] Target e3xx_e320_fpga_default is up to date.<br=
>[INFO] Target usb_common_windrv_default is up to date.<br>[INFO] Target b2=
xx_common_fw_default is up to date.<br>[INFO] Target e3xx_e310_sg3_fpga_def=
ault is up to date.<br>[INFO] Target usrp2_n200_fpga_default is up to date.=
<br>[INFO] Target n230_n230_fpga_default is up to date.<br>[INFO] Target us=
rp1_b100_fpga_default is up to date.<br>[INFO] Target usrp1_b100_fw_default=
 is up to date.<br>[INFO] Target n3xx_n320_fpga_default is up to date.<br>[=
INFO] Target n3xx_n310_fpga_default is up to date.<br>[INFO] Target n3xx_n3=
00_fpga_default is up to date.<br>[INFO] Target usrp2_usrp2_fw_default is u=
p to date.<br>[INFO] Target x3xx_x300_fpga_default is up to date.<br>[INFO]=
 Target e3xx_e310_sg1_fpga_default is up to date.<br>[INFO] Target x3xx_x31=
0_fpga_default is up to date.<br>[INFO] Target b2xx_b200mini_fpga_default i=
s up to date.<br>[INFO] Target usrp2_n210_fw_default is up to date.<br>[INF=
O] Target usrp2_usrp2_fpga_default is up to date.<br>[INFO] Target octocloc=
k_octoclock_fw_default is up to date.<br>[INFO] Target usrp2_n200_fw_defaul=
t is up to date.<br>[INFO] Target usrp2_n210_fpga_default is up to date.<br=
>[INFO] Target b2xx_b200_fpga_default is up to date.<br></div><b></b><i></i=
><u></u><sub></sub><sup></sup><strike></strike><div class=3D"ydpfeed99a8yah=
oo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-=
serif;font-size:13px;"><br></div><div class=3D"ydpfeed99a8yahoo-style-wrap"=
 style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-siz=
e:13px;" dir=3D"ltr" data-setdir=3D"false"><div class=3D"ydpfeed99a8yahoo-s=
tyle-wrap" style=3D"text-align: left; color: rgb(0, 0, 0); text-transform: =
none; text-indent: 0px; letter-spacing: normal; font-family: Helvetica Neue=
,Helvetica,Arial,sans-serif; font-size: 13px; font-style: normal; font-vari=
ant: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; wh=
ite-space: normal; orphans: 2;" dir=3D"ltr" data-setdir=3D"false">However, =
I re-flashed the device with "&nbsp;<span><span style=3D"background-color: =
rgb(255, 255, 255); color: rgb(29, 34, 40); display: inline; float: none; f=
ont-family: Helvetica Neue,Helvetica,Arial,sans-serif; font-size: 13px; fon=
t-style: normal; font-variant: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px;">uhd_image_=
loader --args type=3Dx300</span></span>" , power cycled and after running u=
hd_usrp_probe&nbsp;</div></div><div class=3D"ydpfeed99a8yahoo-style-wrap" s=
tyle=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:=
13px;" dir=3D"ltr" data-setdir=3D"false"> get what's shown below. This does=
n't seem to be the new image. It's showing RFNoC blocks from a previous ima=
ge that was installed prior to my use and when I try to run a flowgraph I'm=
 getting the same error as mentioned in my previous message. Ideas??</div><=
div class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"font-family:Helvetica Ne=
ue, Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=
=3D"false"><br></div><div class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"fo=
nt-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir=
=3D"ltr" data-setdir=3D"false">mitll@mitll-virtual-machine:~$ uhd_usrp_prob=
e <br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD=
_3.15.0.git-34-g3c8ed1b5<br>[INFO] [X300] X300 initialization sequence...<b=
r>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x c=
lock: 200 MHz<br>[INFO] [GPS] No GPSDO found<br>[WARNING] [UDP] The recv bu=
ffer could not be resized sufficiently.<br>Target sock buff size: 24266666 =
bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transport applica=
tion notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_=
max=3D24266666<br>[WARNING] [UDP] The send buffer could not be resized suff=
iciently.<br>Target sock buff size: 24266666 bytes.<br>Actual sock buff siz=
e: 212992 bytes.<br>See the transport application notes on buffer resizing.=
<br>Please run: sudo sysctl -w net.core.wmem_max=3D24266666<br>[WARNING] [U=
DP] The current recv_buff_size of 212992 is less than the minimum recommend=
ed size of 816000 and may result in dropped packets on some NICs<br>[WARNIN=
G] [UDP] The recv buffer could not be resized sufficiently.<br>Target sock =
buff size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See t=
he transport application notes on buffer resizing.<br>Please run: sudo sysc=
tl -w net.core.rmem_max=3D24266666<br>[WARNING] [UDP] The send buffer could=
 not be resized sufficiently.<br>Target sock buff size: 24266666 bytes.<br>=
Actual sock buff size: 212992 bytes.<br>See the transport application notes=
 on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426=
6666<br>[WARNING] [UDP] The current recv_buff_size of 212992 is less than t=
he minimum recommended size of 816000 and may result in dropped packets on =
some NICs<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F=
0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1307 MB/s)<=
br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)<br>[WARNING] [U=
DP] The recv buffer could not be resized sufficiently.<br>Target sock buff =
size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the tr=
ansport application notes on buffer resizing.<br>Please run: sudo sysctl -w=
 net.core.rmem_max=3D24266666<br>[WARNING] [UDP] The send buffer could not =
be resized sufficiently.<br>Target sock buff size: 24266666 bytes.<br>Actua=
l sock buff size: 212992 bytes.<br>See the transport application notes on b=
uffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D24266666<=
br>[WARNING] [UDP] The current recv_buff_size of 212992 is less than the mi=
nimum recommended size of 816000 and may result in dropped packets on some =
NICs<br>[WARNING] [UDP] The recv buffer could not be resized sufficiently.<=
br>Target sock buff size: 24266666 bytes.<br>Actual sock buff size: 212992 =
bytes.<br>See the transport application notes on buffer resizing.<br>Please=
 run: sudo sysctl -w net.core.rmem_max=3D24266666<br>[WARNING] [UDP] The se=
nd buffer could not be resized sufficiently.<br>Target sock buff size: 2426=
6666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transport ap=
plication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.=
wmem_max=3D24266666<br>[WARNING] [UDP] The current recv_buff_size of 212992=
 is less than the minimum recommended size of 816000 and may result in drop=
ped packets on some NICs<br>[INFO] [0/Radio_0] Initializing block control (=
NOC ID: 0x12AD100000000001)<br>[WARNING] [UDP] The recv buffer could not be=
 resized sufficiently.<br>Target sock buff size: 24266666 bytes.<br>Actual =
sock buff size: 212992 bytes.<br>See the transport application notes on buf=
fer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D24266666<br=
>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Targ=
et sock buff size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<=
br>See the transport application notes on buffer resizing.<br>Please run: s=
udo sysctl -w net.core.wmem_max=3D24266666<br>[WARNING] [UDP] The current r=
ecv_buff_size of 212992 is less than the minimum recommended size of 816000=
 and may result in dropped packets on some NICs<br>[WARNING] [UDP] The recv=
 buffer could not be resized sufficiently.<br>Target sock buff size: 242666=
66 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transport appl=
ication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.rm=
em_max=3D24266666<br>[WARNING] [UDP] The send buffer could not be resized s=
ufficiently.<br>Target sock buff size: 24266666 bytes.<br>Actual sock buff =
size: 212992 bytes.<br>See the transport application notes on buffer resizi=
ng.<br>Please run: sudo sysctl -w net.core.wmem_max=3D24266666<br>[WARNING]=
 [UDP] The current recv_buff_size of 212992 is less than the minimum recomm=
ended size of 816000 and may result in dropped packets on some NICs<br>[INF=
O] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<br>[=
WARNING] [UDP] The recv buffer could not be resized sufficiently.<br>Target=
 sock buff size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br=
>See the transport application notes on buffer resizing.<br>Please run: sud=
o sysctl -w net.core.rmem_max=3D24266666<br>[WARNING] [UDP] The send buffer=
 could not be resized sufficiently.<br>Target sock buff size: 24266666 byte=
s.<br>Actual sock buff size: 212992 bytes.<br>See the transport application=
 notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=
=3D24266666<br>[WARNING] [UDP] The current recv_buff_size of 212992 is less=
 than the minimum recommended size of 816000 and may result in dropped pack=
ets on some NICs<br>[WARNING] [UDP] The recv buffer could not be resized su=
fficiently.<br>Target sock buff size: 24266666 bytes.<br>Actual sock buff s=
ize: 212992 bytes.<br>See the transport application notes on buffer resizin=
g.<br>Please run: sudo sysctl -w net.core.rmem_max=3D24266666<br>[WARNING] =
[UDP] The send buffer could not be resized sufficiently.<br>Target sock buf=
f size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the =
transport application notes on buffer resizing.<br>Please run: sudo sysctl =
-w net.core.wmem_max=3D24266666<br>[WARNING] [UDP] The current recv_buff_si=
ze of 212992 is less than the minimum recommended size of 816000 and may re=
sult in dropped packets on some NICs<br>[INFO] [0/DDC_0] Initializing block=
 control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [UDP] The recv buffer co=
uld not be resized sufficiently.<br>Target sock buff size: 24266666 bytes.<=
br>Actual sock buff size: 212992 bytes.<br>See the transport application no=
tes on buffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D2=
4266666<br>[WARNING] [UDP] The send buffer could not be resized sufficientl=
y.<br>Target sock buff size: 24266666 bytes.<br>Actual sock buff size: 2129=
92 bytes.<br>See the transport application notes on buffer resizing.<br>Ple=
ase run: sudo sysctl -w net.core.wmem_max=3D24266666<br>[WARNING] [UDP] The=
 current recv_buff_size of 212992 is less than the minimum recommended size=
 of 816000 and may result in dropped packets on some NICs<br>[WARNING] [UDP=
] The recv buffer could not be resized sufficiently.<br>Target sock buff si=
ze: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the tran=
sport application notes on buffer resizing.<br>Please run: sudo sysctl -w n=
et.core.rmem_max=3D24266666<br>[WARNING] [UDP] The send buffer could not be=
 resized sufficiently.<br>Target sock buff size: 24266666 bytes.<br>Actual =
sock buff size: 212992 bytes.<br>See the transport application notes on buf=
fer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D24266666<br=
>[WARNING] [UDP] The current recv_buff_size of 212992 is less than the mini=
mum recommended size of 816000 and may result in dropped packets on some NI=
Cs<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC00000000000=
00)<br>[WARNING] [UDP] The recv buffer could not be resized sufficiently.<b=
r>Target sock buff size: 24266666 bytes.<br>Actual sock buff size: 212992 b=
ytes.<br>See the transport application notes on buffer resizing.<br>Please =
run: sudo sysctl -w net.core.rmem_max=3D24266666<br>[WARNING] [UDP] The sen=
d buffer could not be resized sufficiently.<br>Target sock buff size: 24266=
666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transport app=
lication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.w=
mem_max=3D24266666<br>[WARNING] [UDP] The current recv_buff_size of 212992 =
is less than the minimum recommended size of 816000 and may result in dropp=
ed packets on some NICs<br>[INFO] [0/DUC_0] Initializing block control (NOC=
 ID: 0xD0C0000000000000)<br>[WARNING] [UDP] The recv buffer could not be re=
sized sufficiently.<br>Target sock buff size: 24266666 bytes.<br>Actual soc=
k buff size: 212992 bytes.<br>See the transport application notes on buffer=
 resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D24266666<br>[W=
ARNING] [UDP] The send buffer could not be resized sufficiently.<br>Target =
sock buff size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br>=
See the transport application notes on buffer resizing.<br>Please run: sudo=
 sysctl -w net.core.wmem_max=3D24266666<br>[WARNING] [UDP] The current recv=
_buff_size of 212992 is less than the minimum recommended size of 816000 an=
d may result in dropped packets on some NICs<br>[INFO] [0/DUC_1] Initializi=
ng block control (NOC ID: 0xD0C0000000000000)<br>&nbsp; ___________________=
__________________________________<br>&nbsp;/<br>|&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Device: X-Series Device<br>|&nbsp;&nbsp;&nbsp;&nbsp; __________=
___________________________________________<br>|&nbsp;&nbsp;&nbsp; /<br>|&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: X310<br>|&nbsp;&nb=
sp; |&nbsp;&nbsp; revision: 11<br>|&nbsp;&nbsp; |&nbsp;&nbsp; revision_comp=
at: 7<br>|&nbsp;&nbsp; |&nbsp;&nbsp; product: 30818<br>|&nbsp;&nbsp; |&nbsp=
;&nbsp; mac-addr0: 00:80:2f:18:33:28<br>|&nbsp;&nbsp; |&nbsp;&nbsp; mac-add=
r1: 00:80:2f:18:33:29<br>|&nbsp;&nbsp; |&nbsp;&nbsp; gateway: 192.168.10.1<=
br>|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr0: 192.168.10.3<br>|&nbsp;&nbsp; |&nb=
sp;&nbsp; subnet0: 255.255.255.0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr1: 1=
92.168.20.2<br>|&nbsp;&nbsp; |&nbsp;&nbsp; subnet1: 255.255.255.0<br>|&nbsp=
;&nbsp; |&nbsp;&nbsp; ip-addr2: 192.168.30.2<br>|&nbsp;&nbsp; |&nbsp;&nbsp;=
 subnet2: 255.255.255.0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr3: 192.168.40=
.2<br>|&nbsp;&nbsp; |&nbsp;&nbsp; subnet3: 255.255.255.0<br>|&nbsp;&nbsp; |=
&nbsp;&nbsp; serial: 3138B7C<br>|&nbsp;&nbsp; |&nbsp;&nbsp; FW Version: 6.0=
<br>|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 36.0<br>|&nbsp;&nbsp; |&nbsp;=
&nbsp; FPGA git hash: 4bc2c6f<br>|&nbsp;&nbsp; |&nbsp;&nbsp; RFNoC capable:=
 Yes<br>|&nbsp;&nbsp; |&nbsp;&nbsp; <br>|&nbsp;&nbsp; |&nbsp;&nbsp; Time so=
urces:&nbsp; internal, external, gpsdo<br>|&nbsp;&nbsp; |&nbsp;&nbsp; Clock=
 sources: internal, external, gpsdo<br>|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors:=
 ref_locked<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ____________________=
_________________________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br=
>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboar=
d: A<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: TwinRX Rev C (0x0095)=
<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3137E4E<br>|&nbsp;&nb=
sp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _______________________________=
______________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /=
<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; RX Frontend: 0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp=
;&nbsp; Name: TwinRX RX0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbs=
p;&nbsp; Antennas: RX1, RX2<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&=
nbsp;&nbsp; Sensors: lo_locked<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;=
 |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz<br>|&nbsp;&nbsp; |&nbsp;&=
nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<b=
r>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: =
80000000.0 to 80000000.0 step 0.0 Hz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;=
&nbsp; |&nbsp;&nbsp; Connection Type: II<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>|&nbsp;&nbsp; |&nbsp;&nbsp; =
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|&nbsp;&nbsp; =
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Fronte=
nd: 1<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Twin=
RX RX1<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas:=
 RX1, RX2<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensor=
s: lo_locked<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Fre=
q range: 10.000 to 6000.000 MHz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp=
; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<br>|&nbsp;&nbsp; |&=
nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 8000=
0000.0 step 0.0 Hz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbs=
p; Connection Type: QQ<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;=
&nbsp; Uses LO offset: No<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp=
;&nbsp; _____________________________________________________<br>|&nbsp;&nb=
sp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nb=
sp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: A<br>|&nbsp;&nbsp=
; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48<br>|&nbsp;&nbsp;=
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 s=
tep 0.5 dB<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>=
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard=
: B<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: TwinRX Rev B (0x0093)<=
br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 31411AC<br>|&nbsp;&nbs=
p; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________________=
_____________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<=
br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; RX Frontend: 0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;=
&nbsp; Name: TwinRX RX0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp=
;&nbsp; Antennas: RX1, RX2<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors: lo_locked<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; =
|&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz<br>|&nbsp;&nbsp; |&nbsp;&n=
bsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<br=
>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 8=
0000000.0 to 80000000.0 step 0.0 Hz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&=
nbsp; |&nbsp;&nbsp; Connection Type: II<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nb=
sp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Fronten=
d: 1<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: TwinR=
X RX1<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: =
RX1, RX2<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors=
: lo_locked<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq=
 range: 10.000 to 6000.000 MHz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;=
 |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<br>|&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000=
000.0 step 0.0 Hz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp=
; Connection Type: QQ<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&=
nbsp; Uses LO offset: No<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;=
&nbsp; _____________________________________________________<br>|&nbsp;&nbs=
p; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbs=
p;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: B<br>|&nbsp;&nbsp;=
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48<br>|&nbsp;&nbsp; =
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 st=
ep 0.5 dB<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ______________________=
_______________________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|=
&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard:=
 A<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: Unknown (0x0094)<br>|&n=
bsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3137E6C<br>|&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|&n=
bsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;=
 Name: Unknown (0x0094) - 0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&=
nbsp;&nbsp; Antennas: <br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;=
&nbsp; Sensors: <br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;=
 Freq range: 0.000 to 0.000 MHz<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp=
; |&nbsp;&nbsp; Gain Elements: None<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&=
nbsp; |&nbsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz<br>|&nbsp;&nbsp=
; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ<br>|&nbsp;&=
nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>|&nbs=
p;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________=
___________________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nb=
sp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; TX Codec: A<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nb=
sp;&nbsp; Name: ad9146<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;=
&nbsp; Gain Elements: None<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________<br>|&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; TX Dboard: B<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: Unknow=
n (0x0092)<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 31411CD<br>=
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbs=
p;&nbsp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; TX Frontend: 0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nb=
sp; |&nbsp;&nbsp; Name: Unknown (0x0092) - 0<br>|&nbsp;&nbsp; |&nbsp;&nbsp;=
 |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nb=
sp;&nbsp; |&nbsp;&nbsp; Sensors: <br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nb=
sp; |&nbsp;&nbsp; Freq range: 0.000 to 0.000 MHz<br>|&nbsp;&nbsp; |&nbsp;&n=
bsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None<br>|&nbsp;&nbsp; |&nbs=
p;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 H=
z<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Typ=
e: IQ<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO of=
fset: No<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _________=
____________________________________________<br>|&nbsp;&nbsp; |&nbsp;&nbsp;=
 |&nbsp;&nbsp;&nbsp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: B<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nb=
sp;&nbsp; |&nbsp;&nbsp; Gain Elements: None<br>|&nbsp;&nbsp; |&nbsp;&nbsp;&=
nbsp;&nbsp; _____________________________________________________<br>|&nbsp=
;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks on this device:<br>|&nbsp;&nbsp; |&nbs=
p;&nbsp; |&nbsp;&nbsp; <br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DmaF=
IFO_0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_0<br>|&nbsp;&nbs=
p; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_1<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * DDC_0<br>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_1<br>=
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_0<br>|&nbsp;&nbsp; |&nbsp;&=
nbsp; |&nbsp;&nbsp; * DUC_1<br></div><b></b><i></i><u></u><sub></sub><sup><=
/sup><strike></strike><div class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"f=
ont-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" di=
r=3D"ltr" data-setdir=3D"false"><br></div><div class=3D"ydpfeed99a8yahoo-st=
yle-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif=
;font-size:13px;"><b></b><i></i><u></u><sub></sub><sup></sup><strike></stri=
ke><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></div><d=
iv class=3D"ydpfeed99a8yahoo-style-wrap" style=3D"font-family:Helvetica Neu=
e, Helvetica, Arial, sans-serif;font-size:13px;">
       =20
        </div><div class=3D"yahoo_quoted" id=3D"yahoo_quoted_5865965021">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 13, 2019, 11:41:52 PM EDT, Marcus D.=
 Leech via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv8762972743"><div>
    <div class=3D"yiv8762972743yqt6707789251" id=3D"yiv8762972743yqt66622">=
<div class=3D"yiv8762972743moz-cite-prefix">On 08/13/2019 11:33 PM, Tellrel=
l White
      via USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      <div class=3D"yiv8762972743yahoo-style-wrap" style=3D"font-family:Hel=
vetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div>
          <div class=3D"yiv8762972743ydp23622931I_52qC yiv8762972743ydp2362=
2931D_FY yiv8762972743ydp23622931W_6D6F" style=3D"width:100%;text-align:lef=
t;color:rgb(29, 34, 40);text-transform:none;text-indent:0px;letter-spacing:=
normal;font-family:Helvetica Neue, Segoe UI, Helvetica, Arial, Lucida Grand=
e, sans-serif;font-size:13px;font-style:normal;font-variant:normal;font-wei=
ght:400;text-decoration:none;word-spacing:0px;display:table;white-space:nor=
mal;orphans:2;background-color:rgb(255, 255, 255);">
            <div class=3D"yiv8762972743ydp23622931msg-body yiv8762972743ydp=
23622931P_wpofO yiv8762972743ydp23622931iy_A yiv8762972743ydp23622931mq_AS"=
 style=3D"padding:2px 0px 0px;line-height:normal;font-family:Helvetica Neue=
, Helvetica, Arial, sans-serif;">
              <div class=3D"yiv8762972743ydp23622931jb_0 yiv8762972743ydp23=
622931X_6MGW yiv8762972743ydp23622931N_6Fd5" style=3D"padding-bottom:0px;pa=
dding-left:24px;padding-right:16px;">
                <div>
                  <div id=3D"yiv8762972743ydp23622931yiv3276655677">
                    <div>
                      <div class=3D"yiv8762972743ydp23622931yiv3276655677yd=
pc0dc2ac8yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, =
Arial, sans-serif;font-size:13px;">
                        <div dir=3D"ltr">Hello All</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">I seem to be receiving an a uhd
                          error that is causing flowgraphs to stop when
                          trying to send and receive using the USRP
                          X310. Now, I'm receiving the same error shown
                          below when running the "uhd_usrp_probe"
                          command. Not quite sure where this error is
                          coming from but I see rfnoc in the last line
                          of the printout below which leads me to
                          believe that rfnoc could have something to do
                          with the error. However, I'm not working with
                          the rfnoc branch of uhd. I believe someone
                          else who was using the device before me may
                          have been using rfnoc. S<font style=3D"background=
-color:rgb(255, 255,                             255);">o, if this is indee=
d the issue, is<span style=3D"color:rgb(0, 0, 0);display:inline;float:none;=
font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;fon=
t-style:normal;font-variant:normal;font-weight:400;letter-spacing:normal;or=
phans:2;text-align:left;text-decoration:none;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;">
                              there a way to rid the fpga of rfnoc and
                              use a regular, up to date image?&nbsp;</span>=
</font>o,&nbsp;</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">I'm working inside of a VM
                          running Ubuntu 16.04 LTS. I'm using <span><span s=
tyle=3D"background-color:rgb(255, 255,                               255);c=
olor:rgb(0, 0, 0);display:inline;float:none;font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;font-style:normal;font-variant:nor=
mal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-de=
coration:none;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;">UHD_3.15.0.git-34-g3c8ed1b5
                              as shown below, with GNU Radio 3.7.7.&nbsp;</=
span></span></div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">mitll@mitll-virtual-machine:~$
                          uhd_usrp_probe <br clear=3D"none">
                          [INFO] [UHD] linux; GNU C++ version 5.4.0
                          20160609; Boost_105800;
                          UHD_3.15.0.git-34-g3c8ed1b5<br clear=3D"none">
                          [INFO] [X300] X300 initialization sequence...<br =
clear=3D"none">
                          [INFO] [X300] Maximum frame size: 1472 bytes.<br =
clear=3D"none">
                          [INFO] [X300] Radio 1x clock: 200 MHz<br clear=3D=
"none">
                          [WARNING] [UDP] The recv buffer could not be
                          resized sufficiently.<br clear=3D"none">
                          Target sock buff size: 24266666 bytes.<br clear=
=3D"none">
                          Actual sock buff size: 212992 bytes.<br clear=3D"=
none">
                          See the transport application notes on buffer
                          resizing.<br clear=3D"none">
                          Please run: sudo sysctl -w
                          net.core.rmem_max=3D24266666<br clear=3D"none">
                          [WARNING] [UDP] The send buffer could not be
                          resized sufficiently.<br clear=3D"none">
                          Target sock buff size: 24266666 bytes.<br clear=
=3D"none">
                          Actual sock buff size: 212992 bytes.<br clear=3D"=
none">
                          See the transport application notes on buffer
                          resizing.<br clear=3D"none">
                          Please run: sudo sysctl -w
                          net.core.wmem_max=3D24266666<br clear=3D"none">
                          [WARNING] [UDP] The current recv_buff_size of
                          212992 is less than the minimum recommended
                          size of 816000 and may result in dropped
                          packets on some NICs<br clear=3D"none">
                          [ERROR] [UHD] Exception caught in safe-call.<br c=
lear=3D"none">
                          &nbsp; in
                          ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_i=
mpl()
                          [with uhd::endianness_t _endianness =3D
                          (uhd::endianness_t)0u]<br clear=3D"none">
                          &nbsp; at
                          /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<=
br clear=3D"none">
                          this-&gt;send_cmd_pkt(0, 0, true); -&gt;
                          EnvironmentError: IOError: Block ctrl
                          (CE_00_Port_30) no response packet -
                          AssertionError: bool(buff)<br clear=3D"none">
                          &nbsp; in uint64_t
                          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(=
bool,
                          double) [with uhd::endianness_t _endianness =3D
                          (uhd::endianness_t)0u; uint64_t =3D long
                          unsigned int]<br clear=3D"none">
                          &nbsp; at
                          /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142=
</div>
                        <div>Error: EnvironmentError: IOError: Block
                          ctrl (CE_00_Port_30) no response packet -
                          AssertionError: bool(buff)<br clear=3D"none">
                          &nbsp; in uint64_t
                          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(=
bool,
                          double) [with uhd::endianness_t _endianness =3D
                          (uhd::endianness_t)0u; uint64_t =3D long
                          unsigned int]<br clear=3D"none">
                          &nbsp; at
                          /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142=
</div>
                        <div><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">Regards<br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">Tellrell&nbsp;</div>
                        <div><br clear=3D"none">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class=3D"yiv8762972743ydp23622931jb_0 yiv8762972743ydp2362=
2931X_6MGW yiv8762972743ydp23622931N_6Fd5" style=3D"padding-bottom:0px;padd=
ing-left:24px;padding-right:16px;"><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote></div>
    Use:<br clear=3D"none">
    <br clear=3D"none">
    uhd_image_loader --args type=3Dx300<br clear=3D"none">
    <br clear=3D"none">
    Assuming that you have already downloaded matching image files with:<br=
 clear=3D"none">
    <br clear=3D"none">
    sudo uhd_images_downloader<br clear=3D"none">
    <br clear=3D"none">
  </div></div><div class=3D"yqt6707789251" id=3D"yqt16311">________________=
_______________________________<br clear=3D"none">USRP-users mailing list<b=
r clear=3D"none"><a href=3D"mailto:USRP-users@lists.ettus.com" shape=3D"rec=
t" ymailto=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com=
</a><br clear=3D"none"><a href=3D"http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com" target=3D"_blank" shape=3D"rect">http://lists.et=
tus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none"><=
/div></div>
            </div>
        </div></body></html>
------=_Part_3650049_2061397118.1565757496004--


--===============7488048283475968828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7488048283475968828==--

