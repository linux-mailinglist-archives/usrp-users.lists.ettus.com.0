Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 670CC4D448A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 11:25:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64BBA384526
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 05:25:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="PGEBxNjx";
	dkim-atps=neutral
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130094.outbound.protection.outlook.com [40.107.13.94])
	by mm2.emwd.com (Postfix) with ESMTPS id 47862384509
	for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 05:24:59 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SoVGlUMTc3N6088qGf4NSO/dHM6tOjGs6Ki0vq3Q+L7PZM6QuTv7LyyJDFfTtF3NIftmy390tsQybgEfr96cpt0+KmUnh9Cbx6cQT1n8JPEdNIE+MDsUjug30ytmHXRLZ6TZiqjUCmD1cIYsnQQzOFQFsELOynHvLoLqf6Li5E/tWwGFMWbI4iSJs1o3kPcsUH2oIw+fiCegpkLF5fagAH+rzEqQFu3YN9xesfdT9pYqU/3y+3PupMC7aZn46/FyTINiM/BFzy7MsqMQqJnhYrustycE7e592N+V9X38Q0w9XBbMdWD99mKN8mEF60cS73Nx48Pa1ij1UAF8S3f39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/X1ARIqAC1jAzT8fLgtSaNyatkls3wVfR4vb6r3gZ8=;
 b=TN8esmYcjo77dO5bomKQ8feC1LdICBXKXecW5H3vzzbNuRNIzFPN6KY0+obTXFqTWnvjIx6G0jt/bt4E0leuWXIVkrobMwruB3iJ5gQhj/fQY4uHoBCkgkReQmHL9+hZvUX9SlKbUROHDu3CU/Hj37B+GhAvyNexrHYK4VWp6xNAPEY8Ym1Mo1Wy8bh0KO9e/gxhn5p60DPV3Q4jby1h/e09FyFSvIdbYxLX7k1o0CBAUL/I8DAanobIkk+q4ow4yCzAiaijIFgAqLsZonBG3OLH9PyypdEB/c41FQ4bt6kEehTCpHlsINiRpxawMM/no0HKMpFDUIj+vb6rPRtGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D/X1ARIqAC1jAzT8fLgtSaNyatkls3wVfR4vb6r3gZ8=;
 b=PGEBxNjxdga9pl0l/PMzhGe7iaV2PxBOsEtMwmH1auzOAerAbW+SWYpq9I6AYB8D2huvWzS/rocJSMcOc7MIbD8+9xEj+3kJIz60OtBeU9iHgrsTdhthgQT60eBrm7H1od46MyaQfPV7boVftKP9hKWCl3PvSm7cnN+v0Uted4s=
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:36e::5)
 by AS8P250MB0267.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:37e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Thu, 10 Mar
 2022 10:24:57 +0000
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::999a:3abe:8443:5658]) by AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::999a:3abe:8443:5658%7]) with mapi id 15.20.5061.022; Thu, 10 Mar 2022
 10:24:57 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: AW: [USRP-users] Re: GPS alarm PIN set to true
Thread-Index: AQHYMusxjCFeRu2IikK1hJ3r8Z9+v6y2ycQigABY1YCAAUk+xQ==
Date: Thu, 10 Mar 2022 10:24:57 +0000
Message-ID: 
 <AM8P250MB0107C81BA07940913350EBF09B0B9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
References: 
 <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
 <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
