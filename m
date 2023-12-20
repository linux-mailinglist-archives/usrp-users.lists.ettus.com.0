Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2B881A96B
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 23:50:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BD3A3850C0
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 17:50:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703112609; bh=4ZhIWOG9qLL3I2z4jNdhvAX7DOZhG/3DhzCuxYzrirk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BXo13ovQPGspwQJYKhG3r6O0Y608Hnzag1jjra/Qfr7I4P4Z+7qb+CYNP98MBuLpq
	 gJIhktEVIL8gKeI3ks/qfd/mH3IzSqHUCa/6SumGMM22ySU0iFFuXd449TcguFhQ6a
	 BNwMjEJ8Tzs6p/owjdRudXYow8dXsTLb14gFw7KrkMGFEhmAjcq5ipiqv1XZGESUlI
	 /u5746jzpTLUdQdcwZwoUcfTCwSXWK1GouaBHlQ0RQngcdjsBiVbUCbtwbB/ntlgFH
	 RIZz2Q0mOSW05oUidUJoS4hI5O2RMPBNc5aaqVOsrFrucy2e3Pw4v9YeWSHEm7Teht
	 IcThI1xPWIWUg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83B28384BD9
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 17:49:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703112575; bh=NLvtHkV8+UC6PId5JyUvf2PSlosqXHayw70cGDSShw4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=DPMmXQJJJAFIjIkcnmnaax31cwdywErNv1jhtRElgFyHPGh9DLR1w1c9CM/xk8J3h
	 yikEmH+nOn5DoDaJyRJM5s++1nDAhF0skdmOLrSJBklqvZUv71Ued45Vs/bq/nF/Cv
	 U5Cm1iWgCrxswWkIYAEzGpa1EP2n7d/XoAYiu1mj7MPyb9N/hHBLL5Wu/1GbnlsKcw
	 jEBrcps7oKCmnfZaE2zErK9A/puzG+fHbggLrkpfqdkMWYMm7i7zT900ECL45QP9MP
	 DXfpxYNj4htQkw9Z9OMAG/JotJkd9FulP0Im3XxontGWkJBNpTTvI5Bgu3hzTNCLd6
	 PqXoNQr67kRng==
Date: Wed, 20 Dec 2023 22:49:35 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSM_TeDnBjDPBTo-A3nxdcA+ByrnUfNAuPqyo34H42yzw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FRDNX5T4S4MM3A2QH72EPCIHQVUP6SDQ
X-Message-ID-Hash: FRDNX5T4S4MM3A2QH72EPCIHQVUP6SDQ
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FRDNX5T4S4MM3A2QH72EPCIHQVUP6SDQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7201314782190088731=="

This is a multi-part message in MIME format.

--===============7201314782190088731==
Content-Type: multipart/alternative;
 boundary="b1_GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

In the past when I collected data from the x410 without DPDK, it would wo=
rk just fine to use solely 1 network port.

I tried using the management address now, but I still get errors, but it =
is slightly different. Notably there is not a =E2=80=9Cno chdr_connection=
 available=E2=80=9D error.

`./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 -=
-tx_channels 0 --args "addr=3D192.168.10.2,mgmt_addr=3D192.168.1.254,use_=
dpdk=3D1"`

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

`[00:00:00.000209] Creating the usrp device with: addr=3D192.168.10.2,mgm=
t_addr=3D192.168.1.254,use_dpdk=3D1...`

`[ERROR] [DPDK] Could not find route to destination address 192.168.10.2`

`[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could no=
t find route to destination address 192.168.10.2`

`Error: LookupError: KeyError: No devices found for ----->`

`Device Address:`

`    addr: 192.168.10.2`

`    mgmt_addr: 192.168.1.254`

`    use_dpdk: 1`

--b1_GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>In the past when I collected data from the x410 without DPDK, it would w=
ork just fine to use solely 1 network port.</p><p>I tried using the managem=
ent address now, but I still get errors, but it is slightly different. Nota=
bly there is not a =E2=80=9Cno chdr_connection available=E2=80=9D error.</p=
><p><br></p><p><code>./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --=
tx_rate 491.52e6 --tx_channels 0 --args "addr=3D192.168.10.2,mgmt_addr=3D19=
2.168.1.254,use_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU C++ ve=
rsion 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code></p=
><p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This location is=
 considered deprecated, consider moving your config file to /root/.config i=
nstead.</code></p><p><code>EAL: Detected 32 lcore(s)</code></p><p><code>EAL=
: Detected 1 NUMA nodes</code></p><p><code>EAL: Multi-process socket /var/r=
un/dpdk/rte/mp_socket</code></p><p><code>EAL: Selected IOVA mode 'PA'</code=
></p><p><code>EAL: No available hugepages reported in hugepages-1048576kB</=
code></p><p><code>EAL: Probing VFIO support...</code></p><p><code>EAL: VFIO=
 support initialized</code></p><p><code>EAL: PCI device 0000:06:00.0 on NUM=
A socket -1</code></p><p><code>EAL:   probe driver: 15b3:1017 net_mlx5</cod=
e></p><p><code>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code></p><p>=
<code>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>[ERROR] [D=
PDK] Could not find route to destination address 192.168.10.2</code></p><p>=
<code>[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=
 not find route to destination address 192.168.10.2</code></p><p><code>[00:=
00:00.000209] Creating the usrp device with: addr=3D192.168.10.2,mgmt_addr=
=3D192.168.1.254,use_dpdk=3D1...</code></p><p><code>[ERROR] [DPDK] Could no=
t find route to destination address 192.168.10.2</code></p><p><code>[ERROR]=
 [X300] X300 Network discovery error RuntimeError: DPDK: Could not find rou=
te to destination address 192.168.10.2</code></p><p><code>Error: LookupErro=
r: KeyError: No devices found for -----&gt;</code></p><p><code>Device Addre=
ss:</code></p><p><code>    addr: 192.168.10.2</code></p><p><code>    mgmt_a=
ddr: 192.168.1.254</code></p><p><code>    use_dpdk: 1</code></p>

--b1_GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA--

--===============7201314782190088731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7201314782190088731==--
