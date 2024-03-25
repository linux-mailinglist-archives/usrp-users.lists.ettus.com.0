Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC3C88A3A1
	for <lists+usrp-users@lfdr.de>; Mon, 25 Mar 2024 15:06:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90CAE3861F0
	for <lists+usrp-users@lfdr.de>; Mon, 25 Mar 2024 10:06:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711375597; bh=xDetGmd1yU4NB9nJAE8QmmxnBfctS2CIpc5/l3WIi/I=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Wj/BpbIfH9UFrCV6ikn5Zr+m5p8/UziGVuFM8g65NjVnf4C+lDMZ9epxUUnVIDYi5
	 wAYbGCM0bfKA9FAIYrgzBo/j2fZoOUfHGawKCAZNUgESIE42MuL1xd2AebLwnbAsmx
	 SfdvISwBE9Dqa3jMsG7398N2lUTv/N5FwRC8u8242bsqgn3q8Fur9rynqJofJhKPlU
	 vxoqJUsUJqfFWk7HbNhjVkR99hrMoVxHAdpyMlaY3i/JHZXzqnHI2YbqmVUmngEr8H
	 v4k+bMcz96W06wNp+CYkPCXWLe1LB17mKZ7kBnseJiIbvqrgmuek6/wurb3d/eqSKQ
	 0V+p8ME8uOKeQ==
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2103.outbound.protection.outlook.com [40.107.15.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 558513861D1
	for <usrp-users@lists.ettus.com>; Mon, 25 Mar 2024 10:05:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=rafaelcoil.onmicrosoft.com header.i=@rafaelcoil.onmicrosoft.com header.b="DXdEhpOW";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QFcQMrrIF4yxY4e2JbpMPTE+lu4yFMs56Ud9v2s1PEa/Ry1ulNtgfepMViWi4hH0CLpstEmWJ1jMd/q0Gr4bmGCXTiMLc6Ax/s3nuACplbIyJGP7VmGJR4Iswb1iTTJaDk2dhYcIuo5zm8rymVF6INsMeyvftnwboBdc90o9TY5tincYBOc5rtxW24hk7FFmOoCC9cvDk0lnqpSjTefxxT4nm21H0KZR+HS/Q2DGH7/h4kSYJhUaCMqnBhKw1XggVcmYH6qtVloodk49kToEtG9cJ8Gxqwb/lZL2MTAlA8N35wJnsehhoCpmnzpdJqAKtLY6IARDFPAT3KDmaZzbeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KalmKm4F2LLFUTErHXeySiSjOwzlKPOksuP7Xi18Ys=;
 b=XAhfp+XZYhUgIB5oq+yABqVzbeZQpJH4O0W0EzgAUXdrHIFXhvWwgqUgGTwSrL3TnHU922XMnaDLJPEj2O02OGIJXkU/XBR4VkNMHStuQMZt3kSc33Lwh/rl9Y9tWt5kxAu8CX8tIOdH3SfNtWOnzSAG+KZqyApPbYLwollypm404uqsZ/LDZKLtcrCF3vsBmQMnrLO9PzNe23lsmcLTnexnLPUHy9tDctQulRRWLb+RULJ/bRBiB4UAZquKRu0rvrorOu4663wjSJ7JGpii8Nmtqm/bdE79EAUVzH/hkptno74OdvEVfQJkicM2Y1A93vvy/xcV/t+xK771vIGDpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 193.169.70.109) smtp.rcpttodomain=lists.ettus.com smtp.mailfrom=rafael.co.il;
 dmarc=none action=none header.from=rafael.co.il; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rafaelcoil.onmicrosoft.com; s=selector1-rafaelcoil-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8KalmKm4F2LLFUTErHXeySiSjOwzlKPOksuP7Xi18Ys=;
 b=DXdEhpOWHHHqipg3qYO3IVvjdku+gIgB0VPGdDasyjoGJWTOQzruJZMFwadVojdtIYEvlRKW5cwrtPvnzMEKILI+7DKHuweaW/zwQwbqXMRLeIxJbF6lbSi3m6+LgyVJgDShN5P9HkRcKzNLUmPS42YV9IChZ+Zt+OF0F3w4l90=
