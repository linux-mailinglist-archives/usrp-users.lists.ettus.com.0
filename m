Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A96D39ED
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 20:57:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E1BF3818F4
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 14:57:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680461835; bh=Ar8BeXQsOKS3aYlcRr+n58GA3GGqtcoFSuH/4JYIEAA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HDpJS0Eib9/iB4SUADiUSSklf3gLH1bwiYyvDwer2diyI63BimbW5TnMx09v8igZz
	 pep/LzUskKu2i3/PTVUm31yp9yMHj2SGAjK3bxgvwVAswNZXdYI22sEMifjrT7Aebs
	 tkzj3AJFGslhEbMcPKnSeiqN0D6XBPvhvvjXJtzfaEgpEy6UIiQsTdzvj6FJPJ2UA0
	 QVUY+aZPCZeJFtRsYyyO03vT8uDOnr67ST0XMREp4K//Q82rXQD8NWsbKhaOmxZvdl
	 iuUlzmmHLin1qwW6PBQbjz5PDGynl3THmdNeAngFrBSioPbUJFBPNldMCyIVMdpjyS
	 iCI41bPSbRnjQ==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 14E99381833
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 14:56:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k8hmGPMz";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id s12so22798240qtx.11
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 11:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680461801; x=1683053801;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nsmSyMN4yJbFI8C0no5ER9GcNflOUwslDlpJeqO/kwI=;
        b=k8hmGPMzWhpY7xhgWopUezozPUbfhDlJaxX+fDJjeisSWIroO2kmCYbOsSPW7RNIqe
         x4OCaS4cEoEcJ5L0eCJO3GTFJRpDFIXmV30xZ1/+oDu/u8/buXt03vNpDh/tm7Wr30Vi
         gmXmjd/bkvjJOfMEe83OL+QK1zwPPRWfsH6AgdE1Hm6QboRFuLeoV4FC+7wzn6qdP4Ei
         KzCedkmbwImlfNFKNE+QYTR08U1QoUR6aT3SUJdmpOQlVJWlpwOTVjOVS2P6Y6tuuVtB
         mrhD/6mVHbnrGYNfJhiJEjVnn1cLVVn9kGpzCp+hdmr2BDbBv89W23JDilqEiCgX0wnY
         YO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680461801; x=1683053801;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nsmSyMN4yJbFI8C0no5ER9GcNflOUwslDlpJeqO/kwI=;
        b=zN38WQWBBHqKE+rNtVX/6LwHyiDTCF+nVp/mHzzRZGFcZo84ffWO4OmAvLZRkiJesu
         i0rDvKDeKNnEpBHFFz+8QPxt70RkNmqulyzYLGJDrPbdjrkWfC+tjuPH+AwKoCZ9R4gq
         fn54UyX3mMwuCct0kNPnCsYMvZtrjqMTdDbaCRlJszlknGAwbctE8guf2tCqAIcszwSd
         TAkJH+PO7Cr3mFaU2Chm8q+HEVMdquT87qslk18b/GXVaPkrEvK2hYJUbIYYxhjtcddz
         sgQoQ+vJPiXwiXYdao7NjmuWw+RPbpogyrZdGUYESXZ11trNDMzP+grHXD/d/7nHg1QU
         qXLw==
X-Gm-Message-State: AO0yUKVzGG/cNbCAMXGAm/OUTTBh/OKK9ddJQ1xS0mEYoqzRQUMJKHbC
	BZyNCfSdNS2Kh6FqnMEeDXmr6JsZZHQ=
X-Google-Smtp-Source: AK7set8Ww59nvGOShCXm8hcpqaIUR12X/slBrb3+GtnMURtG52ygAIDVA9c8rSUWbzzNjQVB2LiLNQ==
X-Received: by 2002:ac8:5bc1:0:b0:3bf:da69:6107 with SMTP id b1-20020ac85bc1000000b003bfda696107mr57489663qtb.67.1680461801348;
        Sun, 02 Apr 2023 11:56:41 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id n128-20020a37bd86000000b007469c93ac2dsm2225858qkf.31.2023.04.02.11.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 11:56:41 -0700 (PDT)
