Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EFE87B004
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 19:41:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 781FC3851F6
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 14:41:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710355265; bh=9loEOt6IFB7LwU97iXX7ZROpabZqRy+YAJV2c5AyBKI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jhLBFNYv+LB1WRjKDZr+uFMKQ0KamtEkqikYsXqluCzRHt2WkrPFh1qed3PCfEm2m
	 GmjLrJEURlqgDgT5t7EmrfVIE9WhYlG0pmF7GW2bb5WjPRNVJZRJ3SOxt0Cxk4fhJh
	 yqI1dBSBMYFKkuv8CMtWU4XDtrLoKc/XsO+SuJBe0jN+7EPG86xAeKtJ1kle+/mxfc
	 EOHaSKN+TlAG81S6z8x2NL280CjpPuk4eOFvdKZbbu0C2xvLdSnZMtzuUzbOCNgrs9
	 plA9zDmYBthSxq1IqmI9Q/a9DwnVfF+fHNrd+RbBO/Li5gk1cpvti3XJjfWmzoDqxc
	 KEr7qKMSGRRRA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9096384E4D
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 14:40:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710355213; bh=1WmYhSR5U8ORJivEy/mRkXbBwZYW2Avfa/RIBp/yl04=;
	h=Date:To:From:Subject:From;
	b=jpu747SX19lolEmWRYhiqEP3WmTsk7mx6+0xiA8orLBCK+FB3phUn7lrrPeLIBOb4
	 aXQv+tLzHtOJ9ayM3ueu+Ziw/mJdcRK5Sm3EqpmbpA/MlPLUNY249pX/FsXWcuyRU0
	 zHXbqlZF+22GCAauHwkGGAKOka6u6IIEpZV/dnM5Y0cBQ/c7tfPfwZqqSmaQPSbNH9
	 QxKo9jeyRLi4uclWP9vrYPCvr5+QnI3T6UOlGX6jUWWuQ1lse2pFEoFXpNFRmsO06z
	 +w/Gf9T9EVSSCdFq28jR6ghvisfopZK7meQqOaSmnJEQlnNOQjACeBjHYiy1Iwr5WQ
	 ZQLKqkYB+7U7w==
Date: Wed, 13 Mar 2024 18:40:13 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: A7E7P3J6GGBIIU37E4O376BI2L44PLBT
X-Message-ID-Hash: A7E7P3J6GGBIIU37E4O376BI2L44PLBT
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Get DPDK working with UHD 4.6 with USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A7E7P3J6GGBIIU37E4O376BI2L44PLBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7094348837304720702=="

This is a multi-part message in MIME format.

--===============7094348837304720702==
Content-Type: multipart/alternative;
 boundary="b1_HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello!

I want to get DPDK working with UHD 4.6 on our USRP X410. This might be a=
 long post, but I want to make sure I provide as much information as poss=
ible. Below is a diagram of relevant network connections:

```
*---------------------*                 *---------------------*=20
```

```
|   | NIC QSFP Port 0 |                 | QSFP28 Port 1   |   |=20
```

```
|   |    ens1f0np0    <>---------------<>       sfp1      |   |=20
```

```
|   |  192.168.20.1   |                 |  192.168.20.2   |   |=20
```

```
|   |-----------------|                 |-----------------|   |=20
```

```
| H | NIC QSFP Port 1 |                 | QSFP28 Port 0   | X |=20
```

```
| O |    ens1f1np1    <>---------------<>       sfp0      | 4 |=20
```

```
| S |  192.168.10.1   |                 |  192.168.10.2   | 1 |=20
```

```
| T |-----------------|  *-----------*  |-----------------| 0 |=20
```

```
|   | Ethernet Port 1 |  |Router     |  |  Ethernet Port  |   |=20
```

```
|   |     eno8403     <>-|192.168.1.1|-<>      eth0       |   |=20
```

```
|   |  192.168.1.20   |  |           |  |  192.168.1.19   |   |=20
```

