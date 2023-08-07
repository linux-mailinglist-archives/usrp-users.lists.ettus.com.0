Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3966772F5A
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 21:41:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B38353849C9
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 15:41:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691437273; bh=sC4E3dC/wWrnzDanL8TasJ+7Ro+nLCfNQec+c/3G/Sg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=DitRmpIeyDfNuuLJ2igIPFBA1MN5e1xyDvkIdXcK7C0WlZBlOTv1s5kH9PvZzM2HK
	 I7xVpDlq6bnnlmIiBEo4gROjpo4pyMS4ja18izxr7Ukr1qubE290lhu86NAcfj15vg
	 d6lxL039Uxi1g5NKsRbDALXjvSRhwjXKYmM97DBoxZLWMHlD60I7QgvTImXcL4xy2D
	 HDyhaTJ5+xnhC3se4b/X6eeuCtXcKPeRY5p524v8A85/xaEsM8spr6PL0EtEkqoy+V
	 wCaBm2yNByHkJXB/Lj5hvig/VydNFDtd4XUdXVP6cpu/KQdHrbiUKkU/5JDnu4IZbR
	 rUcnZCLmflHNQ==
Received: from ma-mailsvcp-mx-lapp01.apple.com (ma-mailsvcp-mx-lapp01.apple.com [17.32.222.22])
	by mm2.emwd.com (Postfix) with ESMTPS id E5B21384561
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 15:40:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=apple.com header.i=@apple.com header.b="HMAyEYet";
	dkim-atps=neutral
Received: from rn-mailsvcp-mta-lapp03.rno.apple.com
 (rn-mailsvcp-mta-lapp03.rno.apple.com [10.225.203.151])
 by ma-mailsvcp-mx-lapp01.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0RZ100D2FDBMHZ20@ma-mailsvcp-mx-lapp01.apple.com> for
 usrp-users@lists.ettus.com; Mon, 07 Aug 2023 12:40:37 -0700 (PDT)
X-Proofpoint-ORIG-GUID: HfMIFONdgtdbYokv2dQ30yyoseDYhS7T
X-Proofpoint-GUID: HfMIFONdgtdbYokv2dQ30yyoseDYhS7T
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.591,18.0.957
 definitions=2023-07-11_09:2023-07-11,2023-07-11 signatures=0
X-Proofpoint-Spam-Details: rule=interactive_user_notspam
 policy=interactive_user score=0 mlxlogscore=773 spamscore=0 adultscore=0
 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2307110153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com; h=from :
 content-type : mime-version : subject : message-id : date : to; s=20180706;
 bh=h5nOTgi5nAkLX/4ZsHPpg40QLwBwqVl4CyeJzIv+qvU=;
 b=HMAyEYetKSs/pDhQQYmitHMAmTZXzwtY68ABffYxD5QlvhBctebLrNxaFugccskdDbxA
 TSAO9odROnfVdgW1q7OBiwZ+TnWoYQubOdBpwKTBOprTgTIqFimIhbfEc4PdvU3HDKmD
 D6RZlUtN9KbkRXJa9HbuSYMe/eAI7BRGGtvpy3xQWJ+0l+lNPmTBkw/Gvv0ryRkjsM7U
 g4wgmhgbsAFlRS1GvOYBNnSVi/PNmwJSgmKjWxyXj2U2nPqlZT7JmLza/Q57niYz5EZE
 DhcWllLjLeiYHWRWF3r6+lTH5aWkLltjAXbuwGspHYkBVtTaL3+PCEieZNeslcwsZsng TQ==
Received: from rn-mailsvcp-mmp-lapp04.rno.apple.com
 (rn-mailsvcp-mmp-lapp04.rno.apple.com [17.179.253.17])
 by rn-mailsvcp-mta-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0RZ100PNTDBOLWF0@rn-mailsvcp-mta-lapp03.rno.apple.com>
 for usrp-users@lists.ettus.com; Mon, 07 Aug 2023 12:40:36 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp04.rno.apple.com by
 rn-mailsvcp-mmp-lapp04.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) id <0RZ100400DAXAX00@rn-mailsvcp-mmp-lapp04.rno.apple.com> for
 usrp-users@lists.ettus.com; Mon, 07 Aug 2023 12:40:36 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-Va-E-CD: cd645e069f11c6d4db7ae30c239dc5ca
X-Va-R-CD: 30e6d5462899a1dba8b9abfea9f784d7
X-Va-ID: 65c0e399-6b84-45af-9242-c59f217b0c6f
X-Va-CD: 0
X-V-A: 
X-V-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-V-E-CD: cd645e069f11c6d4db7ae30c239dc5ca
X-V-R-CD: 30e6d5462899a1dba8b9abfea9f784d7
X-V-ID: b47b14eb-b209-4f3c-b3be-0d2722648df4
X-V-CD: 0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.591,18.0.957
 definitions=2023-08-07_22:2023-08-02,2023-08-07 signatures=0
