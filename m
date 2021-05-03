Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2B237160F
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 15:37:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08F59383F63
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 09:37:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="cAFe0iXe";
	dkim-atps=neutral
Received: from KOR01-PS2-obe.outbound.protection.outlook.com (mail-ps2kor01olkn0141.outbound.protection.outlook.com [104.47.109.141])
	by mm2.emwd.com (Postfix) with ESMTPS id 21CB1383BD0
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 09:36:28 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgr0nkWTrvVzIteaWKANEDBrCtc+ck1AlD6qPPisnyxOt3oW16GzFuQ/VhiOte000jGC16VKUP0UNDU9gwTa3Tl63KS9kPBqbLXpMjPeU/b8otWPSOpT373P3EcrMiYT40OxteVPH7e9O26BCN9HKuKlLs9T3HGNWLp54Hi6+WW1dYRD3KjT+d/Xc+Md1SihGdLhvs6Fk+4L5zJIWe4uL6RJgvzY5jtFwZwod/xG3CEDpoD6Qe06qphdLIJUDd6wgR3ilN3bRVaOyYY4uKNKirRH6wUEmmDFyQH4s4tYpCzKdtg7/XLG5xxO6zq7/UjBEYzrW0/ReFtJfMN5jOAfvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=diSj1HI3iM882NDoYuJvO229EEUEt6QYUx7dYuSpBNs=;
 b=S4Th7PMdxxP+qeWV11KDCtQj0KkQf31oHZZGJLzKZQOWvYrC2YvPsGpNCqz47lJA6Ox/2QCZNACU39/rcRgSb2MIGdBN3XHNPHSOcoN9XusYjKkBjrLmdP8QHCPo47pVX5EbF9SrZ29ltGtR/G6u1rWbOgZxzleEmn5Uv5+xUQ6wPLk5sI/Djnt9v1VUQukxbhlVOTIFbZYhS2FgO7ImcOHaiTXkEO3W1k3Lj27U+ah45BUpBVXqJDnrcaEZwFtVo/BhqfMpKwjSfnZ5zLA4hrBBksfmDShSaIh1Js6S8bNl+0tnoyF6Eo5BbqMzID6/WOh4/JaUQUSy+bW3mY4+AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=diSj1HI3iM882NDoYuJvO229EEUEt6QYUx7dYuSpBNs=;
 b=cAFe0iXegUxcGRfHTXJnPZuDzRv4Egq63raZxJQpeBRUbQcEde85/+iLTShXuG9gBdJ8iYCWqz07vUFdGEltkawSXKngo0vWloZRuJTbSWsJkyrTch+OwnvkHDuocMhPDjfUtX8ffFL8WdF1eM7kt1tnbXGlJ4xL46zEeKCZMmIqKyZJmVFISIlNbdWgT/Roo22tICi96YBUJEkW6fYlCusLzWJOJQGg5MGqUHpC+4urLyF1nVXpoW62Wozu7NaqHw/oMfE0stPChNB17zbp+RllZ4eYrMS2EQfCwxONiTyf+F18NimyOjx1UqTdQExW1LW2ipszEbtH9c4/8WJBuw==
