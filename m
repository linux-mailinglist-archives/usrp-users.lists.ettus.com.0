Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 660DF3E3645
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 18:24:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26BCC38465D
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 12:24:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="eIn8MWEK";
	dkim-atps=neutral
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2105.outbound.protection.outlook.com [40.107.92.105])
	by mm2.emwd.com (Postfix) with ESMTPS id CD3B53840AB
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 12:23:59 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oK8QFM9r/WQT00AD9mPn9d7oclOwOuCN9lcZpEJww+Sqp470hgqSxhPwIixmKNzZ3rph4wNUAjNVfXY+g3N5iO8yeVtQ6KJWbvXZmWysTEk/Hwqi1sIZ5ZfmaOzKAAPUdB1chEn4wRSC8i4rJEo05hkzVcS0WjqMMZP1dyoPpXeb190hfM8eCV9u40zeJCcuP6mwMh3RI4ueR/HOgAy65s62k+V3cEFDm0cyFjNbgRuiWKfQLPXij46b8e5l/i9PXPmWV0giIHX7j8hafOYqHJQ2HpJUW5sCuDW1+VHR4OK7Jl70BDOYY5Lde8IVT7GygWgLEo6gG2UfTUrXheuaAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gMWV7CCdGuyNdNQG67SCpjkLzwSapxxfVmMh5zoMIo=;
 b=NLOHs3yBJK8UG60hdcQNazRs5WjFSohmG9XATNpCPQh+nAJXVT0oLx/jZ3adM1mvj5jE9GEMh9B7iOt8RfCAnALg0fnTkpOGaq7RZqpreVOT+x5L4/AYDKIp+Fe8fU2CK7bHTHEhbWRXr5LFUth5XtEIYsHmCVqD8hwaVa3T9yZP7AQMBtTCAaybk38Gx4WzmhkueggfnctT/oJBie9xR7Fv693HFBHSyC/A+BrFqNPlgHmgara4H3yclsgo2jFNtxCO92jTDAVdUWjOFiIAEHeQDzUAKtIeW0Q9CWBBUuuxxTzMal0xysFuoBQ1tJbjtNl7ddK8HEv7Q1+kmgLoaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gMWV7CCdGuyNdNQG67SCpjkLzwSapxxfVmMh5zoMIo=;
 b=eIn8MWEK17f3c+zJxhkUiDGConbKP3NI0eB323Vb5dz15/xsEchZ/r9sm99mnMJ9ZTznebj323F2N+eHH8+DF8H1o8lTAHdBQ4jQG3ZQzfB9MexHdMsdMvUu4v9x9laPBdPFzyDTqXBYrhkx79kWx/R52+guHlIf+acUAzs2tqE=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN6PR05MB3491.namprd05.prod.outlook.com (2603:10b6:405:3d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5; Sat, 7 Aug
 2021 16:23:57 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf%6]) with mapi id 15.20.4394.021; Sat, 7 Aug 2021
 16:23:56 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1mAANWeAIAADfA4
