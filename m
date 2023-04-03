Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7208D6D403C
	for <lists+usrp-users@lfdr.de>; Mon,  3 Apr 2023 11:22:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB10E384092
	for <lists+usrp-users@lfdr.de>; Mon,  3 Apr 2023 05:22:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680513774; bh=NLuT6zzeaPccR3oKyKV+1w6Qi5lxqm1QB7O4N2FUQDg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0MN4VVqaxZxluzRkOGYMfFj0nd2gwLi9609Cjg7v8lVbFSWI5eMkHczHkH1E43LXm
	 BH9qnBXavCoNFflhkLdrl4WU5+c8O1u+D7cqN1Z8bZ4ed0Q6RUr/cb90IfG19cWrpW
	 PKnjyPRkUH3pha+fXqjRWkbVdF7BvqW5pMvZpqnIHq1DTYscJuWQ+dur7M0sH2mfoB
	 tiTVqVtGv/Egj3IQmR4E3wD8oMpNkb9zTss9X4fJmf+bUTEYz7FSBltgJ+vTNxQKsa
	 g7tm9cg1ZSTbIan3lGV9V26saGnWC2E3oVE2TeaRBU8tNqeSf1rUu6fDIaBDS+cMdU
	 hjCUZl5ScNdZQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 9450E3838F0
	for <usrp-users@lists.ettus.com>; Mon,  3 Apr 2023 05:22:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="nsIyli+O";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id w9so114589220edc.3
        for <usrp-users@lists.ettus.com>; Mon, 03 Apr 2023 02:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112; t=1680513733;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7eMjyma6SPdGKYA3ZXUZ9FGU7BCXYkqTK3KhBPxoP5U=;
        b=nsIyli+OQ1i8KzjVJsvm+mE/dxQ4EkoyWG2R3bQ18kr//R3RaD7uk3bax+DSpwH8op
         +xarRB2uyBetRAD8D8xAeUfoGxR2pp7WuxWmmXsgCzzfS7H5ywm6ebEY0kShKKRc3v8X
         iqEgAdgCavQhezws4fugdUMph9mhB+SCRdAgd6hpZ7H+QSZJRvEMBpSL/gC7DEkuRWyg
         rZPueqrHZ4jmVWySjZJgyU0y8xK6qFPJeoaPbEC978Y+S9DcjkTnjQ/EIqdbXwUwAv6H
         U0kVafJqQvQ9ao17wjt/FNpkrZRl2oACIm1ixP2+fNRzWtpkgwMn0ACk6yPPNFa4i1rt
         hSEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680513733;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7eMjyma6SPdGKYA3ZXUZ9FGU7BCXYkqTK3KhBPxoP5U=;
        b=1xNRk11Ndml21xHtW5/FmPazGGzxDz1iQvQ9qCsc4kUiSSRY97K7WxBavdNgWNo1fd
         CKgk76rPDPsNG8MfKHATa9QOpmyetoRDlt/FQ3awyLMjfqx43hJfi2PnWFyDmQRYEWOq
         n4VBtcfFtsxosSEa3Yd0XcT3BrFeuNyfj25oAqkGczgLETD8OnKIzr7IEdxevIHcRU9h
         WtRXr0ZouEgukG/xKg06sojXbUZfYfpuf/ILnPqj/ybKxZumoxo7HFX1qalJtB8BvF5L
         VkrIvn0EbCBPaWtn/B4BMm5PbydsXNPhTesbEaYeqv78EsF0IXRctvKK/zWV6iRkli2p
         uO7Q==
X-Gm-Message-State: AAQBX9dErpDK/IN0CNfe/M4c95eJF4/EmPVN7ps5jtXprv8Nw8KUQ3b5
	wOKvaHRsKLALROg4iBQOI70YdSIcDgJoOn9a8qT5fA==
X-Google-Smtp-Source: AKy350Z5EBR4pbBb4VDP8RVM1JqoEdmvQFqighpLtzQIYvYPMgkBRLRUcnMe6WG2L0/r2ctESWxL4w==
X-Received: by 2002:a17:907:80cd:b0:931:51c0:7300 with SMTP id io13-20020a17090780cd00b0093151c07300mr38307930ejc.77.1680513732952;
        Mon, 03 Apr 2023 02:22:12 -0700 (PDT)
Received: from [192.168.1.18] ([151.30.140.8])
        by smtp.gmail.com with ESMTPSA id k15-20020a1709063fcf00b008c16025b318sm4278844ejj.155.2023.04.03.02.22.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:22:12 -0700 (PDT)
Message-ID: <f01adedb-4d6c-8db3-df02-ae01571dbd94@sma-rty.com>
Date: Mon, 3 Apr 2023 11:22:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <95ea5508-ba7c-d6b0-2536-81d3c41a102e@sma-rty.com>
 <bf18e170-7ccb-3a59-58b8-df34ef15ccc3@gmail.com>
