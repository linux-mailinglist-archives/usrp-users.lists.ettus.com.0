Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9697ADC96
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 18:02:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 734A6384BD4
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 12:02:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695657752; bh=6AD3ggmMi/C+SzNte1LTzuxy0IVEbZcAHL0hiFqb014=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nJoIl4QRIS9xKo5tzYBEaisxUszw+vzT0AXDUUYBv9V8sKVAH4gwtWOpJdICl/EIq
	 gFkgfQ9VyFb6wHCoPECSual6FERBDorOsVibo0ZPZKED2APGcs32aj7bvyzGSF+P/2
	 eU+aq5p5oY9dvXz+CUybuAdQYpCDELzqKfJAKAZipq5/3FKf+AQkvvTSKZT9bujTNN
	 IxzvPGmXRbn/BVN/rpc6zcCai1RphvXdfCQil8nVlDUmSao716OP3bDh/sxPJU7X17
	 eeedXwmxXAoWN01F+tkEbykXKGPFodhYOm3lZYysQOSIT4igoYK8Wft+k9TBcd7oFM
	 fNldpc5LFtRrQ==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 57E70384BB3
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 12:02:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jGoOGgvw";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7741bffd123so389108985a.0
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 09:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695657747; x=1696262547; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ggygwk0ofGMA1QJg1ekFk1j3vZ2rx0vMckOxLuzw2/o=;
        b=jGoOGgvwISoR0AuWVGs2chuzPdJV+K1QQ81baOSKPVDnjbM3jgoociVMjLjXVP0wEW
         ZK/7X7h+0HBNhv5ezR+X/hoIgb/5HM5rGpJjGOlD5pDYkcYF2hxZlLWO2u7YTXOPJJ/T
         CTxgLhTAdmSvzMwLEcEciE5550yE4hcZVCUXeYX2lPQvHEAcBeIisNmK0vyD199NI9og
         bCdmvjFnNxE+Nkv77uSg53n6F69s0t9H0bKQUbaKjFK+p5cleaiqNU0HUUMT70vNC3cU
         B4okuaqvvx9C3GsD4XNrMs0b1LmPL+sZssk0z4fzuBdXG4hGVMzxPmiX5gVcushJ7Mxh
         3mZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695657747; x=1696262547;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ggygwk0ofGMA1QJg1ekFk1j3vZ2rx0vMckOxLuzw2/o=;
        b=PU/UqTCCijSDNBgrDf68v0A4M7WqBjgnmIQm6aMZxW+g9zyv9Mljt0GyqBZgY3fgUE
         FLSkR+F+HanbZVBFXe4xfbRIXh08QYz+Ii1z5WI5c43Gl3xRqUwnMiGcvLjol7nRBMhc
         +lxFsDMx7Drc4/71YLVO2xW9G0t0Is3JEKuPThO8isFwo8sx15+a7MZ1cigrkgWUkrba
         swOgZKPvksJP30N18gu3BX9TU91Lb+ywNvu1Dc5UwDxvqQOP2QJ6F1DAgx5ghV9vTRIz
         2s/PmLiES8M1ZiUSx/S14MmvypaNFzgTZscfErEgkRk7RNhBVPextXH3h24E3amHsV8e
         T55A==
X-Gm-Message-State: AOJu0YytS+O3CNX3USPzFDHtiUgx9JVzwOgZ8AdqdnnVDecUhhYeeSEH
	JXYaBx2DyW7BPUminpAPiQ06ICd8NRxBlQ==
X-Google-Smtp-Source: AGHT+IG8pDdYUG1gMS6oSsbD8LoacrWVL+EJjsDirMXdMPENyeBeaYmXisZS4s9u14F3Pi94xud3zA==
X-Received: by 2002:a05:620a:258f:b0:768:1572:e9af with SMTP id x15-20020a05620a258f00b007681572e9afmr8373301qko.8.1695657747659;
        Mon, 25 Sep 2023 09:02:27 -0700 (PDT)
Received: from [192.168.2.182] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id bn41-20020a05620a2ae900b00765ab6d3e81sm3572134qkb.122.2023.09.25.09.02.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 09:02:27 -0700 (PDT)
Message-ID: <09ace49d-133f-b4c6-0143-f148baa52a48@gmail.com>
Date: Mon, 25 Sep 2023 12:02:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM@lists.ettus.com>
Message-ID-Hash: O4PU2KHMGZ5H2HDDSQAHFKE6SWGVMNQX
X-Message-ID-Hash: O4PU2KHMGZ5H2HDDSQAHFKE6SWGVMNQX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X410 Power Error State
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O4PU2KHMGZ5H2HDDSQAHFKE6SWGVMNQX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDkvMjAyMyAxMTo1MCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gTXkgeDQxMCBoYXMgYSByZWQgcG93ZXIgYnV0dG9uIGxlZC4gVGhlIGRvY3Mgc2F5
IHRoaXMgaXMgYSDigJxwb3dlciANCj4gZXJyb3LigJ0gc3RhdGUsIGJ1dCBpdCBkb2VzIG5vdCBk
ZXNjcmliZSB3aGF0IHRvIGRvIGZ1cnRoZXIuIERvZXMgYW55b25lIA0KPiBrbm93IGhvdyB0byBy
ZWNvdmVyIHRoZSBkZXZpY2UuDQo+DQo+IFRoYW5rcw0KPg0KPiBKb2UNCj4NCj4NCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KTXkg
Z3Vlc3MgKEkgZG9uJ3QgaGF2ZSBhbiBYNDEwIG15c2VsZikgaXMgdGhhdCB0aGUgcG93ZXIgY29u
bmVjdG9yIGlzbid0IA0KcGx1Z2dlZCBpbiBwcm9wZXJseSwgb3IgdGhlIHBvd2VyLXN1cHBseSBo
YXMgZmFpbGVkLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
