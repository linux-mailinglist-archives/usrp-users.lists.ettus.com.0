Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E004060B624
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 20:48:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BE3A383C57
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 14:48:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666637302; bh=adhtAPTOFfckyi4uBcPD1pDlVjqWC+GQoWq0JmCKaJg=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EvBVpxe4cI+c9cb9K3hgdPcr300a/KacJfmdmz0IB7hIYKrqalz9rRB2Eg3Lq8IYH
	 Jtn/UaMPm8Sj+RUPXzuaU2bDH2qFOHtw7vGhKK8GPeqRTc70VfVZ3xTejeDxW+aFmi
	 u11g4uEBxg6Rar+TqgLButZZ/hBLMvUlvUiblNF0MtQdhBe6pXQzbIZGCcr1oRInII
	 uZCYsMtjDM3NHJZ1jOV1O13gTBcSrrYInTdmRZTj4jDdsxHktjgAyaN/I+djw58kZH
	 yiuEE0Ul2mrE5DjvMhu8EQasJGuKIqsniYBbiThJEsRircxBoCxZIpRsW+wYUbptx4
	 lCeg439zuuxAQ==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BAD5380787
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 14:46:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cpp.edu header.i=@cpp.edu header.b="rZE5n5o3";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btaY6PxAet7VMgPisC/XNb401WHdjMheGVtEExgOHZbTo3O4qOXeLZyo1OaCKxoQDi2uC0g0fyI3ChW/IT0R2MCo+ZtbIhu4Ir42XoxCOBOjnhtevqdUByw3ABdybOFnrXhEczCynzgj2fNfQ0owi/dZX2FIclMh2FgNTR90tvLfnpHbNpbXqyAH/1Eue5mccohBD9eJNzOcM0Y/K2zsaSeTkkOgU3jd+XiW5qjT2yN1Zpn2v3meMTSh18/CcDGa0cr7MSvTVigv2AhWK0XM9ATKjKBOmC210CzM1lrDptuQ8P+VxRS4+IDQjXFJyO6DVoz6xIEiQXRu4FK25RN/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4KOGvGgUNsRfaxd1sOzey78bJ9WrjZ87msycXtuFhm0=;
 b=R5tJLxlWQU32vritnYiAX+mNyzgUdgRDyPoFM+Lh+zinPmDML1rXW92+jIdCsaMsEQu+ICtA7h50eyRotcIlSSBaAMpuSCpfiUKAB/5zOf2Wzyu77QzDe3QLNiGVg2tFs8IijpEF1KjHKldsSSAoPzw2fOvpIzB8eYj86QpDlB5wavSGgy/qsbR81n84fUCWfFWHwidYjHEkXEJrjACMNqECoqoOmoZvaqCaB3T9KnytADXNSpKYE6bmQCK4VX3M6CIAvh697dGodMitQr65jSC0phwlzForKT7bVYKCWTeun1/EwvHHSEjHtRTqEOSDsQATWsLzY0sdehG515sCRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cpp.edu; dmarc=pass action=none header.from=cpp.edu; dkim=pass
 header.d=cpp.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpp.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4KOGvGgUNsRfaxd1sOzey78bJ9WrjZ87msycXtuFhm0=;
 b=rZE5n5o3ZD+gYp6MZS+HjvXF0K9XPmp9dgv8XV0KXsrOyBpru9dNLPFTImc0LRxTtz1oDdUOlw6AfeHYLxrpQSehh7zB2xDx5r4Vo/wNrm901i8O1EI3YgfuVTSAOiOJn3/rGiW85xsxxOu4LEdqNy0PWm/oA9ZzWodEqo0Y+9M6DvQXuRZo4HYVGn+D7Ic0MhDuf1XoekjbHU9bWL+JKjo8ZdLaWwXvW3Wnu1fH1xIiABrruPsxh2n3+gifXVwrWnDHm/fBt0VkjmKYTE+JIC7eH2Kh2bjufg+WGR8S5hRD3/BIdwHgJlx15axeQiyXAv69wfaRfBNq3PANQ+njTQ==
