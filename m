Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0339FFFC0
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 20:59:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C2923861F5
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 14:59:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735847988; bh=OA9W6dNscktHsPhN3Pladnbsz4lgNQsGf2vZyeXfBAQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V+WNeKnuagxwk+a46XoYgxbsefRup8i7cwgnJ9IhXKJ27yAKOdW3tI7KmnyjRxYHL
	 EV0XQUk7BP1lmLaSPzNB7erBquOOLwEkRiTgc6AjyxhNwwpjFQdtAGNmmlb5JogPcr
	 Om1zOSCb1r+9yTt1GyWf4BxZe0FYLA2fE1Nkfo9IRcKqhIHPk4fe4p7FM7nSW1T6ZF
	 cgkEoBNTl0sS5LA3Vqyjv70BfVBgNBM3ZQrCsXcAFTMIGRu958hDp7YL9bQJt8foD2
	 lEcaUrcZsa4AAh1jEA5uDZo04zOQ5A0AFb9GlNpYWxNFqtCopYxIox7sC+xOao34Sj
	 DVBOBrfW9hL9g==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 5001A385EFA
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 14:59:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ij7BdRjQ";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-46792996074so114786861cf.0
        for <usrp-users@lists.ettus.com>; Thu, 02 Jan 2025 11:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735847981; x=1736452781; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ohqdevJYFYf/XFAsaDEQ6vBWV6uTdAJEyBG7VLT5AL8=;
        b=Ij7BdRjQchqarppVb2ukhnifDqRn5iULwG4SFZ5URBcnBhApBSD1rLNSmmf0tpCb8o
         YE0cxO20VncdgScUuvkmFBxnQpTd9ADcrR0tgYUbzcbUwVjlWzWxGc2Pn0syl5QhU9tW
         RQTzrxKjhngNgPTYxHG4TrA6wkKNJS1dplJ88/4xJW/DPBviBJqCiMkxljgFuN+Y5Scr
         TCg0Kcg2xdVBuKp6wqb83MqfgavrKAEBwve/Vh+mDRX8ylHH2+1s+mEo+Scq2NoCHO/2
         F4N9fg68zc0tv+oK+cTxjXIm/AAnGVL4ZrxV+z7JXuoh3sDtuy2OAwsgUnu26AA4RTLy
         xM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735847981; x=1736452781;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ohqdevJYFYf/XFAsaDEQ6vBWV6uTdAJEyBG7VLT5AL8=;
        b=deB6A5DhWvQPMPIcF0MtpJUb06NDWtAIvIX6sCuZ3jNCQuYb4FSnnGZURMU7aS7tuH
         rMtMhebOctt61xtDiQCiO/v+PkLBY+9RzbHmWJcsx93sOinOgHNMaJCl/zjdA2VaujqV
         B6FirAYzvLMG6uWLUJtoDJUU10VudPAWEKULPUvHJOF+Mh7Bl/DSxUT7c9+g/vF1l0jR
         Ds+Gron7ty+0aXc45fQ1lhoFNWxQmxu3zuulgxl0tDC8/ZqhGgGnimMvCOIirZgBMw9E
         bRNu9FbOPyLV7irwl/+bFOeCTSumQWKk5h6J2J68gWeAz11PovfC339Ymn0PuOLAEFWu
         4wbw==
X-Gm-Message-State: AOJu0YyFPnaYdi0Tjp6+bNVDT5QURvliUWWX+ARGCFCvEl+650xLFG+N
	RRcIfeOfFV2d/sASICBfhgXxlFp31To5QIox8qQbb02JZLqVd4wpF4t4Hg==
X-Gm-Gg: ASbGncvE4IamlMODJBJZkXaXbmn5PDe2+usP3scVOPe4gF2JSZlxjCuM1c1OEnPmVce
	8hYHDCNGBIK/0k2qBunchgq0CyGfRZ/Kwond/Htys6FFype9tCOs3231JdgUVl80gYsRh27R3Bm
	fiN/Zt2TUJHaLPJ4n1EQH20K3H1QkMBIBN+b5fOm5crbYuxW4akC2riILbtcrdwIPSf184r+li5
	FI7XzUjmJjuOyEBR1zvLHl7TLpZ2uoGjzewhJiivoh1a4v60N6D+K7G2HU42Xi4Icc7WFJVmxbN
	2KqfoWZ7nPg3r9mMJhxQ9054ujVq7CYdIcgD9xV46GyVS0V+WbhrMa0=
