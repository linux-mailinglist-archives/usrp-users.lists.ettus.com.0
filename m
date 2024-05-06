Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE6D8BCD37
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 13:57:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE8C7384D3B
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 07:57:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714996642; bh=fy5+wf6sRlgFSB5z7ISqOrqQoBK7/uLIQw+wqxUxKlM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FtEZo2ZGCd0OeG+ppvE152tQkdrElpfIvwsUrJ+mN4nDDPfHu7cRv8BlotzmtyEcy
	 UGMRTpq20BAQbVDBx3bDcHwSqV5NLTLNcli6jXuJIdcU5LC5NPimSZ0SmAosVFj2Rd
	 9CWHjgx/nARzBaGbkTZewxOYOdqIINdEcEnT3VmZJx4QgJz8yOLJ28zh5BmC1lt9OI
	 vwPTmVbNVa4hRRmwnGG0I/PjyH4L0P3ROty7kGfBGGgIudLkZ8JIHm8szZXAEDkL3w
	 RWZkh3vJVVvaDxHl/5hsg4Mf6VSwtJ290fkevn/qDdsqBCfQe1fZPtzhNDGR2o5+zK
	 hlm+Lxv5WJ0dw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7AF27383671
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 07:56:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714996583; bh=gUxz8uUkgxpWTOEGVMsGguA7+mtsiKAx9aTDbd0YS2Q=;
	h=Date:To:From:Subject:From;
	b=bwaU89Ywj6jdZsOdYS6Mw5Tuo6YYl31AM8DoXXC0g6vZY7by2etN/PZ6vsEyTBfiS
	 rJC79gL2Kpl5q3NnE32/v547JuZdy1MEFrkyZ5xiC3CjnuuAOUa0s8WSlguo0LucUf
	 B4J6rwLfaBSQZQYL7lZl9lsgNdCeGTbKW8P/zsxd7/wkc2AHzicjIoIu3p9CfR9SRB
	 PICdf8z8kXYCr/hoz9wC44QVY45WSzxGZpogDui5/D68sK3Jm4kkB86eiMYXYjtuFe
	 MH+gmO3GxEdC94zAVkphdwAAnnhoKd8XlS7KtYIp1TspUZOOD0qoQtJC+mkdbfqFiO
	 wBr+wnIYrrAmQ==
Date: Mon, 6 May 2024 11:56:23 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <LSGJxDDsy4QXMcwYn1TUlS3rs5jdW6Ps0ZXdYDNE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XPGSMJTQGOQ67U45WPQ2L7R5OZTNVKQ4
X-Message-ID-Hash: XPGSMJTQGOQ67U45WPQ2L7R5OZTNVKQ4
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK error : net_mlx5: port 1 empty mbuf pool
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XPGSMJTQGOQ67U45WPQ2L7R5OZTNVKQ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8523324319158857280=="

This is a multi-part message in MIME format.

--===============8523324319158857280==
Content-Type: multipart/alternative;
 boundary="b1_LSGJxDDsy4QXMcwYn1TUlS3rs5jdW6Ps0ZXdYDNE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_LSGJxDDsy4QXMcwYn1TUlS3rs5jdW6Ps0ZXdYDNE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently getting the following error when I try to run dpdk=E2=80=A6

`net_mlx5: port 1 empty mbuf pool`

`net_mlx5: port 1 Rx queue allocation failed: Cannot allocate memory`

I am wondering if anyone has gotten a similar issue and how they fixed it=
. I double checked my uhd.conf and made sure my driver was in the right p=
lace, but things seem fine. Additionally, I believe dpdk-devbind.py shows=
 the correct output. Below is the full output of the error, my uhd.conf, =
and dpdk-devbind

`sudo uhd_find_devices --args "addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1"`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.5.0.HEAD-0-g471af98f`

`EAL: Detected 32 lcore(s)`

`EAL: Detected 1 NUMA nodes`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'VA'`

`EAL: No available hugepages reported in hugepages-1048576kB`

`EAL: Probing VFIO support...`

`EAL: VFIO support initialized`

`EAL: PCI device 0000:06:00.0 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`EAL: PCI device 0000:06:00.1 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`net_mlx5: port 1 empty mbuf pool`

`net_mlx5: port 1 Rx queue allocation failed: Cannot allocate memory`

`[ERROR] [DPDK] Port 1: Could not start device`

`EAL: FATAL: already called initialization.`

`EAL: already called initialization.`

`[ERROR] [DPDK] Error with EAL initialization`

`[ERROR] [UHD] Device discovery error: RuntimeError: DPDK: Failure to sta=
rt device`

`[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL=
 initialization`

`No UHD Devices Found`

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-

`python3 /usr/bin/dpdk-devbind.py --status`

`Network devices using kernel driver`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D`

`0000:00:14.3 'Device 7a70' if=3Dwlp0s20f3 drv=3Diwlwifi unused=3Dvfio-pc=
i *Active*`

`0000:06:00.0 'MT27800 Family [ConnectX-5] 1017' if=3Denp6s0f0np0 drv=3Dm=
lx5_core unused=3Dvfio-pci *Active*`

`0000:06:00.1 'MT27800 Family [ConnectX-5] 1017' if=3Denp6s0f1np1 drv=3Dm=
lx5_core unused=3Dvfio-pci *Active*`

`0000:09:00.0 'Device 125c' if=3Deno2 drv=3Digc unused=3Dvfio-pci `

`No 'Baseband' devices detected`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D`

`No 'Crypto' devices detected`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D`

`No 'Eventdev' devices detected`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D`

`No 'Mempool' devices detected`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D`

`No 'Compress' devices detected`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D`

