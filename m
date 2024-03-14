Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE18387B9EF
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 10:00:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08498385128
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 05:00:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710406837; bh=Ipp5afW1zubnGoEPXpNAGOw2ShWnQ17NL+Eyxqrk8qI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MjDb+unddp+O4pWekD38mHt+c0laRpThSM4oA6VUKrdZ+CFLFl/YnVM/BlPuhOxNI
	 oF5n3mToDV0AvvPcni4o6yJ7eY4p34TLwZF2l4rZBCkUuau5h35KML67IRsYjjqMpf
	 e3/J0+6ew0ilARj91GO6Sa7pINM26jBGSHG+kbTddIr3WzIN4h10GPZ5s2aXAv03n3
	 CiRgItNqu9CRnWUSj6h4CY8jrEv46gENKzkTok/3MDuuQKcDFu4qxQmpaWwlrVAYr4
	 Q2xric8zeBkF6emKBKeVe6HSGiEZckEAUlZcHVKlboTdI+NthapDcmEHHjNzJ6mVhC
	 KwwbFubJw9Ajw==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03olkn2061.outbound.protection.outlook.com [40.92.59.61])
	by mm2.emwd.com (Postfix) with ESMTPS id E8D66384FE7
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 05:00:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="GnDTWatq";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KyeDTpR+4vfRrvVErgisqQ9ruZfP33DMqzYSfYL0bCq64CaL0mV/LNtbqZbrWx79Fo/5vwkZMXKI3eNWmAELnrGSbt3jRlejBOXxh2Do6AfTYoN+1MiqZRvmv7vPJ5htDHZz4270O5+939Q3WCYQMnG3TbciqKrPE+K/Y+4cUgGIFslcDpY9xdaYDsoMTM9xzS4R9E0/WEST0XKtCdNCb62EuOfvttk2CQoWA/q8Hcv+hsfGCotnRTonwSJZaJFmWfhvbk3ZMZoqBk+iHsZohu/jFV53y6TGM4ChNWXtx5EzxNFRwmnKd9tWQVvP0BkFQIEQrTqn7b5wO6/YvBNV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2bOLXODy27l4w/RfTov3zGLOF8CXUsXtnn2YS1FUP0s=;
 b=jFVMRCvf91tyTPjfvIY/A5lW888ZblM2Sa6P/Zprr515ytaM2i3YfPQQ5FOMF8SUjiowNEuvKfmQXGmgP0B6pdfbKRLi8xoI9hTl0mo035l3h2UZoSxTsBEOT0suHkk2t5cm5SWJRVhj5rAs8ZjOe9v5NkigvnxpL4QaUNppBQGjYCuNeLExvK3HFWmnbHWwXrhCVIh5HWUblQvrBqSh8IarM0BLX1wwA1cBFXcbX5FRzfqO+XZiXuUt/oqOaCVpVQHEl9DAVAPPZW9gJZUHhGE8nn7E2mnjTlUSKbR204reDDvJ8sJIe98eVEHrHvLck72lT8u9I5/xexxT3mlmAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2bOLXODy27l4w/RfTov3zGLOF8CXUsXtnn2YS1FUP0s=;
 b=GnDTWatqSCkgEhhOz6AGiQj6DcVw1fMkyIEk4FcAvfZxURXFM/T9ZSajqT9GvVFYaEq5u1agYvL5D8SlfSgihptJQExtxASmWlwWNC1lll+asfudDROh/eCVxJKJoJnQ0z+cfsH4UDMwd5FDeX7K7jf9XfoYjwdAHjmIVL02MEwjeAc/nR132597LA4n0ME7erHGrcB/b0SKU0vVrF1J+EwLxbfUvu1sMc3/p7t5H3rgSXOZsKVxHQALPKLBbUrG4FYBzVWpHjaOl0E9vY+1cOH2eiQdeOkxVVWNr7+GQ+5iCzCHwpwruwY7a6nnvq67qUP+WEHuueo9sv32fp7zMQ==
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:358::8)
 by VE1P192MB0704.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:16b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 09:00:13 +0000
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b]) by PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b%4]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 09:00:13 +0000
From: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source
 blocks in GNU RC
