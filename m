Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F0BAEA3A
	for <lists+usrp-users@lfdr.de>; Tue, 10 Sep 2019 14:23:15 +0200 (CEST)
Received: from [::1] (port=39414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7fAp-0005FD-6B; Tue, 10 Sep 2019 08:23:07 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:54538)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1i7fAl-00059Q-A0
 for usrp-users@lists.ettus.com; Tue, 10 Sep 2019 08:23:03 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 B73F56552D
 for <usrp-users@lists.ettus.com>; Tue, 10 Sep 2019 12:22:22 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2056.outbound.protection.outlook.com [104.47.46.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id B367AB40068
 for <usrp-users@lists.ettus.com>; Tue, 10 Sep 2019 12:22:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=geeNv3CUDEFb+3A1ef8Mmobc1omjIYfR95xaiLne4kZJqtScUKtWMFJHYiInp3B709bI/YJwGI9GV4ztFaxVCKtFCSbXn3H36tAzKORE6kV1OS5pE5K/RkbDBpxva0uLM7xgGQBknQGT1YA6laDAFHL93A3qLhukPa+ZltdQ+eSEaEPhYeT2XyB0LQ+FiYh2W17eCA0RB4wtx7qjto+QeUo5A0Rgktv7ApFWXQneOPiAGlavAn/znaEjaU0yag+bhpz96BTNvp5cfSO/2YwxcahypxsD8j3a9tUW7/yk8qJ4G1XNcV+9r5XS7dIV8oLMRLZ1uj/cnabGRLMJdBWeJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gtkz1+qZ14FK+09/bvtG2FGZ4ER3dZmD3sLXnXNl4Dw=;
 b=mHP5jtt7O1jgUsoF7u5C55COPg426W7W8JRJf/WJ99bhp2C4ey8X/9tVjl13d8vKcrI58Wyl+OeTdfNEV+rDo6VoJtYenwhLA/IdN3Gzz8jIZYNDAgIZOfK5kXNBSffZ1HggfBLYHTNDX2nfvADDkIs7Wfxld0mxMqLpboldyLxte0q+mckX6apgbHIXdBAMMg5OyeZXfVy5o1VMvYhuT93MrNh+QhbEH/7Q1GkGuxQgi2opf4paBOoi/W3s91rOir0yiuO8WhnGWGYmBo18Y9fhgXTPbmNBR6M8rFpXW+j1k7OVpJdKONVLLmZZ6vD0hKRsQcTagpwRQH6d08ZwGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gtkz1+qZ14FK+09/bvtG2FGZ4ER3dZmD3sLXnXNl4Dw=;
 b=sajbEUktGu7Q4LZ0oZbfq2yHz1WNGuHxMvd1l/N+ybsyOMdnDkbwNT5wB0Et7ajdJVRQ11HtBRlIPH2skuNUdfi8+M/PDoLunKeO8nKyECC7bEay8JRq9O66R5m03NxuqMbtL5KuLY7OJEt/gwFdVLaMtJGtSGHIl8XsHKXuX5w=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2419.namprd12.prod.outlook.com (52.132.30.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.13; Tue, 10 Sep 2019 12:22:09 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8%6]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 12:22:09 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: No block_id specified for channel 0
Thread-Index: AQHVZ9FuTCd9cpegNUeHAH76St9FTw==
Date: Tue, 10 Sep 2019 12:22:09 +0000
Message-ID: <BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e73c54e3-cdd9-4095-ec27-08d735e98045
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BL0PR12MB2419; 
x-ms-traffictypediagnostic: BL0PR12MB2419:
x-microsoft-antispam-prvs: <BL0PR12MB241949A43D6C5C062B33FE8CAFB60@BL0PR12MB2419.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(39830400003)(346002)(376002)(136003)(199004)(189003)(52536014)(53936002)(66446008)(8936002)(66476007)(66556008)(64756008)(6436002)(5660300002)(33656002)(14444005)(256004)(9686003)(55016002)(54896002)(74316002)(81166006)(81156014)(7736002)(316002)(8676002)(6116002)(3846002)(6506007)(508600001)(186003)(19627405001)(99286004)(102836004)(26005)(7696005)(86362001)(71200400001)(2906002)(71190400001)(66066001)(105004)(66946007)(76116006)(486006)(25786009)(14454004)(6916009)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2419;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; PTR:InfoNoRecords;
 A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ALHLnaUI+CsAaNCqqFA2a2B+J6/lTlMD1qfYNgGDweVTxuxsj3psFTigSKyvXS14CnXNVCUTdyJgbhFFtLdNXGjmG8+/SGgq//pqwtxV7BoY23Oh6ctC9Zk/xphkpxzuLTAhEkxI3V3t8TeYxuViyJlZ6PPYBSJHovaq58G+aW929k/3nCBMAZFYYgY4Dbr4osH/xSi4K2ePx4WvvhA2TOGUAQvaW+10ow4Og7GvvRQUDOCWOlfUNhoz4+GPLuXREAgVmfYsdfeYjM3RLxm7QWTIurSZrV+c8cVwA6rdDYAup1/m+DxU8mZZQhrFGQnBK6WKFtxMA1uiVLGJCUvTr3TAtaQvaHW9Q+wET0XDeRxIjv+QjA5OqyhLq+MzKdGF8bNtN34fbkbaMcAMNJL2sGQv8ygL0MLqWwzBvyZGQw8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e73c54e3-cdd9-4095-ec27-08d735e98045
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 12:22:09.0433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yYJdXsreCEj2yN21E9uaREBDNFu2S9IEsyE9UDlohjJTfvdqxpcNzSFsUu8GUaxAFOqNvEAOjU1iYdOyD17ENNK9VQ5d9OehDyZn0YjeDBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2419
X-MDID: 1568118132-RFy-ftl9M8D0
Subject: [USRP-users] No block_id specified for channel 0
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============7965890334663879289=="
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

--===============7965890334663879289==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60BL0PR12MB2340namp_"

--_000_BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have an RFNoC  flowgraph and bitfile combo that used to work but is error=
ing out now. I've been using the code successfully on the E320 and E310 and=
 decided to re-build for the X310 (and XG flowgraph).  When I run my flowgr=
aph, I am see a lot of addition debug that I am not used to seeing (which i=
s fine) and then my block in particular seems to cause problems and I get t=
he error in the subject.  I am guessing that since I just rebuilt everythin=
g, some change needs to be made in my impl for my block due to some UHD upd=
ate, but I can't quite figure out anywhere where something changes.  The be=
ginning of the output when I run my flowgraph is:

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boos=
t_105300; UHD_3.14.1.1-0-g98c7c986
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1323 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C91927522=
0)
[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C91927522=
0)
[WARNING] [RFNOC] Can't find a block controller for key SplitStream, using =
default block controller!
[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x575700000000=
0000)
[WARNING] [RFNOC] Can't find a block controller for key SplitStream, using =
default block controller!
[INFO] [0/SplitStream_1] Initializing block control (NOC ID: 0x575700000000=
0000)
Finding block for: Radio_1
Mapped external port 0 to 0
Mapped port 0 to 0/Radio_1
Mapped external port 1 to 1
Mapped port 1 to 0/Radio_1
TX args:
RX args:
0/Radio_1 has 1 input ports
0/Radio_1 has 2 output ports
getting block control for port 0
Finding block for: DDC_0
Mapped external port 0 to 0
Mapped port 0 to 0/DDC_0
TX args:
getting block control for port 0
getting block control for port 0


