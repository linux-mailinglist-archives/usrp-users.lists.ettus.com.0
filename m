Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9F8879AD2
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 18:50:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C9A33851D4
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 13:50:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710265851; bh=fPyHLrbgvRBIMdrU0Kcv9SKObS6E3bDw/g1LNGGJSC8=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dZXmMxXW/JGSFWRhMtEQS3QjNcoaumXCpC2P/0kKJzmhIrfuHawJoRJrAC9UvcAkI
	 lhTjW6VnqmMmtbh4JsBcdmTu6mGPGZ8CkxoFxtxG+JCxqzg/k3VzXrGfcet2sh8oTG
	 kOCDnqVpvQiHtVBF0yqCNnp0nncxqo8tfXHI8Wjy+ZkjHxwC+ShAae8fjjT3FIQfRC
	 w4HaDCaHrRCCMnWRzw3MB+6xDLyVU7nSv4qfc4ONEZiNYVtRnFgGuphSbbWOa5YWzV
	 oVWrEll4TdTVex3MzPk/hZBtwR2OUJvsuoIUahKdpztkcJ9SX2ojEzZsgOp0gekteE
	 PF2RGHQ6ntw6A==
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01olkn2085.outbound.protection.outlook.com [40.92.66.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 232183850BD
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 13:50:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="QumZFCG0";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TRk5hH5rBLuESBUc35pZBMAqGI0AFEyN9CVBVM1EEU4Npj72KvI+oj+9+t+0pGGZ17/biVq75RHoPJmTmx+YdK7OtI61fJI5UDUP5NmfXvxzm0rI2Si0OfE34CUiVNGv9WZEBIrSRJhJ++7eX8TzyHJUl545X7UJMaLpaYf9JPV8q2Y+K6VAtDIZ1BH1gVIju7C+uhgU3kVotN3Yp46VpwxuKrrmtuEuUlBQ8vDMQYmQ7ycuQdRQtYMsTx2Qe2Zj9uXsegfKLitqCzo/cbrpp4p9Iu4sjs0RNnDDWSm0zw3ci7EBcwpVV4gHxooYJ3FzTzGuPKoDIALtH+jbKTYjrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u3ZX587yxURSl30TwB4zqsr95fSusn5DDVO1E8t0FPI=;
 b=jJeJfY1EIAEf/XR2WGn386Qh05PyuswSPuiKYIxaq0iCxL71ZBi5ytb+cWoB1lDC7rXoW5r6ys/sTi0nfhw0OJ+UUYiZkoMtoVEJke4sGI7/l0cMD1bBrCHnaKNW4My7XnIdWB7r+djytjxoJaSlq7Z9vzzfepIP41k8G9PUZI9M5mZtTPJ+58YIRAoJ45ZKDEPUo/UPv11liGJ97HXf9UTLYLG616i/WCGafPAKxgYhHofbbusQzsSkGtfkffTUhf+8WkPTygQq5nT6Vy5jyjgX5z5upMsYxjkVYYjEqdASaL+19gYzi28nrS6kgAj2T45Q8DdxqM+l1DH1mOhKJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u3ZX587yxURSl30TwB4zqsr95fSusn5DDVO1E8t0FPI=;
 b=QumZFCG0xkZTffO6XxEXCZqSHx+rzPQJNWud9Fr6fcpZUcnS9qwKQt1QwJmB3HVIo3BRCZ8x6kQLarPqns7+Q24k7+MUwcv0qVpSDfRq111+eOr5OSZJWHAcxYZ2Le0DAc3ei9D1JlrtR7/UKOMERwt8g8a3Z1JvosJ5DTw3toUUaL4+glTcXdlareOwAdBXp/VLcWFfmi9YQnWdZ5Hyg5j6h2US2EhVJFOI/Bs1aKsbD9wP/9xs+jwE8u8zLW/ojZOqoKkH0+J5an3SpmyWu6tTdsvmKluA71TxJZmgOg/lVA4SqPkWhAKzCE081hn2f9G62dq/toIkvIhhih1rlA==
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:358::8)
 by DB3P192MB2082.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:43e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.36; Tue, 12 Mar
 2024 17:50:12 +0000
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b]) by PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b%4]) with mapi id 15.20.7362.035; Tue, 12 Mar 2024
 17:50:11 +0000
