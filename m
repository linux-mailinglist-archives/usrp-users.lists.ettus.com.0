Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CDA3E3694
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 20:04:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0724384952
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 14:04:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="HGEKeRVx";
	dkim-atps=neutral
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2135.outbound.protection.outlook.com [40.107.223.135])
	by mm2.emwd.com (Postfix) with ESMTPS id C6268383EF4
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 14:03:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKXXOhKWdxRUU8c8mf4ayiv5NSAOdnhfzuUa+UXIKxYl6vP9rn/vU28bFBtD+cbXyNBJfuy0IVdDdsGgitCriX5X34LvhaxyQRyz9EFPQHuuUwgibWXYoKW9ITYKEsSEXVZJ/QxD/TERI/b/MjkR8+9cQyNEYaZwNqDObJX+MKuLHcMzlqKBcucdTooVip6yiCZXPgZ2MpFJiMA4rRUc6PfdRy+XFtVnoj7YTbmRTKDQS5m+ANHgTc2bnxhAn5pgZzIjVJumDQgr9+z4t69DWiMgT+p5P73gjIAWxdR634OSHqTsF7pAVJlrT3rlcc3Ff7ba2udWX1uzKUAi9t3cpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XIIsH9c6z/SuVkKHGVUr6Fp3PyCtb4krej9ampYTJ7g=;
 b=Bmu8kJmdcABTSfzsVoo5tis94YNC2pC7Bc8Mv+5dH52jU4tk2PX7oaDAphoV4pRb7T4nP9Hs82C9/pyWzL+ud34GOXoT9OTFMlUgrwL+VizNoUD/79GA+2r/pcVDjb+Uw3Hbqi11yWO0ig4pUzr5jYb/DTf8PZE6fBHJFZAWlZawjyC28y8ABVsyyL69IRhCS0gli4kHpUZne/gz4Gd9Sd6JFKkRkipmGFaGMfgiOFATl29Yj9GrJvNBpJ9gqD3gPGzZYTF/dN6BXjR0I37QzCv+MFqP59RyWSMnx1Kbn09a3IzlgaBUwONhbmG4T069PoPclrnCdsEGzhZzTHGnRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XIIsH9c6z/SuVkKHGVUr6Fp3PyCtb4krej9ampYTJ7g=;
 b=HGEKeRVx652/rPiNSFdlEzJXH0kAipvEnjRsATTbymvuy7Dw9M7anm3m+cjahZwcl28aVSISBAytNI6isJNqFlGGTQMDCaoR/Gpb3cVjGva6wYGKid6ezN2NkmOQfq1NE+n2vUbdrjXhIDlIjrWZBedSSkgILp7QxIxVs/WKotY=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN6PR05MB3171.namprd05.prod.outlook.com (2603:10b6:404:bd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.10; Sat, 7 Aug
 2021 18:03:48 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf%6]) with mapi id 15.20.4394.021; Sat, 7 Aug 2021
 18:03:48 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: 
 AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1mAANWeAIAADfA4gAAPkoCAAAxAzA==
Date: Sat, 7 Aug 2021 18:03:48 +0000
Message-ID: 
 <BN7PR05MB45000C4A4FD1B8FB3F2B03D5D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com>
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>,<610EA718.1080908@gmail.com>
 <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>,<610EBFD9.2060400@gmail.com>
