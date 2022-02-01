Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 744DF4A64B2
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 20:11:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34578385358
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 14:11:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="gLnPWpUt";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.48])
	by mm2.emwd.com (Postfix) with ESMTPS id CB9173841EC
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 14:10:22 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.137])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 92770300095;
	Tue,  1 Feb 2022 19:10:19 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2047.outbound.protection.outlook.com [104.47.51.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 5865A140077;
	Tue,  1 Feb 2022 19:10:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cDRCn1ev4dDG0efCbi+7Q//ri0goXq5EzgQGWmz4Uu1gdgGkMS04CB4InGtfY/1lK7lSKoG/hlRQbzxZqgTrNEDfplV9x3VdHMbh30D3xwHGj/C/oLvTk9FNaUqYTRbcUBjwIO6oz6mhtAewQ7GMIM1P3SxAz8eczui//2EwQAJ3Ah1u2vENVBrj08h+deh8LL/6oM8L9qETHNjPeapLXs7UVnvFN7BNoSXMM8rjr2vqNxZaoR1ppYgcvxbFPIVZJyW+iCBuoPLhdhKyK3qUcfJVdrimWj/Qdf8dOkDLG7T4+7kJzPaMabi6J+I/QAnAJ/Ma68YFf7mt2v+qPiqcNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zN1/hU3IKNO3Yvw/digc6W28K9UUv7FvCYfShTuoXqM=;
 b=gky5B9hKHZbftJmsSFP/PHUx5dP95GtxrlMABBBaG7FKx+YF4uPfzxFcz0Lorl/nvWW/PeAvwG7rCUh15JlSCMD4XXSOBAuNAYQ174QALyy9OpBFz+4UxX/o+D1RdLhbHrK8we6odOkj2HtWOF2eJN/Jcu8LPEybyAUBaqFKpzAzhIfB9jGDkq60RfYklyIszwvCuCHGnj6bfWyVf6YWvdKepFARX0uOsiUgH4CoocBsm9mk0ofGbfP31QXP2LCe3blT6sicF+WO60zOZKRpBDZVT4Hp6T89Ny44usYCLkyFUH5f+F+Vs01bnR2mu3L+7PmkRmoQEz2I8mf5Mg+b9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zN1/hU3IKNO3Yvw/digc6W28K9UUv7FvCYfShTuoXqM=;
 b=gLnPWpUtpFQD5Y0Re2naZAnpUat0a3w9beduzAq/gKgz4Wtswk38Xq1Lrrymi10tBpuF8hBT6+RsCGnw5Vn+WCvuI48fkkPDwmzSYRL3xFPyU1rc+M91n0V1u9r8mUUVMxqNIOYr03K7ndMTcfzCODIyVzVXkJOEVbkoti642TQ=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by DM6PR12MB3833.namprd12.prod.outlook.com (2603:10b6:5:1cf::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Tue, 1 Feb
 2022 19:10:16 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Tue, 1 Feb 2022
 19:10:16 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTgs=
Date: Tue, 1 Feb 2022 19:10:16 +0000
Message-ID: 
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
In-Reply-To: <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7052b86d-78e1-4cc8-041f-08d9e5b67b4b
x-ms-traffictypediagnostic: DM6PR12MB3833:EE_
x-microsoft-antispam-prvs: 
 <DM6PR12MB383369C03DD51D8D41EF78EBB8269@DM6PR12MB3833.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qJxs/adbApNw6W7mF04Nb6TbdcOwjiCOOPGezXI/+BvKG7yDtqHPmxIX2bjMKYFYCrpKfWFUNtDeB8lVx8p0NZX0MIgzddxAku+2McJNWqN/9QoAsduLh26LxgYJx5GL9VYpuGVNsP8uItcIbSBkS5HV2U5BBpvRPkjH5P1pB8EU6O8oflJrMsCc1BLLCQ8SbxjoAUF7tZ3JMvHxpCn/AMB5xTVkr9WzwAXZsFe1a8ADKDuazDR7V8yr/SFz4GC78yMUyQ9wetnNO3TnDicTcrxjYGeqWe7TwtWvm6oLV2MnYWoOe9xRo+9JnsCsXj07eQSfo0k0uClUfKpTveJN6glPamtcRsAD+UGDWRfyK51E+Xj9AQl+E2nExBEJftfedBdUbkSJyGvQIPO1ztLCLqIprOlWvnKw88OTNz+YrXR+vMFNFwxJLr2NdaukH681PuxMXhBZOfV/TJ+Rmih0wzGQjrdoI4xga45KXijFw2+jsjZDzbVxMZbuhoz/JpnGGo+QQ3ah08pbATbm5ONLk/PRU4t1+eEDGyHm1+CR5w5VhWXWJ0nRS2dVwJWpZRUqd8r9rtjET+DwghBjWp6NkiX8rz/eLZ/UpWwVq5GHsHr9pZTSA375g2Exrpd+RCJCKmpSXJ/FzYhjv2lUxGzKT/U4JMYKbLFHPJufnWGsnf+oXxmZP61aqV9mrGoeVCy5WehcA5qN+9GAbArSaocoMKWSfT463npwHYtcFewnhFv3QpjPAd9oHNmu8AA0t0IoMvABeFUzeb78n9t6AuPokrE6ekATal0Iy8kczRbgwMU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(346002)(136003)(366004)(39830400003)(396003)(76116006)(71200400001)(66946007)(33656002)(66476007)(64756008)(8936002)(66556008)(166002)(66446008)(8676002)(508600001)(5660300002)(38070700005)(52536014)(38100700002)(966005)(53546011)(6506007)(83380400001)(7696005)(9686003)(110136005)(86362001)(2906002)(186003)(55016003)(19627405001)(26005)(316002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?DQzwGlHVUc+fS8n5EEh4lNyc8oZXKAmE9RuuNuT5hMArYPTGd2KFmHNfP7gA?=
 =?us-ascii?Q?CQYGln2KgDEZDbirog6bD1fjIS/D99A8WEXTHNDnb8mCPASmy2yG8mNf8pD5?=
 =?us-ascii?Q?psYAwUKwTExmetJMVPVHqYPugiwWEW8ZkFsWCiBnuDsbq1nvNDvhyOdkaaOL?=
 =?us-ascii?Q?LgN3LI+SXLO1zQzTsolZfKJY7MaEHQXkLeOypnLd4HoeXSJ5orFLYr79G0yu?=
 =?us-ascii?Q?whWzrp05gwU/8i7YnkaH3SW0K7jstr/tPrDGBpIJB5eQvMgEv+A7g2TcFLDK?=
 =?us-ascii?Q?Ey3Z6fp6QJ10J49HFr9HvnSxxeFh3niQHSjjyioPPMRg3jQnpFwA2dnt1ph4?=
 =?us-ascii?Q?z7auIP7IOG0Yr/BiqPeO2z1Ter93K53Btsm8u1dBQUrON9dV1I7dRCVLvc0O?=
 =?us-ascii?Q?t5KmYpwjhrU1G0JCacOYE7ZLZl0mCMY+SeLvx2r5imlu3gq2JYA/C3jDIccQ?=
 =?us-ascii?Q?lNGbCEA0zYDli4DPIVTjbi/fzHw8iRTJKjun7Nzz0g49iL7C4a3KuoLVTwR+?=
 =?us-ascii?Q?43R9GOGaiKh/LFn0NV18adJBb1XqMaEVghotmGgJLQNKSPPmyiYdKpJE8cee?=
 =?us-ascii?Q?gremefOskIapTUDOf3EKXCtGfw/Vs4CRK1YE0ZwmO4k05oB6Tdcn+pxCjt+K?=
 =?us-ascii?Q?PyWG4UhcWBrNKdR33nSAs3/4qjGaknBdEKHr91lpdQwtNqnUGlKsd3ytHJ3D?=
 =?us-ascii?Q?SMSCB6yYVF+rY2QcAkusx5dTMCkXh+6y6v8io6elWMYzsSygsTy9jKRzVRNO?=
 =?us-ascii?Q?nYFXjDJjtqwA7OrYiLZ0Hu5wonxzdZD2HBjECbBpE9allj/2sELM/qwFYiSz?=
 =?us-ascii?Q?kgQZEdC5ZUdDrhoNLAOjDOT+W1Eq2B+rnr1NXsHjqfDs4nKIgrrjook/rp3I?=
 =?us-ascii?Q?/yU0wUAH+nIrbkKEedwG6ehwxHQ/ZisfkOsn5a5ihvuF8187q6A56ZvDMOzN?=
 =?us-ascii?Q?DYO70p6jnCrK+56WentL3nMb0QjsM07qiR0OjqaCEr1u8lIKNbu6329vYxN/?=
 =?us-ascii?Q?kJK4EcO3i1c0DeO6drgksBQo7Tc9fhlsxlP4Ht5iI8Hq/DNGAmCWtuNkOhgT?=
 =?us-ascii?Q?U8duMKmmCbu3RVRpNWb8c5BvSpgzrAnp93J6oMjh3EVcIZH9Qvp8LcnUnyiU?=
 =?us-ascii?Q?BFAwMpzLKqsKfe4LnSDunKBqSH+D8RFkmRqgqiF4xJLHA1i5BKuMXJ1Z1v3U?=
 =?us-ascii?Q?gHw7skv4l/8zBBKtjx7Y3DcVx4ScXaxXQlTbbTeFXcmr7ydMFr7OwkrDohWJ?=
 =?us-ascii?Q?5OTry2Xrij5UOyUUd3/vgEVKzLj5511I6f/FtD1YOq/0HM7/qh8eZtVdTyob?=
 =?us-ascii?Q?NMb/NwkRezrkkg3c1qxHTv9VSwJIxAmQB3Es/Za0Z/G7ihqG8/oCfpMBIf/s?=
 =?us-ascii?Q?RnzjVbrWvskGRGRrbkaimzWpm+Yj0TI9nGkxg98aVrCGUOde1rG74q9GzcCB?=
 =?us-ascii?Q?MTmR9SJiRz5jhEUjhYFA++OiDNvF5VYrmQxpj3xDPLmLOOASexfKKycyTzoM?=
 =?us-ascii?Q?5s7cOU+kolHhCdTyUz23ejVJyT/aYgNdB+YJ4sCFAMx9l2+PjSsx63FnYkQF?=
 =?us-ascii?Q?9Of6bZo9mVedWkBhPNSXujxvEZt64bIjLubJyZm9dGbkDOOshpCMBt1EWdh5?=
 =?us-ascii?Q?qxywUElg9No2g/WRmSy28PRYh9L0+Jtpc9j92npLrtO05iOBWcJecrNkZvqm?=
 =?us-ascii?Q?IrOj1A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7052b86d-78e1-4cc8-041f-08d9e5b67b4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2022 19:10:16.3239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ttaeu0uE2EtSiuBi9LtTLBKUwO9xoiXgkrQymWG83YJZq/SQE+6pKp8dYSl83+BxhBCp3Ob4JAvybgpWahGZCOwsIw3n6ZMy/Q20QE5+3cU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3833
X-MDID: 1643742620-9uBsEjZaf9nQ
Message-ID-Hash: 4DKQEKMAQTY6EFQTVDCILDJZPAEB2ZGC
X-Message-ID-Hash: 4DKQEKMAQTY6EFQTVDCILDJZPAEB2ZGC
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMD7GUB6RWMYPSXANDZLJTY2CGITKT6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4780256135441793992=="

--===============4780256135441793992==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33129A29C695F7A0ABC8BB6EB8269MN2PR12MB3312namp_"

--_000_MN2PR12MB33129A29C695F7A0ABC8BB6EB8269MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

In the app I'm writing, for now I'm just setting the time to '0.0' after st=
artup, like:
   usrp->set_time_now(uhd::time_spec_t(0.0));

For the "test_timed_commands.cpp" test app, I'm just executing what is here=
:
https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/test_timed_=
commands.cpp

It doesn't appear to matter, but my E320 is setup to use an internal refere=
nce, the N320 is external.

Thanks,
Jim


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, February 1, 2022 1:59 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timed Commands Not Working

On 2022-02-01 13:55, Jim Palladino wrote:
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



How are you setting device time at startup?



--_000_MN2PR12MB33129A29C695F7A0ABC8BB6EB8269MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
In the app I'm writing, for now I'm just setting the time to '0.0' after st=
artup, like:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp;usrp-&gt;set_time_now(uhd::time_spec_t(0.0));<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
For the &quot;test_timed_commands.cpp&quot; test app, I'm just executing wh=
at is here:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/=
test_timed_commands.cpp" id=3D"LPNoLPOWALinkPreview">https://github.com/Ett=
usResearch/uhd/blob/UHD-4.1/host/examples/test_timed_commands.cpp</a><br>
<br>
It doesn't appear to matter, but my E320 is setup to use an internal refere=
nce, the N320 is external.</div>
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
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, February 1, 2022 1:59 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-02-01 13:55, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I've been trying to get an app working with timed commands for an E320 or N=
320 using UHD 4.1. It seems that all commands are processed immediately, no=
t at the time I tell them to. Setting the time to start RX streaming does s=
eem to work fine, but that is a
 time_spec passed to the streaming function -- not a &quot;timed command&qu=
ot;.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Here is the output of &quot;test_timed_commands&quot; on the N320. The code=
 is unmodified from the provided example source:<br>
--------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>---------------------------------------------------</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Any thoughts on this would be appreciated, as timed commands are important =
to the application we are developing.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<br>
</blockquote>
How are you setting device time at startup?<br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB33129A29C695F7A0ABC8BB6EB8269MN2PR12MB3312namp_--

--===============4780256135441793992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4780256135441793992==--
