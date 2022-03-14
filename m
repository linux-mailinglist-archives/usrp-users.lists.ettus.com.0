Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EACE4D88F5
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 17:20:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41B22384B83
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 12:20:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="lfi4BQma";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.52])
	by mm2.emwd.com (Postfix) with ESMTPS id CB4C2384314
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 12:18:45 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.120])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A9216220084
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 16:18:43 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7A99E340080
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 16:18:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABzRRwkdLds+oxiMUS6Pjg9TKGKe1EUXVMsdtJPpCk9PeZqvpmr2D3I/zz12QojvDjEx+rBbvx7SDh1bO21QmtpfOh6iiHM/A3rzrCi4ZC1jjPfGJ6VDuSV1UYUxcfkjlbTltrbbj1wsPcCDClZB68Vc25mTeR1nq/QVj2w0nUv1Smq+jNqI3V2Q3TMokuJFadJOpT8/WUOK8I0EF9OJFkNS1FSWCSYAVYbyMB8BwXVq1RjYXlDpn0dWIkJi4NXU/ukQF4VxiB27Za27qN2U7oqPoMvwyNMcdB3HSo94Dp7cAUbutPfxYqk18tz3d2RbcqfwKczfwkgakoY+URnhFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iT5v+Zy/FNgvnh7ThsuuayPWKtHTdPlWVL5lx70Io94=;
 b=NEpkU76/Y+idIcMqCDOuf2dOdHZ8HGpoIWNosF+8JP2GUGbHvk/7GHS7ic7wJ8xT61Y4zyVDu2SC2zA4jBq1U7wM5xZZlv0C64ju/LKVwkB2jyVkQJP0oEyompzAlyDxDZwJJv/c+MjBMZG7mdij3yMLqyKhq3TGAQJfnXhb0ghvtPUOBcEOo14a3kj6rBYkJH+pPTK+qP2+sX+5XniKjZMIw0F4OYAUzH9P6aJ3HT5zKUd3WS4FRtM8oxzlBgTxNdn+eTkBvkA4YiGkIZaZngonpRqm4oVaWnGdnb6Gsv5NX0zvb1vr0KNHFPK9Is4kxFLRxqmU8FnhRjjqKRhe0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT5v+Zy/FNgvnh7ThsuuayPWKtHTdPlWVL5lx70Io94=;
 b=lfi4BQma17R8tFDqcYr4nI2IMv++pPNCveNsJlNDhwNfVD4UZmT15DE3FdPygMMqMqxlhFYNwclnvpt96CXGk8BnNednsywDoNPxRvKhL+U0QHRME58fY3DjVtzHJeY8IhYaWD47UF4rHTbwna0OD0u/ylPataBPVX0SAUAkHL4=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BN6PR12MB1234.namprd12.prod.outlook.com (2603:10b6:404:1b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.25; Mon, 14 Mar
 2022 16:18:41 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::b457:f58d:2410:5e24]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::b457:f58d:2410:5e24%4]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 16:18:41 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Problem using IQ calibration coefficients with Rhodium DB
Thread-Index: AQHYN7zIm+xBVn6GQ0Kmf5SOsFUA0Q==
Date: Mon, 14 Mar 2022 16:18:41 +0000
Message-ID: 
 <MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e968c904-e3d7-4854-4fb7-08da05d64dc0