In-Reply-To: <610EBFD9.2060400@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9f6586a-3e42-4419-9e1c-08d959cdb4c5
x-ms-traffictypediagnostic: BN6PR05MB3171:
x-microsoft-antispam-prvs: 
 <BN6PR05MB3171AC63B7C55058CD022D75D5F49@BN6PR05MB3171.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZwESv7c3L3FRZVRq7/6LnTZ5FZ+t3qamQxhSMenZpVzxoe4Nkm1jgQNkQdtI/HdNCJz+r/iYTfXrpxRtvAJXoktTwtMiLzMo05zV92n0laFc7bJGqb7cUL8fDZQOCsYrd0qZUuD2XRwA+iWXLJ8eGDwECXqDwMaim/aFHyPxc495aSXvcYkE40cGf7KLGA+pUn/1/Lhwl/nVZvGK/4T6yrhJcK3PgumPHtpZZcS/WdpPR5i7H4JAk6fsfmyoFBShqBS4MRbrqIMG1pmWqNkcSBvGxxluNmjgdj0tiCx35gRcoU0qyoaKsIn3j7rimvhpEhah5SMsnSo4/YQJDiY1AZGFiO/MkUPxh92QDf8a0wBa7NQrwXpesET/bJHcIua3NzTAyaATrHepDZPm//pJua+qBwr970JrhHCIwhlF6bkyPEX4qnRGyd6/IJPoeILde46bvuTM0OAGlkjPGi6RqWU3QZ/RjBI5O/ZhDts4R35DKCX2lyN3s27vo5ZcOAmqONMt0CTV8jOGnusbRKfdnSrPw2K1/J64AwJW7cnWOQpkhyzIkBhYA58HQ+zLvYj/NUPW1p0UHv4M4MMF4VTG/5zXASHAenjiKh1hFAoi2wt1rLHEoJdvSvNSQN9Ys3P7TQIrDUMPRfpmCKzi6EH44BkiMubVWv5oCi2A8Y7fdaxRmq0P0gdaROPGljsUSChbTHClVzr/sBTV4TNyzfuCzw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(346002)(42606007)(39830400003)(396003)(366004)(83380400001)(478600001)(7696005)(19627405001)(53546011)(186003)(26005)(86362001)(8676002)(6506007)(5660300002)(2906002)(52536014)(110136005)(8936002)(91956017)(316002)(38100700002)(55016002)(64756008)(33656002)(122000001)(38070700005)(9686003)(66946007)(76116006)(66476007)(66556008)(66446008)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Ys+g1N3sD3IQ2I7R9+neKH7fvoJ/B4m0BDZU7LmbNnmSDopyx/p34Y3m?=
 =?Windows-1252?Q?C/W1s5Bzwpw/ymD+GKGHlAMFNHgX+uopeVAr8GnJNAN5DLrKiEZV2iLk?=
 =?Windows-1252?Q?3lQdcGJhWWgBllbZsxI29f2l73h7D3XQJQDz8QzagOg0CPhGB7zCdQWV?=
 =?Windows-1252?Q?aej9Igzfs0fW81qkGqGttUNb8BS3hza2rAE7nkC391wO+QRrSXL4MEF1?=
 =?Windows-1252?Q?cAuCA+gydISWLcOUySBwAgj3OeDlZM08dYY6Wntno0bgvaThAEBf2upr?=
 =?Windows-1252?Q?vyImQsQR53kADgQO2OGA7ZvXJhTPCDBt7xqV4c2t/ccrQo47WuDcR/7G?=
 =?Windows-1252?Q?+kyxYCRQxRHy3uuDhDMjzYKd/BdAIpc+/EVAhOWyReyUVdEf13Itv81J?=
 =?Windows-1252?Q?8tmtQZ0q5r3jQ9LV5AqAWKX0rrJHPNSy2iUOJi+oP3+c4N8LwonWwt2l?=
 =?Windows-1252?Q?4kEsS8s5CY6Nz9K0KYm8DIOv6yDI1RGzYuHtRd8hEfVGCbrszOs2fle4?=
 =?Windows-1252?Q?oJKdcoyU2ZZ/8ZXxAQEKr5fLi7AXnL4Yp3RdFjxZfjRPWFg4otOZSvHZ?=
 =?Windows-1252?Q?AzJmrN/fFi7W8jJRnQCuFY4RreqBD02dSGQCeHxwIqb3sOgoYMwC3+cE?=
 =?Windows-1252?Q?e2R5IglFOSOFYsC075L9VZ2HySi3KK48zokOArheoxfF+Dd+dO2ZlBfP?=
 =?Windows-1252?Q?k/4q4p6gAWIQs23Il8/O3X/9b1cSTtl1OAyiZFk7M/waLH2Y5TAgyVD9?=
 =?Windows-1252?Q?RDficd+34RiU0rrz9HWaf4W2BiEpzVJzjfqryu4vcIkUabn1OBrOgOT6?=
 =?Windows-1252?Q?jIOD5wgAQjGgKrM4IXtpv0/5TenfEyH31D9t6QNUzlaH7OWYoBaGkM1z?=
 =?Windows-1252?Q?s1e2d/UFYa0gP616VTqqKzuYCb34osbL42i/nWv0Re2Y4x/ml+EvCe0v?=
 =?Windows-1252?Q?IvGer3cV31OuCrgEryg0puLcHVfnj1mijukWwzhXev63BzFZwZaA0Xg6?=
 =?Windows-1252?Q?U1mn6j/d4lRp0w0WN3rMrqD63J4QM+YYo5qHLLv0Qs6dJCPLbRND1OxX?=
 =?Windows-1252?Q?GF6pUXlNZiWjRVGDKzRSuHp/Hbx03G07MVxyplITX1PGEkMxaHytuHL1?=
 =?Windows-1252?Q?k6s5COu5AshLHUDCazXqjwiXyNMRk92EmB3twZDZrR89XZjkhwt8X6JS?=
 =?Windows-1252?Q?6SIVEfMxeXgZi2ITRFJZp3lzFeyzUfB0hl5AIoK4eljOSPVQvvgexN+8?=
 =?Windows-1252?Q?AhKaeQPZt8pLA7KLapk4wZLJsnHRTTjbvl1qqYHRTCPAKpr5R3fxF6n7?=
 =?Windows-1252?Q?sYjVyJNAHOVM2oT8xdyRZ9/BonazvZf4z8LZbJzb43IVrIOuiVA6uxeU?=
 =?Windows-1252?Q?SOnQWzDteOISBvjXYyZjCeW37+l1ysqayJs=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f6586a-3e42-4419-9e1c-08d959cdb4c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2021 18:03:48.4314
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4JcFQUUgPpMnlg30AoEC83/S+JXD92bkT7qaO0bH3530B4fMAII3TJSeA6V69if6V73SAfdA3FBo7KjdPOLqEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB3171
Message-ID-Hash: QZCQETMAD6E6OUXRJM7XKXM2OLKE4RFG
X-Message-ID-Hash: QZCQETMAD6E6OUXRJM7XKXM2OLKE4RFG
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2QSQJ7L7KCSNWKVPYASEGUCTJTCPXAJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5995949910144540857=="

