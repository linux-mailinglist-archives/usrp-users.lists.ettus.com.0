Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0E56A4FB1
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 00:35:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5B0C3845C5
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 18:35:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677540937; bh=qGGXO5M+NowR3b9yOoSUE44f/ux+TGlO/bDXL3rkd9s=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=i/PUEcsljKgKXp2zUwOtzcNvE2jYfdkQA6tU7zqHJWIS7yZ2bmBqXVxGj8GfeBIg2
	 NB94yITftH73HN84n/qvfaPGVtGrnhq1SdKfp82PS5rhBN6+e0XeSjUeTUBfQwGT//
	 sZdaxVQhYx+xZN2bCDm7eiskRJ2evUV7dgd6wBE2LGDTYsAGE8gBub34LJ9FOxGAU+
	 pLcELokBWRVhRQnSNYVFam7QrBpIsh9k06kux9TEDiqpnUf3HGHPAwABLQuNEGaxB6
	 NuMpNlUyw7eCd9+BzJE55WLdKRqzjhRuZY1Kl4toiUXVcuXDwfN1x1MuBve8n+d2Gw
	 pjPt2OTD2+EYA==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CD723842F4
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 18:34:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="K9ceKslE";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eOPF8i93dkt40E4KXMK9CXgTj+1LN/PaM7MQOZ1qfrxE7NE6rKuzT4YaHEl9UYiFs0sYyfOaDhG9wOfJcmw4OWLJp4nm39S9lHZFww8mzDH0RGGjXVQZ4ISV8Hi8XfGfvnmo7iFzO6+6bYm0ReK/4im8YBSof+psXvYOyrMYu559ARsa4TbStgeYstlfE5dr3imOHGqVTq4EFdZWLsZgWM3+H1tCCTj75DNpXbaNU3GTyoGQuosyO5co7uda3Oc8NQvZvDYlauwedlsycDMXNGUxp4bXn2H49nwRsdoQtJu3sNbKw1ydXMmZcWGFjuuR4DRFkrvYe4lZXwnXkSJNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGEXOu3f98tqd7Gf1Sg67Mwdlea6m3C7EbP4TruEIO4=;
 b=OSXvK3u2mL5+SfWCQsTQOSie2B9Y6utul4aFKFEx6RAey542AoqdTlIgIbVse0lgedx5oww0sRWBiWXaaQgRYjisfylUhxZcB9U5JLyJOgMpgeJFFV/9tdp8zL6YCII27UDw+/GBrFiTsc8r1WnhG/a8t9+wK32aJqzRXeYBrC68bRJdmo4wuKuWzUNqABpc2pzfCkBQ/4Uc5g9rsCIz4gWodaT6vTjWcocF1JwtTeDRtF3Hx4rau6uIQ/JpqJ4b1x3NIeRWaJBZIqCsNwHS0rL/XGQk711INPufrqvt7b2Wd8XCPw2qSh4EU7IsONpRD9d9PXqK7iKT/DeN9XaKCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGEXOu3f98tqd7Gf1Sg67Mwdlea6m3C7EbP4TruEIO4=;
 b=K9ceKslEcKw1MrQ6iUTGSODYp4GkHYR4UctMX+Pd4ewYE/tUFNsKNk3HnIrwzTpchvPgZCBwSelq6J8XbrKtE7yipPjoJYeGvWaeS7jwRzfJfGYOtTB3Z69b3yKQnNPY8YueIz88S/hwTz1ZB+OvylnuxiUmjrnFZ+l/Vu9VOF6yQ2+a1fQDiS5DRz7m+gs/SlpacZnvNS1eUa+QjNFCK8feeLeFdn+eBxQ80Lh79/UCaVv4OdloqBfvSFk3Eb69dXsagJjUU1k8gdOZIw1Z3tE91mi8AW7nZkgzfSJss/RMci7uRg4Gs3EUSxEixP33xBrO4LfNprtDs0EtcBRVVA==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BY5PR03MB5220.namprd03.prod.outlook.com (2603:10b6:a03:22b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 23:34:47 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae%4]) with mapi id 15.20.6134.024; Mon, 27 Feb 2023
 23:34:47 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC packet size - Keep one in N
