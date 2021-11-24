Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9723845C877
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 16:18:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54173384192
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 10:18:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BUI0La0v";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id BDE80383D97
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 10:17:24 -0500 (EST)
Received: by mail-qt1-f182.google.com with SMTP id l8so2920726qtk.6
        for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 07:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=QQdPw0AteRPvKoX6j18tH+Ootj3pyxjBbuqXny4IJDA=;
        b=BUI0La0vYwQez3dMyP4EEjObX/+k4+vg7GOgoEWyGv0W4T9VKBsfW3ZPh0gpJs3PnB
         8+qd8OolsJIiL/Ii5SwBAXXO/yP0Oy0FF5ilfTn+Ze8pYqikYUObOOQjICdUEWJC1Xpw
         MDNviLMtWbX5W4f4GFy0oKoJ0DTE6XMctCJ47piCw32Z013a4EY5DIWvmBwCXwWctEVl
         AqeG1bvvjKxo1RRh6uqd/2qLVE9Z2zak7oxVHeI/E9D+yC5lsh8SfPsv/xUQ0C9h0vYw
         DWom+e0+2bp5Q9pJyMbtgyU12votbYCvunWmUQzlZuAHqyRwBXb5hEuj7BDhmUv+DGW8
         L0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QQdPw0AteRPvKoX6j18tH+Ootj3pyxjBbuqXny4IJDA=;
        b=tKymfQSvdq3W8cBRJkInu/U/Xde6ZjZDi7deZt69FJanONnT4f9taVoxi320QdnKqg
         TPPoRQnQRq2IlFYxzAOK54Y0ytQtfAvG7Q3IOn7KRfOV0wq5J2lv9mN7soqt5KINpM10
         8Eh5qcfcMIP8SkE7hZS4iEVvpRd8RhWa6ULh32Cuf5IL40xV9XYu+92Fcz1T3Q9OMTTp
         ji5GJzuJxhpf+2QFLfJDkFwdAQ/a1e2qGRLE9k3o5qO4E2h0Xsjq8KDfRDhphNtIkyXy
         lOju9oZxlTF3yMT1JCmkhGghoIoj2Qt3d8MUY4dKkWvK/r0rByhGF0zG/dgyLALdixbj
         XE4w==
X-Gm-Message-State: AOAM5333gALTDw0YTXdMG6em7GL6VB3g+d26Bwk4snRW42H/7duFkKdU
	hOh8hUGD4p++0a8IFf+J2wxlt0gDqW4=
X-Google-Smtp-Source: ABdhPJyLoGwftt3H+zS3dA9GoGEwtgtVzEqBOHBLIl9mcdU2f5VZ2ZsqGQfbSmoilXS7dMk1AmP2ng==
X-Received: by 2002:a05:622a:144:: with SMTP id v4mr8460661qtw.191.1637767044069;
        Wed, 24 Nov 2021 07:17:24 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id 8sm45094qtz.28.2021.11.24.07.17.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 07:17:23 -0800 (PST)
