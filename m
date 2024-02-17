Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C91858CB5
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 02:22:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AA4D3842CF
	for <lists+usrp-users@lfdr.de>; Fri, 16 Feb 2024 20:22:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708132950; bh=Q2k2UJviKX+iyrDlWdyQPtYgsI8uRKL9WDSVrB0mnRM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=e26bIb8ZodzqIHT5q1RoccB0ZTqTZw37K6zwgw/GtX7bzh4Mn1ihGoo8p2L+eozup
	 YFeZrEYOxzkp9HB1lIlb6TgQn4WrDeOVdSo5e/NOFIA4oLQXVRPsZmID8zvc9JuBzV
	 FuTKOPKuSPy420PUQ8wp/8UeREpepXvxF49WHdw/BDxylzIxoOse6G8+qgixSvUpWS
	 wS5lAyJ49LhW0/Cei2yebgF+oH/9b2cGNiHd5x8FXU2yPXW7g/hbc3IAb/SgVFW1ql
	 I8LhgC0jIjvcw8E3ST2R2Pjk96WpPX+fyPDjflIcJFMGymT78MhgUMbDDkZ8aqGgtu
	 OVn2hwxZ39CMA==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 64BFB383DBC
	for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 20:22:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="muUXkdKK";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-68f3eaa9b38so3332526d6.0
        for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 17:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708132944; x=1708737744; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9BaNA0zkIYNP8i3rtnw44dxFoCWMhtPqwDPqMbo/2yw=;
        b=muUXkdKK4E93VVs/pM33ugyPVeqUqhgkgvjEDRjrLXLtyL6+7vVyHsoz7OmwlPgVZc
         uQxsyhMsDSKEWBlXZGq2grKYeFUp2w8fw2xyeSJKsog0apcpcX+7SI7GNsZ3Ya/ug/Ng
         8n/OYB6m86vZq4halBY+AUEXz33/Ktih+j6TDSKY3zxvOT6zNSnmQVGjJnr2olCMbEPZ
         1h7zdW2qyyBuvUQ2WZwfEF7mmJbaj4S2oQ54okbWAaPDWpNwkyS87R3bq26vsDyMF3o9
         srRgz/ujveWmFGMFHX2e8z6Edurqf5kW8NEA5kiNR4gUiAp5KwM3kE5eVe2GGgyEV7rG
         Hvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708132944; x=1708737744;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9BaNA0zkIYNP8i3rtnw44dxFoCWMhtPqwDPqMbo/2yw=;
        b=sU6DyZnAyVZeFWIpirIk40NewHa1G4hNekD/7CHjKao/2Qs8w7JM2wOIhF18vfzxv9
         YTCDYw1VNJmYh5WsUmvVGu6AoYio51KipSaALPP4AESs0+LfASK9akDbixP8AkUGnRE9
         pjzXBPfK0LGmRS6MWz/AaTb2jbCAYPa5LtNAGMQ6jJc8sw3FZAuqEUbfFyceM4vFgJSs
         b7wcHEuUGv8Wr5KEVGR+DVtze/SRY8vv5BmrpaJFpBW2p1kDHymVMdY0+MU5MCZcr4Oa
         LR5NuNVQgGTymbVY3UTgVBZI4/olOTeRWCOWajaLKdehAvD+qTM0jg5i4cOx2igGsmO7
         km3w==
X-Gm-Message-State: AOJu0Yzglrs+Bdg/l3HV55zU9SsAAdnTU4dzSMsLEu8J5SEOkMR9di5M
	6/wVCCdTb8D25UuoXYTEM7CxkXO89ZKywFlPeW2yHLENZNrCEfSrwU29shhOw1M=
X-Google-Smtp-Source: AGHT+IEQtNE1++mxXkJMGK/lVwwgf6P8Feerb/omIQc60IhWQ0HpOfBbROHByQdr6TEWB3GhFxMJoQ==
X-Received: by 2002:a0c:cb93:0:b0:68f:417e:3f8a with SMTP id p19-20020a0ccb93000000b0068f417e3f8amr1130864qvk.37.1708132944640;
        Fri, 16 Feb 2024 17:22:24 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id my4-20020a0562142e4400b0068f24e38716sm470630qvb.141.2024.02.16.17.22.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 17:22:24 -0800 (PST)
