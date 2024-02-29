Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5529486CC8A
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 16:12:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38652385040
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 10:12:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709219566; bh=n15j5wF6Nz/phxSA2XyRhi5m7fNtLXcRw3Qlte5Emz8=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WDwiRU0leNLG5kqMH67esQI/gqOLdv4/uGL4K/LtRN49jO3Qvp1P+LpXPvQjYolNZ
	 DOq6wuz9JXlvQKf1lGtpZn1hB7f4JO2GiGzHg5RdDHb780IQ2yePy7V8uFoNN3Zg1e
	 9oqWMmY5s04TI7oWaa51bZM0BU275MhSD6TsKPYE6S1d2lQSfnOmDWByHuGoq9AM98
	 ccfbwOoueFHNEGgwnPB8yHjJ7DWS7YLpDARLvf1Ev4rD7QwIn3FGmhcUqafBFcbAGW
	 9+ryViC2ySIQarmwIRWK+iBlKn9RtnBeT07HMsRwu78quaLOhae6KJET7z8EAGcuW0
	 HmLNq3wSFp4Jg==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03olkn2092.outbound.protection.outlook.com [40.92.59.92])
	by mm2.emwd.com (Postfix) with ESMTPS id 50E9D384A7B
	for <usrp-users@lists.ettus.com>; Thu, 29 Feb 2024 10:12:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="DwQylByQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GygzYcyz1lJwSQvI88+1XDHDsYBx80kN6hJ1NT3aldRCtRgPdB0g29Er13SQPdLxbD/eoL63lp6DFi3e4Dk8Oo8cxGCzFNio92cZyRHM3adwa16T7UfigINTxdrnymappsfgtoP/cKXivYYLPqxJ1AlZv9MnoxF7OgebKOgMCoZY7wp/vO+Chq8NbOculh5AUFFROePQzIH7dDDuFlGUQISThyFlAjt7Kj2YAUa47cBpkx1CyZ/3LNmk+D48QWsNAJeqDemv1lWDAyZBlXqyoqk8N90+RHMUOm0mzopqoBzrG0FevBPXdeN4zz0Zwb+aGYPqnojzYrJrRJcd3eiyGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qq7oRfQHpGScxIPGQX3pMPsYw2wVCCTva6wluxrpJm0=;
 b=b/7wqHi7XVUx8MXO1RC7nwwnG/VzHxqGailNZg1DyI9bhZ5DFlN7bridXmUDE3ymwQTX9JX0ETzKysMdsNzwA4sOGmUpiT472kueo8YzJ2ShfKNNGLRvORuEWj695xippjHZKWqchLZP52VN7BAGbn2oSlFpnGExZqHnk2k//JfYuZuQhdcLf/ihkSEzNjI5nqQSnW7wHilO7YtYEjKNegc1yYJuxqvwBxwmnk1991ydnThtSQQkfYg7gP7iz94YurX4IwoMh8oJWD+QHKqXydunyrvCNqcf55iqQOYvwttMUqowG9saXW9dzdi8IWMvNG3kk/N0hV61vaLEp/i7ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qq7oRfQHpGScxIPGQX3pMPsYw2wVCCTva6wluxrpJm0=;
 b=DwQylByQftB9EqinnZXfSV3Ki+HHDv5F4oAt1aaPdhjRvmVE38/yRtlI596ijJJZ1K5sZA6j3uadS64NTC0F+aeHnfsjGuRWwrvVF1YC4mWP0BmV/oqUO1FW0UJFwkw3Sd/9u8JLyUYEYo/cNKaF7k/zQV0GCqPrGJV/EIDy3TLu8eCW0InjS0naAl5kMBkPk6i1B8hS4vxwXRGfioShQ2lay28e7Z8A2jexQ+UZrLDKbQygo+lj8LZYvXlyEgPp6PDgfqne697qAd7hVQhLwz9BVYWMqDZGZTbZNhAxfeeMauxhxx5G+JgbsBGUxMla4QNzO//3gNNjXj7CpoB7BQ==
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:358::8)
 by AS2P192MB1934.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:551::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Thu, 29 Feb
 2024 15:12:09 +0000
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b]) by PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b%4]) with mapi id 15.20.7316.037; Thu, 29 Feb 2024
 15:12:09 +0000
