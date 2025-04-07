Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5706AA7E5AA
	for <lists+usrp-users@lfdr.de>; Mon,  7 Apr 2025 18:08:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EF003860C9
	for <lists+usrp-users@lfdr.de>; Mon,  7 Apr 2025 12:08:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744042089; bh=Ol9Z89lGH4m36ldnvsM+HxBy1BL6sg5cqQ1o+3/8ds8=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ecrPbM97rMoZoXqvFb/vcgw13eOwdhd0rtVtpPaUjsniOql4QiaVpWBCFFLtTgCx1
	 wrCEThBvKsJJm6Tlfw1UJJzfFxFSU49WL3449ylBs0h42RljQPfTLRiBselEdilCL7
	 jv49LmK62rdzKs4IE+WglXdDVQvjELEKZCCv8OxyvWBF1emxH0DlwZrMIJAlljox29
	 dHm4cS7DcMLcoesElBk4FATmeCsBNGdPDOWl2UdBe0GIB1izWhaI+1ojENeo/ugKLr
	 RIHrBw8VkFFpPZmehzkchH6I/SHKcLv1t5rtW8KIGBsDRkRYUSZ/TOs6j5xL384FdO
	 ZJsna3gVAL6cQ==
Received: from CY4PR02CU008.outbound.protection.outlook.com (mail-westcentralusazon11021133.outbound.protection.outlook.com [40.93.199.133])
	by mm2.emwd.com (Postfix) with ESMTPS id 195FA385FBF
	for <usrp-users@lists.ettus.com>; Mon,  7 Apr 2025 12:08:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=TNTECH.EDU header.i=@TNTECH.EDU header.b="jxG60cJ5";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lebAb4pINsY/WscIhEsxMzT3dBbM5HPIB9IFNEpsKtAUIzUXVHqPClIMtz4NfS7/fN/orpZTX2Q52uX48Dg6vg++Z1KdUWj4QWZqb6dj2LPH7Bbm0X9Ox9w9MT8u2+0M8lRXKYG/TjaHDGkIi6N7qi67H721TLf7VbEcnv8UeQ3JNv9GAYZgWHhBJwAlBayqvFhF8kuecSikOSefPWJRXWa8brfXuvQPuDrRF64Rs6Sk1jZvAupV3/50Iq3FgA6O1655WXIsSdhxymOoDdH8ekUUDXXQk0e/4fnrLq9NdAtfJMNyHupydFmu/I1N3sTPuwGfP15VRqp20j9u6ts2MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LdjIqm3/CCV3Bb5R0G6hUqo7J57XdqPS/MuJpI20aHI=;
 b=cdW0QAX1loQoQxmDfu8XYwC+yPZm2jErIlEcow7fjiHkFlNMdH85Qwxi8CV8FWdXTywqwfoZifDKp3uAg6hbzBbCQ8q3Z35gCUmsAw0AT1l2pN33Q9yZ0XJIaddm3QuRge8mj1MthOxkLwz7pbFbzMHp+WjKz2cCfmTiqEZeS6M9DVyVVfE7jbaGeVTc/sGJ+em5M1rN170UUi9zIWNJg43/Qk/X4gqAREvJtz0tPqyqI4+LexkjPe6GX/kn90xZzjGk3K7uBOkNmbHqHdGHplg+rHoD+/MA7jBTH92/ZlmPakYWyRB4caqt5LOBuzWIbPn3tAS7KUVhzWx5ELqrCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tntech.edu; dmarc=pass action=none header.from=tntech.edu;
 dkim=pass header.d=tntech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=TNTECH.EDU;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LdjIqm3/CCV3Bb5R0G6hUqo7J57XdqPS/MuJpI20aHI=;
 b=jxG60cJ5cmOMq0/hYJppeF+/5pZwW2Z1o16G9J695rq235gFpOe3Nspng3V1MgurxRx+JVRv7GT20AW6kov/9DPbo8Osrfw4PR+233sNWRY8AVGES4paZEd+QaAlWkL8EbeHlxPCI8559vTmWJvAuvWUQyMuZQ3tEElhQ9RlLlo=
Received: from CH2PPF2C97A4CC5.namprd07.prod.outlook.com
 (2603:10b6:61f:fc00::255) by CH2PPF861D2BFCB.namprd07.prod.outlook.com
 (2603:10b6:61f:fc00::262) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Mon, 7 Apr
 2025 16:07:56 +0000
