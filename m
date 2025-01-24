Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FCDA1B059
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 07:19:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A25FA38586F
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 01:19:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737699593; bh=eiSV8+rasrJcBu7wBExqmwzVgEISQl60NlzedeyQ+Q0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=meIKOAHZLF6Q91S2Mfw1S8tlsBwQd9/vFTzO+ljErUtVW3Py+ynGXS83qDaC5KQYb
	 FVWqUCG6JOJKoJRJt1XW5TxTmYSupVTxLiY2t65xmtUJmKLBhtkBIFvzs+byXfMTOT
	 FLsFiB5Ckcp1ZNAD8iLcwUKkgznZOGM0VsYDQoKIdEqWZpNhV9/Xe+4Lf0QrizLOcY
	 xCabaNLByDNn97OJQGH3xwdtjQb9CvdirYnfs1eC5y//1xxiPcLnOuMlv+AC4n0ku6
	 5s3nbnOeGm3iIFXfLYCUUING8v6ANjf850TFJhUjWajsxFDLRhMmhLDWHoHmiK5Jzr
	 QIIEOQZR5Sldg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id F1827385810
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 01:19:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kRSSTDSW";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-46df3fc7176so17148661cf.2
        for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 22:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737699552; x=1738304352; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hLSaQTXhT4cL4/3BExs306nuoOdZVIKA5aXJFJTjPEY=;
        b=kRSSTDSW0iMLL24ZpQUVky6RY/D29FPe8rx7LpMI92t31fJZMqwdMIzc359ZvQjxYy
         ScGIi7dWIQcWQ37Wdl014Ic/GofocuiM7JWRlr/PT4XNh6r9EyrDlC4ur13+vYKqg80J
         na175zQNEcb2Qk48ob6HrHq+MiG7lOwkD4VizxBZSZA09dyGiMMMow94d9s4T0tECQAb
         bf673OnzgJuZXLrfQuhAf6lXrbNTXE6uumDhJOBSjyzpT3l5ulPhUTpIPkMlYsL+hq8p
         QboKnc2F0bmpi1pep1qkvzsSdwyVPTx3Odkow7qlykpVBiHEq84kgNhc78Vatu4mEUC3
         tlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737699552; x=1738304352;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hLSaQTXhT4cL4/3BExs306nuoOdZVIKA5aXJFJTjPEY=;
        b=sqdI3FwrhTkQ8iTi85cQAJMj3I6cX7cewPVx/zAPepm6Gz/vvb/pfMQAOp/oW5329q
         H7APrwjL/M7QNgtLTiRJZNMSds+Ry6SRxR6MFnFASmWCaI1w8aGw3s+vGnkvSFoyq8P5
         xBcFHwUtw/22+jxlho9LoAOs0QWJrPX5JqYwWQDLE0fXdkdNLQnqyqxfoTLVYV6wAQSw
         xYtFsxdX3cX79KKJUBcmnW2cylnQk49+KYKW37DJ2lPuWtuMoBw3jj7N8BjiN5nzeQuu
         V0Cs3q+U+MS5ujfQAEJWjkjYVBfSa9yKoZZ7ko6Y8eBb/m5MpJyEFcEXFBIHdhRWJRYB
         AI+g==
X-Gm-Message-State: AOJu0YyEkG6VN3S+Oz/BjGdTXDcaDIW8pMFG4Fi0eq5bkHwFDxSduxhT
	1yplFjziZ7iih1AJIhiBDgJ+qbSnQqpNGSJUTDiV0hDbuPEOeJ/a
X-Gm-Gg: ASbGnctCfSFz2BRnHkO3EEuhp8j8uWyOmU/X+0U5B7cLY9MAqVaj+mPFkHXE1qH72pv
	tqAwHeuEcyUaSalnX+gjMc/3058Ggo+Pp9+VaVz07hWW90KJopnQkbfHQxdCMxmOA2IjWIa5k3+
	29eQxo456xXBMim8WLoA/hnCjDfRNErGl/hKSkuUPG7GNY5ggqZr7E22mrBeD9WNKNhEJyEIgpA
	hrNxy6m15r48j6eRr56I28KBMeOJfsRJNZvLHgE0jx1Zm/yRDzkc/KUApU9sFLikJAcFhYNRnOP
	cg5ST8OBkBSYYny2ZtBt07Djns762WLl4XYsYMU0LtUWhEoS+53oy1LF2Ge/zxS7gwMq1sY8kzW
	JRZM=
