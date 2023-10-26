Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BD57D7AE3
	for <lists+usrp-users@lfdr.de>; Thu, 26 Oct 2023 04:28:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05330384E84
	for <lists+usrp-users@lfdr.de>; Wed, 25 Oct 2023 22:28:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698287303; bh=gF3cahEQx5nPNRPeeltt/PFCsbAnfQ4FzqVSAVwkqdo=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Ym4F9QWD2ks8KTqj97gflEi9w6AQctezyO1ruhWl/JZwQdbPywsOGLuIM8pzDw72R
	 7Q/AZ5Vftm2QYO3N7Tns4c3NVYNxUzzX45JVvVcIYFB2fXiJAk/DuAfpMpU/Dx5H6z
	 4rdz5rDDhfOsRlBlmQyXlXM7PLnq6B3+buvJhqR+InHAi71jB4joUmEXC/sZAHwo3u
	 ssfYCKklkxEz+H9DkfucVN6VZQMJWx72Qw8efrecsucNZhXuut3vQDOxLfPbqNNBGp
	 +dAEA5u2dQyIW7l15q0JnT9eHM139t0z/4VH15lihRf7NMI/gpLrCsIZLftgi59XkJ
	 mO4z2B69ikDjw==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0079.outbound.protection.office365.us [23.103.208.79])
	by mm2.emwd.com (Postfix) with ESMTPS id 82EB3384E70
	for <usrp-users@lists.ettus.com>; Wed, 25 Oct 2023 22:27:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="Tj3iWJ11";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=sJOXjpQEULkuoV0ffUPLKP/RQwvviGFddzsSmRqG+uqpohnb7Py9/sy71Llvc3SElE7gx0vWgsJaDgtWEkWGhuqIJ8n5vUag6XiE/hjrX28nIdXCAn4ze1u1sQYuiy5YXtU77FM4Bf5ek396G/ysKOaS/Nhyu24ODC0K9bbXPMLLuY78nV+b7Bf9F9L3mx1XGopOOShqoyP0LeJQf8p2ethKdU4Ou6UgFfIsYwT8+EFeYnDlKlTb2VNNImsglZ/U/Zj7jX/RAkVmETe3j4tagXAe1OJhNLZD7U3w37B0SlIQFVpexOjppoqWrwdCCaBfohGwFm6yOOlN0yow039vjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggZAr0U4NO8FY2jVLtN+TTq0iD+SxZZXsic1M6mAh08=;
 b=Xl4Odpbmy0NV+1bfjQMI6D9IwyUOstAoQ9KFD7VGIeCFVgj6vMEw6XijIJovWu0K01pNxnWgeVio+THdO4HnXqwHb3yU/xmO9AUMDK21lPDfZcdDux8GLzZ9KS4tOuqhcNDNDqCwsTQjLVxDj76A3mlJubx1Bv+WmebKpZVYvyQXGtvFM6NgrjsQgwuTdW62dD6g/9mkQrIJwdJ0cpJlcZyj57QE0gQ6h/0gEtR+6QoTCh4esOWcGmAdbgYsl83EH8wbe34kGwHdQtj5T7jkf/uBaQ6iy/MJjPWWdEpnJye5dnqwjioBzL/gYcbnhGkPNDFyvy+hwRXVSgQ/w9TGpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ggZAr0U4NO8FY2jVLtN+TTq0iD+SxZZXsic1M6mAh08=;
 b=Tj3iWJ11SGWJ/2Odli3CBEM8foIaB/NhIuoNOYZm0STg3YLHS2MduXjwRVW5bQc65s0xG1C1XE9lGHDuMBspNAvCduhyjw+jKZW3AqlCIChW6F8Kbh92KrVXytJpdIbjz63dUL2T4RIjtWH3P/hCCVTSzdo3+wSQJ1hccWYuhqmENqxCZhwP8f7CsWMOSzM0HSBHSK9yciO2UmjqYhIUlmAdEd9RqVyG7fhMNQSs6xwnsGGie5L6PFqRN68JrXCsP+Pqk4rNOyYmiycdsPfR+i0/mAI6uGXh3vvFOS9c22lYbCsxRx3TcqsHeZ5HxVwFTg4/4Vk+skD2OO9xLZLvWA==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1192.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.51; Thu, 26 Oct
 2023 02:27:56 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::e28d:7cf8:f8dc:a8ec]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::e28d:7cf8:f8dc:a8ec%4]) with mapi id 15.20.6863.051; Thu, 26 Oct 2023
 02:27:56 +0000
