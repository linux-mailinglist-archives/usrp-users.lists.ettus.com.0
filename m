Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7855F9E5BEF
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 17:45:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AECDB3858CF
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 11:45:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733417131; bh=wFahBGlEgXtI132jufoywBIUetdY1BLS/1EkqGqF/SM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=O2QGegG3LG7Sfo/DEIffMEFxxShMXiII9r7kngFvJXDwC9CLGWdFeekL5SmZmW7Qw
	 GK+AREUp20sdkIcLjtuxAUdcZ1ThwiiRoMK2TGSqX5WCRJvxWBvtKB6dTuUmQnkCLX
	 hbpaOgjIiTn9pfZSfsCFPtvchnLCtIaDM5Q/E/EGHjtTJpkVwX88ctKrJDyeetwfYy
	 3z9gLH1ljy4lF08kiBg8q3BdeyCJtTjaoeFjTXnDKhEfPzzW8YEGVkY97fl1QWJOMN
	 RKohlFJKWlTxxaqmIpzRj2UyAnJt4gP/GMSrfH2BsFDYHJ1XB4OcLOD6j4AFGqv+fl
	 LFmYhbK8glA7g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E30DE385869
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 11:44:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733417085; bh=1ZmYa7NUuMrVaoTnT9T+hhTDkMPVYvs2Uia5bDv7Isg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=z8+TLaMhwWxa5EpUoOJnXBU/fo0+8I/KPto2OoZYQX3+bnLMiRHYO9MxkTTCugEBp
	 iHlGGqr4iPsgLvb/im/+CVRJnehWjGsTqaxEW/flm+0LsDKqdL6taoJg2IvHE+hq3E
	 aEtMVtCNRjRVTkiHFERiryuQHJLQnLsh4PUK4iCFidFiNVO/KpSzFHSQwYvXkxuHow
	 AWPoGJkYmdkpik14gD7MXXdNxzw6cteg/NNPRL6LSuYGwYEisYDdFNHncX5Wj4Mzks
	 A0N60bKlPWU/s1Sn80KAmaJ01US1JdmZ1zwnR5gRwKjim0UDTG6Kua0ptKWFlfk92p
	 dpsBc2WnPXNew==
Date: Thu, 5 Dec 2024 16:44:45 +0000
To: usrp-users@lists.ettus.com
From: houshang.azizi@accelleran.com
Message-ID: <n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: SKG2T5QGYFFKT3VNFBG7J6ZSUYWAFHZU
X-Message-ID-Hash: SKG2T5QGYFFKT3VNFBG7J6ZSUYWAFHZU
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SKG2T5QGYFFKT3VNFBG7J6ZSUYWAFHZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8756441074384059251=="

This is a multi-part message in MIME format.

--===============8756441074384059251==
Content-Type: multipart/alternative;
 boundary="b1_n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8
Content-Type: text/plain; charset=us-ascii

Hello

Have you managed to fix this?

I have a similar issue as you can see below.

Thanks

`ad@bm-super11-intel:~/accelleran$  sudo dpdk-devbind.py --status`

`Network devices using DPDK-compatible driver`

`============================================`

`0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci unused=i40e`

`0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci unused=i40e`

`Network devices using kernel driver`

`===================================`

`0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=eno1 drv=ixgbe unused=vfio-pci *Active*`

`0000:04:00.1 'Ethernet Controller 10G X550T 1563' if=eno2 drv=ixgbe unused=vfio-pci `

`0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens1f0 drv=i40e unused=vfio-pci `

`0000:43:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens1f3 drv=i40e unused=vfio-pci *Active*`

`0000:70:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens2f0 drv=i40e unused=vfio-pci `

`0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens2f1 drv=i40e unused=vfio-pci `

`Other Baseband devices`

`======================`

`0000:f7:00.0 'Device 57c0' unused=vfio-pci`

`No 'Crypto' devices detected`

`============================`

`DMA devices using kernel driver`

`===============================`

`0000:f6:01.0 'Device 0b25' drv=idxd unused=vfio-pci `

`No 'Eventdev' devices detected`

`==============================`

`No 'Mempool' devices detected`

`=============================`

`No 'Compress' devices detected`

`==============================`

`No 'Misc (rawdev)' devices detected`

`===================================`

`No 'Regex' devices detected`

`===========================`

`No 'ML' devices detected`

`========================`

`ad@bm-super11-intel:~/accelleran$ `

`ad@bm-super11-intel:~/accelleran$  uhd_find_devices`

