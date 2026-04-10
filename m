Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBE3F9Q82WkHnwgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 20:09:24 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DA63DB570
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 20:09:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09E49387EBB
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 14:09:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775844562; bh=hqBpzxck9F6vCykHQq5BKuIk/dx9PdVu2bRRpT1EPjc=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=S9CEcIl0FZg6O67OEIFbxjfaD8Zb94e6WceYfuoBc/8PMsxaStq71YO95sw0yLnFw
	 LhwlvFGcpJ9H5VnoTTvaUvBlQGCcmmFOpIdQazfjjeKBxokGxiuHA7bJctql2jSG0u
	 IBk1vdv6C+gYkXOWE3Z2/xO+O72JDHWPyNJ+C8/HX8ztwWukXL0sirHkGdHMjGVIRj
	 +dJFI5EdqbKk/SUh5hnW1hz579EzxHKu8OoVrchN7vrof2uEft2vXmmUki36xDaFG1
	 M8iqtzeGLVgHu/BpmxS1uEiBGmzwUCk8WG0xcS/B3hcx85HXdr6v7d4d3vIC4bosPH
	 iiC77JOil8L4A==
Received: from a11-17.smtp-out.amazonses.com (a11-17.smtp-out.amazonses.com [54.240.11.17])
	by mm2.emwd.com (Postfix) with ESMTPS id E177C3863F0
	for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 14:09:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vesperix.com header.i=@vesperix.com header.b="VpZDWX9a";
	dkim=pass (1024-bit key; unprotected) header.d=amazonses.com header.i=@amazonses.com header.b="A9KddS+i";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ljyopo7yi7ux6moa7ionkqaa5xw27m3z; d=vesperix.com; t=1775844542;
	h=Subject:From:To:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References:Message-Id;
	bh=uN2NFp2AQa6f6OpEcmsGUvzyrWpo4wD2ConMJ9DPhgE=;
	b=VpZDWX9aMKi3ETwhT2SyM0MYMbOzPJuFMWrgiE9BO2JYMr7Wu6ZDM80o55TgS1jl
	TztrzH5sUknxHq1m7B3CIGGsRK6ccF8SepbMXH94xU9rdFYIk+TYtxzBNlvm33QC5sg
	c0OOKsrzqdw2buDeN1SfqAA6eEtmIk/BVsZsf7aJvJPsYECls/U8w51T3ROZ9t6GBxC
	avPuccOUSw/o97gAT5LsMjLwCCvho1GbaCtJH0GlRmwuzFfqfffn7Z20LKvrPlMTsv5
	hyn0JzhMvCZe7fhOfvAmymKHwp9iVKkuA7GQM1CaHwcdRWv++VjFgf+NL0V8yE2JTgE
	UJlgZSzC2w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=224i4yxa5dv7c2xz3womw6peuasteono; d=amazonses.com; t=1775844542;
	h=Subject:From:To:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References:Message-Id:Feedback-ID;
	bh=uN2NFp2AQa6f6OpEcmsGUvzyrWpo4wD2ConMJ9DPhgE=;
	b=A9KddS+i2CVXMBwLp0DeayYaKm4mZiUDbrh93ooL7104UVPfEkrU1UTaysVnbmNz
	MUFW9S8aboeTYV8vXQrAxvG4q5nl+1horeGnYbuNNgeNNFQ79lXnZHamMAh7iUvAHtX
	2sBgYGhykjdA84UxQ9drnSn5SK4wmGlKGQiOBuVs=
To: 
	=?UTF-8?Q?usrp-users=40lists=2Eettus=2Ecom?= <usrp-users@lists.ettus.com>
Date: Fri, 10 Apr 2026 18:09:02 +0000
Mime-Version: 1.0
In-Reply-To: <mail.a4e60a71-90d1-4790-a35c-764698fef28e@storage.wm.amazon.com>
References: <177583254631.18808.2706049539869829073@mm2.emwd.com>
 <mail.a4e60a71-90d1-4790-a35c-764698fef28e@storage.wm.amazon.com>
 <mail.a4e60a71-90d1-4790-a35c-764698fef28e@storage.wm.amazon.com>
 <mail.b80fc19b-9852-4e98-938a-9119662d828a@storage.wm.amazon.com>
 <mail.b80fc19b-9852-4e98-938a-9119662d828a@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdzI+snPgpAh3GHJQuG12jEKGZL+SQAGkYVw