To: Brian Hay <brian@chaosinc.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] N320 Remote Power On
Thread-Index: AQHaB5bFOBcIVSSI90GWoblcfvFbFLBbVy8g
Date: Thu, 26 Oct 2023 02:27:56 +0000
Message-ID: 
 <BN2P110MB1747CE4A6304B0F513D9B57BB7DDA@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: 
 <CAAEs_nQf2L0vo0cqs3XFZzW9jpb2cp5sPaTsFe65vT6tkKt2mA@mail.gmail.com>
In-Reply-To: 
 <CAAEs_nQf2L0vo0cqs3XFZzW9jpb2cp5sPaTsFe65vT6tkKt2mA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1192:EE_
x-ms-office365-filtering-correlation-id: 14274c23-eb6e-4edf-b1ca-08dbd5cb2a3d
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0xG8CbiGrFCokKzL3UcmBVkEk7iGuEMy7kJW12ynGEWqO24ZCndUJyRlZg7rKQkXFxHQD0hbjA15QUilmNyo91p4dYEz/EaRLCc6iGm69QYianqfZ6kRRvqnfQz+BBqXni6tulB9BeDQj9OCD/Lnvo3h6P/Z9qxvPD84vCuKvpNwBuF9OPzH0zySNrvPb71y9lVFA7pvt8gMYqzwC5iCmZnCid0drmpYImVKTet497q5uqX7b9fIk0hI4HIsmOTC9e3cF5YqCNuAnL+lk008L2SiNdSG6/LHIhVCEtrT7/IV+6e2Ma5FtWFZsGvxMT+zIeJIHOe2YcLHUUSjjfAs+vrN11+9APkKcJkuE9M5Id7N9rJU6kCB8g3t+WJzzMcBeYD6OzPJZ/syg3OquYIZuKYfb6Vm484uhwaY4ta7TDjQXLeC0Y62JpzFQyeCgdZ8DRLkBujSL0DMk3XbMSqDpKMR4nfCZVc5DSQUDAtwKxFK8Zdvmp5QkKuDSMB+P/mcY00IPzAgwMbpyjL/7qz59+Snm264dnQ/4q48FT710/0gAD6iGYASmRWs43K4cWaK46+DAXuADXMW1qp19QHCY+U4THmdNkE5jN+1r0VB2s/lzAnkVc8F4I5qGlHP1hyh
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(39830400003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(41320700001)(4744005)(38100700002)(166002)(2906002)(7696005)(55016003)(5660300002)(86362001)(41300700001)(52536014)(8676002)(33656002)(8936002)(9326002)(122000001)(6506007)(66556008)(71200400001)(508600001)(110136005)(64756008)(76116006)(66476007)(53546011)(66446008)(66946007)(966005)(9686003)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 VhrysCx9aLJ9S/eoZpDs3ZxWuIm8NpKR/YaxYJ36hvlwS0Pllvk3LLUZDfNMwZxhPK5TTw8mTnqatICLFUersoCD9o+AbG2ycVDUk0C4aP5enOQYNViwj1os96tju1c7/R0hWw9Hz8Q2+mup4l/w0LeZ+TrdwfQLqLduSAQObqawxUl2bNiu/t6BGhURiy08jnQlHwh4EwzMuHEZXIyToWe4MUW+wM/dh9XUheiH02Y4tOt3RseA/vFoWB/v8m7lKe3fbNRN8vc3wivxIVweyAUR9Bs5la2qnpD1Le97+Ipyl6glP/MDgbymQSZrT0l0mgB9AOOg98RLrCUOuP1stFpbfezZs+gpNPAYOCKJGWUFnfwB57cuZw+dDgd94vN1l8ExFDFs8A4lPFQXaqJAQgNPOuGKB81M7LuXldH2gvTME2LqxlBIaEvk2/uB2KrkyUcBedhF9GpQhWLjLPpoFm4U0D+6HGTIB9AxmtxP7MA=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 14274c23-eb6e-4edf-b1ca-08dbd5cb2a3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 02:27:56.6813
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1192
Message-ID-Hash: EB5JSLYGF4PYJQ6GRFHC4YJVF5WBV66L
X-Message-ID-Hash: EB5JSLYGF4PYJQ6GRFHC4YJVF5WBV66L
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 Remote Power On
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PNAP4YEGV236ZLWNDJQLDU6CNSLCI4G5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============5148902446240237741=="

--===============5148902446240237741==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747CE4A6304B0F513D9B57BB7DDABN2P110MB1747NAMP_"

--_000_BN2P110MB1747CE4A6304B0F513D9B57BB7DDABN2P110MB1747NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJpYW4sDQoNCk9uZSBhcHByb2FjaCB0aGF0IHdvcmtlZCBmb3IgbWUg4oCTIHRoZXJl4oCZ
cyBhbiBFRVBST00gZmxhZyB5b3UgY2FuIHNldCBzbyB0aGF0IHRoZSBOMzIwIGF1dG9tYXRpY2Fs
bHkgYm9vdHMgd2hlbiBwb3dlciBpcyBhcHBsaWVkIFsxXS4gVGhlbiBwbHVnIHRoZSBOMzIwIGlu
dG8gYW4gRXRoZXJuZXQtY29udHJvbGxlZCBwb3dlciBzd2l0Y2gsIGFuZCB5b3UgY2FuIGNhdXNl
IGl0IHRvIGJvb3QgcmVtb3RlbHkgYnkgZW5hYmxpbmcgcG93ZXIgdmlhIG5ldHdvcmsgY29udHJv
bC4NCg0KSG9wZSB0aGlzIGhlbHBzLA0KRGF2aWQNCg0KWzFdIGh0dHBzOi8va2IuZXR0dXMuY29t
L1VTUlBfTjMwMC9OMzEwL04zMjAvTjMyMV9HZXR0aW5nX1N0YXJ0ZWRfR3VpZGUjRW5hYmxlX0F1
dG9fQm9vdGluZw0KDQoNCkZyb206IEJyaWFuIEhheSA8YnJpYW5AY2hhb3NpbmMuY29tPg0KU2Vu
dDogV2VkbmVzZGF5LCBPY3RvYmVyIDI1LCAyMDIzIDY6NTggUE0NClRvOiB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQ0KU3ViamVjdDogW1VTUlAtdXNlcnNdIE4zMjAgUmVtb3RlIFBvd2VyIE9u
DQoNCkhlbGxvLA0KDQpEb2VzIGFueW9uZSBrbm93IGlmIHRoZSBOMzIwIGhhcyBhIHJlbW90ZSBw
b3dlciBvbiBvciBXYWtlLW9uLUxBTiBjYXBhYmlsaXR5PyBPciBpcyB0aGUgb25seSB3YXkgdG8g
dHVybiBpdCBvbiBieSBwaHlzaWNhbGx5IHB1c2hpbmcgdGhlIHBvd2VyIGJ1dHRvbj8NCg0KVGhh
bmtzLA0KDQpCcmlhbg0K

--_000_BN2P110MB1747CE4A6304B0F513D9B57BB7DDABN2P110MB1747NAMP_
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
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0
aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxOA0KCXttc28tc3R5bGUtdHlwZTpwZXJz
b25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3
aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5
Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9u
MQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4waW47
fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwh
LS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3Bp
ZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1s
Pg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRh
dGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8
Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3
b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+SGkgQnJpYW4sPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPk9uZSBhcHBy
b2FjaCB0aGF0IHdvcmtlZCBmb3IgbWUg4oCTIHRoZXJl4oCZcyBhbiBFRVBST00gZmxhZyB5b3Ug
Y2FuIHNldCBzbyB0aGF0IHRoZSBOMzIwIGF1dG9tYXRpY2FsbHkgYm9vdHMgd2hlbiBwb3dlciBp
cyBhcHBsaWVkIFsxXS4gVGhlbiBwbHVnIHRoZSBOMzIwIGludG8gYW4gRXRoZXJuZXQtY29udHJv
bGxlZCBwb3dlciBzd2l0Y2gsIGFuZCB5b3UgY2FuIGNhdXNlIGl0IHRvIGJvb3QgcmVtb3RlbHkg
YnkgZW5hYmxpbmcNCiBwb3dlciB2aWEgbmV0d29yayBjb250cm9sLjxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5Ib3BlIHRoaXMgaGVscHMsPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5EYXZpZDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJz
cDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5bMV0gPGEgaHJlZj0iaHR0cHM6Ly9r
Yi5ldHR1cy5jb20vVVNSUF9OMzAwL04zMTAvTjMyMC9OMzIxX0dldHRpbmdfU3RhcnRlZF9HdWlk
ZSNFbmFibGVfQXV0b19Cb290aW5nIj4NCmh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlBfTjMwMC9O
MzEwL04zMjAvTjMyMV9HZXR0aW5nX1N0YXJ0ZWRfR3VpZGUjRW5hYmxlX0F1dG9fQm9vdGluZzwv
YT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2Jv
cmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9iPiBCcmlhbiBIYXkgJmx0O2JyaWFuQGNo
YW9zaW5jLmNvbSZndDsgPGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgT2N0b2JlciAyNSwg
MjAyMyA2OjU4IFBNPGJyPg0KPGI+VG86PC9iPiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxi
cj4NCjxiPlN1YmplY3Q6PC9iPiBbVVNSUC11c2Vyc10gTjMyMCBSZW1vdGUgUG93ZXIgT248bzpw
PjwvbzpwPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPHRhYmxlIGNsYXNzPSJNc29Ob3Jt
YWxUYWJsZSIgYm9yZGVyPSIwIiBjZWxsc3BhY2luZz0iMCIgY2VsbHBhZGRpbmc9IjAiIHN0eWxl
PSJib3JkZXItY29sbGFwc2U6Y29sbGFwc2UiPg0KPHRib2R5Pg0KPHRyIHN0eWxlPSJoZWlnaHQ6
MTMuNXB0Ij4NCjx0ZCBzdHlsZT0icGFkZGluZzouNzVwdCAuNzVwdCAuNzVwdCAuNzVwdDtoZWln
aHQ6MTMuNXB0Ij48L3RkPg0KPC90cj4NCjx0cj4NCjx0ZCBzdHlsZT0icGFkZGluZzouNzVwdCAu
NzVwdCAuNzVwdCAuNzVwdCI+PC90ZD4NCjwvdHI+DQo8L3Rib2R5Pg0KPC90YWJsZT4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPkhlbGxvLCZuYnNwOzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxk
aXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Eb2VzIGFueW9uZSBrbm93IGlmIHRoZSBOMzIwIGhh
cyBhIHJlbW90ZSBwb3dlciBvbiBvciBXYWtlLW9uLUxBTiBjYXBhYmlsaXR5PyBPciBpcyB0aGUg
b25seSB3YXkgdG8gdHVybiBpdCBvbiBieSBwaHlzaWNhbGx5IHB1c2hpbmcgdGhlIHBvd2VyIGJ1
dHRvbj88bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+VGhhbmtzLDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5CcmlhbjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9k
aXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BN2P110MB1747CE4A6304B0F513D9B57BB7DDABN2P110MB1747NAMP_--

--===============5148902446240237741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5148902446240237741==--
