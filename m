Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9ED2D8091
	for <lists+usrp-users@lfdr.de>; Fri, 11 Dec 2020 22:13:51 +0100 (CET)
Received: from [::1] (port=55614 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knpjZ-0006eq-MQ; Fri, 11 Dec 2020 16:13:49 -0500
Received: from mx0b-00010702.pphosted.com ([148.163.158.57]:58992)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=56148723d3=dylan.baros@ni.com>)
 id 1knpjV-0006Yh-8b
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 16:13:45 -0500
Received: from pps.filterd (m0239463.ppops.net [127.0.0.1])
 by mx0b-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BBL2Lbm027978; Fri, 11 Dec 2020 15:13:02 -0600
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
 by mx0b-00010702.pphosted.com with ESMTP id 3586fh2q21-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Dec 2020 15:13:02 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0TakRGC0vh4jH/mEEOz86BI3A+tFLiExesXzMUa1hY0w7jKbyDdOkq9Wq78Jr3cJQxFqmp8GwgCAT1IIGezGzbFGs7IgafvsQ/SxN4SIM9OSQPdWJv75Ne95OO9is9AEYNSRxo+JOWxdpRXEQu2fZtXoJ1tZshhMEFa2VHb2ALYm1GoAPLzMjq6Ywx3iYAfdpkS1beE6+XMU8ekjVIctF14YfGp7TJmwB8S/3xhlv8jhBBgt8G3/A5tUw+PCTeEW1HBA5yT8Z6R6q1wetJBiA64VrYvE39ipk586OkxbACjrcE8PbIw1Ac72Cq27c6UZP5PKyxCWAzOZpUHpXh6jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mJlYKbdhqVrcPEklgXO10cqYjLM/CX4mvE9cbdlcWI=;
 b=QXYJIuDEMHoMDrYJH3A7WZH5GUgjVuUmUtQ1Vvj1ug5UoRR6U+3xKPWGRRxtk2QvxNhnFG3IGHdIv5RxUv9FfmK7PIgRZ98M4gd+1maCEDdaOnJA1KzuuJYZ1dR0jYTmjjfBX2a85qsGqoeDFXcXST9DtXUZ2rqbkH3y3XP8cBoTH97nL6stmSpYTzA6x1myRXE3NZQ4hp04467VMVCHrFuRXN+3SfGajzO6kfEkQxcw5YuJN9TfC5Oeysedn0XIPTMeIiLcrTlhv4mqPmGrz68jeSjgU3o9EMfnYDAOTkyP8NbwwUB2XSDlobAcwgqRMb6mnj7v+bbjjoTirHNCjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mJlYKbdhqVrcPEklgXO10cqYjLM/CX4mvE9cbdlcWI=;
 b=AjUG5nxFuIdDw+CdImWtQU3P7ctEfLzZkQicDvEzwXUGcu6Tr26chSKzPti7jkxBKjgPLKkjLis4/EWfdShOuvZKLvXeD3U02OIDCtFGRzzvBQJF2iHBO3QMwLXux1n/zIyO3L5ZA9jPfkL8IHzMPG5IhWFCo3mSe4kCcZawIcc=
Received: from BN7PR04MB4387.namprd04.prod.outlook.com (2603:10b6:406:fc::17)
 by BN6PR04MB0660.namprd04.prod.outlook.com (2603:10b6:404:d9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Fri, 11 Dec
 2020 21:12:59 +0000
Received: from BN7PR04MB4387.namprd04.prod.outlook.com
 ([fe80::2058:57be:182f:bbdd]) by BN7PR04MB4387.namprd04.prod.outlook.com
 ([fe80::2058:57be:182f:bbdd%3]) with mapi id 15.20.3632.021; Fri, 11 Dec 2020
 21:12:59 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] Re: [USRP-users] Receiver error
 ERROR_CODE_LATE_COMMAND with txrx_loopback_to_file example.
