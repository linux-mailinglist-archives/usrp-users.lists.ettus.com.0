Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7B6A001B5
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2025 00:27:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55F27385F70
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 18:27:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735860469; bh=Ao2eRymx3IvKjDsYJ0ZkhQVNyY1GvTZwkm9hUEPrzI8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gSP8pCjO6IKQ0KMlE4ukrowE2jHzs+CKzdfpYoDz+8YHDNZEX16J/JDJXihcGwUfL
	 S9s5KSr9R9lJvhhiuuPGXd5zc2JeKpKazA2+UfKSyvEYmsun3qXu7KtXW+zed1sxI3
	 fTpR+Rk6yTrgywyHRp1GCTKClcvZIviTB+U3swmWVbn6Wm1IiN+vnQZRzTDI484+wm
	 86V1m0WGfQz3rJuE7/SS/kBiFpVr3T/TOJFsF+cN517yiTh6weFZoru8uhv+ngkZxl
	 6OSxQcs38omtEAxQVlk7sZK8ULjhc7ow8G0AdDEqjKf9JMXaU+rrvEtcF1hxv9sxyY
	 y9RaAHx1qURxA==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 1AB5E385F30
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 18:27:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g0YGvrSR";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7b6e8fe401eso989625985a.2
        for <usrp-users@lists.ettus.com>; Thu, 02 Jan 2025 15:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735860462; x=1736465262; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/DqREqSIXk4VMkvvT8XjZ1jX2rsrFSo47zdLLZr2t50=;
        b=g0YGvrSRtyGc07ykB4a7oohDH8KgvI2JkZ4JtEFX8JiZ+cb6iSLjUy1iPeGNImGGyR
         ki9iikZx/gFJaVducEV+7aVmtlI7sH1ALf5ekF3QTHhsfXCYkL/ff3V9zUvtj+VOPm36
         sf7FMoUcoKlRqj3jY+y+V9vFTRa7fxfbViJtCTMsMhqYBUwKEBVgclgUkPvOBG/GlLo6
         CxTxiJySQewh1eblIJrPdlX0r0K1i+Cb1JE7TfbfNnIYeeslLvqXElTxHO/zyGI5OIOi
         i1bEA3I79hvUFp5q3O6fiIQ5hDXYBhUgdu7ORzey6nnu81aXepJ/tsJH5LaX8llkauud
         TDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735860462; x=1736465262;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/DqREqSIXk4VMkvvT8XjZ1jX2rsrFSo47zdLLZr2t50=;
        b=Z7C5a8XODOAQzRWshacOLqnrswRkTjeZjp26FDmtMx+IyPgOivvHUTe5qcag+i4gXL
         IuOfKIndOI1eLoo2YzChkf5lJfcuwNhniQVphfCCThQ9TRdhY40p2eOXDE5G7/b6rUNr
         KMvV0WLVYOK7E0A+QPlduJ0vwlWBngML5EdgSJyAoT8MhJwm6giFcg9IlJNoJfbe3mEi
         QQkpDS+3btm81Acq5YLvOV6v1u54eYA+NJQIp/zKlPz+eGD/VOac65ZNhQBR+h0vUjYB
         t5ReCh7jbKWZZGG5SH95EZl440NSyNUudFOvZDvBgJweHgBthu74YhtwhdfEhm+vgwf6
         lnBA==
X-Gm-Message-State: AOJu0YyRlnSu8oG0gFEs1aQnDEbOxcHVFZNBkzFRlobPcRiqEw+k+3sa
	A7c0ytuuKW3w2Q8M7QCqf3gDT/hPkhVGtSVG9AAkf75t1Bg9OVDsnSbX6A==
X-Gm-Gg: ASbGncsgbqGs9sdlbizHVJ3upQGZ5Bc8mmiQda3JoEIeBJvRo6MG6HlJuAqgYggq/qJ
	iwSK5a9Q4smLLknHSjXPjhscdY5OjcPLnnkftYU0QP77XaQmRBI832eAJls6hGAoh5DRY4Uencb
	s12sYrplcIHVkTkq8kncMLgKaUfkkf/Ot8Cs61lIQcIEk+yhdUJ2q71o6Y49YoNQSiNv37SVhyW
	GZnK3sTHbYy9x2tBE+ZJsDZmuIi4CSg/qUk5+FXIN0JKcZyLGCeJ4pVNCR9nK71KcsRUFLwoMhK
	lXWx4TndJQn40guOPtJLV9JGfJn7nwA9U4idRM3IrGMaXG3f5zGl86M=
