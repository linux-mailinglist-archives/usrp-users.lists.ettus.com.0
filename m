Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB13F32A9BD
	for <lists+usrp-users@lfdr.de>; Tue,  2 Mar 2021 19:53:40 +0100 (CET)
Received: from [::1] (port=45034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHA9J-0002dN-Nz; Tue, 02 Mar 2021 13:53:37 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:42750)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <matthias.mehlhose@hhi.fraunhofer.de>)
 id 1lHA9E-0002Zf-Kn
 for usrp-users@lists.ettus.com; Tue, 02 Mar 2021 13:53:32 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C491C7C1C9
 for <usrp-users@lists.ettus.com>; Tue,  2 Mar 2021 19:52:46 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AED827C12D
 for <usrp-users@lists.ettus.com>; Tue,  2 Mar 2021 19:52:46 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.103])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Tue,  2 Mar 2021 19:52:46 +0100 (CET)
Received: from mxsrv5.fe.hhi.de (172.16.0.103) by mxsrv5.fe.hhi.de
 (172.16.0.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Tue, 2 Mar 2021
 19:52:50 +0100
Received: from mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9]) by
 mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9%6]) with mapi id 15.01.2106.003; 
 Tue, 2 Mar 2021 19:52:50 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: VMXNET3 DPDK error on discover MTU
Thread-Index: AQHXD5U+lyuwLQ8xGUauybN6tbpVHQ==
Date: Tue, 2 Mar 2021 18:52:50 +0000
Message-ID: <2dfd658d21b74e20a7d0fa32f6319202@hhi.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] VMXNET3 DPDK error on discover MTU
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Mehlhose, Matthias via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Mehlhose, Matthias" <matthias.mehlhose@hhi.fraunhofer.de>
Content-Type: multipart/mixed; boundary="===============9094786091535823881=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============9094786091535823881==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_2dfd658d21b74e20a7d0fa32f6319202hhifraunhoferde_"

--_000_2dfd658d21b74e20a7d0fa32f6319202hhifraunhoferde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking for help with my setup
Im using UHD-3.15.LTS + DPDK 17.10 within my ESXI VM.
I think, the UHD driver can not read the MTU size from VMXNET3 device.
What can I do?

Thanks


---- command line start ---
./run_benchmark_usrp.sh

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-62-g7=
a3f1516
EAL: Detected 8 lcore(s)
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:03:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL:   using IOMMU type 8 (No-IOMMU)
EAL: Ignore mapping IO port bar(3)
EAL: PCI device 0000:05:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: PCI device 0000:0b:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: Ignore mapping IO port bar(3)
EAL: PCI device 0000:0d:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: PCI device 0000:13:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: Ignore mapping IO port bar(3)
EAL: PCI device 0000:14:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: PCI device 0000:1b:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: Ignore mapping IO port bar(3)
EAL: PCI device 0000:1c:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 15ad:7b0 net_vmxnet3
EAL: Waiting for links to come up...
EAL: Init DONE!
EAL: Starting I/O threads!
[00:00:00.000002] Creating the usrp device with: type=3Dn3xx,master_clock_r=
ate=3D122.88e6,time_source=3Dexternal,clock_source=3Dexternal,mgmt_addr0=3D=
192.168.110.3,addr0=3D192.168.111.3,second_addr0=3D192.168.112.3,use_dpdk=
=3D1...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.110.3,type=3Dn3xx,product=3Dn310,serial=3D316A5B5,claimed=3DFalse,ma=
ster_clock_rate=3D122.88e6,time_source=3Dexternal,clock_source=3Dexternal,m=
gmt_addr0=3D192.168.110.3,addr0=3D192.168.111.3,second_addr0=3D192.168.112.=
3,use_dpdk=3D1
[ERROR] [MPMD] Failure during block enumeration: AssertionError: port_id >=
=3D 0
  in size_t {anonymous}::discover_mtu(const string&, const string&, size_t,=
 size_t, double)
  at /home/demo/install/uhd/host/lib/usrp/mpmd/mpmd_xport_ctrl_dpdk_udp.cpp=
:79

