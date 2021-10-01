Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC4941E773
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 08:22:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E3F73845CA
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 02:22:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="cGg3Qk95";
	dkim-atps=neutral
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2131.outbound.protection.outlook.com [40.107.225.131])
	by mm2.emwd.com (Postfix) with ESMTPS id ABE71384155
	for <usrp-users@lists.ettus.com>; Fri,  1 Oct 2021 02:21:36 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PENDPLYbgykHNkyBu6ks6yHq0ke2w6B+Ym2O9rXrHUHG6jrV4s2kNj2UGICC17lNe0zCs+bY3K4pohCQc32RHOH8PYPhTvCIfZPOAH6lD9DxLFwZHDz7gYbneJdZX5mUZP9D43H0EL2t/712+5I9+GHwO29Bct0tJ536+uLBa1XNtiGIob6CjsWHo3zaGD6TMLE4IF0/QgHkkYQ/SepWE1JVF9CyNGIwKVMPfPA44L2kSq2khKtK9cuHv2VJTOFTHyWoPX5PEIt58wyrHLpu+s4ry/plb/EBPuX18TPO1FQk9JtwcNIKak36/Vbh4ga3J91a4Pv9hZyuYMBFmadoig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5w7o6PXO46EjFFDnqBpmnFuzTUVm9MLt8XWQi0GRcdk=;
 b=VebHKwvjoh7rZBEcXGzX6lD0EMUXxqNW5zwp3GzNA8On3MGeucmFAgQPS+tNQy7dSTGMB3Hk1YTxU42HlRnsY86uzMkxKjqIvEWNOA9iBII0Fs0N8huF3002lsD/KAwbw8vWQaVWicaqtesY4ryHt+0gASsA94vtI50XzsTFGpBLCzqwhLUnOlYSEGglKYfFVwmpm8oAOCNotrIDgLAF0Ha4MvAHqNN3UjRfu9UXMgoMsOehcVqnFmie0QUBtXvNc5p+6QCDkTbyTlyIDfONgsybu43fu8rx7I8FzRsa1ZEkFMDoKS24E/hrdFBjMatB8Cp/Anqs7bhH02HPV/qzYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5w7o6PXO46EjFFDnqBpmnFuzTUVm9MLt8XWQi0GRcdk=;
 b=cGg3Qk95AYvUG0KaXb1jQRz2c4edhY4+KRyI7DyNN2JcK66IKjlvxaqiyOxE7SqNq4XCJZqGv7SoYZXZjgt8KF8mS5dGU8YbgpAcyFCeb/xgqgBOKJ3SXsyyybWXzEc2VIbUGRNzhOSLp/plyfvJRp/byOVzMJjdYdLfRN5T6Iat5g7DPMbct1XV3R6W9PwnyrM1RQf8WZLZe4Tzk/XyX2UzkK4rrUej4wukPo47Oc+TKPNP1luiZq3bRG3JRffCoT+Ofp8sLge/ypDmOfBNpXfdCfAKCJZu/5i/CCk46kg90673GkRWvxNVnB9nfDqUBgRBjWWoGovsCmNpBG7k6A==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 OLAP279MB0055.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:2::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.17; Fri, 1 Oct 2021 06:21:34 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a%5]) with mapi id 15.20.4566.019; Fri, 1 Oct 2021
 06:21:34 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Adding Qt to image / OE
Thread-Index: Ade2i1p5euA0suJeQs2/dxtLCVrodw==
Date: Fri, 1 Oct 2021 06:21:34 +0000
Message-ID: 
 <OL1P279MB0083233F2227C769FFA67A56A0AB9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45bde9c0-4a2d-4ce8-9bdf-08d984a3b7ba
