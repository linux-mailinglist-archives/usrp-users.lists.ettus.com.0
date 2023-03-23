Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 932376C724C
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 22:28:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B239384822
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 17:28:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679606882; bh=SjXm9NAmeb+tZNjjm0/DlqQ93ZOED4OPjDSY01eCOVA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bf8EaA9A2wjQ9+8AZHlKlxQW9cazBV+ixP+7g+ZvOFRXZX+bP2spRO75QjbYFqDfO
	 iI0wB8+KPngFzNZqEtMlovDd/rW5Mnl4nyGe3/YOLKwhEwOIdzypO+Rx4ogQvwsbCP
	 nahv1tmz+IsnqFIMWalGhxuZo0apmX6fQndSwcnpbrCNhFugIsu9tQuDzJ9t5QIPSJ
	 4DT6vdCttSGCPbnX9Ya+9uwTH90gEO45QBnynBj1AATItnVpWF4G152j+Y+julaoaX
	 AcgpxzMzuJ5l8nQG33OBrnwmgy99URZHaLS/PpS70XTQ5XBIUTuh3VFsPvPAitAO15
	 NaPrScdNKF5ug==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2041.outbound.protection.outlook.com [40.107.94.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 40AAD384663
	for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 17:27:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="AD4j3SqV";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ntqJ1k7DhDqFRPAleC6SL4yjdpK5J0DasmuQcZsIe6tjDLwsNj5FfrKt4DB4BByZ6yprMHbtt8p/Ggr+Vo3haVEhmdycaw7SYbedqvMLma0OuIeHMhajwTqJmac7ohSDsXZaBQ7vntcr2b3E+vMFwhUX5+IOjkWFn80clI5uZwK1C+pdcS8Hyt6ZLrUzuHEDgpXmy5cfhV1Ziyk1vbpUPGunYllOlodNgOKTLYieffw7nfx8406kK1kYbp7WPHgmMkEGryu+v5fEk0ToXrT26kJwvR6hMCIs8v+D6/KKN6KMuU2Fp242BIfz58/RCR0q21KSg8xr62cHijyWoQLIcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XcRw6b/ZH5MX7M2I2n5dKKMV3RGszeZ6Bs5AyG35/xQ=;
 b=RqNDQ8jUStWj7smaEfUxSE905baMi1RfkB6foEX1rX1uJa0fKpwFrzJ5XeACs9PJjXi7kYnmR+RzDJhUSINYWYNxMXseLZjcSLwBc+9EvBA3kJVuYGfVbISKvGwBMORI4XSzvww0jUIveflX+EoYD/BZzzBPHxfacwm0TjnDyUlIRodh9npEaEPPswRXjVQrZl8iaDWzT8qYdyLXG46T1gH3BEig4vIeEAeFNMbXmdlZab7MCdVc/lNYwjE2QgdZQEQlAtVtRdMEmiQAgT+O0m+CV7pSg6zOINKyt41YLIkazprO0C8/ZsQmthe2dqJ2ewTseaKm7hQOG/7Pif4sww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XcRw6b/ZH5MX7M2I2n5dKKMV3RGszeZ6Bs5AyG35/xQ=;
 b=AD4j3SqV5VvRPjGaebw6BewkcHbFLjevpmB2VgrUUPcik6etLNjoOg98pyQlQCht4hpYVK+AqWcjYMSs/2YvTk9rgdV3+oyFZuga+f7NliBP6lrdbkQy5JvKKVFFt3r0RJTuzv5gyzbvzPkCykd02iHCdryXHz8VRQSdtXHJ0ExwoOhghrImV+YQooXVrTeEw1XlTB1V97A3kqX2LGrv4j8ghL0wgqA28SHAPjLHd8uePufP7WlAtpleHz5KkIJs/c4V58HQSMryBN8Fa2gPGyMWj0sa8wym9FSwC4zmkyWIsr6nagzCBbSrgHL1kkrND0g4AHX1buQ6bFdjgb5RFg==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BY1PR03MB7215.namprd03.prod.outlook.com (2603:10b6:a03:525::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Thu, 23 Mar
 2023 21:27:10 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae%4]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 21:27:10 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Using RAM in a OOT block
Thread-Index: AQHZXc2NHqUwRVH56kmCYj8rRK/yyg==
Date: Thu, 23 Mar 2023 21:27:10 +0000
Message-ID: 
 <BYAPR03MB467893D55A7D1A6137697F48D3879@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|BY1PR03MB7215:EE_
x-ms-office365-filtering-correlation-id: 267afbd5-c879-4d84-af0c-08db2be55cb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DCuyOQmVE14Gt6FEkCFN1p1edwk/aJ8edzHT+6UoQINAXU25+0jys6lvQUUC2QnmtRo3GwFdWTO5KyAFq18tYKrGKFvmXsiz4zVTn03HGkp+fkJc4D2OhqJw7zriIEr+EhCzatjwxpeeOfiICITX7fCayNzNlDzJck8gFsT6CnOkJq4nw7/G6NhPtJhWLoc9uvg9PGcgwcxfi+D/FLkGwMNjNqek2TXG2wwS607OlJW6gAVNQWaDcZ+cv1w17GGSdCMFRnzndi8zsSkt3NcYGpc69PeybHb2rI487ZN5oTuCEgAz3LXOazLAzqzopMLp2NyYWYxP6X7Oi20gxPGIRipwp5clTB/yvnwlVCz0rlixvdmqyVad7nzW3tKtdsRVStOatSnB/vqspgY5Vg7k3jWauyWEc8MjmiTx7eEg6NDgIruRdeYG5Ep4gQdbZSa7LiqGXeIg9G1hzkDQKIY6gGjd+wStjekqtGkqlnEYZHhUG0O0KsxuKLOGKM4OtZDxHYnIcPttGE3lcUOj8tI3YmyvoUM1WJcNEQistvgqgsaNlO8lK7Ol/uwX3W4gpiZBpOuOY2T1QyYcbVBOvVVcyixwL0GKHwDwF0FWFiSehqgczNwfIoJ84UdB+U1Wm54HuBln6vuPm6q9fd3vsmP7KGhQzPiWI+V0iWjnBR4pVqyXNU3IAmgIKBA/gxZ97HaPpgpkmqLBlEJ65krr+UTixA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(451199018)(26005)(6506007)(38100700002)(122000001)(75432002)(83380400001)(55016003)(9686003)(186003)(41300700001)(478600001)(33656002)(4744005)(52536014)(5660300002)(8936002)(66446008)(66476007)(66946007)(64756008)(41320700001)(8676002)(66556008)(91956017)(6916009)(786003)(76116006)(86362001)(316002)(19627405001)(7696005)(2906002)(38070700005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?XdwwkqZetQaiRhYFPptKhxBHjem4bBTo6gIzI5zoTP3LrE8KTO4hwO9tBe?=
 =?iso-8859-1?Q?4aLLzbc3/n1ESUQ5zAHA7W6g2xyx7vJOvc/5xZy4YM3AyvtI5Ow2fuqH9l?=
 =?iso-8859-1?Q?hbXHN0XaCI7/ower++O7aGxQOGs3sws5FfT31Eknw6/W0dSHDg0Gm4Xan/?=
 =?iso-8859-1?Q?Bg7f6y3OIcHURNDRgw+rffZ9QY+s8iReWywvdCoJ1x6YApZEJLzbH6Ms+P?=
 =?iso-8859-1?Q?4/cBiI/NtYTeWs5aaqCIpYzysaTYhEpo5IR410LIYubb7BsqrlaA8C9WjJ?=
 =?iso-8859-1?Q?WChNPmr4nlgv8ZXoxNQDvFVHZTn3TO222lp++frpWVieXNR+xilN11D+Rm?=
 =?iso-8859-1?Q?/ZxMGh8lWvQP7NrZM9cqf37tSC00yHSUqS/LpolZU7HVuLCLg64Y7+OFKr?=
 =?iso-8859-1?Q?vd2wtCo6utE+0WBjea2lnz/J7ZfAWSwaTRtMavW1AflNivaAHl6Zk3cspW?=
 =?iso-8859-1?Q?UaH0Ail0gtHGaAtF3N4L3vmSicYkX/75Nrf+mmQe5yyELTyt8P8psIzwMX?=
 =?iso-8859-1?Q?WljpHtKO2Eyfm+7vQXz8ssLsx9G0FKnCTrMI8561A+XSc2N1BfQ5rCBe3n?=
 =?iso-8859-1?Q?PLkLmGzgRGpbVuNGNfDoDZMc618yve2H5wj3vo68TGAkv4j3++abnM3q1s?=
 =?iso-8859-1?Q?Ipaz1qw9GSbmAXu8vsLf6JlYg84oFsIzbpyXb2xas96cNDGTOT5UM0+xii?=
 =?iso-8859-1?Q?X6h5fyINW1XjIsqP81tC13ebtlWfVNmzVfU9SctU0dn3y7g9RhCFnw01WU?=
 =?iso-8859-1?Q?KvX2RQFjHP2cg1WX+rIBOTnOV20MMcLRoUWjgITrFxz2nlQZAmgnzLKxcH?=
 =?iso-8859-1?Q?4uxuq4omcRkkFY73Kn85jxYx3ddfYPOHs+vGCeWpqMNbF1ocDCvPUEXmzk?=
 =?iso-8859-1?Q?GXjWdq1sIW5B6ifcMzpbSqXPadvoco4mWuWTZDhBamt2/xSGFekx17/jqs?=
 =?iso-8859-1?Q?JeyRoVbmbUgb8WuQGuHxIfR7byWOMqYKSV5LM+unWy9aRyAsiw6pNrUvkc?=
 =?iso-8859-1?Q?DHsFcT2M6YWwBofptL2tHd0i36aj6zkUcKJyA+hvgDNwuG8WURiwvF0tGX?=
 =?iso-8859-1?Q?7uneM18u8y0+mMggq0dwhMKSCjUpLnKiJEpAZlzsLBgCGHgHS6qSogwABO?=
 =?iso-8859-1?Q?m2ExyId/m8bSjoNX+yOEkLLMpVfFOffIXOar0PET+3zJ4r1uJcklIVaTHH?=
 =?iso-8859-1?Q?iX28zc/KLCeP/phvpYnJv+JFQx9nk+XKuQB4U+MRs9rXFB3hHoQlVHh9jh?=
 =?iso-8859-1?Q?hfqFAjHGk96bzBU/0GJ4JrNDdsrJePvVy393bz2SklMDyQ72hLbiJUxYpm?=
 =?iso-8859-1?Q?cZeCpRML3ga1AY4EmY6YFOIkXioMuJ6bRmVeJkvZETOtbrLRDAIdcH6q4+?=
 =?iso-8859-1?Q?sTjbEgx1NNXR/Tvt7W5zWz6QAwYZUhVjvG6U2nf9uImZsGrY6xPEq9Q4WT?=
 =?iso-8859-1?Q?oIiqUWTA8/glQvZAgRk5cfwn0tcNWxWRaAuHWKYYF/XeYHYyfS9hkGxn65?=
 =?iso-8859-1?Q?i0QCjBVXtdZuLqLbw/7QTD8ZtVkwORRhUndqUjDVpHxe8/Ba1C4OOYkQ54?=
 =?iso-8859-1?Q?6wI92NgNTCUjIHWeCUwhWrryizzuvPTvO0PkijvetWPtO89rtd2/dof/Kf?=
 =?iso-8859-1?Q?PW13HKVZI/g5Eg8QN6Q4uHPaYmewX4Ypuo?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 267afbd5-c879-4d84-af0c-08db2be55cb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2023 21:27:10.5766
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vPNXz+51xvM6Cic81FkIz6LtlBoUlkh206EGAN/ad6tjRPydU20e3kkCKlBg8M6vjhITXrwHchQTq1ZRy9Hflg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR03MB7215
Message-ID-Hash: 3MCAE2SIQNTA42LAJWOIBQBVSVY47FDY
X-Message-ID-Hash: 3MCAE2SIQNTA42LAJWOIBQBVSVY47FDY
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using RAM in a OOT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JUK2JG2LOEGFLOHR3NDNMEPV6WDB45T6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9040947143606451153=="

--===============9040947143606451153==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB467893D55A7D1A6137697F48D3879BYAPR03MB4678namp_"

--_000_BYAPR03MB467893D55A7D1A6137697F48D3879BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
After many unsuccessfull attempts to compile a RFNOC block that uses some m=
emory (store and operate on 4096 samples using distributed memory results i=
n too many LUT/Slices being used), I am moving toward using the on-board RA=
M. The reference design I am looking into is the replay block.

My questions are:

Does the module axi_dma_master talks by default with the on-board  DRAM? or=
 am I looking in the wrong direction?

Is there a more practical example or guide to access the DRAM?

Thanks in advance,
Lorenzo

--_000_BYAPR03MB467893D55A7D1A6137697F48D3879BYAPR03MB4678namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
After many unsuccessfull attempts to compile a RFNOC block that uses some m=
emory (store and operate on 4096 samples using distributed memory results i=
n too many LUT/Slices being used), I am moving toward using the on-board RA=
M. The reference design I am looking
 into is the replay block.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
My questions are:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Does the module&nbsp;axi_dma_master talks by default with the on-board&nbsp=
; DRAM? or am I looking in the wrong direction?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Is there a more practical example or guide to access the DRAM?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Thanks in advance,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Lorenzo</div>
</body>
</html>

--_000_BYAPR03MB467893D55A7D1A6137697F48D3879BYAPR03MB4678namp_--

--===============9040947143606451153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9040947143606451153==--
