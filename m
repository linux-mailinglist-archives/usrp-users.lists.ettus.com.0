Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5CC491EBD
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 06:02:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80A8338548B
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 00:02:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GIuDu6+o";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F30E383D9C
	for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 00:02:04 -0500 (EST)
Received: by mail-qk1-f174.google.com with SMTP id a21so7228136qkn.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 21:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MIFrAgWQQiPmz7ELWvsOHgBfhF5YKPhA/UJJUxMll7o=;
        b=GIuDu6+o9FrpCBH7MaMHaBc9/H9cwaJxtOgwSlsgJtnaXbQhKkQ+Cn3JTGTedZVq0M
         0QPxOjfcAkRtYWpGsOQQO3W6EMg9iL2hi9f7kcBg2m3P/AEsNe9hGBQSpLCh6zg1DzIE
         OjD7inbQiRjOIbQ6r7j7HAsRVgkk4Uapgkf/UZvOJ3gnTxnowzzvh3bBzR3J3OAfVvS9
         BnLW21SWxF1jyps+D7cnwnrPbxESgA7Em6E2ns6/iBdn0OG5wDjUBbcy5jmtvs+HoLqT
         bEm8XAhrvQvnxHdmLzdB4eQS9nA8+HYKupQvicHJq4utR1wUN3Dm4yl3R+QaJK/KCDmY
         GHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MIFrAgWQQiPmz7ELWvsOHgBfhF5YKPhA/UJJUxMll7o=;
        b=ratTvm4TrbBDuwo+PULQh917OmtAY/z54luscd7Bu37kglJQ21Wiak1uhX4D9DMaqJ
         zmqZTkK6U3hNxxEA4QYrrfz1P/8PYltkkVyqgT6+cOVgkz8YLQfafVqpnM8WiWBlARN2
         zGkXouPbE7qmwQSpd9hH5/YxeKefpSGKj7NFUBX5AQEqHdOD8YxPKgm44cixmhQLIl0L
         WU0t+6w5MCZBNB/7dEgxOXcW1E4EGmwoTh40Z10CZ0H5a0S+4nNV0I0z6szYvZFrCHMK
         kd883CCtLMXVF5PI2Euss5hfOBEpo/Jm1ocdbwqIDdg1l/d6TTzdB0Xy/lgVXDwvzZpU
         QTbg==
X-Gm-Message-State: AOAM533+eZudAS73eshqk7D2dRDxPfyCnlmOjg7/zucygpjYXX47aWMW
	qQgyT+oZ0CMSn58mPAeC7Iw=
X-Google-Smtp-Source: ABdhPJy9RukI1CwcycQpy7hu3QN6ts14fJLBlOD5rQy0y4no3b+YQHH6hGNl79BQ7zz0LSQweAUV2Q==
X-Received: by 2002:a37:a7d4:: with SMTP id q203mr12331817qke.274.1642482124015;
        Mon, 17 Jan 2022 21:02:04 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id o7sm9856329qke.44.2022.01.17.21.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 21:02:03 -0800 (PST)
Message-ID: <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com>
Date: Tue, 18 Jan 2022 00:02:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>,
 GNURadio Discussion List <discuss-gnuradio@gnu.org>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
 <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com>
 <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
 <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
 <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
Message-ID-Hash: N7U6LCX2LNOPRWCX2MMROLVIPLLN4TYU
X-Message-ID-Hash: N7U6LCX2LNOPRWCX2MMROLVIPLLN4TYU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N7U6LCX2LNOPRWCX2MMROLVIPLLN4TYU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0xNyAyMzozNCwgUGF1bCBBdHJlaWRlcyB3cm90ZToNCj4gUG9zdGluZyBvbiBi
b3RoIEdOVVJhZGlvIGFuZCBVU1JQIGxpc3RzIGhlcmUsIHNpbmNlIG15IGFwcGxpY2F0aW9uIA0K
PiBvdmVybGFwcyBib3RoIGdyLXVoZC9HTlVSYWRpbyBhbmQgdGhlIFVIRCBBUEkuDQo+IFRoZSB0
b3AtbGV2ZWwgcXVlc3Rpb24gaXMsIGNhbiBnci11aGQgc3VwcG9ydCBhbGwgdGhlIG5lY2Vzc2Fy
eSANCj4gTjMyMS1zcGVjaWZpYyBjb21tYW5kcyBuZWNlc3NhcnkgdG8gZXhwb3J0IHRoZSBUWCBM
TyBmcm9tIFJGMCB0byBSRjE/IA0KPiBUaGF0IHdvdWxkIGluY2x1ZGUgcnVubmluZyB0aGUgY29t
bWFuZCB0byBzZXQgdGhlIDF4NCBzcGxpdHRlci4gVGhhdCdzIA0KPiB0aGUgb25lIGluIHF1ZXN0
aW9uLg0KPg0KPiBnZXRfZGV2aWNlKCktPmdldF90cmVlKCktPmFjY2Vzczxib29sPigibWJvYXJk
cy8wL2Rib2FyZHMvQS90eF9mcm9udGVuZHMvMC9sb3MvbG8xL2xvX2Rpc3RyaWJ1dGlvbi9MT19P
VVRfMC9leHBvcnQiKS5zZXQodHJ1ZSkNCj4NCj4gSWYgbm90LCBNYXJjdXMgc3VnZ2VzdGVkIHVz
aW5nIGEgcHl0aG9uIHNuaXBwZXQuIEkndmUgdXNlZCB0aGF0IHdpdGggDQo+IFJGTm9DIGJlZm9y
ZSwgYnV0IGhvdyB3b3VsZCB0aGF0IHdvcms/DQo+IEknbSBndWVzc2luZyBpdCB3b3VsZCBiZSBh
biAiYWZ0ZXItaW5pdCIgYW5kIHRoZW4gY2FsbCB0aGUgcHl0aG9uIEFQSSANCj4gZm9yIHRoZSBh
Ym92ZSAoaWYgdGhhdCBjb21tYW5kIGlzIHN1cHBvcnRlZCk/DQo+DQo+IFRoYW5rcw0KPg0KWWVh
aCwgSSdkIHNheSAiYWZ0ZXItaW5pdCIsIGFuZCBoYXZlIGl0IGdyYWIgdGhlIG9iamVjdCBuYW1l
IG9mIHRoZSB1c3JwIA0Kb2JqZWN0P8KgIFVzaW5nIFB5dGhvbmljLCByYXRoZXIgdGhhbiBDKysg
c3ludGF4Pw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
