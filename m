Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA769E3608
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 09:57:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AED79385530
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 03:57:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733302643; bh=2nRUvThCOVItCQ6Rh1TpHHOVBw4G+v2j2EXwTXqryRE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eBVQd7PGP4rO+vsYDxOEqKUkqlIcaMUCNCEVnVGJhgNs3FMiVP2y0q0WrWm6B7FBv
	 QVFSHBHwRT2zIO3c/6u90Mc1nXwKyzG2RRHHgpywRsLYJdQUMjaI+sgmHUmoNdJ/P4
	 vGytjlz8/6UBp8Deed2Ruc2RkHwqgYieRVz/g2UOZjgWfTR7ImzZOR0coyYE9ESXLp
	 SLOiaheeW7mehNtywug3g3mZFHJUvoTHw8WOJgQSdOYVqFDx4vg7uyy3huS2njnJ7c
	 ybHms2Vy4YyrTRLYjA7MvpA7Y5HgHrV9wxlAGtJ94cE8J8H+rnVh5tiwac96hk96jB
	 RWLgenx3RUttQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5996038550C
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 03:56:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733302598; bh=uyREeS5xEH0QJYlhBQsvIlGPCIJ36usj7G9MAOJTk4Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=dh9LF339P/fiARxenNz3hSBH6ZvaYURGAvmmSPuAzGRMCZdp8u1o26SVUkqrtcNMo
	 KtizBRD5GTNLaCxcpddH+wp3lQTAh9U4pDh6hWREZqM8TmGfWVhw+6ZXOiOeWJ5zxx
	 WR5pFfMSNOTr9Ykp4tafpQ2MEYvhQwiZTUv2W8qYlTE8q7Gdtev2Jt6Ye8KkozdBdo
	 jy1Fqjyy48nKotAiBILi/xMx6mstWXJ6Eg9k+Wwkn84yxeWtCCEwEojN7wJEays6BK
	 XFRNCXSybV9zio0YB2KZ9rQoMua7fnRfvDd6GNj95ewZZxzW/onW9JPzdZK4gJVbMn
	 DSW7kQsICmDew==
Date: Wed, 4 Dec 2024 08:56:38 +0000
To: usrp-users@lists.ettus.com
From: houshang.azizi@accelleran.com
Message-ID: <IgCEeZwl2vCyB8oYVU9tTvuZO6aG6Zt0cAshyiA0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOrp07tp8uqr-B-b9HzGK9XYj5Ow-66OgabN3nLtWehisfsyEg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FUJD44H224URID3PQ4ACGYANIGQIG5UC
X-Message-ID-Hash: FUJD44H224URID3PQ4ACGYANIGQIG5UC
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FUJD44H224URID3PQ4ACGYANIGQIG5UC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6715801943598235207=="

This is a multi-part message in MIME format.

--===============6715801943598235207==
Content-Type: multipart/alternative;
 boundary="b1_IgCEeZwl2vCyB8oYVU9tTvuZO6aG6Zt0cAshyiA0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IgCEeZwl2vCyB8oYVU9tTvuZO6aG6Zt0cAshyiA0
Content-Type: text/plain; charset=us-ascii

Hello

I am getting similar issue:

`ad@bm-super11-intel:~$ sudo /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args "addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1"`

`[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.0-0-unknown`

`EAL: Detected CPU lcores: 64`

`EAL: Detected NUMA nodes: 1`