Message-ID: <e9181afd-84c5-1871-05fa-b3c45f04da5d@gmail.com>
Date: Wed, 24 Nov 2021 10:17:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU@lists.ettus.com>
Message-ID-Hash: VI4CULNW2CDRGMBAJHDUJUUNKYLDIS2V
X-Message-ID-Hash: VI4CULNW2CDRGMBAJHDUJUUNKYLDIS2V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VI4CULNW2CDRGMBAJHDUJUUNKYLDIS2V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0yNCAwODowOCwgZW1hbnVlbGUudG9sb21laUBpbnRlY3MuaXQgd3JvdGU6DQo+
DQo+IEhpIFJvYiwNCj4NCj4geWVzIGl0IHNlZW1zIHRoYXQgdGhlIGVycm9yIGlzIGNhdXNlZCBi
eSBhbiBpbmNvcnJlY3QgdXNlIG9mIHRoZSANCj4gc2V0X3RpbWVfbm93KCkgY29tbWFuZC4gRm9y
IG15IGFwcGxpY2F0aW9uIEkgbmVlZCB0byBzeW5jaHJvbml6ZSB0aGUgDQo+IG11bHRpX3VzcnAg
dGltZSB3aXRoIHRoZSBzeXN0ZW0gdGltZSBhbmQgaXNzdWUgdGhlIGNvbW1hbmQgd2l0aCBhIA0K
PiBkZWxheSBvZiBsZXNzIHRoYW4gMXMuDQo+DQo+IFRoZSBlcnJvciBkb2VzIG5vdCBvY2N1ciB3
aGVuIEkgcmVzZXQgdGhlIG11bHRpX3VzcnAgdGltZSB3aXRoIGNvbW1hbmQgDQo+ICdtX011bHRp
VXNycC0+c2V0X3RpbWVfbm93KHVoZDo6dGltZV9zcGVjX3QoMC4wKSknIGluc3RlYWQgb2Ygc2V0
dGluZyANCj4gaXQgdG8gdGhlIHN5c3RlbSB0aW1lLg0KPg0KPiBJIG1vdmVkIHRoZSBnZXRfdGlt
ZV9ub3coKSBhZnRlciB0aGUgZmlyc3Qgc2V0IG9mIHR1bmUgY29tbWFuZHMgYW5kIA0KPiB0cmll
ZCBhIGRlbGF5IG9mIHVwIHRvIDNzIGJldHdlZW4gc2V0X3RpbWVfbm93KCkgYW5kIGdldF90aW1l
X25vdygpIA0KPiBmdW5jdGlvbiBidXQgdGhlIGVycm9yIHN0aWxsIG9jY3VycyAoYnkgdGhlIHdh
eSBpdCBmb3JjZXMgbWUgdG8gaGFyZCANCj4gcmVzZXQgdGhlIHgzMDApLg0KPg0KPiBJIGRpZCBz
ZXZlcmFsIHRlc3RzIGFuZCBkaXNjb3ZlcmVkIHRoZSBmb2xsb3dpbmcgdHdvIHRoaW5nczoNCj4N
Cj4gMS4gVGhlIG9ubHkgd2F5IHRvIHByZXZlbnQgdGhlIGVycm9yIGZyb20gb2NjdXJyaW5nIGlz
IHRvIHJlc2V0IHRoZSANCj4gdGltZSBvZiB0aGUgbXVsdGlfdXNycCB3aXRoIHRoZSBjb21tYW5k
IA0KPiAnbV9NdWx0aVVzcnAtPnNldF90aW1lX25vdyh1aGQ6OnRpbWVfc3BlY190KDAuMCkpJyBh
dCBlYWNoIGNhbGwgb2YgdGhlIA0KPiBSZWNlaXZlU2FtcGxlc0J1cnN0IGZ1bmN0aW9uIG9mIHRo
ZSBzbmlwcGV0IGF0dGFjaGVkIGluIHRoZSBmaXJzdCANCj4gcG9zdCwgYnV0IHRoaXMgY2F1c2Vz
IGEgcGhhc2Ugc2hpZnQgb2YgdGhlIGNoYW5uZWxzLg0KPg0KPiAyLiBUaGUgb25seSB3YXkgdG8g
aGF2ZSB0aGUgY2hhbm5lbHMgcGhhc2VkIGlzIG5vdCB0byBjYWxsIA0KPiAnbV9NdWx0aVVzcnAt
PnNldF90aW1lX25vdyh1aGQ6OnRpbWVfc3BlY190KDAuMCkpJywgYnV0IHRoaXMgY2F1c2VzIA0K
PiB0aGUgYWJvdmUgZXJyb3IuDQo+DQo+IFN1cHBvc2luZyB3ZSBjYW4gcmVsYXggdGhlIHN5bmNo
cm9uaXphdGlvbiBjb25zdHJhaW50IHdpdGggdGhlIHN5c3RlbSANCj4gdGltZSwgaG93IGlzIGl0
IHBvc3NpYmxlIHRoYXQgdGhlIGVycm9yIG9jY3VycyB3aGVuIGluc2VydGluZyBzdWNoIA0KPiBo
aWdoIGRlbGF5cz8NCj4NCj4gVGhhbmsgeW91IGluIGFkdmFuY2UuDQo+DQo+IEVtYW51ZWxlIFRv
bG9tZWkNCj4NCj4NCkluIHRoZSBzbmlwcGV0IHlvdSBzaGFyZWQsIHlvdSBkbyBhDQoNCnVoZDo6
dGltZV9zcGVjX3QgdXNycF90aW1lID0gbV9NdWx0aVVzcnAtPmdldF90aW1lX25vdygpOw0KDQpU
aGVuIGRvIGEgYnVuY2ggb2YgdHVuZXMsIFRIRU46DQoNCm1fTXVsdGlVc3JwLT5zZXRfY29tbWFu
ZF90aW1lKHVzcnBfdGltZSArIHVoZDo6dGltZV9zcGVjX3QoMC4wMSkpOw0KDQoNCkJ5IHRoZSB0
aW1lIHRob3NlIHR1bmVzIGFyZSBjb21wbGV0ZSwgInVzcnBfdGltZSIgd2lsbCBiZSBzb21ld2hh
dCANCiJzdGFsZSIuwqDCoCBTbyBJIHdvdWxkIHB1dCBhbm90aGVyIGNhbGwgdG8gZ2V0X3RpbWVf
bm93KCkgdG8gInJlZnJlc2giIA0KdXNycF90aW1lIGp1c3QgYmVmb3JlIHlvdQ0KIMKgIHNldCB0
aGUgY29tbWFuZCB0aW1lLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
