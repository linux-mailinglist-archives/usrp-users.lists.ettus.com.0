Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAB14C4899
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 16:19:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD0DC384F6A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 10:19:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="iePt+HrU";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0085.outbound.protection.office365.us [23.103.208.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D6DB384669
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 10:18:00 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=gO8goOWFbTzrQwNkRhYH2LjW/WZG+YKqXQeVYeNj7Iq2zxxQRm3k//Q+wog8INZTt45F0mm7ttnmNP/34iVd3wFtjzcz4hipIc55aHzX3oemUdh+u2KWQpIYt8uwAjbVJ4Sg9eW6GXuMusw52gGznSa8isj81SjESVdwD0aq1TvyIm+Mb0BZCDStV7h1+pX/TgFteVPWJL/DauZFaOc2tGA+HEf7JLZsVtsizJ9WbGp83upWCUDGehK3nZ7O/OdUnxXzXaVQfWZhw/09bUCHgKv4pA/WOyR+0tKHS46R+8oKSeH5eYbaDR80+jfCs0fOlSe7vJUU1pP4xATjk3EuCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hhyW9ABDrHnPTcH3b+8jW4MYQXIxMxlj7SD9uasvgdE=;
 b=q+C+QdokUrRQAsbQAubpPB4v2A2avBumTusaL7luOg4w8vqwZfQwDcDClEHhSASCcnDSqYhaHQ9NpGnqLLfY+2y0xeFvv1ImKSZeI5OyVbAjiCjAfmIKXDIHCXNT1dwOvzHJQ9f0SGNyx/9m+QtGYwF7nDFSX6H8DNiIdPS37r4h+zk5YBfMlr/NMOB3oPPg6815PwJCw9wQPX8ORAEilZQ6cuaeFUOPb2MCbQO4mE2dVmNHwG1mXH4NdX5P5Smnk52uTSsOfgZwFR89LdKYxlkDs2xIHKimMk4X6V6wqhTBIXptTl3pauxdub//zv8oc3c+UEAlxwUgg4+DmM4w0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hhyW9ABDrHnPTcH3b+8jW4MYQXIxMxlj7SD9uasvgdE=;
 b=iePt+HrUuzo3GKmfJX6+TujK3dQu3nLmPzw/TZ7hCQzV11VcCBPrul0Pp5LPmhtu3k3sV40BBCIqJyvU4jGk/BgzkXBQu4/N0jshRrJ7hrJDiJUO2ju4ZKsSgdomFl5BgyGls5C+8hBkyz85Rqf8QrM2yVMCKNm+Eypr0rqAtSw7kpqVZLI2JNtGDnx2J5jltRbaILKlexuQ82B9iBUn/hreIV8PWex8/D3+C96Dbo1KMKi+dcFSPZxw45e2iKb3vPNASsWYfei2E3hF08gThqBevjUCOhkcP8w2w102PQbJ2brspXFPizOLdgz6RL9SJLxKDWdvJX2NTJxz7Hi4qw==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1234.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 15:17:59 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 15:17:58 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Question about external refclk into N320
Thread-Index: AdgqWWtHuntLxfN+TuOeyRU2r3pkEw==
Date: Fri, 25 Feb 2022 15:17:58 +0000
Message-ID: 
 <PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71814476-8de6-4138-b658-08d9f87201ce
x-ms-traffictypediagnostic: PH1P110MB1234:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB123424C5337CD28497C05050B73E9@PH1P110MB1234.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NU93gasxDDSLn1yif9zYHfGmuCuzWzEB1sJ5J27m01UNPYy8KsIoTg9VquhWw29YPCpyqP9Ns9wE7cnCXJfHa5sFQ5lmql8LPCgsjQmoOjwyXUyP5EkH2YVue+fW8+9uo9Wq6Jrf2H0B2HuqdiKZL7l+E0dqktcw78O/nyGyjyTzdkub0iUphvJivMQUcJOjseS4paN8mV7yCLBN9c62a4F5x8KvnT7H9Ovm5txs0NC6UtTetTWDxyvY89fXlE+uYC85glLpLa6gNeKz5x1b7TjC6NzAq3qlRvwwu3Ah8O/PIiko8pRffazMsEgaXEFJ59nZltd+H4MaN/KGVESUszEtsS0DIegfgTJPqz5senXMJzyMXk7yc/wQ8o8644LhCYtgSF3kadjX/IDWaqNG6ZQRqWbfIVQh2+dYWIZ58RySw47cdd3/rLr15WgL/7FXEJYuPxn4PT7BtPb6HD8/o/XXGTVeL/ZiHz7cu1vV/e9WZU6F4Bvchf4lmY52ns7/hbzibf0H6wLwbvIPRLA1GZ4yT40ROYeNmLthMTSsZhpq5M/QItGRqntXwsfei0j3KmEzH/SRIx4usZpgDDvqONcDmyMjXDqm/0os5F1vfHwMhoNNjpY0KozqMhSpmSR1B15pTm9qivHci3IY60Dy3A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(39830400003)(376002)(136003)(396003)(366004)(186003)(508600001)(4744005)(122000001)(2906002)(83380400001)(71200400001)(6506007)(7696005)(9686003)(8936002)(66946007)(76116006)(66476007)(66556008)(66446008)(6916009)(64756008)(52536014)(86362001)(38070700005)(33656002)(55016003)(316002)(5660300002)(8676002)(38100700002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 bWW0lncYdC0yzX9lzzHiMlW8Jk+SiIEVh3IODl+04OvwhGhy7IXn9Wz3Tlj44X5mQ/SyVDkQ/b4pCq68VKmZP0PP90pges7qByzDCQi/2sVJBgnViXNhXZyB3pxuH+kXx/B2S62s+vLYkAeulBFidgOeIZo62WDi14UpTHWf9JY4D/LriUcoeQaW+1Z++4W2HZBn0fOhiTJDxUFmxVjzig==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 71814476-8de6-4138-b658-08d9f87201ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 15:17:58.8670
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1234
Message-ID-Hash: JWK3DZYZHGO5XZSPGIPFJHQAUZBNF44R
X-Message-ID-Hash: JWK3DZYZHGO5XZSPGIPFJHQAUZBNF44R
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question about external refclk into N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NE4WV7VT4NINJHLHHSI5VAJPW2TBYYNW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8960924702132792806=="

--===============8960924702132792806==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB16650FA41146FF675795EAFDB73E9PH1P110MB1665NAMP_"

--_000_PH1P110MB16650FA41146FF675795EAFDB73E9PH1P110MB1665NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all, I'd like to provide an external 10MHz sinusoidal clock to an N320. =
 The clock signal level is below the 10dBm max spec for this radio, however=
 it's a bipolar sinewave (1.8Vpp, centered at 0V). I think this is somewhat=
 common for sinewave oscillators. The N320 documentation isn't clear on whe=
ther this is acceptable, or whether the external clock must have a DC bias =
even if its sinewave. Looking at the schematic, the clock feeds into a TI C=
DC3RL02, which seems to indicate the sinusoid must have DC offset applied t=
o keep it above ~0.3V. Can somebody please confirm?

Thanks!

--
David Raeman
Synoptic Engineering


--_000_PH1P110MB16650FA41146FF675795EAFDB73E9PH1P110MB1665NAMP_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, I&#8217;d like to provide an external 10MHz =
sinusoidal clock to an N320.&nbsp; The clock signal level is below the 10dB=
m max spec for this radio, however it&#8217;s a bipolar sinewave (1.8Vpp, c=
entered at 0V). I think this is somewhat common for
 sinewave oscillators. The N320 documentation isn&#8217;t clear on whether =
this is acceptable, or whether the external clock must have a DC bias even =
if its sinewave. Looking at the schematic, the clock feeds into a TI CDC3RL=
02, which seems to indicate the sinusoid
 must have DC offset applied to keep it above ~0.3V. Can somebody please co=
nfirm?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB16650FA41146FF675795EAFDB73E9PH1P110MB1665NAMP_--

--===============8960924702132792806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8960924702132792806==--
