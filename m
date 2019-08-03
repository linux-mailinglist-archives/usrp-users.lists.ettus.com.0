Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9FE805AF
	for <lists+usrp-users@lfdr.de>; Sat,  3 Aug 2019 12:17:17 +0200 (CEST)
Received: from [::1] (port=41692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htr63-0001E6-TM; Sat, 03 Aug 2019 06:17:07 -0400
Received: from mail-oln040092254092.outbound.protection.outlook.com
 ([40.92.254.92]:61760 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1htr60-00019d-2q
 for usrp-users@lists.ettus.com; Sat, 03 Aug 2019 06:17:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXqUE+eiTGzMZJxc23Ykj6h8i1ORzPmBHL7mKnt9kT9jdP5n/ZlYG6O2PSFbViRHXld78gD4Wl+yg77Qz8M5TTEUqarBAqJ83wyXLbfaKdt70zxtxw7uJ+SBQH6vAUJ6xXmc/muSDf3PFd1EXawYSoIA6fJR41McZ574K7WzBX5alF1mYmFXrjExG/hybx4K4agVxcXJ1ISagGyt4pNoj3NnVNF0PQQJlhd1kymG4c7aF/m+W9mI7aqJj4wLB/NSidFjfFG4C0Z2mB4GH1YPUnmo100WecHZR+NHKwoqeJNyg23CRZBhGLvUfAgLadrQjYx2DHaVMuNQvhfaVJwwuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jO1PDsgxw7xB00Tz7t/K6shBLWu9Zx2hkdkWIEZFk48=;
 b=arb7tFRcvgHs00Ee/0LSeEeuv/EDT2xckqhC63VIg3PaRX5IxCnDHfwmgCvI6DvUpOe1YCUUnVI7NLTGjsPR1wbD5FULIz8GZlYCMXwzsF896+RR4OK3RhjQPMWGpMsOZpxB9rs+u1EGZHhTeuBSVJpjWsHVZhD8KmIEdzhZEGK7uq/CnC1VpHU0QgKNSH36p5DntbLKm7CCglgwfmnTV5rkrzPZeosHIyEOQKJjninBLbm0HQY8MEuPz6wrQf3p2P9As/PHi+rMaUPXXW0Ah6VVgN8fH+GExtyzMydxgWaVaXDE5HkJxNl/BBk9wTTWnM4ykTJHk8YT4ueq/hQpUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jO1PDsgxw7xB00Tz7t/K6shBLWu9Zx2hkdkWIEZFk48=;
 b=Lxv60KBvcn0gmJEsN8pGa9QvqhJPuLNMpk1cC8ZWkzoTeQhurwsx9LxASavDFO8LKb983S1a1eEb4PEmGo7PYGbTBTMDAEGJibQaHZE55WaimRS38kbfqjhbhKvkbq0cTad/1aTj4dlhQQEck92RIh0OAoQ5T7jGZtD8I9+mT+jufOMYRtXt+zW0kxcBXZP16ildruO00CrX1Riz/fYbNXGvKn4SJiXIkabFirlXZ2ygq5V4GvSshfUs3phPjgJlnr34RFNjD36jeswBM2m3zahtqe4UFSYrCpHJTmBbabmr08PGoCUxdvcbhhqHmYCWOAMR/Nfd35v0f6me+Mt33A==
Received: from HK2APC01FT042.eop-APC01.prod.protection.outlook.com
 (10.152.248.54) by HK2APC01HT155.eop-APC01.prod.protection.outlook.com
 (10.152.248.235) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14; Sat, 3 Aug
 2019 10:16:20 +0000
Received: from MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM (10.152.248.60) by
 HK2APC01FT042.mail.protection.outlook.com (10.152.249.66) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14 via Frontend Transport; Sat, 3 Aug 2019 10:16:20 +0000
Received: from MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::dc85:9bf2:7b76:65ed]) by MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::dc85:9bf2:7b76:65ed%7]) with mapi id 15.20.2136.010; Sat, 3 Aug 2019
 10:16:20 +0000
To: Neel Pandeya <neel.pandeya@ettus.com>
Thread-Topic: [USRP-users] Status of Rfnoc pfb channelizer
Thread-Index: AQHVSKRJtIT/V8dSI0iTATrqJhjl1aboARQAgAE2nzw=
Date: Sat, 3 Aug 2019 10:16:20 +0000
Message-ID: <MAXPR0101MB1612C6FB9CE5784ED131E96488D80@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>,
 <CACaXmv9Hu2hJo_S0+3jd2f=ktyq=Emo3n+npkHXU0Fv3nziBLg@mail.gmail.com>
