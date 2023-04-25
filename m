Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BBB6EE542
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 18:08:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9EAC138489E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 12:08:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682438900; bh=a6nWnnuT3f9ruR/IXzyPjTCwY8jAa5OYMG/W0wi+a4E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XVgbjnzjJB09rH6eaNQN5XaoD5uEKp0Ld+BibmW8eWRKnOsP/os+umE2IkhCwsKqy
	 JQFGBq4Nlgj7Tuat4m4HB1qotvUi+XgCWPmlfZRpVFOqfFTCx+9FH3TZys7K769CyG
	 4dJElapCRbJwu1L8c3kMhFdDCIxM1UE2ngMJJ1SzKnYdHrJe3xjvAUSUBxlMbd5DI0
	 +NDMYHg2B1yVOYiAQIsZYbUuhW1dIWNisWC3/9vC6RfWqqwDRaSEJM+cm0Nl9EBeNX
	 iheM48L4EkZoI5pVqdCKP5Af/0BLGlfBrbK2jZe6KEsN0qzMkgYnLIxSMm/yIau42a
	 JcHuWn5sUgg3w==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D96438489E
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 12:07:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fTzpVig5";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-5ef6e0f9d5aso59155786d6.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 09:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682438857; x=1685030857;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kPV6KMWk4X9OkAs4ru4WC8e07VkDo7POHqhVOe2Vs04=;
        b=fTzpVig5AwUBeMnq03jiHGwxeD5SXoGL7UpMJhObrnNbf+XK/iNslgvzTpSNMaCJQ6
         0mpJ60xi/OoG5HNiDHGHTeTv2PDl1GGp4E7HtO7TBwJBaLTu5GdjZhZcVqZAiZu9GvXN
         2sR75mH6AFPXAiN+gdUHYbfq194wJNbjna5yDsUEjfH+na4iobiCbUvQknrsPPUJmKsx
         6pXAuHcAjNLNgYRB6IR6/IYts3K5tswCS43BsatxXCGR4nFefPgn8Ft32Q6HorNMT1ux
         Ff6FE4ZoJuV5y2aV1b7gJOlAAwvEVfITLRYI1siT00xgohO1l3O3z2fc0QGabUgMlzgl
         t/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682438857; x=1685030857;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kPV6KMWk4X9OkAs4ru4WC8e07VkDo7POHqhVOe2Vs04=;
        b=gXst0FB2oZCwnyajR+9ZpRmOIS3tmmrD4mFShNF692lNJKv8dXWzBDoTK2btBbXyBG
         LuIpbf+/IdP/MmMkBljoEOtSdL52QQJOaEI2KUge4YYj4+NHwYEVO8YVVz6viBYpBhI5
         ONxWJsYUVMvCNWP3E6EiXavr7tch3qzjJJLCkTXtBVGV5c9MJyxp2RvnSQdZaGY38lSI
         wMaUQQ3GA83sB5svUx4UwxLJzamicPvLrkBnmnUdJb+PPgveEIHWN98iqw8wTe0vjuqY
         x0BxOXupNFdBrd9SUZiCi+Mw+aMrAKVTJsrcP09KXjPCS7OmkSe9ytkAUYeeBWvnXfeG
         ePXA==
X-Gm-Message-State: AAQBX9f4roMiQbDUsOvHJglv1XwZ9jtheVBpNOjN8Z9cFreG4o8rCZvR
	I6ty7WQXWbOcL1r5qBNdki9ppVfM81Q=
X-Google-Smtp-Source: AKy350YYHN+/aAaIhEZrRd2B4NU7Q/SErI/QnRgrCNcxboSYHVhCvR2vZvWR458rN1jhR7uKOZpV5g==
X-Received: by 2002:a05:6214:c82:b0:614:9b92:cac1 with SMTP id r2-20020a0562140c8200b006149b92cac1mr9979804qvr.47.1682438857105;
        Tue, 25 Apr 2023 09:07:37 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id 13-20020a370b0d000000b0074ad1698959sm4464025qkl.40.2023.04.25.09.07.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 09:07:36 -0700 (PDT)
Message-ID: <5bab9621-d634-423f-ca65-cf0b4c7945e7@gmail.com>
Date: Tue, 25 Apr 2023 12:07:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230425143440.1139F4D935@mail.futurelabusa.com>
Message-ID-Hash: 6ANISYYGMYEXN2LCOQF3O4UQH3EQURDZ
X-Message-ID-Hash: 6ANISYYGMYEXN2LCOQF3O4UQH3EQURDZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6ANISYYGMYEXN2LCOQF3O4UQH3EQURDZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxMDozNCwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gVGhlIGNvbmZpZ3Vy
YXRpb25zIGhhdmUgZGlyZWN0IGNvbm5lY3Rpb25zIGJldHdlZW4gYSBmYXN0IGhvc3QgKFVidW50
dSB3aXRoIHVubmVjZXNzYXJ5IHNlcnZpY2VzIGluY2x1ZGluZyBOZXR3b3JrIE1hbmFnZXIgZGlz
YWJsZWQgb3IgcmVtb3ZlZCksIGFuZCB0aGUgcmFkaW8gd2l0aCAxMCBHYml0IGFuZCBmcmFtZSBz
aXplIG9mIDkwMDAuIFdpdGhvdXQgdXNpbmcganVtYm8gZnJhbWVzIHRoZSBiZWhhdmlvciB3YXMg
ZmFyIHdvcnNlLg0KQ291bGQgeW91IHNoYXJlIHdoYXQgdGhlIGhvc3QgZGV0YWlscyBhcmU/wqAg
Q1BVP8KgIE1lbW9yeT/CoMKgIFdoYXQga2luZCBvZiANCjEwR2lnIG5ldHdvcmsgY2FyZD8NCg0K
DQo+DQo+IEFueSBvdGhlciBpZGVhcz8/DQo+DQo+IFRoYW5rcy0NCj4gSmltDQo+DQo+DQo+DQo+
IEF0IDA4OjIyIEFNIDQvMjUvMjAyMywgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4+
IEhpLA0KPj4NCj4+IEkgYWxtb3N0IGZvbGxvdyB0aGUgbGluayB0byB0dW5lIGFsbCB0aGUgcGFy
YW1ldGVycyBzZXR0aW5nIGV4Y2VwdCBpbnN0YWxsaW5nIERQREssIGJ1dCBmb3IgbW9yZSB0aGFu
IDIwTSBzYW1wbGUgcmF0ZSBJIHNlZSDDouKCrMWTVcOi4oKswp0gdW5kZXJmbG93LiBJcyBpdCBu
b3JtYWw/IGNhbiBpdCBiZWVuIHNvbHZlZCB0byBhY2hpZXZlIG1vcmUgdGhhbiAyME0gc2FtcGxl
IHJhdGUgd2l0aG91dCBpbnN0YWxsaW5nIERQREs/IHRoYW5rIHlvdS4NCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
