Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 018FB75DD51
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jul 2023 17:55:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFE97384A7C
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jul 2023 11:55:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690041341; bh=xyhr3KMhxDzkmJ/cLQdx8WFKBi+TiLwtEq6ESVhYUlI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yxdbzQx4xAGOzvtPePhxJunmRuq/TF0AFdLSyumPExpYI0M0g8BFiC9b4f0WStR7s
	 vGO+/SRdtmu/db07QtBv32KC6tdlk4jo94iVhjLyYU8vyCqdvi5rBMlzaw5NllZUGn
	 9zWzvdzSbx8wCAoGnhm/hGkWoxsiE23gdDAM4wqbiRO+i3KcXq2rRjPqNCDZCy+3Is
	 5RLXp+jhuWF0X4jlwThcvV61Zg7UqEIRIBe5Njwu12uOQPpBkTa7gPRC2LI7BJeHFM
	 FrdzXS+sv81GENmXCDnU/aL1EnxTPCTqRoor8Oq8irZAPq4/dtUhfwUcWZRBnlIRJn
	 W3iAAcS/+4Fjg==
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 62762383C88
	for <usrp-users@lists.ettus.com>; Sat, 22 Jul 2023 11:55:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S7cZUIRy";
	dkim-atps=neutral
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1b00b0ab0daso2266788fac.0
        for <usrp-users@lists.ettus.com>; Sat, 22 Jul 2023 08:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690041323; x=1690646123;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=frzzVXR9SRZHKi8GXpnyLsUwDk2DDXQ2t+K6BTTNkkM=;
        b=S7cZUIRyJD0dmlhUvYP9kiWcJ/Zl3/5oy65lwPSxQq8Umh8FFekcTWkteuo0WzEvXu
         LKmPmsa02k5A1lF7hzGlDCbYM8cs++5VysCn1JPmE2LDUT35vQpAq07eBtbBXvgmxY+D
         j6qYaeqVlb2TKzYRn2r6gXzi/uhli8Fu+3vbs2pKkeSE3hgz37OKlJ7wd8gHDQ1W5Ps5
         dHe3A7h1H8BeJUbUWpU8eClLYk4XAvZZ2RslXbnEqpXw3pbKk1wYjNBF3XDzyBP64xUH
         G1B8ufrtOmA9Bgb/dRYsRpptf++21EgcFP+CeOFW+xuOT9k36nnjRZ3hNz0y2CzLFGZD
         4Fvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690041323; x=1690646123;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=frzzVXR9SRZHKi8GXpnyLsUwDk2DDXQ2t+K6BTTNkkM=;
        b=ZPSydCpza350VCTuio5NMQCQwxbELpSYDyN2n61hPboCm/WKIumluZCtJ2J8BDzdZu
         NflZLz4Rwoef6R3QE5YkVq2dtPVCi28ibuhSodO95LoBtQlJsdBVDMp69sZEeBf6GSh3
         NZ4Lrf9Ctb19NaBVGIVcOBX5YXyKhGglXOAQnm9w3SC/hvUAJIgr72YpOs0vgZvDn3YV
         L0G/XtWWn0odVbauTmYs385Ot3DuTHyvbCRMf7ybsWP0QUYmnME84YJVlCgOEEnnuDht
         zi0sel7h6N6YY5m8st3DEZ0woMIX91c8pfAbGxBOTKRPAa7vGAn8zLo+j4UPNI2tPIKk
         /HVw==
X-Gm-Message-State: ABy/qLb+8RJFGnZfNouyMhrDMQaFdywSxzxlQ/juQXhw2I/0CvDypuax
	SZ+WsmY0LtD8TjAI30tMALROkeQitEInAQ==
X-Google-Smtp-Source: APBJJlFBw1GkCDh+KCT+aXecmn/5Br5uu/CJNsqW3hlG9HgI0gTsFnKb9+IgNLZVtx8jV0qCcX8f4Q==
X-Received: by 2002:a05:6870:2192:b0:1ba:617f:5f26 with SMTP id l18-20020a056870219200b001ba617f5f26mr5057782oae.51.1690041323511;
        Sat, 22 Jul 2023 08:55:23 -0700 (PDT)
Received: from [192.168.4.131] ([47.160.235.4])
        by smtp.gmail.com with ESMTPSA id z31-20020a4a9862000000b0054fcc25de1fsm2661668ooi.2.2023.07.22.08.55.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jul 2023 08:55:22 -0700 (PDT)
Message-ID: <9a289b72-1440-0457-c09e-71d04fd3fea7@gmail.com>
Date: Sat, 22 Jul 2023 10:55:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <84aa53a3-be12-092e-a96f-2bc9232fe5f4@gmail.com>
 <4a548ba5-2ef6-1ad3-1ad6-6ecdeb098519@gmail.com>
