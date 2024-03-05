Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 383B1871F2A
	for <lists+usrp-users@lfdr.de>; Tue,  5 Mar 2024 13:28:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 242F7384D59
	for <lists+usrp-users@lfdr.de>; Tue,  5 Mar 2024 07:28:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709641737; bh=b6uAUYfsUqHmzhHSQF8IJG+R2CiQerd4ddBapwBE/qc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gk/xci5V9qWJQIBqcQm3mw6Pr6/WFWBVrYuy5TTz31RWqyKGLkLVCoqQCyq274HZx
	 Tdp1r3QAKDcacYilABxh8iKTTndSVxSt9QFLCgTRAjKvrD1DokEJUyWe7k57OMzbMm
	 kw6SjNKGf6MhcGKTUrz5FHxAHVwrKAKbbCLhWrgSDlEgwFnf7o6cG0blua4Bs75FH8
	 tk1FdoZxqAhD0LNGp+m3kHEMaOjEgByMM/rcWon8xz7s7T2pFYsX0mZuoDBVteVI2q
	 Abk0aU7Jem85FXALc5wgxdCkV9gpDijPs4JgMM9Rx2Mc07krRLEL45VrDTVJP+zEiU
	 i4FETbvQMgQqQ==
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2139.outbound.protection.outlook.com [40.107.247.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D003384C01
	for <usrp-users@lists.ettus.com>; Tue,  5 Mar 2024 07:28:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=supracon.onmicrosoft.com header.i=@supracon.onmicrosoft.com header.b="C3EqOS2Z";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESIBLD2Hqb3Of1p8PbwknMVkkwajnMTBEa2x5EI9AgiiD7qup1dovOa1OMKfhJoVjg/gko7PfUmbMQybWUpbYxf9eO7opCZa7R9OLIljw8PhucE/X9YecqOkfOK6M2CHC93ls3gSF+GlYmy8zruYvmW4B7h7rSMzZ+1wect/dsLcqSfgTtTBv+77q1iIrfD9ZUGESS7Azmom6CzwwH55TPgi03yAXJjaiaeJPQkyTxsU/iL6jqqN8mPbzS83lwEmJwJGvLTg1eYRNo3SLnI+1dJvyfYScCvnJ5v9m41XpsSEI7vjs3rOHVwk1D/lMxnGLhaKoN9KipoblFRTNBzwDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hsiz/4BEVB/K9WMV6X2N+4XEk84WwSwcM+isSe+oF5E=;
 b=CeL/KeGX24/5+qfVLcT0HbTIb67IOakiidOae/pQdFVWVCj6oITY3gjwcqihdWgZmcLl2hUwxC0W5O168TH6r2GsAh2BauzPOTGPo+WK8AgsSMoDxKHDMuu7yGVeKheiVgy7kOMfgIJ3QTFHm3p9TOVggyMMv1NThPqepQKuFBIx4+QBXbHT3O2n6Agn9gkLUVH9He4Fdmo6fiuxePBix2lr56uwKM+P0ZN3cuYKYB73tMZVYnmj4yk4w8T+F2OvWIOSYmsQBykdsCCx1K3comlG4DjMzQgFjYkFjWnwmQlc40UluANNtSBF9IYsHg2BeT+GIK9LsEDZgcDMUR4bYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=supracon.com; dmarc=pass action=none header.from=supracon.com;
 dkim=pass header.d=supracon.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=supracon.onmicrosoft.com; s=selector1-supracon-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hsiz/4BEVB/K9WMV6X2N+4XEk84WwSwcM+isSe+oF5E=;
 b=C3EqOS2Z8LM/muIVgxk7gDUuQ35ygcv+3KE0gH/1s7PP//fMh63N4JpfU/KFACymNlPs51M/M7KgwJIXNiXsM9Jt8Kwj3Mm6qNUgObX8MKdjK625qs/Wq3dyx29Tz0UN5QK/de0KMDyF7eOyY20HZ+vO7Xv6vgDRAVeV0RCzEfM=
Received: from DB6P190MB0486.EURP190.PROD.OUTLOOK.COM (2603:10a6:6:39::30) by
 AM7P190MB0792.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11a::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7339.39; Tue, 5 Mar 2024 12:28:03 +0000
Received: from DB6P190MB0486.EURP190.PROD.OUTLOOK.COM
 ([fe80::d00f:a0e4:86a5:89ab]) by DB6P190MB0486.EURP190.PROD.OUTLOOK.COM
 ([fe80::d00f:a0e4:86a5:89ab%6]) with mapi id 15.20.7339.035; Tue, 5 Mar 2024
 12:28:03 +0000
From: Erik Heinz <erik.heinz@supracon.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210: transmit without streaming?
Thread-Index: AQHabvaOeZdvTPxVIEuFjtrfa4h3EA==
Date: Tue, 5 Mar 2024 12:28:03 +0000
Message-ID: 
 <DB6P190MB0486B2BD86DFFDB6F19174A9F9222@DB6P190MB0486.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=supracon.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6P190MB0486:EE_|AM7P190MB0792:EE_
x-ms-office365-filtering-correlation-id: 5ec4e3cb-bcc7-4386-acd5-08dc3d0fb438
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ByxPrdtkAIxZD8Zq9ffJuRRCcAlIQjDVD5FCqZ+rdtpyxnJ2y3PKsaTlJRfy1dixGC5BZB9AqmdjPoxOePg4E2PEatid7m7arZs0kVeVSQwyr0DbHiWBMexM5W9zS5FbUu4GGN5ANeq0ehyGwJFuwZbY8uKuIZ7io4z2ExjxhN8NMsGRFvtXqNDGlnyQwTipdhDL/LXcfhCpGnB7fyEYZ5ayzfwE5aADAg2d5NH4TE1ohQu5Zi/8UmNX335Bar6Zg24kyD/DYdbOM5x3/6m6BRoDquzaewGIy9Up8bICJ47bfw/iITqt0uLJObq5+UUcX7SXrFNtgAqErEV89wr8PuT6PeGaomIqniwcGP5fOekAvoLV6wh1lzNUI5hZHT5CMMjBxA41AtJEtm30cwYcPLjxb77Eo0fmIjZozBjTSiO+lEX1KSbMa88nIbjAIIgjlvXUG8ipopcijuV2NUmSTNFvMxEwXKyKy0MK6ymzTlNO78FGHOswV+LO6ELuy52UjvfT//7X2KDix70ghnrbMKh+ZgTgidva3pEWPhZk7Se63Tn9lORN5v/FCBKEmNXXSHDL0tMKm4M6BUgG81WlkqU+ClgyfwY8BhOzeSzkhoqXBhJUbs6hafQSVek2jre6Dicj6pyK8pWxEmlXkn11BlXBRBWNlHs/lUB1ILsvZMQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6P190MB0486.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?koi8-r?Q?2SsrggMK3F2gLlI1gxH7E8VjxdfSVjESypS7qYdtvRgUuJeRACOD8kKGyfpE8W?=
 =?koi8-r?Q?JYp7NbtEFQvjghlTIc4XlZwnBDbg8/JiklN4hVbuQTT/0HcbnCk/+R67zSYh0W?=
 =?koi8-r?Q?KMraVfGHdHvlguiDRo2WEtDteLoFvf7J04k+4rZ0q9bbDkWjHeXI3KJgyRuvAf?=
 =?koi8-r?Q?CtK7NP4iSc/2oQfGWFg2OzMi3U/+OX8D2fbPO16DA/psWSPQ95WKkg1ErOI9C5?=
 =?koi8-r?Q?DyUZ4DOKw0SxLiKPkkIIZT10N3GuQTrd/w7fWNLDqME3898lak/MqXY8/DCJIc?=
 =?koi8-r?Q?N9MVrFKlCdf+a3W/0O5xCEd27Xhy19Jj6CnTCSOKecaSp9HrBUsqTLww3Mdm3E?=
 =?koi8-r?Q?cEzkeiWylLNxh4ZtKcwIfVXGhX+nbkNEHSh86zxhIakF8AqNs9icqIophrL97k?=
 =?koi8-r?Q?CjZCNjCAeOPoD6OqFkScxR5QBBqSvUpO04Z80IJR7D3qKwcM9Vg95ACdiYBXkI?=
 =?koi8-r?Q?HQt6zEo6ZpaY0+PQQT3pzLw2sEvc8FlK4GsSduRkC/CKiWYGU99NMkUVeiuG/p?=
 =?koi8-r?Q?aydQnNsf7ZtaqhV43g8efD2AQU3zifA/HjaP8xCpFPruTbc6e5CzOQrDy8hdH1?=
 =?koi8-r?Q?lmGE/ByANVU/+qbZs65dv6d7jeSZ5XjerBSG0rsYOBsAII6cG0AS6M5z02FiJo?=
 =?koi8-r?Q?kAJzN8N6SuAo1iA2/QWyW+MLAL7a/YPiQUFvLz8scA+sQRaoTgIPptTy7KaxWr?=
 =?koi8-r?Q?Bz2VhzSWH5LfSlsGy/6YlDTE3plplmb2fxTrGWoN8fZmSsPsrXM6WfyVFu3t2t?=
 =?koi8-r?Q?ZlaBgsajA9tqlrU4CNBxynKFFApoBCB/wB/XvtBftxC8YsmAh//BCJPlIaEsdR?=
 =?koi8-r?Q?hkxiIlP7New/4BVeT4z27TDWYQSgHoQUelfHem+4N/vEqr8OyxJLGH0BJIW9K+?=
 =?koi8-r?Q?JIgMH/NPA3nhK39I1puR0luzdK543Y1d25iTunp/H1Nsb4RjgJEQHULgWJh/h1?=
 =?koi8-r?Q?6OOKZNYDmXxALhLgybhIPRIGo2GnA+GFP0YumsSje0T6MCqBeSrKAPZgcNzvw+?=
 =?koi8-r?Q?4N7MDVB/h65gacH7J4JmobFpWPN971WlCT/HkywGJGv4rj6HhbyQzEIYlCqT6E?=
 =?koi8-r?Q?FJPmsEe9O39XaXifkL4P23usts4Sb6tYzxUnVJwF11/NwborZdQnU63m+0iITZ?=
 =?koi8-r?Q?MgTZq3If7qjiQ4bM/Dx5v30+H/2o5P5JMN+n8Vg5F4IMjGC2l8B7H93XuqGNQD?=
 =?koi8-r?Q?WaHtvFXizQ3+pkKYy+oHeXRejkFm7u4MMMQHMH1H4+LjVSQ/9SepP2VcksQLuM?=
 =?koi8-r?Q?x4xj9MNbgB+dyhzfNxJoEQx4IvUmxFsqXhMx4HxK3Isa4R8eymOTID1V2duvye?=
 =?koi8-r?Q?/h7wVdRzyNcFZKcwRUdpv6j0SrXpGMRrTyS684p7uUgKIA5tWp2x54FDNxllNO?=
 =?koi8-r?Q?fDtbq2v2EWnCC4qQyd2bXWrt786qJHag+9YUZWbbNOh/Z8t2227HHLGsweti+M?=
 =?koi8-r?Q?h8wXh0FLGfrRI+GEHq8SHjlF7DMq9fokEqBTBmkJeJLdsupbNDbEz7sK9rOpbq?=
 =?koi8-r?Q?5CQLWFalVVKOuPje3jyZUZPvo2+D+5RVIujDUx9gxxtNiMIkaK?=
MIME-Version: 1.0
X-OriginatorOrg: supracon.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6P190MB0486.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec4e3cb-bcc7-4386-acd5-08dc3d0fb438
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2024 12:28:03.6823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d34778e3-a142-46e2-b23a-cfcec2282c80
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mS4IiCtEd1F0+Z4qHFiuO7tO9DZONdp35jKah6vg3sXMpWxb7HPphb9AogrMJnDT9G40XrXXYnCUGjUIW05SCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0792
Message-ID-Hash: C6S6L7I2FOSUE2XSIYZO3DWVB4LBOI2P
X-Message-ID-Hash: C6S6L7I2FOSUE2XSIYZO3DWVB4LBOI2P
X-MailFrom: erik.heinz@supracon.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210: transmit without streaming?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KR4CWBB55QS2GDD6SJI6ERPUZ72TINTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3565682132513982745=="

--===============3565682132513982745==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6P190MB0486B2BD86DFFDB6F19174A9F9222DB6P190MB0486EURP_"

--_000_DB6P190MB0486B2BD86DFFDB6F19174A9F9222DB6P190MB0486EURP_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to know if it is possible to trick a B210 into sending a conti=
nuous RF signal without streaming, by providing a DC from the DACs.
Since sending a constant stream does work (e.g. with tx_waveforms), this sh=
ould in principle be possible. The question is, if the software does suppor=
t it.
Does ist? And how? Thank you.

Best regards,
Erik

--
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80
Supracon AG
Dr. Erik Heinz
An der Lehmgrube 11
07751 Jena
Tel.: +49 3641 2328-165
Fax: +49 3641 2328-109
Internet: http://www.supracon.com/
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80
Kaufm. Vorstand:       Matthias Meyer
Vorsitz Aufsichtsrat:  Prof. Dr. Michael Siegel


--_000_DB6P190MB0486B2BD86DFFDB6F19174A9F9222DB6P190MB0486EURP_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 11pt; color: rgb(0, 0, 0);">
I would like to know if it is possible to trick a B210 into sending a conti=
nuous RF signal without streaming, by providing a DC from the DACs.</div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Since sending a const=
ant stream does work (e.g. with tx_waveforms), this should in principle be =
possible. The question is, if the software
 does support it.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Does ist? And how? Th=
ank you.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Best regards,</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Erik</span></div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">--</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">Supracon AG</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">Dr. Erik Heinz</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">An der Lehmgrube 11</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">07751 Jena</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">Tel.: +49 3641 2328-165</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);">Fax: +49 3641 2328-109</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 10pt; color: rgb(0, 0, 0);">Internet: http://www.supracon.com/</span></div=
>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 10pt; color: rgb(0, 0, 0);">=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=
</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 10pt; color: rgb(0, 0, 0);">Kaufm. Vorstand: &nbsp; &nbsp; &nbsp; Matthias=
 Meyer</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 10pt; color: rgb(0, 0, 0);">Vorsitz Aufsichtsrat: &nbsp;Prof. Dr. Michael =
Siegel</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; font-size:=
 11pt; color: rgb(0, 0, 0);"><br>
</span></div>
</div>
</body>
</html>

--_000_DB6P190MB0486B2BD86DFFDB6F19174A9F9222DB6P190MB0486EURP_--

--===============3565682132513982745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3565682132513982745==--