x-ms-traffictypediagnostic: BN6PR12MB1234:EE_
x-microsoft-antispam-prvs: 
 <BN6PR12MB1234E9406DDCFE3EF0491681B80F9@BN6PR12MB1234.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 thPEP6oDUU43DcWk24UkQ/E4gA7TiIE7TXwTM+6U13zBV2U5Tz+MZ1LmJQzYJAmL4ceaoFAnkjZXmS62ISA3ZVAXXmB7QZHSisAOddGBCONUvDWgLcY6h+Ux9MLK3RQir8+4Mgt9fuPT3/1/SEwc/lvOrAtJP+fGjWpXOmSCHIqSopbR3Fr6EQmTY9nKOPtvmvrj4wygsp9EvcRlGhKZAMdcEIxO2yJG6jgJiLB6ohSwlVdsi2dYAFMstGP2w5YnnVAXBiMHwZ9/vD+iTXzcJa+HPQjRETkEPUTBDD+yUy//qIgosjfF5R4C9nSvP8gxbDFPUyk3RIdHZnSQl9u1498rKrLurJoGLpT/ilzVDIZbTieajQyItj+MTqiuHO5TJqcw92JDNet6CrBadFUIKvJYCS64VVKc13DcyGO3oJ55gC66LaYoxk3bMFgLkEUk5zad8JzP9yIoVWkIHiqWOy2N8uBnKAPkakRZlPHT2ByV/DGBJDsW49Py7+s4UQEPT1bDFq0MTAI6z0PKtrPOdNfz12peX4vPNWqlWY86l958wV2Smw5VTzJNZlPRGZ0xONpaJlnIh+0j7U5j0H7/5xmiJClymgoCzIP+8u/xnTWvsmhchrKgUdk31c96OEvC7lgJ2TI4sAFZ6cVmv2E74yu2kCyecHf21QdzPUUktKReoaQDatp1ISPohCiPnRgvICODgDqH/yQXm7l86SfAL6WErHbmrG3eFL2Pl1Vg4JWczIXQXj32tKbxabu/cfhcAwpQ4cYiDnQ4WVFT0b/BHj6Z+1Hj7KTo3UsGw9hGitY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(346002)(136003)(396003)(39830400003)(366004)(83380400001)(6916009)(71200400001)(9686003)(2906002)(7696005)(316002)(6506007)(186003)(26005)(8676002)(38100700002)(76116006)(66556008)(66946007)(86362001)(66446008)(66476007)(52536014)(5660300002)(8936002)(33656002)(38070700005)(508600001)(122000001)(166002)(966005)(55016003)(19627405001)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?4baeJh7mIDO+mdwYUVcsKjTbIFgygWUj2M080bzG/yuhwx9Y4fotgpbM9l?=
 =?iso-8859-1?Q?jyT8trMHVsLD892wqOnIdqJsbcTAbQvKV8eRlzv1Brx4c9xo/vhfYcm6bV?=
 =?iso-8859-1?Q?nUc3xmoYaIDPVJP4C+TjAknN6cYlhO2ITTjzceAs005HdbtriZlGtWxtp9?=
 =?iso-8859-1?Q?EHdNV3h0/jCRDf1VQpStuNPwxupBNYtyDrVUfuQwRd4k7PjyR/Nv5BluVD?=
 =?iso-8859-1?Q?hPQb+Ys3OpQlURljUm/DRvI6r5qa30vq5YkgF6c0jy2unVf9l7RcV9+ebI?=
 =?iso-8859-1?Q?Bd0W59spBeYV+1AUrJ9wnsw0DSTLYFuk6rn79ZTG/IK/57h8tlEHTchmGE?=
 =?iso-8859-1?Q?2rWpFXQn/MGMbMBj2BF3oKqAO5z09F7o8keYmlhDrYmuJZj9MNjyV6/Amq?=
 =?iso-8859-1?Q?OjdHCXcSpeJtipjnR76VWrJePXiRd1jpG92cIwmb0z9dWfRbjb6iHOq/Ow?=
 =?iso-8859-1?Q?1WaQbELLpyOgrQITC1ZO326I0NmeUtkmPGmLHICzunzvWMXVtBvjgLdeTl?=
 =?iso-8859-1?Q?5lxlPgZIGS8oLm5ATflxfglzIyXG5iWTEP+EfaVs5LgN7td11zwgbi6fAU?=
 =?iso-8859-1?Q?O+4dEflvE83cmbdhpIEQ1LUQ40xD+6mtdaBf93P1j/jEWGy7i552n4rFne?=
 =?iso-8859-1?Q?+iPJLoyQK6yascP0hnUF5Q/z7OedXubAG61lXn2ccw0DcANn/IO1FXNGHb?=
 =?iso-8859-1?Q?T8kkT506KNVUsLj/Eo4kMUJBXDReRuiC0PNs3A2aGn/TlGJu8YtqNCfx/z?=
 =?iso-8859-1?Q?wugdlNIVsmXHuPYgg9vjDBD3i6mqCqXKPfkidRoFLjw3GrR0IAsdzgoZZe?=
 =?iso-8859-1?Q?Y80cEm3twc76jCTlE7BNbeC+Ht4YiSwjdXAbIe0/Yy65966EnJX7Ei9wMV?=
 =?iso-8859-1?Q?hmAFKU3a8GIZGKva43CfjBnL5jCsWOsO1SYEFsMMF3Nyii9eUrCwXD+4+s?=
 =?iso-8859-1?Q?a1ml1L3cHHIhWRxx0iPjt2gCHt9yHcWIwM/Xhuc9sKNuyHEMZc+g0ZwzMP?=
 =?iso-8859-1?Q?QI/Cbaom/Kghd9l3zzLgOaVL/5n3tQU1rcIVxCLNhWqb2GVI92EoDEbirL?=
 =?iso-8859-1?Q?EPn3pjxJCssRsfXCPL3Rh9q/7A6968ht4p4EG4hUiA4SuPcuAnkW//uwnk?=
 =?iso-8859-1?Q?TdZ/wODPm2Kf5uq4+F4SWbByyccrDyVrunMsG3m+FqV51M3tpAEq3Frkgs?=
 =?iso-8859-1?Q?JefkUuRUOv/jyysFL4nvo+0az2xr11VpWwA1Jky4J/V85lu/vVzdLNOpGW?=
 =?iso-8859-1?Q?0c8++M1ScG0fmivqTF1U9vMHVksaxtIbmGxMaAmuDP9x2I2XP28iio2FDb?=
 =?iso-8859-1?Q?ve/Q6rEpulsekIoOADPTRBxGIkpNf6Be4u54j7QLvkhant5/xiPiFLC3Fi?=
 =?iso-8859-1?Q?yMFWIB8Vs5OSnUcZ/5X6pTefdWZ2Bp4wYuUmme6pc4GCcfcwMFS//vi4UA?=
 =?iso-8859-1?Q?owDHyQZGONqiJ90CmtPjQfk3h+IQOcowAIu0eaA0czxc+k/41yP/oUUdpo?=
 =?iso-8859-1?Q?HYuHcQq52u9kLimH/zkT//jfANu70lzj+9LSNwC5qvqw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e968c904-e3d7-4854-4fb7-08da05d64dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2022 16:18:41.0842
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zc3b2q5SxBo7aIwWnp1nLSFe+GtMV5vP07jyumg/3fq3++63gHmEAKFqvnxHpbOBX5IHtaNUDOlc03pRHsnuc3mPEWySKkshryNarBz7sAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1234
X-MDID: 1647274724-vxr73vPe1Dpc
Message-ID-Hash: M2H2QNB7ZJLA3NRDSLNXBTQ3PHOYMLFM
X-Message-ID-Hash: M2H2QNB7ZJLA3NRDSLNXBTQ3PHOYMLFM
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem using IQ calibration coefficients with Rhodium DB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5RQVZRXFUWTUCJKAJL6XCFOOZL6O44VM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2098171880282632668=="

