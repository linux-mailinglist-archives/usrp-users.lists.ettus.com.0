Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9267A3E96E2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 19:34:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1C7E3851AD
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 13:34:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kth.se header.i=@kth.se header.b="Q97tWY6g";
	dkim-atps=neutral
Received: from smtp-3.sys.kth.se (smtp-3.sys.kth.se [130.237.48.192])
	by mm2.emwd.com (Postfix) with ESMTPS id 982B1384214
	for <USRP-users@lists.ettus.com>; Wed, 11 Aug 2021 13:33:34 -0400 (EDT)
Received: from smtp-3.sys.kth.se (localhost.localdomain [127.0.0.1])
	by smtp-3.sys.kth.se (Postfix) with ESMTP id A021E2E6A;
	Wed, 11 Aug 2021 19:33:33 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from smtp-3.sys.kth.se ([127.0.0.1])
	by smtp-3.sys.kth.se (smtp-3.sys.kth.se [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 1lJftUUd8zRv; Wed, 11 Aug 2021 19:33:29 +0200 (CEST)
Received: from exdb6.ug.kth.se (exdb6.ug.kth.se [192.168.32.61])
	by smtp-3.sys.kth.se (Postfix) with ESMTPS id A1B892E46;
	Wed, 11 Aug 2021 19:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1628703209; bh=EJ5Ti4Cgi6RmJmDurcK1IWZ0Be9wH+GYNkqC7D+srv0=;
	h=From:To:CC:Subject:Date:References:In-Reply-To;
	b=Q97tWY6gzfUuRXl7g2AfFoKxE/a20oSDFaEJ5gPnJZXOa8qHKGEjFDkM7+aaBUzrZ
	 tfWrnA/Mw5WeFpWbjKVhP0CuuOY/FI8T5s0rlpeHoKN/NfIMmjkz1bDm/5goxdq+ls
	 p6gzo86Z5yulqqTqWxga/7tIm0GabukKbKYA8984=
Received: from exdb2.ug.kth.se (192.168.32.57) by exdb6.ug.kth.se
 (192.168.32.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.15; Wed, 11 Aug
 2021 19:33:29 +0200
Received: from exdb2.ug.kth.se ([192.168.32.57]) by exdb2.ug.kth.se
 ([192.168.32.57]) with mapi id 15.02.0858.015; Wed, 11 Aug 2021 19:33:29
 +0200
From: Anton Ottosson <antonott@kth.se>
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] N210 Center frequency tuning resolution
Thread-Index: AQHXjtQigHT4yf/xL02wX0AvlO3UtKtubNAAgAAi6d0=
Date: Wed, 11 Aug 2021 17:33:29 +0000
Message-ID: <9234b191f02a41169c046f50ab73e311@kth.se>
References: <ca21b213473c4123827230dfe49c903f@kth.se>,<1C2330B0-309C-460B-AD6C-CE956F051D30@gmail.com>
In-Reply-To: <1C2330B0-309C-460B-AD6C-CE956F051D30@gmail.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
Message-ID-Hash: HO5622WS7VRQDS55H7W6SKF6WCHCCMGE
X-Message-ID-Hash: HO5622WS7VRQDS55H7W6SKF6WCHCCMGE
X-MailFrom: antonott@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 Center frequency tuning resolution
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HO5622WS7VRQDS55H7W6SKF6WCHCCMGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5612576659342921217=="

--===============5612576659342921217==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9234b191f02a41169c046f50ab73e311kthse_"

--_000_9234b191f02a41169c046f50ab73e311kthse_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCdzIGdyZWF0IHRvIGhlYXIhIFRoYW5rIHlvdSEgQnkgdGhlIHdheSwgaXMgdGhpcyBkb2N1
bWVudGVkIGFueXdoZXJlIChJIG1pZ2h0IGhhdmUgdG8gZ2l2ZSBhIHNvdXJjZSBhdCBzb21lIHBv
aW50KT8NCg0KDQpCZXN0LA0KDQpBbnRvbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KRnJvbTogTWFyY3VzIEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0KU2Vu
dDogV2VkbmVzZGF5LCBBdWd1c3QgMTEsIDIwMjEgNzoyNjoyMCBQTQ0KVG86IEFudG9uIE90dG9z
c29uDQpDYzogVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NClN1YmplY3Q6IFJlOiBbVVNSUC11
c2Vyc10gTjIxMCBDZW50ZXIgZnJlcXVlbmN5IHR1bmluZyByZXNvbHV0aW9uDQoNCkl04oCZcyB1
bmRlciAxSHogb3dpbmcgdG8gdGhlIHJlc29sdXRpb24gb2YgdGhlIEREQyBhbmQvb3IgRFVDLg0K
DQpFdmVuIHRob3VnaCBpbmRpdmlkdWFsIGRhdWdodGVyIGNhcmRzIHdpbGwgaGF2ZSBhIHN5bnRo
ZXNpemVyIHJlc29sdXRpb24gbXVjaCBsYXJnZXIgdGhhbiB0aGF0LCB0aGUgdHVuaW5nIGNvZGUg
dXNlcyB0aGF0IGtub3dsZWRnZSBhbmQgcHJvZ3JhbW1pbmcgb2YgdGhlIEREQyAvIERVQyB0byBk
ZWxpdmVyIHN1Ykh6IHJlc29sdXRpb24uDQoNCg0KDQpTZW50IGZyb20gbXkgaVBob25lDQoNCk9u
IEF1ZyAxMSwgMjAyMSwgYXQgMToyMyBQTSwgQW50b24gT3R0b3Nzb24gPGFudG9ub3R0QGt0aC5z
ZT4gd3JvdGU6DQoNCu+7vw0KDQpIaSwNCg0KDQpEb2VzIGFueSBvbmUgaGVyZSBrbm93IHdoYXQg
dGhlIGNlbnRlciBmcmVxdWVuY3kgdHVuaW5nIHJlc29sdXRpb24gaXMgZm9yIHRoZSBOMjEwLCBv
ciBob3cgb25lIG1pZ2h0IGZpbmQgb3V0PyBCeSB0dW5pbmcgcmVzb2x1dGlvbiBJIG1lYW4sIGJh
c2ljYWxseSwgdGhlIHN0ZXAgc2l6ZSB3aGVuIHNlbGVjdGluZyBjZW50ZXIgZnJlcXVlbmN5LiBJ
IGhhdmUgYmVlbiBsb29raW5nIG92ZXIgdGhlIERldmljZXMgJiBVc2FnZSBNYW51YWw8aHR0cHM6
Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZGV2aWNlcy5odG1sPiwgYnV0IGhhdmUgbm90
IGJlZW4gYWJsZSB0byBmaW5kIGFuIGFuc3dlci4NCg0KDQpCZXN0LA0KDQpBbnRvbg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg==

--_000_9234b191f02a41169c046f50ab73e311kthse_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQo8
c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSJkaXNwbGF5Om5vbmU7Ij48IS0tIFAge21hcmdp
bi10b3A6MDttYXJnaW4tYm90dG9tOjA7fSAtLT48L3N0eWxlPg0KPGRpdiBpZD0iZGl2dGFnZGVm
YXVsdHdyYXBwZXIiIHN0eWxlPSJmb250LXNpemU6MTJwdDtjb2xvcjojMDAwMDAwO2ZvbnQtZmFt
aWx5OkNhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IiBkaXI9Imx0ciI+DQo8cD5UaGF0J3Mg
Z3JlYXQgdG8gaGVhciEgVGhhbmsgeW91ISBCeSB0aGUgd2F5LCBpcyB0aGlzIGRvY3VtZW50ZWQg
YW55d2hlcmUgKEkgbWlnaHQgaGF2ZSB0byBnaXZlIGEgc291cmNlIGF0IHNvbWUgcG9pbnQpPzwv
cD4NCjxwPjxicj4NCjwvcD4NCjxwPkJlc3QsPC9wPg0KPHA+QW50b248YnI+DQo8L3A+DQo8L2Rp
dj4NCjxociBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7d2lkdGg6OTglIiB0YWJpbmRleD0i
LTEiPg0KPGRpdiBpZD0iZGl2UnBseUZ3ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGli
cmksIHNhbnMtc2VyaWYiIHN0eWxlPSJmb250LXNpemU6MTFwdCIgY29sb3I9IiMwMDAwMDAiPjxi
PkZyb206PC9iPiBNYXJjdXMgRCBMZWVjaCAmbHQ7cGF0Y2h2b25icmF1bkBnbWFpbC5jb20mZ3Q7
PGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgQXVndXN0IDExLCAyMDIxIDc6MjY6MjAgUE08
YnI+DQo8Yj5Ubzo8L2I+IEFudG9uIE90dG9zc29uPGJyPg0KPGI+Q2M6PC9iPiBVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbTxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIE4y
MTAgQ2VudGVyIGZyZXF1ZW5jeSB0dW5pbmcgcmVzb2x1dGlvbjwvZm9udD4NCjxkaXY+Jm5ic3A7
PC9kaXY+DQo8L2Rpdj4NCjxkaXY+SXTigJlzIHVuZGVyIDFIeiBvd2luZyB0byB0aGUgcmVzb2x1
dGlvbiBvZiB0aGUgRERDIGFuZC9vciBEVUMuJm5ic3A7DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRp
dj5FdmVuIHRob3VnaCBpbmRpdmlkdWFsIGRhdWdodGVyIGNhcmRzIHdpbGwgaGF2ZSBhIHN5bnRo
ZXNpemVyIHJlc29sdXRpb24gbXVjaCBsYXJnZXIgdGhhbiB0aGF0LCB0aGUgdHVuaW5nIGNvZGUg
dXNlcyB0aGF0IGtub3dsZWRnZSBhbmQgcHJvZ3JhbW1pbmcgb2YgdGhlIEREQyAvIERVQyB0byBk
ZWxpdmVyIHN1Ykh6IHJlc29sdXRpb24uJm5ic3A7PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0K
PGRpdj48YnI+DQo8YnI+DQo8ZGl2IGRpcj0ibHRyIj5TZW50IGZyb20gbXkgaVBob25lPC9kaXY+
DQo8ZGl2IGRpcj0ibHRyIj48YnI+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj5PbiBBdWcgMTEs
IDIwMjEsIGF0IDE6MjMgUE0sIEFudG9uIE90dG9zc29uICZsdDthbnRvbm90dEBrdGguc2UmZ3Q7
IHdyb3RlOjxicj4NCjxicj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgdHlw
ZT0iY2l0ZSI+DQo8ZGl2IGRpcj0ibHRyIj7vu78NCjxkaXYgaWQ9ImRpdnRhZ2RlZmF1bHR3cmFw
cGVyIiBkaXI9Imx0ciIgc3R5bGU9ImZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsgZm9udC1mYW1pbHk6IENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZiwgJnF1b3Q7RW1v
amlGb250JnF1b3Q7LCAmcXVvdDtBcHBsZSBDb2xvciBFbW9qaSZxdW90OywgJnF1b3Q7U2Vnb2Ug
VUkgRW1vamkmcXVvdDssIE5vdG9Db2xvckVtb2ppLCAmcXVvdDtTZWdvZSBVSSBTeW1ib2wmcXVv
dDssICZxdW90O0FuZHJvaWQgRW1vamkmcXVvdDssIEVtb2ppU3ltYm9sczsiPg0KPHA+SGksPC9w
Pg0KPHA+PGJyPg0KPC9wPg0KPHA+RG9lcyBhbnkgb25lIGhlcmUga25vdyB3aGF0IHRoZSBjZW50
ZXIgZnJlcXVlbmN5IHR1bmluZyByZXNvbHV0aW9uIGlzIGZvciB0aGUgTjIxMCwgb3IgaG93IG9u
ZSBtaWdodCBmaW5kIG91dD8gQnkgdHVuaW5nIHJlc29sdXRpb24gSSBtZWFuLCBiYXNpY2FsbHks
IHRoZSBzdGVwIHNpemUgd2hlbiBzZWxlY3RpbmcgY2VudGVyIGZyZXF1ZW5jeS4gSSBoYXZlIGJl
ZW4gbG9va2luZyBvdmVyIHRoZQ0KPGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFu
dWFsL3BhZ2VfZGV2aWNlcy5odG1sIiBjbGFzcz0iT1dBQXV0b0xpbmsiPkRldmljZXMgJmFtcDsg
VXNhZ2UgTWFudWFsPC9hPiwgYnV0IGhhdmUgbm90IGJlZW4gYWJsZSB0byBmaW5kIGFuIGFuc3dl
ci48L3A+DQo8cD48YnI+DQo8L3A+DQo8cD5CZXN0LDwvcD4NCjxwPkFudG9uPGJyPg0KPC9wPg0K
PC9kaXY+DQo8c3Bhbj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXzwvc3Bhbj48YnI+DQo8c3Bhbj5VU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbTwvc3Bhbj48YnI+DQo8c3Bhbj5UbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPC9zcGFuPjxicj4N
CjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4N
Cg==

--_000_9234b191f02a41169c046f50ab73e311kthse_--

--===============5612576659342921217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5612576659342921217==--
