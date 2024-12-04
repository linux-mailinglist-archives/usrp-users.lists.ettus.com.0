Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D32E9E3877
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 12:12:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EE3738553B
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 06:12:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733310751; bh=o2+fgiEFDYSSDy9Ca5z0eue9Abx3XhyMLbBLaJ9T84s=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DzWKiExNubSjoijE3qbxiSi6YBh2p4lemewOV7wjGQn4XUHKUFBlLQlrKYdeHNTzg
	 lU+KvUCwf3eNuyq3tUG4lhsXag2LV0JAYwsuI0plo3K9nTrGWPwqPSIHCWax9Nen5J
	 Vubj6ArPbGKZujpTx6IcsqLwAab72LTcNj8Rnji3t+AS/dQzO3TsbVkKVIUyTZoUph
	 ZDsgi5N5z0h3CJHcfKaqvCFxdGuLjp+9C8WHFml2fu7qY3YOWl59lkcq6cNk0eag+S
	 U/WNkYeZEBKUz6hzEiF3WaZ04drQNA4SxmuOHrrsBppLHjYUBdO3uy3pAXSF2A57Se
	 dlykUp+PG7aVg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAD5A385529
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 06:11:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733310711; bh=lYBwIj+2Wuqz9IxIHyTtXeoBTFJKSxw8uO9yNfMW9ME=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=BIl/jr0AXem4L2IsmIPdaBfbhbTI8bUDMG0sdwNdK9Q7Kw4WRTOcMdeRrUJMiDl1y
	 h+nMOy7x7KrRbX/nKRwOAKEQgDgNc0txc5TcXPlvSS7haP6Ysq+gtgVdhNbj+60dsl
	 P0ddpKMju3BmJb1CEMRgSjqzPebmksrV0CNE2FYxdzlA7Q1tmQfVwU57YWdHPGwI59
	 f2K+K3VYoRMlmvkq6XMcoS27pQ8C/4fbcbGyZSA27aqrndm60qtAXK2hhuYvY42nZk
	 IPmORDfZvFW6AgwrZaY5mVRYBBHv/vloBnA+BRPNJiTJvE1Sy6+jkQ4dgGuoDnpQd6
	 5XS0+1VJp6rwA==
Date: Wed, 4 Dec 2024 11:11:51 +0000
To: usrp-users@lists.ettus.com
From: houshang.azizi@accelleran.com
Message-ID: <zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: IgCEeZwl2vCyB8oYVU9tTvuZO6aG6Zt0cAshyiA0@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: SKLKTZYWTS25UCQCTPN2FMH76GPFMQAB
X-Message-ID-Hash: SKLKTZYWTS25UCQCTPN2FMH76GPFMQAB
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SKLKTZYWTS25UCQCTPN2FMH76GPFMQAB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1886085339877967186=="

This is a multi-part message in MIME format.

--===============1886085339877967186==
Content-Type: multipart/alternative;
 boundary="b1_zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo
Content-Type: text/plain; charset=us-ascii

I tried with `sudo su` as well (not working):

`root@bm-super11-intel:/home/ad# cat /root/.config/uhd.conf`

`[use_dpdk=1]`

`dpdk_mtu=9000`

`dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/`

`dpdk_corelist=2,3,4`

`dpdk_num_mbufs=4095`

`dpdk_mbuf_cache_size=315`

`[dpdk_mac=3c:ec:ef:af:7b:8d]`

`dpdk_lcore = 3`

`dpdk_ipv4 = 10.10.1.1/24`

`dpdk_num_desc = 4096`

`[dpdk_mac=3c:ec:ef:af:7b:8e]`

`dpdk_lcore = 4`

`dpdk_ipv4 = 10.10.2.1/24`

`dpdk_num_desc = 4096`

`root@bm-super11-intel:/home/ad# /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args "addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1"`

`[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.0-0-unknown`

`EAL: Detected CPU lcores: 64`

`EAL: Detected NUMA nodes: 1`

