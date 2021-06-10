Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E803A30C1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 18:35:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF3F2384A63
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 12:35:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="v5BZYtqz";
	dkim-atps=neutral
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mm2.emwd.com (Postfix) with ESMTPS id BEE6B3847CF
	for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 12:34:30 -0400 (EDT)
Received: by mail-wm1-f48.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso6948159wmh.4
        for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 09:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=j722vNRIZczZhJ88AmvGsD0jmA6pdoOfaXDaH69pg+A=;
        b=v5BZYtqzCK5FtWT2zmTe9wnq5K6xuGSgQMISyxl6m0RWIGpZsgAoY6qmMzhE0GbS99
         BIkzZtvO9CC91JAe8wktMRn6SnXWpaJw/gBoYLiiwuaKTjZxyW8LJbzOLjSciSdoDDx5
         C9Fyb76Hs1JwW5whH6U6WnSGSuGEAZSyMAcXdkWc0F49jajbvwCLKJ8009rbr/t+rZFw
         4ihoLAv8OVnixG0MNuamqvFT01HRHpoc0+bZGhV268fVNLyH9k/LX/J+lJ8hpZg8JpT/
         k5+7350TTp/7+7HMokCWbHezz2gnNtNUx4WX9SlT1feqWnfekX6xnIoDtsaHQjo3GVZw
         zwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=j722vNRIZczZhJ88AmvGsD0jmA6pdoOfaXDaH69pg+A=;
        b=q+9TH/T/UI8A8iX6brpdvo0TOcNx7LueSZ2sKl/CLx0PHuW30Di3WnEJ5kSQJpX5Yg
         HW8QerS/oRAH0FZR78XKznptHRGarWLEt4P/5xeUuqNkqC/xQWQDE1tWSTDjLjKhU7DT
         +ebnSpASXWTG4aaArFkHkmwlljAB7CjhiEL3NUc4Bqnvb0wj4gyETlB8QmhH9teX7TJZ
         5cnx+RqmkvNKU1HJ+HAoGt/YMSNAVq2x31ErZmpc98rXX769qhRhiWwcd+rYPuLWvLfJ
         Skik8VSavGOE4yXJn3XB9u6nNr50aaAQweN7T8qaF8plIFvDOMCx/kx0oFLVwlnsW2lm
         4FsQ==
X-Gm-Message-State: AOAM5331O9GPv6F/MRITpRgmJoz2SCzW3HzQ33lfK6yJH33UyyG0PFvg
	u3G7hJQ9Qu7+ndNf5FI17z3nm9t8/K9wIYXE
X-Google-Smtp-Source: ABdhPJziBRIGpPgLFWVTR6bdoI6D+4V9+So0XSXc5Xnh7371/W/X/nr+ydqFGXAzH+xOmmfENpGifw==
X-Received: by 2002:a1c:2cc3:: with SMTP id s186mr16388260wms.150.1623342869459;
        Thu, 10 Jun 2021 09:34:29 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id f18sm3519436wmj.13.2021.06.10.09.34.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 09:34:29 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CACSyVY3+ah-VOMt-tmLYV1L=WeD5bqwoqBdGZpukc+u3EDTYYw@mail.gmail.com>
 <A4D85519-A78A-4160-B0EB-759D8A8B1836@gmail.com>
 <CACSyVY3Wt-kE156c1T4P9iMCJnBGFHhm6WpmoK0Q67yTU_mVjQ@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <c05b08b0-0b9c-69fb-3328-c765dda8fb8d@ettus.com>
