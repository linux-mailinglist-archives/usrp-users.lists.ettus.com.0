Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1259D052C
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2019 03:23:45 +0200 (CEST)
Received: from [::1] (port=49722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iI0hW-0002oC-7n; Tue, 08 Oct 2019 21:23:38 -0400
Received: from mail-oln040092004103.outbound.protection.outlook.com
 ([40.92.4.103]:60541 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iI0hS-0002im-5d
 for usrp-users@lists.ettus.com; Tue, 08 Oct 2019 21:23:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jqu3cXAtvTAc7w1uwvNqBVJ2w3KZDIovkxd6gSMTWiv1zed4+vEr2E52ZzFHduWsWtIDcRNWOcwlt6I2SC3W0endMLDmFrXuWDdXB0qJmBnaEvnxd4a6J0XmNcRMLwD1SBwlTpidb060Tom0EqR3uJq9nUmLOKtuop7BaVGIU4zSaKH7nujCFU3jOjHtVwPL/AteqMTdHqpECbin2FCteefkNKH4vwxlAPWBA/Fr/jQHL17I8jUrHQPrAJKQY8+qGxT7ZRJ4C+xCVt8heFzOd9i81wnC/Z493hDN5WzijCqeQjxsaUqHcup7JmwrrxZzkRK8EAN6vyi/9HBo3Y+g4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89AgXzOEqcwntoadqAkVgMXFOrUbkY/n+2JFpTG6NY4=;
 b=aj9HDvqZ0MNk1vteMfvyhHXNxcabZrpW9cpBAyOzK2XSL+IMztrSrcnNx9HhJX2s42+hrDEmGU+brIQQRkONaFqbhDx+i8QeFWvTaTW/I3KvN5SYlQUa81zITXIfcQL981N31oIv9IxG7fg0Qc/6f8fowTqZRn+mgXFnqjFS9wTxI/2tkS6sag4W7S+3rYAlg0f+E7+AXLp1FugLjXNyIUj5OvtGCbixBEXf9en5l22m5VhO5KQNjEKql8GPtHA1mSn5Zn4wNC1L+wtdAsK/bI7/Ja/ub/emzfR39KJnAFcngehncghk8+luS6DFvbGHQeIgNC1ZGTEgBiI2rNkMRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89AgXzOEqcwntoadqAkVgMXFOrUbkY/n+2JFpTG6NY4=;
 b=A0rZPMQHcO8mRjZnQvozLScbe8h7Uc69gHq63nZluKczAK8kzWr8dURAFlkU+N7A5qtIGxfpRrgC3LAUX2MkZ1SzMPm5dNAPyYyHLJR31mUn6CQ2a6eC/vHJXet7odKBBlpvkFBXJ+WthO0A2Pkaay8wwg5JfYzMmt1CoWGB07rnr6yNaPCa/W4W08KDT8H4/XZyZ0chZl8rrrOPJ2arRYz3QkyNPpODFwHMHCAOKfGjK0cpoff79MDWim3JIBHb2OoxQtchBhYiHZq5URY86RPgi9fzRBNGHcE1yYzqrU92G7FiwQU+9qZr3nRin+u3oQ2VDihkis5RRBx2xTn4sA==
Received: from BL2NAM02FT062.eop-nam02.prod.protection.outlook.com
 (10.152.76.54) by BL2NAM02HT249.eop-nam02.prod.protection.outlook.com
 (10.152.77.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.21; Wed, 9 Oct
 2019 01:22:52 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com (10.152.76.57) by
 BL2NAM02FT062.mail.protection.outlook.com (10.152.77.57) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2327.21 via Frontend Transport; Wed, 9 Oct 2019 01:22:52 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::99aa:bb07:1c06:655d]) by CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::99aa:bb07:1c06:655d%4]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 01:22:52 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD / RFNoC Versions and Flowgraph Error with X310
Thread-Index: AQHVfj+Gp3/edMP8FkCHoQeZ6iJQYg==
Date: Wed, 9 Oct 2019 01:22:52 +0000
Message-ID: <CY4PR19MB098458DC00A7673A6D584A11A4950@CY4PR19MB0984.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:CC8ED98A51FAF3F746988031BCA87F39AEB692B65914CC59A751045C1E61BF91;
 UpperCasedChecksum:722FC3F2B5A30CC536D8B11A66A5520B9F5BA72293634E5254EAE16C55D177C9;
 SizeAsReceived:6655; Count:41