Received: from DU7P195CA0014.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:54d::25)
 by DU0P189MB2451.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:41e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 14:05:52 +0000
Received: from DU2PEPF0001E9C2.eurprd03.prod.outlook.com
 (2603:10a6:10:54d:cafe::61) by DU7P195CA0014.outlook.office365.com
 (2603:10a6:10:54d::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.27 via Frontend
 Transport; Mon, 25 Mar 2024 14:05:52 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 193.169.70.109)
 smtp.mailfrom=rafael.co.il; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=rafael.co.il;
Received-SPF: Fail (protection.outlook.com: domain of rafael.co.il does not
 designate 193.169.70.109 as permitted sender)
 receiver=protection.outlook.com; client-ip=193.169.70.109;
 helo=mw.rafael.co.il;
Received: from mw.rafael.co.il (193.169.70.109) by
 DU2PEPF0001E9C2.mail.protection.outlook.com (10.167.8.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Mon, 25 Mar 2024 14:05:51 +0000
Received: from RFINTEX19DB04.rf.local (10.60.5.70) by RFINTEX19DB01.rf.local
 (10.60.5.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 25 Mar
 2024 16:05:50 +0200
Received: from RFINTEX19DB04.rf.local ([fe80::f571:caff:ce34:c9be]) by
 RFINTEX19DB04.rf.local ([fe80::f571:caff:ce34:c9be%25]) with mapi id
 15.02.1544.004; Mon, 25 Mar 2024 16:05:50 +0200
From: DOR-ISAAC SHABTAY <DORS@rafael.co.il>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP N321 - Dropped packets
Thread-Index: AQHafr2Atpx+e5aka0SXNfA/8KmaCA==
Date: Mon, 25 Mar 2024 14:05:50 +0000
Message-ID: <9a2bd2a19b7b4757b3ce3353bd56d407@rafael.co.il>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.60.25.35]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF0001E9C2:EE_|DU0P189MB2451:EE_
X-MS-Office365-Filtering-Correlation-Id: 1efd33b4-2ee5-4abf-8f12-08dc4cd4ae39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gk0CDV8E85HjsIGAups+f8qia5Z+UxyD0yoRftQFdib+uqOlIfi4muPD4/NL0IAsx4gf9ximg7ep5QlDHLkAuWowDtbC3Hl7mqjOO1TYqrHwL47jRqOMC8KM7e8h2azmUB/jWmjhqYxoX0lxZbFvjg5LpmP7shpZUHPAtl4juyD5IhzFgzhvqOf3WJ4jCGxUYBCjs69v92kKBZu2ChzXMaYkZBXR7gzwCWuKME9/gAVmd87FHtAdP4yJaCnK7ARvZg9tCLtuuIDi5bJQoDQFh3i3Rwpsihu5w5n7pYbpuLcBt6eayI4kE2HjuhbhGLvN1QCKoCOwhInAuuAobs8sT210J6CphP+ctOOKFmkVG3kYjMrC+Jemba6GOl1GY6XmOQCfWZ3huFe1w6TleUObJwrKeW8+2+cT7sSJtUdwHeGqas4aWoGdTcZITTYmaEMVb1T2GEmvXhJbnlcYB8XZ4insidw5SvS38f9xG/pHIwml2UZxfIwXbTML8/YDjS/wDdVZGci0LWHoluqliuKou0RHn47mcupATrBbZMox6WommiIs4tvIZ+6P/S4HfK95EknvbdOwgVWUhHHLjaeG95cIThtrX5Pq0UyZdGYXSuFucawLwoc1O5G6ow66jIGXTusL0xnMcMQfx6IpLVkIcsmUwgp2Gqs/27bZ0OrGsyENSSrtOV4Koj/vOEIrSoUvmZDa/qIZ31CrBdkX9o5QxQ==
X-Forefront-Antispam-Report: 
	CIP:193.169.70.109;CTRY:IL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:mw.rafael.co.il;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(376005)(36860700004)(82310400014)(1800799015);DIR:OUT;SFP:1102;
X-OriginatorOrg: rafael.co.il
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 14:05:51.7990
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1efd33b4-2ee5-4abf-8f12-08dc4cd4ae39
X-MS-Exchange-CrossTenant-Id: d9d3d3ff-6c08-40ca-a4a9-aefb873ec020
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d9d3d3ff-6c08-40ca-a4a9-aefb873ec020;Ip=[193.169.70.109];Helo=[mw.rafael.co.il]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C2.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P189MB2451
Message-ID-Hash: 3NEGYZMY2VPPGJY5ENZRIFM6SICKMD5D
X-Message-ID-Hash: 3NEGYZMY2VPPGJY5ENZRIFM6SICKMD5D
X-MailFrom: DORS@rafael.co.il
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DOR-ISAAC SHABTAY <DORS@rafael.co.il>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N321 - Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3NEGYZMY2VPPGJY5ENZRIFM6SICKMD5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7874624571977728213=="

--===============7874624571977728213==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9a2bd2a19b7b4757b3ce3353bd56d407rafaelcoil_"

--_000_9a2bd2a19b7b4757b3ce3353bd56d407rafaelcoil_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm using usrp N321 to sample data at IQ rate of 250 MSPS.
I have dropped packets.

________________________________________________________________________
sync; sudo nice -n -20 /usr/lib/uhd/examples/rx_samples_to_file --freq 1e9 =
--rate 250e6 --file /media/data/data10.dat --args "addr=3D192.168.10.2"

Creating the usrp device with: addr=3D192.168.10.2...
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-0ubun=
tu1~jammy1
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D32AC3CE,name=3Dni-n3xx-32AC=
3CE,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320,clock_source=3Dint=
ernal,time_source=3Dinternal'.
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Rhodium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Rhodium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Rhodium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Rhodium

Setting RX Rate: 250.000000 Msps...
Actual RX Rate: 245.760000 Msps...

Setting RX Freq: 1000.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
[WARNING] [MULTI_USRP] Could not set RX rate to 250.000 MHz. Actual rate is=
 245.760 MHz
[WARNING] [MULTI_USRP] Could not set RX rate to 250.000 MHz. Actual rate is=
 245.760 MHz
Actual RX Freq: 1000.000000 MHz...

[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320,clock_source=3Dinternal,time_=
source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320,clock_source=3Dinternal,time_=
source=3Dinternal'
Locking LO on channel 0
Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...

  Disk write test indicates that an overflow is likely to occur.
  Your write medium must sustain a rate of 983.040MB/s,
  but write test returned write speed of 346.000MB/s.
  The disk write rate is also affected by system load
  and OS/disk caching capacity.
OGot an overflow indication. Please consider the following:
  Your write medium must sustain a rate of 983.040MB/s.
  Dropped samples will not be written to the file.
  Please modify this example for your purposes.
  This message will not appear again.
ODDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDO=
DDDDDDDDDDDDDDDDOODDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDO^C
Done!

_________________________________________________________________________

Host PC: Intel NUC - NUC11TNHi7

Ubuntu 22.04

Linux kernel version - 6.5.0

we have separate HDs for OS (SATA 2.5'') and storage (fast SSD NVME)

we are using QNA-T310G1S as adapter SFP <--> Thunderbolt.

we tried the following (from https://kb.ettus.com/USRP_Host_Performance_Tun=
ing_Tips_and_Tricks and
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD):


  *   CPU Governor (CPU governor to performance for all cores)
  *   Adjust Network Buffers
  *   Adjust Ethernet MTU (the MTU is 9000)
  *   Increasing Ring Buffers
  *   Increasing num_recv_frames (num_recv_frames=3D512)
  *   Extra nice Priority (sudo nice -n -20)

Can we use dpdk with QNAP? what is the 'dpdk_mac' than?


Thanks,
David Stanley


This message (including any attachments) issued by RAFAEL- ADVANCED DEFENSE=
 SYSTEMS LTD. (hereinafter "RAFAEL") contains confidential information inte=
nded for a specific individual and purpose, may constitute information that=
 is privileged or confidential or otherwise protected from disclosure. If y=
ou are not the intended recipient, you should contact us immediately and th=
ereafter delete this message from your system. You are hereby notified that=
 any disclosure, copying, dissemination, distribution or forwarding of this=
 message, or the taking of any action based on it, is strictly prohibited. =
If you have received this e-mail in error, please notify us immediately by =
e-mail mailto:lawraf@rafael.co.il and completely delete or destroy any and =
all electronic or other copies of the original message and any attachments =
thereof..

--_000_9a2bd2a19b7b4757b3ce3353bd56d407rafaelcoil_
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
Hi,
<div><br>
</div>
<div><br>
</div>
<div>I'm using usrp N321 to sample data at IQ rate of 250 MSPS.</div>
<div>I have dropped packets.</div>
<div><br>
</div>
<div>______________________________________________________________________=
__</div>
<div>
<div>sync; sudo nice -n -20 /usr/lib/uhd/examples/rx_samples_to_file --freq=
 1e9 --rate 250e6 --file /media/data/data10.dat --args &quot;addr=3D192.168=
.10.2&quot;</div>
<div><br>
</div>
<div>Creating the usrp device with: addr=3D192.168.10.2...</div>
<div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-=
0ubuntu1~jammy1</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D32AC3CE,name=3Dni-n3xx=
-32AC3CE,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320,clock_source=
=3Dinternal,time_source=3Dinternal'.</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: n320</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div><br>
</div>
<div>Setting RX Rate: 250.000000 Msps...</div>
<div>Actual RX Rate: 245.760000 Msps...</div>
<div><br>
</div>
<div>Setting RX Freq: 1000.000000 MHz...</div>
<div>Setting RX LO Offset: 0.000000 MHz...</div>
<div>[WARNING] [MULTI_USRP] Could not set RX rate to 250.000 MHz. Actual ra=
te is 245.760 MHz</div>
<div>[WARNING] [MULTI_USRP] Could not set RX rate to 250.000 MHz. Actual ra=
te is 245.760 MHz</div>
<div>Actual RX Freq: 1000.000000 MHz...</div>
<div><br>
</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320,clock_source=3Dinternal,=
time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320,clock_source=3Dinternal,=
time_source=3Dinternal'</div>
<div>Locking LO on channel 0</div>
<div>Waiting for &quot;lo_locked&quot;: ++++++++++ locked.</div>
<div><br>
</div>
<div>Press Ctrl + C to stop streaming...</div>
<div><br>
</div>
<div></div>
<div>&nbsp; Disk write test indicates that an overflow is likely to occur.<=
/div>
<div>&nbsp; Your write medium must sustain a rate of 983.040MB/s,</div>
<div>&nbsp; but write test returned write speed of 346.000MB/s.</div>
<div>&nbsp; The disk write rate is also affected by system load</div>
<div>&nbsp; and OS/disk caching capacity.</div>
<div>OGot an overflow indication. Please consider the following:</div>
<div>&nbsp; Your write medium must sustain a rate of 983.040MB/s.</div>
<div>&nbsp; Dropped samples will not be written to the file.</div>
<div>&nbsp; Please modify this example for your purposes.</div>
<div>&nbsp; This message will not appear again.</div>
<div>ODDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDODDDDDDDDDDDDDDDDOODDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDO^C<=
/div>
<div>Done!</div>
<div><br>
</div>
_________________________________________________________________________</=
div>
<div><br>
</div>
<div>Host PC:&nbsp;<span style=3D"font-size: 12pt;">Intel NUC -&nbsp;</span=
><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFo=
nt;">NUC11TNHi7</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, Emo=
jiFont; font-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, Emo=
jiFont; font-size: 16px;"><span style=3D"font-family: Calibri, Helvetica, s=
ans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&q=
uot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot=
;, EmojiSymbols; font-size: 16px;">Ubuntu
 22.04</span><br>
</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, Emo=
jiFont; font-size: 16px;"><span style=3D"font-family: Calibri, Helvetica, s=
ans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&q=
uot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot=
;, EmojiSymbols; font-size: 16px;"><br>
</span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, Emo=
jiFont; font-size: 16px;"><span style=3D"font-family: Calibri, Helvetica, s=
ans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&q=
uot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot=
;, EmojiSymbols; font-size: 16px;"><span>Linux
 kernel version - 6.5.0</span></span></span></div>
<div><br>
</div>
<div>we have separate HDs for OS (SATA 2.5'') and storage (fast&nbsp;SSD NV=
ME)</div>
<div><br>
</div>
<div>we are using&nbsp;<span style=3D"font-family: Calibri, Helvetica, sans=
-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot=
;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, =
EmojiSymbols; font-size: 16px;">QNA-T310G1S as adapter SFP &lt;--&gt; Thund=
erbolt.</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">we tried the following (from&nbsp;<a href=3D"https://kb.ettus=
.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" class=3D"OWAAutoLink" id=
=3D"LPlnk4318">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_T=
ricks</a>&nbsp;and&nbsp;<br>
<a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD" class=3D=
"OWAAutoLink">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a>):<=
/span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><br>
</span></div>
<div>
<ul style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;"><span>CPU Governor (<span style=3D"font-family: &quot;Lucida S=
ans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 14px;"=
>CPU
 governor to&nbsp;</span><code style=3D"font-family: monospace, Courier; ba=
ckground-color: rgb(249, 249, 249); border: 1px solid rgb(221, 221, 221); b=
order-radius: 2px; padding: 1px 4px; font-size: 14px;">performance</code><s=
pan style=3D"font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Gra=
nde&quot;, sans-serif; font-size: 14px;">&nbsp;for
 all cores)</span></span></span></li><li><span style=3D"font-family: Calibr=
i, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;S=
egoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;And=
roid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span><span>Adjust Networ=
k Buffers</span></span></span></li><li><span style=3D"font-family: Calibri,=
 Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Seg=
oe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Andro=
id Emoji&quot;, EmojiSymbols; font-size: 16px;"><span><span><span>Adjust Et=
hernet MTU (the MTU is 9000)</span></span></span></span></li><li><span styl=
e=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;"><=
span><span><span><span>Increasing Ring Buffers</span></span></span></span><=
/span></li><li><span style=3D"font-family: Calibri, Helvetica, sans-serif, =
EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoC=
olorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSym=
bols; font-size: 16px;"><span><span><span><span><span>Increasing&nbsp;num_r=
ecv_frames (<span style=3D"font-family: monospace, Courier; font-size: 14px=
; background-color: rgb(249, 249, 249);">num_recv_frames=3D512)</span></spa=
n><br>
</span></span></span></span></span></li><li><span style=3D"font-family: Cal=
ibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quo=
t;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;=
Android Emoji&quot;, EmojiSymbols; font-size: 16px;"><span><span><span><spa=
n><span><span style=3D"font-family: monospace, Courier; font-size: 14px; ba=
ckground-color: rgb(249, 249, 249);"><span>Extra&nbsp;nice&nbsp;Priority
 (<span>sudo nice -n -20)</span></span><br>
</span></span></span></span></span></span></span></li></ul>
</div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><br>
</span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span>Can we use dpdk with QNAP? what is th=
e
 '<span>dpdk_mac' than?</span></span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><span><br>
</span></span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><span><br>
</span></span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><span>Thanks,</span></span></span></s=
pan></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><span>David Stanley</span></span></sp=
an></span></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><span><br>
</span></span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><span><span><span><span><br>
</span></span></span></span></span></span></div>
</div>
This message (including any attachments) issued by RAFAEL- ADVANCED DEFENSE=
 SYSTEMS LTD. (hereinafter &quot;RAFAEL&quot;) contains confidential inform=
ation intended for a specific individual and purpose, may constitute inform=
ation that is privileged or confidential or
 otherwise protected from disclosure. If you are not the intended recipient=
, you should contact us immediately and thereafter delete this message from=
 your system. You are hereby notified that any disclosure, copying, dissemi=
nation, distribution or forwarding
 of this message, or the taking of any action based on it, is strictly proh=
ibited. If you have received this e-mail in error, please notify us immedia=
tely by e-mail mailto:lawraf@rafael.co.il and completely delete or destroy =
any and all electronic or other
 copies of the original message and any attachments thereof..
</body>
</html>

--_000_9a2bd2a19b7b4757b3ce3353bd56d407rafaelcoil_--

--===============7874624571977728213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7874624571977728213==--