Thread-Index: AQHWzjaQzYmRV4e6o0yavy4UJR+HTanyUKkAgAAXqF4=
Date: Fri, 11 Dec 2020 21:12:59 +0000
Message-ID: <BN7PR04MB43872C88A122FB05CFA9590D8FCA0@BN7PR04MB4387.namprd04.prod.outlook.com>
References: <BN7PR04MB4387D9599B8341AFACDD24B18FCC0@BN7PR04MB4387.namprd04.prod.outlook.com>,
 <CAL7q81tZsMy4jDZBB7TFbvfBiwC8EMLniBeBqRcxHPX0AYhbeg@mail.gmail.com>
In-Reply-To: <CAL7q81tZsMy4jDZBB7TFbvfBiwC8EMLniBeBqRcxHPX0AYhbeg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=ni.com;
x-originating-ip: [2601:2c4:c800:5fe:3573:206:f7d4:bb2b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c187d5ae-46bc-4016-c00b-08d89e198990
x-ms-traffictypediagnostic: BN6PR04MB0660:
x-microsoft-antispam-prvs: <BN6PR04MB06604A86CB6CB812D282AB5F8FCA0@BN6PR04MB0660.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ecj9ZNmy7lj7tNoEZRpnZzjVI60Jl3eVrjY1l2YYKzaIYXECQR1PDGvqeKnmxRuL3U8RkGlWq8H4gjzOYM+t6mrxInDduq0D0zv+/nDGxk9FxGxdT5UWK6OmEtFg3yP6b2TPFYeSjYiNedbkDa/c0ADQq32DS0q3VuIDEpl4fkk6QsuUSLZEcsA2hktB5nh2fSeTXq3ocgg1mwq87Ih7xTT8kwZYNAhjx6VPCECn/k0+DdmMmJ6htSAmi1hW58jiPqLfR+qXuFxj+LHlX8hK9aVjkq34uiUgOxnK6WM+APfE9Ot4dKsf5WusYBgvc1DrNqkNRBSKGcYvI2mfaNMaU4/JMPkOgs9RxB7CrHiT4OGYa/9j+EElTCMWJPVfT5YDohpRGTB8IUfnWwZsw49oUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR04MB4387.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(376002)(66446008)(64756008)(66476007)(66946007)(4326008)(76116006)(186003)(166002)(66556008)(8936002)(55016002)(8676002)(5660300002)(83380400001)(30864003)(91956017)(7696005)(53546011)(508600001)(9686003)(52536014)(6506007)(71200400001)(2906002)(86362001)(33656002)(19627405001)(44832011)(966005)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?9QoqqD5Qs/dDWDB0kia54I59H3V0OcqbfhMS2AAfMCq8rXuvUXIR093fFy9/?=
 =?us-ascii?Q?n7RAoxMCm/rkZo8DBPwnenkEzceBjDcovPjabIxrMCAnRjSLmB6iRgZacp7d?=
 =?us-ascii?Q?Uq9sFtLFTSBYMuUnB1g/iTpr5XQHkDKlVWArsFUvvPEo8pT8nndI7GzLy1U+?=
 =?us-ascii?Q?ipn7FXpWAXJ3pBTj/SWxrvV9kUwBIICIye1DWFvJkINOz35NQlEgKwHWh3xq?=
 =?us-ascii?Q?zMM56xtXM6798mkY1DBZP/TS5m2gh1qNfE0ZbpH1dZLDLBZ84j9ea9F2xVSq?=
 =?us-ascii?Q?RrQ26UAl05NEXVwO2L9j1uHWZrt3ou69AglWS1k6tImfqwS4QfRNa3o7S8oE?=
 =?us-ascii?Q?5CDvnWUIlvxx7dlaU0aDwGXgu0S/HJmkEwCP8PpxuUuUO3DKfFig59K85ljZ?=
 =?us-ascii?Q?v8KAuJZDDtLMiiKzhUnVRskJjpYNHZqq/VEJrEuWxg/dpGKEIA7OUBT/njjs?=
 =?us-ascii?Q?PggkfBCY+rDkHu49IpHS+wQZROd2UslNGXQdY9iA+cckzl1iajH6EpE2egra?=
 =?us-ascii?Q?QZn6tq4z0DBlSNLobP9ORom++MrOBumPkm53ryKUoG3fQpX8oXKDr2mqAIiq?=
 =?us-ascii?Q?WdSBbccNBGlJrh88nxLvtSyl6zklC4f6Zma1uNfQ3NglJJcpCIaavWttqoTl?=
 =?us-ascii?Q?wGkEymvA1amjsuLpZhf/c6yGvhCNyuwPan7FQ2OfsUWwjetqDRI4tEd4cLyv?=
 =?us-ascii?Q?XrCtXckb8Yn/BftNGQ2h9ovtHvt/kDpapzEd3BSZGYSXfG++0pHtd8GPy+Gv?=
 =?us-ascii?Q?L3BJ4lXDy114pd3kwAJB+14yzuVlvMs0Af0n4OMSYS2vOhfkEauEIMl1l5q4?=
 =?us-ascii?Q?D8wwIX7pfCJCRG9kONRQibmrp5uoBZnSGXdl/y3XqWqUSIC/aIdzBZ0NC3Vl?=
 =?us-ascii?Q?3VPJa+KZxDT/TGdFgY951UHx4winq7CKe9hG3MPq3ppJF8SCplsMe/v5e7MA?=
 =?us-ascii?Q?zguQ5fuNu2Wl/IfqCnVOvRHwG9BOyEoYt8nQl9Pl+IpAdxvXuJi4ROWsFev4?=
 =?us-ascii?Q?qYvKd+zUaNuo+QHMtwFi1d5fQ+RfRoR/bVXLXi3xezu/UdI=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR04MB4387.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c187d5ae-46bc-4016-c00b-08d89e198990
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2020 21:12:59.1211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iUSonj+44ZAAoabySVOGrLMyoI0RgzaTexU14WHiCjdSQ6+BurV/QGUjRVAe+U+6aUKLE+TkYWW2lqnGVfSZgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR04MB0660
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-11_06:2020-12-11,
 2020-12-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
 score=30
 lowpriorityscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 phishscore=0 clxscore=1011 bulkscore=0 adultscore=0 mlxscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012110139
Subject: Re: [USRP-users] Receiver error ERROR_CODE_LATE_COMMAND with
 txrx_loopback_to_file example.
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
From: Dylan Baros via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dylan Baros <dylan.baros@ni.com>
Content-Type: multipart/mixed; boundary="===============6052719415305658234=="
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

--===============6052719415305658234==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR04MB43872C88A122FB05CFA9590D8FCA0BN7PR04MB4387namp_"

--_000_BN7PR04MB43872C88A122FB05CFA9590D8FCA0BN7PR04MB4387namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

That did the trick Jonathon. Thank you!
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Friday, December 11, 2020 1:48 PM
To: Dylan Baros <dylan.baros@ni.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] Re: [USRP-users] Receiver error ERROR_CODE_LATE_COMMAND=
 with txrx_loopback_to_file example.

