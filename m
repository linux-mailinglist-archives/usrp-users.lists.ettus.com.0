Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63106A01C3D
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2025 23:57:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4302C3858F0
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2025 17:57:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736117861; bh=JNoxtdAa0rLj1q7vENssV6hVtGsC20OW7MXt0UWd3Tw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uOAHT+Hyqc3DkEf44/W6LRVc2n3WMSXHOdhEDDZE0u+6iZLZOCYFBi74HjC8IVPYE
	 zgkib+3WLtRNdk7OMFgRw2LLdu302oqVpGZvB3AmxSnbwnldOhiIr4sLuwbimrx4On
	 JIbuqxxLUK7GWhuDyz9tJCDcMmQnzNyv+hmFpp/fa9cXjELHE6BAghIDdXlT3a/pOV
	 OOiULeW39ACjcuINZKRougywBrBFWLGZMYzx+RZKRMj9sexNIAwezPYT1K3eNAB1ZU
	 UIP930JdTDx3GzXkQG5yRZ8a2fyNkATa/2+KPtKP+FKCRAn70fYvMZmF3c1bW2cE+t
	 mIJIXRFRGkSoQ==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B7683858C7
	for <usrp-users@lists.ettus.com>; Sun,  5 Jan 2025 17:56:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WGo9x/ss";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7b9c6c2c44eso882944785a.1
        for <usrp-users@lists.ettus.com>; Sun, 05 Jan 2025 14:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736117815; x=1736722615; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Pi7081+3KwDCAqVTvyVBuyglme6oH1Na/wn6FPVQZY=;
        b=WGo9x/ssMLRxe4hYfEmMVwdZzttY/I7EZ43m+cKknuXgeDaTalW3kuhGtt3ZS3jUyw
         US51puY5fXgO10EavsoMy1AAyXWEfJSTRpPuR7O5oIjOcGMqhK6FHEKBvyW09jyKUK0o
         433unwKix2aEyivGP27pVDNigfoFPfwoftjYpEZ5OHtonQ1pkC1Gz9eq+H6+e+BoyC8G
         +P35vJA410DTepiIK5K0I0/AtC1P/3B7/fs8jzYTUNLWl/nm+YJM+6w8R0oxZsx4K5hB
         yyiCt9JxH/444C8bEpK17MXD/Y35f3wSyKeBLVwvT59+RCCQ0ViPXhsFPR5UVzaG6Y9O
         UBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736117815; x=1736722615;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Pi7081+3KwDCAqVTvyVBuyglme6oH1Na/wn6FPVQZY=;
        b=hT/N/LC3lIjZ7C8Q2Abr2jSL0/YCMKIijk2qfzjIUYxIZeyVa4DcqxOR9Zkr9AF1kA
         DYSRhTRf12OrFPizqpbH6Kh2xjR8tYTe+wu6GowWugXDLL6W46qw2y9zOOtu8eLyhhLc
         o99JqdPjFha+4hI6POR+5DqlCOrB3ScMAXVwbI7YR0sXMS5ciJFvbKAyLrG05XyybbWe
         hhefs+JOIh9iH02t+RXBE+neG0ty6RiMMi4m5svRSK3g9MzS1tI3+dadIgBiJrDmVbvU
         C4Joa3RAMvj/pT/S3Tgtprmnqthb2AkOk4TBxfgXWqS4iX1q8DqoIVeaAiXw/LZi7V9M
         FT4Q==
X-Gm-Message-State: AOJu0YwhO6ZmmKm1aY5F2PGUQFPKLWeMJugNWDzrms2Jks+x1k+hwL7N
	ro9G145PuM4WTFVJLkNbQ/A6g9gMaJfD9o2AUE04owBnJqdivKTst9t6Xw==
X-Gm-Gg: ASbGncsx0hX7vZ7SRpq5AB1mfWw7HdF2v8Dr4Kn4OY81kWO3U34egimjSifU3X2y2GQ
	sXH5ejKNRtM8R9sNNYWMJ5dpCtXlwx6dIySqWSv07SmXOoWCmZ4d9jaG6YmtX306QQgz+Zw8JwV
	AUnD3pY6px3t9+V8Fodp5VlUFJ7Xk5O0SamHF2uDX/z6+l6JUmvTCYH2hjbrzFw7m1BIPKutRhO
	NeoAvPRSAxT+1rEmiUMTHSwIr5ueI9Mc+I4lZp/50Rdss6PEd/NZ3U9jP2hQZqejUk=
