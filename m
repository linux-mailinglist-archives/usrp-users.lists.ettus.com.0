Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB05846F7
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 22:21:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 917A7383FD5
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 16:21:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659039705; bh=MIVfQoQfr1WKSXVEWFZmNPOZeB62U0kfXV2Nu1MxGc4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mtEJlciVZEGFMAHVmS0gdLOEPlxjtfTSQJJDSbasTsqkcCH6KvLB0SO2agnkceDuK
	 nyWKCFvEh4iTk5ZREh2R5JCoYBat+/teQOzirg4aSIzjH9CXm/DbcBf0X86pDGsOoD
	 Y6mGkiYG+yuJwA52cyxXqVqy7x4eZbb10uwUDFzLck3Zid40X+D45W1PldCMMExA38
	 jBLg5HsG/L20Yh1BcMCq8XJ8oOTfnHC3d9rB0ZTdXvAcStej1rh7FhQ92RcWBwQXFe
	 xHiw5F4v7+N8xwumeKts+3YbThGIESQis6bGk1NtHgIo+dPVoLQ9heSXDCt4d0ihun
	 N6YF5zZzoUFVg==
Received: from smtp5.emailarray.com (smtp5.emailarray.com [65.39.216.39])
	by mm2.emwd.com (Postfix) with ESMTPS id E3919381066
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 16:19:29 -0400 (EDT)
Received: (qmail 33858 invoked by uid 89); 28 Jul 2022 20:19:28 -0000
Received: from unknown (HELO ?192.168.1.80?) (cGhpbGlwQG9wZW5zZHIuY29tQDc3LjE1MC4yMTEuNDA=) (POLARISLOCAL)  
  by smtp5.emailarray.com with SMTP; 28 Jul 2022 20:19:28 -0000
Message-ID: <95bdfd74-a00b-a141-6618-d69c946503fe@balister.org>
Date: Thu, 28 Jul 2022 22:19:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk@lists.ettus.com>
 <1aa2bf89-67d5-ed16-2b44-74c11e362ee0@gmail.com>