X-Google-Smtp-Source: AGHT+IGRXAh20XN2BFCVPW23FBQqrPpMLCAYt5TNhml9xkPbMz/GcQFv+lRDyNKUT+Kk0Q+xWQMxKw==
X-Received: by 2002:a05:6214:1d28:b0:6d8:7ed4:336a with SMTP id 6a1803df08f44-6dd2339daecmr678953436d6.31.1735847980002;
        Thu, 02 Jan 2025 11:59:40 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6dd1810ec4asm133687966d6.50.2025.01.02.11.59.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 11:59:39 -0800 (PST)
Message-ID: <53f12a98-e13f-4395-b69d-d839548c7979@gmail.com>
Date: Thu, 2 Jan 2025 14:59:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
 <98952581-8e30-486b-9e9d-eafdf2a42445@gmail.com>
 <d41b9e8b-78d8-44ec-b382-b879ca9caa03@sakthi.me>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d41b9e8b-78d8-44ec-b382-b879ca9caa03@sakthi.me>
Message-ID-Hash: DKEAMDI7X7KYDJ7DQK4G3UE7FI27HEVY
X-Message-ID-Hash: DKEAMDI7X7KYDJ7DQK4G3UE7FI27HEVY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running user application in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKEAMDI7X7KYDJ7DQK4G3UE7FI27HEVY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDIvMDEvMjAyNSAxMzo1NiwgU2FrdGhpdmVsIFZlbHVtYW5pIHdyb3RlOg0KPiBIaSBNYXJj
dXMsDQo+DQo+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXJzLiBJIGFtIGxvb2tpbmcgdG8gb2ZmbG9h
ZCBhbGwgdGhlIERTUCB3b3JrIHRvIA0KPiB0aGUgUkZOb0MgYW5kIGhhdmUgdGhlIENQVXMgZG8g
dHJpdmlhbCB0YXNrcyBsaWtlIHNlcXVlbmNlIGdlbmVyYXRpb24gDQo+IHNvIHRoYXQgSSBkb24n
dCBoYXZlIHRvIHdyaXRlIEhETCBmb3IgZXZlcnl0aGluZy4gSSBhbSBzdGlsbCBub3QgDQo+IGVu
dGlyZWx5IHN1cmUgb2YgaG93IHRoaXMgY2FuIGJlIGRvbmUgYnV0IEkgZm91bmQgYSBzb2Z0d2Fy
ZSANCj4gZGV2ZWxvcG1lbnQgZ3VpZGUgZm9yIEUzMTAgDQo+IChodHRwczovL2tiLmV0dHVzLmNv
bS9Tb2Z0d2FyZV9EZXZlbG9wbWVudF9vbl90aGVfRTMxMF9hbmRfRTMxMikgd2hpY2ggDQo+IGxv
b2tzIGxpa2Ugc29tZXRoaW5nIEkgd2FudCB0byBhY2hpZXZlIHNvIGl0J3MgYSBnb29kIHN0YXJ0
IEkgZ3Vlc3MuDQo+DQo+IFRoYW5rcyBhZ2Fpbi4NCj4NCj4gU2FrdGhpDQpJIHRoaW5rIHRoYXQg
dGhlIFB5dGhvbiBiaW5kaW5nIGxpYnJhcnkgZm9yIFVIRCAqSVMqIGluc3RhbGxlZCBpbiB0aGUg
DQpzeXN0ZW0gaW1hZ2Ugb24gdGhlIFg0MTAuDQoNCkdvIGludG8gUHl0aG9uMyBhbmQNCg0KaW1w
b3J0IHVoZA0KDQoNClRoYXQgc2hvdWxkIHdvcmsuDQoNCg0KPg0KPiBPbiAxLzIvMjUgMTM6MTAs
IE1hcmN1cyBELiBMZWVjaCB3cm90ZToNCj4+IE9uIDAyLzAxLzIwMjUgMTI6NTYsIFNha3RoaXZl
bCBWZWx1bWFuaSB3cm90ZToNCj4+PiBIaSwNCj4+Pg0KPj4+IEkgYW0gd29uZGVyaW5nIGlmIHRo
ZSB1c2VyIGNhbiBydW4gYSBjdXN0b20gbGludXggYXBwbGljYXRpb24gb24gdGhlIA0KPj4+IEFS
TSBjb3JlcyB0aGF0IGNhbiBvZmZsb2FkIGNlcnRhaW4gdGFza3MgdG8gdGhlIFBMPyBvciBkb2Vz
IHRoZSANCj4+PiBSRk5vQyBjb3JlIGltcGxlbWVudGF0aW9uIGFsbG93IGEgUkZOb0MgYmxvY2sg
dG8gaW50ZXJhY3Qgd2l0aCBhbiANCj4+PiBhcHBsaWNhdGlvbiBvbiB0aGUgUFMgdmlhIHRoZSBB
WEkgaW50ZXJmYWNlPw0KPj4+DQo+Pj4gUmVnYXJkcywNCj4+Pg0KPj4+IFNha3RoaQ0KPj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+PiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tDQo+PiBZb3Ugc2hvdWxkIGJlIGFibGUgdG8gcnVuIFVIRC11c2luZyBhcHBsaWNhdGlvbnMg
b24gdGhlIEFSTSBvbiB0aGUgDQo+PiBYNDEwLCBqdXN0IGxpa2UgYW55IG9mIHRoZSBvdGhlciBw
bGF0Zm9ybXMgdGhhdCBwcm92aWRlDQo+PiDCoCBhbiBlbWJlZGRlZCBBUk0gQ1BVLsKgIEhPV0VW
RVIsIHRob3NlIEFSTXMgYXJlIG9ubHkgZHVhbCBjb3JlLCANCj4+IHR5cGljYWxseSAoSSBkb24n
dCBrbm93IGZvciBzdXJlIG9uIHRoZSBYNDEwKSwgYW5kIHRoZXkNCj4+IMKgIGNhbm5vdCBiZSBl
eHBlY3RlZCB0byBwcm92aWRlIGhpZ2gtYmFuZHdpZHRoIHNhbXBsZSBzdHJlYW1zIA0KPj4gaW50
by9vdXQtb2YgdGhlIHJhZGlvLg0KPj4NCj4+IEkgZG9uJ3Qga25vdyB3aGV0aGVyIHRoZSBQeXRo
b24gQVBJIGZvciBVSEQgaXMgaW5zdGFsbGVkIGJ5IGRlZmF1bHQgDQo+PiBvbiB0aGUgWDQxMCBz
eXN0ZW0gaW1hZ2UsIGJ1dCB0aGF0IHdvdWxkIGJlIGFuDQo+PiDCoCBlYXN5IHBhdGh3YXkgdG8g
ZG8gaW5pdGlhbCBleHBlcmltZW50cy4NCj4+DQo+PiBSZWFsbHkgdGhvdWdoLCBmb3IgdGhlc2Ug
aGlnaC1lbmQgYm94ZXMsIHRoZSBBUk0gQ1BVcyBleGlzdCBsYXJnZWx5IA0KPj4gZm9yIGhvdXNl
a2VlcGluZyBhbmQgbG9naXN0aWNzIG1hbmFnZW1lbnQgb2YNCj4+IMKgIHRoZSByYWRpbywgdmlh
IHRoaW5ncyBsaWtlIE1QTSwgZXRjLsKgwqAgVGhlIGZhY3QgdGhhdCB0aGV5ICpjYW4qIHJ1biAN
Cj4+IGEgdXNlciBhcHBsaWNhdGlvbiBpcyBqdXN0IGtpbmQgb2YgYSBzaWRlLWVmZmVjdCwgYW5k
DQo+PiDCoCB0aGF0IGFwcGxpY2F0aW9uIHdvdWxkIG5lZWQgdG8gb2ZmbG9hZCBuZWFybHktQUxM
IG9mIGl0cyBhY3R1YWwgRFNQIA0KPj4gd29yayB0byBSRk5vQywgc2luY2UgdGhlc2UgQVJNIENQ
VXMgYXJlIG5vdA0KPj4gwqAgcGFydGljdWxhcmx5IGNhcGFibGUgaW4gdGVybXMgb2YgY29tcHV0
YXRpb25hbCBhbmQgbWVtb3J5LWJhbmR3aWR0aCANCj4+IHBlcmZvcm1hbmNlLg0KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
