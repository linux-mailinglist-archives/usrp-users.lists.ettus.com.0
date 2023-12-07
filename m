Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F3280893A
	for <lists+usrp-users@lfdr.de>; Thu,  7 Dec 2023 14:33:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EADEF385016
	for <lists+usrp-users@lfdr.de>; Thu,  7 Dec 2023 08:33:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701956012; bh=JNF5tCvIzQ5m644Bo7LLGJHZMz8RVxWb8+yUR8ue8gk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hJ2zaJj5Sgr6ZqZNtISZ5h/5EluGZZ68vCStP7xLrxqAY1wgold8jSm+nrMNbcuW6
	 WPM4QCsVd5wqS+J9r8KHU8t9XQ7Lx3HbFE9yFqLhlxo6Zvm99CANOE5BvKvEd8QR4T
	 CYn1+T/plRJLnYKKO4f2lN7tS1/0dPpxdCemTNHCZPrIdG0Q8D45NqgYA20cOKyUSq
	 lkOputWTJDeZOxFf/VPCvfpYY761GHCiSe7JYBuibZlpWt9ZaR7x4Ilqeo92Yls28+
	 suc5kV2psNRECXLQch2diHfdWty2bHwueVA9CQzY6e2oDEjQ01ZWAE446aXf83/rJ9
	 Z6VZbv2OBgDJw==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FDBD383F03
	for <usrp-users@lists.ettus.com>; Thu,  7 Dec 2023 08:32:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZfK2/8cJ";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-77f3b4394fdso31164185a.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Dec 2023 05:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701955962; x=1702560762; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CC4bHQAjw21rCOwYTr1xKzHpkFtWzRmDFT5ZoDaqgGs=;
        b=ZfK2/8cJG0c0jgvD6EYH9zPNGrnfZklYpkCuLWo1ktWRitWrznAzhTtVbWrYC8AV5s
         tf//BrK3vqVubDm6WLpOpn1COTv7jEMNszAAPV3hOwKG1rS8DrIONRxASHBjFLg+kTkg
         uGMV5GhIrEwPubdLa4/IPHf+YkoRXLJ7tgRYsFnjSv7f9TDDzV5hB1Gm/m/fYM3NzFqf
         FobxaFhIrci+uZHDCzmc9N0U3ahEN8irgfw/56y8mTnnb2nf/FSfCGmbZW28FHT6+DVK
         xoQsLkqPoVRoWidv34xtZafv8iw+iHki+ECHDd9+MvxoTIBDL4yD9+ZdrMrhliYrfoI9
         0VIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701955962; x=1702560762;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CC4bHQAjw21rCOwYTr1xKzHpkFtWzRmDFT5ZoDaqgGs=;
        b=UTr8Z6lQEt0rzzNLG+1RQM5QItXJzRsgLv3MkcWBoWQjAO82RPrA1oHDML+qHlQbvi
         Bfl+M3/9sx2tZpxT9jqUe3B4Blh0SQndkL3dy+lTt+ECmspIADEbGsd+tIGVoWskZm6B
         eoeU5IJkZyEp4k+6P9Iu7B7vddqXIE4R9iG46sehBphOmaj2YB8iPd3f+1EGW8pRak6a
         hcAnJSWRdymfzJwzYBt6wklfqXOAC1KXKZ5U+gN+R4gXuh1d7qbjw8DbF3bu8sMBwL0U
         cYymYN3WPZlhGGQfwN16iXDTa59p3ftfyH33jOpcWwi4GiWmqpOJnwIHvw7oWOkj3a+s
         bYWQ==
X-Gm-Message-State: AOJu0YwwTLf43QNfA8Udn3LQ1sB+BAyvMiCAzE5eUWF5Q3DyrMmffT5C
	CMq9iHiLmp8JwBeEYZjWguakqfz+7qs=
X-Google-Smtp-Source: AGHT+IH3k+Ls1IWcNr9YPpxcotm9M3xuPYU8RxIdH/V5EmnLetVEwojSBDCb9SvPhb0JsDPD+0mdlQ==
X-Received: by 2002:a05:620a:b06:b0:77f:3d4a:6dc0 with SMTP id t6-20020a05620a0b0600b0077f3d4a6dc0mr1094927qkg.30.1701955962607;
        Thu, 07 Dec 2023 05:32:42 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id x25-20020a05620a0b5900b0077dc5e60fa1sm394111qkg.54.2023.12.07.05.32.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 05:32:42 -0800 (PST)
Message-ID: <8ddcb8f6-ceda-4759-aba8-0d3c2149c8d9@gmail.com>
Date: Thu, 7 Dec 2023 08:32:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8@lists.ettus.com>
Message-ID-Hash: U3YNTU63TDZHLJDSEBJ7BHMRXHMU57UY
X-Message-ID-Hash: U3YNTU63TDZHLJDSEBJ7BHMRXHMU57UY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3YNTU63TDZHLJDSEBJ7BHMRXHMU57UY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMTIvMjAyMyAxMTo0NSwgZW5nci5tdWhkLmhhc3NhbkBnbWFpbC5jb20gd3JvdGU6DQo+
DQo+IEhpIEkgYW0gZ2V0dGluZyB0aGUgc2FtZSBlcnJvciB3aGVuIGkgYW0gdHJ5aW5nIHRvIHJ1
biANCj4g4oCccmZub2NfaW1hZ2VfYnVpbGRlcuKAnSBjb21tYW5kLiBjb3VsZCB5b3UgcGxlYXNl
IHRlbGwgbWUgaG93IHRvIHJlc29sdmUgDQo+IHRoaXMgaXNzdWUuIGFzIGkgYW0gbmV3IHJlc2Vh
cmNoZXIgaW4gdGhpcyBmZWlsZA0KPg0KPg0KV2UncmUgZ29pbmcgdG8gbmVlZCBtYW55IG1vcmUg
ZGV0YWlscy7CoCBBIGNvbXBsZXRlIGVycm9yLWxvZyBmcm9tIA0KInJmbm9jX2ltYWdlX2J1aWxk
ZXIiIHdvdWxkIGNlcnRhaW5seSBoZWxwLg0KDQpXaGF0IE9TIGFyZSB5b3UgdXNpbmc/wqAgSG93
IGRpZCB5b3UgaW5zdGFsbCBVSEQ/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
