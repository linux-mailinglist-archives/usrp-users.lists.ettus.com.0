Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA519FFD75
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 19:10:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BDDB383555
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 13:10:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735841441; bh=zcxgOpj0Y3agIAg1NvYhhkUwNhwS2dw5R+Eq6K9h9R4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zWp9+m8CsfXo1vKKVEA2gI1VevFMSvaXQQZbIkGhjb9hqz7dxbWDEb5IyKlG1XjDt
	 KPDy6ux74qMnrVSeFbQ673UYaBh4siSk2AJmSOtl+ksHWZT+AsXqrJ8nqYgfJaY7/s
	 vg1tnXUnODmq7ZqNDCvYcjUarVKginsBFle/3iFx9r3YsBMpUTBVqi6wLexfuz6uAQ
	 CtL6IgR0jzruAMTorfHMcJIQy2/U5oPNUnjsMa8HEHud3X4fJEd0cRc1Z8ilvtuJWm
	 HmvoJwQcuq8CyCNl65QYhEHpfCA5ce/Fgsqx5nB2mmTUP4yiiO3K7u27n8Y3qKbnHF
	 Qkz1XQVD1WeJA==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E5BC7385967
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 13:10:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="daMwgmVm";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-46772a0f85bso94784391cf.3
        for <usrp-users@lists.ettus.com>; Thu, 02 Jan 2025 10:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735841434; x=1736446234; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0HZIrG8n7IMXJOBXUoCg2jFi6QCCRNXWLofa96UuTqo=;
        b=daMwgmVmE29kW1q5WVIE2h7O/HXFF4SvK6UcZS0K83mBUC19TmMFq+37sJJhAopM3Q
         sTauIBHoVrm7z98S6Y5QdfCZQHj4FXnwfc/pqP27q1yIxxwMe70T26H32MuqiTMxekYU
         hL4ds71Aawh6R6fav7mlyghg8H9SgGM2m2sXsRFvZOYYoAWa2Kbun28Dmv+9UGB8DR0d
         1+zmQ7zClCJ8h5Mq60mx9kOpy4bH/Gif93sfMlJvI3/KNfobTK8prhhSXeeCv22CcWOg
         NYLyv5mjpl/xhCbZd12W+anY6qlt4Xt6Z9rnLpoKZ/FcJnDyq5AVLCt/V/9px81w0gvA
         9zVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735841434; x=1736446234;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0HZIrG8n7IMXJOBXUoCg2jFi6QCCRNXWLofa96UuTqo=;
        b=H244s34gWBKQAB7nRe4fuTsz9+9l5y26Ar4lX3BssPT4vEhlo9rY9dS6RaFeF82qo8
         BetmxjWi23QzBCPh2ZRmBp0NRpJEAKjftqpLd/A6bmQLIKSe91P2BMkdCce1LTnGnD8r
         ymOvWapJwqQfAQeiauNA9lWA0TbZ6ZPTBuP6qyk15m+yAYkAa0b9xu7o+ijbgFWLEFH7
         f9z2v/kITTJXsQamJN6piOerLg6dBCTBdFWxxoTgaX0vm03j4STwU7gQBzyIqnRcm9Zo
         8Hqnn4Cu3+cl5fg/xWq63RINwSrmn1+KWpKrPqEaed2XjdImCvz05dUgl9Ml4OSz0jYT
         PRQg==
X-Gm-Message-State: AOJu0YyZwqHxkDWPHhf3FQLFq8WdOUItg4ZJ2ULPdYjTHFEqO6DZHNE9
	6g4q+vN68JExdt9NjYpVZiZud61NlzyXlqWrneEyb3qh2Gph8NLtY2ZSzg==
X-Gm-Gg: ASbGnct8pHcWyKBWHZFXBwz9BrHUn1TrBzODHP3tTXrIcFFuvtHjPBzwi3PL0Hr03lp
	WhkPlCTHL5/AP9TinibXfJL0i1xOYMwaJ4DeZhHk5f79w9PpupnRTKBnYxQYG9RgsPF2tGQ5cfo
	qdHwCS8vClebafZkedcuk2zkCwJINiswAz3LazhbjxGH7dP+WAR7O9l8Jsy1tWIE8Y/nNSwr6Ue
	5rfkWjPCGYiX4txFPn7a3wsxnrVU/aF9I9M9CRtoEd3i/avOEkdY2idqFtO2dbzxnM=
X-Google-Smtp-Source: AGHT+IGvwIQTHvyCBeWJeualsM4fyqI8ftihwX4Nvs3mq7ZkY4N72xdPSqYjm5LtjuwTEAZR1LRpmg==
X-Received: by 2002:a05:622a:302:b0:467:7ff3:e4bf with SMTP id d75a77b69052e-46a4a9a3e7emr791005501cf.51.1735841434034;
        Thu, 02 Jan 2025 10:10:34 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-46a3eb2c81dsm138117931cf.84.2025.01.02.10.10.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 10:10:33 -0800 (PST)
