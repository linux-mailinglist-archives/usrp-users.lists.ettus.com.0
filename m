Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE62FBA4CA9
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 19:57:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BBC33862E8
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 13:57:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758909439; bh=Whl0X09GE9uvT2gP9I/fNrz5qa09/lqCM2/rP7bLMi0=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=PNFM7TiAcyOMwoiM+REMH2QPacFMh2OXmlOZRmBZbHBV+bhsFRtdEYlR9Fl0Mm041
	 yBBgR3N1W1ed9RUD/8ayHoCxmkU0q5QQAfJInRDz0E0q+bWNkbEBfN5PZLHWP6k4dh
	 iILpAUqV1HQHQ4o6fscHAgUxONMOTCEAO8tvtuWYTyPDTzlLMV1e3CDh2LOpwbMMV5
	 TiHsAaIOUQjsJuxTJuNxQg0oG0bCux/dDtj/Ov/1KURmfIWm6TPdNVafvsvYukIP1J
	 wHRRc61/WBj136MEBjbZR0vJPCtwSWTNCmShxKVr6RxFtjTZ/gwwkNKsUk/JzQ5zBl
	 Ao32xltz/B7cA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80523386162
	for <usrp-users@lists.ettus.com>; Fri, 26 Sep 2025 13:56:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758909383; bh=gG49F+8OlRF/CUTrzqNsqrXw/81ekwdIkdH/GEMClZ4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=XxytyZTTUrkFzHC4qxfDxXzhNO8dLwfaJys/Di2cRJkWGrKux15rz1z8kbroSnf29
	 tlKHawxj4AK3szn1As1TrDtiCbSZRUyJKQLpOmPjnyhbG2vjl/mb15u0xXmsxRrAYk
	 h3LD+F+nemcbgRNcWzPz0SMKE51Hzm2d5QtLNO+IeHU9qBJQX/NQ6xs6wnc1e0gnmO
	 ZWVXVoiTFFr8Y6d2+VV1VorFO/t71zp7CtJwCndd+2+7PqFdhPG0QRLYALLy/hejEB
	 5/veakpLCgIrTOQNWTtavp4tQ9saKTzcG8mPuWXwDj1l8wYRGG8hvt6BFtu5l9GlRC
	 93vjot+OCKqLw==
Date: Fri, 26 Sep 2025 17:56:23 +0000
To: usrp-users@lists.ettus.com
Message-ID: <fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7MRh8V93FfFK9a1_5f5yGWvabGm4nPO081m-CCibB5eA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: PXF7JGCRZ4XA4J7LRRXJMJMH36N4KG4M
X-Message-ID-Hash: PXF7JGCRZ4XA4J7LRRXJMJMH36N4KG4M
X-MailFrom: peter.gu@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PXF7JGCRZ4XA4J7LRRXJMJMH36N4KG4M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Peter Gu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: peter.gu@tum.de
Content-Type: multipart/mixed; boundary="===============1802637170682424831=="

This is a multi-part message in MIME format.

--===============1802637170682424831==
Content-Type: multipart/alternative;
 boundary="b1_fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY
Content-Type: text/plain; charset=us-ascii

Hi Martin,

I tried to get rid of the underflow issue but didnt succeed. Our setup consists of a host PC equipped with an AMD Threadripper Pro 3955WX (16 cores), 160 GB of RAM, and a Mellanox MT27800. It is connected to the X440 via a single 100 GbE cable.

Im using the default X440_X4_1600 image and UHD4.8.0.0

To use DPDK I followed this instruction: https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

The only thing I changed was the line    dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/ ->    dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/ in uhd.conf

I also played around with dpdk_num_mbufs by setting it to e.g. 8192.

However, I still get underflow issues:

\[INFO\] \[UHD\] linux; GNU C++ version 13.1.0; Boost_107400; DPDK_21.11; UHD_4.8.0.0-0-g308126a4

EAL: Detected CPU lcores: 32

EAL: Detected NUMA nodes: 1

EAL: Detected shared linkage of DPDK

EAL: Multi-process socket /var/run/dpdk/rte/mp_socket

EAL: Selected IOVA mode 'VA'

EAL: No available 1048576 kB hugepages reported

EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:41:00.0 (socket 0)

EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:41:00.1 (socket 0)

TELEMETRY: No legacy callbacks, legacy socket not created

\[00:00:00.000240\] Creating the usrp device with: addr=192.168.60.243,mgmt_addr=10.157.161.243,master_clock_rate=2e9,use_dpdk=1...

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=10.157.161.243,type=x4xx,product=x440,serial=32C7660,name=ni-x4xx-32C7660,fpga=X4_1600,claimed=False,addr=192.168.60.243,master_clock_rate=2e9,use_dpdk=1

\[WARNING\] \[MPM.RPCServer\] A timeout event occured!

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=X4_1600,master_clock_rate=(2000000000.0, 2000000000.0),mgmt_addr=10.157.161.243,name=ni-x4xx-32C7660,product=x440,use_dpdk=1,clock_source=internal,time_source=internal,initializing=True'.

