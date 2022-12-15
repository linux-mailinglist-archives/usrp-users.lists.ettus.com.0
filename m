Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF02864D64B
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 06:59:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9706384365
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 00:59:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671083963; bh=2SydpEaQf9hvT5nyXYwZvqcSF+jtVStwpDJ19hMuz50=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=l1H4hLceMLYupNCXbPijOm78ubwE3ylZaIetGng8oFmsiASx+1Gq/5m1PfyIqPJnf
	 X9/fxQxTQ3K1SjU1nnLsKD+4t9DLinSX6OnF3/OUJdpsfTsKHKGPOShidvjYq3fOck
	 NPWP3EZp2Optp2o2YlfiIYMhXW+uqBDkK3DpQgF3AefNdvYH66enKVJlVnjkT9rI32
	 O/hVapMRaqrmr0TKCCSPcJrEeserle+RYBJyYY3/b/GxGi/fdq7Mqz5KuIRI/rf/lY
	 rzGdAyzq+xMPOEdDjczdDI6fsRqBZ1Axay2ZmXls0f0WZOJHEtvrq6y6zqDHooAs6d
	 jSt4mYAyAVKXg==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2065.outbound.protection.outlook.com [40.107.239.65])
	by mm2.emwd.com (Postfix) with ESMTPS id DDA0D383FBB
	for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 00:58:30 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScUL5BuADMmVRBiFUVBKCDx5Cndq+pYcDprZ5JAZyNIF5wax/mI7v85mDfxCFGup5AkfGNqLdWRLLf74k2JBm/1XebIzWHDFH18Zw4G3RFWQEfewNIJcsr3a3HLnRec4J2m/pL+0Aalzg60/mxL69KOURDLhs2YYlbEygJN4VrxnXAr4WSuSLd4DpnlVS7+CYuei/8NSNKySWetUE2ulx9HHGreuPZyFmDrYs7znT6vh+jsBFlOvLQ1nw0UNuiYI9jkoOmjAbvAHpZejd22GNXuCpvp/93rm1DykIptLvp9K/4sg5NrTEDik4+Vab/FdQAMYUciDxzqZHS2CzZYJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Onl7LtvX9KVlQGWOxFOJP3RANTGSVjwP7J60FfY4YYI=;
 b=BSdqGyOEJFxQpswD0AFJRxhhFiNia6oQ6HB6nj6A0EWQsCOijRqLvbcY1dGiWOvhN72WGss5W/ccCHbk527+UPzMG/6USAO0AKuutZtNSYNCcR0+IqiS66wOnLoOemE1ZaH3qOOg/OkJXfMX6sLEiUbF08/utcxvspvvC/5rJsSKeNKu5IcLHbZV5xiXu8tE0L+IEu1tKPkEFPJPvl3H3UWQ6GFOA9iAunOniQsiaekGT9ZFqU/b7loTmJ0ru3162HhZMn/k2oVT86aCpbkOxrREH0bk2Rl6XAFyDKIvWe6cHkBQJ0ypt3TGO1Ux+OQnWtZ+EAcxYc0DMXN7yjWGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
Received: from MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:60::23)
 by MA0PR01MB8665.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:b7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Thu, 15 Dec
 2022 05:58:26 +0000
Received: from MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6b42:5372:f363:c653]) by MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6b42:5372:f363:c653%4]) with mapi id 15.20.5924.012; Thu, 15 Dec 2022
 05:58:26 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Daughter board details required
Thread-Index: AQHZEEojyP5f3BgFs0KRP0Z/0TzSKw==
Date: Thu, 15 Dec 2022 05:58:26 +0000
Message-ID: 
 <MAXPR01MB3565817912C65BE1ECCCD83AD6E19@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MAXPR01MB3565:EE_|MA0PR01MB8665:EE_