Message-ID: <98952581-8e30-486b-9e9d-eafdf2a42445@gmail.com>
Date: Thu, 2 Jan 2025 13:10:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
Message-ID-Hash: UZCIUJO7FKRNGCTGOD7JTPH2DYQTSKVP
X-Message-ID-Hash: UZCIUJO7FKRNGCTGOD7JTPH2DYQTSKVP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running user application in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZCIUJO7FKRNGCTGOD7JTPH2DYQTSKVP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDIvMDEvMjAyNSAxMjo1NiwgU2FrdGhpdmVsIFZlbHVtYW5pIHdyb3RlOg0KPiBIaSwNCj4N
Cj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlIHVzZXIgY2FuIHJ1biBhIGN1c3RvbSBsaW51eCBhcHBs
aWNhdGlvbiBvbiB0aGUgDQo+IEFSTSBjb3JlcyB0aGF0IGNhbiBvZmZsb2FkIGNlcnRhaW4gdGFz
a3MgdG8gdGhlIFBMPyBvciBkb2VzIHRoZSBSRk5vQyANCj4gY29yZSBpbXBsZW1lbnRhdGlvbiBh
bGxvdyBhIFJGTm9DIGJsb2NrIHRvIGludGVyYWN0IHdpdGggYW4gDQo+IGFwcGxpY2F0aW9uIG9u
IHRoZSBQUyB2aWEgdGhlIEFYSSBpbnRlcmZhY2U/DQo+DQo+IFJlZ2FyZHMsDQo+DQo+IFNha3Ro
aQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tDQpZb3Ugc2hvdWxkIGJlIGFibGUgdG8gcnVuIFVIRC11c2luZyBhcHBsaWNhdGlvbnMg
b24gdGhlIEFSTSBvbiB0aGUgWDQxMCwgDQpqdXN0IGxpa2UgYW55IG9mIHRoZSBvdGhlciBwbGF0
Zm9ybXMgdGhhdCBwcm92aWRlDQogwqAgYW4gZW1iZWRkZWQgQVJNIENQVS7CoCBIT1dFVkVSLCB0
aG9zZSBBUk1zIGFyZSBvbmx5IGR1YWwgY29yZSwgDQp0eXBpY2FsbHkgKEkgZG9uJ3Qga25vdyBm
b3Igc3VyZSBvbiB0aGUgWDQxMCksIGFuZCB0aGV5DQogwqAgY2Fubm90IGJlIGV4cGVjdGVkIHRv
IHByb3ZpZGUgaGlnaC1iYW5kd2lkdGggc2FtcGxlIHN0cmVhbXMgDQppbnRvL291dC1vZiB0aGUg
cmFkaW8uDQoNCkkgZG9uJ3Qga25vdyB3aGV0aGVyIHRoZSBQeXRob24gQVBJIGZvciBVSEQgaXMg
aW5zdGFsbGVkIGJ5IGRlZmF1bHQgb24gDQp0aGUgWDQxMCBzeXN0ZW0gaW1hZ2UsIGJ1dCB0aGF0
IHdvdWxkIGJlIGFuDQogwqAgZWFzeSBwYXRod2F5IHRvIGRvIGluaXRpYWwgZXhwZXJpbWVudHMu
DQoNClJlYWxseSB0aG91Z2gsIGZvciB0aGVzZSBoaWdoLWVuZCBib3hlcywgdGhlIEFSTSBDUFVz
IGV4aXN0IGxhcmdlbHkgZm9yIA0KaG91c2VrZWVwaW5nIGFuZCBsb2dpc3RpY3MgbWFuYWdlbWVu
dCBvZg0KIMKgIHRoZSByYWRpbywgdmlhIHRoaW5ncyBsaWtlIE1QTSwgZXRjLsKgwqAgVGhlIGZh
Y3QgdGhhdCB0aGV5ICpjYW4qIHJ1biBhIA0KdXNlciBhcHBsaWNhdGlvbiBpcyBqdXN0IGtpbmQg
b2YgYSBzaWRlLWVmZmVjdCwgYW5kDQogwqAgdGhhdCBhcHBsaWNhdGlvbiB3b3VsZCBuZWVkIHRv
IG9mZmxvYWQgbmVhcmx5LUFMTCBvZiBpdHMgYWN0dWFsIERTUCANCndvcmsgdG8gUkZOb0MsIHNp
bmNlIHRoZXNlIEFSTSBDUFVzIGFyZSBub3QNCiDCoCBwYXJ0aWN1bGFybHkgY2FwYWJsZSBpbiB0
ZXJtcyBvZiBjb21wdXRhdGlvbmFsIGFuZCBtZW1vcnktYmFuZHdpZHRoIA0KcGVyZm9ybWFuY2Uu
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
