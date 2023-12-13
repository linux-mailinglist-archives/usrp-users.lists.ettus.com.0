Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C52D810E88
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 11:34:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67188384F19
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 05:34:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702463692; bh=aYqDQqxxXGb9Kmfyao25YgyyqAJ17jqXo0Zz26VL34M=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dxuSFZSa87EnI7/XIzqDV+bjHBzmaTlxSlrC4/7K3SbAlbF4YDlChTUbFR/GbRAHh
	 J3QrieLeKvYD0ZSZaVA0GXrVKGuOsGm5rpB6u3j5zfps4tc0uCHtSibp4E1tw1ruZ5
	 Eia/O5CfryzTwTJaE/QML4RpmPpYJPHhij2l7aD1DO1HMmGz8ZjnxUW+2+sG3V3uYA
	 tbiCUIeasrgfh3YHcrVnrAkKyBK5lbqOAp/GkaeIgON9tLRHmPZKscW6DsTSDBZhPM
	 bM+gNvTCYuQpti1/COzPPvNv0tMwNfxrq7A2q4ulfxgycVOnzGnHc0VbLWyjGOTaTU
	 ke9XU/WF7hA3A==
Received: from pta-smg4.csir.co.za (pta-smg4.csir.co.za [146.64.81.183])
	by mm2.emwd.com (Postfix) with ESMTPS id 35A34384AAF
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 05:33:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.b="EdeJj5q7";
	dkim-atps=neutral
Received: from pta-smg4.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id A20471B35AC8
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 10:33:36 +0000 (GMT)
Received: from ZAF01-JN2-obe.outbound.protection.outlook.com (mail-jn2zaf01lp2041.outbound.protection.outlook.com [104.47.19.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg4.csir.co.za (Sophos Email Appliance) with ESMTPS id 473FE1B89C63
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 10:33:36 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxdNYEmZBlbAAE/HHwNQSyreh/wgAJP0bKF14BF823bx+EdM1xJrYs5eZNOHjo45otDHk2aIEy8J/cJiNsJrayvnEXlUvWVnzIwZ/KOrumuCqCqLgGrEnfChrNUmhsmxtNWzJCJ6sf70tZu7W/jS4TPqk7G4dapXVOf3o73GksXNkOHoSZ0lJjtN6PAzsZ3puOLIpzNusKd84p8fKu9uk7wqiYDvCsY8Hx9VL+mu93ow+Fm3BuXw9XpuRqxIGKZ7uCEu+n9xCmHvNUK2ibJEsl0yBAzlrG4UgAMedMb4BP5Lpu+8l5PxCtq7Se9KNd3pMb0iqdVMlESQnj2d7UOwJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k0PM0A44Ws2+Jc9tALRdA74ZG3GCtemv813GOAJx/lA=;
 b=iSnr+7sPoNezGNefkZKxt9o5Qr7UebKPtw7kxumf+xZFs6plOw77+7TRu8R9bnCgfWQfuWjjCSZPIZ8WOsJEox+XtjibxQP+zAXkuFDSP2RN/pqY4bfo5mKDzF0Vu5eKmz9HKtvehCGWt6NHcZBqdl59tTJ22G4LRVetEMwlj3fp4v0ebrxn5HuPoolJiH1pkzmga+JD7rbCYpc70xuc6M1g7xYTIZj+t+vpwakq/Ehb2bOM8HhfRt93zV7xD5ZrcQi/hVrDoiNoxMUQyq/siReqEutBAAbfzyR1h5pRiAPdaZpq0IEzGJvvvhILi5inmyjF083m1mZ7/FS2qFkvJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0PM0A44Ws2+Jc9tALRdA74ZG3GCtemv813GOAJx/lA=;
 b=EdeJj5q7ZDl3xNLXR80Q+8eZ806RhMhBuO6AL8x804h9GJe+bJyU8xqXWF+UZI4+jX4pYSvXVITSY5q6d4I3xR8qColddnKFqu6PFC5emIaCS2E78gcGBik6S1qBZcGxlCxbSMtM0GRr1j8siQBMWhbhbQryN8KFIM4eG58wQqI=
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::13) by
 JN1P275MB2450.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:ad::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.26; Wed, 13 Dec 2023 10:33:35 +0000
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::8118:848b:d63e:4b71]) by JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::8118:848b:d63e:4b71%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 10:33:34 +0000
From: Leon Wabeke <LWabeke@csir.co.za>
To: Andrea de Jesus Torres via USRP-users <usrp-users@lists.ettus.com>
Thread-Topic: TwinRX Performance data
Thread-Index: AQHaLa8/Ka1Kc6XzaEGXBiB0IpFc3g==
Date: Wed, 13 Dec 2023 10:33:34 +0000
Message-ID: 
 <JN1P275MB0535B71172798ED49E69ACF7958DA@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Accept-Language: en-ZA, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JN1P275MB0535:EE_|JN1P275MB2450:EE_