X-Google-Smtp-Source: AGHT+IHH9m3q2etgroYnez0324/3trSY9Dkzo06NVIIGxp/haVLzoestKE36Ld6ASEnjP6CmgOb+Pw==
X-Received: by 2002:a05:620a:244e:b0:7b7:68c:d7ca with SMTP id af79cd13be357-7b9ba7ecb44mr10363732985a.48.1736117814730;
        Sun, 05 Jan 2025 14:56:54 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b9ac4cd461sm1455617785a.105.2025.01.05.14.56.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jan 2025 14:56:54 -0800 (PST)
Message-ID: <9a5cb223-c5bf-4347-84b5-bbbd9a4259af@gmail.com>
Date: Sun, 5 Jan 2025 17:56:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cnvQYPbeWqSzqA3Fj3slZu1lNU5b5InhbKOrlXdVhI@lists.ettus.com>
Message-ID-Hash: 34JOT45EQR6J4CPMS5BIXQHUPLGINQTU
X-Message-ID-Hash: 34JOT45EQR6J4CPMS5BIXQHUPLGINQTU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/34JOT45EQR6J4CPMS5BIXQHUPLGINQTU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMDEvMjAyNSAxNzoxOSwgY2pvaG5zb25Ac2VycmFub3N5c3RlbXMuY29tIHdyb3RlOg0K
Pg0KPiBJIGhvcGUgZXZlcnlvbmUgaGFkIGEgZ29vZCBob2xpZGF5IGJyZWFrIQ0KPg0KPiBXb3Vs
ZCB5b3UgbWluZCBwcm92aWRpbmcgc29tZSBndWlkYW5jZSBvbiB0aGUgMyBxdWVzdGlvbnM/DQo+
DQo+IFRoYW5rcw0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJIHdpbGwgYmUgYWJsZSB0byBjb21tZW50IHRoYXQgJ1Mn
IG9uIGEgdHJhbnNtaXQgc3RyZWFtIG1lYW5zIHRoYXQgYSANCnBhY2tldCBnb3QgZHJvcHBlZCBv
biB0aGUgbmV0d29yayBiZXR3ZWVuIHRoZSBob3N0IGFuZA0KIMKgIHRoZSByYWRpby7CoCBUaGlz
IHNob3VsZG4ndCBldmVyIGhhcHBlbiwgYnV0IHNvbWV0aW1lcyBmb3IgYSAiZnJlc2giIA0KVURQ
IHN0cmVhbSwgdGhlIGtlcm5lbCBkcml2ZXIgd2lsbCBkcm9wIGEgVURQIGZyYW1lIHdoaWxlDQog
wqAgaXQgY29tcGxldGVzIEFSUCB0cmFuc2FjdGlvbnMuwqAgQnV0IHRoYXQgc2hvdWxkIGhhcHBl
biBub3QgdmVyeSANCm9mdGVuLCBhbmQgdGhlcmUncyBsaWtlbHkgYSBrZXJuZWwgcGFyYW1ldGVy
IHRoYXQgY2FuDQogwqAgZGlzYWJsZSB0aGlzIGJlaGF2aW9yLsKgIEJ1dCwgZm9yIGEgZnVsbHkt
d29ya2luZyBuZXR3b3JrIHN0YWNrLCBteSANCnVuZGVyc3RhbmRpbmcgaXMgdGhhdCAnUycgc2hv
dWxkIGJlIHZlcnkgcmFyZSB1bmxlc3MgeW91J3JlDQogwqAgb2ZmZXJpbmcgYSBwYWNrZXQgbG9h
ZCB0aGF0IHRoZSAic3RhY2siIGp1c3QgY2Fubm90IGNvcGUgd2l0aCBiZWNhdXNlIA0KaXQncyBy
dW5uaW5nIG91dCBvZiBzcGFjZSB0byBwdXQgeW91ciBwYWNrZXRzLg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
