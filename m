Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B85A4B2F4
	for <lists+usrp-users@lfdr.de>; Sun,  2 Mar 2025 17:11:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C52D385267
	for <lists+usrp-users@lfdr.de>; Sun,  2 Mar 2025 11:11:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740931867; bh=BANjXzBPR2qmAoeyEAg6NjZ2qzRQuR13a8TvKoMbgB8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Dak/N2ShawZ7R8yfV/Hc3zLP3mVKHDhe3/y5yTmLCTgjSU0dtbH7XUL3ApV//N8ua
	 ygV3pXiIdIjewy3n5Qka8xF97HuxhgTlUg9FPTm2Z3CGqM46jGWUvJQ6HASJqSYNo3
	 xk+6uTKCrkZH1mRa8DrfAL5W0b8InIu9Dp8zRKqs9O3Xb1/cZyzUyQX6PF2lXkNErQ
	 059rbKqfGjTAAWfrQTHLYlZr1LPGOwxrdeabZ1xr5wmglkXk08A39wjxo1Ro/1u0X1
	 95JqDtM0Ss1fOWwcITGnBsTNqs9asRnExjNrJYwIuaAB86qrpVcV1zCd9BtpYQ8Mix
	 wqdTJhH+RDtjw==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 8017538522E
	for <usrp-users@lists.ettus.com>; Sun,  2 Mar 2025 11:11:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ehgkt/Im";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c3b3e11f28so63303785a.1
        for <usrp-users@lists.ettus.com>; Sun, 02 Mar 2025 08:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740931863; x=1741536663; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WPP7YVUnTzdOmVA7bfz3BbR2ytT6qeziatCbnyJNaSU=;
        b=Ehgkt/ImfOdYl2svhyDILOP41BmWISYb0NIoZBQdkTkhMaYAK0mkozPPehOA5C9lEa
         tYl/uwcTpCqKF7M0AuLySFcrSKhb7usmwbEO6NXcM8JF6HvY5AarjmJhMFv71Tm2O3xw
         xB+WtYno6Am5q6xvf0MPAoU65t59zuDl9UoQGlQqYUQ7zMqUYkR9tItfNrSTpf7X8LG/
         dqD0Sh/U5BlWS6sI0kkUsceETrXj9NO0I3rNX0WMDbTQYYSaESHTNJLwPavILPYuLsrd
         dm3gN10h+sagagjriIAqKqL+Wy8W9v5QAD4wVQRl2zTvjnSoph0ZyktJkABXRpOANfbY
         jO/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740931863; x=1741536663;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WPP7YVUnTzdOmVA7bfz3BbR2ytT6qeziatCbnyJNaSU=;
        b=G9ClRAJ65z9KLSbHf2B8gHjdcScyRdDKq0UGeejAoalnoXOFQ1OlINvdOFkiZKXlwS
         B7ppq9zgDpsLedD37teuQzTFrZIQw89Qme2ZX7FiPwSmp1m2pGnHQQX0fFDtWVguqpmk
         hKhHdy0T4EGDioe8U9akEFyjSKtuToZf45zvnFFWPyasMGu5/Noy/8FWDaOiW0NSBcaZ
         we2uf5+kd6e9M5zPBRNNz5IgFT2UTdxGUChl5LmQvMa1AeCH0Flc+Vb8KyA6GgIqKLMP
         Waljlsgbb7A7Xo6cJ0+X7Kt/C9FcfeeCob5NihNYxQuxqWhlDCNGH3gXQup7n/YGqvfM
         E8Dw==
X-Gm-Message-State: AOJu0Ywnnv5+xhZ9Gi8mg2JsaLfYt3Ca/5aXTp5fXF3CwLJ6Xb3gxalL
	cJvMWF6+eFVYhzvzA9c/NUwD0VfgG9WphDQjtXCHmrSb3YXNVN2EYjEXLGqT
X-Gm-Gg: ASbGnctiy0qEMvAkRrwYzOKWjCwxnKl2H1i3nVvpm4lKWRVEo7RxhRuTRg2daxCyCHn
	beWDq34BCVrbE4LUFLYZtjLbsRRx6sZt3p5+H82WAbOq0LTdoDlgwOgqqmjx5Oi5FZNKS2Jzh4u
	+3u9MZi6EIvpu7LsljLloCU3Wyz5lqt/3j05jtoiUkXMzWZYk+gPJfZ7wp1sJkRuOoTelzTfHdA
	vgLlrF0a3hKQ1WFmBxgaJZKY1yoLSw05EVgSx696hcVF529QooX9b5+mK/WfPbhnI6ZZvZrpPb+
	j9vTFMtiVB6T5p9eL5IyhIQYCIP3IO9roiQH6nrK7DUwh3S1dmXVwYQ=
X-Google-Smtp-Source: AGHT+IFnF2DUtQ6FS5tgIsSNRmgI3/FKQGhjyOBgZophEUsO9YODnc1AirgdQO96rHNAOQLDPuovPg==
X-Received: by 2002:a05:620a:1b8c:b0:7c3:ba67:aab0 with SMTP id af79cd13be357-7c3ba67ac22mr225359785a.8.1740931863098;
        Sun, 02 Mar 2025 08:11:03 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e89765365csm43638896d6.38.2025.03.02.08.11.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Mar 2025 08:11:02 -0800 (PST)
