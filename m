Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC8F471C64
	for <lists+usrp-users@lfdr.de>; Sun, 12 Dec 2021 19:58:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E24AC384EBC
	for <lists+usrp-users@lfdr.de>; Sun, 12 Dec 2021 13:58:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kgi3MkrN";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 1724C384E69
	for <usrp-users@lists.ettus.com>; Sun, 12 Dec 2021 13:57:36 -0500 (EST)
Received: by mail-qv1-f45.google.com with SMTP id j9so12648566qvm.10
        for <usrp-users@lists.ettus.com>; Sun, 12 Dec 2021 10:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=9EHju5xpAvl66sC7ui0QCu6FaLjvdRy/KzDhh94VbK0=;
        b=Kgi3MkrN3ZOnC0qwRgYWavAfOCQxM7JCO9qzFaBlsXf2tApuQMHwgPAyVpOlbw5Lcj
         crFv0GnAhePjrEaws4rVp3D9T7lz56toWCYhhT6mwB43mpqcxOKU7uOtszgQ4ab0h3fu
         nRpAnljIP8StEN+tWyn4v9KaE8ONCGX+rj50Nl2KU5rRTIdDJdskf5ZCZsl1z3yaKF5c
         ouqUgcLSjo2ITRJV8sCvK6RV64wgcl4QlX4o4UVKvR8Ju+FvLwSrrPTd70nruGUXmq0A
         lq83RwxDlpjFwk6z8HI374AdgP9tQdtkcACS1ahWc6QOGqb1U8atHyasXCzlLm+ZRfXB
         v1UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9EHju5xpAvl66sC7ui0QCu6FaLjvdRy/KzDhh94VbK0=;
        b=W5STzbrwh1AaPod++km+98OLMB9yBhsRqyyikm8pYSGkKp/cWvFovkqk3FxvBsuPEF
         ZCBeUQsSTJULOSkaZOWz4rqWouUjIBQRsfP1p1xnFhjN3l4MnBD9fexgYlpoub5eb508
         7TSpjsrEYXjNKCrhtUIkrjnoQYQl7qvlJTLW0SwovBRWCY2O1eYqWd0+mKzlfsp14Gsx
         d2/7AFGIZWxwi5wuRm0B+Cg91d4/1XQoVd+urMYg6EWw6AgkJFxrqoGmyodT21ZEDRzf
         FmNQ2rmBsJJrAc9rgBwLdG/76wzbrsJYzaaG8ZNJWojHYWKAO03wjvCfUXCoyjqxpF29
         5X5g==
X-Gm-Message-State: AOAM532dBwJu/7h3+6GmvhuWhPT5ZpICnpV2ENOHyH6aX6jtY4n9NwhB
	oM4mkWTwt5uoL4+RBcMTTMZronGwnzU=
X-Google-Smtp-Source: ABdhPJzdrLAf6TTPpbYDkE4olxAkI4TwSdqp7/zp0l8ydPGYoLoTX1bdeMd3/xUQ9fEWQrsWcg0UXQ==
X-Received: by 2002:ad4:5bac:: with SMTP id 12mr39144512qvq.63.1639335456139;
        Sun, 12 Dec 2021 10:57:36 -0800 (PST)
