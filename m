Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D131C707078
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 20:11:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C66953849C6
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 14:11:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684347085; bh=pqyM9B3MC5eu1lqxP+Gya3PMJy6oAey1XCdhmossG7U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KtGrveOqlaourjrpHSHSXCDX7k+wgZTz9htkO9t+DeQA3BVECxRF892QuiMlULrh8
	 jrroL6oHbK6PogoWK274RJpz/Wp5ALEeO29XlfLXw1fUEmlMqSfqErihC8v1SdrX+P
	 Vf55Ij6htn2jIcLTYt0GbRmhFAKs5KNu9gYPCvI9r0fCWc++V9gQHJRa8f84uPgith
	 sv8DeUU+DbgOavcs/EPSwOP6nvqUGREBm6EDFMk3I6waxhBKJ0exWMMdLiH+wWvaP8
	 mWDHQ4hMU2qjnaJDnQu3MtiFhMKcwpo16OczrVIe4YGqvXUBxeXKTupSXWab30yd6C
	 sQZUuJeE3GC6Q==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A4A5384083
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:10:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ezXqQwNe";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-61b58779b93so9912506d6.0
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 11:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684347020; x=1686939020;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nZaW1pnyhknPLg2EuR1T9dDNCvMZehEBqvpcGGmbQsI=;
        b=ezXqQwNeFsPGT4HQsMQb1i02LbMM7wEbRM1IYDvUc7CHiR6DlXSbHsfu7aP48axesI
         y9lE4/QuocCb6f8LUaThuPM1ELt2G3om/Lz7acdg6gdnLVVcxM/GhQSvBv8QA2RZ0F6X
         rU9h8WdZtqx3TPEuW13EWraVa33PITjRFIZLlfQRhSCSpOlAjREuU/9iK1Jt29Uc/6L/
         AVkCbwx2SunY7pvoRAnMrlD9SmXepXWpzUAXGAoy2BiOFdJgNA8HymoawKuTi4aMPqH8
         atdfc2LFpitMrne+KkZxHCZ4quOP4s97erI3NbqJL2HNZTgnIERUmdj3iFSrcqAmsFo5
         QG3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684347020; x=1686939020;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nZaW1pnyhknPLg2EuR1T9dDNCvMZehEBqvpcGGmbQsI=;
        b=dTdHwlpt9fB1FPVBDKEq+hoszGxVvBAFblM9JF9TNxHjEDMVgQarJJi5Ji7VkdUt8l
         7JExp5RrE5I+sthcQ24gPH0UK7EM6pYGY2ZDfl8wL6fTBKh4OLhEzcd4SRGHZtiKfZUS
         cRk+rSeXbWqhWgDq0ln0wuA6idqaYJpZ+jAcpn9QmI5TuDd4LZn9OQQdLf0HULe7G/4K
         dv3KxmIxDeJyr2orBnWuAYd8EOQiY5+EOGdN0jwwfdce0f2PLfbMLGuMb52azltJ9Ijk
         wD4cOr2Ba7HrvY7BNHRxJ5q4PiD+zH+41IeuwJkQrtKkUQD/pl7IEvum8lV8QQu+/vqU
         1BOg==
X-Gm-Message-State: AC+VfDxtPL74SSobYtCwFFLcLbn1ioi7N8LVYYms06TIxoJRlhvHhQKf
	UMCiNLPtLe4gA6WCMTwxmr3BPdp4W+o=
X-Google-Smtp-Source: ACHHUZ5+a39yV1j3xy3OE5r5od3QN8QhNtKsTLCqsqACDCDMlCdclOB4P0t8W2/OecseWUgpSL1fqg==
X-Received: by 2002:a05:6214:e6d:b0:623:690c:3ce6 with SMTP id jz13-20020a0562140e6d00b00623690c3ce6mr861810qvb.32.1684347020467;
        Wed, 17 May 2023 11:10:20 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c7-20020a0cd607000000b005ef493c6bebsm6474333qvj.77.2023.05.17.11.10.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 11:10:20 -0700 (PDT)
