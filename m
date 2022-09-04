Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 888355AC38D
	for <lists+usrp-users@lfdr.de>; Sun,  4 Sep 2022 11:07:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED2D3385667
	for <lists+usrp-users@lfdr.de>; Sun,  4 Sep 2022 05:07:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662282455; bh=UggxLkrLE714EiX+JE7Al1fmW6JyA/IF+ujUkkUat2I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0lNu2U2zZYiKnko0KBS+CRJILwi+uwPZwzdMgWgGkl1HX8rZGM2x95e+bS9GjmA5Q
	 +lVySwc0Mr8p+lLqvROKbXO/IbDbi4J0bKQqUuoBomxkFUzVKV1VbCFJ/VWe+Rr+EU
	 cLH5GZBA13BlalAubnqQzFm8bnZM+2brBhHuAe79HJbN/UNsvOBv3NGcEwdUZNZ5wl
	 fMRJzaXQVk8UmVInhdXnm5FwG+uFhYoafMDMQVZWOmvU1YkJ5M4wMIweU98rux5b1U
	 3uYwIBW4H9QZ5sj/mR8srayWsU4VBHpuQwiLBmscfJbK2UGNwEF/nBnmFEAuKb75XH
	 xSpt9Al9vJs0w==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4660038565A
	for <usrp-users@lists.ettus.com>; Sun,  4 Sep 2022 05:06:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="lxpAuNkI";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 29so2820265edv.2
        for <usrp-users@lists.ettus.com>; Sun, 04 Sep 2022 02:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=0e7n2ROb6bP/CifDqUCYM5qDdsHmVEq8lhqbtC8XfEk=;
        b=lxpAuNkIfiZAchZSvG5P+d2KEMOhm3OwYBUVwM/19lYLEXlkclcmUJBc/MJQZUPQLU
         8kme44C/kukBvWddc+OdLTHkBIlLqu34n89IsOCDpvovPQhLWWnOyBXq9g6tA1jyaIE4
         GUz0V0v1W3P37cFC/fY2aL7dCUUCs+abLBHjTdJ3qC25kHq9dPoKxTfjHlYdmEvUOY4F
         Av/Vp/T/DFewTUtRzcI4JsqHurPH/UhODAro/+e1jo5jdDWnXVlTtkMH8mAsCReVy6mx
         rZzsFAHUwwpeOdQsgDrMKDXXpTbzGrHl/7ntLcOgMYc1e2twqroS4WGwvFSG+cyHjAcq
         ASJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=0e7n2ROb6bP/CifDqUCYM5qDdsHmVEq8lhqbtC8XfEk=;
        b=PpsJQav24JFUj1aeAdtPmchXwbGNSllBS/3taqprme3REY7yKdctpQ9JsWRKqnHwTs
         Qt/q7ItwQrjB6Bvy6sybiKp7kuaJBrV73s5GgQ/bWEvEZhy2q11zTq7TpBNVfLDe8yo0
         QSMHqlwex6kp8nLQa+1I91NCUywYyG04e2s0otgQFi/2JyTR6OlgF1ITtb7mirMpG5hq
         Cxe31XgIgrrj2MlHIFp1O6xjXLV65R5pwn+IOOyZyinaceOyLu55MU5YgEzaJkjQwQKH
         u9ZqgeU/Hmjrm99XA5GI0HkjXL+VB7F73fRP4QtgUJo7QHRS+2AbdK2fvNBJHoJfnv/V
         d20w==
X-Gm-Message-State: ACgBeo2LIlJNdNkoHbu/4j/c1rRKXuqI818zajbRZSsrfKNRifXb68/F
	OhTNiyQey+zliL0hGYK23t+zHHpkVFOsB1nv
X-Google-Smtp-Source: AA6agR7Efjy5vimu2NlA80UkeFRhs0cC0hgI7wLycVFOrtb64NViM1IHuh4rPJq+ZIOBhtVNZwgJDA==
X-Received: by 2002:a05:6402:268d:b0:43d:b9d0:9efc with SMTP id w13-20020a056402268d00b0043db9d09efcmr40210625edd.92.1662282400915;
        Sun, 04 Sep 2022 02:06:40 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3850:6900:5bc8:3cc3:e10b:748e? ([2001:9e8:3850:6900:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id op24-20020a170906bcf800b0073093eaf53esm3430166ejb.131.2022.09.04.02.06.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Sep 2022 02:06:40 -0700 (PDT)
Message-ID: <afb82e6a-2b2d-3657-097e-25dca75438c8@ettus.com>
Date: Sun, 4 Sep 2022 11:06:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR14MB41922A7E923337CFAF62D8DCCD7C9@MN2PR14MB4192.namprd14.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <MN2PR14MB41922A7E923337CFAF62D8DCCD7C9@MN2PR14MB4192.namprd14.prod.outlook.com>
Message-ID-Hash: OGMFVWAUN25GF3BS6XWKGVPX3R2OB4PE
X-Message-ID-Hash: OGMFVWAUN25GF3BS6XWKGVPX3R2OB4PE
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 operation temperature
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OGMFVWAUN25GF3BS6XWKGVPX3R2OB4PE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBYaW5namlhbiwNCg0KDQp0aGUgRXR0dXMgVVNSUCBYMzEwIGlzIG5vdCBjbGltYXRlIGNo
YW1iZXItcmF0ZWQgYXMgZmFyIGFzIEkga25vdy4NCg0KVGhlIE5JLVVTUlAgMjk0MCwgaG93ZXZl
ciwgaXMsIGFuZCB5b3UnbGwgbm90aWNlIHRoZSBoYXJkd2FyZSBpcyBpZGVudGljYWwsIGJ1dCBj
b21lcyB3aXRoIA0KbW9yZSBndWFyYW50ZWVzIChhbmQgYSBtYXRjaGluZyBwcmljZSB0YWcpOyAN
Cmh0dHBzOi8vd3d3Lm5pLmNvbS9kb2NzL2RlLURFL2J1bmRsZS91c3JwLTI5NDAtc2VyaS9wYWdl
L3NlcmkuaHRtbCBtaWdodCBiZSBvZiBpbnRlcmVzdC4NCg0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJj
dXMNCg0KDQpPbiAwNC4wOS4yMiAwNDoxOSwgWGluZ2ppYW4gQ2hlbiB3cm90ZToNCg0KPiBIaSB0
aGVyZSwNCj4gSGFzIGFueW9uZSBvcGVyYXRlZCBYMzEwIGF0IGFib3V0IDQ1IHRvIDUwIGRlZ3Jl
ZXMgZm9yIGxvbmctdGVybSB1c2FnZT/CoCBUaGUgWDMxMCBtYW51YWwgDQo+IHdlYnNpdGUgc3Rh
dGVzIHRoYXQgdGhlIG9wZXJhdGluZyB0ZW1wZXJhdHVyZSBpcyAyNSBkZWdyZWVzIEMuIElzIHRo
ZXJlIGFueSBzYWZlIHJhbmdlIA0KPiBmb3IgWDMxMCB0ZXN0ZWQgYnkgdGVzdCBlbmdpbmVlcnMg
b3IgZXhwZXJpbWVudHM/IFRoYW5rIHlvdS4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
