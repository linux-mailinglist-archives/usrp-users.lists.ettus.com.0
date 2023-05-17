Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D1C7069CC
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 15:26:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3019383B25
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 09:26:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684329973; bh=y4wURSwujQME2BxoziDzmsGiwznkB0p5lDQJzAMYsWM=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=F5Rmm/HWLLU0c8isTaa5VKSgaSl1SUhoYi9qRnrNIkfnlm3i++7jrPhLG8x/UcViy
	 TQyNa5Je5C49trfYpnh4ikJSss8hTTkkn3MC9cTXoW5w6L37q+/ZzVvgzVAWrhjvLR
	 eBJQoef0uJ5q4lZeQjpFnjAwj3fUDqW2QowG56xraYHIfNJapOw9/zfS+/nVPgUZG6
	 yyNqtJbnR0G8kDwDbx2LjgePOpjgEiMR/57TMqw5Oi46p3ABZAKefW21IxJ0WQ1wH2
	 ld5ahOH5gHkWvVed3Kp2/yY9QyMw5Rfq+b2EOP1XUU6j91cbSKM0NAJ/iBfndcHeKE
	 nheZhTidqtTEA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 154EA383EA0
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 09:25:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="D1cbeXVE";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-96adcb66f37so141344266b.1
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 06:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1684329912; x=1686921912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IwwzWMzKX9ILlFjhOOI3ZlhsYY3X1gXA0Lkpc8jxyT8=;
        b=D1cbeXVEgSvf8eyk7ubDV+PA5cgAuxGznSJYol5u78cMu6lkh1nuuj1XcLoqCyzy6G
         sI4rEZw65KBDYHnvIV7kYWIaXc4jk34syd1c3aLHXU0zfGQdW9pm/2KFUU4T+/fEt5zL
         FnL45CdeIYBdnKmMwH0FLB0Mjda5MuLdf4dh3OXZAFRK/yFQRZtwc2e2n6mKbNL0RP0o
         rYgxLyN02dm7qlFzAksqTNaQMk7oy5M7znMXe57bqm+mMc51wvw08xkdaxCbh6VhMYwz
         IvGTHcLrc5pAr3HxSRSrlAacHhwJpMtEyhQ21QtyYtY1DwfhzQ+0QudQmDS0WyjeHcZy
         d4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684329912; x=1686921912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IwwzWMzKX9ILlFjhOOI3ZlhsYY3X1gXA0Lkpc8jxyT8=;
        b=iohXVUUSV3uqaimQ6zSPdkbAdor75twvtMKLc4wyppBVdqCWPDOarYoN17mOUP8ZZ4
         vM9NTNA9Lc0bN10ddTEOvSN91paiHiS1HnrfIl0gE53f7htD8tLRaWIhBWqrxDDpMXXA
         dQcsnsiarOhxQx+l+CSRJfnXAy7jesk7j8R2Em2dWPRaNrjgD5f7VpbkP5noLJk3PuEp
         +l13zgPzLCcLMr8s1c5XQfKuQ90xRd016Ajh72xwgk7TTytRqPGfULQUYZh3azzU0AfD
         759CYL3rKFR+CK29gE3legIlMMpf8XZXn+fyARnx5BnGW6guwDA2YRuOT0CP3+y98A9D
         OpvA==
X-Gm-Message-State: AC+VfDxGjHgCB3/GZsdm8Fdx2Ve3FXfSBDj5nmBe2B2cht1XBZaBCGjC
	Jj0mLqIil2HKIu+W6Dzzscl5cMNN6fvoh+QaRRG5uA==
X-Google-Smtp-Source: ACHHUZ6zsZwtoA6AKCT80dvs5dZzq2aLVZK/KadAQqcgkzFVnaB99Z02q8C1q3uVBUCAvcF462ZjbjGgWj2wskyGymo=
X-Received: by 2002:a17:907:9496:b0:96a:ff7f:692 with SMTP id
 dm22-20020a170907949600b0096aff7f0692mr10452645ejc.68.1684329911604; Wed, 17
 May 2023 06:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com>