X-Google-Smtp-Source: AGHT+IGXq6hIHrIuG0CI0niu9szr2riiap9ySam+akCI9Fzcl2gNMx58vEhWP+ygmfTBABsvX0y8PA==
X-Received: by 2002:a05:620a:454d:b0:7b6:da92:fcd0 with SMTP id af79cd13be357-7b9ba715ea9mr7091530085a.8.1735860462085;
        Thu, 02 Jan 2025 15:27:42 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b9ac4be70bsm1223065585a.96.2025.01.02.15.27.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 15:27:41 -0800 (PST)
Message-ID: <ac9a9c43-a219-4b52-8b0e-ebeef0555db2@gmail.com>
Date: Thu, 2 Jan 2025 18:27:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
 <98952581-8e30-486b-9e9d-eafdf2a42445@gmail.com>
 <d41b9e8b-78d8-44ec-b382-b879ca9caa03@sakthi.me>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d41b9e8b-78d8-44ec-b382-b879ca9caa03@sakthi.me>
Message-ID-Hash: OOBJ2IPEDKNFFQAQNPEX6U7NQ2ZWB6OA
X-Message-ID-Hash: OOBJ2IPEDKNFFQAQNPEX6U7NQ2ZWB6OA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running user application in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OOBJ2IPEDKNFFQAQNPEX6U7NQ2ZWB6OA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDIvMDEvMjAyNSAxMzo1NiwgU2FrdGhpdmVsIFZlbHVtYW5pIHdyb3RlOg0KPiBIaSBNYXJj
dXMsDQo+DQo+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXJzLiBJIGFtIGxvb2tpbmcgdG8gb2ZmbG9h
ZCBhbGwgdGhlIERTUCB3b3JrIHRvIA0KPiB0aGUgUkZOb0MgYW5kIGhhdmUgdGhlIENQVXMgZG8g
dHJpdmlhbCB0YXNrcyBsaWtlIHNlcXVlbmNlIGdlbmVyYXRpb24gDQo+IHNvIHRoYXQgSSBkb24n
dCBoYXZlIHRvIHdyaXRlIEhETCBmb3IgZXZlcnl0aGluZy4gSSBhbSBzdGlsbCBub3QgDQo+IGVu
dGlyZWx5IHN1cmUgb2YgaG93IHRoaXMgY2FuIGJlIGRvbmUgYnV0IEkgZm91bmQgYSBzb2Z0d2Fy
ZSANCj4gZGV2ZWxvcG1lbnQgZ3VpZGUgZm9yIEUzMTAgDQo+IChodHRwczovL2tiLmV0dHVzLmNv
bS9Tb2Z0d2FyZV9EZXZlbG9wbWVudF9vbl90aGVfRTMxMF9hbmRfRTMxMikgd2hpY2ggDQo+IGxv
b2tzIGxpa2Ugc29tZXRoaW5nIEkgd2FudCB0byBhY2hpZXZlIHNvIGl0J3MgYSBnb29kIHN0YXJ0
IEkgZ3Vlc3MuDQo+DQo+IFRoYW5rcyBhZ2Fpbi4NCj4NCj4gU2FrdGhpDQpJJ3ZlIGFsc28gYmVl
biB0b2xkIHRoYXQgeW91IGNhbiBidWlsZCBVSEQgYXBwcyBkaXJlY3RseSBvbiB0aGUgWDQxMC0t
aXQgDQpoYXMgYWxsIHRoZSB0b29saW5nIGxpa2UgTWFrZSwgR0NDLCBVSEQgYW5kIG90aGVyIGlt
cG9ydGFudA0KIMKgbGlicmFyaWVzIGFscmVhZHkgb24gdGhlIHN5c3RlbSBpbWFnZS4NCg0KDQo+
DQo+IE9uIDEvMi8yNSAxMzoxMCwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4gT24gMDIvMDEv
MjAyNSAxMjo1NiwgU2FrdGhpdmVsIFZlbHVtYW5pIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4g
SSBhbSB3b25kZXJpbmcgaWYgdGhlIHVzZXIgY2FuIHJ1biBhIGN1c3RvbSBsaW51eCBhcHBsaWNh
dGlvbiBvbiB0aGUgDQo+Pj4gQVJNIGNvcmVzIHRoYXQgY2FuIG9mZmxvYWQgY2VydGFpbiB0YXNr
cyB0byB0aGUgUEw/IG9yIGRvZXMgdGhlIA0KPj4+IFJGTm9DIGNvcmUgaW1wbGVtZW50YXRpb24g
YWxsb3cgYSBSRk5vQyBibG9jayB0byBpbnRlcmFjdCB3aXRoIGFuIA0KPj4+IGFwcGxpY2F0aW9u
IG9uIHRoZSBQUyB2aWEgdGhlIEFYSSBpbnRlcmZhY2U/DQo+Pj4NCj4+PiBSZWdhcmRzLA0KPj4+
DQo+Pj4gU2FrdGhpDQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+IFlvdSBzaG91bGQgYmUgYWJsZSB0byBydW4gVUhE
LXVzaW5nIGFwcGxpY2F0aW9ucyBvbiB0aGUgQVJNIG9uIHRoZSANCj4+IFg0MTAsIGp1c3QgbGlr
ZSBhbnkgb2YgdGhlIG90aGVyIHBsYXRmb3JtcyB0aGF0IHByb3ZpZGUNCj4+IMKgIGFuIGVtYmVk
ZGVkIEFSTSBDUFUuwqAgSE9XRVZFUiwgdGhvc2UgQVJNcyBhcmUgb25seSBkdWFsIGNvcmUsIA0K
Pj4gdHlwaWNhbGx5IChJIGRvbid0IGtub3cgZm9yIHN1cmUgb24gdGhlIFg0MTApLCBhbmQgdGhl
eQ0KPj4gwqAgY2Fubm90IGJlIGV4cGVjdGVkIHRvIHByb3ZpZGUgaGlnaC1iYW5kd2lkdGggc2Ft
cGxlIHN0cmVhbXMgDQo+PiBpbnRvL291dC1vZiB0aGUgcmFkaW8uDQo+Pg0KPj4gSSBkb24ndCBr
bm93IHdoZXRoZXIgdGhlIFB5dGhvbiBBUEkgZm9yIFVIRCBpcyBpbnN0YWxsZWQgYnkgZGVmYXVs
dCANCj4+IG9uIHRoZSBYNDEwIHN5c3RlbSBpbWFnZSwgYnV0IHRoYXQgd291bGQgYmUgYW4NCj4+
IMKgIGVhc3kgcGF0aHdheSB0byBkbyBpbml0aWFsIGV4cGVyaW1lbnRzLg0KPj4NCj4+IFJlYWxs
eSB0aG91Z2gsIGZvciB0aGVzZSBoaWdoLWVuZCBib3hlcywgdGhlIEFSTSBDUFVzIGV4aXN0IGxh
cmdlbHkgDQo+PiBmb3IgaG91c2VrZWVwaW5nIGFuZCBsb2dpc3RpY3MgbWFuYWdlbWVudCBvZg0K
Pj4gwqAgdGhlIHJhZGlvLCB2aWEgdGhpbmdzIGxpa2UgTVBNLCBldGMuwqDCoCBUaGUgZmFjdCB0
aGF0IHRoZXkgKmNhbiogcnVuIA0KPj4gYSB1c2VyIGFwcGxpY2F0aW9uIGlzIGp1c3Qga2luZCBv
ZiBhIHNpZGUtZWZmZWN0LCBhbmQNCj4+IMKgIHRoYXQgYXBwbGljYXRpb24gd291bGQgbmVlZCB0
byBvZmZsb2FkIG5lYXJseS1BTEwgb2YgaXRzIGFjdHVhbCBEU1AgDQo+PiB3b3JrIHRvIFJGTm9D
LCBzaW5jZSB0aGVzZSBBUk0gQ1BVcyBhcmUgbm90DQo+PiDCoCBwYXJ0aWN1bGFybHkgY2FwYWJs
ZSBpbiB0ZXJtcyBvZiBjb21wdXRhdGlvbmFsIGFuZCBtZW1vcnktYmFuZHdpZHRoIA0KPj4gcGVy
Zm9ybWFuY2UuDQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