x-tmn: [gcDDP8cVdk1m4aSZgMEM9wIQismaJRzf]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: BL2NAM02HT249:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Agd5HYKAtUmKtCnbs0N7AsxzLbyidWn/tTHCryVNg660AiwmKxTAAtym8iNTM2fZfe2SGOY2SM440nAZhJHYFWZLqRoJ1tU+zHL2N795gLTOys+gx0JxQTdjXF3vJBxtErrL6smwntoOJzA5bHctNj+/zFtxzNxCNf6dZp3auyiO7SkHLwhzycWGkudXRf7
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 614dd164-a8c9-4a9f-9688-08d74c5734ae
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 01:22:52.3258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT249
Subject: [USRP-users] UHD / RFNoC Versions and Flowgraph Error with X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============7011015185920771953=="
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

--===============7011015185920771953==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB098458DC00A7673A6D584A11A4950CY4PR19MB0984namp_"

--_000_CY4PR19MB098458DC00A7673A6D584A11A4950CY4PR19MB0984namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have been trying to set up an environment for using RFNoC on an X310.  It=
 was running well before I tried to update the to using RFNoC according the=
 the application note.  I'm wondering if I have an error relating to a vers=
ion of UHD correlating to the other parts (gr-ettus, gnuradio, fpga).  I fe=
el like I cannot trust documentation I see (like the X310 product descripti=
on calling out Vivado 2015, but a recent email calling out 2017, and an ear=
lier question that caused an application note to be deprecated).

I have two laptops which show the uhd (git branch) at version rfnoc-devel, =
and gr-ettus at master.  One will run a flowgraph with RFNoC blocks, and th=
e other will get the error below with the same flowgraph (error on last lin=
e).  I'm just trying to figure out what direction to go before I delete eve=
rything and start over.  Similar questions about similar errors seemed to r=
elated to UHD versions, which I why I'm starting there.

Thanks,
Jeff

