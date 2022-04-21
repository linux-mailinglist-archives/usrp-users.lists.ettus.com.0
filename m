Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8571550ABEA
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 01:19:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 718F6384BC9
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 19:19:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650583173; bh=ELLUHsCn8MQMNj+K5LU3vyqItHAJlwYP2+kdUhEigJY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tjYKUBUcUsbgtC224yLDSZePsfWJhVeTzROkWLTMNLQ9LIWPPbM6YUxj6oc3xRcsc
	 3bIJLQZ7UPCRH9lVn7VKt7FjTbUUpsTB86RupVMmEHRPgeUn4dOAHAjQ6kFsPUg1Dp
	 RChk1tmuqQSb8JKuRkSUbtQ5UPRg7MMdj4GzsKC01fxYkDzT8Xq+Zo7iitfBOjDBCx
	 RARsaM92c0V3yUo2jwXxgrTC67U2VRkWlzdWebGCzwq9fCkt+FumTm5MErbrnvKQJY
	 eQJY6B3K/ERoMybDbuAtM7cjnCTeVMddG5QlgRngk/bZelbWfe+0BKsYo1cpsYQRbN
	 ZRUAJpxOFbQ3A==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 63B483848A9
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 19:18:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mur6CEus";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id e128so4721030qkd.7
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 16:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pKKbVygXJj/aeej2k/Gn01185hxll7b5xUhj5XnShXs=;
        b=mur6CEusuH62SyOwp/XiOdW5oSAOLVw5uRN7DmnBe1ISNXXBreIeTsEBqnudRmr4Qi
         0DAC/9sL4ZLH0dpdL+it9Nrjbn3CKSXZJwky4Usveufa7ZYiggw0rgxZoUK4silPyLTq
         rTtKU93eG61JIiFf+1XhBBHHM07JECbrexHKrno+jNwQRihmOBZur4hTP5wJgspF8uZ8
         xTvrLaReKEI3902bXpKc5CsOoCE/XNbMun2HCchLDn5wKKG7WCW+utcITJ9k3FYMnuVs
         kk/6e/C5DVXsNpop9R4Y9MieVA0YBdvThBDJFnRQhi0UizMtImrKaZz8xURXG3xH+VJI
         4dcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pKKbVygXJj/aeej2k/Gn01185hxll7b5xUhj5XnShXs=;
        b=5CASzeSc2TI9rcKeNA5zhweS3BUkOVvCpP1H1lAo1FzP2qFt96Q/VeyYKLqXWZLgdA
         oIN6z+7ybihjUrOQPT0WIjiRt+QWPPlO/C03WnuzFdBwXna4xQhOkG6Mnn/24jFsYmjo
         zDGjj762t+mbBoohIVDxyVZv4MHWMhOyg1eSq2axccXRG99WUvRoiTNsCAtlx9HCAcy3
         nJywrcQfwyi+wmVuVGxG+k0mxR7ouEDBQjI4fBdCVHpQPttRuHJqPswtEPCg5INENNHi
         TdaDf/WuOURB2xyO52oHV9g0dDx7mo7MxfzliUjEtQzfMjNqDopcJI7TJI9Kq/7pfKM2
         LBqw==
X-Gm-Message-State: AOAM531N6I6NEQyGYZdZzWCHp4T+1PGaM07SHqnFph56XaNKiOW/kzR9
	KIEdPne3sc8QzsysOh4e6YeP3MzwvGA=
X-Google-Smtp-Source: ABdhPJzqxeiAxKkln25Uquzwzi5oSoIJqJj3Jva1At6cJTOVqi2WhrhNUqO6sA3Ag3pBvP2TJRPBvw==
X-Received: by 2002:a37:9a85:0:b0:69e:e020:d6df with SMTP id c127-20020a379a85000000b0069ee020d6dfmr1112234qke.569.1650583112780;
        Thu, 21 Apr 2022 16:18:32 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id o10-20020ac85a4a000000b002f23c9f8cf0sm327365qta.10.2022.04.21.16.18.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 16:18:32 -0700 (PDT)
Message-ID: <a724873a-926d-f01c-11b1-049560fe10b6@gmail.com>
Date: Thu, 21 Apr 2022 19:18:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
 <CAAxXO2HO2BvWV+hOafqg=+HG=ApAfgJEGtSgYbQvS4VXtfcxMQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2HO2BvWV+hOafqg=+HG=ApAfgJEGtSgYbQvS4VXtfcxMQ@mail.gmail.com>
