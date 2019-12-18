Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C41E1250F7
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 19:49:07 +0100 (CET)
Received: from [::1] (port=48940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iheNd-0006cx-TL; Wed, 18 Dec 2019 13:49:05 -0500
Received: from mail-oln040092253082.outbound.protection.outlook.com
 ([40.92.253.82]:6168 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1iheNa-0006Uy-7c
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 13:49:02 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdQ+WRebXPDAFnKACFLWKpZeCKvQ4F1fB0VYnNJbDZPTW+63GBJi2qDczWxLDOfkZhZOLUjknBIaIo2eQ7x97EwQJExqLCVuYBycMfWO4J7ZOYU+ClheARJJXy+APXon27RZ8DHEmunt8q75wBkhcRLgk/6ZNWjGplW0N6Ug03uLs+t53OT3LBPgewwWCZT3yGLG0fTu7XuOhsxmTBS91pMpkWu6rFGJVJvidDpk2IahRFhqfLe8lO1v8lu/mECaYmRVxcKle8DCiZO8uMXU9bZUsnmBR61XDkiXafp0XrXT9zZZ5zTH44y64JPNLCq8v/U7a56eb1yzRvHs2Nu2WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zgPtVYCFnRcTqmWAySZ8R6M5xcvB30/z5gZCh0VF3Wc=;
 b=lBZ5A80tXED6gxP39dzR7Ky+5I822UItSFzKAr1xQH5fCXQgCW1QS+Ycxb88zIXLrRkT/za8umIVYfalSCsR9yQ+YeUN6cUAhevcmy3ZbLtvZleSnv+OfiUiHjMm+m6ehVPVQkkDP/+K1PZrVd+2Guazg3stlSEgiz0Sh5ay6+3BqtzpzQSUC8pdzfdbn8Koh1FjZwqZXUpl03COvWOfkFQy4GvNdJNe1XlRroE+46BLQUosZH64vVLX8dvAS3Fp0Y1IP4cDj9tXAknJxQ83h3s4lp/fM6/Xda5+EmoW4W0pm+Jl/9j/o6044riObnONagVqU3OlQnGbOFpEuTz8cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zgPtVYCFnRcTqmWAySZ8R6M5xcvB30/z5gZCh0VF3Wc=;
 b=oA3AMla3+aQZCZ8nO9fZbplKAmTp2V8WjukFk+kI2mlTqleFqWuTxqj/uNVvwWu5SbKWxuv27Tcb15OnM2EuDf8ktXUvjQh/S5KnzcwWSUXbJ/jnvM6zBQg5DMWlsQy4JJtbzoj9g6u52VUAJs9hzLCI8o5mqXa57lA3SExakeZoLF1qL+5evYKw2qLfyj+jXQH3VchVc7cIZIbYtJ9fQV67fNeWFPmYcs3QLj9yKwtFLOefXzobQm6h4xniGMnqUUkTnsRLgLxX22c4aT+c05a1OE5l0HwFrRa/WpfcVrjZGyXMX4soSWwe90SXLp9i7uraRKS+v8THGGwFa371CA==
Received: from PU1APC01FT022.eop-APC01.prod.protection.outlook.com
 (10.152.252.58) by PU1APC01HT170.eop-APC01.prod.protection.outlook.com
 (10.152.252.241) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Wed, 18 Dec
 2019 18:48:18 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM (10.152.252.52) by
 PU1APC01FT022.mail.protection.outlook.com (10.152.253.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Wed, 18 Dec 2019 18:48:18 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921]) by BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921%7]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 18:48:17 +0000
To: Ettus Research Support <support@ettus.com>
Thread-Topic: [USRP-users] Api to call rfnoc split stream
Thread-Index: AQHVtQwddBT+QtlTJUCTEkuACuqnD6e/89CAgABJgng=
Date: Wed, 18 Dec 2019 18:48:17 +0000
Message-ID: <BMXPR01MB394413E0EA62DD06487FA63988530@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
References: <BMXPR01MB39447CA3F4BA58C9B9D1B09988500@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>,
 <CACSOXP0TZKt-9QfnG3eNuYNRRZ_EPwrzJmDnH6j1x40bxAuZ5Q@mail.gmail.com>