From: Philip Balister <philip@balister.org>
In-Reply-To: <1aa2bf89-67d5-ed16-2b44-74c11e362ee0@gmail.com>
Message-ID-Hash: 4BCCK7UT2YXE7UKHW42MTW5ZSNF6RII3
X-Message-ID-Hash: 4BCCK7UT2YXE7UKHW42MTW5ZSNF6RII3
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: meta-ettus build errors out (undefined reference to 'stime')
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4BCCK7UT2YXE7UKHW42MTW5ZSNF6RII3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNy8yOC8yMiAyMTozMSwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBPbiAyMDIyLTA3LTI4
IDA4OjI1LCBrZXZpbi5tYWNrbmlnaHQtLS0gdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+Pg0KPj4g
SSBjb250aW51ZSB0byBmYWlsIGluIGJ1aWxkaW5nIHRoZSBtZXRhLWV0dHVzIGVtYmVkZGVkIGlt
YWdlLiBWZXJ5IA0KPj4gc3RyYWlnaHRmb3J3YXJkIGJ1aWxkIHByb2Nlc3MsIC8qaGFzIGFueW9u
ZSBzdWNjZXNzZnVsbHkgYnVpbHQgDQo+PiBtZXRhLWV0dHVzPyovDQo+Pg0KPj4gLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+Pg0KPj4gSSBoYXZlIFVidW50dSAyMC4wNCBzZXR1cCBvbiBWaXJ0dWFsQm94IGFu
ZCBjbG9uZWQgdGhlIEtBUyANCj4+IDxodHRwczovL2dpdGh1Yi5jb20vc2llbWVucy9rYXM+IHRv
b2wgYW5kIE1FVEEtRVRUVVMgDQo+PiA8aHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gv
bWV0YS1ldHR1cy90cmVlL3VoZC00LjIvemV1cz4gYnJhbmNoIA0KPj4g4oCcdWhkLTQuMi96ZXVz
4oCdDQo+Pg0KPj4gSXNzdWVkIHRoZSBjb21tYW5kIOKAnC4vY29udHJpYi9rYXNfYnVpbGRfaW1n
c19wYWNrYWdlLnNoIHg0eHggdjQuMuKAnSBhbmQgDQo+PiBnZXQgdGhpcyBlcnJvcjoNCj4+DQo+
PiAgKg0KPj4NCj4+ICAgICAqL21ldGEtZXR0dXMvYnVpbGQvdG1wLWdsaWJjL3dvcmsveDg2XzY0
LWxpbnV4L3FlbXUtbmF0aXZlLzQuMS4wLXIwL3FlbXUtNC4xLjAvbGludXgtdXNlci9zeXNjYWxs
LmM6NzY1NzoNCj4+ICAgICB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBzdGltZScNCj4+DQo+PiAg
Kg0KPj4NCj4+ICAgICBIZXJlIGlzIHRoZSBwYXRjaA0KPj4gICAgIGh0dHBzOi8vc3RhY2tvdmVy
Zmxvdy5jb20vcXVlc3Rpb25zLzYxMzY3MTczL2NvcmUtaW1hZ2UtbWluaW1hbC1mYWlscw0KPj4N
Cj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS11c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0b3VzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQo+IFRoaXMgbG9va3MgbGlrZSBhIHByb2JsZW0gd2l0aCBRRU1VIG9uIHNvbWUg
c3lzdGVtcywgd2hpY2ggaXMgcmVxdWlyZWQgDQo+IGZvciB0aGUgY3Jvc3MtdG9vbHMgdG8gd29y
aywgYnV0IGxvb2tzIGxpa2UgaGFzIGEgcHJvYmxlbSBvbiBzb21lIA0KPiBzeXN0ZW1zLsKgIEkn
dmUgbm90IGRvbmUgdGhpcw0KPiAgwqAgYnVpbGQgbXlzZWxmLCBidXQganVzdCBsb29raW5nIGF0
IHRoYXQgdGhyZWFkLCBzZWVtcyBsaWtlIGEgUUVNVSBwcm9ibGVtLg0KDQpJIGNhbid0IGNvbmZp
cm0gdGhpcyB3aXRob3V0IGJpbGxpbmcgc29tZW9uZSwgYnV0IEkgdmVyeSBzdHJvbmdseSANCnN1
c3BlY3QgdGhlIGlzc3VlIGlzIHRoYXQgRXR0dXMgaXMgdXNpbmcgYW4gWW9jdG8gUG9yamVjdCBy
ZWxlYXNlIGJyYW5jaCANCih6ZXVzKSB0aGF0IGhhcyBub3QgYmVlbiBzdXBwb3J0ZWQgc2luY2Ug
YXJvdW5kIEF1Z3VzdCAyMDIwIFsxXQ0KDQpCYXNpY2FsbHkgdGhpcyByZWxlYXNlIGxpa2VseSBk
b2VzIG5vdCBidWlsZCBvbiBhIG5ld2VyIExpbnV4IGRpc3Ryby4gDQpXaGVuIHN1cHBvcnRpbmcg
Y3VzdG9tZXJzIGluIHRoaXMgcG9zaXRpb24sIGNvbnN1bHRhbnRzIHR5cGljYWwgY3JlYXRlIGEg
DQpjb250YWluZXIgYmFzZWQgc29sdXRpb24uIEkgdGVuZCB0byB1c2UgbWV0YS1weXJleCBiZWNh
dXNlIEkgbGlrZSB0aGUgDQphcHByb2FjaC4gSSB0aG91Z2h0IHRoZSBtZXRhLWV0dHVzIGluc3Ry
dWN0aW9ucyBhbHNvIHBvaW50ZWQgYXQgYSANCmNvbnRhaW5lciBzb2x1dGlvbi4NCg0KQXMgYWx3
YXlzLCBwbGVhc2UgZG8gbm90IHNoaXAgYWN0dWFsIHByb2R1Y3QgYmFzZWQgb24gdGhpcyByZWxl
YXNlIA0KdW5sZXNzIHlvdSBoYXZlIGNvbnRyYWN0ZWQgd2l0aCBzb21lb25lIHRvIHN1cHBvcnQg
aXQuIEFuZCBpbnNlcnQgbXkgDQpzdGFuZGFyZCBwbGVhIHRvIHN0b3Agc2hpcHBpbmcgb3V0IG9m
IGRhdGUgc29mdHdhcmUgc28gSSBkb24ndCBnZXQgd29yayANCmRvaW5nIGJhbmRhaWRzLg0KDQpQ
aGlsaXANCg0KWzFdIGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvUmVsZWFzZXMN
Cg0KPiANCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
