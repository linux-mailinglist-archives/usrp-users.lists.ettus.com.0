Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFE377474B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:13:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17E57384B29
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:13:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691522026; bh=p6rgHSPGYBkyadGDzMyr4mlA4tawSTaqix4q2jI3n5A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NuJ1U8IJLDpaiIrT1kv4AG6qA5nxmk5TDwMdVNZrbhJPE4fBxNltIhm/XI+21XWLX
	 gMpx1sy2p/AVFxJYcD9of/f6JiklLSntTAXWsG16TBqpyv5QO9TqrP/OCqUc2AXArU
	 YM3+xNPI8/7ImHJ794b2IkXJZGxm2V0WL8tucAi4UG9z3Uj41xosS/5Z9QjGjy5pgE
	 kmuaXZXLQWvHJuatXIl9lQHyxlVxSGVlCgEurewlI0wsp5YYIsWW3j/Kj/5d6bzm0a
	 vf2Ae8ePgdjsgbHH/hFjb268ET7DzULzmBVr60AfSokzwAvDUByPJ+/fv927xZntCi
	 yZTavPO/A6iVg==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id A44B43845B7
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:13:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z5KoAqGx";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76ad8892d49so513297785a.1
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 12:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691521993; x=1692126793;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lwpulZ0B1hZfhbs/jq+/f8ytpP+S+EuV848E1APEO8s=;
        b=Z5KoAqGxvOSGCUqj3KRQRUylR8oYKyAv8sRxE4Ke29VBCd1CuyzugyHcWGeQ2Jic3k
         mQrhSb60zgczw/PnxmLrWXfJePNsFottXXPwHjn9jUYW454uc7rYeRuavuSaNkDlNyMZ
         uxgcaj8/FVIEWj7YqY3xQJURWYaZuxgNPo8rca2xi7dJJ4bJ36ytKd3iKLLjuKwvlAQL
         McVWji7iCFaGkAMMaHGapk9jF9wD4xjp6nq7uKj7pmAYuSATua+1xd3TfKXhwkkOgvId
         bqaHta/YzH9YSyntqYpQe1utwReFseGOfosOhKwlqRCCc9RmxSrHw+OuW2jHkVm6Ajvn
         is9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691521993; x=1692126793;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lwpulZ0B1hZfhbs/jq+/f8ytpP+S+EuV848E1APEO8s=;
        b=ZC6jbW15m5Y0syvg7Fb4veJXwOrPqGeo2mglOCk2D0ZFNfafrfqV1bMoscK+j8WmLs
         bhW1tLFNJPoIazUMnQOW/II7m6Jc3zI89hjHK79+ez9xZoSYG6lenLVun1bUaKBLyUM8
         l5au1MgVw1oNTcydBDrFHYEjvNu+2T3hB5+LqGHpT5fNacyQCD9nnOJPQUzwiZbLT15v
         YzKwUxUsSfRocvn1A4qUNGJxP9/3BwtxAzVXQPCDEgZXM4Unob7BxlgsiLxRq3iMAFiy
         4Kn4KzE1//56O4PZf7Cee+8SJXqPpttMXVm40AYSIvC+bfntAkav4ki0l4nF9Hv5hs9g
         DUGw==
X-Gm-Message-State: AOJu0Yz1s3Hs7EbxxDFnolqeWaQBCJCzCk7mHMWnHsJ7e0n8SyjMxkrf
	SmU95MXDMZ5y5aPWTtthjqIgNEHctm8=
X-Google-Smtp-Source: AGHT+IFVlpS+CcT4rYEN3czMsnmsVV6mMlXEu+1/hBy/1n0CJI/MrL18dd6yrwEG99B+vYAglZJptg==
X-Received: by 2002:a05:620a:4454:b0:76c:bee4:e14f with SMTP id w20-20020a05620a445400b0076cbee4e14fmr800580qkp.62.1691521992822;
        Tue, 08 Aug 2023 12:13:12 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id d1-20020a05620a136100b00767b4fa5d96sm3506629qkl.27.2023.08.08.12.13.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 12:13:12 -0700 (PDT)
Message-ID: <3e97860a-2d30-d269-7883-9c86a2be0fa9@gmail.com>
Date: Tue, 8 Aug 2023 15:13:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM@lists.ettus.com>
Message-ID-Hash: ZBVVGUUPER3BLAOQZ45KHFOXJZFRTM7S
X-Message-ID-Hash: ZBVVGUUPER3BLAOQZ45KHFOXJZFRTM7S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBVVGUUPER3BLAOQZ45KHFOXJZFRTM7S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDgvMjAyMyAxNToxMCwgZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBBd2Vzb21lISBJIHdpbGwgZ2V0IGluIHRvdWNoIHdpdGggdGhlbSBBU0FQIGFuZCBjb21t
ZW50IGhlcmUgbGF0ZXIgZm9yIA0KPiB0aGUgcmVjb3Jkcy4gVGhhbmsgeW91IGZvciBldmVyeXRo
aW5nIQ0KPg0KPiBCZXN0IHdpc2hlcywNCj4NCj4gRWRlbi4NCj4NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KQWxzbywgSSB3
b25kZXIgYWJvdXQgdGhlICIucnB0IiBmaWxlIHlvdSByZXBvcnRlZC0tdGhhdCBpcyBnZW5lcmF0
ZWQgYnkgDQpGUEdBIGJ1aWxkIHRvb2xzLCBhbmQgaXMgbm90IHNvbWV0aGluZyB0aGF0IGlzIHNo
aXBwZWQNCiDCoCBpbiB0aGUgdXN1YWwgaW1hZ2UgZmlsZXMuwqAgV2UgKkRPKiBzaGlwIC5ycHQg
ZmlsZXMgZm9yIHNvbWUgb2YgdGhlIA0Kb3RoZXIgcHJvZHVjdHMsIGJ1dCBub3QgYnkgZGVmYXVs
dCBmb3IgQjJ4eC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
