Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2F03CAE27
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 22:53:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CD67384466
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 16:53:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=canyonconsulting.onmicrosoft.com header.i=@canyonconsulting.onmicrosoft.com header.b="gOO5EY1I";
	dkim-atps=neutral
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2080.outbound.protection.outlook.com [40.107.223.80])
	by mm2.emwd.com (Postfix) with ESMTPS id 998C3383E9F
	for <USRP-users@lists.ettus.com>; Thu, 15 Jul 2021 16:52:47 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XXdvK2wvnaLn3J+KTa4HrcefSsHaBsUE43EKqJ1U2a6d9SaQIkH8MgGp/hQBnqGaaPVB5YLyBBHm5dA9oIcxEarPFyhnf48aqcgYdAczogreRU5EE9kUXL5YFU9L8NHa8PR84uLKzzRL6Xa9p6hKYJs4/X5MG+ahjftxBBAHfoYzJasASgu43lR0DJ4qGHe62MsvTLXG9p689txO8LXdduCkHF/j/gfZSA+O0H1qqcWCuLphw64zdDlJTp70KykSgt6q0hPRaUTNpO5vReCwWVPDUGUS9nKFFKSGinCRlpgdaOeu0uM3QobyD5vrCE+WGtr9nIQCWaWKnhL15VmGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gNgMoU0BYkF45CdcEQdldKTQHO/D0FxfFR7ZBkf5YwY=;
 b=FouXz4a3obcRo8dTOD8PaQSvfinGuUnnaPKeNC5bqYQYKtfi3BGFZIU7fPP55Ly9uRl3iQMPW8SnLSbq/kpMjmZrsyf6wfkZ9dbnmgoOzsaWa+5ov2KbLLJAG99JZ7R8Y0MH1mVoJ2o5U2ztkm7Uu0lGtc4el5BQHFRH3fGx+fDGElSiyGGCKJKCmfJDWeFSRAGwn5QvR4yvfw1xO+RFDAEVeOeApu3gh5wrp+3jitJItn5QD9deLTO0BtAa3py0/++mPG4gR6fmGlKJ28JOEQZ3Jx32esY0Peu4OSkaQTnDGZuac5WgBPUWoGIpmX7UYMsW3XgOYlFPmFE7+71pDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gNgMoU0BYkF45CdcEQdldKTQHO/D0FxfFR7ZBkf5YwY=;
 b=gOO5EY1Ikjq5YP6wSF30K9vaEcB668h4UhKJ/ybfRBE0QuIV3Sl5EnnMZ3p3SozXfzEBaCWT7aJ1zJzjXqqYnXo64+J3rkCSxNVLNcO9HVf67ffYaJF51SSCgJoEm9M4dF+Xu9vUFcJKoZa+x4nc2JgQ5iStN+HPn3BC5L2ECXI=
Received: from CO6PR19MB4801.namprd19.prod.outlook.com (2603:10b6:5:341::23)
 by MW3PR19MB4313.namprd19.prod.outlook.com (2603:10b6:303:4c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.24; Thu, 15 Jul
 2021 20:52:45 +0000
Received: from CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::e937:6f45:7891:cdd0]) by CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::e937:6f45:7891:cdd0%2]) with mapi id 15.20.4331.024; Thu, 15 Jul 2021
 20:52:45 +0000
From: Jerrid Plymale <jerrid.plymale@canyon-us.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Setting the TX SPP to reduce underruns
Thread-Index: Add5ua97KvJ4JTMhQ9K+niERImcGWg==
Date: Thu, 15 Jul 2021 20:52:45 +0000
Message-ID: 
 <CO6PR19MB48018F401C16D7665A626F37C6129@CO6PR19MB4801.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbda9ca7-72e3-401f-f01a-08d947d27f3e