```
*---------------------*  *-----------*  *---------------------*

```

The Host computer has the following specs:

OS: Ubuntu 20.04.6 LTS

CPU: Intel(R) Xeon(R) Silver 4310=20

RAM: 64 GB

NIC: Mellanox Technologies MT2892 Family \[ConnectX-6 Dx\]

UHD: UHD_4.6.0.HEAD-0-g50fa3baa

DPDK: DPDK_19.11

I am using a uhd.conf with:

```
[use_dpdk=3D1]
```

```
dpdk_mtu=3D9000
```

```
dpdk_corelist=3D0,1,2,3
```

```
dpdk_num_mbufs=3D8192
```

```
dpdk_mbuf_cache_size=3D64
```

```
[dpdk_mac=3DMAC_ADDRESS]
```

```
dpdk_lcore =3D 1
```

```
dpdk_ipv4 =3D 192.168.20.1/24
```

```
[dpdk_mac=3DMAC_ADDRESS]
```

```
dpdk_lcore =3D 2
```

```
dpdk_ipv4 =3D 192.168.10.1/24
```

When I run =E2=80=9Cdpdk-devbind.py -s=E2=80=9C, I get:

```
Network devices using kernel driver
```

```
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
```

```
0000:04:00.0 'NetXtreme BCM5720 2-port Gigabit Ethernet PCIe 165f' if=3De=
no8303 drv=3Dtg3 unused=3Dvfio-pci *Active*
```

```
0000:04:00.1 'NetXtreme BCM5720 2-port Gigabit Ethernet PCIe 165f' if=3De=
no8403 drv=3Dtg3 unused=3Dvfio-pci *Active*
```

```
0000:31:00.0 'MT2892 Family [ConnectX-6 Dx] 101d' if=3Dens1f0np0 drv=3Dml=
x5_core unused=3Dvfio-pci *Active*
```

```
0000:31:00.1 'MT2892 Family [ConnectX-6 Dx] 101d' if=3Dens1f1np1 drv=3Dml=
x5_core unused=3Dvfio-pci *Active*
```

And the output of uhd_find_devices is:

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
```

```
--------------------------------------------------
```

```
-- UHD Device 0
```

```
--------------------------------------------------
```

```
Device Address:
```

```
    serial: 326E872
```

```
    addr: 192.168.20.2
```

```
    claimed: False
```

```
    fpga: CG_400
```

```
    mgmt_addr: 192.168.1.19
```

```
    mgmt_addr: 192.168.10.2
```

```
    mgmt_addr: 192.168.20.2
```

```
    name: ni-x4xx-326E872
```

```
    product: x410
```

```
    type: x4xx
```

This all makes me believe I at least have DPDK set up correctly. I follow=
ed the instructions here (https://files.ettus.com/manual/page_dpdk.html#d=
pdk_nic_config) for GRUB.

When I try to run any UHD-based script with DPDK, like =E2=80=98 uhd_find=
_devices --args "use_dpdk=3D1" =E2=80=98, I get errors like:

```
EAL: Couldn't get fd on hugepage file
```

```
EAL: Couldn't get fd on hugepage file
```

```
EAL: error allocating rte services array
```

```
EAL: FATAL: rte_service_init() failed
```

```
EAL: rte_service_init() failed
```

```
[ERROR] [DPDK] Error with EAL initialization
```

And the device is not found. After some searching, I found that the reaso=
n is DPDK doesn=E2=80=99t play nicely without elevated permissions. Going=
 forward, assume I run everything as the root user. Running the same comm=
and as before then yields:

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
```

```
EAL: Detected 24 lcore(s)
```

```
EAL: Detected 2 NUMA nodes
```

```
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
```

```
EAL: Selected IOVA mode 'VA'
```

```
EAL: No available hugepages reported in hugepages-1048576kB
```

```
EAL: Probing VFIO support...
```