Thread-Index: AQHadUXvcNFWd4pDWEqwVLtrqhov/7E1vtGAgAExw+o=
Date: Thu, 14 Mar 2024 09:00:13 +0000
Message-ID: 
 <PAWP192MB2150902CD13A1340D43054E299292@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
References: 
 <PAWP192MB21509697372FC12333801419992A2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
 <6e128ccb-4508-490f-9c1c-1b5d2f80363c@ettus.com>
In-Reply-To: <6e128ccb-4508-490f-9c1c-1b5d2f80363c@ettus.com>
Accept-Language: nl-BE, en-US
Content-Language: nl-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [lNrUN57+VAMNjMLdU+Dj5QPcJh9xy8QP]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWP192MB2150:EE_|VE1P192MB0704:EE_
x-ms-office365-filtering-correlation-id: 2a40f447-ec11-4b0c-9319-08dc44052949
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 d4gXagwTgNKPr09linzihcr1ZwgXaLUkD6hopY0Q/0AF4LzUA6M3vfbYhhcsUeFPf1KRyRucZvPfue5z3rPjDb7pp3/2wssM9bbcPkgZcbhaAayiWutbriea0DdzMXM92ZEEsh3Uk83Or+bonyN4CED4IIoXVe0nqk09cOflf+jZXZjPQ9hLwRVP5iAkSDNJODFM+yV7pQnmeDoREJwnPvpRp+6bG7Kc6SYAllBUFVxUf2WqazGzD16E3HBdf7ZuBRTeNILLoI6ue9K9moYFeYjZvcVgtfiPYs5BphSQXJnwDnYoyA6/B+XxMBiwn5cwLct1G/jrJRg5ozLLEQwF/+MnN8Ob+pRYPZ3JihiOrLhMHEakCB78M1DpLGSwYIo7vPJ0lah6TNtqk/DMyRW0yNeK2F8F862ZANcbCnrfZtjwXhCx1QgNrMzu1hdusTqudfztfW++XP0Jr570JTpszWHcrSa6Eaz3PQBmcF6cAu4dHgwmjhDq690GBMhZbaniTrQLC/bYm2CuR/G7ar1Ywiz4pGr6TKMkyYa1XezlTE/Xhvb5++5p5JiTuF2v61Z2
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?drV4tPTUcUMy7qVW5ySft79xYcthLUU2xB0LXmDumiogxkbifWXjVrOzop?=
 =?iso-8859-1?Q?lAwmPT59geJZCkR68mwpN/mxb85ze+A7TbPjEhWTHhfG/9nwkF7bOSJ+WK?=
 =?iso-8859-1?Q?gMI+QY4e0nDRzSvg5euTE8V8RjzxWVV9fa2PjsEuEqY2j9ocnlOulImpjq?=
 =?iso-8859-1?Q?0w6/cJtS3rJNvQZn1GbdZVF3GgKNGJwdE6GhjI0HI2X5204eyhsi041sBV?=
 =?iso-8859-1?Q?yJ7MAbu4XWvBpdlgUOmPsA0Xr6+agNpRG+o5gkjuoKOxAJPnyia8vmyP0z?=
 =?iso-8859-1?Q?wxxqw/dq3NTRJGO/XCj+jr0NWGqSxVkX1DHBT/D8y/XPk7CJ2xDP+gQI5M?=
 =?iso-8859-1?Q?TB/1RxaQhy3zOM9ewzYu6hckm9VbSTI5Cl9sXD9kDX4FwjMs0D8CgZu85j?=
 =?iso-8859-1?Q?wPJo1ZttVjaXcQVQ1lBdQjvb6I0l1a5VgOX9CT3927u+maYDf7v0QfXQ8y?=
 =?iso-8859-1?Q?TrdI3BH5Ws1QGj1EJ1LlT1xLofmlZddRPPWWTNupvOxp3B+tEMM5sNnUFy?=
 =?iso-8859-1?Q?qR97EVvr5XqP910XRkz0Xi5h+SKltMKkT/kby+YKOvjwV+HxbR4gKH7AcQ?=
 =?iso-8859-1?Q?AVNes44up7ZXR/8EJGRcWHZqpFHaopQxE0X9ZL2gW+oa5PYRVOtwSOQBQn?=
 =?iso-8859-1?Q?SGUz8zwx9L93BIyw40hkndirZhcREdgYXV4aN8CsaV0j+t9GgmFdJdQ18Z?=
 =?iso-8859-1?Q?EGBX96jCGT5/2tsHIY0Fxwjavbm+JxLGDi659sVbsfFz450OMMHlxZa4sc?=
 =?iso-8859-1?Q?HACT50FMweEcxk/8Es2zCkbospqMmp57QgvMf5XWZSJTBfgArBjvfmUNBo?=
 =?iso-8859-1?Q?nkX6gB3i+IFi8hhWVlog/RYNStWwmRodpGtha8WzR9FSX7Z0UqBXTuozGG?=
 =?iso-8859-1?Q?gja54A/6HMD9DcuVXInHkmxkhR3fCvEdZMwHLgc3ObG62Kc6WLQCASRCp3?=
 =?iso-8859-1?Q?2A81Az0OMS6z6KwMR5fjgQfAlW/IGljQGSxLXN+QyNGw1UmOuOLTiOoNoK?=
 =?iso-8859-1?Q?OjC3ieTJMU99g62EWQ3ufsBI1nod2u1iM+4P22fcxtyFunSUfEMAmmf7iy?=
 =?iso-8859-1?Q?ozitDtZsBt3x80C82GcWxN1Mx3g0w7LV0b43S/ETBmJm8SGXSG0LE5Tx2c?=
 =?iso-8859-1?Q?EbnI8RXRUMOMBllAwKMqIOll32NPUvwLeyK/5ta9HNU9m0eT54dRONJDBx?=
 =?iso-8859-1?Q?56Ek5mSGr6xqGQ6wdX/SRpJLbVw2EXV/WHX+JfjC0baaJtoxUrlScNAPm3?=
 =?iso-8859-1?Q?wQBWr7ZXd0K+oJazMeQcOAM/5A+Go/afrnxy+OFiDfPNQFlWhy/N6ultzT?=
 =?iso-8859-1?Q?H2rTuF3PEXhVVAh/zJHOLsTHxw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a40f447-ec11-4b0c-9319-08dc44052949
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2024 09:00:13.7606
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1P192MB0704
Message-ID-Hash: KILO37MWOZTLSKRPFQOXH6BX7WGTRSW2
X-Message-ID-Hash: KILO37MWOZTLSKRPFQOXH6BX7WGTRSW2
X-MailFrom: tim.vancauwenbergh@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source blocks in GNU RC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VWUYEHM4GYYHUCVZUTIWGDFLWQV4HXJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1106243229776664691=="

