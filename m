Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0375987CB99
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 11:46:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08E1838519D
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 06:46:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710499575; bh=Ij47xpYYWhSGa1+JiNbfgTFPS3BN9WAy3Dh5K4q7J6s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cUrcCBAh9qVeuFNcte3q2RtPdxPp2xOaChKR+YAzh8Ld9OIqdC1dLXOsY0ftOCaOh
	 IPCtwmqoFlWDWg8/8WzYS4hEeIVM6UEnTtTXYou43BirGIJmMwjov8kHvclvhoBh11
	 rrn0z+CpSIh7DNgb6qu+geFM+wYsHA3CpnI3ttmzcSALXilie2L3lSYygCp0KhFw+h
	 rlly7gbKcJyh6eoXmrlC4krfzUQ5POCd74HZsW6v7XLU+H48CjuHHw5wGzKG0QiqBD
	 4KWpBeEjJ9YfO/TU+UsFSfr91zv/RhO1WOe0m8XGi2C9dJ8W0Yt3xfNhBZeJFM9KlB
	 zRS0brGQePxWQ==
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04olkn2011.outbound.protection.outlook.com [40.92.73.11])
	by mm2.emwd.com (Postfix) with ESMTPS id 4BC0F38519D
	for <usrp-users@lists.ettus.com>; Fri, 15 Mar 2024 06:45:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="Mbqf1ZLJ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UB3QkTQnBSTKHSs8VoiYFvYXNgmeC49oDz8YAk2nHMourhDjz8wGziYQTUrvefHwH86zkIx/2lVB7QLZKjwU655Q2F4UPNkMXfg07nZa26iCY96ae9Rax74HVA48l0xtdVhHp89wKjY51Z0KO2znIfkOLOJ65nwbSb3vS1+EreEK83JAZxwJiUpRCQMPJ3iQmwM8TYcDC7Ca1++k5y446iaWs39XZwNy/qbjiUMjZN2J7ga4tzb763lLcQZJT7GU7uRpnq7A/hme21m2MaDew6g3q24VLMzmvfgUuQmFK/chW0PPEopjlddvsa6P95sNU0iCNMLfZEefx4qGjFyiRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXnqsSiOQxEiKVO78zsKcG5RgBUNKEj1WkwQE3SVl0I=;
 b=E/ABLYSO4gq7aPdDdYS5HhV/AnkpXqz98MFJYvtmmH2l+l3IhSq0mgPYMl+Jh5qjjiC3fl8aqL9gkiVsifRdIgjvCma0lw+RK3LK1Tzo60fVRejl2NRYqK3OH/oVtCyQpry9XXYv05WMY8J1uqZabzmmu4h1bcTusNvJUyiUwWUwekr/vDJFiULrip0XuzCReluh+2LlOGzkkrpiheiNWz8XYPFuBPwuSXJnb2dYGdnApwLxwK5X+FzucEZOgwoYwd0sM52lwG9NP1X8xpwdj1RJp23eizUr+4OvvOEDLWeRgcugHQhRrg5IdMh1zHa9ik+4m4j8RTvX75yHV9RM0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXnqsSiOQxEiKVO78zsKcG5RgBUNKEj1WkwQE3SVl0I=;
 b=Mbqf1ZLJq7Y9Qu4l0qP97F7bmeCbadQd0XLJjEd6QlerKto1FyUyRQ/JGqttwHd4pV02rR0ttlV4BiYVfmDgw3GZDjXA2K8Kl3bI0F1YvIeflWDGjkS1aJsFf8DyiWggRcBopcXecy5MOF69cdi/8r9jlb08CtZMQL1zwkEhFRvyheqxKRcANB1EhykiCWBNpJ8j3Pv7Z6tMC31lOxq+LnoaPcRYAsAHbGmPTqFI6R8x15tAJc8/f+/qq66J4P83oF7UxUJHgqSSSV8n9y5eI9qVSUaEUvw9r09zDQpMINqARU/xp5YaAIZuqeKKcygY55SSXh9uhX8Q3t+PD7C+Yw==
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:358::8)
 by AS4P192MB1814.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:519::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.35; Fri, 15 Mar
 2024 10:45:40 +0000
Received: from PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b]) by PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
 ([fe80::6efa:b54b:96bf:e85b%4]) with mapi id 15.20.7386.020; Fri, 15 Mar 2024
 10:45:40 +0000
From: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source
 blocks in GNU RC
Thread-Index: AQHadUXvcNFWd4pDWEqwVLtrqhov/7E1vtGAgAExw+qAABhsgIABl62t
Date: Fri, 15 Mar 2024 10:45:40 +0000
Message-ID: 
 <PAWP192MB2150C43CB53839BB971EAB3E99282@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
References: 
 <PAWP192MB21509697372FC12333801419992A2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
 <6e128ccb-4508-490f-9c1c-1b5d2f80363c@ettus.com>
 <PAWP192MB2150902CD13A1340D43054E299292@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
 <6a3c3fe6-2b35-492c-89d6-0d62b62956f3@ettus.com>