Date: Sat, 7 Aug 2021 16:23:56 +0000
Message-ID: 
 <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com>
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>,<610EA718.1080908@gmail.com>
In-Reply-To: <610EA718.1080908@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6bf87c99-1210-4e6c-2ff9-08d959bfc17c
x-ms-traffictypediagnostic: BN6PR05MB3491:
x-microsoft-antispam-prvs: 
 <BN6PR05MB3491BB298C47F33A9475515CD5F49@BN6PR05MB3491.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5WDZu86zN4UsV58TUDTi6xIrAbTaJWdIuvSo1NQdbC3pNRGnF0/9MSsIPISTxWv7SMGX7gYrHxtehlUshouS6Jyy4NszNmmhoz89uZAopwAM5aUi5XCwZwEBRpt8xqa+Az95pYgmN5/Fm+k2tQjVWrSkvDIGi2ga/4XVun75iPR0TtzLCiMOnz4vIlfYU/p5zdESDV7M0MCmUb1LxRCTjo7I33ZRTh7H3TnONsUnCBRQ3/4r/V3X2p7CPY5JcJGRdw2TzgzDbUE/oZYn64uJk2aLuCTD6+XwC4ssQLhXRMvZiI2JsKYheoqoZdYy1vj4X96wF2W/IcCxRSssuW2DbohFCTmYCY2Qmc2QXlbvCpH6913R/wz+ELjxIBwr3wHS714CmRR8EnDE7tsfgDiaLD5wlYCMZtCTx3sUZBx97WOBI1fHFoiH+qv3RdaYCchf7mLfC3g9J2nVwc05MS8qh43+4ke10bl/0IGjVUrgDlNkprGtLQeqzGENVfqjHqf3lLgAsWdqXkdKs5CNj6aTdV5XUyBgq4i7+vVf2QNB6FOnk2I0e1ZlBCJ+/uMov0o9MHYtuH0fnJXUbTS6BmslCPsCNqI04S3HTwYDwOoOciDN82QbIG7xA5HFF15PFoKt6yCgRR3WnkUogfvJhxeX/er0TnCdHQgcFuNTscTSddZKU1/k/c8ZWAmFd+oUPTeY+NOzQagTFujdUQRNBSZKPQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(346002)(376002)(366004)(42606007)(136003)(396003)(122000001)(5660300002)(478600001)(186003)(38100700002)(38070700005)(316002)(71200400001)(26005)(33656002)(9686003)(8676002)(76116006)(64756008)(66556008)(66476007)(66946007)(55016002)(83380400001)(19627405001)(66446008)(8936002)(2906002)(110136005)(6506007)(91956017)(53546011)(52536014)(86362001)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?KH/7XDfQuo4MGdtbmaLixov7lwpIYI4zt/nXVuFwQf44lFTekePNMG6Q?=
 =?Windows-1252?Q?UY5gqhY8h0/6j6HclWeYz/YDCBMevz/P9ALt50XDFQQMz1Qp94UQjSr9?=
 =?Windows-1252?Q?tDtusrI95SZHvzyP8rs2RWDPcM2v204OTISQanla20D5QWVhIgGLHsJU?=
 =?Windows-1252?Q?w+9IYBMZTsEJHvGbZzqQbKknfv25Rd/BtzA1nG5ZLjzb2pxW321qWCF/?=
 =?Windows-1252?Q?LzM+onawqLkjeWEGpgGKrKdJnFzzZxA/lv2a8KWo79D8l2hONS1ZRmzK?=
 =?Windows-1252?Q?3PQDdOC/I5dOrbg1u60pzvui3L7CAaFok+Xp/uRfCgWvrvJvJWOwTvDE?=
 =?Windows-1252?Q?u9OsDYAvX638hoVOAEiQk4JZzUc40cbSZmXjK2zBRjZAwjHKRWd8fU4w?=
 =?Windows-1252?Q?EX2yF8UOaHYpxBcz7ZUaCQnd98dongpDauaFffGM6LNE5Q576Lg6DZbm?=
 =?Windows-1252?Q?Gff/Zom+zOW2d6S7PRgCkIIKkUfEwlEB0f3iK2VlMQffvNROePjuoEjA?=
 =?Windows-1252?Q?pH707n0H+3SD7ilAPNKibgyuCJY69ydLh5hvJqJTbq+71/OSxMeY7Exg?=
 =?Windows-1252?Q?7L7sjIoIKEwo6FXE+i8F+7G9hLu9mvo3EWTL2fOCB2mQo+4Rcmza/Za9?=
 =?Windows-1252?Q?8A4m4m7+4cjkoNvjpeMV+HF7RqZ2zbOJ+dE+if0Wj4td+OS/BXKgIpGs?=
 =?Windows-1252?Q?9FrDLMZyJDlNO8z3GarOqhIfYfCN4kh0cg6ItfNeRXZ9GtLzAdQtwIV/?=
 =?Windows-1252?Q?sLTDwRsKTHd2kdDcFhUQEk/GLf2jIf2yNr2VjSBd5QAFPjq0P/bq5baH?=
 =?Windows-1252?Q?jmKtt+CaHzdovCMRPqt7OhawafdqmONkQabMGei+/byyAhRdtYxt8DQT?=
 =?Windows-1252?Q?xv+emA+OPRKoAuI95LEAee2qfUXH1UxQqdzkB9Rx7Q5pWo3trRjwRbFG?=
 =?Windows-1252?Q?QfAAMqB06vb1sUDVEO74Xs2pVnFyZhjL1OO81Vzwkb4H9qiwcdDqH7+U?=
 =?Windows-1252?Q?S6N7Yel7G4wKVJVAyDbjARgD0fqfDEaPxGOpd4b8OKZlHfCoJzeFEMW0?=
 =?Windows-1252?Q?bFVBNivPEsxmXQQzs6is6LXyXJellTr/mFyPD+QYYm3wP/KszWQhiByy?=
 =?Windows-1252?Q?04+9YWPwUsLE/A35zPWkkxJLozO19Dg86al9bGLuzg14eTW32y57yYwR?=
 =?Windows-1252?Q?AdpFQLZfAi28M8zV17uk6P9qzFDKJGuIBGc8TfDkGXra5oTKoiEP/hQv?=
 =?Windows-1252?Q?Jxanrspuce2rE96DsdyKIsSYLQGUJwl1BZiDQM9u96BC8Nzt60vtzPke?=
 =?Windows-1252?Q?Enj2383o1yFMHl9tDjD1OJciTuoz7DhMIaSeP1VWtFvIQ1niT9myQh7B?=
 =?Windows-1252?Q?2ZHTTgBiBUAHzLRIIBMBqSVsA5JSDvsAmyo=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf87c99-1210-4e6c-2ff9-08d959bfc17c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2021 16:23:56.6264
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pTpOzU+EMXEcgMPOucr3LfGhEeSA0uqwwzLHTt09mD/b/NSW2xBfloHZcM0JCe6UfGsne1I5d4qNs5E5ORXNlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB3491
Message-ID-Hash: CPIT2LGKFJQZJ3ME5XDUWJREWVEGP2HX
X-Message-ID-Hash: CPIT2LGKFJQZJ3ME5XDUWJREWVEGP2HX
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QEJGT7SA5VYPPAAD75I2QQ22UJGKE7ZH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7834044955203029182=="