--===============5995949910144540857==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB45000C4A4FD1B8FB3F2B03D5D5F49BN7PR05MB4500namp_"

--_000_BN7PR05MB45000C4A4FD1B8FB3F2B03D5D5F49BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I was just using it more as an example. The same error occurs when using tx=
rx_loopback_to_file - but I can provide that output and more info on that c=
ome Monday.

Thanks,
Jonathan
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Saturday, August 7, 2021 7:16 AM
To: Jonathan Tobin <Tobin@augustusaero.com>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/07/2021 12:23 PM, Jonathan Tobin wrote:
Reducing nsamps to below 268435455/2 works - but at 6.25Msps for all four c=
hannels (two daughterboards) this is very short amount of time.  I can try =
changing channels but for my application I do need all four channels receiv=
ing - though this will have to be on Monday.

Yes, rx_multi_samples "out of the box" (no modifications to the example).

Thanks,
Jonathan
Given that rx_multi_samples doesn't actually *DO* anything with the samples=
, I'm curious about how it's actually useful for you in any
  production sense--it is just a demo app to show some of the API usage.

It may be the case that this example needs to be updated because it's mis-u=
sing the API in some what that isn't immediately obvious to me.
  But again, it doesn't actually *DO* anything with the samples, so I don't=
 know how it's useful other than as a learning tool...


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Saturday, August 7, 2021 5:30 AM
To: Jonathan Tobin <Tobin@augustusaero.com><mailto:Tobin@augustusaero.com>;=
 usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-users@=
lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/06/2021 10:47 PM, Jonathan Tobin wrote:
Hi Marcus,

No, I have not attempted on UHD 4+. Due to some other software constraints =
I am only able to use 3.15 at the moment.

Thanks,
Jonathan
Does reducing nsamps help?  What about channel count?

Just looking for clues as to what might be going on.  Looking at the code, =
nothing really leaps out at me.  You're using rx_multi_samples
  "out of the box" or with modifications?


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Friday, August 6, 2021 3:56 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/06/2021 07:26 PM, Jonathan Tobin wrote:



Hello,



In trying to test the =91rx_multi_samples=92 example with all four channels=
 on an n310. I run into an error of =93Requesting too many samples in a sin=
gle burst=94 when I attempt a longer record (really anything over a few sec=
onds). Seems to be my nsamps value, but I am unsure how to remedy the issue=
. Below is my argument and the terminal output for an attempt to receive fo=
r 10 seconds:



./rx_multi_samples --args "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgp=
sdo,clock_source=3Dgpsdo" --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channe=
ls "0,1,2,3" --nsamps 625000000



Creating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo...

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo

[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Dg=
psdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.

[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)

[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)

[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)

[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)

[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)

[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)

[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)

[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)

[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)

[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)

[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)

Using Device: Single USRP:

  Device: N300-Series Device

  Mboard 0: ni-n3xx-3218B5F

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: Magnesium

  RX Channel: 1

    RX DSP: 1

    RX Dboard: A

    RX Subdev: Magnesium

  RX Channel: 2

    RX DSP: 0

    RX Dboard: B

    RX Subdev: Magnesium

  RX Channel: 3

    RX DSP: 1

    RX Dboard: B

    RX Subdev: Magnesium

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: Magnesium

  TX Channel: 1

    TX DSP: 1

    TX Dboard: A

    TX Subdev: Magnesium

  TX Channel: 2

    TX DSP: 0

    TX Dboard: B

    TX Subdev: Magnesium

  TX Channel: 3

    TX DSP: 1

    TX Dboard: B

    TX Subdev: Magnesium



Setting RX Rate: 6.250000 Msps...

Actual RX Rate: 6.250000 Msps...



Setting device timestamp to 0...



Begin streaming 625000000 samples, 1.500000 seconds in the future...

[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 12500000000, maximum is 268435455.

[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.

Error: ValueError: Requested too many samples in a single burst.



Thanks,

Jonathan

That looks like a bug--have you tried this on UHD 4.recent?





--_000_BN7PR05MB45000C4A4FD1B8FB3F2B03D5D5F49BN7PR05MB4500namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I was just using it more as an example. The same error occurs when using tx=
rx_loopback_to_file - but I can provide that output and more info on that c=
ome Monday.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Jonathan</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Saturday, August 7, 2021 7:16 AM<br>
<b>To:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/07/2021 12:23 PM, Jonathan Tobin wro=
te:<br>
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
Reducing nsamps to below&nbsp;<span style=3D"font-family:Calibri,sans-serif=
; background-color:rgb(255,255,255); display:inline!important">268435455/2 =
works - but at 6.25Msps for all four channels (two daughterboards) this is =
very short amount of time.&nbsp; I can try changing
 channels but for my application I do need all four channels receiving - th=
ough this will have to be on Monday.&nbsp;</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important">Yes, rx_multi_samples &quot;out of the box=
&quot; (no modifications to the example).</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important">Thanks,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,sans-serif; background-color:rgb(255,255=
,255); display:inline!important">Jonathan&nbsp;
<br>
</span></div>
</blockquote>
Given that rx_multi_samples doesn't actually *DO* anything with the samples=
, I'm curious about how it's actually useful for you in any<br>
&nbsp; production sense--it is just a demo app to show some of the API usag=
e.<br>
<br>
It may be the case that this example needs to be updated because it's mis-u=
sing the API in some what that isn't immediately obvious to me.<br>
&nbsp; But again, it doesn't actually *DO* anything with the samples, so I =
don't know how it's useful other than as a learning tool...<br>
<br>
<br>
<blockquote type=3D"cite">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Saturday, August 7, 2021 5:30 AM<br>
<b>To:</b> Jonathan Tobin <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mail=
to:Tobin@augustusaero.com">
&lt;Tobin@augustusaero.com&gt;</a>; <a class=3D"x_moz-txt-link-abbreviated"=
 href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 08/06/2021 10:47 PM, Jonathan Tobin w=
rote:<br>
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
Hi&nbsp;Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
No, I have not attempted on UHD 4+. Due to some other software constraints =
I am only able to use 3.15 at the moment.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jonathan</div>
</div>
</blockquote>
Does reducing nsamps help?&nbsp; What about channel count?<br>
<br>
Just looking for clues as to what might be going on.&nbsp; Looking at the c=
ode, nothing really leaps out at me.&nbsp; You're using rx_multi_samples<br=
>
&nbsp; &quot;out of the box&quot; or with modifications?<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"C=
alibri,
              sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. L=
eech
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.c=
om">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
<b>To:</b> <a class=3D"x_x_moz-txt-link-abbreviated" href=3D"mailto:usrp-us=
ers@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Too Many Samples in a Single Burst</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan Tobin=
 wrote:<br>
</div>
<blockquote type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15
                (filtered medium)">
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_x_x_MsoNormal, li.x_x_x_MsoNormal, div.x_x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
<div class=3D"x_x_x_WordSection1">
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal">Hello,</p>
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal">In trying to test the =91rx_multi_samples=92 e=
xample with all four channels on an n310. I run into an error of =93Request=
ing too many samples in a single burst=94 when I attempt a longer record (r=
eally anything over a few seconds). Seems
 to be my nsamps value, but I am unsure how to remedy the issue. Below is m=
y argument and the terminal output for an attempt to receive for 10 seconds=
:</p>
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
./rx_multi_samples --args &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo&quot; --rate 6.25e6 --subdev &quot;A:0 A:1 B:=
0 B:1&quot; --channels &quot;0,1,2,3&quot; --nsamps 625000000
</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Creating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Dg=
psdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.</span></=
p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)=
</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)<=
/span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)<=
/span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)</s=
pan></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)</=
span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Using Device: Single USRP:</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; Device: N300-Series Device</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; Mboard 0: ni-n3xx-3218B5F</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 2</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; RX Channel: 3</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 2</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; TX Channel: 3</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Setting RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Actual RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Setting device timestamp to 0...</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
&nbsp;</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Begin streaming 625000000 samples, 1.500000 seconds in the future...</span>=
</p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 12500000000, maximum is 268435455.</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.</span></p>
<p class=3D"x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">=
Error: ValueError: Requested too many samples in a single burst.</span></p>
<p class=3D"x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_MsoNormal">Thanks,</p>
<p class=3D"x_x_x_MsoNormal">Jonathan</p>
</div>
<br>
</blockquote>
That looks like a bug--have you tried this on UHD 4.recent?<br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</blockquote>
<br>
</div>
</body>
</html>

--_000_BN7PR05MB45000C4A4FD1B8FB3F2B03D5D5F49BN7PR05MB4500namp_--

--===============5995949910144540857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5995949910144540857==--