Thread-Index: AQHZSwI14s5x8ZkjREq+AXT2Lhipgw==
Date: Mon, 27 Feb 2023 23:34:47 +0000
Message-ID: 
 <BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|BY5PR03MB5220:EE_
x-ms-office365-filtering-correlation-id: 37d0245c-c5d3-4b25-543d-08db191b3682
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 opgI4Cg4p1EnQJIKGufmVx/ADj9xwIrinSp+ieUXz+CZ2iiyaDCs+jK8evz+CMxTn7Y4WHioi2xA1HUVOxKH5Yl8I89yXXWl+ZkPIDNiD6HWoIlLP+FSKDTZhwbw/hqRdPkNgJ3PnRTV71G3DrOF3+CB5eLUAH9W+KP95UNKi7nLsGxTM5ZORusvKnadWzwu8mG24ufsL34pKFwGmnF60/c3HTHnDnoKept67QS/8srhD30ErjeyXM1H1F5VKO5TtL3NO502Oy0KBj9je7VszHdZ5kydtzrcypfnifJeq3nJRIB1mc5DY559TjndL1f384C+JsauM1aC4mpDoc5h2JyhvfaZusIC0TIo9HZ5wcAl2nIUk/ikx7Mth13tobvUJePHuUNBoF6LXbePOhoMk80KYwa/r7XthwNPhqUXGlw4GmzEKHO5XeW0t4IwTJf2KqimgCbt6IykZjNeOe4xa21d+CF5/Q0RV/l7L6WePF2BF5MSaYDried7DhuUDURfhmxCfOs6inZfWFsgcmhtLUekqcTwGAMsxf32XG4F325rPekHSiTzLPJY6Ep4D72hjPpYnx8o0TBhtYDSd3xPsPknmuVdIO7H+wDjE+Nt36RFs3Nwu9VAfaJBvqzG5j/r3fATykA9//bOIR8L0Bln/mPDF+feUyBr5mH+kZp2dv0hlTfeIVdPQrXAmcET/2ph
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(39850400004)(136003)(376002)(366004)(346002)(451199018)(52536014)(8936002)(5660300002)(6506007)(38100700002)(122000001)(26005)(186003)(83380400001)(9686003)(41320700001)(86362001)(33656002)(316002)(786003)(8676002)(41300700001)(91956017)(55016003)(76116006)(66946007)(66446008)(166002)(6916009)(478600001)(75432002)(71200400001)(7696005)(966005)(64756008)(66556008)(38070700005)(19627405001)(2906002)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?EjPZP5RBgX+MQk9qvVqeshDbai8WXnPEw9rD8UgTA9zsWGgAElYp4B+Cku?=
 =?iso-8859-1?Q?+wsFIXnS0c2NvtA2Xew5bxi0g3usF7sKcuFYmvUhCLT3g92uPYEJ7a/rpo?=
 =?iso-8859-1?Q?X6c6G51wUPvU4B/kNLGNcR22UZerolSAHJH3bSLKqc4qUvVJAMzjegIUPU?=
 =?iso-8859-1?Q?WAhDH6bQ+7PpS8PDuPd3VQYehGRGTjbK5gAp7jGhf47acMspuoA+QLkr1W?=
 =?iso-8859-1?Q?jBW4bH45qOx3nF0Ag6wChxIzHq2riLrRZoRmIIKU46xCJiCIWEKxInbMA5?=
 =?iso-8859-1?Q?p4AwQ8jV797WmNGEyaMfMmymDr60qNzWzNLmi4eirch33Adh6jR4rrtzOS?=
 =?iso-8859-1?Q?H0KEP8eCZ0MDsoo0hec0umsZZjMeqgzTOwiRmCqM2SSpW2RCo/AnqMweB3?=
 =?iso-8859-1?Q?+j4QP15gy7CfIrHRDYuCV0U0/9mDoJlUqq79ezHoAhe6te8bSReUKyY1kf?=
 =?iso-8859-1?Q?GUpQ3CKTfDJrmd6t3v5uasdtPZURixB9V95sHpSaGG5MNdIUAmxoT4OWiR?=
 =?iso-8859-1?Q?/XMqxaJE6HBhEZeXfiQlHrpkT2YCPoE7YpAvOe2GyXXKDmjRZlxuIFn8LB?=
 =?iso-8859-1?Q?XRfD0NktFdqegHKg8DOLGtSF6lAeywcD2/BR6LC6mvTFpNg6GQorPBNbmM?=
 =?iso-8859-1?Q?qJx2vD4NkMD6JsL9QedvyGivi+W5WUgMNsK7VDCmNi3HJcW69SL90SOATD?=
 =?iso-8859-1?Q?MbFdvw2uJazjnPa8zdpPRUFNraWxR2jc5S2wDdSsRDy/o1q/V3wgoGqtOt?=
 =?iso-8859-1?Q?nWnIgSgWR383RnQMH0KMuXMKeRLuN9GASph2BhF2dN6OwGPy7YVd2ERUTA?=
 =?iso-8859-1?Q?uJZ5SCA4gdzWi79i+UXk2G5xvv8FMuipc36WppkxKDCI5Cskn5tuZRK7+I?=
 =?iso-8859-1?Q?cAZsUiE/xNsQtTq7LR3GB8jT2uMlzjDti3evMKY0rRATNcqSKWCWab7oA5?=
 =?iso-8859-1?Q?4YZSgn4ypBHe2RMhTYmsjFxJWZM2pKtSL1lCwXE290byrmynkLF7ESEqPW?=
 =?iso-8859-1?Q?XAxZJOjUBxoDSgTsV7BFohwyOGLs7bnFzDMjSWxc3mynoFAfyIuxaSNFxd?=
 =?iso-8859-1?Q?8GOBXvB+6ElG6eWozgJMo441XBrvzdH9cmhQpXtqXKIed4RWdGct8yNULQ?=
 =?iso-8859-1?Q?2CK1C0emrXob1m6KEjJlaefzsAgtqRub5AIO853araIXyoQEd1O9UoJUnQ?=
 =?iso-8859-1?Q?RpDI8Qu7LxFbuDGKrwQyfuR30u/PU/lPsrWeysbpSBEg0nWq+pkoL2pRiI?=
 =?iso-8859-1?Q?Qfnn9pGZNSBQajUBMK2uNCKXepSnPEKsPfKiTkUXGErFwGETnuLTEpG3hg?=
 =?iso-8859-1?Q?K7SibSRASHZwSyrzNTrT5lCdtRLTfOqDSNCkqzvcINUV6iWgQ+SAsxrFA/?=
 =?iso-8859-1?Q?4vlZIA3SoUoaZ5y9XsrxXgHaBCtCK02ES6U49Z1rw6AT7cl9C8jvK6NaOd?=
 =?iso-8859-1?Q?dY2vMo4ZArK3SQqtn9PBqbBbVz0Bnhj3oJlJ3/9y3liviUHMzfJ6h1XGhY?=
 =?iso-8859-1?Q?Z0BdKaFfB61qZ5h6NThR167hZftair+cBzM5bCmYe6AOEnYpJair1PlCfk?=
 =?iso-8859-1?Q?RIFZct6GJ1dIyo9J5Sk3gz3nQDLbmVDbNteldy9A6G/bAS6bvNh7G5HeGK?=
 =?iso-8859-1?Q?q+yOlQn3xzBVOx/r0yDI6YaeROkXLTvB8l?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d0245c-c5d3-4b25-543d-08db191b3682
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2023 23:34:47.1910
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3NKk8cANiKR83zFz34eJbSeVsFPHik1Pbbvi/jgjquWzEQk40K8uY4iWZVcJyQQepqQnVRgpb4uBmRJC7jKotQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR03MB5220
Message-ID-Hash: OUSKJ6BU46XVAU3X4R3Z5SFMK5DZXN6F
X-Message-ID-Hash: OUSKJ6BU46XVAU3X4R3Z5SFMK5DZXN6F
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC packet size - Keep one in N
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4LB3YU4N55K44NK2BVD37XSL6D5CGXDR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0952410647869229535=="

