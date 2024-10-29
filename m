Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8319B570D
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 00:38:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E9D5386899
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 19:38:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730245099; bh=oFYU0IoRTkfzxSjhCBSh0QOKfdO0V6W/drs2C2t6W4Q=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jX5/D7w6vJKdi1rRn9B96v1HHXm7PBXCfLOA+OCZjcbs7aChdUUoQuVW1dq1O+eMk
	 tciRR7hHbxnMCpZDMgjYeoZnHvgIvhbqnZI8gUIbPfDdizXFrMJAf6yFZga2pH1KPt
	 eiXMOrama73/7cAma81PKQCvAB5NUQH08cJt1SycY/kD48OlSVY6Kd7DNDoZbu/TzR
	 wlFgXZNVTebsHmm6W1FoshjjTrctMNtbFgrY9q42vfI1023K2Q9K0NqUXM1BQExVpV
	 DnIkLd+N9Xx5x9JexrGVSSn4GB/MnqbmvUDhuwB5AlddfyXyhSBPLcX0fguI/FrisE
	 PJHygqeCrlaTA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3075F38685E
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 19:38:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730245084; bh=eadJJGY1Up6bP/rCt6AnH6uZq5PXhK0RTNb5VZxlAwo=;
	h=Date:To:From:Subject:From;
	b=rom/iAqX0csTYrHb4QvCe6dLTV/Qv0kpJj2LVqqc4lEEoDNEFV+6HV6is9KyHoPhS
	 cN+DzpIqmKdrWdcexGaCTgHcj1cBRhVlIUrHDE2vKKKAh5QBsueSScrelk6fvVJ6e6
	 H2Z6L4l8mOUuM6ngt60hmnbvQycXYRRhJcIshvK9IZE6wNnB0hh4iSXAA3QBsQmmgf
	 zp0uHaZu4Xk/v8C6qxFhnkpZfG7KWARsCIGwq7jgUOJ7FtLUjOm+0p+hveCXdJ/bqy
	 CHiXVtPAtZk34Edwucst/pz7pBQQIwpYT2WB6/IaqhHcG4z76PI1ij2XM0Xa9TH77/
	 ruaXjVkCfk2Iw==
Date: Tue, 29 Oct 2024 23:38:04 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: W2XVLLSV3JNSEU777O7RMWDZAV4KUSFB
X-Message-ID-Hash: W2XVLLSV3JNSEU777O7RMWDZAV4KUSFB
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2XVLLSV3JNSEU777O7RMWDZAV4KUSFB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5344259613665035657=="

This is a multi-part message in MIME format.

--===============5344259613665035657==
Content-Type: multipart/alternative;
 boundary="b1_Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I=E2=80=99m trying to conduct the UHD benchmark test using DPDK on X410 r=
adio. I=E2=80=99m using the NI Dual 100 Gigabit Ethernet PCIe NIC card, u=
sing the Mellanox drivers, and have the UC_200 fpga image loaded on the r=
adio. However, I keep experiencing packet drops and sequence errors when =
I do that. Any idea why that=E2=80=99s happening?

/usr/local/lib/uhd/examples$ sudo ./benchmark_rate --args "type=3Dx4xx,pr=
oduct=3Dx410,addr=3D192.168.20.3,mgmt_addr=3D192.168.1.3,use_dpdk=3D1" --=
priority "high" --multi_streamer --rx_rate 245.76e6 --rx_subdev "B:1" --t=
x_rate 245.76e6 --tx_subdev "B:0"=20

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;=
 UHD_4.7.0.HEAD-0-ga5ed1872

EAL: Detected CPU lcores: 32

EAL: Detected NUMA nodes: 1

EAL: Detected shared linkage of DPDK

EAL: Multi-process socket /var/run/dpdk/rte/mp_socket

EAL: Selected IOVA mode 'VA'

EAL: No available 1048576 kB hugepages reported

EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:01:00.0 (socket =
0)

EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:01:00.1 (socket =
0)

TELEMETRY: No legacy callbacks, legacy socket not created

\[00:00:00.000109\] Creating the usrp device with: type=3Dx4xx,product=3D=
x410,addr=3D192.168.20.3,mgmt_addr=3D192.168.1.3,use_dpdk=3D1...

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.1.3,type=3Dx4xx,product=3Dx410,serial=3D328AFD7,name=3Dni-x4=
xx-328AFD7,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.3,use_dpdk=3D1

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=3DUC=
_200,mgmt_addr=3D192.168.1.3,name=3Dni-x4xx-328AFD7,product=3Dx410,use_dp=
dk=3D1,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue=
'.

Using Device: Single USRP:

  Device: X400-Series Device

  Mboard 0: x410

  RX Channel: 0

    RX DSP: 0

    RX Dboard: B

    RX Subdev: 1

  TX Channel: 0

    TX DSP: 0

    TX Dboard: B

    TX Subdev: 0

\[00:00:01.970153754\] Setting device timestamp to 0...

\[00:00:01.971248509\] Testing receive rate 245.760000 Msps on 1 channels

Setting TX spb to 1992

\[00:00:01.972147276\] Testing transmit rate 245.760000 Msps on 1 channel=
s

U\[D00:00:02.502074084\] Detected Rx sequence error.

