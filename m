Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F00895BF5D2
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 07:12:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA419384025
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 01:12:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663737120; bh=N3p/POSwX/bfNLmhRt2ug8hnrSidq0LEkcLtp7NwKWI=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Bmh4ZKISfuJZwOSqD6Go4AXSnBtsIA4a7kHbiDdUXncHwfpdpVgKBm1ZaLaW63qce
	 jONpn0dxZzlfBhxjz6jGmYGrN4LQrYMGZCNHJ9mX9xAwpAONcvEwCseCS65AQbMlI+
	 IbqaPJ+mktKLwTCAz0jjkYxfyLjTGwe+GIWglVOTo0/LVO/QR3FmPwdLufSD8RnOFR
	 NdMfmzkoTdTaL0D1DL0tTlqIU+ZRT7MxlXuAdwpXoTNWxXUzgkIr0uDFkCtxhZBsMS
	 4aLaMGXGm3emPls2ksJ0ILj2X7kbC2fMnb8Lk6RG8JJ7guFHTP7Z5Zu3DF/T9LZB02
	 BLeT5pFtbds7Q==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2057.outbound.protection.outlook.com [40.107.239.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 3BD89384083
	for <usrp-users@lists.ettus.com>; Wed, 21 Sep 2022 01:10:50 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ViKnkIRLHSYUFZan3EebY47ZrZ4P94ereHL0RBdjC5CdXIbSWEXcJKhk1KiWKoXfIbEvh+PLXzMzf7pgoPAxQEiVnvukNcl/OXnA/Q+jP5O6Lm50d8CrzpBgZtHck7D0TC2KDBk39KBIbzKZpmX6V3ImA4sT81dEgSwd66uYRfIfrj86WREHPUgtd3gfNvym2X+rQr8PKo/C3rxCD4Ngi0rRT5D8Z34zQOhOuZ6UikjAHSz2ydY7W9CTRiP42WJyDJjgORaukUIuvTST5GQJHDVXfJgVDlnhYVVhOVK5bC8YJStVsqDv1Evw4KY8p+t2bLyx/mymf4lk/YLGnx7Ung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTtZuwQAtN7UjwRDlBRIzbCV6f680nf39C4orvJ83Wg=;
 b=avqxSsDTiY5Ou9hSYNa3ZeV/vUcioZW4LbcD8qA3OiGYsJJg02b815PthPc6erglq8UULu0wdb3Jer9XbET3hDumUDDJUaxVui7rurSvo5bMExddUjm7q95fKaG8pAA5zVrreXhXeEvTGU2RlqlhgLrG6pKyGUqYrFPqat2MXWE3z+/cBh9g+BW2h6PLdYdcj1MjMrQZiKoikSrj66nAS8NxaBrZ8+dPI25pL5Uboh73w6yl8Jv2Em1vG4Fcd6j2elvAl7mUSAR7xGJuk0Q2mXLlXxej3G4xDZ7DnpKCIRibDOWi75bTME0nodckAkGKXw5edyJwphnhTdQ0YzIuTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5f::20)
 by PN3PR01MB6791.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:94::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 05:10:45 +0000
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ed:9105:3de2:980d]) by BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ed:9105:3de2:980d%5]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 05:10:45 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: Alex Humberstone <alex.m.humberstone@gmail.com>
Thread-Topic: [USRP-users] Question about USRP B210 Board
Thread-Index: AQHYzXd7XBk09yYuBUiztleCCEtERq3pVdUe
Date: Wed, 21 Sep 2022 05:10:45 +0000
Message-ID: 
 <BMXPR01MB3558553BC76C90D13A350B56D64F9@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB355809682F5825CE6633E8FDD64F9@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
 <CAE0dfYYdnzXbjqOiqbu3uJr5bW0pHFYV280mSTNjNsEh0n4J8Q@mail.gmail.com>
In-Reply-To: 
 <CAE0dfYYdnzXbjqOiqbu3uJr5bW0pHFYV280mSTNjNsEh0n4J8Q@mail.gmail.com>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BMXPR01MB3558:EE_|PN3PR01MB6791:EE_