From: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>
To: =?iso-8859-1?Q?C=E9dric_Hannotier?= <cedric.hannotier@ulb.be>, zhou
	<hwzhou@yahoo.com>
Thread-Topic: [USRP-users] Re: OFDM signal transmission by x310 presents a
 peak
Thread-Index: AQHaZplH2XrWDEBRG067irNLhHrefrEcaBQAgAABi4CABQqXgIAAAJHc
Date: Thu, 29 Feb 2024 15:12:09 +0000
Message-ID: 
 <PAWP192MB2150E897DEF0FB0FBF0D19B8995F2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
References: 
 <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
 <1464756341.27900.1708721099612@mail.yahoo.com>
 <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x>
 <165749366.400969.1708941965618@mail.yahoo.com>
 <aka6xamd3wy2ulbzyegu6hhdd6vbdrts3x44h7v5hnfdn7e4c5@jgm4phejyom7>
In-Reply-To: <aka6xamd3wy2ulbzyegu6hhdd6vbdrts3x44h7v5hnfdn7e4c5@jgm4phejyom7>
Accept-Language: nl-BE, en-US
Content-Language: nl-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [dzfmbBv7Sj/HpOKJKrqqfsYB7rwF9EMl]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWP192MB2150:EE_|AS2P192MB1934:EE_
x-ms-office365-filtering-correlation-id: a69a1241-9b8d-4d07-0f1b-08dc3938cc72
x-ms-exchange-slblob-mailprops: 
 Cq7lScuPrnpksXuV6ij3uaxYEmlbkFesE33WQ3e9kXn+9EfKfEbjd+RMerc9QYnDOGTkcW1aSmqDpyMUqWPd+KhU47lXADXZ1Wj1X4K0s3L6Tsh019B/pRESYty9WmNxpHBtzWbyfBUbMvBF3sRZ45w2NXZDeX3AYuOQLo9xi3Um5PVefg1qz2n99z3K3ed3jnqh4bQ2GhgVc/ZOmFlppKkC3ytfO6AeJYyFh51GKfUgFQQL/hmd7H05CyXpteW6/bwfVl6mAxgdqjXR5U1mpGwbQWoxh+D7w6Ev/mjlQda7ce+Dr2K4KG6Js5sajsOR4tZQruTmAKTx3ZA0ynIh8isXzPTEtrkJBbOxVPvM6UuW54I3bUq0QFehSoNfrQuGdHaJtokKOBvZp51TOPxmiuqMrfevH/KVlCuKQcJk2RjZ/smqQ2B/3LSAocqaN7bZOXkkz7XvDG3so5oRhOwLZR00x42uLhr04FftaTMK6e9m98AsFrwkgXBs4OS/QamM/QhQtUKc7l3soX+l8EXHIqZzO44e2DcoVILzBU7pcGPQpAmn2FkUAbWPTJapeptVb1mrFIZVFtPa7CnmhXVKi9BmL7XyjlHiY/PUqKzHnY/LcKudMqnMk2TJq9PuTJturEfXEF0vp9P6XUQE/Xx/4GVFSCLY5ozuM8QEw900tL7IXNoj3/pwWYcUbmFZNuOiiNKZ3Rnu9a+AKLiNGzLQi3xolvVV3OzxUxssVtknXK+nT/lITx6Era6VRzNu/WZp7PPspuEXO5U=
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7b87fy4Yi7+wWeHNOIeKdN9CrIGqvh5ibQTu/row7wDBqhVTwirOXevE6d8cvLjTEe5Gqy2J4/xvyVrhTMBB46hFRq/Sz88nnlq7Em1aVaOXjNR3267LDmiYgzCIdylGpmOqAc2Rx8f1QDV7r0VWQPQkFdhLEmHebw1LPaqua2U2hPtax+0ntRTdbmkIi4v0aCsYGcaUjvQMt5gpfahaqNF2WxiDWHIIgK6lUxhwWpO8e7yjZXrzyoP20SbebGx+tMqy1NOx4LLf5mC4apkURxPft+YNbSOYpklltW7HjXD82ZOsc8acm0M/0uXuPX6Oz1XEoy+KHWySSxV7EYXy+mA+4+lCANJNfVvgQOCDT2xvQa7jYbOoiEyrEo+vzrzwqLbz5EnDsRelfZQwtKt+iZCouhI15NpsBv0iDwxpU2Ic18kCNNM2F+gs2CNZ90qR13wrRfYT+l5OatU2K1ExbVdxlxML7cm/adoQNuP3OpCy6LSRlpwDowlB3SU86j6NV17rkoRPoAYkJQIggo6sgQ2VPkyrobS7sRJxinY9BFiGJNq/u3EExzkajuaKPP8I
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?0xdnwvPT+O0ukb/ddxqaSPvwBdvbplp4PRB1zk/ZMM9z/uUBAAhBs9s32e?=
 =?iso-8859-1?Q?x2n6SY82ll0p/sI9cZbzqTmcjIYOTBrjdyqcBzoAWqU1HdOuqV6jn+A2Cr?=
 =?iso-8859-1?Q?MkiZDyPAUhmA/kDCQLCT6UyknfP+fZQAgCUcyvfposuPjtMrIlQua4h+Yh?=
 =?iso-8859-1?Q?f2zPlbPTznz1jUjDLi9iRNF09Zca8Kw1CWouUmx3i7QO3xNyV7Dvcbg94d?=
 =?iso-8859-1?Q?o1AL3UVnJDXvBeqzBgB3ddvz+lAUIV6hqm+wRm1nzSbHqBBTFAR0AB8qqI?=
 =?iso-8859-1?Q?GUoVwNEuv6J6In6elX6Slj3UYHLet3ZNOKJUHrewGNzi5c7DiGPqwSbhl9?=
 =?iso-8859-1?Q?54bnigERQZARm6A4bLePl+QCbm0tnIxVs69rv/fQlmNV8Pc6xiqnBit3B0?=
 =?iso-8859-1?Q?6eKtTLzBCvIOd1qoTW5726Z6/V9AKAos1gdBzhcexaFnr1DHYR0YZfEvy3?=
 =?iso-8859-1?Q?8CGH3yUDAOMLvoGB7Mghh4g6tZvapBtvpxKjpemTHybjQ8MkRpptVCHo1U?=
 =?iso-8859-1?Q?j8GlEWBba5prh/AaxGLsPoOnpCLWf4M9GlrggOFQU/k84bgrbhFf9t3gVr?=
 =?iso-8859-1?Q?tFoEC7WVNpC+16tbQbLeljxsXBF6Z+WDB+pnavYj90gLr5ReS4IGvCM20k?=
 =?iso-8859-1?Q?yX5efR7SvQKJoqvGX4KPqksZpMMPJ4T0e+mHDfqpyeEkWI4oOXOb7RCifS?=
 =?iso-8859-1?Q?JvMm0AoRGWsjlNcF5g0beeXblpXX54knCgTYQbJrUk9kgmcos1xWxvxGvU?=
 =?iso-8859-1?Q?QCI8PvaTbMC+b6aW3LpPaC27lQapY0vq5KYu5WpzDJQgcRvbhOrlP9bhXn?=
 =?iso-8859-1?Q?WFt0W6CY8OLUA9OF/Z0HP5UX0e4bhJKYfW+sGTug2TIq4GivBRffPBwrfA?=
 =?iso-8859-1?Q?94Uae3MuLD8bQAGSC7iC+KP0FlvFwuYl6JJyP5rl1U2ia12Rpn4spTcjOI?=
 =?iso-8859-1?Q?7Pn4UDpkI4zDHYMdxwDtNRHEVFoIvZgHC1l14WVV6uShKrd3OUEqK1jkzU?=
 =?iso-8859-1?Q?a90Ol6SHYmR8Fh5SLVvnYPimGuOw0mytJcIiqO7n778hxTTkyIXzvmkk6A?=
 =?iso-8859-1?Q?xoxUwnKd4oJW2fkXnFqMW4XeZyqKvbepqmhgCzJJ5snA0AQAuxzpxMmLaV?=
 =?iso-8859-1?Q?zVzN1VJuPIW8KHo4rF44tKXENdWJyyJQqE/CxNz5CVWjcpV0Ita22RJSgL?=
 =?iso-8859-1?Q?YTexJfLn0sFzbJ//JCbGKEH5w3FpbUzxipa4x/ym13Uaz9ZF+GLAoA4vfI?=
 =?iso-8859-1?Q?ypUJ1Mhzeb6Yn2Mtyvo6AWsg4ZhvcrH5xgdv0lYXpHo8OQsPa3ANOsxDxy?=
 =?iso-8859-1?Q?ToYggJAqw0vZ/Rfe+RYJcCrGwA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a69a1241-9b8d-4d07-0f1b-08dc3938cc72
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2024 15:12:09.0611
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2P192MB1934
Message-ID-Hash: DDHHWAIEDXBAHLADWR767IHZNCYYVDL4
X-Message-ID-Hash: DDHHWAIEDXBAHLADWR767IHZNCYYVDL4
X-MailFrom: tim.vancauwenbergh@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UGIKEPMMU4RWOWFIVV6C6O35INYSOR2B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5873322485751612647=="

