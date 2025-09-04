Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 550C8B44A78
	for <lists+usrp-users@lfdr.de>; Fri,  5 Sep 2025 01:32:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C99F38685B
	for <lists+usrp-users@lfdr.de>; Thu,  4 Sep 2025 19:32:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757028737; bh=nTFF07qHcDCVYKgf3hrZXOHJZPT+v/Z9QWGA/tCPOgc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=m6+YBgc7Nn0irWsHCBr6Bdlkcfd3+o/3mXmYpEGq/fVFL3jcUZpSBNDn4K1699shn
	 AmbyxlTUtFYrYK2mBpgXC3uNNRuduTlXhpNUAy6ZwOkcmXyQmr6+w/04Epa1OkhYuB
	 4nRSxDo2Pi28hvXZonR+W4pdhvg5yF0LueV4CfHJqOg0bAZK6ATP0D4US8PJOxIuHr
	 ZRYEpIxCwWoPqtV6dRh9D9U7h0mkxGbxN7ojvdmapA4hBP2UFMkF5s6dTVfSfGeBtR
	 hG83OxRecav3TJOD/y7Ep3w/RSEY5n936u45qn1RbvRGvadFIe3DZeWmcCo0/KXUIa
	 LyrMj1rwE0XYQ==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D6FB386822
	for <usrp-users@lists.ettus.com>; Thu,  4 Sep 2025 19:32:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k+7dvnR9";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-7211b09f649so12937316d6.3
        for <usrp-users@lists.ettus.com>; Thu, 04 Sep 2025 16:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757028720; x=1757633520; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U9i+YH4ZrHEwOdoy4kK2HCdtt8qdn60HQJVFCyMHdW4=;
        b=k+7dvnR9lsWX6y8HPU30Qxre4CO9m8ONo4SiuL3zCYIUFHXQQzxrzxxkGX3ozk0Zva
         Xke0Cc7xmuK6Aeqrl2CWOAEtmW2+aSWrqbGxndftdiPal4c4xOVoWNeHNEE7hCfBxaIl
         1JkZrsUOWT4YisxWWLXqIC20McJQdk7t2DT1t1xZB6Tu1mpgeALyNVphRuAcBPMS0Gaf
         sVZfTto18zwkW85qWikbXTy/Ld91vzBnD76xdr4MYGcLrT8B83DnOkDY4VUUr7RrB0z9
         tHNqWFYUzrsgBOYaXZAQ9+NPpKaurV7w77Ovy40EVCL8NTuEZs+9vysmEwwVp+UVzF6U
         cmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757028720; x=1757633520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U9i+YH4ZrHEwOdoy4kK2HCdtt8qdn60HQJVFCyMHdW4=;
        b=JZEkbYkXpNaOICN5kQIYCC4fsL4/fdWmanQPPqkeosJkkjLSfapUcdByFF+gEFglRK
         yebgC5wMT4fXn2tgtau1eK8G+kVurIMW7IhtvTENT/RgBT0jeKj+o28DztBinHQsjNuy
         I8qGbTCbXeN25sqVybJXipCc+40hhZbSmDShfHtO7mIx9+Yz3m5OmDz/iSPzHqUHshEE
         eBqfIFM6tLQJox7MhxB0/aMAdJy8C/dm2Nxt6eogvZpPrgoAgeQYckA3/UsFW2Nc4NHe
         fyR3nOydFaIQto8n1dzDxCt6YfVm4njntU5FwNl6woINcfnWMqbK06vSto/1/FosE62s
         wQGQ==
X-Gm-Message-State: AOJu0Yzh4HF7UaxgPWcGYr1JDNTb6bG6bILNuwB+t4KTAu5ZXU8G0nuD
	ZBHV+EVtkH94SIwzKBZs1VfbPrHeEy/SeisxzK0C/WBQDK42m0rrSWSjJAkkyQ==