--===============0952410647869229535==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9BYAPR03MB4678namp_"

--_000_BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I am trying to build a firmware for an x300 device that uses the radio bloc=
k and the Keep-1-in-N block using UHD 4.4.
For my application I need the Keep-1-in-N block to operate in packet mode, =
on packets 2048 samples long.

Before connecting the graph, I try to set the radio block to use packets of=
 that length with the following command (C++):
radio_control->set_property<int>("spp", 2048, 0);
The first issue arises as, calling the function to check the spp, I read 20=
44 instead of 2048.

After connecting the graph with radio RX->K1N->RX_streamer I check again fo=
r the radio spp and I get 364.

Reading this page:
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_the_SEP_buffe=
r_size.3F

I understand I could possibly use a larger packet by changing the CHDR widt=
h of the design. If I change the value in my YML file, I get Vivado to thro=
w an error saying that 64 is the only value supported for the device.

Running the design compiled with 64 bit CHDR width results in an even diffe=
rent packet size written on file.

The questions are:

  1.  how can I make the radio to work with packets 2048 samples long in a =
x300? Does changing the SEP buffer size help? I'm currently using 8192 as b=
uffer size.
  2.  why introducing the K1N block reduces the packet size to 364 samples?=
 how do I change this behaviour?

I can share the whole code/firmware if needed.

