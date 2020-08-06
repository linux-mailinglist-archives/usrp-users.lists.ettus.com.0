Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2865323DC5C
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 18:51:32 +0200 (CEST)
Received: from [::1] (port=52864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3j71-0000Fp-MO; Thu, 06 Aug 2020 12:51:27 -0400
Received: from mail-eopbgr1390098.outbound.protection.outlook.com
 ([40.107.139.98]:20508 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sourin.mondal@vehere.com>)
 id 1k3j6w-0008UH-S7
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 12:51:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTHNkMeoVZtBLLULcFbmkTxhOaaqHeyXFa3aClrZog6HDfp16nOK39gktxV+dhfy3ANAUyLuNtXMrUXPJF94GMvjal6OB51QR0bGC6HzGwCaNPTv/ug6//L5PSLKu5Fs2VR7BN7l1f/k505ZWGBwVnZL4Ix+cU6BW5lk29WHokX0l6EmR5lAZtt5r8d0FBo4ukBwWNe0M1QiLFcvItM/NiDOO4CoJZQtk6qgr7TYcbnHEHvPsM9t84jBuGy1Vf3O+26fxvHv4/c1xptzEcviPjH9D3a8WoeTP0E3WvVgphQbr9JgbdteXRTnWd5egEE4zrbxuyp6AUfuqsUrlutKyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+UznaS2kkFQhid3qx36bLZNUXH9ZFchAEQ5JzjiU5XY=;
 b=U/yPVZBOmreJmnJCScWj+wqZ8Qz3Ff3VcYybgSdK9B5LkLRVSabJQ6ZYuNBUcspCkvw6JqjVALoKYbjucWgyPV9DX8dASrjSS/DJOAhFcSks4cHGbaxa43eVHNS13Fqkg6sCu8xkkb6M645aeK3jSw5C7aVhihi/rkvjpGh/zU3zQQ0AZlUAKlm75+XuXniqENVcu7o4dax31Ly79dmiPjrAByKaVk50t+h0tWLeu/21C9sBa34hSiUDU7FjBF9hp0UG7DygPEQuEYpUwQbjMGpEqo1sLvjiN+ktPuVEMKyTu1FFAH7GO6l6EdY+Pv/ytBH4uOJcBP1lJKiTuNELyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+UznaS2kkFQhid3qx36bLZNUXH9ZFchAEQ5JzjiU5XY=;
 b=PKCjzZ4vtoly/0ljMboR/X1TXngjiFFgvGKBsINJx9t2enu5M7xDtZ+h4rvzKgWDjrKIV+Mcltjofi/qwot1d5T5YQKU7oCuHXFVyLl/BrIsmoHqv4PhcslWC5KyPwZcjCvPAby8twNB8psOfO3WGXo9L6b40B0TIa2Of4+n8io=
Received: from PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:16::22) by PN1PR01MB0989.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:5::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.19; Thu, 6 Aug
 2020 16:50:35 +0000
Received: from PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::cc3b:5542:4d86:3d55]) by PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::cc3b:5542:4d86:3d55%7]) with mapi id 15.20.3261.019; Thu, 6 Aug 2020
 16:50:35 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] USRP not receiving data from two antennas using PCI
 card
Thread-Index: AQHWbAg9qgjwsPUEwke7OTDIRmASdqkrO3eAgAAPtbY=
Date: Thu, 6 Aug 2020 16:50:35 +0000
Message-ID: <PN1PR0101MB1888C69D81516A613A69241E8B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR0101MB18888E07850F604DE16381328B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>,
 <838FBFE1-52F7-445B-B841-E05F0B7FEA31@gmail.com>
