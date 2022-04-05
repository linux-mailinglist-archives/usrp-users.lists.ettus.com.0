Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AFC4F3D3F
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 21:01:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49B20383DC5
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 15:01:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649185296; bh=FZcC6yH12GLq1psXzxCuNgAhabUNEwu5xI6Zuiy30aQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GxpX98JsdC2Ok/4UILhNyKeoCVPn/Mng7c+VxYsOzn+Is+0wwK3QOz+NM+YFkhbMw
	 aepdhmk6och/6eL8H03t9pePmEfmcqGl8qsYZAiKyB1OVq8gy1gENQbwPwOZ5QMJ0V
	 ctAeJ9RzEN0kyalvxHZZST3UBuNOus0e6NIK0abq3Ela/kSzBs/uDdkQOyBhJtx7//
	 1JnRvyJeRxQXlB0Rwt+rxbNZN2CLPsl/29leEWneOYubbxi6w0e3hWZsw65uET170l
	 0pN+3yFk1eGETGE+2QKFvVk6R4a0L7FLcpF1vj3wo4vwQMWaMJzRuZuKiTLVRSGkRN
	 bKIG9RSWEyxbw==
Received: from smtp6.emailarray.com (smtp6.emailarray.com [65.39.216.46])
	by mm2.emwd.com (Postfix) with ESMTPS id DB6F53845C5
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 15:00:43 -0400 (EDT)
Received: (qmail 80667 invoked by uid 89); 5 Apr 2022 19:00:42 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp6.emailarray.com with SMTP; 5 Apr 2022 19:00:42 -0000
Message-ID: <145346f1-a2f5-2f1c-e226-7f08b417f32b@balister.org>
Date: Tue, 5 Apr 2022 15:00:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
From: Philip Balister <philip@balister.org>
In-Reply-To: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
Message-ID-Hash: YX46UX6KE6K2RMXDRFLIIZ4GYD4LPMZX
X-Message-ID-Hash: YX46UX6KE6K2RMXDRFLIIZ4GYD4LPMZX
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YX46UX6KE6K2RMXDRFLIIZ4GYD4LPMZX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RG9lcyB0aGUgRXR0dXMgaW1hZ2UgaGF2ZSBpcGVyZjMgb24gaXQ/IEkgc3VwcG9zZSBJIHNob3Vs
ZCByZW1lbWJlciBob3cgDQppdCB3b3JrcyBhbmQgc2VlIGlmIGl0IGhhcyB1c2VmdWwgbnVtYmVy
cy4NCg0KVGhhdCB3b3VsZCBoZWxwIGZpbmQgdGhlIGJvdHRsZSBuZWNrLg0KDQpQaGlsaXANCg0K
T24gNC8xLzIyIDA4OjQwLCBSb2IgS29zc2xlciB3cm90ZToNCj4gSGksDQo+IEkgYW0gdHJ5aW5n
IHRvIGNvcHkgc29tZSBsYXJnZSBmaWxlcyAofjUwME1CKSBmcm9tIHRoZSBOMzEwIHRvIHRoZSBo
b3N0LiANCj4gVGhlIHRyYW5zZmVyIHJhdGUgSSBnZXQgdXNpbmcgc2NwIG9yIHNzaGZzIChtb3Vu
dGluZyBpbiBlaXRoZXIgDQo+IGRpcmVjdGlvbikgaXMgYWJvdXQgMTJNQi9zLiBHaXZlbiB0aGF0
IHRoZSBpbnRlcmZhY2UgaXRzZWxmIGNhbiBkbyANCj4gID4xMDBNQi9zLCBJJ20gd29uZGVyaW5n
IGlmIHRoZXJlIGlzIGEgZmFzdGVyIG1ldGhvZC4gT25lIHRoaW5nIEkgdHJpZWQgDQo+IHdhcyB0
byBzZXR1cMKgYSBSQU0gZmlsZSBzeXN0ZW0gb24gYm90aCB0aGUgTjMxMCBhbmQgdGhlIGhvc3Qg
YW5kIGNvcHkgDQo+IGZyb20gb25lIFJBTSBmaWxlIHN5c3RlbSB0byB0aGUgb3RoZXIuIEJ1dCwg
c3RpbGwgbm8gYmV0dGVyIHRoYW4gMTIgDQo+IE1CL3MuIEFueSBpZGVhcyBvbiBmYXN0ZXIgdHJh
bnNmZXJzPw0KPiBSb2INCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
