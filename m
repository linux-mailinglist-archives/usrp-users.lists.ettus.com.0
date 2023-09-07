Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E11D8797ECF
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 00:53:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C93F4380A52
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 18:53:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694127182; bh=+3vTbKxQTCl9w+miL+BSyivhThOiNOUu1cZ0jPds+jU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vUbp1qabiADKHIivcIyWVyGFASVlYztb4Ld8JGs1lyLVjWG2Onq2wY8pKe1SSeVZ8
	 wqbEtOTgiZvodM4GmH1ArQ1nnMgXUccBesSR+42x60DaQ/z/lnaRSq3uhpMJiIb1by
	 FFhFmqllXExw0X525gIPdATe5ScS2YU36Auxm5Rp+APOJijvvPLVxavFjQBBVf62Wu
	 eP8N3AMj4SZ/I3Haq0LCK2GPgDY2siuUQn2FlSUsudveKr4RftGwaVc4sw7IrxM3mn
	 Kx32eEeYC+UJcbUgSicbVGVJbNHmj4dtFLOBAYTKADhUwwGGFBQqKvt6CG+xG6sdTs
	 UyDoD8a1skUZw==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id F279D3809F4
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 18:52:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TJmHKIiw";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-76ef653af2eso82059185a.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Sep 2023 15:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694127121; x=1694731921; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tBxgl0LWGnFP/UAGeslz6SWfF5bnPZYvh4EYL/Zb7bY=;
        b=TJmHKIiwv9AbnvGnbJB1gHpglK1GT0VtTuLy+ZbFNHpO8wQ0WHfQ0hOlU/q2of7+fW
         vbXfSfG3XKYog1jyrPh6W3sj3MKOpjE4kNkMBUOYr3LXbPWxsqQ7aZJ4ZByMAi+l7K7D
         P77VhwhqMx8CiiKb4iB4WuqmeHZhiiepodtMWt7UknrMUxSV1toTIaI9qAm16TgMKI2U
         It3P2skahnD8Zamw6PAGEDmIl9ZAzYO5c2UnTIChgue+YOXbSab+mxE9Z5XW40QGU30W
         KNs+R+US3NI8/fcLpnzKde4pDoEq+ryu2OUd02+Cj9bmfyschN3ISPjmEj2TNve3WWXq
         Tn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694127121; x=1694731921;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tBxgl0LWGnFP/UAGeslz6SWfF5bnPZYvh4EYL/Zb7bY=;
        b=quR5/6A/brWHbvUCXwgaLu0Pn0eTpmel9GSRxEPzuRFkYBWAFG0dXm+oOD43++4qOO
         mwP3kZybKsaDLzB2dbII8cMzTD8KeM6f4834FOUjaFPUWZoxKXNs+zKy87yv+WRW/bDx
         OLn4uHg8CYLkB0H0alno9tbMTXxNWt/prcmKeqgBjQbIKFx7MecZWvNWGfJRPiLN9cEO
         rLQr9ZIXa+dvNXhMkp+X56BRBKbKrccClfsC970lqJH3O785ItROfF1A9vzunQV9xzqK
         2qEQATvltNd5lFdrczEJRSgaa6sNXUYsDsgnOTvsa7kRIcYjz/M0BnqCUkRdbB3cCRxy
         hHsQ==
X-Gm-Message-State: AOJu0YxhXz9srjSMVPgORGRYk46x9YM3ZCuUAW1G4RdxnpFABwb5xB2n
	mtgCcv/oe7Wbtd1iEbAO2clv41k64BneTg==
X-Google-Smtp-Source: AGHT+IHNd5xg/FZMJOWuRl4MdGFwiY83VciHn4olU9HT3ATK61hsdqrLnwpInnJJAI3hMmdwVZsYgw==
X-Received: by 2002:a05:620a:2189:b0:76f:1d46:8511 with SMTP id g9-20020a05620a218900b0076f1d468511mr916603qka.44.1694127121028;
        Thu, 07 Sep 2023 15:52:01 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id u14-20020a05620a120e00b0076d1e149701sm120786qkj.115.2023.09.07.15.52.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Sep 2023 15:52:00 -0700 (PDT)