Message-ID: <b4fe49d1-f6fa-4711-bab4-ed201675dbc3@gmail.com>
Date: Sun, 2 Mar 2025 11:10:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas@lists.ettus.com>
Message-ID-Hash: QBYNVLTBBEL2H3KKITMFEPH4RLC7YC2G
X-Message-ID-Hash: QBYNVLTBBEL2H3KKITMFEPH4RLC7YC2G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Octoclock test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QBYNVLTBBEL2H3KKITMFEPH4RLC7YC2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDIvMDMvMjAyNSAxMDozMCwgYXJkZWxnYWRvQGdyYWRpYW50Lm9yZyB3cm90ZToNCj4NCj4g
SGkhDQo+DQo+IFdlIGFyZSB0ZXN0aW5nIHRoZSBPY3RvY2xvY2stRy4gSW4gdGhpcyBjYXNlLCB3
ZSBhdHRlbXB0ZWQgdG8gY29ubmVjdCANCj4gdGhpcyBkaXNwb3NpdGl2ZSB0byBhbiBYNDEwLiBU
aGUgcHJvYmxlbSBpcyBkZXRlcm1pbmF0aW5nIHdoZW4gdGhlIA0KPiBVU1JQIGFuZCB0aGUgT2N0
b2Nsb2NrIGFyZSBzeW5jaHJvbml6ZWQuDQo+DQo+IFRoZSB0ZXN0X3N5bmNfY2xvY2sgc2NyaXB0
IHNob3VsZCBjb25maXJtIHRoaXMsIGJ1dCB3ZSBhcmUgdW5zdXJlIG9mIA0KPiB0aGUgcmVzdWx0
cy4gV2l0aCBib3RoIGRldmljZXMgb24sIHRoZSB0ZXN0IHBhc3Nlcy4gSG93ZXZlciwgd2hlbiBp
IA0KPiB0dXJuIG9mZiBvbmUgZGV2aWNlIGFuZCB0dXJuIG9uIGFnYWluIHRoZSB0ZXN0IHN0aWxs
IHBhc3NlcyAsbm8gbWF0dGVyIA0KPiB3aGF0IGkgZG8sIHRoZSByZXN1bHQgaXMgYWx3YXlzIGNv
cnJlY3QuDQo+DQo+IElzIHRoZXJlIGFub3RoZXIgd2F5IHRvIGNvbmZpcm0gdGhlIHN5bmNocm9u
aXphdGlvbj8gSSByZWFkIGFib3V0IA0KPiBjaGVja2luZyBjZXJ0YWluIHJlZ2lzdGVyIHdpdGgg
dWhkX3VzcnBfcHJvYmUsIGJ1dCBpIGRpZG7igJl0IGZpbmQgDQo+IGFueXRoaW5nIHJlbGV2YW50
Lg0KPg0KPiBJIHdvdWxkIGFwcHJlY2lhdGUgYW55IGluc2lnaHRzIGZyb20gc29tZW9uZSB3aG8g
aGFzIHRlc3RlZCB0aGUgDQo+IE9jdG9DbG9jayBhbmQga25vd3MgdGhlIGJlc3QgYXBwcm9hY2gu
DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gw4FsdmFybw0KPg0KVGhhdCBzY3JpcHQgY2hlY2tzIHRo
ZSAicmVmX2xvY2tlZCIgc2Vuc29yIG9uIHRoZSBVU1JQLCBhbmQgaWYgaXQncyANCmdldHRpbmcg
MTBNSHogb24gdGhlIDEwTUh6IFJFRiBjbG9jayBpbnB1dCwgdGhhdCBzZW5zb3Igd2lsbA0KIMKg
IHNob3cgYXMgInRydWUiLsKgwqAgVGhlIE9jdG9jbG9jay1HIHN0YXJ0cyBwcm9kdWNpbmcgMTBN
SHogb24gaXRzIDEwTWh6IA0KY2xvY2sgb3V0cHV0cyBhcyBzb29uIGFzIGl0IGlzIHBvd2VyZWQg
dXAsIGFuZCB0aGF0DQogwqAgMTBNSHogd2lsbCBnZXQgZHJhZ2dlZCBpbnRvIHN5bmNocm9uaXph
dGlvbiB3aXRoIEdQUyB1c3VhbGx5IHdpdGhpbiBhIA0KZmV3IDEwcyBvZiBzZWNvbmRzIG9mIHBv
d2VyaW5nIHVwLg0KDQpZb3UgY2FuIHVzZSB0aGUgImdldF9zZW5zb3IiIEFQSSBvbiB0aGUgVVNS
UCBjbG9jayB0byBjaGVjayB0aGUgDQoiZ3BzX2xvY2tlZCIgc2Vuc29yIG9uIHRoZSBPY3RvY2xv
Y2stRyAtLSBjaGVjayB0aGUgc291cmNlDQogwqAgY29kZSBvZiB0aGUgdGVzdF9jbG9ja19zeW5j
aMKgIGFwcGxpY2F0aW9uLsKgIEFyb3VuZCBsaW5lIDcwLCBpdCBjaGVja3MgDQphIGNvdXBsZSBv
ZiBzZW5zb3JzIG9uIHRoZSBjbG9jayBpbnRlcmZhY2UuDQoNCg0KDQoNCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
