Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 014D181A75D
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 20:43:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3867385062
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 14:43:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703101393; bh=AK2RTnKXknDhTblaUIiCkZNJ5M4BfKt7+VrR97sum2M=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Sr57HpRaVDDOx+RcALYWkN23PqTu3nnDIIkVPgpUtvDRt65IAdMg5ufXjxm2FCsyt
	 DVSupGZ0LA7E537OONiudV3Ja9koOwL1D3YIab7OdFQB+duyTOChqJbpHD+B4pf3j/
	 pywf49N5m66jlO8AMQn9aS+VKeEjKeBSNHQglkYe20ucvh0h8raOLxE9vnK1LXe70v
	 EkCsEnqUZHCRoCF6rKh/OAVbC3GmViKSW/z095Hk9t08H9zslQG00ZwAsmymObVXVO
	 pxWbcDLx96LGAm1i7MNzKAMQ+b/mHB4C35gM8e0kBOVc8cffIM6xaUHavPgnT0Fa3U
	 7+wIL6RoN5ufg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 773F1384CCA
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 14:42:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703101361; bh=CBFFyd6w1dAjGcvbhBh40ilL/wNyiO1di0tPBcs1mqk=;
	h=Date:To:From:Subject:From;
	b=wq9ZwoZCSNHAPrszysScNSZVSuaS811ah3HlTpdzwRq2ZA2FV8NSX66Vzzo31+yhE
	 SL6Jh8mYlZD5vJ+VNhuZt0ucknEwQZn9VGd4TzR2txRj0hgeLahW8R3sCRELgRWlDf
	 dBjn3rldTtEPKjepy1te58co8nTn7vUwMZZMxABf+e32LwiPIpkN79ZQGP7HdE0KEW
	 QczZNagDvTbMYi792ROqytgav2CjVZdpQAKJvqUQuYZxNQi6lw6XZ4Pe0YzmroTINs
	 jzwTKkNli5E+Ge6cSZAyFqkP6F56LCdyhQ/pDezclJ1t8XRZYNKNQnAfoHGHB8nnVD
	 UQVWVRj+bEaYg==
Date: Wed, 20 Dec 2023 19:42:41 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: X3RDVTGCI4ENZJ2IZWRSMOKBXVX7GNU2
X-Message-ID-Hash: X3RDVTGCI4ENZJ2IZWRSMOKBXVX7GNU2
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X3RDVTGCI4ENZJ2IZWRSMOKBXVX7GNU2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0357681695187508553=="

This is a multi-part message in MIME format.

--===============0357681695187508553==
Content-Type: multipart/alternative;
 boundary="b1_wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently attempting to benchmark the x410 with the Mellanox Connect=
X-5 PCi Card over QSFP with the CG_400 image currently loaded on the x410=
. I am currently using a 13th gen intel i9-13900KS on the host machine. I=
 currently have a QSFP cable connected between the Mellanox card and the =
x410

I am following these instructions=E2=80=A6https://kb.ettus.com/Getting_St=
arted_with_DPDK_and_UHD

However, when I get to the benchmark_rate, I get the following output

`./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 -=
-tx_channels 0 --args "addr=3D192.168.10.2,use_dpdk=3D1"`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.5.0.main-2-ga7657c80`

`[WARNING] [PREFS] Loaded config from /root/.uhd. This location is consid=
ered deprecated, consider moving your config file to /root/.config instea=
d.`

`EAL: Detected 32 lcore(s)`

`EAL: Detected 1 NUMA nodes`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'PA'`

`EAL: No available hugepages reported in hugepages-1048576kB`

`EAL: Probing VFIO support...`

`EAL: VFIO support initialized`

`EAL: PCI device 0000:06:00.0 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`EAL: PCI device 0000:06:00.1 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`[ERROR] [DPDK] Could not find route to destination address 192.168.10.2`

`[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could no=
t find route to destination address 192.168.10.2`

`[00:00:00.000215] Creating the usrp device with: addr=3D192.168.10.2,use=
_dpdk=3D1...`

`[ERROR] [DPDK] Could not find route to destination address 192.168.10.2`