--===============1106243229776664691==
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_PAWP192MB2150902CD13A1340D43054E299292PAWP192MB2150EURP_"

--_000_PAWP192MB2150902CD13A1340D43054E299292PAWP192MB2150EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus

Thanks for your reply! I have been experimenting with the start time. With =
the default being "-1.0" for both tx and rx, I set the tx time within the r=
ange of -0.9 to -0.9999 (to start later than rx) but there does not seem to=
 be a clear difference in the qt gui time sink.
The delay between tx and rx remains inconsistent and between 1000 to 2500us=
.

Is there no other way of getting tx and rx to be synchronised by a pilot pu=
lse for example?

Best regards,

Tim Vancauwenbergh
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Wednesday, March 13, 2024 3:42:33 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source blocks =
in GNU RC

Hi Tim,

that delay will vary, the way you're currently are setting things up, and t=
here's likely
going to be an underflow on the transmitter side, because you start both "r=
oughly" at the
same time, but it takes some time for RX to produce some samples, while TX =
expects samples
to be ready.

Solution is to actually use the "set start time" functionality, with the RX=
 starting a
couple milliseconds before the TX (try 100 for a start, and reduce for as l=
ong as you get
reliable operation without underflow indications).

Best regards,

Marcus

On 13.03.24 14:18, Tim Vancauwenbergh wrote:
> Dear
>
> I am using a B210 in a loopback configuration to achieve delay measuremen=
ts.
> Currently, a basic software setup is made in GNU Radio Companion, consist=
ing of a UHD: USRP Sink block (TX) and an UHD: USRP Source block (RX).
>
> I generate a pulse every few milliseconds. When starting the flow, there =
is a clear delay between the transmitted pulse and the received pulse when =
visualised in a QT GUI Time sink. I suppose this is due to the delay betwee=
n providing a sample to the USRP sink block and the actual transmission + t=
he delay on the receiver side.
>
>
> Is there a method to make sure both sink and source blocks start at exact=
ly the same time or at least can be visually synced? The delay seems to var=
y every time the flowgraph is run. In this loopback configuration, the dela=
y between TX and RX should be 0. When adding a lengthy cable it should no l=
onger match.
>
> In the sink and source blocks I have set the sync setting to PC Clock on =
next PPS, and left the start time at its default.
>
> Any ideas how to get a good sync?
>
> Best regards,
>
> Tim Vancauwenbergh
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_PAWP192MB2150902CD13A1340D43054E299292PAWP192MB2150EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hi Marcus</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Thanks for your reply! I have been experimenting with the=
 start time. With the default being &quot;-1.0&quot; for both tx and rx, I =