Thanks in advance for the help.
Lorenzo

--_000_BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9BYAPR03MB4678namp_
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
I am trying to build a firmware for an x300 device that uses the radio bloc=
k and the Keep-1-in-N block using UHD 4.4.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
For my application I need the&nbsp;<span style=3D"background-color:rgb(255,=
 255, 255);display:inline !important" class=3D"ContentPasted0">Keep-1-in-N =
block to operate in packet mode, on packets 2048 samples long.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t" class=3D"ContentPasted0"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t" class=3D"ContentPasted0">Before connecting the graph, I try to set the r=
adio block to use packets of that length with the following command (C++):<=
/span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t" class=3D"ContentPasted0 ContentPasted1">radio_control-&gt;set_property&l=
t;int&gt;(&quot;spp&quot;, 2048, 0);<br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
The first issue arises as, calling the function to check the spp, I read 20=
44 instead of 2048.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
After connecting the graph with radio RX-&gt;K1N-&gt;RX_streamer I check ag=
ain for the radio spp and I get 364.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Reading this page:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
<a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_th=
e_SEP_buffer_size.3F" id=3D"LPlnk878763">https://kb.ettus.com/RFNoC_Frequen=
tly_Asked_Questions#What_is_the_SEP_buffer_size.3F</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
I understand I could possibly use a larger packet by changing the CHDR widt=
h of the design. If I change the value in my YML file, I get Vivado to thro=
w an error saying that 64 is the only value supported for the device.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
Running the design compiled with 64 bit CHDR width results in an even diffe=
rent packet size written on file.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
The questions are:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted2">
<ol>
<li><span>how can I make the radio to work with packets 2048 samples long i=
n a x300? Does changing the SEP buffer size help? I'm currently using 8192 =
as buffer size.</span></li><li><span>why introducing the K1N block reduces =
the packet size to 364 samples? how do I change this behaviour?</span></li>=
</ol>
<div><span>I can share the whole code/firmware if needed.</span></div>
<div><span><br>
</span></div>
<div><span>Thanks in advance for the help.</span></div>
<div><span>Lorenzo</span></div>
</div>
</body>
</html>

--_000_BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9BYAPR03MB4678namp_--

--===============0952410647869229535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0952410647869229535==--