x-ms-office365-filtering-correlation-id: 98a96506-d9e6-4218-fb55-08da9b8fa3d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FAnc4GNzUjTo5nA86a9nuXmOhajZgdgGhuvkbjwTVXx1zRswApTb61AlTQ46ELSaK2kuylxYfFcorliiA7EaI9kOVrQXKlqLqQ9ZZoV0PZnG42Q9xnhhbFwSL7yDhB1Ex1U78hxhL81pUrCfQ2vVNPJ2FfhkP19MMJiLHntq5TQSvXc8VNjwj1zVn+ktiOIlJEtnYmYzy3YWUS1W07t1AM6Lz+7wNWLLoPtvLezNGo7b2BbK4cuwOC+NMfIcajIaUjKzW2+Vb+cP13ubDFlz80OXmVTtZC7Iq+K2WG6Lg5wBEQIgwBIUOHpuFBup3Jh/XJeP6+bvo9wjg4R3i1bz1V5huKBdatoqkJ8Yg5TkP10/mskOThzvkyXqx7FT0A41+LHeESk6Kso5NwEXukJRTPETOuAdmywjpT9r4zMhupIXGz+reX4ihcBBMNfC4ogjxdyvhnjUD7ox+5fEYeK+MGx0jvG5yhKSglRfBqKvWMl6A2sPp7XmBOrYiBM6OT/73z3A1yAeC7djpDsXNONfwNQPAy/BHEkOlfs7/TUH4u9L0yFfvJPW6GAsBelJ7HyG2Nwo2Ile/D9H4hpawvU/2GmIW3x9bBBSWLeaKr15RSKzDkBQLsmXS3UVm9/RccOQWMvZ4VTs4HOP7kKGzkEj4F1O8yW012YO71ffq9tu2IeRjAGnZdQw9euBb3wL23OV+M6+AVmfzjxseCSGx/esDMN425TYVsMHjVTcwSkQbBf9rwmjcZ+Pn5bx+a2MoAfrRR8KAOvCieos9QMwvFgj4ji+vhS7Die2nduKAJN8smQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(136003)(396003)(39850400004)(346002)(366004)(376002)(451199015)(316002)(6916009)(33656002)(2906002)(53546011)(7696005)(6506007)(186003)(26005)(9686003)(86362001)(52536014)(8936002)(5660300002)(83380400001)(4326008)(91956017)(64756008)(76116006)(66946007)(66556008)(8676002)(66446008)(66476007)(19627405001)(166002)(41300700001)(38100700002)(38070700005)(71200400001)(478600001)(966005)(122000001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?HFjq3+tQT+GvMHKwpc6NngbJnhYbneLS9t06uAdjt/mDxp2njynA0VP0Doqo?=
 =?us-ascii?Q?8pg61BEkL5YXsRPP3KAQ82kbJOdj2RRomk9Z6kITxmYOBxpHqVeHwy4uqPzU?=
 =?us-ascii?Q?baNQSEnUE8ytvaKm/nY/0/2z1oY8dBsgca5+lGdApbtCWiYMC/b732n1vyox?=
 =?us-ascii?Q?EQf5fJ9wgr9kahoiIEG+27+BwxSbtOCW7XiYCxAhAbit7Y6CHo4VNoDGTBtN?=
 =?us-ascii?Q?ABBaBdjsi8TKd2y1rZ7mJTyicKKSmbHJ+BusbEedC1uX/f0jgFSDgjLq2rJX?=
 =?us-ascii?Q?XPSAKL/ozbVgrTagg+u35gCx/8uW98WG5+MFpHyKuJHg57fTAQnj7YriiW+j?=
 =?us-ascii?Q?ZUmJR5LUXRNTkATL6JycLmYmlmF7PptPz/xJO6tckuoqamFLW4oZRN6443dj?=
 =?us-ascii?Q?9HaO71sAHTzhcF9PnqZ0vyHfZKgCp01MVvIT1I6rZuVQ0EfYq9wn4QUMmbco?=
 =?us-ascii?Q?F3wDYRHRefDGCmPPFh1bAFnaOLakdt4uohNmNK9BBMqkvQS2U3JpMgpxmDiN?=
 =?us-ascii?Q?weW02CFaYFzd5Ud/rNodi0LcR79EQ2AKKsddOfOS0uP6FpEY3i67b1ok/guV?=
 =?us-ascii?Q?CR52qaGIARPOUqp7hCd1ZRvmpStWLZRq1w9TdOFjDD3Bz2We5UZR6ResumUp?=
 =?us-ascii?Q?64OkbUqdJ/RqCuneanWFGG1KYMwc4loQLA+IsvQ+HOmUytiodaIAeyHSnvKF?=
 =?us-ascii?Q?DwkdyKIu+zcs7URDDm6T9yujuJ9H0M+9yUTWOdLlfzNoVw8jlnQ6xzRkMQHy?=
 =?us-ascii?Q?WNuzNYxLuZF9Cz7ReQrlCgrwjGWROE4j6yBrnBE0aOz90c31KV0PK4vhleQ/?=
 =?us-ascii?Q?/BApUusr2BxSajZhc6YWkwRtfhxmbLOOrcYIy1IiXTIOx9uNmjdSr8waaG2Z?=
 =?us-ascii?Q?rmwGt7bMx6wKgFTm5Umk5XUoS/HInWujYuJAJYVlVL/vgKsscGiiGUwZpnwo?=
 =?us-ascii?Q?cy0HoYBMFEoKKp1m/D199VbQ26Y1yH75AN2GOwonYEpdsGSqSbLDqc9NfJji?=
 =?us-ascii?Q?3TkN7v3zLFi3E5QHjiVB6FtszV7oC+uFKk5F0TD3+w6Nhd5doXEjK+AIroZu?=
 =?us-ascii?Q?UQGfK7ufRMY3E9bKCkuDDcCuplI8V9YFxTNaqthdxW4I5lisCFFhZjYHX5z1?=
 =?us-ascii?Q?5NtKrI7evoSvhnM27BI32eEC+5a8kAxsT8tZ6GJeA6ZTOZVqCyVrEiLH4GHK?=
 =?us-ascii?Q?GMYqSUC0X2T6pRndF6zt+raExMHx9iStqJnQmNkpQanE7A0X/UwitF5otaYg?=
 =?us-ascii?Q?q0OzDI3kqy5Bl0LzbzigU41Ogop5N9rb6YYZi38srR3vy07qo5Dcg/42eTVP?=
 =?us-ascii?Q?9bFn2P70Uk6z6b5SF2yiUMmO/muPoLy88p9mGE1tGuuATKf7Q0//D9hzmuVe?=
 =?us-ascii?Q?gsgE90o0b3vWw9tILXv02Z3Vet3nQR5U5c875C2OH3aCLPg+C1LyfRsjRpGF?=
 =?us-ascii?Q?IIatIhvi9iak7n3v/GolOAQfYLadahCQdl+J3Y98OSILejFY1PnVX1+vJCq9?=
 =?us-ascii?Q?RIr/aYuRVzJTGQCvYr6kRGQGVqqXZGCGFBaVgSse0tPMRhgqVKvqSEOQ8HNr?=
 =?us-ascii?Q?yBQymILp2eIFmogw1eUARLQmdV00dxdglhdtAxEqWJHTNOB97I+m+G0Ywf2G?=
 =?us-ascii?Q?TA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a96506-d9e6-4218-fb55-08da9b8fa3d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 05:10:45.6888
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lEB845Kyf/2JpyosAsjZ3X7N+A7PXoo+O0llJn9Fp+dalqXHZ0FmhQvAn6E7ji4J2Efn9SuZQrtY3kRt/NBLc4RrY9YhdMxSOSCoWNSEBBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PR01MB6791
Message-ID-Hash: VO2TMHVB26C5CMFU53Z3XAUR6YDQKLQJ
X-Message-ID-Hash: VO2TMHVB26C5CMFU53Z3XAUR6YDQKLQJ
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about USRP B210 Board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/REBTSEID3ZGFY4OF2S3SYRJQWOVZVDMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6681100009567537217=="

--===============6681100009567537217==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB3558553BC76C90D13A350B56D64F9BMXPR01MB3558INDP_"

--_000_BMXPR01MB3558553BC76C90D13A350B56D64F9BMXPR01MB3558INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thank you for quick response and information.


Regards,
Sivaneshkumar K
________________________________
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Sent: 21 September 2022 10:32
To: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Question about USRP B210 Board

Hey Sivanesh,

What are you talking about? The Ettus B210 does not have a WIFI adapter on =
it. It's not a WIFI dongle or something. It's a general software radio. If =
you want to transmit WIFI signals, you have to program all that in GNU Radi=
o or C++.

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA
https://ece.nmsu.edu/



On Tue, 20 Sept 2022 at 23:24, Sivanesh Kumar K <k.sivaneshkumar@mobiveil.c=
o.in<mailto:k.sivaneshkumar@mobiveil.co.in>> wrote:
Hi All,

I want to know any inbuild Wi-Fi card available in usrp B210 Board.

If no any possibility to add separate Wi-Fi card in usrp B210 Board to broa=
dcast Wi-Fi signal.


Regards,
Sivaneshkumar K

Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_BMXPR01MB3558553BC76C90D13A350B56D64F9BMXPR01MB3558INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Alex,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for quick response and information.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Sivaneshkumar K<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Alex Humberstone &lt;=
alex.m.humberstone@gmail.com&gt;<br>
<b>Sent:</b> 21 September 2022 10:32<br>
<b>To:</b> Sivanesh Kumar K &lt;k.sivaneshkumar@mobiveil.co.in&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Question about USRP B210 Board</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge">Hey&nbsp;Sivanesh,</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge"><br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge">What are you talking about? The Ettus B210 does not have a WIFI adapte=
r on it. It's not a WIFI dongle or something. It's a general software radio=
. If you want to transmit WIFI signals,
 you have to program all that in GNU Radio or C++.</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge"><br>
</div>
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature" data-smartmail=3D"gmail_signat=
ure">
<div dir=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sin=
cerely,<br>
</span></font>
<div><font size=3D"4"><span style=3D"font-family:monospace">Alex-M-Humberst=
one</span></font></div>
<div><font size=3D"4"><span style=3D"font-family:monospace">PhD Student</sp=
an></font></div>
<div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch School =
of Electrical Engineering<br>
</span></font></div>
<div><font size=3D"4"><span style=3D"font-family:monospace">New Mexico Stat=
e University (NMSU)<br>
<span><span>Las Cruces, </span></span>New Mexico, USA</span></font></div>
<div><font size=3D"4"><font face=3D"monospace"><a href=3D"https://ece.nmsu.=
edu/" target=3D"_blank">https://ece.nmsu.edu/</a></font><br>
</font></div>
<div><font size=3D"4"><font face=3D"monospace"><br>
</font></font></div>
<div><font size=3D"4"><span style=3D"font-family:monospace"></span></font><=
/div>
</div>
</div>
</div>
<br>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, 20 Sept 2022 at 23:24, Siva=
nesh Kumar K &lt;<a href=3D"mailto:k.sivaneshkumar@mobiveil.co.in">k.sivane=
shkumar@mobiveil.co.in</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg-3779371343347707178">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I want to know any inbuild Wi-Fi card available in usrp B210 Board.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If no any possibility to add separate Wi-Fi card in usrp B210 Board to broa=
dcast Wi-Fi signal.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Sivaneshkumar K<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_BMXPR01MB3558553BC76C90D13A350B56D64F9BMXPR01MB3558INDP_--

--===============6681100009567537217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6681100009567537217==--