x-ms-traffictypediagnostic: MW3PR19MB4313:
x-microsoft-antispam-prvs: 
 <MW3PR19MB4313F41BE844A1B17ACCEBFCC6129@MW3PR19MB4313.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9Esa4ZE8xj436kcTG+aO3fBqkHn6V/EmgC7wSlVeCynJKvGfZSBeYCZ09s/o7xNAlZJdrj5lOLRHF/mnyDn50UQt15BXvetHe/PWI6TJj9ZtdbUILsu/Le4lnSeRMY57iryy3f7TYCahvsUCN9oNA4viPi13c9UW86qc2Iw5V0lwmPNWqaBCNlFfUMWZm60uzfaMYqUWTKJqHSCEWmlpwZMJErJAPWeTplYtHeXmjP9NIVASfUfwL+67tWI4QrhN3qx9XgSiC//EJ25t+QkWbUKaMK/+RMh7VsXIp6RqLvFYEX8XJQuzjtyhGsDRiakkvXvJa06dHvKJ/zotGsjeNVlL5kTerVYmfvCmqRubQs0ki5WWRKGyM1Qc7WoUJRCNECgBVDpejF7Zfwu4JK5u3tDbTqywmlgK8n2iwHdlrLs+GmCtLKXITV+UgVpOGcuISltylYDqdDrYcvThVTSyvQLpMVYNs6sXLu1JFyMkcD/72r938CUOWXky41uRtkOumeNVn92y2ISGST/1lzLgGGGgIgh5uNtta/pYbcFx9cSE9FN10+IYU3eE5TzBFQlNKIsq/FYkU5mY14maZBZmvt3iFvp5xpepvJiZgZZi/At95r1t+C5e+pcHJQDZ/WQuMjwiL9nUxZ57vcO16vX9qRML8nvE4DaBufzy1llZ7mL0TyqsZ/m8zd+rCUC6vtPKlvAxR6H7HLsR4/mzILqxTA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB4801.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(39830400003)(136003)(346002)(366004)(76116006)(6506007)(66946007)(66476007)(66556008)(64756008)(66446008)(52536014)(122000001)(44832011)(38100700002)(2906002)(8936002)(9326002)(8676002)(6916009)(316002)(478600001)(86362001)(71200400001)(55016002)(26005)(4744005)(9686003)(7696005)(83380400001)(5660300002)(186003)(33656002)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?+s5D6/BFaDNXsHPMcylYgeROX+R7qFO3LNQmkb82cU9U9slbSKcRTgecoW3E?=
 =?us-ascii?Q?suK1PRBn2uksONSgYT+Cb6TcMNJKcRRtl3tNfwlVwKKE3bKPPXso9QhnWvRO?=
 =?us-ascii?Q?p3Qzd04a8qeAwwljyvYsPqIZvWUoDYzIDSRa70AyYDcn7gKOCZMJukid/5zU?=
 =?us-ascii?Q?h+3Bs/7n8aC1e50kmyoeO7JT5oTV4GOBSLfFcSv8G4DXpicUzmkGnTOUNS6f?=
 =?us-ascii?Q?F5+JRkGds3TFAM6nZcmXAlQ/M4ipW8qsRKzLK/fnnGfi0fkIN2gjF86Pt/J0?=
 =?us-ascii?Q?B+P/Z3Rz++8Fk4yecO3v0f2uGKwy5qRaMEqK/IbbRJKuIseP791vLgAkFcNU?=
 =?us-ascii?Q?pGwEdfoAhQX7XoIgLVBsyanuxrpGqSuBX95rWTNMEdGSB0t36zb7+kvX6VSQ?=
 =?us-ascii?Q?jRyr8hnwe6MXNSt5CZfZ64Ldh19ZbkK/u7WwtHaPDW74T7RBxPh7QPkQypzh?=
 =?us-ascii?Q?SXDPyGPxwmNjriIY0wOROBER6nR7+IProRGR+A/MjJFXoj2ty/eEYwzNpQ2V?=
 =?us-ascii?Q?glcoB+ubPltKd092TH73eVtpxZDINinW/l4VBxhWjj+CFOzbd+B5RVGcEUqk?=
 =?us-ascii?Q?34MPOE3/DNXE7/gXMx6+uVCNZiO+Pk4jXf2fDuqDr7loN1PDwOp1ekrv2oAJ?=
 =?us-ascii?Q?xBMfNfMztGSBTAR1HNBQ7FQNY/v34BSSAvOvfbOXCUp82A3L+n7+bDQgsYJc?=
 =?us-ascii?Q?Y/x8cxxzckPL4V54lArEOqqy3XwSl0Zg2ySyH9VRKn6m6fah+NwHW/+Vlh5S?=
 =?us-ascii?Q?/SZs/Goo3UAJsCzUfKfUCgJP1gYBfIzfpYEQlMs/LZblvxrjdskmd+61NS0A?=
 =?us-ascii?Q?iOgCoGZfLmGpjKB/z6VXKkYWJtXDC17t1lMt77Sfk9P0mjg2/F0/XXUyoHkU?=
 =?us-ascii?Q?f8pZc+y1WElY4BwK0eXaAGX6cggcN/HKrOYgAuDkwwDnQfqj8GntHk28iqPR?=
 =?us-ascii?Q?slFP7cxpNRAK0Qpqd21DTOWXtkf0N8/RPzbPHmffZnJr36c9kWKVT75GQS0U?=
 =?us-ascii?Q?ga5lw47f/gmyXsZbwfJUXLxkAES9FtasW1dX4Fxvc9nDzXC66PFrs0Gu1+Lx?=
 =?us-ascii?Q?cdOPmIdwT5RGfhOa0itZGSWwbx06a/L/WvSbTH/UbjWktFhr88SLKyhZvVPS?=
 =?us-ascii?Q?lNaDp1KMLZ9pAnzyMdsEva5J52TVMhIo5g3uVazu+dXLaBWH/gpRY2Yppif8?=
 =?us-ascii?Q?dDdbhaM8i80JfWbXm6g+YYHbeQNqPZfcIzhcqb6ka89wXoNuMOVw5oIonqCC?=
 =?us-ascii?Q?6Rw1YD7gSajuDOCBJGajogXQfNIUv64sZcia7ZVyY0+T9z/7D65uYDN7blzM?=
 =?us-ascii?Q?6maxVh5K+dj0NaNYSpLhWwHM?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB4801.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbda9ca7-72e3-401f-f01a-08d947d27f3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2021 20:52:45.1588
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5e24qKuPXwgeeQi1HFUi2hX+ZYA2KZ7QnWhoDgXSTwcoSLpo0Co16wuTGr7f/05BIIyKsmO0mjITSqOGPtTl2MG2JX2gidxQtK7fKz8iWRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR19MB4313
Message-ID-Hash: 2KXFJEQAVCC6PEJA6YCQZ6NNNCCEJMG6
X-Message-ID-Hash: 2KXFJEQAVCC6PEJA6YCQZ6NNNCCEJMG6
X-MailFrom: jerrid.plymale@canyon-us.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Setting the TX SPP to reduce underruns
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NHJFWD43UCG5LF66VTD5Z7FSSAUI3QB4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7373756753255404421=="

