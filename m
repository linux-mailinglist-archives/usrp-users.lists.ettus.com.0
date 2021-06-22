Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D783B0677
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 16:06:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB2B9383EFB
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 10:06:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MCawb2nm";
	dkim-atps=neutral
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AB1BE380A0B
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 10:05:17 -0400 (EDT)
Received: by mail-ej1-f44.google.com with SMTP id gn32so7317537ejc.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 07:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=85xNCT41mZnm6uvfwHKOH8ETkowWoD4AZ8Cn9mv6LjI=;
        b=MCawb2nm6cY8Rp8yXCXIZ0AolUMEDKVqhVqYkE4B+3O4T7cCfXd822e3yuSESmOZne
         Xztu7WBM1raXXCxYbYOWRHLQ8mYrIvSyLmP307Z1n2ej8EMxlvM+wuPPc/c0xoSLPjNu
         TS4VxETNDkbGWZHI7HxS2tUGHYkGiQA5bn323g3FwSSbtzhAdRuHtqlg0OClfFoRuELk
         hhRV4v7B2gWDQrhvqLinKnXjjJcXUr5ffnYu+UWfgE68vp3FOZH5pDuAJTExtM6NNpd4
         1HfPi6MsYI3SXTKAkJo10Z2ET0WphIlbIfGTtQ0uCDLbgw7Krt5+O10gABLoi47TpnQL
         PnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=85xNCT41mZnm6uvfwHKOH8ETkowWoD4AZ8Cn9mv6LjI=;
        b=oQed4vTVgYGzS4+qTmvuOxfGKod4v8s1zRatw/X4MvkLsQLlD2EJsYfYgydacVOZtf
         MwoZ8eZBXNdhiKENPxsqhubhVQt4Nur5TGuYlxBNg1KGLLfPfEcr2u0KxNCe9SEFDwC+
         Xu8h3SQYrewbC1BPOxVpHhH89+sYjGpvXbruGk9seccwTAwzYqN2cDhK+G+9te4zx3kv
         Qqa1Kz8S18xH1s9FtbwzxqC5gYH3PeEICCsxbAp7gwjxBKHEs6k8nw5y79ZHHjcwFtIx
         7cy/UlCJV7gn9MMTo5DN41Imx8ZTByLeTmS+ei9dnRixk41ybXQy37QHMr76nm6XZM+N
         fSiA==
X-Gm-Message-State: AOAM532NVFbqZv7fFKB0lyzMmvi/Ym6T4Q+rBiVtWZ5ptT8i49vN62+u
	1s3oTJwD/pX54t67/1vXJ/oVlkWwCsw5Sw==
X-Google-Smtp-Source: ABdhPJxZIFBeNFuctVKkhF09Db20JLNa4SgD2mPyJCFYLch2om/j5NqS7xH3YRBsBohRWD9/h6dAkw==
X-Received: by 2002:a17:906:a18b:: with SMTP id s11mr4263422ejy.8.1624370716377;
        Tue, 22 Jun 2021 07:05:16 -0700 (PDT)
Received: from [172.18.236.171] ([141.20.217.203])
        by smtp.gmail.com with ESMTPSA id kf3sm6268317ejc.8.2021.06.22.07.05.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 07:05:16 -0700 (PDT)
To: Michael Dickens <michael.dickens@ettus.com>
References: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
 <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com>
