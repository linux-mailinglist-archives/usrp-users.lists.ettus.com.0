Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3868755C00C
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jun 2022 12:04:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2D743813EA
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jun 2022 06:04:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656410680; bh=YqzhsuzW/AHxagslCQTBoCCd5xwa94BDTGa/Cal+j6w=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dCJMwrwQD4MzcCBson9i1/2oh60hBUcPHP/9byA+O6dPJl7nQDuxOowOMVTh8ATLd
	 oMJoZHFdazScrSKbjpO+6Psn4Ub4dNcQfn7hSjx/9C+hi6ZuMQSShod40LUDyrCMca
	 ea/w01+As7voXZRVfzSbgZlDywU2jeQliP6U/prU2fwAvc3QnYGAE4ynV0kutQ2pCD
	 otmM14xIO3tC2jUW1m71NhGrUq/Q4PlVUve2zfrICzDLv4vSmIqK/Is1upZKwDjLMn
	 i+DekDxRV3h5LN/NiK7BsVej81b3oMz2LTc/1NrbphdZe+M5CIgLxEXL9xGXTZHEdo
	 K44rsPWbz7a5Q==
Received: from mailrelay.tu-berlin.de (mailrelay.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AD02384537
	for <usrp-users@lists.ettus.com>; Tue, 28 Jun 2022 06:02:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="i0fdsf1T";
	dkim-atps=neutral
Received: from SPMA-04.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 0D5CC974E1D_2BAD1CCB
	for <usrp-users@lists.ettus.com>; Tue, 28 Jun 2022 10:02:52 +0000 (GMT)
Received: from mail.tu-berlin.de (bulkmail.tu-berlin.de [141.23.12.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-04.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 01DAD970DED_2BAD1CBF
	for <usrp-users@lists.ettus.com>; Tue, 28 Jun 2022 10:02:51 +0000 (GMT)
Received: from ex-03.svc.tu-berlin.de (10.150.18.7) by ex-06.svc.tu-berlin.de
 (10.150.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 28 Jun
 2022 12:02:50 +0200
Received: from ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d]) by
 ex-03.svc.tu-berlin.de ([fe80::90c2:55f5:8c3d:e95d%7]) with mapi id
 15.02.0986.022; Tue, 28 Jun 2022 12:02:50 +0200
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: dpdk found no ports
Thread-Index: AQHYitWPdTJVcHTbV0+/tIH3nPq3WQ==
Date: Tue, 28 Jun 2022 10:02:50 +0000
Message-ID: <84370e41251b4c16a7cf9fe2106b47f5@campus.tu-berlin.de>
Accept-Language: en-CA, de-DE, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=o7OHsiC5VoK7M+PwWoda6ytBkMOnu8lrUBIWFhQFmPA=; b=i0fdsf1T/Q8kxUA9JZIHZ8Bi7KBwIF6Cc3fz+3dclhqlrCiQSiovRYH3+54tuA+BcEhk3juaKs9kLIXvm+a2G6I5Cy8Ye9NGaPi6s5UlqnpF/sb5cuPcGl7rqCZ8rBWbtiZYEoIEd5s74+eXG/NwPyn3SjTizz0RsgGwSOa+bo4=
Message-ID-Hash: Y5NBFI3ZPSKAH272IFJBZLLCOHLSR4HN
X-Message-ID-Hash: Y5NBFI3ZPSKAH272IFJBZLLCOHLSR4HN
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] dpdk found no ports
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y5NBFI3ZPSKAH272IFJBZLLCOHLSR4HN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1331937696964674212=="

--===============1331937696964674212==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_84370e41251b4c16a7cf9fe2106b47f5campustuberlinde_"

--_000_84370e41251b4c16a7cf9fe2106b47f5campustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,


i'm trying benchmark_rate with dpdk17.11 and uhd 3.15 on Ubuntu20.04, howev=
er I had some error.


./benchmark_rate --rx_rate 20e6 --rx_subdev "A:0 B:0" --rx_channels 0,1 --t=
x_rate 20e6 --tx_subdev "A:0 B:0" --tx_channels 0,1 --args "addr=3D192.168.=
30.2,second_addr=3D192.168.40.2,master_clock_rate=3D200e6,use_dpdk=3D1"

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_3.15.0.0-74-ge=
35f66e8
EAL: Detected 12 lcore(s)
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: Error - exiting with code: 1
  Cause: Error: Found no ports


I have created a folder with all librte_pmd_* and librte_mempool_* librarie=
s at /usr/local/lib/dpdk/ . My uhd.conf:


   [use_dpdk=3D1]
   dpdk-mtu=3D9000
   dpdk-driver=3D/usr/local/lib/dpdk/
   dpdk-corelist=3D2,3,4
   dpdk-num-mbufs=3D4095
   dpdk-mbufs-cache-size=3D315

   [dpdk-mac=3Df8:f2:1e:a9:7a:81]
   dpdk-io-cpu=3D3
   dpdk-ipv4=3D192.168.30.1/24

   [dpdk-mac=3Df8:f2:1e:a9:7a:80]
   dpdk-io-cpu=3D4
   dpdk-ipv4=3D192.168.40.1/24


Does anyone have similar problem? I would appreciate the help


Sincerely

Kasim


--_000_84370e41251b4c16a7cf9fe2106b47f5campustuberlinde_
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
<p>Dear all,</p>
<p><br>
</p>
<p>i'm trying benchmark_rate with dpdk17.11 <span>and uhd 3.15</span> on Ub=
untu20.04, however I had some error.</p>
<p><br>
</p>
<p></p>
<div>./benchmark_rate --rx_rate 20e6 --rx_subdev &quot;A:0 B:0&quot; --rx_c=
hannels 0,1 --tx_rate 20e6 --tx_subdev &quot;A:0 B:0&quot; --tx_channels 0,=
1 --args &quot;addr=3D192.168.30.2,second_addr=3D192.168.40.2,master_clock_=
rate=3D200e6,use_dpdk=3D1&quot;<br>
<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 9.4.0; Boost_107100; UHD_3.15.0=
.0-74-ge35f66e8<br>
EAL: Detected 12 lcore(s)<br>
EAL: No free hugepages reported in hugepages-1048576kB<br>
EAL: Probing VFIO support...<br>
EAL: VFIO support initialized<br>
EAL: Error - exiting with code: 1<br>
&nbsp; Cause: Error: Found no ports<br>
<br>
</div>
<p></p>
<p>I have created a folder with all <span>librte_pmd_* and librte_mempool_*=
 libraries</span> at
<span>/usr/local/lib/dpdk/</span> . My uhd.conf:</p>
<p></p>
<div><br>
&nbsp; &nbsp;<br>
&nbsp;&nbsp; [use_dpdk=3D1]<br>
&nbsp;&nbsp; dpdk-mtu=3D9000<br>
&nbsp;&nbsp; dpdk-driver=3D/usr/local/lib/dpdk/<br>
&nbsp;&nbsp; dpdk-corelist=3D2,3,4<br>
&nbsp;&nbsp; dpdk-num-mbufs=3D4095<br>
&nbsp;&nbsp; dpdk-mbufs-cache-size=3D315<br>
&nbsp; &nbsp;<br>
&nbsp;&nbsp; [dpdk-mac=3Df8:f2:1e:a9:7a:81]<br>
&nbsp;&nbsp; dpdk-io-cpu=3D3<br>
&nbsp;&nbsp; dpdk-ipv4=3D192.168.30.1/24<br>
&nbsp; &nbsp;<br>
&nbsp;&nbsp; [dpdk-mac=3Df8:f2:1e:a9:7a:80]<br>
&nbsp;&nbsp; dpdk-io-cpu=3D4<br>
&nbsp;&nbsp; dpdk-ipv4=3D192.168.40.1/24</div>
<div><br>
</div>
<p></p>
<p>Does anyone have similar problem? I would appreciate the help</p>
<p><br>
</p>
<p>Sincerely<br>
</p>
<p>Kasim<br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_84370e41251b4c16a7cf9fe2106b47f5campustuberlinde_--

--===============1331937696964674212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1331937696964674212==--
