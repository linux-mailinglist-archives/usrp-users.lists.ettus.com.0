Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4438ABAD25F
	for <lists+usrp-users@lfdr.de>; Tue, 30 Sep 2025 16:12:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 881D4386814
	for <lists+usrp-users@lfdr.de>; Tue, 30 Sep 2025 10:12:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759241539; bh=hLhhtR9q5dFr72jTgjNZYfSmEvJ2MzEHHr8Mrs3APqc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=F/RY8vJ203rD/ux1hBg+JYxR6VA7bR/WOZHzEG5J+tN2D26BAgquRap8wo+HJKtKc
	 5TbswO9UhYLgRSx9fnXCBWJ3pyaZjGFhR7EYkAQGlsDcOWSMLDqq/fIxO7lw+oA7+J
	 vNwfgRffngUlZ9mcIjM9GAG9K1Ej7bsWLmU033nAEPokznD9Dv9shvppJXhQZvg2Gt
	 dy1nqCtnqAJM4fhynwViA0HK/uD6RKPu6yO2VrPCA5OL00Rjhb6KusxEzodrwAv3z2
	 7ql9HQ6BYtET8IixUeyv8bK3Q4keGpnLOXMB26OSD9f0uC/vWr173NB4JuvrvUU+/t
	 00cXrp48vGlZQ==
Received: from baseband.digital (baseband.digital [162.55.218.138])
	by mm2.emwd.com (Postfix) with ESMTPS id 17A5D3862E1
	for <usrp-users@lists.ettus.com>; Tue, 30 Sep 2025 10:11:15 -0400 (EDT)
Received: from [IPV6:2001:16b8:cc76:3500:bf5:d22c:2206:8fff] (unknown [IPv6:2001:16b8:cc76:3500:bf5:d22c:2206:8fff])
	by baseband.digital (Postfix) with ESMTPSA id EA3325E66D;
	Tue, 30 Sep 2025 16:11:14 +0200 (CEST)
Message-ID: <7d10cc6f-77bd-42c5-994c-4169bd9ebb19@baseband.digital>
Date: Tue, 30 Sep 2025 16:11:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>,
 usrp-users@lists.ettus.com
