Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C76A3E4B2D
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 19:50:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3F9F3854AF
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 13:50:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="qVDDBTdF";
	dkim-atps=neutral
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2114.outbound.protection.outlook.com [40.107.220.114])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A17338517F
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 13:49:41 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1IwBMGNuhk/5rw9/3sG+lnH7W+cmCTXDokKcPEkV7Lul+iKh87n8geqDZPkJ0QjEGNY2VzJFP8OudKkwZ6eJY+D5FmisVFqkbpXoMLeRZZZI+0ELpoCZc9TNruOBzWkGNz3rcYwxnW3yTrXQL4b1pPC/Wl6Q0D2XeQzTuhxjv7RqIjycq1WzIGYsCb9PUBxz3XaLTM0oxGgmp4n5VyEpBzLxYNmGhJHHcMu3sJkfJ2CznIPz72dwWNQ4TIfL628wh7gvwkscNNVd3M3mWlKnsIqt2hziX4nikPW0hA+Et6UIzu2dI8l+WVP5mkqRy/pwtO46hKgUUgPWJ/s6j5y6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V4fS9/vNsUdnQtbSF4Ekg2+SWGZ56b+LANZ1u6IsZCk=;
 b=SIYTxOid321Rb0ogNJQELp+7Ywr2FJdQRPyC1IOeCby6FdtkdYN3/fEYhYqlh7xfNbiFsgoDdjz5RBrlbq4jNf+7CA4B72jKLd4NYRqc7IRUSDf6rq8ViF7Ir1fe7JuQR+sUjGROaGRlS1b8lQdcDKCk/viKoShC8dTVXyJj38Pm7lTsrV7v8rLdgjJ2SPTVJjaCzGTX88CW8NLmNs7bfzN33EOMIHdyACL/fE2XW26N8OqLLypsOL61UD0zZL7PoWjVQ8ww5KO2Vl+Iz/L+sZ+XqH3EBkzY+4EZCWAFQDXvL7v/zw7wtfIcun22GaHtS3K3oAVwvfz3NIk/PhVSCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V4fS9/vNsUdnQtbSF4Ekg2+SWGZ56b+LANZ1u6IsZCk=;
 b=qVDDBTdFyWTqMOwLKG/5Wl/XlYzT7mX3rAtX2OdRP0HZoMeEIyRpWLpvJ+i1xpMcaQ7N6NQdyzVUqq4E5oBeKmM+wVWDrhnfPhLWIarvZTOCn+KMkEyR5P/EoDTK6jCWH/E7/ps2cwmoBvmGW91KkoXGy/EIwBNup8oG2k3o9M8=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN8PR05MB6355.namprd05.prod.outlook.com (2603:10b6:408:58::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.4; Mon, 9 Aug
 2021 17:49:37 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21%6]) with mapi id 15.20.4415.012; Mon, 9 Aug 2021
 17:49:37 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: 
 AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1mAANWeAIAADfA4gAAPkoCAAwlFUYAAARnwgAAjZAg=