[32;1m[INFO] [UHD] =1B[39;0mlinux; GNU C++ version 7.4.0; Boost_106501; UHD=
_4.0.0.rfnoc-devel-702-geec24d7b
=1B[32;1m[INFO] [X300] =1B[39;0mX300 initialization sequence...
=1B[32;1m[INFO] [X300] =1B[39;0mMaximum frame size: 1472 bytes.
=1B[32;1m[INFO] [X300] =1B[39;0mRadio 1x clock: 200 MHz
=1B[32;1m[INFO] [GPS] =1B[39;0mFound an internal GPSDO: LC_XO, Firmware Rev=
 0.929a
=1B[32;1m[INFO] [0/DmaFIFO_0] =1B[39;0mInitializing block control (NOC ID: =
0xF1F0D00000000000)
=1B[32;1m[INFO] [0/DmaFIFO_0] =1B[39;0mBIST passed (Throughput: 1305 MB/s)
=1B[32;1m[INFO] [0/DmaFIFO_0] =1B[39;0mBIST passed (Throughput: 1307 MB/s)
=1B[32;1m[INFO] [0/Radio_0] =1B[39;0mInitializing block control (NOC ID: 0x=
12AD100000000001)
=1B[32;1m[INFO] [0/Radio_1] =1B[39;0mInitializing block control (NOC ID: 0x=
12AD100000000001)
=1B[32;1m[INFO] [0/DDC_0] =1B[39;0mInitializing block control (NOC ID: 0xDD=
C0000000000000)
=1B[32;1m[INFO] [0/DDC_1] =1B[39;0mInitializing block control (NOC ID: 0xDD=
C0000000000000)
=1B[32;1m[INFO] [0/DUC_0] =1B[39;0mInitializing block control (NOC ID: 0xD0=
C0000000000000)
=1B[32;1m[INFO] [0/DUC_1] =1B[39;0mInitializing block control (NOC ID: 0xD0=
C0000000000000)
Finding block for: Radio_0
Mapped external port 0 to 0
Mapped port 0 to 0/Radio_0
Mapped external port 1 to 1
Mapped port 1 to 0/Radio_0
TX args:
RX args:
0/Radio_0 has 1 input ports
0/Radio_0 has 2 output ports
getting block control for port 0
Finding block for: Radio_0
Mapped external port 0 to 0
Mapped port 0 to 0/Radio_0
Mapped external port 1 to 1
Mapped port 1 to 0/Radio_0
TX args:
RX args:
0/Radio_0 has 1 input ports
0/Radio_0 has 2 output ports
getting block control for port 0
Finding block for: DUC
Mapped external port 0 to 0
Mapped port 0 to 0/DUC_0
TX args:
RX args:
0/DUC_0 has 1 input ports
0/DUC_0 has 1 output ports
Finding block for: DmaFIFO
Mapped external port 0 to 0
Mapped port 0 to 0/DmaFIFO_0
Mapped external port 1 to 1
Mapped port 1 to 0/DmaFIFO_0
TX args:
RX args:
0/DmaFIFO_0 has 2 input ports
0/DmaFIFO_0 has 2 output ports
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
getting block control for port 1
External mapped to port 1
getting block control for port 1
External mapped to port 1
Finding block for: DDC
Mapped external port 0 to 0
Mapped port 0 to 0/DDC_0
Mapped external port 1 to 1
Mapped port 1 to 0/DDC_0
TX args:
getting block control for port 0
getting block control for port 0
block_port0 =3D 0
block_id0 =3D 0/DDC_0
RX args:
External mapped to port 0
getting block control for port 0
getting block control for port 0
block_port0 =3D 0
block_id0 =3D 0/DDC_0
0/DDC_0 has 2 input ports
0/DDC_0 has 2 output ports
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
getting block control for port 0
External mapped to port 0
gr::fft: can't import wisdom from /home/torchuser/.gr_fftw_wisdom
getting block control for port 0
getting block control for port 0
Connecting 0/DmaFIFO_0 port 0 to 0/DUC_0 port 0
=1B[33;1m[WARNING] [RFNOC] =1B[39;0mAssuming max packet size for 0/DmaFIFO_=
0
getting block control for port 0
getting block control for port 0
Connecting 0/DUC_0 port 0 to 0/Radio_0 port 0
=1B[33;1m[WARNING] [RFNOC] =1B[39;0mAssuming max packet size for 0/DUC_0
getting block control for port 0
getting block control for port 0
Connecting 0/Radio_0 port 0 to 0/DDC_0 port 0
=1B[33;1m[WARNING] [RFNOC] =1B[39;0mAssuming max packet size for 0/Radio_0
getting block control for port 0
getting block control for port 0
getting block control for port 0
thread[thread-per-block[3]: <block uhd_rfnoc_DmaFIFO (4)>]: RuntimeError: C=
annot create streamers: No block_id specified for channel 0.

--_000_CY4PR19MB098458DC00A7673A6D584A11A4950CY4PR19MB0984namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have been trying to set up an environment for using RFNoC on an X310.&nbs=
p; It was running well before I tried to update the to using RFNoC accordin=
g the the application note.&nbsp; I'm wondering if I have an error relating=
 to a version of UHD correlating to the other
 parts (gr-ettus, gnuradio, fpga).&nbsp; I feel like I cannot trust documen=
tation I see (like the X310 product description calling out Vivado 2015, bu=
t a recent email calling out 2017, and an earlier question that caused an a=
pplication note to be deprecated).</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have two laptops which show the uhd (git branch) at version rfnoc-devel, =
and gr-ettus at master.&nbsp; One will run a flowgraph with RFNoC blocks, a=
nd the other will get the error below with the same flowgraph (error on las=
t line).&nbsp; I'm just trying to figure out
 what direction to go before I delete everything and start over.&nbsp; Simi=
lar questions about similar errors seemed to related to UHD versions, which=
 I why I'm starting there.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
[32;1m[INFO] [UHD] &#27;[39;0mlinux; GNU C&#43;&#43; version 7.4.0; Boost_1=
06501; UHD_4.0.0.rfnoc-devel-702-geec24d7b<br>
&#27;[32;1m[INFO] [X300] &#27;[39;0mX300 initialization sequence...<br>
&#27;[32;1m[INFO] [X300] &#27;[39;0mMaximum frame size: 1472 bytes.<br>
&#27;[32;1m[INFO] [X300] &#27;[39;0mRadio 1x clock: 200 MHz<br>
&#27;[32;1m[INFO] [GPS] &#27;[39;0mFound an internal GPSDO: LC_XO, Firmware=
 Rev 0.929a<br>
&#27;[32;1m[INFO] [0/DmaFIFO_0] &#27;[39;0mInitializing block control (NOC =
ID: 0xF1F0D00000000000)<br>
&#27;[32;1m[INFO] [0/DmaFIFO_0] &#27;[39;0mBIST passed (Throughput: 1305 MB=
/s)<br>
&#27;[32;1m[INFO] [0/DmaFIFO_0] &#27;[39;0mBIST passed (Throughput: 1307 MB=
/s)<br>
&#27;[32;1m[INFO] [0/Radio_0] &#27;[39;0mInitializing block control (NOC ID=
: 0x12AD100000000001)<br>
&#27;[32;1m[INFO] [0/Radio_1] &#27;[39;0mInitializing block control (NOC ID=
: 0x12AD100000000001)<br>
&#27;[32;1m[INFO] [0/DDC_0] &#27;[39;0mInitializing block control (NOC ID: =
0xDDC0000000000000)<br>
&#27;[32;1m[INFO] [0/DDC_1] &#27;[39;0mInitializing block control (NOC ID: =
0xDDC0000000000000)<br>
&#27;[32;1m[INFO] [0/DUC_0] &#27;[39;0mInitializing block control (NOC ID: =
0xD0C0000000000000)<br>
&#27;[32;1m[INFO] [0/DUC_1] &#27;[39;0mInitializing block control (NOC ID: =
0xD0C0000000000000)<br>
Finding block for: Radio_0<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/Radio_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/Radio_0<br>
TX args:<br>
RX args:<br>
0/Radio_0 has 1 input ports<br>
0/Radio_0 has 2 output ports<br>
getting block control for port 0<br>
Finding block for: Radio_0<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/Radio_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/Radio_0<br>
TX args:<br>
RX args:<br>
0/Radio_0 has 1 input ports<br>
0/Radio_0 has 2 output ports<br>
getting block control for port 0<br>
Finding block for: DUC<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DUC_0<br>
TX args:<br>
RX args:<br>
0/DUC_0 has 1 input ports<br>
0/DUC_0 has 1 output ports<br>
Finding block for: DmaFIFO<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DmaFIFO_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/DmaFIFO_0<br>
TX args:<br>
RX args:<br>
0/DmaFIFO_0 has 2 input ports<br>
0/DmaFIFO_0 has 2 output ports<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 1<br>
External mapped to port 1<br>
getting block control for port 1<br>
External mapped to port 1<br>
Finding block for: DDC<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DDC_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/DDC_0<br>
TX args:<br>
getting block control for port 0<br>
getting block control for port 0<br>
block_port0 =3D 0<br>
block_id0 =3D 0/DDC_0<br>
RX args:<br>
External mapped to port 0<br>
getting block control for port 0<br>
getting block control for port 0<br>
block_port0 =3D 0<br>
block_id0 =3D 0/DDC_0<br>
0/DDC_0 has 2 input ports<br>
0/DDC_0 has 2 output ports<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
gr::fft: can't import wisdom from /home/torchuser/.gr_fftw_wisdom<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/DmaFIFO_0 port 0 to 0/DUC_0 port 0<br>
&#27;[33;1m[WARNING] [RFNOC] &#27;[39;0mAssuming max packet size for 0/DmaF=
IFO_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/DUC_0 port 0 to 0/Radio_0 port 0<br>
&#27;[33;1m[WARNING] [RFNOC] &#27;[39;0mAssuming max packet size for 0/DUC_=
0<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/Radio_0 port 0 to 0/DDC_0 port 0<br>
&#27;[33;1m[WARNING] [RFNOC] &#27;[39;0mAssuming max packet size for 0/Radi=
o_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
getting block control for port 0<br>
thread[thread-per-block[3]: &lt;block uhd_rfnoc_DmaFIFO (4)&gt;]: RuntimeEr=
ror: Cannot create streamers: No block_id specified for channel 0.<br>
</div>
</body>
</html>

--_000_CY4PR19MB098458DC00A7673A6D584A11A4950CY4PR19MB0984namp_--


--===============7011015185920771953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7011015185920771953==--

