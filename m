Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4C723562C
	for <lists+usrp-users@lfdr.de>; Sun,  2 Aug 2020 12:04:19 +0200 (CEST)
Received: from [::1] (port=34366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2Aqh-0000ti-Rq; Sun, 02 Aug 2020 06:04:11 -0400
Received: from mail-vi1eur06olkn2109.outbound.protection.outlook.com
 ([40.92.17.109]:23232 helo=EUR06-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <johnan636@outlook.com>)
 id 1k2Aqd-0000oX-RR; Sun, 02 Aug 2020 06:04:07 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HV36l9kffoEXcPOsJKyZeDfRB20z5SSqEYWy7KLdrwObq9yfYQbMB9oZMDAJ3SO+P/j8gaEj1w6bbhVv7xsO1VJVmM2rpDybby9irartOueBrxM9yhuyZHzOEDcpjf4PlA5kKkgHAgB0xAsOgwuPO9E81Au99aV7yw+nX7yDTeDEZDWICH5EQ6LpRfQHa3hs99PelvNMEPZnu3J/Hh+FoS1SugHsu2kuxRxzmQGnpCxgvTlAlm1MfXAoFB9ktSoz0/LBGMG+k0Nq8D/9DbZNfJBA1KCTkyi0ylX/F7JPbLtFAwSpQGMxvdt6RKzp/JJGUZfvvHxPj1PNlHaGLQK0Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WfRGgmqP6yb2W+OUWZ40auCzpYzz2pcLc32baDvR3gA=;
 b=aWR+0s0kpN8YY5CQegjTxt2mXk9fnezeZu8oPiJcv5EUWngV64AL3zOL41FNIiDggZTnhiWR4TnABtwdAp9tfGjD/T12lH27+h5mxwLmFrMMV9RVz4v7Sixi/9VOvJxK8BzE+kqYCW4oOVO+16H2+4HtAsXbJvuHTZBqLyUvKkPWNwwO36FU17/9PNM4N3ZYQr5Y25Q06+hloH6iOx3EN+XjDW/+SLStbrTrtIcfgyDVx1rdbryDUFHt0id4JW8ZrrdVA+hLHZ07V0PTOGAzUjqjKu8P/JBSsotLU3lhBk0aIno+4a2leFED6EynhcCNBk9ziP+Lra5Jd1iI9Owtqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WfRGgmqP6yb2W+OUWZ40auCzpYzz2pcLc32baDvR3gA=;
 b=btFi+zPtRk7QYqTOQFNHnGw92nbCbU77HVY+jzIwnyp1ryVQaohCI9/2NSc+Ru51x06vyH65sEvTI1oI+SSjYZsxs/0tzpmEobk8I5aAGQH32HNltaGyvzizCpXe1nJar1WqyFa8M5zMK9I0oTloMfkftw8ppvzTBNqm9NPrCum1xy6++o421NUaJY6PFaMXP5toPdN7m2yAgnzjLoVsbJGClNa/1XoeP7kyhAVT88dS26UmPDp8zOgtLidg6PClSRmpYZsAA4n5IXrDvgRhHYVTG9HsrlsJ/2Oh4Z6Bn+8D6Loe2O0XpwDBxQOtEds+fmSoybuQ5mtN70BAorPAJA==
Received: from AM7EUR06FT060.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc36::46) by
 AM7EUR06HT184.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc36::169)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Sun, 2 Aug
 2020 10:03:05 +0000
Received: from VI1PR09MB4206.eurprd09.prod.outlook.com
 (2a01:111:e400:fc36::40) by AM7EUR06FT060.mail.protection.outlook.com
 (2a01:111:e400:fc36::446) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20 via Frontend
 Transport; Sun, 2 Aug 2020 10:03:05 +0000
Received: from VI1PR09MB4206.eurprd09.prod.outlook.com
 ([fe80::ecb9:681:1ad1:e01]) by VI1PR09MB4206.eurprd09.prod.outlook.com
 ([fe80::ecb9:681:1ad1:e01%9]) with mapi id 15.20.3239.021; Sun, 2 Aug 2020
 10:03:05 +0000
