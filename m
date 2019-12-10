Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A28BC117E1E
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 04:21:28 +0100 (CET)
Received: from [::1] (port=37472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieW5N-0000ra-Tu; Mon, 09 Dec 2019 22:21:17 -0500
Received: from mail-eopbgr680121.outbound.protection.outlook.com
 ([40.107.68.121]:64279 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1ieW5J-0000id-NX
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 22:21:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFlqrQehPGVymbB/moHBpyicGAvDHCHLumtvhEFXwjDGj743LZF36kpN9yVMUbZaLQ6/Fc1Zt5vLhGmA9yuj9Coz7zIdWg6c3OKizo9SrTVBVyyx6qLYwFVXprrxKVj2VfpS/pZRiam7/iIg9hfS+gKOnB82qpXj0iArkAfN7WIwNGzxUIOs4TnNtlp3DDFcM9CDMHLc5CLaTiEEXpjc9hnspwGm5R4wSPS2sWQzI2quhQ54f4JOs2TP86ZxoTRlFVvk7LxzHTOqW4YoOEtyqIqs8dv+SGXAM22EsEM67ZohEOga/jqe8RbbdufCW7vRtGJ0xZEA/WN2oKaDqMXyEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QhnIK6avHmxC4w3/AtUen4EZ/8EGO4yCnnf/BK/Me1o=;
 b=lhL8Dr1qYBZ4miJo7STAItTWmGf1DjgeG1UQuF3PDXiBS2ipAwC8pDyTbW5W2NGLzLUbKBSedGZRYGlrvmla5y+QZ1poRu3JVvz1nq0Y2iuVVF4nXvkNRI8raTXFroQTbkNkslylv5VMYf3s0xjQ0348BUCesl5kxFc3s3ZOmYCH4reFV8urOvxibVtV3faF9KdFFB67GscL/2cXLPBVQD8MXlj3e1lGda2PuBWyIrdNQqvT6z1rADmAgZAKoelXIFnS7eHmXUpBMDOUTYQCTYM0+g59BTdSww/WN5HlCHyNA+ohAgpyyImBYQ3+3+/NNoOT0GERtNAEs0xNjAGTLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QhnIK6avHmxC4w3/AtUen4EZ/8EGO4yCnnf/BK/Me1o=;
 b=lhIPHrKSxD4+3AtGa3p0NVuiN1opTPx6u8uwufpHc/3DJrEYkC3ApzwuB65j/QGK7oIpfpxhWGbgbA/lo5z+54HPEAzeZ7zE0fmGE3CK7NZJ2trgevDREPKWLt4QVe3/Kb05SkZZcKed5D+JcNw5g+BE6mIV6A4k3ioV60kyDpE=
Received: from BL0PR0102MB3537.prod.exchangelabs.com (52.132.22.160) by
 BL0PR0102MB3362.prod.exchangelabs.com (52.132.18.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Tue, 10 Dec 2019 03:20:32 +0000
Received: from BL0PR0102MB3537.prod.exchangelabs.com
 ([fe80::6406:c243:e52:3e4e]) by BL0PR0102MB3537.prod.exchangelabs.com
 ([fe80::6406:c243:e52:3e4e%6]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 03:20:31 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E312 RX_B issue
Thread-Index: AdWvB6DuxGPqJzIfRLqn8zV1yUAafw==
Date: Tue, 10 Dec 2019 03:20:31 +0000
Message-ID: <BL0PR0102MB35373B0C189BE4F553378871CB5B0@BL0PR0102MB3537.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [24.107.235.103]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66b3f99b-b529-4607-623c-08d77d1fea01
x-ms-traffictypediagnostic: BL0PR0102MB3362:
x-microsoft-antispam-prvs: <BL0PR0102MB336250215F67DC204ADBFECECB5B0@BL0PR0102MB3362.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39860400002)(366004)(396003)(346002)(136003)(199004)(189003)(478600001)(81166006)(7696005)(55016002)(790700001)(6506007)(2906002)(86362001)(9686003)(33656002)(786003)(75432002)(316002)(5640700003)(4744005)(71200400001)(7116003)(6916009)(52536014)(5660300002)(26005)(8676002)(66556008)(71190400001)(186003)(76116006)(66446008)(8936002)(64756008)(66946007)(66476007)(81156014)(15519875007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR0102MB3362;
 H:BL0PR0102MB3537.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y34ssYFoAX3Z1TuKDJQJ80Usd4zJ5rZn+HcZICAZOWUlnvEXgxqqf4g2KrIQ0oFfQRwIkHaihPpTlAYLAKC0iYQmsCLA+XkRJMbh1BxSysmHeRFAJVsUGmkX7zqLWYLFdP0fMr3kVVcGPfdE18Z80VXI8qYgSztc5xXt/iuSz6x8/uWd1B4JvLFxNPML2hJjvC2xbNYMKIKnCOzOoK9dgMolT1LK3YW/31a1dtU9r//K0/mgkkZc+sr/2fOr6peA8RzHfSVDcn3Qimqw+38UfRaqlhBXXg+2mAwA1ueeA9ZY7qFM/gSLAs9a6nPBCcX+8HrfuEx2fwSGJi0rNjDGBYccLzu5K7CSqLH+MmWePFIEarfFdpw2NVeXamnvPrgP6PjfmVpNSdV9yYsQohQtnOkT3JuemDszvgUJa0Ajn4wK70GZ8hbWGXDelyrvg4HTERLOqJQb2lkEOSe/2ekAEbqTJaq3CNyTpVCnrMrZp/cMEdwABSsP9pXBEKGPRsrXY4T4dqz1kmCeNeo9wvVjmkHpnWwOSrDitV2T7PlDhsg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b3f99b-b529-4607-623c-08d77d1fea01
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 03:20:31.7353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /zqOUfz+Ua2cC8iB9RG7F3jJc4VVe7/QbRN51E8GFe7aOg7GFojbxcLmN6L4C7PBdgYG9n3IKNkEV3GP8nDT8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR0102MB3362
Subject: [USRP-users] E312 RX_B issue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
Content-Type: multipart/mixed; boundary="===============8231104578191502268=="
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

--===============8231104578191502268==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR0102MB35373B0C189BE4F553378871CB5B0BL0PR0102MB3537_"

--_000_BL0PR0102MB35373B0C189BE4F553378871CB5B0BL0PR0102MB3537_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello group,

I have run into an issue with the RX_B port (channel 1) on the E312 that I =
haven't been able to make any sense of.

RX_A (channel 0) works great: I get clear in-phase and quadrature component=
s that I have been able to graph<https://imgur.com/dQRl5mN>. When I do the =
same thing with RX_B (channel 1), I get something completely unexpected<htt=
ps://imgur.com/4WgU5R5>. I am using the same rate (=3D0.5 Msps) frequency (=
=3D900 MHz), gain (=3D50 dB), bandwidth (=3D200 kHz) on each and have had t=
his happen whether I use both channels at the same time or read from RX_B i=
ndividually.

I haven't had anything like this happen when I transmit on both TX_A and TX=
_B, and I have tested this on multiple USRP E312 radios and 900 MHz antenna=
s to make sure it wasn't something unrelated to the channel/port itself.

Does anyone know what could be happening?

-Isaac Beeman

--_000_BL0PR0102MB35373B0C189BE4F553378871CB5B0BL0PR0102MB3537_
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
@font-face
	{font-family:Georgia;
	panose-1:2 4 5 2 5 4 5 2 3 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
">Hello group,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
">I have run into an issue with the RX_B port (channel 1) on the E312 that =
I haven&#8217;t been able to make any sense of.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
">RX_A (channel 0) works great: I get clear in-phase and quadrature compone=
nts that I have been able to
<a href=3D"https://imgur.com/dQRl5mN">graph</a>. When I do the same thing w=
ith RX_B (channel 1), I get
<a href=3D"https://imgur.com/4WgU5R5">something completely unexpected</a>. =
I am using the same rate (=3D0.5 Msps) frequency (=3D900 MHz), gain (=3D50 =
dB), bandwidth (=3D200 kHz) on each and have had this happen whether I use =
both channels at the same time or read from
 RX_B individually. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
">I haven&#8217;t had anything like this happen when I transmit on both TX_=
A and TX_B, and I have tested this on multiple USRP E312 radios and 900 MHz=
 antennas to make sure it wasn&#8217;t something unrelated
 to the channel/port itself.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
">Does anyone know what could be happening?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Georgia&quot;,serif=
">-Isaac Beeman<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL0PR0102MB35373B0C189BE4F553378871CB5B0BL0PR0102MB3537_--


--===============8231104578191502268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8231104578191502268==--

