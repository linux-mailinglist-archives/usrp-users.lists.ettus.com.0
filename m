Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2B25A9CF1
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 18:20:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2DCA383E32
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 12:20:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662049204; bh=YgQ+mAt06Ym7U0wrtNI14Ebdc8t/DXoEJbDcT3HN3H0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=O6E2jvBTjj9d84JwWGNsKYt0Xbw/vF/8yJBMUMxIh6quTQ0pz5KnO12c+wQfe3Vy7
	 eVDahdHJ4MlBJeSDrTjHs+SFyh5f+gQ8motLKMhFL3CnUlyV86VtBcAFhq8GHys3wR
	 u/dJm8bRPOr/L1tkPz4ZaYkeyCP6yV+/xgjQdgw50JYzX8WoS1fDoXAUytmWOY57j5
	 BKsNikWM77sQPNn+xO2d5xReERvQLO2ozkkBTwNkz/B4+2G5baiup7XEEPBtpPKraa
	 WtXXntBL5QHIbB9qJ+O71SlWdaHC7v31ZZebN+l0Kv+A9spcDFD78Fg7EfjpQQNK8i
	 +SAFnVaw8ivAQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B117387CFE
	for <usrp-users@lists.ettus.com>; Thu,  1 Sep 2022 12:19:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="X4aTzT/8";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id se27so28037105ejb.8
        for <usrp-users@lists.ettus.com>; Thu, 01 Sep 2022 09:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date;
        bh=h1Xwo1kvXcIwsa0S8cfJq8dfbdcowT7SNlJSiwvZ+VI=;
        b=X4aTzT/8CKSN5EL76gLRD/ghpPGBH/mSUzAkF2A3qNQm+dxWJQKKrheq2gOECA85vE
         EdUBHoDO2KvhmZE2qOMbdHUEs7iFDL46x8hzmmLA4K+zYYLMCPiqJ4oXKgmCvOGjJTcn
         3rF6XEkmdFpOAqsFS3NxHZsXUliJay1Ak2Ehs5OhqdTsU4OYwRN36PH0K6h0/pwzuSqp
         hLNg33j8PmVA/UyDXJgBXcOvEf9pqVTVnUFDq54NSUcKqKdVcdx1oVIy3KW+4amWN6VI
         GCOgmAeMBOEhsrXvPP8/JmJkQqDx1XLBb3p2sZPSL3ZM1B4poXeEfi5V93rV5Cse6CyM
         JeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=h1Xwo1kvXcIwsa0S8cfJq8dfbdcowT7SNlJSiwvZ+VI=;
        b=F25UOESQl8vJm1yxCD+P4zOI0ptrie5q2+m1GyT2aYCUbAD9qqU/zWQNuERaJQFPHA
         No2zHvFs1gH5ahWsNHV7mGOL/thfdjPwZ7M4CbIZhJyKrMI6PKAtOrAtJsEjw38R5a1j
         jNRYICntcEnTBbeD9ZWvSjl//9NuAVgnDhcRFx8/2D4tj8WM0CmS+KsartwB46qC92la
         N3Hs/cO2Ifjedivdq0/k8X1gRA4SJJ/wQM2d8668171rk6lbVlaQNoF9zs9PaAt8O3Zw
         LcbYjfGa7YiCuwcnVt5TvKUxbQTfb6Tj9kBTYcHCKb1/YrK9U+SSGq64sOBatbP67lLq
         fImA==
X-Gm-Message-State: ACgBeo34h1KwOme/3GMDDTrrf5eCIfwtRWqU7xx+UBbAYb+yUYBM2Jam
	ywTCg4fdcS4w5znoUPuDIpq9Pn4j6D2zUVTW
X-Google-Smtp-Source: AA6agR6u07zYQn61TmmHeNdtJYdkKw3JR/xl+YDWI6QPOF5UipxCmnwWYGzeetuxesc6526Ws4cK5A==
X-Received: by 2002:a17:907:7204:b0:749:7839:4dd2 with SMTP id dr4-20020a170907720400b0074978394dd2mr1563478ejc.714.1662049146747;
        Thu, 01 Sep 2022 09:19:06 -0700 (PDT)
Received: from [192.168.1.21] ([151.21.50.101])
        by smtp.gmail.com with ESMTPSA id cq12-20020a056402220c00b0043bea0a48d0sm1530167edb.22.2022.09.01.09.19.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 09:19:06 -0700 (PDT)
