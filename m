Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD1A46E996
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 15:04:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D67D384BCA
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 09:04:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Rr55b/16";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id E07FF384875
	for <usrp-users@lists.ettus.com>; Thu,  9 Dec 2021 09:02:02 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id v203so13874258ybe.6
        for <usrp-users@lists.ettus.com>; Thu, 09 Dec 2021 06:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ZI+8Tp/cZOrVJxSQsVRlysSSnfAK3x8SlObCqKv/2s8=;
        b=Rr55b/16JP0qPk7F1imrDms8FmdXH7757YlKHHGKBRWEmSAiEI46oFyq7WAk7PkuaT
         n7nq8R3navG+0RsTy+3RA8t5FIvwgZkF/lw4zcnsHsfpBhIMixfljfOcIB0WtJAoy3SP
         34hpDTk4ewmllGYTZ+ThFyHcTk1XxymhNsCBqcioouYvEDLGqV3eChB4FRKy3P7q1bxU
         qGHugYEK5vYiR3va2HnraI7ZU3B4QXbakNsvXj+qtUWphamIzWyyHKxg5KKz5k5VjCwd
         ZiyZbu1loVI7/F7t/GS+GdC7ceL3CxkcAibgQM+7tPrrAVygNsnDDl3LF/tA3lLVe70S
         vftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ZI+8Tp/cZOrVJxSQsVRlysSSnfAK3x8SlObCqKv/2s8=;
        b=1J9LTtAP+KEksm7Em2na3Z2Jl3eD9R3b6hlRcn8CzEL4jye1x3arujwYDUaBdgBWT6
         qxNiFna1kd14ZnDLPWnzaJj4kZKA2w9RD5H7WR8G3wI80M+BDurWfaJrSmgGdeqA3bO2
         FFIoqfZnQK34HMHLvumpR5DFQEjB9J0IxJdqbD/cUefhp3LXZGs5VjuWeI3sP5O8YlaM
         lNWO+CeVDwUYfxveWia10Vk1oq7oemBVSMEPe30JgCVJewTLOQT64Ucwv7ZtDgyNIR6u
         LLQqYR8ZyrdVEw2pe4o+k72REAN8sE05pKs/rhau8EfhdHhO3hhEAyL749eZNeRqwGe9
         xsKg==
X-Gm-Message-State: AOAM532EBfo9OE7cgL675ogJZRhrHE2OJO6VevRg7Yc/YD8fmrybbpmH
	4GPuLx6kSorT7y+FGH9IrnvuyopvugOVD43GMTz7vw==
X-Google-Smtp-Source: ABdhPJxglmS/14NaZ5voCgfUxxSczIqYfj8elhOMaughS3QXwxYwob7NGj3svmZzUYwPuXLj6a0sR+1jHUpjfY0k0o0=
X-Received: by 2002:a25:e755:: with SMTP id e82mr6095440ybh.389.1639058521864;
 Thu, 09 Dec 2021 06:02:01 -0800 (PST)
MIME-Version: 1.0
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
 <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
 <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu> <CAB__hTRj7gNxyZTgnknG9e0YCUjcEGr-py2b-zhjOPPDymHEbA@mail.gmail.com>
 <56824AED-B725-49AB-9719-2AE5E82699E5@egr.msu.edu> <7ba3e402-a334-287a-5df2-1d6c56af2f75@gmail.com>
