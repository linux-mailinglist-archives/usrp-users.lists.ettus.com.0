Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2FA50EAA
	for <lists+usrp-users@lfdr.de>; Wed,  5 Mar 2025 23:37:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DCF9385C06
	for <lists+usrp-users@lfdr.de>; Wed,  5 Mar 2025 17:37:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741214274; bh=Qk+Oiph6zPDeDu6FgCJfaWwvsQNAXQbD3Ij+G/jXMjQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SI73DRT6UV8BSSC7N9zTpxzV3fnvFkD74JVVcyQUzr59M2yPdUoZ/0YfnsbNavM9K
	 QjGmYxRAiafLozXyIo7rF7yWkfEQsVV0834v/ogJPI42HvmJ+AvwNsV2WYqFpBywCU
	 S+q1lvV/30cATyViXOQLTX+97KXXj9VplcJK0qUNLT/Bp5iczV3aCJQqTmjoOzjpbO
	 v8d8fGlcWWh0puwqWrNc+x8V+vsvLHgM6oVNyTE6Qb56czh8eB1QfPBM5x6UXzkR8h
	 GP4Bv28WxTZlEYKjNSiBb1vC+KL4t7s52wtzE9P4yhtgPEFpJdejzQREJIH4xwsPVE
	 LVBe0j0vXTi1Q==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FF7C3855E1
	for <usrp-users@lists.ettus.com>; Wed,  5 Mar 2025 17:36:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RAkjW4sE";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c04df48a5bso712385a.2
        for <usrp-users@lists.ettus.com>; Wed, 05 Mar 2025 14:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741214214; x=1741819014; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aKgmyBy20BT9YbFJH1CFDuC3vBNPD5rfZm5JObEmqes=;
        b=RAkjW4sEYstqsSDwP+n51Rz+CgqqJKvqX8m44GWEBLeAJ9wBBQfG7DE0UQzNONER8+
         cXj4SNh1/q/ZXihd65OCrWyWPwxRb2xKViRmcB4nfZ1ASZuaGvNIZ90kq7VyPT+eQ1Sf
         Rs0nL38FQT/IT1necRfODZKDtWoff7lCbmwRZIobFXzyBOAiAxvHsVbAcZBmD4r28/tH
         uhSVnXU0Qaj0pK2IyvtcJmCLBRNjJYIDdA7LuBwaLN+oSa8C2boE3eSfHGgZG2KVooeL
         s8CYsE7/azyofL3dyotTfAowbFng8wwqL1YAdPP+rPeI/oVGqbP4xDjw/nW3ID1XntKo
         Ek+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741214214; x=1741819014;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aKgmyBy20BT9YbFJH1CFDuC3vBNPD5rfZm5JObEmqes=;
        b=LBII6ttRyiD2SSB8N4Cj0PHOwrF7TPUL93fPUPt+957Xiwsh02cHKBmkKKK/k7C51T
         db672nt6E+IJLKnf9++p0BKBCrZrTqAtY9O1qqdmaXA6aF/3mZXXAoBz9hx+z93SgVaN
         ZCgyJ/KZEGctL74sZ+uo0X9u+UJ3xSpEzkWsIjZR7N78f+Qf5dB2l0qm7VMFqkTWZ5aB
         KOJQ5Hka8Vru4tV+RE69MR4hZKCJFp6YZ3JDgawhnHaTG1VVmFZBH636sySWwtpnmZhk
         g7uY43PNTav3YLqoKtb+Q1dfMrLEjND3pbGgset6pshyxEZE2VXz9ZH3/FUxEQktZWMy
         GAyQ==
X-Gm-Message-State: AOJu0YxIgMpbE56fs+Rab7e0qBbsbkYEYVafri/oXaSh+VEzqLrO62nM
	Fnw29y9vAfPR74onF8QgRI68chDGHJ4oxjZq8XMD+Nso9J3aYMtagfWgnXPC
X-Gm-Gg: ASbGncsAmW4ZCUK7J4WkdsHLN61FeC7Yb44EjzzmtrQ9LVAAJor3Rmlptd/oLb9jFfi
	OtWH8m8jsZH3uM0I0NDdz6cuzrlu4Tzhbv4MBRqKk8bMw5I11fsXxQxRF0gyRTSjc0j1fEsFYbe
	MGkVHedQ5yBV7ot7aAYIJUnq54R0v8Po9xuBOrr5f6NY2bO1UqZ2hpJjShu5J9jyX5Ig6Le0UUY
	DrWmXU3SlmKa6jLxOtbeNdAP1aCW0NpNZa6XMnN0lUiBW4byV/m1z8w+w2ZhWFCZRU+kGmrIOHF
	qcSdKif9uQL5PvVtI0xUcThLR5NtYsP9GxOp2DEgqiu6TW+rmNWhQl8=
X-Google-Smtp-Source: AGHT+IEtvEcnzwu5SE8bHaj10/D/PKI3r855IyIcrAO3uu5xh88igfpyRLVAygnODT+xyM+JkVl27g==
X-Received: by 2002:a05:620a:8807:b0:7c0:7818:8554 with SMTP id af79cd13be357-7c3d8ee1fa2mr946710585a.36.1741214214309;
        Wed, 05 Mar 2025 14:36:54 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c3e5385d12sm2164585a.55.2025.03.05.14.36.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 14:36:53 -0800 (PST)
