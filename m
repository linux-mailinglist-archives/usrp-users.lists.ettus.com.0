Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 715DE4590C7
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 16:02:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6106A3841E9
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 10:02:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nJfRgKb0";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id E46F1383FE4
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 10:01:35 -0500 (EST)
Received: by mail-qt1-f172.google.com with SMTP id j17so16773251qtx.2
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=h1uYnpMurO1kgQrCir2wOfwuhOmGEFOLoGt/tr0k7WU=;
        b=nJfRgKb0g8m52L4kV04mpYAe+YyhnArnyzPgdLma/xH0BgngzRZrAnE3213KXz+SEV
         EI8bWAR+e5J6BwORvVW/rSlukHzc3ifpl+gqCYBnVQWlCOvbNRePZ4N9oF4hYMT2+qTg
         uVjKBCVkagbRomkAdPOx9ugMJsL7Pq0ujJbpxvNxO0pGZQYQ0UcmMqQskcpNXYZc3DRX
         y+uPYTOmPRqdb6J4thSk8C0s29/OyBTWxi+8ttV9p2KnD4d0xHF4nsAh2k+AJJj8UpV2
         WlBLiPLQVe6qffy9mMiE1hf2eoz3SYAMPDde0r656c8t6CDumBjtZlPHxBN8RmdIBHPA
         Q59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=h1uYnpMurO1kgQrCir2wOfwuhOmGEFOLoGt/tr0k7WU=;
        b=4nSIMgSCxYWBjQ2qw7DOTXZUCjyy85JY4ewmSbTReoNeEkGmSAK2MdspUBR7vzvd8x
         DD4O57sfLANUEVr1MWuMHdk9jfUIosZmUPMPwmGRzZmzmH+ELVnKWI7O4QqLZIafAAY/
         vXPE+sDtuvQuG3GEH+MS7B1zyybt4BbhAWJe0MEOh4yTx/QsVU6wHS3wsNv6zgvymUys
         R1blpdby39asdOA/IdqVzUKx8iXfnvW479tQJWnOPXBlOAxVYcuKfBDs1Gm0/jztVHvv
         S5Xd7BxsbTaoXRHRFSlkTibO+w7yti4gGg/jrYFBHl9v+UZQNxINKYh+NZvMiR8dw79J
         DuDw==
X-Gm-Message-State: AOAM533cbcAthjZRgDYJzEmlj8m86Odtk+O0j3LuaFvPiQc5u2YV17zZ
	KrgUu6ZSMOho6TA3EBnAY9jh37Od1uQ=
X-Google-Smtp-Source: ABdhPJy8pbT82pNRRj55h16iLVLTZ+JY3saTtKesyHgeXvCvhzjlweb+zqI9lx3bDxSUbSKg4/weTQ==
X-Received: by 2002:ac8:5e46:: with SMTP id i6mr31193813qtx.7.1637593294925;
        Mon, 22 Nov 2021 07:01:34 -0800 (PST)
Received: from [192.168.2.228] (bras-base-smflon1825w-grc-06-174-88-54-236.dsl.bell.ca. [174.88.54.236])
        by smtp.googlemail.com with ESMTPSA id bq43sm4860629qkb.32.2021.11.22.07.01.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 07:01:34 -0800 (PST)
Message-ID: <109c2c37-16b7-f8d9-e0cd-d11a4104a6ea@gmail.com>
Date: Mon, 22 Nov 2021 10:01:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <708657326.6472726.1637569305046.JavaMail.zimbra@intecs.it>
 <44070249.6474090.1637569415965.JavaMail.zimbra@intecs.it>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <44070249.6474090.1637569415965.JavaMail.zimbra@intecs.it>
