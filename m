Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBA46EE3E1
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 16:28:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D08038485A
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 10:28:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682432906; bh=NM/Ya/MDHiCQBsj1uY3e4WkqKvX3llayWv8DmqCMfAI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A0U9K6lt/DGrMHNcCpWJxRl4pJw2m9iJtje+xowfc50mutEQWBLcRKtkwv+BJD1IZ
	 hw/nIUBMYG4x8BzcqDoK9SyVxUiGxKxPAaKr6pxzw1sOtfOjhpvAMkJ1Qc9yINK/eP
	 MVMSOoWrxoforySBtuI0Ao8x0YTEt9CXWbggGueswQ56pwv6P3bso2NuirrFQZGEMo
	 uDoEAvd12zzFbayUg/JrrXVGCU0SOKUNSX/qfdKcleaIkkZ5wGzc+rxhTugRs025Rr
	 4LGRNAmPOjzL0wScCc84L7PNoOzhvSmCM1Rz6FAS19Se+Md7B1RY3pzTp5q9RuGUXQ
	 lB6iKWU5HrElw==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E4D7938478B
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 10:27:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rPcGK4qr";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3ef31206cbdso27773881cf.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 07:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682432863; x=1685024863;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xoO14TrZZGLLKm/9q210IE83TKPNhpXdA74HSyOvTvY=;
        b=rPcGK4qrNiJi73KR4rCMtMQ7qE0y/NPO7lY0NROfR2IYdiGZoK2U5bqae1cnWhF9Ia
         VYsDDuol9hzYln5KgDbA1QRE6nCRaYYYsQb06xE3tmtwKvNWVyW76nhtllt4w+41gy2j
         N/JMwcBNh50SsXjI+lDMNoZ+rJDB67GT7jJ5D5EhpazA1Zahi/Gu3T3sK/BTFsVJVPnA
         +pUnPQ7VQ6Hbk0CGzv8tQdtW+ug89LAkzghNZrfOzqZWW4RBV/piW3rU1VGwG+77PM2O
         IihkoLMA/b+vakFqLIBKv0F+OxU0tkOXMHREIEUmcuBhusFbu6CE+Tg5wkh2kGLAHQCa
         cGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682432863; x=1685024863;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xoO14TrZZGLLKm/9q210IE83TKPNhpXdA74HSyOvTvY=;
        b=iy0YVZESCItaXAlYUIou2EPImxSjAuyAopxz0q/r5dsYzqYWvCgQDKzsCTSFmpz54Y
         K65YBnEJpiPEuhTlAANeHQgZp29OBmNVPmKhj4Cv9m0kWd7QLn1PD1ou9dBYnSLPEAEN
         AAu/q5hpKttyRFPSa9PcsT0IqyD4tQu8q9py+tzT7zwGSf7yQbar44LLBFrKVJxm8FSO
         tL5GxpTQ4cbSHPqd8IeuPR4zVKHLxgNCgHK16guwH6XGSSzNIfKY5cG4l/I6Tx1hGo6U
         YG1dk2YCamN1Mi2yxfW5iwi7+Mq9hQClUgLEByERq+vaAdqfFKqAc6MNamtiTB1Cjkqr
         YcGA==
X-Gm-Message-State: AAQBX9duBlpqCvwoFHx7gRwreUH1fehYxbfH3O5uH50OZ4ER16/cgz31
	h3fnqDV5FFzU27pVrRpp+ajlzUGQgDQ=
X-Google-Smtp-Source: AKy350bJJodn/qQulpavV74C61+fNdjhjtiQ/tZ8xI8xnxz/pECB+p6QzoPtZSj12CPiOonoPcqr8g==
X-Received: by 2002:a05:622a:15c9:b0:3e8:62da:5d19 with SMTP id d9-20020a05622a15c900b003e862da5d19mr26163163qty.25.1682432863225;
        Tue, 25 Apr 2023 07:27:43 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id r18-20020ac85c92000000b003f0a7c13fcdsm1087627qta.74.2023.04.25.07.27.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 07:27:42 -0700 (PDT)
Message-ID: <a2a6517e-85f2-b5c1-6157-1e04e19abf7b@gmail.com>
Date: Tue, 25 Apr 2023 10:27:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
Message-ID-Hash: CXG2DZAWNCZ67VC5FQOWMGNJIXUZF6BV
X-Message-ID-Hash: CXG2DZAWNCZ67VC5FQOWMGNJIXUZF6BV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXG2DZAWNCZ67VC5FQOWMGNJIXUZF6BV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxMDoyMiwgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGks
DQo+DQo+IEkgYWxtb3N0IGZvbGxvdyB0aGUgbGluayB0byB0dW5lIGFsbCB0aGUgcGFyYW1ldGVy
cyBzZXR0aW5nIGV4Y2VwdCANCj4gaW5zdGFsbGluZyBEUERLLCBidXQgZm9yIG1vcmUgdGhhbiAy
ME0gc2FtcGxlIHJhdGUgSSBzZWUg4oCcVeKAnSANCj4gdW5kZXJmbG93LiBJcyBpdCBub3JtYWw/
IGNhbiBpdCBiZWVuIHNvbHZlZCB0byBhY2hpZXZlIG1vcmUgdGhhbiAyME0gDQo+IHNhbXBsZSBy
YXRlIHdpdGhvdXQgaW5zdGFsbGluZyBEUERLPyB0aGFuayB5b3UuDQo+DQo+DQpJdCBkZXBlbmRz
IHZlcnkgbXVjaCBvbiB0aGUgY2FwYWJpbGl0aWVzIG9mIHlvdXIgY29tcHV0ZXIsIGFuZCBleGFj
dGx5IA0KaG93IG11Y2ggY29tcHV0YXRpb25hbCBidXJkZW4gaXMgaW52b2x2ZWQNCiDCoCBpbiBw
cm9kdWNpbmcgeW91ciBzYW1wbGUgc3RyZWFtLsKgIFRoZXJlJ3Mgbm8gc2luZ2xlIGFuc3dlciB0
byB0aGlzIA0KcXVlc3Rpb24uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