X-Google-Smtp-Source: AGHT+IEiKLHQWTj3LQJKkrosJhfGvmdNlVX0gyyTp2S73Y2IGJoUImkQapxJK+6LnSlOv5HEtMC0DQ==
X-Received: by 2002:a05:6214:1248:b0:6d8:850a:4d69 with SMTP id 6a1803df08f44-6e1b21679f9mr317958126d6.1.1737699552327;
        Thu, 23 Jan 2025 22:19:12 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e2058c54e4sm5659876d6.115.2025.01.23.22.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 22:19:11 -0800 (PST)
Message-ID: <1cf5285b-420b-49ef-9fa0-e49e36bf190b@gmail.com>
Date: Fri, 24 Jan 2025 01:19:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: kavinraj@atindriya.co.in
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
 <4887de4b-39c0-444b-8dbd-26b91fc30808@gmail.com>
 <d575f299c7786b09057001c0b6b20599@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d575f299c7786b09057001c0b6b20599@atindriya.co.in>
Message-ID-Hash: KFRYZIPDMRUH4GEQBL22H2YFW2FBGT7K
X-Message-ID-Hash: KFRYZIPDMRUH4GEQBL22H2YFW2FBGT7K
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KFRYZIPDMRUH4GEQBL22H2YFW2FBGT7K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDEvMjAyNSAwMToxNCwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqAgSW4gdWhkX3J4X3N0cmVhbWVyX2lzc3VlX3N0cmVhbV9jbWQocnhfc3RyZWFtZXIs
JnN0cmVhbV9jbWQpOyANCj4gZnVuY3Rpb24gc2VnbWVudGF0aW9uIGZhdWx0IGlzIGNvbWluZy4g
U28sIGhvdyB0byByZXNvbHZlIHRoaXMgZXJyb3I/DQo+DQpZb3UgYXJlIHBhc3NpbmcgaXQgcGFy
YW1ldGVycyB0aGF0IGFyZSBpbmNvcnJlY3QgLS0gZWl0aGVyIHRoZXJlJ3MgYSANCnByb2JsZW0g
d2l0aCB0aGUgcnhfc3RyZWFtZXIgcG9pbnRlciwgb3IgJnN0cmVhbV9jbWQNCiDCoCBpcyBpbmNv
cnJlY3QuwqDCoCBZb3UncmUgYmFzaWNhbGx5IGFza2luZyBob3cgdG8gZGVidWcgYSBDIHByb2dy
YW0uwqDCoMKgIA0KSnVzdCBiZWNhdXNlIHNvbWUga25vd24tdG8td29yayBmdW5jdGlvbiByYWlz
ZXMgYQ0KIMKgIHNlZ2ZhdWx0ICppbnNpZGUqIHRoZSBmdW5jdGlvbiBkb2VzIG5vdCBtZWFuIHRo
YXQgdGhlIGZ1bmN0aW9uIGlzIA0KYnJva2VuLsKgIEZ1bmN0aW9ucyBnZW5lcmFsbHkgbXVzdCBu
ZWNlc3NhcmlseSAidHJ1c3QiDQogwqAgdGhhdCB3aGVuIHRoZXkgYXJlIGJlaW5nIHBhc3NlZCBv
YmplY3RzIG9mIHZhcmlvdXMgdHlwZXMgKHBvaW50ZXJzLCANCmV0YykgdGhhdCB0aG9zZSBwb2lu
dGVycyBhcmUgdmFsaWQuIElmIHRoYXQgYXNzdW1wdGlvbg0KIMKgIGlzbid0IGNvcnJlY3QsIHRo
ZW4gdGhlIGNhbGxlZCBmdW5jdGlvbiBjYW4gZmFpbCBiZWNhdXNlIGl0IChmb3IgDQpleGFtcGxl
KSBhdHRlbXB0cyB0byBkZS1yZWZlcmVuY2UgYSBiYWQgcG9pbnRlci4NCg0KVGhpcyBpcyB0aGUg
d2F5IEMvQysrIHdvcmtzLsKgIEl0IGRvZXNuJ3QgaGF2ZSBhIHJ1bnRpbWUgc3lzdGVtIHRvIGtl
ZXAgDQp5b3UgZnJvbSBkb2luZyB0aGlzLsKgwqAgVGhpcyBxdWVzdGlvbiBpcyBnZW5lcmljDQog
wqAgdG8gQy9DKyssIGFuZCBoYXMgbm90aGluZywgcGVyIHNlLCB0byBkbyB3aXRoIHRoZSBVSEQg
QyBsaWJyYXJ5Lg0KDQoNCj4NCj4NCj4NCj4NCj4NCj4NCj4NCj4NCj4NCj4NCj4gT24gMjAyNS0w
MS0yNCAwMTowNCwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4gT24gMjQvMDEvMjAyNSAwMDoz
Mywga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPj4+IEhpLA0KPj4+IMKgwqAgUmVj
ZW50bHksIEkgaGF2ZSBib3VnaHQgVVNSUCBCMjA1bWluaSBib2FyZC4gSSBhbSB3b3JraW5nIG9u
IGl0LiANCj4+PiBJIGhhdmUgZG93bmxvYWRlZCB0aGUgVUhEIGRyaXZlciBmcm9tIHRoZSB1YnVu
dHUgcGFja2FnZShzdWRvIA0KPj4+IGFwdC1nZXQgaW5zdGFsbCBsaWJ1aGQtZGV2IHVoZC1ob3N0
KS4NCj4+Pg0KPj4+IMKgwqAgV2hlbiB0aGUgYm9hcmQgaXMgY29ubmVjdGVkIHRvIHRoZSBQQyBp
dCBpcyBkZXRlY3RlZCB3aGVuIEkgZ2l2ZSANCj4+PiB0aGUgdWhkX2ZpbmRfZGV2aWNlcyBpdCBz
aG93cyB0aGUgc2VyaWFsLG5hbWUscHJvZHVjdCBhbmQgdHlwZS4NCj4+Pg0KPj4+IMKgwqAgU28s
IEkgaGF2ZSB3cml0dGVuIHRoZSBjb2RlIGZvciByZWNlaXZpbmcgdGhlIGRhdGEuIFdoZW4gSSBh
bSANCj4+PiBidWlsZCB0aGUgY29kZSBpdCBkb2Vzbid0IHNob3cgYW55IGVycm9yLiBXaGVuIEkg
cnVuIHRoZSBwcm9ncmFtIA0KPj4+IHNvbWUgQVBJIGZ1bmN0aW9ucyBhcmUgd29ya2luZyBmaW5l
LiB3aGVuIGl0IHJlYWNoIHRoZSANCj4+PiB1aGRfcnhfc3RyZWFtZXJfaXNzdWVfc3RyZWFtX2Nt
ZChyeF9zdHJlYW1lciwmc3RyZWFtX2NtZCk7IGFuZCANCj4+PiB1aGRfcnhfc3RyZWFtZXJfcmVj
dihyeF9zdHJlYW1lciwgYnVmZnNfcHRyLCBTQU1QTEVTX1BFUl9CVVJTVCwgDQo+Pj4gJnJ4X21l
dGFkYXRhLCBidXJzdF9kdXJhdGlvbiwgZmFsc2UsICZpdGVtc19yZWNlaXZlZCk7wqAgaXQgDQo+
Pj4gYXV0b21hdGljYWxseSB0ZXJtaW5hdGVzIHRoZSBwcm9ncmFtLg0KPj4+DQo+Pj4gwqDCoCBX
aGVuIEkgZGVidWcgbGluZSBieSBsaW5lLCBhZnRlciByZWFjaGluZyB0aGUgYWJvdmUgZnVuY3Rp
b24gaXQgDQo+Pj4gc2hvd3MgbGlrZSBObyBzb3VyY2UgYXZhaWxhYmxlIGZvciANCj4+PiAidWhk
X3J4X3N0cmVhbWVyX2lzc3VlX3N0cmVhbV9jbWQoKSBhdCAweDdmZmZmNzIyN2NmZSIgLsKgIFdo
YXQgbWF5IA0KPj4+IGJlIHRoZSBpc3N1ZT8NCj4+Pg0KPj4+IMKgwqAgQWxzbyBJIHdhbnQgdG8g
Y29uZmlndXJlIHRoZSBHUElPIHBpbnMgaW4gdGhlIGJvYXJkLiBGb3IgdGhhdCBJIA0KPj4+IG5l
ZWQgR1BJTyBiYW5rIG5hbWUsIENhbiB5b3UgZ2l2ZSBtZSB0aGUgR1BJTyBiYW5rIG5hbWUgb2Yg
dGhpcyBib2FyZD8NCj4+Pg0KPj4+DQo+Pj4gV2l0aCByZWdhcmRzLA0KPj4+IEthdmlucmFqLg0K
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQo+PiBUaGVyZSdzIGFsc28gYSAiZ3BpbyIgdXRpbGl0eSBpbiB0aGUgZXhhbXBs
ZXMsIHdoaWNoIGluY2x1ZGVzIGEgDQo+PiAiLS1saXN0LWJhbmtzIiBvcHRpb24uDQo+Pg0KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