U\[D00:00:03.501866063\] Detected Rx sequence error.

U\[D00:00:04.501965973\] Detected Rx sequence error.

U\[D00:00:05.501905705\] Detected Rx sequence error.

U\[D00:00:06.501533956\] Detected Rx sequence error.

U\[D00:00:07.501567020\] Detected Rx sequence error.

U\[D00:00:08.501554331\] Detected Rx sequence error.

U\[D00:00:09.501610267\] Detected Rx sequence error.

U\[D00:00:10.501971471\] Detected Rx sequence error.

U\[D00:00:11.501931301\] Detected Rx sequence error.

\[00:00:11.973155250\] Benchmark complete.

Benchmark rate summary:

  Num received samples:     2344330478

  Num dropped samples:      113209128

  Num overruns detected:    0

  Num transmitted samples:  2335492512

  Num sequence errors (Tx): 0

  Num sequence errors (Rx): 10

  Num underruns detected:   10

  Num late commands:        0

  Num timeouts (Tx):        0

  Num timeouts (Rx):        0

Done!

--b1_Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I=E2=80=99m trying to conduct the UHD benchmark test using DPD=
K on X410 radio. I=E2=80=99m using the NI Dual 100 Gigabit Ethernet PCIe NI=
C card, using the Mellanox drivers, and have the UC_200 fpga image loaded o=
n the radio. However, I keep experiencing packet drops and sequence errors =
when I do that. Any idea why that=E2=80=99s happening?</p><p>/usr/local/lib=
/uhd/examples$ sudo ./benchmark_rate --args "type=3Dx4xx,product=3Dx410,add=
r=3D192.168.20.3,mgmt_addr=3D192.168.1.3,use_dpdk=3D1" --priority "high" --=
multi_streamer --rx_rate 245.76e6 --rx_subdev "B:1" --tx_rate 245.76e6 --tx=
_subdev "B:0" </p><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_1074=
00; DPDK_21.11; UHD_4.7.0.HEAD-0-ga5ed1872</p><p>EAL: Detected CPU lcores: =
32</p><p>EAL: Detected NUMA nodes: 1</p><p>EAL: Detected shared linkage of =
DPDK</p><p>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</p><p>EAL:=
 Selected IOVA mode 'VA'</p><p>EAL: No available 1048576 kB hugepages repor=
ted</p><p>EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:01:00.0 =
(socket 0)</p><p>EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:0=
1:00.1 (socket 0)</p><p>TELEMETRY: No legacy callbacks, legacy socket not c=
reated</p><p>[00:00:00.000109] Creating the usrp device with: type=3Dx4xx,p=
roduct=3Dx410,addr=3D192.168.20.3,mgmt_addr=3D192.168.1.3,use_dpdk=3D1...</=
p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.3,type=3Dx4xx,product=3Dx410,serial=3D328AFD7,name=3Dni-x4xx-=
328AFD7,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.3,use_dpdk=3D1</p><=
p>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_200,=
mgmt_addr=3D192.168.1.3,name=3Dni-x4xx-328AFD7,product=3Dx410,use_dpdk=3D1,=
clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</p><p>=
Using Device: Single USRP:</p><p>  Device: X400-Series Device</p><p>  Mboar=
d 0: x410</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboard: B<=
/p><p>    RX Subdev: 1</p><p>  TX Channel: 0</p><p>    TX DSP: 0</p><p>    =
TX Dboard: B</p><p>    TX Subdev: 0</p><p>[00:00:01.970153754] Setting devi=
ce timestamp to 0...</p><p>[00:00:01.971248509] Testing receive rate 245.76=
0000 Msps on 1 channels</p><p>Setting TX spb to 1992</p><p>[00:00:01.972147=
276] Testing transmit rate 245.760000 Msps on 1 channels</p><p>U[D00:00:02.=
502074084] Detected Rx sequence error.</p><p>U[D00:00:03.501866063] Detecte=
d Rx sequence error.</p><p>U[D00:00:04.501965973] Detected Rx sequence erro=
r.</p><p>U[D00:00:05.501905705] Detected Rx sequence error.</p><p>U[D00:00:=
06.501533956] Detected Rx sequence error.</p><p>U[D00:00:07.501567020] Dete=
cted Rx sequence error.</p><p>U[D00:00:08.501554331] Detected Rx sequence e=
rror.</p><p>U[D00:00:09.501610267] Detected Rx sequence error.</p><p>U[D00:=
00:10.501971471] Detected Rx sequence error.</p><p>U[D00:00:11.501931301] D=
etected Rx sequence error.</p><p>[00:00:11.973155250] Benchmark complete.</=
p><p>Benchmark rate summary:</p><p>  Num received samples:     2344330478</=
p><p>  Num dropped samples:      113209128</p><p>  Num overruns detected:  =
  0</p><p>  Num transmitted samples:  2335492512</p><p>  Num sequence error=
s (Tx): 0</p><p>  Num sequence errors (Rx): 10</p><p>  Num underruns detect=
ed:   10</p><p>  Num late commands:        0</p><p>  Num timeouts (Tx):    =
    0</p><p>  Num timeouts (Rx):        0</p><p>Done!</p>

--b1_Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec--

--===============5344259613665035657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5344259613665035657==--