In-Reply-To: <CACaXmv9Hu2hJo_S0+3jd2f=ktyq=Emo3n+npkHXU0Fv3nziBLg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:9047DE8A6BC3525DDC73344E3EC3107CD817C536188C57159BA4818AC3AFBBA4;
 UpperCasedChecksum:99172F15DAB59376201D7904F465F7BAE7B26358966E7C0CE182BB6ED818E6FB;
 SizeAsReceived:6909; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [xHBq1W7bPDvyauXnMKjvyWdtUWy2TCm84KCZruUWeXE=]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HK2APC01HT155; 
x-ms-traffictypediagnostic: HK2APC01HT155:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-message-info: MmhWYV3wZQvByOcWm+3wP+GGLONKp5WzqyzhAfUnppjYzVJ1OKWCU+x5DcYPhPYtxZTqvVfQQObEFhvIjkDKntp3j/c4gHTgoPfrycrhtOzMxdiM15bEwq9rKtTgsaBTp9p2pzbTzUQve8WzOFRwx6s76GAVKQji0rL2L8DXV6Zhl993XRpFGwIXXKpqXaw4
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bb61bfc-dc43-49cd-744e-08d717fba122
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2019 10:16:20.3114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT155
Subject: Re: [USRP-users] Status of Rfnoc pfb channelizer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@LIVE.COM>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1075309171185245036=="
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

--===============1075309171185245036==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR0101MB1612C6FB9CE5784ED131E96488D80MAXPR0101MB1612_"

--_000_MAXPR0101MB1612C6FB9CE5784ED131E96488D80MAXPR0101MB1612_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgcmVzcG9uc2UgTmVlbCwgbGV0IG1lIGdvIHRocm91Z2ggaXQuDQoNCkJS
DQoNCk9uIDAyLUF1Zy0yMDE5LCBhdCA5OjE0IFBNLCBOZWVsIFBhbmRleWEgPG5lZWwucGFuZGV5
YUBldHR1cy5jb208bWFpbHRvOm5lZWwucGFuZGV5YUBldHR1cy5jb20+PiB3cm90ZToNCg0KSGVs
bG8gU25laGFzaXNoOg0KDQpIYXZlIHlvdSBzZWVuIFRoZXNldXMgQ29yZXM/DQoNClRoZXJlIGlz
IGEgY2hhbm5lbGl6ZXIgdGhlcmUgdGhhdCBtaWdodCBiZSBhIGdvb2QgbWF0Y2ggZm9yIHlvdXIg
YXBwbGljYXRpb24uDQoNCmh0dHBzOi8vZ2l0aHViLmNvbS90aGVzZXVzLWNvcmVzL3RoZXNldXMt
Y29yZXMNCg0KLS1OZWVsIFBhbmRleWENCg0KDQoNCk9uIFRodSwgMSBBdWcgMjAxOSBhdCAxNTow
NCwgU25laGFzaXNoIEthciB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gd3JvdGU6DQpIZWxsbyBFdmVy
eW9uZQ0KDQpIYXMgYW55b25lIHRyaWVkIHRoZSByZm5vYyBiYXNlZCBwZmIgY2hhbm5lbGl6ZXIg
aW4gdGhlIGV0dHVzIGdpdGh1YiByZXBvc2l0b3J5KGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jl
c2VhcmNoL3Jmbm9jLXBmYi1jaGFubmVsaXplcikuIElzIGl0IHN0YWJsZSBhbmQgY2FuIGJlIGRp
cmVjdGx5IGJlIHVzZWQgb3Igc29tZSBtb2RpZmljYXRpb25zIGFyZSByZXF1aXJlZC4NCg0KUmVn
YXJkcw0KU25laGFzaXNoDQoNClNlbnQgZnJvbSBteSBpUGFkDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNClVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bT4NCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQ0K