Received: from CH2PPF2C97A4CC5.namprd07.prod.outlook.com
 ([fe80::d4f6:8080:c7a2:b9fa]) by CH2PPF2C97A4CC5.namprd07.prod.outlook.com
 ([fe80::d4f6:8080:c7a2:b9fa%7]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 16:07:56 +0000
From: "Jones, James (jtjones49)" <jtjones49@tntech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: 100 Gigabit Ethernet Suggestions for USRP x410
Thread-Index: AQHbp9caiGf/hUQ8O0eoEpimvj74Tg==
Date: Mon, 7 Apr 2025 16:07:56 +0000
Message-ID: 
 <CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tntech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH2PPF2C97A4CC5:EE_|CH2PPF861D2BFCB:EE_
x-ms-office365-filtering-correlation-id: e621cfe5-5c1b-4fe4-eb1f-08dd75ee5bfb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?ws/Bys6rvWpbmvPFQnhbLWNhmPr/BhdXFbkAzO/YjSAe9KNSqAUZqqWvWA?=
 =?iso-8859-1?Q?sUyvU9KemaIMEHCWpZ4PF/c7YSlCd12pILgwSeKsp/x/UCPhzJ1DoN6CRt?=
 =?iso-8859-1?Q?Wkz4cn4bi8QqGTx7wNPKZqMX78CMH7S+8cnFh6qpJmmWrltIay6bQKf3T1?=
 =?iso-8859-1?Q?k8q+AGtrp5u7P/akDM3Bd9axBn8E/JV+cqPn01SxdaVaADso+QDdx5wCjX?=
 =?iso-8859-1?Q?pKMuPYhQ/rH//xO/LoRPJTw4f8RsnTVPV7t8VSL1i9LCILe7cidDYYHsUH?=
 =?iso-8859-1?Q?TipPSYLNqSCXfSgP91tobhJGbDo8hTFoA7rmbETXh5QsG4LpzqmNHzfSb0?=
 =?iso-8859-1?Q?Poc5SGkcrexsqoi/Q5Gpq1mKmpnbZVey9L1m18hekW89BRO4oJAv1s61C+?=
 =?iso-8859-1?Q?bymJ+Ka0oI37/J9HIhhP53ruLoitMAGF8FmR7o8kZxibt9klkOpEl8YELb?=
 =?iso-8859-1?Q?nGYpdRJoBjZSCEWqK1eqUkYfdvmGO+WYzEhP27TZ3rjZuitUzrnpuhmLmb?=
 =?iso-8859-1?Q?1nGUeN7bcsm7s0ctX39dMdMNnVSbKhnCDwQnG/g6J7+gYrsxYcpvCb1rzQ?=
 =?iso-8859-1?Q?Rp24JZoRwF/LE2WtgZ8NXdNyPOaWmwK6tDUebrHW/fPgdPr0NVT3hk2ZgT?=
 =?iso-8859-1?Q?tIA/rScVXnsba3izV0DaQEPrmYrSPa9pDGelJY+oJd1XXXNT5tqnxVXRMi?=
 =?iso-8859-1?Q?tdVUU1vcNDtURjyDlwJ5pMCIlGrTkpXVUv4GgSTEh8u0VFzlEwlGsx+cJ4?=
 =?iso-8859-1?Q?dE/x3zgJ60+QBzmzz7z9qq+d5wktNPWqCR5bAstiMbAwSvXCU6L3ahcLMh?=
 =?iso-8859-1?Q?HSEjVKAV0SeD8e6qO2eGXtnYrDksRYbMxNjqCtMgNFHbOCBUlS/2y3uGBa?=
 =?iso-8859-1?Q?bFY+h4LHN8QAWLOR4gxDSdhaXan801b9IHuEME3+eyQKkJKv4kOYBNSOwt?=
 =?iso-8859-1?Q?r61SBiFxZXldPF8yxY1kkWO36es6YrwLbqIg20s19ZZKME1DGNGVqNliHW?=
 =?iso-8859-1?Q?H349AXViI5Iexx//4PjGIpJEmpqLVtaLde9mL9xRkJT0rrYnUZ3b2j8s0O?=
 =?iso-8859-1?Q?hCbmkG2DuoKwl08skS/26VfBqB54JiEtMJyJHM5IKEeUw37RwhRkuqZZC7?=
 =?iso-8859-1?Q?8e+fhFJLIWPEhZ4YUIPNIAI2/OygW35KRzdfH8YQlnCyp8V8hhnGXxHBGc?=
 =?iso-8859-1?Q?7N5l5bSR4Z4JoCMJ99xQ/Y0OvxCz3NCAGT4ALtKDoJhvASt/z+GIyl3peV?=
 =?iso-8859-1?Q?GmTyKI4V1LklKpsSQBEoF9ZGSIJ/yfl7l78Gadv29dGq4D/KSdxGLI5ego?=
 =?iso-8859-1?Q?k33jGj8s75FLSMGR8qXcdmj0AHWvS8wx08zM6Vtzk7iWwYiL3nvSBNQ9DB?=
 =?iso-8859-1?Q?CTcBZCKozvRVG38Cu1hF9awyDvdvyEVLTfqBQBNIo5oo7dF+PYEXO5bAvS?=
 =?iso-8859-1?Q?L95z0O7rS6ACMdbzAGzUn42Cc1NIY2PVZbdqmuSB00k40EpC7asJQ6OJ9g?=
 =?iso-8859-1?Q?ZEjpjMNNk9+RTe+r96sfMa?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PPF2C97A4CC5.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Go2rJH43pGqyRRaB4AgkECvhzoaDCkW/rguHx5z5oTALA9gXKV5f9n9gRM?=
 =?iso-8859-1?Q?R9y6CBw7f79gLHu/d0De6J0GGIV0KUxLX3pww4OeDXsP0ggyzFmU49AyIF?=
 =?iso-8859-1?Q?J5GiWD54KwHYl/qsLRSYeeNnDvGrXmzc8/IqJAu4+cEQkcHUrwgItBmQui?=
 =?iso-8859-1?Q?5xKkpJJCCt1kCet9Ey01BZ+rxPsNttz8rHpvfu+JC/hFhBOT1lrZAcIoax?=
 =?iso-8859-1?Q?HJkeJoW4gQl+cO5+XCKWs5ndBmd4e0ZvKOlHZbnD2dUH/f35uc4uxh6T1F?=
 =?iso-8859-1?Q?MveRH+yjlibEhNrN5AyIjbvt1FcRw3KEUvEs9GaGxMYJEvnGCkAL3OkIj2?=
 =?iso-8859-1?Q?qPqupsAef7JGE4eiILrJPvPvIuu6JPcvBY0JSK2ZhQ10p/5xPUr48kASFs?=
 =?iso-8859-1?Q?FKhjYdiiw19nZIuYdzQcnKszABrrD1X29p2nneItWPRUkD30KzNjYBiSQS?=
 =?iso-8859-1?Q?+/ICbkeMGZB5Y+JlOAR2s1TI9SlaV+mPUxantDFXdbI2b2tU0bvFJo4Gpn?=
 =?iso-8859-1?Q?hORYy1s4LL34gLV5nIHhDXmTQL8Z3aT6wai/CN1ploWNFXX0+soVAbsKQq?=
 =?iso-8859-1?Q?CMsDYQiquW4uqRyIerIO3UZPMWfL49Pij190LpzsL5KDpK40okD57V7tAr?=
 =?iso-8859-1?Q?dicWBnrGVWkEOlQpkTwbi7gBj3xPBW84EynXbohl9ahpaKMUdkG2sNl12/?=
 =?iso-8859-1?Q?633ZuMgqaIsnbWKGd299OUx9qnXMUZZoePCzWE10z4HdPL4eWtyZBJE+Jr?=
 =?iso-8859-1?Q?DbbmmB794uJ0usHMGHORkIemkR/NO0YmP8H16/ciQt44TvBhjRyx52whEc?=
 =?iso-8859-1?Q?1abHTWpFc4eadkWcGJoqYyjIrtrQHFJ5Q3Iy5bU5zNuXHI8EFsekrNHjW3?=
 =?iso-8859-1?Q?B0P/iwOs8KtjXcWICxvtNqFZdlC/+d2jWsLN9zDaUiGIAjSpgMK0OjU2Jv?=
 =?iso-8859-1?Q?37SYWoOcge4pcawwt7Tjcup/erNCTThPlGmShAX8dgcZpkKh4A1n2rDITj?=
 =?iso-8859-1?Q?g2R28Ik7m2NyeNJKOVCTCOnpVwMN99fxAGLxpt9zh6LQwJbkM535J5tlF4?=
 =?iso-8859-1?Q?3nD+BR0PHWbvBmg9+DcGNRCCi0/EzItSSrZUZRx4FGozIH6WSBajtI19SL?=
 =?iso-8859-1?Q?udBtFyPqyavxqbNZLgbVY52SYtjNB6yawbRFD//pAPaA2lMRdgyCwS0xbQ?=
 =?iso-8859-1?Q?Npt7x5vgm+bS5Xefcv9Xcl44GF3RwM+jxd7hT9PVR28PlGT0VEtAqP2cND?=
 =?iso-8859-1?Q?SK6F9+xcuLHiz3c7TzG8M7MxTebXuDT/elUvl/0OJdarD14Ly2cByFevfA?=
 =?iso-8859-1?Q?2qxeb09/STV6rN+DzuWK6rZl+/HHOe5kIAmgnD2lDWVk8r6jMMnla5W8Xp?=
 =?iso-8859-1?Q?NIfhPrEjvq78cwUeAel2Q8mg+H+fwyj6K/v0asIqiiE7UC8Ghcjgt3fQkx?=
 =?iso-8859-1?Q?DWn8TQi6Alms7y4yMDXsg4wocIOd/Pbg0CqgXoV/uIctEUkoD5p8sGVUWX?=
 =?iso-8859-1?Q?iBNiS4prCZqO5WAatoDjWPKDseadA6l3WovyyuAiY8EhLhEzyVyFE0o76S?=
 =?iso-8859-1?Q?I1uqvNoEGkejH6j5FYUzTHLE29SFFI6YortYFbGwxceLxX/XmKGuITBPm3?=
 =?iso-8859-1?Q?xOPWOJH21Gjr0mIDc+js+E6f0fw6K/B9eP?=
MIME-Version: 1.0
X-OriginatorOrg: TNTECH.EDU
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PPF2C97A4CC5.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e621cfe5-5c1b-4fe4-eb1f-08dd75ee5bfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 16:07:56.2221
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66fecaf8-3dc0-4d2c-b8b8-eff0ddea46f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peC43V4ieRqTE3RFHIKwafU+Kbxf86AHGL0+tVh/gn6NFxqDoOi0EkqRJsYZZQF1m3BLPYwgQ5VZdS9fT3VNbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PPF861D2BFCB
Message-ID-Hash: DIUOM7V2RHGOVV234ZK2ZSCHZANGH6JL
X-Message-ID-Hash: DIUOM7V2RHGOVV234ZK2ZSCHZANGH6JL
X-MailFrom: jtjones49@tntech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 100 Gigabit Ethernet Suggestions for USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KF4QXMTC7PZHEMOTMHRG35MZ5T3Q6HBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2548811527358928472=="

--===============2548811527358928472==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PPF2C97A4CC526CE619D2616765603E6CEAA2CH2PPF2C97A4CC5_"

--_000_CH2PPF2C97A4CC526CE619D2616765603E6CEAA2CH2PPF2C97A4CC5_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, I am trying to get the full sampling rate from the USRP x410 which i=
s 400 MHz.  I understand that I will need a 100 gigabit ethernet connection=
 to do this. Do you have any setup recommendations or rack mounted server r=
ecommendation that can support this bandwidth?

Thanks,
James Jones



--_000_CH2PPF2C97A4CC526CE619D2616765603E6CEAA2CH2PPF2C97A4CC5_
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
Hello, I am trying to get the full sampling rate from the USRP x410 which i=
s 400 MHz.&nbsp; I understand that I will need a 100 gigabit ethernet conne=
ction to do this. Do you have any setup recommendations or rack mounted ser=
ver recommendation that can support this
 bandwidth?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
James Jones</div>
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
</body>
</html>

--_000_CH2PPF2C97A4CC526CE619D2616765603E6CEAA2CH2PPF2C97A4CC5_--

--===============2548811527358928472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2548811527358928472==--