--===============5873322485751612647==
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_PAWP192MB2150E897DEF0FB0FBF0D19B8995F2PAWP192MB2150EURP_"

--_000_PAWP192MB2150E897DEF0FB0FBF0D19B8995F2PAWP192MB2150EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all

I want to jump into this conversation as I experience similar behaviour wit=
h a WBX-120 on the X310. When sending a stream of 0's, the peak power is st=
ill -50dBm (cw) at the tune frequency. When running the calibration command=
 on UHD 4.6 i get an error that CAL antenna is not available, while it is s=
hown when running uhd_usrp_probe (made a issue on github for uhd driver). C=
urious about the manual calibration procedure.

All the best

Tim Vancauwenbergh

________________________________
Van: C=E9dric Hannotier via USRP-users <usrp-users@lists.ettus.com>
Verstuurd: donderdag, februari 29, 2024 4:05:50 p.m.
Aan: zhou <hwzhou@yahoo.com>
CC: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Pedro Vieira <=
pav.vieira@gmail.com>
Onderwerp: [USRP-users] Re: OFDM signal transmission by x310 presents a pea=
k

Hi Hongwei,

On 2024-02-26 10:06 +0000, zhou wrote:
> For X310 USRPs, you need to loopback connect the antenna ports.

Could you direct me to where you got that info?
I never encountered it, and I am not able to find it in the Ettus docs.
Doing proper calibration is important,
so we should ensure that the Ettus docs give the correct procedure...

