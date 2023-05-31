Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B56718724
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 18:15:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48E7B3848EB
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 12:15:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685549749; bh=NBzFTstIhZOUCpt1lOkg6evMUYvsR7TC1GLnauTMqNI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tSdB7XOnwXyq+6iGw8HrW3EmD4GeJ+EVsizRF/hNx+ZSYZnJ+sNNTSoeTAa05z2yJ
	 U+PKOZcioDwcL/cOWtAB1t8JT9hMd/1il+3N1/kvmsjJlKXi9NV/ueV59mRPXWx42R
	 BMcysbvUdz62svAuZ+BFhl+lquxPKSZO4Z2Nk/U0lRhfnr91YlhVJPkNfzXPWzd9AA
	 EPZWv0qgHoz6DTTPZnuscfI4gaW3YsXmTbC7x+x9eQEIkzbK/rHRzX0paN5C5OYD8F
	 /pUFk5c5PoKq0KRTg2SqkjxDlrALJquuNKlIXvUuXHeWkv3rsx3E/T+RnOSlYP4Mzs
	 FtpHNfWu9D4dQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D2B00384898
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 12:15:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qbdag8dO";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3f83114e0c6so28725061cf.0
        for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 09:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549713; x=1688141713;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i7B1gqjfoq5RUaCrdOTRSoztsA2sg/7WbUYAmy6M56o=;
        b=qbdag8dOiPbkWsMzv9MKGusBQGQkCAmp9nUCWoYTkxhzwhyyRQdkHykUiEXXZznOyF
         eexMsSv8StqX/JEAXpY5rvPE3NXHRXwmHI1wSadq+I0TQ/Fnqc5iyt8DTN5ldbYNtIKz
         SaMkFimvInPbkwvm+6V3LyyUvV7FgzpRPR/e1dyggm3yrmskOFA7tk8v5Gq2xWCK/C5A
         k5NvgS+SsEWBKyDK4m+CPD28pLJj9TP94lByeDx10+Ivp6zWtThtHhkQZk7EbKAXHkE0
         3l1lKVDqCcG8i9mspQ4CZ2jlczM8Jr5uF7azrqcXYfHW1DDFe3Tx6z5fCS1qG3juyVQ4
         GXew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549713; x=1688141713;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i7B1gqjfoq5RUaCrdOTRSoztsA2sg/7WbUYAmy6M56o=;
        b=jFx/Ex60A+F9lYZaPcYskufuJSr7/sDT4LK8DHEdb476Ee/4C533yAXEKG7q/RcRT+
         AvMsSng+10GvJKpaUd9i/ADIojmKjB3YzMndqK942yqldMEEFUAEd+TsbWI2dKNRqVXJ
         xyXbDltRbDKUTLTw0V8caf4VRIROGM2f+LqvX5GSg9i3uRJZkYsBr25oDQdVs2la51Av
         Z81JWZj3eZevdi3HZOPddZGAeE2+E25fHERls6a6sUVi12fRlGlu2hIIlC3ep13C4LVr
         hfcr7swGTpYvwwH6Jt9hKBApAwjPtKvyqM5bKcHMirxdn7D1Ck+Dbu/Yfmlbz/JGzZ7z
         6cyQ==
X-Gm-Message-State: AC+VfDyI9LTAhzOyKa+pIkVsgFFyukmjIii8jWi1VOR2KxZZk/TOv4gh
	vT7wheukQ+ND8cqjkfNL+M8TFYB9jfvrMw==
X-Google-Smtp-Source: ACHHUZ4mZy5yKsRigkI489TrLL3uvz6TTF/R16oFY7AZwm4zWbGjRkdBB483HOzd5nFtaN5ONKxgsg==
X-Received: by 2002:a05:622a:1b91:b0:3f6:b0bd:2436 with SMTP id bp17-20020a05622a1b9100b003f6b0bd2436mr6363471qtb.0.1685549712961;
        Wed, 31 May 2023 09:15:12 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id w16-20020a05622a191000b003ef13aa5b0bsm6156701qtc.82.2023.05.31.09.15.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 09:15:12 -0700 (PDT)
