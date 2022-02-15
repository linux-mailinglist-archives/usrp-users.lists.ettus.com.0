Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB0E4B6FC9
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 16:30:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57555385989
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 10:30:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="mpGUncXH";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0042.outbound.protection.office365.us [23.103.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C902384DA5
	for <usrp-users@lists.ettus.com>; Tue, 15 Feb 2022 10:29:19 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=PGSoN5BohxloH/bWPtdEldruJ160UfYeTH/nzvmGYZPHUlZ7TWhjVp4QGKEmHQ8KHASIAUSVbyP+pwl8CzW37x15UhBNflbH40XCux+uOAkMqDSv23BKHFIATeh+mMpvQ/qGuayGzJ7/JqPvJi7JIXB+Pcm45IFMeJWjhH0CcQ4/phMrJRrhi/Zu7zkg+rD+wtCxFb9PMdGey0ukQgW+0n8IqUpmVdvKIwBIs0gkjc1+F3kf49OcaSdxU19WtXkUgorW2NpVluvJeg3OYw8isbm1IXeVa08+6noTBYOAkClol5EFdbxBM8vxvgcagtNN2GAV/4pLNXo0I27SPZA6sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fJJnq6cS3ZPWBz0PQXR23t/gGp2S6iqCtHtY8NVKs8I=;
 b=dENQKwqePtwKuRDy7PqJh7vbjea2RBGsH3b0w04VljWJJAwvkx419lDEIFTwEkynNMl3WgqkgkTCTBmPw5mhHNGdD3DplCkNJ74CFaIQun7q1IEbr6iWQHEM8tZklRAkpUbQl7Xhh19t2Ns88WKFGEKB0KWhkLskpsuO5CuSUAxbS/e3OCYsgHmUTn5nZaW+szP5g7Kn81/EllTectpJpJJb+ZILFWj1xlC9D2xH5v5yMxxbUMXxma5/7yKWFUGAgQ1WjJz6N+k5ZelKc78FX1Z3Vh85MzBRT/P366jLmsXhAYiW08ClOx6Mgon7cH1eFvjS4A1ZP6d0ZDhSQUVoXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJJnq6cS3ZPWBz0PQXR23t/gGp2S6iqCtHtY8NVKs8I=;
 b=mpGUncXHvmu8TUCdcWYc1en7eOm07sX2yS3zNf96Z4koOTKKxQ+IRgb/qDCr87sUIReG6VZ53sAq4kIV+DfukWL2oz+mCikO9XfawoKpKR1E6MnmPrWDrbY7VKEL5Wj45Vr/Fty36wRdh8OAVWmqh5+8doA7CTohA9tf0ENpDX4pL33MD1Elxqudld9GHBwwjjmMj0TDPkGd6g4UH8dtW29nMspbnL4dCQymLOCC6rd23BIH28RYUZcLLaWRyVr7K5OKhrWe2yGVbL6BsoXKKMac3UZlRI+b4rfOZjus06VAbK4Kx0EFuvDG34z9BxMC4Jkpr2o/0fVz3CFetL9Emw==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1684.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.15; Tue, 15 Feb
 2022 15:29:16 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 15:29:16 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>,
	"zeyuan.li@zengyi-tech.com" <zeyuan.li@zengyi-tech.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: OAI with USRP N310
Thread-Index: AQHYIn+mIrGSMZIQM0KR47OgV8h20qyUuzDQ
Date: Tue, 15 Feb 2022 15:29:16 +0000
Message-ID: 
 <PH1P110MB1665E5C50ECCF356F8212B5DB7349@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
 <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
 <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
 <c83d6c10-9159-f329-2f25-db055e9429f9@gmail.com>
 <e1b5678a-a961-7fcc-7fe1-2dc4e176b4ef@gmail.com>
 <018e01d82212$05cc7230$11655690$@zengyi-tech.com>
 <f7bba14b-ef1a-7669-e6f4-9fab89507e7e@gmail.com>
 <cfa365c7-0449-2946-e76d-12e2d0e35406@gmail.com>
In-Reply-To: <cfa365c7-0449-2946-e76d-12e2d0e35406@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6dce289-d649-4967-1d55-08d9f097edb1
x-ms-traffictypediagnostic: PH1P110MB1684:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1684C2B29A3D234834BB6076B7349@PH1P110MB1684.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 13Zh5jNrnnfG2OYCdaBCQzhke8UhTNvaRj+8SpLnkrDEva2o/EJs3egjEP+laC+9U9hoDBbdQI7iZNG9cFyQtkbuBJKEZOLEhz/6IN/lPKoVJiU3hCmt2PyZh4mczmKdsJVwee8wvgawT60PIWaZZ/4dtoKCt/Xpyw5UNCYd+XNmfN236M6SosJaX6eOXJ9d1Dkwre856fkBO6ERSlI+KdHKfCtrJ1aMKALz3cbVyPjKxzAfF3tp23HrWkds3qgt/ef67Nr6lI10xSEkH1vbN/AisLkFLd7xwJF3vN1Riow0PNKhSKC4UdbM7dYfYUftQcthbQUBV6dynLlMf2l2MEc1+MORE0ohJxCyL+jrc9TnaugI76MQ/RLMN/ewgQ84dW0xTtM7JrKEB78H6mWxdh1Qu7tthvf9a+XXT0h0lL+anpOr69GWOjf1UlhgjWvnYMTLlVh2JqBY1X4qgYbywtI1vN2P2jExc8n3047PAW1I7Hppy3qNc3Vm64Edydd5hnc1xRrYsEs43CKiWI3iaecwZeDS6pJ11roOSWms1FJajEyGxvd0WQRq8eVCOyjJzTl0HMyELL+ZjxyITDnBB3iZJG81sww5OJ1ZEXwQS+VOPoQ0Jd8l39DscPr0675d7K8sYa2OIEu9D5iO81vvFA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(136003)(376002)(39830400003)(346002)(396003)(9686003)(83380400001)(110136005)(186003)(316002)(86362001)(55016003)(71200400001)(66556008)(52536014)(5660300002)(2906002)(4744005)(38070700005)(7696005)(66476007)(8676002)(64756008)(76116006)(66446008)(508600001)(38100700002)(8936002)(6506007)(122000001)(33656002)(66946007)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 TJwMHmtZ7ny4Zd6kg3APWyCDn83RKDPphFV4JuBeeUvmO0Loq9oIycS+23cWMtcHRw0dqt49D1sj6+6B76Xqri26QotXV1nYcX71sqhH1dRCT/BQOApM5n2hV2VlbVtnck/K+U1mo+bc3ICCiIARzw4cHJm4VGcre8Oss3t8iiHNp3mO5Cf3ab5Ydr0b+dxQYmGGVOM8tNlekB568eRcMw==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b6dce289-d649-4967-1d55-08d9f097edb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 15:29:16.7078
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1684
Message-ID-Hash: VW4T5ZSVGB2K34PLYUIJX3L5HSSKE2GG
X-Message-ID-Hash: VW4T5ZSVGB2K34PLYUIJX3L5HSSKE2GG
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OAI with USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IMQA5YPZI4S5ZEDTPAYG5RPIDNGNIVNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6840862738460870529=="

--===============6840862738460870529==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1665E5C50ECCF356F8212B5DB7349PH1P110MB1665NAMP_"

--_000_PH1P110MB1665E5C50ECCF356F8212B5DB7349PH1P110MB1665NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R2VuZXJhbGx5IHNwZWFraW5nIHlvdSBjYW5ub3QgZG8gYmV0dGVyIHRoYW4gYWJvdXQgMjUgTXNw
cyBvdmVyIGEgMUdiRSBsaW5rLiBCeSBkZWZhdWx0IHRoZSBzYW1wbGVzIGFyZSBzaWduZWQgMTYt
Yml0IEkvUSBwYWlycywgd2hpY2ggbWVhbnMgMzIgYml0cyBwZXIgc2FtcGxlLiBBdCAyNSBNc3Bz
LCB0aGF0IG1lYW5zIHRoZSB0b3RhbCBkYXRhIHRocm91Z2hwdXQgaXMgODAwIE1icHMg4oCTIHdo
aWNoIGlzIHN0YXJ0aW5nIHRvIGFwcHJvYWNoIHRoZSBiYW5kd2lkdGggb3ZlciB0aGUgMSBHYnBz
IGxpbmsuDQoNCklmIHlvdSBoYXZlIDYwIE1zcHMgc2FtcGxpbmcgcmF0ZSwgdGhhdCBpcyAxOTIw
IE1icHMgdGhyb3VnaHB1dCwgd2hpY2ggaXMgbW9yZSB0aGFuIGEgMSBHYnBzIGxpbmsuICBJZiB5
b3UgY2FuIHRvbGVyYXRlIHRoZSBiYWQgcXVhbnRpemF0aW9uIGl04oCZcyBwb3NzaWJsZSB5b3Ug
Y291bGQgZ2V0IGNsb3NlciB0byB0aGF0IHJhdGUgYnkgdXNpbmcgc2lnbmVkIDgtYml0IEkvUSB2
YWx1ZXMsIGJ1dCBJ4oCZdmUgbm90IHRyaWVkIGl0LiAgSSB0aGluayB5b3Ugd291bGQgc3BlY2lm
eSB0aGlzIGFzIOKAnC0tcnhfb3R3IHNjOOKAnQ0KDQpCZXN0LA0KRGF2aWQNCg==

--_000_PH1P110MB1665E5C50ECCF356F8212B5DB7349PH1P110MB1665NAMP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
U2ltU3VuOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KQGZvbnQtZmFjZQ0KCXtm
b250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6RGVuZ1hpYW47DQoJcGFub3NlLTE6MiAxIDYg
MCAzIDEgMSAxIDEgMTt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFu
b3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAyIDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToi
XEBTaW1TdW4iOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KQGZvbnQtZmFjZQ0K
CXtmb250LWZhbWlseToiXEBEZW5nWGlhbiI7DQoJcGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEg
MTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwg
ZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1m
YW1pbHk6U2ltU3VuO30NCnNwYW4uRW1haWxTdHlsZTIwDQoJe21zby1zdHlsZS10eXBlOnBlcnNv
bmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndp
bmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7
DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAx
MS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlv
bjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+
PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8
L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0
IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNo
YXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMi
IGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0RjcyIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdv
cmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVv
dDssc2Fucy1zZXJpZiI+R2VuZXJhbGx5IHNwZWFraW5nIHlvdSBjYW5ub3QgZG8gYmV0dGVyIHRo
YW4gYWJvdXQgMjUgTXNwcyBvdmVyIGEgMUdiRSBsaW5rLiBCeSBkZWZhdWx0IHRoZSBzYW1wbGVz
IGFyZSBzaWduZWQgMTYtYml0IEkvUSBwYWlycywgd2hpY2ggbWVhbnMgMzIgYml0cyBwZXIgc2Ft
cGxlLiBBdCAyNSBNc3BzLA0KIHRoYXQgbWVhbnMgdGhlIHRvdGFsIGRhdGEgdGhyb3VnaHB1dCBp
cyA4MDAgTWJwcyDigJMgd2hpY2ggaXMgc3RhcnRpbmcgdG8gYXBwcm9hY2ggdGhlIGJhbmR3aWR0
aCBvdmVyIHRoZSAxIEdicHMgbGluay48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVv
dDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQt
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+SWYgeW91IGhhdmUgNjAgTXNw
cyBzYW1wbGluZyByYXRlLCB0aGF0IGlzIDE5MjAgTWJwcyB0aHJvdWdocHV0LCB3aGljaCBpcyBt
b3JlIHRoYW4gYSAxIEdicHMgbGluay4mbmJzcDsgSWYgeW91IGNhbiB0b2xlcmF0ZSB0aGUgYmFk
IHF1YW50aXphdGlvbiBpdOKAmXMgcG9zc2libGUgeW91IGNvdWxkIGdldCBjbG9zZXINCiB0byB0
aGF0IHJhdGUgYnkgdXNpbmcgc2lnbmVkIDgtYml0IEkvUSB2YWx1ZXMsIGJ1dCBJ4oCZdmUgbm90
IHRyaWVkIGl0LiZuYnNwOyBJIHRoaW5rIHlvdSB3b3VsZCBzcGVjaWZ5IHRoaXMgYXMg4oCcLS1y
eF9vdHcgc2M44oCdPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZx
dW90OyxzYW5zLXNlcmlmIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVv
dDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkJlc3QsPG86cD48L286cD48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5EYXZpZDxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_PH1P110MB1665E5C50ECCF356F8212B5DB7349PH1P110MB1665NAMP_--

--===============6840862738460870529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6840862738460870529==--