In-Reply-To: <838FBFE1-52F7-445B-B841-E05F0B7FEA31@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [103.242.190.95]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69a1c243-f81b-494e-358e-08d83a28d749
x-ms-traffictypediagnostic: PN1PR01MB0989:
x-microsoft-antispam-prvs: <PN1PR01MB09892E3F66C6AB138CD014CF8B480@PN1PR01MB0989.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2DHwdemCzzwVBP0D5V/PiAIR/fZkqHcbuDzakHu2mjvxGZIGM9sm8gYzFnnzATZXkXXBp3vodRAVivPd/esA517ACHTUSN5a1ekG7XUYYPnl1Az+KWYKmh8WHcc9kySPZe7SkfUmBxiZu5iMl+NHjyFP6Oci7mtDtTpgZyYmOsvRJlJx9rJILfeAtXa/FNDtz8xl6tMVNpab7r5bVRjjeCoi0uJaAUvC9OQPdVLM8AkE+ssWb+PANKKa3cr0rNeYNuBV24C5fYpo8gm6Ryr3I+05wCT961KECYmFzoZmyeIu8lDqxoDlSH5fa44w+W+eN92Pd5x/wFi+5wFCtpSxgqloGsoO6kjfx9Ce8ubeayJ3LRpu5rjT3/YF7AheMNBZuFFNRYMNWraOIDWggXAmSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(346002)(39840400004)(366004)(376002)(6916009)(186003)(86362001)(52536014)(19627405001)(26005)(6506007)(53546011)(508600001)(8676002)(7696005)(33656002)(966005)(9686003)(66446008)(2906002)(66476007)(64756008)(91956017)(76116006)(55016002)(4326008)(66946007)(8936002)(5660300002)(316002)(66556008)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: aXdqQUCT0wxRYx9OX/IVSYHITJGqcXf81/r+jsWZzE7Mp0RYfkWnGfns3rRY7xRKCsvC4VTeE2v8L1YXIyM5BWTsxSvgZFKAdRqIB/TXJRAlyTnKl0VLueIROZHBcYLbV1wA1JxNc7eRgPzcitBFq4T8clhTyJCRJZdQCxek9UWAVX5ssq/y+qE90Xs/5WQCdU9QK5YTPyJ9pJMJI0JKbAxcQc08A1fe9gPLMcCC8H6xrQti4jbvnMaqiHXLPUCBqjLt7brR0B0R1me1GLAEf5AOYkWfZcTv+8NDv5uXynTLTTrEtQA1e83xuo4gXZScoZJZAgqmuE3jWdvyLn6JEEUO99tkVxYFC5Ukb6bIgBvp95AtcZZfoY6tk/A0miLwHDzFPMmlRvwCIV4VU3JEMgtpVoEGRmz2tSgUZg0xXoz/HGzbg6lop7w428VSIzBK7AxMAXahCdRyuFijB0mgJoxFAs+WGmCp9JQFT6/r8DM6acnX0BdqmiaIozOeE8QJacxMk56tn8hA0jxh+2KrGkqYUpKXSzSe0IkCgam+PCphYHRjpIxGpjU1r6j0xX09Sfrh5hUPYcqD9p3ZHi4WLmUXTFW5WaCEL+WtAhX9K4q9lWXSkKgCsNOupbt+ElmlKTtCKEvAXfa9FSWVYBnZ2Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a1c243-f81b-494e-358e-08d83a28d749
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 16:50:35.6577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZSGQTEWxYSZlhKRG5kVyJMy0ar4N56qAF5k/EuCUkia6GCOtHOoAk+njNLMxLNLoNSxPKEH73p05hKNKRmOD0vlUDCACZxXpWJxgYkp2uaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0989
Subject: Re: [USRP-users] USRP not receiving data from two antennas using
 PCI card
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
Content-Type: multipart/mixed; boundary="===============4387840553907514901=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4387840553907514901==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR0101MB1888C69D81516A613A69241E8B480PN1PR0101MB1888_"