Thread-Topic: E310 Update Issue
X-Wm-Sent-Timestamp: 1775844540
Message-ID: <0100019d78954647-670771b9-bad7-49de-90c9-9d518facc4c1-000000@email.amazonses.com>
Feedback-ID: ::1.us-east-1.LF00NED762KFuBsfzrtoqw+Brn/qlF9OYdxWukAhsl8=:AmazonSES
X-SES-Outgoing: 2026.04.10-54.240.11.17
Message-ID-Hash: UABA4G4JTRTD5NMK5ZOSGJZ7BMXE2YRG
X-Message-ID-Hash: UABA4G4JTRTD5NMK5ZOSGJZ7BMXE2YRG
X-MailFrom: 0100019d78954647-670771b9-bad7-49de-90c9-9d518facc4c1-000000@mail.vesperix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 Update Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UABA4G4JTRTD5NMK5ZOSGJZ7BMXE2YRG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tom Wallace via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Tom_Wallace?= <tom.wallace@vesperix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.50 / 15.00];
	REPLYTO_EXCESS_QP(1.20)[];
	TO_EXCESS_QP(1.20)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	DKIM_MIXED(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[vesperix.com:s=ljyopo7yi7ux6moa7ionkqaa5xw27m3z,amazonses.com:s=224i4yxa5dv7c2xz3womw6peuasteono];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	HAS_X_PRIO_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[tom.wallace@vesperix.com];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,vesperix.com:-,amazonses.com:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[email.amazonses.com:mid,vesperix.com:replyto]
X-Rspamd-Queue-Id: C0DA63DB570
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QWZ0ZXIgaHVudGluZyB0aHJvdWdoIHRoZSBiYWNrIGlzc3VlcyBvZiB0aGlzIGxpc3QsIHRoZSBw
cm9ibGVtIEknbSBoYXZpbmcgYXBwZWFycyB0byBiZSB2ZXJ5IHNpbWlsYXIsIGJ1dCBub3QgaWRl
bnRpY2FsLCB0byBhIHByb2JsZW0gZGlzY3Vzc2VkIGluIE1heSAyMDIxIHVuZGVyIHRoZSBoZWFk
aW5nICdVU1JQIEUzMTAgc2cxIGRvZXMgbm90IGZpbmQgaXRzIG93biBVSEQgUkYgaGFyZHdhcmUg
d2l0aCB1aGRfdXNycF9wcm9iZSAtLWFyZ3MgInR5cGU9ZTMwMCInLg0KDQpXaGVuIEkgaGF2ZSBh
IG1vbWVudCwgSSB3aWxsIHdvcmsgdGhyb3VnaCB0aGUgZml4ZXMgZGlzY3Vzc2VkIGluIHRoYXQg
dGhyZWFkIHRvIHNlZSBpZiB0aGV5IGhhdmUgYW55IGVmZmVjdCBvbiBteSBpc3N1ZS4gSWYgdGhl
cmUncyBhbnlvbmUgb24gdGhlIGxpc3Qgd2hvIHdhcyBpbnZvbHZlZCBpbiByZXNvbHZpbmcgdGhl
IHByb2JsZW0gYmFjayBpbiAyMDIxLCBlc3BlY2lhbGx5IG9uIHRoZSBFdHR1cy9OSS9FbWVyc29u
IHNpZGUsIHBsZWFzZSBmZWVsIGZyZWUgdG8gY2hpbWUgaW4uDQoNCiAtLSBUb20gV2FsbGFjZQ0K
DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogVG9tIFdhbGxhY2UgDQpTZW50OiBG
cmlkYXksIEFwcmlsIDEwLCAyMDI2IDExOjA4IEFNDQpUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NClN1YmplY3Q6IFJFOiBFMzEwIFVwZGF0ZSBJc3N1ZQ0KDQoNCk1hcnRpbiwNCg0KVGhh
bmtzLCBJJ20gbm90IGNvbmNlcm5lZCBhYm91dCB0aGUgb3ZlcmxheSB3YXJuaW5ncywgSSdtIGNv
bmNlcm5lZCBhYm91dCB0aGVzZSBlcnJvcnM6DQoNCiBbICAgMzIuNzAxNDMyXSBlMzF4LXBtdSBm
cGdhLWZ1bGw6cG11OiBVbnN1cHBvcnRlZCBmaXJtd2FyZSB2ZXJzaW9uIDAuMA0KIFsgICAzMi43
MTgwNjldIGUzMXgtcG11OiBwcm9iZSBvZiBmcGdhLWZ1bGw6cG11IGZhaWxlZCB3aXRoIGVycm9y
IC01MjQNCg0KVGhlIHNhbWUgZXJyb3JzIGFsc28gYXBwZWFyIHdoZW5ldmVyIHVoZF9maW5kX2Rl
dmljZXMgb3IgdWhkX3VzcnBfcHJvYmUgaXMgcnVuLCB1c2luZyBlaXRoZXIgdGhlIDMuMTUuMCBv
ciA0LjYuMCBTRCBjYXJkIGltYWdlcywgb24gdHdvIHNlcGFyYXRlIEUzMTBzLiBUaGUgYm9vdCBw
cm9jZXNzIGNvbnRpbnVlcyBhbmQgbGVhZHMgdG8gYSBjb21tYW5kIHByb21wdCwgYnV0IHRoZSBz
YW1lIGVycm9ycyBhcmUgcHJvZHVjZWQgYWdhaW4gb24gZXZlcnkgcmVib290Lg0KDQpUaGlzIGJl
aGF2aW9yIGlzIGNvbnNpc3RlbnQgd2l0aCBhIGZhaWxlZCBmaXJtd2FyZSB1cGRhdGUsIGFsdGhv
dWdoIGl0IG1pZ2h0IGJlIHNvbWV0aGluZyBlbHNlLCBhbmQgSSdtIHRyeWluZyB0byBkZXRlcm1p
bmUgd2hldGhlciB0aGlzIGlzIGEga25vd24gcHJvYmxlbSBpbiB1cGdyYWRpbmcgb2xkIEUzMTBz
IHRvIGN1cnJlbnQgZmlybXdhcmUuDQoNCiAtLSBUb20gV2FsbGFjZQ0KDQoNClRvbSwNCg0KdGhl
IG92ZXJsYXkgd2FybmluZ3MgY2FuIGJlIGlnbm9yZWQuIEFyZSB0aGVyZSBhbnkgb3RoZXIgZXJy
b3JzIG9yIHdhcm5pbmdzPyBXaGF0IGhhcHBlbnMgd2hlbiB5b3UgcnVuIHVoZF9maW5kX2Rldmlj
ZXMgb3IgdWhkX3VzcnBfcHJvYmUgYWdhaW5zdCB5b3VyIGRldmljZT8gV2hhdCBpZiB5b3Ugc3No
IG9udG8gdGhlIGRldmljZSBhbmQgcnVuIHRob3NlIGNvbW1hbmRzIHRoZXJlPw0KT3IgZG9lcyB0
aGUgYm9vdCBwcm9jZXNzIGp1c3Qgc3RvcCB0aGVyZT8NCg0KLS1NDQoNCk9uIFdlZCwgQXByIDgs
IDIwMjYgYXQgMzo0N+KAr1BNIFRvbSBXYWxsYWNlIHZpYSBVU1JQLXVzZXJzIDwgdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KDQo+IEkgaGF2ZSBhIGNvdXBsZSBvZiBFMzEwcyAo
dGhlIGVhcmx5IHNwZWVkIGdyYWRlIDEgbW9kZWxzKSB0aGF0IGhhdmUgDQo+IGJlZW4gb24gdGhl
IHNoZWxmIGZvciBhIGxvbmcgd2hpbGUsIGFuZCBJ4oCZbSB0cnlpbmcgdG8gY2hlY2sgdGhlbSBv
dXQuDQo+IFRoZXkgYm9vdCBwcm9wZXJseSB3aXRoIGN1cnJlbnQgc2cxIGNhcmQgaW1hZ2VzLCBi
dXQgYW55IGF0dGVtcHQgdG8gDQo+IHVwZGF0ZSB0aGUgZmlybXdhcmUgZmFpbHMuIEhlcmXigJlz
IGV4YW1wbGUgb3V0cHV0IGZyb20gdGhlIGF1dG8tdXBkYXRlIA0KPiB0aGF0IG9jY3VycyBpbW1l
ZGlhdGVseSBhZnRlciBib290IHVzaW5nIHRoZSAzLjE1LjAgU0QgaW1hZ2U6DQo+DQo+DQo+DQo+
IFsgICAzMS45MzE4NjNdIGZwZ2FfbWFuYWdlciBmcGdhMDogd3JpdGluZyBlMzEwX3NnMV9pZGxl
LmJpbiB0byBYaWxpbngNCj4gWnlucSBGUEdBIE1hbmFnZXINCj4gWyAgIDMyLjEwNTkxNV0gT0Y6
IG92ZXJsYXk6IFdBUk5JTkc6IG1lbW9yeSBsZWFrIHdpbGwgb2NjdXIgaWYgb3ZlcmxheQ0KPiBy
ZW1vdmVkLCBwcm9wZXJ0eTogL2ZwZ2EtZnVsbC9maXJtd2FyZS1uYW1lDQo+IFsgICAzMi4xMzY1
NzldIE9GOiBvdmVybGF5OiBXQVJOSU5HOiBtZW1vcnkgbGVhayB3aWxsIG9jY3VyIGlmIG92ZXJs
YXkNCj4gcmVtb3ZlZCwgcHJvcGVydHk6IC9fX3N5bWJvbHNfXy9kZXZjdHJsDQo+IFsgICAzMi4x
NDk2MzddIE9GOiBvdmVybGF5OiBXQVJOSU5HOiBtZW1vcnkgbGVhayB3aWxsIG9jY3VyIGlmIG92
ZXJsYXkNCj4gcmVtb3ZlZCwgcHJvcGVydHk6IC9fX3N5bWJvbHNfXy9jaGFyZ2VyDQo+IFsgICAz
Mi4xODEwNDVdIE9GOiBvdmVybGF5OiBXQVJOSU5HOiBtZW1vcnkgbGVhayB3aWxsIG9jY3VyIGlm
IG92ZXJsYXkNCj4gcmVtb3ZlZCwgcHJvcGVydHk6IC9fX3N5bWJvbHNfXy9iYXR0ZXJ5DQo+IFsg
ICAzMi43MDE0MzJdIGUzMXgtcG11IGZwZ2EtZnVsbDpwbXU6IFVuc3VwcG9ydGVkIGZpcm13YXJl
IHZlcnNpb24gMC4wDQo+IFsgICAzMi43MTgwNjldIGUzMXgtcG11OiBwcm9iZSBvZiBmcGdhLWZ1
bGw6cG11IGZhaWxlZCB3aXRoIGVycm9yIC01MjQNCj4NCj4NCj4gSSBzZWUgdGhlIHNhbWUgZXJy
b3Igd2l0aCA0LjYuMCwgYW5kIHdoZW4gcnVubmluZyB1aGRfaW1hZ2VfbG9hZGVyIA0KPiDigJNh
cmdzIHR5cGU9ZTN4eCBvbiBib3RoIDMuMTUuMCBhbmQgNC42LjAgKHRoZXJlIGFyZSBhZGRpdGlv
bmFsIA0KPiBjb21wbGFpbnRzIGZyb20gTVBNLlBlcmlwaE1hbmFnZXIgb24gNC42LjApLg0KPg0K
Pg0KPg0KPiBUaGlzIG9jY3VycyBvbiBib3RoIHN5c3RlbXMgd2l0aCBpZGVudGljYWwgc3ltcHRv
bXMuIElzIHRoaXMgYSBrbm93biANCj4gaXNzdWUgd2l0aCB1cGdyYWRpbmcgb2xkZXIgRTMxMHMs
IGFuZCBpZiBzbywgaXMgdGhlcmUgYSBzb2x1dGlvbj8NCj4NCj4NCj4NCj4gLS0tDQo+DQo+ICAg
VG9tIFdhbGxhY2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
