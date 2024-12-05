Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FBA9E4CC1
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 04:38:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEFA53855AF
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 22:38:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733369902; bh=+iu1/Yz9j+TGfKn9+y5U21jTrkYzUBYk8f+iprQNgsQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ApeS7ROT2Xhu3ozMvpLLDDnp/Zc2NsmOJZBnm4rul+tAl12f9uoZCE+Ri8ZRQJopz
	 75H+Tzi+bK8u6mujkRz2K1jDVXnHnlnl73UivZryylo7DlNidXni7F3sA5nVvmh4WD
	 ha2Dx2qXBSH2O8vEKdwOADAOYntWieuk5TSfeGpojPCJCTFzfug8WNNjwKGPOMkII4
	 CC3rFtGGj5wENTeOQ4vpGuYZDbj2Mr60oJfH9t0RFa3wBoDdUsW7tLIgxETurpN5do
	 P1a+YeuV7L6lbbYzyj6y+8l+YdFO7BrebK8/RxIkPWscoMgXpWUsk/LPZA3/HoUDbI
	 LNOv6R4WfebjA==
Received: from SY2PR01CU004.outbound.protection.outlook.com (mail-australiaeastazolkn19011037.outbound.protection.outlook.com [52.103.72.37])
	by mm2.emwd.com (Postfix) with ESMTPS id 90F8438558C
	for <USRP-users@lists.ettus.com>; Wed,  4 Dec 2024 22:37:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="iDLOmnfS";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZvcn1A8vL5XVEkxD1n60LVdojZ2izn6p4t7KYz9V2mg+tPW9RvkpCYtW2jmQYLdTfFuc9//a+jmb07/KQnUcJ6fUcAKR46XQKUBb5fcXIcWMOTYpYa/pFlefx58IJnHGVXSglBqRE5gkp4BaJmvZB+DNq9GzHMPU/mwp8F0wGpTrsFV72j8ZpHyQ8pNEeUkMTGsxYKHXtr5/9bECrPbhKtyqPtrzihMFq9E6X2qlGD9EQ4Yc36PEGWVAkBo7tIcMEqjdJjwm80JyRPBPqaTvQrJUfnFIuIZmaDOWSz6VhGXYdJcGN2Dja5+3s9LXj47Ub8TGp1jBsa2kmdlXEvn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HiW5psidG/PjEk8/bOV6xSs54f/tUwBEAc4vlLIPjy4=;
 b=kvxlJ+3Jk/R/vtCZq8ecGp2a6fLcx1iPOekCKcZN9DIeKu7LON0pR3XpIZo+HmdWbJp2ReikAhtXqgSwgUmbMhKzqUkNVRxG24msAoYMMaM9PRd2vJRvuWayNeEJvI++UcV9Z6zgq/n5alyJq8iZm57IzkvEZoJnE03HbNq3d4yBy0RunauGoEt1osuhoPg/Lj/ocTyXbDB62e2UmyWNKit+RCEJ+Ph6ClKMT4HEfOPh0JOl5ay+8PSegJXhCEglz0bRGOVhpmiHofjuCWiHAistCDD7AAXM+nmwJo44314EtgBK87k8atdPbhyOOKubcXNOEkA6uFvUKhU3uEmTtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HiW5psidG/PjEk8/bOV6xSs54f/tUwBEAc4vlLIPjy4=;
 b=iDLOmnfSjmlG0ZAmeiFaz6cRYLjJSHqufaATAplzbY9fOx7yHBeJdAcFTj5SKRxwA5t1Ppa4/Yku4Vhwe55BkAWNbpcmrFyjGmLCpqeUYqTsKw4R9FaLVpnPTzhSVxOPsFiSywzuw3nrztZZkqZDA1J/RZUu9R3deu28YkkIuppIzdTRc0M9YnpeXaD4dpGjHDqsvDigzp/T+ecIJRFlqoB4S0+mj+bl9GTrz8PlxhZntQ0NZtbkqGTKOih+zR8M9eEtXNNCQAFyQndnjONHXtEqmp6c8oDhifKFopqz4uE5m3yLu/Vn0PjgJ8L/ZF+Yra55xb73HxOagf74xoQ0Hw==
Received: from SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:1ed::7) by
 SY5P282MB4527.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:26c::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8251.8; Thu, 5 Dec 2024 03:37:43 +0000
Received: from SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM
 ([fe80::5054:a318:7682:2284]) by SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM
 ([fe80::5054:a318:7682:2284%2]) with mapi id 15.20.8230.008; Thu, 5 Dec 2024
 03:37:43 +0000
