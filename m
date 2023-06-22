Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2D73A163
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 15:05:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F038384A67
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 09:05:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687439126; bh=XiNy2/fZ8Ad5PeBU2owSWgXu/aTR6DZrQ7+bS/ZwVnE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NUxNHBv2PsOnSsWP9VmrObficBa2kSpHYSUQILWECNbr8oHr2GXP+0/4oA0732y70
	 OMGtCsSAOzVdNRQgHrU2wBrVqxLxtqVk6CGfSpBMxYatxWfFX/lu1Gd5d+cHhXir2n
	 Jm/oZhI8eG1VIZDbDCJRN0L3ZJ95rbL7AALitmXBc9ICR95d/AOuoAvZ+5bgZmFr5q
	 b0gcQ8EUZv7mEBJ2ptnHHSQE8F3DL9pawvshxTpAFHns3Y8/mZaeh2oEF4RO6e5KPf
	 f1gWmxQFaTm4TSlpjBQW3/i9AflTd/v87ZSBXhRpW+1vZoYds0cgfieFD88Kl3/PQM
	 PF+h6JHw2d4Pw==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 242333808E9
	for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 09:04:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MITiHFEx";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7623bd6933eso26224685a.1
        for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 06:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687439070; x=1690031070;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DWT2fw+QgDtE/ZG0i27MuVOUZpsyOuIw3yNJZ4U07V0=;
        b=MITiHFEx45P6hE0JB+8VEG1xlJN5uIAkoZeGycdtOgTKTvEPaigJxO6ZLFLvMMzcyo
         AXL780rrwSxxucYk2YDqxz81TpHiJQvKqlaSL/Z3w2J9Q9NKZhlpQRBqLLJDmsUrKVby
         d0hVg3ctwI0ISeheOQe8gZM2SmDBU6Tk2/pPafdZwiaFjUQey1EBAon2D2e/qzLOQCer
         mhnjisccK9NB1Fn2aZIVTahPCyqmhjn6OiOBXP8T9WyoX85FvgNrutPh/YHmLelBYO6+
         AnA8xDbqO6hI0gl5gTYPPUT68vlp9diQFZ7MKWMRgDEhRdjhiQNkSw5avtZfbS0yi+ZS
         wO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687439070; x=1690031070;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DWT2fw+QgDtE/ZG0i27MuVOUZpsyOuIw3yNJZ4U07V0=;
        b=lfkteuBcQWzDIjb7Q2d+mBnoDJ7DzajDoHxsQZ9KOkHBZWUF1zYuoj3Cgl45sOJZlv
         8+jpvQkE5UbCczcIE5/Q92hA4Bc8MhcvzgOw0Z8V8mX2nvMNKgIamX2DteEN8BMmHjps
         mw4GHqhr4t8t8pQfuiOTxXyopwmpCMTMQxECyZLsfCjhMbsD60vjshchmJ8Df/eW74pl
         27VxSmVEM9/VFJ1rOiif8BHGstpmcgG4x2gvrSu4WhwBWmAjdVXMAcqgTHyOV1tuvH2H
         jfqNrr6qSkCerISXuifKkbfY49uzlijYlS2snv0Bu/UH4MwhgEANKPlmF9AiXBRaI1Gs
         hg2w==
X-Gm-Message-State: AC+VfDwCwf54hJ4UkMkLSuD/LTd9M6W1eZDKylLopjnxb5Pt6WYNA5EB
	R6gffcmmzQ1bTTpiq7fjq/w4HlO3tCg=
X-Google-Smtp-Source: ACHHUZ5bk0mbnfofjvL6UlI4JNwBGCgLSi9yTvkagdCkHiQEEx61ZwBrFFKC50mrrxl9eromRks8qQ==
X-Received: by 2002:ad4:5caf:0:b0:621:54d:23e1 with SMTP id q15-20020ad45caf000000b00621054d23e1mr27705713qvh.14.1687439070263;
        Thu, 22 Jun 2023 06:04:30 -0700 (PDT)
Received: from [192.168.2.171] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id v2-20020a0c9c02000000b0062fffa42cc5sm3775249qve.79.2023.06.22.06.04.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 06:04:29 -0700 (PDT)
Message-ID: <431509c1-5cab-ef2f-a0d0-5b74bd6496a3@gmail.com>
Date: Thu, 22 Jun 2023 09:04:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHrMisbFqhcA8OFkDS1GCmEwaG85OuCjqO29tpTJ8Pfmt2Guiw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHrMisbFqhcA8OFkDS1GCmEwaG85OuCjqO29tpTJ8Pfmt2Guiw@mail.gmail.com>
Message-ID-Hash: 2FRKDURJDAGJYC2UPAYUXRRAPTL4N3YQ
X-Message-ID-Hash: 2FRKDURJDAGJYC2UPAYUXRRAPTL4N3YQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Support for USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2FRKDURJDAGJYC2UPAYUXRRAPTL4N3YQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMDYvMjAyMyAwNDozMywgT2JsaSBWaWtyYW0gd3JvdGU6DQo+IERlYXIgU2lyLA0KPiBJ
IGFtIGZyb20gVGVuZXQgVGVjaG5ldHJvbmljc8KgICwgb25lIG9mIG91ciBjdXN0b21lciBoYXMg
cHVyY2hhc2VkIA0KPiBVU1JQIFg0MTAsDQo+IHdvcmtpbmcgb24gMTZHSHogLCB3aGF0IHR5cGUg
b2YgdXBjb252ZXJ0ZXJzIGFyZSBjb21wYXRpYmxlIHdpdGggWDQxMD8NCj4NCj4gVGhhbmtzIGFu
ZCBSZWdhcmRzDQo+IE9ibGkgQiBWaWtyYW0NCj4NCkFuIHVwY29udmVydGVyIHdvbid0IGNhcmUg
bXVjaCB3aGF0IHR5cGUgb2YgZGV2aWNlIGlzIHByb3ZpZGluZyBpdHMgSUYgDQpzaWduYWwuwqDC
oCBUaGUgWDQxMCBwcm9kdWNlcyBhIG1heGltdW0NCiDCoCBvdXRwdXQgcG93ZXIgPCAyMGRCbSwg
c28gYW55IHVwY29udmVydGVyIHVzZWQgd291bGQgbmVlZCB0byBiZSBhYmxlIA0KdG8gcHJvZHVj
ZSByYXRlZCBvdXRwdXQgZnJvbSBhDQogwqAgPCAyMGRCbSBJRiBzaWduYWwuDQoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
