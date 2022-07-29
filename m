Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 050F0585196
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 16:29:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78DF4380F0C
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 10:29:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659104956; bh=/NHBgcywXlG16Abgp3uE9aDVHLJyksvpWcJ5AC8ear0=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=tyKiEB5lhIvltCg9fi4c+N8dytdmRqko0AwIk7C8zWjLE1kboqRO6HxNejrFrsJJq
	 dyP8SpqeojNJ4km6BpLBtLKBzHby9o2uVU3X/vJuz2x1/OEFeTEy1f4L/0lnpVG2eE
	 Ka2C7bj0+qKRtWE8/UsHbD9eEfH+dpjhuD0JCVHDIm/flsYq4ZDzVIu7PyiZiC05ju
	 Try2xbyCsbVL6CU8bn23K3HH3pThT4Ny0yE9QeG0BUbxo+H5svxjn3TxW70KjcJy1Q
	 kIpWh/nvlpW0OnyayN/haycjnO6mWqBZiqcEeyd53caSEWdMhAx7OkR4trn2iCB3ar
	 9A+4xoxTvCkkQ==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2045.outbound.protection.outlook.com [40.107.239.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 47CC1383D8B
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 10:26:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iisc.ac.in header.i=@iisc.ac.in header.b="fO4eTXqY";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oEwVINhYe0nt711PPWFHfC6JpjrbsXqHUP5ftPIFx4DS8F6kmPgZpgvvu+ICIn8bfe1wZqZqlwjGqRhYalF5a4DZc7OnMWGySrhIJHa+YmknX0NL0p3uIUGQnTOvMi342sRGSIe4bev02+81+zf1uCIW8FvMBSEu9SZ1mB4nrtr2W/lZz6mf0MOlhFjks48cmIyXNrdsXoW6b4NP1rP5XEzpfv60U69NRg8B1rVtHkfiXYuDfyteOhYXNNn20uYTLNhmnBVmVNIfkZsLjynOqbmXl7+OvxMNyZlfh+NfEM1DPnuuLRplNaXLZh7/HPqbPd4wxyw/qxi8/7tB6QMX4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FQVkZdsxsTycrhN34tSAxfxRnAyuxtRUuxfbGj40ZN8=;
 b=MtF0mL4b3w7ZcL0K/eboCvuQ3tdIpr9EJ8nKFUO+coUEL5yPJSyKNG2JyReVL2x0dxwwgzGhmNbSNqhpds+0GYBs0k0t5zG1nk7CnEk7EUIuq9f5YBAkqEpnNxaMLjK6LHGZeWpLhqpF22RjKG9Nq9vwYHtTI4NogYsBJbNsea1cF8MQu0IsprO4G+woyCEKnEm25JdwHnrDwT7rVLBHe0SQPnAfPPQda+93XvEKPCemGUTt31dI7vjE8IfjDRQVhrw6X/5puSQS1R8npVbKIGj1gq7N6ZBE1xEKSolH/j5d/B2XShj0GVygpLEH4F8pujHu9d7C/yBkKQZu0AmeFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iisc.ac.in; dmarc=pass action=none header.from=iisc.ac.in;
 dkim=pass header.d=iisc.ac.in; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iisc.ac.in;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQVkZdsxsTycrhN34tSAxfxRnAyuxtRUuxfbGj40ZN8=;
 b=fO4eTXqYVWY20O26zAftPK+SqWVeIL/tj9W9x4kJ8rFFBxBcM6QGdyegmABtn5rBzcpbePHvD9j7VlKzJZHIsjKjQ7cZre8NEIXlpqgny/fz1lt+UJzDvCK8TRZEK5M4XablWgj3wwl90n0srD8f7nc/z1m8UJFRdlRTaZMrHEs=
Received: from MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:5::14)
 by MAXPR0101MB1611.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:16::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 14:26:32 +0000
