Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 714E82D4478
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 15:37:50 +0100 (CET)
Received: from [::1] (port=59572 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn0bC-00071s-36; Wed, 09 Dec 2020 09:37:46 -0500
Received: from mx0b-00010702.pphosted.com ([148.163.158.57]:19670)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=561242122f=dylan.baros@ni.com>)
 id 1kn0b8-0006sI-HO
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 09:37:42 -0500
Received: from pps.filterd (m0239463.ppops.net [127.0.0.1])
 by mx0b-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B9EShdc031067
 for <usrp-users@lists.ettus.com>; Wed, 9 Dec 2020 08:37:01 -0600
Received: from nam04-co1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2055.outbound.protection.outlook.com [104.47.45.55])
 by mx0b-00010702.pphosted.com with ESMTP id 3586fgx8wy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 09 Dec 2020 08:37:00 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N8h4MwPOhaY2BsizU5qxFXrokPkkVZkV+M4DI7KS4YF8skooaShl0eYgENhV+/JvQ458F4L1q9/fJPpRlpnRZOEBwpeuPMVGK3DlYvyczEAaHDyCWr4tBxAeKsBZ9aZRY1fiRGXawzYzvlulpHLwIz9aqJDI/tgcD2fe4NN2dHxKXtvRi7YcLqwhYk+aq6MZxWC77U19ypq12hVJMSnoaTqftCgfhL3WQFiNT6BlBQlL10Dku8hNqAEQ6CLl3zHmxUJZ+R/+0yd0tdi0+NRrFjfjQmVc//KPULAX0jUe0c4uE+HhK001mZTiooNqo2GnFLhqG5Zo0zUhWvJCGiQ5aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5eBm9Rwz4dQcfKSGWtnrBw30/SDr6j9vUZi0E0TsTFY=;
 b=Dr6bBrHOeIW2HKu5WKmVDy0t1YSW9UaAGT/c8uoozuzi7IfgMS2lJQ9FTja8zYT7jenzeqUB5yzrmx1Q94JRlWPZC1ZWdkKK+5bo9+2wUsIPCPJL8fsX8UW0L31cYkqeHzafG28xTxehSV9xlyL2TUeWAseeMmxK43FLGw0F7VLhS1BaIW8mr/MV9bNUp3cBncnKYDGRwZznkPmTqHJAX4qTRwXzn67Pv0qtoE9diTl3+LlwpPGDEm3kEMaje7XUlRWzsNcljbWsCNvXAND2/Fib8nmp3Cgb5r7+Cu1hPHg3heFIA94DDhSaE2uZ+q9fy2PtbZBebDdbxjcx/TmAFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5eBm9Rwz4dQcfKSGWtnrBw30/SDr6j9vUZi0E0TsTFY=;
 b=RXSBfcKlUq+aPXbP/aH/vXhqyJlnNspyrT6EYlPSY5Qjsk+CLBEzmHQPT506BHynTEhF5aAbmwMbyqhi8ni5zlFQ1zAN87ifFS/EPnbqrAOvZAwDWB7H0zPoQa4Sg0j08Da25Q3jPARxMGcxt1bo0LHkTzU6rnteem1LfAqyM5s=
