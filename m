Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C18BD33D279
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 12:10:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CE2F383406
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 07:10:32 -0400 (EDT)
Received: from IND01-BO1-obe.outbound.protection.outlook.com (mail-eopbgr1390139.outbound.protection.outlook.com [40.107.139.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 78606383307
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 07:10:23 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VxUOIT0KXA2s7b4ZId8s4HPgtfMGh8ECfBFHrP5FU7N7J9fbtQWURy2F1uNsksR3zt4OYVRvHpoKwp+b9sx3bmI4/1dFNi561LNeMNFyG+FVNlqzbgvuBVcO2WFLy3PyzcKrI9K2tI4itAdQdUDrQ7x7VdHZ6aIm88cGERE1V2sSQ2FRvUU867Sg7/O9OBOK0kH8v8DlSA5zQLjGKMhcm1VdWj9mm1mRzPSWUowT6dkCCH5q3oyjEd0WIYLolLDIvVUyChYYdUSmbkAHwMD1tusY8VPmcUp2sE8VBrbPR/kkARNuPFQzjupJTekzOqR/4d9vEYXDiqcAuI26n+UHPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeLHI3tUHWsXRyO6xfjGY9sE8Wgwwwu5rHuUxcVx8cU=;
 b=CbaVgm+FSF+KBMXUhRegk8WqS9UDxzb7OV42slEjvudu1l1qJZPtQzkwrizcMslfAOP0o572nZyzIelUtzUFTRJz/f0In5KMXWyn6n+k1hmgS+mh3+zvPT+M+IK38OZX0ffTpuMj2OtaMyVJgW98J7BqkndKMm2RQFnhtpsF8Je1LrZc8MD+nJcKHbr6MkcRewvUsv4hHAh9CPW4pxOKuwUEsx7aEcDZrgow9VLj8GAcD9cdVh/SK2+rWwxQk/pz3ZWoPJPH270UxVCctzF93gkXzLdbS4Z+p/WUtnxLtMmkqscQwlupKINXud9HuBEpwQPYNrkFoqZbpNvLAwluSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeLHI3tUHWsXRyO6xfjGY9sE8Wgwwwu5rHuUxcVx8cU=;
 b=MC06/V95wkBJKPyf+hLT9ttyMWkSk47leVVNC+wykB06rKK7K2UPf+k1eRb+jxHk0w98tpueXTjn9y/fbXyCqUyN+ct2c+0avp81wuGw4DDyI27ygwwZ9ybNIujSjmkUKgFsD2VULe9wt3Zz5MGA6Fj7o1GzAHi06uzfmsQG80s=
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:3b::16)
 by BM1PR01MB4529.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b01:8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Tue, 16 Mar
 2021 11:10:03 +0000
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7]) by BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7%7]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 11:10:03 +0000
From: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to create stream data from USRP (via PCI) using rfnoc block
 in c++
Thread-Index: AQHXGlPC03JWnEtOs0qc9dXB3Oe5tw==
Date: Tue, 16 Mar 2021 11:10:03 +0000
Message-ID: 
 <BMXPR01MB27601B8EBE3F518F4937565D8B6B9@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ad87d71-9ac5-4866-58a1-08d8e86c0c3b
