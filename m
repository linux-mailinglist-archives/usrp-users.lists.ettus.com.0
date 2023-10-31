Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB1A7DCDFD
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 14:39:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81E7D385609
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 09:39:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698759579; bh=LSufawlw0r9eeqvA1J9ZqwWQlqN6WRIMmXPolMfQoiA=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tJVBbKAKVEthqCIvoxwW6MtCpWr9DFkSGVeYSdrIHweTlpM+ormtf2jJ4TepcIwlp
	 LLoRxzt/jfeJPjQOGYW584tVtULu/VRBaewTNGLSBzCEOCbdW9/EtZKo6rUrABzban
	 VCHSOoyKtbdHDq74bSymj3sL+zjAuZRT48l7LKPv0DnlW3QyekNUh8TemRGivAqsgV
	 9xq1OJBGIE+Trzyz/o/x1dr83DfVWS/EHGrYn0Am7V/ehc5CQFqvELSbKjcelUYxMU
	 s+5gpDzACq+exl+3CHwdH1fO/QpHwjNoncAl49S4lkXnXGo1gTiCIQE7Jo1vDUrn7D
	 UX0U4m+4LYs7A==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A5013853F8
	for <usrp-users@lists.ettus.com>; Tue, 31 Oct 2023 09:38:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LOd85bJD";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-77897c4ac1fso379882885a.3
        for <usrp-users@lists.ettus.com>; Tue, 31 Oct 2023 06:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698759523; x=1699364323; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TlnxbcIWwXoswdfulweuZtPOg3Of593MKFKkw8xOYNw=;
        b=LOd85bJDaRmwBjzda2Khjcq1zPkLDBPDIk53zdodT7bzJewFAh9DrBcBdncgo/aPzS
         OaCxUImItQrNRmYz+MRPFqB5Hl43Drrz0IQc21+EypL52T0nlRTIlobbVYIYf6rwU5GP
         mZmqivoARkeBFAhFXXkesn5UwmjkyW7rM5dq3s5a7IkCZprbVzPeB73m+tNZgvAbioWa
         EUxxz1vGkoKmqUMQgtLTPujbHedmnTfkheNOdUCqh5do330iG5rAAjWhFEErrSqPzNYq
         xnPhda2HiBRjq8st9tb2aZh1U6XSoURhvw3nQAiOlCfNDOW+wzPJvNBumsMWypDs4bEd
         q4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698759523; x=1699364323;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlnxbcIWwXoswdfulweuZtPOg3Of593MKFKkw8xOYNw=;
        b=iuomCjxmBbHyz/1EgF3DjsKDk9B808mOZELtUdpe0/u7k9lTwsYI1m3ypPIlYyYHEp
         QNt4OeK+M7G8lGHkrpntavCYDpRhmbH5XzyPiO4YYbylHu4wQdlMX/YjyN9v0CzIuUpc
         rvb+HfYunt3gPMqNSzLqeVweg7iFMr18QL2oe6S4Sb87qfWEx6WStmsXUhUIpUkWWZ/8
         Tnqiz89QJvlBXZOEbH4SccmgX2/r48+fhDpLijtyy8H8qQGE1y7/g2xw0H2SV+2VT9Sc
         VXLbaX3MTO/sRhCwQA2S815nPXXA3W0T0J9R2v8RVDvD+HFgKzKypVav7Pz5U3r1cuKa
         aJoA==
X-Gm-Message-State: AOJu0Yy/mUgBEQeKMAzyo+7KBLm/EfaxhQdWwQBZhqCQABr1XrfqYZQw
	sQFbDYqVTNTDbE00gHVpEOjHP1e3cSk=
X-Google-Smtp-Source: AGHT+IGbj/duMiozojIBAZuMJwl9fiV3eXs8QLrqZKfY41ZE3CdnaKxy+2hB/y701oxFhf/wX3oRqg==
X-Received: by 2002:a05:620a:28c5:b0:774:30b7:ed93 with SMTP id l5-20020a05620a28c500b0077430b7ed93mr15227667qkp.29.1698759523530;
        Tue, 31 Oct 2023 06:38:43 -0700 (PDT)
