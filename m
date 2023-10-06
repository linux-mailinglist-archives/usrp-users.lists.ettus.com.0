Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 810297BBAA1
	for <lists+usrp-users@lfdr.de>; Fri,  6 Oct 2023 16:45:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D618B385381
	for <lists+usrp-users@lfdr.de>; Fri,  6 Oct 2023 10:45:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696603521; bh=ZHndhGTPw+Jxz32RG7zdW7Dhw/tK9k+ziXa/WKnArG8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=D4zNq0pu3kUrR+ZS3MVYngk48PM3RtzwnbSLsUlXd7quVDPPq0PmXxRPxWoXq0Z79
	 Ici76pRW8gAA5aKpOKmClMxXj0/GT2WWm0nXUOnff3vzKTDocvrsopgR0F9yRmZNQa
	 hijPsqw7uJmlSKjq260Ly68WqeEG1zx/vNNCyoTZza5Nb4Nf6QTHQ4FiBCEmS4zOPc
	 OhThbhLz5gI2ktXO3bF5pWyeBeQkdKOGiGLDh5un81IyPVc+2sSabL1nIwamTJzOAP
	 B1y71HSU7sFqcoQnS9hjTPfkEgnRUdOZA1m2JKlab4q8hqGijB5AomB4QGXtXli67Q
	 WGJUg97LOGE8A==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 9726E384DA9
	for <usrp-users@lists.ettus.com>; Fri,  6 Oct 2023 10:44:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MQdTG0+I";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5a22eaafd72so27066037b3.3
        for <usrp-users@lists.ettus.com>; Fri, 06 Oct 2023 07:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696603468; x=1697208268; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QC8RgB58Aq6ukLUrlwECt5UTvQJJhXtnYX+IOrnzLdI=;
        b=MQdTG0+IF/uWJ7LwoNTty5ZtMK7Is85EEw5MM/Mjga5YV3WSsqUPDys/QVphfLN3KT
         L+SStwaXAsNd1qYjANhKv48RpmkQYvwRkIc9EitPE4dAbszKAmTEXWcCLLZJm83+30g5
         Rr39rjJBec0rEOZ/nlbB5UmgKoWLkMaUp99RJ0oVXrJfnnjoiL/irLDvpjHCY124Eu7E
         BzpA5JeJjj1Mk7EfVzfIeSGcbHJNh5MJpNkrfjYFSaqGnqR61/hQXz7XVVwHbSwa26Z3
         A8T7NnU75O3RRgXlSrKDfW61ZWBtjxLT/ZGcLdUP7xr+/hlpTbujFMYy8dLOpKf6dKNx
         vEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696603468; x=1697208268;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QC8RgB58Aq6ukLUrlwECt5UTvQJJhXtnYX+IOrnzLdI=;
        b=nkuZiT+2UgPnOV9c26AspI0X7IJG6pvvIwyOpEF6QFXmi8lRC0NOPMkzxENzJj3cMN
         peVQgvFPLY9LyKbnx8Gt2Z5uRvULT6qYVURdlxxllj1HUIIGIt2vpgIiHXCJyk7rrUyU
         O+yWAjhIu10y/GGR/rSbeZxRMPpMYTOPtIzbb2EyiPxFw1c74gkzFedBEDq+JOQyH1sC
         pNpdg+X58hHpxJBRs6QU5RgrO3fMFb6AdzhsOGJtptzLIxv4WzS+bQxRNtJ2fJW+4Eup
         BMMGQPy53rnHXfVToLBm2zHWGv8FM/qtB1Z8zu6v/jaejsRUIqL8CwQLXz1OaUTs/O1d
         k4fA==
X-Gm-Message-State: AOJu0YyvVB/SVNmzYzszyk/Ekfukj2QMUA2CtQEkpq9UAH53fhIas67J
	OdCBiorHvKvpj5aq1/Ygrcbdury183o=
X-Google-Smtp-Source: AGHT+IG1o4m4+rlnN1aSozR+3o2+juM01Q8WpNWRyBHvlPv6oEKxIII4cmRGcOUUdf4tQDGXf2R+zw==
X-Received: by 2002:a5b:191:0:b0:d78:5d61:ddee with SMTP id r17-20020a5b0191000000b00d785d61ddeemr7792567ybl.30.1696603467898;
        Fri, 06 Oct 2023 07:44:27 -0700 (PDT)
