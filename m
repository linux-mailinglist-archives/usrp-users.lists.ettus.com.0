Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPDAI44S2Wl3lwgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 17:09:02 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE583D8FAC
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 17:09:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 728EC386472
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 11:09:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775833740; bh=dV/zDLyO9ilKVdyG984WpcORprZZLv6GnDApUyVAANo=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mQZR9dLY7Kq8IbgOVFCm2eniZyw3a52jisR+szE1SX5sKdW9s5tlc1rgsDBvNrYOB
	 fFgyfYUT9c9B77c4/UhxPRkM+lwbhf83lenX03NH18+uM3z9NiVfXZjpTKtUDdTlPB
	 x02azyDixFjLvwPVIscc9d2gE7GMbG8UW1uTWSRhA3S71ASftKVSXAGPQIFjPh9r1g
	 i6WEZAxJtAEhIEHxaGDrZnBCe/NIc2ND21qTQC45H6QwsL0yT7lThQtn1aEBqVR7xQ
	 4+dU/CSkPeFdyiAGPXr2JxDe7fTW8nrZi/hk4KF+3dEEFSrproscuor/kBuyfszofM
	 3rEOSw6hL662A==
Received: from a10-27.smtp-out.amazonses.com (a10-27.smtp-out.amazonses.com [54.240.10.27])
	by mm2.emwd.com (Postfix) with ESMTPS id C3AFE3809A5
	for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 11:08:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vesperix.com header.i=@vesperix.com header.b="G1Q5XjKz";
	dkim=pass (1024-bit key; unprotected) header.d=amazonses.com header.i=@amazonses.com header.b="cI3w99P9";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ljyopo7yi7ux6moa7ionkqaa5xw27m3z; d=vesperix.com; t=1775833680;
	h=Subject:From:To:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References:Message-Id;
	bh=oJQn6L4aT447yTN4K+4Cea1qqCK5gDYTPnb+0dDIEAk=;
	b=G1Q5XjKz4mjNtTR3C9HIudrDCvQsFB2aty08jaNB5LNHuV8Ew3iMw9MFGzwvNaM6
	f9CpKzpnZpOeEmJ4tYhF4/3QPqs/BacjQpxSVcDTMPujjT9rv/aNfQBhwbDKObdLu6i
	vi8FOM0iHCPRYX2dZviXlVbYgfH7cqTQDJHwSvpFs/DaKKED7y4i25/zwLi9BJ9KPnZ
	7jr7/dw7xLeDxnAtzwD6asyN+X9m1xcd6jmDQY5OIHBzyirKxzn23+kr7NdkCZr3woa
	BwMdOPVoOdKZxYR0Wp8/Zg+bS8QFWa3td1dhC9xEuq0pWkEF79dKwKL4G/53pG0kgRd
	9u2qA81xeg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=224i4yxa5dv7c2xz3womw6peuasteono; d=amazonses.com; t=1775833680;
	h=Subject:From:To:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References:Message-Id:Feedback-ID;
	bh=oJQn6L4aT447yTN4K+4Cea1qqCK5gDYTPnb+0dDIEAk=;
	b=cI3w99P9nxSh1SBnSXVamZKg+zeH2XSfPEkUc34wQwSJ98nXQ1o79WsMBa+ObVPs
	Y2qAem5qaYo1ghyf6IivraOz93gH2yKQZm03aNxJc70A6VYz+nQdAUNBgnai93bnJRj
	6t8NmfKZoYIAmPDMWDOvHtMe9UxxqfSdootO9jvs=
To: 
	=?UTF-8?Q?usrp-users=40lists=2Eettus=2Ecom?= <usrp-users@lists.ettus.com>
Date: Fri, 10 Apr 2026 15:08:00 +0000
Mime-Version: 1.0
In-Reply-To: <177583254631.18808.2706049539869829073@mm2.emwd.com>
References: <177583254631.18808.2706049539869829073@mm2.emwd.com>
 <mail.a4e60a71-90d1-4790-a35c-764698fef28e@storage.wm.amazon.com>
 <mail.a4e60a71-90d1-4790-a35c-764698fef28e@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdzI+snPgpAh3GHJQuG12jEKGZL+SQ==