--===============2098171880282632668==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9MN2PR12MB3312namp_"

--_000_MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I've found an issue with the Rhodium block controller code (rhodium_radio_c=
ontrol.cpp) where the daughterboard serial number is not handled correctly.=
 If you look at line 452 here:
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/rhodi=
um/rhodium_radio_control.cpp

It looks like this:

        const std::vector<uint8_t> db_serial_u8 =3D get_db_eeprom().count("=
serial")
                                                      ? std::vector<uint8_t=
>()
                                                      : get_db_eeprom().at(=
"serial");

This code attempts to check for the number of instances of "serial". If it =
does find an instance of "serial", it creates an empty vector and assigns t=
hat to "db_serial_u8". If it does NOT find an instance of "serial," it atte=
mpts to assign the appropriate "serial" value to "db_serial_u8". I believe =
this is backwards, and the correct code should be:

        const std::vector<uint8_t> db_serial_u8 =3D get_db_eeprom().count("=
serial")
                                                      ? get_db_eeprom().at(=
"serial")
                                                      : std::vector<uint8_t=
>();

Before making this change and rebuilding UHD, RX IQ calibration coefficient=
s (files generated from the "uhd_cal_rx_iq_balance" tool) were not getting =
properly loaded on an N320. After making this change, the calibration coeff=
icients are loaded and working as expected. I can tell this both from debug=
 messages and by looking at the FFT of received samples (reduced image when=
 the calibration coefficient file is present).

I'm using UHD 4.1.0.5, but I see this issue still exists in "master" -- see=
 the link above.

Thanks,
Jim


--_000_MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9MN2PR12MB3312namp_
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
I've found an issue with the Rhodium block controller code (rhodium_radio_c=
ontrol.cpp) where the daughterboard serial number is not handled correctly.=
 If you look at line 452 here:<br>
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/d=
board/rhodium/rhodium_radio_control.cpp" id=3D"LPNoLPOWALinkPreview">https:=
//github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/rhodium/rho=
dium_radio_control.cpp</a><br>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
It looks like this:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; const std::vector&lt;uint8_t&gt; db_serial_u8 =
=3D get_db_eeprom().count(&quot;serial&quot;)
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ? std::vector&lt;uint8_t&gt;()<=
/div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : get_db_eeprom().at(&quot;serial&qu=
ot;);</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This code attempts to check for the number of instances of &quot;serial&quo=
t;. If it does find an instance of &quot;serial&quot;, it creates an empty =
vector and assigns that to &quot;db_serial_u8&quot;. If it does NOT find an=
 instance of &quot;serial,&quot; it attempts to assign the appropriate &quo=
t;serial&quot;
 value to &quot;db_serial_u8&quot;. I believe this is backwards, and the co=
rrect code should be:<br>
<br>
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">&nbsp; &nbsp; &nbsp; &nbsp; const std::vector&lt;uint8_t&gt; db_serial_u=
8 =3D get_db_eeprom().count(&quot;serial&quot;)</span>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)"><span style=
=3D"margin:0px;background-color:rgb(255, 255, 255);display:inline !importan=
t">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ? get_db_eeprom().at(&quot;serial=
&quot;)</span><br>
</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; : std::vector&lt;uint8_t&gt;();</div>
<br>
Before making this change and rebuilding UHD, RX IQ calibration coefficient=
s (files generated from the &quot;uhd_cal_rx_iq_balance&quot; tool) were no=
t getting properly loaded on an N320. After making this change, the calibra=
tion coefficients are loaded and working as
 expected. I can tell this both from debug messages and by looking at the F=
FT of received samples (reduced image when the calibration coefficient file=
 is present).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm using UHD 4.1.0.5, but I see this issue still exists in &quot;master&qu=
ot; -- see the link above.</div>
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
</body>
</html>

--_000_MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9MN2PR12MB3312namp_--

--===============2098171880282632668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2098171880282632668==--
