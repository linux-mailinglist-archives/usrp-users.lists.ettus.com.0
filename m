Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F76355557
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 15:38:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80245384097
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 09:38:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="hf7OuaB0";
	dkim-atps=neutral
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id AA4C9383AE2
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 09:37:19 -0400 (EDT)
Received: from SPMA-01.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 03EBD7E0868_6C640EB
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 13:37:18 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-01.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 629DE80574D_6C640DF
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 13:37:17 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-03.tubit.win.tu-berlin.de (130.149.6.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.5;
 Tue, 6 Apr 2021 15:37:17 +0200
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0858.002;
 Tue, 6 Apr 2021 15:37:17 +0200
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: dpdk, VFIO group is not viable
Thread-Index: AQHXKun12PQSh2RT4kaEqQ+d+ki8jg==
Date: Tue, 6 Apr 2021 13:37:16 +0000
Message-ID: <e642027b70c841ec87fde1edc61dcabb@campus.tu-berlin.de>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=FDdGVR8B+c9fZqq5jhzvG5EXGuiO7J8IzZyFqfp29Nk=; b=hf7OuaB0KNiMNUnkPlwJSu/n586M3dPC6/1aj/jdt5VIWSjqbqzXhkmWGA1T4wCKpeoGjGsY2grjfT5JD90sM66fMe/1uaHmStCh7+5gLcoXkOK992NC5GRIPwdGjnvoIj2Mvf4ZwSAR5b77tHe9fwh9hacERCZCuO+hgGppZE8=
Message-ID-Hash: FEMY4I3ETIYCCLXOIPEROVIJSRMOIAFQ
X-Message-ID-Hash: FEMY4I3ETIYCCLXOIPEROVIJSRMOIAFQ
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] dpdk, VFIO group is not viable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FEMY4I3ETIYCCLXOIPEROVIJSRMOIAFQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3342147568821451510=="

--===============3342147568821451510==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_e642027b70c841ec87fde1edc61dcabbcampustuberlinde_"

--_000_e642027b70c841ec87fde1edc61dcabbcampustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Ettus team,


I followed the instruction of https://kb.ettus.com/Getting_Started_with_DPD=
K_and_UHD to enable dpdk for my X310, however I have an error when I execut=
e benchmark_rate as sudo su