From: james Thomas <james_ttfun@hotmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: how to use multi_usrp to open multi b210
Thread-Index: AQHbRsVOU+gwbIeYKUuhTn6wyoUAvA==
Date: Thu, 5 Dec 2024 03:37:43 +0000
Message-ID: 
 <SY7P282MB39787EB6FA259C2F9899386E9D302@SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY7P282MB3978:EE_|SY5P282MB4527:EE_
x-ms-office365-filtering-correlation-id: cbe50dd3-6579-4702-19fd-08dd14de2da3
x-microsoft-antispam: 
 BCL:0;ARA:14566002|8062599003|461199028|8060799006|15080799006|15030799003|7092599003|19110799003|102099032|3430499032|3412199025|440099028;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?hZyOw+sXIqJWrXbzUwzfn1t1As/3wX0wiEiSi4kUIFZ5lMQfE0HoM/nlcC?=
 =?iso-8859-1?Q?BR0mXys2ivjpKXOXn1JNXpk9hZuv6Pdm1y5Wt5Pmdwoonr/d+dIkkVzM5l?=
 =?iso-8859-1?Q?f5L/IB1bTeqTA3dU+gUVfeLfdsOckdEQktftbjA6D9xy/FKpc6RkmdRtbQ?=
 =?iso-8859-1?Q?kX/fwvO1X3FeSz5YbzIJ747LS00bd/7+mAeIzEguN8T2KfBN2stPA9hV1X?=
 =?iso-8859-1?Q?Ekc6/0Bk4uRCces8bHZ8SpCjY0S41RNCq0sBwq4XothKbXptV3xILOldKm?=
 =?iso-8859-1?Q?BEdpE8x/H3e8IFqsEAl2sa8ddKNa2tbkLYC5hEEV2VupZgwZvVlhKkWKhu?=
 =?iso-8859-1?Q?Z5+yuyUmBFeg6kM8wG4QiXnAJcvYcFRow3tn3XeRuuZZsKcWQRWciN5JIt?=
 =?iso-8859-1?Q?+5UXbSyX5UnSbrWYyUv03mPiexoVyNpdVDoqhjA/nsfBoHABPsqoS0wpFl?=
 =?iso-8859-1?Q?1UmJ8vpIxqAHbfmWRH2+MWu+8NeMvFGKAl18n/HZPAGGuvnebIU0OYLsQp?=
 =?iso-8859-1?Q?dkeaiRHOERF07zjox5H1DCDMEkTZu2BZdfH1C+DLHC4NU2FQeL2Xtj3wYS?=
 =?iso-8859-1?Q?PUqmfWnrKlOlBKyqoIcNVoypiOi7FG1ztPjAThkxEspQ3+yTxujMk9fYHT?=
 =?iso-8859-1?Q?ZhtvbSQAIxWY4mPz+s1EFRwQl1Gd2QHeBygKfthSQ25xtRu4kCknBrMvCg?=
 =?iso-8859-1?Q?3XjZ6b5G0B7vGEbhpl7t/tQr9SR1W//qfun5DMcWQU9l62tNV0cYiquL69?=
 =?iso-8859-1?Q?8zCLfqm/POTY/NWUnrcccSoY9EaKM25tu9G+Hh1170mZjcqfG7enFo3Ich?=
 =?iso-8859-1?Q?Qh3aDGTK8NwYvlH4yQXTy5DVfRTzt9RZd1JOkhIart0Ewpk/Aj7af607oH?=
 =?iso-8859-1?Q?mwYtWDLNO1EhFZnAm6u4KgOev3bgofyVgxGdmEKVzVYKODvBJAt4Xbq7BL?=
 =?iso-8859-1?Q?o7THpeFogRm8Y5oHl2/TiBYi21vACnCyCzeL2yTsw5Xldwea3j/f7MdvY7?=
 =?iso-8859-1?Q?uhrAUA4lOgE1NSrbtYBQmAJwNCYicDuhcKURz0wsyJN2N+QZUp2OTWXIJj?=
 =?iso-8859-1?Q?1szSCSiT5DnMdhZ0ofRjH6HuWVIpXbzeasBFu9a474SB?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?fzEPT7rl+ihWKA0z3nNH75RF5mRBI+3pxefxrsg1Vzf9Sr66dcHNJ3JIIG?=
 =?iso-8859-1?Q?YuNUU8AnEL4+PvcdG4uebp4bFi6Tbi38oVLybbMyw6/tTjzc/fcBHsaB/C?=
 =?iso-8859-1?Q?SIQ0npja0pkfqyX2KSexTaRy7oaXMwMjY7tvD8NmCAxqqBo0O4dOIR/Iv2?=
 =?iso-8859-1?Q?lx0S3faLwGzdnctbYF4+ApsncYzJylsZbDgyEgX0yyePPueQQZAaZSzUKE?=
 =?iso-8859-1?Q?wPTIkS7+4jugg/lACphW6NSxAB0jFUOCRdLiHXlcQhmtJ2GBAP56VGfYgL?=
 =?iso-8859-1?Q?6Ix4KuKY/QWTaMGn/6JhvHiuyUsW7pa4wws3LpIPwdGQJiFWxIqJHjzIZ/?=
 =?iso-8859-1?Q?D1iEFfOW76+aUqcUdTvNzM1Oios0v2MzKzD00hSHVBDJIRJinQGh51wPzd?=
 =?iso-8859-1?Q?S8jArESljR09tI0WWdf/yhl5hKcV+dB81PfYLvGSs0f6KbC9yBjZ08Lm0p?=
 =?iso-8859-1?Q?MueLULCZGikIcrrCTUCDDoy10kSJ2dLInPJCV/zCw/04vHLWtloJ2M1ZIN?=
 =?iso-8859-1?Q?DZekmY1bcHtzOYZZvc/NNMd7FSgQf6rqGHgc805C+zgzvke0HwoLMUHXtj?=
 =?iso-8859-1?Q?U2sgjIhg71x/3d3JQt3L6BTmZ+WhUjuB4+Ph5LxEkNI89hSlHsJhyaHeXZ?=
 =?iso-8859-1?Q?1zC3L6mRH78ft5tz9UHrIiPMCWv7DdGGfWYozuQYk4ocpzgA8jMcBBzz6p?=
 =?iso-8859-1?Q?svhxAJIook1aUW768dpuMiiSuxawlxlb1Y+NwcnXOUCTDhTfDWl/Gygzxj?=
 =?iso-8859-1?Q?saZmhnrRI/WmUesZnOkBNpFsafef68WMccNfQNf2FRavfhrR6UP2kugHaK?=
 =?iso-8859-1?Q?pCIXDbNZKkG8qpCm6Iw0NO/B+E6vdOcNo+SrhPATg7CZ5+QZoJbH/bWUWO?=
 =?iso-8859-1?Q?COOjx+Rni6hpz76SgAnECzhs2eENzxoaR6al8WQgjMTS8VmNEh4192v2MF?=
 =?iso-8859-1?Q?MPdcScREhhxrc1ktsv/R96PnoQqCtKV4Vh+49JB0TDqbpfoXN/VxWr0mUD?=
 =?iso-8859-1?Q?TICwd7GeGR3nKVgCTmJXb+XCNSzMQBypjdvOiKs37qVAznmle2AtVzZD4F?=
 =?iso-8859-1?Q?2KRE63bhUiiv6F1qnIKorDtfW08SZKm8uYNH7H7O/pGnhbdZA5IB6J5gbX?=
 =?iso-8859-1?Q?YWPEiMAn0OkIuAY0LFKGowT5nJr7l/Tlfu0SEuvg6iE5uFJ9wHEug8IV//?=
 =?iso-8859-1?Q?lLSmpc3NcGqJDBYu1ws99tOEeuf1z4U2tCAgxI4vqYscIag4CtnQq6SMDE?=
 =?iso-8859-1?Q?d+ZSeDJW01mVcVZ1EeSMf8vPq1K7/3wJPPVA9P0wk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-722bc.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe50dd3-6579-4702-19fd-08dd14de2da3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 03:37:43.6986
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY5P282MB4527
Message-ID-Hash: LQQ52L5ZBHIYXS5JZFZIMJU6WMVQO6I6
X-Message-ID-Hash: LQQ52L5ZBHIYXS5JZFZIMJU6WMVQO6I6
X-MailFrom: james_ttfun@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] how to use multi_usrp to open multi b210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BL2I3VUFZPQVAXG2OPE2S77IITLJ5R5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3798651630924398676=="

--===============3798651630924398676==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SY7P282MB39787EB6FA259C2F9899386E9D302SY7P282MB3978AUSP_"

--_000_SY7P282MB39787EB6FA259C2F9899386E9D302SY7P282MB3978AUSP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, i want to use a single multi_usrp to control multi b210. all b210 is co=
nnected to the same pc.
is there any code example of this>?

--_000_SY7P282MB39787EB6FA259C2F9899386E9D302SY7P282MB3978AUSP_
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
Hi, i want to use a single multi_usrp to control multi b210. all b210 is co=
nnected to the same pc.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
is there any code example of this&gt;?</div>
</body>
</html>

--_000_SY7P282MB39787EB6FA259C2F9899386E9D302SY7P282MB3978AUSP_--

--===============3798651630924398676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3798651630924398676==--