From: page heller <pageheller@gmail.com>
In-Reply-To: <4a548ba5-2ef6-1ad3-1ad6-6ecdeb098519@gmail.com>
Message-ID-Hash: BW472ASL6ESI7FCB5XXD32J3QYHAYXEV
X-Message-ID-Hash: BW472ASL6ESI7FCB5XXD32J3QYHAYXEV
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd install with ubuntu 23.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BW472ASL6ESI7FCB5XXD32J3QYHAYXEV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhhbmtzLCBNYXJjdXMuIFNpbmNlIEkgcmFuIGNtYWtlLCBkbyBJIG5lZWQgdG8gdW5kbyBhbnl0
aGluZz8gLXANCg0KT24gNy8yMi8yMyAxMDo1MiwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBP
biAyMi8wNy8yMDIzIDExOjQ4LCBwYWdlIGhlbGxlciB3cm90ZToNCj4+IEhlcmUgSSBnbyBkb3du
IGEgcm9hZCBJIGRpZCBub3Qgd2FudCB0byB0cmF2ZWwuIEkgaW5zdGFsbGVkIFVidW50dSANCj4+
IDIzLjA0IG9udG8gYSBQaSA0Qi4gSSBzZWUgdGhlIFVIRCBpbnN0YWxsIGluc3RydWN0aW9ucyBv
bmx5IHRhbGsgDQo+PiBhYm91dCBVYnVudHUgMjAuMDQgaW4gcmVnYXJkcyB0byByZXF1aXJlZCBk
ZXBlbmRlbmNpZXMuIEkgdXNlZCB0aGF0IA0KPj4gc2V0LiBDbWFrZSBmYWlscy4gU3VnZ2VzdGlv
bnMgYXJlIHdlbGNvbWVkLiBJZiB5b3Ugc3VnZ2VzdCB0cnlpbmcgYW4gDQo+PiBlYXJsaWVyIHZl
cnNpb24sIHBsZWFzZSBsZXQgbWUga25vdyBob3cgdG8gYmFjayB1cCBvbmNlIGNtYWtlIGhhcyAN
Cj4+IHJ1bi4gSSBkb24ndCBrbm93IGhvdyB0byByZXN0YXJ0IHRoZSBwcm9jZXNzLiBUaGFua3Mu
IC1wDQo+Pg0KPj4gJCBnaXQgY2hlY2tvdXQgdjQuNC4wLjAtcmMxDQo+Pg0KPj4gMDp+L3dvcmth
cmVhL3VoZC9ob3N0L2J1aWxkMSQgY21ha2UgLi4NCj4+IC0tIFRoZSBDWFggY29tcGlsZXIgaWRl
bnRpZmljYXRpb24gaXMgR05VIDEyLjIuMA0KPj4gLS0gVGhlIEMgY29tcGlsZXIgaWRlbnRpZmlj
YXRpb24gaXMgR05VIDEyLjIuMA0KPj4gLS0gRGV0ZWN0aW5nIENYWCBjb21waWxlciBBQkkgaW5m
bw0KPj4gLS0gRGV0ZWN0aW5nIENYWCBjb21waWxlciBBQkkgaW5mbyAtIGRvbmUNCj4+IC0tIENo
ZWNrIGZvciB3b3JraW5nIENYWCBjb21waWxlcjogL3Vzci9iaW4vYysrIC0gc2tpcHBlZA0KPj4g
LS0gRGV0ZWN0aW5nIENYWCBjb21waWxlIGZlYXR1cmVzDQo+PiAtLSBEZXRlY3RpbmcgQ1hYIGNv
bXBpbGUgZmVhdHVyZXMgLSBkb25lDQo+PiAtLSBEZXRlY3RpbmcgQyBjb21waWxlciBBQkkgaW5m
bw0KPj4gLS0gRGV0ZWN0aW5nIEMgY29tcGlsZXIgQUJJIGluZm8gLSBkb25lDQo+PiAtLSBDaGVj
ayBmb3Igd29ya2luZyBDIGNvbXBpbGVyOiAvdXNyL2Jpbi9jYyAtIHNraXBwZWQNCj4+IC0tIERl
dGVjdGluZyBDIGNvbXBpbGUgZmVhdHVyZXMNCj4+IC0tIERldGVjdGluZyBDIGNvbXBpbGUgZmVh
dHVyZXMgLSBkb25lDQo+IFVidW50dSAyMy4wNCBwYWNrYWdlcyBVSEQgNC4zLjAuMC7CoMKgwqAg
VW5sZXNzIHlvdSBhYnNvbHV0ZWx5IG5lZWQgdGhlIA0KPiBsYXRlc3QgVUhELCB0aGVyZSdzIG5v
IHJlYXNvbiB0byBidWlsZCBmcm9tIHNvdXJjZS4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
