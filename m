Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6DA329E3
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 16:25:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40919385F79
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 10:25:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739373947; bh=kKDDX02nm0yyb1NTVXDxtLaN9oM3cKQ3msES0240H0w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Za8npmDP8NvY6UhWKSQjoCg/NJBJrp/WmNEEeUvmVyXAjEB0SWjwUU5WxnYojUozy
	 6HuHM2oYM12LXhRfe76F20o4a8hb7GmJmhsO/IL46Qpo2gTqrh+La3FqiZ6QyMYF8H
	 C4rAKa4gs3W4kM3LfsxnQqDBxtwh+bAjvFG617TQlSZR6HVvaBnl4UFJzLAHdX89ud
	 wpAJY1uY41MQ8kkkn/tpFOMuQzGF3R3Z3bhMh655LcHNwZYMzBQ9F7Kpq5mFBjiW3P
	 wtG4lSi6RP2qf3xPqAE9BvbbAkmjiB/S2CmOLV3d2K125NRVcoiRhK+DfziWYfYUir
	 ONbFPpgmB4Slw==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8340E385BE5
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 10:25:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RNpKyN67";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-471bb02fc88so2506901cf.3
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 07:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739373901; x=1739978701; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3XhUkfkiXdHWO2EWzH88uYJmkm+1hw2uQxNYrHe2g/s=;
        b=RNpKyN67K/2se+No+EXkIpM0cU7nUUlPDouQFwrG8X0+ee1La3s0BlLrfbfmPb2FUm
         6xYKfOOSbiGaHzzw2psIjiGWeIIA9mNxjs9ZOWRi+s38WbU3jHrXUUyasIuFrB4zbCp9
         zi/EZTKz1ris4YkMETCkZqVCKaOMLmWtLKMYjGgVskP9KrVoPzsPWtqarSe+scQw+rBc
         PBYEh1+VJ/NGMpEChxPXORENNjDr4CTmrzi6f/JOdaLRy05vYf03hXqa+RCIjI4NNYEO
         NGl0X6LOtAOec8jsoSv2bRB4HVf76ieaA30Kp/WWj1m/cSWJrfx9Mj70oP7RZzhLwsuO
         np1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739373901; x=1739978701;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3XhUkfkiXdHWO2EWzH88uYJmkm+1hw2uQxNYrHe2g/s=;
        b=q8lEXZsPVu5towNG5+Q51tfjXla9vnC5fzn6WzhnGqeFm/WsMk+aXiUy/67ZBGCVTm
         kBFV+d1sV+D8roGiPNyZHGuNkuRnKGbmK7T5UmFfOgsDH+1r9vIj11/ynjtSTiwvsaj7
         S8hOufwNSeVQLWmC4NsZ4qZLpI7jGCQnxRw2aJfPAWXIzVjRTA43DKSJ4eC8K1vWAsyU
         qR5hHylP2Oj7qnLHSyvVJWZ982KCX6jz4s9dEwLuGFo+8q+Usf2az2KAIepPDODQrj6Z
         AS/lqyXkkWAdo1HX32mg4CwTqKiV2CiGNvFQcrlzVt3D/4v258ljQdpmDXz3Vo8y2CJ8
         dPaw==
X-Gm-Message-State: AOJu0YxzeyK3T0Av+NzUL4pEbG59hH2YfJ8iJgfUnV5FxGM6bUT3cGhl
	Od7STx0u8IfTwgbUmqG4P0XTuYM9W6iu3hARn3Sjjuyorh7KlBGCypvqkg==
X-Gm-Gg: ASbGncuFzMwHIVllnU6kCY5eJIx6Gxtn/QtfCcalI1NdXcQtNPAqAK5QM1atmD3XoOd
	dEQ7xdDL2XWp1yhuC5JKplTeZo1RdAhlXScdXnXU8pV4VfJVxgGPqy12dWt1xbvdnbJcmeNMBsU
	esb4aXWzaTWPIMhHigyn2+O7CgW/t7hH+3pEGpmagfIerCtYqc8bZ4QE4zuyG4CbigGtbqhkGz5
	JwMXXXJ56xqkPjEYKJr2aiOkRQ3isp7EDXgmIkCnZ6qGK19qo6qlvYTz56LSAXAK5A7cdoUWUKL
	77irCDFhrm4Zb71xmSsY/2H61Q==
X-Google-Smtp-Source: AGHT+IGEV+Lb3CBPk67gUdRoJnD7CESM1XJ6mQfOCiuY63GdVa+H4nHvU5qS9FPsdAPZzyRelQorHw==
X-Received: by 2002:a05:622a:56:b0:471:a71c:eac1 with SMTP id d75a77b69052e-471afe3b82fmr53070101cf.21.1739373900481;
        Wed, 12 Feb 2025 07:25:00 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-471bbeb432asm2935221cf.79.2025.02.12.07.24.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 07:25:00 -0800 (PST)
Message-ID: <2ef33e37-1f7d-4726-b7f3-5865ddbb2e91@gmail.com>
Date: Wed, 12 Feb 2025 10:24:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEJzeq-FnXQjN8R9jh2LJ2mFj2cZYBiAmfOziLVTDyE+4quzBw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEJzeq-FnXQjN8R9jh2LJ2mFj2cZYBiAmfOziLVTDyE+4quzBw@mail.gmail.com>
Message-ID-Hash: CCQI6A44YU54ITNYNWLREBQC6HUXKDKV
X-Message-ID-Hash: CCQI6A44YU54ITNYNWLREBQC6HUXKDKV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC with N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCQI6A44YU54ITNYNWLREBQC6HUXKDKV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDIvMjAyNSAxMDoyMiwgSm9zZSBNLiBOdcOxZXogT3J0dcOxbyB8IENVRC1NYXLDrW4g
d3JvdGU6DQo+IEp1c3QgdG8gYmUgc3VyZS4gSXMgVVNSUCBOMjAwIGEgbm9uLVJGTm9DIGRldmlj
ZT8NCkNvcnJlY3QuwqAgVGhlIEZQR0EgaXMgb2YgYSBzaXplIGFuZCBnZW5lcmF0aW9uIHRoYXQg
Y2Fubm90IGJlIHN1cHBvcnRlZCANCmJ5IFJGTm9DIHRvb2xpbmcuDQoNCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
