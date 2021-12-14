Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88618474B37
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 19:52:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4289385282
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 13:52:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="lC3nZD0q";
	dkim-atps=neutral
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 863FE3848FA
	for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 13:51:13 -0500 (EST)
Received: by mail-wr1-f52.google.com with SMTP id u17so34068098wrt.3
        for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 10:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=i/onkJjGs93l6drtAu6XCNP6dcs0CLnes5hY+BWbFJI=;
        b=lC3nZD0qSOlEf/edXwf5DczAPQvG7ZSOf0qq00wka0D8r1lcLdsZ5M9pzHQGeR9xBH
         LxEj2k/HFUgr9Et+Q1/e+6SKs6QOXy/Gfsnyvh5w3PUK1GrHayIdR5lRBbTG8LJFJlRM
         JNcyzbZ3U2YYp80NOGgmnZz8bpQxFW2kA/7IzLOJzvtpkBynZdxVpRJM4QDDt8tAMcD+
         zKrrEYbL6Re0r2mdYEnzojqz+QFGS5TWEA18AMzDtrPA/ad/U459QBA9V9ITjMg8gzoX
         eX35yv5jAJ/S51SqAgJW/FCJciioTkQEoxscPGvirUt2fkGkw5GiKmCpBB0mbiIhK4PI
         nWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=i/onkJjGs93l6drtAu6XCNP6dcs0CLnes5hY+BWbFJI=;
        b=VOrqQo0oYoTkk5w+huLIPYQ8sHOC9//0DXlt29fJ/MSTPMEV0zE1i+7LciZbABn1BV
         ucaKRzqO4eteBLvED1vBJ7GqLEnAWDPlkIrWr+4skMJlGi7NOUB4pUhmEpYe7H07dSxB
         UdnqVq1q/iUqD3FcZp5he7v7F8vwjo/ux3GyiHOXv9N6epeyYaY4jwVIw1/4fhMwfpB8
         /hfgKl2yFpSTObJWqaDj5EIks1viufqrb1mIkQXHdD5mTjnGLkD8phfyCYKyVC0OWzGP
         KS59+rL/ZVQ+CRRz0nz8WOzwWygZ1Bvlt/JWh+2iZ+lt9tdXZNIZvslor8rH8PHbtpNR
         vj7w==
X-Gm-Message-State: AOAM533QzL8hLBCKN5Y0QdbIn1hu8OefzS+TrlSEgHee/eoSNHekj6Ao
	9NUPnwYubzqZNtn5BmNPW5Z7bGuJflSqW7cx
X-Google-Smtp-Source: ABdhPJySJwqN87YGmQX6WhUe06wxKLFT136/RbIXCrQuQyGY1XQ2V51eBmFqNJAtKadGL5PWfIK63Q==
X-Received: by 2002:adf:e8d1:: with SMTP id k17mr820621wrn.465.1639507872350;
        Tue, 14 Dec 2021 10:51:12 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-58.hsi.kabel-badenwuerttemberg.de. [46.223.163.58])
        by smtp.gmail.com with ESMTPSA id i15sm3628231wmq.18.2021.12.14.10.51.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 10:51:11 -0800 (PST)
Message-ID: <b29847df-cd74-30fe-82be-e9bd5a3c2cfa@ettus.com>
Date: Tue, 14 Dec 2021 19:51:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com, Temir Karakurum <temirkarakurum@gmail.com>
References: <CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmail.com>
 <bc67749c-2f81-9c2a-7498-6d4fe29e64a6@gmail.com>
 <CANP_axKSJZokaZmg=22Zcqi0Q0myAPM2p=z-csgqgChxmfB1Mg@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CANP_axKSJZokaZmg=22Zcqi0Q0myAPM2p=z-csgqgChxmfB1Mg@mail.gmail.com>
