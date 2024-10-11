Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDBD999B8D
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 06:13:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6301238583B
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 00:13:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728620002; bh=3JE6bfq3ZphGUN+lMMFahq2bCQ8EZyI76MAylMcWEbk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SL6zuPkUVGA5KTGXuA1KLpg3by4b1KdGL55ResmuKYKe0MYdF4q65jy9UhfUjtHrz
	 lmSiGxO/lKXDhOGfFb6INB/2PFurzvSMXg8zOxNmiAflJ4hIReAWHO6CbUemvWB1tY
	 nkcc+fBq0E80BYzhygwOZMCCvFgIMcIQGsCwLX4eUAvIuQ1nOhqu6x0Sy01DJAycsw
	 INnxbz4WZjV5KV+qCFBCr+P66Uk1AwRxJzVxCFw+1bHHotLRM579D3CFYuavu6tcMA
	 Ns1jFx921lpxS2Swmp6pGqWqeCBOdQK4pml1Y3YATCQfknHmGH+LB7VmgB5sdbew3o
	 os4wlwVqWo4Vg==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.158])
	by mm2.emwd.com (Postfix) with ESMTPS id 645D7384E56
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 00:13:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="HruDyFOs";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 7773 invoked from network); 11 Oct 2024 06:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1728619977; bh=WTUfWNrY5w5g6I4P34J1aErLOfmMVCBl+DjwCoDc5BQ=;
          h=Subject:To:From;
          b=HruDyFOs+T7lT5CAAmr0Klx/SIPNs9Ja/kSGxB1BiEWlfs4Fj+64eHIpzJbZuEYSS
           5N6w4WSIxYsrLXLurn91JfzWYhHWVzV9KvfDGhsJ6rE8vPixaKxgCL7xDQcR+X898S
           iTY9rW+ilbAY5InV2pofjQ81bACdzZIwslfBan4I=
