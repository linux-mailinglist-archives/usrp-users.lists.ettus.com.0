Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AD98D6B16
	for <lists+usrp-users@lfdr.de>; Fri, 31 May 2024 22:49:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 488E738579D
	for <lists+usrp-users@lfdr.de>; Fri, 31 May 2024 16:49:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717188575; bh=MTEyMQUYAPz8rnsZK4p7x9Q/rFeuEuMPvYm8AiG5Cwo=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=fCj46SNnJR0AYK4mMzxrEBXJa37XU+1kDQblVqy2QwA1axDYNGClMZctqRQj7ckN1
	 fiVRrcQ4YZom94aRrDoKGhNk7VOoo3wDtRQDdT+C9QvD5lznucs+1CYOYIasmxJwKg
	 Q93/f/K8uFrzhCzqAmGVJhtneJxiF20MNMuwITSSOVgDDm3uRLwKAhYV0uavcfSCwK
	 ctCAsgW6A+SSj3ZjyrhkH7TYKPhh2ybweEg5KDYWc7ocaVdrDw8AI6M34YAUvZGkbt
	 GSWRV9b4I7X2X1pNfHArQx6aTbZcfbbJWWceqT7yJViDhUfsRsPvJd1lQaMs0ndiCy
	 e9Nc1zP737MjA==
Received: from ma-mailsvcp-mx-lapp03.apple.com (ma-mailsvcp-mx-lapp03.apple.com [17.32.222.24])
	by mm2.emwd.com (Postfix) with ESMTPS id C9C98385620
	for <usrp-users@lists.ettus.com>; Fri, 31 May 2024 16:49:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=apple.com header.i=@apple.com header.b="hdt4BiOB";
	dkim-atps=neutral
Received: from rn-mailsvcp-mta-lapp01.rno.apple.com
 (rn-mailsvcp-mta-lapp01.rno.apple.com [10.225.203.149])
 by ma-mailsvcp-mx-lapp03.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0SED00VHFB60XJ10@ma-mailsvcp-mx-lapp03.apple.com> for
 usrp-users@lists.ettus.com; Fri, 31 May 2024 13:49:13 -0700 (PDT)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-31_14,2024-05-30_01,2024-05-17_01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type : date : from : message-id : mime-version : subject : to;
 s=20180706; bh=Bqsj9vJwkA3Fspe4a1xSPJF4sJx5a8sH7j+lXYbTV88=;
 b=hdt4BiOBnhynSB0lxlZPEK7GQgpRSC8mZhmVnCtrPZCSxr+/f2dOxz84xqactCmSrwLI
 2x5k8KYUd/EBukG6sdaNq/T87uSiA7O4cKNHULTj+CtIUB4toYObvRHmASGpG8wRNtEo
 6Sw/5sa1nwUvS02SlNWgzQON7cEyGqASo+Dvzz4/NUmEVQZj7KTPcKrmg2cyfNWk1Edb
 mZDjkJl/EvVRcz731VIiA0vqtlHtmRj5tPrVh0eD6plp6YtAMru67d1+l97uFfvPvwUm
 87QMKPh0E0hvYAz6c2Jyq0lfS+T3Tnv6d1CtFSbf256xilHlOQRqa6meQ8nJ04R6MAri uQ==
Received: from rn-mailsvcp-policy-lapp01.rno.apple.com
 (rn-mailsvcp-policy-lapp01.rno.apple.com [17.179.253.18])
 by rn-mailsvcp-mta-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0SED00DVSB60X860@rn-mailsvcp-mta-lapp01.rno.apple.com>
 for usrp-users@lists.ettus.com; Fri, 31 May 2024 13:49:12 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-policy-lapp01.rno.apple.com
 by rn-mailsvcp-policy-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.22.20230228 64bit (built Feb 28
 2023)) id <0SED00K00B17Y700@rn-mailsvcp-policy-lapp01.rno.apple.com> for
 usrp-users@lists.ettus.com; Fri, 31 May 2024 13:49:12 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-Va-E-CD: 25ce5ac884e04ed24638a24528edd524