x-ms-office365-filtering-correlation-id: f6db7b3f-e8f3-4af6-3001-08dade61620e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aIhkUr5MBat/Tf/LoP8rDX1Mz94z3ukc6iJBkEuyBrH8nZW+4gXf0GbXV/2+9cVTj/xZ5VNa9IX785acN5jsDB2IAXU+Bz7TmON09mP1zYrQzOCGmweNSz+YUgQrA+E4E16Ww2Nfu1qCeB5ssEGEUTHQWl01Gndjk9EwIRw6JMsL0MUxxoWx6XRmjQUGBilfsHnuiMb//mBqlgmGu+n/B/SI0mJ4JK87EvSarQtDjwMKRMOPH2QG5RHMhULu61uQUjkGO7U+YbsbY0iuNf8oQIq+YTlnGiN3KSpq+Q+NlN6MEhHuPUPe5RYty6ZhodSvGf+nvVNqy04oUF13QCtAI600ccM1GM6nz57kfvY39lrII6/zxtimIsSgU2ceQT/3NMOG6qVNKUYbmdU5PTCSim9EZSvIFzbq7TLBdLUb2XCvksC1s1Y/2hbxHYNA8zson/rG7YNaa0pllOXB/Y4446cmHLbpRmqeqQTogQon4vpLFCqs58+TTK0ajFS+/h5KZptMPIc9q6K0kV22t+5B9QTDn6Qdt/q0j3eUXWlBCERo6ob+ubb/ilbTf/8fDLcGZZ11gkhT5dJ4plCtBqYL2lYg0LLcrRkM432urECsgQrUHbWGr8kP1N8GZpqwTl0UEa2ANUSH9QulwjtNdqjkxmZ2XhGGKe3s0r2o1vd3fqipwI3DR4p1Pw5bNfSesE1SfK83cOVvBJDs5RUTUhR8Mw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(136003)(346002)(366004)(376002)(39850400004)(396003)(451199015)(38070700005)(19627405001)(478600001)(8936002)(52536014)(6506007)(7696005)(38100700002)(71200400001)(122000001)(4744005)(83380400001)(33656002)(26005)(41300700001)(5660300002)(186003)(9686003)(2906002)(55016003)(3480700007)(6916009)(316002)(64756008)(8676002)(86362001)(66476007)(66446008)(66556008)(91956017)(76116006)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ILvA+XdBcDp5LegjzF+Ci+eduK452WnOy97KG9HTsN2NvZKAQysC9pyExS?=
 =?iso-8859-1?Q?YZ3yGj22DIxj1PjLiEXE+XHNHbJLiAmA5T+Mi5qqFunt8FbrNaxQcr8rIl?=
 =?iso-8859-1?Q?8Bey7ASYxNvpVO8CWtK3Rp42yyR8YnZfHNvsmjk5x797k2hwuXJF2tmwbs?=
 =?iso-8859-1?Q?CIa4zN1BBFq2ykhR4hvoGKbsoh++PkEKBMf4dZ5vVGwmE1Q+5T2OWL/IVM?=
 =?iso-8859-1?Q?4++YXgFdboLEsCpfMmRHYKXXfifgNHAUOKEd+kGeLqU/v640DKWKbs9JRA?=
 =?iso-8859-1?Q?QOAjX+jA5V3+eXi/ek4lTyqjhOYrIPK4oTm4lpBl/M7ai/L64Qp6IHHlAY?=
 =?iso-8859-1?Q?ShYrpeJ44RRWjqc31o0PQy8nqz2N0bKXgl3JsZG6zskO8bUG0Dd3nuk8m9?=
 =?iso-8859-1?Q?ZByhl8rgrjqfniv6O6WFXp3otxBYTAR3hW+PMWYwVOUVMhhCNJGa0V4484?=
 =?iso-8859-1?Q?BsYXftM92Ymw1mrFGXLMElWsT7coQnVAhX1cTYQeXgS3ldqfEFUeTHrwPl?=
 =?iso-8859-1?Q?GrrR46YPtxKdxYZN/RylL+MDr641YlGjTdeTaQvSKs+cObtVS8TFXu/xv4?=
 =?iso-8859-1?Q?uZI19c6iAsnbyMp2EPa6Km7d7Zx06jThzCKNvNp0kjtWVJkbjkARv1G/MG?=
 =?iso-8859-1?Q?VDIe5lxKbcCxZNQr7yJLwEX2/fBH+E3HWfqezdFCl0cf5BpvKLiDu01874?=
 =?iso-8859-1?Q?MUizWN5mVqq6p8EBPDEV6i2dj78pMpV9EKtqx/Vkc/Bn37T11sl7OzkUXI?=
 =?iso-8859-1?Q?FuZ9Bm1Gil8P2DT8oyAgy10em95YPxidOtZQhjKMCpgq1zOW5QyjhAhrpM?=
 =?iso-8859-1?Q?cKow7lbOAO56j2CEnndxkegklNxRykDz1O3vHqUQe4AHU4JbBrypaxZyeg?=
 =?iso-8859-1?Q?R1romQBidyBej2MKcQiHt2bpEZRtzGiRtc965oY52QCDG/QJldi2u8WrQF?=
 =?iso-8859-1?Q?4nbw6dOvbq3HOpowZemCTiTVnQA620d2L2zPC/Wdst80qh2re+W6tL72aS?=
 =?iso-8859-1?Q?618Qi8UhlcaQ5YrN46sgwM4KYpMSMukivMNwh8xdCQD3LvekAwh1eG/fie?=
 =?iso-8859-1?Q?IseUqqi9d360f6fmZ1MhBFojIypVgsalkXV+4OTNdsky7wQ2GYwPwD/cm2?=
 =?iso-8859-1?Q?NhREmXVH+3qTokB+r1Gduztg13Pl9Mxt3C+BBT9165idG0Q3rP6G9VCKaV?=
 =?iso-8859-1?Q?I7C69hUCYMnz0IYFPH0KF+YWnUn/iEWjLPYnKnAWfEnnrHtiIulnw++hA1?=
 =?iso-8859-1?Q?9OyQPtltE9gnAXPTfTyTIH16hBWCs3dlpAhqVcEGhpuBMmhFday7TdWwM1?=
 =?iso-8859-1?Q?XWXMtIFahxCCyXPfRS9v86L/lQHQ3Mel3zlvv2KfGKl6codA7zuvIUa/N8?=
 =?iso-8859-1?Q?ghLYhnO07v/ec1wTyfZdm1zEYu90peQm4OqKuW/lojW/Z047tiTMJZtWfI?=
 =?iso-8859-1?Q?NKHKU2dTBNYrvwb6k2gt8mB+zanH+ht+fZDuThW0S+u/B92Ea1nuKYnmPg?=
 =?iso-8859-1?Q?b31/V4wYg7QHQhg4gJhS46PYouEX1UWkdTKKpbm6Bm4JySefCuS6n9fZM3?=
 =?iso-8859-1?Q?4mPThlIkCpWEFUBCOzAo5IXkN1YDkHb9cDaEfC1W3HXmxPx6j8By27PXKo?=
 =?iso-8859-1?Q?9xLwW2PtrKWweyG0oDP7CoCA/g22cSeFCO25yhqFADA8AHaDWBGZjwxQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f6db7b3f-e8f3-4af6-3001-08dade61620e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 05:58:26.4168
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d4AxsMfWrivH3xik3UlczHLQrga7GrXT4j9Cy9apme3rhM4OjGH+jGNc0c6PgFKYRzvbMlyVb5lRSZmVgbMZxxFdOo/5M0P5qraF2M3PNlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA0PR01MB8665
Message-ID-Hash: 4D7LVT2EEWDIUCLR3SQ2QXL6BU476UY5
X-Message-ID-Hash: 4D7LVT2EEWDIUCLR3SQ2QXL6BU476UY5
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Daughter board details required
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCE2NT4HMVGH4FX7GZUDB4ZPUA3K2C7B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9207063448513160219=="

--===============9207063448513160219==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB3565817912C65BE1ECCCD83AD6E19MAXPR01MB3565INDP_"

--_000_MAXPR01MB3565817912C65BE1ECCCD83AD6E19MAXPR01MB3565INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I want to know what are the daughter board supporting usrp B210.

Regards,
Sivaneshkumar K
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_MAXPR01MB3565817912C65BE1ECCCD83AD6E19MAXPR01MB3565INDP_
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
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Hi All,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">I want to know what are the daughter board supporti=
ng usrp B210.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Regards,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Sivaneshkumar K<br>
</span></div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_MAXPR01MB3565817912C65BE1ECCCD83AD6E19MAXPR01MB3565INDP_--

--===============9207063448513160219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9207063448513160219==--