Message-ID: <d46f8616-d334-9eea-0223-d1c66fe3b638@gmail.com>
Date: Wed, 31 May 2023 12:15:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM@lists.ettus.com>
Message-ID-Hash: PBBJPXXUSHZI7P3GFVY7LJTFNJK3P7PT
X-Message-ID-Hash: PBBJPXXUSHZI7P3GFVY7LJTFNJK3P7PT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBBJPXXUSHZI7P3GFVY7LJTFNJK3P7PT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzEvMDUvMjAyMyAxMjoxMSwgcGlzdGFjaGlvNjk4MUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+
IFllcyBpdCBkb2VzIHNhZGx5Lg0KPg0KPiAvdXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMkIHVo
ZF91c3JwX3Byb2JlIC0tYXJncyANCj4gImFkZHI9MTkyLjE2OC4xMC4yLHR5cGU9eDR4eCINCj4N
Cj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuMy4wOyBCb29zdF8xMDc0
MDA7IA0KPiBVSERfNC40LjAuSEVBRC0wLWc1ZmFjMjQ2Yg0KPg0KPiBbSU5GT10gW01QTURdIElu
aXRpYWxpemluZyAxIGRldmljZShzKSBpbiBwYXJhbGxlbCB3aXRoIGFyZ3M6IA0KPiBtZ210X2Fk
ZHI9MTkyLjE2OC4xMC4yLHR5cGU9eDR4eCxwcm9kdWN0PXg0MTAsc2VyaWFsPTMyNkI2RUQsbmFt
ZT1uaS14NHh4LTMyNkI2RUQsZnBnYT1YNF8yMDAsY2xhaW1lZD1GYWxzZSxhZGRyPTE5Mi4xNjgu
MTAuMg0KPg0KPiBbSU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBpbml0KCkgY2FsbGVkIHdpdGgg
ZGV2aWNlIGFyZ3MgDQo+IGBmcGdhPVg0XzIwMCxtZ210X2FkZHI9MTkyLjE2OC4xMC4yLG5hbWU9
bmkteDR4eC0zMjZCNkVELHByb2R1Y3Q9eDQxMCxjbG9ja19zb3VyY2U9aW50ZXJuYWwsdGltZV9z
b3VyY2U9aW50ZXJuYWwnLg0KPg0KPiBbRVJST1JdIFtSRk5PQzo6TUdNVF0gRW52aXJvbm1lbnRF
cnJvcjogSU9FcnJvcjogcmVjdiBlcnJvciBvbiBzb2NrZXQ6IA0KPiBDb25uZWN0aW9uIHJlZnVz
ZWQNCj4NCj4gW0VSUk9SXSBbUkZOT0M6OkdSQVBIXSBJTyBFcnJvciBkdXJpbmcgR1NNIGluaXRp
YWxpemF0aW9uLiANCj4gRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjogcmVjdiBlcnJvciBvbiBz
b2NrZXQ6IENvbm5lY3Rpb24gcmVmdXNlZA0KPg0KPiBbRVJST1JdIFtSRk5PQzo6R1JBUEhdIENh
dWdodCBleGNlcHRpb24gd2hpbGUgaW5pdGlhbGl6aW5nIGdyYXBoOiANCj4gRW52aXJvbm1lbnRF
cnJvcjogSU9FcnJvcjogcmVjdiBlcnJvciBvbiBzb2NrZXQ6IENvbm5lY3Rpb24gcmVmdXNlZA0K
Pg0KPiBFcnJvcjogUnVudGltZUVycm9yOiBGYWlsdXJlIHRvIGNyZWF0ZSByZm5vY19ncmFwaC4N
Cj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KQSBmZXcgdGhpbmdzIHRvIGNoZWNrOg0KDQogwqDCoCBBcmUgeW91IHJ1bm5p
bmcgYSBzeXN0ZW0gaW1hZ2Ugb24gdGhlIFg0MTAgdGhhdCBpcyB1cC10by1kYXRlIHdpdGggDQp5
b3VyIGhvc3QgVUhEIHZlcnNpb24/DQoNCiDCoMKgIFdoYXQgYXJlIHRoZSBJUCBhZGRyZXNzZXMg
b2YgYWxsIHRoZSBuZXR3b3JrIGludGVyZmFjZXMgb24geW91ciANCnN5c3RlbT/CoCBJcyBpdCBw
b3NzaWJsZSB0aGUgcm91dGluZyBtYWNoaW5lcnkNCiDCoMKgIGlzIHNlbmRpbmcgcGFja2V0cyBv
dXQgdGhlIHdyb25nIGludGVyZmFjZSBiZWNhdXNlIHlvdSd2ZSBkdXBsaWNhdGVkIA0KdGhlIElQ
IGFkZHJlc3Mvc3VibmV0IG9uIHR3byBvZiB5b3VyDQogwqDCoCBuZXR3b3JrIGNhcmRzPw0KDQog
wqDCoCBJcyB0aGVyZSBzb21lICpvdGhlciogKG5vbi1VU1JQIFg0MTApIGRldmljZSB0aGF0IGlz
IHJlYWNoYWJsZSBmcm9tIA0KeW91ciBjb21wdXRlciwgd2l0aCB0aGUgc2FtZSBJUCBhZGRyZXNz
Pw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