`[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872`

`--------------------------------------------------`

`-- UHD Device 0`

`--------------------------------------------------`

`Device Address:`

`    serial: 32000F1`

`    addr: 10.10.0.100`

`    claimed: False`

`    fpga: XG`

`    mgmt_addr: 10.10.0.100`

`    name: ni-n3xx-32000F1`

`    product: n310`

`    type: n3xx`

`ad@bm-super11-intel:~/accelleran$  sudo /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args "addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1"`

`[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872`

`EAL: Detected CPU lcores: 64`

`EAL: Detected NUMA nodes: 1`

`EAL: Detected shared linkage of DPDK`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'VA'`

`EAL: VFIO support initialized`

`EAL: Using IOMMU type 1 (Type 1)`

`EAL: Ignore mapping IO port bar(1)`

`EAL: Ignore mapping IO port bar(4)`

`EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.1 (socket 0)`

`EAL: Ignore mapping IO port bar(1)`

`EAL: Ignore mapping IO port bar(4)`

`EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 (socket 0)`

`TELEMETRY: No legacy callbacks, legacy socket not created`

`i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for RX`

`i40e_dev_rx_queue_start(): Failed to allocate RX queue mbuf`

`[ERROR] [DPDK] Port 1: Could not start device`

`EAL: FATAL: already called initialization.`

`EAL: already called initialization.`

`[00:00:00.000306] Creating the usrp device with: addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1...`

`EAL: FATAL: already called initialization.`

`EAL: already called initialization.`

`[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Failure to start device`

`[ERROR] [DPDK] Error with EAL initialization`

`[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initialization`

`[ERROR] [DPDK] Error with EAL initialization`

`[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initialization`

`EAL: FATAL: already called initialization.`

`EAL: already called initialization.`

`Error: LookupError: KeyError: No devices found for ----->`

`Device Address:`

`    addr: 10.10.1.100`

`    second_addr: 10.10.2.100`

`    mgmt_addr: 10.10.0.100`

`    master_clock_rate: 125e6`

`    use_dpdk: 1`

`[ERROR] [DPDK] Error with EAL initialization`

`[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL initialization`

`Segmentation fault`

`ad@bm-super11-intel:~/accelleran$`

--b1_n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello</p><p>Have you managed to fix this?</p><p>I have a similar issue a=
s you can see below.</p><p>Thanks</p><p><br></p><p><code>ad@bm-super11-inte=
l:~/accelleran$  sudo dpdk-devbind.py --status</code></p><p><code>Network d=
evices using DPDK-compatible driver</code></p><p><code>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>0000:43:00.1 'Et=
hernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-pci unused=3Di40e</c=
ode></p><p><code>0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572=
' drv=3Dvfio-pci unused=3Di40e</code></p><p><code>Network devices using ker=
nel driver</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><=
code>0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=3Deno1 drv=3Dixgb=
e unused=3Dvfio-pci *Active*</code></p><p><code>0000:04:00.1 'Ethernet Cont=
roller 10G X550T 1563' if=3Deno2 drv=3Dixgbe unused=3Dvfio-pci </code></p><=
p><code>0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Den=
s1f0 drv=3Di40e unused=3Dvfio-pci </code></p><p><code>0000:43:00.3 'Etherne=
t Controller X710 for 10GbE SFP+ 1572' if=3Dens1f3 drv=3Di40e unused=3Dvfio=
-pci *Active*</code></p><p><code>0000:70:00.0 'Ethernet Controller X710 for=
 10GbE SFP+ 1572' if=3Dens2f0 drv=3Di40e unused=3Dvfio-pci </code></p><p><c=
ode>0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dens2f1=
 drv=3Di40e unused=3Dvfio-pci </code></p><p><code>Other Baseband devices</c=
ode></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</code></p><p><code>0000:f7:00.0 'Device 57c0' unused=3Dvfio-pci</=
code></p><p><code>No 'Crypto' devices detected</code></p><p><code>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</code></p><p><code>DMA devices using kernel driver</code></p><p><code>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</code></p><p><code>0000:f6:01.0 'Device 0b25' drv=3Didxd un=
used=3Dvfio-pci </code></p><p><code>No 'Eventdev' devices detected</code></=
p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>No 'Mempool' devices detecte=
d</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>No 'Compress' devices =
detected</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>No 'Misc (=
rawdev)' devices detected</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</code></p><p><code>No 'Regex' devices detected</code></p><p><code>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</code></p><p><code>No 'ML' devices detected</code></p><p><code>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><=
p><code>ad@bm-super11-intel:~/accelleran$ </code></p><p><code>ad@bm-super11=
-intel:~/accelleran$  uhd_find_devices</code></p><p><code>[INFO] [UHD] linu=
x; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed=
1872</code></p><p><code>--------------------------------------------------<=
/code></p><p><code>-- UHD Device 0</code></p><p><code>---------------------=
-----------------------------</code></p><p><code>Device Address:</code></p>=
<p><code>    serial: 32000F1</code></p><p><code>    addr: 10.10.0.100</code=
></p><p><code>    claimed: False</code></p><p><code>    fpga: XG</code></p>=
<p><code>    mgmt_addr: 10.10.0.100</code></p><p><code>    name: ni-n3xx-32=
000F1</code></p><p><code>    product: n310</code></p><p><code>    type: n3x=
x</code></p><p><code>ad@bm-super11-intel:~/accelleran$  sudo /usr/local/lib=
/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev "A:0 B:0" --rx_cha=
nnels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args "a=
ddr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,master_=
clock_rate=3D125e6,use_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU=
 C++ version 11.4.0; Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</=
code></p><p><code>EAL: Detected CPU lcores: 64</code></p><p><code>EAL: Dete=
cted NUMA nodes: 1</code></p><p><code>EAL: Detected shared linkage of DPDK<=
/code></p><p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</c=
ode></p><p><code>EAL: Selected IOVA mode 'VA'</code></p><p><code>EAL: VFIO =
support initialized</code></p><p><code>EAL: Using IOMMU type 1 (Type 1)</co=
de></p><p><code>EAL: Ignore mapping IO port bar(1)</code></p><p><code>EAL: =
Ignore mapping IO port bar(4)</code></p><p><code>EAL: Probe PCI driver: net=
_i40e (8086:1572) device: 0000:43:00.1 (socket 0)</code></p><p><code>EAL: I=
gnore mapping IO port bar(1)</code></p><p><code>EAL: Ignore mapping IO port=
 bar(4)</code></p><p><code>EAL: Probe PCI driver: net_i40e (8086:1572) devi=
ce: 0000:43:00.2 (socket 0)</code></p><p><code>TELEMETRY: No legacy callbac=
ks, legacy socket not created</code></p><p><code>i40e_alloc_rx_queue_mbufs(=
): Failed to allocate mbuf for RX</code></p><p><code>i40e_dev_rx_queue_star=
t(): Failed to allocate RX queue mbuf</code></p><p><code>[ERROR] [DPDK] Por=
t 1: Could not start device</code></p><p><code>EAL: FATAL: already called i=
nitialization.</code></p><p><code>EAL: already called initialization.</code=
></p><p><code>[00:00:00.000306] Creating the usrp device with: addr=3D10.10=
.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,master_clock_rate=
=3D125e6,use_dpdk=3D1...</code></p><p><code>EAL: FATAL: already called init=
ialization.</code></p><p><code>EAL: already called initialization.</code></=
p><p><code>[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: =
Failure to start device</code></p><p><code>[ERROR] [DPDK] Error with EAL in=
itialization</code></p><p><code>[ERROR] [UHD] Device discovery error: Runti=
meError: Error with EAL initialization</code></p><p><code>[ERROR] [DPDK] Er=
ror with EAL initialization</code></p><p><code>[ERROR] [UHD] Device discove=
ry error: RuntimeError: Error with EAL initialization</code></p><p><code>EA=
L: FATAL: already called initialization.</code></p><p><code>EAL: already ca=
lled initialization.</code></p><p><code>Error: LookupError: KeyError: No de=
vices found for -----&gt;</code></p><p><code>Device Address:</code></p><p><=
code>    addr: 10.10.1.100</code></p><p><code>    second_addr: 10.10.2.100<=
/code></p><p><code>    mgmt_addr: 10.10.0.100</code></p><p><code>    master=
_clock_rate: 125e6</code></p><p><code>    use_dpdk: 1</code></p><p><code>[E=
RROR] [DPDK] Error with EAL initialization</code></p><p><code>[ERROR] [X300=
] X300 Network discovery error RuntimeError: Error with EAL initialization<=
/code></p><p><code>Segmentation fault</code></p><p><code>ad@bm-super11-inte=
l:~/accelleran$</code></p>

--b1_n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8--

--===============8756441074384059251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8756441074384059251==--