Thread-Topic: E310 Update Issue
X-Wm-Sent-Timestamp: 1775833679
Message-ID: <0100019d77ef890b-5b8533e3-581d-4ad0-9511-4adee88d79bc-000000@email.amazonses.com>
Feedback-ID: ::1.us-east-1.LF00NED762KFuBsfzrtoqw+Brn/qlF9OYdxWukAhsl8=:AmazonSES
X-SES-Outgoing: 2026.04.10-54.240.10.27
Message-ID-Hash: ZPFQQNWLHJADLNJZKRCK7PLX7Y377ZYA
X-Message-ID-Hash: ZPFQQNWLHJADLNJZKRCK7PLX7Y377ZYA
X-MailFrom: 0100019d77ef890b-5b8533e3-581d-4ad0-9511-4adee88d79bc-000000@mail.vesperix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 Update Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPFQQNWLHJADLNJZKRCK7PLX7Y377ZYA/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,email.amazonses.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 0AE583D8FAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpNYXJ0aW4sDQoNClRoYW5rcywgSSdtIG5vdCBjb25jZXJuZWQgYWJvdXQgdGhlIG92ZXJsYXkg
d2FybmluZ3MsIEknbSBjb25jZXJuZWQgYWJvdXQgdGhlc2UgZXJyb3JzOg0KDQogWyAgIDMyLjcw
MTQzMl0gZTMxeC1wbXUgZnBnYS1mdWxsOnBtdTogVW5zdXBwb3J0ZWQgZmlybXdhcmUgdmVyc2lv
biAwLjANCiBbICAgMzIuNzE4MDY5XSBlMzF4LXBtdTogcHJvYmUgb2YgZnBnYS1mdWxsOnBtdSBm
YWlsZWQgd2l0aCBlcnJvciAtNTI0DQoNClRoZSBzYW1lIGVycm9ycyBhbHNvIGFwcGVhciB3aGVu
ZXZlciB1aGRfZmluZF9kZXZpY2VzIG9yIHVoZF91c3JwX3Byb2JlIGlzIHJ1biwgdXNpbmcgZWl0
aGVyIHRoZSAzLjE1LjAgb3IgNC42LjAgU0QgY2FyZCBpbWFnZXMsIG9uIHR3byBzZXBhcmF0ZSBF
MzEwcy4gVGhlIGJvb3QgcHJvY2VzcyBjb250aW51ZXMgYW5kIGxlYWRzIHRvIGEgY29tbWFuZCBw
cm9tcHQsIGJ1dCB0aGUgc2FtZSBlcnJvcnMgYXJlIHByb2R1Y2VkIGFnYWluIG9uIGV2ZXJ5IHJl
Ym9vdC4NCg0KVGhpcyBiZWhhdmlvciBpcyBjb25zaXN0ZW50IHdpdGggYSBmYWlsZWQgZmlybXdh
cmUgdXBkYXRlLCBhbHRob3VnaCBpdCBtaWdodCBiZSBzb21ldGhpbmcgZWxzZSwgYW5kIEknbSB0
cnlpbmcgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgdGhpcyBpcyBhIGtub3duIHByb2JsZW0gaW4gdXBn
cmFkaW5nIG9sZCBFMzEwcyB0byBjdXJyZW50IGZpcm13YXJlLg0KDQogLS0gVG9tIFdhbGxhY2UN
Cg0KDQpUb20sDQoNCnRoZSBvdmVybGF5IHdhcm5pbmdzIGNhbiBiZSBpZ25vcmVkLiBBcmUgdGhl
cmUgYW55IG90aGVyIGVycm9ycyBvciB3YXJuaW5ncz8gV2hhdCBoYXBwZW5zIHdoZW4geW91IHJ1
biB1aGRfZmluZF9kZXZpY2VzIG9yIHVoZF91c3JwX3Byb2JlIGFnYWluc3QgeW91ciBkZXZpY2U/
IFdoYXQgaWYgeW91IHNzaCBvbnRvIHRoZSBkZXZpY2UgYW5kIHJ1biB0aG9zZSBjb21tYW5kcyB0
aGVyZT8NCk9yIGRvZXMgdGhlIGJvb3QgcHJvY2VzcyBqdXN0IHN0b3AgdGhlcmU/DQoNCi0tTQ0K
DQpPbiBXZWQsIEFwciA4LCAyMDI2IGF0IDM6NDfigK9QTSBUb20gV2FsbGFjZSB2aWEgVVNSUC11
c2VycyA8IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToNCg0KPiBJIGhhdmUgYSBj
b3VwbGUgb2YgRTMxMHMgKHRoZSBlYXJseSBzcGVlZCBncmFkZSAxIG1vZGVscykgdGhhdCBoYXZl
IA0KPiBiZWVuIG9uIHRoZSBzaGVsZiBmb3IgYSBsb25nIHdoaWxlLCBhbmQgSeKAmW0gdHJ5aW5n
IHRvIGNoZWNrIHRoZW0gb3V0LiANCj4gVGhleSBib290IHByb3Blcmx5IHdpdGggY3VycmVudCBz
ZzEgY2FyZCBpbWFnZXMsIGJ1dCBhbnkgYXR0ZW1wdCB0byANCj4gdXBkYXRlIHRoZSBmaXJtd2Fy
ZSBmYWlscy4gSGVyZeKAmXMgZXhhbXBsZSBvdXRwdXQgZnJvbSB0aGUgYXV0by11cGRhdGUgDQo+
IHRoYXQgb2NjdXJzIGltbWVkaWF0ZWx5IGFmdGVyIGJvb3QgdXNpbmcgdGhlIDMuMTUuMCBTRCBp
bWFnZToNCj4NCj4NCj4NCj4gWyAgIDMxLjkzMTg2M10gZnBnYV9tYW5hZ2VyIGZwZ2EwOiB3cml0
aW5nIGUzMTBfc2cxX2lkbGUuYmluIHRvIFhpbGlueA0KPiBaeW5xIEZQR0EgTWFuYWdlcg0KPiBb
ICAgMzIuMTA1OTE1XSBPRjogb3ZlcmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1
ciBpZiBvdmVybGF5DQo+IHJlbW92ZWQsIHByb3BlcnR5OiAvZnBnYS1mdWxsL2Zpcm13YXJlLW5h
bWUNCj4gWyAgIDMyLjEzNjU3OV0gT0Y6IG92ZXJsYXk6IFdBUk5JTkc6IG1lbW9yeSBsZWFrIHdp
bGwgb2NjdXIgaWYgb3ZlcmxheQ0KPiByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL2Rl
dmN0cmwNCj4gWyAgIDMyLjE0OTYzN10gT0Y6IG92ZXJsYXk6IFdBUk5JTkc6IG1lbW9yeSBsZWFr
IHdpbGwgb2NjdXIgaWYgb3ZlcmxheQ0KPiByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19f
L2NoYXJnZXINCj4gWyAgIDMyLjE4MTA0NV0gT0Y6IG92ZXJsYXk6IFdBUk5JTkc6IG1lbW9yeSBs
ZWFrIHdpbGwgb2NjdXIgaWYgb3ZlcmxheQ0KPiByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9s
c19fL2JhdHRlcnkNCj4gWyAgIDMyLjcwMTQzMl0gZTMxeC1wbXUgZnBnYS1mdWxsOnBtdTogVW5z
dXBwb3J0ZWQgZmlybXdhcmUgdmVyc2lvbiAwLjANCj4gWyAgIDMyLjcxODA2OV0gZTMxeC1wbXU6
IHByb2JlIG9mIGZwZ2EtZnVsbDpwbXUgZmFpbGVkIHdpdGggZXJyb3IgLTUyNA0KPg0KPg0KPiBJ
IHNlZSB0aGUgc2FtZSBlcnJvciB3aXRoIDQuNi4wLCBhbmQgd2hlbiBydW5uaW5nIHVoZF9pbWFn
ZV9sb2FkZXIgDQo+IOKAk2FyZ3MgdHlwZT1lM3h4IG9uIGJvdGggMy4xNS4wIGFuZCA0LjYuMCAo
dGhlcmUgYXJlIGFkZGl0aW9uYWwgDQo+IGNvbXBsYWludHMgZnJvbSBNUE0uUGVyaXBoTWFuYWdl
ciBvbiA0LjYuMCkuDQo+DQo+DQo+DQo+IFRoaXMgb2NjdXJzIG9uIGJvdGggc3lzdGVtcyB3aXRo
IGlkZW50aWNhbCBzeW1wdG9tcy4gSXMgdGhpcyBhIGtub3duIA0KPiBpc3N1ZSB3aXRoIHVwZ3Jh
ZGluZyBvbGRlciBFMzEwcywgYW5kIGlmIHNvLCBpcyB0aGVyZSBhIHNvbHV0aW9uPw0KPg0KPg0K
Pg0KPiAtLS0NCj4NCj4gICBUb20gV2FsbGFjZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