X-Va-R-CD: a7b38143bb03b0fffcece4c1a91f4356
X-Va-ID: b6c24659-cae1-45f1-8476-02fcf26530b6
X-Va-CD: 0
X-V-A: 
X-V-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-V-E-CD: 25ce5ac884e04ed24638a24528edd524
X-V-R-CD: a7b38143bb03b0fffcece4c1a91f4356
X-V-ID: b9cdd351-105c-4514-95b6-50fdb41c533c
X-V-CD: 0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-31_14,2024-05-30_01,2024-05-17_01
Received: from smtpclient.apple ([17.11.230.160])
 by rn-mailsvcp-policy-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.22.20230228 64bit (built Feb 28
 2023))
 with ESMTPSA id <0SED00I4KB5Z8I00@rn-mailsvcp-policy-lapp01.rno.apple.com> for
 usrp-users@lists.ettus.com; Fri, 31 May 2024 13:49:11 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Message-id: <25F6545E-1375-4EFD-A780-398D92F12BD8@apple.com>
Date: Fri, 31 May 2024 13:49:01 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3774.500.171.1.1)
Message-ID-Hash: YDIA24CXRJIZUGLZGX6SHXWX76JFP7KE
X-Message-ID-Hash: YDIA24CXRJIZUGLZGX6SHXWX76JFP7KE
X-MailFrom: vlevin@apple.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK hangs when core 0 is not in uhd.conf
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YDIA24CXRJIZUGLZGX6SHXWX76JFP7KE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Victor Levin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Victor Levin <vlevin@apple.com>
Content-Type: multipart/mixed; boundary="===============3075547563698004208=="


--===============3075547563698004208==
Content-type: multipart/alternative;
 boundary="Apple-Mail=_CFFEAD9D-5E6C-4D4A-8EDC-F64FE50BFE0E"


--Apple-Mail=_CFFEAD9D-5E6C-4D4A-8EDC-F64FE50BFE0E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi all,=20

When I have core 0 in the uhd.conf file all is well and benchmark_rate =
works as expected. When core 0 is removed from the conf file below, the =
benchmark_rate call hangs.=20

> [use_dpdk=3D1]
> dpdk_mtu=3D9000
> dpdk_corelist=3D0,17,31,79
> dpdk_num_mbufs=3D4095
>=20
> [dpdk_mac=3D40:a6:b7:b0:5e:81]
> dpdk_lcore =3D 31
> dpdk_ipv4 =3D 192.168.13.1/24



Here=E2=80=99s where the system hangs when core 0 is removed from the =
list. Any ideas why this could be happening?

> /home# /usr/lib/uhd/examples/benchmark_rate --rx_rate 122.88e6 =
--rx_subdev "A:0 B:0" --rx_channels 0 --tx_rate 122.88e6 --tx_subdev =
"A:0 B:0" --tx_channels 0 --args =
"addr=3D192.168.13.13,mgmt_addr=3D192.168.12.12,master_clock_rate=3D245.76=
e6,use_dpdk=3D1"
>=20
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; =
UHD_4.6.0.HEAD-0-g50fa3baa
> EAL: Detected CPU lcores: 96
> EAL: Detected NUMA nodes: 2
> EAL: Detected shared linkage of DPDK
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: Selected IOVA mode 'PA'
> EAL: No available 2048 kB hugepages reported
> EAL: VFIO support initialized
> EAL: Probe PCI driver: net_ice (8086:1592) device: 0000:98:00.1 =
(socket 1)
> ice_load_pkg_type(): Active package is: 1.3.28.0, ICE OS Default =
Package (double VLAN mode)
> EAL: Cannot open /dev/vfio/141: Device or resource busy
> EAL: Failed to open VFIO group 141
> EAL: Requested device 0000:b1:00.1 cannot be used
> EAL: Cannot open /dev/vfio/142: Device or resource busy
> EAL: Failed to open VFIO group 142
> EAL: Requested device 0000:b2:00.0 cannot be used
> TELEMETRY: No legacy callbacks, legacy socket not created
> ice_set_rx_function(): Using AVX2 OFFLOAD Vector Scattered Rx (port =
0).
> ice_set_tx_function(): Using AVX2 OFFLOAD Vector Tx (port 0).
>=20
Thanks,
Victor


