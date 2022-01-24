Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DC0498745
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 18:53:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53E4B384A2F
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 12:53:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d5ho474Y";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F3B63849F1
	for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 12:52:41 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id i19so6547990qvx.12
        for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 09:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=UjQy54Y5btig96YtXoIR3GTNj/gxO/MfrTRUPqjOMY4=;
        b=d5ho474YSb8qLUN3xIEom7FyedQUsPVZb6eZOjE1gRrv7N6a9ZWIGrUoY/qN9Gu0bs
         KoWWw0AtOtAaZSz8I+qortauzVZnW4GSdCH8F0G2mPzgu0r7Pl2Dy8df6SpYd3yXgz3f
         2t6hHyKMq5bsWSB5E5F01vLB/2bp3W6Zx3lcSOOrv9G17vzh3g4RS5bSPMbrGEUmS/os
         CZZBD3Ost0O1Ma/7gX+iYgBQvoLkIzvdM2Y7YKD6v8m/zJzTjaIrRH1mX42PIxpAezSo
         NUiKo5IKHTlIxEUtNr14dVALgkzgm6AiH5Li8/C9uchzFaeB9YqW0O4Emu+B/m2HhouY
         bN+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UjQy54Y5btig96YtXoIR3GTNj/gxO/MfrTRUPqjOMY4=;
        b=RNMHGK5PFh4B9j5Nv4uMuZ86sf8+UYGOs/AnfMxhQttuG6gxwfpSEenNCC9cw9NMO0
         OfoprZy1jFsxkXEHzjlH/OxUy2C7szGsi7MDqOhWh7gF15LV8stgjcCva3BWZWRkI1V8
         0WTtmAymGlQntvhqjK3W5qr3gsHxbV1UuYVZ3c/OPGFKbABRRM01Mz65/ghF5gur/jwg
         sR0uu0mmfa6LL7aqeEV1tAVxbGv/RH35qq/xXXY9b/8yCaLVZeiqhe9KW9GaDVpv2Yan
         KxjbaYI6/UWNIwZJ/AKqfU5gf8QAfcg7Zh+ySV6dj7XVWCgtL5yxPlaN+SaPii6NzgRj
         Rn3w==
X-Gm-Message-State: AOAM533a9Ah6A5Khpk3Df1izYv5tcV8TTxHj3cxqlqDumOSySZ8O7FBX
	GI57CEqWcd2SR53dGl1xLJw=
X-Google-Smtp-Source: ABdhPJxu5Sqv2pHDVqllwivR0Q9KDN27xs8udAv6ImI7PG/Kfn4dLQiwIybFX8dNOSnmumqznzc1Mw==
X-Received: by 2002:a05:6214:c2e:: with SMTP id a14mr15891581qvd.14.1643046760749;
        Mon, 24 Jan 2022 09:52:40 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w9sm7605542qtk.89.2022.01.24.09.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 09:52:40 -0800 (PST)
Message-ID: <c3e3c1cd-423f-a376-2f9f-b575d0dd5afd@gmail.com>
Date: Mon, 24 Jan 2022 12:52:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ming You <M.You@lboro.ac.uk>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <f24351c6-0aae-d3e4-14be-9c531480bc75@gmail.com>
 <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