`EAL: Detected shared linkage of DPDK`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'VA'`

`EAL: No available 1048576 kB hugepages reported`

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

`[00:00:00.000208] Creating the usrp device with: addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1...`

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

root@bm-super11-intel:/home/ad#

--b1_zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I tried with <code>sudo su</code> as well (not working):</p><p><code>roo=
t@bm-super11-intel:/home/ad# cat /root/.config/uhd.conf</code></p><p><code>=
[use_dpdk=3D1]</code></p><p><code>dpdk_mtu=3D9000</code></p><p><code>dpdk_d=
river=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/</code></p><p><code>dpdk_c=
orelist=3D2,3,4</code></p><p><code>dpdk_num_mbufs=3D4095</code></p><p><code=
>dpdk_mbuf_cache_size=3D315</code></p><p><code>[dpdk_mac=3D3c:ec:ef:af:7b:8=
d]</code></p><p><code>dpdk_lcore =3D 3</code></p><p><code>dpdk_ipv4 =3D 10.=
10.1.1/24</code></p><p><code>dpdk_num_desc =3D 4096</code></p><p><code>[dpd=
k_mac=3D3c:ec:ef:af:7b:8e]</code></p><p><code>dpdk_lcore =3D 4</code></p><p=
><code>dpdk_ipv4 =3D 10.10.2.1/24</code></p><p><code>dpdk_num_desc =3D 4096=
</code></p><p><code>root@bm-super11-intel:/home/ad# /usr/local/lib/uhd/exam=
ples/benchmark_rate --rx_rate 125e6 --rx_subdev "A:0 B:0" --rx_channels 0,1=
 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args "addr=3D10.=
10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,master_clock_rat=
e=3D125e6,use_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU C++ vers=
ion 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.0-0-unknown</code></p><p><c=
ode>EAL: Detected CPU lcores: 64</code></p><p><code>EAL: Detected NUMA node=
s: 1</code></p><p><code>EAL: Detected shared linkage of DPDK</code></p><p><=
code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code></p><p><co=
de>EAL: Selected IOVA mode 'VA'</code></p><p><code>EAL: No available 104857=
6 kB hugepages reported</code></p><p><code>EAL: VFIO support initialized</c=
ode></p><p><code>EAL: Using IOMMU type 1 (Type 1)</code></p><p><code>EAL: I=
gnore mapping IO port bar(1)</code></p><p><code>EAL: Ignore mapping IO port=
 bar(4)</code></p><p><code>EAL: Probe PCI driver: net_i40e (8086:1572) devi=
ce: 0000:43:00.1 (socket 0)</code></p><p><code>EAL: Ignore mapping IO port =
bar(1)</code></p><p><code>EAL: Ignore mapping IO port bar(4)</code></p><p><=
code>EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 (sock=
et 0)</code></p><p><code>TELEMETRY: No legacy callbacks, legacy socket not =
created</code></p><p><code>i40e_alloc_rx_queue_mbufs(): Failed to allocate =
mbuf for RX</code></p><p><code>i40e_dev_rx_queue_start(): Failed to allocat=
e RX queue mbuf</code></p><p><code>[ERROR] [DPDK] Port 1: Could not start d=
evice</code></p><p><code>EAL: FATAL: already called initialization.</code><=
/p><p><code>EAL: already called initialization.</code></p><p><code>[00:00:0=
0.000208] Creating the usrp device with: addr=3D10.10.1.100,second_addr=3D1=
0.10.2.100,mgmt_addr=3D10.10.0.100,master_clock_rate=3D125e6,use_dpdk=3D1..=
.</code></p><p><code>EAL: FATAL: already called initialization.</code></p><=
p><code>EAL: already called initialization.</code></p><p><code>[ERROR] [X30=
0] X300 Network discovery error RuntimeError: DPDK: Failure to start device=
</code></p><p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>=
<p><code>[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL=
 initialization</code></p><p><code>[ERROR] [DPDK] Error with EAL initializa=
tion</code></p><p><code>[ERROR] [UHD] Device discovery error: RuntimeError:=
 Error with EAL initialization</code></p><p><code>EAL: FATAL: already calle=
d initialization.</code></p><p><code>EAL: already called initialization.</c=
ode></p><p><code>Error: LookupError: KeyError: No devices found for -----&g=
t;</code></p><p><code>Device Address:</code></p><p><code>    addr: 10.10.1.=
100</code></p><p><code>    second_addr: 10.10.2.100</code></p><p><code>    =
mgmt_addr: 10.10.0.100</code></p><p><code>    master_clock_rate: 125e6</cod=
e></p><p><code>    use_dpdk: 1</code></p><p><code>[ERROR] [DPDK] Error with=
 EAL initialization</code></p><p><code>[ERROR] [X300] X300 Network discover=
y error RuntimeError: Error with EAL initialization</code></p><p>root@bm-su=
per11-intel:/home/ad#</p>

--b1_zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo--

--===============1886085339877967186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1886085339877967186==--
