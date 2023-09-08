Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CAF797F86
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 02:10:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75207385001
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 20:10:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694131840; bh=1P22fAuKl5aTPgpImLFP79qqCI8dRG7wkF33lOiJwbw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=it7C22T5hx7vWXZrs03kQ5ASvGoIhzdZJJFBcn9zoiKW1XP+SckMAFK+yOoxlo2AD
	 ss8sYMHRrkt8m47axFXZtOdPdiN2YW+Y/4R3mdh5DjuvfSab6l5XN58AfeaY7rqSNS
	 qERUy6cwSImk8GwhPS9vPmwxEmAaFwROohueZicpCsR95Kfvb/jXGhOSOlMK31y4ft
	 rThGe82vcJl0rkgrH4So41qaVG7QfmOAEbkuIaXFLbhaSMYckAVKw3sa2XlDviYH+k
	 qFKAJ6mS6MGaDyHUI/lQ5zF65KbK5dZuKywQRdPRdNfDCr7HknAKHib/Hlj797E08i
	 BkmeJs1DC7Egw==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 14A6B384E0D
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 20:09:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pSu6BG1q";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4121788397fso12995921cf.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Sep 2023 17:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694131782; x=1694736582; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hMkts+d+TwHw3haAFsFNtplIdv5fasXPbMRhbk9E7I0=;
        b=pSu6BG1qHAqfaY8xfBTncOeMLoFT85DyXYMA7pA9s5MSP4rkBOyJs9yHuf7wQoOvvm
         xpnF6EbLvdOlHtYEoXvaOSvU5eSBr4c913Uo6qBZupfdIc3C2OuB9xhbgOoAh33iFS6T
         AnDe4IW4D4l/1xEHfotrCD/exBh3Dn8LJNs7tBCrW52ShEt+Eppg1MUpEzuASz9YdQMl
         5P7zwouHDeFEUanPhkLjc/mMD+60p6eowCBlEGhly80ym7/YJBWDklQQ3aJp66E4F2kL
         L61KU9Kt76mV3jwuSIng7kLRUA0Gx5hczQFq9c0qMqMwpms250DfY/hj9HT/p6D+LSAw
         i1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694131782; x=1694736582;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hMkts+d+TwHw3haAFsFNtplIdv5fasXPbMRhbk9E7I0=;
        b=pD36igM06a2nqvOqdT1r+Vem/zqKtu2zp/xFRxdsSSuW50mA3fiv/HGQG0uK3H3+P+
         /s2f0cB7TH2VE3YKt0OTjntoojo8bjGuOpRE7gYL5kNYyHS8M7CBd3wJCSa/KSzUiQcq
         V3PhB06ZZjw4MWB54VfrGebJVqcLp1VQ79As9y4UM0E0ylhpGXTdc1IVzZUHcNX+he2l
         EDTgGhAw4eCgQRiPomL/QuoAewDkpJYyRJj9bYdqMo7l/73wc/J1TZ79+E5VVlNsXmGC
         B6v3C7RJuSRzy57yuA79/AJsuAlpuNBe+njorAvnsS6YLKh0DoaGbws9ioTrCyapCEp8
         k3Qw==
X-Gm-Message-State: AOJu0YxWJR+C2G3f+hrhFF25cFn5q647DPN99u7i7AFuAuxVJYCYOASN
	cp7H/JpXXiVnK3tUdJCYyGecoxG+ADVypQ==
X-Google-Smtp-Source: AGHT+IEm7loGygv5q3/xH3qLiqNOBVRuWG/XvizTj4VvBZJsMKLed/YIjcZAvXE9nlfX92qk9IJyhg==
X-Received: by 2002:a0c:dd92:0:b0:630:14e0:982e with SMTP id v18-20020a0cdd92000000b0063014e0982emr1412962qvk.22.1694131782201;
        Thu, 07 Sep 2023 17:09:42 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h20-20020a0cab14000000b006360931c12fsm210237qvb.96.2023.09.07.17.09.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Sep 2023 17:09:41 -0700 (PDT)
