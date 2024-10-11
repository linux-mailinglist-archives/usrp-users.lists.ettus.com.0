Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3855999EB9
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 10:07:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A64E385C33
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 04:07:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728634053; bh=vlbI4woABN+EcEmydeDve0+Rc6Zi9vDSXyoG7BAxvvw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pCePNBEXU3QmGuJluwrUhCcmsMU3FpXxvOAnW9InXAtraxaTqOfRjx8JG+BcAufGC
	 NvKmuVwcSEkJ8hkIM3k/2AtkBELEdTXRdVNoU1KIRytYXSOk9m2mhf4+S72aDgA6lb
	 meJntGLkeQdH8eAS2h0DB0SofxtLhntp2vYuAkeumL4m2cIjrnyt7GbzKuScuWrC7V
	 aE1aunAW8qn9MWDb0WpHEkLYS3mGAybZRddGCXbqhA6FhtSVcVTNKDW43FAQp6a5hX
	 zn9y+qnKCoEYpAiP6c+FBttosVs7Z1aGfblLT4pE2JhhjHysqmbHLQUnfq0oHIP0fT
	 C3eoRx1wZ5jxw==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.158])
	by mm2.emwd.com (Postfix) with ESMTPS id 9387D385BAD
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 04:07:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="t6RWiYqA";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 25792 invoked from network); 11 Oct 2024 10:07:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1728634032; bh=3D1UtfIDMISG2LkRmktEqoL9QUvnLxmaMzt2uvV5pgk=;
          h=Subject:To:From;
          b=t6RWiYqAkA5NQH7NdL7WJiJhMlgb0CXn9q+2tqJmnO+SKPNmZXs+3KxKZPC8kNfZf
           RhWPa7FRFc4e1BavIQ9t6lMRE/rFZhwmUdgEUwy2ik93M8u0vmyIN/PEaL4IvFAfHd
           4t2oDoJL5QLDhitlXXSxe8ZvZIXW3kxbKEQFKZ68=
