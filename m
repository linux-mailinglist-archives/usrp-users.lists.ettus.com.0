Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3F2F75C8
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 10:49:53 +0100 (CET)
Received: from [::1] (port=43258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0Ljr-0006Y4-IG; Fri, 15 Jan 2021 04:49:51 -0500
Received: from mail-eopbgr100102.outbound.protection.outlook.com
 ([40.107.10.102]:6598 helo=GBR01-LO2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l0Ljn-0006Rp-6o
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 04:49:47 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h1H3Vb3AieaKnFhw30VGQKnbXFSM1BEBfeSrfFvTnQxEKvDvhGus66CG0/7+4pedVuRU9VyXfzxa++MgsTBYrvVhezneV7NoJXeTPW97OYhpfGItw7Sb0tYS6Ahm2Zr6tXMb9nqPy/VWeeymzLfdzH/szI1rLZGIkldK6eDddGwLVgvuFkhcE6wPI1AABdgWOzh9h3v6Tpwi3UFb6v7kIvph7yBJCy7R1k5+m4k6QJO3cKJRjmFSyH3jDu0PBoTIZYt8mHIaHFOw6wlM2gWxkSd8E6cZo3I8N08/D47rvi9UOiApIC0MapCnvSTHNgOXeLlJdldhzfPfKx7XYAZyxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiJ20zHokqfPLoFU1VmranU+4hDoIfP7wupxIbivbTM=;
 b=kkAAcDsPDNBMn1M47N4KAgJ4PtA6VWyf40t1oZfviXzkWg9o01C1aA7+4334M10QApBmnZmxyYmb3ARgVx980ab5I74NFkP9nVfx9jimhidREWfZRHy+gYcQy8q0lzNCNPU86H7TfBrqqxtjushZICW40q/1hVyYDQ+6N52pJJn8dmA2RQ/tunVSjBozgdDScnUSBShSGXfJ8VD2Jcs4iVqdlZiZeSHklTKD7M7wPBUGsBh5oAhhurzpeLEMvacZW/SwvaXaS+0FpkYC91NBVJAJ765/hDYQByTSOAlC6/a7zQWJCs9PqlaBkANopvFLaRoHRs17eHiYu2xspQLakQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiJ20zHokqfPLoFU1VmranU+4hDoIfP7wupxIbivbTM=;
 b=PvF1TeWwDx0EY+QegrhOuOWxlFzBnCsZLVlyTH6e9HzQk2q3UVYWYcualV0JjyTGqv6TQq1uxOfI2gO4MX1Xyv3PwkG0gzKxTEickT53Av9myfWvUo8cKvyqSUUKY4T224743IsiZ6+JkEUbgGY74ptKVHxItDK/tkngnbVRl/Y=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO3P123MB2924.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:f6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Fri, 15 Jan
 2021 09:49:04 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f%6]) with mapi id 15.20.3763.011; Fri, 15 Jan 2021
 09:49:04 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