Received: from BYAPR01MB4104.prod.exchangelabs.com (2603:10b6:a03:58::13) by
 DM8PR01MB6949.prod.exchangelabs.com (2603:10b6:8:16::15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.21; Mon, 24 Oct 2022 18:46:22 +0000
Received: from BYAPR01MB4104.prod.exchangelabs.com
 ([fe80::c1f5:99c3:d2cc:4a75]) by BYAPR01MB4104.prod.exchangelabs.com
 ([fe80::c1f5:99c3:d2cc:4a75%4]) with mapi id 15.20.5723.033; Mon, 24 Oct 2022
 18:46:22 +0000
From: "Juan L. Delgado" <juandelgado@cpp.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 Setup
Thread-Index: AQHY59fG2AXsKP6aIEa9bSdo9thr7g==
Date: Mon, 24 Oct 2022 18:46:22 +0000
Message-ID: 
 <BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cpp.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR01MB4104:EE_|DM8PR01MB6949:EE_
x-ms-office365-filtering-correlation-id: c86ac36b-fde2-4a34-be01-08dab5f00bd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 S68Ps6P15f3NDAZI1+9NiEYBfuXtahqg2pAsLBlTITXBW49avkMn15K6VSJkDJcgttpEjL8cK0rAyD4gnuVeh+V7eFzPni5yfHIBHG/hcWGOHug4KnjlcMUfSEnJuD0P1s29YAhsY9flXrFCDahpAYod7FeJinXhCYOPCzcXbHJk8LLbdVECo+hpu4g5EcZrFkBsdzPI82o5UqOav26yqdv9+jlnd/+NpBlascBt49M0b1YJP0etXRlkoNpifH6Fq5+zdrHNvgc0+vuG1IDmhreQlt/zRfDiKiiATucFu7vHjIi9d4JM0WQHh6NQ066dlffQ8LGMBOLyEKIpHqcdU8rC7cA2ARXcUa+irOw5C1OPl+yxwvAM+l8sihWX+C7N7X3thYc1b8LF0dWc8avDgtFYAuUi2P71ssRysXKa7wzwgH/GL8TEMtN4sqvvYRZmFiqKoVidZ/ASs6eWqE6BA4W8xgPdbaP7iyFmPtQwx6vxQ0N+CMy+p7lKrmh8U/LgTFRbJurKdtTrFC6HzhK4tE3+eQYp0Rcv3Uuknll/qwtcS8d8ziBl3mwlldY7Z145XMQz/Gje3e0MPwC073cwSYb8s8XFbomaoteGdR7DfI7c0dk43jSvrajKHZ4/4kb0bdB+xUUp7tTvcfLnW+fuMqMexAgSRr78sE3Xn7DuSeHznI4xJ6YJSWNqNbCgfwN4rJh71mOldtm8+n+3UH1ayniLlfTO1qm6to8yqBl1QvjmwdAgy2XzG/NhucHnXy59XL7mqzjETzcMombDHigCyg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR01MB4104.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(366004)(396003)(39850400004)(451199015)(64756008)(38070700005)(6506007)(55016003)(33656002)(41300700001)(86362001)(9686003)(7116003)(66446008)(8676002)(7696005)(91956017)(66946007)(4744005)(5660300002)(66476007)(66556008)(478600001)(71200400001)(8936002)(76116006)(6916009)(316002)(786003)(75432002)(52536014)(122000001)(38100700002)(186003)(2906002)(83380400001)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GzBCn1OOw5jW6C7qZuIpyeE37cdIxLFZEuso9qXDnSnUtBB4v6TS3gO10K?=
 =?iso-8859-1?Q?LcsLL8eON7R4b8qtohD90ljXnDxaYVSNfYgEUSx6thfeeQY++207LWs4Xn?=
 =?iso-8859-1?Q?Cuu6rCI82tmrSwAREud5CvNnIx1n68qsutDHYkpX18/IPm/XKTN7bQVqcm?=
 =?iso-8859-1?Q?md9A3p54rP2e/SXID2IMxovh1l+xO4o7zlYv0ZMLMn25sN2txOa0jof2c8?=
 =?iso-8859-1?Q?kRmEfsBjb3aEzOl08dsbMr6o0eQA50LbZlyEbalfWjs3YaRPr0xWGNZJlf?=
 =?iso-8859-1?Q?Kv36+GP6nUIfEfQK8dr7aVyX7jiXZZOX+7JPO8niOQOShH6i41DZ16fvTV?=
 =?iso-8859-1?Q?E+R+Ptg+6gU8KiJDG4e/suuW9E/zxW/VL9DM0ZrGLJdKo0h+asfKrqzZdC?=
 =?iso-8859-1?Q?TQS5OvI+sjZcJGTiyhAeobGGMApdM+BXjs8s2SfSiOD7VnpksCM6WXNHYR?=
 =?iso-8859-1?Q?SFHhnQkEAbV0kGvPBGfQ1jOVdT3c+SGdboLF/HTV4fqa5mC1U29GkJJ3Q3?=
 =?iso-8859-1?Q?JzOrUHu7D1prBj4SFlf4oFM7iFFZF21PWFYOIOe1EUQT3qms78RoWyLEyz?=
 =?iso-8859-1?Q?5OGEce2eUqF63RqYBrgFjpJ3To0QGWrfFuJWRwcnlyv2Y+pt/k+jLq9IyD?=
 =?iso-8859-1?Q?CsgLDZt5f6FKzjmLAEIuovNb84vrJHVeIOwmzwNcHRZnIFNJvJFYLT3aQZ?=
 =?iso-8859-1?Q?XFQRN8kZ0yMWMZQqm/GEQGvsEjcN57LPCClQ67vHh8zPyvdYh38/SR2eY+?=
 =?iso-8859-1?Q?wYUKEI2OiL2Tp1eiiyHLQ8ZqHAKM2+9ptDMqCz4fVR22NF5dHIBZQZrrsv?=
 =?iso-8859-1?Q?1OZk87dE1Wrdvy3sTnNYXHMwmOym5TQxlPclby7q66oe6CtwwKXHinRBje?=
 =?iso-8859-1?Q?SkB9zVMnQkgSDsuvRC6Sz+0s8h9P6G7z+IrNpx7Mp+81rial44GB4z/PnB?=
 =?iso-8859-1?Q?ktS9WIkkuagarwIQxUjfIJ+HtKfN8Z+y7w4JT33AwwKHhLVTHHL0G0hQBa?=
 =?iso-8859-1?Q?nMTn8149+95lOXZkIZ3hm/S3RYxAeIFQztVPYsW35jyeeIKj+zu1qQk51n?=
 =?iso-8859-1?Q?4BUQpmuMIGcSKQ/ylF9wNEnW6BLEth3U2YyUrwcbepM/ge24rNVw4Q2CKr?=
 =?iso-8859-1?Q?sgu6Qb0lbo8SUXgYU/DhvO1GM4qp+WetX+ytKywzRUdVM6SubfRghqDu38?=
 =?iso-8859-1?Q?xtto/60bzEWifFOJNCi2Tc6Vp+BslC6rD+wlk0/558IDOIk3aF1lnDwFkI?=
 =?iso-8859-1?Q?cW30wLNubmOtYaC+InsC90ZFcGoArDS/FSKHxSlezzSgcHmnFVTj5Ect9S?=
 =?iso-8859-1?Q?0SkAvP7auaxp/eQ2qZVIPS6guYaJL4INM/lFjeKZylJ9W53rGF5RCee7dl?=
 =?iso-8859-1?Q?vv0N+juM1mRWeBN//KHrA2jCafvewVd5Zyy3qjM9nsdEUOEX97JNA3CaE3?=
 =?iso-8859-1?Q?gp2ywg93xHIAQTWUmY+WmRLcEcNS5WZd4smfNo1kQviPcl41WoOWH0Y4uj?=
 =?iso-8859-1?Q?Ke/ucXPtLZrKzdDcNCU+LPBqJvYi/IQHTBnnkkUXgqXESbzWBe3lzkKBX5?=
 =?iso-8859-1?Q?KKefH+DhRRXb3/AZKR9CoaIJnQflFM7jdWeNzgglI6Qg6t6GrQkDkXgf73?=
 =?iso-8859-1?Q?Zbed9IjyJab3PatGbtVm+/9XEn3q+MC7Jp+jJgOh6ye5wrOKdduIEqQeNr?=
 =?iso-8859-1?Q?ukeOXptgbY+YTE/XqV8=3D?=
MIME-Version: 1.0
X-OriginatorOrg: cpp.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR01MB4104.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c86ac36b-fde2-4a34-be01-08dab5f00bd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 18:46:22.1042
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 164ba61e-39ec-4f5d-89ff-aa1f00a521b4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eArjkLenIHXTHqKWbhFR7UNIrSq2p3S8VGjORtnvlilTSjxbvT46dMS3YGauTGmm1wMDCxDtjICBHEmZ/FhcwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR01MB6949
Message-ID-Hash: LYEAHRDGM6BJJ4FZ2SGT6OE3I4KLUBPO
X-Message-ID-Hash: LYEAHRDGM6BJJ4FZ2SGT6OE3I4KLUBPO
X-MailFrom: juandelgado@cpp.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HBXECCHVTDKAJRSIBWJ5HTJ53W432MQF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6831343668341414885=="

--===============6831343668341414885==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9BYAPR01MB4104prod_"

--_000_BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9BYAPR01MB4104prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Can I use the USRP X410 in a windows environment with Labview or GNU Radio =
through windows? Or would it be a simpler install to use Linux in a virtual=
 environment?

I attempted to use the executable download for Windows for UHD 4.3 but i be=
lieve my USRP needs to be updated to 4.3 as well ( I believe it has 4.1.05 =
installed but im not 100% sure).  The instructions in the manual to update =
the USRP software is in Linux only.

My worries are that if I am able to download 4.1 by source onto my computer=
, or if I am able to upgrade the USRP to 4.3, I still will not be able to u=
se it in windows.

FYI I need to use the USRP to examine and transmit frequencies in the 2.4 g=
Hz frequency for a school project.

Thank You

--_000_BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9BYAPR01MB4104prod_
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
Can I use the USRP X410 in a windows environment with Labview or GNU Radio =
through windows? Or would it be a simpler install to use Linux in a virtual=
 environment?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I attempted to use the executable download for Windows for UHD 4.3 but i be=
lieve my USRP needs to be updated to 4.3 as well ( I believe it has 4.1.05 =
installed but im not 100% sure).&nbsp; The instructions in the manual to up=
date the USRP software is in Linux only.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
My worries are that if I am able to download 4.1 by source onto my computer=
, or if I am able to upgrade the USRP to 4.3, I still will not be able to u=
se it in windows.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
FYI I need to use the USRP to examine and transmit frequencies in the 2.4 g=
Hz frequency for a school project.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thank You</div>
</body>
</html>

--_000_BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9BYAPR01MB4104prod_--

--===============6831343668341414885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6831343668341414885==--
