Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D4898F8B8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 23:14:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC2FB3858FA
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 17:14:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727990085; bh=UcvxBoBL1AsjZ6xx67xfeB9kFjimLCIyo0htPQnG4hA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VM2UyRV9t2B78Qc9h++ydmWnYgm1LUdmBmtqSD9MXO3VAzHZcSeY8efN3ouSNd4RX
	 dBYXWnSnsj3e7s2ufbcSiFzKarvGdM203gMYeHN71hmUX7xEVhd1bvdbjfwSL5gQm7
	 HPxKAL+RKrozF9N0Nh3RbTyZmCXAPFNH0eG46/tKk86SgBEvQtb7rI5r9K6ZKelojb
	 Fpd5WYGlvOKxv3t9SmTCXxoESCXu4+H1OKfz5cQGn2I3OWUGGS6p1uL6FezKyTfWbq
	 Mh0vV6WblD0SG0oduWZkmSNW9pd7hObPGulNo7NkeokWNzWBKu/Hoau3+YtVyj7tGe
	 N+VfiNb3V4IZw==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 99848385859
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 17:14:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RAbA+TTY";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4581d2b0fbaso9998241cf.1
        for <usrp-users@lists.ettus.com>; Thu, 03 Oct 2024 14:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727990082; x=1728594882; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6eii8a0pgD+HShM/FdQSn1vYJOi9PQiPZ5wZ7oEqGYg=;
        b=RAbA+TTYyYeXlieGCokXcD0rY/8rPBI/mLKww34li/WlfsiRfACDrUZ6sVVcEG6gLv
         kSKKTIXCXuvgfUko6IKAOT5ibT3o92LjnRbmGUB9YkfyopDuPqiZ4Z6rBNFq5jHFooAy
         db1gBF2cAVf78Txu90tPfdyD81Iz0tpNL0c/t0YmpvvuxZMCg5GAmABfvO4dxA+iye17
         Xcd4m6KRKIESZcFKQPwUh6V11MqdAg2bbXA1yW0100x7oYEhE+SqPMuA5L0EcdaUWbvJ
         C0ICw14cMfmdtlIjlt3oYvS+693ujBvLQJamaP93eGiKaA+w2rBVyChTSq7Zj4GVo5et
         Dq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727990082; x=1728594882;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6eii8a0pgD+HShM/FdQSn1vYJOi9PQiPZ5wZ7oEqGYg=;
        b=iZbe9cISqFdX7+I1KoPOcap8fFnWoik5ozMyMbqNeEcnM1kJwSKjkXSXVrJlVE/NlU
         S6jJCODBth89CQbo1YNXmaO68PhEnt0/RryVEHM0aA5ftrnDn4h6Zgf/HyirbU4gFTz2
         wkrUgJOZIgCTV+SHie65M9toGRmqu1/v0EojaWB+GwmHYsX+SvDr+zEYDET9W0cgDzQq
         p3M1/9o/rFBbNpAcovP0ahgxsaUC+DJPD+n/lGPNGPPtwB5dJAFEl1ZfCuM8ClkAqVai
         X0LPer/OTg+bNC2G5SQnO7N6gO4NdKpDAD6DKCEuB9Olh1KDnmiNrgdeHLJ8RCgmH9QQ
         bXWQ==
X-Gm-Message-State: AOJu0Yzo1gYk+aTIxGUGVlgfYMiqOmtwv7HyQR6aM/4NVJuZ+kKxoiAB
	Pwf3vQYiiBq/gHwtnIUDCVsavxpgFlrrdnDmoP0MLxmWlJm/bJcD65p+qw==
X-Google-Smtp-Source: AGHT+IHpfFSB+0pmVG8kKqZFXCvJcM/TZOdYFf25Ls2xU63oOsbjoHXW+5xxUUcc5Z7jr46C4mlnQw==
X-Received: by 2002:ac8:5715:0:b0:458:4cfc:a169 with SMTP id d75a77b69052e-45d9ba64dbcmr7008471cf.28.1727990081866;
        Thu, 03 Oct 2024 14:14:41 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45d92dec7e3sm8815881cf.14.2024.10.03.14.14.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 14:14:41 -0700 (PDT)
Message-ID: <7ff9d88d-c4a7-4a42-9b32-ca0f8dffcd73@gmail.com>
Date: Thu, 3 Oct 2024 17:14:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw@lists.ettus.com>
Message-ID-Hash: 5SAUGXTLLBGL2MKYXGCZ2HVY2LK7PPWE
X-Message-ID-Hash: 5SAUGXTLLBGL2MKYXGCZ2HVY2LK7PPWE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Octoclock CDA-2990 produces no signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SAUGXTLLBGL2MKYXGCZ2HVY2LK7PPWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMTAvMjAyNCAxNjo0OSwgc2hhcGtpcXVhcnJ5QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4g
VXBvbiBwb3dlciB1cCwgdGhlIE9jdG9jbG9jayBzaG91bGQgc2hvdyBhbGwgZ3JlZW4gTEVEcyBv
biB0byB0aGUgDQo+IGxlZnQuIEFmdGVyIHNldmVyYWwgc2Vjb25kcywgdGhlIOKAnEV4dGVybmFs
4oCdIExFRCBzaG91bGQgdHVybiBvZmYsIGFuZCANCj4gdGhlIFBQUyBzaG91bGQgYmVnaW4gdG8g
Ymxpbmsgb25jZSBwZXIgc2Vjb25kLiBJbnN0ZWFkICx0aGlzIE9jdG9jbG9jayANCj4gc2ltcGx5
IGdvZXMgZnJvemVuIGluIGEgc3RhdGUgaW4gd2hpY2ggdGhlIOKAnEludGVybmFs4oCdIOKAnEV4
dGVybmFs4oCdIGFuZCANCj4g4oCcU3RhdHVz4oCdIExFRHMgcmVtYWluIHN0dWNrIG9uLiBOb3Ro
aW5nIG9jY3VycyBhZnRlciBhbiBob3VyIG9mIA0KPiB3YWl0aW5nLiBUaGUgc3R1Y2sgTEVEcyBh
cmUgc2hvd24gaW4gdGhlIGF0dGFjaGVkIGltYWdlLg0KPg0KPiBBbiBvc2NpbGxvc2NvcGUgd2Fz
IHVzZWQgdG8gdGVzdCB0aGUgdW5pdCwgYW5kIG5vIHNpZ25hbHMgYXJlIHByb2R1Y2VkIA0KPiBi
eSBhbnkgb3V0cHV0LiBObyBQUFMgc2lnbmFscyBhcmUgZ2VuZXJhdGVkLCBubyAxME1IeiBhcmUg
c2VlbiBmcm9tIA0KPiBhbnkgb2YgdGhlIGZyb250IHBhbmVsIFNNQXMuDQo+DQo+IEhvdyBzaG91
bGQgSSBwcm9jZWVkIHdpdGggdHJvdWJsZXNob290aW5nIHRoaXMgT2N0b2Nsb2NrPw0KPg0KPg0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tDQpUaGUgQ0RBLTI5OTAgaXMgYSBjbG9jayAqRElTVFJJQlVUSU9OKiBtb2R1bGUuwqAgSXQg
aGFzIG5vIGJ1aWx0LWluIEdQU0RPIA0KdW5pdCB1bmxlc3MgeW91IGhhdmUgcG9wdWxhdGVkIG9u
ZS4NCg0KDQpodHRwczovL3d3dy5ldHR1cy5jb20vYWxsLXByb2R1Y3RzL29jdG9jbG9jay8NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
