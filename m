Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A70E9D4456
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 00:15:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C147386353
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 18:15:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732144530; bh=K3LaCSMzZ0kpaJY+oLMeuTOwbGg1zASerrR2oAqs0Ao=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gnErjn52AYnhCiHbJRHsz5LZQJNeRMA1aK5QarmdN8smTkrRKZFQ3BfKleg44jzan
	 7exJKYZPkr/zgQ+rA83Pex042j5MFMNNalDA2wMEuACVo8c/RPu6Nv8RPP8hBtroT7
	 yRIQ2U9k0g7s1msyWo9ttrsxX7EEICyps5iqSaOU/bck+hemBAHJ/v8zCn1LJTqQOl
	 D4yXoDUOQoxHq+fc5lgKl8Rxm8CNuW3ETITRJBM7fc2Yr3aPVuok5oS/xkOkQ5tro8
	 naDirV/mVSn056XvFqW1gnM+XUbfy/25t37+CfPwPOajM5Bh6fUfxiWGkqXVrM5tHv
	 poWtD0oMLxxwg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id F30CD385E2F
	for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 18:15:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WEfeOlPe";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7b1418058bbso16204685a.3
        for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 15:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732144512; x=1732749312; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ErHvXqLtzAqMHIUTp/BY31nsUfGyuN5+SG11mNyH7jE=;
        b=WEfeOlPeg7iBbQf9NiYqjNFt9XwWP5v3VtmbFUMb01TOgyH4g2gOAmyhBZ/m5rCS73
         /12lwU1hOShmK9sEWrbRFpn51EbdoswMOo/TRwbfl+vatRf9jvAWWYQeqK1Ror93jh1U
         JUK1la1LM4ne2YtQsJXQdAHRH0Pt4EWsAUWNaMbARly0FMrmYXJS5zTws5cyaGi8sXl+
         WzSzSn/3NN8BWtepKhaKYYdclHIS+qWwNrfZ5D7yZRQ1tcf7CKtVLL8Oi+vxkUe83V6H
         gm2R2y9F3E2ItAzG5P/9uKE7IU6mnpGyz30QBRlfG7/zv+3oKq72fEtVI1/iBsa/f60J
         SsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732144512; x=1732749312;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ErHvXqLtzAqMHIUTp/BY31nsUfGyuN5+SG11mNyH7jE=;
        b=ukrXrmCGnHaHy5T13JxQkAATdYEMvjFVThXRIUZYz0UObetQBSRIf/mdjimcf2Mxj5
         XoZdWWw6ueNCLleqH4EYGTv8gDf3ByPXz9wYel/wsM9QfUcTgykB+pCoQzqThVb26j4e
         ZqGnBF/4H8t967T4/Z68XpSZCeVKnC3i6Cmq4IaX0FOtXnHU+SqwUcH1AILlG+CI+Div
         EKLTovab7s/qBteo6ZasJAA8wvvkHK8HEuo9LUdj4s0g2oe30NfDynj/DjtGHJ+IrQsB
         +TLkcttvlaNbXSrEr7yR63DUoMkiaQKy37aNuf+DW9pwNzB7IRvbVMsxIWgVznIlbk6X
         nfFA==
X-Gm-Message-State: AOJu0YzJhpN8Ug3gXA/oQMTvRmHEAWXID0Lo88E6xhujV6cprARP49lZ
	RLt2L/4bWrtDSgiTeaZ+RxKGblEaX7TMzO5sC0Qpg5WCJWUGKG68wY8WPg==
X-Google-Smtp-Source: AGHT+IEkwEbIaHmMzorKAzQ/Pdw1KwUVaps/f3/D+BgZMcQN5vJbKGgWIYoGBGnF0oe/K1V/4n90iw==
X-Received: by 2002:a05:620a:1927:b0:7ae:5c50:37ab with SMTP id af79cd13be357-7b42ee54e4fmr472645985a.49.1732144512126;
        Wed, 20 Nov 2024 15:15:12 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b479d942d8sm145298385a.69.2024.11.20.15.15.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 15:15:11 -0800 (PST)
Message-ID: <7ed6dea5-bdff-4b1f-8be9-db2be618a94a@gmail.com>
Date: Wed, 20 Nov 2024 18:15:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA@lists.ettus.com>
Message-ID-Hash: VEJAMAO5AUS2R4NIJPB36G5YC5AKNR46
X-Message-ID-Hash: VEJAMAO5AUS2R4NIJPB36G5YC5AKNR46
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: starting radios in parallel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VEJAMAO5AUS2R4NIJPB36G5YC5AKNR46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMTEvMjAyNCAxNDo0MCwgamFzb25AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20gd3JvdGU6
DQo+DQo+IEkgaGF2ZSBhIHByb2plY3Qgd2hlcmUgSSBoYXZlIHRvIHN0YXJ0IHVwIGEgc2VyaWVz
IG9mIE4zMjAgcmFkaW9zLsKgIA0KPiBDdXJyZW50bHkgd2UgZG8gaXQgc2VxdWVudGlhbGx5IGFu
ZCB0aGF0IGNhbiB0YWtlIHNvbWUgdGltZS7CoCBJcyB0aGVyZSANCj4gYSB3YXkgdG8gZG8gdGhl
bSBpbiBwYXJhbGxlbD8gSSB0aG91Z2h0IEkgc2F3IHNvbWV3aGVyZSB0aGF0IHRoZSANCj4gZHJp
dmVyIHdhcyB0aGUgbGltaXRpbmcgZmFjdG9yIGZvciBiZWluZyBhYmxlIHRvIGhhdmUgc2VwYXJh
dGUgdGhyZWFkcyANCj4gc3RhcnQgdXAgdGhlIGRldmljZXMgYXQgdGhlIHNhbWUgdGltZSB0byBz
cGVlZCB0aGluZ3MgdXAsIGlzIHRoYXQgDQo+IHJlYWxseSB0aGUgY2FzZT8NCj4NCj4NClRoZSBt
dWx0aS11c3JwIGludGVyZmFjZSB3aWxsIHN0YXJ0IGVhY2ggcmFkaW8gaW4gc2VxdWVuY2UuwqAg
SXMgdGhpcyBhIA0Kc2l0dWF0aW9uIHdoZXJlIHlvdSB3YW50IHRvIGJyaW5nIGl0IHVwLCBkbyBv
bmx5DQogwqAgYSBzbWFsbCBhbW91bnQgb2Ygc2FtcGxlIHRyYWZmaWMsIGFuZCB0aGVuIHNodXQg
aXQgZG93bj/CoCBXaGF0IGlzIHRoZSANCnVzZSBjYXNlLg0KDQpZb3UgY291bGQgaGF2ZSBtdWx0
aXBsZSBtdWx0aV91c3JwIG9iamVjdHMsIGVhY2ggaW4gdGhlaXIgb3duIHRocmVhZC7CoCANClRo
YXQgKnNob3VsZCogd29yaywgYnV0IHlvdSdsbCBsb3NlIHRoZQ0KIMKgIHNhbXBsZSB0aW1lLWFs
aWdubWVudCB0aGF0IFVIRCBkb2VzIGZvciByYWRpb3Mgd2l0aGluIGEgc2luZ2xlIA0KbXVsdGlf
dXNycCBvYmplY3QuDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