x-ms-office365-filtering-correlation-id: 93812e10-9a57-4177-a43e-08dbfbc6f5d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BXQdDT8xV3Ot4O7e3OxQCPZrQvpQ2rbwcRjmsPADIFBHWtaDFTg7b+BY35Vfso9RJHWYa+G0U5GmKFQLW52Ssh4ycXQ/az2SQhuYw6yflg6G2eKv0+15Z+iWcWHLebBsb44yHwHrpP1UgJJIUwhWyDVhspI5utez9RhlmeSCayOcTZw0fU4q7nn1ozgc/VEnLXVVew6XXbQRGfgHcd3acZV+rmAsyvto4SoAPV4+/Z4O3yRx4nocF2vDaTs9MZX4DHKjxLIrVL4RtswWk9qoDYtMaNA4Yi3Dl0/HiqAZ0PiRK0eQKPeNn3EmWiKm+EcAhZPK2+n4YqL0AkjID4Su5FN5ncV8TLy06hfDCpTtlVJCJDXePGnvVX4cD+wjHE4mQHnMJc8X0J1HeipUn/xMAUaXtz9C8W9E2QUm/xEJGXPAKvuFrtWAAWAbRV7qEkwSbumJgJ8sPn5j6z6wW9xBqxYaOSLbXi7tNKbLNQZsxf1IbqNMQaJa1SWL9nN9O2cjYJod30Ez36gfo37BbCmG/Y5iCVVQ4V0iOIdXUrjRq6z8uimcqbkmswcBTeufXou1shU9jAoQA100EmP6pMGNDbA9d/Ugxx3ZnB2Oit7Bl2c=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(39850400004)(136003)(376002)(346002)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(26005)(6506007)(9686003)(3480700007)(122000001)(7696005)(966005)(8676002)(38100700002)(5660300002)(8936002)(52536014)(7116003)(41300700001)(9326002)(2906002)(4744005)(316002)(71200400001)(478600001)(66476007)(64756008)(6916009)(66946007)(76116006)(66446008)(66556008)(33656002)(86362001)(166002)(38070700009)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?yjepdX+49OdTRdXIrUrWVIzJrPQ0+N4ruHDQIEYtBQ2y6Xzs5s0/jhjE+V56?=
 =?us-ascii?Q?+ps4NomRoyYQlKx7nZNXkI/mdvnFV+hMkoq94MqsuaxqeOJcYmmyUNvuHZnK?=
 =?us-ascii?Q?dgcN1lKDVdw04qENw2ZuJ8fBW8vFeKAlcaghDE55Xz08H7kFZfiFaR/ILOs4?=
 =?us-ascii?Q?S/Oukvs+QpzlfVi6/0MuNv4UktouLJuMQNou2sFrCtiqDWo+BaZS5mYPNOxo?=
 =?us-ascii?Q?CPFsF7r+ZyLEDStCZr+NGsRJo7QPY22UGnz8GjDW/6YVMF4fGcvFbHalWUMa?=
 =?us-ascii?Q?fjucByzBF3xuiAcq2TAAGh4o8PkfXrdve4qTH0TsAFm7YbW2yUm3tJesluJQ?=
 =?us-ascii?Q?IST166+eKOj6Xib5CrlPdJqBg5Hz/FWY046HJmwzU9IEkqTFiUm6DHGRXHul?=
 =?us-ascii?Q?KMGjD1xUKhF07SKT6qJAHscGv6O1J4Cs0+DWO+33eSFAh610zvyrAAAiT/1f?=
 =?us-ascii?Q?u85O5YuyJhQUyNWt5EuqOePCYpCeTZ2L+O9zC/QL/UsnLWBo5MCFyvbwf9w2?=
 =?us-ascii?Q?ol1SKhApiEvps3aZlnVa3fcKL4/7Y4wqON0KrlB4GaH2mpVeKogCTGAgpUmn?=
 =?us-ascii?Q?GG2JA/jOOJdC1h3Q7Hak4gSq+RO9Fmygzt1/jmo9V4zDMqxqMidlUgfLSt9V?=
 =?us-ascii?Q?i6bTXFJNLNiHH77rbgUkyQEyY6SmBrSoR6XQNg5hBLrPs+fJS8SKaT03lmVK?=
 =?us-ascii?Q?d35Am5vvXkTrwEfV01NDkVgMPmf/aWGaSIP4jbBfbUClcy+Jd8r26eO10YEj?=
 =?us-ascii?Q?1vHQsick0y6D59blEIoF+Rkp417aNqyfcF3r0Q/2FlRGz95ZsSwu8Z7tseNn?=
 =?us-ascii?Q?TlZmUPSwpr0cPTwr/LO2Y8hXAImps19+vuPOyAALveb+3Rt0HilFKUWkItsr?=
 =?us-ascii?Q?iCMlRzLqc0HkECXttJp9m/Qik8vDONBtqvVNtaroIRM0eD4ZmJKpmTbUQcq6?=
 =?us-ascii?Q?yODREDQbPhcSsyhJm+kJP3y3RO6myA9cCra7cV88MK88VtnNHo2ALc8Cu0yd?=
 =?us-ascii?Q?ybrxw5/TVVuiZXfEsE9+0TxdXV8p0tGCTqM23HcwsNLsU9CiFt6z2YcO06Vc?=
 =?us-ascii?Q?F9lXWb/WdZiMLlYQ0PyOcU1D4PBLUOJOzXltpKItz3hXj/+PpNt0uxghTR+I?=
 =?us-ascii?Q?2yuhfV7exuQRYIrdv/a+34BmIb7qjjRB/Myty/BPiSTzviDW5xPFwvAfggBk?=
 =?us-ascii?Q?ExW4UmwJL5tqA5DHcUgKn8XOQkpwvwxvEXGQsEkVv0o7a0cUUiLoGc3xgIAy?=
 =?us-ascii?Q?QU3Vy/SG2QtIfRrP5udabw9Wgc7bt34kM8bPOxgp7uk/WscyETcKHwNlVLA+?=
 =?us-ascii?Q?fXHVyWISuOM+Qh3M+DXqHTSUj3hRBMSsXDFyoZOchILZXZdrbReYpyg1n6YN?=
 =?us-ascii?Q?nMuQhJqe3em7gA8XvzALzYNMciuhICIRFDSZqdtns5HClyhP/N325i2c12CJ?=
 =?us-ascii?Q?xMLprH31cx4ViU5JEjxqsF3N2vePI2b1ltJCzepHSY96Y4UCTvX6L/rUQzXF?=
 =?us-ascii?Q?LXUVM+1le2vjRB+9ZRt2Rkv5V+M6niy+1UmABEzOZU8xol7Qk7aTiK4GNugY?=
 =?us-ascii?Q?fhK9eGrNcC8GySTGh/N4WnAbEn+NKUoTrcYzgyFrDEapdsszAmD6+qTTIa8d?=
 =?us-ascii?Q?FQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 93812e10-9a57-4177-a43e-08dbfbc6f5d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 10:33:34.9014
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L3FQT81dzeWtrvdJkGJ+V46UU7t83vE9IUTQuB5qNu/Uqv2YFtNEkdVTIeVT5srXlRStkegQsPpzpbGP7yy2ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB2450
X-SASI-RCODE: 200
Message-ID-Hash: IRC3LEPA6XRUDZQQGASLGYJO3YROYAS5
X-Message-ID-Hash: IRC3LEPA6XRUDZQQGASLGYJO3YROYAS5
X-MailFrom: LWabeke@csir.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TwinRX Performance data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CTGHVN4RVYTIYZTXBQFJ4C6I4R37RHQ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3514778724374424047=="

