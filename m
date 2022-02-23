Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4304C17DC
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 16:57:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D1F93844C5
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 10:57:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AtTZMui2";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 803843817EC
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 10:56:26 -0500 (EST)
Received: by mail-qk1-f178.google.com with SMTP id n185so4720348qke.5
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 07:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=17gcJeQmvNv1hSaZ/CAv9TKpgb0pEOH88ZGty+sXNKU=;
        b=AtTZMui2kwA40OIRrHnqTaLASVisaUX0gk7aaFAMSB0GzzsNrwEQ33gvh7Sskew5F3
         Glm+Pg1D32usmK2RhIXwsN5BERRfSMcEpHD37IQMmp2K97cWlhFHYvuhPqUHFyeB2FV4
         l1X3ox64e7FnbV369IP5XTLq4IZ1Ad1EyJ83XH+hW+57Ix6ErUhMVSJRZtFckdsoRqRP
         KdvLg3aAnq+5CpYS3P/JNDgJvEzuN/rEg6ayBEEM8B/P7Mv9KFYvY29Gn4iubMQBEX8R
         ecd22BAjJQVOhWnvfDNaUSEZopWJhsDm2WIUc9e6Bll0VW/Br+UR89wjGRv7EBFPS3SY
         HKag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=17gcJeQmvNv1hSaZ/CAv9TKpgb0pEOH88ZGty+sXNKU=;
        b=JqX02DQVN0MMu2+ueVA41LvXOWJbL1zTIOVu3fy9Cb3mi/aMkHBrnBYDNK0GzkmLwV
         vb5zGZWQXELct73hPooI5/wbM1RsxZGmh9PUR/s7nd0p+ZXSTzxQFbOEb54V37CLKmVz
         3Nc14R+ovsb0S8WsVHcIRime9NQzIHk71MijCYVM63UMxgsc68L31Qi37EaZKn22R0zz
         AfgqVv4sLdywvMTIKcCX+aEyVN3wHM7GrKiaQuKn7a5WkDfsaIi2dbjmkGQYcqhsMNn6
         64cldeVPEor7e+U3iJCKx7LOFz7M1wkbtJ7WKa6RxxoNmNiemUmh2QKR4uQM/kQcXWAG
         XJDA==
X-Gm-Message-State: AOAM532VgaBrhqZiyNfZhs+nWF7HJNO0odxsyJjuSTVTx/7VQOwIiy0I
	rssoaJwABgcYQaeRHaQC5m16QZSDTRwXlQ==
X-Google-Smtp-Source: ABdhPJyf+mdhr7AQ9oFXNKlLhA2OPgXiMMQyaGbZppiwXjOfLmn4B64389cmNPLHaJeq7v5mciOKLw==
X-Received: by 2002:a05:620a:3195:b0:649:2a18:1480 with SMTP id bi21-20020a05620a319500b006492a181480mr208444qkb.308.1645631785566;
        Wed, 23 Feb 2022 07:56:25 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w10sm23477qtj.73.2022.02.23.07.56.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 07:56:25 -0800 (PST)
Message-ID: <42f4ef4d-c172-cba9-1e9a-e575267ffb4c@gmail.com>
Date: Wed, 23 Feb 2022 10:56:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PAXP193MB22523F0DC38B2BBD84D77318963C9@PAXP193MB2252.EURP193.PROD.OUTLOOK.COM>
 <CAB__hTSf7Ms2=d1nNaE=woB+7bOYv_ZZWereBrTFFLO3p2cLyA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSf7Ms2=d1nNaE=woB+7bOYv_ZZWereBrTFFLO3p2cLyA@mail.gmail.com>