Received: from 109.95.142.61.r.toneticgroup.pl (HELO [192.168.1.168]) (perper@o2.pl@[109.95.142.61])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 11 Oct 2024 06:12:57 +0200
Message-ID: <8d4fae65-290d-4c09-8c8f-c5aa2abab43d@o2.pl>
Date: Fri, 11 Oct 2024 06:12:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g@lists.ettus.com>
Content-Language: en-US
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g@lists.ettus.com>
X-WP-MailID: b34e2b1f71bc4f8f284cb940702de511
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [8TER]                               
Message-ID-Hash: HLUBSGYNDAWPZETFCXUCNZTZENSG4LWE
X-Message-ID-Hash: HLUBSGYNDAWPZETFCXUCNZTZENSG4LWE
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HLUBSGYNDAWPZETFCXUCNZTZENSG4LWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8gTWlrZSwNCg0KSXTigJlzIGdvb2QgdGhhdCB5b3UgaGF2ZSBleHBlcmllbmNlIHdpdGgg
dGZ0cGJvb3QsIGJlY2F1c2UgdGhlIHBhdGhzIGluIA0KbXkgZGVzY3JpcHRpb24gYXJlIGEgYml0
IHdyb25nLiBJIG1lYW50IHRvIHB1dCBldmVyeXRoaW5nIGluIC90ZnRwYm9vdCANCmRpcmVjdG9y
eSBmb3Igc2ltcGxpY2l0eSBidXQgdGhlbiB3cml0dGVuIC90ZnRwYm9vdC94NDEwIC0gbGlrZSBJ
IGhhdmUgDQppdC4gU28gdGhpcyBpcyBhIG1pc3Rha2UgYW5kIOKAmC90ZnRwYm9vdC94NDEw4oCZ
IHNob3VsZCBiZSByZXBsYWNlZCBieSANCuKAmC90ZnRwYm9vdOKAmCAoZm9yIGRlZmF1bHQgY29u
ZmlndXJhdGlvbiBvZiB0aGUgdGZ0cCBzZXJ2ZXIpLg0KDQpSZWdhcmRpbmcg4oCYa2Fz4oCZIGNv
bW1hbmQgLSB0aGF0IHdvcmtzIHdlbGwgd2l0aCB0aGUg4oCYemV1c+KAmSBicmFuY2ggb2YgDQpt
ZXRhLWV0dHVzICh1c2VkIHVwIHRvIFVIRCA0LjYpLiBCdXQgd2hlbiBJIHN3aXRjaGVkIHRvIG1v
cmUgcmVjZW50IA0K4oCYa2lya3N0b25l4oCZIGJyYW5jaCAtIGl0IHN0b3BwZWQuIFByb2JhYmx5
IHNvbWUgY2hhbmdlcyBhcmUgbmVlZGVkIGluIA0KdGhhdCBjb21tYW5kLiBJIHdvdWxkIGd1ZXNz
IGthcyB2ZXJzdGlvbiAyLjYuMiBpcyBub3QgY29ycmVjdCBhbnltb3JlLCANCmJ1dCBJIGRvbuKA
mXQga25vdyBmb3Igd2hpY2ggdGhlIGNvbW1hbmQgbWlnaHQgd29yay4gU28gaXQgaXMgYWN0dWFs
bHkgDQpnb29kIHRoYXQgeW91IGFscmVhZHkgYXJlIGFibGUgdG8gcnVuIHRob3NlIGJ1aWxkcyB3
aXRoIOKAmGthc+KAmSBidXQgDQp3aXRob3V0IGRvY2tlci4NCg0KUGlvdHINCg0KVyBkbml1IDEw
LjEwLjIwMjQgb8KgMTc6NTEsIG1ydWFuZS0tLSB2aWEgVVNSUC11c2VycyBwaXN6ZToNCj4NCj4g
SGkgUGlvdHIhDQo+DQo+IFNvIHNvcnJ5IGZvciB0aGUgZGVsYXkhDQo+DQo+IFdvdywgdGhhdOKA
mXMgYSBsb3Qgb2YgZ29vZCBpbmZvcm1hdGlvbiEgVGhhbmtzIGZvciB0aGUgc3RhcnRpbmcgcG9p
bnQgDQo+IGluZm9ybWF0aW9uLiBJIHNwZW50IHNvbWUgdGltZSB0cnlpbmcgdG8gZmluZCBhIGNv
bW1vbiBzdGFydGluZyBwb2ludC4gDQo+IEkgaGF2ZSBhbHNvIGJlZW4gbG9va2luZyBhdCB0aGUg
a2VybmVsIGNvbmZpZyBwYXJhbWV0ZXJzIGluIHRoZSANCj4gZGVmY29uZmlnIGFuZCAuY2ZnIGZp
bGVzLiBJbiB0aGUgbGludXgteGxueCBrZXJuZWwsIHRoZXJlIGlzIGEgDQo+IENPTkZJR19YSUxJ
TlhfRFBVPXkgcGFyYW1ldGVyIHRoYXQgaXMgYmUgYWRkZWQgdG8gYSAuY2ZnIGZpbGUgaW4gdGhl
IA0KPiBrZXJuZWwgcmVjaXBlIHRoYXQgbWFnaWNhbGx5IGVuYWJsZXMgY2VydGFpbiBEUFUtcmVs
YXRlZCBmZWF0dXJlcy4gSSANCj4ga25ldyBpdCBjb3VsZG7igJl0IGJlIGFzIHNpbXBsZSBhcyBq
dXN0IGFkZGluZyB0aGF0IHRvIHRoZSB4NDEwIA0KPiBkZWZjb25maWfigKZidXQgSSBIQUQgdG8g
dHJ5IGl0LiA6LSkgTmVlZGxlc3MgdG8gc2F5LCBJdCBkaWRu4oCZdCB3b3JrLiBJIA0KPiBpbml0
aWFsbHkgdHJpZWQgdG8gZ28gdGhyb3VnaCBhbGwgb2YgdGhlIEtjb25maWcgc3R1ZmYgdG8gc2Vl
IGlmIEkgDQo+IGNvdWxkIGZpZ3VyZSBvdXQgd2hhdCBhY3R1YWwga2VybmVsIHBhcmFtZXRlcnMg
Q09ORklHX1hJTElOWF9EUFUgDQo+IHRyYW5zbGF0ZWQgdG8sIGJ1dCB0aGF0IHdhcyBhIHByZXR0
eSBkZWVwIHJhYmJpdCBob2xlIHRoYXQgZGlkbuKAmXQgc2VlbSANCj4gdmVyeSBwcm9taXNpbmcu
IFNvIEnigJltIGJhY2sgdG8gY29tcGFyaW5nIHRoZSByZXBvc2l0b3JpZXMuDQo+DQo+IFRoYW5r
cyBmb3IgdGhlIHNjcmlwdHMuIFRoaXMgdHJ1bHkgaXMgYSBIVUdFIGFtb3VudCBvZiBoZWxwLg0K
Pg0KPiBSZWdhcmRpbmcgbmV0d29yayBib290OiBOb3cgdGhhdCBJ4oCZdmUgc2VlbiB0aGVtIGFn
YWluLCB0aGUgdGZ0cGJvb3QgDQo+IHN0ZXBzIGFyZSBmYW1pbGlhci4gSSBoYXZlbuKAmXQgZG9u
ZSBpdCBpbiBhIHdoaWxlLCBhbmQgZm9yIHNvbWUgcmVhc29uLCANCj4gSSBkaWRu4oCZdCByZW1l
bWJlciB0aGF0IHRoZSBib290bG9hZGVyIHdhcyBwYXJ0IG9mIHRoZSBwcm9jZXNzLiBTbyBpdOKA
mXMgDQo+IHRoZSBzYW1lIGV4Y2VwdCBmb3IgTkZTIG1vdW50aW5nIHRoZSByb290ZnMuIEnigJls
bCBzdGFydCBzZXR0aW5nIHRoYXQgDQo+IHVwIHRvZGF5LiBNeSBidWlsZCBwcm9jZXNzIGlzIHNs
aWdodGx5IGRpZmZlcmVudCwgc28gSeKAmWxsIGhhdmUgdG8gDQo+IGFkYXB0IHNvbWUgdGhpbmdz
Lg0KPg0KPiBJ4oCZbSB1c2luZyBrYXMgdG8gYnVpbGQsIGJ1dCBub3QgaW4gYSBjb250YWluZXIu
IEkganVzdCBzZXQgdXAgYSBjb25kYSANCj4gZW52aXJvbm1lbnQsIGFuZCBidWlsZCB1c2luZyB0
aGUga2FzIGNvbW1hbmRzLCBsaWtlIOKAmGthcyBidWlsZCANCj4gPHBhdGgtdG8tY3VzdG9tLXg0
MTAueW1sPuKAmS4gVW5mb3J0dW5hdGVseSwgSSBjYW7igJl0IGJ1aWxkIHRoZSBNZW5kZXIgDQo+
IGltYWdlcyBiZWNhdXNlIHRoZXJlIGlzIGEgYnVnIGluIGVpdGhlciB0aGUgTWVuZGVyIHJlY2lw
ZXMgb3IgdGhlIA0KPiByZWNpcGUgZm9yIGdyYXBodml6XzIuNTAuMC5iYiB0aGF0IGNhdXNlcyBh
IFBTRVVET19BQk9SVCBlcnJvci4gSXQgDQo+IHNlZW1zIHRoYXQgb25lIG9mIHRoZSBncmFwaHZp
eiBwYWNrYWdlIGRpcmVjdG9yaWVzIGlzIGRlbGV0ZWQgb3V0c2lkZSANCj4gb2YgUFNFVURPLCBh
bmQgdGhhdCBjYXVzZXMgYW4gaW5vZGUgY29uZmxpY3QuDQo+DQo+IEkgZG9u4oCZdCB0aGluayBp
dCBpcyBpbiB0aGUgZ3JhcGh2aXogcmVjaXBlLCBldmVuIHRob3VnaCB0aGUgDQo+IHBrZ19wb3N0
cm06JHtQTn0gdGFzayByZW1vdmVzIHRoZSBjb25maWc2IGZpbGUgdGhhdCBpcyB0aGUgY2F1c2Ug
b2YgDQo+IHRoZSBjb25mbGljdC4gVGhhdCB0YXNrIGRvZXNu4oCZdCBzZWVtIHRvIHJ1biBiZWZv
cmUgSSBnZXQgdGhlIGVycm9yLiBJIA0KPiBoYXZlIG5hcnJvd2VkIGl0IGRvd24gdG8gbWVuZGVy
LXNldHVwLWltYWdlLmluYywgaW4gd2hpY2ggdGhlIA0KPiBjbGVhbnVwX2V4Y2x1ZGVkX2RpcmVj
dG9yaWVzIGZ1bmN0aW9uIHJlbW92ZXMgdGhlIGV4Y2x1ZGVkIGRpcnMuIEZvciANCj4gc29tZSBy
ZWFzb24sIHJvb3Rmcy5pbWFnZV90YXIgaXMgZ2V0dGluZyBkZWxldGVkLCBhbmQgaXQgc2hvdWxk
buKAmXQgYmUuIA0KPiBJbiB0aGUgZmlsZSwgbWVuZGVyLXBhcnQtaW1hZ2UuYmJjbGFzcywgYWxs
IG9mIHRoZSBNZW5kZXItcmVsYXRlZCANCj4gaW1hZ2UgdGFza3MgYXJlIGJlaW5nIHNldCB0byBO
T1QgcmVzcGVjdCB0aGUgZXhjbHVkZSBwYXRocywgbGlrZSBzbzoNCj4NCj4gfCMgU28gdGhhdCB3
ZSBjYW4gdXNlIHRoZSBmaWxlcyBmcm9tIGV4Y2x1ZGVkIHBhdGhzIGluIHRoZSBmdWxsIA0KPiBp
bWFnZXMuIGRvX2ltYWdlX3NkaW1nW3Jlc3BlY3RfZXhjbHVkZV9wYXRoXSA9ICIwIiANCj4gZG9f
aW1hZ2VfdWVmaWltZ1tyZXNwZWN0X2V4Y2x1ZGVfcGF0aF0gPSAiMCIgDQo+IGRvX2ltYWdlX2Jp
b3NpbWdbcmVzcGVjdF9leGNsdWRlX3BhdGhdID0gIjAiIA0KPiBkb19pbWFnZV9ncHRpbWdbcmVz
cGVjdF9leGNsdWRlX3BhdGhdID0gIjAifA0KPg0KPiBUbyBmaXggaXQsIEkgdGhpbmsgSSBqdXN0
IG5lZWQgdG8gbGV0IE1lbmRlciBrbm93IGFib3V0IHRoZSANCj4gZG9faW1hZ2VfdGFyIHRhc2ss
IGFuZCB0aGVuIHNldCB0aGF0IGZsYWcgdG8gMC4NCj4NCj4gRm9yIG5vdywgdGhvdWdoLCBJ4oCZ
bSBidWlsZGluZyB0aGUgbm9uLU1lbmRlciByZWNpcGUuDQo+DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