x-ms-traffictypediagnostic: BM1PR01MB4529:
x-microsoft-antispam-prvs: 
 <BM1PR01MB452950F0B728A0B74626DB7B8B6B9@BM1PR01MB4529.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wtN6DWTcQ0eNrTBatqvhQJXiogiKhnar2yPFgbeC1et1mUq+fPfQJIauwLWI+z5phL35O0p9Nk18aE8aQb722Y57IX9q3TDIG9MzLdvfjH66LmcA4bCgQtQe7bNangUZpx4udeZZBQqbkXty3E6Hh8U6opKZvc6rlbz7H5FjhGLIm6xwgjk6kBrCt00vBvnAg3mg66iJSbFMPtHOgaDddc6tp83U9SLereI6bSzZsTlfjPsTWTkmHfxWTLsxysHOzRfec/dOvmz/YW1tW/Jq/htuQDg+KcmZ0lI+ZGMR7Rj6pe3g1/aL2dpo+NFuxr5VcnFSVy07ESE/d+uxnQrkG9inz431BA3/2KyQezmMW8CRHhnptQEe7dWzk67Frav//ZqkufoxIia4e7sYXivi7Mv7+K6Eu5KOuSvGeQY6kzag6qNNah0/kePTBfOd4MyZHNTIrxgco3K1ZmHBV9AfUUf3Ttuviqb9DWkP+zIgY1si1uCGfi6+9x7CKRFKlm+2NRGha9gstjdTIC2BcIOfmV6JWMNhYYBKZSUtmBK/ZZxXqs4iIuZPXnXIAK3dQgumHR0Cvvdw3P2/yDVCgwJ+eeAANiupwif9HbdZ+8tbYjo4PYj1oqV77pcugUrmT6V3
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(376002)(366004)(39840400004)(346002)(396003)(26005)(478600001)(71200400001)(33656002)(9686003)(55016002)(83380400001)(166002)(86362001)(186003)(19627405001)(52536014)(6506007)(7696005)(6916009)(76116006)(66556008)(66446008)(316002)(64756008)(91956017)(66476007)(8936002)(66574015)(5660300002)(66946007)(8676002)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?Eihsd3srxHM+ftf7ohEeVMU5ybNysdY9mpT5YpQcbBDrIQaqdmvDP3cTWg?=
 =?iso-8859-1?Q?aEI7AhKU0KqCO9/WAKtz+m3d1TOnhTN/UMo48oZt4k2uztfMxGVfkqzpfm?=
 =?iso-8859-1?Q?ivFkMTLWenJW0AlB/JlxTURyPkJ3GhL8u7lSBzPux4paXkxUvFTwmpfwOn?=
 =?iso-8859-1?Q?Ds4TE3FXWFjxfLC87dGqaZaUI0sj/N9qmlq+whnctGq03/jC471yYLVXmO?=
 =?iso-8859-1?Q?X2feDKHREfQpBTHFGcTipFRhshULCkCEbCsrV4JhfEVwiis//zpL7D2Cfa?=
 =?iso-8859-1?Q?DZ/kOruR75zrucYb7ecaOCGFP+dz9M7j22Jv9KT+4AZKJfFV4qTYnfqNBH?=
 =?iso-8859-1?Q?djVpkDVAtD8AqRUzeH3mrGS2KFQAWmvMJakaLwKhai6b/j8a5zR1vR4vGv?=
 =?iso-8859-1?Q?F5IGF3Tn7334z2ar2sFSj6rF+AVdau9mxqulA9yzUhR1rAGqtZemd43+8S?=
 =?iso-8859-1?Q?pKLxrqk2nGsvl/K5u6IrfJXXHQKxMHrQ/Ajp9/gzzrASgoT/DyPpRAkokR?=
 =?iso-8859-1?Q?2VOlb0o8RTrARyWO/+Dqlu4OepzYxOcbPk1JPJ+slJieIJMslvWnLG4x0u?=
 =?iso-8859-1?Q?Ux0YqhcWyXEy3TApyj+GxOBa852CLMpaLN4FyEcfyf901fQBy2R5sYH+yP?=
 =?iso-8859-1?Q?eenKaX+z4EHT+AJ9gdULXvtr4m2UjLP0yf40n9aK2NjZ3pQ5xvUP/Eyf4q?=
 =?iso-8859-1?Q?rkPxHGKtuT+MXmRzGKRcWfjFmqJwr0qriLqz0CHwrG1W6Lh4IMuAhf40CW?=
 =?iso-8859-1?Q?lV/3lxaAr0Ass5UdjHsIvKbaZ1ZSovLAdX1jJ9arZClFTs52PVTjUoZl6w?=
 =?iso-8859-1?Q?i10D/ws8gwFLoH8U6L+mUCrCHrzOVvflKGPpLfwd5k8BjrJADguk+rXVDp?=
 =?iso-8859-1?Q?Ht0rRbwRsYFZS4pLpU+uJVz3pZiu4HG276z8ZTEDfBIJSfNHaw1ylKdJHr?=
 =?iso-8859-1?Q?8Jf5lbv1jJZ0Fz6TQkp+zT2+6IDDke1TCbQT9fwq3bj7pl4UnVJ0vGUmVv?=
 =?iso-8859-1?Q?esKhqzwS7y9U/CfVWB9qGPikf3iwxjWpA5Ci1mq/oLl4azUNcO841PHsO9?=
 =?iso-8859-1?Q?M9iaNPVxRG1GRNwla4OLsSR/AD5dtYCiYf/Wnl9SYDLl2bfm16S2ZLNQTS?=
 =?iso-8859-1?Q?QSAfIc7o49C16tI9LDr3wpIBCGsa1IXjRoDVIDVhfIwyekiQOz0PcZ+zn5?=
 =?iso-8859-1?Q?Kqs0310vRG79l9pbSRRZl3MO3Sp9Sv1DqiFIVc6nQTYSzPtXIujRY7FwYr?=
 =?iso-8859-1?Q?E0mHIHmkvcyIrUQfOiFf1u/cgivFOTbnjuN+9u8EYFBIXuphu9+wVJKMJU?=
 =?iso-8859-1?Q?HMRZe2Hd5YHYaPg8ld0j9eMsazCZRIJDlhzGtw5AIQDPHEc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ad87d71-9ac5-4866-58a1-08d8e86c0c3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 11:10:03.1203
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TkVJAwdFoPkII3UrgRm8makWp9fn+h2Q0wNTsCcISXvcI+A/22IZ8R7uxytcezswRN5eRW5iniOfp5cicAGiFiGPJpsOpoS+sp1R7+WirC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB4529
Message-ID-Hash: XCQ63IVIO3SGCKUUQY3YUVPWTKTGQ3GU
X-Message-ID-Hash: XCQ63IVIO3SGCKUUQY3YUVPWTKTGQ3GU
X-MailFrom: sourin.mondal@vehere.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to create stream data from USRP (via PCI) using rfnoc block in c++
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T4N7KYNX32GHE6QP3VYV3PTR4MJ2K435/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4500410689206231757=="