```
EAL: VFIO support initialized
```

```
EAL: PCI device 0000:31:00.0 on NUMA socket 0
```

```
EAL:   probe driver: 15b3:101d net_mlx5
```

```
EAL: PCI device 0000:31:00.1 on NUMA socket 0
```

```
EAL:   probe driver: 15b3:101d net_mlx5
```

```
[ERROR] [DPDK] Could not find route to destination address 10.149.11.255
```

```
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not=
 find route to destination address 10.149.11.255
```

```
[ERROR] [DPDK] Could not find route to destination address 192.168.1.255
```

```
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not=
 find route to destination address 192.168.1.255
```

```
[ERROR] [DPDK] Could not find route to destination address 172.17.255.255
```

```
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not=
 find route to destination address 172.17.255.255
```

```
--------------------------------------------------
```

```
-- UHD Device 0
```

```
--------------------------------------------------
```

```
Device Address:
```

```
    serial: 326E872
```

```
    addr: 192.168.1.19
```

```
    claimed: False
```

```
    fpga: CG_400
```

```
    mgmt_addr: 192.168.1.19
```

```
    name: ni-x4xx-326E872
```

```
    product: x410
```

```
    type: x4xx
```

Now the device is found, but with errors. When I further specify all the =
addresses with:

```
uhd_find_devices --args =E2=80=9Caddr=3D192.168.10.2,second_addr=3D192.16=
8.20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1"
```

The errors are gone.

When I try running an example with DPDK though, like:

```
./benchmark_rate --rx_rate 491.52e6 --args "addr=3D192.168.10.2,second_ad=
dr=3D192.168.20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1" --duration 1
```