Received: from 109.95.142.61.r.toneticgroup.pl (HELO [192.168.1.168]) (perper@o2.pl@[109.95.142.61])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 11 Oct 2024 10:07:12 +0200
Message-ID: <712120ab-6d29-4c1c-93e3-2bf3a75781cb@o2.pl>
Date: Fri, 11 Oct 2024 10:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c@lists.ettus.com>
Content-Language: en-US
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <YxTAQpjVR4JUqpoymVcjA0ZezuOEW7RBozZ020c@lists.ettus.com>
X-WP-MailID: 99ffcad0f566460d86b3d19d356033af
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EXNh]                               
Message-ID-Hash: 4J5VQ4ZXDFJI6UUJ6BYRY3GXT4CVO4SR
X-Message-ID-Hash: 4J5VQ4ZXDFJI6UUJ6BYRY3GXT4CVO4SR
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4J5VQ4ZXDFJI6UUJ6BYRY3GXT4CVO4SR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KVGhlIEtjb25maWcgZmlsZXMgZm9ybWF0IGlzIHByb2JhYmx5IGFzIG15c3Rl
cmlvdXMgdG8gbWUgKGkuZS4gSSBkb24ndCANCmtub3cgd2hhdCBwcm9jZXNzZXMgdGhlbSBzbyB0
aGV5IGVuZCB1cCBpbiB0aGUgY29uZmlndXJhdGlvbiBhbmQgaGFzIA0KcHJvcGVyIGRlcGVuZGVu
Y2llcykuIEJ1dCB5b3UgY2FuIGp1c3QgbG9vayBhdCB3aGF0IHRoZSBhdXRob3Igb2YgdGhlIA0K
ZHJpdmVyIGFkZGVkIHRvIGFwcHJvcHJpYXRlICdLY29uZmlnJyBhbmQgJ01ha2VmaWxlJy4gSS5l
LiBvcGVuICdnaXRrJyANCnByb2dyYW0gaW4gbGludXgteGxueCBkaXJlY3RvcnkgYW5kIGxvb2sg
Zm9yIGNvbW1pdCA1Y2UzMmZlODRiMzU4YTA0MS4gDQpMb29rIGZvciB3aGF0IGNoYW5nZXMgaXQg
ZG9lcyB0byBkcml2ZXIvbWlzYy9LY29uZmlnIGFuZCANCmRyaXZlci9taXNjL01ha2VmaWxlLg0K
DQpGb3IgZXhwZXJpbWVudHMgaXQgd2FzIGJldHRlciBmb3IgbWUgdG8gY29tcGlsZSBOSSdzIGtl
cm5lbCBtYW51YWxseS4gSWYgDQp5b3UgYWxyZWFkeSBwZXJmb3JtZWQgdGhlIGJ1aWxkIHdpdGgg
dXNlIG9mICdrYXMnIHRoZW4gdGhlIGtlcm5lbCBzb3VyY2UgDQppcyBidXJpZWQgc29tZXdoZXJl
IGluIHlvdXIgYnVpbGQgZGlyZWN0b3J5LiBJIGhhdmUgaXQgaW46DQpidWlsZC90bXAtZ2xpYmMv
d29yay9uaV90aXRhbml1bV9yZXY1X21lbmRlci1vZS1saW51eC9saW51eC14NHh4LzUuMTAuMzcr
Z2l0QVVUT0lOQytlOTdiZDFlMDNlLXIwL2xpbnV4LW5pX3RpdGFuaXVtX3JldjVfbWVuZGVyLXN0
YW5kYXJkLWJ1aWxkL3NvdXJjZQ0KDQpPbmUgbGV2ZWwgdXAgaXMgYnVpbGQgZGlyZWN0b3J5IG9m
IHRoZSBrZXJuZWwuIFNvIHlvdSBjYW4gbWFrZSBjaGFuZ2VzIA0KaW4gdGhlIGtlcm5lbCBzb3Vy
Y2UgYW5kIHRoZW4gY29tcGlsZSBpdCBtYW51YWxseS4NCg0KVG8gbWFrZSB0aGUga2VybmVsIGZv
ciB6eW5xIHlvdSB3aWxsIG5lZWQgdG8gY3JlYXRlIFNESyBpbnN0YWxsZXIgd2l0aCANCnVzZSBv
ZiB5b3VyIHlvY3RvIGJ1aWxkIGFuZCB0aGVuIGluc3RhbGwgaXQuDQpUaGUgY29tbWFuZCB0aGF0
IGNyZWF0ZXMgdGhlIFNESyBpbnN0YWxsZXIgaXMgaGVyZToNCmh0dHBzOi8vZ2l0aHViLmNvbS9F
dHR1c1Jlc2VhcmNoL21ldGEtZXR0dXMvYmxvYi9raXJrc3RvbmUvY29udHJpYi9rYXNfYnVpbGRf
aW1nc19wYWNrYWdlLnNoI0w0NQ0KDQpCdXQgd2hlbiBJIHRyeSB0byBydW4gdGhhdCBtYW51YWxs
eSAod2l0aG91dCBrYXMpIG5vdywgaXQgZG9lc24ndCB3b3JrIA0KZm9yIHNvbWUgcmVhc29uIChp
biB0aGUgZGlyZWN0b3J5IHdoZXJlIHlvdSBoYXZlIHlvdXIgeW9jdG8gYnVpbGQgYW5kIA0KJ29l
LWNvcmUnIGRpcmVjdG9yeSk6DQouIG9lLWNvcmUvb2UtaW5pdC1idWlsZC1lbnYNCmJpdGJha2Ug
Z251cmFkaW8taW1hZ2UgLWNwb3B1bGF0ZV9zZGsNCg0KDQpUaGVuIHlvdSBuZWVkIHRvIGluc3Rh
bGwgdGhlIFNESyAoSSBkb24ndCByZW1lbWJlciBpbiB3aGljaCBkaXJlY3RvcnkgaXQgDQp3aWxs
IGJlIHN0b3JlZCkgYW5kIHNvdXJjZSBhIGJhc2ggc2NyaXB0IGZyb20gdGhlIFNESyBpbnN0YWxs
YXRpb24gZGlyOg0KIMKgIHNvdXJjZSBvZWNvcmUtc2RrL2Vudmlyb25tZW50LXNldHVwLWFhcmNo
NjQtb2UtbGludXgNCg0KQWZ0ZXIgdGhhdCBhbGwgYnVpbGQgdG9vbHMgKGNvbXBpbGVycywgZXRj
KSB3aWxsIGJlIHJlcGxhY2VkIHRlbXBvcmFyaWx5IA0Kd2l0aCBBUk0tY29tcGF0aWJsZSBvbmVz
LiBTbyB5b3UnbGwgYmUgYWJsZSB0byBidWlsZCB0aGUga2VybmVsIHdpdGggYW55IA0KbWFudWFs
IG1vZGlmaWNhdGlvbnMgdGhhdCB5b3UgbWFrZS4NCg0KQmVzdCBSZWdhcmRzLA0KUGlvdHIgS3J5
c2lrDQoNCg0KVyBkbml1IDEwLjEwLjIwMjQgb8KgMTg6NDEsIG1ydWFuZS0tLSB2aWEgVVNSUC11
c2VycyBwaXN6ZToNCj4NCj4gSGkgUGlvdHIsDQo+DQo+IEnigJltIHJlYWxseSBnbGFkIHlvdSBt
ZW50aW9uZWQgeGxueF9kcHUuYyBhbmQgeGxueF9kcHUuaC4gSSBmb3VuZCB0aG9zZSANCj4gYSBm
ZXcgZGF5cyBhZ28gKGluIHRoZSBsaW51eC14bG54IGdpdGh1YiByZXBvLCBJIHRoaW5rKSwgYW5k
IEkgd2FzIA0KPiB0cnlpbmcgdG8gZmluZCBhIHJlY2lwZSB0aGF0IGluc3RhbGxzIHRoZW0sIGJ1
dCBubyBsdWNrLiBJIGRpZG7igJl0IA0KPiB0aGluayBvZiBtYW51YWxseSBjb3B5aW5nIHRoZW0g
dG8gdGhlIE5JIGtlcm5lbCBhbmQgYWRkaW5nIHRoZW0gdG8gdGhlIA0KPiBOSSByZWNpcGUuDQo+
DQo+IFRoZSBDT05GSUdfWElMSU5YX0RQVSBwYXJhbWV0ZXIgaXMgYW4gaXNzdWUuIEl0IGNhdXNl
cyBhIHdhcm5pbmcgdGhhdCANCj4gc2F5cyBpdOKAmXMgYW4gdW5rbm93biBvYmplY3QuIEkgdGhp
bmsgdGhhdOKAmXMgdGhlIHBhcmFtZXRlciB0aGF0IHRlbGxzIA0KPiDigJxQZXRhTGludXjigJwg
dG8gaW5zdGFsbCB0aGUgRFBVIGRyaXZlcnMsIGFuZCBtYXliZSBzZXRzIGEgZmV3IG90aGVyIA0K
PiBrZXJuZWwgcGFyYW1ldGVycy4gTXkgYXNzdW1wdGlvbiBpcyB0aGF0IEkgaGF2ZSB0byBmaWd1
cmUgb3V0IHdoYXQgDQo+IGtlcm5lbCBvcHRpb25zIFhpbGlueCBlbmFibGVzIHdoZW4gdGhhdCBw
YXJhbWV0ZXIgaXMgc2V0LCBhbmQgc2V0IA0KPiB0aG9zZSBhY2NvcmRpbmdseS4gS2NvbmZpZyBp
cyBhIG15c3RlcnkgdG8gbWUsIHNvIEnigJl2ZSBiZWVuIHB1dHRpbmcgaXQgDQo+IG9mZi4gOi0p
IEkgdGhpbmsgSSBuZWVkIHRvIHNwZW5kIGEgZmV3IGhvdXJzIHJlYWRpbmcgdXAgb24gS2NvbmZp
Zy4gDQo+IFJpZ2h0IG5vdywgdGhlIEtjb25maWcgZmlsZXMganVzdCBsb29rIGxpa2UgbWVudSBl
bnRyaWVzIHRvIG1lLiBJIA0KPiBkb27igJl0IHNlZSBhbnl0aGluZyB0aGF0IHRha2VzIHRob3Nl
IG1lbnUgZW50cmllcyBhbmQgd3JpdGVzIHRvIA0KPiBkZWZjb25maWcuIEFnYWluLCBJIGp1c3Qg
bmVlZCB0byByZWFkIHVwIG9uIEtjb25maWcgd2hpbGUgbXkgYnVpbGQgaXMgDQo+IHJ1bm5pbmcu
DQo+DQo+IFJlZ2FyZGluZyB0aGUgcGF0Y2hlcywgSSBsZWFybmVkIGhvdyB0byBkbyB0aGF0IHBy
b3Blcmx5IGR1cmluZyB0aGlzIA0KPiBlZmZvcnQuIEnigJh2ZSBiZWVuIHdyaXRpbmcgYSBsb3Qg
b2YgdGhlbSBmb3IgbGF0ZWx5LCBhbmQgSSBjYW7igJl0IA0KPiBiZWxpZXZlIGl0IHRvb2sgbWUg
c28gbG9uZyB0byB0cnkgdGhlbS4gSSBoYXZlIHRvIHNheSB0aGF0IGthcyBtYWtlcyANCj4gcGF0
Y2hpbmcgUkVBTExZIGVhc3kuIEkgdXNlZCB0byB1c2Ug4oCYcmVwb+KAmSB3aGVuIEkgaGFkIG1h
bnkgcmVtb3RlIA0KPiBsYXllcnMgb3IgcmVwb3NpdG9yaWVzIHRvIGtlZXAgdHJhY2sgb2YuIEni
gJltIG5ldmVyIHVzaW5nIOKAmHJlcG/igJkgYWdhaW4uIA0KPiBLYXMgaXMgZ3JlYXQuIE9uY2Ug
SSBmaXggdGhlIGltYWdlX3RhciBQU0VVRE9fQUJPUlQgaXNzdWUgYW5kIGNhbiANCj4gYnVpbGQg
dGhlIE1lbmRlciBpbWFnZXMsIEnigJlsbCBzZXQgdXAgdGhlIEthcyBkb2NrZXIgaW1hZ2UsIGFu
ZCB1c2UgdGhlIA0KPiBrYXNfYnVpbGRfaW1nc19wYWNrYWdlLnNoIHNjcmlwdC4NCj4NCj4gVGhh
bmtzIGZvciBhbGwgb2YgdGhlIGhlbHAhIEnigJl2ZSByZWFsbHkgbGVhcm5lZCBhIGxvdC4NCj4N
Cj4gQ2hlZXJzLA0KPg0KPiBNaWtlDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