[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3De=
xternal,use_dpdk=3D1,product=3Dn310,time_source=3Dexternal,master_clock_rat=
e=3D122.88e6,second_addr=3D192.168.112.3,mgmt_addr=3D192.168.110.3'.
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
---- command line end ----


--_000_2dfd658d21b74e20a7d0fa32f6319202hhifraunhoferde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p></p>
<span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2"><sp=
an style=3D"font-size:10pt;">Hi,</span></font></span></font></span><br>
<span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2"><sp=
an style=3D"font-size:10pt;"></span></font></span></font></span>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2=
"><span style=3D"font-size:10pt;"><br>
I'm looking for help with my setup<br>
</span></font></span></font></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2=
"><span style=3D"font-size:10pt;"><span><font size=3D"2"><span style=3D"fon=
t-size:10pt;"><font size=3D"2"><span style=3D"font-size:10pt;">Im using UHD=
-3.15.LTS &#43; DPDK 17.10 within my ESXI VM.</span></font></span></font></=
span><br>
</span></font></span></font></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2=
"><span style=3D"font-size:10pt;">I think, the UHD driver can not read the =
MTU size from VMXNET3 device.</span></font></span></font></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2=
"><span style=3D"font-size:10pt;">What can I do?</span></font></span></font=
></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2=
"><span style=3D"font-size:10pt;"><br>
Thanks</span></font><br>
</span></font></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><br>
</span></font></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;"><br>
</span></font></span></div>
<div><span><font size=3D"2"><span style=3D"font-size:10pt;">---- command li=
ne start ---</span></font></span><br>
</div>
<div>./run_benchmark_usrp.sh<br>
<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 9.3.0; Boost_107100; UHD_3.15.0=
.0-62-g7a3f1516<br>
EAL: Detected 8 lcore(s)<br>
EAL: Probing VFIO support...<br>
EAL: VFIO support initialized<br>
EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL:&nbsp;&nbsp; using IOMMU type 8 (No-IOMMU)<br>
EAL: Ignore mapping IO port bar(3)<br>
EAL: PCI device 0000:05:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: PCI device 0000:0b:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: Ignore mapping IO port bar(3)<br>
EAL: PCI device 0000:0d:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: PCI device 0000:13:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: Ignore mapping IO port bar(3)<br>
EAL: PCI device 0000:14:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: PCI device 0000:1b:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: Ignore mapping IO port bar(3)<br>
EAL: PCI device 0000:1c:00.0 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 15ad:7b0 net_vmxnet3<br>
EAL: Waiting for links to come up...<br>
EAL: Init DONE!<br>
EAL: Starting I/O threads!<br>
[00:00:00.000002] Creating the usrp device with: type=3Dn3xx,master_clock_r=
ate=3D122.88e6,time_source=3Dexternal,clock_source=3Dexternal,mgmt_addr0=3D=
192.168.110.3,addr0=3D192.168.111.3,second_addr0=3D192.168.112.3,use_dpdk=
=3D1...<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.110.3,type=3Dn3xx,product=3Dn310,serial=3D316A5B5,claimed=3DFalse,ma=
ster_clock_rate=3D122.88e6,time_source=3Dexternal,clock_source=3Dexternal,m=
gmt_addr0=3D192.168.110.3,addr0=3D192.168.111.3,second_addr0=3D192.168.112.=
3,use_dpdk=3D1<br>
[ERROR] [MPMD] Failure during block enumeration: AssertionError: port_id &g=
t;=3D 0<br>
&nbsp; in size_t {anonymous}::discover_mtu(const string&amp;, const string&=
amp;, size_t, size_t, double)<br>
&nbsp; at /home/demo/install/uhd/host/lib/usrp/mpmd/mpmd_xport_ctrl_dpdk_ud=
p.cpp:79<br>
<br>
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3De=
xternal,use_dpdk=3D1,product=3Dn310,time_source=3Dexternal,master_clock_rat=
e=3D122.88e6,second_addr=3D192.168.112.3,mgmt_addr=3D192.168.110.3'.<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
<font size=3D"2"><span style=3D"font-size:10pt;">---- command line end ----=
</span></font><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_2dfd658d21b74e20a7d0fa32f6319202hhifraunhoferde_--



--===============9094786091535823881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9094786091535823881==--