x-ms-traffictypediagnostic: OLAP279MB0055:
x-microsoft-antispam-prvs: 
 <OLAP279MB0055A1020459FF0F8804AA3DA0AB9@OLAP279MB0055.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wfVj2Ws1q3BUW1vEStpetLe9NtcJcRHrfV0I8uzkPjGmNje/2TXtZs8EnZ4QFtCLnY5uuMNMGj0ccc8iYlnZJ3lSXoT56pTIViT0dJTHMOnE7IHmri84RjMUp3Zt7cSMVVRquch36YGWdS9PnS6QQ8uWHclZlTeYFWFDU+M2eGq1m03wyNe5ZPVNBSOkXKx49bXLwgedQ79+aHWYNrfGHdPIz7sT7Y8USJ7JJDmij8W7BLZkbjo01E4RhWB4J+D/0yts7LfM0xLVc0hg8XHDCudYJl7l/XJF4tCU3Wimx2xFQ+ZzS9ReQ1i6eZrpJN+X5kzHOft4NU2yh6PQ1EDadD7Z3em+ZWwyJOeY3FBvmpnxz+/lwhttkr23+S5/Ln5ZP9HlK3CpiNETCeqvNR+zRwicL6gFQ+2yEZSirpzNG33AGj/AM5FptEv8P6WfJik6nHTGuS7lndE/KTgyzctiDN3klBor+NzPUN4bJMat5328BBGHxTqHt9fxg4EcAJr7Xz/7pA9Z/AmSdPT/xzI1gRYxBXPozdYc6BA5IfZsZPen+t8Ft+Fw0OpyHGniPfgzItwDvh7gxPb1Woc7mqRQBM8GKAUXwgJhgPhxEc6WeRbEqor2k67Gr7nQ61xrEljKOwi4+VSNYNUZlw9ku/lrHO46rgiIBHSj2JsjixV0uQuLDL3DLJO4CM7mWOyHiQxHXFxmFxw7oh2IYHk25onenw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(39840400004)(366004)(136003)(376002)(346002)(186003)(76116006)(2906002)(38070700005)(508600001)(66556008)(5660300002)(66476007)(33656002)(66946007)(6506007)(7696005)(86362001)(52536014)(26005)(66446008)(64756008)(122000001)(316002)(55016002)(6916009)(38100700002)(558084003)(8936002)(83380400001)(9686003)(71200400001)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?xy7cyuyvBOiVm7Sk0BR8bwg5KUjkL0EVIGN7hzzEkH2nYH8HEYBIe2vI2r?=
 =?iso-8859-1?Q?hhS0mQNKwb5RzH6TQ7j00W/9y3+pu8mS1BmFluSTOvcN4TBAFTVXPSS08r?=
 =?iso-8859-1?Q?T4YTOWYTu1kShxTUH3EHDX4UC+oV5zOmMQ1F2mEfk3giZytmPVwA7qUXVl?=
 =?iso-8859-1?Q?+SY6irRgLWll5Hq32oe5tD9HNTa1P3u+rLQJTX8+31SyrKPfAG5SUpExID?=
 =?iso-8859-1?Q?8iJjDzuqZ6qWtMLaMv3kWwTZ0roqAUiuhbJQEe65Dtb9RXHffVOpKznosD?=
 =?iso-8859-1?Q?PDdcsMvb8oO7uOXuI8raD/Jqcp6v0ZaTkn1mFJk+EYP/bm8YbJhKS86Uen?=
 =?iso-8859-1?Q?nYtBazRmxhhU6lhL6JKIEkayGzJYd7CuH7I/upDz3Yr4hv4uSDphv69W5Z?=
 =?iso-8859-1?Q?AjZKweKYP/P6WgXKfWAiEwNjQ04INn4lFgjtAQWDO7sKRG0HMwoonyNsDr?=
 =?iso-8859-1?Q?VSM7tb+bYePMQ/X8IdQsZxaUOI3/3mrMPdE6UkPHjxoEWZRWxHS2IFIF7n?=
 =?iso-8859-1?Q?A9sPM8UQJQsd2A1Vli37KNd/2SEHLzUA7YT8+feoTDxIRhBjlUuolR09c/?=
 =?iso-8859-1?Q?V8/usuvbVrD4WsvBg/SFNxXHqyocqGYweEGnQgwtPeNozI225461F5dwS3?=
 =?iso-8859-1?Q?HQQE269H/HUngdD3RGXQJwHLja14YDRgg6CFocKUH4yPE5nhqG4WIXUlPA?=
 =?iso-8859-1?Q?OKEHZ/C2e/aL03MOZBf+hDXF7tW30c3J37quhafmBEVPNOEijv7mIiVLUn?=
 =?iso-8859-1?Q?nIDavNvWGh+IXqCNbqoC8Y0fhWhjV//bJblYQ7QdsMhGpMPXK3RryDTBD4?=
 =?iso-8859-1?Q?QvDenChZr8F3T7Z1Ar6/XfSJx/XT0VgPCx17J7joRWSdrLD11fAWouDKyX?=
 =?iso-8859-1?Q?cRpVPqiFth9t+DWUUd4RiYV2Zz5bTU0pGzEfksb/ASZm2dZ6CvDXAf7wJ+?=
 =?iso-8859-1?Q?UQEh+WXE3hYhHnWtINd4R5nURX244lIBROoxDpBivqJqqpL9LPM+dd6BxL?=
 =?iso-8859-1?Q?nLnZlYL2wj7XJ+vTeohxiEEU+UG9PZCL1tbsqvXQWWeoPjLFNWlU5DQbAJ?=
 =?iso-8859-1?Q?fX1ujqyg095plPDzP0CcdcjVaGSUHVX9VVH2mrOADwM4hwBtFjxp+R3ucV?=
 =?iso-8859-1?Q?M4P/n+7WWfdW1Am580lqv5AFdJnaESFafGG+ZGtFpv5MFpslgeM8S8Frdw?=
 =?iso-8859-1?Q?wkQETzvxVKWkH3ZOPt5Bq8LsFTchVNONxERPxijgtItu0tzp7KkCuWWsJj?=
 =?iso-8859-1?Q?YIc4+LBNojyyUQl1Z1TNW/gYh1JECkpJOnJJLFDeXkLF9wRVimKZ1T/Buz?=
 =?iso-8859-1?Q?2Ptia2s0d4H8WSBd9UC3i+HCaLbDmbII3YepdHj54qCxy510HaUZEetuYv?=
 =?iso-8859-1?Q?pTJHsx32ul?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 45bde9c0-4a2d-4ce8-9bdf-08d984a3b7ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 06:21:34.6034
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WVGuFYEtN0rEGqybTuAGebdERGHUe2QYIG25pv6bt7J9T6LDpk776fnYI3zwxcF6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OLAP279MB0055
Message-ID-Hash: 7WCVOQQR4MYWEQSZ3XTEZJH4D2FJXDQH
X-Message-ID-Hash: 7WCVOQQR4MYWEQSZ3XTEZJH4D2FJXDQH
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding Qt to image / OE
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQFZ52RZ6AAGK7Z6CBYQW2DXIBAXBAAB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6710233632900127221=="

--===============6710233632900127221==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB0083233F2227C769FFA67A56A0AB9OL1P279MB0083NORP_"

--_000_OL1P279MB0083233F2227C769FFA67A56A0AB9OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I would like to add Qt 5 to the E31x SD card image, and also to the OE to b=
e able to cross compile. Recently started using UHD 4.1.0. Anyone who knows=
 the simplest way to do this? I do not need any graphic/X environment.

Jorn


--_000_OL1P279MB0083233F2227C769FFA67A56A0AB9OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
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
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I would like to add Qt 5 to the E31x SD card image, =
and also to the OE to be able to cross compile. Recently started using UHD =
4.1.0. Anyone who knows the simplest way to do this? I do not need any grap=
hic/X environment.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_OL1P279MB0083233F2227C769FFA67A56A0AB9OL1P279MB0083NORP_--

--===============6710233632900127221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6710233632900127221==--
