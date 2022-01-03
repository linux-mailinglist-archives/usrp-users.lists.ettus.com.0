Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0206348380B
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 21:38:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2218385452
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 15:38:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bOMf7MHh";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id CB7A7385439
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 15:37:47 -0500 (EST)
Received: by mail-qk1-f176.google.com with SMTP id 202so28928865qkg.13
        for <usrp-users@lists.ettus.com>; Mon, 03 Jan 2022 12:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=PMhBTH9LqW7vaExkGHmpLCEXrYHJWyiegeQXiTwoi9k=;
        b=bOMf7MHhHWqw/lnB1fRCAaYibYB3k8D4Ijh4nq4MK5ofavINTmwKju98jrlIQcXtf1
         GUTtbOohmkyIUZL4bYYxjOZlz7/b3fDoew4uElPF4VlA7gNTHwJ7R09BI+0HQ1K8VP6H
         DjDU4iblCm1WKACewGtIl/6SeplRHdg8pqVpQVSivU2ErCSPhkhTgecoodbxWdVRoqbA
         C3Uiup1BjkKcVpQwQmCo/MVCKfJ89s7QGd/W+evyw5Quy18N24bvswwhueePeDYdl+az
         Ne/WtDS8bkbnu948ByB+OlY8vclxcfk5hUEt3sV57tWTHgx9W4dO2O9lzZ/CGtDtn6kB
         eLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PMhBTH9LqW7vaExkGHmpLCEXrYHJWyiegeQXiTwoi9k=;
        b=uVgEWThGUh2+K8oleenDYxTos25bJUkwJru+8Bbbl554QeLPlgYo/5Og314yA6JaJj
         e9+/3oVL7m7n0j66EtkQ8hyHZigOO16n465x301GXLJWz58TF+/bFgginDqrXF549rRz
         HCSi8eAr0f1Q8cyYVAMb+sVMVQx0f0wGOidSsyZZDklyJ37QqwR1FKGkL7kOrquOz3pS
         yaA1j4e6q5KSBLFnBjjmBK9FcxSQRbDL2oPWnVlFqgVSQSu+zTqMBqHKeEps8tqD8pAG
         gAcYG0MvlL0L0miYHvwqBnXtw7cp643EGMgnOMq7AoUbnHm1nA+i5HpxyBJl6XxsvJtJ
         yjeA==
X-Gm-Message-State: AOAM531OKPxESibHyESKkQjy3Hi6eojOgGGwkWRxu0lB5vL9QSgzKzEf
	zQIoiCzB9YgACvEq9fsxQhChIjJkK95r7g==
X-Google-Smtp-Source: ABdhPJylUYCVZYX5hmoa1UhXZMW8zRNsph/tiBsK90QxsdjX9SRl5KvPIuLaG9UKyNs8jsu8oF9/vg==
X-Received: by 2002:a05:620a:17aa:: with SMTP id ay42mr34302777qkb.481.1641242267188;
        Mon, 03 Jan 2022 12:37:47 -0800 (PST)
Received: from [192.168.2.189] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id i11sm29931089qko.116.2022.01.03.12.37.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 12:37:46 -0800 (PST)
Message-ID: <a399973e-87fd-c642-35c7-76e0fb2c46e1@gmail.com>
Date: Mon, 3 Jan 2022 15:37:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.com>
Message-ID-Hash: E6CCYLN46ZYZR6DQLG6J46D5MNZBWX6F
X-Message-ID-Hash: E6CCYLN46ZYZR6DQLG6J46D5MNZBWX6F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E6CCYLN46ZYZR6DQLG6J46D5MNZBWX6F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0wMyAwNTozMCwgc2Vja2lub25jdTgwNzBAZ21haWwuY29tIHdyb3RlOg0KPg0K
PiBIZWxsbyBNYXJjdXMsDQo+DQo+IEkgZGlkIHRoZSBjYWxpYnJhdGlvbiBidXQgaXQgZGlkbuKA
mXQgY2hhbmdlIHRoZSByZXN1bHRzLiBUaGVyZSBpcyBzdGlsbCANCj4gTE8gbGVha2FnZSBvbiB0
cmFuc21pdHRlci4gSSBhdHRhY2hlZCB0aGUgZ2VuZXJhdGVkIGNhbCBmaWxlIGxvY2F0aW9uIA0K
PiBhcyBhIGZpZ3VyZS4NCj4NCj4NClNvLCBJIm0ganVzdCBsb29raW5nIGFnYWluIGF0IHlvdXIg
U3BlY3RydW0gQW5hbHlzZXIgdHJhY2VzLg0KDQpJdCBsb29rcyBsaWtlIHRoZXJlJ3MgYSBsaXR0
bGUgYml0IGJldHRlciB0aGFuIDMwZEIgTE8gc3VwcHJlc3Npb24gaW4gDQp5b3VyIFRYIHNpZ25h
bC7CoCBUaGF0J3Mgbm90IHNwbGVuZGlkLCBidXQgaXQncyBub3QgaG9ycmlibGUsIGVpdGhlci4N
Cg0KSSB3b3VsZCBzdWdnZXN0IHVzaW5nIG9mZnNldCB0dW5pbmcgdG8gbW92ZSB0aGUgTE8gbGVh
a2FnZSBvdXQtb2YtYmFuZCANCndpdGggcmVzcGVjdCB0byB5b3VyIGNhcnJpZXIgc2lnbmFsLg0K
DQpodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9nZW5lcmFsLmh0bWwjZ2VuZXJh
bF90dW5pbmcNCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