References: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <mueller_usrp_users@baseband.digital>
In-Reply-To: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Message-ID-Hash: FDYBO7XSRB43DSCBWSFUIBBXAZJVEZ7L
X-Message-ID-Hash: FDYBO7XSRB43DSCBWSFUIBBXAZJVEZ7L
X-MailFrom: mueller_usrp_users@baseband.digital
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Half duplex with USRP B2xx and GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDYBO7XSRB43DSCBWSFUIBBXAZJVEZ7L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgRGFuaWVsLA0KDQppcyBhIHNvZnR3YXJlIHNvbHV0aW9uIGltcG9zc2libGU/IFlvdSBnZXQg
dGhlIFJYIHRpbWVzdGFtcHMsIGFuZCB5b3UgY291bGQgZmVlZCB0aGUgVFggDQpidXJzdCBzdHJl
YW0gaW50byBib3RoIHRoZSBVU1JQIFNpbmsgYW5kIGEgYmxvY2sgZW1pdHRpbmcgbWVzc2FnZXMg
ZGVzY3JpYmluZyBidXQgdGhlIA0Kc3RhcnQgdGltZXN0YW1wIFRYIGJ1cnN0LiBNZXNzYWdlcyBj
YW4gZmVlZCBpbnRvIGEgc21hbGwgcXVldWUgdGhhdCBjb250cm9scyBhIHN0YXRlIA0KbWFjaGlu
ZSBlLmcuIGluIHlvdXIgY2FycmllciBzZW5zZSBhbGdvcml0aG0gKGFuZCBkZWFmZW5zIGl0KS4N
Cg0KQmVzdCwNCk1hcmN1cw0KDQpPbiA5LzI5LzI1IDEyOjE1IFBNLCBEYW5pZWwgRXN0w6l2ZXog
d3JvdGU6DQo+IEhlbGxvLA0KPg0KPiBJIGFtIGltcGxlbWVudGluZyBhIGhhbGYtZHVwbGV4IG1v
ZGVtIHdpdGggR05VIFJhZGlvIGFuZCBhIFVTUlAgQjJ4eCB0aGF0IHVzZXMgQ1NNQSB0byANCj4g
Y29udHJvbCBtZWRpdW0gYWNjZXNzLiBJIGhhdmUgYSBHTlUgUmFkaW8gZmxvd2dyYXBoIHdpdGgg
YSBVU1JQIFNvdXJjZSBhbmQgVVNSUCBTaW5rIA0KPiBibG9ja3MgYm90aCBzZXQgdG8gdXNlIHRo
ZSBUWC9SWCBhbnRlbm5hLiBUaGUgVVNSUCBTaW5rIGJsb2NrIHVzZXMgYnVyc3QgdHJhbnNtaXNz
aW9uLiANCj4gV2hlbiBhIGJ1cnN0IGlzIHNlbnQsIHRoZSBCMnh4IGF1dG9tYXRpY2FsbHkgc3dp
dGNoZXMgdGhlIHJlY2VpdmUgdG8gdGhlIFJYMiBwb3J0Lg0KPg0KPiBUaGUgaXNzdWUgaXMgdGhh
dCB0aGVyZSBpcyBlbm91Z2ggbGVha2FnZSB0aHJvdWdoIHRoZSBSWDIgcG9ydCB0aGF0IHRoZSBz
eXN0ZW0gaXMgYWJsZSANCj4gdG8gcmVjZWl2ZSBpdHMgb3duIHRyYW5zbWl0IHBhY2tldHMgd2l0
aCBnb29kIFNOUi4gVGhpcyBpcyBhIHByb2JsZW0gZm9yIHRoZSBDU01BIHN5c3RlbSANCj4gYmVj
YXVzZSBpdCBtYWtlcyB0aGUgc3lzdGVtIGRldGVjdCB0aGF0IHRoZSBjaGFubmVsIGlzIGJ1c3kg
d2hpbGUgaXQgaXMgdHJhbnNtaXR0aW5nIGl0cyANCj4gb3duIHBhY2tldC4gRHVlIHRvIHRoZSBs
YXRlbmN5IGJldHdlZW4gdGhlIFJYIGFuZCBUWCBzdHJlYW1zIGluIEdOVSBSYWRpbywgdGhpcyBw
cmV2ZW50cyANCj4gdGhlIG1vZGVtIGZyb20gdHJhbnNtaXR0aW5nIGJhY2stdG8tYmFjayBwYWNr
ZXRzICh3aGljaCBpcyBhbGxvd2VkIGFuZCBleHBlY3RlZCBieSB0aGlzIA0KPiBDU01BIHNjaGVt
ZSksIGJlY2F1c2Ugd2hlbiB0aGUgc2Vjb25kIHBhY2tldCBpcyBhYm91dCB0byBiZSBzZW50LCB0
aGUgbW9kZW0gcmVjZWl2ZXIgaXMgDQo+IHN0aWxsIHNlZWluZyB0aGUgZW5kIG9mIHRoZSBwcmV2
aW91cyBwYWNrZXQgYW5kIGRldGVybWluZXMgdGhhdCB0aGUgY2hhbm5lbCBpcyBzdGlsbCBidXN5
Lg0KPg0KPiBUbyBzb2x2ZSB0aGlzIGlzc3VlLCBJIHdvdWxkIGxpa2UgdGhlIFVTUlAgU291cmNl
IHRvIHJlY2VpdmUgZWl0aGVyIHplcm9zLCBubyBzYW1wbGVzIGF0IA0KPiBhbGwsIG9yIHNvbWV0
aGluZyB0aGF0IGF0IGxlYXN0IGRvZXMgbm90IGhhdmUgc28gbXVjaCBsZWFrYWdlIG9mIGl0cyBv
d24gVFggc2lnbmFsLg0KPg0KPiBJcyBpdCBwb3NzaWJsZSB0byBkbyB0aGlzIGVpdGhlciBieSBh
cHByb3ByaWF0ZSBjb25maWd1cmF0aW9uIGluIEdOVSBSYWRpbyBvciBVSEQ/DQo+DQo+IEkndmUg
YmVlbiBzdHVkeWluZyB0aGUgc291cmNlcyBvZiBVSEQgYW5kIEdOVSBSYWRpbyB0byBzZWUgaG93
IHRoaXMgY291bGQgYmUgZG9uZS4gVGhlIA0KPiBvbmx5IHRoaW5nIEkgaGF2ZSBmb3VuZCBpcyB0
aGF0IHRoaXMgd291bGQgYmUgcG9zc2libGUgd2l0aCBhIHNtYWxsIGNoYW5nZSB0byB0aGUgRlBH
QSANCj4gaW1hZ2UuIEZvciBpbnN0YW5jZSwgdGhpcyBsaW5lDQo+DQo+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9mcGdhL3VzcnAzL2xpYi9yYWRpb18y
MDAvcmFkaW9fbGVnYWN5LnYjTDQ0NiANCj4NCj4NCj4gY291bGQgYmUgbW9kaWZpZWQgdG8gcmVw
bGFjZSB0aGUgUlggc2FtcGxlcyBieSB6ZXJvcyB3aGVuZXZlciBydW5fcnggaXMgYXNzZXJ0ZWQu
DQo+DQo+IEhvd2V2ZXIgSSB3b3VsZCBwcmVmZXIgbm90IHRvIGJ1aWxkIGEgbW9kaWZpZWQgRlBH
QSBpbWFnZSBmb3IgdGhpcyBzeXN0ZW0sIHNvIEkgd2FzIA0KPiB3b25kZXJpbmcgaWYgb3RoZXIg
c29sdXRpb25zIGV4aXN0Lg0KPg0KPiBCZXN0LA0KPiBEYW5pZWwuDQo+DQo+DQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