From: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Synchronisation of USRP Sink & Source in GNU Radio Companion
Thread-Index: Adp0pZHv9Z9dKSnfRgytBlNPRBYeSA==
Date: Tue, 12 Mar 2024 17:50:11 +0000
Message-ID: 
 <PAWP192MB2150096DCDE73AEC8A990B66992B2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
Accept-Language: nl-BE, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [fjcKtNO06aadLGafZLzmLX5jGuVYMkpzfacPhfKMDmXix+f1x+/LNrUHe87z4Rt2]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWP192MB2150:EE_|DB3P192MB2082:EE_
x-ms-office365-filtering-correlation-id: debefba6-ccd9-4abe-2033-08dc42bcdd9d
x-ms-exchange-slblob-mailprops: 
 AZnQBsB9Xmq7W9edkj+H8N/3Am4dPGAP3sx7FkIHLXs9SA4Yob+RCylvlmiIdd7coD7iVigMlbizqIkYzpL6Z9Eu+joNA0fkTgHFWcOiaeF/StuA3bGFXuhBD34F5B+7Bjpp+j7+fSUKPHyPQ4PgDqKZRZtIzzLUx5lXpLN2TPZe7BrqMmigoCXdbn/+pLY8gk7swfOaNDIZ9hd3jEIYB+pSLKMYHZRcyeskErdPMJqWSKIl0rsiNOv1TR5v6JSFr0xWr0FX4g63/tzpJLJVrDr1VV3hm6nZwtHp/i0i65HDpWEx77LY90oWixdqekxRZJNx2tYNRIfiVV62oI4Wj5Xqdr0JK/tXrbSWam8/TvAFQ3XLS8GVc9gzMFt4al5K6jzzR1PFl/qy17rHrewvvgp1zC0e8bFpbzcQk1AUt2k/ViGp8vqLk1N4vbwluG1u5T8L1i/USbhSfcB56zB8g2wXKhtARfi8hjIbAEJNn2/LCgnGazjBggukNkBE7YKkelKwGdVXe4Ecd8SGfeEpxS5uV6vMBI1uIKl+ILr1Pa0pBms/jF7tV6E5wHGAcJfLrZp10um7cKPre/SkoqRxEXM4celX5ZuZeAC8moDLKaRKR7X8iaE/s0GjK9YHS9uYQl4hkvmZhEju9iWm2JM/+y2eS/jINNVwHpQK9MQs70bh3PxKdK68bDOU9cYhvazkmST2Ee8JPo0EEh8hTlb7TbRC2mwnRywsYQFjoG04tk2JWuXQyiqcOC8tMSQj7sRD9hQtahn1dPo=
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 R+MTRhw6DkPnkEuxvKcjbgWVbVmsNt4qb2dNrMQvEv/PA/ClzaKgEG0cnknGWzacNJwLz+7vcLOY24wDLE+ZpFLIbCTRkcH8/6DZxVG4/NSVoXD3NxLSyUrCecJfQvq0Pe71eA9jCLoA+MLkjrLdNWK//2VcWme61WvRmZgUMa3EgA0Pl+JKkJFwnoe/IWZOtgR2Za01am/3mFsCiqp0iI15nts6/lQE9kA0JB8oqJ/8RqSaMDoCwj2pULZFz/R0jYN7yABHZrTdZ0znT/Z1VUANGlmQeNCf05Pdm5GGL9NdePj6UihkNa6WjaPe1jAim1FbW6SOp1wcU3KhrPwf45or2XHKlpkhAj5fr7mbX/8CyhNXcwcLzfvG+Oa8IuiNvzqdaGZ5c2G94jk6VNJQL2UVvf/cwh721sQhA9ZDfKy5gPn4yZqOeFYBn7forJtnkuyZLONeU0EgAn5CUysFUFtoqQgGFuewZD/Y+9V3LFATU8A22lEV8iQ3HGnz5VvUDvIzE2oUkq9mvwa4qQOS7bfobTpmecMPyye3JWoSFfYnmplUW2TyWDBAIefyQr88
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?K4pMRlb2Tgn+gHsFGvJsVk1RZ2sWkiXb6eDj7RvqkpWyn6kS/BmPs7OJWz8j?=
 =?us-ascii?Q?gXvvvRykOE61cU/JYoDWUB4fchxJyBCF7/mPrnKbE3puiowMvqa15awWgmkB?=
 =?us-ascii?Q?2589dBZztcxXwK7ou1YcvkonAPekTiJGW5cJlBe0IxYBt1xE/vVNE9Tag8Lm?=
 =?us-ascii?Q?2J3i+ldxkc07sEVBMPMp1yhrDE9SXP7z1pBkzTOwcokpIVdWPlSmE+VCFiH4?=
 =?us-ascii?Q?H+KklY5RljI8fgLrWCphx+zJNw3us/lOgXPQqcdrhzhMB04XyuxSBtwXtxFU?=
 =?us-ascii?Q?ZuIJIpKTlkQYQjxEiSSmhtiHdfF+WYhbPUUPDUVlr/ufue8HdupAScMktmMR?=
 =?us-ascii?Q?BwbCrXFbNwMiP5yJZZFTSDEvnkvHQ/V0lzgptJXjVbYNBuOzMZKfWv7k0aug?=
 =?us-ascii?Q?lT82YaQKl9TuvBfDFuSZfaAyjJTM5bRcYHOt4SsshGhMqRjoElwcVe4/h64i?=
 =?us-ascii?Q?qAx6AXl3/9fZNDdMvSSjpeJDEJvPFUC/zuw854PpktFrNZ56iwFo6shudGfZ?=
 =?us-ascii?Q?JLlb1Had5vNHHUCNwud6EJto8wkxW+vTOGeXsng8USXzcza1EE77madUsHWu?=
 =?us-ascii?Q?RM3IypweA4pHpWcCrqS5MTObw56rV2nIS2Kv6jaRr7tod2SG63q3xu9N4pfu?=
 =?us-ascii?Q?W61F4cHc1LBzWjO3QpNCmTKjUv44jHpnUDSAzMdViSVob+fKSuCYTCJFZ0LX?=
 =?us-ascii?Q?CRKn7ohPECgV2uqgvZ3ibz5aT81z7jV8/+5bL18ZAZeVTJ361ox/J7rDTvfS?=
 =?us-ascii?Q?N2jJfj1Dt29B1y+3yk2fx1XEYh2PUeTZuKcQ2ZsolZr+aeSJ7gNL1P+mV+yH?=
 =?us-ascii?Q?gTErhfceIBftcXopEnyLEsKFqns5eUWDs5T30KZZpKM+l7MuEbTH9cWQ4iQ8?=
 =?us-ascii?Q?I/Xu+kKrsj3qoUGJpWsXhAv8hDlGChRBLzmxfgXhHxUehZw/AHb1HvEcx4uk?=
 =?us-ascii?Q?ODQ/Xa4XkGRPC8a+aWvpOjh2FdkuENPRjN9cVs7Bj3x3Zlgqy/R6wywuCGXm?=
 =?us-ascii?Q?WAabIw7IwIbNm2Mgc+rRS1zegxtoJvEmaLLId3XH9iYEaAvPa0gaibzhA6j5?=
 =?us-ascii?Q?ipA5ZqeCUI+KIrUS/hK9xw9DbsyyV0oYATw6ngLlglZ1l4UxnUDVOmQwWhFs?=
 =?us-ascii?Q?UoClsb+kuGwSZGdn3c4N4ho2uxtVHUo+ywN0FzJi8TX/CYLq/AZ3/W9yzdZj?=
 =?us-ascii?Q?gPOWac3gU9PVPVUyq2M08IgKDTfixa46ZJ31sEopg+DGiDjugHTEAR4kiymi?=
 =?us-ascii?Q?heBpC/5S1I/Lr/z8OyLh8+4OZ5JaKlSj9/B0F/g2dS6gB6hF2cDK670NGK5c?=
 =?us-ascii?Q?799lt7SzNJYqXG7r57YgdYC/?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: debefba6-ccd9-4abe-2033-08dc42bcdd9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2024 17:50:11.8771
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3P192MB2082
Message-ID-Hash: J3RZ4BSVKVPXQQIKSTN46FD6AKIUIHKQ
X-Message-ID-Hash: J3RZ4BSVKVPXQQIKSTN46FD6AKIUIHKQ
X-MailFrom: tim.vancauwenbergh@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Synchronisation of USRP Sink & Source in GNU Radio Companion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TNAOEFPG27SAKLDMD4UGYJWUSCSXSAUQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6415769138557806563=="