[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-93-g3b=
9ced8f
EAL: Detected 4 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:00:1f.6 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:15d7 net_e1000_em
EAL: PCI device 0000:0e:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   0000:0e:00.0 VFIO group is not viable!
EAL: Requested device 0000:0e:00.0 cannot be used
EAL: PCI device 0000:0e:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   0000:0e:00.1 VFIO group is not viable!
EAL: Requested device 0000:0e:00.1 cannot be used
[ERROR] [DPDK] No available DPDK devices (ports) found!
[ERROR] [UHD] Device discovery error: RuntimeError: No available DPDK devic=
es (ports) found!
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL in=
itialization
[00:00:00.000506] Creating the usrp device with: addr=3D192.168.30.2,second=
_addr=3D192.168.40.2,use_dpdk=3D1...
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initiali=
zation
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL in=
itialization
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.30.2
    second_addr: 192.168.40.2
    use_dpdk: 1

Why is 0000:0e:00.1 VFIO group is not viable!? I have checked dpdk-devbind =
--status-dev net and get

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:0e:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe
0000:0e:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe

Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:00:1f.6 'Ethernet Connection (4) I219-LM 15d7' if=3Denp0s31f6 drv=3De1=
000e unused=3Dvfio-pci
0000:02:00.0 'Wireless 8265 / 8275 24fd' if=3Dwlp2s0 drv=3Diwlwifi unused=
=3Dvfio-pci


which seems to be fine.


thank you for your help


sincerely


Kasim

--_000_e642027b70c841ec87fde1edc61dcabbcampustuberlinde_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Dear Ettus team,</p>
<p><br>
</p>
<p>I followed the instruction of <a href=3D"https://kb.ettus.com/Getting_St=
arted_with_DPDK_and_UHD" class=3D"OWAAutoLink" id=3D"LPlnk765227" previewre=
moved=3D"true">
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a> to enable dpdk f=
or my X310, however I have an error when I execute
<code>benchmark_rate</code> as sudo su</p>
<p><br>
</p>
<p></p>
<div>
<pre class=3D"western" style=3D"text-align: left"><font style=3D"font-size:=
 10pt" size=3D"2">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.3.0; Boost_=
107100; UHD_4.0.0.0-93-g3b9ced8f</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: Detected 4 lcore(s)</font>=
=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: Detected 1 NUMA nodes</font=
>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: Multi-process socket /var/r=
un/dpdk/rte/mp_socket</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: No free hugepages reported =
in hugepages-1048576kB</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: Probing VFIO support...</fo=
nt>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: VFIO support initialized</f=
ont>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: PCI device 0000:00:1f.6 on =
NUMA socket -1</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   Invalid NUMA socket, defa=
ult to 0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   probe driver: 8086:15d7 n=
et_e1000_em</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: PCI device 0000:0e:00.0 on =
NUMA socket -1</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   Invalid NUMA socket, defa=
ult to 0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   probe driver: 8086:10fb n=
et_ixgbe</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   0000:0e:00.0 VFIO group i=
s not viable!</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: Requested device 0000:0e:00=
.0 cannot be used</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: PCI device 0000:0e:00.1 on =
NUMA socket -1</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   Invalid NUMA socket, defa=
ult to 0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   probe driver: 8086:10fb n=
et_ixgbe</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL:   0000:0e:00.1 VFIO group i=
s not viable!</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: Requested device 0000:0e:00=
.1 cannot be used</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [DPDK] No available DPDK=
 devices (ports) found!</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [UHD] Device discovery e=
rror: RuntimeError: No available DPDK devices (ports) found!</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: FATAL: already called initi=
alization.</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: already called initializati=
on.</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [DPDK] Error with EAL in=
itialization</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [X300] X300 Network disc=
overy error RuntimeError: Error with EAL initialization</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[00:00:00.000506] Creating the u=
srp device with: addr=3D192.168.30.2,second_addr=3D192.168.40.2,use_dpdk=3D=
1...</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: FATAL: already called initi=
alization.</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: already called initializati=
on.</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [DPDK] Error with EAL in=
itialization</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [UHD] Device discovery e=
rror: RuntimeError: Error with EAL initialization</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: FATAL: already called initi=
alization.</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">EAL: already called initializati=
on.</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [DPDK] Error with EAL in=
itialization</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">[ERROR] [X300] X300 Network disc=
overy error RuntimeError: Error with EAL initialization</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">Error: LookupError: KeyError: No=
 devices found for -----&gt;</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">Device Address:</font>=0A=
    <font style=3D"font-size: 10pt" size=3D"2">addr: 192.168.30.2</font>=0A=
    <font style=3D"font-size: 10pt" size=3D"2">second_addr: 192.168.40.2</f=
ont>=0A=
    <font style=3D"font-size: 10pt" size=3D"2">use_dpdk: 1</font></pre>
</div>
Why is <font style=3D"font-size: 10pt" size=3D"2">0000:0e:00.1 VFIO group i=
s not viable!</font>? I have checked dpdk-devbind --status-dev net and get
<span id=3D"ms-rterangepaste-end"></span><br>
<div><br>
Network devices using DPDK-compatible driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:0e:00.0 '82599ES 10-Gigabit SFI/SFP&#43; Network Connection 10fb' drv=
=3Dvfio-pci unused=3Dixgbe<br>
0000:0e:00.1 '82599ES 10-Gigabit SFI/SFP&#43; Network Connection 10fb' drv=
=3Dvfio-pci unused=3Dixgbe<br>
<br>
Network devices using kernel driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:00:1f.6 'Ethernet Connection (4) I219-LM 15d7' if=3Denp0s31f6 drv=3De1=
000e unused=3Dvfio-pci
<br>
0000:02:00.0 'Wireless 8265 / 8275 24fd' if=3Dwlp2s0 drv=3Diwlwifi unused=
=3Dvfio-pci <br>
</div>
<br>
<p></p>
<p>which seems to be fine.</p>
<p><br>
</p>
<p>thank you for your help</p>
<p><br>
</p>
<p>sincerely</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
</body>
</html>

--_000_e642027b70c841ec87fde1edc61dcabbcampustuberlinde_--

--===============3342147568821451510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3342147568821451510==--