Hi Dylan,

Can you try adding "rx_usrp->set_time_now(uhd::time_spec_t(0.0));" after li=
ne 526 in txrx_loopback_to_file.cpp, re-build, and see if that fixes your i=
ssue?

Jonathon

On Wed, Dec 9, 2020 at 9:37 AM Dylan Baros via USRP-users <usrp-users@lists=
.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Good morning,

I am attempting to run the txrx_loopback_to_file example with the following=
 hardware:

USRP N320 @ 192.168.20.2 10g sfp+ port 1
USRP N321 @ 192.168.10.2 10g sfp+ port 0

Connection between RF1 TX/RX on N321 to the RF1 RX on N320.

My command to run is:

./txrx_loopback_to_file \
--tx-args "type=3Dn3xx,addr=3D192.168.10.2,master_clock_rate=3D250e6" \
--rx-args "type=3Dn3xx,addr=3D192.168.20.2,master_clock_rate=3D250e6" \
--file "txrx_const0_rate50e6_sanslo_cw500e6_march3_11am.dat" \
--settling 5 \
--nsamps 50000 \
--tx-rate 50e6 \
--rx-rate 50e6 \
--tx-freq 500e6 \
--rx-freq 500e6 \
--ampl .5 \
--tx-gain 10 \
--rx-gain 40 \
--tx-subdev "B:0" \
--rx-subdev "B:0" \
--tx-bw 10e6 \
--rx-bw 10e6 \
--wave-type "CONST" \
--wave-freq 0 \
--ref "external" \
--tx-channels 0 \
--rx-channels 0


