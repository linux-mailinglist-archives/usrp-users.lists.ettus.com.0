Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CD481CD71
	for <lists+usrp-users@lfdr.de>; Fri, 22 Dec 2023 18:02:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20A2E3850BE
	for <lists+usrp-users@lfdr.de>; Fri, 22 Dec 2023 12:02:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703264563; bh=l/C6hfCJbUM/jEmgzf9ik18nzfZS5zXVOQtV/z0mlaQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0wfv4s8th7h8QkaIg768o6bjRRRUWb9Xdj/zkhfrDQe352qeuvpxBEDq7pzmKx+Ld
	 I16rFfSFtd3xcT7H7Ttu2i186Olpp6t1RaM6USt50Cr9mT+4tsqAQp2M7E1uJ6Uj7J
	 CbSF5IMIQeCXRDkvg91X2VZGcyAF+A8qzu+98DOW6jE8Ag1EAddgHOrj9/BmTa4lB9
	 NmzLRyMKIdSYKHaJSqRoKVzvC7hB8+7yecC+qfDfMS44YepwxQ62VIEk7wehQXI+tL
	 JklaiOon/IoYqQdlkgCQC0flB6DEnmDDpAoDv9j2aIFO9Pbr99xfiCBB2EIz4s3Bht
	 JxLJcXVNNzizw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA1EE38485C
	for <usrp-users@lists.ettus.com>; Fri, 22 Dec 2023 12:02:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703264528; bh=8l35FNlH4O5ZlN0RQnaV7lcwC2e7yJbfeZ7UdErH9Jw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kEkvxEhcuIT72+4LnafK93O20EsWMPPyusFLwgaymCOklgV0P+IPhXstY6uwAcwdi
	 ad6dZaqvD2gOg7dZbSZ0KJGMzUhWMlCqhJzXntXLeJCP5spbOlHkoeGww+C0nEmbKH
	 iq9fSEKqmzEf3BNY+j7J/yZLQ73Iqbgxpn+HbWakDW35HIkjB24jV07GRrOilJ+Fp5
	 af2qXriEvlFgZ5i6uwgcy4JMbpAF7+VRnI9ZGbnKNySu8WTbiyTipgULv5Xou8RikM
	 wFNE+XSQRmM2b4mIqPUxHAlEDf1H6mHAIVGPHHVo2YX4bHjXaZijRbs40Ign/JTLx/
	 +qYKaEEpMCOWQ==
Date: Fri, 22 Dec 2023 17:02:08 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2Pm2CbIPXdLcV7jUJv26lCGoetOn90kAJgrXA7AAzk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: NFTENB5KUT6DTGYHHDFFWNROEM45DGGD
X-Message-ID-Hash: NFTENB5KUT6DTGYHHDFFWNROEM45DGGD
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NFTENB5KUT6DTGYHHDFFWNROEM45DGGD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4404875491677352415=="

This is a multi-part message in MIME format.

--===============4404875491677352415==
Content-Type: multipart/alternative;
 boundary="b1_ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

After reading through the documentation again, I learned I should only sp=
ecify the NIC ports used in the UHD arguments in my conf file, I believe =
 this was able to resolve some of my issues, it still does not successful=
ly begin the benchmarking. For example, if I specify 1 management_address=
/mgmt_addr and 1 address/addr I get an error that says not devices could =
be found. However, the errors are slightly different depending on if I se=
t the management address to either the QSFP port or the RJ-45.

In the scenario where I set the mgmt_addr to the QSFP port, I get an erro=
r that says no devices were found, but I also get the warning =E2=80=9CNo=
 link entry in rx table=E2=80=9D

`./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 -=
-tx_channels 0 --args "addr=3D192.168.10.2,mgmt_addr=3D192.168.10.2,use_d=
pdk=3D1,type=3Dx4xx,product=3Dx410,fpga=3DCG_400"`

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

`[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table`

`[00:00:00.000041] Creating the usrp device with: addr=3D192.168.10.2,mgm=
t_addr=3D192.168.10.2,use_dpdk=3D1,type=3Dx4xx,product=3Dx410,fpga=3DCG_4=
00...`

`[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table`

`Error: LookupError: KeyError: No devices found for ----->`

`Device Address:`

`    addr: 192.168.10.2`

`    mgmt_addr: 192.168.10.2`

`    use_dpdk: 1`

`    type: x4xx`

`    product: x410`

`    fpga: CG_400`

In the scenario where I set the mgmt_addr to the RJ-45 port, I still get =
the device not found error, but the warning goes away.

`./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 -=
-tx_channels 0 --args "addr=3D192.168.10.2,mgmt_addr=3D192.168.1.184,use_=
dpdk=3D1,type=3Dx4xx,product=3Dx410"`

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

`[00:00:00.000037] Creating the usrp device with: addr=3D192.168.10.2,mgm=
t_addr=3D192.168.1.184,use_dpdk=3D1,type=3Dx4xx,product=3Dx410...`

`Error: LookupError: KeyError: No devices found for ----->`

`Device Address:`

`    addr: 192.168.10.2`

`    mgmt_addr: 192.168.1.184`

`    use_dpdk: 1`

`    type: x4xx`

`    product: x410`

if I use uhd_find devices, the command returns successfully if I specify =
the address to the QSFP port, however, if I specify the address as RJ-45 =
port, it returns unsuccessfully.=20

