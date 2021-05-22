Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C7C38D63F
	for <lists+usrp-users@lfdr.de>; Sat, 22 May 2021 17:06:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C37F1385A6D
	for <lists+usrp-users@lfdr.de>; Sat, 22 May 2021 11:06:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="BBV+e7kK";
	dkim-atps=neutral
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id C65733850BD
	for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 11:05:26 -0400 (EDT)
Received: by mail-wm1-f42.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso8053648wmc.1
        for <usrp-users@lists.ettus.com>; Sat, 22 May 2021 08:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=kBk88grExWL3WHEzq/2ADc3FCN0zAXZm4AjV6ZYPSuI=;
        b=BBV+e7kKen49kXp3z8xIHTOGhynPFB1XqNEsngtn2Tg5dfXt0wQ7NZxPYuPxntKkHj
         15AMwFxHFXk1xKkX333Y7otKwMOcX7rCs7rBilY4ZdHdpcpYfI5KWEQA8bnVxKRiV8FP
         17BoY2WYtM92cy7H6ezjlKAj5t5Jk7ANKw1Jl2upMNNlo0jIzprxnvPTQf49TQUuQTzu
         3iI1c2UCmsmvw6l4aQirVKjo3+SgoPGj56PPwXtF/5G69DCDgvREDCibBsuqiP6veG0O
         F2pIj8LDXM2mPIB/u06/zZaRDTORBfk7pWm71BpO9hF9AFMgyxIR+tqLJjxRk2/ZlJ/k
         wbiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=kBk88grExWL3WHEzq/2ADc3FCN0zAXZm4AjV6ZYPSuI=;
        b=rdqwxgOgkSmnuam2UUeTtASzaisbksEL0NdCgUl13COzqcec/k4toyWJT/iFonaGpW
         1JdTawAGVF/FFj/uSfkIINtgSzHLL1kWAM/OGsd/4cpOscz5+LKNkr+crPaSxloGS/yH
         QnGvhywq2xdLsmFw1YsR8x0oA+LhBW5DslvHiGKRw7Rg/Gd9fOtcQOtGD7LuwzRlPNdn
         2bfD4ZBZ7RMUR3pOEfHKi7j7S7ekmzsIRbKz/3wEr88fZRjsOjbSLHuOxdczxbgbn2XG
         4YWZ/S7D8ljkqinHHpLkXjqPwEzTtRZ60wBqKVkCowLrIGxVkP7k81zd5fS3pH4RGGgf
         /sEw==
X-Gm-Message-State: AOAM532X58JAZSu4bxDlTUsvMAGJ5LUJZGFHgHwz+VK0wL+vR/a/j+we
	51XXrCwKVnyOCW9+8aB9thRrznM08NU5zmh9
X-Google-Smtp-Source: ABdhPJxBP5f30PIJQbsoVqpFatVBcoJCA7DAJkUwVorgv9XSHb68o7lkKGGbIlpoGA+0ncRxHmPyJQ==
X-Received: by 2002:a1c:b087:: with SMTP id z129mr13173297wme.67.1621695925711;
        Sat, 22 May 2021 08:05:25 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id g10sm5846471wrq.12.2021.05.22.08.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 May 2021 08:05:25 -0700 (PDT)
To: Martin Elfvelin <marelf-5@student.ltu.se>
References: <CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com>
 <20d26f00-f3ec-7813-e448-51c455d857cd@ettus.com>
 <CADjF3PwZ8YtHiZfZzQapznKM=e-FNX49Qjp75bp0vDioKZoHsw@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <27db1799-7784-ea07-ee5f-2a960e2d4be9@ettus.com>