Received: from MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c934:aea2:cd30:e13f]) by MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c934:aea2:cd30:e13f%6]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 14:26:32 +0000
To: "White, Joshua J" <jjwhite@RiversideResearch.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: UHD Python API on windows
Thread-Index: AQHYo1Em0AxYss92q0iuHngWYQ0WW62VZQfS
Date: Fri, 29 Jul 2022 14:26:32 +0000
Message-ID: 
 <MAXPR01MB43594CC488C6EBD2C92798A289999@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
 <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: 
 <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: d7f9d560-dff0-b2ed-ee87-6d5fbb0c12f7
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iisc.ac.in;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d3694f5-7db4-44b9-70c0-08da716e55e0
x-ms-traffictypediagnostic: MAXPR0101MB1611:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 D22muvuOiuyvbX1y01rK7hbu8h5zXIP0pCmC6KlrIw0WJjeEdlCAlyE2UgKi9BAlwZc+43e/OVwf4Jte8F6GJZIiGJvHdqEmR9f2lCljt4p2Wju4QmdhIQcas7QcLqgbcTMPnrz2PRd/JDBsdQ87hA2Oojpz5Y7gC/0EC7Pe0Yp6mBAYHahLoWIDAs2+kprLHi57BJuDkN3xcnK7R7IsvML2+fja/l9loJoAGSJVgonz4wNVoch17Xt75ADl41AxNvDKViccDA+rOy5sO4hlKz0Nckphj+CvWfeItCPqU0DetkBQqyuwuKIcZ7qC4yS5zTO4vhLF2ISAo3xShMGKzcRh3+4re16kXdYruIXekw5FDoJHkeV9UOINsNQLd6dBNFYGKnN7GiF+yQJ7xRcA3h0m7lvrO5XcI6ItsSkGu6q9Yjmbf1lELdu0ou4GnMf8E4UGaWw07EHI/zYv7m8pSk/dFuboxLQjHQbp/rj6PR75JBJLbkdbfGJHPEKmtgFHY9R4UGdTYWhcXarVnSAZQ9GIbVjXhXHrBuX8Lu8YejcnnLbkQPKHibdVW2NfWX7oKvVSA36iq0fasVF+VlUYNCe3EAsH17PYHjsvingLqSCA98wpFUnUa5lkhT3h+r6Sz4fe0/Bd5kQEjIe+mITLTY0AL8n04jEWHGwtbsqGspBWDfVG+jYpeKa3FMaOghKKOvD0PCfeblTrK1yvSxoa+LoVivDrXmaARSPOFX/8aq7YdUceWgQ9as6407OAzZdEoXf+/Do/PnhvrqxJZLjI8/BN2hN6gDVIT/P1oacxAA0Xny6S9cFMq3pDhgLb49SLiT1hNIn00k6hAdjawDv1Pg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(122000001)(38100700002)(41300700001)(52536014)(38070700005)(8936002)(966005)(478600001)(71200400001)(83380400001)(166002)(64756008)(8676002)(66946007)(66556008)(66446008)(66476007)(786003)(316002)(76116006)(53546011)(5660300002)(186003)(91956017)(7696005)(110136005)(6506007)(4744005)(9686003)(26005)(21615005)(19627405001)(2906002)(55016003)(86362001)(33656002)(41320700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?66HT6PIPWHqpmAIZi9YwgW0E0ekxYftWz51bNXHjm/+YAwVmsA+aVDII?=
 =?Windows-1252?Q?rOM3IkvVfi7B2R8fcFJXyslCZJbCXyyGk1ICqC9GU6wMaWMDT9OLd50G?=
 =?Windows-1252?Q?waq0OZ1Ys5yF4/csOCXc9RUKacHE17URywewlmrwl3I+Y/toq3po14f2?=
 =?Windows-1252?Q?hnQn+H/e9zmsmfkWGndNNTUoBRTBb82tYRMWsHmj2jG30JKgIEMqS83n?=
 =?Windows-1252?Q?9fY9swe1ZLGIWzI/HmouGNKgQwh4osjBPDWT8qXIquJtgvifXS9m/a8D?=
 =?Windows-1252?Q?3TGoeXoLgamsnAG8niZtb6R89t5IvXHzHBwPFnvKPb89g9xcEuU2m4Xu?=
 =?Windows-1252?Q?ZKMUdchmKNQGO0L80svRKGsf0Hi0E2P7tqOOexu8Ix2qUyKzNZa1SLL5?=
 =?Windows-1252?Q?LroovwKhg6lOdrHpWKsQkhqIaW5fJOyYTO1CGTmzgIlMbfSmsqTwEQFG?=
 =?Windows-1252?Q?nyaLmcnNBsVpMGEl0ifId3IrK8mBR7DaradjMwGFNkR45GshJzAVaP7b?=
 =?Windows-1252?Q?h61LKOeXSEsQLtfcztQDTK34ZpDFk3cWAhf1yUgvIc9/YvoHvXU/f+VU?=
 =?Windows-1252?Q?a5Tm/UZYH/oKxlBq/UO6HwV+fX/8Q34TO/0Y39HU5INpX4UNxvFgH6T2?=
 =?Windows-1252?Q?52Ld21TawreFyWotizUn7lCA2AW8Z8zSnPAo8o17NgMNK1bLkh5knmPM?=
 =?Windows-1252?Q?MQ554WDXQgebx1uzPNrL/wsWCUgYefEcfV122Kh4JQZZKkkXQqAPA24I?=
 =?Windows-1252?Q?FelrCVtqhLwrh2AbHM4pTcrFstSmm9p5V++wbUz+gOG4hlmb6ejwZAL3?=
 =?Windows-1252?Q?mnrXLSkvFWZrBd22WE745T/MVI9r30E11PWJfr6wIMakk5fZbIV0pgVD?=
 =?Windows-1252?Q?IPU2zoPMkOnLHi8jRNAUTicSB4YeX6lcNPNY9GnnZ8DJk1DO3gjkYlV3?=
 =?Windows-1252?Q?8avPEzjPiXSuZPgg8j97izLvKFWknBhvkRjDT+YyiOfL2Ed06etCUM6r?=
 =?Windows-1252?Q?gWNRYVA8QqUBCzoxG1mhJP9rfLx6yFlrjiJC7Jy0JcxDGgLmi9CcoZGZ?=
 =?Windows-1252?Q?fVKmkDxWXzOmDZWBJUI2blkYcx465m7fe/EhsB4uCx9iMK3zddlvxEDi?=
 =?Windows-1252?Q?nH7TCLjaKd1GHqlKtHMy9MQWe1nRmfmFVX+Q2dUyK3seX5M5UgT0lOwI?=
 =?Windows-1252?Q?B0xG6tL6nibFP0TzHtJa7bXYRiGyGowPuYIaie4tiHJgGBuOs6q5lhhN?=
 =?Windows-1252?Q?QgmP71SkPp9+Jfu0qMVsBe2A381bWAQbZmPFhZoC3b6fs1pREDA8KjxE?=
 =?Windows-1252?Q?7evJlVK/CJtJ7usmOXlEIN34kB8pf9g9Gvl6FaqF9dIhVd33N0Vx/FGv?=
 =?Windows-1252?Q?ICG1rL46xP4pJTQnonab1+PXQT0vAEzqFrvGopdMdn6/y4G5hgrQFZ6J?=
 =?Windows-1252?Q?uLAVfBZ/T+nsB9CiHNqV7monF45sAtAjIO+uAhF1gIG0V/SUvNTxdh/d?=
 =?Windows-1252?Q?+oJ8UQqza4Vqs2Qbm9zTfiWZQ3ptUfq2kCeH27b3xfP6rF8h+CIJIbfi?=
 =?Windows-1252?Q?DVqMOkPclwy71a8FXoEKWUqzqFo+UDhsnlVgFz1TirOEd41lJ/s0h576?=
 =?Windows-1252?Q?zQotnnPXvf5hMElGx3YZ3TR/axePXb2jZfXMGI0gR/Qrp/XHjkMG+JQ+?=
 =?Windows-1252?Q?VKbGwe04VVre2RalN8s0jcHnEBhX/yD6?=
MIME-Version: 1.0
X-OriginatorOrg: iisc.ac.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d3694f5-7db4-44b9-70c0-08da716e55e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 14:26:32.6835
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6f15cd97-f6a7-41e3-b2c5-ad4193976476
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EKAY46TqUQKT3vGh8q9TVaMvytI8ti0+vXeFIP2umAA/h/HboMMlBTNZ8gq+0C3KU1/Ln6rr5tQB6mAvVhb23A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1611
Message-ID-Hash: HUCECO4PI73YY62FNS2BQU7E42PDVFQX
X-Message-ID-Hash: HUCECO4PI73YY62FNS2BQU7E42PDVFQX
X-MailFrom: sauravroy@iisc.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API on windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NRJW75O5PMFQIIBP7L7KNWJFXAXSXFUO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Saurav Roy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saurav Roy <sauravroy@iisc.ac.in>
Content-Type: multipart/mixed; boundary="===============0017315984155697445=="

--===============0017315984155697445==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB43594CC488C6EBD2C92798A289999MAXPR01MB4359INDP_"

--_000_MAXPR01MB43594CC488C6EBD2C92798A289999MAXPR01MB4359INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear sir,
thank you for replying. But I think you are talking about UHD installation =
from source in LINUX. However, I am stuck at binary installation in Windows=
. Following this page https://files.ettus.com/manual/page_install.html , wh=
en we run the pre-built UHD  installer it gets installed easily, but from t=
here we don't know how to get the python API. There is no option for =93-DE=
NABLE_PYTHON_API=3DON=94 here for the binary installation of UHD. Could you=
 please help us here? Thank you.

With regards
Saurav Roy

________________________________
From: White, Joshua J <jjwhite@RiversideResearch.org>
Sent: Friday, July 29, 2022 7:13 PM
To: Saurav Roy <sauravroy@iisc.ac.in>; usrp-users@lists.ettus.com <usrp-use=
rs@lists.ettus.com>
Subject: RE: [USRP-users] Re: UHD Python API on windows

External Email


--_000_MAXPR01MB43594CC488C6EBD2C92798A289999MAXPR01MB4359INDP_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Dear sir,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
thank you for replying. But I think you are talking about UHD installation =
from source in&nbsp;<span style=3D"background-color:rgb(255, 255, 255);disp=
lay:inline !important">LINUX. However, I am stuck at binary installation in=
 Windows. Following this page&nbsp;<a href=3D"https://files.ettus.com/manua=
l/page_install.html" id=3D"LPNoLPOWALinkPreview">https://files.ettus.com/ma=
nual/page_install.html</a>&nbsp;,
 when we run the pre-built UHD&nbsp; installer it gets installed easily, bu=
t from there we don't know how to get the python API. There is no option fo=
r&nbsp;<span style=3D"color:rgb(32, 31, 30);font-family:Calibri, sans-serif=
;font-size:14.6667px;text-align:left;background-color:rgb(255, 255, 255);di=
splay:inline !important">=93-DENABLE_PYTHON_API=3DON=94
 here for the binary installation of UHD. Could you please help us here? Th=
ank you.</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"color:rgb(32, 31, 30);font-family:Calibri, sans-serif;fon=
t-size:14.6667px;text-align:left;background-color:rgb(255, 255, 255);displa=
y:inline !important"><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"color:rgb(32, 31, 30);font-family:Calibri, sans-serif;fon=
t-size:14.6667px;text-align:left;background-color:rgb(255, 255, 255);displa=
y:inline !important">With regards</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"color:rgb(32, 31, 30);font-family:Calibri, sans-serif;fon=
t-size:14.6667px;text-align:left;background-color:rgb(255, 255, 255);displa=
y:inline !important">Saurav Roy</span></span></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> White, Joshua J &lt;j=
jwhite@RiversideResearch.org&gt;<br>
<b>Sent:</b> Friday, July 29, 2022 7:13 PM<br>
<b>To:</b> Saurav Roy &lt;sauravroy@iisc.ac.in&gt;; usrp-users@lists.ettus.=
com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> RE: [USRP-users] Re: UHD Python API on windows</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">External Email<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_MAXPR01MB43594CC488C6EBD2C92798A289999MAXPR01MB4359INDP_--

--===============0017315984155697445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0017315984155697445==--
