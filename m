Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4A4340924
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 16:47:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C92793830A5
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 11:47:01 -0400 (EDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BB64380BF7
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 11:46:52 -0400 (EDT)
Received: by mail-wr1-f42.google.com with SMTP id 61so6030449wrm.12
        for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 08:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=decyben-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=KVboYnMiF/uqRsBdwwOkWrO97O+xxCRRDTgEexbTOBA=;
        b=UHS3wy7bATz++ueq1rosuoNsLuOYtxPJlwXaXFmiQV2C0VaLn/Tr7m++QgGCokS2St
         zTY+x6qdKeJPnbsv5XkfjD7wsJEBM46/yMiGuSa2oY+hx2JTaxVr/R2ecQ627N6Hom1z
         752HeBzW3ML6Cao2Et0cbhBVdEK8s3UtswAoPCdW0Q+dpiEJef67cLGm0qBILtjefMzm
         rtEfQbegjdYGqhNB3Fggc6IxTawBUlhkJKc4zKYg/EH0q8ZFK5uXzdhx1jLUWfF88GFF
         TuU6Hpc6FODov+c4iD8S/lY6+WY/ueSXRLaZaZFhTXS7/AR43bE2j8YZSmjrz0iJZvGZ
         v8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=KVboYnMiF/uqRsBdwwOkWrO97O+xxCRRDTgEexbTOBA=;
        b=T3CujcWg98vvyk6vBhfXFStZTii63aOAHa5oBd/Iiaz6bCt2H7RUrpjdW3ML3DpuWS
         zeYK+wgWAmm4FoNuZIx9RAeth/9dK9oqCoim7YAaj+yItOIuXfwwX4ve0pcxMiarL/aF
         MGfJORfMvv2q9Mn38gIoJKYe0CTd9gOuXRBqynWz0+ZkUS/Tmvit+od2p0Nah4mfrOhl
         fyOZP9lo1BKr9opQDcFmi5Oay64NIuKJoEk/Pbb5mzurhOv3nbRWZu4XFDs4GT5FlQ7m
         JR+zd8yybjJE6SdyGtRSLkIptiBp0mYt/lMOVcJ8cb7G9H+Xazx2caKhDztJpzV1YUJ/
         Y72g==
X-Gm-Message-State: AOAM5300TGohHtVaJNT7G8lO7s86rKtGbNiyNbzchorkyKUsCxpwzVov
	7Xru3wtnDQdjGzc2dzkdOzdjRRJojbLLqA==
X-Google-Smtp-Source: ABdhPJwYP1vgD1jl/UZ7QOl2UVTfdczouU9pB9OCcORBVfDmfVbNyPKr3FX7VaaYkrKjBXG+wcAcZg==
X-Received: by 2002:adf:d1e3:: with SMTP id g3mr8895893wrd.195.1616082411412;
        Thu, 18 Mar 2021 08:46:51 -0700 (PDT)
Received: from [192.168.213.209] (lfbn-idf2-1-172-133.w83-202.abo.wanadoo.fr. [83.202.252.133])
        by smtp.gmail.com with ESMTPSA id x13sm3344311wrt.75.2021.03.18.08.46.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 08:46:51 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <a27b1bae-35d0-d73c-460e-16b39e759d73@decyben.com>
 <20210318154236.krpa3jj7e3a7ycib@barbe>
From: Imad-Eddine Srairi <i.srairi@decyben.com>
Message-ID: <29568d4f-a239-d7f5-d65a-a5de0d0d61ce@decyben.com>
Date: Thu, 18 Mar 2021 16:46:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210318154236.krpa3jj7e3a7ycib@barbe>
Content-Language: fr
Message-ID-Hash: QSBYLHL6GOOAG35OMBR2WEISQ45JG4KJ
X-Message-ID-Hash: QSBYLHL6GOOAG35OMBR2WEISQ45JG4KJ
X-MailFrom: i.srairi@decyben.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: broken link for usrp-users list archive
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QSBYLHL6GOOAG35OMBR2WEISQ45JG4KJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ8OpZHJpYywNCg0KSSBkaWQgdHJ5IHRvICd0YW1wZXInIHdpdGggdGhlIFVSTHMgYmVmb3Jl
IHNlbmRpbmcgbXkgbWVzc2FnZSwgYnV0IHdpdGggDQpubyBsdWNrLi4uDQoNCllvdXJzIGFyZSB3
b3JraW5nIGZpbmUuIFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgaGVscC4NCg0KS2luZCBS
ZWdhcmRzDQoNCkltYWQNCg0KT24gMTgvMDMvMjAyMSAxNjo0MiwgQ8OpZHJpYyBIYW5ub3RpZXIg
dmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEhpIEltYWQsDQo+DQo+IE9uIDE4LzAzLzIxIDE2OjE2
LCBJbWFkLUVkZGluZSBTUkFJUkkgd3JvdGU6DQo+PiBJIHdhcyB0cnlpbmcgdG8gYWNjZXNzIHRo
ZSB1c3JwLXVzZXJzIG1haWxpbmcgbGlzdCBhcmNoaXZlIGFuZCBpdCBzZWVtcyB0aGF0DQo+PiBi
b3RoIGxpbmtzIGZvdW5kIG9uIHRoaXMgcGFnZQ0KPj4gIMKgIGh0dHBzOi8va2IuZXR0dXMuY29t
L01haWxpbmdfTGlzdHMNCj4+IHdoaWNoIGFyZToNCj4+IGh0dHBzOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20NCj4+IGFuZA0KPj4g
IMKgIGh0dHBzOi8vbGlzdHMuZXR0dXMuY29tL3BpcGVybWFpbC91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbS8NCj4+IHJlc3VsdCBpbiBhIDQwNCBlcnJvci4NCj4+DQo+PiBEaWQgYW55dGhpbmcg
Y2hhbmdlIGFuZCB0aGlzIHBhZ2UgbmVlZHMgdXBkYXRpbmcsIG9yIGFtIEkgdXNpbmcgdGhlIHdy
b25nDQo+PiBVUkxzPw0KPiBJdCBzZWVtcyB0aGF0IEV0dHVzIGhhcyBjaGFuZ2VkIHRoZSBmcm9u
dGVuZC4NCj4gVGhlIG5ldyBVUkxzIGFyZToNCj4gaHR0cHM6Ly9saXN0cy5ldHR1cy5jb20vbGlz
dC91c3JwLXVzZXJzLmxpc3RzLmV0dHVzLmNvbQ0KPg0KPiBhbmQNCj4gaHR0cHM6Ly9saXN0cy5l
dHR1cy5jb20vZW1wYXRoeS9saXN0L3VzcnAtdXNlcnMubGlzdHMuZXR0dXMuY29tDQo+DQo+IEhv
d2V2ZXIsIEkgY2Fubm90IG1vZGlmeSB0aGUga2IgcGFnZS4gQnV0IEkgYW0gc3VyZSBzb21lb25l
IHdpbGwuDQo+DQo+IFJlZ2FyZHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