Date: Mon, 9 Aug 2021 17:49:37 +0000
Message-ID: 
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com>
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>,<610EA718.1080908@gmail.com>
 <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com>
 <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: 
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d428c82d-0d29-4ea1-d2e3-08d95b5e0e5d
x-ms-traffictypediagnostic: BN8PR05MB6355:
x-microsoft-antispam-prvs: 
 <BN8PR05MB6355B9E6CA22322E75D51C81D5F69@BN8PR05MB6355.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kWBaAUe3AP4d/eAsq8nOEYFZhxSNOg2Spa2XZL2IvnJst/R3doD7fenKW76+rIzzPDo+ovmVpwTnnS5jvjA9vZ3J7yqlZ9nBucQWQVhf8qP0HS0YLjjtiyO9vXfgQ+q4NGgkLmnSj54p9Ibx+qrxq00oDuvvFPBOCaMBa9DdkDjXC7IgJmntuHHl69Q+LM/fiL9mwOH7pXTIO8ggFI8KOiFHB7kDGUZAA/WYc88huUTBi0A/qMJ6QFqJCcoZlfRvwSflG9onKM4HhFnNxqRNq3IrUflv0U3w7YoMiefhrkxGFobmMsz4UZgWvkRsTpTrTTFp4cJw5VFVnJIhP5U7mohA2PvliRJul3/XlCH5qkoXNFzdD+ohDXCWxVqnSbmx69oZMifo8skDyIR/ndXjdVLJmRuoY/Py7tHi47z4hyr+tX9lK8G5ZQ8bGub70fqyXQOLVPIzmgCQFspe99orzkgWrg/Vj3E6gxNHxb0vVT/vBP+2k6i+Pzc5Bx864uAtjrCgiqO704IzfrarXQKJbTzkkrznLOrp4SXtzS+D1y6DeKPzNLKKWfdI5Uj9Zal1XnICXjM8k4fmQfVP2EwgeFoYZVuKx4R24f10/yTYOF86nuP73/AuKWQokEchLDjLaDrbhzZQvxuRoi1tE95p2ZUKK8FuKtR3bUUnNaeAVU7OYm6DMl4e0/6eu5ALT08k9VLZ9MtEe/R4o88Balp4Fg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(39830400003)(42606007)(366004)(396003)(136003)(38070700005)(2906002)(19627405001)(316002)(7696005)(6506007)(53546011)(186003)(33656002)(110136005)(71200400001)(5660300002)(64756008)(52536014)(66476007)(76116006)(30864003)(66446008)(66556008)(8676002)(91956017)(66946007)(26005)(8936002)(2940100002)(83380400001)(86362001)(9686003)(55016002)(122000001)(38100700002)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?sW8Tyss6V8SlpJOA4WUB9PxbvO2Dp2t/bRLvpeXl3XdnmOJHEJPL9Wxy?=
 =?Windows-1252?Q?mG5cwkv8VRFG2wTbtIofvyGtUTa9tybA0tSI3GJoPg0BCO3CRZkM4Nq7?=
 =?Windows-1252?Q?F0CczWNx5aVmONmMsNklmkgF454U6SB3mcMmyTqUGipgEWCMMB09oNYR?=
 =?Windows-1252?Q?ePWQ+PdTgY/0w2CHsroyR68dNWwGESxpljwa/+MWqqYaefXeZwBAz9Tk?=
 =?Windows-1252?Q?Sx7vPAjUVAqp9JaBG40DenkO9a+c6HwXZKxWRcpPw1BpbTcTYOcoC55A?=
 =?Windows-1252?Q?6GBg7NNYLF95gDgMdprfDG/sWqvJ6qEfD5iE/U8DtXfimMfv6aoFLKXG?=
 =?Windows-1252?Q?hhOIUqJeAPRiJyrhN7CwrktO45bAcNnCj/5OEgdGjhDceOJlORaZ6vhI?=
 =?Windows-1252?Q?u14DW+g5dDP7eTSkjT5n1nAYk5uLWg9iYhLw3KbLIaR3eTZGLdkzk/aK?=
 =?Windows-1252?Q?8NHHkVDKVE6xOTADCD5qJaYzX8D7sase/sGmaZp8FzSDuK9EYTTa1HhT?=
 =?Windows-1252?Q?+/SzWYoj6IXwY0U8kbYZoR4y7LK5RGKTWnVb9XgV0feo33qcl8udjC86?=
 =?Windows-1252?Q?xjuxGGVMbTeYt7WkufePBH4z2rybGpQcxmQ6DssJ1/aQK0sD9gimwDtB?=
 =?Windows-1252?Q?+oGy5qjK3sfxA0ySDvE96BTrSfBdaW2Ap0PXNXVVJUnrzrpPkMhvVQk5?=
 =?Windows-1252?Q?08uUkvwJm/OmyzT/j/ipJnMSadiOt4h1F2Hao16UIecUcJju8ia2Zxhd?=
 =?Windows-1252?Q?taG2z6wB8fAM1N3GmABzODYKpA9RWaXuRZHLSSVbSarfUg/go9f2w3qh?=
 =?Windows-1252?Q?mDG8hkvuHTM4hTx8/h5lg9EhjmZQdJPnMOikYbRsTEEd+OPxK+bUugqF?=
 =?Windows-1252?Q?lzikl+N+I/5vSwqk5ybjotLiTQ1ohjx/PHF++gm3nB+efQLbMLeMj2kG?=
 =?Windows-1252?Q?Qo5t5W8XioyO8H2F46/+jL/db5yndHBtZsmZuNdpwvQRokiBrImmxiVF?=
 =?Windows-1252?Q?IeJMqo5/HwJPRSe++137m3pJ9FASwk0bEljHNBnYXkbYSikDB1OBlkYB?=
 =?Windows-1252?Q?fkgowwHm6EBe3KeYEYB4nGxjKYVTewl/gTIag3lEqtgr98VhF+oCnCX+?=
 =?Windows-1252?Q?+X4Be7eHOFz21secdkqvhYoyiqmRSMQ7TJauU6fI86WxHfdWqb56kQvI?=
 =?Windows-1252?Q?fZwF1ZtQdgBuLc+qV6zMbhSqTUbg51QBxvIWd24ltSKm96Uaj6ZNRps4?=
 =?Windows-1252?Q?Zz9cbAPDrPHRqk8q2D6Z3V+itr0/NN97wgF3FO5vHxW1DYO+wISUUGcM?=
 =?Windows-1252?Q?fZmm+7Ye8S3wYMSjSUgteXSOyWGOSLZ6fNnGuASb91DP0WVhjnfxAkCu?=
 =?Windows-1252?Q?GJuLkNkm6rxQaEMzGkecaoxknJ6gzt6U0bo=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d428c82d-0d29-4ea1-d2e3-08d95b5e0e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 17:49:37.5099
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C/2S0GwVowHOzRsJ9sHR8sCFUwHvzxjeQuV8kBqCH8eZTpiH56YzYNeBVRKLJD3RYj8LqUd8pFuv5z3E2DB/Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR05MB6355
Message-ID-Hash: E6DWDPXNZCIFBO6SOAWZ5WYVFTJ4ANCQ
X-Message-ID-Hash: E6DWDPXNZCIFBO6SOAWZ5WYVFTJ4ANCQ
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4RIKXNFFSGET3VF447QRXWH3ZDXOKIOO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1091792512846284029=="