`uhd_find_devices --args=3D"addr=3D192.168.10.2"`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.5.0.main-2-ga7657c80`

`--------------------------------------------------`

`-- UHD Device 0`

`--------------------------------------------------`

`Device Address:`

`    serial: 328AACC`

`    claimed: False`

`    fpga: CG_400`

`    mgmt_addr: 192.168.10.2`

`    name: ni-x4xx-328AACC`

`    product: x410`

`    type: x4xx`

--b1_ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>After reading through the documentation again, I learned I should only s=
pecify the NIC ports used in the UHD arguments in my conf file, I believe  =
this was able to resolve some of my issues, it still does not successfully =
begin the benchmarking. For example, if I specify 1 management_address/mgmt=
_addr and 1 address/addr I get an error that says not devices could be foun=
d. However, the errors are slightly different depending on if I set the man=
agement address to either the QSFP port or the RJ-45.</p><p>In the scenario=
 where I set the mgmt_addr to the QSFP port, I get an error that says no de=
vices were found, but I also get the warning =E2=80=9CNo link entry in rx t=
able=E2=80=9D</p><p><code>./benchmark_rate --rx_rate 491.52e6 --rx_channels=
 0 --tx_rate 491.52e6 --tx_channels 0 --args "addr=3D192.168.10.2,mgmt_addr=
=3D192.168.10.2,use_dpdk=3D1,type=3Dx4xx,product=3Dx410,fpga=3DCG_400"</cod=
e></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPD=
K_19.11; UHD_4.5.0.main-2-ga7657c80</code></p><p><code>[WARNING] [PREFS] Lo=
aded config from /root/.uhd. This location is considered deprecated, consid=
er moving your config file to /root/.config instead.</code></p><p><code>EAL=
: Detected 32 lcore(s)</code></p><p><code>EAL: Detected 1 NUMA nodes</code>=
</p><p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code></=
p><p><code>EAL: Selected IOVA mode 'PA'</code></p><p><code>EAL: No availabl=
e hugepages reported in hugepages-1048576kB</code></p><p><code>EAL: Probing=
 VFIO support...</code></p><p><code>EAL: VFIO support initialized</code></p=
><p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p><p><code=
>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>EAL: PCI device=
 0000:06:00.1 on NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b=
3:1017 net_mlx5</code></p><p><code>[WARNING] [DPDK::IO_SERVICE] Dropping pa=
cket: No link entry in rx table</code></p><p><code>[00:00:00.000041] Creati=
ng the usrp device with: addr=3D192.168.10.2,mgmt_addr=3D192.168.10.2,use_d=
pdk=3D1,type=3Dx4xx,product=3Dx410,fpga=3DCG_400...</code></p><p><code>[WAR=
NING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table</code><=
/p><p><code>Error: LookupError: KeyError: No devices found for -----&gt;</c=
ode></p><p><code>Device Address:</code></p><p><code>    addr: 192.168.10.2<=
/code></p><p><code>    mgmt_addr: 192.168.10.2</code></p><p><code>    use_d=
pdk: 1</code></p><p><code>    type: x4xx</code></p><p><code>    product: x4=
10</code></p><p><code>    fpga: CG_400</code></p><p>In the scenario where I=
 set the mgmt_addr to the RJ-45 port, I still get the device not found erro=
r, but the warning goes away.</p><p><code>./benchmark_rate --rx_rate 491.52=
e6 --rx_channels 0 --tx_rate 491.52e6 --tx_channels 0 --args "addr=3D192.16=
8.10.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1,type=3Dx4xx,product=3Dx410"</=
code></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; =
DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code></p><p><code>[WARNING] [PREFS]=
 Loaded config from /root/.uhd. This location is considered deprecated, con=
sider moving your config file to /root/.config instead.</code></p><p><code>=
EAL: Detected 32 lcore(s)</code></p><p><code>EAL: Detected 1 NUMA nodes</co=
de></p><p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code=
></p><p><code>EAL: Selected IOVA mode 'PA'</code></p><p><code>EAL: No avail=
able hugepages reported in hugepages-1048576kB</code></p><p><code>EAL: Prob=
ing VFIO support...</code></p><p><code>EAL: VFIO support initialized</code>=
</p><p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p><p><c=
ode>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>EAL: PCI dev=
ice 0000:06:00.1 on NUMA socket -1</code></p><p><code>EAL:   probe driver: =
15b3:1017 net_mlx5</code></p><p><code>[00:00:00.000037] Creating the usrp d=
evice with: addr=3D192.168.10.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1,type=
=3Dx4xx,product=3Dx410...</code></p><p><code>Error: LookupError: KeyError: =
No devices found for -----&gt;</code></p><p><code>Device Address:</code></p=
><p><code>    addr: 192.168.10.2</code></p><p><code>    mgmt_addr: 192.168.=
1.184</code></p><p><code>    use_dpdk: 1</code></p><p><code>    type: x4xx<=
/code></p><p><code>    product: x410</code></p><p>if I use uhd_find devices=
, the command returns successfully if I specify the address to the QSFP por=
t, however, if I specify the address as RJ-45 port, it returns unsuccessful=
ly. </p><p><code>uhd_find_devices --args=3D"addr=3D192.168.10.2"</code></p>=
<p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.1=
1; UHD_4.5.0.main-2-ga7657c80</code></p><p><code>--------------------------=
------------------------</code></p><p><code>-- UHD Device 0</code></p><p><c=
ode>--------------------------------------------------</code></p><p><code>D=
evice Address:</code></p><p><code>    serial: 328AACC</code></p><p><code>  =
  claimed: False</code></p><p><code>    fpga: CG_400</code></p><p><code>   =
 mgmt_addr: 192.168.10.2</code></p><p><code>    name: ni-x4xx-328AACC</code=
></p><p><code>    product: x410</code></p><p><code>    type: x4xx</code></p=
><p><br></p><p><br></p>

--b1_ZMkg6resTmIuWfIKqH65N00iZCP1XRMZHNUPumYieUc--

--===============4404875491677352415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4404875491677352415==--
