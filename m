Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 106167EA0F7
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 17:09:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6161838408F
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 11:09:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699891784; bh=SQQq/cmfa+Y/srD+kQJqzvwTciE+qzYibqxf8GKMkEY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=huv2RkBMGg/Uh9qYdpxd1tYcWGWkJriHsqnN/iYmzUV63mY4SN+h2YqcUfoNMCdT7
	 a3f4nlY/EnVBUjg62DFqnoGMCw6y+UkAa4nHNY5JiBn7kxEYk8OTbt8ipxJubyUEWT
	 /g5ZfLDqnc6JX5TDRAAf+HBYBOAaQmr7mqsqyWoS2/sgeozY03IpQfgvO6TDsjxJ+M
	 gDWbnLPlsib63d++qooi4bdghZN8k68KVkrwFLsrU1m7W24eK8OjIVKTDtKmjR4i9F
	 biTQzrW994qY4aKxG4DBbaJM+eMPvRxIh/7KmivAHPf81KRvdZ2vPjJQIL+srDbWVD
	 XkBxMlEHXIO6g==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id B0479383BBB
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 11:09:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NoPVroJc";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-77897c4ac1fso298506185a.3
        for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 08:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699891747; x=1700496547; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XO1T4FP6U8ldDC16fVUyi7S5cwl3Vwbm2c+irV8bayc=;
        b=NoPVroJcoUzef2AKD8FAj85hGkfGPU1G89w6Wr5NIA4hFBgi4Bei8wnBLO/7VFZPcZ
         e1I+KwsXybI0kVFD3k5I4Yu20Lv7AlFHdl96vpByeqVyI+rzu/WFy7SjLsIa1+nafCDr
         PoUt1tiGdXh7cyHrpsfqu6R0VeWFaZBVxOFf2eNK8rIawTmcfOTPWIu+rxsjN1gJbVPe
         fT8wnkvRHWbWmFTPhj2ck+hGQ6A+GLUt7rRaUdsrlSXan+kfjxEBvYGjt+AHsCMOTSaa
         yxiY02A01cqBWSYPCLje58tnELA44AJSVaSfHRjfkGm7rTyHWXD3UYBcI2ehQyJKrx7q
         cl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699891747; x=1700496547;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XO1T4FP6U8ldDC16fVUyi7S5cwl3Vwbm2c+irV8bayc=;
        b=oQgg3nOGgD9c5DNLEhmfQE5jQJDKQqlxdSta5vbXqu/2JE4kyDJYa7J9DCTChTKE9t
         qLPMP46FXZNQdFpaz1d41cLCtLTI/EJXcBHazDkWxFzAqOQMifDfGqRuEtXhrwfr3BFN
         aR8P8RP0zkusxqwX3JG9yN2wHlKukxf4r0wvDe/jepE9jRDXNJMou4VvFEhFBuKlok9Z
         tVV54tgmAq+rSNkLfv3/p9y9tiLG9GyzvK7G4YcfNK+J7Gy3Lz3EF27uH/lElJU+UbPN
         rscqZeaTblh88jwqdr6k7zjjZuG+hR09jsdpPeyH2q+OKiv0UoRmai34eOT1ggfD+RUt
         xbAA==
X-Gm-Message-State: AOJu0YwLSTHQMlfmTyvLTJ605E/keosMsPHGwbA3enm7mNVLFInRTfea
	Km7yS7wd0vIKFMYs+l+ldB2nu3rQuDI=
X-Google-Smtp-Source: AGHT+IEu0G3Xz8PdrMtDbxhXvUIosb4sRfqXXBEgXSLMTAK5In9Sng5jmvSjZqbuNh2hLj1ft4BdbA==
X-Received: by 2002:ac8:5914:0:b0:421:7a42:522 with SMTP id 20-20020ac85914000000b004217a420522mr7658195qty.33.1699891746733;
        Mon, 13 Nov 2023 08:09:06 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id u16-20020ac87510000000b004033c3948f9sm2019335qtq.42.2023.11.13.08.09.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Nov 2023 08:09:06 -0800 (PST)
Message-ID: <69a36575-2a35-4fa2-9655-dc507610e558@gmail.com>
Date: Mon, 13 Nov 2023 11:08:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tencent_1F60E38847DC36C1CD99948ADD9F64F09006@qq.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <tencent_1F60E38847DC36C1CD99948ADD9F64F09006@qq.com>
Message-ID-Hash: RW3PNQRE5OILDXNSWH32DA7R4C43WNTQ
X-Message-ID-Hash: RW3PNQRE5OILDXNSWH32DA7R4C43WNTQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can RFNoC blocks connected cross USRPs?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RW3PNQRE5OILDXNSWH32DA7R4C43WNTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTAvMTEvMjAyMyAwNDo0NCwgUm9tYW5kZXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEhl
bGxv77yMRXZlcnlvbmUuDQo+IENhbiBJIHN0cmVhbSBkYXRhIGJldHdlZW4gdG93IHVzcnAgZGV2
aWNlIGRpcmVjdGx5IHdpdGhvdXQgY3Jvc3MgaG9zdD8NCj4gwqBUaGFuayB5b3UhDQo+DQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
ClNvbWUgbW9kZWxzIG9mIFVTUlAgaW5jbHVkZSBhbiBBdXJvcmEgaW50ZXJmYWNlLCB3aGljaCBp
cyBzcGVjaWZpY2FsbHkgDQpkZXNpZ25lZCwgZnJvbSB3aGF0IEkgdW5kZXJzdGFuZCwgdG8gYWxs
b3cNCiDCoCBGUEdBLXRvLUZQR0EgY29tbXVuaWNhdGlvbnMuwqAgQnV0IEkgZG9uJ3QgdGhpbmsg
dGhlcmUncyBtdWNoIGFjdHVhbCANCnN1cHBvcnQgZm9yIHRoYXQgY3VycmVudGx5IGluIHRoZSBG
UEdBIGltYWdlcy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
