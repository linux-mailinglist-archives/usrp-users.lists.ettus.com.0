Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C5A7DC3A7
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 01:38:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A052F385E92
	for <lists+usrp-users@lfdr.de>; Mon, 30 Oct 2023 20:38:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698712710; bh=cuP6zt3LOPa8b7jlf+ILj3kX3zDaSrETEXmz/wTup8U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PAsRoWjhT2UUWN9Cimh2Ps2qypqp3KNArmiCvZTqKBuhygRJi+O7F5wgLLOf7bOiM
	 98szkHEcrdVH1h37pTqkhDNhs5h5mlA3G7TTQh6Wt1XU/n45wmt6+2RA5jWml9DhJ4
	 Qs/OG1BGxr6zQT+/lWh9oVuOwbUl0OaMNhvWduyc6u2HF0BKoYjqZeW/8r7lBiYU0J
	 lfYTikCOsFruZsxls82F1msRlSgEPNXv4JmV0t0BjdABH6EKNqvC8XYw1k/G/qSJlM
	 5+5yFC7RMtdsQnZp8IYBWMb6eHxzA/4yjtq7nzdzAMGIdEYBApIS4DlAWoLw6iPkpI
	 SdIvMbRKGCWWQ==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EBEF385E74
	for <usrp-users@lists.ettus.com>; Mon, 30 Oct 2023 20:37:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E0An+Eb7";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-66d060aa2a4so36346166d6.2
        for <usrp-users@lists.ettus.com>; Mon, 30 Oct 2023 17:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698712678; x=1699317478; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+pLPT/vF+UQEl35dzH2hV6IT+Pshi+4WJizf1KNvptY=;
        b=E0An+Eb7t1Q3INvpPV8AYFISMvmWLM0wAGm13Dp0u3Kq4z91GFnOHZx+s7Z0ZeimcO
         Tp92Z9my4FEJv9MBDjej6Yl9BzcBKBu1bsI5EORVqNe2Fjm3ZCuJvV6tuOtiw/+US92Y
         qbHbXmC75fFtIGh3FrcK+Ek0C/BbUZoC7m5p0da1Lmj2IEvXvlHU2c3pZJdsligAH23R
         6XoLV/RqTSgR6XUW1qYGGC2/+qGHaPxrV5rOhjaCoUP+NYYyyZYawDBZy65JE0OKwTax
         pLoux6qMyAKQwU8XSw9cg405oFWryW4j0F9qA4+He4RaqJ6R6Ja34z9hI4d+NRxusPOA
         CO7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698712678; x=1699317478;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+pLPT/vF+UQEl35dzH2hV6IT+Pshi+4WJizf1KNvptY=;
        b=S8C8vsDVV6u/dSlk+4jv/yjV3h0lPWUiRqKjL52bFFIpbfphn/akclki00y8nqMVY9
         wXGQWjfguhgW0QgtWEM7j2mn8cktGO1WqbNUC4bzyITyW62BxFmNNr0CeYcdmLoEq3PU
         gYCV3H9m2n1zDQoBFJ/vMSQzFch2TunpKCOtDPLhrujVuAXLPy3OoGSu/gKxqz+haYeu
         UxtHQZZAYy+7AoHPKN67WKr9Z+hDhbFwi6F+XhmuUs+8u9KdEW5EK/1nhtMmanOdLBtR
         gI7klbNZitBXRAsnaMTB1SKI3QoyFjvldbHf1FqN6ZMOFF1bogsV3drcNf0kgKgteZHA
         OEfg==
X-Gm-Message-State: AOJu0YxZXC1Kg2Pcn8+q1BdNJtOfjebLZoV76IXtcM2msDuyiDcHrQ4+
	nkExndK2ft8zc48hLoLxxO9q3QbwFrc=
X-Google-Smtp-Source: AGHT+IGfJBR4KpTlHDhGaTcFBAicniycDTbpCWF3mzRd8hnce+AMPug/NY1Hm5Smv5tRVCmtpgvk5A==
X-Received: by 2002:a05:6214:1d2c:b0:671:fcd3:1cc2 with SMTP id f12-20020a0562141d2c00b00671fcd31cc2mr7059766qvd.65.1698712678476;
        Mon, 30 Oct 2023 17:37:58 -0700 (PDT)