Date: Sat, 22 May 2021 17:05:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADjF3PwZ8YtHiZfZzQapznKM=e-FNX49Qjp75bp0vDioKZoHsw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 7FK4S4FHN7ETPKD4LXH2BKWZKZUD34KW
X-Message-ID-Hash: 7FK4S4FHN7ETPKD4LXH2BKWZKZUD34KW
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPP requirements for USRP B210 amsat
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FK4S4FHN7ETPKD4LXH2BKWZKZUD34KW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQo+IE1hbnkgdGhhbmtzIGZvciB5b3VyIHJlcGx5Lg0KDQpZb3UncmUgbW9y
ZSB0aGFuIHdlbGNvbWUhIFVTUlBzIGluIGdyb3VuZCBzdGF0aW9ucyBhcmUgZnVuIHN0dWZmIQ0K
DQo+IFRoZSBncm91bmQgc3RhdGlvbiBpcyBpbnRlbmRlZCB0byBwcmltYXJpbHkgc3VwcG9ydCBm
dXR1cmUgZWR1Y2F0aW9uYWwgQ3ViZVNhdCBwcm9qZWN0cw0KPiBzbyBpdCdzIGRpZmZpY3VsdCB0
byBzYXkgZXhhY3RseSB3aGF0IGNvbW11bmljYXRpb25zIHByb3RvY29scyB3aWxsIGJlIHVzZWQg
YnV0IHlvdSBhcmUNCj4gcmlnaHQgdG8gYXNzdW1lIGNvbW1vbiBhbXNhdCBtb2Rlcy4NCg0KV2Vs
bCwgaW4gdGhhdCBjYXNlLCBhIHNsaWdodCBjYXNlIG9mIG92ZXJkaW1lbnNpb25pbmcgY2FuJ3Qg
YmUgYmFkIOKAkyB3b3VsZCBiZSBzdHVwaWQgaWYNCnlvdSBmb3VuZCBvdXQgaW4gYSB5ZWFyIHRo
YXQgaGFkIHlvdSBzcGVudCBhIGZldyBrcm9ub3IgbW9yZSwgdGhpbmdzIHdvdWxkIGJlIHdvcmtp
bmcuDQoNCj4gQ3VycmVudGx5IHdlIGFyZSBkZXZlbG9waW5nIGEgMVUgY3ViZXNhdCB0aGF0IHdp
bGwgdXNlIGEgOS42IGticHMgR0ZTSy9BU00rR29sYXkvUmVlZA0KPiBTb2xvbW9uIGNvbmZpZ3Vy
YXRpb24uDQoNCldlbGwsIGlmIHlvdSdyZSBpbiB0aGUgImJ1c2luZXNzIiBvZiBidWlsZGluZyB5
b3VyIG93biBzYXRlbGxpdGVzLCB0aGVuIGJ5IGFsbCBtZWFucywganVzdA0Kc2xhcCBhIFBDIG9m
IHNvbWUga2luZCAoaW50ZWwgTlVDPyBvciBhbnkgbWljcm8tQVRYIGJvYXJkLCBtYXliZSB3aXRo
IGEgUnl6ZW4gNSBldmVuPykgb24NCnRoZXJlIOKAkyByZWFsbHkgY2FuJ3QgaHVydCBpZiB5b3Un
dmUgZ290IGEgbGl0dGxlIGhlYWRyb29tIGZvciBkb2luZyBtb3JlIGFkdmFuY2VkIHN0dWZmDQpz
dWNoIGFzIGF0dGl0dWRlIHR1bWJsZSBlc3RpbWF0aW9uLCBiZXR0ZXIgZG9wcGxlciBwcmVkaWN0
aW9uIC8gY29ycmVjdGlvbiwgb3Igc2ltcGx5IG1vcmUNCm1vZGVzIChhbmQgc2ltdWx0YW5lb3Vz
IG1vZGVzKS4NCg0KUmVnYXJkaW5nIHRoZSBHb2xheSBjb2RlOiBpcyB0aGF0IHRoZSBjbGFzc2lj
YWwgcGVyZmVjdCBiaW5hcnkgR29sYXkgKDIzLDEyKS1jb2RlLCBmb3INCmhhcmQgZGVjb2Rpbmc/
IElmIHlvdSBwaWNrIGEgUEMgb3ZlciBhIFBpLCB5b3UgZ2V0IGhpZ2hlciBtZW1vcnkgYmFuZHdp
ZHRoLCBhbmQgY2FuDQppbXBsZW1lbnQgTWF4aW11bS1MaWtlbGlob29kIGRlY29kaW5nIChpdCBk
b2Vzbid0IGdldCBhbnkgYmV0dGVyIDspICkgc2ltcGx5IGJ5IGhhdmluZyBhDQpwcmVjb21wdXRl
ZCB0YWJsZSBvZiAywrLCsyAxMi1iaXQgd29yZHM7IHRoYXQncyAxNiBNQiBvZiBSQU0gd2hlbiB5
b3UgcHV0IGVhY2ggMTIgYml0IGluZm8NCndvcmQgaW50byBhIDE2IGJpdCBtYWNoaW5lIHdvcmQg
KGlmIHlvdSBpbXBsZW1lbnQgaXQgaW4gYSBwYWNrZWQgbWFubmVyLCBpdCdzIG9ubHkgMTIgTUIp
DQpvZiBhIGxvb2t1cCB0YWJsZSwgYW5kIGEgc2luZ2xlIG1lbW9yeSBhY2Nlc3Mgd291bGQgdGhl
biBnaXZlIHlvdSB0aGUgZnVsbHkgZGVjb2RlZCAxMg0KYml0cy4gTm90IHRoYXQgeW91J3JlIGFu
eXdoZXJlIG5lYXIgY29tcHV0YXRpb25hbCB0cm91YmxlIHdpdGggdGhlIDk2MDAgYml0cyBhIHNl
Y29uZA0KZG9pbmcgYSB0cmFkaXRpb25hbCBkZWNvZGVyLiBJbiBmYWN0LCBEYW5pZWwgRXN0w6l2
ZXosIGhpbXNlbGYgb2YgR05VIFJhZGlvIGFuZCBzYXRlbGxpdGUNCm9ic2VydmF0aW9uL2dyLXNh
dGVsbGl0ZXMgZmFtZSBbMTBdLCBoYXMgYSBuaWNlIGFydGljbGUgb24gYWxnZWJyYWljIGRlY29k
aW5nIG9mIHRoZQ0KKDI0LDEyKSBHb2xheSBbMTFdIGFuZCB0aGUgKDIzLDEyKSwgdG9vIFsxMl0g
KG5vdGUgdGhhdCB5b3UgY2FuIHNvbHZlIHRoZSAxLWJpdC1yZWR1Y2VkDQplcnJvciBjb3JyZWN0
aW9uIGNhcGFiaWxpdHkgYnkgYWN0dWFsbHkgdHJ5aW5nIHRvIGRlY29kZSBib3RoIHBhcml0eSBo
eXBvdGhlc2VzKS4NCg0KPiBIb3dldmVyIGl0IG1pZ2h0IGJlIG9mIGludGVyZXN0IGluIHRoZSBm
dXR1cmUgdG8gYWRkIHN1cHBvcnQgZm9yIHJlY2VwdGlvbiBvZiBoaWdoZXINCj4gZnJlcXVlbmNp
ZXMgYW5kIGRhdGEgcmF0ZXMgKHNheSBhbWF0ZXVyIFMtYmFuZCBmb3IgZXhhbXBsZSkgd2hpY2gg
d291bGQgbWVhbiBhZGRpbmcNCj4gYW5vdGhlciBTRFIgdG8gdGhlIHNhbWUgUEMgYW5kIHRoZXJl
IEknbSB3b3JyaWVkIGFib3V0IGNyZWF0aW5nIGEgYm90dGxlbmVjayBpbiB0ZXJtcyBvZg0KPiBj
b21wdXRpbmcgcG93ZXIuDQoNCkdvIGRvIGEgYml0IG9mICJyZWNlaXZlciBzaG9wcGluZyIgaW4g
Z3Itc2F0ZWxsaXRlcy4gSW4gZmFjdCwgRGFuaWVsIGV2ZW4gaGFzIGd1aWRhbmNlIGZvcg0KdGVh
bXMgZGV2ZWxvcGluZyBncm91bmQgc3RhdGlvbnMgZm9yIHNtYWxsc2F0IG1pc3Npb25zIFsxM10u
DQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpbMTBdIGh0dHBzOi8vZ2l0aHViLmNvbS9kYW5p
ZXN0ZXZlei9nci1zYXRlbGxpdGVzLw0KWzExXSBodHRwczovL2Rlc3RldmV6Lm5ldC8yMDE4LzA1
L2FsZ2VicmFpYy1kZWNvZGluZy1vZi1nb2xheTI0MTIvDQpbMTJdIGh0dHBzOi8vZGVzdGV2ZXou
bmV0LzIwMTgvMDUvdXNpbmctYS1nb2xheTI0MTItZGVjb2Rlci1mb3ItZ29sYXkyMzEyLw0KWzEz
XSBodHRwczovL2dpdGh1Yi5jb20vZGFuaWVzdGV2ZXovZ3Itc2F0ZWxsaXRlcy9ibG9iL21hc3Rl
ci9zYXRlbGxpdGVfdGVhbXMubWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
