Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E623E32CD
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 04:48:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7E933845B7
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 22:48:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="m9k8Pz3j";
	dkim-atps=neutral
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07on2099.outbound.protection.outlook.com [40.107.95.99])
	by mm2.emwd.com (Postfix) with ESMTPS id AC204384025
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 22:47:24 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTilA8sJbXPLUuCFA1aQ+wzG9JqvY23V9NOtdW+bhHLWJLLydJyFd9ezp1YmvFi/v1qYGNe09ceXzTsDzTNxDf+LV8zxiTKzSY2U/p4oT/nm2vr0qtwLbJfV2Kku8AVAr/kV46m+ysW89tG7p4bm63CzuBn4bRrTVJU7B+h5laBhQFYidwcOyTPZ0ULfzOacHoSPRcWfA0CE73juYELNdp3/aGvMhCp6K5Ii7bEiAO9NO0oThjJRq+LPhVRQDIp8rwj/v5QF4dAqJuAxZqR9cbGv5FK8wS6IKy0m0QxSoJZ2qRGzBynvkIBLMLnpcqz7c/0faLmK3VH8U9rgRuVkNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=THXl8fIwf3iE3J7z1vPrHJnm1ocvcJM+E80+Q/DOHvE=;
 b=VuxFgvxHx4caZKdy7Vd1kxk0QRYbz0BV38QYfVIhrzxELsfqxELryLxJgk/hv5ofKNr16OmccDpoUZP7pwu9x1hu0xWgqnR1Pm63VlNdIu8oyfdrBGALN3av2faKeKcyr3VJw3TMNQm8G4aFhZ87vf2aWnST8bszisz43JVatnDUCwhCTv9oSPfrDxb4SyWglGbc3inGz/SnZVrYWkDLRKy4Ru+lJPI+OuZhntgP/FuSYROHWAqrBFr6u+YqGAuLiUcS4QpCrI8NJx3oZDYTCJU9Ph+usC+8+S1HIYDq8MMc9IL2skJxJ9BCvKI8CQdjjZL5uniKwsdiqVaHF/4F9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=THXl8fIwf3iE3J7z1vPrHJnm1ocvcJM+E80+Q/DOHvE=;
 b=m9k8Pz3jixncb3O+8TLKcvF6JNJa642zNyEWeae02+4ySA+Er1VMcl+YOgqKQG6ifK8ZUhDkCjKASZipoqGry3XXwhx79F+Adai+hGHvXVpYuvKrIF026bJ1cCghRUQ8M10YV5qFbguQGaJpRf7en56Ein1bUkwkk35e3a05BLo=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN3PR05MB2722.namprd05.prod.outlook.com (2a01:111:e400:7bb3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5; Sat, 7 Aug
 2021 02:47:22 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::a51d:8f73:1c47:78cf%6]) with mapi id 15.20.4394.016; Sat, 7 Aug 2021
 02:47:22 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1k=