Received: from smtpclient.apple ([174.88.54.173])
        by smtp.gmail.com with ESMTPSA id g23-20020a05620a13d700b00777063b89casm507547qkl.5.2023.10.31.06.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 06:38:43 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 31 Oct 2023 09:38:24 -0400
Message-Id: <EF34C2C9-A473-4BFB-8B42-606C85D39BA0@gmail.com>
References: <CAOkUcSvJhKr-==9CN_P4yNibExh1rgHxifHM697-4Utewb0Hqg@mail.gmail.com>
In-Reply-To: <CAOkUcSvJhKr-==9CN_P4yNibExh1rgHxifHM697-4Utewb0Hqg@mail.gmail.com>
To: cyberphox <cyberphox@gmail.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: FDKBTIKDEHS35PQRMYXUJWQTN6K6KL2W
X-Message-ID-Hash: FDKBTIKDEHS35PQRMYXUJWQTN6K6KL2W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA bit file binary differences with GIT commit (X300)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDKBTIKDEHS35PQRMYXUJWQTN6K6KL2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJldHR5IHN1cmUgdGhlIGRlZmF1bHQgcm91dGVyIHNldHRpbmdzIGluY2x1ZGUgYSBkaWZmZXJl
bnQgc2VlZCBmb3IgZWFjaCBydW4uIFRoYXQgd291bGQgbWFrZSB0aGUgYml0ZmlsZXMgZGlmZmVy
IGV2ZW4gZm9yIHRoZSBzYW1lIHNvdXJjZSBjb2RlLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0K
DQo+IE9uIE9jdCAzMSwgMjAyMywgYXQgNToyOCBBTSwgY3liZXJwaG94IDxjeWJlcnBob3hAZ21h
aWwuY29tPiB3cm90ZToNCj4gDQo+IO+7vw0KPiBIaSBhbGwsDQo+IA0KPiBXZSBoYXZlIGJ1aWx0
IG91ciBvd24gUkZOT0MgYmxvY2sgYW5kIGFyZSB0cnlpbmcgdG8gZG8gYSBjbGVhbiBidWlsZCBh
bmQgY29tcGFyZSB0aGUgZ2VuZXJhdGVkIGJpdCBmaWxlIGFnYWluc3QgdGhlIG9yaWdpbmFsIGZp
bGVzIGZyb20gdGhlIEZQR0EgZGV2ZWxvcGVyLiAgDQo+IA0KPiBJIHdvdWxkIGxpa2UgdG8ga25v
dyBpZiB0aGUgYml0ZmlsZSBnZW5lcmF0ZWQgaGFzIHNvbWUgZGVwZW5kZW5jeSB3aXRoIHRoZSBH
SVQgY29tbWl0IGluIHNvbWUgd2F5Lg0KPiANCj4gQmFzaWNhbGx5IGlmIEkgdGFrZSB0aGUgZmls
ZSBjaGFuZ2VzIGZyb20gbXkgY29sbGVhZ3VlIGFuZCBidWlsZCB0aGUgRlBHQSBzdGFydGluZyBm
cm9tIHRoZSBzYW1lIHJlZmVyZW5jZSBicmFuY2gsIGNyZWF0ZSBteSBvd24gd29ya2luZyBicmFu
Y2ggb2ZmIHRoaXMgYW5kIGNvcHkgdGhlbSBpbiwgYnVpbGQgdGhlIEZQR0EgSSBnZXQgdGhlIHNh
bWUgYml0ZmlsZSBiaW5hcnkgd2l0aCBvbmx5IHRoZSBkYXRlL3RpbWUgc3RhbXAgZGlmZmVyZW5j
ZS4gIE9uY2UgSSBjb21taXQgdGhlIGNoYW5nZXMgYW5kIHRoZW4gYnVpbGQgaXQgb25jZSBhZ2Fp
biwgdGhlIGJpdGZpbGUgaGFzIGEgbG90IG9mIGRpZmZlcmVuY2VzLg0KPiANCj4gVGhhbmtzIGZv
ciB0YWtpbmcgdGltZSB0byByZWFkIHRoaXMuDQo+IA0KPiBBbGwgdGhlIGJlc3QNCj4gbWFyaW5v
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