In-Reply-To: <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 12220e9d-cfa3-ee9f-3c0e-8f537d22df16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c38b2325-4d29-4ad4-e2a4-08da028039b0
x-ms-traffictypediagnostic: AS8P250MB0267:EE_
x-microsoft-antispam-prvs: 
 <AS8P250MB02676D27EA0978DB2FD04B6A9B0B9@AS8P250MB0267.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bae/YYOcCk52wOkTaNHIHc4D5RNBihKng5KNC2YwxnOEoSbLiUmFzmuQTnC4sTYlBT8UJ4wyPkqKXsD2TYrZbSQ0H6pOD4dLG+oakkVg0R9HJYi+bhcDCx/DU0Mo7TxIzrGFqwmm7BjZJLB50/5gprqIpRp2anVV5PwuD2AbOFUmtSBAWcJ1WqUeuzWCgVsd3gkPaUbmFDfgiTSaqRG+7USf1EU1HEenZg1GSj+yoZSd8Lfp8d8FJx6V7NQ0X6HXEis3t7b5jQJkzSopHidmqhD+JW1FMENwerer+dOE8j8azjn7g9umtmWYQFvS5K/L/4UXHMm9rdPZw1fu0kGZAA2L/6oPiUFgiQrvpUkxl6jUCde7nn0Yv/cxiMyHYKdhVrUsw4BWOAi1tYcoQ2XNX/3UFchLKoKbVx3HoAY4f9R6yNbXN3vAMqfYH1sUKL1BWA962PZwyt/vvbhEoFFPUgw2kHGNgGYw+BMnSiuH6TmMXfOz9l4UEpeArvlPHCWOFzkauXVfSglrNZmOOK6/hxt0hlO+nvHa69SVvV1aI0ki695ACf58k053/yT9Kq3w8yu8OhfjO7HCYzaTIWrV7G8YAE7fJltMMyaDONjewk00r16AdDdHZNPSWfz/8YatvbsAcXlA8hOBDONOReez6wQvYObdAmOWg4DpFTZ50pKjFSnnSRW7rcCdDFUjeOdPsXRIO4XxR9JBH2tu4u5XUw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0107.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(376002)(39830400003)(346002)(396003)(366004)(71200400001)(64756008)(5660300002)(38070700005)(44832011)(76116006)(83380400001)(38100700002)(66574015)(122000001)(966005)(8676002)(6916009)(26005)(7696005)(33656002)(66946007)(316002)(8936002)(508600001)(55016003)(66446008)(6506007)(91956017)(66476007)(86362001)(9686003)(19627405001)(186003)(15974865002)(66556008)(4326008)(2906002)(52536014)(53546011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?c/Bn5zxsF9+UKJIn23vbyD/FMXrlZiY+uNXyn2M2UjJDUvJY1C9W2drpS/?=
 =?iso-8859-1?Q?W7wzwnKDOzTVKWaXfB3+Xjkb56w3owr/f5RR83Dbk+HylD/PdvcKTO7Kq+?=
 =?iso-8859-1?Q?GgBCP5OYgizO8hddV90pDP0hJAD4A5txuYDItJcSmKHGRTrzXWvyGv6o7Y?=
 =?iso-8859-1?Q?zu7tZl+AqVxWBzsnxkYnj7oPuNp5qts07NkjA/qYavm1TqQGwI0yFenPcS?=
 =?iso-8859-1?Q?rfr85nOCDwlGfe70emysp6iv8Jx8SmlJnekmwosEmCQ39+Kph9OKJZFgvo?=
 =?iso-8859-1?Q?H0P1uQU3K4E/vPdXtI+aKTdnRJD0ob5a6dexpwnlormNXVeP9wDZg29J+R?=
 =?iso-8859-1?Q?YYsRkVV8fxcdgyGmLjaZNILnDEioMrA/NoIYE0OGOMZtcHkxVAmeoLx+gP?=
 =?iso-8859-1?Q?v4e60MBk7CbyLiDE27akhxj9yV82aZI97f6g75blouchcgNM4aGa3wjPhA?=
 =?iso-8859-1?Q?PEFALo9tzr06m/INGaTrcx5cEz4HN3cl5Rw5bi8JQ7LyjR4C2xAOJmu8Kf?=
 =?iso-8859-1?Q?kGAtVtOxrTCr0hh8Gf1VS/GV+1RFRjmxQ+XhhBLCzJMv1q8HL3kjER3XAU?=
 =?iso-8859-1?Q?Z1fTL7PmFcYSppFI8ar45iU6Ce2696/gVjhQTzNmkTwQttUrD3OyS374Nj?=
 =?iso-8859-1?Q?7Dienj3bEhW4IbED7BObQ5n+vG/EwD3zhO2CB2/DGCg5zN6kWElPIf8NpS?=
 =?iso-8859-1?Q?sOO4ME1PNf0diP/QZhFhV6BJMydZx1zin1CtsgJDQv53hwWt5qGqZBUhno?=
 =?iso-8859-1?Q?bAz94F28NWzLQnvWRDszrP6flSLyeXvWJ+ewhZ5diE3tM0lwFoS3yAHGep?=
 =?iso-8859-1?Q?K5CBnT3+e1k43fcYALNeOGezwdqcATlq1EdqaZO3LrobNpLS+IzEzPXRSY?=
 =?iso-8859-1?Q?bUOUNYspzJYnTZWchhXq47MsLivq6/pB6gzthHSLhzSwiDjUKXgLeQcduK?=
 =?iso-8859-1?Q?LduWUALzKeOLs49DNMM4ujzWhd0LY1ODHN5uBzbxlpliwuKXs2kPHjytPH?=
 =?iso-8859-1?Q?NPJaj8lV/ZSN8D/WWB46a77DkikZL02rdZ289/CFZAtljZ3UziAMsVDa2E?=
 =?iso-8859-1?Q?Zc033WFP/j80yi9v/jFUbPrawZiVqG/dh1ALPM2hOQKO0pSmOKbD8pErRu?=
 =?iso-8859-1?Q?q0E2cicGGPGmQlNc+Ok9OyouBcw76wsaDnZIN+JCTziT2bnIggdiuF/rZE?=
 =?iso-8859-1?Q?YlvRBklLbQAh2OeWGj5C0333JY1PeHmdbXprUkqn6U8w1heBrhWdtHF9jD?=
 =?iso-8859-1?Q?MZWLVSML4W0a4I/JuASCwFTzesYIA7wxbElu2PEo7UP/bgdB2MnV98I7Aj?=
 =?iso-8859-1?Q?HFodHbohdrG4vJvUpCXBZ0Lge9mFWosNckXyTsUmMeFWjsPPtbva00cLYs?=
 =?iso-8859-1?Q?triWtfbnLBRKZGHhRIbH6GMcZBGg3uajdidrKg3nY0xxR6nJ9jTUM8sQfn?=
 =?iso-8859-1?Q?ChtFxN26n9hnXhL/mEJhoPaHmAE3SmTCmuTajqB0mfJpB5H+LtCAANKX7N?=
 =?iso-8859-1?Q?dWtcqL6bbzCFz20DTrc52c2BPsdiqrLDkGmF7mbaSEEr8UyDz9E/HHgExc?=
 =?iso-8859-1?Q?SHqD94I=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c38b2325-4d29-4ad4-e2a4-08da028039b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 10:24:57.2216
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZkUNL5VEkYkK3ehWjCAeftc59VaOP6c1DDWTKwWdnhvU+ZJazNndJ+VOplX+xLR7htF9Mssn4Bni7zA2CX/sxNq7JrmUzlXBAqiP6O7GeLobh6IVuqBq4hsH+WfAVf2I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P250MB0267
Message-ID-Hash: DWTPIGHP74L7CNEICS4DP6FKNP6SWXUL
X-Message-ID-Hash: DWTPIGHP74L7CNEICS4DP6FKNP6SWXUL
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JLKLXQ5475SYZDRG4VT2QENOXOXSLQME/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1656365385190805086=="

--===============1656365385190805086==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8P250MB0107C81BA07940913350EBF09B0B9AM8P250MB0107EURP_"

--_000_AM8P250MB0107C81BA07940913350EBF09B0B9AM8P250MB0107EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

For inexplicable reasons, it did lock after some time. Maybe the received G=
PS signal was too weak (the antenna was placed inside behind a window) + we=
 waited long enough. However, we decided to use the OctoClock with another =
PPS generator as synchronization mechanisms. Thanks a million for your help=
.
________________________________
Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Mittwoch, 9. M=E4rz 2022 15:44
An: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Betreff: Re: AW: [USRP-users] Re: GPS alarm PIN set to true

On 2022-03-09 04:34, Tobias Kronauer wrote:
If the GPS light is the light left to the GPS ANT port, then yes it it shin=
ing green.

Currently, I have two GPS antennas connected to two X410. The GPS antenna h=
as multiple outputs, I use the "GPS" output and screw it to the SMA connect=
or. Then I probe the module pins (and call the `./sync_to_gps` example).

We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.

________________________________

Could you share the complete output of "sync_to_gps" ?




Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AM8P250MB0107C81BA07940913350EBF09B0B9AM8P250MB0107EURP_
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
For inexplicable reasons, it did lock after some time. Maybe the received G=
PS signal was too weak (the antenna was placed inside behind a window) + we=
 waited long enough. However, we decided to use the OctoClock with another =
PPS generator as synchronization
 mechanisms. Thanks a million for your help.<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> Marcus D. Leech &lt;pa=
tchvonbraun@gmail.com&gt;<br>
<b>Gesendet:</b> Mittwoch, 9. M=E4rz 2022 15:44<br>
<b>An:</b> Tobias Kronauer &lt;tobias.kronauer@barkhauseninstitut.org&gt;<b=
r>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Betreff:</b> Re: AW: [USRP-users] Re: GPS alarm PIN set to true</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-03-09 04:34, Tobias Kronauer wrote=
:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
If the GPS light is the light left to the GPS ANT port, then yes it it shin=
ing green.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Currently, I have two GPS antennas connected to two X410. The GPS antenna h=
as multiple outputs, I use the &quot;GPS&quot; output and screw it to the S=
MA connector. Then I probe the module pins (and call the `./sync_to_gps` ex=
ample).</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</div>
</blockquote>
Could you share the complete output of &quot;sync_to_gps&quot; ?<br>
<br>
<br>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_AM8P250MB0107C81BA07940913350EBF09B0B9AM8P250MB0107EURP_--

--===============1656365385190805086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1656365385190805086==--
