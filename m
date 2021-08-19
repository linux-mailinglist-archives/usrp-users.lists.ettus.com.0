Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0223F1066
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 04:31:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A8DB383C52
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 22:31:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=msn.com header.i=@msn.com header.b="du0iITtb";
	dkim-atps=neutral
Received: from GBR01-CWL-obe.outbound.protection.outlook.com (mail-cwlgbr01olkn0147.outbound.protection.outlook.com [104.47.20.147])
	by mm2.emwd.com (Postfix) with ESMTPS id F30D0383BAE
	for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 22:31:08 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNXXx7WCHZQpl7fM7BwA0JNJPvHZSqFRFfEv72P5bpWqecsMmfv3i+e9QPlfT4dn15HrtLCeB33QHbTig+QfUELuYVchs2TNhc3ZeweoSlK2fj6eqp8/HFyIyFEv9reYMf60f7D+Xb0Ng3WdCf5B/9nTGCu5kFco80+ixxt/5UHa1uFj+SOM+f+OMA2Olg/Aq4nvLevL1h+mh9DDbyNIqchjNTbJVFUUuuVeWyN9wGtS4P+EUHq78RGpLMVLq3qyEszfvBq22UACNml8O4HiIPmbiZ99MLJEFmUI9jhSQlzMbTBrsMBDhKvBGixwPmH6E5Imaz3S6rrDa3eWgcw+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KcGlP6Wlf5FMA0lDKkkEk3e1nS3um+Vu02p+VsOJNjY=;
 b=RXCG77Rn09di0sc/prtWxuMEcEZyj1QMZhfTNKN58SL2GwHx03bklGbvIAjiGiF6WWpQ7hRI8NSEqttQpWNtrEkjR84QdWh0xLUxan8so1yTvRQrDJdJlebAobfXIzOsLsA8C3Y9is4s/9KuyUY/HLlgkpDZOrNh7i/0RD9pvHVqyhW+kgyZbet8tiSrKG35FEvIKogLTY2Og0I+2vtdcAwhKmEE0fAiTlIf64TlWoRZxhrHdkqTkP+75X/vPyY0GAcfbKKiLf7y6zPGVIRXP+IGBDWqArzpPzzwgrI7rum9PLGqEW7ybaWXlXjr6jQ93p+3tIOERwtE02Ww7ENaDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KcGlP6Wlf5FMA0lDKkkEk3e1nS3um+Vu02p+VsOJNjY=;
 b=du0iITtbvi5uJ9fzfGGpCGiOBkvTIazreWlm+FfGoxhGb3RuU2J5NxVewwTWtA7j1IQ+JqBdl7f5HPO0zzjvaA1slRh8Lr42gCcQZZseqn5b+bmbyT+aKHzpKGy1ORJbuFhUcDty/yeDaCGbOx/35ys4nUHXrcCK7YhxV9hsgN8Tph/4rCbFYmk03nbR49ZE0/PR9PHAQp6PnzcSICGqcx2jFlynYEB+w9DYBn70v32/JCeP4+gz/F7FKO7E285zTklQyTsHJUNVqBW6S3JsQE6+rltu2OUKj5wELqiZk0n+5iIsvUjOQqax3Ne6UIoIYzK6XJYU3K/AFQxC3+oLbw==
Received: from CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:d7::9) by
 CWXP265MB3896.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:103::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.17; Thu, 19 Aug 2021 02:31:07 +0000
Received: from CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
 ([fe80::15d2:c20a:e0e1:452d]) by CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
 ([fe80::15d2:c20a:e0e1:452d%5]) with mapi id 15.20.4436.019; Thu, 19 Aug 2021
 02:31:07 +0000
From: ?? WANG Cui <iucgnaw@msn.com>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: How to prepare I/Q sample for tx_streamer
Thread-Index: AdeUoUkrCROuZwQ3RS+PO+7Jd8zf0A==
Date: Thu, 19 Aug 2021 02:31:07 +0000
Message-ID: 
 <CWLP265MB339632A5A9B43B1C73C5E426A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [rEO4UvqyJ7iCPq1kT04Ma8LMF9mJeYMr]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 013358c8-14d2-4548-29b0-08d962b96633
