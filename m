Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E93A32927
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 15:52:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF0B2385FD6
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 09:52:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739371930; bh=gDBLEO75hoIEDMs3dzELWSbp2tkZohp26vsChBOiz6I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XMvPn9QDrqT04j8xerkzIdc5VE7EW6zCAfgFfh3W3b9DeSCTqRzexEgnAdghx+lAa
	 tbYmaMtHWMwdecBomFWjSIqXZqPe2wUg0b0VkNDAON+DSdTQslKVuFeHwr2LHklHWf
	 NQBZ1ZspUkLCUdoQuCuC6aF1GaxZXdnHfVvTkyP9eUTCvSIAqRFtGLJR7DbSBNdH3n
	 e+Bo+Dyx43+fGJU/hOlQc1ZjLfSXvvQ2z9RqX5Bti+bxB8sCEQeEtjqzToiqix0ozA
	 +D/4IQ8WwKIwnGWod0veVJcPSvhfW5stRr8sPHJNaBuAbL9+2eQTlMbow2vrBe2XOG
	 v/teJCWtCS7dg==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id A0FC2385E86
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 09:51:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TYvtoj14";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-46fa7678ef3so68842031cf.1
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 06:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739371882; x=1739976682; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TIqZsRCd058CGS+VsywD585BGez7pv/W54LsxZgv0ZM=;
        b=TYvtoj14xs5gWFGNDSFOyskOGd3aBKS70UM6en9Mxg0utcDjSzKQCZQ5xox8YQCbih
         FDoqOMDRe8U2OY5ydxFelm7PoAOIT16Yb8mt54T0gMtZC/x6q560tZ9jbGPO6KnNSmXJ
         mFdmUZkALm8TbdHtm6meO4fWpXeWmG5vfKxp5uBmY1hhhVtCIIP0S6DkTAWNYdhO794p
         de90uE79uqvaPV0W4F+OeXNCypT4LTGn7rJhqmhI29k6iXeb5X7UzQCaEH3uTxRTwsBD
         xGE/zovkTE2gSqobzIpkJ7D6kqwmL9l/UxzDr1Eb3XSh3WOAKQAGyGL4n8H09Vaz1sUt
         rdww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739371882; x=1739976682;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TIqZsRCd058CGS+VsywD585BGez7pv/W54LsxZgv0ZM=;
        b=kRO/v4kTAjNH0JFJr8oqf6mPRzQbFN1BxVzVCCsgwAyG/y7iRRwC3WjB8mpcHYDKdd
         RR+OMQVqswS6/f0HI06rQPModKSA9AnRwhan1e73yhKuN9iMJPcSip54xT9+5SelX8fH
         WigtZrLbPWI1XyMhK2YCBQtp3IleMkNagTaigKcNr8MYFPm1QRKXb84P2APCjC7kvFwX
         HUgutnrPtap4vv1zeyphaP1jZg+8uepgiQML5j2Ofx+OJuQTAUIrtjbMuHG9xK7lS8iW
         TEiNcwfHtvyjLcT/vGTuV751yh4SGsL6yrg57BB1Y6NIBD5EBTwrVrRsaEEW1qEWj4H3
         nzMw==
X-Gm-Message-State: AOJu0YxWS4iBnBc39uFiVDZCzkftrYuKI1xxm2FfvwUozxgXlDGQk8Kl
	2WFJ53lXxwEj3W3KxU+/VOY+oX5NH61UAOMhmTWoYJ5luZ78et29jn7bQw==
X-Gm-Gg: ASbGncvjZg8UnRoUNlTp/GZbUGgiwtPDRnJl2U8yX0jSp4BFsil6JWJQ31vIzi3DhBe
	AaNv/2T7fRLkBixRyjPr5v97kh2cJpckYyEvi8Ddh0vNlQ7+mBMglX0F/fG/U6JKnjweE3kJgSL
	Mce9Cm5ZJeoy5Zku7WKklFZR+TVrNNUxpRQ2S6aPF0bOsRhzZDQGkXnG9BBUsFV8kXkiGuNgmye
	1BNLxg5uFHNU+0Tu1cGvqC4JnyUcT6Tvo/zn8Ny+xN/5t+wmdp3Aa09tU90b2B6r5qNTroh6Gbw
	w3NerLMU/WT6+rhVxrEIC8VapA==
X-Google-Smtp-Source: AGHT+IGapVeN7w/jtocUViGE6IabikmRDuvOfWhfM4SbvyBxyshHFrCVvUWdsNfs9hny5K+X7fiaPA==
X-Received: by 2002:a05:622a:1892:b0:471:9f06:aebf with SMTP id d75a77b69052e-471afe5fa6cmr51796091cf.30.1739371881821;
        Wed, 12 Feb 2025 06:51:21 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4719e591a62sm31214061cf.73.2025.02.12.06.51.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 06:51:21 -0800 (PST)
Message-ID: <3a5a0683-0d3c-41ff-a270-79669564b4f4@gmail.com>
Date: Wed, 12 Feb 2025 09:51:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4@lists.ettus.com>
Message-ID-Hash: 3XJGZE2LRRD7JEITZS5YESHXEKNDKLLW
X-Message-ID-Hash: 3XJGZE2LRRD7JEITZS5YESHXEKNDKLLW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it OK to build with DPDK but not use the feature
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3XJGZE2LRRD7JEITZS5YESHXEKNDKLLW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDIvMjAyNSAwOTo0OSwgY3liZXJwaG94QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGkN
Cj4NCj4gV2UgaGF2ZSBhIE9PVCBSRk5PQyBwcm9qZWN0IGFuZCBoYXZlIGJ1aWx0IHRoZSBVSEQg
ZnJhbWV3b3JrIHdpdGggRFBESyANCj4gaW5zdGFsbGVkIGJ1dCB3ZSBkb27igJl0IHVzZSBEUERL
LiBJcyB0aGVyZSBhbnkgc2lkZS1lZmZlY3QgaW4gZG9pbmcgc28/IA0KPiBXb3VsZCBpdCBiZSBi
ZXR0ZXIgdG8gbm90IGhhdmUgdGhlIERQREsgbGlicyBpbnN0YWxsZWQgYXQgYWxsPw0KPg0KPg0K
PiBUaGFuayB5b3UsDQo+DQo+IE1hcmlubw0KPg0KPg0KSSBkb24ndCB0aGluayBpdCBoYXMgYW55
IG5lZ2F0aXZlIGNvbnNlcXVlbmNlcy7CoMKgIEkgZG9uJ3QgdXNlIERQREssIGJ1dCANCm15IFVI
RCBoYXMgaXQgY29tcGlsZWQgaW4uDQoNCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
