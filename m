Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9754A9064
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 23:02:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FBB6385AC7
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 17:02:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="eEH9Fx2O";
	dkim-atps=neutral
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0082.outbound.protection.office365.us [23.103.209.82])
	by mm2.emwd.com (Postfix) with ESMTPS id B812A385680
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 17:01:53 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=PbsZjcec31OlcJVE7Ii8rhGNUo1y7PByf4zrcnIEPT3nYiNHUToqQVPaO65KgILLfyswpUEDSMmbSkvwlsXe1DyliE5nKW8CAnIIx1wywyVBh53JXit3tFPAzDJaFTBLpL4zdYWS8LivMwpnOxxxivVf0NEfFV2wCpzZBXa07ylYGpxzmiEARrUIKvuQRpvYO2wAu0hIDzk3ejD8U/B6PiXWFL0h49/L+enZrirQC68ZWk6TnhaljqTL/xb4fTX9AKx9Un0MajWoCituGkk2bAePmPuiyxWi24y+XrPF9JbMje1uQJf2UhyMsPscmWFo3a8TVpxxjXberiU8pUvLTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lhbCv9/Y7GYTXdzxMD7mQu2mlQLpn5DmoWyjV8GRoXA=;
 b=NydrAFQfQ57WKRdye4S/mz/YSnQ0xL23hlSkDMotxRpVIK/yQbjWwzTAm1xVuCDu7sC4oZRVhd9rtM5Zrg2K2MUybs5BgOpofXcBGBuLaLzKzoAFbjwijPmOSH5ma84NeMSuHHN6aCb5oyBFj3g43Jsm5WFyI1HBL/EnSyU05d8tapKeIdRP06H2FL+ccWsQlh/cfIR4Jms18UKUctQ7qRe2Rpf/0G0yR1m6uuw0hgbZffrhferEP86GCb9M3IHglukhYxXZPJREsNd9BXvsmLyWs13Q5JwlyvZLxyjI3bahGU1vypspoM4rdXYKqKT6S+OFV5ov2FlkhFA7RubNrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lhbCv9/Y7GYTXdzxMD7mQu2mlQLpn5DmoWyjV8GRoXA=;
 b=eEH9Fx2Od9nbPl3eMSERVr0wcGdX4kHfKaNWFletMGD/PJFVgyyrNMxxW65Tvw61TpB2fne8z+pTJD6NA0wC8T/dQ5KAbsCjz98I5URT5t+HcbNMDQ/miRefY4IK6YxwBtazSURi+WqvzcKZdwRDltN9BK2LmxscMkhZ0ccm5v39KP5pe60QyX2Rk7/KDEJzY+iJdre2g0gsWVSmDA2tQiwN2cy2633ljpPcFHpRJVmcyOwzf4O4HB9CRXSYND/AICuKhNyxRizAPiN1lq5SaC9upjBcP08I9bjjrLiuU9GOnf7reOc6mCcahjELCsYBMY/WyrwV0uWnF6d33eKRWQ==
Received: from BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:187::5)
 by BN0P110MB0999.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 22:01:48 +0000