From: Vladica Sark <vladicasark@gmail.com>
Message-ID: <ca7130e2-3932-e6a0-faab-c281bb14ce24@gmail.com>
Date: Tue, 22 Jun 2021 16:05:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: II7IYPXSFNFU2SQBUMQPXIZS7GRITJA4
X-Message-ID-Hash: II7IYPXSFNFU2SQBUMQPXIZS7GRITJA4
X-MailFrom: vladicasark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/II7IYPXSFNFU2SQBUMQPXIZS7GRITJA4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWljaGFlbCwNCg0KVGhhbmtzIGZvciB0aGUgYW5zd2VyLiBGb3Igbm93IGZvciB0aGUgZGF0
YSBJIGFtIHVzaW5nIERBQyBjYWJsZXMsIGJ1dCANCndlIHdvdWxkIG5lZWQgbGFyZ2VyIGRpc3Rh
bmNlcywgaS5lLiA1MCsgbWV0ZXJzLCBhbmQgZm9yIHRoaXMgSSB3b3VsZCANCm5lZWQgZmliZXJz
IGZvciBib3RoIFdSIGFuZCBkYXRhLg0KDQpJcyB0aGVyZSBhbHNvIHNvbWUgb3B0aWNhbCBtdWx0
aXBsZXhlciBmb3IgdGhlc2Ugd2F2ZWxlbmd0aHMsIGluIG9yZGVyIA0KdG8gdXNlIGEgc2ltcGxl
eCBmaWJlciwgZm9yIGJvdGggV1IgYW5kIGRhdGE/DQoNCkJSLA0KVmxhZGljYQ0KDQpPbiAyMi4w
Ni4yMSAxNTo0MSwgTWljaGFlbCBEaWNrZW5zIHdyb3RlOg0KPiBIacKgVmxhZGljYSAtIEkndmUg
dGVzdGVkIGEgdmFyaWV0eSBvZiBmaWJlciBhZGFwdGVycyBhbmQgY2FibGVzIHdpdGggDQo+IG5v
IGlzc3VlcyAoZS5nLiwgWnlYRUwsIEZTLCBBeGNlbikuIFRoZSBwcmltYXJ5IGtleXMgYXJlIHRv
IG1ha2Ugc3VyZSANCj4gdGhlIHZhcmlvdXMgcmVsYXRlZCBwYXJhbWV0ZXJzIG1hdGNoIHVwIGJl
dHdlZW4gdGhlIGFkYXB0ZXJzIGFuZCANCj4gY2FibGVzIGFuZCBkZXZpY2VzLiBGb3IgZXhhbXBs
ZTogSWYgdGhlIGFkYXB0ZXIgaXMgMTQ5MC8xMzEwLCB0aGVuIHlvdSANCj4gd2FudCB0byBtYWtl
IHN1cmUgdGhlIGNhYmxlIGlzIGZvciB0aGUgc2FtZSB3YXZlbGVuZ3Rocy4gU2FtZSBmb3IgdGhl
IA0KPiBmaWJlciBwb2xpc2ggYW5kIG90aGVyIHBhcmFtZXRlcnPCoChzaW5nbGUgLyBkdWFsIGZp
YmVyIDsgLiBTb21lIGFyZSANCj4gZWFzaWVyIHRoYW4gb3RoZXJzLCBub25lIG9mIHRoaXMgaXMg
dG9vIGRpZmZpY3VsdCBsdWNraWx5IQ0KPg0KPiBGb3Igc2hvcnQgZGlzdGFuY2VzLCBhIERBQyBj
YWJsZSB3aWxsIHdvcmsgZm9yIGFsbCBvZiB0aGUgTjMyMC9OMzIxIA0KPiBTRlAgaW50ZXJmYWNl
cy4NCj4NCj4gQXQgdGhlIG1vbWVudCwgV1Igc3VwcG9ydCBpcyBiZWluZyBmaXhlZCBmb3IgVUhE
IDMuMTQuMC4wIHRvIGN1cnJlbnQuIA0KPiBJZiB5b3UgLXJlcXVpcmUtIFdSIHN1cHBvcnQgLXJp
Z2h0IG5vdy0geW91IGNhbiB1c2UgVUhEIDMuMTMuMS4wIHdoaWxlIA0KPiB3ZSdyZSB3b3JraW5n
IG91dCBob3cgdG8gZml4IFdSIGZvciBuZXdlciBVSEQuIFdlIGV4cGVjdCB0aGUgZml4IHRvIGJl
IA0KPiBhdmFpbGFibGUgdG8gY3VzdG9tZXJzIHNvbWV0aW1lIGluIG1pZC9sYXRlLUp1bHkgKDIw
MjEpOyBvbmNlIHRoZSBmaXggDQo+IGlzIGRldGVybWluZWQgYW5kIHZlcmlmaWVkIHdlIHdpbGwg
Y29tbWl0IGl0IHRvIHRoZSB2YXJpb3VzIGJyYW5jaGVzIA0KPiBvZiB0aGUgVUhEIHJlcG9zaXRv
cnksIGFuZCBpdCB3aWxsIGJlIGF2YWlsYWJsZSBpbiBVSEQgLWFmdGVyLSB0aGUgDQo+IGZvcnRo
Y29taW5nIDQuMcKgcmVsZWFzZS4gSXQgd2lsbCBiZSBhdmFpbGFibGUgaW4gdGhlIHB1YmxpYyBV
SEQgDQo+IHJlcG9zaXRvcnkgZm9yIGZvbGtzIHRvIHVzZSB0byBwYXRjaCBVSEQgYmV0d2VlbiBy
ZWxlYXNlcy4NCj4NCj4gSSBob3BlIHRoaXMgaXMgdXNlZnVsISAtIE1MRA0KPg0KPg0KPiBPbiBU
dWUsIEp1biAyMiwgMjAyMSBhdCA2OjE5IEFNIFZsYWRpY2EgU2FyayA8dmxhZGljYXNhcmtAZ21h
aWwuY29tIA0KPiA8bWFpbHRvOnZsYWRpY2FzYXJrQGdtYWlsLmNvbT4+IHdyb3RlOg0KPg0KPiAg
ICAgRGVhciBhbGwsDQo+DQo+ICAgICBJIHdvdWxkIGxpa2UgdG8gdXNlIE4zMjEgd2l0aCBXUlMg
My8xOCB3aGljaCB1c2VzIG9wdGljYWwgY2FibGVzLiBJDQo+ICAgICB3b3VsZCBsaWtlIHRvIHVz
ZSBhbHNvIGZvciB0aGUgMTAgR2JpdCBTRlAxIG9wdGljYWwgU0ZQKyB0cmFuc2NlaXZlci4NCj4g
ICAgIERvIHlvdSBoYXZlIHNvbWUgcmVjb21tZW5kZWQgb3B0aWNhbCBTRlArIGFkYXB0ZXJzLCBk
dXBsZXggYW5kLA0KPiAgICAgcHJlZmVyYWJseSwgc2ltcGxleD8NCj4gICAgIFRoZSBpZGVhIGlz
IHRvIHVzZSBhIGR1cGxleCBtb25vbW9kZSBmaWJlciwgb25lIGZpYmVyIGZvciB0aGUgMTAgR2Jp
dA0KPiAgICAgZGF0YSBhbmQgb25lIGZpYmVyIGZvciBXUlMgc3luY2hyb25pemF0aW9uLg0KPiAg
ICAgVGhleSB3b3VsZCBiZSBjb25uZWN0ZWQgdG8gMTAgR2JpdCBzd2l0Y2ggb3IgUU5BUCBUaHVu
ZGVyYm9sdCB0byBTRlArDQo+ICAgICBhZGFwdGVyLCBzbyB0aGV5IGRvIG5vdCBoYXZlIHRvIGJl
IEludGVsLg0KPg0KPg0KPiAgICAgQmVzdCByZWdhcmRzLA0KPg0KPiAgICAgVmxhZGljYQ0KPg0K
PiAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
ICAgIFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPiAgICAgVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KPiAgICAgPG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbT4NCj4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
