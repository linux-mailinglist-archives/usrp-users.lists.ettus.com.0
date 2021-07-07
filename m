Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 617C43BEAA9
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 17:27:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97069384279
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 11:27:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="frLyCQ5f";
	dkim-atps=neutral
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id F20F0385005
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 11:26:37 -0400 (EDT)
Received: by mail-ej1-f43.google.com with SMTP id b2so3888929ejg.8
        for <usrp-users@lists.ettus.com>; Wed, 07 Jul 2021 08:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=gcnaQqXEhx/ZTYE3/UahJgJZFk950Jfl35Jf7a+KiYw=;
        b=frLyCQ5fV68sFzz8kfyH8MVhx1v0a6lh/66zuYlIQ+F62TEu4JhBQPKeWJy4KH4Xqc
         e3hYoaCStLPHdmFtUeGzb2cmY3iypG4GaEApqjm7e1XA0gyZ/hudFYWVjHPPGel2S0BL
         e/CPI4LVFcJM82vJpq6GMugfPbfG+T2aVFZPRohIph0aLJmIjfFLrVXtHDYPtu3qhMqD
         WiQb0iYRN+n9zh3MI9K5YhCpMDFTx+/ZIzeZ7t0UQ+b3PSkb9Oxnr9+mOcZOCmo0eLhM
         RjRAaDC3utqSVgqIkwO98Cc51/2V3Ld6mtRjR87/qDwmptCFD1Wiad1olXhkDxxOh7VG
         jQng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=gcnaQqXEhx/ZTYE3/UahJgJZFk950Jfl35Jf7a+KiYw=;
        b=B7hCMD1YpR3NxcwguLUsKOiNTk3v18SIdSAD+WwLyndxpE7mcuI0X1ljjKeR7p+ZGi
         ei5+YU1O/VnBLBUx42unz2Jrl1sErpttwxeHjnnih9eKXWcRpSd62tgU62Fb2GpoWxcc
         3iYmnqYKAQbJa7EPT5hJZswaqDL8LOSri9UhXEoitqF/bxlo1FpUsNc3R1+v822eQX9R
         le8NQU5rKBj3UsZzzuW+Pw91o/YZSZgP9r4yB5Z5I54UR15R/9WUC1zFeYAooW2nYo3X
         MetAUEDVUExBELicbKZAVDTPvmzlqa83so8IgfZLXRkm/OC4XpsO4JYELWOHXIaf8Ash
         oEEA==
X-Gm-Message-State: AOAM532JS47Eognz3JsLVXfhDpj8v4bZY3kIhIUT+6YoVkYr0q0rUdnW
	mWALK3CLRiwG8PjyV10evji2HtjmPg/pYA==
X-Google-Smtp-Source: ABdhPJxp1NtaGh8vthA0YqSojZH0LbKKDjPknlK3nzibNOazI6auxclL4AqHIPtwXTMFl5HPGAlkoQ==
X-Received: by 2002:a17:907:94cb:: with SMTP id dn11mr15934636ejc.420.1625671596827;
        Wed, 07 Jul 2021 08:26:36 -0700 (PDT)
Received: from [172.18.231.146] ([141.20.217.194])
        by smtp.gmail.com with ESMTPSA id cq6sm7118528edb.1.2021.07.07.08.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 08:26:36 -0700 (PDT)
To: Michael Dickens <michael.dickens@ettus.com>
References: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
 <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com>
 <ca7130e2-3932-e6a0-faab-c281bb14ce24@gmail.com>
 <CAGNhwTNQq3rU-eXtTK_cKq=5-BeLzZ6VvO7_nz9pWSmfQC+deA@mail.gmail.com>
