Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6AFA32F02
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 19:57:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 468A2386094
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 13:57:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739386622; bh=+Hs5SM1ctTmC48zplOMDLO/hIkogn6XS8bpJAmuh6DU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N3/Z/3hh/oHhkeQ5H7CVrNE48uknLPu6EJwRdIk1II91/8FoQg9Hf/mQLFWwd6VzU
	 H85lwFzlxrt0BNilkuUjPh0kq1APdO0dtQcx7mftkI44r1XyLiWvGvt/g1shZmHrKi
	 k5xTjood5IkVgP1aqwFmexFERZ1+k4TMEtGuwFQDkV4wNPa45+YJIU+TBdzq89L3LJ
	 aRx7Dtm40uES4GJIb2Q4hg1KyHOePuDm6qHhxYejn4r2uREellR7U4JpKmgmY/BaJd
	 GLbhL9DjgunmPbYI2DqSxs3UWNnn5PgKyrBjFwbWBvv9vcQIm3WrVFwy/0AhSRcjN3
	 XZS8NhkS/L+fw==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 816FC386071
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 13:56:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xmo1c5VQ";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7c05f3dde21so3736785a.2
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 10:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739386574; x=1739991374; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v3dGZOOp6AILBrfKjjNUXKaYkIJuHB8+XEu0OBNO6sU=;
        b=Xmo1c5VQh6zC8+l2xviVoGAyxM0NcUMUiHBGmTvn/rajHED8ni+6GncqMq6+YzXRD2
         vXBhfpN6WrKDqLMgi0WEQ/N0M2oBccHDH+YQ0/KEtZupClVfMdiM7S9RBGuhv6zykqyH
         RkwoupDcgP/AjDcsmS1iTS9cnpHWP6inDeU4psUbZsXYxCwJlCLWYT3azmZMj6POAgid
         yg3BUBdM4lvbWCBEekWry/2E+4BnysQl4EAeFDtRcmk/4R/8cAleepp4F/zecjJ5GZWm
         jnarz3NDis3HgwEpDlnVWyauVTvatxqlanK+v73zRSGAgyqyCEuHsb32Txm2Fd2U+3mi
         2F6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739386574; x=1739991374;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v3dGZOOp6AILBrfKjjNUXKaYkIJuHB8+XEu0OBNO6sU=;
        b=s0ToI3475568+lPDq/HOKKJrOuagUbl9W2l3p33aZHCgolwxq8f2gIELuR9qOEOY4R
         MAj1uageLZqR83MZD53b6lpj+9EGH3feFaNv6iMlFlflv1iJxZ+7mwOiS3FuqNSXXTd5
         ID9NWoZy6xTXyeWjDXYzPAYVW4lpVE2jEQLuZYPby8Mt8HAfrOrYybRh66LqdvBrQc6h
         jcsRzd2WNi2K5jgbyYRD8+Q+jNpD9zYfcw0zmwwJSBrvoN4ufLcm0weqZa0SC9R9042g
         RTy8m0uW9le/V9ju45Gh2blTw1YenJ1AN2AAbHB5l+2OgcKk843jpHD2qId5xIwCUa0l
         Aecw==
X-Gm-Message-State: AOJu0Yx9rzpQIGUNvEYSjVUWcFcgMsbdJcVOoa61DJUpvk4IfMFTYCTz
	8yxwOF1mURjsFWPKxMJFkwhgoOCKdE1isKhiMlqFu1e/ikSEjUio2si0MQ==
X-Gm-Gg: ASbGncsBSBWk7cptEZ1S7UzsOVAgxmQ6/ImNiDcTufl0YBb/z4OvgaPtKpiswLSpn74
	4LxGc5UbPoHml87JdkLfIg5MaXyqqqYaBpQNSlf1uCB+x0XsCH5YmXqvLvW4Uj1aMxaZ7Ukjqp5
	Mv/GCwzGfy7E89tm8xBKZSSFEE2wGPJVs6xdAdoln4ZobVphzj7QWNrvwz3oUhAhesU2mVMiUVw
	drvG+eaA3C85/L64YbXNacxbRIi78h6Jx+FpUsGadISFEIGL/xnOfC4MbS0ctmeiCGjin8jxLJN
	ZFvGxnCX7BJyhjbjxoIJyHktMA==
X-Google-Smtp-Source: AGHT+IHSuLXW9N2BdacCu5NrrWf5NGMntuR3NJIWvaCfYVGIL23j0o6JjKAatOHWMHzY5TIePKNvYw==
X-Received: by 2002:a05:620a:4729:b0:7c0:7303:8d62 with SMTP id af79cd13be357-7c07a1e4251mr83040885a.45.1739386574484;
        Wed, 12 Feb 2025 10:56:14 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c056b42b89sm591007985a.69.2025.02.12.10.56.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 10:56:14 -0800 (PST)
Message-ID: <788c59a5-403a-4a8f-8733-ef75ca05944f@gmail.com>
Date: Wed, 12 Feb 2025 13:56:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEJzeq-FnXQjN8R9jh2LJ2mFj2cZYBiAmfOziLVTDyE+4quzBw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEJzeq-FnXQjN8R9jh2LJ2mFj2cZYBiAmfOziLVTDyE+4quzBw@mail.gmail.com>
Message-ID-Hash: JSLTDXHI4LVJCPQTUNCCC7N73V4XLLEU
X-Message-ID-Hash: JSLTDXHI4LVJCPQTUNCCC7N73V4XLLEU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC with N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JSLTDXHI4LVJCPQTUNCCC7N73V4XLLEU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDIvMjAyNSAxMDoyMiwgSm9zZSBNLiBOdcOxZXogT3J0dcOxbyB8IENVRC1NYXLDrW4g
d3JvdGU6DQo+IEp1c3QgdG8gYmUgc3VyZS4gSXMgVVNSUCBOMjAwIGEgbm9uLVJGTm9DIGRldmlj
ZT8NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KVG8gZm9sbG93IHVwIG9uIHRoaXMsIGJlIGF3YXJlIHRoYXQgTjIwMCBhbmQg
TjIxMCBhcmUgZ29pbmcgRU9MLCBkdWUgdG8gDQpjcml0aWNhbCBwYXJ0cyBubyBsb25nZXIgYmVp
bmcgYXZhaWxhYmxlLg0KDQpUaGUgc3RvY2sgb24gTjIxMCBpcyBiZXR0ZXIgdGhhbiBOMjAwLCBm
cm9tIHdoYXQgSSB1bmRlcnN0YW5kLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
