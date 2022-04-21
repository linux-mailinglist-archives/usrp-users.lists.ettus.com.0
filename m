Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAA950ABDB
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 01:14:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39388384FCC
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 19:14:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650582874; bh=HzZxTEinqETqVKm3j/qAC9HsWxuSdJPt/XMWQe50HMg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cAyaqTPz4voKrvhC/iUP3pL1Q07aZkfnS2gqIWQVKIEYXimIzk2yEJ5qQoObkRhQw
	 cHDV4XERS0DTw+Du44JDpDXScf4HMhs/K2QUbKYDb19yTBAoQdFzoEmGAXHg49wZYm
	 ZCMI3vdQNsb+tAAP5T8l7muXjnFCd79Sd9YBp1WSc7u63TtXyeLLJDd4MRlM8E7CNx
	 /leKUakzn6oAkKFtjdEm4IX52NIC/DbsvI82JiaAF3uW4HC0cxaMnjqpcvvFIR4C21
	 OJonrjKDWkLZVj86etyBIrh/hRYak4SzJwDB/kl9Rx22C8zlqRwxwftVCHASCXt9Kf
	 0iPol2rzVtRNQ==
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by mm2.emwd.com (Postfix) with ESMTPS id B6CE8384FCC
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 19:13:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XyC/L4iD";
	dkim-atps=neutral
Received: by mail-wm1-f43.google.com with SMTP id n40-20020a05600c3ba800b0038ff1939b16so4374562wms.2
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 16:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=l7KaN+KpbNNPOkkWfaaqSWMGshzy5ihXmZ2mmU+3yOM=;
        b=XyC/L4iDhk4pVsskqVF42582VedJFGxDt/BjVgaosWo7FHRRG4hwywlk3182ap1qtF
         7tNVfGLyOy4S175to1SjeTEqg4BvAsGXSPwu8jLguYPVjwHa5af6F6toNA4vxT+c4D7x
         42Q36iegHX7mmiNvYa8gEoy2Ie9KMjCHDw2BhmOOXzW0+zAYeQHDffJGTwxlMR3g0/q6
         UEJPl5j2wki6icIXaNRzhYFIpc42BtyNd+C4KrhAoIjvvukGiJ9CxfX5hcbw0cSvaXUu
         b1L/IRT37ZMaXshIHA67DpD/62Ul3l14vaIwHt3I0oNcbhmWmFwft2phz4XNwaQNGDJK
         tIQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=l7KaN+KpbNNPOkkWfaaqSWMGshzy5ihXmZ2mmU+3yOM=;
        b=cdhatEBDMqrKg3ReL9JiD+rFu2bXiObt46vnyDWK6Gsxz4hpFxoHI/LQIKKO0pK4WL
         Z27bKxMlvnBbr/+pn96CJ7+gN82fmCJLOfwFrqOpyAjM7rf89fEDEnq7raUxpeQ4/4Pu
         3KCLObDYn9WciXQyB4MaG8Tx5ImbNWCXzqmSCSeRt3ykXXghSHuhAUOzUPYNZv7uO1gC
         lht+vc4Ye722wvoqF7lhli/L7e1q9BiDXOuOo7h9MbPhcotuIWfPQdLBIJ7HlpLmn/yb
         0iv7azHKJ41cEGKhVQ48mb4dJF/5r8S5JxnCBboT0RGrkDIq2yWjMVKkQHAEzyJXjS5A
         qrVQ==
X-Gm-Message-State: AOAM532Y2nEf4fp6bFfgK9GHThSUfamioOj/KPH7MSO1Q4foN/+9c1c5
	/xEP98kmd4osSi3esJB9+DXT90hOdLZNghJmbpk=
X-Google-Smtp-Source: ABdhPJxDBFkhbf0b8n7YZrDDom93uSUzY7LEy/ypy88r0/BHQY4PYOgfBcsdqMuvFIkxfQKY+qSf0n2pPJG4yBmqhyM=
X-Received: by 2002:a05:600c:1548:b0:392:8e1a:18c3 with SMTP id
 f8-20020a05600c154800b003928e1a18c3mr1417309wmg.102.1650582810501; Thu, 21
 Apr 2022 16:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