Received: from [192.168.2.220] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id 143sm4818225qkg.87.2021.12.12.10.57.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Dec 2021 10:57:35 -0800 (PST)
Message-ID: <7e7a88b0-e6f1-7554-af6e-bdcf71119d06@gmail.com>
Date: Sun, 12 Dec 2021 13:57:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAL0m=NZY2QvKHiiokbgR=2Xgj8YL+onxWJGmyEr3sVXar=z6cw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL0m=NZY2QvKHiiokbgR=2Xgj8YL+onxWJGmyEr3sVXar=z6cw@mail.gmail.com>
Message-ID-Hash: 54BAMRKBPPQEAOK6FN2B46BK5KJDMDVJ
X-Message-ID-Hash: 54BAMRKBPPQEAOK6FN2B46BK5KJDMDVJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 - unexpected DC offset and harmonics
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/54BAMRKBPPQEAOK6FN2B46BK5KJDMDVJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0xMiAxMTo1NywgWmVuZywgSHVhY2hlbmcgd3JvdGU6DQo+IEhlbGxvLA0KPg0K
PiBJIGFtIHVzaW5nIE4zMTAgdG8gb2JzZXJ2ZSBpdHMgcmVjZWl2ZWQgc2lnbmFsIGluIGl0cyBm
b3VyIGNoYW5uZWxzLiBJIA0KPiBvYnNlcnZlZCBzb21lIHVuZXhwZWN0ZWQgREMgb2Zmc2V0IGFu
ZCBoYXJtb25pY3MgYXMgc2hvd24gaW4gdGhlIA0KPiBhdHRhY2hlZCBmaWd1cmUuIEl0IGhhcHBl
bmVkIG9ubHkgYXQgY2hhbm5lbHMgUkYwICYgUkYyOyB0aGUgc2lnbmFsIA0KPiBmcm9tIGNoYW5u
ZWxzIFJGMSAmIFJGMyBsb29rcyBub3JtYWwuIEkgZGlzY29ubmVjdGVkIHRoZSBhbnRlbm5hcyBi
dXQgDQo+IHRoZSBEQyBhbmQgaGFybW9uaWNzIGFyZSBzdGlsbCB0aGVyZS4gQW5kIHRoZXkgd291
bGQgbm90IGNoYW5nZSBpZiBJIA0KPiBjaGFuZ2UgdGhlIGNlbnRlciBmcmVxdWVuY3ksIHNhbXBs
aW5nIHJhdGUsIG9yIFJGIGdhaW4uDQo+DQo+IFRoZSBHTlUgUkFESU8gYW5kIFVIRCB2ZXJzaW9u
cyBhcmUgYmVsb3c6DQo+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4w
OyBCb29zdF8xMDY1MDE7IA0KPiBVSERfMy4xNS4wLkhFQUQtMC1nYWVhMGUyZGUNCj4NCj4gSSBh
bHNvIGF0dGFjaGVkIG15IHB5dGhvbiBzY3JpcHQgY29kZSBpbiBjYXNlIGl0IHdvdWxkIGJlIHVz
ZWZ1bCBmb3IgDQo+IHlvdSB0byBpZGVudGlmeSB0aGUgcHJvYmxlbS4NCj4NCj4gQW55IHN1Z2dl
c3Rpb25zPyBUaGFuayB5b3XCoCBpbiBhZHZhbmNlIQ0KPg0KPiBIdWENCj4NCldoYXQgZ2FpbiBz
ZXR0aW5ncyBoYXZlIHlvdSB1c2VkP8KgIHRoZSBOMzEwIGhhcyBhYm91dCA3MGRCIG9mIGdhaW4g
DQpyYW5nZSwgYW5kLCByZWFsaXN0aWNhbGx5LCBvbmx5IHRoZSB1cHBlciBwYXJ0cyBvZiB0aGF0
IHJhbmdlIGFyZSByZWFsbHkgDQoidXNlZnVsIi7CoCBXaXRob3V0IGFkZXF1YXRlIGdhaW4gYWhl
YWQgb2YgdGhlDQogwqAgbWl4ZXJzIGFuZCBBRENzLCB5b3UnbGwgbW9zdGx5IGJlIHNlZWluZyBp
bnRlcm5hbCBzcHVycyBhbmQgdGhlIGxpa2UuDQoNClRyeSBhbiBSRiBnYWluIHNldHRpbmcgdXAg
bmVhciB0aGUgdG9wIG9mIHRoZSByYW5nZS0tNjBkQi7CoCBXaGF0IGtpbmQgb2YgDQphbnRlbm5h
IGFyZSB5b3UgdXNpbmc/wqAgV2l0aCBvciB3aXRob3V0IGFuIExOQT8NCg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
