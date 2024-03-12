Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F52879989
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 18:01:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 676D4385301
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 13:01:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710262870; bh=fW5n2MJDGdwY/u3F+zLxWk6PDlGz7RZDUJLu2vO+uEg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IcxGJ0zNh1RdOV8V40le0LUj1IybdYT5NappF1a8drgBjtg0QElwmZjpVKCxhH+9h
	 trXWsJDUefP/Z2p6KR7d2lWKHzG+tPthRaWP52Pk9XS7mtoZVCvjDaDt0+2pKPfJyv
	 P6wx6Qq7bwDE92bmzUV3L5ZdIWYTA75ReWjZWcchh/oGPGDsxx4uoBHrWKDuJO/fkk
	 DAu3wKhE/lobSplEWmigyROaqID+n2CuhAyj409bWA3RWvFE5P36LX9klHLxyXR2xS
	 /0OSCbcZMQEAQJdkaQZrrQA79aj5MURq48bOiYSx/qN6zw/z6h9llH6cmM+EWVnmIY
	 ryzGsN+VcJvvA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F91A3851F6
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 13:00:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710262827; bh=CWKGkqit7nuQgMeQ0QLBCfoXdOoOwJz/211hlP3oZmI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ou4to4ZSASatsFo0K4OwjN/e4OAh2c5kBW6ss72U68Cfy5t/kpJ2tEIpXLR0GGfIr
	 l7VWGlPvbi4hQzDJWWLdPTkov0eDBqLpsqBjs16OFytpH7Axsod0KRuua9LEbPWtim
	 psklJ8ogYkeApvs+dqePyISUPBnd/ZTa6grSvAUAJAocZ5bwpF7McLo5IILx3H1yiX
	 n+hXqZXO3Ah+ZxaZK3DeYcGxMUEx5CilKsNuNV3DDchTHF1XelB3WK7hcCObbbNh+y
	 CFCngCo6iXDQv6094Xr358KgWCI0HHwqlYe/CDqFsxLKD6ty61Ed4nWHqcyZlOGVoP
	 w9O3+erzCTybQ==
Date: Tue, 12 Mar 2024 17:00:27 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQV6JzhWNiSePcL343jLkvtUKvUrjonUDDD+No3xQm=8Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BZJTHUC6YDJNHNRNBEV4UT5N6G2D7FHW
X-Message-ID-Hash: BZJTHUC6YDJNHNRNBEV4UT5N6G2D7FHW
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BZJTHUC6YDJNHNRNBEV4UT5N6G2D7FHW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1765042469871100270=="

This is a multi-part message in MIME format.

--===============1765042469871100270==
Content-Type: multipart/alternative;
 boundary="b1_Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Rob,

Saving to dev/null worked just fine, and didn=E2=80=99t even output the =E2=
=80=9CDisk write test indicates that an overflow is likely to occur=E2=80=
=9D warning.

In terms of saving to RAM, isn=E2=80=99t this essentially what my custom =
script does? I reserve all my buffers (which increases my RAM usage by a =
lot) and have a separate thread write from these to the filesystem.=20

Would anything be different if I used a ramdisk? I can try it out.=20

As for DPDK, I tried in the past to get it working but keep running into =
issues. I will post the output below, but it may warrant a separate post.

When running:

```
./rx_samples_to_file --args "addr=3D192.168.10.2,second_addr=3D192.168.20=
.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1" --file /dev/null --duration 10 =
--rate 491.52e6 --freq 1575.42e6
```

I get:

```
Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...
```

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
EAL: Multi-process socket /run/user/1001/dpdk/rte/mp_socket
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
EAL: get_seg_fd(): open '/dev/hugepages/rtemap_0' failed: Permission deni=
ed
```

```
EAL: Couldn't get fd on hugepage file
```

```
EAL: get_seg_fd(): open '/dev/hugepages/rtemap_32768' failed: Permission =
denied
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

```
[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initia=
lization
```

```
EAL: FATAL: already called initialization.
```

```
EAL: already called initialization.
```

```
[ERROR] [DPDK] Error with EAL initialization
```

```
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL =
initialization
```

```
Error: LookupError: KeyError: No devices found for ----->
```

```
Device Address:
```

```
    addr: 192.168.10.2
```

```
    second_addr: 192.168.20.2
```

```
    mgmt_addr: 192.168.1.19
```

    use_dpdk: 1    =20

When I run the same command as the root user, I get:

```
Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...
```

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
[ERROR] [DPDK] Could not find route to destination address 192.168.10.2
```

```
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not=
 find route to destination address 192.168.10.2
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-3=
26E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D19=
2.168.20.2,use_dpdk=3D1
```

```
[WARNING] [MPM.RPCServer] A timeout event occured!
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DCG_400,=
mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,second_add=
r=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinter=
nal,initializing=3DTrue'.
```

```
[ERROR] [DPDK] Could not find route to destination address 192.168.10.2
```

```
[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 192.16=
8.10.2: RuntimeError: DPDK: Could not find route to destination address 1=
92.168.10.2
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

--b1_Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Rob,</p><p>Saving to dev/null worked just fine, and didn=E2=80=99t e=
ven output the =E2=80=9CDisk write test indicates that an overflow is likel=
y to occur=E2=80=9D warning.</p><p>In terms of saving to RAM, isn=E2=80=
=99t this essentially what my custom script does? I reserve all my buffers =
(which increases my RAM usage by a lot) and have a separate thread write fr=
om these to the filesystem. </p><p>Would anything be different if I used a =
ramdisk? I can try it out. </p><p>As for DPDK, I tried in the past to get i=
t working but keep running into issues. I will post the output below, but i=
t may warrant a separate post.</p><p>When running:</p><pre><code>./rx_sampl=
es_to_file --args "addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=
=3D192.168.1.19,use_dpdk=3D1" --file /dev/null --duration 10 --rate 491.52e=
6 --freq 1575.42e6</code></pre><p>I get:</p><pre><code>Creating the usrp de=
vice with: addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.1=
68.1.19,use_dpdk=3D1...</code></pre><pre><code>[INFO] [UHD] linux; GNU C++ =
version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code><=
/pre><pre><code>EAL: Detected 24 lcore(s)</code></pre><pre><code>EAL: Detec=
ted 2 NUMA nodes</code></pre><pre><code>EAL: Multi-process socket /run/user=
/1001/dpdk/rte/mp_socket</code></pre><pre><code>EAL: Selected IOVA mode 'VA=
'</code></pre><pre><code>EAL: No available hugepages reported in hugepages-=
1048576kB</code></pre><pre><code>EAL: Probing VFIO support...</code></pre><=
pre><code>EAL: VFIO support initialized</code></pre><pre><code>EAL: get_seg=
_fd(): open '/dev/hugepages/rtemap_0' failed: Permission denied</code></pre=
><pre><code>EAL: Couldn't get fd on hugepage file</code></pre><pre><code>EA=
L: get_seg_fd(): open '/dev/hugepages/rtemap_32768' failed: Permission deni=
ed</code></pre><pre><code>EAL: Couldn't get fd on hugepage file</code></pre=
><pre><code>EAL: error allocating rte services array</code></pre><pre><code=
>EAL: FATAL: rte_service_init() failed</code></pre><pre><code>EAL: rte_serv=
ice_init() failed</code></pre><pre><code>[ERROR] [DPDK] Error with EAL init=
ialization</code></pre><pre><code>[ERROR] [UHD] Device discovery error: Run=
timeError: Error with EAL initialization</code></pre><pre><code>EAL: FATAL:=
 already called initialization.</code></pre><pre><code>EAL: already called =
initialization.</code></pre><pre><code>[ERROR] [DPDK] Error with EAL initia=
lization</code></pre><pre><code>[ERROR] [X300] X300 Network discovery error=
 RuntimeError: Error with EAL initialization</code></pre><pre><code>Error: =
LookupError: KeyError: No devices found for -----&gt;</code></pre><pre><cod=
e>Device Address:</code></pre><pre><code>    addr: 192.168.10.2</code></pre=
><pre><code>    second_addr: 192.168.20.2</code></pre><pre><code>    mgmt_a=
ddr: 192.168.1.19</code></pre><p>    use_dpdk: 1     </p><p><br></p><p>When=
 I run the same command as the root user, I get:</p><pre><code>Creating the=
 usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=
=3D192.168.1.19,use_dpdk=3D1...</code></pre><pre><code>[INFO] [UHD] linux; =
GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa=
</code></pre><pre><code>EAL: Detected 24 lcore(s)</code></pre><pre><code>EA=
L: Detected 2 NUMA nodes</code></pre><pre><code>EAL: Multi-process socket /=
var/run/dpdk/rte/mp_socket</code></pre><pre><code>EAL: Selected IOVA mode '=
VA'</code></pre><pre><code>EAL: No available hugepages reported in hugepage=
s-1048576kB</code></pre><pre><code>EAL: Probing VFIO support...</code></pre=
><pre><code>EAL: VFIO support initialized</code></pre><pre><code>EAL: PCI d=
evice 0000:31:00.0 on NUMA socket 0</code></pre><pre><code>EAL:   probe dri=
ver: 15b3:101d net_mlx5</code></pre><pre><code>EAL: PCI device 0000:31:00.1=
 on NUMA socket 0</code></pre><pre><code>EAL:   probe driver: 15b3:101d net=
_mlx5</code></pre><pre><code>[ERROR] [DPDK] Could not find route to destina=
tion address 192.168.10.2</code></pre><pre><code>[ERROR] [X300] X300 Networ=
k discovery error RuntimeError: DPDK: Could not find route to destination a=
ddress 192.168.10.2</code></pre><pre><code>[INFO] [MPMD] Initializing 1 dev=
ice(s) in parallel with args: mgmt_addr=3D192.168.1.19,type=3Dx4xx,product=
=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=3DFal=
se,addr=3D192.168.10.2,second_addr=3D192.168.20.2,use_dpdk=3D1</code></pre>=
<pre><code>[WARNING] [MPM.RPCServer] A timeout event occured!</code></pre><=
pre><code>[INFO] [MPM.PeriphManager] init() called with device args `fpga=
=3DCG_400,mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,se=
cond_addr=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=
=3Dinternal,initializing=3DTrue'.</code></pre><pre><code>[ERROR] [DPDK] Cou=
ld not find route to destination address 192.168.10.2</code></pre><pre><cod=
e>[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 192.16=
8.10.2: RuntimeError: DPDK: Could not find route to destination address 192=
.168.10.2</code></pre><pre><code>[ERROR] [RFNOC::MGMT] EnvironmentError: IO=
Error: Timed out getting recv buff for management transaction</code></pre><=
pre><code>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Enviro=
nmentError: IOError: Timed out getting recv buff for management transaction=
</code></pre><pre><code>[ERROR] [RFNOC::GRAPH] Caught exception while initi=
alizing graph: EnvironmentError: IOError: Timed out getting recv buff for m=
anagement transaction</code></pre><pre><code>Error: RuntimeError: Failure t=
o create rfnoc_graph.</code></pre>

--b1_Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ--

--===============1765042469871100270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1765042469871100270==--