Date: Sat, 7 Aug 2021 02:47:22 +0000
Message-ID: 
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com>
In-Reply-To: <610DE851.70308@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2507328e-b1d9-407c-e7a9-08d9594dae9d
x-ms-traffictypediagnostic: BN3PR05MB2722:
x-microsoft-antispam-prvs: 
 <BN3PR05MB272275167A7604727E2E7500D5F49@BN3PR05MB2722.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 nMuFLL8WlEXhXk7hXNPSAc02TXpBYJeVgQ/5bsv0KJUThmhx7BSfBr2qZ0VxOT5EAqnYJHUpGEbhfR5Mn0FPCjY8yJ4WEcjOLqB0p4yBd4yB9dqyNKy9TNk+nUEvE1/uCIU2C2oZjyESrdrDyCCwMOmroVu5W8M6LeFYJqNGikIJqLvuAjpKYdiQKy17xX3WnjT8B7/t/N7XpvXkPpxdpHjvdKCDuCoH6ddjd0H6+rJBv7CWkvL7H7B01OdhZvrChwu/g7TEuEmhbmot70qOdfHceGYyJd8lR9qwjbpsUGjlr/vjIw1RYGPRoAduT6yrOuS81CWbAl08Pyv3AkrI6a87GI0t9SJlwPNFO7gG8x0mvW05D0bWhk2TBnx8zjnI+vEpvNZ+7iIG2B+71OLTV8HUtXVolpHCGq88Qn8Z6H/88rbJTgv8BXrxYJCuaI4kaVdgrxCquxZInMeka6qRKmQF3blOGTmRqm1UZ5WSuM8FQyDyTp+DtGyePIUv/E9/xploG7XzjxmLrzxPBZ7QOAjtFkTQV94viCuOqTJ4261Ft82Q8wuekHvhDmgJepJv1mNAUZ6oZN+RfODZNzERBqrIV8GwpCaLOEBXTJUUp94YUiMypxq0vuS2965GcJ0ZMC5KMrp5o8ok2Ki+fx8K+mkTgZj8pBwEc8+YmOCRSWRDiy147Ekg+YmlxYZixbiWTm7mG2Ub3Xodqx3TTvJ3iQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(42606007)(136003)(376002)(39830400003)(346002)(396003)(366004)(6506007)(53546011)(19627405001)(55016002)(7696005)(186003)(9686003)(33656002)(26005)(83380400001)(110136005)(86362001)(38070700005)(316002)(478600001)(66476007)(66556008)(64756008)(5660300002)(66446008)(2906002)(122000001)(38100700002)(66946007)(52536014)(71200400001)(91956017)(76116006)(8676002)(19627235002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?SHQ+vmfFj9oFX6ZWCBI+qxjxCSm6BACBKaGKx2/iYk8LvC2F7l9i8Ux3?=
 =?Windows-1252?Q?2OZymX4lfKERsc25eEqUYoI8VNS879OK4wWcUOk/B+Ih/EdIdh/xKbA7?=
 =?Windows-1252?Q?E+TmOxYnexXznxmz1aZEk9qTbQDrCAMexfDaZGBhbzYlo/Wr9Lh8F9qp?=
 =?Windows-1252?Q?HXtrDc/YKNwZZXVpT1kU39tKNG8keXjbNbRAYznOVSsOzjGW2Ya7Igsf?=
 =?Windows-1252?Q?lgStAF2OhRmykOPUJBedjT+MUp9wJOzYsPgH7hZ7yoYuCVV4deLqFvvl?=
 =?Windows-1252?Q?3DloTs6/Kr+XQ7H6HhEKrpjhO8jnpqG/SMY+LN5A9dxXlgrMVZeiC/Y2?=
 =?Windows-1252?Q?Zbsw1Ye7SVrFpD+7KMFdden8ChcgKhlXWjUZkxyOw1lh0JiSFnvjOzI+?=
 =?Windows-1252?Q?WFomB7uukieio2DNnK4FyAym1YvYvoOkTy/xXTqKflFDH13txvjFrDDb?=
 =?Windows-1252?Q?1CKWY+SSCRZKw7scOPPtHy5X5yNEFlYZiZiOTzgMHWD+X+C/gA0vB7nB?=
 =?Windows-1252?Q?rC7MnZihzZNYewrXJ4l5yUJwijW5+CchMgy0W13QZfNOuuNk62rGs9uK?=
 =?Windows-1252?Q?eE/akF2TUvhZWVZSo5SNi3sSeO4QTHcGxZkHj/MlaXx13tJS4+zRlJbY?=
 =?Windows-1252?Q?LcI2dRyJ6qrnB+xCcayB3xCdts+tqLzmmmY/6vQU85c34YeYAu/V1h36?=
 =?Windows-1252?Q?glTmSALsUCjSztjm67+9zO7aut/NUNg9ujdATA3uAKO/xqdc67D3Fu9S?=
 =?Windows-1252?Q?TuAClUjSjMgx7WFhDe07o7rBXGNDyBA7V/JyVl35MhHjodqkWB7XVOWo?=
 =?Windows-1252?Q?kVWQm6+2VtnGG9Bq2QPFyGY+mTPTIi7XgbkYctJE3z9hJfLce9+EF4v3?=
 =?Windows-1252?Q?tE+vAcbR/ZqdWc+67ee1XmWa9vhrc+ibn7/Pp1+70/vIG5gFK7ZjbVYH?=
 =?Windows-1252?Q?IaC/sP7/ebAxIakC7aGoA+XSG2Uh0zwcl0SXuWS9cSdMCe9cxhZ5YUgj?=
 =?Windows-1252?Q?9bnx8q2UVtWC+wLwmI+s33M0CiXVis4DN99z6QipdVfkCsTcrftBmxYz?=
 =?Windows-1252?Q?/RK/yax9az4vh+jxkubXMUpgZDfF5dfGeNRAuTYyJCGJfPpe7NS8fdwN?=
 =?Windows-1252?Q?9KZlpohOuPtEYkqpU1r4uRm2YC8mVlh58n3KW/jWOWtQOKPkhQRdm5CE?=
 =?Windows-1252?Q?5GiqyLGs/luSFDA3KPwvTs6hdRFpWUFDw0opFnuCxCGDyyxaszyFrUtP?=
 =?Windows-1252?Q?hvucPuwJDOu/LZ2/jB2P5AlpnrWR8svO+2SlhR9lbglTQwJHpDJEFdT+?=
 =?Windows-1252?Q?6FnQ/7WdPDDt7HaAvyAidS5l8LiN33XX5jOyA2fSocrjkXfDqQyb9IEK?=
 =?Windows-1252?Q?JQZTe0gPRKAFqncTPeC2XzdX/5ud+h2Ag4w=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2507328e-b1d9-407c-e7a9-08d9594dae9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2021 02:47:22.4694
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RjwIzwDbmIC/147Bowq/XoQCMski3i1xxEymMVftYYi+40o0uw8dobpaRDha1PEzgDztQ0fm7vzHi6HmBfZH+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR05MB2722
Message-ID-Hash: SD2B2AOUDISPOMZLSQHZ7SK332LDWGBX
X-Message-ID-Hash: SD2B2AOUDISPOMZLSQHZ7SK332LDWGBX
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YSFRXEUUSGI2Y37GXZ37KFTTTOX4TD6H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6565490984561807022=="

--===============6565490984561807022==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB45007CFF2FEC947F65240178D5F49BN7PR05MB4500namp_"

--_000_BN7PR05MB45007CFF2FEC947F65240178D5F49BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

No, I have not attempted on UHD 4+. Due to some other software constraints =
I am only able to use 3.15 at the moment.

Thanks,
Jonathan
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Friday, August 6, 2021 3:56 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
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



--_000_BN7PR05MB45007CFF2FEC947F65240178D5F49BN7PR05MB4500namp_
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
Hi&nbsp;Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
No, I have not attempted on UHD 4+. Due to some other software constraints =
I am only able to use 3.15 at the moment.</div>
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
<b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Too Many Samples in a Single Burst</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan Tobin wro=
te:<br>
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
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
.x_MsoChpDefault
	{}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Hello,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">In trying to test the =91rx_multi_samples=92 examp=
le with all four channels on an n310. I run into an error of =93Requesting =
too many samples in a single burst=94 when I attempt a longer record (reall=
y anything over a few seconds). Seems to be
 my nsamps value, but I am unsure how to remedy the issue. Below is my argu=
ment and the terminal output for an attempt to receive for 10 seconds:</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">./rx=
_multi_samples --args &quot;type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dg=
psdo,clock_source=3Dgpsdo&quot; --rate 6.25e6 --subdev &quot;A:0 A:1 B:0 B:=
1&quot; --channels &quot;0,1,2,3&quot; --nsamps 625000000
</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Crea=
ting the usrp device with: type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgp=
sdo,clock_source=3Dgpsdo...</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea=
0e2de</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.1=
68.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,addr=3D=
192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [MPM.PeriphManager] init() called with device args `clock_source=3Dgpsdo=
,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.168.10.2'.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)</sp=
an></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)</spa=
n></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)</spa=
n></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)</span>=
</p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)</span>=
</p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)</span>=
</p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)</span>=
</p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)</span=
></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)</span=
></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)</span=
></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)</span=
></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Usin=
g Device: Single USRP:</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; Device: N300-Series Device</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; Mboard 0: ni-n3xx-3218B5F</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; RX Channel: 0</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; RX Channel: 1</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Dboard: A</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; RX Channel: 2</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX DSP: 0</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; RX Channel: 3</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX DSP: 1</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Dboard: B</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; RX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; TX Channel: 0</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; TX Channel: 1</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Dboard: A</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; TX Channel: 2</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX DSP: 0</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; TX Channel: 3</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX DSP: 1</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Dboard: B</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p; &nbsp; TX Subdev: Magnesium</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Sett=
ing RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Actu=
al RX Rate: 6.250000 Msps...</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Sett=
ing device timestamp to 0...</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Begi=
n streaming 625000000 samples, 1.500000 seconds in the future...</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[ERR=
OR] [RFNOC RADIO] Requesting too many samples in a single burst! Requested =
12500000000, maximum is 268435455.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [RFNOC RADIO] Note that a decimation block will increase the number of s=
amples per burst by the decimation factor. Your application may have reques=
ted fewer samples.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Erro=
r: ValueError: Requested too many samples in a single burst.</span></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Thanks,</p>
<p class=3D"x_MsoNormal">Jonathan</p>
</div>
<br>
</blockquote>
That looks like a bug--have you tried this on UHD 4.recent?<br>
<br>
<br>
</div>
</body>
</html>

--_000_BN7PR05MB45007CFF2FEC947F65240178D5F49BN7PR05MB4500namp_--

--===============6565490984561807022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6565490984561807022==--