Received: from smtpclient.apple (unknown [17.11.169.80])
 by rn-mailsvcp-mmp-lapp04.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPSA id <0RZ1009K1DBN7F00@rn-mailsvcp-mmp-lapp04.rno.apple.com>
 for usrp-users@lists.ettus.com; Mon, 07 Aug 2023 12:40:36 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Message-id: <1D7BF42B-D48D-47F4-8D4B-14FEE57F3251@apple.com>
Date: Mon, 07 Aug 2023 12:40:25 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3731.400.51.1.1)
Message-ID-Hash: PLZWGBWUNJYFOSB73FPLCXFSWLFAX5YK
X-Message-ID-Hash: PLZWGBWUNJYFOSB73FPLCXFSWLFAX5YK
X-MailFrom: vlevin@apple.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 device no longer found when using use_dpdk=1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PLZWGBWUNJYFOSB73FPLCXFSWLFAX5YK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Victor Levin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Victor Levin <vlevin@apple.com>
Content-Type: multipart/mixed; boundary="===============8225144040137318113=="


--===============8225144040137318113==
Content-type: multipart/alternative;
 boundary="Apple-Mail=_44F12A49-B032-439D-A129-8DDEF542F1C3"


--Apple-Mail=_44F12A49-B032-439D-A129-8DDEF542F1C3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi all,=20

I am trying to enable DPDK with X410 and found an issue when using =
=E2=80=9Cuse_dpdk=3D1=E2=80=9D. I am on Ubuntu 22.04, the latest UHD =
4.4.0 (commit: 4a77791cf5f7cedc842762be8b2b6775073d8c95) and DPDK =
21.11.4. =20

When the X410 is connect to the interface without DPDK, I can find it =
via uhd_usrp_probe and run benchmark_rate without issue. After binding =
the NIC to DPDK, the X410 can no longer be found when using DPDK. Anyone =
know why it=E2=80=99s disappearing?


Output of find devices before DPDK is enabled:

# uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; =
UHD_4.4.0.HEAD-33-g4a77791c
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3257310
    addr: 192.168.15.2
    claimed: False
    fpga: X4_200
    mgmt_addr: 192.168.15.2
    name: ni-x4xx-3257310
    product: x410
    type: x4xx


After DPDK is enabled, the X410 is no longer found:=20

/usr/local/lib/uhd/examples# ./benchmark_rate =
--args=3D"master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.15.2,addr=3D192=
.168.15.2,use_dpdk=3D1,serial=3D3257310,name=3Dni-x4xx-3257310,product=3Dx=
410,type=3Dx4xx" --duration 3 --rx_rate 245.76e6  --tx_rate 245.76e6