Received: from BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM
 ([fe80::c9de:c4e7:7128:4726]) by BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM
 ([fe80::c9de:c4e7:7128:4726%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 22:01:48 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320: external ref clock with internal gpsdo timing source
Thread-Index: AdgZSZda+Ix7GgCqTeWN1H6era1WWg==
Date: Thu, 3 Feb 2022 22:01:47 +0000
Message-ID: 
 <BN0P110MB167582CB71227F7F71D2E4B7B7289@BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c834b4e5-416f-4a3f-9d05-08d9e760c663
x-ms-traffictypediagnostic: BN0P110MB0999:EE_
x-microsoft-antispam-prvs: 
 <BN0P110MB09998D4F4752F5B303A1055AB7289@BN0P110MB0999.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Ekel7IVto1MyOgDd6FoItY4tuiv0GASU3SjK9nAuJNQMxS6BqVfHulR4bZ07k5OK2vuEPzpbfpstmiYZxXy27xbbLI8D/Djz4P7+XT7x5PBhyXK5gq/vK7nRNYJlYviW8hIhkUlX8XwuI1t8ImBp5qiDzWOZIqbUHUnmyJSj96Vv8pxhuZMkg3ZIk6PgRhQ/dekcn9X9Z7cYGfB8J9Lk3wFg5MZWoxuMuHIlnVTbdfZIwMuo1lAXdRfTwF4/9rpktX2zH9qu3ICrhDAF7NNSyFWmNjpaIHEMhrJUN36+AtJxsNOH1H61TCmrotEyBcH/m7iWDBgiWkscruu3q1JjHw6ADZA2t/Ug9ZhVkVkCjXr/oCUYJYTEBvdNBv79bf4v97NJy9+OVPtxSIZrtQIWzdXeH1z1xXdbVqZ3wHR4DViGdLhpiDt+TLaha/Td9l0q7ZM/RaNq9254xdQZ/wzljp0j5pflwC/XihQw2DWjthlHVjliEQhzBupo76wfsEcEndagNS0NixXAS4pgmtq+uyLk0wocCJDsauECCUTtKkdWp+xvh8hLt1L2TXoc938Anqjc/n6q3oARzvwXBOkrVzz0h/C78Vzyxlsqj6s2LkYcEdjvjeKUtkKa5U2ec+4rSMUfwvoOG1CA8B2L3kxX1Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(366004)(122000001)(6916009)(52536014)(76116006)(66946007)(8676002)(5660300002)(83380400001)(38100700002)(2906002)(8936002)(55016003)(86362001)(508600001)(9686003)(71200400001)(33656002)(66476007)(66446008)(64756008)(66556008)(6506007)(7696005)(186003)(38070700005)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 acqQsMpmuD7EgERAWTzGBuR7gKeXZ9xbyvAb971B1eE9wNZHSrH87UNOhAgjqxeHdEEphuA6pjw83EWJrv8qaonjwLaz2TXiGtL74MTfg6XeMf3xQxoteQZ2hMlrPyzUE0ja80JWz097kwLKSqrfTaYrkwWwTpGPMEDnpbnP7jcoVGwTLh0gzQDLlaQZ4La9x1/7uovY8KJQz+TnlUvqRA==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c834b4e5-416f-4a3f-9d05-08d9e760c663
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 22:01:47.9679
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB0999
Message-ID-Hash: PF3VTWSITMX5N2ROZL4J4KBJB6JLVRUF
X-Message-ID-Hash: PF3VTWSITMX5N2ROZL4J4KBJB6JLVRUF
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320: external ref clock with internal gpsdo timing source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/44ISWNKSHJIVJKQU7MLSEHNY2TKF25NQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5912681140890056309=="

--===============5912681140890056309==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB167582CB71227F7F71D2E4B7B7289BN0P110MB1675NAMP_"

--_000_BN0P110MB167582CB71227F7F71D2E4B7B7289BN0P110MB1675NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm working with an N320 and UHD 4.1, and I plan to use an external referen=
ce clock (a 10MHz OCXO for reasons of RF phase stability) and the radio's i=
nternal GPSDO for timing (to synchronize capture start times across radios)=
. I found that "clock_source=3Dexternal,time_source=3Dgpsdo" is not a suppo=
rted sync_source combination. Taking a quick glance at the N320 schematics,=
 I'm speculating that GPS-synced timing is also dependent on FPGA-REFCLK be=
ing slaved to the GPSDO, and not just the PPS, is that right? Is there any =
viable way to accomplish the setup I described?

It's also not ideal how the set_clock_source/set_time_source API calls beha=
ve in the case. I had originally been calling set_clock_source("external") =
followed by set_time_source("gpsdo"), which both succeed. It took a lot of =
digging to figure out that the second call is silently coercing the ref clo=
ck to be gpsdo, without any indication even a debug print statement (in the=
 MPM periph_manager code).

Thanks & Cheers,

--
David Raeman
Synoptic Engineering


--_000_BN0P110MB167582CB71227F7F71D2E4B7B7289BN0P110MB1675NAMP_
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m working with an N320 and UHD 4.1, and I pl=
an to use an external reference clock (a 10MHz OCXO for reasons of RF phase=
 stability) and the radio&#8217;s internal GPSDO for timing (to synchronize=
 capture start times across radios). I found that
 &#8220;clock_source=3Dexternal,time_source=3Dgpsdo&#8221; is not a support=
ed sync_source combination. Taking a quick glance at the N320 schematics, I=
&#8217;m speculating that GPS-synced timing is also dependent on FPGA-REFCL=
K being slaved to the GPSDO, and not just the PPS, is
 that right? Is there any viable way to accomplish the setup I described?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It&#8217;s also not ideal how the set_clock_source/s=
et_time_source API calls behave in the case. I had originally been calling =
set_clock_source(&#8220;external&#8221;) followed by set_time_source(&#8220=
;gpsdo&#8221;), which both succeed. It took a lot of digging to
 figure out that the second call is silently coercing the ref clock to be g=
psdo, without any indication even a debug print statement (in the MPM perip=
h_manager code).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN0P110MB167582CB71227F7F71D2E4B7B7289BN0P110MB1675NAMP_--

--===============5912681140890056309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5912681140890056309==--