Kind regards
--

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--_000_PAWP192MB2150E897DEF0FB0FBF0D19B8995F2PAWP192MB2150EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Dear all</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I want to jump into this conversation as I experience sim=
ilar behaviour with a WBX-120 on the X310. When sending a stream of 0's, th=
e peak power is still -50dBm (cw) at the tune frequency. When running the c=
alibration command on UHD 4.6 i get
 an error that CAL antenna is not available, while it is shown when running=
 uhd_usrp_probe (made a issue on github for uhd driver). Curious about the =
manual calibration procedure.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">All the best</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Tim Vancauwenbergh</div>
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>Van:</strong> =
C=E9dric Hannotier via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<strong>Verstuurd:</strong> donderdag, februari 29, 2024 4:05:50 p.m.<br>
<strong>Aan:</strong> zhou &lt;hwzhou@yahoo.com&gt;<br>
<strong>CC:</strong> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.=
com&gt;; Pedro Vieira &lt;pav.vieira@gmail.com&gt;<br>
<strong>Onderwerp:</strong> [USRP-users] Re: OFDM signal transmission by x3=
10 presents a peak<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Hongwei,<br>
<br>
On 2024-02-26 10:06 +0000, zhou wrote:<br>
&gt; For X310 USRPs, you need to loopback connect the antenna ports. <br>
<br>
Could you direct me to where you got that info?<br>
I never encountered it, and I am not able to find it in the Ettus docs.<br>
Doing proper calibration is important,<br>
so we should ensure that the Ettus docs give the correct procedure...<br>
<br>
Kind regards<br>
-- <br>
<br>
C=E9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_PAWP192MB2150E897DEF0FB0FBF0D19B8995F2PAWP192MB2150EURP_--

--===============5873322485751612647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5873322485751612647==--