In-Reply-To: <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com>
Date: Wed, 17 May 2023 09:25:00 -0400
Message-ID: <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CPXCF3YAGVSSFJY6BFAM3FTNHVMMVV7X
X-Message-ID-Hash: CPXCF3YAGVSSFJY6BFAM3FTNHVMMVV7X
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPXCF3YAGVSSFJY6BFAM3FTNHVMMVV7X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMTYsIDIwMjMgYXQgODozNeKAr1BNIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiAxNi8wNS8yMDIzIDIwOjMxLCBNaWNo
YWVsIFRvdXNzYWludCB3cm90ZToNCj4gPiBIaSwNCj4gPg0KPiA+IEkgYW0gdGVzdGluZyB0aGUg
TE8gc3luY2hpbmcgb24gYSBzaW5nbGUgTjMyMSB1c2luZyB0aGUgMiBUeCBjaGFubmVscw0KPiA+
IG9uIHRoZSBOMzIxLg0KPiA+DQo+ID4gSSBoYXZlIGZvbGxvd2VkIHRoZSBMTyBzZXR1cCBzdGVw
cyBmcm9tIHRoZSBrbm93bGVkZ2UgYmFzZSwNCj4gPiBodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQ
X04zMjAvTjMyMV9MT19EaXN0cmlidXRpb24sIHRvIGRpc3RyaWJ1dGUgdGhlDQo+ID4gTE8uIChT
YW1wbGUgUHl0aG9uIGNvZGUgdXNlZCBmb3Igc2V0dXAgYmVsb3cpDQo+ID4NCj4gPiBJIGFtIHVz
aW5nIHNlcGFyYXRlIHN0cmVhbWVycyBmb3IgZWFjaCBUeCBjaGFubmVsIGFuZCBub3RpY2luZyBh
IGRlbGF5DQo+ID4gYmV0d2VlbiB0aGUgMiBjaGFubmVscyBleGVjdXRpbmcuDQo+IFllYWgsIHVz
aW5nIHNlcGFyYXRlIHN0cmVhbWVycywgdGhlIGNvZGUgZG9lc24ndCBhdHRlbXB0IHN5bmNocm9u
aXphdGlvbg0KPiBhY3Jvc3MgdHdvIHN0cmVhbWVycy4gIFlvdSdsbCBuZWVkIGEgc2luZ2xlDQo+
ICAgIHR3by1jaGFubmVsIHN0cmVhbWVyLS10aGF0J3MgdGhlICJzeW5jaHJvbml6YXRpb24gcGFy
YWRpZ20iIHRoYXQgaGFzDQo+IGJlZW4gaW4gVUhEIGZvciBvdmVyIGEgZGVjYWRlLi4uDQoNClNl
cGFyYXRlIHN0cmVhbWVycyBzaG91bGRuJ3QgYmUgYSBwcm9ibGVtLiBJIHVzZSB0aGVtIHJlZ3Vs
YXJseSBpbg0Kc3luY2hyb25pemVkIG1vZGUuICBJZiBib3RoIHN0cmVhbWVycyBoYXZlIHRoZSBz
YW1lIHRpbWUgc3BlYywgdGhlDQpyYWRpbyBzaG91bGQgc3RhcnQgdGhlbSBib3RoIGluIHN5bmMu
IFRoYXQgc2FpZCwgaXQgd29uJ3QgaHVydCB0byB0ZXN0DQp3aXRoIGEgc2luZ2xlIHN0cmVhbWVy
Lg0KDQo+ID4gVGhlIFR4IGNoYW5uZWxzIGRvIG5vdCBhcHBlYXIgdG8gYmUgc3luY2hyb25pemVk
LCB3ZSdyZSBtZWFzdXJpbmcNCj4gPiBhbnl3aGVyZSBmcm9tIDAuNW5zIHRvIDRucyBvZiBkZWxh
eSBhY3Jvc3MgdGhlIGNoYW5uZWxzLg0KDQpUaGUgbWFzdGVyIGNsb2NrIGN5Y2xlIG9uIHRoZSBO
MzIxIGlzIGJldHdlZW4gNCBhbmQgNSBucy4gIFRoaXMgaXMNCmFsc28gdGhlIEQvQSAoYW5kIEEv
RCkgY2xvY2sgY3ljbGUuICBXaGVuIHlvdSBhcmUgc2VlaW5nIGEgcmVsYXRpdmUNCmRlbGF5IG9m
IDAuNW5zIHRoaXMgaXMgYWJvdXQgb25lIHRlbnRoIG9mIGEgRC9BIHNhbXBsZSBpbnRlcnZhbC4g
IE9yLA0KZnJvbSBhbm90aGVyIHBlcnNwZWN0aXZlLCB0aGlzIHJlcHJlc2VudHMgYSBkaWZmZXJl
bmNlIG9mIGFib3V0IDQNCmluY2hlcyBvZiBjYWJsZSBsZW5ndGggKGlmIHRoZSByZWxhdGl2ZSBk
ZWxheSBoYWQgYW4gYW5hbG9nIGNhdXNlKS4NClNvLCB0aGUgY2hhbm5lbHMgYXJlIGRlZmluaXRl
bHkgc3luY2hyb25pemVkIHRvIHNvbWUgZGVncmVlIC0gSSBkb24ndA0KaGF2ZSBhIGd1ZXNzIGF0
IHdoeSB0aGUgc3luY2hyb25pemF0aW9uIGlzIG5vdCB0aWdodGVyLgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