Message-ID: <ec60ffa6-fbd8-2385-e930-6992256f3b29@gmail.com>
Date: Thu, 7 Sep 2023 18:51:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA_d=hKMp2YAhGxRndpvyTtWvdVN+bjT5Kd2xsPYdsH2YJ7m5g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA_d=hKMp2YAhGxRndpvyTtWvdVN+bjT5Kd2xsPYdsH2YJ7m5g@mail.gmail.com>
Message-ID-Hash: 3WJX3I4NGGUPMDM6QKPFVNFVHRHCB3EW
X-Message-ID-Hash: 3WJX3I4NGGUPMDM6QKPFVNFVHRHCB3EW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WJX3I4NGGUPMDM6QKPFVNFVHRHCB3EW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMDkvMjAyMyAwMDoxOCwgc3dhcG5pbCBzcml2YXN0YXZhIHdyb3RlOg0KPiBIZWxsbywg
SSdtIGhhdmluZyBzb21lIHRyb3VibGUgd2l0aCB0aGUgVUhEIEFQSS4gSSdtIHRyeWluZyB0byBi
dWlsZCBhIA0KPiBzaW1wbGUgcmVjZWl2ZXIgY29kZSBieSBmb2xsb3dpbmcgdGhlIGV4YW1wbGVz
IGluIHRoZSANCj4gJ3J4X3NhbXBsZXNfdG9fZmlsZScgYW5kICdyeF90aW1lZF9zYW1wbGVzJy4g
V2hlbiBJJ20gdXNpbmcgdGhlIA0KPiByeF9zYW1wbGVzX3RvX2ZpbGUgZXhhbXBsZSBhbmQgdHJ5
IHRvIHNldCB0aGUgZ2FpbiBzZXR0aW5ncyB0aHJvdWdoIA0KPiB0aGUgY29tbWFuZCBsaW5lLCAo
L3J4X3NhbXBsZXNfdG9fZmlsZSAtLWZyZXEgOThlNiAtLXJhdGUgNWU2IC0tZ2FpbiANCj4gMjAg
LS1jaGFubmVscyAwLDEgLS1kdXJhdGlvbiAxMCB1c3JwX3NhbXBsZXMuZGF0KS4NCj4NCj4gSSBn
ZXQgYW4gZXJyb3Igc2F5aW5nICIgUlggY2hhbm5lbCAxODQ0Njc0NDA3MzcwOTU1MTYxNSBvdXQg
b2YgcmFuZ2UgDQo+IGZvciBjb25maWd1cmVkIFJYIGZyb250ZW5kcyIuDQo+IEJhc2ljYWxseSBJ
IHdhbnQgdG8gYmUgYWJsZSB0byB1c2UgYm90aCByZWNlaXZlZCBjaGFubmVscyANCj4gc2ltdWx0
YW5lb3VzbHkgYW5kIHNldCB0aGUgZ2FpbiBmb3IgYm90aCwgbGlrZSB5b3UgY2FuIGluIEdOVSBS
YWRpbyANCj4gQ29tcGFuaW9uLiBJZiBJIGRvbid0IHNldCB0aGUgZ2FpbiB0aGVuIGl0IHJ1bnMg
YXMgZXhwZWN0ZWQuIEkndmUgDQo+IHRyaWVkIGFkZGluZyBtb3JlIHBhcmFtZXRlcnMgc3VjaCBh
cyAnYW50JyBhbmQgJ3N1YmRldicgYnV0IGl0IGRvZXNuJ3QgDQo+IHNlZW0gdG8gd29yay4NCj4g
VGhhbmsgeW91DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NCldoZW4gSSd2ZSBzZWVuIHRoaXMgYmVoYXZpb3IgaW4gdGhl
IHBhc3QgaXQgaGFzIGJlZW4gYmVjYXVzZSB0aGUgVUhEIA0KZXhhbXBsZSBhcHBzIHdlcmUgbGlu
a2VkIGFnYWluc3Qgb25lIHZlcnNpb24gb2YgdGhlIFVIRA0KIMKgIGxpYnJhcnksIGFuZCB0aGVu
IGFub3RoZXIgdmVyc2lvbiBvZiB0aGF0IGxpYnJhcnkgd2FzIGluc3RhbGxlZCBvbnRvIA0KdGhl
IHN5c3RlbSB1bmRlcm5lYXRoIHRoZW0tLXlvdSBoYXZlIGEgbGlicmFyeSB2ZXJzaW9uDQogwqAg
bWlzLW1hdGNoLg0KDQpQb3NzaWJseSB3aGVuIHlvdSBpbnN0YWxsZWQgR251IFJhZGlvIGZyb20g
dGhlIHBhY2thZ2VkIHJlcG9zaXRvcmllcyANCkFGVEVSIGRvaW5nIGEgbWFudWFsIGJ1aWxkIG9m
IFVIRCwgb3Igc29tZSBvdGhlcg0KIMKgIGluY29tcGF0aWJsZSBVSEQgaW5zdGFsbC4NCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