In-Reply-To: <6a3c3fe6-2b35-492c-89d6-0d62b62956f3@ettus.com>
Accept-Language: nl-BE, en-US
Content-Language: nl-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [gn/ViHdsVrwJElSxfHP6/i6lDTju+K7z]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWP192MB2150:EE_|AS4P192MB1814:EE_
x-ms-office365-filtering-correlation-id: 70aaa803-f1fe-4a43-71ac-08dc44dd0ea1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8L+UFjDyXLP1yqPA7XEyBbUYsuh6nE5w0O+V73whusz3ZFS5mtJ5auqa5wVB1QHRABOyBw2b8+vEbawRG4QAdB4PoPMmJQp6ThAwhgQXJkXc2Rue1fG9yX68L3ci5LUAyNMgfaRXkF0wsNGKdUU+r6WaNmEtPcFSmKWF4Aqm92IuAPt9/avyI2KzBiIFrj8J+q2kIELcm+7GL4OHMlLxNf4Ke7LyQAFIpFXaaILsMHcBXAv54TsjOv8/XsS6Bua5uG7pprVp/ws+Nk7leOCoAFK1xfvT63EHtQONHozwC6pABOhy1ZbSZsZAVKv+Tc7GyqliXsf5zlgQoo45vdiZqwc+cI96tTqVlAiaaHE/koZHqJG5dbIfjwm3LTcTqy/oRVwavOcg3vL3U0mI38Csm9kO5NXnR0hwMB96lYlCsJIHCsYbWkem8xALUDk+PnsGLfOS+4UdXyM9y0pxEAJlTWPvhk59n46sxEBZ8U0PXZ8OaMC4UCyGZ/qYLUdJtkOVHbta17fNQkWF6VOzq53VACK/ut2sUOeIu3AkayrhDwLMlVpKlkqqIuSEgiKQc41G
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?LJVJJzfJnHaYIIrhZIn5rRv650a/mXCo82k4vPcITk2Za0KLT6y5QlDWRd?=
 =?iso-8859-1?Q?E70uQZc7ICV7CK1Gce8UqCshuTD1EGTfYpOhlqOGCxUJ1rskOJn5N8K1Aa?=
 =?iso-8859-1?Q?oHokcVAEWx7045o3Rkma+Zf/bYGVB2eaL7pxcbXOlNsCWW/9j/zDSrHTmO?=
 =?iso-8859-1?Q?ea9Sg2YMoSu9xEGDvnpQPjK7F6zos/VW5R0FR/ekfyzfrlpimwgVH3l7l2?=
 =?iso-8859-1?Q?WkBscjLUnYB11xNj1xN/0+afBHun25tvhUqcTy7+kCTc5egA2YJMSe/E77?=
 =?iso-8859-1?Q?Epw4vdLPh+eNTDKiQeLj4s8uFduNwxMt/fLB4KKQgTKcXoo07BIZJWHW3i?=
 =?iso-8859-1?Q?gtNdUC7JTYhRrTjnCWE+T5ZDUqHhlJiNxxjcPVgDti6zB4PAzknRAPuLJ/?=
 =?iso-8859-1?Q?IiaWUMtztbSYLeTEGIuJOZDywcJ6uRe82Lfu+IBuKwuQ5e4j/RJLopqpsf?=
 =?iso-8859-1?Q?LhdUUHq2Ky+NMwGNpqxS4ceo8MO7RUnqPkp4t8SmTBcMRbw6HRy2fbMBEH?=
 =?iso-8859-1?Q?CtjmUX67MVQXk+cUeSOHHH5QlwQI+aieUUHqrbmH5B+f27f5j18yNh2Wmb?=
 =?iso-8859-1?Q?rwNtHwD/1Hhx+rokamn5ZuuNdyuWKoY09nmwyNuhgvx0Bu347GMIGp83vb?=
 =?iso-8859-1?Q?iBjqqhcajTHxGs3tQzgj97ujL80GoqKbeto5KFbyrQVvTL5MLoj5r1qsUd?=
 =?iso-8859-1?Q?GTZTo6BbNSoltoTlyAWDYYE6yNi+STTDppZJNE3KwCOucDu1rBfJ3sWhCq?=
 =?iso-8859-1?Q?LfEQpZMi1UyCv+LoIfchX0RJU48F2jGU+Cm+EbB1pASc2dVliOF2LHzfrw?=
 =?iso-8859-1?Q?Aa9Dwpx9WeKwrFpLKjF60aR81Jfibn4pZpM2h3eSdZYp5NHBwVQqOMT73p?=
 =?iso-8859-1?Q?sL/ADgxjQzNbOS4oLIrywWoXOAhsV38li3gCM1E0b7lGY1k5gECFZlqPrZ?=
 =?iso-8859-1?Q?wbhZfO7AFwkogkLGOUcLV2G1eZqml2zf/9a1A8meA6tW25p8Gq1fdj/NgY?=
 =?iso-8859-1?Q?5T/pAMskmntMf/UzXV2lXAq6I1OJ+qq0Hwomk1nm0eK/yZo9/qaL/zquqa?=
 =?iso-8859-1?Q?JT/H+WmAJXQQLvXErjK1ru4DpPFmY81L6Mn5GacvDQPrt10IU0sjmNC+Sr?=
 =?iso-8859-1?Q?KjxNVVP2PB05JnnsIYiI53gDilwGbDztoI2CmCzGjM9NM5KYP3XP4gs5uf?=
 =?iso-8859-1?Q?62bHkUHmgswOFtphgSq9umpnEfaLiTfobsmHqmLfpQmQZvLyhBwdar/zXT?=
 =?iso-8859-1?Q?fgEti9ixKVIsiMBc/5zJsb7yIZY6qObqcd3O6ueoIDwKShU6xsGXULRJiG?=
 =?iso-8859-1?Q?lz6B+wL4SFIngKsKdfHgcqJw8w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWP192MB2150.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 70aaa803-f1fe-4a43-71ac-08dc44dd0ea1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2024 10:45:40.3373
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P192MB1814
Message-ID-Hash: NK62DACOSYSCIUKPX2KF6HMELLCGAQIC
X-Message-ID-Hash: NK62DACOSYSCIUKPX2KF6HMELLCGAQIC
X-MailFrom: tim.vancauwenbergh@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source blocks in GNU RC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RDZN2VZ62V435WB4QHIQ6PIGWQDZJG7A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8873749651837753588=="