Message-ID-Hash: X6C4QPOHR3MGLJNVMK2ILLPDZRLVU73V
X-Message-ID-Hash: X6C4QPOHR3MGLJNVMK2ILLPDZRLVU73V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X6C4QPOHR3MGLJNVMK2ILLPDZRLVU73V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0yMiAwMzoyMywgRW1hbnVlbGUgVG9sb21laSB3cm90ZToNCj4gU29ycnksIGhl
cmUgaXMgdGhlIGF0dGFjaGVkIHNuaXBwZXQuDQo+DQo+IEVtYW51ZWxlIFRvbG9tZWkNCj4NCj4g
LS0tLS0gTWVzc2FnZ2lvIG9yaWdpbmFsZSAtLS0tLQ0KPiBEYTogIkVtYW51ZWxlIFRvbG9tZWki
IDxlbWFudWVsZS50b2xvbWVpQGludGVjcy5pdD4NCj4gQTogInVzcnAtdXNlcnMiIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4NCj4gQ2M6ICJMdWlnaSBWZW51c28iIDxsdWlnaS52ZW51c29A
aW50ZWNzLml0PiwgImdpYW5sdWNhLmJhZmFuZWxsaSIgPGdpYW5sdWNhLmJhZmFuZWxsaUBpbnRl
Y3MuaXQ+DQo+IEludmlhdG86IEx1bmVkw6wsIDIyIG5vdmVtYnJlIDIwMjEgOToyMTo0NQ0KPiBP
Z2dldHRvOiBUcm91YmxlIHdpdGggVHdpblJYIGZyZXF1ZW5jeSB0dW5pbmcNCj4NCj4gSGVsbG8s
DQo+DQo+IEkgaGF2ZSBhbiBYMzAwIHdpdGggdHdvIFR3aW5SWCBkYXVnaHRlcmJvYXJkcywgYW5k
IEknbSB1c2luZyBVSEQgMy4xMy4xLiBJIG5lZWQgY2hhbm5lbHMgc3luY2hyb25pemF0aW9uIGZv
ciBET0EgY2FsY3VsYXRpb24sIHNvIHRoZSBjaGFubmVscyBzaGFyZSB0aGUgc2FtZSBMTyBwcm92
aWRlZCBieSBjaGFubmVsIDAuDQo+IFRoZSBjb2RlIGZvciB0aGUgTE8gc2hhcmluZyBpcyB0aGUg
Zm9sbG93aW5nOg0KPg0KPiBtX011bHRpVXNycC0+c2V0X3RpbWVfdW5rbm93bl9wcHModWhkOjp0
aW1lX3NwZWNfdCgpKTsNCj4gc3RkOjp0aGlzX3RocmVhZDo6c2xlZXBfZm9yKHN0ZDo6Y2hyb25v
OjpzZWNvbmRzKDEpKTsgLy8gd2FpdCBmb3IgcHBzIHN5bmMgcHVsc2UNCj4gLy8gU2V0IGNoYW5u
ZWwgc3BlY2lmaWMgc2V0dGluZ3MNCj4gbV9NdWx0aVVzcnAtPnNldF9yeF9sb19leHBvcnRfZW5h
YmxlZCh0cnVlLCBtX011bHRpVXNycC0+QUxMX0xPUywgMCk7DQo+IG1fTXVsdGlVc3JwLT5zZXRf
cnhfbG9fc291cmNlKCJpbnRlcm5hbCIsIG1fTXVsdGlVc3JwLT5BTExfTE9TLCAwKTsNCj4gbV9N
dWx0aVVzcnAtPnNldF9yeF9kY19vZmZzZXQodHJ1ZSwgMCk7DQo+IG1fTXVsdGlVc3JwLT5zZXRf
cnhfbG9fc291cmNlKCJjb21wYW5pb24iLCBtX011bHRpVXNycC0+QUxMX0xPUywgMSk7DQo+IG1f
TXVsdGlVc3JwLT5zZXRfcnhfZGNfb2Zmc2V0KHRydWUsIDEpOw0KPiBtX011bHRpVXNycC0+c2V0
X3J4X2xvX3NvdXJjZSgiZXh0ZXJuYWwiLCBtX011bHRpVXNycC0+QUxMX0xPUywgMik7DQo+IG1f
TXVsdGlVc3JwLT5zZXRfcnhfZGNfb2Zmc2V0KHRydWUsIDIpOw0KPiBtX011bHRpVXNycC0+c2V0
X3J4X2xvX3NvdXJjZSgiZXh0ZXJuYWwiLCBtX011bHRpVXNycC0+QUxMX0xPUywgMyk7DQo+IG1f
TXVsdGlVc3JwLT5zZXRfcnhfZGNfb2Zmc2V0KHRydWUsIDMpOw0KPg0KPiBJIGFtIGFibGUgdG8g
Y29ycmVjdGx5IHR1bmUgdGhlIGNoYW5uZWxzIGZvciB0aGUgZmlyc3QgdGltZS4gSG93ZXZlciBJ
J20gaGF2aW5nIHByb2JsZW1zIHdpdGggY2hhbmdpbmcgdGhlIGNlbnRlciBmcmVxdWVuY3kgYXQg
cnVudGltZS4gV2hlbiB1c2luZyB0aGUgY29tbWFuZCBzZXRfcnhfZnJlcXVlbmN5KCkgYm90aCBp
biBjaGFubmVsIHR1bmluZyBhbmQgaW4gY2hhbm5lbCBzeW5jaHJvbml6YXRpb24sIGFmdGVyIGEg
ZmV3IGxvb3BzIHRoZSBhcHBsaWNhdGlvbiBjcmFzaGVzIHByb2R1Y2luZyB0aGUgZXJyb3I6DQo+
DQo+IHdoYXQoKTogIEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IEJsb2NrIGN0cmwgKENFXzAx
X1BvcnRfNDApIG5vIHJlc3BvbnNlIHBhY2tldCAtIEFzc2VydGlvbkVycm9yOiBib29sKGJ1ZmYp
DQo+ICAgIGluIHVpbnQ2NF90IGN0cmxfaWZhY2VfaW1wbDxfZW5kaWFubmVzcz46OndhaXRfZm9y
X2Fjayhib29sLCBkb3VibGUpIFt3aXRoIHVoZDo6ZW5kaWFubmVzc190IF9lbmRpYW5uZXNzID0g
KHVoZDo6ZW5kaWFubmVzc190KTB1OyB1aW50NjRfdCA9IGxvbmcgdW5zaWduZWQgaW50XQ0KPiAg
ICBhdCAvaG9tZS9lbWFudWVsZS91aGQvaG9zdC9saWIvcmZub2MvY3RybF9pZmFjZS5jcHA6MTU0
DQo+DQo+IEluIHBhcnRpY3VsYXIsIGluIHRoZSBhdHRhY2hlZCBjb2RlIG9mIHRoZSBSZWNlaXZl
U2FtcGxlc0J1cnN0IGZ1bmN0aW9uLCBpZiBJIGNvbW1lbnQgYmV0d2VlbiBsaW5lcyB0YWdnZWQg
d2l0aCAiSU5ESUNURUQgQ09ERSBMSU5FUyIsIHRoZSBhcHBsaWNhdGlvbiBydW5zIHdpdGhvdXQg
cHJvYmxlbXMgYnV0IHRoZSBjaGFubmVscyBhcmUgbm90IHBoYXNlLXN5bmNocm9uaXplZC4NCj4g
SG93IGNhbiBJIGF2b2lkIHRoaXMgZXJyb3Igd2hpbGUga2VlcGluZyB0aGUgc3luY2hyb25pemF0
aW9uIGJldHdlZW4gYWxsIHRoZSBmb3VyIGNoYW5uZWxzPw0KPg0KPiBUaGFuayB5b3UgaW4gYWR2
YW5jZS4NCj4NCj4gRW1hbnVlbGUgVG9sb21laQ0KPg0KPiBMRUdBTCBESVNDTEFJTUVSOg0KPiBU
aGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IHRyYW5zbWl0dGVkIGZpbGVzIGFyZSBj
b25maWRlbnRpYWwgYW5kIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZp
ZHVhbCBvciBlbnRpdHkgdG8gd2hvbSB0aGV5IGFyZSBhZGRyZXNzZWQuIFdlIGhlcmVieSBleGNs
dWRlIGFueSB3YXJyYW50eSBhbmQgYW55IGxpYWJpbGl0eSBhcyB0byB0aGUgcXVhbGl0eSBvciBh
Y2N1cmFjeSBvZiB0aGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaGVkIHRy
YW5zbWl0dGVkIGZpbGVzLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBi
ZSBhZHZpc2VkIHRoYXQgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBhbmQg
dGhhdCBhbnkgdXNlLCBkaXNzZW1pbmF0aW9uLCBmb3J3YXJkaW5nLCBwcmludGluZyBvciBjb3B5
aW5nIG9mIHRoaXMgZW1haWwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVj
ZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBk
ZWxldGUgdGhlIG1hdGVyaWFsIGZyb20gYW55IGNvbXB1dGVyLg0KPg0KVHdvIHF1ZXN0aW9uczoN
Cg0KSGF2ZSB5b3UgdHJpZWQgY2hhbmdpbmcgdGhlIGNvbW1hbmQtdGltZSB0byBiZSBzbGlnaHRs
eSBmdXJ0aGVyIGludG8gdGhlIA0KZnV0dXJlIHRoYW4gMTAgbWlsbGlzZWNvbmRzPw0KDQpDYW4g
eW91IHRyeSBhIGEgbmV3ZXIgdmVyc2lvbiBvZiBVSEQ/DQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