Using Device: Single USRP:

  Device: X400-Series Device

  Mboard 0: x440

  RX Channel: 0

    RX DSP: n/a

    RX Dboard: A

    RX Subdev: 0

  TX Channel: 0

    TX DSP: n/a

    TX Dboard: A

    TX Subdev: 0

\[00:00:03.670625969\] Setting device timestamp to 0...

\[00:00:03.673117806\] Testing receive rate 2000.000000 Msps on 1 channels

Setting TX samples per packet (spp) to 1984

Setting TX samples per burst (spb) to 1984

\[00:00:03.675296572\] Testing transmit rate 2000.000000 Msps on 1 channels

OUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUterminate called after throwing an instance of 'uhd::op_timeout'

  what():  RfnocError: OpTimeout: Control operation timed out waiting for ACK

Aborted (core dumped)

What can be the issue here?

Best,

Peter

--b1_fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>I tried to get rid of the underflow issue but didnt suc=
ceed. Our setup consists of a host PC equipped with an AMD Threadripper Pro=
 3955WX (16 cores), 160 GB of RAM, and a Mellanox MT27800. It is connected =
to the X440 via a single 100 GbE cable.</p><p>Im using the default X440_X4_=
1600 image and UHD4.8.0.0</p><p>To use DPDK I followed this instruction: ht=
tps://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</p><p>The only thing I=
 changed was the line    dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-=
20.0/ -&gt;    dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/ in u=
hd.conf</p><p>I also played around with dpdk_num_mbufs by setting it to e.g=
. 8192.</p><p><br></p><p>However, I still get underflow issues:</p><p>[INFO=
] [UHD] linux; GNU C++ version 13.1.0; Boost_107400; DPDK_21.11; UHD_4.8.0.=
0-0-g308126a4</p><p>EAL: Detected CPU lcores: 32</p><p>EAL: Detected NUMA n=
odes: 1</p><p>EAL: Detected shared linkage of DPDK</p><p>EAL: Multi-process=
 socket /var/run/dpdk/rte/mp_socket</p><p>EAL: Selected IOVA mode 'VA'</p><=
p>EAL: No available 1048576 kB hugepages reported</p><p>EAL: Probe PCI driv=
er: mlx5_pci (15b3:1017) device: 0000:41:00.0 (socket 0)</p><p>EAL: Probe P=
CI driver: mlx5_pci (15b3:1017) device: 0000:41:00.1 (socket 0)</p><p>TELEM=
ETRY: No legacy callbacks, legacy socket not created</p><p>[00:00:00.000240=
] Creating the usrp device with: addr=3D192.168.60.243,mgmt_addr=3D10.157.1=
61.243,master_clock_rate=3D2e9,use_dpdk=3D1...</p><p>[INFO] [MPMD] Initiali=
zing 1 device(s) in parallel with args: mgmt_addr=3D10.157.161.243,type=3Dx=
4xx,product=3Dx440,serial=3D32C7660,name=3Dni-x4xx-32C7660,fpga=3DX4_1600,c=
laimed=3DFalse,addr=3D192.168.60.243,master_clock_rate=3D2e9,use_dpdk=3D1</=
p><p>[WARNING] [MPM.RPCServer] A timeout event occured!</p><p>[INFO] [MPM.P=
eriphManager] init() called with device args `fpga=3DX4_1600,master_clock_r=
ate=3D(2000000000.0, 2000000000.0),mgmt_addr=3D10.157.161.243,name=3Dni-x4x=
x-32C7660,product=3Dx440,use_dpdk=3D1,clock_source=3Dinternal,time_source=
=3Dinternal,initializing=3DTrue'.</p><p>Using Device: Single USRP:</p><p>  =
Device: X400-Series Device</p><p>  Mboard 0: x440</p><p>  RX Channel: 0</p>=
<p>    RX DSP: n/a</p><p>    RX Dboard: A</p><p>    RX Subdev: 0</p><p>  TX=
 Channel: 0</p><p>    TX DSP: n/a</p><p>    TX Dboard: A</p><p>    TX Subde=
v: 0</p><p>[00:00:03.670625969] Setting device timestamp to 0...</p><p>[00:=
00:03.673117806] Testing receive rate 2000.000000 Msps on 1 channels</p><p>=
Setting TX samples per packet (spp) to 1984</p><p>Setting TX samples per bu=
rst (spb) to 1984</p><p>[00:00:03.675296572] Testing transmit rate 2000.000=
000 Msps on 1 channels</p><p>OUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUterminate called after throwing an instanc=
e of 'uhd::op_timeout'</p><p>  what():  RfnocError: OpTimeout: Control oper=
ation timed out waiting for ACK</p><p>Aborted (core dumped)</p><p><br></p><=
p>What can be the issue here?</p><p><br></p><p>Best,</p><p>Peter</p>

--b1_fl4ODZ2kLwqDKfYZpq6Lt1eSFmOrhV6VyIU639jaTY--

--===============1802637170682424831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1802637170682424831==--
