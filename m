Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C60309492BF
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 16:13:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EFBA383B85
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 10:13:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722953611; bh=u+xD24dociGyabM6m0s0Ry9kii+6KqSLxEVJADIKpK4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wAtx0+F9Vr/XDnGxok5THJbThOG/v2WXNRfUk+6T5cpvp2kpg+0/JJOrXq++xhtFM
	 JyUdsRiGteO3qPpn3kxJai0GU8lbwkXNJSnBEkVSKxTvvUnh8/7UjxUeDXUixhLU4e
	 CGnhaBsaQVWeSMzzfi8jFfAQvy8byq4o4JtvP8EFcWbOS+MPYBgrhVkySfGiHXMvJD
	 g3IyflXTWNFwbLadgRY822piIENVRtvUhpR8HujsmadvDXZGa1rM0FAhuqBBTKtLGF
	 MlGnsvy91vhO9awVxWBoRafEGxkeTmSXVI9fsIwgKxtgv+Gq9sUTpkPtagwkV6A6mT
	 W0RtcAUKtZI7Q==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 227CA383ABB
	for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2024 10:13:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VMF8msSx";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-66acac24443so6133767b3.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 07:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722953604; x=1723558404; darn=lists.ettus.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UuDp5ztQzgUJH4w0VS3xBUdysL9vG2r7uQVgW7qiLig=;
        b=VMF8msSxa1hXbuiuwIVzZzJfpbRTmq/V0NGunOUZMNY7/OqYlF9DAYCo4KGCmkNnyk
         dQN0tt90tlZRVsL8/Tl2FfHAYk2eWRolP3hwyKbS3uyilf5KUXfIMJ8OH5JCDiwmvZu/
         xwkqv/llCz4LHjgF/i36fjnNCkEkZ0dSq1dcigChZjpBJ/IZ+7LgIwz8OWscEHDHFO7w
         tRjFdnKYRaD9Wrq1J8zAImwnI/9OIM6uvzJIV/C+VhrEysRvvlCqN0Tk377tPMHtvEIv
         W8Tmkn7r/gJ3TfUO4oRiJltzFkKSyi+zw+Gvq68pm+oazlL9B0Fv/8S9b3GVBuheHLqh
         8SVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722953604; x=1723558404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UuDp5ztQzgUJH4w0VS3xBUdysL9vG2r7uQVgW7qiLig=;
        b=vAn/OXfBj4kKoq/ReCmOErXbyGiA63byXv77yq0tzQ5XlEdsYlo5AFijjBOwLVIU9e
         2OTIlXdXweVoJujI671nUOpl9qOUo21W3IGKhVOzRgz9Ca46A+XBG5cD232TPgQd+4vH
         fvPNgcHvzYyN7IY17+6xtlEHCV5nKgm2VrEknMhOaGl+OZB3zjgRsM9c+qURYO2ABf/4
         WFZXnXFERopKa+HyTOltnSckwjRD2lOCoAOMD3vRZxox28S6FQkWq+sq8IO0zU/EL95m
         nBYC9G9J8cwxM3bdAZ/dyslNtRHIqIvB2ubmpgFfLHa72cZs/E/jb5qmKMy4N22gzWaN
         h6KA==
X-Gm-Message-State: AOJu0YyhTFHKCpVX+sChLuveQhP/gHPVmemJ5cjsYwdWJW4mfAyPYkYW
	0gRCoNkNsXfmHchi7AqvLSecLHxvCBiErwl/jFIE9TIFjZRkObjvzhyLtmOd0fsY0tdXT36Zy4o
	wuJ0lu2lGyumV1/U6T+HpEcZIfVlw6mqE
X-Google-Smtp-Source: AGHT+IG7xYvynQ8IrP1AVb+WQbWD3KHYshJ4QG0H+dLg3UKEsCFMCCJwOlNaYmAZZVzkzr2LXGD0UWPtCydy9ba01s4=
X-Received: by 2002:a81:c24c:0:b0:64a:3d6c:476d with SMTP id
 00721157ae682-68961ae015emr161918327b3.25.1722953604439; Tue, 06 Aug 2024
 07:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