`No 'Misc (rawdev)' devices detected`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D`

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94

`[use_dpdk=3D1]`

`dpdk_mtu=3D9000`

`dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/`

`dpdk_corelist=3D8,9,10`

`dpdk_num_mbufs=3D4095`

`dpdk_mbuf_cache_size=3D315`

`[dpdk_mac=3Db8:3f:d2:bc:52:8a]`

`dpdk_lcore =3D 9`

`dpdk_ipv4 =3D 192.168.10.1/24`

`dpdk_num_desc =3D 4096`

`[dpdk_mac=3Db8:3f:d2:bc:52:8b]`

`dpdk_lcore =3D 10`

`dpdk_ipv4 =3D 192.168.20.1/24`

`dpdk_num_desc =3D 4096`

--b1_LSGJxDDsy4QXMcwYn1TUlS3rs5jdW6Ps0ZXdYDNE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am currently getting the following error when =
I try to run dpdk=E2=80=A6</p><p><code>net_mlx5: port 1 empty mbuf pool</co=
de></p><p><code>net_mlx5: port 1 Rx queue allocation failed: Cannot allocat=
e memory</code></p><p>I am wondering if anyone has gotten a similar issue a=
nd how they fixed it. I double checked my uhd.conf and made sure my driver =
was in the right place, but things seem fine. Additionally, I believe dpdk-=
devbind.py shows the correct output. Below is the full output of the error,=
 my uhd.conf, and dpdk-devbind</p><p><br></p><p><code>sudo uhd_find_devices=
 --args "addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168=
.1.184,use_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU C++ version=
 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.HEAD-0-g471af98f</code></p><p><=
code>EAL: Detected 32 lcore(s)</code></p><p><code>EAL: Detected 1 NUMA node=
s</code></p><p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<=
/code></p><p><code>EAL: Selected IOVA mode 'VA'</code></p><p><code>EAL: No =
available hugepages reported in hugepages-1048576kB</code></p><p><code>EAL:=
 Probing VFIO support...</code></p><p><code>EAL: VFIO support initialized</=
code></p><p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p>=
<p><code>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>EAL: PC=
I device 0000:06:00.1 on NUMA socket -1</code></p><p><code>EAL:   probe dri=
ver: 15b3:1017 net_mlx5</code></p><p><code>net_mlx5: port 1 empty mbuf pool=
</code></p><p><code>net_mlx5: port 1 Rx queue allocation failed: Cannot all=
ocate memory</code></p><p><code>[ERROR] [DPDK] Port 1: Could not start devi=
ce</code></p><p><code>EAL: FATAL: already called initialization.</code></p>=
<p><code>EAL: already called initialization.</code></p><p><code>[ERROR] [DP=
DK] Error with EAL initialization</code></p><p><code>[ERROR] [UHD] Device d=
iscovery error: RuntimeError: DPDK: Failure to start device</code></p><p><c=
ode>[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EA=
L initialization</code></p><p><code>No UHD Devices Found</code></p><p>=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p><cod=
e>python3 /usr/bin/dpdk-devbind.py --status</code></p><p><code>Network devi=
ces using kernel driver</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</code></p><p><code>0000:00:14.3 'Device 7a70' if=3Dwlp0s20f3 drv=3Diwlwifi=
 unused=3Dvfio-pci *Active*</code></p><p><code>0000:06:00.0 'MT27800 Family=
 [ConnectX-5] 1017' if=3Denp6s0f0np0 drv=3Dmlx5_core unused=3Dvfio-pci *Act=
ive*</code></p><p><code>0000:06:00.1 'MT27800 Family [ConnectX-5] 1017' if=
=3Denp6s0f1np1 drv=3Dmlx5_core unused=3Dvfio-pci *Active*</code></p><p><cod=
e>0000:09:00.0 'Device 125c' if=3Deno2 drv=3Digc unused=3Dvfio-pci </code><=
/p><p><code>No 'Baseband' devices detected</code></p><p><code>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</code></p><p><code>No 'Crypto' devices detected</code></p><p><code>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</code></p><p><code>No 'Eventdev' devices detected</code></p><p><code=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</code></p><p><code>No 'Mempool' devices detected</code><=
/p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>No 'Compress' devices detected<=
/code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>No 'Misc (rawdev)' =
devices detected</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></=
p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94</p><p><code>[use_dpdk=3D1]</code></p><=
p><code>dpdk_mtu=3D9000</code></p><p><code>dpdk_driver=3D/usr/lib/x86_64-li=
nux-gnu/dpdk/pmds-20.0/</code></p><p><code>dpdk_corelist=3D8,9,10</code></p=
><p><code>dpdk_num_mbufs=3D4095</code></p><p><code>dpdk_mbuf_cache_size=3D3=
15</code></p><p><code>[dpdk_mac=3Db8:3f:d2:bc:52:8a]</code></p><p><code>dpd=
k_lcore =3D 9</code></p><p><code>dpdk_ipv4 =3D 192.168.10.1/24</code></p><p=
><code>dpdk_num_desc =3D 4096</code></p><p><code>[dpdk_mac=3Db8:3f:d2:bc:52=
:8b]</code></p><p><code>dpdk_lcore =3D 10</code></p><p><code>dpdk_ipv4 =3D =
192.168.20.1/24</code></p><p><code>dpdk_num_desc =3D 4096</code></p><p><br>=
</p><p><br></p><p><br></p>

--b1_LSGJxDDsy4QXMcwYn1TUlS3rs5jdW6Ps0ZXdYDNE--

--===============8523324319158857280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8523324319158857280==--