In-Reply-To: <CACSOXP0TZKt-9QfnG3eNuYNRRZ_EPwrzJmDnH6j1x40bxAuZ5Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E7DE76856E09C52D94166F0F3F98E4270AC26F3459DF52D63D9B2113E6EC6ADA;
 UpperCasedChecksum:03ECA8A71A41B31E9856C36F31B1B8DD3728B1DA100682BD2EDEB628875266A7;
 SizeAsReceived:7063; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FowBFjk26oC/C9FBpAsFru/fghd45XNU]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 3be25d39-2f8b-4678-341c-08d783ead862
x-ms-traffictypediagnostic: PU1APC01HT170:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q7uBgJiCKcvft3LWS8vrKwkKypoIMuaW45Kd6CVE6CUZi5An75XP6WcZ6EJWd9GqCS1VHDgQRorjhJUAsD09DCPpb7joYDL1PWH6FXMrGfMtn4tsnD7NQKUI0xIxZP9IAmnaggg9vCuKr8B6K9r8BCwwN3rM6EA/GoyG/vmAUFeltUmfd24uWKTiTfV7teeoAXHFFXaZV2LarFGZ1hiWX0a+D7PNFPoAirRcXtKm0iY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3be25d39-2f8b-4678-341c-08d783ead862
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 18:48:17.0935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT170
Subject: Re: [USRP-users] Api to call rfnoc split stream
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============3913913340045727741=="
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

--===============3913913340045727741==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB394413E0EA62DD06487FA63988530BMXPR01MB3944INDP_"

--_000_BMXPR01MB394413E0EA62DD06487FA63988530BMXPR01MB3944INDP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2sgdGhhdCBhbnN3ZXJzIG15IHF1ZXN0aW9uLg0KDQpSZWdhcmRzDQpTbmVoYXNpc2gNCg0KT24g
MTgtRGVjLTIwMTksIGF0IDc6NTUgUE0sIEV0dHVzIFJlc2VhcmNoIFN1cHBvcnQgPHN1cHBvcnRA
ZXR0dXMuY29tPG1haWx0bzpzdXBwb3J0QGV0dHVzLmNvbT4+IHdyb3RlOg0KDQpIZWxsbyBTbmVo
YXNpc2g6DQoNClRoZSBTcGxpdCBTdHJlYW0gQmxvY2sgdXNlcyB0aGUgZ2VuZXJpYyBibG9jayBj
b250cm9sbGVyLCBzbyB0aGVyZSBzaG91bGQgbm90IGJlIGFueXRoaW5nICJleHRyYSIgdGhhdCB5
b3UgaGF2ZSB0byBkby4NCg0KQXJlIHlvdSBnZXR0aW5nIGFueSBlcnJvcnMgb3Igd2FybmluZ3Mg
d2hlbiB5b3UgYnVpbGQgeW91ciBDKysgcHJvZ3JhbT8NCg0KLS1OZWVsIFBhbmRleWENCg0KDQoN
Ck9uIFR1ZSwgRGVjIDE3LCAyMDE5IGF0IDE6MDAgUE0gU25laGFzaXNoIEthciB2aWEgVVNSUC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPj4gd3JvdGU6DQpIZWxsbw0KDQpQbGVhc2UgbGV0IG1lIGtub3cgaG8gZG8gd2Ug
dXNlIHRoZSByZm5vYyBzcGxpdCBzdHJlYW0gZnJvbSBDKysgSSBhbSBub3QgYWJsZSB0byBmaW5k
IHRoZSBjb25jZXJuZWQgaGVhZGVyIGZpbGUuDQoNClJlZ2FyZHMNClNuZWhhc2lzaA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0DQpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+DQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20NCg==