[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; =
UHD_4.4.0.HEAD-33-g4a77791c
[WARNING] [PREFS] Loaded config from /root/.uhd. This location is =
considered deprecated, consider moving your config file to /root/.config =
instead.
EAL: Detected CPU lcores: 96
EAL: Detected NUMA nodes: 2
EAL: Detected shared linkage of DPDK
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: Selected IOVA mode 'VA'
EAL: VFIO support initialized
EAL: Using IOMMU type 1 (Type 1)
EAL: Probe PCI driver: net_ice (8086:1592) device: 0000:98:00.1 (socket =
1)
ice_load_pkg_type(): Active package is: 1.3.28.0, ICE OS Default Package =
(double VLAN mode)
TELEMETRY: No legacy callbacks, legacy socket not created
ice_set_rx_function(): Using AVX2 OFFLOAD Vector Scattered Rx (port 0).
ice_set_tx_function(): Using AVX2 OFFLOAD Vector Tx (port 0).
[00:00:00.000229] Creating the usrp device with: =
master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.15.2,addr=3D192.168.15.2,=
use_dpdk=3D1,serial=3D3257310,name=3Dni-x4xx-3257310,product=3Dx410,type=3D=
x4xx...
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    master_clock_rate: 245.76e6
    mgmt_addr: 192.168.15.2
    addr: 192.168.15.2
    use_dpdk: 1
    serial: 3257310
    name: ni-x4xx-3257310
    product: x410
    type: x4xx=

--Apple-Mail=_44F12A49-B032-439D-A129-8DDEF542F1C3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Hi =
all,&nbsp;<div><br></div><div>I am trying to enable DPDK with X410 and =
found an issue when using =E2=80=9Cuse_dpdk=3D1=E2=80=9D. I am on Ubuntu =
22.04, the latest UHD 4.4.0 (commit: =
4a77791cf5f7cedc842762be8b2b6775073d8c95) and DPDK 21.11.4. =
&nbsp;</div><div><br></div><div>When the X410 is connect to the =
interface without DPDK, I can find it via uhd_usrp_probe and run =
benchmark_rate without issue. After binding the NIC to DPDK, the X410 =
can no longer be found when using DPDK. Anyone know why it=E2=80=99s =
disappearing?</div><div><br></div><div><br></div><div>Output of find =
devices before DPDK is enabled:</div><div><br></div><div><div><font =
face=3D"Menlo"># uhd_find_devices</font></div><div><font =
face=3D"Menlo">[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; =
DPDK_21.11; UHD_4.4.0.HEAD-33-g4a77791c</font></div><div><font =
face=3D"Menlo">--------------------------------------------------</font></=
div><div><font face=3D"Menlo">-- UHD Device 0</font></div><div><font =
face=3D"Menlo">--------------------------------------------------</font></=
div><div><font face=3D"Menlo">Device Address:</font></div><div><font =
face=3D"Menlo">&nbsp; &nbsp; serial: 3257310</font></div><div><font =
face=3D"Menlo">&nbsp; &nbsp; addr: 192.168.15.2</font></div><div><font =
face=3D"Menlo">&nbsp; &nbsp; claimed: False</font></div><div><font =
face=3D"Menlo">&nbsp; &nbsp; fpga: X4_200</font></div><div><font =
face=3D"Menlo">&nbsp; &nbsp; mgmt_addr: =
192.168.15.2</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; name: =
ni-x4xx-3257310</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; =
product: x410</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; type: =
x4xx</font></div></div><div><br></div><div><br></div><div>After DPDK is =
enabled, the X410 is no longer =
found:&nbsp;</div><div><br></div><div><div><font =
face=3D"Menlo">/usr/local/lib/uhd/examples# ./benchmark_rate =
--args=3D"master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.15.2,addr=3D192=
.168.15.2,use_dpdk=3D1,serial=3D3257310,name=3Dni-x4xx-3257310,product=3Dx=
410,type=3Dx4xx" --duration 3 --rx_rate 245.76e6 &nbsp;--tx_rate =
245.76e6</font></div><div><font face=3D"Menlo"><br></font></div><div><font=
 face=3D"Menlo">[INFO] [UHD] linux; GNU C++ version 11.3.0; =
Boost_107400; DPDK_21.11; =
UHD_4.4.0.HEAD-33-g4a77791c</font></div><div><font =
face=3D"Menlo">[WARNING] [PREFS] Loaded config from /root/.uhd. This =
location is considered deprecated, consider moving your config file to =
/root/.config instead.</font></div><div><font face=3D"Menlo">EAL: =
Detected CPU lcores: 96</font></div><div><font face=3D"Menlo">EAL: =
Detected NUMA nodes: 2</font></div><div><font face=3D"Menlo">EAL: =
Detected shared linkage of DPDK</font></div><div><font face=3D"Menlo">EAL:=
 Multi-process socket /var/run/dpdk/rte/mp_socket</font></div><div><font =
face=3D"Menlo">EAL: Selected IOVA mode 'VA'</font></div><div><font =
face=3D"Menlo">EAL: VFIO support initialized</font></div><div><font =
face=3D"Menlo">EAL: Using IOMMU type 1 (Type 1)</font></div><div><font =
face=3D"Menlo">EAL: Probe PCI driver: net_ice (8086:1592) device: =
0000:98:00.1 (socket 1)</font></div><div><font =
face=3D"Menlo">ice_load_pkg_type(): Active package is: 1.3.28.0, ICE OS =
Default Package (double VLAN mode)</font></div><div><font =
face=3D"Menlo">TELEMETRY: No legacy callbacks, legacy socket not =
created</font></div><div><font face=3D"Menlo">ice_set_rx_function(): =
Using AVX2 OFFLOAD Vector Scattered Rx (port 0).</font></div><div><font =
face=3D"Menlo">ice_set_tx_function(): Using AVX2 OFFLOAD Vector Tx (port =
0).</font></div><div><font face=3D"Menlo">[00:00:00.000229] Creating the =
usrp device with: =
master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.15.2,addr=3D192.168.15.2,=
use_dpdk=3D1,serial=3D3257310,name=3Dni-x4xx-3257310,product=3Dx410,type=3D=
x4xx...</font></div><div><font face=3D"Menlo">Error: LookupError: =
KeyError: No devices found for -----&gt;</font></div><div><font =
face=3D"Menlo">Device Address:</font></div><div><font =
face=3D"Menlo">&nbsp; &nbsp; master_clock_rate: =
245.76e6</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; mgmt_addr: =
192.168.15.2</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; addr: =
192.168.15.2</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; =
use_dpdk: 1</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; serial: =
3257310</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; name: =
ni-x4xx-3257310</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; =
product: x410</font></div><div><font face=3D"Menlo">&nbsp; &nbsp; type: =
x4xx</font></div></div></body></html>=

--Apple-Mail=_44F12A49-B032-439D-A129-8DDEF542F1C3--

--===============8225144040137318113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8225144040137318113==--
