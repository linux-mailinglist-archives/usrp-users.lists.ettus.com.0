Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EECAACFFF
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 23:46:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26CCF38624D
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 17:46:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746567976; bh=SrOJcdFuGqoz6VyhVLdNYJofbse//72iYqDSlEq2HuM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YG6TB6La4hf2mldleQcvY3Md6WrY+CZBFNtYlaJ716k5WOE56tugSmfC3RPY3KCfA
	 JxHJzlVW/luE6i+TOLppw7AkT1HGcA9aEvMvqOGnqHGeGu+SM5eEjFJkioL+MeDu3P
	 LpYz739vJTkSseYfV4rQ9vYs2CHB/6x9O0gmKkEjzneV3FNj7jroq7arZz3rXQ8hqr
	 pUn0jdbCmgRBkuKAOtVcxrSP5HCW+8WedWfsCze6kbGhRKyHHNCCN/F5SDLU3zSdrK
	 +1h+vpN/aeQQiDDUxcjcg87sLyIKe2o1aclj2vEjfwDm3JpJllbafWmlNAFvU/yZau
	 ildZb3EDBGb0Q==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5085638559A
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 17:45:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DNdwydSn";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c7913bab2cso657532385a.0
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 14:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746567924; x=1747172724; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c5frSAWKBIkTZi2M2ZiHpeK98EbAI3XSSxJfB0KdXkw=;
        b=DNdwydSnY/w6QLf0E+/2kCqnLKqQQZy7RPuF7UIuxYkfvWnsBEdKeWsyfdfvc6rj5Y
         gui+5JnHQf4E6fDl3KrZohLhZl4L60oxYM+Zbqt5yZXPCUa/x9y0oqGA88eYlqDmySkh
         EmBcPE77cxg2P0ThcPUJMLQHVLugUrbVKZGMzajhOitACrJiMU3buAxQ9nk0PfL5X9sA
         sLJzLRQ59TP9r1zCtm5TBhamSQB3l6ktofIu8nsFAynUkWmVNQno5v1fnVtCaEDRY7Ir
         Ng1jpXY1w/nHFWxr6YvVN3t+c7NiUPb3f8lQkCjGGzcyRBK8L/UncHpZCdltlQ8YiEw7
         +Lzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746567924; x=1747172724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c5frSAWKBIkTZi2M2ZiHpeK98EbAI3XSSxJfB0KdXkw=;
        b=QNVjrxV3Ttae/VZIn0Svx3YXXnVWtvtOjG3R//XTFu01cr8vkOzYG1987FxkItdJoL
         Ro9hUCLgqBWpQVcyj6us7GxNZvNZUn57A+RzPZ0yRpqN1zwY5qeRTvNpULqq+Mf5Sl/l
         XWsx7yV0IdLmu6ZbceQ8/xF58jHO9ZUostM8LiMDT1Sy/A6MdLFAcwRxCeKdz3seNgxq
         XSRc1QcWh2cUF59LORkzSkXHEaWJFWAE3iYT1Tl6okOPfjlW8HWTLiLKK+8PSFo9NEhs
         RQXInA+JZNaPeGJ9jKNrRpGha5F/8rdBtGso0miej5mSAbQOogTvXe5vJZIKk7zI9Zim
         yYZA==
X-Gm-Message-State: AOJu0Yzf8pjR6TWFHFWn9lCScSnjby/rArhgHhqP6ozRr+v9OyFqJctc
	Fv21bjpwIGMiW3rNeXE9R9lr1nBXCbdJaPZnHFol4E1LVqLcXydHu10An6vO
X-Gm-Gg: ASbGncv/hICtvPK2qNWCh2XbJ1fgTKOXzCe+0YpmR0iCzffT5EMWN6b66HqfcRN32yw
	sSaF/zNR5qRQyrP3OQ3T+sCMfL5K7upVyzozk2yWAJ6RiBQKAuP4vle0EpasFHjiux9gCa/LxAg
	apTZQhBo/InnvZQnCgUgIEvBXsMwYTbd31u8wsNdTTGNpzGPHQrA77OcLI6L5zUCoASnxfV/ML2
	6nzl7Ihvs8wUbTYtT8CvTM5vibdu5ZOo5DkCVghAl9O5cVtWW1CHZEn2xz2TL6afUIQHdstWIUv
	3slz32TkUxJM7oTjSm19nR1scWc0x+QLkUKD/FvPHhFHueKzKw==
X-Google-Smtp-Source: AGHT+IHAF6j4ehU+Pa2Ij/rSie7WKCwq8dicIG0UcaSqB9/K1kcid6DpSJqcVmxOvpeljV/qplyz6Q==
X-Received: by 2002:a05:620a:45a3:b0:7c0:b523:e1b6 with SMTP id af79cd13be357-7caf737b84bmr136682185a.11.1746567924059;
        Tue, 06 May 2025 14:45:24 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7caf75b874csm31414385a.82.2025.05.06.14.45.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 14:45:23 -0700 (PDT)
Message-ID: <5ba0ab0c-6ee3-48be-bc40-43c9620790ea@gmail.com>
Date: Tue, 6 May 2025 17:45:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA@lists.ettus.com>
Message-ID-Hash: DWATIRCYEQSEJ4MW4OXRZZD4SFTYGXIE
X-Message-ID-Hash: DWATIRCYEQSEJ4MW4OXRZZD4SFTYGXIE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWATIRCYEQSEJ4MW4OXRZZD4SFTYGXIE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDUvMjAyNSAxNjo1NSwgd2h3QGFwcGxpZWRyYWRhci5jb20gd3JvdGU6DQo+DQo+IFdl
IHRyaWVkIHBsdWdnaW5nIHRoZSB1bml0IGludG8gc2V2ZXJhbCBQQ+KAmXMgYW5kIGxhcHRvcHMs
IGFuZCBpdCBzZWVtcyANCj4gdGhlIGRldmljZSBpcyBub3QgZW51bWVyYXRpbmcuIEkgYW0gc3Rh
cnRpbmcgdG8gdGhpbmsgdGhlIEZYMyBFRVBST00gDQo+IGlzIGNvcnJ1cHQuIElzIHRoZXJlIGEg
d2F5IGZvciB0aGUgdXNlciB0byByZXNldCB0aGUgRlgzIGZpcm13YXJlIHRvIA0KPiBmYWN0b3J5
IHNldHRpbmc/IElzIGEgcHJvZ3JhbW1pbmcgY2FibGUsIEZYMyBpbWFnZSwgYW5kIHByb2dyYW1t
ZXIgDQo+IGF2YWlsYWJsZT8NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KVGhlcmUgaXMgYW4gRlgzICJoYXJkIHJlc2V0
IiBzd2l0Y2ggb24gdGhlIGJvYXJkLS1TVzEuwqDCoCBQcmVzcyB0aGF0IHdpdGggDQppdCBwb3dl
cmVkIHVwLsKgIERvZXMgaXQgbm93IHNob3cgdXAgYXMgYW4NCiDCoCB1bnByb2dyYW1tZWQgRlgz
PyAoV2VzdCBCcmlkZ2UsIEkgdGhpbmspLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
