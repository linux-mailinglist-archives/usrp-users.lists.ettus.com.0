Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDE156A352
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 15:17:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BCE8384217
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 09:17:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657199861; bh=g/OVdsCtvQyCQnZrezfOYgnV9ImhzqftN+UqesUzYjs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mxD16iBNW22n8wJ7eDivCUVzIs2bWJ5lFsBHAT9jAI/aS5qjf7p+Pb4iBqFCJZEox
	 6Pby+PuVIkD9isSJwYKG+GHGFNHmFdNRSbBt3UJl5zkdN3b0NC+LvzP/ll2mv2DLH+
	 ztJHoONlG41S7n1RNN4MgFCx8GfNyg0a4H5NF6rySsrrMfo0kFQZVoxFMfaK4R9+mD
	 5dmOayn49BxjJIlmtvBCxdLuwzhVWNF8cHJpPK+PcH8Re0nqPFRqdsrPOUM0N2EmVn
	 d992QTdyu4/LNrvfQEWxBHGLyskCWK+pZWijJ+JZdz3sHzDhys4Hdx7nVO9ZygGxj3
	 pbB1OhsWxbSzQ==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 58365383DE4
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 09:15:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CuaEZXGJ";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id f14so13328436qkm.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Jul 2022 06:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=/o+39a8MshilX9LQUwVnQerYzS866JPJE1n2nAyaOBA=;
        b=CuaEZXGJ0vd7BnSaM0PcWpXYruWcw+KLQeXS0BpfMkPN+eLMEj/cflayuCekrOxFSs
         7GD3iv54CCBMPq1ZV98f1bsKKctv12XG0sgxaVx9+KFkGPZ1qL75X+N4mjhRYQEUCWJ2
         a1kXBK4kLdX9NeUVITzsQIkxpH6/92ClbWsH+9rjDWqQDA9w8ddEoOnFfJbnBwsKGqFP
         CLYTWb8G/H+4ARWJnuGhQvkbXm0BFXNua7Lrbl4fsI+MOMrRAa/oRaCvcEnrNykLpiQM
         SrY4cbG2JBAlncTiEx1Qxlmimvtw923pN66MDTMcjgrIctN9o49MlBSfXtrXwDrac3nJ
         YS7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/o+39a8MshilX9LQUwVnQerYzS866JPJE1n2nAyaOBA=;
        b=TljwsbqNYYQDx4OpGOtGmhHAd4Mz4pFYDXkqUNA/jE9g3c1tQRuyEvEK4Ep5k2I702
         ACa+ZtS6w9bSKvngJpWwrlaqxMFlPomSd0s4C58pcY7A24oQ54uLYepETQTvH2OUqxk/
         9pveuYljQ/2QZOxgCU3OvTpoPmVVQhRn+CvHsir+4JUOJIYveC/SDYfQJwgMNkrjTPMx
         ZjZrWnRcSh/Rr5FqP0ablAGu8Yh7nsgSGW7hZAe8lZDPaeb30xsu1cI+DxUf/PNw7EXx
         UWegq0V7gtGerTErICl/8pwDvryI5KwZLwdTjstP6QvEFYbfQyKOn0PKdc1qrACgvsvp
         oLGA==
X-Gm-Message-State: AJIora8mLOED967Qqnh5hydTUeILxqRdbIemyGn+8jiZXl195ukeDM8y
	2be2qRrz4ADSjYW6KUhooP4OtLDpxpI=
X-Google-Smtp-Source: AGRyM1tzLfoPP1R3w7qlMTUa5Npq2+uauS4fvtO91aiXOv51tFBYj1zNyh2mG31DT84qho3lFMc0Hw==
X-Received: by 2002:a37:2750:0:b0:6b5:5231:dc4f with SMTP id n77-20020a372750000000b006b55231dc4fmr1619018qkn.571.1657199733215;
        Thu, 07 Jul 2022 06:15:33 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c19-20020a05622a059300b00304edcfa109sm28335145qtb.33.2022.07.07.06.15.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 06:15:32 -0700 (PDT)
Message-ID: <1404e3a5-9320-62e8-6a61-3031830fb9d7@gmail.com>
Date: Thu, 7 Jul 2022 09:15:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8@lists.ettus.com>
Message-ID-Hash: DHDHFMRMW3PEQN273EMXDDCZALM3GHOW
X-Message-ID-Hash: DHDHFMRMW3PEQN273EMXDDCZALM3GHOW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHDHFMRMW3PEQN273EMXDDCZALM3GHOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0wNyAwMTozNCwgb3V6YW5fdHNAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+IEhl
bGxvIE1hcmN1cywgdGhhbmtzIGZvciBhbnN3ZXJpbmcuDQo+DQo+IEkgaGF2ZSBkaWZmZXJlbnQg
cXVlc3Rpb25zLiBJcyBwYXJhbGxlbCB3b3JraW5nIHBvc3NpYmxlPyBJIGNvbm5lY3QgDQo+IFNE
UiB0byBteSBQQy4gSSB3YW50IHRvIFNEUiB0YWtlcyBzaWduYWwgYW5kIG1lYW53aGlsZSB0aGUg
UEMgbWFrZXMgDQo+IHJlYWQsIHdyaXRlIGFuZCBwbG90Lg0KPg0KWW91IG1pZ2h0IHdhbnQgdG8g
bG9vayBpbnRvIEdudSBSYWRpbywgd2hpY2ggaXMgYSBmcmFtZXdvcmsgZm9yIGJ1aWxkaW5nIA0K
U0RSIGFwcGxpY2F0aW9ucywgYW5kIGl0IGluY2x1ZGVzIGJ1aWx0LWluIGdyYXBoaWNhbCBhbmFs
eXNpcyB0b29scy4NCg0KPiBBbm90aGVyIHF1ZXN0aW9uIGlzIG15IEIyMDAgaGF2ZSA2MS40NE1T
L3MgcmF0ZSBhbmQgSSBjYW7igJl0IHNldCBzYW1wbGUgDQo+IHJhdGUgdG8gM01IeiBiZWNhdXNl
IHVuZGVyZmxvd3MgYW5kIG92ZXJmbG93cyBvY2N1ci4gSSBkb27igJl0IHdhbnQgDQo+IHRoaXMu
IElmIHlvdSBoZWxwIG1lLCBJIHdvdWxkIGJlIGdyYXRlZnVsLg0KPg0KSWYgeW91ciBzeXN0ZW0g
Y2Fubm90IGFjaGlldmUgbW9yZSB0aGFuIDNNc3BzLCB0aGVuIGVpdGhlciB5b3VyIGNvbXB1dGVy
IA0KaXNuJ3QgcG93ZXJmdWwgZW5vdWdoLCBvciB5b3UgYXJlIGRvaW5nIHNvbWV0aGluZyBoaWdo
bHkgbm9uLW9wdGltYWwgaW4gDQpwcm9jZXNzaW5nIHlvdXIgc2FtcGxlcy7CoCBUaGlzDQogwqAg
aXNuJ3QgYSBwcm9ibGVtIHdpdGggdGhlIFVTUlAsIGJ1dCB3aXRoIHlvdXIgY29tcHV0ZXIgYW5k
IHRoZSANCnNvZnR3YXJlIHlvdSBhcmUgdXNpbmcgdG8gcHJvY2VzcyBzYW1wbGVzLg0KDQoNCj4g
SGF2ZSBhIG5pY2UgZGF5Lg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