Message-ID: <650df62f-683c-925d-330d-be87fa636a33@gmail.com>
Date: Sun, 2 Apr 2023 14:56:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>, usrp-users@lists.ettus.com
References: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
Message-ID-Hash: VLJ2CVR4ARGPIRP3WKKFOT3DO2UYTNL3
X-Message-ID-Hash: VLJ2CVR4ARGPIRP3WKKFOT3DO2UYTNL3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VLJ2CVR4ARGPIRP3WKKFOT3DO2UYTNL3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDIvMDQvMjAyMyAxMzozNCwgQXJodW0gQWhtYWQgd3JvdGU6DQo+IFJlc3BlY3RlZCBzaXIs
DQo+DQo+IEkgYW0gdHJ5aW5nIHRvIGNvbm5lY3QgbXVsdGlwbGUgVVNSUCBOMjAwIHNpbXVsdGFu
ZW91c2x5IHRvIHRoZSBzYW1lIA0KPiBzeXN0ZW0gdG8gdXNlIGluIE1BVExBQi4gSG93ZXZlciwg
SXQgaXMgbm90IHJlY29nbml6ZWQgYnkgdGhlwqBzeXN0ZW0uIA0KPiBNeSBQQyBoYXMgMiBldGhl
cm5ldMKgcG9ydHMgKDEwIGFuZCA1IEdiaXQpLiBOLTIwMCBjb25uZWN0cyB2aWEgYSANCj4gMTBH
Yml0IHBvcnQgYnV0IG5vdCBieSA1IEdiaXQuIEkgaGF2ZSBjaGFuZ2VkIHRoZSBJUCBvZiBOLTIw
MCwgYnV0IGl0IA0KPiBkb2Vzbid0wqB3b3JrLiBJIGhhdmUgdHJpZWQgdG8gdXNlIGEgcm91dGVy
IHRvIG1ha2UgYSBsb2NhbCBMQU4gdG8gDQo+IGNvbm5lY3QgdGhlIFBDIHRvIDIgTi0yMDAsIGJ1
dCBpdCBkaWQgbm90IHdvcmsgZWl0aGVyLiBJcyB0aGVyZSBhbnkgDQo+IHNwZWNpZmljIHdheSB0
byBjb25uZWN0IG11bHRpcGxlIE4tMjAwIGluIHRoZSBQQyBhbmQgdXNlIGl0IGluIE1BVExBQiAN
Cj4gZm9yIHNpbXVsdGFuZW91cyBvcGVyYXRpb24/SXQgd2lsbCBiZSB2ZXJ5IGhlbHBmdWwgZm9y
IG15IGV4cGVyaW1lbnQuDQpUaGUgTjIwMCBPTkxZIHN1cHBvcnRzIDFHQml0IGNvbm5lY3Rpb25z
LsKgIEl0IGRvZXNuJ3QgYXV0b2NvbmZpZ3VyZS7CoCBJdCANCk1VU1QgdXNlIGEgc3RhbmRhcmQg
MUdJR2UgY29ubmVjdGlvbi4NCg0KRWFjaCBOMjAwIHdpbGwgbmVlZCB0byBoYXZlIGEgdW5pcXVl
IElQIGFkZHJlc3MuwqDCoMKgIFlvdXIgbmV0d29yayBwb3J0cyANCm5lZWQgdG8gYmUgY29uZmln
dXJlZCBhY2NvcmRpbmdseS4NCg0KSSdtIGRvdWJ0aW5nIHRoYXQgeW91ciByZXBvcnQgb2YgYSBz
dWNjZXNzZnVsIGNvbm5lY3Rpb24gdG8gYSAqMTBHYml0KiBwb3J0DQogwqAgaXMgYWN0dWFsbHkg
Y29ycmVjdC7CoCBJdCBtdXN0IGJlIGEgKjFHaUdlKiBwb3J0Lg0KDQpJIGNhbid0IGhlbHAgd2l0
aCBNQVRMQUIuwqAgQW5kIGluZGVlZCwgdGhlcmUgYXJlIG9ubHkgYSBoYW5kZnVsIG9mIA0KTUFU
TEFCIHVzZXJzIG9uIHRoZSB1c3JwLXVzZXJzIG1haWxpbmcgbGlzdC4NCg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