From: Vladica Sark <vladicasark@gmail.com>
Message-ID: <afdd2477-d728-376b-647f-9c45b0f03c67@gmail.com>
Date: Wed, 7 Jul 2021 17:26:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGNhwTNQq3rU-eXtTK_cKq=5-BeLzZ6VvO7_nz9pWSmfQC+deA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: CP337GVVYJGTFLM6T3GENGXEXREH3OQ7
X-Message-ID-Hash: CP337GVVYJGTFLM6T3GENGXEXREH3OQ7
X-MailFrom: vladicasark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CP337GVVYJGTFLM6T3GENGXEXREH3OQ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWljaGFlbCwNCg0KSSBvYnRhaW5lZCB0aGUgbmVjZXNzYXJ5IFNGUCsgb3B0aWNhbCBhZGFw
dGVycyBhbmQgbm93IEkgYW0gdHJ5aW5nIHRvIA0KcHV0IHVoZCAzLjEzLjEuMCBvbiB0aGUgTjMy
MXMgaW4gb3JkZXIgdG8gdXNlIHRoZSBXUiBzeW5jaHJvbml6YXRpb24uIA0KVW5mb3J0dW5hdGVs
eSwgd2hlbiBJIHVwZGF0ZSB0aGUgc2QgY2FyZCBpbWFnZSB3aXRoIDMuMTMuMS4wIHRoZSBOMzIx
IA0KYm9vdHMgYnV0IHRoZSBTRlAwIGFuZCBTRlAxIGRvIG5vdCBnbyB1cC4gV2hlbiBJIHRyeSB0
byBydW4gDQp1aGRfZmluZF9kZXZpY2VzLCBvbiBhIHRlcm1pbmFsIHVzaW5nIHRoZSBVU0IgcG9y
dCBpdCBzYXlzIG5vIFVIRCANCmRldmljZXMgYXJlIGZvdW5kLg0KDQpJIGJlbGlldmUgdGhhdCB0
aGUgcmlnaHQgRlBHQSBpbWFnZSBzaG91bGQgYmUgcHV0IG9uIHRoZSBGUEdBLCBidXQgdGhlIA0K
d2F5cyBkZXNjcmliZWQgaW4gS25vd2xlZGdlYmFzZSBhcmUgbm90IHdvcmtpbmcuDQoNCklzIHRo
ZXJlIGEgd2F5IHRvIHB1dCB0aGUgdmVyc2lvbiAzLjEzLjEuMCBvbiB0aGUgTjMyMT8gSSBoYXZl
IHRyaWVkIA0KdmVyc2lvbiA0LjAuMC4wIGFuZCBpdCBpcyB3b3JraW5nIGZpbmUsIGJ1dCBXUiBp
cyBicm9rZW4uDQoNCkJSLA0KVmxhZGljYQ0KDQoNCk9uIDIyLjA2LjIxIDIxOjMxLCBNaWNoYWVs
IERpY2tlbnMgd3JvdGU6DQo+IEknbSB1c2luZyBwcmltYXJpbHkgRlMgYWRhcHRlcnMsIGNhYmxl
cyAoc2luZ2xlIGFuZCBtdWx0aSBtb2RlKSwgYW5kIA0KPiBmaWJlciBjb25uZWN0b3JzICh0byBh
bGxvdyBtdWx0aXBsZXhpbmcgbGFuZXMpLiBUaGUgYWRhcHRlcnMgSSBib3VnaHQgDQo+IHdlcmUg
ImdlbmVyaWMiIGFuZCBoYWQgdG8gYmUgdHdlYWtlZCB1c2luZyBhbiBGUyBCT1ggdG8gYmUgZnVs
bHkgDQo+IGNvbXBhdGlibGUgd2l0aCBJbnRlbCBvciBNZWxsYW5veCBOSUNzLiBUaGlzIHR3ZWFr
aW5nIHNlZW1zIHRvIGhhdmUgDQo+IGhlbHBlZCBhIGxvdCB3aXRoIHRoZSAxMDAgR2IgaW50ZXJm
YWNlIChFODEwKTsgdGhlIDEwIEdiIGludGVyZmFjZXMgZG8gDQo+IG5vdCBzaG93IG11Y2ggYmVu
ZWZpdCB0byBiZSBtYW51ZmFjdHVyZXIgc3BlY2lmaWMgLS0gdGhvdWdowqBJJ20gc3VyZSANCj4g
aXQgZG9lc24ndCBodXJ0ISBJIGhhdmUgbm90IHRyaWVkIGEgbXVsdGktbW9kZSB0byBzaW5nbGUg
bW9kZSBzcGxpdHRlciANCj4gLyBqb2luZXIsIGJ1dCBJJ2Qgc3VwcG9zZSB0aGV5IGRvIGV4aXN0
ICYgaWYgYW55Ym9keSBoZXJlIGhhcyBoYWQgDQo+IGV4cGVyaWVuY2UgdGhhdCB3b3VsZCBiZSB1
c2VmdWwgdG8gaGVhciBhYm91dCEgSSBob3BlIHRoaXMgaXMgdXNlZnVsISANCj4gLSBNTEQNCj4N
Cj4NCj4gT24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMTA6MDUgQU0gVmxhZGljYSBTYXJrIDx2bGFk
aWNhc2Fya0BnbWFpbC5jb20gDQo+IDxtYWlsdG86dmxhZGljYXNhcmtAZ21haWwuY29tPj4gd3Jv
dGU6DQo+DQo+ICAgICBIaSBNaWNoYWVsLA0KPg0KPiAgICAgVGhhbmtzIGZvciB0aGUgYW5zd2Vy
LiBGb3Igbm93IGZvciB0aGUgZGF0YSBJIGFtIHVzaW5nIERBQyBjYWJsZXMsDQo+ICAgICBidXQN
Cj4gICAgIHdlIHdvdWxkIG5lZWQgbGFyZ2VyIGRpc3RhbmNlcywgaS5lLiA1MCsgbWV0ZXJzLCBh
bmQgZm9yIHRoaXMgSSB3b3VsZA0KPiAgICAgbmVlZCBmaWJlcnMgZm9yIGJvdGggV1IgYW5kIGRh
dGEuDQo+DQo+ICAgICBJcyB0aGVyZSBhbHNvIHNvbWUgb3B0aWNhbCBtdWx0aXBsZXhlciBmb3Ig
dGhlc2Ugd2F2ZWxlbmd0aHMsIGluDQo+ICAgICBvcmRlcg0KPiAgICAgdG8gdXNlIGEgc2ltcGxl
eCBmaWJlciwgZm9yIGJvdGggV1IgYW5kIGRhdGE/DQo+DQo+ICAgICBCUiwNCj4gICAgIFZsYWRp
Y2ENCj4NCj4gICAgIE9uIDIyLjA2LjIxIDE1OjQxLCBNaWNoYWVsIERpY2tlbnMgd3JvdGU6DQo+
ICAgICA+IEhpwqBWbGFkaWNhIC0gSSd2ZSB0ZXN0ZWQgYSB2YXJpZXR5IG9mIGZpYmVyIGFkYXB0
ZXJzIGFuZCBjYWJsZXMNCj4gICAgIHdpdGgNCj4gICAgID4gbm8gaXNzdWVzIChlLmcuLCBaeVhF
TCwgRlMsIEF4Y2VuKS4gVGhlIHByaW1hcnkga2V5cyBhcmUgdG8gbWFrZQ0KPiAgICAgc3VyZQ0K
PiAgICAgPiB0aGUgdmFyaW91cyByZWxhdGVkIHBhcmFtZXRlcnMgbWF0Y2ggdXAgYmV0d2VlbiB0
aGUgYWRhcHRlcnMgYW5kDQo+ICAgICA+IGNhYmxlcyBhbmQgZGV2aWNlcy4gRm9yIGV4YW1wbGU6
IElmIHRoZSBhZGFwdGVyIGlzIDE0OTAvMTMxMCwNCj4gICAgIHRoZW4geW91DQo+ICAgICA+IHdh
bnQgdG8gbWFrZSBzdXJlIHRoZSBjYWJsZSBpcyBmb3IgdGhlIHNhbWUgd2F2ZWxlbmd0aHMuIFNh
bWUNCj4gICAgIGZvciB0aGUNCj4gICAgID4gZmliZXIgcG9saXNoIGFuZCBvdGhlciBwYXJhbWV0
ZXJzwqAoc2luZ2xlIC8gZHVhbCBmaWJlciA7IC4gU29tZSBhcmUNCj4gICAgID4gZWFzaWVyIHRo
YW4gb3RoZXJzLCBub25lIG9mIHRoaXMgaXMgdG9vIGRpZmZpY3VsdCBsdWNraWx5IQ0KPiAgICAg
Pg0KPiAgICAgPiBGb3Igc2hvcnQgZGlzdGFuY2VzLCBhIERBQyBjYWJsZSB3aWxsIHdvcmsgZm9y
IGFsbCBvZiB0aGUgTjMyMC9OMzIxDQo+ICAgICA+IFNGUCBpbnRlcmZhY2VzLg0KPiAgICAgPg0K
PiAgICAgPiBBdCB0aGUgbW9tZW50LCBXUiBzdXBwb3J0IGlzIGJlaW5nIGZpeGVkIGZvciBVSEQg
My4xNC4wLjAgdG8NCj4gICAgIGN1cnJlbnQuDQo+ICAgICA+IElmIHlvdSAtcmVxdWlyZS0gV1Ig
c3VwcG9ydCAtcmlnaHQgbm93LSB5b3UgY2FuIHVzZSBVSEQgMy4xMy4xLjANCj4gICAgIHdoaWxl
DQo+ICAgICA+IHdlJ3JlIHdvcmtpbmcgb3V0IGhvdyB0byBmaXggV1IgZm9yIG5ld2VyIFVIRC4g
V2UgZXhwZWN0IHRoZSBmaXgNCj4gICAgIHRvIGJlDQo+ICAgICA+IGF2YWlsYWJsZSB0byBjdXN0
b21lcnMgc29tZXRpbWUgaW4gbWlkL2xhdGUtSnVseSAoMjAyMSk7IG9uY2UNCj4gICAgIHRoZSBm
aXgNCj4gICAgID4gaXMgZGV0ZXJtaW5lZCBhbmQgdmVyaWZpZWQgd2Ugd2lsbCBjb21taXQgaXQg
dG8gdGhlIHZhcmlvdXMNCj4gICAgIGJyYW5jaGVzDQo+ICAgICA+IG9mIHRoZSBVSEQgcmVwb3Np
dG9yeSwgYW5kIGl0IHdpbGwgYmUgYXZhaWxhYmxlIGluIFVIRCAtYWZ0ZXItIHRoZQ0KPiAgICAg
PiBmb3J0aGNvbWluZyA0LjHCoHJlbGVhc2UuIEl0IHdpbGwgYmUgYXZhaWxhYmxlIGluIHRoZSBw
dWJsaWMgVUhEDQo+ICAgICA+IHJlcG9zaXRvcnkgZm9yIGZvbGtzIHRvIHVzZSB0byBwYXRjaCBV
SEQgYmV0d2VlbiByZWxlYXNlcy4NCj4gICAgID4NCj4gICAgID4gSSBob3BlIHRoaXMgaXMgdXNl
ZnVsISAtIE1MRA0KPiAgICAgPg0KPiAgICAgPg0KPiAgICAgPiBPbiBUdWUsIEp1biAyMiwgMjAy
MSBhdCA2OjE5IEFNIFZsYWRpY2EgU2Fyaw0KPiAgICAgPHZsYWRpY2FzYXJrQGdtYWlsLmNvbSA8
bWFpbHRvOnZsYWRpY2FzYXJrQGdtYWlsLmNvbT4NCj4gICAgID4gPG1haWx0bzp2bGFkaWNhc2Fy
a0BnbWFpbC5jb20gPG1haWx0bzp2bGFkaWNhc2Fya0BnbWFpbC5jb20+Pj4NCj4gICAgIHdyb3Rl
Og0KPiAgICAgPg0KPiAgICAgPsKgIMKgIMKgRGVhciBhbGwsDQo+ICAgICA+DQo+ICAgICA+wqAg
wqAgwqBJIHdvdWxkIGxpa2UgdG8gdXNlIE4zMjEgd2l0aCBXUlMgMy8xOCB3aGljaCB1c2VzIG9w
dGljYWwNCj4gICAgIGNhYmxlcy4gSQ0KPiAgICAgPsKgIMKgIMKgd291bGQgbGlrZSB0byB1c2Ug
YWxzbyBmb3IgdGhlIDEwIEdiaXQgU0ZQMSBvcHRpY2FsIFNGUCsNCj4gICAgIHRyYW5zY2VpdmVy
Lg0KPiAgICAgPsKgIMKgIMKgRG8geW91IGhhdmUgc29tZSByZWNvbW1lbmRlZCBvcHRpY2FsIFNG
UCsgYWRhcHRlcnMsIGR1cGxleCBhbmQsDQo+ICAgICA+wqAgwqAgwqBwcmVmZXJhYmx5LCBzaW1w
bGV4Pw0KPiAgICAgPsKgIMKgIMKgVGhlIGlkZWEgaXMgdG8gdXNlIGEgZHVwbGV4IG1vbm9tb2Rl
IGZpYmVyLCBvbmUgZmliZXIgZm9yDQo+ICAgICB0aGUgMTAgR2JpdA0KPiAgICAgPsKgIMKgIMKg
ZGF0YSBhbmQgb25lIGZpYmVyIGZvciBXUlMgc3luY2hyb25pemF0aW9uLg0KPiAgICAgPsKgIMKg
IMKgVGhleSB3b3VsZCBiZSBjb25uZWN0ZWQgdG8gMTAgR2JpdCBzd2l0Y2ggb3IgUU5BUA0KPiAg
ICAgVGh1bmRlcmJvbHQgdG8gU0ZQKw0KPiAgICAgPsKgIMKgIMKgYWRhcHRlciwgc28gdGhleSBk
byBub3QgaGF2ZSB0byBiZSBJbnRlbC4NCj4gICAgID4NCj4gICAgID4NCj4gICAgID7CoCDCoCDC
oEJlc3QgcmVnYXJkcywNCj4gICAgID4NCj4gICAgID7CoCDCoCDCoFZsYWRpY2ENCj4gICAgID4N
Cj4gICAgID7CoCDCoCDCoF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+ICAgICA+wqAgwqAgwqBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiAgICAgPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4NCj4gICAgID7CoCDCoCDCoDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gICAgIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pg0KPiAgICAgPsKgIMKg
IMKgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0bw0KPiAgICAgdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCj4gICAgIDxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20+DQo+ICAgICA+wqAgwqAgwqA8bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQo+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Pj4NCj4gICAgID4NCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
