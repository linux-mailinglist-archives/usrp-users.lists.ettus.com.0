Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABFF6BEF1F
	for <lists+usrp-users@lfdr.de>; Fri, 17 Mar 2023 18:04:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1AE9383F2F
	for <lists+usrp-users@lfdr.de>; Fri, 17 Mar 2023 13:04:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679072675; bh=xnPKC12+a+pQJdh0t52KLcO5R0WGx4xJjcjeHV3L3Q0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mGigJfY46Hwq2OwXSRSlBH5yJfVy5Fds00KkWQkizL/T7MI8IyQSabnA7K0WGdZlZ
	 tKtxqXZYU+HXk0RadmiPxCXLhvCgvTESbrynWn+rkC9RmnipLPp50SIap5+rwFkNpG
	 ZWinN28BOrxmhI3tve/D14RzExojH7PSMn+lI7mqgD1fdb9uZ4MVbFmUoxCRrBp4V7
	 DH5h8QQVDcFhcAkXYIyM6R/PntjGCEnsHL15iRf2wCKKyLOmOQn6C6UofetzSqyEOs
	 +/ADqcQagDUXODoDXQDTO9G4tjyvHlIgsZ2kYLu0yWuN2tIEbhTLxhgihheK1a+6jZ
	 awMlSwMv75cpg==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id AF6ED383EC4
	for <usrp-users@lists.ettus.com>; Fri, 17 Mar 2023 13:03:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jbi4SKiy";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id r16so6291438qtx.9
        for <usrp-users@lists.ettus.com>; Fri, 17 Mar 2023 10:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679072623;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xtyn+n9iopOEtdbfrCz7t+oXz7HdsBCSRmBkkY9idEM=;
        b=jbi4SKiyrcTCOjAnuwG0x+jNPZsAQ7/9onlbR6Ohg5Y3NR9lBoC51hzivXr2QvN6fP
         kiBkHF1mW9o9aHizTeCO6NPYLVxQAQS4PvGyEdxcj+FCK4jxOO1IormZMODVu+LHRgEI
         VHnGJ6ElV6B8nK1fZ3zSEJLKbFpEQ7adpXZKax8oLWKNtCh3EAhZj2yneblnkn1Jvnbr
         qVhfpfL4QB2r6akXahpRGw+IhEhSs4tEQzwLYguog4Lmp8VB7oUGdJNac3WNxkelR769
         vGP45mmtVm4aZPXhXRUVmRxjpUCQG29Ye0VvT96TPIQUCpVaAsbVM+JeO98lLSw2dbKa
         UbVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679072623;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xtyn+n9iopOEtdbfrCz7t+oXz7HdsBCSRmBkkY9idEM=;
        b=hqgb2lwg7I/6IuRJ9gOErQR00O3/6ghaRHwS7ILqe/M+fbC2tgk779Tc9HNSwm/2Nj
         EN/nP+KpHQe2Z120+DWerQAyCx8PwJrPiJd+deIg6elWG0eyiRo8H3yTELtwAqCBWUBP
         25I6zOzmd3CSkn15/fxg47S7pavK6iw7Rgn05nMDc4bqg7UfC2vRc2HgCdaFoZhZapTA
         b9umMoFA3rER+fAOXbWhe9sN3P6RH5vhs0AmGMNMKnI2vEe3RBYMGT6yxEeyPbbWcGx8
         xEMw4wAw6XJYwIaphBcGhjn4vKzydT14AZktJKv9aBIiFZBvRHw4qsE+DbO8qEvw/edb
         lVfw==
X-Gm-Message-State: AO0yUKVrMyhaCPVTDzdJNNNm2tNzivzYgjrqHEWfGKQRnbTq+MVuwZZk
	MKJqCynkee/PzAC5nsvNpXiXGEfsrLY=
X-Google-Smtp-Source: AK7set8r8xTpZQHJpCsECniRh+O/iC1AJGtQ+uudI4NVd4k3HiQtoJ5x7IFGmxWeMms8FOMjk8HTlw==
X-Received: by 2002:a05:622a:34b:b0:3d7:7d98:d21a with SMTP id r11-20020a05622a034b00b003d77d98d21amr13326864qtw.30.1679072622386;
        Fri, 17 Mar 2023 10:03:42 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id g20-20020ac870d4000000b003d7ca267234sm1786547qtp.24.2023.03.17.10.03.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 10:03:42 -0700 (PDT)