Date: Thu, 10 Jun 2021 18:34:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CACSyVY3Wt-kE156c1T4P9iMCJnBGFHhm6WpmoK0Q67yTU_mVjQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 5VQCBDGMSAVRN36AMAZAJI2C3HPRKF2G
X-Message-ID-Hash: 5VQCBDGMSAVRN36AMAZAJI2C3HPRKF2G
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [KeyError] for X310 on Windows 10, UHD 3.15
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VQCBDGMSAVRN36AMAZAJI2C3HPRKF2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2ssIEknbSBzdHVtYmxpbmcgYXQgbGVhc3QgYXMgbXVjaCBpbiB0aGUgZGFyayBhcyB0aGUgbmV4
dCBNYXJjdXMsIGJ1dDogdGhlc2UgdHdvDQptYWNoaW5lcywgZG8gdGhleSB1c2UgdGhlIHNhbWUg
TVRVIGZvciB0aGVpciBOSUNzPw0KDQpPbiAxMC4wNi4yMSAwNzoyNiwgS2VsdmluIExvayB3cm90
ZToNCj4gQm90aCBjb21wdXRlcnMgYXJlIGNvbm5lY3RlZCB0byBvbmx5IGEgc2luZ2xlIHgzMTAg
YXQgYSB0aW1lLCAxMEdCIFNQRivCoHRocm91Z2ggdG8gYQ0KPiB4NTIwIE5JQy7CoA0KPg0KPiBJ
ZiBpdCBoZWxwcywgSSBhbHNvwqBub3RpY2VkIHRoYXQgb24gQ29tcHV0ZXIgQiwgdWhkX2ZpbmRf
ZGV2aWNlcy5leGUgZ2l2ZXMgYW4gZXJyb3IgaWYgSQ0KPiBydW4gaXQgd2l0aG91dCBhcmdzLCBi
dXQgd29ya3MgaWYgSSBzcGVjaWZ5IHRoZSAxOTIuMTY4LjQwLjIgaXAgYWRkcmVzcy4NCj4gVGhp
cyBpcyB0aGUgZXJyb3IgZm9yIHVoZF9maW5kX2RldmljZXMNCj4gKltObyBVSEQgRGV2aWNlcyBG
b3VuZEVSUk9SDQo+IF0gW1VIRF0qDQo+IChUaGlzIGlzbid0IGEgdHlwbywgaXQgcHJpbnRzIGV4
YWN0bHkgdGhpcyBlcnJvciBpbiBjbWRwcm9tcHQpKg0KPiAqDQo+DQo+IEFueW9uZSB3aXRoIGEg
c2ltaWxhciBpc3N1ZSBhbmQgbWFuYWdlZCB0byByZXNvbHZlIGl0Pw0KPg0KPiBPbiBUaHUsIEp1
biAxMCwgMjAyMSBhdCAxMDoyMiBBTSBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFp
bC5jb20NCj4gPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+IHdyb3RlOg0KPg0KPiAg
ICAgRG9lcyBjb21wdXRlciBCIHBlcmhhcHMgaGF2ZSBhbm90aGVyIFVTUnAgb24gaXRzIG5ldHdv
cmsgcG9ydD8gKENsdXRjaGluZyBhdCBzdHJhd3MNCj4gICAgIEnigJlsbCBhZG1pdCkuwqANCj4N
Cj4NCj4NCj4gICAgIFNlbnQgZnJvbSBteSBpUGhvbmUNCj4NCj4+ICAgICBPbiBKdW4gOSwgMjAy
MSwgYXQgMTA6MTQgUE0sIEtlbHZpbiBMb2sgPGtlbHZpbi5sb2syNjZAZ21haWwuY29tDQo+PiAg
ICAgPG1haWx0bzprZWx2aW4ubG9rMjY2QGdtYWlsLmNvbT4+IHdyb3RlOg0KPj4NCj4+ICAgICDv
u78NCj4+ICAgICBJIGFtIGhhdmluZyB0cm91YmxlIHdpdGggdGhpcyBlcnJvciBtZXNzYWdlLiAi
KkVycm9yOiBMb29rdXBFcnJvcjogS2V5RXJyb3I6DQo+PiAgICAgVW5rbm93biBzZXR0aW5ncyBy
ZWdpc3RlciBuYW1lOiBERFNfRlJFUSoiLCBvbiBhwqBYMzEwIHVzcnAuDQo+PiAgICAgSSBoYXZl
IDIgVUhEIGluc3RhbGxhdGlvbnMgb2YgVUhEIG9uIDIgZGlmZmVyZW50IGNvbXB1dGVycy4gQ29t
cHV0ZXIgQSBoYXMgaW50ZXJuZXQNCj4+ICAgICBhY2Nlc3MsIENvbXB1dGVyIEIgZG9lcyBub3Qg
aGF2ZSBpbnRlcm5ldCBhY2Nlc3MuIEJvdGggY29tcHV0ZXJzIHVzZcKgVUhEIDMuMTUgYnVpbHQN
Cj4+ICAgICBmcm9tIHNvdXJjZSAoR2l0aHViKSwgcnVubmluZ8Kgd2luZG93cyAxMC4gT24gQ29t
cHV0ZXIgQSwgSSBhbSBhYmxlIHRvIHJ1bg0KPj4gICAgIHVoZF91c3JwX3Byb2JlLmV4ZSB3aXRo
b3V0IGFueSBpc3N1ZXMuIE9uIGNvbXB1dGVyIEIgSSBnZXQgdGhlIEREU19GcmVxIEtleUVycm9y
Lg0KPj4NCj4+ICAgICBJIGluaXRpYWxseSB0aG91Z2h0IGl0IHdhcyBhbiBpbWFnZSBpc3N1ZSwg
YnV0IHRoZSBzYW1lIHgzMTAgd29ya3Mgb24gQ29tcHV0ZXIgQQ0KPj4gICAgIGJ1dCBmYWNlcyBl
cnJvciBvbiBDb21wdXRlciBCLg0KPj4NCj4+ICAgICBFdmVuIGNvcHlpbmcgdGhlIHNhbWUgdWhk
IGJpbmFyaWVzIGFuZCBpbWFnZXMgZnJvbSBBIHRvIEIsIGFuZCBydW5uaW5nIG9uIEIgc2hvd3MN
Cj4+ICAgICB0aGUgc2FtZSBlcnJvci4gSSBhbHNvIHJhbiBhIGNtZCBwcm9tcHQgc2Vzc2lvbiBh
bmQgcmVzZXQgdGhlIGVudmlyb25tZW50IHZhcmlhYmxlcw0KPj4gICAgIGZvciB1aGRfaW1hZ2Vz
X2Rpci4NCj4+DQo+PiAgICAgQW55IGFkdmljZSBvbiB3aGF0IEkgY291bGQgYmUgZG9pbmcgd3Jv
bmc/DQo+PiAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPj4gICAgIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+PiAg
ICAgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KPj4gICAgIDxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20+DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