set the tx time within the range of -0.9 to -0.9999 (to start later than rx=
) but there does not seem to be a clear difference
 in the qt gui time sink.</div>
<div dir=3D"auto"><span style=3D"font-size: 12pt;">The delay between tx and=
 rx remains inconsistent and between 1000 to 2500us.</span><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Is there no other way of getting tx and rx to be synchron=
ised by a pilot pulse for example?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Best regards,</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Tim Vancauwenbergh&nbsp;</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, March 13, 2024 3:42:33 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: B210: synchronise USRP Sink &amp; USRP Sou=
rce blocks in GNU RC</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Tim,<br>
<br>
that delay will vary, the way you're currently are setting things up, and t=
here's likely
<br>
going to be an underflow on the transmitter side, because you start both &q=
uot;roughly&quot; at the
<br>
same time, but it takes some time for RX to produce some samples, while TX =
expects samples
<br>
to be ready.<br>
<br>
Solution is to actually use the &quot;set start time&quot; functionality, w=
ith the RX starting a
<br>
couple milliseconds before the TX (try 100 for a start, and reduce for as l=
ong as you get
<br>
reliable operation without underflow indications).<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 13.03.24 14:18, Tim Vancauwenbergh wrote:<br>
&gt; Dear<br>
&gt;<br>
&gt; I am using a B210 in a loopback configuration to achieve delay measure=
ments.<br>
&gt; Currently, a basic software setup is made in GNU Radio Companion, cons=
isting of a UHD: USRP Sink block (TX) and an UHD: USRP Source block (RX).<b=
r>
&gt;<br>
&gt; I generate a pulse every few milliseconds. When starting the flow, the=
re is a clear delay between the transmitted pulse and the received pulse wh=
en visualised in a QT GUI Time sink. I suppose this is due to the delay bet=
ween providing a sample to the USRP
 sink block and the actual transmission + the delay on the receiver side.<b=
r>
&gt;<br>
&gt;<br>
&gt; Is there a method to make sure both sink and source blocks start at ex=
actly the same time or at least can be visually synced? The delay seems to =
vary every time the flowgraph is run. In this loopback configuration, the d=
elay between TX and RX should be 0.
 When adding a lengthy cable it should no longer match.<br>
&gt;<br>
&gt; In the sink and source blocks I have set the sync setting to PC Clock =
on next PPS, and left the start time at its default.<br>
&gt;<br>
&gt; Any ideas how to get a good sync?<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Tim Vancauwenbergh<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</body>
</html>

--_000_PAWP192MB2150902CD13A1340D43054E299292PAWP192MB2150EURP_--

--===============1106243229776664691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1106243229776664691==--