Received: from [192.168.2.182] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id nf4-20020a0562143b8400b00655d6d31470sm71450qvb.43.2023.10.30.17.37.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 17:37:58 -0700 (PDT)
Message-ID: <f9f8bf22-aceb-4fed-bbce-046d16154d5d@gmail.com>
Date: Mon, 30 Oct 2023 20:37:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPiksU=3Uf62wdyiym_PvVbwmpjkufs+MHRP-XERT2aL_yA=FA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAPiksU=3Uf62wdyiym_PvVbwmpjkufs+MHRP-XERT2aL_yA=FA@mail.gmail.com>
Message-ID-Hash: MXRW5ZPTP45A2BJ4V6AV3U5A6DQPBGGP
X-Message-ID-Hash: MXRW5ZPTP45A2BJ4V6AV3U5A6DQPBGGP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Spacing for IQ Calibrations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MXRW5ZPTP45A2BJ4V6AV3U5A6DQPBGGP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzAvMTAvMjAyMyAyMDoyNSwgQmlsbCBEb3dlciB3cm90ZToNCj4gSGVsbG8sDQo+DQo+IFdo
YXQgZG9lcyBFdHR1cyByZWNvbW1lbmQgZm9yIHRoZSBmcmVxdWVuY3nCoHNwYWNpbmcgZm9yIHRo
ZSBJUSBjYWxzIA0KPiBhbmQgaG93IGRvZXMgdGhlIFNEUiBhcHBseSB0aGUgY2FsaWJyYXRpb25z
IHRvIHRoZSBTRFI/DQpUaGV5J3JlIGFwcGxpZWQgdG8gdGhlIERVQy9EREMgbWFjaGluZXJ5IGlu
IHRoZSBGUEdBLCBiYXNlZCBvbiB5b3VyIA0KdHVuZWQgZnJlcXVlbmN5Lg0KPg0KPiBEbyB5b3Ug
cmVjb21tZW5kwqBhIGNhbGlicmF0aW9uIHNwYWNpbmcgb2YgTnlxdWlzdCBzbyB0d2ljZSB0aGUg
DQo+IGJhbmR3aWR0aCBmb3IgdGhlIGZyZXF1ZW5jeSBzcGFjaW5nPw0KSSB0aGluayB0aGF0IHdv
dWxkIGRlcGVuZCBvbiB0aGUgaGFyZHdhcmUgaW4gcXVlc3Rpb24uwqAgSS9RIGNvcnJlY3Rpb25z
IA0KYXJlIGRlc2lnbmVkIHRvIGNvbXBlbnNhdGUgZm9yIHNsaWdodGx5LWltcGVyZmVjdA0KIMKg
IHBoYXNlIGFuZCBhbXBsaXR1ZGUgYmFsYW5jZSBpbiBjb21wbGV4LWJhc2ViYW5kIG1peGVycy7C
oCBEaWZmZXJlbnQgDQpoYXJkd2FyZSBmYW1pbGllcyB1c2UgZGlmZmVyZW50IG1peGVycywgd2l0
aCBkaWZmZXJlbnQNCiDCoCBkZWdyZWVzIG9mIHBoYXNlL2FtcGxpdHVkZSBpbWJhbGFuY2UgZGVw
ZW5kaW5nIG9uIHdoYXQgdGhleSdyZSBiZWluZyANCmFza2VkIHRvIGRvLg0KPg0KPiBUaGVuIGhv
dyBkb2VzIHRoZSBTRFIgYXBwbHkgdGhlIElRIGNhbD/CoCBGb3IgaW5zdGFuY2XCoGlmIEkgY2hp
cnAgDQo+IGFjcm9zcyBhIGJhbmR3aWR0aCBkb2VzIHRoZSBTRFIgcGljayBhbmQgSVEgY2FswqBu
ZWFyIHRoZSBjZW50ZXIgb2YgdGhlIA0KPiBiYW5kIG9yIGludGVycG9sYXRlIGJldHdlZW4gdHdv
IGNhbGlicmF0aW9uIGZyZXF1ZW5jaWVzPw0KSUYgeW91J3JlIGNoaXJwaW5nIGluIGJhc2ViYW5k
LCBpdCB3aWxsIGJlIGFwcGx5aW5nIGNvcnJlY3Rpb25zIGJhc2VkIA0KcHVyZWx5IG9uIHlvdXIg
dHVuZWTCoCBmcmVxdWVuY3kuwqAgQW55IHRpbWUgeW91IHR1bmUsIGl0DQogwqAgaW50ZXJwb2xh
dGVzIHRoZSBjb3JyZWN0aW9ucyBiYXNlZCBvbiB0aGUgSS9RIGNvcnJlY3Rpb25zIHRhYmxlLiBC
dXQgDQppZiB5b3UgaGF2ZSBhIHN3ZXB0IGJhc2ViYW5kLCBpdCBoYXMgbm8gaWRlYSB0aGF0IGlz
DQogwqAgZ29pbmcgb24uwqAgRm9yIGJyb2FkLWJhbmQgbWl4ZXJzLCBjb3JyZWN0aW9ucyB1c3Vh
bGx5IGRvbid0IGhhdmUgdG8gDQpiZSBzdXBlci1maW5lLWdyYWluZWQuDQoNCg0KPg0KPiBUaGFu
ayB5b3UgZm9yIHlvdXIgaGVscCwNCj4NCj4gQmlsbA0KPg0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
