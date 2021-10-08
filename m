Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B34264C6
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 08:42:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF7A438444F
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 02:42:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="PQcx45YA";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254029.outbound.protection.outlook.com [40.92.254.29])
	by mm2.emwd.com (Postfix) with ESMTPS id DD42D38429C
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 02:41:40 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lUd0nCYhycoMX08dQITLXJSqT4hZ1zNb/tK2BfwzoEHIpy+ocuTryS/NHIumilWEGlfWNui23YXezU0E80OeRGh20RIrYT7xnG/+4H22M34RXTr328SYDiCBtFnjdq2rIKy3afrZgQtanTyzoFrdngrs4uM5ptrmyOWeiZhLMFzWuruwxk2WQatEGNssCWAvgqhonK/4xaE3TPzAlXjG3wYzpw1IhsoPm7BT2KhK4u8f38kA6r3+KZ/3OiG6VdH3Wqpx2qxttH6ePN0AS+mAcdCX1qgpFBtFCC3/pdyDfuQv0nGLo0AC2l1Bok+6hIJ6EZc4Pl3aZ4Kj9Co4hY3ujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9r74LlnYmfqsCBhD+rEhvsu7hufO6/xsN62nTNOtYE0=;
 b=nM/k8eMENfB9RjEhIZYloXD34nBHV83C832/ePiTUIVdtlUS2b3Z1Z2/qOK6IIRKnwMw4gaOJb11EeojfDllC8QRcn6X1dqPHTwi91LEmilzoNqTSA2vBrZweFbyRn4z7zAnA8p3dlIX1HwTBiF48+IiXH6ga2j0i8HoXTNlLgg/1utrg48Az5/XL+dJ7gb00mp2bZRg4pWMe7cpXX28CBqTxLday9SIEYKnJVBWO4ldXxx8ONPbllbt0WMi6aa8fPtiWIXNl16O+NBlTUBT4jFRxE1XR3C5rWBgYarxDEIxzj6QnoXJLUFUXkSsPZH4pNyFi3kyCz2IIG5FqCjjZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9r74LlnYmfqsCBhD+rEhvsu7hufO6/xsN62nTNOtYE0=;
 b=PQcx45YA8wMydMR8b2qkvhDtBqoJruO4PC3GqzyWuEuDsBn5e004CNAksVLWMcPyVqGlID7yEWiVXYPqPIO4yYXef3JfaHWv7AwRgIJv18buFjvf/oLtrYQFrggNYYVG1eB1Wyfzp5eeGCbqlmRkPkzGPHqAzOE817uptJjxygaO5skkcpnnfxoWGHqdiFuftadOvDYqNu/GW5zDUod4UiKi9rwlL+092FPAPLGXzJQtzQrCV3239L2fzc4LylxEeAqyl6cEbHkKJhG+hQGpO99anxPzlI1kJ08ga4OZ4pdl0cf922cJC/rGgqMxJCGOtIgEVJ2MLkdagUYDIfhxAA==
