Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E3743BBA3
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 22:35:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94A3C383E71
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 16:35:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=lunet.onmicrosoft.com header.i=@lunet.onmicrosoft.com header.b="C1BFdVEa";
	dkim-atps=neutral
Received: from mta-2.lboro.ac.uk (mta-2.lut.ac.uk [158.125.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 490AC383CAB
	for <usrp-users@lists.ettus.com>; Tue, 26 Oct 2021 16:34:30 -0400 (EDT)
Received: from itsex-1.lboro.ac.uk ([158.125.160.16] helo=itsex-1.lunet.lboro.ac.uk)
	by mta-2.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1mfT9D-0000aZ-8e; Tue, 26 Oct 2021 21:34:20 +0100
Received: from itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) by
 itsex-1.lunet.lboro.ac.uk (2001:630:301:d314:b8fc:8e06:90b0:b933) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.12; Tue, 26
 Oct 2021 21:34:14 +0100
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (2a01:111:f400:7e0d::209) by itsex-2.lunet.lboro.ac.uk
 (2001:630:301:d314::160:17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.12 via
 Frontend Transport; Tue, 26 Oct 2021 21:34:14 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVMKatP3ixnrQzKuG7lxzmyxF3nkATzcVlmpOXJwHX3g8kqX9dvmmRbdtoQUs9C+fZQpu64EswSLLbRar3S0CJkABkjJY/jE7oGRp+4aUYtUJvT+8osRqx4OZ6VJrrW1ks69mIJg3Le4D/xQerw7y1a/GPLuHpElAO8uXTuju0VrDPcjM0AoHOwggFrecmEojwZEbCVH9CDHA5ksAm4qlE7xIY2C87WTzjVPBmBz9/ec2MV5zZHtuTyQG3l0uoRkZP9EFJpiqo8Zvbg7NRBQcN90aoz14JV58OexeBd20UEgYBlrnpX29/vQHj1AVCzau+Rb9gGeiLaExNL2t08jxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQqh5ZnaTdS3Hn0kRUbz+YCO+iHMOJvhtORDpUlsFh0=;
 b=cNTwSPw7Zy2YjWU7d//LVHbZgWKsU2YMgdp27Fg0rrGIHDjKqZi7bdL2/r5z4k6MqWCNfYDxS883OhXqmvwK0MwxX4b3iiW2DrQovjLDnnopbzle+kpxYv56VCBEo7TUhBjw7sah7cBR5HD6W3zdCHU9IR9LWkwFwOCKwlYo5uTqtkroRmsLLE58plpfeRwovNw89umyVuiZ5fpnbd0Ac9rm0qiJTMSMzNZOh493MxCrliNO9VUcBYVrB5ZXLNZFgWY4q6qu4qkcZAwVxgJOkhte6edrj7wEcRw2QIBNrHlxloUxMKfDrXBtnixXbv3IV119C8M9zriPle7YOq6NWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lboro.ac.uk; dmarc=pass action=none header.from=lboro.ac.uk;
 dkim=pass header.d=lboro.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lunet.onmicrosoft.com;
 s=selector2-lunet-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lQqh5ZnaTdS3Hn0kRUbz+YCO+iHMOJvhtORDpUlsFh0=;
 b=C1BFdVEa0RoxrPY6T9h3rBr+zKwmhtsu7j4/8F3Mgmh9f7/JKM6QbBaY7vdbT9Q53LH/2TYhaGu/t/BuXRXcOw9TezmZyFzizbWMMW6r4GSd85H9LfwuVC17Y2TgkIdpeF/IJh3mrstbizMhaMLVwgkY5hmjvjTV7UDn4HT1SME=
Received: from AM0PR04MB6644.eurprd04.prod.outlook.com (2603:10a6:208:16d::28)
 by AM0PR04MB4035.eurprd04.prod.outlook.com (2603:10a6:208:62::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Tue, 26 Oct
 2021 20:34:13 +0000
Received: from AM0PR04MB6644.eurprd04.prod.outlook.com
 ([fe80::4170:34a9:1173:9746]) by AM0PR04MB6644.eurprd04.prod.outlook.com
 ([fe80::4170:34a9:1173:9746%3]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 20:34:13 +0000
From: Ming You <M.You@lboro.ac.uk>
To: Ivan Zahartchuk <adray0001@gmail.com>, Jonathon Pendlum
	<jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
Thread-Index: AQHXxs5A91yuFnPJgkSPFK7GS1P5BKveyvWAgABRIYCAAgiSgIABIiyAgAAXUICAADbTpoAB6siAgAFDPICAAACP2g==
Date: Tue, 26 Oct 2021 20:34:13 +0000
Message-ID: <AM0PR04MB664420F8EC447640C09270BEBA849@AM0PR04MB6644.eurprd04.prod.outlook.com>
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
 <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
 <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com>
 <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
 <9db5f18f-ec4b-fc6b-fb65-bcef88563bab@gmail.com>
 <CAPRRyxttDqNtknAo=owrQk6S9-2wMkdv-iuNr7jDXxoe5P=oEA@mail.gmail.com>
 <VE1PR04MB6653DF0BBF0BCB770B15AD56BA829@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <CAL7q81sehQr=j+33w60JRShgNWOsjNPZditMd20hnVek1m6JnQ@mail.gmail.com>
 <CAPRRyxsw5SF9Zi2-yOdwZ8MSRPOsNELCbqouYRzJCg3w7u0J=A@mail.gmail.com>
In-Reply-To: <CAPRRyxsw5SF9Zi2-yOdwZ8MSRPOsNELCbqouYRzJCg3w7u0J=A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 1d74add1-7867-dd3b-7a79-f8171683c600
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b347a5c0-7fb7-4254-0132-08d998bff901
x-ms-traffictypediagnostic: AM0PR04MB4035:
x-microsoft-antispam-prvs: <AM0PR04MB4035EA6DE7CAA80D96CF48B7BA849@AM0PR04MB4035.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZyeeQh0sJRdGCP1ymtd7SPKyriGBL9oDaKA5jJRhV+ypc6xDtDypJAvI9Yzg3V+V9SH4So8SQA3UJki2+VcNxHnyN0qIM/5Nvrxew9UYh1p18Wx/5JRJ7zc4/fUesc30zonnuBcdgLt3MG3EZhsLocdDr0x59S2wDkoCktWxb57Q17XELMHJB77x3PZi1YytHbp/gLgpDIdRySXSUcdUrwJZFkFQqTeM6FR4ILpJIDR9S1C3ACuwK85HkkXqILdYLA3ShYFSK5ZcauvWQ1QM8w+N1LpzOaKLRsMnYyokOTQmTn8NwL68ic2FV9Y1YdcCba+CShRyqxo3WRgLJQskBAqp9LNtFb7k9xNG3AzGr1I008/aWz8NkOuXojiOh/Y/K6fUgDu+ux09ISb/9GYbBpzfLfjSIGt86zNYKi2aV4AMsc7B5gszGs/m24UYIiSb8tQhRQaZD3McsKxP42rKVMffONnyzY/M3mYbpTLug0MVOyD7KfsSe1S1qkOGDxF4iRHF+fa/ugC3mvzdLW/k+L4Xgxc93J02ygBwWiXyZLzPabFLbdCV9BDm3ziL3qF3EgsVq/2QoUppfTotbo8qCjaFnPJfyoPEdR9i+wyl0rcP+q0ngARbT4SNRTxs8Jy1B7H8qajZaiRLzW3ta2727igqwQo8YbqjCjQ2RBq5MOTqVdlXAj0xnbHEMjXgkuv0qIhzkoV+qa+rKZ9W5CQ3XQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(122000001)(508600001)(71200400001)(66446008)(5660300002)(9686003)(66556008)(64756008)(91956017)(76116006)(186003)(33656002)(52536014)(83380400001)(55016002)(38070700005)(66946007)(55236004)(2906002)(4001150100001)(316002)(786003)(6506007)(4326008)(53546011)(7696005)(110136005)(86362001)(66476007)(38100700002)(8676002)(8936002)(26005)(54906003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?windows-1251?Q?fsKB2GUrMNQWkDbYA7hhBFwdT60J+wyZK79kP6hH3Pn9syct/s8FUFUY?=
 =?windows-1251?Q?rwd62XZRwyyu1JJhwwk5/qBbNLhTy4qmYK1OXc2oqVDHwIDEYCcskqFI?=
 =?windows-1251?Q?iWJtnugOE3vL/Amvgiml/AN7LgBEb3jx4AMLwRnGwc5xelBMoAGz0SXi?=
 =?windows-1251?Q?0S3T0FjaHR7c4rZxBr+YObEPewtW/FWxpbmMt819ZZwardR1g7qWBk+r?=
 =?windows-1251?Q?9iGT5WQDY9f0ImnCi3FLA/gh7+k4SnlQLiaxlU/CAN5GpQTnpzzFe3wv?=
 =?windows-1251?Q?E4D1nfGjPlcbRPU4eW0KoApFct6D1agX+Q8Jzel4EmE8QqEbktCQWXeZ?=
 =?windows-1251?Q?T7L8Wz+Ntaqb5rlI+U+ZXHsPfYqZOsVJN0b7hVy2BwdJhfQ12zD2e0lN?=
 =?windows-1251?Q?KOWYetwoDe5qh+Cz3gXndqSbeVcDHooGQbV86RTXd+dNukubbNgwMvcK?=
 =?windows-1251?Q?2yuJ+IIYl5lxn/nQWW3MOHKTVEopnkkFuKNpg5BK52+/sB+s/ueQM6c0?=
 =?windows-1251?Q?/eFBuq/GUgLohm15QLLbgGW0HvIvEG3M4gNI4bK08J/ymYrlEKGpZRKE?=
 =?windows-1251?Q?QvP5URTQog6G6plMZIjEsjHAiFjjRjTFFZwUEsVVMbTih4dxcOYTZY0u?=
 =?windows-1251?Q?4w0PsYPp4FiHOcboq3lJ3gCSCOohtK0GyFmhfvJaoqU7qCT9nUWnE8/V?=
 =?windows-1251?Q?tKqiuhvjz61yphqFi9vXPSfUY7WWLV0AKgIxnPHJokPTCCY/CO0S4hsA?=
 =?windows-1251?Q?YTo1KVniWWCOk3EsxlbS6IWSRJJjuem7dhkMASzyb0cz6gNjLij+oSgZ?=
 =?windows-1251?Q?I0OV3DL4I9sY4du2g5y1l269vW/NEa/OW9gd/mEeQMvhTXJjrOwyTfKF?=
 =?windows-1251?Q?dPemjvBQZL49YgJ4a5cebQC1wya+4mhsaW5Blcxj0wl1RR9ihAVrA8al?=
 =?windows-1251?Q?QrC3Zp0iKfESDtsAWqCwQvU20etrXw/4MoonDU9VFl6WnEGvO/BeXELz?=
 =?windows-1251?Q?pjBzTE8z93qpvbNlppXEZM8qtQt5y2VE3hPLunhv/k/Zc7GxOIqA6XnT?=
 =?windows-1251?Q?9rftSyO4vHTrwTlYDbqBawP6ipqdEJnPlYQ2cljvwEVRv9AcX/2mmLcJ?=
 =?windows-1251?Q?i5haH6YLnUf0Wo8ZsCO2oS15y77lr37DPyi6SiV/1lZTX7IJ4AS8I+Si?=
 =?windows-1251?Q?ngZz5Zx10D01xRH9hq+u0kmB2K1z1x/rTADdDqCQnAptbFJIwPi2dMg4?=
 =?windows-1251?Q?igYh7nTfDJpLXv4N91aWFBdcpuDkSKFTyJFhqyl1WVrWjCpcA7EHJJNJ?=
 =?windows-1251?Q?lVZ8+7xVMC5VXMo136SNbOOfuoZlTFS+hJKJd4M7NtI4n/75niYYF2qT?=
 =?windows-1251?Q?MRRzxOuV1EsQ6LvolLFtWZLAg3EqASdBbzo=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="windows-1251"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6644.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b347a5c0-7fb7-4254-0132-08d998bff901
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 20:34:13.2604
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MlgDaqJtY3spRwKmXnDXZx9eEusBg0fTIjYOVWgaheeaQm9P8+WXZfpnWlANpuVssD8vtBez3Dy/V4Ii6slSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4035
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: 25604737e4f1920c814335ec8308b46b
X-Lboro-Creds: scanned on mta-2.lboro.ac.uk
Message-ID-Hash: GDTS3QYARJRSTEF7WNEK52KTPDAOS6U6
X-Message-ID-Hash: GDTS3QYARJRSTEF7WNEK52KTPDAOS6U6
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GDTS3QYARJRSTEF7WNEK52KTPDAOS6U6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

SGkgSXZhbiwNCg0KRG8geW91IG1pbmQgdG8gc2hhcmUgdGhlIHlhbWwgZmlsZSAoLnltbCk/IE15
IHRoaW5raW5nIGlzIHRoZSBidWcgaXMgaW4gaXQuDQoNClRoYW5rcywNCk1pbmcNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogSXZhbiBaYWhhcnRjaHVr
IDxhZHJheTAwMDFAZ21haWwuY29tPg0KU2VudDogMjYgT2N0b2JlciAyMDIxIDIxOjMwDQpUbzog
Sm9uYXRob24gUGVuZGx1bQ0KQ2M6IE1pbmcgWW91OyBNYXJjdXMgRC4gTGVlY2g7IGRpc2N1c3Mt
Z251cmFkaW87IHVzcnAtdXNlcnMNClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gUmU6IEZ3ZDog
QWRkaW5nIGEgV2luZG93IGJsb2NrIHRvIGFuIFJGTk9DIGdyYXBoDQoNCioqIFRISVMgTUVTU0FH
RSBPUklHSU5BVEVEIE9VVFNJREUgTE9VR0hCT1JPVUdIIFVOSVZFUlNJVFkgKioNCg0KQmUgd2Fy
eSBvZiBsaW5rcyBvciBhdHRhY2htZW50cywgZXNwZWNpYWxseSBpZiB0aGUgZW1haWwgaXMgdW5z
b2xpY2l0ZWQgb3IgeW91IGRvbid0IHJlY29nbmlzZSB0aGUgc2VuZGVyJ3MgZW1haWwgYWRkcmVz
cy4NCg0KSSBmaXhlZCBhbGwgdGhlIGJ1Z3MgYnV0IHRoZSByZXN1bHQgcmVtYWluZWQgdGhlIHNh
bWUuICgoDQoNCuLyLCAyNiDu6vIuIDIwMjEg4y4g4iAwNDoxNCwgSm9uYXRob24gUGVuZGx1bSA8
am9uYXRob24ucGVuZGx1bUBldHR1cy5jb208bWFpbHRvOmpvbmF0aG9uLnBlbmRsdW1AZXR0dXMu
Y29tPj46DQpIaSBJdmFuLA0KDQpNaW5nIGlzIGNvcnJlY3QuIFlvdSBuZWVkIHRvIG1vZGlmeSB0
aGlzIGxpbmU6DQoNCi0geyBzcmNibGs6IHdpbmRvdzAsIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6
IGZmdDAsICBkc3Rwb3J0OiBpbjAgfQ0KDQp0bw0KDQotIHsgc3JjYmxrOiB3aW5kb3cwLCBzcmNw
b3J0OiBvdXRfMCwgZHN0YmxrOiBmZnQwLCAgZHN0cG9ydDogaW5fMCB9DQoNCkpvbmF0aG9uDQoN
Ck9uIFN1biwgT2N0IDI0LCAyMDIxIGF0IDQ6MDQgUE0gTWluZyBZb3UgPE0uWW91QGxib3JvLmFj
LnVrPG1haWx0bzpNLllvdUBsYm9yby5hYy51az4+IHdyb3RlOg0KSGkgSXZhbiwNCg0KSSB0aGlu
ayB5b3UgbWlnaHQgYWxzbyBjaGVjayB0aGUgdHlwb3MsIGFzIEkgdGhpbmsgZm9yIHRoZSBmZnQw
IG1vZHVsZSBmcm9tIEV0dHVzIHNob3VsZCBoYXZlIGlucHV0IHBvcnQgbmFtZSAiaW5fMCIgYW5k
IG91dHB1dCBwb3J0IG5hbWUgIm91dF8wIiwgdW5sZXNzIHlvdSd2ZSBtb2RpZmllZCBpdC4NCg0K
SG9wZSB0aGlzIGhlbHBzIGFuZCBnb29kIGx1Y2shDQoNClRoYW5rcywNCk1pbmcNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogSXZhbiBaYWhhcnRjaHVr
IDxhZHJheTAwMDFAZ21haWwuY29tPG1haWx0bzphZHJheTAwMDFAZ21haWwuY29tPj4NClNlbnQ6
IDI0IE9jdG9iZXIgMjAyMSAxNzo0MA0KVG86IE1hcmN1cyBELiBMZWVjaA0KQ2M6IGRpc2N1c3Mt
Z251cmFkaW87IHVzcnAtdXNlcnMNClN1YmplY3Q6IFtVU1JQLXVzZXJzXSBSZTogRndkOiBBZGRp
bmcgYSBXaW5kb3cgYmxvY2sgdG8gYW4gUkZOT0MgZ3JhcGgNCg0KKiogVEhJUyBNRVNTQUdFIE9S
SUdJTkFURUQgT1VUU0lERSBMT1VHSEJPUk9VR0ggVU5JVkVSU0lUWSAqKg0KDQpCZSB3YXJ5IG9m
IGxpbmtzIG9yIGF0dGFjaG1lbnRzLCBlc3BlY2lhbGx5IGlmIHRoZSBlbWFpbCBpcyB1bnNvbGlj
aXRlZCBvciB5b3UgZG9uJ3QgcmVjb2duaXNlIHRoZSBzZW5kZXIncyBlbWFpbCBhZGRyZXNzLg0K
DQpJIHJlYWQgdGhlIG1hbnVhbC4gQW5kIEkgdHJpZWQgdG8gZG8gZXZlcnl0aGluZyBhY2NvcmRp
bmcgdG8gdGhlIGluc3RydWN0aW9ucyBhbmQgZXhpc3RpbmcgZXhhbXBsZXMuIFRoZSB5YW1sIHNv
dXJjZSBmaWxlIGFsc28gdXNlcyB4MzAwX3JhZGlvIGJsb2NrDQoNCuLxLCAyNCDu6vIuIDIwMjEg
4y4g4iAxODoxNywgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbTxtYWls
dG86cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+PG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNv
bTxtYWlsdG86cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+Pj46DQpPbiAyMDIxLTEwLTIzIDU6NTgg
cC5tLiwgSXZhbiBaYWhhcnRjaHVrIHdyb3RlOg0KDQpJIHdhbnQgdG8gY3JlYXRlIEZQR0EgZmly
bXdhcmUgZm9yIFVTUlAgRTMxMCB3aXRoIHdpbmRvdyBmdW5jdGlvbiBidXQgSSBnZXQgdGhlIGVy
cm9yIEkgZGVzY3JpYmVkIGFib3ZlLiBNeSB5YW1sIGZpbGUgaXMgYWxzbyBhdHRhY2hlZCBhYm92
ZS4gSSBuZWVkIHRvIGRvIHdpbmRvd2luZyBhbmQgRkZUIG9uIHRoZSBGUEdBIHNpZGUuIEFuZCB1
bmRlcnN0YW5kIHdoeSBGRlQgcmV0dXJucyB6ZXJvIHZhbHVlcyBldmVuIHdoZW4gaXQgaXMgY29u
ZmlndXJlZCB0byBwcm9kdWNlIGNvbXBsZXggZGF0YS4NCg0KW2ltYWdlLnBuZ10NCg0K7/IsIDIy
IO7q8i4gMjAyMSDjLiDiIDE3OjU1LCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21h
aWwuY29tPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT48bWFpbHRvOnBhdGNodm9uYnJh
dW5AZ21haWwuY29tPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+PjoNCk9uIDIwMjEt
MTAtMjIgNjowNSBhLm0uLCBJdmFuIFphaGFydGNodWsgd3JvdGU6DQoNClllcyBJIGFtIHNldHRp
bmcgZmZ0IGZvciBtYWduaXR1ZGVzLiBPbiB0aGUgZnJvbnQgc2lkZSwgSSBhbSBkb2luZyBhIGxv
Zy4gSSBwZXJmZWN0bHkgdW5kZXJzdGFuZCB3aGVyZSBpbmZpbml0eSBjb21lcyBmcm9tLiBJIGRv
bpJ0IHVuZGVyc3RhbmQgd2h5IHRoZSBGRlQgcmV0dXJucyAwLiBCdXQgaG93IGNhbiBJIGNvbmZp
Z3VyZSB0aGUgV2luZG93Pw0KDQpXaGF0IGRvZXMgdWhkX3VzcnBfcHJvYmUgc2hvdyBpbiB0aGUg
IlJGTk9DIEJsb2NrcyIgc2VjdGlvbiBvbiB0aGlzIGRldmljZT8NCg0KSSB0aGluayB0aGUgd2lu
ZG93IFJGTk9DIGZ1bmN0aW9uIGluIEdOdSBSYWRpbyB0YWtlcyBhIGxpc3Qgb2YgdGhlIHdpbmRv
dyB2YWx1ZXMgYXMgYSBwYXJhbWV0ZXItLXlvdSBjYW4gcG9wdWxhdGUgdGhhdCB3aXRoIGFueSBv
ZiB0aGUgd2luZG93LiogZnVuY3Rpb25zDQogIHdpdGhpbiBHbnUgUmFkaW8uDQoNCg0K7/IsIDIy
IO7q8i4gMjAyMSDjLiDiIDAxOjUxLCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21h
aWwuY29tPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT48bWFpbHRvOnBhdGNodm9uYnJh
dW5AZ21haWwuY29tPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+PjoNCk9uIDIwMjEt
MTAtMjEgNjo0MCBwLm0uLCBJdmFuIFphaGFydGNodWsgd3JvdGU6DQoNCg0KSGVsbG8sIEkgaGF2
ZSBhIHByb2JsZW0gdGhhdCB3aGVuIHJlY2VpdmluZyBzYW1wbGVzIGZyb20gdGhlIFVTUlAgRTMx
MCBib2FyZCwgYWZ0ZXIgdGhlIEZGVCBibG9jayBhdCBsb3cgZ2FpbiwgemVybyB2YWx1ZXMgYXJl
IHJlY2VpdmVkLiBBZnRlciB0aGF0IEkgbG9nIHRoZW0gYW5kIGdldCBpbmZpbml0eS4gSSB3YW50
ZWQgdG8gZmlndXJlIG91dCB3aGF0IHRoZSBwcm9ibGVtIGlzLCBidXQgSSBoYXZlIG5vIGlkZWEs
IG1heWJlIHRoZSBXaW5kb3cgYmxvY2sgd2lsbCBmaXggdGhlIHNpdHVhdGlvbi4gQnV0IHdoZW4g
YnVpbGRpbmcgbXkgeWFtbCBmaWxlLCBJIGdldCB0aGUgZXJyb3I6DQpbRVJSXSAyIFVucmVzb2x2
ZWQgY29ubmVjdGlvbihzKQ0KW0VSUl0gICAgICh3aW5kb3cwLW91dF8wIC0+IGZmdDAtaW4wKQ0K
W0VSUl0gICAgIChmZnQwLW91dF8wIC0+IGVwMS1pbl8wKQ0KW0lORl0gICAgICAgICAoKCdyYWRp
bzAnLCAnY3RybF9wb3J0JywgJ21hc3RlcicpLCkNCltJTkZdICAgICAgICAgKCgncmFkaW8wJywg
J3RpbWVfa2VlcGVyJywgJ2xpc3RlbmVyJyksKQ0KW0lORl0gICAgICAgICAoKCdyYWRpbzAnLCAn
eDMwMF9yYWRpbycsICdzbGF2ZScpLCkNCltJTkZdICAgICAgICAgKCgnX2RldmljZV8nLCAnY3Ry
bHBvcnRfcmFkaW8nLCAnc2xhdmUnKSwpDQpbSU5GXSAgICAgICAgICgoJ19kZXZpY2VfJywgJ3Rp
bWVfa2VlcGVyJywgJ2Jyb2FkY2FzdGVyJyksKQ0KW0lORl0gICAgICAgICAoKCdfZGV2aWNlXycs
ICd4MzAwX3JhZGlvJywgJ21hc3RlcicpLCkNClBsZWFzZSB0ZWxsIG1lIHdoYXQgY291bGQgYmUg
dGhlIHByb2JsZW0gYW5kIGhvdyBjYW4gSSBhZGQgdGhlIFdpbmRvdyBibG9jayB0byBteSBpbWFn
ZT8NCg0KDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPjxtYWlsdG86dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4NClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b208bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPjxtYWlsdG86dXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tPj4NCg0KDQpEbyB5b3UgaGF2ZSB5b3VyIEZGVCBjb25maWd1cmVkIGZvciBsb2cg
b3V0cHV0PyAgQmVjYXVzZSB0aGUgbG9nYXJpdGhtIG9mIHplcm8gaXMgdW5kZWZpbmVkLg0KDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bTxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pg0KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20+PG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20+Pg0K
DQpJIG5vdGljZWQgbG9va2luZyBhdCB5b3VyIC55YW1sIGZpbGUgdGhhdCBpdCByZWZlcmVuY2Vz
IHgzMDBfcmFkaW8gYmxvY2tzLCBhbmQgc2luY2UgdGhpcyBpcyBhbiBFMzEwLCB0aGF0IG1heSBu
b3QgYmUgYXBwcm9wcmlhdGU/ICBJIGtub3cgdGhhdCB0aGVyZSBoYXZlDQogIGhpc3RvcmljYWxs
eSBiZWVuIGNvbnNpZGVyYWJsZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZSBYMzAwIFJGTk9DIHJh
ZGlvIGJsb2NrcyBhbmQgdGhvc2UgZm9yIEUzMTAuDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+
DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbT4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