Message-ID-Hash: FMRDGZTJBC2SCPJKFKKCA4LVOMVPMURH
X-Message-ID-Hash: FMRDGZTJBC2SCPJKFKKCA4LVOMVPMURH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FMRDGZTJBC2SCPJKFKKCA4LVOMVPMURH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0yMSAxOToxMywgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IFlvdSBjYW4gY2hl
Y2sgYmFjayB5b3VyIGFuc3dlci4NCj4geW91IGFuc3dlcmVkIHRvIG1lLCBidXQgdGhlcmUgd2Fz
IG5vdGhpbmcgaW4geW91ciBtYWlsOigNCj4NCj4gQlINCj4gTmlrb3MNCldlbGwsIEkgYXBvbG9n
aXplLsKgIEknbSBnb2luZyB0byBibGFtZSB0aGUgY2F0LCBiZWNhdXNlIGhlJ3MgdW5hYmxlIHRv
IA0KZGVmZW5kIGhpbXNlbGYgaW4gc3VjaCBtYXR0ZXJzLCBhbmQgZG9lcyBvY2Nhc2lvbmFsbHkg
YmF0IGF0IG15IGtleWJvYXJkIA0Kd2hpbGUgSSdtDQogwqAgZG9pbmcgdGhpbmdzIHdpdGggdGhl
IGNvbXB1dGVyLsKgwqDCoCBJIGRvIHJlbWVtYmVyIHR5cGluZyBhIHJlcGx5IGluIA0Kd2hpY2gg
SSBpbmRpY2F0ZWQgdGhhdCAzLjE1IGlzIHBhY2thZ2VkIHdpdGggVWJ1bnR1IDIwLjA0LCAyMS4w
NCwgMjEuMTAuDQoNCg0KPg0KPiBPbiBXZWQsIEFwciAyMCwgMjAyMiBhdCA2OjA1IEFNIE1hcmN1
cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPj4gT24gMjAyMi0w
NC0xOSAyMjo0NSwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+Pj4gSGksDQo+Pj4NCj4+PiBJIHVz
ZWQgdG8gaGF2ZSBVYnVudHUgMTQuMDQgYW5kIGhhZCBubyBpc3N1ZXMgd2l0aCB1aGQuIFJlY2Vu
dGx5IGkgaGFkDQo+Pj4gdG8gdXBncmFkZSB0byBVYnVudHUgMjAuMDQsIGFuZCBJIGNhbid0IGZp
bmQgKmFueSogdWhkIHZlcnNpb24gdGhhdA0KPj4+IGNhbiBjb21waWxlIGluIGl0LiBJIGhhdmUg
dHJpZWQgb3ZlciAyMCBmcm9tIGdpdCBmcm9tIDMuOS4wIHRvDQo+Pj4gMy4xMS41OigNCj4+Pg0K
Pj4+IFdpdGggZWFybGllciByZWxlYXNlcyBsaWtlIDMuOS54IEkgZ2V0IGludG8gYm9vc3QgcHJv
YmxlbXMsIGFuZA0KPj4+IHNvbWV0aGluZyBsaWtlICJuYXRpdmUiIG5vdCBkZWZpbmVkLg0KPj4+
IEluIG1vcmUgcmVjZW50IHJlbGVhc2VzIGxpa2UgMy4xMS54IEkgZ2V0Og0KPj4+DQo+Pj4gSW4g
ZmlsZSBpbmNsdWRlZCBmcm9tDQo+Pj4gL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdXNy
cC9jb3Jlcy9ncGlvX2F0cl8zMDAwLmNwcDo4Og0KPj4+IC9ob21lL25pa29zL3dvcmsvdWhkL2hv
c3QvbGliL3VzcnAvY29yZXMvZ3Bpb19hdHJfMzAwMC5ocHA6MjA6NDI6DQo+Pj4gZXJyb3I6IGV4
cGVjdGVkIGNsYXNzLW5hbWUgYmVmb3JlIOKAmHvigJkgdG9rZW4NCj4+PiAgICAgIDIwIHwgY2xh
c3MgZ3Bpb19hdHJfMzAwMCA6IGJvb3N0Ojpub25jb3B5YWJsZSB7DQo+Pj4gICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXg0KPj4+IG1ha2VbMl06ICoq
KiBbbGliL0NNYWtlRmlsZXMvdWhkLmRpci9idWlsZC5tYWtlOjEyMzc6DQo+Pj4gbGliL0NNYWtl
RmlsZXMvdWhkLmRpci91c3JwL2NvcmVzL2dwaW9fYXRyXzMwMDAuY3BwLm9dIEVycm9yIDENCj4+
PiBtYWtlWzFdOiAqKiogW0NNYWtlRmlsZXMvTWFrZWZpbGUyOjY1NTogbGliL0NNYWtlRmlsZXMv
dWhkLmRpci9hbGxdIEVycm9yIDINCj4+PiBtYWtlOiAqKiogW01ha2VmaWxlOjE2MzogYWxsXSBF
cnJvciAyDQo+Pj4NCj4+PiBUaGlzIHNlZW1zIGxpa2UgYSBjKysgaXNzdWUuLi4NCj4+Pg0KPj4+
IElzIHRoZXJlIGFueSBnaXQgcmVsZWFzZSB0aGF0IGNvbXBpbGVzIGluIFVidW50dSAyMC4wND8N
Cj4+PiBJIGtub3cgdGhhdCB5b3UgbGlzdCBpbiBzdXBwb3J0ZWQgdmVyc2lvbnMsIG9ubHkgVWJ1
bnR1IDE0LjA0ICYgMTYuMDQsDQo+Pj4gYnV0IEkgc3VzcGVjdCB0aGlzIGlzIG91dGRhdGVkLCBz
aW5jZSBVYnVudHUgZG9lc24ndCBzdXBwb3J0IHRoZW0gYW55DQo+Pj4gbW9yZSwgYW5kIGluIHVo
ZCBpbnN0YWxsYXRpb24geW91IGRlc2NyaWJlIDIwLjA0IGJ1aWxkIGluc3RydWN0aW9ucy4NCj4+
Pg0KPj4+IFRJQQ0KPj4+IE5pa29zDQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+IEZvciBVYnVudHUgMjAuMDQsIHlv
dSBjYW4ganVzdCBpbnN0YWxsIGl0IGZyb20gdGhlIHBhY2thZ2UgcmVwbyB1c2luZw0KPj4gQVBU
LS1ubyBuZWVkIHRvIGNvbXBpbGUgaXQuDQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
