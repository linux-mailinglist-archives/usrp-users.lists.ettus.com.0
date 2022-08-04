Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04639589CC3
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 15:35:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51002381926
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 09:35:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659620126; bh=CKuYOeQRUGLKy5cR/gJz0hW3yoyjnnZIwJ+HjszvXBA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UpxmKOyEA1yh5ctuNbp2A+hSPJ2g6kBRCre43UQpZksYMLopI4pNcwdtgckC0D2qe
	 TSBiTyH/OEvo5m7Vdb8yIxLjnkw4cXoUV7QGCzy9dAZJzqbeFdWTQFQrg5SeYqLBV2
	 QGtoTJhQy26wXDtlqI535C7QN8PDD5RgU0DoHNvPP1+DhmWKp5I7t79dqSLrnlEyoL
	 2SPsvpS6JeJX14sx+BxbYyxxBMwICQ7lx/ru2zz6xGhChZPe36M5VuwBciRxWTczIn
	 Stfbq8YQjRz/RQHxxp5WGsKBvRpAeJ4zwywdGwrMBYEVDhnKGnVfKsVA1xUSPt4iWd
	 xQEjV+Ondqv1A==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id B5EB8383C11
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 08:50:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gVBijorQ";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id b7so13695236qvq.2
        for <usrp-users@lists.ettus.com>; Thu, 04 Aug 2022 05:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=jdR7xqOSoKb6NfCubJFDEG9NPh/2SH/sNJkbTq1tKG4=;
        b=gVBijorQwoleQpeTHmW0TkygbgRXD7yNC8WVzfMDKJbS5kHePut6e4m7El0Kv/alPJ
         CSvRH72FxKFz6cY2cUb7ML5UXp97oewPyJr+kw/OJgotBDkOcQw4e9ErlQdaCFleZqjJ
         Dj4aPaTjcUoWcZ/MgRb5IlL3eScfZldGd9y6P9RAJyo6dSXuJsAnfciTN46YlrgAeJ74
         seVL98bqZwBaMMp+Q6d9eht3CV77Lfs7baLCKMOhuzQpsz0KRlDpeIXwN1j0DijmS8w/
         EFIpQxX1yKCPoc7eyenrKRFtxwDf1arlzxI/UMbxafq2cVUdpEv89KXkIpSS9WEksIJl
         UDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=jdR7xqOSoKb6NfCubJFDEG9NPh/2SH/sNJkbTq1tKG4=;
        b=IxZZQnV5NIGq76qROb/RcrXrp/k1DdlCtTF7rbvipAIx/Gax1aC5C0SEvkulsevtdO
         fLebqvwlNTDkjt9E/70pSc2qFLLj8k48w0z0OPQKaDM6stESVMrCwdN9vyHOjK6fcgfg
         5sJAvLhS5z9e+092XId0XxN6/H408bGHggYa2v4oK9ZSRcpC6PXM5hk74nD+/prdFz//
         ezj3C3CgEpfoQYpTfN2neDst7lTAGs17Z3hlWo6GeMViJcKjiJexoOMn3j62JydoAO+p
         9FRW3FD4C6abDF3rEdYAXHP2q7t7SH0w80JSD23UugihO6KHoysLDCwc+yi7ihRM5TCQ
         P5IQ==
X-Gm-Message-State: ACgBeo34RnM4OnaPtt8XDZlBkH/3mPwJkTKx+VLnQR0o6bBBMvGUkoeE
	ZKU403ygRxWPEifxOnlMtg9N3qQvuQ8=
X-Google-Smtp-Source: AA6agR4a3GU9bYPku4/5zm9pnTey2LMyKmanRHqB3cGU9KhjlJqc7Sgwxl2WncX+21od1OySXPPryg==
X-Received: by 2002:a0c:a98f:0:b0:473:8b63:623 with SMTP id a15-20020a0ca98f000000b004738b630623mr1326727qvb.102.1659617437604;
        Thu, 04 Aug 2022 05:50:37 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id y19-20020ac85253000000b0031ecce4077fsm585019qtn.31.2022.08.04.05.50.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 05:50:37 -0700 (PDT)
Message-ID: <5aefd8b6-fddb-6011-290c-3055f5f1e5c8@gmail.com>
Date: Thu, 4 Aug 2022 08:50:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
Message-ID-Hash: 6Z6XG46JR4LDLTLNHYV4BJKPZHZ2V6CC
X-Message-ID-Hash: 6Z6XG46JR4LDLTLNHYV4BJKPZHZ2V6CC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6Z6XG46JR4LDLTLNHYV4BJKPZHZ2V6CC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0wNCAwNzo1OSwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gU29ycnkgZm9yIG1pc3VuZGVyc3RhbmRpbmcuIEkgdGhpbmsgdGhpcyBpcyBteSBmYXVsdC4g
QnV0IGFzIGkgDQo+IG1lbnRpb25lZCBteSBmaXJzdCBxdWVzdGlvbiwgd2hlbiBpIHNheSBjYWJs
ZSBjb25uZWN0aW9uLCBpIG1lYW4gaSANCj4gY29ubmVjdGVkIHR4IHBvcnQgdG8gcnggcG9ydCB3
aXRoIGNhYmxlLiBUbyBzZWUgdGhlIGRldmljZSBzZXR0aW5ncyANCj4gY2xlYXJseSwgaSBkaWQg
dGhpcy4gQWxzbywgSSBoYXZlIGIyMDAuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCk1ha2UgY2VydGFpbiB0aGF0IHlv
dSBoYXZlIGF0IGxlYXN0IDMwZEIgYXR0ZW51YXRpb24gaW4gdGhhdCBjYWJsZS4gDQpPdGhlcndp
c2UgeW91IHJpc2sgb25lIG9mIHR3byB0aGluZ3M6DQoNCiDCoCBvIFNldmVyZSBkaXN0b3J0aW9u
IGFuZCBub24tbGluZWFyaXR5IGF0IHRoZSByZWNlaXZlcg0KIMKgIG8gU2V2ZXJlIGRhbWFnZSBv
ZiB0aGUgcmVjZWl2ZXINCg0KVGhlIHBvd2VyIG91dHB1dCBvZiBhbiBSRiBhbXBsaWZpZXIgd2ls
bCBuZWNlc3NhcmlseSB2YXJ5IGFjcm9zcyBpdHMgDQpmcmVxdWVuY3kgcmFuZ2UuwqDCoCBJIHdv
dWxkIGV4cGVjdCB0aGF0IG92ZXIgMTAwTUh6IHRvIDZHSHoNCiDCoCB0aGF0IHdvdWxkIGJlIHBl
cmhhcHMgNS0xMGRCLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
