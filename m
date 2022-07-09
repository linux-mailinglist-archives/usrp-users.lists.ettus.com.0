Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBF056CB47
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 21:48:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7071C38418B
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 15:48:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657396109; bh=ZMriDE8jfx9kXoq6bFcaktv0CFNlwePkLVOaYVukW7w=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Tm9z56qjPkfo4LSgtLDxZcJWwbYzAT8pvPp+YidXonDAWVEBQIRoqK6NKkj3zXHkE
	 RqF8RsW73fMUOhXeQQKuvVqV6BOsmuRgNybWTADudxydM5QWXVwV5JRKO614rl1jjR
	 032Hc6uA39SebQ1Je8YxWJTYFftFR14xDabA+30X1PWm9Zf0ewiUSuGMaG/GDT5TCh
	 pXnHXs5e7yzSLLu7FsOvUBf2YEjmM9CvkCcuR7zuD1Xo2tgBNsRoKIVsAmwDRLJgct
	 GFYiaUNBMKR+S3jmc/A1Skcxyfb/YoM83UiCMgM5tVeCxG0gsAXTD2CG22Xtgf0FlF
	 +E7EoNDDFyQ9w==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id BE767383FBA
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 15:46:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PP6infs3";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id g6so2509135qtu.2
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 12:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UsIvJRHgwnkeXCZhQLGaOY6pIDAOoZwrSAywvp2BgfA=;
        b=PP6infs3iAhP+asgbiyvaCQkVPWfW88tWbTOfYzHRoriS5lWuScBqjvwRuTBIVAh8r
         sDyxQ8Io3cPzSXG6JH73I/bjP6q9D7QXCiZ7dAqXNZOIUnZKs4avpl4MsmnrqD+ihxsL
         0pTOIrfqAsSJ2wudjboVIiemFC7oC9P3ePySER3/j8nGGASjulZpekb+GHW5ulASh8Rz
         af5eZnVyaSKyVNidlbqRge8CV8rR1TbzayzPeQ1qXXiovg5/hA/kHRG4ZI70WqZKg2RG
         W5jj7OyLHCoOLUsZPsyhlj4wnrbf69YZRwEMLG1KJknIh1IcnSsGv81zDG2HCZfC2c9f
         fPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UsIvJRHgwnkeXCZhQLGaOY6pIDAOoZwrSAywvp2BgfA=;
        b=uzCizgWCfdfAqufPPjY29z9ePrGbbVRiaftKAMQVaUef5KV9+ws3t7FVy9XHyl3S25
         Y4Gfzr3tU0apSnwoC4bFXxCCG7S0xDg+rEofVy3d3s82UAWy5A5TAOALe7w5Q941t4E1
         fXxqEoINYfMGCr+BoQNdex0o5chCsd2H7VR0yglSHeMZLuw0KKfpK//2SlVMUIdWAqGG
         isgrRKokJTWV0Q0qh41Lbheqw7Gptx17J3qvzAYZs+SgbNBsZEfE2Yo8lQt4PCdBPiqb
         G0uOGngdKm5/vWh4hcyZmP0Rk77jUl3zOLYOf8LguIuQI3ZQxI5Mqj6Ih0PzoHDkr15t
         vrrA==
X-Gm-Message-State: AJIora/FDMT7zOnK9vDaNqPH26xKxtGWmEVLVd5jLKrr0mXIvJy7hc3V
	2wLK78E95mEQAF6cBIoWPcg=
X-Google-Smtp-Source: AGRyM1su3HbDasr+J1f8ze7yZJlH/Yn7BvQbMxnusa3q1VegeSD+W7/IpUaR+nUWNNJeL1B9Nw87pw==
X-Received: by 2002:a05:6214:aca:b0:473:247c:6fde with SMTP id g10-20020a0562140aca00b00473247c6fdemr7880094qvi.66.1657395972241;
        Sat, 09 Jul 2022 12:46:12 -0700 (PDT)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id m14-20020a05622a118e00b0031ea8dc3a49sm1993572qtk.78.2022.07.09.12.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 12:46:11 -0700 (PDT)
Message-ID: <28c89a26-843a-000e-513a-1ec0e27a73fd@gmail.com>
Date: Sat, 9 Jul 2022 15:46:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: friedtj@free.fr
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
 <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
 <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
 <CAAxXO2HSPkfcAoXnLXUvarLGoAzgPUfr9SWaNP3Vp38gFmPmww@mail.gmail.com>
 <4d1cbfc5-957d-ee5c-4b16-70419ddca6e0@gmail.com>
 <2097116366.968706430.1657395541226.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2097116366.968706430.1657395541226.JavaMail.zimbra@free.fr>
Message-ID-Hash: DEFG2YT2IPZFRN7HCNHRKP75UTPRN2BQ
X-Message-ID-Hash: DEFG2YT2IPZFRN7HCNHRKP75UTPRN2BQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DEFG2YT2IPZFRN7HCNHRKP75UTPRN2BQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0wOSAxNTozOSwgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPj4gICBvbiB0aGF0
IGRhdGEuwqDCoCBNT1NUIG1hY2hpbmVzIHRoZXNlIGRheXMgYXJlIGxpdHRsZS1lbmRpYW4gKHg4
NiwgZXRjKS4NCj4gZXhjZXB0IGZvciB0aGUgSlZNIGFuZCBhbGwgdGhlIEFuZHJvaWQgYXBwbGlj
YXRpb25zIHdoaWNoIGFyZSBiaWctZW5kaWFuIGhlbmNlICENCj4gSSBhbSBub3Qgc3VyZSB4ODYt
YmFzZWQgUENzIGFjY291bnQgZm9yICJtb3N0IG1hY2hpbmVzIiB0b2RheSwgYWx0aG91Z2ggdGhl
eSBhcmUNCj4gYXJndWFibHkgdGhlIG1vc3Qgc3VwcG9ydGVkIEdOVSBSYWRpbyBydW5uaW5nIGVu
dmlyb25tZW50Lg0KPg0KPiBCZXN0LCBKTQ0KV2VsbCwgc3VyZS4gRXhjZXB0IHRoYXQgSlZNIHJ1
bnMgb24gYWN0dWFsIENQVSBoYXJkd2FyZSwgd2hpY2ggaXMgDQpvdmVyd2hlbG1pbmdseSBsaXR0
bGUtZW5kaWFuLg0KDQpJJ3ZlIGJlZW4gaW52b2x2ZWQgd2l0aCBjb21wdXRlcnMgYW5kIGNvbXB1
dGluZyBhbmQgY29tcHV0ZXIgDQphcmNoaXRlY3R1cmUgc2luY2UgMTk3OS4gSW4gdGhhdCB0aW1l
IHRoZXJlDQogwqAgaGF2ZSBiZWVuIG1hbnkgZmxpcnRhdGlvbnMgd2l0aCBib3RoIHN0eWxlcyBv
ZiByZXByZXNlbnRhdGlvbiwgDQppbmNsdWRpbmcgbWFjaGluZXMgdGhhdCBjb3VsZCBiZSBjb25m
aWd1cmVkIGF0DQogwqAgYm9vdCB0aW1lLsKgwqAgV2hpY2ggaXMgd2h5IEkgc2FpZCAidGhlc2Ug
ZGF5cyIuLi4uDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
