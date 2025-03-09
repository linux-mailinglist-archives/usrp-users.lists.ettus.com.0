Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AE0A58893
	for <lists+usrp-users@lfdr.de>; Sun,  9 Mar 2025 22:42:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31384385E65
	for <lists+usrp-users@lfdr.de>; Sun,  9 Mar 2025 17:42:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741556567; bh=rFa6GqeYae3kWJdP0qT68RK4fUGmD2DZrpaWDBeorpA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rX35xo8aLv/n6DdIyYyEPPM0HnunJOSno1wK2fq9bHQ/pndmwJPNzxXgHptMQcN1g
	 WRcWOJxmImOy4H2siwwjzNhaJEhdeG3eQ0+D4ZWxvOu0LBu/w0ysD5J4CG736HiTaw
	 n2ZTrLPvgxziFKf5mKIyDHTvNsSWNDXg2Vj5CZJ8mKSohaG20Dvz9X8G5aKQNNXEsJ
	 4/sEG25rA5EeMZwiipxONeP8/azTCBYqTHUQNvASEDYZYQpGNj/JEPxy5cB7F4b6Rp
	 UvtksMNGFgZYrZsJzgBuQoIJvIWITxBsLcPrjJFdC+mkly7oR3FQ2QojWlhsFk6Npb
	 WVEsSvBBMJ4AQ==