In-Reply-To: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
From: Chris Gorman <chrisjohgorman@gmail.com>
Date: Tue, 6 Aug 2024 10:13:13 -0400
Message-ID: <CAHVeOW8UJErf8RMuajePLpiyVAnp5qEtyxDe1T9Fo+i27cHRJg@mail.gmail.com>
To: "Dr. Scott Best" <scott_best@sibersci.com>
Message-ID-Hash: PROALGHUNXEWWEOIHDOUIM5UN6TBLEUZ
X-Message-ID-Hash: PROALGHUNXEWWEOIHDOUIM5UN6TBLEUZ
X-MailFrom: chrisjohgorman@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid permissions to write images destination on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PROALGHUNXEWWEOIHDOUIM5UN6TBLEUZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgU2NvdHQsDQoNCkkgYmVsaWV2ZSB0aGUgcHJvYmxlbSB5b3UncmUgZXhwZXJpZW5jaW5nIGlz
IGxpbnV4IG5vdCBhbGxvd2luZyB5b3UgdG8NCndyaXRlIHRvIHRoZSAvdXNyL2xvY2FsIGRpcmVj
dG9yeSBzdHJ1Y3R1cmUgYXMgaXQgaXMgbm90IG93bmVkIGJ5IHlvdXINCnVzZXIuICBJIHRoaW5r
IHlvdSBoYXZlIGEgY291cGxlIG9mIGNob2ljZXMgdG8gZG93bmxvYWQgdGhlIGltYWdlcy4NClRo
ZSBmaXJzdCBpcyB0byBpbnN0YWxsIHRoZW0gaW50byB0aGUgZGVmYXVsdCBkaXJlY3Rvcnkgd2l0
aCBzdWRvLA0Kd2hpY2ggSSB3b3VsZG4ndCByZWNvbW1lbmQsIHRoZSBzZWNvbmQgaXMgaW5zdGFs
bGluZyB0aGUgcGFja2FnZXMgaW50bw0KYSBkaWZmZXJlbnQgZGlyZWN0b3J5IHdpdGggdGhlIC1p
IHN3aXRjaCB0byB1aGRfaW1hZ2VzX2Rvd25sb2FkZXIucHkuDQpQZXJoYXBzIHJ1biB0aGUgZm9s
bG93aW5nIGNvbW1hbmRzDQoNCmNkIH4vDQpta2RpciB1aGRfaW1hZ2VzDQovdXNyL2xvY2FsL2xp
Yi91aGQvdXRpbHMvdWhkX2ltYWdlc19kb3dubG9hZGVyLnB5IC1pIH4vdWhkX2ltYWdlcw0KDQpU
aGF0IHNob3VsZCBnZXQgeW91IHRoZSBkb3dubG9hZCBpbWFnZXMgSSB0aGluay4NCg0KSG9wZSB0
aGlzIGhlbHBzLA0KDQpDaHJpcw0KDQpPbiBUdWUsIEF1ZyA2LCAyMDI0IGF0IDQ6MTbigK9BTSBE
ci4gU2NvdHQgQmVzdCB2aWEgVVNSUC11c2Vycw0KPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
PiB3cm90ZToNCj4NCj4gRGVhciBVU1JQLVVzZXJzIEdyb3VwLA0KPg0KPg0KPg0KPiBJIGluc3Rh
bGxlZCBVSEQgNC43IG9uIGFuIFVidW50dSBNaW5pUEMgZm9sbG93aW5nIHRoZSBvbmxpbmUgaW5z
dHJ1Y3Rpb25zLiAgSXQgc2VlbXMgdG8gYmUgd29ya2luZyBPSywgc28gSSB0cmllZCB1cGRhdGlu
ZyB0aGUgZmlybXdhcmUgZm9yIGFuIE4yMDAgdGhhdCBJIHBpY2tlZCB1cCBhcyBhIHRlc3QgdmVo
aWNsZSBmb3IgbXkgc2V0IG9mIG5ldyBOMzIwcy4gIEkgcmFuIGludG8gYSBidWcgdGhhdCBJIGhh
dmUgbm90IGZvdW5kIGFuIGFuc3dlciB0bywgYXMgc2VlbiBpbiB0aGUgZm9sbG93aW5nIFRlcm1p
bmFsIHNjcmlwdCB3aXRoIFVIRCBjb21tYW5kcyBzaG93biBpbiBCT0xEIFRZUEU6DQo+DQo+DQo+
DQo+IGRyc2NvdHRAVWJ1bnR1On4vd29ya2FyZWEvdWhkL2hvc3QvdXRpbHMkIHVoZF9maW5kX2Rl
dmljZXMNCj4NCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuNC4wOyBC
b29zdF8xMDc0MDA7IFVIRF80LjcuMC4wLTAtZ2E1ZWQxODcyDQo+DQo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+IC0tIFVIRCBEZXZpY2Ug
MA0KPg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPg0KPiBEZXZpY2UgQWRkcmVzczoNCj4NCj4gICAgIHNlcmlhbDogRTJSMTZURVVODQo+DQo+
ICAgICBhZGRyOiAxOTIuMTY4LjEwLjINCj4NCj4gICAgIG5hbWU6DQo+DQo+ICAgICB0eXBlOiB1
c3JwMg0KPg0KPg0KPg0KPg0KPg0KPiBkcnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3VoZC9ob3N0
L3V0aWxzJCB1aGRfdXNycF9wcm9iZQ0KPg0KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysg
dmVyc2lvbiAxMS40LjA7IEJvb3N0XzEwNzQwMDsgVUhEXzQuNy4wLjAtMC1nYTVlZDE4NzINCj4N
Cj4gW0lORk9dIFtVU1JQMl0gT3BlbmluZyBhIFVTUlAyL04tU2VyaWVzIGRldmljZS4uLg0KPg0K
PiBFcnJvcjogUnVudGltZUVycm9yOg0KPg0KPiBQbGVhc2UgdXBkYXRlIHRoZSBmaXJtd2FyZSBh
bmQgRlBHQSBpbWFnZXMgZm9yIHlvdXIgZGV2aWNlLg0KPg0KPiBTZWUgdGhlIGFwcGxpY2F0aW9u
IG5vdGVzIGZvciBVU1JQMi9OLVNlcmllcyBmb3IgaW5zdHJ1Y3Rpb25zLg0KPg0KPiBFeHBlY3Rl
ZCBGUEdBIGNvbXBhdGliaWxpdHkgbnVtYmVyIDExLCBidXQgZ290IDk6DQo+DQo+IFRoZSBGUEdB
IGJ1aWxkIGlzIG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIGhvc3QgY29kZSBidWlsZC4NCj4NCj4g
UGxlYXNlIHJ1bjoNCj4NCj4NCj4NCj4gIi91c3IvbG9jYWwvbGliL3VoZC91dGlscy91aGRfaW1h
Z2VzX2Rvd25sb2FkZXIucHkiDQo+DQo+ICIvdXNyL2xvY2FsL2Jpbi91aGRfaW1hZ2VfbG9hZGVy
IiBcDQo+DQo+ICAgICAtLWFyZ3M9InR5cGU9dXNycDIsYWRkcj0xOTIuMTY4LjEwLjIiDQo+DQo+
DQo+DQo+IGRyc2NvdHRAVWJ1bnR1On4vd29ya2FyZWEvdWhkL2hvc3QvdXRpbHMkIC91c3IvbG9j
YWwvbGliL3VoZC91dGlscy91aGRfaW1hZ2VzX2Rvd25sb2FkZXIucHkNCj4NCj4gW0lORk9dIFVz
aW5nIGJhc2UgVVJMOiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS8NCj4N
Cj4gW0lORk9dIEltYWdlcyBkZXN0aW5hdGlvbjogL3Vzci9sb2NhbC9zaGFyZS91aGQvaW1hZ2Vz
DQo+DQo+IFtFUlJPUl0gSW52YWxpZCBwZXJtaXNzaW9ucyB0byB3cml0ZSBpbWFnZXMgZGVzdGlu
YXRpb24NCj4NCj4gZHJzY290dEBVYnVudHU6fi93b3JrYXJlYS91aGQvaG9zdC91dGlscyQNCj4N
Cj4NCj4NCj4gVUhEIG9uIFVidW50dSBpcyBhYmxlIHRvIGZpbmQgdGhlIE4yMDAsIGFuZCBpcyBh
YmxlIHRvIHByb2JlIHRoZSBOMjAwIHdpdGggdGhlIHNlY29uZCBVSEQgY29tbWFuZC4gIEhvd2V2
ZXIsIHRoZSB0aGlyZCBjb21tYW5kIGlzIC91c3IvbG9jYWwvbGliL3VoZC91dGlscy91aGRfaW1h
Z2VzX2Rvd25sb2FkZXIucHksIHdoaWNoIHByb2R1Y2VzIHRoZSBmb2xsb3dpbmcgRVJST1IgTUVT
U0FHRSAtIEludmFsaWQgcGVybWlzc2lvbnMgdG8gd3JpdGUgaW1hZ2VzIGRlc3RpbmF0aW9uLiAg
VGhlIE4yMDAgd2FzIG5vdCBib290ZWQgaW4gU0FGRSBNT0RFLCBzbyBpdCBzaG91bGQgYmUgYXZh
aWxhYmxlIGZvciBmaXJtd2FyZSB1cGRhdGVzLg0KPg0KPg0KPg0KPiBJIGhhdmUgYmVlbiB1bmFi
bGUgdG8gbG9jYXRlIGFueSBpbmZvcm1hdGlvbiBvbmxpbmUgZm9yIGhvdyB0byBlbGltaW5hdGUg
dGhpcyBwcm9ibGVtIHNvIEkgY2FuIHdyaXRlIGZpcm13YXJlIHVwZGF0ZXMgdG8gdGhlIE4yMDAu
ICBJcyBhIGRvY3VtZW50IGF2YWlsYWJsZSBmb3IgZml4aW5nIHRoaXMgcHJvYmxlbT8gIElmIG5v
dCwgY2FuIHlvdSB0ZWxsIG1lIGhvdyB0byBmaXggdGhpcyBmaXJtd2FyZSB1cGRhdGUgcHJvYmxl
bSBvbiB0aGUgTjIwMD8NCj4NCj4NCj4NCj4gVGhhbmtzIGluIGFkdmFuY2UgZm9yIHlvdXIgYXNz
aXN0YW5jZSB3aXRoIGZpeGluZyB0aGlzIHByb2JsZW0uDQo+DQo+DQo+DQo+IFJlc3BlY3RmdWxs
eSwNCj4NCj4NCj4NCj4gU2NvdHQNCj4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