Message-ID: <65b4e5cd-b4b6-4b83-92cc-d9d70782f97f@gmail.com>
Date: Fri, 16 Feb 2024 20:22:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
 <CACDPEcMiC_vyTATOWF5YyW4rSaJfM9RJwjHPjLHg+72kerTkNw@mail.gmail.com>
 <b1040880-b41e-4c40-be8d-4028a1d669ae@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <b1040880-b41e-4c40-be8d-4028a1d669ae@me.com>
Message-ID-Hash: QYWZC5PGIAXPAGGVFVZYZXO3XALQJNXK
X-Message-ID-Hash: QYWZC5PGIAXPAGGVFVZYZXO3XALQJNXK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYWZC5PGIAXPAGGVFVZYZXO3XALQJNXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMDIvMjAyNCAyMDoxNywgSmltIEdydWJiIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiBU
aGFua3MgZm9yIHlvdXIgcmVzcG9uc2UgTXVoYW1tYWQsDQo+DQo+IEkganVzdCBpbnN0YWxsZWQg
dGhlIHNvZnR3YXJlIG9uIGEgZnJlc2ggVWJ1bnR1IDIyLjA0IG1hY2hpbmUgYW5kIA0KPiBmb2xs
b3dlZCB0aGUgZGlyZWN0aW9ucyBvbiB0aGUgZXR0dXMgd2ViIHNpdGUgdG8gZ2V0IHRoaW5ncyB1
cCBhbmQgDQo+IHJ1bm5pbmcuwqAgSSdtIGFmcmFpZCBJIGhhdmUgdmVyeSBsaXR0bGUgZXhwZXJp
ZW5jZSB3aXRoIGdudXJhZGlvIGFuZCANCj4gYW0gYSBiaXQgb2YgYSBsaW51eCBoYWNrIHNvIHBs
ZWFzZSBmb3JnaXZlIG15IGlnbm9yYW5jZS4NCj4NCj4gSXQgbG9va3MgbGlrZSBJIGluc3RhbGxl
ZCBnbnVyYWRpbyAzLjEwIGJ5IGRlZmF1bHQgYWxvbmcgd2l0aCBVSEQgNC42DQo+DQo+IEknbGwg
Z28gYmFjayBhbmQgdHJ5IHRvIGZpZ3VyZSBvdXQgaG93IHRvIGRlLWluc3RhbGwgYW5kIGdldCB0
aGUgDQo+IHZlcnNpb25zIHlvdSBzdWdnZXN0ZWQgcnVubmluZy4NCj4gVGhhbmsgeW91IHZlcnkg
bXVjaCBmb3IgeW91ciBoZWxwLg0KPiBCZXN0LA0KPiBKaW0NCkknbGwgcG9pbnQgb3V0IHRoYXQg
R251IFJhZGlvIGhhcyBOT1RISU5HIHRvIGRvIHdpdGggdGhpcyBwcm9ibGVtIGF0IA0KYWxsLsKg
IFlvdXIgdGVzdHMgc28gZmFyIGFyZSBjb25maW5lZCBlbnRpcmVseSB0byB0aGUgVUhEDQogwqAg
ZHJpdmVyIHVuaXZlcnNlLCBzbyBsZXQncyBnZXQgdGhhdCBzdHJhaWdodCBmaXJzdC4NCg0KDQo+
DQo+PiBPbiBGZWIgMTYsIDIwMjQsIGF0IDQ6MzUgUE0sIE11aGFtbWFkIEhhc3NhbiANCj4+IDxl
bmdyLm11aGQuaGFzc2FuQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pg0KPj4NCj4+IE1ha2Ugc3VyZSB5
b3UgaGF2ZSBzYW1lIHVoZCB2ZXJzaW9uIG9uIGdudSByYWRpbyBhbmQgb24gaG9zdCBwYy4gSSAN
Cj4+IHdvdWxkIHJlY29tZW5kIGluc3RhbGxpbmcgZ251IHJhZGlvIHYzLjggYW5kIHVoZCB2ZXJz
aW9uIG9uIHBjIHNob3VsZCANCj4+IGIgNC40DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