--===============6415769138557806563==
Content-Language: nl-NL
Content-Type: multipart/alternative;
	boundary="_000_PAWP192MB2150096DCDE73AEC8A990B66992B2PAWP192MB2150EURP_"

--_000_PAWP192MB2150096DCDE73AEC8A990B66992B2PAWP192MB2150EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear

I am looking for a method to implement a synchronized TX (USRP Sink block) =
and RX (USRP Source block) stream in GNU Radio Companion.
My application requires correlation of the transmitted stream on the RX sid=
e and the determination of the time delay between the actual transmission a=
nd reception.
Is there a way to determine when a sample gets transmitted and received (us=
ing a timestamp)?
I have tried a loopback with TX to RX and a delay slider to determine the t=
ime it takes for a sample from leaving GNU Radio, trough the OS and the dri=
ver, trough the comms link to the SDR and back.
It is in the millisecond range. The application however requires microsecon=
d precision.

Currently I have a single TX and dual RX setup on a USRP X310, where 1 RX i=
s used as a TX loopback.
This works well, as both receivers are in sync. I did this by using a singl=
e USRP Source block where 2 channels are streamed.
However, it requires two different RX frequencies and thus a more complex a=
nd expensive hardware setup.

Target board is the USRP B210, which has 1 LO for 2 TX ports and 1 LO for 2=
 RX ports, loopback is therefore impossible. It would also save bandwidth i=