--===============4500410689206231757==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB27601B8EBE3F518F4937565D8B6B9BMXPR01MB2760INDP_"

--_000_BMXPR01MB27601B8EBE3F518F4937565D8B6B9BMXPR01MB2760INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to stream data from USRP where the data passed through RFNOC bl=
ock (in order to create a lowpass filter) before coming to host machine and=
 I am trying to implement it using C++ code. I know how to stream data norm=
ally. i.e. without rfnoc block in c++. Can anyone please help me how to imp=
lement or the syntax to stream data via RFNOC block to host machine.

Thanking you.

with regards,

Sourin Mondal

Associate Software Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +91 9330337699 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere=
.com<http://www.vehere.com/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.


--_000_BMXPR01MB27601B8EBE3F518F4937565D8B6B9BMXPR01MB2760INDP_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am trying to stream data from USRP where the data passed through RFNOC bl=
ock (in order to create a lowpass filter) before coming to host machine and=
 I am trying to implement it using C++ code. I know how to stream data norm=
ally. i.e. without rfnoc block in
 c++. Can anyone please help me how to implement or the syntax to stream da=
ta via RFNOC block to host machine.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanking you.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
with regards,<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D""><font face=3D"Tahoma, sans-serif" color=3D"#222222"><span s=
tyle=3D"font-size:12px"><b>Sourin Mondal</b></span></font><br>
<p style=3D"color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:=
11pt; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,2=
55,255)">
<span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif; co=
lor:rgb(34,34,34)">Associate Software Engineer</span><span style=3D"margin:=
0px; font-family:Tahoma,sans-serif; color:rgb(34,34,34)"><br>
</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-se=
rif; color:rgb(34,34,34)">Vehere | Proactive Communications Intelligence &a=
mp; Cyber Defence<br>
M: +91 9330337699 | T: +91&nbsp;33 40545454 | F: +91&nbsp;33 40545455 | W:&=
nbsp;</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sa=
ns-serif; color:rgb(31,73,125)"><a href=3D"http://www.vehere.com/" target=
=3D"_blank" rel=3D"noopener noreferrer" style=3D"margin:0px"><span style=3D=
"margin:0px; color:rgb(17,85,204)">www.vehere.com</span></a></span><span st=
yle=3D"margin:0px; font-size:9.5pt; font-family:Arial,sans-serif; color:rgb=
(34,34,34); background:white">&nbsp;&nbsp;</span><span style=3D"margin:0px;=
 color:rgb(31,73,125)">&nbsp;</span><span style=3D"margin:0px"></span></p>
<p style=3D"color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:=
11pt; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,2=
55,255)">
<i><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif;=
 color:rgb(34,34,34)">Vehere is the proud recipient of the Fastest Growing =
Technology Company Awards in India &amp; Asia since 2012!<br>
<br>
</span></i><span style=3D"margin:0px; font-size:7.5pt; font-family:Tahoma,s=
ans-serif; color:rgb(34,34,34)">The content of this e-mail is confidential =
and intended solely for the use of the addressee. The text of this email (i=
ncluding any attachments) may contain
 information, which is proprietary and/or confidential or privileged in nat=
ure belonging to Vehere Interactive Pvt Ltd and/or its associates/ group co=
mpanies/ subsidiaries. If you are not the addressee, or the person responsi=
ble for delivering it to the addressee,
 any disclosure, copying, distribution or any action taken or omitted to be=
 taken in reliance on it is prohibited and may be unlawful. If you have rec=
eived this e-mail in error, please notify the sender and remove this commun=
ication entirely from your system.
 The recipient acknowledges that no guarantee or any warranty is given as t=
o completeness and accuracy of the content of the email. The recipient furt=
her acknowledges that the views contained in the email message are those of=
 the sender and may not necessarily
 reflect those of Vehere Interactive Pvt Ltd. Before opening and accessing =
the attachment please check and scan for virus. WARNING: Computer viruses c=
an be transmitted via email. The recipient should check this email and any =
attachments for the presence of
 viruses. The company accepts no liability for any damage caused by any vir=
us transmitted by this email.&nbsp;</span></p>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BMXPR01MB27601B8EBE3F518F4937565D8B6B9BMXPR01MB2760INDP_--

--===============4500410689206231757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4500410689206231757==--