--===============3514778724374424047==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_JN1P275MB0535B71172798ED49E69ACF7958DAJN1P275MB0535ZAFP_"

--_000_JN1P275MB0535B71172798ED49E69ACF7958DAJN1P275MB0535ZAFP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I see for the X310 RF daughterboards there are RF performance data availabl=
e here:
https://files.ettus.com/performance_data/

And for the B210 there is similar data available here:
https://kb.ettus.com/B200/B210/B200mini/B205mini#B200_.2F_B210 section RF P=
erformance Data

Does anyone perhaps know if there are similar graphs available for the Twin=
RX daughter boards?  Obviously they will only contain RX sections.

Thanks in advance
Leon Wabeke




--_000_JN1P275MB0535B71172798ED49E69ACF7958DAJN1P275MB0535ZAFP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-ZA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I see for the X310 RF daughterb=
oards there are RF performance data available here:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"https://files.ettus.=
com/performance_data/">https://files.ettus.com/performance_data/</a><o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And for the B210 there is simil=
ar data available here:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"https://kb.ettus.com=
/B200/B210/B200mini/B205mini#B200_.2F_B210">https://kb.ettus.com/B200/B210/=
B200mini/B205mini#B200_.2F_B210</a> section RF Performance Data<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Does anyone perhaps know if the=
re are similar graphs available for the TwinRX daughter boards? &nbsp;Obvio=
usly they will only contain RX sections.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks in advance<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Leon Wabeke<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_JN1P275MB0535B71172798ED49E69ACF7958DAJN1P275MB0535ZAFP_--

--===============3514778724374424047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3514778724374424047==--