Message-ID: <3b780f57-ec04-3be2-66be-7b300850050e@gmail.com>
Date: Wed, 17 May 2023 14:10:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM@lists.ettus.com>
Message-ID-Hash: NSJYT7Q4X6RVDEMSL7JI5KCDAEODSKMR
X-Message-ID-Hash: NSJYT7Q4X6RVDEMSL7JI5KCDAEODSKMR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NSJYT7Q4X6RVDEMSL7JI5KCDAEODSKMR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDUvMjAyMyAxNDowMywgY2pvaG5zb25Ac2VycmFub3N5c3RlbXMuY29tIHdyb3RlOg0K
Pg0KPiBIaSBNYXJjdXMsDQo+DQo+IEJldHRlciBuZXdzLiBJbiBhbiBhdHRlbXB0IHRvIGdldCBt
eSBzeXN0ZW0gdG8gbWF0Y2ggd2hhdCB5b3UgbWlnaHQgYmUgDQo+IHVzaW5nLCBhIOKAnGtub3du
4oCdIHN0YXRlLCBJIHVwZGF0ZWQgdGhlIEZQR0EgaW1hZ2UuDQo+DQo+IFNvIHRoZSDigJxSZXF1
ZXN0ZWQgcmVtb3RlIFVEUCBzdHJlYW1pbmcsIGJ1dCB0cmFuc3BvcnQgYWRhcHRlciBzZnAxIA0K
PiBkb2VzIG5vdCBzdXBwb3J0IGl0ISIgaXMgZ29uZSwgYW5kIEkgYW0gYXQg4oCcRGV2aWNlIHdh
cyB1bmFibGUgdG8gbG9vayANCj4gdXAgRXRoZXJuZXQgKE1BQykgYWRkcmVzcyBmb3IgSVAgYWRk
cmVzcyAxOTIuMTY4LjMwLjMwLiBNYWtlIHN1cmUgDQo+IGRldmljZSBpcyBjb3JyZWN0bHkgY29u
bmVjdGVkLCBvciBwcm92aWRlIE1BQyBhZGRyZXNzIG1hbnVhbGx5LuKAnQ0KPg0KPiBBZ2Fpbiwg
SSBzYXcgbm8gYXJwcy4gQWRkZWQgdGhlIG1hYywgaXQgc3RhcnRzIHVwLCBidXQgSSBkb27igJl0
IHNlZSBhbnkgDQo+IHRyYWZmaWMgdG8gMTkyLjE2OC4zMC4zMCB1c2luZyB0Y3BkdW1wLCBvbmx5
IGEgdHJpY2tsZSBvZiBjb250cm9sIA0KPiBiZXR3ZWVuIDE5Mi4xNjguMzAuMSBhbmQgMTkyLjE2
OC4zMC4yLg0KPg0KPiBJIHdlbnQgYmFjayBhbmQgYWRkZWQgYWxsIHRob3NlIHBhcmFtZXRlcnMg
dG8gbXkgYysrIGNvZGUsIHdpdGggdGhlIA0KPiBzYW1lIHJlc3VsdCwgbm8gcmVtb3RlIHN0cmVh
bWluZy4NCj4NCj4gSG93IGNhbiBJIGRlbW9uc3RyYXRlIGEgS05PV04gd29ya2luZyB2ZXJzaW9u
LCBpbmNsdWRpbmcgdGhlIHN0cmVhbSANCj4gcmVjZWl2ZXIgKGluIG15IGNhc2UgMTkyLjE2OC4z
MC4zMCkuIFdoYXQgZG8geW91IHVzZSBhbG9uZyB3aXRoIA0KPiDigJxyZW1vdGVfcngucHnigJ0g
dG8gdmFsaWRhdGUgcHJvcGVyIGJlaGF2aW9yPw0KPg0KPiBUaGFua3MgYWdhaW4sDQo+DQo+IOKA
lEN5DQo+DQo+DQpJIGRvbid0IGtub3cgd2hldGhlciB0aGVyZSdzIGEgImNhdGNoZXJzIG1pdHQi
IGNsaWVudCB0aGF0IGdvZXMgYWxvbmcgDQp3aXRoIHRoZSByZW1vdGVfcngucHkgZXhhbXBsZS7C
oMKgIFNpbmNlIGl0J3MgYSBzaW1wbGUNCiDCoCBVRFAgc3RyZWFtLCBvbmUgY291bGQgdXNlICJu
ZXRjYXQiIGFuZCBkdW1wIHRoZSBvdXRwdXQgaW50byBhIGZpbGUgDQpmb3IgZnVydGhlciBwbGF5
aW5nLWFyb3VuZC7CoCBEaWQgeW91IHNwZWNpZnkgdGhlDQogwqAgcmVtb3RlIHBvcnQgYXMgd2Vs
bCBhcyB0aGUgYWRkcmVzcz/CoCBJIGRvbid0IGtub3cgd2hhdCBpdCB1c2VzIGJ5IA0KZGVmYXVs
dC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