Received: from SG2PR02CA0021.apcprd02.prod.outlook.com (2603:1096:3:17::33) by
 PS2PR01MB2216.apcprd01.prod.exchangelabs.com (2603:1096:300:31::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.38; Mon, 3 May
 2021 13:36:26 +0000
Received: from HK2APC01FT062.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:17:cafe::45) by SG2PR02CA0021.outlook.office365.com
 (2603:1096:3:17::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27 via Frontend
 Transport; Mon, 3 May 2021 13:36:26 +0000
Received: from ME3PR01MB5446.ausprd01.prod.outlook.com
 (2a01:111:e400:7ebc::41) by HK2APC01FT062.mail.protection.outlook.com
 (2a01:111:e400:7ebc::449) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27 via Frontend
 Transport; Mon, 3 May 2021 13:36:26 +0000
Received: from ME3PR01MB5446.ausprd01.prod.outlook.com
 ([fe80::a498:9f91:e07b:a5d9]) by ME3PR01MB5446.ausprd01.prod.outlook.com
 ([fe80::a498:9f91:e07b:a5d9%7]) with mapi id 15.20.4087.041; Mon, 3 May 2021
 13:36:26 +0000
From: james Thomas <james_ttfun@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: why N310 daughter board have 2 eeprom
Thread-Index: AQHXQCAmT9SpgY3QQkiBoiVSFh0iHQ==
Date: Mon, 3 May 2021 13:36:26 +0000
Message-ID: 
 <ME3PR01MB54460EAB565A0D57645A0E1B9D5B9@ME3PR01MB5446.ausprd01.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:B03ABB2E7BEB0AC4E9991F1072A1C0C6DE64645BC2065EB45E6ED0A191DB358C;UpperCasedChecksum:2CDC052BED1E873A0924763D5729108855E39B9E53F5B2AB74F52355B544C87F;SizeAsReceived:6635;Count:41
x-tmn: [tkPpq3Rnhr6JNrz13wwEC4lDwBgsrE9t]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 438644f3-89fe-4ffc-5cd7-08d90e38730e
x-ms-traffictypediagnostic: PS2PR01MB2216:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4Z2+WvB1+3jPIA08vnBy56FBt4v8gY1jSIaq2vLdYY8wv9MaiJTI0BImqrT5CbIX8qaCzZ+Z6vuj8lgjXs44K57aT6eB3dgjMLTKDgAPGPYphxr9ZlVzSP84ihnjRJKte6qT0Y3gmV+7h+Pcme8XfOf/OHbhG6OcY9cbfEdFpQLundcgSzwNaZFhHvdAiqKoqztJi7SwvYO2ROFLDqePV09N8S8q+/YHCiJTRdwjbF5jBXIWBxSCUX9+25/XTPglMCCIll7cMXPIvDK5fY03gJCvEo85mD2xY0cfoozFpSGeYyVQmChQB4yV5daCTGoA1S8wYmSZ3gy7CwXa4/Q/FbTeLUsR9YTd73YHEKpcHh3wnaoZP/Usq4AHIfS6eFYfjlxi2jWjY9WAC2xusTHUzw==
x-ms-exchange-antispam-messagedata: 
 wwUECnqludOpS0Q0Cs7vnhjDJ84+qPvoCsdoXsi2B4ZVLTF0SHXw0ULLASaxQSkfvlk74342mFM5+fW1f0MKAtYDHThTKr/ZDnrGwZfV1D6MG1l83f9itOKKCqQnyd6+yF1EsEx8y+b+geW8B8c3rQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-5c337.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT062.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 438644f3-89fe-4ffc-5cd7-08d90e38730e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2021 13:36:26.0197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2PR01MB2216
Message-ID-Hash: WXFNXTAHOLH5LG2NRLYBC7CUVDYL445I
X-Message-ID-Hash: WXFNXTAHOLH5LG2NRLYBC7CUVDYL445I
X-MailFrom: james_ttfun@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] why N310 daughter board have 2 eeprom
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZHCWDWU7DDKN7IHVCFSYW4SR4PAGTHZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2983602588749134927=="

--===============2983602588749134927==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ME3PR01MB54460EAB565A0D57645A0E1B9D5B9ME3PR01MB5446ausp_"

--_000_ME3PR01MB54460EAB565A0D57645A0E1B9D5B9ME3PR01MB5446ausp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
The datasheet of N310 said its daughter board have 32KB eeprom. but from th=
e schematic it have 2 eeprom total 64KB. is one of the eeprom used for stor=
ing user data?

--_000_ME3PR01MB54460EAB565A0D57645A0E1B9D5B9ME3PR01MB5446ausp_
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
The datasheet of N310 said its daughter board have 32KB eeprom. but from th=
e schematic it have 2 eeprom total 64KB. is one of the eeprom used for stor=
ing user data?<br>
</div>
</body>
</html>

--_000_ME3PR01MB54460EAB565A0D57645A0E1B9D5B9ME3PR01MB5446ausp_--

--===============2983602588749134927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2983602588749134927==--