x-ms-traffictypediagnostic: CWXP265MB3896:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kipcDc3INLYdRhOX8KVDNCkVyPIUg60HFo5pjcb194QzYjCbRZqW/kp57/7ab+qP8h5bRyfTX4qmEswKS6aV26+jYZmgSxMUBEbnrnXXwTHjM+ZyMVLTnpH96x3dnroyrT8nLQCCWQ7ejBvpcUEvDmwQ5MQ3kw4/e/zadauxKNls8wNvG2YaZhSdyyZslXUMlmAmJCVvPE1ZVVvcL1/+z5Ib2P2aUHSfXCvyqQlNUKsrDUNR1xyhvl8n1QP4GD/jvojJ715ojJAPGmwTz7u5YkgANEsTrsF9bAsx4aMzGB04JF+M/ZOTZRJqeQhsIyyU/d1kLyAkyVRU2CwW++f1ePBqAMN8s+RUdqSVhkqTfuSp42IYxFVjc+EcHfZSEFxN9+ru+aZRPpQvnAvRDRRdd+oZecXg/j0+OY2naizt8ppufXrRWDI00KFvtcpTDM8W
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 bzxrQYZ1d5DWYvnIM3MTN7R7AMXB/eZV7vvKp+qoTnppNJpOGS922CXpAlepX3bQXJw7AdPG34SoTKTh0PDItY47Q3jh2Rno3IBuJILG5y8h/wJEYfT745BZ1vOPrsusDRX0OCiMsY2cOZVSuuR5Yg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-1ae57.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 013358c8-14d2-4548-29b0-08d962b96633
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2021 02:31:07.1591
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP265MB3896
Message-ID-Hash: GTIARAEWET6ZL6N3ITQS4X4XEPZGY2RS
X-Message-ID-Hash: GTIARAEWET6ZL6N3ITQS4X4XEPZGY2RS
X-MailFrom: iucgnaw@msn.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to prepare I/Q sample for tx_streamer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7Y6LIN2NXBTU33CVSTMZG2X5DLTEY5CF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1246902987324546367=="

--===============1246902987324546367==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CWLP265MB339632A5A9B43B1C73C5E426A5C09CWLP265MB3396GBRP_"

--_000_CWLP265MB339632A5A9B43B1C73C5E426A5C09CWLP265MB3396GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Maybe I am asking a newbie question.
When use tx_streamer::send() function to send signal, the required format i=
s I/Q samples (say otw_format =3D sc16). I understand should provide I/Q sa=
mples buffer in arguments.
I am wondering for the I/Q samples, should I provide binary values buffer (=
e.g. I: 1, -1, 1..., Q: -1, 1, -1...), then the USRP firmware will modulate=
 the binary values to specific Cos/Sin waves?
Or I should do the Cos/Sin modulation in my program (e.g. I: 0, -.001, 0.00=
2..., Q: -1, 0.999, -0.998...) before pass the buffer send() function?
I searched the documents, but can't find answer, thanks in advance for expl=
anation,

WANG Cui


--_000_CWLP265MB339632A5A9B43B1C73C5E426A5C09CWLP265MB3396GBRP_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:DengXian;}
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
	font-family:DengXian;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">Maybe I am asking a newbie question.<o:p></o:p></p>
<p class=3D"MsoNormal">When use tx_streamer::send() function to send signal=
, the required format is I/Q samples (say otw_format =3D sc16). I understan=
d should provide I/Q samples buffer in arguments.<o:p></o:p></p>
<p class=3D"MsoNormal">I am wondering for the I/Q samples, should I provide=
 binary values buffer (e.g. I: 1, -1, 1..., Q: -1, 1, -1...), then the USRP=
 firmware will modulate the binary values to specific Cos/Sin waves?<o:p></=
o:p></p>
<p class=3D"MsoNormal">Or I should do the Cos/Sin modulation in my program =
(e.g. I: 0, -.001, 0.002..., Q: -1, 0.999, -0.998...) before pass the buffe=
r send() function?<o:p></o:p></p>
<p class=3D"MsoNormal">I searched the documents, but can&#8217;t find answe=
r, thanks in advance for explanation,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CWLP265MB339632A5A9B43B1C73C5E426A5C09CWLP265MB3396GBRP_--

--===============1246902987324546367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1246902987324546367==--