From: Federico Civerchia <federico.civerchia@sma-rty.com>
In-Reply-To: <bf18e170-7ccb-3a59-58b8-df34ef15ccc3@gmail.com>
Message-ID-Hash: 4FXZFACKQNVYOM7NZHRKZO72MJJHS7YY
X-Message-ID-Hash: 4FXZFACKQNVYOM7NZHRKZO72MJJHS7YY
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Info about processor frequency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4FXZFACKQNVYOM7NZHRKZO72MJJHS7YY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KDQp0aGFuayB5b3VyIGZvciB5b3VyIGFuc3dlciBhbmQgc29ycnkgZm9yIHRo
ZSBsYXRlIHJlcGx5Lg0KDQpZZXMsIEkgbWVhbiBob3N0IENQVSBmcmVxdWVuY3kuIEkgd2FzIHdv
bmRlcmluZyBob3cgSSBjYW4gZ2V0IHRoZSANCjxpbmhlcmVudC1jb21wbGV4aXR5LXBlci1zYW1w
bGU+LiBEbyB5b3UgaGF2ZSBhbnkgaGludHMgb24gdGhpcyBvciANCnByb3ZpZGUgbWUgd2l0aCBh
biBleGFtcGxlPw0KDQpJZiB3ZSBjb25zaWRlciBhbiBhcHBsaWNhdGlvbiB0aGF0IHNpbXBseSBn
YXRoZXIvdHJhbnNtaXQgdGhlIGRhdGEgDQpmcm9tL3RvIFVTUlAgd2l0aG91dCBhZGRpbmcgYW55
IHBhcnRpY3VsYXIgcHJvY2Vzc2luZyAoc29tZXRoaW5nIGxpa2UgYSANCmxvb3BiYWNrIGFwcGxp
Y2F0aW9uKSwgd2hhdCBpcyB0aGUgY29tcGxleGl0eSB0byBwbGF5IHdpdGggdGhlIHNhbXBsZXM/
IA0KTWF5IEFSTSBwcm9jZXNzb3JzLCB3aXRoIGxvdyBmcmVxdWVuY3kgc3VjaCBhcyAxLjRHSHos
IGhhbmRsZSB0aGUgc3RyZWFtIA0Kd2l0aG91dCBzaG93aW5nIFJUIGlzc3Vlcz8NCg0KVGhhbmtz
IGEgbG90Lg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkZlZGVyaWNvDQoNCk9uIDE3LzAzLzIzIDE4OjAz
LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+IE9uIDE3LzAzLzIwMjMgMDY6NDcsIEZlZGVyaWNv
IENpdmVyY2hpYSB3cm90ZToNCj4+IERlYXIgY29tbXVuaXR5LA0KPj4NCj4+IEkgYW0gd29ya2lu
ZyB3aXRoIGEgTjMxMCBpbiBhIDJ4MiBNSU1PIHNldHVwLiBXaGF0IEkgbm90aWNlZCBpcyB0aGF0
IA0KPj4gaWYgSSBjb25zaWRlciBhIHByb2Nlc3NvciB3aXRoIGEgYmFzZSBmcmVxdWVuY3kgbG93
ZXIgdGhhbiAzLjVHSHosIEkgDQo+PiBoYXZlIHNldmVyYWwgcmVhbC10aW1lIHByb2JsZW1zIHdp
dGggbWFueSBsYXRlIHBhY2tldHMgKExMTExzKS4gDQo+PiBIb3dldmVyLCBpZiBJIGNvbnNpZGVy
IHByb2Nlc3NvciB3aXRoIDMuNUdIeiBvciBoaWdoZXIgYmFzZSANCj4+IGZyZXF1ZW5jeSwgdGhp
cyBpc3N1ZSBkaXNhcHBlYXJzIChvciBJIG1heSBoYXZlIGZldyBMTExzIHZlcnkgcmFyZWx5KS4N
Cj4+DQo+PiBIYXZlIHlvdSBhbHJlYWR5IG9ic2VydmVkIGEgYmVoYXZpb3IgbGlrZSB0aGlzPyBX
aGF0IGlzIHRoZSByZWFzb24gDQo+PiB0aGF0IGxpbmtzIHByb2Nlc3NvciBmcmVxdWVuY3kgd2l0
aCByZWFsLXRpbWUgaXNzdWVzPw0KPj4NCj4+IFRoYW5rIHlvdS4NCj4+DQo+PiBCZXN0IFJlZ2Fy
ZHMsDQo+Pg0KPj4gRmVkZXJpY28NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBZb3UgbWVhbiB5b3VyIGhvc3QgQ1BVIGZy
ZXF1ZW5jeT8NCj4NCj4gQWN0dWFsIHNhbXBsZS1wcm9jZXNzaW5nIHBlcmZvcm1hbmNlIGlzIGRl
cGVuZGVudCBvbiBhIEJVTkNIIG9mIA0KPiBmYWN0b3JzLCBpbmNsdWRpbmcgQ1BVIGNsb2NrIHJh
dGVzLCBtZW1vcnkgYmFuZHdpZHRoLA0KPiDCoCBJL08gYmFuZHdpZHRoLCBldGMuDQo+DQo+IElu
IGdlbmVyYWwsIGF0IGEgaGlnaCBsZXZlbCwgdGhlIHByb2Nlc3NpbmcgcG93ZXIgcmVxdWlyZWQg
c2NhbGVzIHdpdGg6DQo+DQo+IDxpbmhlcmVudC1jb21wbGV4aXR5LXBlci1zYW1wbGU+wqAgWMKg
IDxzYW1wbGUtcmF0ZT4NCj4NCj4gU28sIHRoZSBtb3JlIGNvbXBsZXggInRoaW5ncyIgeW91IGRv
IHRvIGEgc2FtcGxlIHN0cmVhbSBhdCB0aGUgaW5wdXQgDQo+IHNhbXBsZSByYXRlLCB0aGUgbW9y
ZSBDUFUvbWVtb3J5LWJhbmR3aWR0aC9JTy1iYW5kd2lkdGgNCj4gwqAgeW91IG5lZWQgdG8gZ2V0
IHRoZSB0YXNrIGRvbmUgd2l0aG91dCBkcm9wcGluZyBhbnl0aGluZy4NCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