`[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could no=
t find route to destination address 192.168.10.2`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D328AACC,name=3Dni-x4xx-3=
28AACC,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,use_dpdk=3D1`

`[ERROR] [DPDK] Could not find route to destination address 192.168.10.2`

`[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 192.1=
68.10.2: RuntimeError: DPDK: Could not find route to destination address =
192.168.10.2`

`[ERROR] [MPMD::MB_IFACE] No CHDR connection available!`

`` [INFO] [MPM.PeriphManager] init() called with device args `fpga=3DCG_4=
00,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-328AACC,product=3Dx410,use_dpd=
k=3D1,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'=
. ``

`Error: RuntimeError: No CHDR connection available!`

I am having a difficult time parsing these errors at the moment. Should I=
 move my config file? Does the =E2=80=9Cx300 network=E2=80=9D refer to an=
 ettus device(I have no x3xx connected) or something else? Any suggestion=
s is greatly appreciated.

Thanks,

Joe

--b1_wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently attempting to benchmark the x410 with the Me=
llanox ConnectX-5 PCi Card over QSFP with the CG_400 image currently loaded=
 on the x410. I am currently using a 13th gen intel i9-13900KS on the host =
machine. I currently have a QSFP cable connected between the Mellanox card =
and the x410</p><p>I am following these instructions=E2=80=A6https://kb.ett=
us.com/Getting_Started_with_DPDK_and_UHD</p><p>However, when I get to the b=
enchmark_rate, I get the following output</p><p><code>./benchmark_rate --rx=
_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 --tx_channels 0 --args "a=
ddr=3D192.168.10.2,use_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU=
 C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</c=
ode></p><p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This loca=
tion is considered deprecated, consider moving your config file to /root/.c=
onfig instead.</code></p><p><code>EAL: Detected 32 lcore(s)</code></p><p><c=
ode>EAL: Detected 1 NUMA nodes</code></p><p><code>EAL: Multi-process socket=
 /var/run/dpdk/rte/mp_socket</code></p><p><code>EAL: Selected IOVA mode 'PA=
'</code></p><p><code>EAL: No available hugepages reported in hugepages-1048=
576kB</code></p><p><code>EAL: Probing VFIO support...</code></p><p><code>EA=
L: VFIO support initialized</code></p><p><code>EAL: PCI device 0000:06:00.0=
 on NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b3:1017 net_ml=
x5</code></p><p><code>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code>=
</p><p><code>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>[ER=
ROR] [DPDK] Could not find route to destination address 192.168.10.2</code>=
</p><p><code>[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK=
: Could not find route to destination address 192.168.10.2</code></p><p><co=
de>[00:00:00.000215] Creating the usrp device with: addr=3D192.168.10.2,use=
_dpdk=3D1...</code></p><p><code>[ERROR] [DPDK] Could not find route to dest=
ination address 192.168.10.2</code></p><p><code>[ERROR] [X300] X300 Network=
 discovery error RuntimeError: DPDK: Could not find route to destination ad=
dress 192.168.10.2</code></p><p><code>[INFO] [MPMD] Initializing 1 device(s=
) in parallel with args: mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx41=
0,serial=3D328AACC,name=3Dni-x4xx-328AACC,fpga=3DCG_400,claimed=3DFalse,add=
r=3D192.168.10.2,use_dpdk=3D1</code></p><p><code>[ERROR] [DPDK] Could not f=
ind route to destination address 192.168.10.2</code></p><p><code>[WARNING] =
[MPMD::XPORT::UDP] Error during MTU discovery on address 192.168.10.2: Runt=
imeError: DPDK: Could not find route to destination address 192.168.10.2</c=
ode></p><p><code>[ERROR] [MPMD::MB_IFACE] No CHDR connection available!</co=
de></p><p><code>[INFO] [MPM.PeriphManager] init() called with device args `=
fpga=3DCG_400,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-328AACC,product=3Dx41=
0,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal,initializing=
=3DTrue'.</code></p><p><code>Error: RuntimeError: No CHDR connection availa=
ble!</code></p><p>I am having a difficult time parsing these errors at the =
moment. Should I move my config file? Does the =E2=80=9Cx300 network=
=E2=80=9D refer to an ettus device(I have no x3xx connected) or something e=
lse? Any suggestions is greatly appreciated.</p><p>Thanks,</p><p>Joe</p>

--b1_wujMQTK7TfwTwfIrmzPp77YQUbzrCaWB4fZwngNtzDc--

--===============0357681695187508553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0357681695187508553==--