In-Reply-To: <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 22 Apr 2022 02:13:17 +0300
Message-ID: <CAAxXO2HO2BvWV+hOafqg=+HG=ApAfgJEGtSgYbQvS4VXtfcxMQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: HGLXDJL54X72A6CGYDSPALHTZYLUJXYW
X-Message-ID-Hash: HGLXDJL54X72A6CGYDSPALHTZYLUJXYW
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HGLXDJL54X72A6CGYDSPALHTZYLUJXYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGNhbiBjaGVjayBiYWNrIHlvdXIgYW5zd2VyLg0KeW91IGFuc3dlcmVkIHRvIG1lLCBidXQg
dGhlcmUgd2FzIG5vdGhpbmcgaW4geW91ciBtYWlsOigNCg0KQlINCk5pa29zDQoNCk9uIFdlZCwg
QXByIDIwLCAyMDIyIGF0IDY6MDUgQU0gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDIwMjItMDQtMTkgMjI6NDUsIE5pa29zIEJhbGthbmFz
IHdyb3RlOg0KPiA+IEhpLA0KPiA+DQo+ID4gSSB1c2VkIHRvIGhhdmUgVWJ1bnR1IDE0LjA0IGFu
ZCBoYWQgbm8gaXNzdWVzIHdpdGggdWhkLiBSZWNlbnRseSBpIGhhZA0KPiA+IHRvIHVwZ3JhZGUg
dG8gVWJ1bnR1IDIwLjA0LCBhbmQgSSBjYW4ndCBmaW5kICphbnkqIHVoZCB2ZXJzaW9uIHRoYXQN
Cj4gPiBjYW4gY29tcGlsZSBpbiBpdC4gSSBoYXZlIHRyaWVkIG92ZXIgMjAgZnJvbSBnaXQgZnJv
bSAzLjkuMCB0bw0KPiA+IDMuMTEuNTooDQo+ID4NCj4gPiBXaXRoIGVhcmxpZXIgcmVsZWFzZXMg
bGlrZSAzLjkueCBJIGdldCBpbnRvIGJvb3N0IHByb2JsZW1zLCBhbmQNCj4gPiBzb21ldGhpbmcg
bGlrZSAibmF0aXZlIiBub3QgZGVmaW5lZC4NCj4gPiBJbiBtb3JlIHJlY2VudCByZWxlYXNlcyBs
aWtlIDMuMTEueCBJIGdldDoNCj4gPg0KPiA+IEluIGZpbGUgaW5jbHVkZWQgZnJvbQ0KPiA+IC9o
b21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3VzcnAvY29yZXMvZ3Bpb19hdHJfMzAwMC5jcHA6
ODoNCj4gPiAvaG9tZS9uaWtvcy93b3JrL3VoZC9ob3N0L2xpYi91c3JwL2NvcmVzL2dwaW9fYXRy
XzMwMDAuaHBwOjIwOjQyOg0KPiA+IGVycm9yOiBleHBlY3RlZCBjbGFzcy1uYW1lIGJlZm9yZSDi
gJh74oCZIHRva2VuDQo+ID4gICAgIDIwIHwgY2xhc3MgZ3Bpb19hdHJfMzAwMCA6IGJvb3N0Ojpu
b25jb3B5YWJsZSB7DQo+ID4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBeDQo+ID4gbWFrZVsyXTogKioqIFtsaWIvQ01ha2VGaWxlcy91aGQuZGlyL2J1
aWxkLm1ha2U6MTIzNzoNCj4gPiBsaWIvQ01ha2VGaWxlcy91aGQuZGlyL3VzcnAvY29yZXMvZ3Bp
b19hdHJfMzAwMC5jcHAub10gRXJyb3IgMQ0KPiA+IG1ha2VbMV06ICoqKiBbQ01ha2VGaWxlcy9N
YWtlZmlsZTI6NjU1OiBsaWIvQ01ha2VGaWxlcy91aGQuZGlyL2FsbF0gRXJyb3IgMg0KPiA+IG1h
a2U6ICoqKiBbTWFrZWZpbGU6MTYzOiBhbGxdIEVycm9yIDINCj4gPg0KPiA+IFRoaXMgc2VlbXMg
bGlrZSBhIGMrKyBpc3N1ZS4uLg0KPiA+DQo+ID4gSXMgdGhlcmUgYW55IGdpdCByZWxlYXNlIHRo
YXQgY29tcGlsZXMgaW4gVWJ1bnR1IDIwLjA0Pw0KPiA+IEkga25vdyB0aGF0IHlvdSBsaXN0IGlu
IHN1cHBvcnRlZCB2ZXJzaW9ucywgb25seSBVYnVudHUgMTQuMDQgJiAxNi4wNCwNCj4gPiBidXQg
SSBzdXNwZWN0IHRoaXMgaXMgb3V0ZGF0ZWQsIHNpbmNlIFVidW50dSBkb2Vzbid0IHN1cHBvcnQg
dGhlbSBhbnkNCj4gPiBtb3JlLCBhbmQgaW4gdWhkIGluc3RhbGxhdGlvbiB5b3UgZGVzY3JpYmUg
MjAuMDQgYnVpbGQgaW5zdHJ1Y3Rpb25zLg0KPiA+DQo+ID4gVElBDQo+ID4gTmlrb3MNCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+ID4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KPiBGb3IgVWJ1bnR1IDIwLjA0LCB5b3UgY2FuIGp1c3QgaW5zdGFsbCBpdCBmcm9tIHRo
ZSBwYWNrYWdlIHJlcG8gdXNpbmcNCj4gQVBULS1ubyBuZWVkIHRvIGNvbXBpbGUgaXQuDQo+DQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