--===============8873749651837753588==
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_PAWP192MB2150C43CB53839BB971EAB3E99282PAWP192MB2150EURP_"

--_000_PAWP192MB2150C43CB53839BB971EAB3E99282PAWP192MB2150EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

After some more experimentation, I have found that a start delay of 0.5 sec=
onds on RX and 0.49999345 for a sample rate of 4Msps seems to work great an=
d can be repeated.
I do get a series of L's at the start, but they do not seem to influence th=
e stream.

Thanks for your help!

Tim Vancauwenbergh
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Thursday, March 14, 2024 11:24:19 AM
To: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>; usrp-users@lists.e=
ttus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source blo=
cks in GNU RC


Negative times don't make much sense, the device keeps positive times; the =
-1 was probably just mean to signifiy "immediately". So, try with, say 10.0=
 and 10.1 .

Best regards,
Marcus

On 14.03.24 10:00, Tim Vancauwenbergh wrote:
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
From: Marcus M=FCller <marcus.mueller@ettus.com><mailto:marcus.mueller@ettu=
s.com>
Sent: Wednesday, March 13, 2024 3:42:33 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
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
> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@l=
ists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:u=
srp-users-leave@lists.ettus.com>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_PAWP192MB2150C43CB53839BB971EAB3E99282PAWP192MB2150EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hello</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">After some more experimentation, I have found that a star=
t delay of 0.5 seconds on RX and 0.49999345 for a sample rate of 4Msps seem=
s to work great and can be repeated.</div>
<div dir=3D"auto">I do get a series of L's at the start, but they do not se=
em to influence the stream.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Thanks for your help!</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Tim Vancauwenbergh</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Thursday, March 14, 2024 11:24:19 AM<br>
<b>To:</b> Tim Vancauwenbergh &lt;tim.vancauwenbergh@hotmail.com&gt;; usrp-=
users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: B210: synchronise USRP Sink &amp; USRP=
 Source blocks in GNU RC</font>
<div>&nbsp;</div>
</div>
<div>
<p>Negative times don't make much sense, the device keeps positive times; t=
he -1 was probably just mean to signifiy &quot;immediately&quot;. So, try w=
ith, say 10.0 and 10.1 .</p>
<p>Best regards,<br>
Marcus<br>
</p>
<div class=3D"x_moz-cite-prefix">On 14.03.24 10:00, Tim Vancauwenbergh wrot=
e:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"auto">Hi Marcus</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Thanks for your reply! I have been experimenting with the=
 start time. With the default being &quot;-1.0&quot; for both tx and rx, I =
set the tx time within the range of -0.9 to -0.9999 (to start later than rx=
) but there does not seem to be a clear difference
 in the qt gui time sink.</div>
<div dir=3D"auto"><span style=3D"font-size:12pt">The delay between tx and r=
x remains inconsistent and between 1000 to 2500us.</span><br>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus M=FCller
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:marcus.mueller@ettus.co=
m">&lt;marcus.mueller@ettus.com&gt;</a><br>
<b>Sent:</b> Wednesday, March 13, 2024 3:42:33 PM<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:usrp-user=
s@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: B210: synchronise USRP Sink &amp; USRP Sou=
rce blocks in GNU RC</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">Hi Tim,<br>
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
&gt; USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated=
" href=3D"mailto:usrp-users-leave@lists.ettus.com">
usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</span></font></div>
</blockquote>
</div>
</body>
</html>

--_000_PAWP192MB2150C43CB53839BB971EAB3E99282PAWP192MB2150EURP_--

--===============8873749651837753588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8873749651837753588==--