Received: from [192.168.2.127] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h23-20020a05620a10b700b007758ffab58asm1356525qkk.8.2023.10.06.07.44.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Oct 2023 07:44:27 -0700 (PDT)
Message-ID: <f5c023a2-baa8-7c65-eaba-e6016d6686a8@gmail.com>
Date: Fri, 6 Oct 2023 10:44:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAErymBhL-fmEqrMjd10vuMtH173ZNqer8RP-YZWYP5sxpdmcYg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAErymBhL-fmEqrMjd10vuMtH173ZNqer8RP-YZWYP5sxpdmcYg@mail.gmail.com>
Message-ID-Hash: HGDFNOBVCDRYVNASMWX27V7D7C7S2T6B
X-Message-ID-Hash: HGDFNOBVCDRYVNASMWX27V7D7C7S2T6B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding delay in USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HGDFNOBVCDRYVNASMWX27V7D7C7S2T6B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMTAvMjAyMyAxMDozMSwgQWNoaWxsZWFzIEFuYXN0YXNvcG91bG9zIHdyb3RlOg0KPiBI
aSB0aGVyZSwNCj4NCj4gd2UgYXJlIGludGVyZXN0ZWTCoGluIHVzaW5nIHRoZSBVU1JQcyAoWDMw
MCkgdG8gZXhwZXJpbWVudCB3aXRoIGEgDQo+IHRyYW5zbWlzc2lvbiBzeXN0ZW0gd2l0aCBmZWVk
YmFjayBhbmQgd2Ugd2FudCB0byBtaW5pbWl6ZSB0aGUgZGVsYXkgDQo+IGZyb20gdGhlIFVTUlAg
dG8gdGhlIGFpci4gV2Ugd2FudCB0byB1bmRlcnN0YW5kIHRoZSBkZWxheXMgaW4gdGhlIA0KPiBw
cm9jZXNzaW5nLg0KPiAoV2Ugd2lsbCBub3QgYmUgaW5qZWN0aW5nIHNhbXBsZXMgdGhyb3VnaCB0
aGUgUEMgYnV0IHdlIGFyZSBwbGFubmluZyANCj4gdG8gcHJvZ3JhbSBkaXJlY3RseSB0aGUgVVNS
UCBGUEdBKS4NCj4NCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZXJlIGlzIG9uZSBzb3Vy
Y2Ugb2YgZGVsYXkgaW4gdGhlIA0KPiBEVUMvaGFsZi1iYW5kIGZpbHRlcmluZyBpbiB0aGUgbW90
aGVyYm9hcmQuIEhvdyBtdWNoIGlzIHRoaXMgZGVsYXk/IA0KPiAoZGVsYXkgb2bCoGhhbGZiYW5k
wqBmaWx0ZXJzPykNCj4NCj4gQW5vdGhlciBzb3VyY2Ugb2YgZGVsYXkgaXMgaW5zaWRlIHRoZSBB
REMgY2hpcMKgIHRoYXQgYWxzbyBjb250YWlucyANCj4gZmlsdGVycy4NCj4gSXMgdGhhdCBjb3Jy
ZWN0PyAoSSB3YXMgbG9va2luZyBhdCB0aGUgQW5hbG9nIERldmljZXPCoGNoaXAgZm9yIHRoZSBB
REMgDQo+IGFuZCBJIHNhdyBoYWxmYmFuZCBmaWx0ZXJzIHRoZXJlIGFzIHdlbGwpLiBIb3cgbXVj
aCBpcyB0aGlzIGRlbGF5Pw0KPg0KPiBGaW5hbGx5IHRoZXJlIGlzIHNvbWUgZGVsYXkgaW4gdGhl
IGFuYWxvZyBmcm9udCBlbmQgKFNCWCkuIElzIHRoZXJlIGFuIA0KPiBlc3RpbWF0ZSBmb3IgdGhp
cyBhcyB3ZWxsPw0KPg0KPiB0aGFua3MNCj4gQWNoaWxsZWFzDQo+DQpUaGUgYW5zd2VyIGNhbiBi
ZSBkZXRlcm1pbmVkIHRocm91Z2ggbWVhc3VyZW1lbnQuwqAgSXQgaXMgdGhlIGNhc2UgdGhhdCAN
CnNvbWUgb2YgdGhlc2UgZGVsYXkgY29tcG9uZW50cyB3aWxsIHZhcnkgZGVwZW5kaW5nDQogwqAg
b24geW91ciBwYXJ0aWN1bGFyIGNvbmZpZ3VyYXRpb24gb2YgdGhlIERVQywgYW5kIHdpbGwgc29t
ZXRpbWVzIHZhcnkgDQphY3Jvc3MgZGlmZmVyZW50IEZQR0EgdmVyc2lvbnMsIGFzIGZpbHRlciB0
YXBzIGFuZCB0b3BvbG9naWVzDQogwqAgYXJlICJ0d2Vha2VkIiB0byBpbXByb3ZlIHBlcmZvcm1h
bmNlIGluIHNvbWUgcGFydGljdWxhciBkaW1lbnNpb24uDQoNCkkgZG9uJ3QgKnRoaW5rKiB0aGUg
QURDIGNoaXAgZmlsdGVycyBhcmUgYWN0dWFsbHkgdXNlZCBieSB0aGUgVVNSUCANCmltcGxlbWVu
dGF0aW9uLCBidXQgc29tZW9uZSBjb3JyZWN0IG1lIGlmIEknbSB3cm9uZy4NCg0KVGhlIGRlbGF5
IHRocm91Z2ggdGhlIGFuYWxvZyBjaGFpbiB3aWxsIGJlIHNtYWxsLCBhbmQgdmFyeSBhIGJpdCBk
dWUgdG8gDQp0ZW1wZXJhdHVyZSwgYW5kIGNvbXBvbmVudCBiYXRjaCB2YXJpYWJpbGl0eS7CoCBG
b3INCiDCoCBwcmVjaXNlIGFuc3dlcnMsIGFnYWluLCBsYWJvcmF0b3J5IG1lYXN1cmVtZW50IHdv
dWxkIGJlIG5lY2Vzc2FyeS7CoCANClRoZSBhbmFsb2cgZGVsYXkgaXMgdHlwaWNhbGx5IHF1aXRl
IHNtYWxsIHRob3VnaC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