Message-ID: <3b8286de-d562-b5f8-8c59-7e1b0b073880@sma-rty.com>
Date: Thu, 1 Sep 2022 18:19:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTRxCVCibZ9ugK+LZ0D4jQccRyeD4=iObboo_0QXJmwNDA@mail.gmail.com>
From: Federico Civerchia <federico.civerchia@sma-rty.com>
In-Reply-To: <CAB__hTRxCVCibZ9ugK+LZ0D4jQccRyeD4=iObboo_0QXJmwNDA@mail.gmail.com>
Message-ID-Hash: 5XTIOTCE6VQBVKMHMLO7B6EUC3SRE7WP
X-Message-ID-Hash: 5XTIOTCE6VQBVKMHMLO7B6EUC3SRE7WP
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N310 Exception errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5XTIOTCE6VQBVKMHMLO7B6EUC3SRE7WP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBDb21tdW5pdHksDQoNCkkgYW0gZmFjaW5nIGFuIGlzc3VlIHdpdGggVUhEIDMuMTUuMCBh
bmQgVVNSUCBOMzEwIHNpbmNlLCBzb21ldGltZXMsIHRoZSANCmFwcGxpY2F0aW9uIChPQUkgZ05C
KSBkb2VzIG5vdCBzdGFydCBhbmQgcmV0dXJucyB0aGlzIGVycm9yOg0KDQpbRVJST1JdIFtVSERd
IEV4Y2VwdGlvbiBjYXVnaHQgaW4gc2FmZS1jYWxsLg0KaW4gY3RybF9pZmFjZV9pbXBsPF9lbmRp
YW5uZXNzPjo6fmN0cmxfaWZhY2VfaW1wbCgpIFt3aXRoIA0KdWhkOjplbmRpYW5uZXNzX3QgX2Vu
ZGlhbm5lc3MgPSB1aGQ6OkVORElBTk5FU1NfQklHXQ0KYXQgL2hvbWUvc21hcnR5L3JlcG8vdWhk
L2hvc3QvbGliL3Jmbm9jL2N0cmxfaWZhY2UuY3BwOjUwDQp0aGlzLT5zZW5kX2NtZF9wa3QoMCwg
MCwgdHJ1ZSk7IC0+IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IEJsb2NrIGN0cmwgDQooQ0Vf
MDBfUG9ydF8zMCkgbm8gcmVzcG9uc2UgcGFja2V0IC0NCkFzc2VydGlvbkVycm9yOiBib29sKGJ1
ZmYpDQppbiB1aW50NjRfdCBjdHJsX2lmYWNlX2ltcGw8X2VuZGlhbm5lc3M+Ojp3YWl0X2Zvcl9h
Y2soYm9vbCwgZG91YmxlKSANClt3aXRoIHVoZDo6ZW5kaWFubmVzc190IF9lbmRpYW5uZXNzID0g
dWhkOjpFTkRJQU5ORVNTX0JJRzsgdWludDY0X3QgPSANCmxvbmcgdW5zaWduZWQgaW50XQ0KYXQg
L2hvbWUvc21hcnR5L3JlcG8vdWhkL2hvc3QvbGliL3Jmbm9jL2N0cmxfaWZhY2UuY3BwOjE1MQ0K
DQpbRVJST1JdIFtNUE1EXSBGYWlsdXJlIGR1cmluZyBibG9jayBlbnVtZXJhdGlvbjogRW52aXJv
bm1lbnRFcnJvcjogDQpJT0Vycm9yOiBCbG9jayBjdHJsIChDRV8wMF9Qb3J0XzMwKSBubyByZXNw
b25zZSBwYWNrZXQgLSBBc3NlcnRpb25FcnJvcjogDQpib29sKGJ1ZmYpDQppbiB1aW50NjRfdCBj
dHJsX2lmYWNlX2ltcGw8X2VuZGlhbm5lc3M+Ojp3YWl0X2Zvcl9hY2soYm9vbCwgZG91YmxlKSAN
Clt3aXRoIHVoZDo6ZW5kaWFubmVzc190IF9lbmRpYW5uZXNzID0gdWhkOjpFTkRJQU5ORVNTX0JJ
RzsgdWludDY0X3QgPSANCmxvbmcgdW5zaWduZWQgaW50XQ0KYXQgL2hvbWUvc21hcnR5L3JlcG8v
dWhkL2hvc3QvbGliL3Jmbm9jL2N0cmxfaWZhY2UuY3BwOjE1MSB0ZXJtaW5hdGUgDQpjYWxsZWQg
YWZ0ZXIgdGhyb3dpbmcgYW4gaW5zdGFuY2Ugb2YgJ3VoZDo6cnVudGltZV9lcnJvcicgwqAgd2hh
dCgpOiANCiDCoFJ1bnRpbWVFcnJvcjogRmFpbGVkIHRvIHJ1biBlbnVtZXJhdGVfcmZub2NfYmxv
Y2tzKCkNCg0KSSBoYXZlIG5vdGljZWQgdGhpcyBlcnJvciBhZnRlciBJIHN0YXJ0ZWQgdGhlIGRl
dmVsb3BtZW50IHdpdGggTUlNTy4gDQpSZWJvb3RpbmcgdGhlIFVTUlAgcmVzb2x2ZXMgdGhlIGlz
c3VlIGJ1dCBJIHdvdWxkIGxpa2UgdG8gcnVuIHRoZSANCmFwcGxpY2F0aW9uIHdpdGhvdXQgcmVi
b290aW5nIHRoZSBVU1JQIGV2ZXJ5IHRpbWUuDQoNCkNvdWxkIHlvdSBwbGVhc2UgcHJvdmlkZSBt
ZSBtb3JlIGluZm8gYWJvdXQgdGhpcyBiZWhhdmlvcj8NCg0KVGhhbmsgeW91Lg0KDQpCZXN0IFJl
Z2FyZHMsDQoNCkZlZGVyaWNvIENpdmVyY2hpYQ0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