`EAL: Detected shared linkage of DPDK`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'VA'`

`EAL: No available 2048 kB hugepages reported`

`EAL: VFIO support initialized`

`EAL: Using IOMMU type 1 (Type 1)`

`EAL: Ignore mapping IO port bar(1)`

`EAL: Ignore mapping IO port bar(4)`

`EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.1 (socket 0)`

`EAL: Ignore mapping IO port bar(1)`

`EAL: Ignore mapping IO port bar(4)`

`EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 (socket 0)`

`TELEMETRY: No legacy callbacks, legacy socket not created`

`[ERROR] [DPDK] Could not find route to destination address 10.10.1.100`

`[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not find route to destination address 10.10.1.100`

`[00:00:00.000397] Creating the usrp device with: addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1...`

`[ERROR] [DPDK] Could not find route to destination address 10.10.1.100`

`[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not find route to destination address 10.10.1.100`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=10.10.0.100,type=n3xx,product=n310,serial=32000F1,name=ni-n3xx-32000F1,fpga=XG,claimed=False,addr=10.10.1.100,second_addr=10.10.2.100,master_clock_rate=125e6,use_dpdk=1`

`` [INFO] [MPM.PeriphManager] init() called with device args `fpga=XG,master_clock_rate=125e6,mgmt_addr=10.10.0.100,name=ni-n3xx-32000F1,product=n310,second_addr=10.10.2.100,use_dpdk=1,clock_source=internal,time_source=internal'. ``

`[ERROR] [DPDK] Could not find route to destination address 10.10.1.100`

`[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 10.10.1.100: RuntimeError: DPDK: Could not find route to destination address 10.10.1.100`

`[ERROR] [DPDK] Could not find route to destination address 10.10.2.100`

`[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 10.10.2.100: RuntimeError: DPDK: Could not find route to destination address 10.10.2.100`

`[ERROR] [MPMD::MB_IFACE] No CHDR connection available!`

`Error: RuntimeError: No CHDR connection available!`

`ad@bm-super11-intel:~$`

And two interfaces are bind to DPDK:

`ad@bm-super11-intel:~$ sudo dpdk-devbind.py --status`

`Network devices using DPDK-compatible driver`

`============================================`

`0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci unused=i40e`

`0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci unused=i40e`

Any suggestion please?

Here are my UHD and DPD versions:

`ad@bm-super11-intel:~$ /usr/local/bin/uhd_config_info --version`

`UHD 4.7.0.0-0-unknown`

`ad@bm-super11-intel:~$ sudo dpdk-testpmd -v`

`EAL: Detected CPU lcores: 64`

`EAL: Detected NUMA nodes: 1`

`EAL: RTE Version: 'DPDK 21.11.6'`

`EAL: Detected shared linkage of DPDK`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'VA'`

`EAL: No available 2048 kB hugepages reported`

`EAL: VFIO support initialized`

`EAL: Using IOMMU type 1 (Type 1)`

`EAL: Ignore mapping IO port bar(1)`

`EAL: Ignore mapping IO port bar(4)`

`EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.1 (socket 0)`

`EAL: Ignore mapping IO port bar(1)`

`EAL: Ignore mapping IO port bar(4)`

`EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 (socket 0)`

`testpmd: create a new mbuf pool <mb_pool_0>: n=635456, size=2176, socket=0`

`testpmd: preferred mempool ops selected: ring_mp_mc`

`Configuring Port 0 (socket 0)`

`Port 0: 3C:EC:EF:AF:7B:8D`

`Configuring Port 1 (socket 0)`

`Port 1: 3C:EC:EF:AF:7B:8E`

`Checking link statuses...`

`Done`

`No commandline core given, start packet forwarding`

`io packet forwarding - ports=2 - cores=1 - streams=2 - NUMA support enabled, MP allocation mode: native`

`Logical Core 2 (socket 0) forwards packets on 2 streams:`

`  RX P=0/Q=0 (socket 0) -> TX P=1/Q=0 (socket 0) peer=02:00:00:00:00:01`

`  RX P=1/Q=0 (socket 0) -> TX P=0/Q=0 (socket 0) peer=02:00:00:00:00:00`

`  io packet forwarding packets/burst=32`

`  nb forwarding cores=1 - nb forwarding ports=2`

`  port 0: RX queue number: 1 Tx queue number: 1`

`    Rx offloads=0x0 Tx offloads=0x10000`

`    RX queue: 0`

`      RX desc=256 - RX free threshold=32`

`      RX threshold registers: pthresh=0 hthresh=0  wthresh=0`

`      RX Offloads=0x0`

`    TX queue: 0`

`      TX desc=256 - TX free threshold=32`

`      TX threshold registers: pthresh=32 hthresh=0  wthresh=0`

`      TX offloads=0x10000 - TX RS bit threshold=32`

`  port 1: RX queue number: 1 Tx queue number: 1`

`    Rx offloads=0x0 Tx offloads=0x10000`

`    RX queue: 0`

`      RX desc=256 - RX free threshold=32`

`      RX threshold registers: pthresh=0 hthresh=0  wthresh=0`

`      RX Offloads=0x0`

`    TX queue: 0`

`      TX desc=256 - TX free threshold=32`

`      TX threshold registers: pthresh=32 hthresh=0  wthresh=0`

`      TX offloads=0x10000 - TX RS bit threshold=32`

`Press enter to exit`

`Telling cores to stop...`

`Waiting for lcores to finish...`

Thanks

--b1_IgCEeZwl2vCyB8oYVU9tTvuZO6aG6Zt0cAshyiA0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello</p><p>I am getting similar issue:</p><p><code>ad@bm-super11-intel:=
~$ sudo /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_sub=
dev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_=
channels 0,1 --args "addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=
=3D10.10.0.100,master_clock_rate=3D125e6,use_dpdk=3D1"</code></p><p><code>[=
INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.=
7.0.0-0-unknown</code></p><p><code>EAL: Detected CPU lcores: 64</code></p><=
p><code>EAL: Detected NUMA nodes: 1</code></p><p><code>EAL: Detected shared=
 linkage of DPDK</code></p><p><code>EAL: Multi-process socket /var/run/dpdk=
/rte/mp_socket</code></p><p><code>EAL: Selected IOVA mode 'VA'</code></p><p=
><code>EAL: No available 2048 kB hugepages reported</code></p><p><code>EAL:=
 VFIO support initialized</code></p><p><code>EAL: Using IOMMU type 1 (Type =
1)</code></p><p><code>EAL: Ignore mapping IO port bar(1)</code></p><p><code=
>EAL: Ignore mapping IO port bar(4)</code></p><p><code>EAL: Probe PCI drive=
r: net_i40e (8086:1572) device: 0000:43:00.1 (socket 0)</code></p><p><code>=
EAL: Ignore mapping IO port bar(1)</code></p><p><code>EAL: Ignore mapping I=
O port bar(4)</code></p><p><code>EAL: Probe PCI driver: net_i40e (8086:1572=
) device: 0000:43:00.2 (socket 0)</code></p><p><code>TELEMETRY: No legacy c=
allbacks, legacy socket not created</code></p><p><code>[ERROR] [DPDK] Could=
 not find route to destination address 10.10.1.100</code></p><p><code>[ERRO=
R] [X300] X300 Network discovery error RuntimeError: DPDK: Could not find r=
oute to destination address 10.10.1.100</code></p><p><code>[00:00:00.000397=
] Creating the usrp device with: addr=3D10.10.1.100,second_addr=3D10.10.2.1=
00,mgmt_addr=3D10.10.0.100,master_clock_rate=3D125e6,use_dpdk=3D1...</code>=
</p><p><code>[ERROR] [DPDK] Could not find route to destination address 10.=
10.1.100</code></p><p><code>[ERROR] [X300] X300 Network discovery error Run=
timeError: DPDK: Could not find route to destination address 10.10.1.100</c=
ode></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with ar=
gs: mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,nam=
e=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.1.100,second_add=
r=3D10.10.2.100,master_clock_rate=3D125e6,use_dpdk=3D1</code></p><p><code>[=
INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master_=
clock_rate=3D125e6,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=
=3Dn310,second_addr=3D10.10.2.100,use_dpdk=3D1,clock_source=3Dinternal,time=
_source=3Dinternal'.</code></p><p><code>[ERROR] [DPDK] Could not find route=
 to destination address 10.10.1.100</code></p><p><code>[WARNING] [MPMD::XPO=
RT::UDP] Error during MTU discovery on address 10.10.1.100: RuntimeError: D=
PDK: Could not find route to destination address 10.10.1.100</code></p><p><=
code>[ERROR] [DPDK] Could not find route to destination address 10.10.2.100=
</code></p><p><code>[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery=
 on address 10.10.2.100: RuntimeError: DPDK: Could not find route to destin=
ation address 10.10.2.100</code></p><p><code>[ERROR] [MPMD::MB_IFACE] No CH=
DR connection available!</code></p><p><code>Error: RuntimeError: No CHDR co=
nnection available!</code></p><p><code>ad@bm-super11-intel:~$</code></p><p>=
<br></p><p>And two interfaces are bind to DPDK:</p><p><code>ad@bm-super11-i=
ntel:~$ sudo dpdk-devbind.py --status</code></p><p><code>Network devices us=
ing DPDK-compatible driver</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>0000:43:00.1 'Ethernet Co=
ntroller X710 for 10GbE SFP+ 1572' drv=3Dvfio-pci unused=3Di40e</code></p><=
p><code>0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dv=
fio-pci unused=3Di40e</code></p><p><br></p><p>Any suggestion please?</p><p>=
<br></p><p>Here are my UHD and DPD versions:</p><p><code>ad@bm-super11-inte=
l:~$ /usr/local/bin/uhd_config_info --version</code></p><p><code>UHD 4.7.0.=
0-0-unknown</code></p><p><code>ad@bm-super11-intel:~$ sudo dpdk-testpmd -v<=
/code></p><p><code>EAL: Detected CPU lcores: 64</code></p><p><code>EAL: Det=
ected NUMA nodes: 1</code></p><p><code>EAL: RTE Version: 'DPDK 21.11.6'</co=
de></p><p><code>EAL: Detected shared linkage of DPDK</code></p><p><code>EAL=
: Multi-process socket /var/run/dpdk/rte/mp_socket</code></p><p><code>EAL: =
Selected IOVA mode 'VA'</code></p><p><code>EAL: No available 2048 kB hugepa=
ges reported</code></p><p><code>EAL: VFIO support initialized</code></p><p>=
<code>EAL: Using IOMMU type 1 (Type 1)</code></p><p><code>EAL: Ignore mappi=
ng IO port bar(1)</code></p><p><code>EAL: Ignore mapping IO port bar(4)</co=
de></p><p><code>EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43=
:00.1 (socket 0)</code></p><p><code>EAL: Ignore mapping IO port bar(1)</cod=
e></p><p><code>EAL: Ignore mapping IO port bar(4)</code></p><p><code>EAL: P=
robe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 (socket 0)</code=
></p><p><code>testpmd: create a new mbuf pool &lt;mb_pool_0&gt;: n=3D635456=
, size=3D2176, socket=3D0</code></p><p><code>testpmd: preferred mempool ops=
 selected: ring_mp_mc</code></p><p><code>Configuring Port 0 (socket 0)</cod=
e></p><p><code>Port 0: 3C:EC:EF:AF:7B:8D</code></p><p><code>Configuring Por=
t 1 (socket 0)</code></p><p><code>Port 1: 3C:EC:EF:AF:7B:8E</code></p><p><c=
ode>Checking link statuses...</code></p><p><code>Done</code></p><p><code>No=
 commandline core given, start packet forwarding</code></p><p><code>io pack=
et forwarding - ports=3D2 - cores=3D1 - streams=3D2 - NUMA support enabled,=
 MP allocation mode: native</code></p><p><code>Logical Core 2 (socket 0) fo=
rwards packets on 2 streams:</code></p><p><code>  RX P=3D0/Q=3D0 (socket 0)=
 -&gt; TX P=3D1/Q=3D0 (socket 0) peer=3D02:00:00:00:00:01</code></p><p><cod=
e>  RX P=3D1/Q=3D0 (socket 0) -&gt; TX P=3D0/Q=3D0 (socket 0) peer=3D02:00:=
00:00:00:00</code></p><p><code>  io packet forwarding packets/burst=3D32</c=
ode></p><p><code>  nb forwarding cores=3D1 - nb forwarding ports=3D2</code>=
</p><p><code>  port 0: RX queue number: 1 Tx queue number: 1</code></p><p><=
code>    Rx offloads=3D0x0 Tx offloads=3D0x10000</code></p><p><code>    RX =
queue: 0</code></p><p><code>      RX desc=3D256 - RX free threshold=3D32</c=
ode></p><p><code>      RX threshold registers: pthresh=3D0 hthresh=3D0  wth=
resh=3D0</code></p><p><code>      RX Offloads=3D0x0</code></p><p><code>    =
TX queue: 0</code></p><p><code>      TX desc=3D256 - TX free threshold=3D32=
</code></p><p><code>      TX threshold registers: pthresh=3D32 hthresh=3D0 =
 wthresh=3D0</code></p><p><code>      TX offloads=3D0x10000 - TX RS bit thr=
eshold=3D32</code></p><p><code>  port 1: RX queue number: 1 Tx queue number=
: 1</code></p><p><code>    Rx offloads=3D0x0 Tx offloads=3D0x10000</code></=
p><p><code>    RX queue: 0</code></p><p><code>      RX desc=3D256 - RX free=
 threshold=3D32</code></p><p><code>      RX threshold registers: pthresh=3D=
0 hthresh=3D0  wthresh=3D0</code></p><p><code>      RX Offloads=3D0x0</code=
></p><p><code>    TX queue: 0</code></p><p><code>      TX desc=3D256 - TX f=
ree threshold=3D32</code></p><p><code>      TX threshold registers: pthresh=
=3D32 hthresh=3D0  wthresh=3D0</code></p><p><code>      TX offloads=3D0x100=
00 - TX RS bit threshold=3D32</code></p><p><code>Press enter to exit</code>=
</p><p><code>Telling cores to stop...</code></p><p><code>Waiting for lcores=
 to finish...</code></p><p>Thanks</p>

--b1_IgCEeZwl2vCyB8oYVU9tTvuZO6aG6Zt0cAshyiA0--

--===============6715801943598235207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6715801943598235207==--