--_000_BMXPR01MB394413E0EA62DD06487FA63988530BMXPR01MB3944INDP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQo8
ZGl2IGRpcj0ibHRyIj48L2Rpdj4NCjxkaXYgZGlyPSJsdHIiPk9rIHRoYXQgYW5zd2VycyBteSBx
dWVzdGlvbi48L2Rpdj4NCjxkaXYgZGlyPSJsdHIiPjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9Imx0
ciI+UmVnYXJkczwvZGl2Pg0KPGRpdiBkaXI9Imx0ciI+U25laGFzaXNoJm5ic3A7PC9kaXY+DQo8
ZGl2IGRpcj0ibHRyIj48YnI+DQpPbiAxOC1EZWMtMjAxOSwgYXQgNzo1NSBQTSwgRXR0dXMgUmVz
ZWFyY2ggU3VwcG9ydCAmbHQ7PGEgaHJlZj0ibWFpbHRvOnN1cHBvcnRAZXR0dXMuY29tIj5zdXBw
b3J0QGV0dHVzLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj4NCjxicj4NCjwvZGl2Pg0KPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSI+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBj
bGFzcz0iZ21haWxfZGVmYXVsdCIgc3R5bGU9ImZvbnQtZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJp
ZiI+SGVsbG8gU25laGFzaXNoOjwvZGl2Pg0KPGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIgc3R5
bGU9ImZvbnQtZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJpZiI+PGJyPg0KPC9kaXY+DQo8ZGl2IGNs
YXNzPSJnbWFpbF9kZWZhdWx0IiBzdHlsZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlm
Ij5UaGUgU3BsaXQgU3RyZWFtIEJsb2NrIHVzZXMgdGhlIGdlbmVyaWMgYmxvY2sgY29udHJvbGxl
ciwgc28gdGhlcmUgc2hvdWxkIG5vdCBiZSBhbnl0aGluZyAmcXVvdDtleHRyYSZxdW90OyB0aGF0
IHlvdSBoYXZlIHRvIGRvLjwvZGl2Pg0KPGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIgc3R5bGU9
ImZvbnQtZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJpZiI+PGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNz
PSJnbWFpbF9kZWZhdWx0IiBzdHlsZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlmIj5B
cmUgeW91IGdldHRpbmcgYW55IGVycm9ycyBvciB3YXJuaW5ncyB3aGVuIHlvdSBidWlsZCB5b3Vy
IEMmIzQzOyYjNDM7IHByb2dyYW0/PC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9kZWZhdWx0IiBz
dHlsZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlmIj48YnI+DQo8L2Rpdj4NCjxkaXYg
Y2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTp2ZXJkYW5hLHNhbnMtc2Vy
aWYiPi0tTmVlbCBQYW5kZXlhPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9kZWZhdWx0IiBzdHls
ZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlmIj48YnI+DQo8L2Rpdj4NCjxkaXYgY2xh
c3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTp2ZXJkYW5hLHNhbnMtc2VyaWYi
Pjxicj4NCjwvZGl2Pg0KPC9kaXY+DQo8YnI+DQo8ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+DQo8
ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVHVlLCBEZWMgMTcsIDIwMTkgYXQg
MTowMCBQTSBTbmVoYXNpc2ggS2FyIHZpYSBVU1JQLXVzZXJzICZsdDs8YSBocmVmPSJtYWlsdG86
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9h
PiZndDsgd3JvdGU6PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
IHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJn
YigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+DQpIZWxsbzxicj4NCjxicj4NClBsZWFz
ZSBsZXQgbWUga25vdyBobyBkbyB3ZSB1c2UgdGhlIHJmbm9jIHNwbGl0IHN0cmVhbSBmcm9tIEMm
IzQzOyYjNDM7IEkgYW0gbm90IGFibGUgdG8gZmluZCB0aGUgY29uY2VybmVkIGhlYWRlciBmaWxl
Ljxicj4NCjxicj4NClJlZ2FyZHM8YnI+DQpTbmVoYXNpc2g8YnI+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0PGJyPg0KPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPGEgaHJlZj0i
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb208L2E+
PGJyPg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_BMXPR01MB394413E0EA62DD06487FA63988530BMXPR01MB3944INDP_--


--===============3913913340045727741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3913913340045727741==--