Received: from SI2PR02MB5145.apcprd02.prod.outlook.com (2603:1096:4:155::8) by
 SI2PR02MB4761.apcprd02.prod.outlook.com (2603:1096:4:12c::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.19; Fri, 8 Oct 2021 06:41:38 +0000
Received: from SI2PR02MB5145.apcprd02.prod.outlook.com
 ([fe80::a5bf:9f6:c240:6124]) by SI2PR02MB5145.apcprd02.prod.outlook.com
 ([fe80::a5bf:9f6:c240:6124%7]) with mapi id 15.20.4587.021; Fri, 8 Oct 2021
 06:41:38 +0000
From: Gabriel Lim <icyveins@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 USRP Dual TwinRX LEDs not turning on properly
Thread-Index: AQHXvA9+NqldoQ9tYES8LKnJZL2vEQ==
Date: Fri, 8 Oct 2021 06:41:37 +0000
Message-ID: 
 <SI2PR02MB51450DFCDEF99A2BE9F70027DBB29@SI2PR02MB5145.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 704729e8-d088-5ce6-84a3-2e5d357d6329
x-tmn: [c1Twq3i5OoK0GnBYTflPpT48VpzlAidm]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a780848-db1e-4e6b-4909-08d98a26ade1
x-ms-traffictypediagnostic: SI2PR02MB4761:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 y5EyXwUZj1MwSO7SCBbCGWGZKaXqkl1XwOfZAKYw0c39SxgiIapXyznelZsm1yii9IlhOODYLgIZaoux6fbK+qUda45SvF3ofHtPC9/4M3wwEObygDjI8CvXo4SuPvq8pE7T/1NEsFgVBJ5G2Jc8HB72T+vfQwId+yS8ltcBc1dmauv/sAJafvwQkav95b78umMvGj06UV5Y99jO8oW2ergcrbMp2//AtdSpltTk6kuWRWw7DrJ4SirOnDh+Ha1fjY3I2KN2tgP/bFzS2+klfP0Q64A9O64DlaFVTX4gZeBb7AuVzet0wWLnp1ReRfKmIBf+2ctP818vGJoWjCEulM58b4js+yEAejxQ/gs4yTDYhtTf04cYMdiANYfTbGNDizp8u0LmW94I2TZL6k1MmRI98faRrp65f8cvI0UuycUrZCCc3DI7VfsN213dLZxy
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 WWlPzfy9dCkUpbsoZX/8DCKFlpLuhwbTFvNXCaNoO7Jig1vhL3S/oAUgidwF815fsYuPFvzOogUm66tP/zIxyLGybhQ0U4li+6RYhx/VSlHO5bynwNbrRWej5HY8yiW7JvM841LEJGXpm3hpmm6NiQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-0bb73.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR02MB5145.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a780848-db1e-4e6b-4909-08d98a26ade1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2021 06:41:37.9621
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR02MB4761
Message-ID-Hash: 3LJTQRIEPAAUP2255Y6RA2OWAKJEZWVA
X-Message-ID-Hash: 3LJTQRIEPAAUP2255Y6RA2OWAKJEZWVA
X-MailFrom: icyveins@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 USRP Dual TwinRX LEDs not turning on properly
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y5ZAUWJS7PPSRZQNFYZJGIDY3RW34WBE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1214039049215527737=="

--===============1214039049215527737==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SI2PR02MB51450DFCDEF99A2BE9F70027DBB29SI2PR02MB5145apcp_"

--_000_SI2PR02MB51450DFCDEF99A2BE9F70027DBB29SI2PR02MB5145apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Am re-posting my issue that I raised on the github here.

Issue Description

X310 with two TwinRX daughterboards, opening all 4 channels for receive via=
 a subdev spec of "A:0 A:1 B:0 B:1", and channels "0,1,2,3", results in onl=
y the RX2 lights of both daughterboards turning on. Further experimentation=
 shows that the order in which the channels are selected matters i.e. Doing=
 A:RX1, A:RX2, B:RX2, B:RX1 (via GNURadio) results in only the A:RX2 and B:=
RX1 lights being on.

The recording itself was unaffected i.e. even though the LED was off, it wa=
s still recording 4 channels correctly (tested with external signal source =
plugged into each channel one by one).

Issue did not occur when using UHD 3.15.0 (and subsequently also re-flashin=
g the FPGA for compatibility, so it may be the FPGA image that is the cause=
). All lights turned on.

Setup Details

UHD 4.0 and 4.1 were tested and were the culprits. FPGA versions were whate=
ver was required i.e. upon uhd_usrp_probe, if asked to re-flash due to comp=
atibility issues for that version, I did so.

OS: Both Windows 10 and Ubuntu had the same issue.
Hardware: Has occurred on both my laptop (i7-8565UC) and my desktop (Ryzen =
5 1600x).

Expected Behavior

All 4 LEDs should light up, as per the UHD 3.15.0 test.

Actual Behaviour

Only the 2nd selected antenna for each TwinRX lights up (example in the des=
cription at the start).

Steps to reproduce the problem

Easiest way to reproduce is to run

rx_multi_samples --rate 200000 --subdev=3D"A:0 A:1 B:0 B:1" --channels 0,1,=
2,3


and observe the LEDs below the SMA ports. I also used GRC to hook up a UHD =
Source to 4 outputs, with the same subdev config, and played around with ch=
annel antennas. This allowed me to change the ordering to A:RX1, A:RX2, B:R=
X2, B:RX1, which then showed that only the second antenna LEDs lit up (in t=
his case, A:RX2 and B:RX1).

Additional Information

Nothing for now.


--_000_SI2PR02MB51450DFCDEF99A2BE9F70027DBB29SI2PR02MB5145apcp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Am re-posting my issue that I raised on the github here.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<h2>Issue Description</h2>
<p>X310 with two TwinRX daughterboards, opening all 4 channels for receive =
via a subdev spec of &quot;A:0 A:1 B:0 B:1&quot;, and channels &quot;0,1,2,=
3&quot;, results in only the RX2 lights of both daughterboards turning on. =
Further experimentation shows that the order in which
 the channels are selected matters i.e. Doing A:RX1, A:RX2, B:RX2, B:RX1 (v=
ia GNURadio) results in only the A:RX2 and B:RX1 lights being on.</p>
<p>The recording itself was unaffected i.e. even though the LED was off, it=
 was still recording 4 channels correctly (tested with external signal sour=
ce plugged into each channel one by one).</p>
<p>Issue did not occur when using UHD 3.15.0 (and subsequently also re-flas=
hing the FPGA for compatibility, so it may be the FPGA image that is the ca=
use). All lights turned on.</p>
<h2>Setup Details</h2>
<p>UHD 4.0 and 4.1 were tested and were the culprits. FPGA versions were wh=
atever was required i.e. upon uhd_usrp_probe, if asked to re-flash due to c=
ompatibility issues for that version, I did so.</p>
<p>OS: Both Windows 10 and Ubuntu had the same issue.<br>
Hardware: Has occurred on both my laptop (i7-8565UC) and my desktop (Ryzen =
5 1600x).</p>
<h2>Expected Behavior</h2>
<p>All 4 LEDs should light up, as per the UHD 3.15.0 test.</p>
<h2>Actual Behaviour</h2>
<p>Only the 2nd selected antenna for each TwinRX lights up (example in the =
description at the start).</p>
<h2>Steps to reproduce the problem</h2>
<p>Easiest way to reproduce is to run</p>
<div class=3D"snippet-clipboard-content position-relative overflow-auto">
<pre><code>rx_multi_samples --rate 200000 --subdev=3D&quot;A:0 A:1 B:0 B:1&=
quot; --channels 0,1,2,3=0A=
</code></pre>
</div>
<p>and observe the LEDs below the SMA ports. I also used GRC to hook up a U=
HD Source to 4 outputs, with the same subdev config, and played around with=
 channel antennas. This allowed me to change the ordering to A:RX1, A:RX2, =
B:RX2, B:RX1, which then showed
 that only the second antenna LEDs lit up (in this case, A:RX2 and B:RX1).<=
/p>
<h2>Additional Information</h2>
<p>Nothing for now.</p>
<br>
</div>
</body>
</html>

--_000_SI2PR02MB51450DFCDEF99A2BE9F70027DBB29SI2PR02MB5145apcp_--

--===============1214039049215527737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1214039049215527737==--