Output:

Creating the transmit usrp device with: type=3Dn3xx,addr=3D192.168.10.2,mas=
ter_clock_rate=3D250e6...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-25-g1a=
34ba8a
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31EDB79,claimed=3DFalse,add=
r=3D192.168.10.2,master_clock_rate=3D250e6
[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31EDB79
[INFO] [MPM.Rhodium-0] Enabling LO distribution board
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] init() called with device args `master_clock_rat=
e=3D250e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,t=
ime_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D250e6,m=
gmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D250e6,m=
gmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e

Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.20.2,mast=
er_clock_rate=3D250e6...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D31F2BA2,claimed=3DFalse,add=
r=3D192.168.20.2,master_clock_rate=3D250e6
[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31F2BA2
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] init() called with device args `master_clock_rat=
e=3D250e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,t=
ime_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D250e6,m=
gmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D250e6,m=
gmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.
[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D2500000=
00.0,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dexternal,time_s=
ource=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take some t=
ime.
[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D2500000=
00.0,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dexternal,time_s=
ource=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.
[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D2500000=
00.0,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dexternal,time_s=
ource=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take some t=
ime.
[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D2500000=
00.0,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dexternal,time_s=
ource=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
Using TX Device: Single USRP:
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
    TX Dboard: B
    TX Subdev: Rhodium

Using RX Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n320
  RX Channel: 0
    RX DSP: 0
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

Setting TX Rate: 50.000000 Msps...
Actual TX Rate: 50.000000 Msps...
[WARNING] [0/DUC#1] The requested interpolation is odd; the user should exp=
ect passband CIC rolloff.
Select an even interpolation to ensure that a halfband filter is enabled.


Setting RX Rate: 50.000000 Msps...
[WARNING] [0/DDC#1] The requested decimation is odd; the user should expect=
 passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.
decimation =3D dsp_rate/samp_rate -> 5
[WARNING] [0/DDC#1] The requested decimation is odd; the user should expect=
 passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.
decimation =3D dsp_rate/samp_rate -> 5
Actual RX Rate: 50.000000 Msps...

Setting TX Freq: 500.000000 MHz...
Actual TX Freq: 500.000000 MHz...

Setting TX Gain: 10.000000 dB...
Actual TX Gain: 10.000000 dB...

Setting TX Bandwidth: 10000000.000000 MHz...
Actual TX Bandwidth: 10000000.000000 MHz...

Setting RX Freq: 500.000000 MHz...
Actual RX Freq: 500.000000 MHz...

Setting RX Gain: 40.000000 dB...
Actual RX Gain: 40.000000 dB...

Setting RX Bandwidth: 10.000000 MHz...
Actual RX Bandwidth: 10.000000 MHz...

[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
Checking TX: all_los: locked ...
Checking RX: all_los: locked ...
Checking TX: ref_locked: locked ...
Checking RX: ref_locked: locked ...
Setting device timestamp to 0...
L[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
Error: Receiver error ERROR_CODE_LATE_COMMAND




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.com/v3/__http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com__;!!FbZ0ZwI3Qg!7AJ1b7VHLqey5c3IaGeQKdgewwv0Nirz9fHkw2wBRpXiTyvy=
sFuYLwMl3Y__PQ$>

--_000_BN7PR04MB43872C88A122FB05CFA9590D8FCA0BN7PR04MB4387namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); --darkre=
ader-inline-color:#e8e6e3; --darkreader-inline-bgcolor:#262a2b;" data-darkr=
eader-inline-color=3D"" data-darkreader-inline-bgcolor=3D"">
That did the trick Jonathon. Thank you!</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Friday, December 11, 2020 1:48 PM<br>
<b>To:</b> Dylan Baros &lt;dylan.baros@ni.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Receiver error ERROR_CODE_LATE_=
COMMAND with txrx_loopback_to_file example.</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Dylan,
<div><br>
</div>
<div>Can you try adding &quot;rx_usrp-&gt;set_time_now(uhd::time_spec_t(0.0=
));&quot; after line 526 in txrx_loopback_to_file.cpp, re-build, and see if=
 that fixes your issue?</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Dec 9, 2020 at 9:37 AM Dyla=
n Baros via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Good morning,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I am attempting to run the txrx_loopback_to_file example with the following=
 hardware:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
USRP N320 @ 192.168.20.2 10g sfp+ port 1</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
USRP N321 @ 192.168.10.2 10g sfp+ port 0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Connection between RF1 TX/RX on N321 to the RF1 RX on N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
My command to run is:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
./txrx_loopback_to_file \
<div>--tx-args &quot;type=3Dn3xx,addr=3D192.168.10.2,master_clock_rate=3D25=
0e6&quot; \</div>
<div>--rx-args &quot;type=3Dn3xx,addr=3D192.168.20.2,master_clock_rate=3D25=
0e6&quot; \</div>
<div>--file &quot;txrx_const0_rate50e6_sanslo_cw500e6_march3_11am.dat&quot;=
 \</div>
<div>--settling 5 \</div>
<div>--nsamps 50000 \</div>
<div>--tx-rate 50e6 \</div>
<div>--rx-rate 50e6 \</div>
<div>--tx-freq 500e6 \</div>
<div>--rx-freq 500e6 \</div>
<div>--ampl .5 \</div>
<div>--tx-gain 10 \</div>
<div>--rx-gain 40 \</div>
<div>--tx-subdev &quot;B:0&quot; \</div>
<div>--rx-subdev &quot;B:0&quot; \</div>
<div>--tx-bw 10e6 \</div>
<div>--rx-bw 10e6 \</div>
<div>--wave-type &quot;CONST&quot; \</div>
<div>--wave-freq 0 \</div>
<div>--ref &quot;external&quot; \</div>
<div>--tx-channels 0 \</div>
<div>--rx-channels 0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
Output:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Creating the transmit usrp device with: type=3Dn3xx,addr=3D192.168.10.2,mas=
ter_clock_rate=3D250e6...
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-2=
5-g1a34ba8a</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31EDB79,claimed=3DFals=
e,addr=3D192.168.10.2,master_clock_rate=3D250e6</div>
<div>[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062</div>
<div>[INFO] [MPM.main] Spawning RPC process...</div>
<div>[INFO] [MPM.PeriphManager] Device serial number: 31EDB79</div>
<div>[INFO] [MPM.Rhodium-0] Enabling LO distribution board</div>
<div>[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).</div>
<div>[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disa=
bled in the device tree overlay (e.g., HG, XG images).</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.RPCServer] RPC server ready!</div>
<div>[INFO] [MPM.RPCServer] Spawning watchdog task...</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `master_cloc=
k_rate=3D250e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div><br>
</div>
<div>Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.20.2=
,master_clock_rate=3D250e6...</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D31F2BA2,claimed=3DFals=
e,addr=3D192.168.20.2,master_clock_rate=3D250e6</div>
<div>[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062</div>
<div>[INFO] [MPM.main] Spawning RPC process...</div>
<div>[INFO] [MPM.PeriphManager] Device serial number: 31F2BA2</div>
<div>[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!</div>
<div>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).</div>
<div>[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disa=
bled in the device tree overlay (e.g., HG, XG images).</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.RPCServer] RPC server ready!</div>
<div>[INFO] [MPM.RPCServer] Spawning watchdog task...</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `master_cloc=
k_rate=3D250e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0e6,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dinternal,time_so=
urce=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-1] Re-initializing daughter board. This may take s=
ome time.</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `master_clock_rate=3D25=
0000000.0,mgmt_addr=3D192.168.20.2,product=3Dn320,clock_source=3Dexternal,t=
ime_source=3Dinternal,skip_rfic=3DNone,ref_clk_freq=3D10000000.0'</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>Using TX Device: Single USRP:</div>
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
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div><br>
</div>
<div>Using RX Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: n320</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
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
<div>Setting TX Rate: 50.000000 Msps...</div>
<div>Actual TX Rate: 50.000000 Msps...</div>
<div>[WARNING] [0/DUC#1] The requested interpolation is odd; the user shoul=
d expect passband CIC rolloff.</div>
<div>Select an even interpolation to ensure that a halfband filter is enabl=
ed.</div>
<div><br>
</div>
<div><br>
</div>
<div>Setting RX Rate: 50.000000 Msps...</div>
<div>[WARNING] [0/DDC#1] The requested decimation is odd; the user should e=
xpect passband CIC rolloff.</div>
<div>Select an even decimation to ensure that a halfband filter is enabled.=
</div>
<div>Decimations factorable by 4 will enable 2 halfbands, those factorable =
by 8 will enable 3 halfbands.</div>
<div>decimation =3D dsp_rate/samp_rate -&gt; 5</div>
<div>[WARNING] [0/DDC#1] The requested decimation is odd; the user should e=
xpect passband CIC rolloff.</div>
<div>Select an even decimation to ensure that a halfband filter is enabled.=
</div>
<div>Decimations factorable by 4 will enable 2 halfbands, those factorable =
by 8 will enable 3 halfbands.</div>
<div>decimation =3D dsp_rate/samp_rate -&gt; 5</div>
<div>Actual RX Rate: 50.000000 Msps...</div>
<div><br>
</div>
<div>Setting TX Freq: 500.000000 MHz...</div>
<div>Actual TX Freq: 500.000000 MHz...</div>
<div><br>
</div>
<div>Setting TX Gain: 10.000000 dB...</div>
<div>Actual TX Gain: 10.000000 dB...</div>
<div><br>
</div>
<div>Setting TX Bandwidth: 10000000.000000 MHz...</div>
<div>Actual TX Bandwidth: 10000000.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Freq: 500.000000 MHz...</div>
<div>Actual RX Freq: 500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 40.000000 dB...</div>
<div>Actual RX Gain: 40.000000 dB...</div>
<div><br>
</div>
<div>Setting RX Bandwidth: 10.000000 MHz...</div>
<div>Actual RX Bandwidth: 10.000000 MHz...</div>
<div><br>
</div>
<div>[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.</div=
>
<div>Checking TX: all_los: locked ...</div>
<div>Checking RX: all_los: locked ...</div>
<div>Checking TX: ref_locked: locked ...</div>
<div>Checking RX: ref_locked: locked ...</div>
<div>Setting device timestamp to 0...</div>
<div>L[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>Error: Receiver error ERROR_CODE_LATE_COMMAND</div>
<br>
<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com__;!!FbZ0ZwI3Qg!7AJ1b7VHLqey5c3IaGeQKdgewwv0N=
irz9fHkw2wBRpXiTyvysFuYLwMl3Y__PQ$" rel=3D"noreferrer" target=3D"_blank">ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BN7PR04MB43872C88A122FB05CFA9590D8FCA0BN7PR04MB4387namp_--


--===============6052719415305658234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6052719415305658234==--