Message-ID-Hash: 7MWGHTYIFYLVHWTVMTZEAURAZS3U3UYL
X-Message-ID-Hash: 7MWGHTYIFYLVHWTVMTZEAURAZS3U3UYL
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bias power on E312's RX ports (was: USRP and GPS antennas)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7MWGHTYIFYLVHWTVMTZEAURAZS3U3UYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBUZW1pciwNCg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vc2NoZW1hdGljcy9lMzEwLyAs
IHRoZSBkYXVnaHRlcmJvYXJkIHNjaGVtYXRpYyAoZTMxMF9kYi5wZGYpLCBwYWdlIA0KNzogbm8s
IHRoZXJlJ3Mgbm8gYmlhc2luZyBvbiB0aGUgUkYgcG9ydHMuDQoNCkJlc3QgcmVnYXJkcywNCg0K
TWFyY3VzDQoNCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3ZpZGVkIEFzIElz
LiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhIHByb2R1Y3QsIGZvciB1
c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1c2UgaW4gaGF6
YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVzZSBvZiB0aGUg
Q29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3QgdG8gdGVybXMgb2YgdGhlIGxpY2Vuc2Vz
IHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlzIHVzZWQuIFN0
YW5kYXJkIGxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0IGh0dHBzOi8v
d3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLg0KDQpOSSB3aWxsIG9ubHkgcGVy
Zm9ybSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9uIHRo
YXQgdGhlIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRoZSBw
cm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQs
IG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNpZ25hdGlvbiBp
biB0aGUgbGljZW5zZSByZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0byBQ
YXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMgYW5kIChpaSkg
c3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9uLiAgSWYgb3Vy
IHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5
IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRo
ZSBVLlMuIENvbW1lcmNlIERlcGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlvbiBtYXkgcHJv
Y2VlZCBmdXJ0aGVyLg0KDQpPbiAxNC4xMi4yMSAxODoyMiwgVGVtaXIgS2FyYWt1cnVtIHdyb3Rl
Og0KPiBIaSBNYXJjdXMsDQo+DQo+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIHJlcGx5ISBJcyB0aGUg
Ymlhcy10ZWUgYXZhaWxhYmxlIG9ubHkgZm9yIHRoZSBHUFMgcG9ydD8NCj4gQ2FuIHlvdSBzaW1p
bGFybHkgcHJvdmlkZSBEQyBwb3dlciB0byBhbiBMTkEgdGhyb3VnaCB0aGUgUkYgcG9ydHM/DQo+
DQo+IEJlc3QsDQo+IFRlbWlyDQo+DQo+IE9uIFR1ZSwgRGVjIDE0LCAyMDIxIGF0IDg6MTcgUE0g
TWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+ICAg
ICBPbiAyMDIxLTEyLTE0IDEyOjEyLCBUZW1pciBLYXJha3VydW0gd3JvdGU6DQo+PiAgICAgSGkg
dGhlcmUsDQo+Pg0KPj4gICAgIEEgZmV3IG1vbnRocyBhZ28gSSBlbmRlZCB1cCB3aXRoIGEgcGFp
ciBvZiBVU1JQIEUzMTIncyBhbmQgdS1ibG94IEFOTi1NQi0wMCBHUFMNCj4+ICAgICBhbnRlbm5h
cy4gSSB3YXMgYWJsZSB0byBzeW5jaHJvbml6ZSBib3RoIGRldmljZXMgYW5kIGFjcXVpcmUgcHJv
cGVybHnCoGFsaWduZWQNCj4+ICAgICBzYW1wbGVzIGFuZCB0aGluZ3MgYXJlIGxvb2tpbmfCoGdv
b2QuDQo+Pg0KPj4gICAgIEhvd2V2ZXIsIHRvZGF5IEkgcmVhbGl6ZWQgdGhhdCB0aGUgdS1ibG94
IGFudGVubmEgSSBoYXZlIGlzIGFuIGFjdGl2ZSBhbnRlbm5hIGFuZA0KPj4gICAgIGNoZWNraW5n
wqBpdHMgZGF0YXNoZWV0wqBpdCBsb29rcyBsaWtlIGl0IHJlcXVpcmVzIDE1IG1BLzMtNSBWIERD
IHN1cHBseSBmb3IgdGhlDQo+PiAgICAgaW50ZWdyYXRlZCBMTkEuIERvZXMgdGhpcyBtZWFuIHRo
YXQgdGhlIEdQUyBwb3J0IG9mIDMxMiBoYXMgYSBiaWFzLXRlZSB0aGF0DQo+PiAgICAgc3VwcGxp
ZXMgdGhlIG5lY2Vzc2FyeSBjdXJyZW50cz8gSWYgdGhlcmUgaXMgYSBiaWFzLXRlZSwgd2hlcmUg
Y2FuIEkgZmluZA0KPj4gICAgIGluZm9ybWF0aW9uIGFib3V0IGl0Pw0KPj4NCj4+ICAgICBBbHNv
IGNoZWNraW5nIHRoZSBFdHR1cyBzdG9yZSwgaXQgbG9va3MgbGlrZSBkaWZmZXJlbnQgYW50ZW5u
YXMgYXJlIGNvbXBhdGlibGUgd2l0aA0KPj4gICAgIGRpZmZlcmVudCBVU1JQIG1vZGVscy4gRm9y
IGluc3RhbmNlICIzViBBY3RpdmUgR1BTIEFudGVubmEgZm9yIE4gc2VyaWVzIiBpcw0KPj4gICAg
IGFwcGFyZW50bHkgY29tcGF0aWJsZSB3aXRoIEUzMTAgYm90aCBub3QgY29tcGF0aWJsZSB3aXRo
IFggYW5kIEIgc2VyaWVzLiBXaGljaA0KPj4gICAgIGZhY3RvciBkZXRlcm1pbmVzIHRoZSBjb21w
YXRpYmlsaXR5Pw0KPj4NCj4+ICAgICBCZXN0IHJlZ2FyZHMsDQo+PiAgICAgVGVtaXINCj4+DQo+
PiAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+
ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+PiAgICAgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0b3VzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQo+ICAgICBJIHRoaW5rIHRoZSBiaWFzLVQgb24gYm90aCBYIGFuZCBC
IHNlcmllcyBwdXRzIG91dCArNVYuIE1PU1QgR1BTIGFudGVubmFzIGFyZQ0KPiAgICAgcGVyZmVj
dGx5IGhhcHB5IHRvIGRlYWwgd2l0aCBhbnl3aGVyZSBiZXR3ZWVuIDMtNVYuDQo+DQo+ICAgICBO
ZWFybHkgYWxsIEdQUyBhbnRlbm5hcyB0aGVzZSBkYXlzIGFyZSAqYWN0aXZlKiBhbnRlbm5hcyBh
bmQgTU9TVCBhcmUgMy01ViBoYXBweS4NCj4NCj4NCj4gICAgIF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiAgICAgVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPg0KPg0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