Message-ID-Hash: I52HU5CQEDSHDXVKDB5YYWNUGPEKUFFM
X-Message-ID-Hash: I52HU5CQEDSHDXVKDB5YYWNUGPEKUFFM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I52HU5CQEDSHDXVKDB5YYWNUGPEKUFFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0yNCAxMjozNywgTWluZyBZb3Ugd3JvdGU6DQo+IEhpIE1hcmN1cywNCj4NCj4g
VGhlIFgzMTAgaXMgYWN0dWFsbHkgZnVsZmlsbGVkIGJ5IFVTUlAtMjk1MCwgaS5lLiwgWDMxMCBh
bmQgV0JYIGFuZCBHUFNETy4NCj4NCj4gVGhlIGdyYXBoIGhhcyBiZWVuIGF0dGFjaGVkLCBhY3R1
YWxseSBpdCBpcyB2ZXJ5IHNpbXBsZSwganVzdCBzZW5kIGEgdHJpYW5nbGUgc2lnbmFsIG92ZXIg
b25lIGNoYW5uZWxzIGZyb20gdGhlIHR4IChmb3IgY29udmVuaWVuY2UsIEkndmUgb25seSBhdHRh
Y2hlZCBvbmUgYW50ZW5uYSB0byB0aGUgb25lIGNoYW5uZWwgb24gdHggc2lkZSwgc28gdGhhdCBp
dCBpcyBhIG11Y2ggY2xlYXIgY29uc3RlbGxhdGlvbiBmaWd1cmUgb24gcnggc2lkZSkuIFRoZSBj
b25zdGVsbGF0aW9uIGZvciBzdWNoIGNhc2Ugc2hvdWxkIGJlIGEgcXVhZHJpbGF0ZXJhbCBzaGFw
ZS4gV2l0aCBYMzEwKFdCWCksIHRoZSBjb25zdGVsbGF0aW9uIGF0IGJvdGggY2hhbm5lbHMgYXQg
cnggaXMgdmVyeSByb2J1c3QgKHRoZSBzaGFwZSBpcyBub3QgbW92aW5nIG11Y2gpLCBidXQgd2l0
aCBOMzIxLCB0aGUgY29uc3RlbGxhdGlvbiBzaGFwZSBpcyBhcHBhcmVudGx5IHJvdGF0aW5nIHdp
dGggdGltZSwgYW5kIGlmIGluY3JlYXNpbmcgZnJlcXVlbmN5IGl0IG1pZ2h0IGp1c3Qgcm90YXRl
LiBUaGF0IGlzIHdoYXQgSSBhbSBjb25mdXNlZCBhYm91dCB0aGUgTjMyMSBwaGFzZSBsb2NrIHBl
cmZvcm1hbmNlIGV2ZW4gd2l0aCBleHRlcm5hbCBSRUYgYW5kIFBQUyBmcm9tIENEQSAyOTkwLiAg
SXQgc2VlbXMgdG8gbWUgdGhhdCB0aGVyZSBzaG91bGQgYmUgc29tZSAicHJvcGVyIiBjb25maWd1
cmF0aW9uL3R1bmluZywgaWYgdGhpcyBpcyBub3QgYSBidWcuDQo+DQo+IFJlZ2FyZGluZyB0aGUg
M3JkIHF1ZXN0aW9uIG9uIHdoYXQgSSBhbSBtZWFzdXJpbmcsIGZyb20gdGhlIGFib3ZlIGRlc2Ny
aXB0aW9uIHlvdSBjYW4gZ2V0IGFuIGlkZWEgd2hhdCBJIG1lYW4gLS0gIEkganVzdCB3YW50IHRo
ZSBOMzIxIHRvIGhhdmUgdGhlIHNhbWUgcGhhc2UgcGVyZm9ybWFuY2UgYXMgWDMxMCwgc2luY2Ug
dGhlIHJvYnVzdCBwaGFzZSBsb2NraW5nIGlzIGNyaXRpY2FsIHRvIGFueSBleHBlcmltZW50IHdo
ZW4gbXVsdGlwbGUgY2hhbm5lbHMvdXNycHMgYXJlIGludm9sdmVkLg0KPg0KPiBBbHNvIHRvIG1l
bnRpb24gdGhhdCBJJ3ZlIHRyaWVkIGFsbCBzdXBwb3J0ZWQgTjMyMSBtYXN0ZXIgY2xvY2ssIDIw
ME0sIDI0NS43Nk0gYW5kIDI1ME0sIHRoZXkgZG9uJ3QgaGVscCBhbmQgcHJvYmxlbXMgYXJlIHRo
ZSBzYW1lLg0KPg0KPiBBbnkgaWRlYSBvciBzdWdnZXN0aW9ucyB3aWxsIGJlIG11Y2ggYXBwcmVj
aWF0ZWQuDQo+DQo+IFRoYW5rcywNCj4gTWluZw0KPg0KPg0KQWxzbyB3aGF0IGlzIHRoZSB0aW1l
LXNjYWxlIG9mIHRoZSBhcHBhcmVudCBwaGFzZSByb3RhdGlvbj/CoCBJcyBpdCANCmFsd2F5cyBp
biB0aGUgc2FtZSBkaXJlY3Rpb24/DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