I get:

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
```

```
EAL: Detected 24 lcore(s)
```

```
EAL: Detected 2 NUMA nodes
```

```
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
```

```
EAL: Selected IOVA mode 'VA'
```

```
EAL: No available hugepages reported in hugepages-1048576kB
```

```
EAL: Probing VFIO support...
```

```
EAL: VFIO support initialized
```

```
EAL: PCI device 0000:31:00.0 on NUMA socket 0
```

```
EAL:   probe driver: 15b3:101d net_mlx5
```

```
EAL: PCI device 0000:31:00.1 on NUMA socket 0
```

```
EAL:   probe driver: 15b3:101d net_mlx5
```

```
[00:00:00.001242] Creating the usrp device with: addr=3D192.168.10.2,seco=
nd_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-3=
26E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D19=
2.168.20.2,use_dpdk=3D1
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DCG_400,=
mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,second_add=
r=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinter=
nal,initializing=3DTrue'.
```

```
[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: Timed out getting recv b=
uff for management transaction
```

```
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErr=
or: IOError: Timed out getting recv buff for management transaction
```

```
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environ=
mentError: IOError: Timed out getting recv buff for management transactio=
n
```

```
Error: RuntimeError: Failure to create rfnoc_graph.
```

What is the issue? How do I fix things? When I first set up DPDK, I also =
set up HugePages, although I don't exactly remember how. As I only have a=
 basic understanding of Linux, I'm not sure I set that up correctly, but =
running:

```
cat /proc/meminfo | grep Huge
```

results in:

```
AnonHugePages:         0 kB
```

```
ShmemHugePages:        0 kB
```

```
FileHugePages:         0 kB
```

```
HugePages_Total:    2048
```

```
HugePages_Free:     2045
```

```
HugePages_Rsvd:        0
```

```
HugePages_Surp:        0
```

```
Hugepagesize:       2048 kB
```

```
Hugetlb:         4194304 kB
```

--b1_HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>I want to get DPDK working with UHD 4.6 on our USRP X410. T=
his might be a long post, but I want to make sure I provide as much informa=
tion as possible. Below is a diagram of relevant network connections:</p><p=
re><code>*---------------------*                 *---------------------* </=
code></pre><pre><code>|   | NIC QSFP Port 0 |                 | QSFP28 Port=
 1   |   | </code></pre><pre><code>|   |    ens1f0np0    &lt;&gt;----------=
-----&lt;&gt;       sfp1      |   | </code></pre><pre><code>|   |  192.168.=
20.1   |                 |  192.168.20.2   |   | </code></pre><pre><code>| =
  |-----------------|                 |-----------------|   | </code></pre>=
<pre><code>| H | NIC QSFP Port 1 |                 | QSFP28 Port 0   | X | =
</code></pre><pre><code>| O |    ens1f1np1    &lt;&gt;---------------&lt;&g=
t;       sfp0      | 4 | </code></pre><pre><code>| S |  192.168.10.1   |   =
              |  192.168.10.2   | 1 | </code></pre><pre><code>| T |--------=
---------|  *-----------*  |-----------------| 0 | </code></pre><pre><code>=
|   | Ethernet Port 1 |  |Router     |  |  Ethernet Port  |   | </code></pr=
e><pre><code>|   |     eno8403     &lt;&gt;-|192.168.1.1|-&lt;&gt;      eth=
0       |   | </code></pre><pre><code>|   |  192.168.1.20   |  |           =
|  |  192.168.1.19   |   | </code></pre><pre><code>*---------------------* =
 *-----------*  *---------------------*

<br></code></pre><p>The Host computer has the following specs:</p><p>OS: Ub=
untu 20.04.6 LTS</p><p>CPU: Intel(R) Xeon(R) Silver 4310 </p><p>RAM: 64 GB<=
/p><p>NIC: Mellanox Technologies MT2892 Family [ConnectX-6 Dx]</p><p>UHD: U=
HD_4.6.0.HEAD-0-g50fa3baa</p><p>DPDK: DPDK_19.11</p><p><br></p><p>I am usin=
g a uhd.conf with:</p><pre><code>[use_dpdk=3D1]</code></pre><pre><code>dpdk=
_mtu=3D9000</code></pre><pre><code>dpdk_corelist=3D0,1,2,3</code></pre><pre=
><code>dpdk_num_mbufs=3D8192</code></pre><pre><code>dpdk_mbuf_cache_size=3D=
64</code></pre><pre><code>[dpdk_mac=3DMAC_ADDRESS]</code></pre><pre><code>d=
pdk_lcore =3D 1</code></pre><pre><code>dpdk_ipv4 =3D 192.168.20.1/24</code>=
</pre><pre><code>[dpdk_mac=3DMAC_ADDRESS]</code></pre><pre><code>dpdk_lcore=
 =3D 2</code></pre><pre><code>dpdk_ipv4 =3D 192.168.10.1/24</code></pre><p>=
<br></p><p>When I run =E2=80=9Cdpdk-devbind.py -s=E2=80=9C, I get:</p><pre>=
<code>Network devices using kernel driver</code></pre><pre><code>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</code></pre><pre><code>0000:04:00.0 'NetXtreme BCM572=
0 2-port Gigabit Ethernet PCIe 165f' if=3Deno8303 drv=3Dtg3 unused=3Dvfio-p=
ci *Active*</code></pre><pre><code>0000:04:00.1 'NetXtreme BCM5720 2-port G=
igabit Ethernet PCIe 165f' if=3Deno8403 drv=3Dtg3 unused=3Dvfio-pci *Active=
*</code></pre><pre><code>0000:31:00.0 'MT2892 Family [ConnectX-6 Dx] 101d' =
if=3Dens1f0np0 drv=3Dmlx5_core unused=3Dvfio-pci *Active*</code></pre><pre>=
<code>0000:31:00.1 'MT2892 Family [ConnectX-6 Dx] 101d' if=3Dens1f1np1 drv=
=3Dmlx5_core unused=3Dvfio-pci *Active*</code></pre><p>And the output of uh=
d_find_devices is:</p><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0;=
 Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pre><pre><cod=
e>--------------------------------------------------</code></pre><pre><code=
>-- UHD Device 0</code></pre><pre><code>-----------------------------------=
---------------</code></pre><pre><code>Device Address:</code></pre><pre><co=
de>    serial: 326E872</code></pre><pre><code>    addr: 192.168.20.2</code>=
</pre><pre><code>    claimed: False</code></pre><pre><code>    fpga: CG_400=
</code></pre><pre><code>    mgmt_addr: 192.168.1.19</code></pre><pre><code>=
    mgmt_addr: 192.168.10.2</code></pre><pre><code>    mgmt_addr: 192.168.2=
0.2</code></pre><pre><code>    name: ni-x4xx-326E872</code></pre><pre><code=
>    product: x410</code></pre><pre><code>    type: x4xx</code></pre><p>Thi=
s all makes me believe I at least have DPDK set up correctly. I followed th=
e instructions here (https://files.ettus.com/manual/page_dpdk.html#dpdk_nic=
_config) for GRUB.</p><p>When I try to run any UHD-based script with DPDK, =
like =E2=80=98 uhd_find_devices --args "use_dpdk=3D1" =E2=80=98, I get erro=
rs like:</p><pre><code>EAL: Couldn't get fd on hugepage file</code></pre><p=
re><code>EAL: Couldn't get fd on hugepage file</code></pre><pre><code>EAL: =
error allocating rte services array</code></pre><pre><code>EAL: FATAL: rte_=
service_init() failed</code></pre><pre><code>EAL: rte_service_init() failed=
</code></pre><pre><code>[ERROR] [DPDK] Error with EAL initialization</code>=
</pre><p>And the device is not found. After some searching, I found that th=
e reason is DPDK doesn=E2=80=99t play nicely without elevated permissions. =
Going forward, assume I run everything as the root user. Running the same c=
ommand as before then yields:</p><pre><code>[INFO] [UHD] linux; GNU C++ ver=
sion 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pr=
e><pre><code>EAL: Detected 24 lcore(s)</code></pre><pre><code>EAL: Detected=
 2 NUMA nodes</code></pre><pre><code>EAL: Multi-process socket /var/run/dpd=
k/rte/mp_socket</code></pre><pre><code>EAL: Selected IOVA mode 'VA'</code><=
/pre><pre><code>EAL: No available hugepages reported in hugepages-1048576kB=
</code></pre><pre><code>EAL: Probing VFIO support...</code></pre><pre><code=
>EAL: VFIO support initialized</code></pre><pre><code>EAL: PCI device 0000:=
31:00.0 on NUMA socket 0</code></pre><pre><code>EAL:   probe driver: 15b3:1=
01d net_mlx5</code></pre><pre><code>EAL: PCI device 0000:31:00.1 on NUMA so=
cket 0</code></pre><pre><code>EAL:   probe driver: 15b3:101d net_mlx5</code=
></pre><pre><code>[ERROR] [DPDK] Could not find route to destination addres=
s 10.149.11.255</code></pre><pre><code>[ERROR] [X300] X300 Network discover=
y error RuntimeError: DPDK: Could not find route to destination address 10.=
149.11.255</code></pre><pre><code>[ERROR] [DPDK] Could not find route to de=
stination address 192.168.1.255</code></pre><pre><code>[ERROR] [X300] X300 =
Network discovery error RuntimeError: DPDK: Could not find route to destina=
tion address 192.168.1.255</code></pre><pre><code>[ERROR] [DPDK] Could not =
find route to destination address 172.17.255.255</code></pre><pre><code>[ER=
ROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not find=
 route to destination address 172.17.255.255</code></pre><pre><code>-------=
-------------------------------------------</code></pre><pre><code>-- UHD D=
evice 0</code></pre><pre><code>--------------------------------------------=
------</code></pre><pre><code>Device Address:</code></pre><pre><code>    se=
rial: 326E872</code></pre><pre><code>    addr: 192.168.1.19</code></pre><pr=
e><code>    claimed: False</code></pre><pre><code>    fpga: CG_400</code></=
pre><pre><code>    mgmt_addr: 192.168.1.19</code></pre><pre><code>    name:=
 ni-x4xx-326E872</code></pre><pre><code>    product: x410</code></pre><pre>=
<code>    type: x4xx</code></pre><p>Now the device is found, but with error=
s. When I further specify all the addresses with:</p><pre><code>uhd_find_de=
vices --args =E2=80=9Caddr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_a=
ddr=3D192.168.1.19,use_dpdk=3D1"</code></pre><p>The errors are gone.</p><p>=
<br></p><p>When I try running an example with DPDK though, like:</p><pre><c=
ode>./benchmark_rate --rx_rate 491.52e6 --args "addr=3D192.168.10.2,second_=
addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1" --duration 1</co=
de></pre><p>I get:</p><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0;=
 Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pre><pre><cod=
e>EAL: Detected 24 lcore(s)</code></pre><pre><code>EAL: Detected 2 NUMA nod=
es</code></pre><pre><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_so=
cket</code></pre><pre><code>EAL: Selected IOVA mode 'VA'</code></pre><pre><=
code>EAL: No available hugepages reported in hugepages-1048576kB</code></pr=
e><pre><code>EAL: Probing VFIO support...</code></pre><pre><code>EAL: VFIO =
support initialized</code></pre><pre><code>EAL: PCI device 0000:31:00.0 on =
NUMA socket 0</code></pre><pre><code>EAL:   probe driver: 15b3:101d net_mlx=
5</code></pre><pre><code>EAL: PCI device 0000:31:00.1 on NUMA socket 0</cod=
e></pre><pre><code>EAL:   probe driver: 15b3:101d net_mlx5</code></pre><pre=
><code>[00:00:00.001242] Creating the usrp device with: addr=3D192.168.10.2=
,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...</code>=
</pre><pre><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with ar=
gs: mgmt_addr=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,na=
me=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,seco=
nd_addr=3D192.168.20.2,use_dpdk=3D1</code></pre><pre><code>[INFO] [MPM.Peri=
phManager] init() called with device args `fpga=3DCG_400,mgmt_addr=3D192.16=
8.1.19,name=3Dni-x4xx-326E872,product=3Dx410,second_addr=3D192.168.20.2,use=
_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTru=
e'.</code></pre><pre><code>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError:=
 Timed out getting recv buff for management transaction</code></pre><pre><c=
ode>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentE=
rror: IOError: Timed out getting recv buff for management transaction</code=
></pre><pre><code>[ERROR] [RFNOC::GRAPH] Caught exception while initializin=
g graph: EnvironmentError: IOError: Timed out getting recv buff for managem=
ent transaction</code></pre><pre><code>Error: RuntimeError: Failure to crea=
te rfnoc_graph.</code></pre><p>What is the issue? How do I fix things? When=
 I first set up DPDK, I also set up HugePages, although I don't exactly rem=
ember how. As I only have a basic understanding of Linux, I'm not sure I se=
t that up correctly, but running:</p><pre><code>cat /proc/meminfo | grep Hu=
ge</code></pre><p>results in:</p><pre><code>AnonHugePages:         0 kB</co=
de></pre><pre><code>ShmemHugePages:        0 kB</code></pre><pre><code>File=
HugePages:         0 kB</code></pre><pre><code>HugePages_Total:    2048</co=
de></pre><pre><code>HugePages_Free:     2045</code></pre><pre><code>HugePag=
es_Rsvd:        0</code></pre><pre><code>HugePages_Surp:        0</code></p=
re><pre><code>Hugepagesize:       2048 kB</code></pre><pre><code>Hugetlb:  =
       4194304 kB</code></pre><p><br></p>

--b1_HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY--

--===============7094348837304720702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7094348837304720702==--