Thread-Index: AdbrHZJNCfia6oeARmetIkq7Vg4jugAA/YqAAABWMsA=
Date: Fri, 15 Jan 2021 09:49:04 +0000
Message-ID: <LNXP123MB3724BB4DA428B0625864EBCACAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <6001617F.8050805@gmail.com>
In-Reply-To: <6001617F.8050805@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50805fb3-e24f-4dc4-c2c6-08d8b93acb87
x-ms-traffictypediagnostic: LO3P123MB2924:
x-microsoft-antispam-prvs: <LO3P123MB2924DD25ED76859F24932AEBCAA70@LO3P123MB2924.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GOVBlrGlp/qhgV+L+WcRdMRSA9L1Dk09XBw/hR0Lm6vNzdtYSfKp29LqK/rOcMhzLqTLFBg3vETzKmSSqt3J2taMZMezEdvwJMKRL5AGi2L7EewMRUyI2dZL+cve4dZ2xWwJbI+2LCKQa7I66lG1543GYN1NKYt8DKjn/44uoa+jOFP9WYRw9y1Wo1dHGKaHxDcUDvFPak5CW4RaphHRT2CTI5CTP6bHYL/nnoxYkQNdVhnZ923/2f0VcKibXBh7L+7D+vPLHsV6td2SWK3mzObW1jIRFS+qL6tVd/TI2ZT2zDD4iBUzD9BIH2EgXBoB2JN+Ujw+ubEOwC5E/dCBedOZfSvBCuDolXOlEgJW0D6KMUbTv3w/vPRjIfQR8PiF/aC6jKxt5BNB3hxnrQYINX+yXp2c+jBXlc6WeSoNLikVxgdnttzkYtLmV1TakPYFwmu0cdoPbfbeI4TlqeWt6d1tuElf9NZLiZMbxDQKUwtRjV/PUaIL4HCtaAua6GA4PR5l5whNluJ6MAyHlwdx2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(136003)(39830400003)(346002)(396003)(71200400001)(66946007)(66556008)(33656002)(53546011)(66476007)(64756008)(66446008)(52536014)(76116006)(9686003)(6506007)(2906002)(478600001)(7696005)(5660300002)(166002)(55016002)(6916009)(83380400001)(8676002)(86362001)(966005)(26005)(316002)(186003)(21615005)(8936002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?feZSK1Dsn6J8UYPipUpcDF1uslI15QKVwBRERyzeylEDyMc23CPYkNcNaxs3?=
 =?us-ascii?Q?J6jEzG5SCOXo0HAK4ImjHLNFKpfC6yh3bk5sO6yoDmBM/Txv3+dvUOwdmtiq?=
 =?us-ascii?Q?R2y7E1fdGf6gLvSkDi42DMxqp/azeUvFZeBnhqyYFR9sXII5jikYx1MDqhWq?=
 =?us-ascii?Q?L9FGaGfjEJafZ8QH78amx14viHVLp+l7I4JB/rRh82fB0WwQdJ7VompgBBTt?=
 =?us-ascii?Q?76Ya4OZZ7ijYMo9kXeAqVM+IL0rlNyfgyoOfDeyQezZSDpwF04dlIfFRq1W8?=
 =?us-ascii?Q?IcbN3/lSX7Xjd1NGNxN8UE8Iipnn/UUnMRUGWAigA371hBuujLBo1Oq2zHe3?=
 =?us-ascii?Q?d2GMwQdf4gYJ1Oxbei0CS4zLiMTxTChXh8da2nN1FFAFzkiORBEkGWqbcDq3?=
 =?us-ascii?Q?54NGbveDq9Vig95bi5oru2uQtW8NHulfLLjqRnBHNLCjwCQoOas1NbulIe/+?=
 =?us-ascii?Q?MmETCI4Msf5zC7p5Yjr5wjNvHjeonoobyLHB0s/zBsbL/quhaZnE2KX8pA1X?=
 =?us-ascii?Q?UutNiK4oflKsISMV0hrG02j1bZ1lgrQKWW6B6Xj5fgrxa/a4CZPJnS4FO8Iu?=
 =?us-ascii?Q?4s7R9Wg7+uFen/gsEa9QaxQXwzcMpvbnDLLYLKTcGhpd9w0q6GgYWLxpfmRr?=
 =?us-ascii?Q?ExsUqSH0PpwVhIVatz3beOmQ08ScWDRx5fwKaHzxOuAOE96BzzU4tGn5NZlC?=
 =?us-ascii?Q?3Hn8PouyljGtAGIWaqtWRJoNlIfBLyPoaRBlACYbFtNaI0pvgF8UJe2oOKbr?=
 =?us-ascii?Q?z1E0MTYJjNp9FijNomDDDQ/XScZIDbjngcQidkGjElkbvR1aJBQjZny3HHZd?=
 =?us-ascii?Q?EFZXh4Xnpc/Bf7/sDXnFlbC4JICjmTNXO+DlYP4xDPOCiufOFNAgXJ6caNx7?=
 =?us-ascii?Q?0QnDViPjCwdJ0PFXKXPHPcYxn63aHhyjL/9N1JsO++EOVFTN72FQq6nFZ3an?=
 =?us-ascii?Q?6Oy6jmW6Qr242/ajFl4u+IfnE2r3ewvxi3haSz4DdCE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 50805fb3-e24f-4dc4-c2c6-08d8b93acb87
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2021 09:49:04.5992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C33GE8xrHpv08AwDJf4ZmmHrDanxfhibzL8IkzSiR40QVEHZrOix0lVrf6h0S2ZlVyRDYoXdu9lB0FwUvSmCsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO3P123MB2924
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============8232845416406539058=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8232845416406539058==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB3724BB4DA428B0625864EBCACAA70LNXP123MB3724GBRP_"

--_000_LNXP123MB3724BB4DA428B0625864EBCACAA70LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for getting back to me on this,

I'm trying to set the "management" port on the RJ45 connector. Our applicat=
ion isn't using the SFP port.

Ifconfig returns the following ports:
eth0
int0
lo
sfp0

It's the eth0 port that I'm trying to set to a fixed address. I can configu=
re this via the serial port connection using the command "ifconfig eth0 192=
.168.1.60 up" but currently I'm having to do this every time the unit boots=
 up.

Mark

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D=
. Leech via USRP-users
Sent: 15 January 2021 09:34
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0

On 01/15/2021 04:06 AM, Mark D via USRP-users wrote:
Hi,

I'm trying to set an E320 USRP to use a fixed IP address on the RJ45 port.

I've tried following the instructions in the USRP Manual at https://files.e=
ttus.com/manual/page_usrp_e3xx.html

The manual says that settings for the SFP+ port is stored in  /etc/systemd/=
networkd/sfp0.network.

My E320 doesn't have that folder, there is one "/etc/systemd/network/" but =
no "/etc/systemd/networkd/" (i.e. no d after network). I think maybe  is a =
typing error in the manual and the folder name should be network.

The folder at this location is empty, so doesn't contain the SFP+ setting f=
ile.

I have created in this folder a file eth0.network with the following conten=
t:

---------------------------
[Match]
Name=3Deth0

[Network]
Address=3D192.168.1.60

--------------------------------

However this doesn't seem to have any effect. When I use ifconfig to show t=
he status of network connections eth0 is showing as "UP-BRAODACST RUNNING M=
ULTICAST" but no IP address is set.

Any ideas on how I can set a fixed address?

Mark

I don't have one of these, but it seems like there's both an SFP port (for =
high-speed sample transport), and a "management" port with
  an ordinary RJ-45 connector.  Which one do you want to set?

Also, what does:

ifconfig


produce?  We want to get a list of the network interface names on the machi=
ne.

________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB3724BB4DA428B0625864EBCACAA70LNXP123MB3724GBRP_
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=
=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Thanks for getting =
back to me on this,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">I&#8217;m trying to=
 set the &#8220;management&#8221; port on the RJ45 connector. Our applicati=
on isn&#8217;t using the SFP port.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Ifconfig returns th=
e following ports:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">eth0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">int0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">lo<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">sfp0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">It&#8217;s the eth0=
 port that I&#8217;m trying to set to a fixed address. I can configure this=
 via the serial port connection using the command &#8220;ifconfig eth0 192.=
168.1.60 up&#8221; but currently I&#8217;m having to do this every
 time the unit boots up.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Mark<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:windowtext;ms=
o-fareast-language:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"col=
or:windowtext;mso-fareast-language:EN-GB"> USRP-users &lt;usrp-users-bounce=
s@lists.ettus.com&gt;
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> 15 January 2021 09:34<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Setting E320 to use fixed IP Address on RJ=
45 eth0<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 01/15/2021 04:06 AM, Mark D via USRP-users wrote:=
<span style=3D"mso-fareast-language:EN-GB"><o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to set an E320 USRP to use a fixed =
IP address on the RJ45 port.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tried following the instructions in the U=
SRP Manual at <a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html=
">
https://files.ettus.com/manual/page_usrp_e3xx.html</a><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The manual says that settings for the SFP+ port is s=
tored in &nbsp;/etc/systemd/networkd/sfp0.network.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">My E320 doesn&#8217;t have that folder, there is one=
 &#8220;/etc/systemd/network/&#8221; but no &#8220;/etc/systemd/networkd/&#=
8221; (i.e. no d after network). I think maybe&nbsp; is a typing error in t=
he manual and the folder name should be network.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The folder at this location is empty, so doesn&#8217=
;t contain the SFP+ setting file.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I have created in this folder a file eth0.network wi=
th the following content:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">---------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">[Match]<o:p></o:p></p>
<p class=3D"MsoNormal">Name=3Deth0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[Network]<o:p></o:p></p>
<p class=3D"MsoNormal">Address=3D192.168.1.60<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">However this doesn&#8217;t seem to have any effect. =
When I use ifconfig to show the status of network connections eth0 is showi=
ng as &#8220;UP-BRAODACST RUNNING MULTICAST&#8221; but no IP address is set=
.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Any ideas on how I can set a fixed address?<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><o:p>&nbs=
p;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"mso-fa=
reast-language:EN-GB">I don't have one of these, but it seems like there's =
both an SFP port (for high-speed sample transport), and a &quot;management&=
quot; port with<br>
&nbsp; an ordinary RJ-45 connector.&nbsp; Which one do you want to set?<br>
<br>
Also, what does:<br>
<br>
ifconfig<br>
<br>
<br>
produce?&nbsp; We want to get a list of the network interface names on the =
machine.<br>
<br>
<o:p></o:p></span></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB3724BB4DA428B0625864EBCACAA70LNXP123MB3724GBRP_--


--===============8232845416406539058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8232845416406539058==--

