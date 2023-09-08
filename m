Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F24F798063
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 03:59:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 539C13851C1
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 21:59:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694138380; bh=tk2MpbEC0YVC334VCtSD23MF0GHuIzAKFnK64XxiDvM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sSXQ97f8YGC14YKMabOKbg5ppoOKkrbAW9xlcTMqjXZdJlaCyl4td9gqLGoopdadN
	 eykTcOvdR95MqP0vFzGM1SkXEMRcurUHKOh1FFp4F7R/lRERqsNCjXRGraZZVu26kq
	 kmADAZF+S+nqE7PQ7POgd7oONom68Va+Lw2j+H5t7gdZlvNBAoVedYcU5Q4As37Ybo
	 tqdjISWEBZAjcLFXVRp1F49mvMxBR1BRqRY5f6OETS9V6+QXRekKsJ1ScHU9g7C8tC
	 0QTh4ySw6YP2EK4LJ+9Aet6infCBBbW6oJpCFArotf9F/Au0im7THbx4FMNXoTh0gi
	 DMJU8xXJuRBqA==
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D74AC384E08
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 21:58:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ghW4aVKv";
	dkim-atps=neutral
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5738cb00eebso959029eaf.2
        for <usrp-users@lists.ettus.com>; Thu, 07 Sep 2023 18:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694138322; x=1694743122; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9SZdp4d45q5f9hlArve1n+g1Iq5koU4YEyd++7txkJw=;
        b=ghW4aVKvC4P5wybfgh3Kw3leR0gnsDCAw9nHJQRUvKyRCOEEICBYOoiSSUX5a8J1ou
         TxRlb/atibUYeVah1B/0oNvusp7NV7ooOZuigulJv1nFlFB3vckUDIvq20NMRue7mDRf
         7PUjac5WS3te0ndE7N/RxUxClprjJrXS2aoOFGOAAk4iVTv6KznoSnlJ+tQ6FfbSKkL3
         CgNG0LlYFKx9CbP3YhZiwTXiv4B3hxlBpXzgk3xtec7AILCf9CwhBgfimuuPdc8hTumB
         sRUDwUpx8u467o8FWdzTDFqtIbd26S6SmNT71IV2HDOylqqNwQD4rpYlx9LUNmJbi9h+
         xjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694138322; x=1694743122;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9SZdp4d45q5f9hlArve1n+g1Iq5koU4YEyd++7txkJw=;
        b=EkKCc5clwNWClezDHhn07JaGrPVfFzkJlMhcLfgrXQ2bUm6X5DNqyWKSX4ftQ0XIdv
         O1RzZ6FNxfjsUrWu5NroaRH5T1iRTCkfOqvpUoy7lnTXjop8/NgpqZN+adantZ00nALf
         KCnfPI6KoEaUX5XZQSNnWS10faCH2s+3BGe/ntXO9NCvkx7T7lINU+O5mJ/msYHW3eLQ
         MosxLNs3FIk9iSOGzFkaNPWxx2jn0s1DIozLfOpVN8p22PIZtBTCSk1EoWd5ZzH0t2D9
         d2nDXaNeFM7P5n7zebKSNJoIzsn87HjGbzzEPM7Qn+p+NB5w38kCXjzjgOMOD86JCF7u
         ZUqQ==
X-Gm-Message-State: AOJu0Yw7rURO/oHC3fJpCu9ECyqtXlnspLsgdI7M2WnqolJTf5Uo64l7
	AxHVfviRNDPNp284OBBkiR3ISLqoQT8l3w==
X-Google-Smtp-Source: AGHT+IFM1KF6SBi9Ht+3f6CIIvMPAtCJmbVYNBrBehyuddQm7rUzW6iTLirjFG2AL9q/WJguBypXzQ==
X-Received: by 2002:a05:6358:7e44:b0:133:a8e:6feb with SMTP id p4-20020a0563587e4400b001330a8e6febmr1196823rwm.12.1694138321868;
        Thu, 07 Sep 2023 18:58:41 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id s8-20020a0ce308000000b00647120d0085sm279538qvl.69.2023.09.07.18.58.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Sep 2023 18:58:41 -0700 (PDT)
Message-ID: <cd23de12-afbf-c9e0-0ac2-955fff473dc4@gmail.com>
Date: Thu, 7 Sep 2023 21:58:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU@lists.ettus.com>
Message-ID-Hash: WSBMORN2NRSJJOLNKBHMBSEDE5U2VR4P
X-Message-ID-Hash: WSBMORN2NRSJJOLNKBHMBSEDE5U2VR4P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WSBMORN2NRSJJOLNKBHMBSEDE5U2VR4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMDkvMjAyMyAyMTo1NiwgMTkyMHN3YXBuaWxAZ21haWwuY29tIHdyb3RlOg0KPg0KPiBJ
IGhhdmUgdGhlIHZlcnNpb24gNC40LjAuMCBvbiB1YnVudHUgMjIuMDQuIEkgZm9sbG93ZWQgdGhl
IOKAmCBCdWlsZGluZyANCj4gYW5kIEluc3RhbGxpbmcgdGhlIFVTUlAgT3Blbi1Tb3VyY2UgVG9v
bGNoYWluIChVSEQgYW5kIEdOVSBSYWRpbykgb24gDQo+IExpbnV44oCZIGd1aWRlLCBhbmQgeWVz
IEkgZGlkIGluc3RhbGwgR05VIFJhZGlvIGFmdGVyd2FyZHMuIEnigJlsbCB0cnkgdG8gDQo+IHVu
aW5zdGFsbCBHTlUgUmFkaW8gdG8gc2VlIGlmIHRoYXQgZml4ZXMgdGhlIGlzc3VlLg0KPg0KPg0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tDQpHaXZlbiB0aGF0IHRoZSBCMjEwIGhhc24ndCBoYWQgYW55IHVwZGF0ZXMgaW4gcXVpdGUg
c29tZSB0aW1lLCB0aGVyZSdzIA0Kbm8gcmVhc29uIHRvIGhhdmUgdGhlICJ2ZXJ5IGxhdGVzdCIg
VUhELCBhbmQgdGhlDQogwqB2ZXJzaW9uIHRoYXQgaXMgcGFja2FnZWQgd2l0aCBVYnVudHUgc2hv
dWxkIGJlIGp1c3QgZmluZS4NCg0KSXQncyBsaWtlbHkgdGhhdCB5b3UgaGF2ZSBhIGNvbmZsaWN0
IGJldHdlZW4gdGhlICJpbnN0YWxsZWQgZnJvbSB0aGUgDQpkaXN0cm8gcmVwbyIgdmVyc2lvbnMg
b2YgVUhEIGFuZCBHbnUgUmFkaW8sIGFuZCB0aGUNCiDCoCBiaXRzIGFuZCBwaWVjZXMgdGhhdCB5
b3UgY29tcGlsZWQgYW5kIGluc3RhbGxlZCBmcm9tIHNvdXJjZS7CoCBUaGUgDQoibWl4ZWQgc3lz
dGVtIiBzeW5kcm9tZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