f only a single RX channel is required.

Looking forward to your suggestions.

Best regards

Tim Vancauwenbergh

--_000_PAWP192MB2150096DCDE73AEC8A990B66992B2PAWP192MB2150EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.E-mailStijl17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL-BE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am looking for a method to im=
plement a synchronized TX (USRP Sink block) and RX (USRP Source block) stre=
am in GNU Radio Companion.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My application requires correla=
tion of the transmitted stream on the RX side and the determination of the =
time delay between the actual transmission and reception.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to determine whe=
n a sample gets transmitted and received (using a timestamp)?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have tried a loopback with TX=
 to RX and a delay slider to determine the time it takes for a sample from =
leaving GNU Radio, trough the OS and the driver, trough the comms link to t=
he SDR and back.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It is in the millisecond range.=
 The application however requires microsecond precision.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Currently I have a single TX an=
d dual RX setup on a USRP X310, where 1 RX is used as a TX loopback.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This works well, as both receiv=
ers are in sync. I did this by using a single USRP Source block where 2 cha=
nnels are streamed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However, it requires two differ=
ent RX frequencies and thus a more complex and expensive hardware setup.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Target board is the USRP B210, =
which has 1 LO for 2 TX ports and 1 LO for 2 RX ports, loopback is therefor=
e impossible. It would also save bandwidth if only a single RX channel is r=
equired.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Looking forward to your suggest=
ions.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tim Vancauwenbergh<o:p></o:p></=
span></p>
</div>
</body>
</html>

--_000_PAWP192MB2150096DCDE73AEC8A990B66992B2PAWP192MB2150EURP_--

--===============6415769138557806563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6415769138557806563==--
