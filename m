Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D87EC8ED
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 17:50:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7534384DA3
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 11:50:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700067014; bh=TWLJfw0+RuSzJvSrXUF6H+bqVoM5Zx6CsUiUG6JWL2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bPaYZNfqSNcHIuH/RU9wtmxm7yJfux90G3+oeTD63nn+wzMP1JP6FalsyWelHR37V
	 NlfnfS/EqiKvEScVyqc3Zo/JyTfSN5lH4oY8rCHso8XmoxvM6UT9iCFCwDu7Qptcqe
	 TtOOXjnvqtXRt7BDPuICrJ/42uDN6WL6OaeOiGRNGEMj2FiS5kKMwkZ2xGgNNnkM2S
	 qZs1lpALtMAI8JcMgL+Hedcvl06UThE3PO2AaXwYA30QkRGUr27dCdX2zyxDaGpYDy
	 /e/1TYd0yq3QE5tuwIzOHi8E9m+ZcnAuRnsihgH6RkK1YrgmtVC7YP6JhQu1rNVI0m
	 dOldFObGaFXHQ==
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C77CB3848FC
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 11:49:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NxS4qB+1";
	dkim-atps=neutral
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1f4e17c1edfso2536138fac.0
        for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 08:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700066978; x=1700671778; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KqpZ3E/fSiLSi3WVAIMPfbN6fcbC31eD9ABG8ApMENw=;
        b=NxS4qB+1ipbPhNtfstGJ42FvNI7ikz7RhtKpVZ4zWNq0XsZEzMFM0kGX+Dv4/b3S7u
         K3DA++wKhrklzmRXlF2ghqvQkmEbEpI/abNPXM15KIBMU2lVOlJKLNjyQH/soU6e4fAz
         MS7AV+h4Q7PuHxick7Ausl8NJkPKxeevmamYdjSdSi5tmnCUmY+P6/bySJ37aiXKfIPW
         PK/bxk3SZbfDDIyU17wskOlKR6e8dmsNiAFqoFikRPwpXfZLKgHXl3PH3ddhq0zfKzrj
         nZZh3d++ZdYp0BknM9OanbzcoVt/BFw82Y0FOuu7piwNla4ptfNAhZPkPq/NHDHSFkzE
         srmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700066978; x=1700671778;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KqpZ3E/fSiLSi3WVAIMPfbN6fcbC31eD9ABG8ApMENw=;
        b=vApB3L2UCCghC741UD6HP9Ms+w1xsJs0nwiUFDgdYDPZXusLdqsckzFaHOBrSPO8pC
         bJ7Wl+8+mGBVzWXIAFataEzUOMLDGohUOTFiMNuXDNW4UQNpKJ90VO6NoGl5LPN2weLs
         6ZwRVxDGN6/Uwp3ec8KqwQh3cNbNIaaSOKimC1pAyHHZzYLgC34aaQXP0etaemFy5bJ1
         Mh4Ay6efdB2Q3U3IDwFJ25vSoQCVTqL7zYfHx2EOKNsT5/A5A5pMhQXE3rehnkyWwv5X
         L4MyxqMwukarYmG2TVdDdtjehYkMhB10PeNaHO46wL2fD9PrSkrRd/taO9uk85da+6rm
         ZMWA==
X-Gm-Message-State: AOJu0YwSB4clkT+9MYsehnaAvZmXvW98O1cywp0skinlmPYIWPYfWy8l
	JhSTGbTs3q0WWBQLh6bwckaEQjSWZvM=
X-Google-Smtp-Source: AGHT+IGTW9/c8phgIADXbhetEYAjLUCsu6S2e0g3+xy4kpllT3++UE8ACUF0KDLF6kSAIkaR+2r7hA==
X-Received: by 2002:a05:6871:4503:b0:1ef:b62d:24c9 with SMTP id nj3-20020a056871450300b001efb62d24c9mr17485904oab.5.1700066977771;
        Wed, 15 Nov 2023 08:49:37 -0800 (PST)
Received: from [192.168.2.176] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id d13-20020ac851cd000000b0041b25ebc190sm3660631qtn.44.2023.11.15.08.49.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 08:49:37 -0800 (PST)
Message-ID: <c65bc559-49ab-4b82-8545-40580957906e@gmail.com>
Date: Wed, 15 Nov 2023 11:49:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg@lists.ettus.com>
Message-ID-Hash: FHTGTFRCXLRIKYVETYUGWTP2GOHRLBBS
X-Message-ID-Hash: FHTGTFRCXLRIKYVETYUGWTP2GOHRLBBS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FHTGTFRCXLRIKYVETYUGWTP2GOHRLBBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUvMTEvMjAyMyAwOTo0MCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBQcmV2
aW91c2x5IEkgd2FzIHVuYWJsZSB0byBsb2cgaW50byBsaW51eCBkdWUgdG8gdGhlIGJvb3QgbG9v
cC4gDQo+IEhvd2V2ZXIsIGFmdGVyIHJlZmxhc2hpbmcgdGhlIGVNTUMgd2l0aCB0aGUgDQo+IGZp
bGVzeXN0ZW0oaHR0cHM6Ly9rYi5ldHR1cy5jb20vVVNSUF9YNDEwL1g0NDBfR2V0dGluZ19TdGFy
dGVkX0d1aWRlI0ZsYXNoaW5nX3RoZV9lTU1DKSANCj4gSSBhbSBhYmxlIHRvIG5vdyBsb2cgaW50
byBsaW51eCwgYnV0IG9ubHkgdGhyb3VnaCBDb25zb2xlIEpUQUcNCj4NCj4gSSBjYW4gTk9UIGhv
d2V2ZXIsIGxvZyBpbiB2aWEgU0ZQIG9yIHRoZSAxR2IgZXRoZXJuZXQuIFRoaXMgd2hvbGUgDQo+
IHByb2JsZW0gc3RhcnRlZCBhZnRlciBJIHRyaWVkIHRvIHVwbG9hZCBhbiBGUEdBIGJpdHN0cmVh
bSB0byB0aGUgDQo+IGV0dHVzLCBpcyBpdCBwb3NzaWJsZSB0aGUgeDQxMCByZWxpZXMgb24gdGhl
IEZQR0EgYml0c3RyZWFtIHRvIA0KPiBjb21tdW5pY2F0ZSBvdmVyIFNGUC8xIEdiIGV0aGVybmV0
IGF0IGFsbD8NCj4NCklmIHRoZSBpbXBsZW1lbnRhdGlvbiBpcyBsaWtlIG90aGVyLCBzaW1pbGFy
LCByYWRpb3MsIHRoZW4sIHllcy4gVGhlIFNGUCANCjEwRyBpbXBsZW1lbnRhdGlvbiBNQUMgaXMg
ZG9uZSBpbiB0aGUgRlBHQSBjb2RlLCBhbmQgaWYNCiDCoCB0aGF0IEZQR0EgY29kZSBpcyBub3Qg
d29ya2luZywgdGhlbiB0aGF0IHdvdWxkIGNhdXNlIHRoZSBTRlAgY29tbXMgdG8gDQpub3Qgd29y
ay7CoCBJJ20gbm90IHN1cmUgb24gdGhlIFg0MTAgd2hldGhlciB0aGUNCiDCoCAxRyBSSi00NSBt
YW5hZ2VtZW50IHBvcnQgaXMgImhhcmR3YXJlIGluaGVyZW50IiBvciBub3QuDQoNCg0KPg0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
