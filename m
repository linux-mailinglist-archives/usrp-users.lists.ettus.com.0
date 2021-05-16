Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75373382135
	for <lists+usrp-users@lfdr.de>; Sun, 16 May 2021 23:34:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58EDA38406F
	for <lists+usrp-users@lfdr.de>; Sun, 16 May 2021 17:33:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="hit7l0NE";
	dkim-atps=neutral
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl [149.210.149.73])
	by mm2.emwd.com (Postfix) with ESMTPS id 09B2B383C11
	for <USRP-users@lists.ettus.com>; Sun, 16 May 2021 17:33:13 -0400 (EDT)
Received: from submission11.mail.transip.nl (unknown [10.103.8.162])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 4FjwVJ4dwmzYd2Y;
	Sun, 16 May 2021 23:33:12 +0200 (CEST)
Received: from mail.olifantasia.eu (unknown [IPv6:2a01:7c8:aabf:5b9:5054:ff:feac:f25b])
	by submission11.mail.transip.nl (Postfix) with ESMTPSA id 4FjwVG3Qt7z2Bd1P;
	Sun, 16 May 2021 23:33:10 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 5996B605EB;
	Sun, 16 May 2021 23:33:10 +0200 (CEST)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <42f4dc77-e817-171a-ad75-ba2d4ac51e63@olifantasia.com>
 <A86ADD35-1A53-4DCF-8F77-E29172D9E135@gmail.com>
 <a28fd43f-a2fd-ba66-cbf5-cb0493035431@olifantasia.com>
 <609FF7C3.10107@gmail.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <4b71e4d6-fca0-0f8a-3640-31b488daccc9@olifantasia.com>
Date: Sun, 16 May 2021 23:33:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <609FF7C3.10107@gmail.com>
Content-Language: en-US
X-Scanned-By: ClueGetter at submission11.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1621200790; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=ehix/sqRhJRZAWhyU67EbVHvyGOZ/1LC0dO5U64R9i4=;
 b=hit7l0NEiCnYzNfTqgFjCP5wS2LSBolePzaIJb/iaPMefv15TKdJ6WExZdc1qeVCElGWAl
 gNRD1tRbKCPV74vX7Q/eDXP+ir12/wDIlkhLk4W/5YloQy7WQdvflJqIP88WYqZgZYppA6
 9973oFbE2j9dkUiGvs6+ukNbM4dFaCTe4svHR+Fk9aa8Dh1ewC83cOq1+SBYM0UfaXEKOS
 FX6YSFBVvaEiaBV4uk6U417eLOIkyEDQYIfNhUwWAVOYQzj2jdZrIQlwfJ6+VRaQ2R8khB
 xEm1rtRm29CK+7T+N4ugLFCq6Iy+9kGFIHZCKWeklaN2Wt1ou0l9FOsXhuVTsw==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: E45MBNAMLUSFURHECX4K5SX2AXQ44TLC
X-Message-ID-Hash: E45MBNAMLUSFURHECX4K5SX2AXQ44TLC
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E45MBNAMLUSFURHECX4K5SX2AXQ44TLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUtMDUtMjAyMSAxODozMywgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBPbiAwNS8xNS8y
MDIxIDEwOjE5IEFNLCBNYXJ0aW4gd3JvdGU6DQo+PiBPbiAxNC0wNS0yMDIxIDIxOjI2LCBNYXJj
dXMgRCBMZWVjaCB3cm90ZToNCj4+PiBXaGF0IGhhcHBlbnMgaWYgeW91IGRvbuKAmXQgc3BlY2lm
eSBhbnkgYXJncyBhdCBhbGw/DQo+PiBUaGVuIEkgYWxzbyBnZXQgTm8gRGV2aWNlIGZvdW5kLg0K
Pj4NCj4+IE1hcnRpbg0KPiBNYXJ0aW46DQo+IA0KPiBXaGVyZSBkaWQgeW91IGdldCB5b3VyIHNk
aW1nIGZyb20/DQoNCk9uIGEgaG9zdCBzeXN0ZW0gd2l0aCBVSEQgMy4xNSBpbnN0YWxsZWQgSSBk
aWQ6DQoNCnN1ZG8gdWhkX2ltYWdlc19kb3dubG9hZGVyIC10IHNkaW1nIC10IGUzMTAgLXQgc2cx
DQoNCltJTkZPXSBJbWFnZXMgZGVzdGluYXRpb246IC91c3Ivc2hhcmUvdWhkL2ltYWdlcw0KVGhl
IGZpbGUgc2l6ZSBmb3IgdGhpcyB0YXJnZXQgKDgzMi4zIE1pQikgZXhjZWVkcyB0aGUgZG93bmxv
YWQgbGltaXQgDQooMTAwLjAgTWlCKS4gQ29udGludWUgZG93bmxvYWRpbmc/IFt5L05deQ0KW0lO
Rk9dIERvd25sb2FkaW5nIGUzeHhfZTMxMF9zZzFfc2RpbWdfZGVmYXVsdC12My4xNS4wLjAuemlw
LCB0b3RhbCANCnNpemU6IDg3MjcyOS45MyBrQg0KW0lORk9dIEltYWdlcyBkb3dubG9hZCBjb21w
bGV0ZS4NCg0KVGhpcyBzZWVtcyB0byBkb3dubG9hZCB0aGlzIGZpbGUgYW5kIGV4dHJhY3RzIGl0
Og0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUvZTN4eC9tZXRhLWV0dHVz
LXYzLjE1LjAuMC9lM3h4X2UzMTBfc2cxX3NkaW1nX2RlZmF1bHQtdjMuMTUuMC4wLnppcA0KDQpJ
IHdyb3RlIHRoZSBleHRyYWN0ZWQgaW1hZ2UgdG8gYSA4IEdCIHNkY2FyZCB3aXRoIGRkLg0KDQpJ
IGFsc28gdHJpZWQgZG93bmxvYWRpbmcgdGhlIGFib3ZlIGZpbGUgYnkgaGFuZCBhbmQgYW5kIGV4
dHJhY2luZyBpdCB0byANCnRoZSBzZGNhcmQuIFRoYXQgaGFzIHRoZSBleGFjdCBzYW1lIHJlc3Vs
dC4NCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQo=