Message-ID: <d4fb79df-b84a-4e90-a6cb-0dd5303b34b3@gmail.com>
Date: Wed, 5 Mar 2025 17:36:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8@lists.ettus.com>
Message-ID-Hash: VIUTVALGYTXTNEZMKPHDNQVPV7PGYOLS
X-Message-ID-Hash: VIUTVALGYTXTNEZMKPHDNQVPV7PGYOLS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem when working with USRP 200b mini in TX mode
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VIUTVALGYTXTNEZMKPHDNQVPV7PGYOLS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMDMvMjAyNSAwODoxNywgYWJsZTU1NDFAb3hvYnJvd3Nlci5jb20gd3JvdGU6DQo+DQo+
IEkgcmVjZW50bHkgc3RhcnRlZCB3b3JraW5nIHdpdGggdGhlIFVTUlAgMjAwYiBtaW5pIGluIFRY
IG1vZGUuIEkgc2V0IA0KPiB1cCB0aGUgaW5wdXQgZGF0YSgpLiBXaGVuIHNldHRpbmcgdGhlIHR4
X3JhdGUgYmVsb3cgNTYsIGV2ZXJ5dGhpbmcgDQo+IHdvcmtzIGZpbmUsIHRoZXJlIGlzIG5vIGRh
dGEgbG9zcywgdGhlIHRyYWZmaWMgaXMgZ29vZCAoaXQgaXMgdGFrZW4gDQo+IGZyb20gdGhlIGZp
bGUpLCBidXQgYXMgc29vbiBhcyBJIHNldCB0aGUgdHhfcmF0ZSB0byA1NiwgSSBoYXZlIGFuIA0K
PiB1bmRlcmZsb3coVSkuIEkgc3RhcnRlZCB0byBzdHVkeSB3aHkgdGhpcyBoYXBwZW5zLiBUaGUg
VVNSUCBpcyANCj4gY29ubmVjdGVkIHRvIGEgVVNCIDMuMSBwb3J0LCB3aXRoIGEgY29ubmVjdGlu
ZyBjYWJsZSAoYWxzbyB3aXRoIGEgZ29vZCANCj4gdHJhbnNmZXIgcmF0ZSkuIEluIHRoZSBkb2N1
bWVudGF0aW9uLCB0eF9yYXRlIGlzIHN1cHBvcnRlZCBhdCA1NiwgaWYgDQo+IHlvdSBzZXQgbW9y
ZSwgaXQgcmVzZXRzIHRvIDU2LiBJIGRvbid0IHF1aXRlIHVuZGVyc3RhbmQgd2hhdCBJJ20gZG9p
bmcgDQo+IHdyb25nLCBtYXliZSBJIGZvcmdvdCB0byBzcGVjaWZ5IHNvbWV0aGluZyBvciBuZWVk
IHRvIGVuYWJsZSAoZGlzYWJsZSkgDQo+IGl0IHNvbWV3aGVyZSwgSSBob3BlIGZvciB5b3VyIGFk
dmljZS4gVUhEIDQuOC4wLjAsIEJvb3N0ICsrIDEuODcuMCANCj4gZHJpdmVycyAsIE9DIFdpbmRv
d3MgMTAuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NClByZXN1bWFibHksIHlvdSBtZWFuIDU2IG1lZ2FzYW1wbGVzL3Nl
Yz8NCg0KVGhlICdVJyBpbmRpY2F0aW9ucyB0aGF0IHlvdXIgY29tcHV0ZXIgaXNuJ3Qga2VlcGlu
ZyB1cCB3aXRoIHRoZSByYWRpb3MgDQpkZW1hbmQgZm9yIHNhbXBsZXMuwqDCoCBUaGUgcmFkaW8g
c3VwcG9ydHMgYSBtYXhpbXVtDQogwqAgc2FtcGxlLXJhdGUgb2YgNTYgbWVnYXNhbXBsZXMvc2Vj
Lg0KDQpXaGVyZSBhcmUgeW91IHB1bGxpbmcgdGhlIHNhbXBsZXMgZnJvbT/CoCBBIGxvY2FsIGZp
bGU/wqAgQXJlIHlvdSANCmNvbnN0cnVjdGluZyB0aGUgc2FtcGxlcyBpbiByZWFsLXRpbWU/DQoN
CllvdSAqbWlnaHQqIGdldCBiZXR0ZXIgcmVzdWx0cyB3aXRoIHNldHRpbmcgYcKgIGRldmljZSBh
cmd1bWVudCBvZiANCiJudW1fc2VuZF9mcmFtZXM9MjU2Iiwgd2hpY2ggY2FuICpzb21ldGltZXMq
IGhlbHAuDQoNCklmIHlvdSB1c2UgImJlbmNobWFya19yYXRlIiwgaXQgd2lsbCB0ZWxsIHlvdSBp
ZiB5b3VyIGNvbXB1dGVyLCB3aGVuIA0KZG9pbmcgYWJzb2x1dGVseSAqTk9USElORyogd2l0aCB0
aGUgc2FtcGxlcywgY2FuDQogwqAga2VlcCB1cCB3aXRoIHRoZSBzcGVjaWZpZWQgc2FtcGxlIHJh
dGUuDQoNCllvdXIgY29tcHV0ZXIgaGFzIHRvIHdvcmsgaGFyZGVyIGFuZCBoYXJkZXIgdGhlIGhp
Z2hlciB0aGUgc2FtcGxlIHJhdGUuwqAgDQpUaGUgYW1vdW50IG9mICJ3b3JrIiB5b3VyIGNvbXB1
dGVyIGhhcw0KIMKgIHRvIGRvIGlzIHByb3BvcnRpb25hbCB0byB0aGUgcHJvZHVjdCBvZiB0aGUg
ImluaGVyZW50IHBlci1zYW1wbGUgDQpjb21wdXRhdGlvbmFsIGNvbXBsZXhpdHkiIFggc2FtcGxl
LXJhdGUuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