Received: from LO0P265CU003.outbound.protection.outlook.com (mail-uksouthazolkn19012050.outbound.protection.outlook.com [52.103.37.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C668A385D42
	for <usrp-users@lists.ettus.com>; Sun,  9 Mar 2025 17:42:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="T1Ezy8Me";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ccZc5Pb3B6RyX8C1xg/cNyq1+KNW3xxfKQbWUZ0HGQWQRTqyF1szs50m1q3keT9evnoeRrWO6WpCVP3gmuzN2iAe6+oUpOJpoBIft9I58PANJ613wGFIKNFQDLA9k3VNSnDYZAe2wi+K2lL0NLNaO0dNWTKND17wdcWrG8ZiFV3R5VqjCFA9TEjWF5gNYUQqlU3ZBX31mGrXHChiuhv+HbCO0T1HNdDmWxvUfvvkzz1w28ygEFdZP/uAAWSjWftDQBV5n8IJOFQ7jEQEaeWxEGDmrDhFLmnHv7SiTpxvxE0713UFhQ/ubXnI/swTCjW7LJcE337N9zHWAjfYZ+1SiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IrpltWwBqh9lv5E21gzUmnTjuNjXXigTu4Df+62hlZ4=;
 b=KzHt9NqgAWx3Fbu1LfUz1gtBk9Z2ir6HL7wYgKA5zfX+awrsd6hdOOlvrLWZFHygTGVS/bDXKcugPGmdfsWh78Wut3YiTxlrpJvcD3G7Av+kf+YtLOfurUZS00UgVE5ISpSPN/SAyIH7/FdzTwlqQbxc7q+LjeciMLlyItXSJBLOKRIG8m0GrfWY8RyqjhhzPpib72vtTTw5+iTgDC+6LWur9IPKC71hmdzBQTVTlxg4QSeGgLvripHf1PaC+6I4IsOoUTt1ZBj1i9Jqg7YtPmIMHv/PELI/SrEc9LY9X5PjXU1qPXu031Nea5c+W96yHtgjchDYqCgasr082XgzVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IrpltWwBqh9lv5E21gzUmnTjuNjXXigTu4Df+62hlZ4=;
 b=T1Ezy8Me1g41Qvh7H/uZVWSRsDYAb012fyZKaqgm7RIIjL8SUTqnBFzBJSUMx2sNInobxUcEI+A4FSxf/SQvqwytq+C7OA/TEgtRp+ClJN0QxqKlgdLTp106xFIU6i7abCc7DcZaI5rcoPkGY5zEPkhDjHN9uJdbQOin9oA6GgN3Svxbfhb9K/JV9SCtUGiQdf72DqmayAIYotqGm/O0ox2ryWwm82HARgkcRqY9u1qFza5OoiUTqOH8Tys44b783o7F6zeadRNYnBz6keXwETYHsBbm3FuXdgK3qkR/FEFeXwBV54zoKhNPFYxu94bxI4KF3fKdR73oJ7AMamL4MQ==
Received: from LO6P123MB7272.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:340::12)
 by CWXP123MB3463.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:7d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Sun, 9 Mar
 2025 21:42:37 +0000
Received: from LO6P123MB7272.GBRP123.PROD.OUTLOOK.COM
 ([fe80::57ad:ac64:929c:78f0]) by LO6P123MB7272.GBRP123.PROD.OUTLOOK.COM
 ([fe80::57ad:ac64:929c:78f0%3]) with mapi id 15.20.8511.025; Sun, 9 Mar 2025
 21:42:37 +0000
From: Luca Torres <lucatorres801@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Is it safe to connect TX and RX antennas close to a USRP B200
 and transmit at 10dBm?
Thread-Index: AQHbkTmZmoqTAxfkPUK3Hs9weUCpdg==
Date: Sun, 9 Mar 2025 21:42:37 +0000
Message-ID: 
 <LO6P123MB727266D02DFD8254E9A39EA7F3D72@LO6P123MB7272.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LO6P123MB7272:EE_|CWXP123MB3463:EE_
x-ms-office365-filtering-correlation-id: d763e0e1-795d-4a57-9615-08dd5f534f27
x-microsoft-antispam: 
 BCL:0;ARA:14566002|19110799003|8062599003|8040799003|9112599006|9400799030|461199028|15030799003|8060799006|12050799009|10035399004|440099028|3412199025|102099032|3430499032|3420499032;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?7CaGa7l0BuRLbdEdMkPtEEwQxcLMFNePChyQn0MJLYIasAGXORqzxGQ71G?=
 =?iso-8859-1?Q?eqkTLW10GZTLloBTg6do9hvgZAY8JnxKV1CoscRNPlf4o8Lk6YR4tImtQF?=
 =?iso-8859-1?Q?5gn/hpgIpOMHcxfxSH9qnHIE5UdC9CWDE/ty5Jk2YCpxKQw7Ul2k6/rZp3?=
 =?iso-8859-1?Q?0TV8pGFjPDpOkjZC47Tar9y49LhVBBK6yLRkU3CzENoDe1BCSbSBl96F36?=
 =?iso-8859-1?Q?B8uRqW7GbepJSpKlmkkUEd0tTZR27R+mV/C1t8wraO/I66iUp60bGGvhii?=
 =?iso-8859-1?Q?H1jTRQSMUzPTa+uOiozI2m/NeOc7qUt9V9+N72cCHaVrQZFnKB90p7GqRI?=
 =?iso-8859-1?Q?o46OsxHH8ClYXDo76hw8H27uSy9g0Gfu4NQF3teikb8QDtpI+EJvnLj9Rk?=
 =?iso-8859-1?Q?nOWE3MrB6M3b98xEFLlhOZU4Wo8FwxXSgABSoP6e5q9aLjvdSI9qZB+b/G?=
 =?iso-8859-1?Q?elRCItGciTIKxZh5ijl/Gsb6HNw6txs1TfoGR4mpVEqfC2RzqkAf+c/pQK?=
 =?iso-8859-1?Q?tJbnajsd5uYR1YTWblbnLoFFhwTjETnyG7VbHtUMYjnQAL82/zmAIdwXZB?=
 =?iso-8859-1?Q?RUQktDvcjvk9x+Z94H+T0rHskvhswz2cHfM2Gup9xuL9I3XyhW0pVAhend?=
 =?iso-8859-1?Q?F9kvq4JISKXhFqfYbgLbPspb58Qg9WeN84AedEj9GLyiyveKBhkk1iEY7J?=
 =?iso-8859-1?Q?CTLL+Uz3mPrMJp9/yrPnSyN/87QibZbAE8PKoRF5gcdq0P1MRKHc1azlBv?=
 =?iso-8859-1?Q?vq8p1Iw/9cNDwTKLxW5JjuCQmk69nPfQO+9uSVhizpPx/F7LPUulA3g+TA?=
 =?iso-8859-1?Q?IXoeOnnfmtj9wHWPsc+Iampz3q77pWYPVfgYMwDCcYC2lZaqhje2d6435r?=
 =?iso-8859-1?Q?FIDxUafxlYnnoa5h0y1qJ4WlZq66cKM3OKvSwTi8m9wlP/hrEVgesC75tW?=
 =?iso-8859-1?Q?ia/IVN2cQakrSF5UMRiPwM7/MECB98QhgqeCKtFn4RlZT4CAqKIEuCNuHg?=
 =?iso-8859-1?Q?N91q/4g6KpBbEo53fRTvMw2xc8UvcDu/Hi37OzeRbitboGyM6BnChh8LG0?=
 =?iso-8859-1?Q?BBYguT55hp7dZ+lUl2gn3Ncs38UAF4ayi+9OF20PbfZFvTjWJvxjySvVke?=
 =?iso-8859-1?Q?3qtwRMENKnLSZL6dkbKm9L2uln26TPqW1MPUBGYs6FmP+I3Xl/k1vkfWir?=
 =?iso-8859-1?Q?Ud1Qn7t9H7vh0qKw0RoPTwBVwGj7+hHhO5XyCNprxw4kdMDZyihqGlfwvV?=
 =?iso-8859-1?Q?8Q7nHblguG4mYOtRxDBhR4Xk8BQnIUAHJSZkNmWAI=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?tPxcTWTtpSg8drTnQElLTMWfqbAkBNpjQyVUAXeDNEXX5aWsth4jELlZpZ?=
 =?iso-8859-1?Q?0lIe82O1y7WXbbSh6vztURbpK4tW5ZdEFg24MHswcOnqPPDQPHjXVTJDvM?=
 =?iso-8859-1?Q?oOyoFPVnkqbQB9QqtZO4DsXQHPZMKaPUjfp3DB3qqN253xh3HpOIQaSQ17?=
 =?iso-8859-1?Q?FEOc1p0bmzuAlallF2srfVRzKaC9016WBqn9gWFAgLaczbSFoMfSYrpalk?=
 =?iso-8859-1?Q?AVgBZ2rRlCO/vnB20CUwNwwKCJqmEJyeOA+LwylCyDr4yagqaxhh3fCXgT?=
 =?iso-8859-1?Q?GQiIpXEBXLbapeM8pxQfrmg4A7hnWgO6ZeEv9Ga2eU5fKxrz158X2zLxwu?=
 =?iso-8859-1?Q?RCr6tyhM6LbKgCfcEMTSWYuAqF+B3PTcSF5RiI9CFIcbu1KRibceqrAqq5?=
 =?iso-8859-1?Q?s4TJAHCXdQHIy2AdRD+Fvrxj/2GKi4cLJ/dLkGNLC9ZQLMDiCMSkYS2Vv8?=
 =?iso-8859-1?Q?Ppnt9oY97GMeA3kH1Rt6zpuNKbPcP2nubeLUoaNGkkXCjyhS+WQ0swLJgr?=
 =?iso-8859-1?Q?o+V8GEAZqCI5kJ8tUULzVUI96qmdoYMy373fhx+r0NJBHxv8fMbhAyYzSW?=
 =?iso-8859-1?Q?8tJumDbWdXMcwd22wr6Zdx7kI/H+P+aZY8OPewl0JjWwbJij9deRAKsnjT?=
 =?iso-8859-1?Q?MBOznv1sT0qVCCTtHHt+faxjpSKySL15F7PTAQMcRO1dcuDTcfJuQ5jbAo?=
 =?iso-8859-1?Q?erX/Bng4GXMxphn+0P0Axt1DfzDv0qyAhwUqafUpUbiCMcKBaRDIBjdNvi?=
 =?iso-8859-1?Q?igaMHXkoXhbbjZ/guIziYbxOyXvoboXfGrsDbUg4ytWo0jFq0a+HcdmC/R?=
 =?iso-8859-1?Q?ER5DesD8XqwcZ5oIjwIOuh5mF/x5PVGcUoRAgImzjaFtAd2Ll2aBm9o96R?=
 =?iso-8859-1?Q?O5Rtm5tjhfhlUzpD28+cYmuahvRpQL4KFfue3F015Sko/JHwmPfqH5rOF4?=
 =?iso-8859-1?Q?rZ5niQ8QxQ8davBxoblPcAiWErBx79i/9jd2i9uX27ZzXfQs2z9tevG69m?=
 =?iso-8859-1?Q?s3aMN/2vLsx2QTRi/0EEjW17SRIQ4npyjWhkK93gu4LBtnTJIHMTp3KxQN?=
 =?iso-8859-1?Q?9DQoyFZq15fwqb7S+rkLO/y6h+Y4rE6eBWaTJsq9WbE+cnrTFRCjtgIOMV?=
 =?iso-8859-1?Q?0ofXYe7iyLzfSr2gaDGaQNkWYzfhHOnzg8EQmDvTdpFtW+mHSYFBRyU/5m?=
 =?iso-8859-1?Q?UiJkvy4dYHBZpOAXWjFDGzPBpaJmm6Ppib46jv+lykJy8XtAWCVpsLQNOl?=
 =?iso-8859-1?Q?pvReXR2xZQpKg6nuLbAs22pRfWeDXQQAUlh8TxiHu4eUTJc41VsARI80KM?=
 =?iso-8859-1?Q?6N3dvPG3xZj3lyKFPsU2jbl8CqQWL84PSjWlmH8tS60Gx5M=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LO6P123MB7272.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d763e0e1-795d-4a57-9615-08dd5f534f27
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2025 21:42:37.1088
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP123MB3463
Message-ID-Hash: C5PSE7A2SJODKP4F6UWNXQU2B63P2HMR
X-Message-ID-Hash: C5PSE7A2SJODKP4F6UWNXQU2B63P2HMR
X-MailFrom: lucatorres801@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is it safe to connect TX and RX antennas close to a USRP B200 and transmit at 10dBm?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UTOSPNR2UXVHHHPMAHSA3J56AD2N5LUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5330532510594190032=="

--===============5330532510594190032==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LO6P123MB727266D02DFD8254E9A39EA7F3D72LO6P123MB7272GBRP_"

--_000_LO6P123MB727266D02DFD8254E9A39EA7F3D72LO6P123MB7272GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello friends,

I have been using 2x B200 devices connected together using cables and 30dB =
attenuators as recommended, to avoid damaging the receivers on each device.=
 This works great.

Now I would like to make the connection wirelessly, that is attach TX and R=
X antennas directly to each B200 device. (This type https://www.ettus.com/a=
ll-products/vert2450/).

My question is: Is it safe to have a TX antenna transmitting +10dBm right n=
ext to an RX antenna?

The documentation says "RX power -15 dBm max", and I am concerned having a =
TX antenna so close to an RX antenna will cause the TX power to enter the R=
X circuitry and damage it. Now, I've seen photos of people doing this, so I=
'm kind of unsure about it. I can always attach an attenuator to the RX inp=
ut if it is needed.


thank you very much,
Luca


--_000_LO6P123MB727266D02DFD8254E9A39EA7F3D72LO6P123MB7272GBRP_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hello friends,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I have been using 2x B200 devices connected together using cables and 30dB =
attenuators as recommended, to avoid damaging the receivers on each device.=
 This works great.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Now I would like to make the connection wirelessly, that is attach TX and R=
X antennas directly to each B200 device. (This type
<a href=3D"https://www.ettus.com/all-products/vert2450/">https://www.ettus.=
com/all-products/vert2450/</a>).</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
My question is: Is it safe to have a TX antenna transmitting +10dBm right n=
ext to an RX antenna?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
The documentation says &quot;RX power -15 dBm max&quot;, and I am concerned=
 having a TX antenna so close to an RX antenna will cause the TX power to e=
nter the RX circuitry and damage it. Now, I've seen photos of people doing =
this, so I'm kind of unsure about it. I can
 always attach an attenuator to the RX input if it is needed.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
thank you very much,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Luca</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_LO6P123MB727266D02DFD8254E9A39EA7F3D72LO6P123MB7272GBRP_--

--===============5330532510594190032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5330532510594190032==--
