Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C9823662
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jan 2024 21:19:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A879385054
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jan 2024 15:19:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704313144; bh=G5OCajJfL49cn/zWYVtDwuPZ43d0qldbjDqvtIT2H8g=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VetOui7TpGFETYjwV0adyxv+GypzedsinXG6CywR8r4tSqWE8pQq9eP3mXZ94r6CM
	 ZSN74psj882FMIQnFHAp/FGvLkU4803ILoDSbDHPmCJXC+rTa/opYjQ8IwLJl65HEi
	 l2Maz1aPHBSgIsY+GEuC9ew+k3qYuC5+wxy/ge2SffK1Bl3IWiAJD7wMW2xy/53y8/
	 mJnovmP1KZq24We68ZYvExcg4TPfuslpeCSYSZ0djqLDwQh/qEMDSzxEXe0oimo2ue
	 o4aa/sbjZzRMFD5201Yz7/K5U3ZUGvx8Hxy8wBo8gXAo0EdSPEW0vLmZ5LLeNv6lkD
	 Lcar3b9S2w9iQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6EBED384F42
	for <usrp-users@lists.ettus.com>; Wed,  3 Jan 2024 15:18:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704313126; bh=EvoRQDoY4DkBB3x7RJfVVRmxaYOF/kSbLkR1mhtMy8M=;
	h=Date:To:From:Subject:From;
	b=rt6DY5/7eM7eudDJwyT6Y1v1BEX917aLr3eaQisZ/wGfEiew/BjnE3deuhOqO+Ajp
	 5zycGNLflcPG3bbjWKKTZVB929hGsAHvM3HD1Etrh9rdoeEjYjJww//kgx0cyBFVAY
	 trJslVHYDan6aHv06dQFJH80isSv1AxUT9+J5otkmSUtK7A6Ew5HHYYNevPWxDUH4t
	 gfMdGSwrMmp/ngkK+QwbsfS5d2r9Z6/NzzQAQtjXqKFyC4lgvpT/24dWZP+ENugY3h
	 40rMcx49x9dYxB5BVKFoV/ChU6evCAz3Iy0E7SzGv4z13pn69E6Dvl+ojqp2s+NZSv
	 N5vJzAHsUWKgQ==
Date: Wed, 3 Jan 2024 20:18:46 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: VRWNXVCM3UQDDRZLDUVH4BAAZUQ6GCAG
X-Message-ID-Hash: VRWNXVCM3UQDDRZLDUVH4BAAZUQ6GCAG
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table, Lookup error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VRWNXVCM3UQDDRZLDUVH4BAAZUQ6GCAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3224054854504610951=="

This is a multi-part message in MIME format.

--===============3224054854504610951==
Content-Type: multipart/alternative;
 boundary="b1_Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently trying to use DPDK, however, there is an error I currently am unable to resolve.

`./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rate 245.76e6 --tx_channels 0 --args "addr=192.168.10.2,use_dpdk=1"`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80`

`[WARNING] [PREFS] Loaded config from /root/.uhd. This location is considered deprecated, consider moving your config file to /root/.config instead.`

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

`[00:00:00.000350] Creating the usrp device with: addr=192.168.10.2,use_dpdk=1...`

`[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table`

`Error: LookupError: KeyError: No devices found for ----->`

`Device Address:`

`    addr: 192.168.10.2`

`    use_dpdk: 1`

The error displays as a warning, however, the program immediately goes into a lookup error where it says the device can not be found. I do not know how to resolve either of these issues, or know if they are related. Any help is greatly appreciated.

Thanks,

Joe

--b1_Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently trying to use DPDK, however, there is an err=
or I currently am unable to resolve.</p><p><code>./benchmark_rate --rx_rate=
 245.76e6 --rx_channels 0 --tx_rate 245.76e6 --tx_channels 0 --args "addr=
=3D192.168.10.2,use_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU C+=
+ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code=
></p><p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This locatio=
n is considered deprecated, consider moving your config file to /root/.conf=
ig instead.</code></p><p><code>EAL: Detected 32 lcore(s)</code></p><p><code=
>EAL: Detected 1 NUMA nodes</code></p><p><code>EAL: Multi-process socket /v=
ar/run/dpdk/rte/mp_socket</code></p><p><code>EAL: Selected IOVA mode 'PA'</=
code></p><p><code>EAL: No available hugepages reported in hugepages-1048576=
kB</code></p><p><code>EAL: Probing VFIO support...</code></p><p><code>EAL: =
VFIO support initialized</code></p><p><code>EAL: PCI device 0000:06:00.0 on=
 NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b3:1017 net_mlx5<=
/code></p><p><code>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code></p=
><p><code>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>[WARNI=
NG] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table</code></p=
><p><code>[00:00:00.000350] Creating the usrp device with: addr=3D192.168.1=
0.2,use_dpdk=3D1...</code></p><p><code>[WARNING] [DPDK::IO_SERVICE] Droppin=
g packet: No link entry in rx table</code></p><p><code>Error: LookupError: =
KeyError: No devices found for -----&gt;</code></p><p><code>Device Address:=
</code></p><p><code>    addr: 192.168.10.2</code></p><p><code>    use_dpdk:=
 1</code></p><p>The error displays as a warning, however, the program immed=
iately goes into a lookup error where it says the device can not be found. =
I do not know how to resolve either of these issues, or know if they are re=
lated. Any help is greatly appreciated.</p><p>Thanks,</p><p>Joe</p>

--b1_Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo--

--===============3224054854504610951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3224054854504610951==--