--===============1091792512846284029==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69BN7PR05MB4500namp_"

--_000_BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Just as an additional update - I was able to test with UHD 4.1 and there is=
 no issue - seems to be something with UHD 3.15 then.

Thanks,
Jonathan

________________________________
From: Jonathan Tobin <Tobin@augustusaero.com>
Sent: Monday, August 9, 2021 5:42 AM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

Meant late packets.
________________________________
From: Jonathan Tobin <Tobin@augustusaero.com>
Sent: Monday, August 9, 2021 5:41 AM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

Hi Marcus,

Here is the output from a simple run of txrx_loopback_to_file "out of the b=
ox." As can be seen, the same error occurs (along with dropped packets this=
 time).


./txrx_loopback_to_file --tx-args "addr=3D192.168.10.2" --rx-args "type=3Dn=
3xx,addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal" --r=
x-freq 2500e6 --rx-rate 6.25e6 --rx-subdev "A:0 A:1 B:0 B:1" --rx-channels =
"0,1,2,3" --rx-gain 60 --nsamps 62500000 --tx-rate 6.25e6 --tx-freq 2500e6

Creating the transmit usrp device with: addr=3D192.168.10.2...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2
[INFO] [MPM.PeriphManager] init() called with device args `product=3Dn310,m=
gmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal'.
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

Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time=
_source=3Dinternal,clock_source=3Dinternal...
Using TX Device: Single USRP:
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

Using RX Device: Single USRP:
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

Setting TX Rate: 6.250000 Msps...
Actual TX Rate: 6.250000 Msps...

Setting RX Rate: 6.250000 Msps...
Actual RX Rate: 6.250000 Msps...

Setting TX Freq: 2500.000000 MHz...
Actual TX Freq: 2500.000000 MHz...

Configuring RX Channel 0
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Configuring RX Channel 1
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Configuring RX Channel 2
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Configuring RX Channel 3
Setting RX Freq: 2500.000000 MHz...
Actual RX Freq: 2500.000000 MHz...

Setting RX Gain: 60.000000 dB...
Actual RX Gain: 60.000000 dB...

Checking TX: all_los: locked ...
Checking RX: all_los: locked ...
Setting device timestamp to 0...
[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Reques=
ted 1250000000, maximum is 268435455.
[INFO] [RFNOC RADIO] Note that a decimation block will increase the number =
of samples per burst by the decimation factor. Your application may have re=
quested fewer samples.
LLLLLLLLLLLLLLLLLLLError: ValueError: Requested too many samples in a singl=
e burst.



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





--_000_BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69BN7PR05MB4500namp_
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
Just as an additional update - I was able to test with UHD 4.1 and there is=
 no issue - seems to be something with UHD 3.15 then.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Jonathan</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathan Tobin &lt;To=
bin@augustusaero.com&gt;<br>
<b>Sent:</b> Monday, August 9, 2021 5:42 AM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Meant late packets.<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jonathan Tobin &lt;=
Tobin@augustusaero.com&gt;<br>
<b>Sent:</b> Monday, August 9, 2021 5:41 AM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Here is the output from a simple run of txrx_loopback_to_file &quot;out of =
the box.&quot; As can be seen, the same error occurs (along with dropped pa=
ckets this time).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
./txrx_loopback_to_file --tx-args &quot;addr=3D192.168.10.2&quot; --rx-args=
 &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dinternal,clock_source=
=3Dinternal&quot; --rx-freq 2500e6 --rx-rate 6.25e6 --rx-subdev &quot;A:0 A=
:1 B:0 B:1&quot; --rx-channels &quot;0,1,2,3&quot; --rx-gain 60 --nsamps 62=
500000 --tx-rate
 6.25e6 --tx-freq 2500e6
<div><br>
</div>
<div>Creating the transmit usrp device with: addr=3D192.168.10.2...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFals=
e,addr=3D192.168.10.2</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `product=3Dn=
310,mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal=
'.</div>
<div>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A0000000=
0004)</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011=
312)</div>
<div>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011=
312)</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)</div>
<div>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
0)</div>
<div>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000000000000=
2)</div>
<div>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C000000000000=
2)</div>
<div>[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div>[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div>[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div>[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F00000000000=
00)</div>
<div><br>
</div>
<div>Creating the receive usrp device with: type=3Dn3xx,addr=3D192.168.10.2=
,time_source=3Dinternal,clock_source=3Dinternal...</div>
<div>Using TX Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: ni-n3xx-3218B5F</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 2</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 3</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 2</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 3</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div><br>
</div>
<div>Using RX Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: ni-n3xx-3218B5F</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 2</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; RX Channel: 3</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 2</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div>&nbsp; TX Channel: 3</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Magnesium</div>
<div><br>
</div>
<div>Setting TX Rate: 6.250000 Msps...</div>
<div>Actual TX Rate: 6.250000 Msps...</div>
<div><br>
</div>
<div>Setting RX Rate: 6.250000 Msps...</div>
<div>Actual RX Rate: 6.250000 Msps...</div>
<div><br>
</div>
<div>Setting TX Freq: 2500.000000 MHz...</div>
<div>Actual TX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Configuring RX Channel 0</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Configuring RX Channel 1</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Configuring RX Channel 2</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Configuring RX Channel 3</div>
<div>Setting RX Freq: 2500.000000 MHz...</div>
<div>Actual RX Freq: 2500.000000 MHz...</div>
<div><br>
</div>
<div>Setting RX Gain: 60.000000 dB...</div>
<div>Actual RX Gain: 60.000000 dB...</div>
<div><br>
</div>
<div>Checking TX: all_los: locked ...</div>
<div>Checking RX: all_los: locked ...</div>
<div>Setting device timestamp to 0...</div>
<div>[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! R=
equested 1250000000, maximum is 268435455.</div>
<div>[INFO] [RFNOC RADIO] Note that a decimation block will increase the nu=
mber of samples per burst by the decimation factor. Your application may ha=
ve requested fewer samples.</div>
<span>LLLLLLLLLLLLLLLLLLLError: ValueError: Requested too many samples in a=
 single burst.</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jonathan</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &=
lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Saturday, August 7, 2021 7:16 AM<br>
<b>To:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_moz-cite-prefix">On 08/07/2021 12:23 PM, Jonathan Tobin=
 wrote:<br>
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
<div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D=
"Calibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail=
.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Saturday, August 7, 2021 5:30 AM<br>
<b>To:</b> Jonathan Tobin <a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D"=
mailto:Tobin@augustusaero.com">
&lt;Tobin@augustusaero.com&gt;</a>; <a class=3D"x_x_x_moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_x_moz-txt-link-rfc2396E" hre=
f=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_x_moz-cite-prefix">On 08/06/2021 10:47 PM, Jonathan Tob=
in wrote:<br>
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
<div id=3D"x_x_x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=
=3D"Calibri,
              sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. L=
eech
<a class=3D"x_x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gma=
il.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
<b>To:</b> <a class=3D"x_x_x_x_moz-txt-link-abbreviated" href=3D"mailto:usr=
p-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_x_x_moz-txt-link-rfc2396E" h=
ref=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Too Many Samples in a Single Burst</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_x_x_moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan T=
obin wrote:<br>
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
p.x_x_x_x_x_MsoNormal, li.x_x_x_x_x_MsoNormal, div.x_x_x_x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
<div class=3D"x_x_x_x_x_WordSection1">
<p class=3D"x_x_x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_x_x_MsoNormal">Hello,</p>
<p class=3D"x_x_x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_x_x_MsoNormal">In trying to test the =91rx_multi_samples=
=92 example with all four channels on an n310. I run into an error of =93Re=
questing too many samples in a single burst=94 when I attempt a longer reco=
rd (really anything over a few seconds). Seems
 to be my nsamps value, but I am unsure how to remedy the issue. Below is m=
y argument and the terminal output for an attempt to receive for 10 seconds=
:</p>
<p class=3D"x_x_x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">./rx_multi_samples --args &quot;type=3Dn3xx,addr=3D192.168.10.2,time_so=
urce=3Dgpsdo,clock_source=3Dgpsdo&quot; --rate 6.25e6 --subdev &quot;A:0 A:=
1 B:0 B:1&quot; --channels &quot;0,1,2,3&quot; --nsamps 625000000
</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp;</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Creating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_sou=
rce=3Dgpsdo,clock_source=3Dgpsdo...</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEA=
D-0-gaea0e2de</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse=
,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [MPM.PeriphManager] init() called with device args `clock_source=
=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.</spa=
n></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000=
004)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000000113=
12)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1000000113=
12)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000=
)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000=
)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002=
)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002=
)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F000000000000=
0)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F000000000000=
0)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F000000000000=
0)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F000000000000=
0)</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Using Device: Single USRP:</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; Device: N300-Series Device</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; Mboard 0: ni-n3xx-3218B5F</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; RX Channel: 0</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; RX Channel: 1</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; RX Channel: 2</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; RX Channel: 3</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; TX Channel: 0</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; TX Channel: 1</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; TX Channel: 2</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; TX Channel: 3</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp;</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Setting RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Actual RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp;</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Setting device timestamp to 0...</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">&nbsp;</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Begin streaming 625000000 samples, 1.500000 seconds in the future...</s=
pan></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst! Re=
quested 12500000000, maximum is 268435455.</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">[INFO] [RFNOC RADIO] Note that a decimation block will increase the num=
ber of samples per burst by the decimation factor. Your application may hav=
e requested fewer samples.</span></p>
<p class=3D"x_x_x_x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:bla=
ck">Error: ValueError: Requested too many samples in a single burst.</span>=
</p>
<p class=3D"x_x_x_x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_x_x_x_MsoNormal">Thanks,</p>
<p class=3D"x_x_x_x_x_MsoNormal">Jonathan</p>
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
</div>
</div>
</body>
</html>

--_000_BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69BN7PR05MB4500namp_--

--===============1091792512846284029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1091792512846284029==--
