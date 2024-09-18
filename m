Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2341897C122
	for <lists+usrp-users@lfdr.de>; Wed, 18 Sep 2024 23:01:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C74DC3853D6
	for <lists+usrp-users@lfdr.de>; Wed, 18 Sep 2024 17:01:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726693306; bh=E2cmIpGfABtYZQQnMHWyeuiIBwwqSRdfXBcqJx7cXbw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GAU772pfKXY/eyZzKfd3vXnue9J6CwzJm8lat2u4COJM7E4J5Bai7VETBbcZXUi1z
	 uIFxHuTC+ONgWFr7y2baA1e635s+1rhaU4sLo3I1ulNQYuu9tYghMxEu/o/0TYaHQg
	 gULR1Gn3QN2vXbQ4dFIQNFgGut8izltBWbh1zijsJCkD2m+z38kTaEwqtnecSnpWuL
	 SlTweKApXlfO4Pl8j1QUQ/VkfJj4aPdl19Kw9tDVuuzBeN44Bj5ofGf/KGlF8Bz5Eu
	 tqeFWiZd/1obJEa8KuKBP+dv8DQMC9HHijWq5UVKeGzuXvf8jQv8Z4iNYh3l4exPO8
	 HoCxVt920Cawg==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7887D384FAB
	for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2024 17:00:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mj+RsLd+";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7a9a30a045cso11320685a.2
        for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2024 14:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726693250; x=1727298050; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qRNkXnHBkASMMYucBycNf7CjVx5FSwMQbCTAWLCCeuE=;
        b=mj+RsLd+VjJ8K+dRu+4qV/kvb+TNykHD3r0kgzptm6gJTKTRsQneawSyxcQA39OxJB
         Eg+WQ+bO6qLotsjyQkRkqwVghXoWGcuh0Lr2FHUTL4GYAalxcr0IaRvwYvE/HjWVTic7
         oC9bn0sLeNcIeLDur/RTcrvTs4/LvID9txj36A84t7c2Jl883P5z4wgj58dIdBrzBg4F
         wHjSdzSePeMGiuIFz1wVIVrdGNWq6JWcZIFRhyG9BNTP3jAD8hS2RnXyh+hbw7Jy3w8l
         vGjK5S+g+xC5HVu4GIgzA+Rm8ekmUdBrFSGPYvzybb+yvk7bDh8QeXSiUpdUv3z7LQ34
         r+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726693250; x=1727298050;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qRNkXnHBkASMMYucBycNf7CjVx5FSwMQbCTAWLCCeuE=;
        b=wYJmPEJWYt3FI3LEXyHGwKneng4AcDblD9WCgOhABvH5Is9RyeesU9KtalN3mIzpjB
         Lc/qL58q2Rs4Vsl2gwKj9j/SJ+/yyLKjY29+MzdtJE5clSJDLvmV+reL84NxIY8ARhTU
         grNPTRmd9SdMIkL4qWVu2nbSq+Rltf9LMIa744cCRqsT7EZWouHSKk5pDd3lHxJhTy+l
         bMPLYGcBSIRRmWniPWL22VXtMw+UROMcxiUvPx9Q6CfCdBRcE0AjuRCAUJbEMaQ+i6o+
         YtIZ+C1RFZjmYfg2/jm4FOmwZqiLx6XC487yHFOoXCNNY+N1pTWSTjGap3lptED6rbUh
         LXzg==
X-Gm-Message-State: AOJu0Yxa0bnFassMSr55ILqfdvGXMAB9CrE8A9LgliyHzyTqtSwA110a
	Ok6pcsLrCPpO9JNwa1mITQhKBNrOdXlRFiOtJvPXBX5zfjch9shRTVWorQ==
X-Google-Smtp-Source: AGHT+IFOfBY5vr7i/O709YbsYiRSvUXjrHgye+KpHFm3FHmlNtoCHtCeewfaz1v0CrUISt3A7FRFAA==
X-Received: by 2002:a05:620a:40c:b0:7ac:a93b:9fa6 with SMTP id af79cd13be357-7aca93bab2amr344951185a.30.1726693249547;
        Wed, 18 Sep 2024 14:00:49 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7acb08da81fsm9637185a.110.2024.09.18.14.00.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2024 14:00:49 -0700 (PDT)
Message-ID: <856e188a-9be8-4ee0-b658-3c0832fbdf17@gmail.com>
Date: Wed, 18 Sep 2024 17:00:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAL4V06oPV8_5tqiGUjcbZr3QAmvd+DFxrNSE3QyudofKcefjOQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL4V06oPV8_5tqiGUjcbZr3QAmvd+DFxrNSE3QyudofKcefjOQ@mail.gmail.com>
Message-ID-Hash: ZNSTYXCDQIJ2HBAHNRCUWS4YJCJR7YSM
X-Message-ID-Hash: ZNSTYXCDQIJ2HBAHNRCUWS4YJCJR7YSM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. MSB (only) trasmission
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZNSTYXCDQIJ2HBAHNRCUWS4YJCJR7YSM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyNCAwNDowOCwgQnJhamVzaCB3cm90ZToNCj4gSSBhbSBhYmxlIHRvIHByb2dy
YW0gTjIxMCBGUEdBIHVzaW5nIG5ld2x5IGdlbmVyYXRlZCAuYml0IGZpbGUuIEkgYW0gDQo+IHRy
eWluZyB0byB0cmFuc21pdCBNU0IgKDEtYml0IG9ubHkgKSBmcm9tIHRoZSBOMjEwIGJvYXJkIGFu
ZCANCj4gZmFpdGhmdWxseSBwcm9jZXNzIHRoZXNlIE1TQnMgYXQgdGhlIHJlY2VpdmVyIGVuZC4N
Cj4NCj4gV291bGQgYXBwcmVjaWF0ZSBzb21lIGluZm9ybWF0aW9uIG9uIGhvdyBpdCBjYW4gYmUg
YWNoaWV2ZWQuIEEgcG9pbnRlciANCj4gb3IgdHdvIGlzIHRoZSBuZWVkIG9mIGhvdXIuDQo+DQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20NCllvdSdyZSBnb2luZyB0byBuZWVkIHRvIGdpdmUgKldBWSogbW9yZSBkZXRhaWxzIGhlcmUs
IEJyYWplc2guDQoNCldoZXJlIGRvIHRoZXNlIDEtYml0cyBjb21lIGZyb20/IFRoZSBob3N0IGNv
bXB1dGVyP8KgIEhvdyBhcmUgdGhleSANCm1vZHVsYXRlZCBvbnRvIGFuIFJGIGNhcnJpZXI/DQoN
Ck1vcmUgZGV0YWlscyB3aWxsIGFsbG93IHBlb3BsZSB0byB1bmRlcnN0YW5kIHdoYXQgaXQgaXMg
eW91J3JlIHRyeWluZyB0byANCmFjaGlldmUsIGFuZCBjYW4gcG9zc2libHkgaGVscCB5b3UuwqAg
VGhlIGFib3ZlDQogwqAgaXMsIEkgaGF2ZSB0byBzYXksIG5leHQtdG8tdXNlbGVzcyBmb3IgdGhh
dCBwdXJwb3NlLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