Message-ID: <2e267455-926e-73c6-52b3-40bd84500882@gmail.com>
Date: Thu, 7 Sep 2023 20:09:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CxT6IuOPmDowx9dS6Yha2fb7DwvbH5YfVE5F9RVbQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CxT6IuOPmDowx9dS6Yha2fb7DwvbH5YfVE5F9RVbQ@lists.ettus.com>
Message-ID-Hash: TJCIBBERJPUJE26ZKXAYD4QIBG4JVP2Z
X-Message-ID-Hash: TJCIBBERJPUJE26ZKXAYD4QIBG4JVP2Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TJCIBBERJPUJE26ZKXAYD4QIBG4JVP2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMDkvMjAyMyAyMDowMSwgMTkyMHN3YXBuaWxAZ21haWwuY29tIHdyb3RlOg0KPg0KPiBX
ZWxsIHdvdWxkIHlvdSBzYXkgdGhhdCdzIHN0aWxsIHRoZSBjYXNlIGlmIEkgY2FuIHJ1biB0aGUg
ZXhhbXBsZSBpZiBJIA0KPiBqdXN0IGV4Y2x1ZGUgY2VydGFpbiBwYXJhbWV0ZXJzPyBGb3IgZXhh
bXBsZSBpZiBJIGp1c3QgZ2l2ZSBhIHNhbXBsZSANCj4gcmF0ZSwgZnJlcSwgZHVyYXRpb24gaXQg
cnVucyBmaW5lLiBJdCdzIGp1c3QgdGhhdCB3aGVuIEkgcGFzcyB0aGUgZ2FpbiANCj4gcGFyYW1l
dGVyIHRoZSBlcnJvciBzaG93cyB1cC4gRnVydGhlcm1vcmUsIG90aGVyIGV4YW1wbGVzIHN1Y2gg
YXMgDQo+IHJ4X3NhbXBsZXNfdG9fdWRwIGFsc28gcnVuIGZpbmUsIGV2ZW4gd2hlbiBJIGFkZCBh
IGdhaW4gcGFyYW1ldGVyLiBUaGUgDQo+IGlzc3VlIGNvbWVzIHdoZW4gSSB0cnkgdG8gbW9kaWZ5
IHRoZSB1ZHAgZXhhbXBsZSB0byBpbmNsdWRlIDIgDQo+IGNoYW5uZWxzLCB0aGVuIGl0IGZhaWxz
IHdpdGggdGhlIHNhbWUgZXJyb3Igc3RhdGVkIGFib3ZlLg0KPg0KPg0KV2VsbCwgaWYgdGhlIHN0
YW5kYXJkIGV4YW1wbGVzIHdvcmssIGFuZCB5b3VycyBkb2Vzbid0LCBJIHdvdWxkIHNheSB0aGF0
IA0KeW91IG5lZWQgdG8gcmV2aWV3IHlvdXIgbW9kaWZpY2F0aW9ucyB0byBtYWtlIHN1cmUgdGhl
eSdyZQ0KIMKgICJzYW5lIi4NCg0KSXQncyB1bmxpa2VseSB0aGF0IFVIRCBoYXMgYSBidWcgdGhh
dCBjYXVzZXMgdGhlICJzZXRfZ2FpbigpIiBtZXRob2QgdG8gDQpub3Qgd29yayBpbiBzb21lIGNh
c2VzLCBhbmQgdHdvIHN0cmVhbXMgdnMgYSBzaW5nbGUNCiDCoCBzdHJlYW0gaXNuJ3QgYSBwYXJ0
aWN1bGFybHkgIndlaXJkIiBjYXNlLg0KDQpXaGVuIHN0dWZmIGxpa2UgdGhpcyBoYXBwZW5zLS13
aGVyZSB5b3UgbW9kaWZ5IGFuIGV4YW1wbGUsIHRoZSBvbnVzIGlzIA0Kb24geW91IHRvIGRvIGJh
c2ljIGRlYnVnZ2luZywgYXMgeW91IHdvdWxkDQogwqAgd2l0aCBhbnkgY29tcGlsZWQgbGFuZ3Vh
Z2UgbGlrZSBDKysgb3IgQy7CoCBQdXQgaW4gc29tZSBkZWJ1Z2dpbmcgDQpwcmludCBzdGF0ZW1l
bnRzIGJlZm9yZSBhbmQgYWZ0ZXIgdGhlIGNhbGwsIGZvciBleGFtcGxlLg0KIMKgIE1ha2Ugc3Vy
ZSB5b3UncmUgcHJvdmlkaW5nIGFkZXF1YXRlLXNpemVkIGJ1ZmZlcnMsIHNvIHRoYXQgc2FtcGxl
IA0KZGF0YSBpc24ndCBvdmVyLXdyaXRpbmcgb3RoZXIgdGhpbmdzIGluIHlvdXIgbW9kaWZpZWQN
CiDCoCBjb2RlLsKgIFJlbWVtYmVyLCBDKysgaGFzIE5PIHJ1bi10aW1lIGJvdW5kcyBjaGVja2lu
Zy7CoMKgIEV2ZXJ5dGhpbmcgaXMgDQpkb25lIGF0IGNvbXBpbGUgdGltZSwgYW5kIGlmIGEgYm91
bmQgY2Fubm90DQogwqAgYmUgY2hlY2tlZCBhdCBjb21waWxlIHRpbWUsIHRoZXJlIGlzbid0IGEg
cnVudGltZSB0aGVyZSB0byB0ZWxsIHlvdSANCmV4YWN0bHkgd2hhdCB5b3UgZGlkIHdyb25nLsKg
IFRoYXQncyB0cnVlIG9mIHByZXR0eS1tdWNoDQogwqAgQUxMIEMvQysrIHByb2dyYW1zLg0KDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