Message-ID-Hash: Q67CRP5PTLRX6T2WIQ3CU6467UK5QEHD
X-Message-ID-Hash: Q67CRP5PTLRX6T2WIQ3CU6467UK5QEHD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q67CRP5PTLRX6T2WIQ3CU6467UK5QEHD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0yMyAxMDoyMSwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IEhpIFRob21hcywNCj4g
SSBjb25mZXNzIHRvIG5vdCBmdWxseSB1bmRlcnN0YW5kaW5nIHRoZSBuZXR3b3JrLWJhc2VkIGJh
Y2sgcHJlc3N1cmUuIA0KPiBCYXNlZCBvbiBteSBvd24gZXhwZXJpZW5jZSwgaXTCoHNlZW1zIHRo
YXQgaXQgaXMgcG9zc2libGUgdG8gZ2V0IGVpdGhlciANCj4gIk8iIG9yICJTL0QiIChkZXNwaXRl
IHRoZSBpbmZvcm1hdGlvbiBtZW50aW9uZWQgYXQgdGhlIGxpbmsgeW91IA0KPiBwcm92aWRlZCB3
aGljaCBpbmRpY2F0ZXMgbm8gYmFjayBwcmVzc3VyZSkuwqAgSSB3b3VsZCBldmVuIHNheSB0aGF0
ICJPIiANCj4gaXMgbW9yZSBjb21tb24uwqAgVGhpcyBpcyBqdXN0IGEgZ3Vlc3MsIGJ1dCBJIHdv
bmRlciBpZiB0aGVyZSBpcyBhIA0KPiBzb3J0LW9mICJyYWNlIGNvbmRpdGlvbiIgb24gdGhlIGhv
c3Qgd2hlcmUgaW4gbW9zdCBjYXNlcyBVSEQgaXMgYWJsZSANCj4gdG8gc2VlIHRoYXQgaG9zdCBu
ZXR3b3JrIGJ1ZmZlcnMgYXJlIGdldHRpbmcgZnVsbCBhbmQgaXNzdWUgYSBjb21tYW5kIA0KPiB0
byBwYXVzZSBzdHJlYW1pbmcgZnJvbSB0aGUgRlBHQSAoY2F1c2luZyAiTyIpLCBidXQgaW4gc29t
ZSBjYXNlcywgdGhlIA0KPiBidWZmZXJzIGZpbGwgc28gcXVpY2tseSB0aGF0IHRoZSBwYXVzZSBp
cyBub3QgcmVjZWl2ZWQgcHJpb3IgdG8gZGF0YSANCj4gYmVpbmcgZGlzY2FyZGVkIGluIHRoZSBP
UyBuZXR3b3JrIGJ1ZmZlcnMgKHRodXMgIkQiIG9yICJTIikuDQo+DQo+IEhhdmUgeW91IHJ1biAi
YmVuY2htYXJrX3JhdGUiP8KgIElmIG5vdCwgdHJ5IHJ1bm5pbmcgZm9yIGEgbG9uZyB0aW1lIHRv
IA0KPiBzZWUgaWYgdGhlIHNhbWUgcHJvYmxlbSBvY2N1cnMgYXMgd2hlbiBydW5uaW5nIGdudXJh
ZGlvLg0KPiBSb2INCj4NCkkiZCBsaWtlIHRvIGJhY2stdXAgUm9iJ3MgcGxhbiBmb3IgeW91IHRv
IHJ1biAiYmVuY2htYXJrX3JhdGUiIHRvIGdldCBhbiANCmlkZWEgb2YgaG93IGZhc3Qgc2FtcGxl
cyBjYW4gYmUgbW92ZWQgaW50by9vdXQtb2YgeW91ciBob3N0IG1hY2hpbmUsIA0Kd2l0aG91dCB0
aGUgY29tcGxpY2F0aW9uIG9mDQogwqAgYSBjb21wbGV4IGZyYW1ld29yayBsaWtlIEdudSBSYWRp
byBtdWRkeWluZyB0aGUgd2F0ZXJzLg0KDQpUaGUgdmFyaW91cyB0eXBlcyBvZiAiY2Fubm90IGtl
ZXAgdXAiIGFsbCBiYXNpY2FsbHkgYm9pbCBkb3duIHRvIA0KdGhhdC0tdGhlIHByb2Nlc3Npbmcg
b24geW91ciBjb21wdXRlciBzaW1wbHkgaXNuJ3QgYWJsZSB0byBrZWVwIHVwIHdpdGggDQp0aGUg
c2FtcGxlIGZsb3cuwqAgTk8gYW1vdW50IG9mIGJ1ZmZlcmluZw0KIMKgIGNhbiBoZWxwIHdoZW4g
dGhlICJhdmVyYWdlIGNhc2UiIGlzIHRoYXQgeW91ciBob3N0IGNhbm5vdCBrZWVwIA0KdXAtLWV2
ZW4gaWYgeW91ciBob3N0LCBvbiB0aGUgbG9uZy10ZXJtLWF2ZXJhZ2UgY2FzZSBpcyAiZmFsbGlu
ZyBiZWhpbmQiIA0KYnkgYSBmcmFjdGlvbiBvZiAxJSwgeW91J2xsIHN0aWxsIGZpbGwgdXAgeW91
cg0KIMKgIGJ1ZmZlcnMgYXQgc29tZSBwb2ludCwgbm8gbWF0dGVyIGhvdyBiaWcgdGhleSBhcmUs
IGFuZCB5b3UnbGwgYmUgDQpkZWFsaW5nIHdpdGggaW5zYW5lIGxldmVscyBvZiBsYXRlbmN5Lg0K
DQpUaGUgYXBwcm9hY2hlcyB0byBtYWtpbmcgeW91ciBob3N0ICJrZWVwIHVwIiBhcmUgY29tcGxp
Y2F0ZWQgYW5kIA0Kc29tZXRpbWVzIHN1YnRsZS4NCg0KDQpUaGlzIGRvY3VtZW50ICptaWdodCog
aGVscDoNCg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20vVVNSUF9Ib3N0X1BlcmZvcm1hbmNlX1R1bmlu
Z19UaXBzX2FuZF9Ucmlja3MNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