--_000_PN1PR0101MB1888C69D81516A613A69241E8B480PN1PR0101MB1888_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQpJIGFtIHVzaW5nIFVIRC0zLjE0LjEuMA0KSSBhbSBub3QgdXNpbmcgZ251cmFkaW8gbm93
LiBJIHVzZWQgdGhhdCBvbmUgeWVhciBiYWNrIGFuZCBmYWNlZCB0aGUgbWVudGlvbmVkIHByb2Js
ZW0uIE5vdyBJIGFtIHVzaW5nIGMrKyBjb2RlIGFuZCBhbSBmYWNpbmcgdGhlIHNhbWUgaXNzdWUg
b2Ygbm90IGFibGUgdG8gc3RyZWFtIHR3byBjaGFubmVscyBzaW11bHRhbmVvdXNseS4NCkZyb20s
DQpTb3VyaW4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IE1hcmN1
cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NClNlbnQ6IFRodXJzZGF5LCBBdWd1
c3QgNiwgMjAyMCA5OjIzIFBNDQpUbzogU291cmluIE1vbmRhbCAoVmVoZXJlKSA8c291cmluLm1v
bmRhbEB2ZWhlcmUuY29tPg0KQ2M6IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gVVNSUCBub3Qg
cmVjZWl2aW5nIGRhdGEgZnJvbSB0d28gYW50ZW5uYXMgdXNpbmcgUENJIGNhcmQNCg0KV2hhdCB2
ZXJzaW9uIG9mIFVIRD8NCg0KQ291bGQgeW91IHNoYXJlIHRoZSBmbG93IGdyYXBoIHlvdeKAmXJl
IHVzaW5nPw0KDQoNCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQpPbiBBdWcgNiwgMjAyMCwgYXQg
MTE6NDcgQU0sIFNvdXJpbiBNb25kYWwgKFZlaGVyZSkgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToNCg0K77u/DQpIaSwNCg0KSSBhbSB1c2luZyBVU1JQ
IDI5NTUgYW5kIHdhbnQgdG8gcmVjZWl2ZSB0d28gY2hhbm5lbHMgYXQgMTAwIE1TUFMgZWFjaCBz
aW11bHRhbmVvdXNseS4gSSBoYXZlIGNvbm5lY3RlZCB1c3JwIHdpdGggUENJZS4gSSBhbSBydW5u
aW5nIG15IGNvZGUgYnV0IG9ubHkgb25lIGNoYW5uZWwgaXMgZ2V0dGluZyByZWNlaXZlZC4gT3Ro
ZXIgY2hhbm5lbCBpcyBzZW5kaW5nIHplcm9zIG9ubHkuIEkgYW0gdXNpbmcgVWJ1bnR1IDE4LjA0
LiBQcmV2aW91c2x5IG9uZSB5ZWFyIGJhY2sgSSBmYWNlZCB0aGUgc2FtZSBwcm9ibGVtIHVzaW5n
IFVTUlAgMjk1NSBhbG9uZyB3aXRoIFBDSWUgYW5kIHJ1bm5pbmcgZ251IHJhZGlvLiBPbmx5IG9u
ZSBjaGFubmVsIHBvcHBlZCB1cCBpbiB0aGUgZnJlcXVlbmN5IHNpbmsgZ3JhcGggYW5kIHNlY29u
ZCBncmFwaCB3YXMgc3RhdGljIHdpdGggbm8gc2lnbmFsLiBIb3dldmVyLCAyOTU0IHdhcyBnaXZp
bmcgYm90aCBjaGFubmVscy4gV2hlcmUgaXMgdGhlIHByb2JsZW0/IEhvdyBjYW4gSSBjb3JyZWN0
IHRoYXQgdG8gc3RyZWFtIHR3byBjaGFubmVscyBzaW11bHRhbmVvdXNseSB1c2luZyB1c3JwIDI5
NTUgYW5kIFBDSWU/IFBsZWFzZSBoZWxwLg0KDQpSZWdhcmRzLA0KU291cmluDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QNClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpodHRwOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20NCg==