In-Reply-To: <7ba3e402-a334-287a-5df2-1d6c56af2f75@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 9 Dec 2021 09:01:50 -0500
Message-ID: <CAB__hTTxSng_LxrzjpN9x4QgfcHiZHF1HOHuZn0rJ=c_nWDJ_w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SN7HIU6LHGFSXKDF5324PE4ET5Y46LCX
X-Message-ID-Hash: SN7HIU6LHGFSXKDF5324PE4ET5Y46LCX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SN7HIU6LHGFSXKDF5324PE4ET5Y46LCX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSmFzb24sDQpJIHN0aWxsIGRvbid0IHRoaW5rIEkgdW5kZXJzdGFuZCB0aGUgcHJvYmxlbS4g
VW5sZXNzIHlvdSBhcmUgdXNpbmcgdGhlDQpSRiB0cmFuc21pc3Npb24gZnJvbSBvbmUgVVNSUCBh
cyBhIHRpbWUtYWxpZ25tZW50IHJlZmVyZW5jZSBmb3IgdGhlDQpvdGhlciBVU1JQICh3aGljaCBJ
IHRoaW5rIHdvdWxkIHdvcmspLCBJIGRvbid0IHNlZSBob3cgdGhlIGFsZ29yaXRobQ0KY2FuIHdv
cmsuDQoNCkkgZG9uJ3QgaW1tZWRpYXRlbHkgc2VlIGhvdyBpdCBjb3VsZCBiZSBoZWxwZnVsLCBi
dXQgSSB3aWxsIG1lbnRpb24NCnRoYXQgeW91IGNvdWxkIGluc3RlYWQgdXNlIHNldF90aW1lX25l
eHRfcHBzKCkgKG9yIG1heWJlIGl0cyBjYWxsZWQNCnNldF90aW1lX3Vua25vd25fcHBzPykgYW5k
IGdldF90aW1lX2xhc3RfcHBzKCkuICBXaXRoIHRoZXNlIHR3bw0KZnVuY3Rpb25zIChvcGVyYXRp
bmcgdXNpbmcgdGhlIGludGVybmFsIFBQUyBnZW5lcmF0b3IpLCB5b3UgY291bGQgYWRkDQphIGZp
eGVkIGRlbHRhIHRvIHRoZSBjdXJyZW50IGNsb2NrIHZhbHVlIHRoYXQgd291bGQgbm90IGJlIGRl
cGVuZGVudA0Kb24gYW55IG5ldHdvcmsgbGF0ZW5jaWVzLg0KUm9iDQoNCk9uIFdlZCwgRGVjIDgs
IDIwMjEgYXQgMTA6MjQgUE0gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNv
bT4gd3JvdGU6DQo+DQo+IE9uIDIwMjEtMTItMDggMTg6NTcsIEVHUiBFbWFpbCB3cm90ZToNCj4N
Cj4gVGhlIG9mZnNldCBpcyBjb21wdXRlZCBiYXNlZCBvbiB0aGUgYXNzdW1wdGlvbiB0aGF0IHRo
ZSByYWRpb3MgY2FuIHByb3Blcmx5IHRpbWVzdGFtcCByZWNlaXZlZCBtZXNzYWdlcyBhbmQgdHJh
bnNtaXQgbWVzc2FnZXMgYWNjdXJhdGUgdG8gdGhlIGNsb2NrIHRpY2sgdXNpbmcgc2NoZWR1bGUg
dHJhbnNtaXNzaW9ucy4gIFRoaXMgaXMgZG9uZSB1c2luZyBieSBwZXJmb3JtaW5nIHNjaGVkdWxl
ZCBSWCBidXJzdHMgYnkgZmlsbGluZyB0aGUgc3RyZWFtX2NtZF90IHN0cnVjdCB3aXRoIGEgcmVj
ZWl2ZSB0aW1lIHNwZWMgYmVmb3JlIGlzc3VpbmcgdGhlIHJ4X3N0cmVhbWVyOjppc3N1ZV9zdHJl
YW1fY21kKCkgdG8gdGhlIHJ4X3N0cmVhbWVyLCBhbmQgc2ltaWxhcmx5IGJ5IGZpbGxpbmcgdGhl
IHR4X21ldGFkYXRhIHN0cnVjdCB3aXRoIGEgdGltZSBzcGVjIGJlZm9yZSB1c2luZyB0aGUgdHhf
c3RyZWFtZXI6OnNlbmQoKSBjb21tYW5kLiBGcm9tIG15IHRlc3RpbmcgdGhpcyBhcHBlYXJzIHRv
IHByb3Blcmx5IHNjaGVkdWxlIFRYIGFuZCBSWCBidXJzdHMgd2l0aGluIG9uZSBjbG9jayB0aWNr
ICh3aGljaCBJIGJlbGlldmUgaXMgdGhlIGludGVuZGVkIGZ1bmN0aW9uIG9mIHRoZXNlIGNvbW1h
bmRzKS4NCj4NCj4gQmVjYXVzZSB0aGUgc3luY2hyb25pemF0aW9uIGJ1cnN0cyBhcmUgaGFwcGVu
aW5nIHZpYSBzY2hlZHVsZWQvdGltZWQgY29tbWFuZHMgZnJvbSB0aGUgRlBHQSwgdGhlIGxhdGVu
Y2llcyBvZiB0aGUgbmV0d29yayBsYXllciBhbmQgT1Mgd2lsbCBoYXZlIG5vIGVmZmVjdCBvbiBz
eW5jaHJvbml6YXRpb24gYXMgdGhlIHRpbWluZyBvZiB0aGUgY3JpdGljYWwgc2VjdGlvbiBpcyBo
YXBwZW5pbmcgZW50aXJlbHkgd2l0aGluIHRoZSBGUEdBcy4gIFRoZSBob3N0IFBDIGlzIG9ubHkg
c2NoZWR1bGluZyB0aGUgc3luY2hyb25pemF0aW9uIGJ1cnN0cyBhdCBzb21lIHRpbWUgaW4gdGhl
IGZ1dHVyZSBhbmQgcGVyZm9ybWluZyB0aGUgcHJvY2Vzc2luZyBvbiB0aGUgYnVyc3RzIGFmdGVy
IHRoZXnigJl2ZSBvY2N1cnJlZC4NCj4NCj4gSSBhbSBmYWlybHkgY29uZmlkZW50IHRoaXMgdGVj
aG5pcXVlIGlzIHdvcmtpbmcgYW5kIHRoZSB0aW1lIGJpYXMgb2Zmc2V0IGlzIGJlaW5nIGNvbXB1
dGVkIGNvcnJlY3RseSBhbmQgd2l0aCBzdWZmaWNpZW50IGFjY3VyYWN5IHRvIGFsaWduIHRoZSBj
bG9ja3MgdG8gYSBmcmFjdGlvbiBvZiBhIGNsb2NrIGN5Y2xlLiBUaHVzLCB0aGUgaXNzdWUgcmVt
YWlucyBhZGRpbmcgYSBkZWx0YSB0byB0aGUgbG9jYWwgY2xvY2sgb2YgdGhlIGRldmljZSB3aXRo
IGEgZGV0ZXJtaW5pc3RpYyBsYXRlbmN5IHRvIGNvcnJlY3QgZm9yIHRoZSBjb21wdXRlZCBiaWFz
OyBUaGlzIHNlZW1zIHJlYXNvbmFibGUgdG8gYWNoaWV2ZSBpZiBpdCBjYW4gYmUgZG9uZSBvbiB0
aGUgRlBHQSwgZXZlbiBpZiB0aGUgaW1wbGVtZW50YXRpb24gbWF5IGJlIHNvbWV3aGF0IGludm9s
dmVkLiAgRnVuZGFtZW50YWxseSBpdOKAmXMgYSBmZXRjaCwgYWRkLCBhbmQgd3JpdGUgYmFjay4N
Cj4NCj4gUHJpbWFyaWx5LCBJ4oCZbSBjb25jZXJuZWQgd2l0aCBpZiBpdCBpcyBwb3NzaWJsZSB0
byBpbnN0cnVjdCB0aGUgRlBHQSB0byBkbyB0aGlzIHZpYSBwcmUtZXhpc3RpbmcgQVBJIGNhbGxz
LCBvciBpZiBJIHdpbGwgbmVlZCB0byBpbXBsZW1lbnQgbXkgb3duIFJGTm9DIGJsb2NrIHRvIHBl
cmZvcm0gaXQgKGFnYWluIEnigJltIG5vdCB0b28gZmFtaWxpYXIgd2l0aCBSRk5vQywgYnV0IHRo
aXMgc2VlbXMgbGlrZSBpdCBzaG91bGQgYmUgcG9zc2libGUsIGlmIHRoZSB0aW1lIHJlZ2lzdGVy
IGNhbiBiZSBhY2Nlc3NlZCBkaXJlY3RseSkuDQo+DQo+IFVuZm9ydHVuYXRlbHksIG91ciBkZXNp
cmVkIGFwcGxpY2F0aW9ucyB3b3VsZG7igJl0IGFsbG93IGZvciBhIFdoaXRlIFJhYmJpdCBpbXBs
ZW1lbnRhdGlvbiwgdGhpcyB3b3VsZCBiZSBhbiBhbHRlcm5hdGl2ZSB0byBXaGl0ZSBSYWJiaXQg
YXMgaXQgd2lsbCBiZSBpbmZlYXNpYmxlIHRvIHJ1biBmaWJlciBiZXR3ZWVuIHRoZSBkZXZpY2Vz
Lg0KPg0KPiBUaGFua3MsDQo+IEphc29uDQo+DQo+IFRoZXJlJ3Mgbm8gIkNsb2NrLCBhZGp1c3Qg
dGh5c2VsZiIgcHJpbWl0aXZlIGluIHRoZSBGUEdBIGFscmVhZHkuICBTbyBpdCB3b3VsZCBoYXZl
IHRvIGJlIGFkZGVkLg0KPg0KPiBOb3JtYWxseSwgdGhlIFRPRCAodGltZSBvZiBkYXkpIGNsb2Nr
IGlzIHNldCBlaXRoZXIgInJpZ2h0IG5vdyIgdG8gdGhlIHZhbHVlIHByb3ZpZGVkLCBvciBhIGhv
bGRpbmcgcmVnaXN0ZXIgaXMgbG9hZGVkIHdpdGggdGhlIHByb3ZpZGVkIHZhbHVlLCBhbmQgdGhl
biB3aGVuIHRyaWdnZXJlZCBieSBhIDFQUFMNCj4gICBldmVuLCB0aGUgVE9EIGNsb2NrIGlzIGxv
YWRlZCBmcm9tIHRoZSAiaG9sZGluZyIgcmVnaXN0ZXIuDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