Message-ID: <bf18e170-7ccb-3a59-58b8-df34ef15ccc3@gmail.com>
Date: Fri, 17 Mar 2023 13:03:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <95ea5508-ba7c-d6b0-2536-81d3c41a102e@sma-rty.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <95ea5508-ba7c-d6b0-2536-81d3c41a102e@sma-rty.com>
Message-ID-Hash: T45ALBXA2Z7AKIRQ47NV3G6J5XBBSA2Y
X-Message-ID-Hash: T45ALBXA2Z7AKIRQ47NV3G6J5XBBSA2Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Info about processor frequency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T45ALBXA2Z7AKIRQ47NV3G6J5XBBSA2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDMvMjAyMyAwNjo0NywgRmVkZXJpY28gQ2l2ZXJjaGlhIHdyb3RlOg0KPiBEZWFyIGNv
bW11bml0eSwNCj4NCj4gSSBhbSB3b3JraW5nIHdpdGggYSBOMzEwIGluIGEgMngyIE1JTU8gc2V0
dXAuIFdoYXQgSSBub3RpY2VkIGlzIHRoYXQgDQo+IGlmIEkgY29uc2lkZXIgYSBwcm9jZXNzb3Ig
d2l0aCBhIGJhc2UgZnJlcXVlbmN5IGxvd2VyIHRoYW4gMy41R0h6LCBJIA0KPiBoYXZlIHNldmVy
YWwgcmVhbC10aW1lIHByb2JsZW1zIHdpdGggbWFueSBsYXRlIHBhY2tldHMgKExMTExzKS4gDQo+
IEhvd2V2ZXIsIGlmIEkgY29uc2lkZXIgcHJvY2Vzc29yIHdpdGggMy41R0h6IG9yIGhpZ2hlciBi
YXNlIGZyZXF1ZW5jeSwgDQo+IHRoaXMgaXNzdWUgZGlzYXBwZWFycyAob3IgSSBtYXkgaGF2ZSBm
ZXcgTExMcyB2ZXJ5IHJhcmVseSkuDQo+DQo+IEhhdmUgeW91IGFscmVhZHkgb2JzZXJ2ZWQgYSBi
ZWhhdmlvciBsaWtlIHRoaXM/IFdoYXQgaXMgdGhlIHJlYXNvbiANCj4gdGhhdCBsaW5rcyBwcm9j
ZXNzb3IgZnJlcXVlbmN5IHdpdGggcmVhbC10aW1lIGlzc3Vlcz8NCj4NCj4gVGhhbmsgeW91Lg0K
Pg0KPiBCZXN0IFJlZ2FyZHMsDQo+DQo+IEZlZGVyaWNvDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCllvdSBtZWFuIHlvdXIgaG9z
dCBDUFUgZnJlcXVlbmN5Pw0KDQpBY3R1YWwgc2FtcGxlLXByb2Nlc3NpbmcgcGVyZm9ybWFuY2Ug
aXMgZGVwZW5kZW50IG9uIGEgQlVOQ0ggb2YgZmFjdG9ycywgDQppbmNsdWRpbmcgQ1BVIGNsb2Nr
IHJhdGVzLCBtZW1vcnkgYmFuZHdpZHRoLA0KIMKgIEkvTyBiYW5kd2lkdGgsIGV0Yy4NCg0KSW4g
Z2VuZXJhbCwgYXQgYSBoaWdoIGxldmVsLCB0aGUgcHJvY2Vzc2luZyBwb3dlciByZXF1aXJlZCBz
Y2FsZXMgd2l0aDoNCg0KPGluaGVyZW50LWNvbXBsZXhpdHktcGVyLXNhbXBsZT7CoCBYwqAgPHNh
bXBsZS1yYXRlPg0KDQpTbywgdGhlIG1vcmUgY29tcGxleCAidGhpbmdzIiB5b3UgZG8gdG8gYSBz
YW1wbGUgc3RyZWFtIGF0IHRoZSBpbnB1dCANCnNhbXBsZSByYXRlLCB0aGUgbW9yZSBDUFUvbWVt
b3J5LWJhbmR3aWR0aC9JTy1iYW5kd2lkdGgNCiDCoCB5b3UgbmVlZCB0byBnZXQgdGhlIHRhc2sg
ZG9uZSB3aXRob3V0IGRyb3BwaW5nIGFueXRoaW5nLg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