--_000_PN1PR0101MB1888C69D81516A613A69241E8B480PN1PR0101MB1888_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCjxkaXYgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250LXNpemU6
IDEycHQ7IGZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlm
OyBjb2xvcjogYmxhY2s7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KSI+DQpI
aSw8L2Rpdj4NCjxkaXYgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250LXNpemU6IDEycHQ7IGZvbnQt
ZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBjb2xvcjogYmxh
Y2s7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KSI+DQpJIGFtIHVzaW5nIFVI
RC0zLjE0LjEuMCZuYnNwOzwvZGl2Pg0KPGRpdiBzdHlsZT0ibWFyZ2luOiAwcHg7IGZvbnQtc2l6
ZTogMTJwdDsgZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2Vy
aWY7IGNvbG9yOiBibGFjazsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpIj4N
CjxkaXYgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAm
cXVvdDtTZWdvZSBVSSZxdW90Oywgc3lzdGVtLXVpLCAmcXVvdDtBcHBsZSBDb2xvciBFbW9qaSZx
dW90OywgJnF1b3Q7U2Vnb2UgVUkgRW1vamkmcXVvdDssIHNhbnMtc2VyaWY7IGJveC1zaXppbmc6
IGJvcmRlci1ib3giPg0KSSBhbSBub3QgdXNpbmcgZ251cmFkaW8gbm93LiBJIHVzZWQgdGhhdCBv
bmUgeWVhciBiYWNrIGFuZCBmYWNlZCB0aGUgbWVudGlvbmVkIHByb2JsZW0uIE5vdyBJIGFtIHVz
aW5nIGMrKyBjb2RlIGFuZCBhbSBmYWNpbmcgdGhlIHNhbWUgaXNzdWUgb2Ygbm90IGFibGUgdG8g
c3RyZWFtIHR3byBjaGFubmVscyBzaW11bHRhbmVvdXNseS48L2Rpdj4NCkZyb20sPC9kaXY+DQo8
ZGl2IHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zaXplOiAxMnB0OyBmb250LWZhbWlseTogQ2Fs
aWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgY29sb3I6IGJsYWNrOyBiYWNrZ3Jv
dW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1NSkiPg0KU291cmluPC9kaXY+DQo8YnI+DQo8L2Rp
dj4NCjxkaXYgaWQ9ImFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5s
aW5lLWJsb2NrO3dpZHRoOjk4JSIgdGFiaW5kZXg9Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RN
c2ciIGRpcj0ibHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9u
dC1zaXplOjExcHQiIGNvbG9yPSIjMDAwMDAwIj48Yj5Gcm9tOjwvYj4gTWFyY3VzIEQgTGVlY2gg
Jmx0O3BhdGNodm9uYnJhdW5AZ21haWwuY29tJmd0Ozxicj4NCjxiPlNlbnQ6PC9iPiBUaHVyc2Rh
eSwgQXVndXN0IDYsIDIwMjAgOToyMyBQTTxicj4NCjxiPlRvOjwvYj4gU291cmluIE1vbmRhbCAo
VmVoZXJlKSAmbHQ7c291cmluLm1vbmRhbEB2ZWhlcmUuY29tJmd0Ozxicj4NCjxiPkNjOjwvYj4g
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Jmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIFVTUlAgbm90IHJlY2Vp
dmluZyBkYXRhIGZyb20gdHdvIGFudGVubmFzIHVzaW5nIFBDSSBjYXJkPC9mb250Pg0KPGRpdj4m
bmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iPldoYXQgdmVyc2lvbiBvZiBVSEQ/
DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5Db3VsZCB5b3Ugc2hhcmUgdGhlIGZsb3cgZ3JhcGgg
eW914oCZcmUgdXNpbmc/PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj48YnI+DQo8YnI+
DQo8ZGl2IGRpcj0ibHRyIj5TZW50IGZyb20gbXkgaVBob25lPC9kaXY+DQo8ZGl2IGRpcj0ibHRy
Ij48YnI+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj5PbiBBdWcgNiwgMjAyMCwgYXQgMTE6NDcg
QU0sIFNvdXJpbiBNb25kYWwgKFZlaGVyZSkgdmlhIFVTUlAtdXNlcnMgJmx0O3VzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tJmd0OyB3cm90ZTo8YnI+DQo8YnI+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rp
dj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KPGRpdiBkaXI9Imx0ciI+77u/DQo8ZGl2IHN0
eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250
LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQpIaSw8L2Rpdj4NCjxkaXYgc3R5bGU9ImZv
bnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTox
MnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1m
YW1pbHk6Q2FsaWJyaSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7
IGNvbG9yOnJnYigwLDAsMCkiPg0KPGRpdiBkaXI9Imx0ciIgc3R5bGU9Im1hcmdpbjowcHg7IGZv
bnQtc2l6ZToxNXB4OyBiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1NSkiPg0KSSBhbSB1
c2luZyBVU1JQIDI5NTUgYW5kIHdhbnQgdG8gcmVjZWl2ZSB0d28gY2hhbm5lbHMgYXQgMTAwIE1T
UFMgZWFjaCBzaW11bHRhbmVvdXNseS4gSSBoYXZlIGNvbm5lY3RlZCB1c3JwIHdpdGggUENJZS4g
SSBhbSBydW5uaW5nIG15IGNvZGUgYnV0IG9ubHkgb25lIGNoYW5uZWwgaXMgZ2V0dGluZyByZWNl
aXZlZC4gT3RoZXIgY2hhbm5lbCBpcyBzZW5kaW5nIHplcm9zIG9ubHkuIEkgYW0gdXNpbmcgVWJ1
bnR1IDE4LjA0LiBQcmV2aW91c2x5IG9uZQ0KIHllYXIgYmFjayBJIGZhY2VkIHRoZSBzYW1lIHBy
b2JsZW0gdXNpbmcgVVNSUCAyOTU1IGFsb25nIHdpdGggUENJZSBhbmQgcnVubmluZyBnbnUgcmFk
aW8uIE9ubHkgb25lIGNoYW5uZWwgcG9wcGVkIHVwIGluIHRoZSBmcmVxdWVuY3kgc2luayBncmFw
aCBhbmQgc2Vjb25kIGdyYXBoIHdhcyBzdGF0aWMgd2l0aCBubyBzaWduYWwuIEhvd2V2ZXIsIDI5
NTQgd2FzIGdpdmluZyBib3RoIGNoYW5uZWxzLiBXaGVyZSBpcyB0aGUgcHJvYmxlbT8gSG93IGNh
bg0KIEkgY29ycmVjdCB0aGF0IHRvIHN0cmVhbSB0d28gY2hhbm5lbHMgc2ltdWx0YW5lb3VzbHkg
dXNpbmcgdXNycCAyOTU1IGFuZCBQQ0llPyBQbGVhc2UgaGVscC48L2Rpdj4NCjxkaXYgZGlyPSJs
dHIiIHN0eWxlPSJtYXJnaW46MHB4OyBmb250LXNpemU6MTVweDsgYmFja2dyb3VuZC1jb2xvcjpy
Z2IoMjU1LDI1NSwyNTUpIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9Imx0ciIgc3R5bGU9Im1h
cmdpbjowcHg7IGZvbnQtc2l6ZToxNXB4OyBiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1
NSkiPg0KUmVnYXJkcyw8L2Rpdj4NCjxkaXYgZGlyPSJsdHIiIHN0eWxlPSJtYXJnaW46MHB4OyBm
b250LXNpemU6MTVweDsgYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjU1LDI1NSwyNTUpIj4NClNvdXJp
bjwvZGl2Pg0KPC9kaXY+DQo8c3Bhbj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXzwvc3Bhbj48YnI+DQo8c3Bhbj5VU1JQLXVzZXJzIG1haWxpbmcgbGlzdDwv
c3Bhbj48YnI+DQo8c3Bhbj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvc3Bhbj48YnI+DQo8
c3Bhbj5odHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb208L3NwYW4+PGJyPg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4N
CjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_PN1PR0101MB1888C69D81516A613A69241E8B480PN1PR0101MB1888_--


--===============4387840553907514901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4387840553907514901==--

