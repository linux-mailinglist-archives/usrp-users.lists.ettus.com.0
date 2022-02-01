Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB9B4A644F
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 19:57:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A5C3385132
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 13:57:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="ahFGupRr";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.48])
	by mm2.emwd.com (Postfix) with ESMTPS id BBEFC384DB6
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 13:56:04 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.129])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 1E52130008A
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 18:56:02 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2043.outbound.protection.outlook.com [104.47.51.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id E81FB500072
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 18:56:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iJkwHSS4hSsxBLvHO6RVZh+QpTbSjt08VLOevu9li9BYGEvk9zQWzJqWxdUjk4dDsUr1v7AIAaOMHfgKVDSmic+p7yJgrbdTatAX6H38Y44IQegGQTCiBcctnrjTrn3h4PD/2tuTfFHXEqtlKVjEeMTKH5sPRPIb7w0c7sc4rGEB5qqEDVttY6ZcX8Nw696rAM7sb73ZeZKyqj56N8D/SFUYfv2xANo52b+yHbAN8DhN0GvU6kG7TtK/7EJk8F8OLOnXiwKte1RVbM3mEoIVgRmQx15RrKowgNTyKhuQNFLx8uklnxcnwm+n/fdtb6Gw+AwXMGoB4bi6FEmzmbJTQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TBeYIsiXl4Do30siw0nRWjkUrln8nNjU8zGJcuQ/NJg=;
 b=RXc1v+F3B4w2AL6rivk5wBwgDvzxIC1mBiNYbLiM75ZZTFtOjme90qGSnDJoV+mCzABH69/Woz0l2P2YEcuoEZ7qIbSulYFZvS00iznhZhCOYyUcUnpiMIbC0nyFfMrsGzJesD7AvDZyWvc7wxvuwKES/HCtqLPIB6g9jApISjO94chubyK3PSx26l7KQb2A44nfs9cpSCj/F6ygHaa+T5fAVEHRBQbDGjecn0e6JHNAztDEeI4K+8d9rUdVvURQV6MRVTHHo8+fTBVMJjSL/HWs2SkZ7pfR4PugQfqB68VaL6SxJ+4OFucIZwe19ptm6wY3+hmpT/GrwGUTq0mvDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBeYIsiXl4Do30siw0nRWjkUrln8nNjU8zGJcuQ/NJg=;
 b=ahFGupRrsW3/GCg1GDN0MLU2B0PTvpnZ2GKC8QxBotR26bc6dV9pVKAngd/m3OXtWO8ZV/R4huQYqPf/AVeRgzlX/4L2EAJRljTjHxYgdpx7u7gKNWUTQ7KR+cn9bzRVkiTe5E68OS1n1CsqhdNWRU4UcRO854qbtVgGfnbHUbo=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BL1PR12MB5379.namprd12.prod.outlook.com (2603:10b6:208:317::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.22; Tue, 1 Feb
 2022 18:55:59 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Tue, 1 Feb 2022
 18:55:58 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Timed Commands Not Working
Thread-Index: AQHYF5tb715UD5NcGUSH5wmFASi3eA==
Date: Tue, 1 Feb 2022 18:55:58 +0000
Message-ID: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 903da000-2791-474c-2c69-08d9e5b47c30
x-ms-traffictypediagnostic: BL1PR12MB5379:EE_
x-microsoft-antispam-prvs: 
 <BL1PR12MB53791874394BB5BA86C7111FB8269@BL1PR12MB5379.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VupgZ8hYVMe19AtBZ+5tX6T/v4F7/iy4kuKTe6Crx+wlYcpM3aRbsMI6cKbNH9nPzHdeuiDsB7wl3hqcJjr8LdnKDEKy4/V6ST/hSwmzLrDeVM3pP71DI0QHyq577u/Pe6J1TbmUXxOE8TKsaKKMaWHZ13HjOrsXy9FUogTmFpqrS8c26Nx+fAN1+TbSppQ9XBpbhpkBp3Wk90gOA8w03ug9gZvbWmk2Y4UPX2j9Uz9E3bL1jW6dU5f/I0B89gUm9/5rcJx1vjWl27kZ20w+gX5yOS697ZlG3jJcQd2XOOlcUgEMtyUmDOfoOMMYHB7OuMml5T36YXoNTJW+F8StDIFz0CakgFZW3bRtek0izUdYgYkMII23UvVDxZ8fkCp4OrKgFLZktelHbCTopSMphmRbGqSZD9p3ZFbZYmbInJgS0lA+2k9lnWPJMDiVCQBdlK+a73W6tYupnFLsVWiGIQCthXQE9OLCzShW938//BTq580M7P/jkgqt0giY3qcfYQ8odNxX26psY3InRssYy6Ml2TlCme8XZqQ/999gZJk3oTLZACjN2crAKWlnUh68hMLYULNTw17E+kCvxTbFcFz1hKTNRB3qX/kwopx39FlVdEO2VxFc7LdUNCkmpsjOV4PoY+ty4Gf3BHpZ6X2mgGEGy9j2lFpAD29JjQrNiOAkW/mPEIH93JYHOFR5iYK2BWS7+En1tnQ1cve4dRdg5A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(346002)(376002)(136003)(39830400003)(366004)(52536014)(186003)(508600001)(3480700007)(33656002)(26005)(316002)(55016003)(6916009)(19627405001)(71200400001)(66476007)(8936002)(9686003)(86362001)(5660300002)(8676002)(66556008)(76116006)(122000001)(66446008)(66946007)(6506007)(7696005)(83380400001)(2906002)(38100700002)(38070700005)(64756008)(20210929001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?huGpvRrad01pRv+Tysqx3XYU0NebMLN9cQCS0L4TvRsiLOBuBzf8CHxZLJ?=
 =?iso-8859-1?Q?2GOjzS0aNdTDeoCgV17/FkRUz6Ef6WLZFoSZ5tq0HOwepxdPM/XKkWPGxR?=
 =?iso-8859-1?Q?IN4AUDNVXzbwB7HiPV31FtNQ6Xt2DaMz+JhUjrJK8hdyysPOri6390+9s9?=
 =?iso-8859-1?Q?V+lmCm65UddpQddlMkSWdxmiWbjLpW+Ab1LRBYK+bTjvpCk0G2t8aTbXEd?=
 =?iso-8859-1?Q?rTOx+e2qTcw+NNJXPfABwKwnkWT5ZPZJfxJxsT1x6Lw3pV7AOAb41hu2LF?=
 =?iso-8859-1?Q?AX+PdNGj0bF4tI2hKEsypVU0JJvP/ovvq1s1SQkKUTdd1XATYzaC8tnE3Z?=
 =?iso-8859-1?Q?kOJC9BOpU9lMWRPzMuAI4wJsfnF56IL6h2HLD5nl+gqnaU0W3iIk1SLQhv?=
 =?iso-8859-1?Q?1eFD+Ov18E+eYD98iU/g1gtR3FjsnxkzYAl9JrMKd3E3Wrl1f3DxGhQcbC?=
 =?iso-8859-1?Q?jDe1oIkv+Yo5tUOwYLNJk59T1tgOEjvZap9d5MYQVQ3RUro4TtSGJZ4QN9?=
 =?iso-8859-1?Q?yRD1yXHYa/k2DFF5mdRJzmI7FSvxUZLD+V0ObHmKoFguBvrx9ZxYKkP5lc?=
 =?iso-8859-1?Q?lzfcIH6XLO7RP9AxFoCUguSSzru1PRwfne9j+RT42Aa1eZKUy4c9z7TwJM?=
 =?iso-8859-1?Q?ExFGIJjWwyJ+Qzauy4ilKJHy53BSZgHBA9hK1o9HBaxLgJ8MP9nDr64hsA?=
 =?iso-8859-1?Q?JmuL6usNf6MJmCxzEcL7fLB4XBtIBeXK0jdnKzPR7QKIwGEdtwFtvsAe8r?=
 =?iso-8859-1?Q?69PfTc0H8Z2pRnQIjstcX7xzPec6ArwQNs+z3tkDP5cZyN8FzNxqln26uZ?=
 =?iso-8859-1?Q?lwnGEF76BlTDb5Tmx8em2KnDHGldUTz0zW8rFU/ApSrNzQ7shW42i2f4f8?=
 =?iso-8859-1?Q?huh9wDb4ScYxh8MKO5lGxsAHGN+1Jy4VeZroi9nGQ0dgfJbs5/CVL91jxV?=
 =?iso-8859-1?Q?+bhTrrvmsMt1mkozyU0sjuEHS5aiQDBl4Cf9Jsw5v+d4MaRvpVX11/ZqfH?=
 =?iso-8859-1?Q?uO98cMYseoq1xY1Y2XtF5spJivesr6BBMcPMmqNCrjGNLCvyUdURJeknga?=
 =?iso-8859-1?Q?BVIaDOVIWc2wxCxjLG7yr7Jz5f8tYFaWxT8NnxQXcTClwCPoGJUfuC9MXj?=
 =?iso-8859-1?Q?c5a76inXx8FwxOU93kxOtvPOjzMMMlFNdmGipCs7sL3MUw19r2hFiQPe8F?=
 =?iso-8859-1?Q?yIvcQaSwthLYYX6ZmFFIAeZM8kcWyrTXTDD9gr/2k/u6/7tFLS9l0qpauM?=
 =?iso-8859-1?Q?oMwabYvNn0aqqRIz2/duFPxsUYB5B3imFrx4dU6TbtQqrs3i9whD3FlrES?=
 =?iso-8859-1?Q?EJxQaEdcCd1d/EIuYqlcKrgWMI4M0mX+J4VGEh2sBaabqa5h38XguoPh/m?=
 =?iso-8859-1?Q?+R5t/CyxEEwYWcZIpYCa9RNevFrnrYQZ0gGYErtBkDIsIJl2eAsq/c6qnN?=
 =?iso-8859-1?Q?Whzfph+n44MaINErH9gJaiOp1M8xQM0urwPMPrGMmvAifEfSyT6TaaEH+U?=
 =?iso-8859-1?Q?zneVg3rMrl4H1qtZ626RFFRATLgYg2CZNaVS458ZdXFAGtwoiOfOR9Lo0E?=
 =?iso-8859-1?Q?Lgv1E45oTdFmqCXVfvpNk9G9MT19BRDcMe61hqaqYIbsqed/eYG7WfTUeI?=
 =?iso-8859-1?Q?yDHM68upgYOHBGxIrKF1Sxe0aT6n8nKcqTe1xlPAScudXgUnbKhN0FEjsZ?=
 =?iso-8859-1?Q?AonhCcsg+cQRZ/jTpF0dj5NxGLn5ZLVQ3LUkkLyTf9iDMVhuui1K7/F2eX?=
 =?iso-8859-1?Q?pxGA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 903da000-2791-474c-2c69-08d9e5b47c30
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2022 18:55:58.6760
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aN96Rzaz4PONdp+/UQ85K1Q2mqcxgPzXDpaCaABa8aYGP6jpaPedllx/AvLD7XVdYz3LsS+O1Rpej7ch25OVbU6t9zrLVfMK6OULJNWG1zc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5379
X-MDID: 1643741762-E2x0n7vkJ3d6
Message-ID-Hash: UFK3AP2IHYHY32DX6WDLHRLGEZQIX2RN
X-Message-ID-Hash: UFK3AP2IHYHY32DX6WDLHRLGEZQIX2RN
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZ3EKK6N4YRRWNHF4IEAUO2N76GAXQCK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2006156943976472355=="

--===============2006156943976472355==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312C4A465FF575C85EF59DEB8269MN2PR12MB3312namp_"

--_000_MN2PR12MB3312C4A465FF575C85EF59DEB8269MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I've been trying to get an app working with timed commands for an E320 or N=
320 using UHD 4.1. It seems that all commands are processed immediately, no=
t at the time I tell them to. Setting the time to start RX streaming does s=
eem to work fine, but that is a time_spec passed to the streaming function =
-- not a "timed command".

If, on the other hand, I use timed commands to set a series of RX frequency=
 tunes in the future -- to retune says every 100ms -- that isn't working. A=
ll retunes get processed immediately, one after another, with no 100ms gap =
in between. I would post the code I'm using here, but I went ahead and ran =
the UHD-included "test_timed_commands" example on both the E320 and N320. T=
he example application does not seem to work right on either device and exh=
ibits the same behaviour I'm seeing with my code. You can see from the resu=
lts below, that instead of a 100ms gap between get_time_now() calls, as the=
 example app is setup to do, the calls to get_time_now() return immediately=
.

Here is the output of "test_timed_commands" on the N320. The code is unmodi=
fied from the provided example source:
--------------------------------
$ ./test_timed_commands

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0-g25d=
617ca
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dext=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'
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


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 2016.288086 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 416299.532064 us
 Response 1: 418303.910319 us
 Response 2: 420352.290853 us
 Difference of response time 1: -97995.621745 us
 Difference of response time 2: -195947.241211 us
 Difference between actual and expected time delta: -97951.619466 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.524535 frac secs
 Stream time was: 0 full secs, 0.524535 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!
---------------------------------------------------

Any thoughts on this would be appreciated, as timed commands are important =
to the application we are developing.

Thanks,
Jim



--_000_MN2PR12MB3312C4A465FF575C85EF59DEB8269MN2PR12MB3312namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I've been trying to get an app working with timed commands for an E320 or N=
320 using UHD 4.1. It seems that all commands are processed immediately, no=
t at the time I tell them to. Setting the time to start RX streaming does s=
eem to work fine, but that is a
 time_spec passed to the streaming function -- not a &quot;timed command&qu=
ot;.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If, on the other hand, I use timed commands to set a series of RX frequency=
 tunes in the future -- to retune says every 100ms -- that isn't working. A=
ll retunes get processed immediately, one after another, with no 100ms gap =
in between. I would post the code
 I'm using here, but I went ahead and ran the UHD-included &quot;test_timed=
_commands&quot; example on both the E320 and N320. The example application =
does not seem to work right on either device and exhibits the same behaviou=
r I'm seeing with my code. You can see from
 the results below, that instead of a 100ms gap between get_time_now() call=
s, as the example app is setup to do, the calls to get_time_now() return im=
mediately.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Here is the output of &quot;test_timed_commands&quot; on the N320. The code=
 is unmodified from the provided example source:<br>
--------------------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
</div>
$ ./test_timed_commands
<div><br>
</div>
<div>Creating the usrp device with: ...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0=
-g25d617ca</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=
=3Dexternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'=
</div>
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
<div><br>
</div>
<div>Testing support for timed commands on this hardware... pass</div>
<div><br>
</div>
<div>Perform fast readback of registers:</div>
<div>&nbsp;Difference between paired reads: 2016.288086 us</div>
<div><br>
</div>
<div>Testing control timed command:</div>
<div>&nbsp;Span &nbsp; &nbsp; &nbsp;: 100000.000000 us</div>
<div>&nbsp;Now &nbsp; &nbsp; &nbsp; : 416299.532064 us</div>
<div>&nbsp;Response 1: 418303.910319 us</div>
<div>&nbsp;Response 2: 420352.290853 us</div>
<div>&nbsp;Difference of response time 1: -97995.621745 us</div>
<div>&nbsp;Difference of response time 2: -195947.241211 us</div>
<div>&nbsp;Difference between actual and expected time delta: -97951.619466=
 us</div>
<div><br>
</div>
<div>About to start streaming using timed command:</div>
<div>&nbsp;Received packet: 100 samples, 0 full secs, 0.524535 frac secs</d=
iv>
<div>&nbsp;Stream time was: 0 full secs, 0.524535 frac secs</div>
<div>&nbsp;Difference between stream time and first packet: 0.000000 us</di=
v>
<div><br>
</div>
<div><span>Done!</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>---------------------------------------------------</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Any thoughts on this would be appreciated, as timed commands are important =
to the application we are developing.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR12MB3312C4A465FF575C85EF59DEB8269MN2PR12MB3312namp_--

--===============2006156943976472355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2006156943976472355==--