X-Gm-Gg: ASbGncuFj62lnBo7XZ4CXRmvhWxSM39sU1mVQn77bjYPwL8oz1T2yha9xBfwKXnNMOo
	FobHIMFGeSETGJ3ydKrd34hfmIIJQJ5KFW/o8udTUFoU71hJQrfQGRzlZ9yhLrcg+l11DZaOouL
	KQTXXPvpneqOk81kYco3bhjH1FVIXLJKFy6i+ed1GxnFR3BG3l9tQOsUMOPerF7C6gXptOexnU2
	Lcq+AuPvMfAiekxq3TIwyJLsjGUn2MqUibOed6NBgEq0aM1Y1Dtdw4cZSH8vSjccKQ9xBNKaAzi
	v8c1J1URW2RDHFmuCybqJUrGKmjkQAvkN3rWThJm2vMyaDej/e50vbicriAxYGSWVApuzZERnlV
	IFtZtiv8A1qKgUIoKE0zkVljW355HmCOclHIRW2TRDg==
X-Google-Smtp-Source: AGHT+IFCaDhriTyG8MltwC49yD/KE+3KE+fOzBz4OW/mMakdiSciFKtVqehwD7OQ2pj9Lf9bvdWoVw==
X-Received: by 2002:a05:6214:1cc8:b0:70d:f41e:b4ae with SMTP id 6a1803df08f44-70fac8dd495mr218111666d6.56.1757028720025;
        Thu, 04 Sep 2025 16:32:00 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-720b46660fbsm56015836d6.44.2025.09.04.16.31.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 16:31:59 -0700 (PDT)
Message-ID: <0fd30ba3-2d57-4ee8-853a-c7a3bf0c40c5@gmail.com>
Date: Thu, 4 Sep 2025 19:31:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CADW0nH+xRwkP_kZpOaNv15Sk2xFpzoCoML7=+mpiQU_MjQL5fQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CADW0nH+xRwkP_kZpOaNv15Sk2xFpzoCoML7=+mpiQU_MjQL5fQ@mail.gmail.com>
Message-ID-Hash: VEBHVYUKL4746T32GY7CPUDSAVA2SZIW
X-Message-ID-Hash: VEBHVYUKL4746T32GY7CPUDSAVA2SZIW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: usrp b210 triggering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VEBHVYUKL4746T32GY7CPUDSAVA2SZIW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wOS0wNCAxODo0NywgTmF2aWQgQWtiYXJpIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0K
Pg0KPiBIZWxsbywNCj4NCj4gSSdtIG5ldyB0byBVU1JQLCBzbyBJJ20gbm90IHN1cmUgaWYgdGhp
cyBxdWVzdGlvbiBpcyB2YWxpZCBvciBub3QuIEknbSANCj4gdXNpbmcgYSBVU1JQIEIyMTAgYW5k
IEkgd2FudCB0byBzeW5jaHJvbml6ZSBpdCB3aXRoIHNvbWUgb3RoZXIgDQo+IG1lYXN1cmVtZW50
IGVxdWlwbWVudCAodG8ga2VlcCB0aGUgdGltaW5nIG9mIHRoZSBkYXRhKS4gSSBrbm93IHRoYXQg
DQo+IHRoZXJlIGlzIGEgUFBTIHBvcnQsIGJ1dCBJIGRvbuKAmXQgd2FudCB0byBzZW5kIG15IHRy
aWdnZXIgc2lnbmFsIGluIHRoZSANCj4gUFBTIHByb3RvY29sLiBJcyB0aGVyZSBhIHdheSB0byB1
c2UgdGhlIGRpZ2l0YWwgcGlucyBvbiB0aGUgYm9hcmQgdG8gDQo+IHRyaWdnZXIgdGhlIGRldmlj
ZT8NCj4NCj4gVGhhbmsgeW91Lg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJbiBsaWV1IG9mIHRha2luZyBhZHZhbnRh
Z2Ugb2YgdGhlIGV4aXN0aW5nIFBQUyBpbnRlcmZhY2UsIHlvdSdsbCBlbmQgdXAgDQpoYXZpbmcg
dG8gY3JlYXRlIHNvbWUgY3VzdG9tIEZQR0EgY29kZSB0byBkbyB0aGlzIGFzIGZhciBhcyBJIGNh
biB0ZWxsLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