To: "michael.dickens@ettus.com" <michael.dickens@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>
Thread-Topic: Working on USRP N310 with host computer
Thread-Index: AQHWaLMy5U02H9lXcEOHCa6q2uKWyg==
Date: Sun, 2 Aug 2020 10:03:05 +0000
Message-ID: <VI1PR09MB420653970012266F2BFABB4FE34C0@VI1PR09MB4206.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F85787D577C658939BB95D832BA48A27B2783FCF2241F3AABBA8A2A171475A8C;
 UpperCasedChecksum:01B1D5DA8A13F947EECDC9A062A1C12D303582C907495B57C21B63A14E595403;
 SizeAsReceived:6791; Count:41
x-tmn: [/DUpr3E9dySxS+efTDHo2GT5AIakYeFa]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 8d8868dd-2c77-4982-27dc-08d836cb403f
x-ms-traffictypediagnostic: AM7EUR06HT184:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nu1WBj5vle4sH8uP6Jty+dMUNwLMpy/qEFkhqbYMw5QaEcq0cIH2O5rOxVwGZ6sBllsyZfxd9upL0ZIVJjSEXMTZxwfPVHlwHq22B0V8mcILVNTjSnvBcNv+QiDtHtF1SFoDirXvgsmjfuUMiajJbkyz0TT43BF8S9stlbfSt6cdRNJnFt+1VNYCT1wMgKLfOVTkU05RDqX+Jn/WQ/FWZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR09MB4206.eurprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: xtMuA+r8eJNDfVP7QNsYtca5kPRGBEp7QOC7Xo1diH8ECLorPcAn+4btuMtTiBeihi/uOYDPP4z4Mt970RY29rOwfwrqgVI/luuCU26tSPNZEBrbggusnIAe4qkJbYd7J1J8/EviYK3VoaEBw6i5wQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: AM7EUR06FT060.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d8868dd-2c77-4982-27dc-08d836cb403f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2020 10:03:05.6300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7EUR06HT184
Subject: [USRP-users] Working on USRP N310 with host computer
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
From: Anthony Johnson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anthony Johnson <johnan636@outlook.com>
Content-Type: multipart/mixed; boundary="===============1622381173145363250=="
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

--===============1622381173145363250==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR09MB420653970012266F2BFABB4FE34C0VI1PR09MB4206eurp_"

--_000_VI1PR09MB420653970012266F2BFABB4FE34C0VI1PR09MB4206eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey, how are you ?
I'm trying to work on the USRP N310 with host computer (exactly like the X3=
10) and I can't figure out how to do it..
I have connected N310 through port SFP0 to my computer and I can ping the d=
evice.
But when I'm using uhd_find_devices on the host computer, it can't find the=
 device.
On the E310 I know that there's a bin called "usrp_e3xx_network_mode" that =
if I understand correctly makes the E310 work with host.
Is there a similar bin in N310?
If not, then how can I work on the N310 with a host computer?

Thank you so much!
Anthony.

--_000_VI1PR09MB420653970012266F2BFABB4FE34C0VI1PR09MB4206eurp_
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
Hey, how are you ?&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">I'm trying to work on the USRP N310 with hos=
t computer (exactly like the X310) and I can't figure out how to do it..</s=
pan></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I have connected N310 through port SFP0 to my computer and I can ping the d=
evice.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
But when I'm using uhd_find_devices on the host computer, it can't find the=
 device.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
On the E310 I know that there's a bin called &quot;usrp_e3xx_network_mode&q=
uot; that if I understand correctly makes the E310 work with host.&nbsp;</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Is there a similar bin in N310?&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If not, then how can I work on the N310 with a host computer?&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you so much!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Anthony.</div>
</body>
</html>

--_000_VI1PR09MB420653970012266F2BFABB4FE34C0VI1PR09MB4206eurp_--


--===============1622381173145363250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1622381173145363250==--