--_000_MAXPR0101MB1612C6FB9CE5784ED131E96488D80MAXPR0101MB1612_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQo8
ZGl2IGRpcj0ibHRyIj48L2Rpdj4NCjxkaXYgZGlyPSJsdHIiPlRoYW5rcyBmb3IgdGhlIHJlc3Bv
bnNlIE5lZWwsIGxldCBtZSBnbyB0aHJvdWdoIGl0LjwvZGl2Pg0KPGRpdiBkaXI9Imx0ciI+PGJy
Pg0KPC9kaXY+DQo8ZGl2IGRpcj0ibHRyIj5CUjwvZGl2Pg0KPGRpdiBkaXI9Imx0ciI+PGJyPg0K
T24gMDItQXVnLTIwMTksIGF0IDk6MTQgUE0sIE5lZWwgUGFuZGV5YSAmbHQ7PGEgaHJlZj0ibWFp
bHRvOm5lZWwucGFuZGV5YUBldHR1cy5jb20iPm5lZWwucGFuZGV5YUBldHR1cy5jb208L2E+Jmd0
OyB3cm90ZTo8YnI+DQo8YnI+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KPGRp
diBkaXI9Imx0ciI+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQi
IHN0eWxlPSJmb250LWZhbWlseTp2ZXJkYW5hLHNhbnMtc2VyaWYiPkhlbGxvIFNuZWhhc2lzaDo8
L2Rpdj4NCjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTp2ZXJk
YW5hLHNhbnMtc2VyaWYiPjxicj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIg
c3R5bGU9ImZvbnQtZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJpZiI+SGF2ZSB5b3Ugc2VlbiBUaGVz
ZXVzIENvcmVzPzwvZGl2Pg0KPGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIgc3R5bGU9ImZvbnQt
ZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJpZiI+PGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFp
bF9kZWZhdWx0IiBzdHlsZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlmIj5UaGVyZSBp
cyBhJm5ic3A7Y2hhbm5lbGl6ZXIgdGhlcmUgdGhhdCBtaWdodCBiZSBhIGdvb2QgbWF0Y2ggZm9y
IHlvdXIgYXBwbGljYXRpb24uPGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9kZWZhdWx0
IiBzdHlsZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlmIj48YnI+DQo8L2Rpdj4NCjxk
aXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTp2ZXJkYW5hLHNhbnMt
c2VyaWYiPjxhIGhyZWY9Imh0dHBzOi8vZ2l0aHViLmNvbS90aGVzZXVzLWNvcmVzL3RoZXNldXMt
Y29yZXMiPmh0dHBzOi8vZ2l0aHViLmNvbS90aGVzZXVzLWNvcmVzL3RoZXNldXMtY29yZXM8L2E+
PGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9kZWZhdWx0IiBzdHlsZT0iZm9udC1mYW1p
bHk6dmVyZGFuYSxzYW5zLXNlcmlmIj48YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9ImdtYWlsX2Rl
ZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTp2ZXJkYW5hLHNhbnMtc2VyaWYiPi0tTmVlbCBQYW5k
ZXlhPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9kZWZhdWx0IiBzdHlsZT0iZm9udC1mYW1pbHk6
dmVyZGFuYSxzYW5zLXNlcmlmIj48YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1
bHQiIHN0eWxlPSJmb250LWZhbWlseTp2ZXJkYW5hLHNhbnMtc2VyaWYiPjxicj4NCjwvZGl2Pg0K
PC9kaXY+DQo8YnI+DQo8ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+DQo8ZGl2IGRpcj0ibHRyIiBj
bGFzcz0iZ21haWxfYXR0ciI+T24gVGh1LCAxIEF1ZyAyMDE5IGF0IDE1OjA0LCBTbmVoYXNpc2gg
S2FyIHZpYSBVU1JQLXVzZXJzICZsdDs8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20iPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsgd3JvdGU6PGJyPg0K
PC9kaXY+DQo8YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4
IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFk
ZGluZy1sZWZ0OjFleCI+DQo8ZGl2IGRpcj0iYXV0byI+SGVsbG8gRXZlcnlvbmUmbmJzcDsNCjxk
aXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkhhcyBhbnlvbmUgdHJpZWQgdGhlIHJmbm9jIGJhc2VkIHBm
YiBjaGFubmVsaXplciBpbiB0aGUgZXR0dXMgZ2l0aHViIHJlcG9zaXRvcnkoPGEgaHJlZj0iaHR0
cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvcmZub2MtcGZiLWNoYW5uZWxpemVyIiB0YXJn
ZXQ9Il9ibGFuayI+aHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvcmZub2MtcGZiLWNo
YW5uZWxpemVyPC9hPikuIElzIGl0IHN0YWJsZSBhbmQgY2FuIGJlIGRpcmVjdGx5DQogYmUgdXNl
ZCBvciBzb21lIG1vZGlmaWNhdGlvbnMgYXJlIHJlcXVpcmVkLjwvZGl2Pg0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXY+UmVnYXJkczwvZGl2Pg0KPGRpdj5TbmVoYXNpc2gmbmJzcDs8L2Rpdj4NCjxk
aXY+PGJyPg0KPGRpdiBpZD0iZ21haWwtbV8xMDY0OTUzNDAwOTEyOTk1NDg2QXBwbGVNYWlsU2ln
bmF0dXJlIiBkaXI9Imx0ciI+U2VudCBmcm9tIG15IGlQYWQ8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPg0KPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+PGJyPg0KPGEgaHJlZj0iaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2Js
YW5rIj5odHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2Rpdj4NCjwv
YmxvY2txdW90ZT4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_MAXPR0101MB1612C6FB9CE5784ED131E96488D80MAXPR0101MB1612_--


--===============1075309171185245036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1075309171185245036==--