Received: from BN7PR04MB4387.namprd04.prod.outlook.com (2603:10b6:406:fc::17)
 by BN7PR04MB4052.namprd04.prod.outlook.com (2603:10b6:406:c0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Wed, 9 Dec
 2020 14:36:58 +0000
Received: from BN7PR04MB4387.namprd04.prod.outlook.com
 ([fe80::2058:57be:182f:bbdd]) by BN7PR04MB4387.namprd04.prod.outlook.com
 ([fe80::2058:57be:182f:bbdd%3]) with mapi id 15.20.3632.021; Wed, 9 Dec 2020
 14:36:58 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Receiver error ERROR_CODE_LATE_COMMAND with
 txrx_loopback_to_file example.
Thread-Index: AQHWzjaQzYmRV4e6o0yavy4UJR+HTQ==
Date: Wed, 9 Dec 2020 14:36:58 +0000
Message-ID: <BN7PR04MB4387D9599B8341AFACDD24B18FCC0@BN7PR04MB4387.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ni.com;
x-originating-ip: [2601:2c4:c800:5fe:fc7e:f6eb:58a3:de20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c45d7878-97e7-44f5-6dc3-08d89c4fe22d
x-ms-traffictypediagnostic: BN7PR04MB4052:
x-microsoft-antispam-prvs: <BN7PR04MB4052107C8EE45118A03360708FCC0@BN7PR04MB4052.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WSMD+T14aDdYmmdAWu1u9aSIrGsZ2o7FNwaAXlKlxE60EviuoKNPKHWVvE8XBVZPQsnjaopCpF/np5Y/JeuSpv5knhmrqI8EbNOWd8icD4C5BwVuk8ZcIKFtC/d6yIS3wD2gpXM+Vlw2Mx15ZmOeQoTfroJOrkDA5bEyV7xqcyyQ/Y2cAPXA0bNqjqVlP4J8Yx23aLfiyyH5uRElDjMlhDviWEuobcqHIN+qpco9LIfBneWZsIJgZkMZMJzHJuV7/DAzEV7ZsJcU+hbNNCTSwqIvWMqy1Xr/VEdH9yIP1wVPg892euwM5Z3a2PS+JGFxMlb3s7wN3fg9upLn+0SNvg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR04MB4387.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(136003)(30864003)(52536014)(186003)(7696005)(2906002)(6916009)(71200400001)(5660300002)(8936002)(6506007)(83380400001)(91956017)(33656002)(76116006)(55016002)(44832011)(86362001)(9686003)(64756008)(508600001)(19627405001)(66556008)(66446008)(66946007)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?u4qgYnyT66Yn9Rbs5e2SV/vBOU4VB412s6Mfg8yb4e6LYQ7Mv99VhmhoMi?=
 =?iso-8859-1?Q?bMVsjq6ndvEguHp0h6K9VSHBVYNqxZ1PHZYmEx6JZOPR3/zPvTlzcKvvAf?=
 =?iso-8859-1?Q?6dClAtwYU7FEJG5Fc5euzpr92gwfuETtjwQMar5Yz8bkH2kLP5lakvLEY6?=
 =?iso-8859-1?Q?afXwurpf6SAIKFzTevp39LuRH+3bQsQs/qKR/9wIbxkZx+69lS3e0T/gCW?=
 =?iso-8859-1?Q?5QIvrkSN3wEkI8Gcvj8OSLWyP8XFjEPquHVoU9KZHUHllJxsI2KSHjpDmi?=
 =?iso-8859-1?Q?fnOjfJDoneIw8t2E03hy+Iulyi7hANvr0Od7UjIlckYDmPDtJ+8p15znSY?=
 =?iso-8859-1?Q?ZVSAnS1Zz5DxB6q3A9ltkIAQTFiIITH48Apzk1k+KUWmGRo/nSpdM1O9EW?=
 =?iso-8859-1?Q?pPJzNeZRI3YQOkKhXtDzUPiILpLIBAUNbQCaawFE2Wl/6EMnd/S+MEG/Rr?=
 =?iso-8859-1?Q?I/tOOaMo67P+CTJ1c6PzFN+ua3hmjXYRzC6TMC1tM9zu3ykyihrj/l7qnh?=
 =?iso-8859-1?Q?nFPALnTu7fK3sdX+14fOQuNbJHYyBlztSuRNVk5uX6fYrjEwDEA/Te7V69?=
 =?iso-8859-1?Q?TZj1Zkk+/35Hiss1VPZvJuSFH3kVuUWm5wWnF4df49sUNhxcqa/7HVKWNY?=
 =?iso-8859-1?Q?iewy2ECbZhDjEj3LxmvPFZe+Z+7eeBgC4DFBSOumnvVn4RwRg7rUuZC2Bp?=
 =?iso-8859-1?Q?FoiHfXiPaWkDFNZHdiIB+cs3vMI6W/RqpE62bdk1HZSBZ57Crvb9KyAY1+?=
 =?iso-8859-1?Q?hTi6ffIlkNhum2MA9eUKaoQg/umVBjDn8JzCYjdsKWGHmZq0Ef1R1t4Vv0?=
 =?iso-8859-1?Q?h099adNTGv1mB/B+6qmspwT+gteIVlakJ2hvmEpQnwahE5QHOIBeLw1Tle?=
 =?iso-8859-1?Q?D13vglcmUZPnXKsJyiKbwzwxwBWLoToenfm+WNR7zukU11qNkt4t7trvBy?=
 =?iso-8859-1?Q?1/ZKOsi4ANw+ia7Yo4HJ+tpfspUd+BBfTHjHadlVUg/mpAFPE+pM7hiaqR?=
 =?iso-8859-1?Q?SdJdVKxlwilj5zv0jdiSVdRZjzF98aKwaY9KWv/8P8pilXJkbsXnX2jB42?=
 =?iso-8859-1?Q?yjc0Se5nl3uU/+lTenFu0T0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR04MB4387.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45d7878-97e7-44f5-6dc3-08d89c4fe22d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 14:36:58.3542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jIaTm96hLhA6sTmNws888GZd4Rf1DGxxSrZ0ASsahZ0Hv7UsqLeGxlc+Y0AxgFqwmfP0UsdA5pV01ObyWvZ+YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR04MB4052
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-09_13:2020-12-09,
 2020-12-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
 score=30
 lowpriorityscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 phishscore=0 clxscore=1011 bulkscore=0 adultscore=0 mlxscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090104
Subject: [USRP-users] Receiver error ERROR_CODE_LATE_COMMAND with
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
Content-Type: multipart/mixed; boundary="===============5007498805008351642=="
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

--===============5007498805008351642==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR04MB4387D9599B8341AFACDD24B18FCC0BN7PR04MB4387namp_"

--_000_BN7PR04MB4387D9599B8341AFACDD24B18FCC0BN7PR04MB4387namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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





--_000_BN7PR04MB4387D9599B8341AFACDD24B18FCC0BN7PR04MB4387namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Good morning,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I am attempting to run the txrx_loopback_to_file example with the following=
 hardware:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
USRP N320 @ 192.168.20.2 10g sfp+ port 1</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
USRP N321 @ 192.168.10.2 10g sfp+ port 0</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Connection between RF1 TX/RX on N321 to the RF1 RX on N320.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
My command to run is:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
Output:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
</body>
</html>

--_000_BN7PR04MB4387D9599B8341AFACDD24B18FCC0BN7PR04MB4387namp_--


--===============5007498805008351642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5007498805008351642==--