--Apple-Mail=_CFFEAD9D-5E6C-4D4A-8EDC-F64FE50BFE0E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><div>Hi =
all,&nbsp;</div><div><br></div><div>When I have core 0 in the uhd.conf =
file all is well and benchmark_rate works as expected. When core 0 is =
removed from the conf file below, the benchmark_rate call =
hangs.&nbsp;</div><div><br></div><div><div></div><blockquote =
type=3D"cite"><div><font =
face=3D"Menlo">[use_dpdk=3D1]</font></div><div><font =
face=3D"Menlo">dpdk_mtu=3D9000</font></div><div><font =
face=3D"Menlo">dpdk_corelist=3D<b>0</b>,17,31,79</font></div><div><font =
face=3D"Menlo">dpdk_num_mbufs=3D4095</font></div><div><font =
face=3D"Menlo"><br></font></div><div><font =
face=3D"Menlo">[dpdk_mac=3D40:a6:b7:b0:5e:81]</font></div><div><font =
face=3D"Menlo">dpdk_lcore =3D 31</font></div><div><font =
face=3D"Menlo">dpdk_ipv4 =3D =
192.168.13.1/24</font></div></blockquote></div><div><br></div><div><br></d=
iv><div>Here=E2=80=99s where the system hangs when core 0 is removed =
from the list. Any ideas why this could be =
happening?</div><div><br></div><div></div></div><blockquote =
type=3D"cite"><div><div><font face=3D"Menlo">/home# =
/usr/lib/uhd/examples/benchmark_rate --rx_rate 122.88e6 --rx_subdev "A:0 =
B:0" --rx_channels 0 --tx_rate 122.88e6 --tx_subdev "A:0 B:0" =
--tx_channels 0 --args =
"addr=3D192.168.13.13,mgmt_addr=3D192.168.12.12,master_clock_rate=3D245.76=
e6,use_dpdk=3D1"</font></div><div><font =
face=3D"Menlo"><br></font></div><div><font face=3D"Menlo">[INFO] [UHD] =
linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; =
UHD_4.6.0.HEAD-0-g50fa3baa</font></div><div><font face=3D"Menlo">EAL: =
Detected CPU lcores: 96</font></div><div><font face=3D"Menlo">EAL: =
Detected NUMA nodes: 2</font></div><div><font face=3D"Menlo">EAL: =
Detected shared linkage of DPDK</font></div><div><font face=3D"Menlo">EAL:=
 Multi-process socket /var/run/dpdk/rte/mp_socket</font></div><div><font =
face=3D"Menlo">EAL: Selected IOVA mode 'PA'</font></div><div><font =
face=3D"Menlo">EAL: No available 2048 kB hugepages =
reported</font></div><div><font face=3D"Menlo">EAL: VFIO support =
initialized</font></div><div><font face=3D"Menlo">EAL: Probe PCI driver: =
net_ice (8086:1592) device: 0000:98:00.1 (socket =
1)</font></div><div><font face=3D"Menlo">ice_load_pkg_type(): Active =
package is: 1.3.28.0, ICE OS Default Package (double VLAN =
mode)</font></div><div><font face=3D"Menlo">EAL: Cannot open =
/dev/vfio/141: Device or resource busy</font></div><div><font =
face=3D"Menlo">EAL: Failed to open VFIO group 141</font></div><div><font =
face=3D"Menlo">EAL: Requested device 0000:b1:00.1 cannot be =
used</font></div><div><font face=3D"Menlo">EAL: Cannot open =
/dev/vfio/142: Device or resource busy</font></div><div><font =
face=3D"Menlo">EAL: Failed to open VFIO group 142</font></div><div><font =
face=3D"Menlo">EAL: Requested device 0000:b2:00.0 cannot be =
used</font></div><div><font face=3D"Menlo">TELEMETRY: No legacy =
callbacks, legacy socket not created</font></div><div><font =
face=3D"Menlo">ice_set_rx_function(): Using AVX2 OFFLOAD Vector =
Scattered Rx (port 0).</font></div><div><font =
face=3D"Menlo">ice_set_tx_function(): Using AVX2 OFFLOAD Vector Tx (port =
0).</font></div></div><br></blockquote><div>
<div dir=3D"auto" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0); letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; overflow-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: =
after-white-space;"><div>Thanks,</div><div>Victor</div></div>

</div>

<br></body></html>=

--Apple-Mail=_CFFEAD9D-5E6C-4D4A-8EDC-F64FE50BFE0E--

--===============3075547563698004208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3075547563698004208==--