And the ehnd of that blob shows:

getting block control for port 0
getting block control for port 0
thread[thread-per-block[2]: <block keepMinN (10)>]: RuntimeError: Cannot cr=
eate streamers: No block_id specified for channel 0.


And finally, if I let it sit there, the X310 must get into a wonky state be=
cause I start to get:

[ERROR] [X300] 192.168.80.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2: x300 fw communication failure #2
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2: x300 fw communication failure #2
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task lo=
op will now exit, things may not work.EnvironmentError: IOError: 192.168.80=
.2: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out



What am I missing here?

--_000_BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60BL0PR12MB2340namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I have an RFNoC&nbsp; flowgraph and bitfile combo that used to work but is =
erroring out now. I've been using the code successfully on the E320 and E31=
0 and decided to re-build for the X310 (and XG flowgraph).&nbsp; When I run=
 my flowgraph, I am see a lot of addition
 debug that I am not used to seeing (which is fine) and then my block in pa=
rticular seems to cause problems and I get the error in the subject.&nbsp; =
I am guessing that since I just rebuilt everything, some change needs to be=
 made in my impl for my block due to
 some UHD update, but I can't quite figure out anywhere where something cha=
nges.&nbsp; The beginning of the output when I run my flowgraph is:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20150623 (Red Hat 4=
.8.5-36); Boost_105300; UHD_3.14.1.1-0-g98c7c986<br>
</span>
<div>[INFO] [X300] X300 initialization sequence...<br>
</div>
<div>[INFO] [X300] Maximum frame size: 8000 bytes.<br>
</div>
<div>[INFO] [X300] Radio 1x clock: 200 MHz<br>
</div>
<div>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1323 MB/s)<br>
</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000=
001)<br>
</div>
<div>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000=
001)<br>
</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C919=
275220)<br>
</div>
<div>[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C919=
275220)<br>
</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key SplitStream, u=
sing default block controller!<br>
</div>
<div>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key SplitStream, u=
sing default block controller!<br>
</div>
<div>[INFO] [0/SplitStream_1] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
</div>
<div>Finding block for: Radio_1<br>
</div>
<div>Mapped external port 0 to 0<br>
</div>
<div>Mapped port 0 to 0/Radio_1<br>
</div>
<div>Mapped external port 1 to 1<br>
</div>
<div>Mapped port 1 to 0/Radio_1<br>
</div>
<div>TX args:<br>
</div>
<div>RX args:<br>
</div>
<div>0/Radio_1 has 1 input ports<br>
</div>
<div>0/Radio_1 has 2 output ports<br>
</div>
<div>getting block control for port 0<br>
</div>
<div>Finding block for: DDC_0<br>
</div>
<div>Mapped external port 0 to 0<br>
</div>
<div>Mapped port 0 to 0/DDC_0<br>
</div>
<div>TX args:<br>
</div>
<div>getting block control for port 0<br>
</div>
<div>getting block control for port 0<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
And the ehnd of that blob shows:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>getting block control for port 0<br>
</span>
<div>getting block control for port 0<br>
</div>
<div>thread[thread-per-block[2]: &lt;block keepMinN (10)&gt;]: RuntimeError=
: Cannot create streamers: No block_id specified for channel 0.<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
And finally, if I let it sit there, the X310 must get into a wonky state be=
cause I start to get:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>[ERROR] [X300] 192.168.80.2: x300 fw communication failure #1<br>
</span>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] 192.168.80.2: x300 fw communication failure #2<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] 192.168.80.2: x300 fw communication failure #1<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] 192.168.80.2: x300 fw communication failure #1<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] 192.168.80.2: x300 fw communication failure #2<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] 192.168.80.2: x300 fw communication failure #3<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [UHD] An unexpected exception was caught in a task loop.The ta=
sk loop will now exit, things may not work.EnvironmentError: IOError: 192.1=
68.80.2: x300 fw communication failure #3<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
What am I missing here?</div>
</body>
</html>

--_000_BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60BL0PR12MB2340namp_--


--===============7965890334663879289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7965890334663879289==--