--===============7834044955203029182==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB45000D8D6B914F082812F1A9D5F49BN7PR05MB4500namp_"

--_000_BN7PR05MB45000D8D6B914F082812F1A9D5F49BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Reducing nsamps to below 268435455/2 works - but at 6.25Msps for all four c=
hannels (two daughterboards) this is very short amount of time.  I can try =
changing channels but for my application I do need all four channels receiv=
ing - though this will have to be on Monday.

Yes, rx_multi_samples "out of the box" (no modifications to the example).

Thanks,
Jonathan
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Saturday, August 7, 2021 5:30 AM
To: Jonathan Tobin <Tobin@augustusaero.com>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
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




--_000_BN7PR05MB45000D8D6B914F082812F1A9D5F49BN7PR05MB4500namp_
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
Reducing nsamps to below&nbsp;<span style=3D"font-family:Calibri, sans-seri=
f;background-color:rgb(255, 255, 255);display:inline !important">268435455/=
2 works - but at 6.25Msps for all four channels (two daughterboards) this i=
s very short amount of time.&nbsp; I can try
 changing channels but for my application I do need all four channels recei=
ving - though this will have to be on Monday.&nbsp;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family:Calibri, sans-serif;background-color:rgb(255, 25=
5, 255);display:inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family:Calibri, sans-serif;background-color:rgb(255, 25=
5, 255);display:inline !important">Yes, rx_multi_samples &quot;out of the b=
ox&quot; (no modifications to the example).</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family:Calibri, sans-serif;background-color:rgb(255, 25=
5, 255);display:inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family:Calibri, sans-serif;background-color:rgb(255, 25=
5, 255);display:inline !important">Thanks,</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family:Calibri, sans-serif;background-color:rgb(255, 25=
5, 255);display:inline !important">Jonathan&nbsp;&nbsp;</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Saturday, August 7, 2021 5:30 AM<br>
<b>To:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/06/2021 10:47 PM, Jonathan Tobin wro=
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
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:usrp-user=
s@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Too Many Samples in a Single Burst</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan Tobin w=
rote:<br>
</div>
<blockquote type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
            medium)">
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_x_MsoNormal, li.x_x_MsoNormal, div.x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
<div class=3D"x_x_WordSection1">
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">Hello,</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">In trying to test the =91rx_multi_samples=92 exa=
mple with all four channels on an n310. I run into an error of =93Requestin=
g too many samples in a single burst=94 when I attempt a longer record (rea=
lly anything over a few seconds). Seems to
 be my nsamps value, but I am unsure how to remedy the issue. Below is my a=
rgument and the terminal output for an attempt to receive for 10 seconds:</=
p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">./=
rx_multi_samples --args &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=
=3Dgpsdo,clock_source=3Dgpsdo&quot; --rate 6.25e6 --subdev &quot;A:0 A:1 B:=
0 B:1&quot; --channels &quot;0,1,2,3&quot; --nsamps 625000000
</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Cr=
eating the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=3D=
gpsdo,clock_source=3Dgpsdo...</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-ga=
ea0e2de</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192=
.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,addr=
=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [MPM.PeriphManager] init() called with device args `clock_source=3Dgps=
do,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)</=
span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)</s=
pan></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)</s=
pan></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)</spa=
n></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)</spa=
n></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)</spa=
n></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)</spa=
n></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</sp=
an></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)</sp=
an></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)</sp=
an></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)</sp=
an></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Us=
ing Device: Single USRP:</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; Device: N300-Series Device</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; Mboard 0: ni-n3xx-3218B5F</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; RX Channel: 0</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; RX Channel: 1</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; RX Channel: 2</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; RX Channel: 3</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; TX Channel: 0</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; TX Channel: 1</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; TX Channel: 2</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; TX Channel: 3</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Se=
tting RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Ac=
tual RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Se=
tting device timestamp to 0...</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Be=
gin streaming 625000000 samples, 1.500000 seconds in the future...</span></=
p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[E=
RROR] [RFNOC RADIO] Requesting too many samples in a single burst! Requeste=
d 12500000000, maximum is 268435455.</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[I=
NFO] [RFNOC RADIO] Note that a decimation block will increase the number of=
 samples per burst by the decimation factor. Your application may have requ=
ested fewer samples.</span></p>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Er=
ror: ValueError: Requested too many samples in a single burst.</span></p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">Thanks,</p>
<p class=3D"x_x_MsoNormal">Jonathan</p>
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
</body>
</html>

--_000_BN7PR05MB45000D8D6B914F082812F1A9D5F49BN7PR05MB4500namp_--

--===============7834044955203029182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7834044955203029182==--