--===============7373756753255404421==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR19MB48018F401C16D7665A626F37C6129CO6PR19MB4801namp_"

--_000_CO6PR19MB48018F401C16D7665A626F37C6129CO6PR19MB4801namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

So I have been running some tests today using the benchmark_rate test to tr=
y and find the solution to the underruns I am getting when executing a GRC =
flowgraph. I am trying to get the flowgraph to run at a 25 MHz sampling rat=
e using a USRP X310 without any underruns. I found that by changing the spp=
 value using --tx_stream_args with the benchmark_rate tests, I was able to =
stop the underruns I was seeing when using a 25 MHz sampling rate with the =
default spp value.

Now my question is, how can I go about changing this value within my GRC fl=
owgraph? Is this a value I can set within the UHD USRP Sink block? How can =
I determine mathematically what the best spp value would be to maximize the=
 performance of the GRC flowgraph?

Any help or insight I can get for this problem would be greatly appreciated=
.

Best Regards,
Jerrid

--_000_CO6PR19MB48018F401C16D7665A626F37C6129CO6PR19MB4801namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I have been running some tests today using the be=
nchmark_rate test to try and find the solution to the underruns I am gettin=
g when executing a GRC flowgraph. I am trying to get the flowgraph to run a=
t a 25 MHz sampling rate using a USRP
 X310 without any underruns. I found that by changing the spp value using -=
-tx_stream_args with the benchmark_rate tests, I was able to stop the under=
runs I was seeing when using a 25 MHz sampling rate with the default spp va=
lue.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now my question is, how can I go about changing this=
 value within my GRC flowgraph? Is this a value I can set within the UHD US=
RP Sink block? How can I determine mathematically what the best spp value w=
ould be to maximize the performance
 of the GRC flowgraph? <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help or insight I can get for this problem would=
 be greatly appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR19MB48018F401C16D7665A626F37C6129CO6PR19MB4801namp_--

--===============7373756753255404421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7373756753255404421==--
