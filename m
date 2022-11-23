Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0C0636896
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 19:20:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11A1E384245
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 13:20:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669227611; bh=3E339qF7F5pRufG/DeZk9hWFhZm/Dn6ayyVkNsETkF8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Xh2CWYBUEqfNjTpgSidBa1JnoNMWt+3lVXLEzaDQrhb9tJI1OGj9JQ5nRTx5LvfrW
	 rL7M16gS0/u3bWuCWek59XRwp741UGNKfuJwwGbvMODa69caCRtaHuSOnBgFE1r820
	 ofnUxdv+fHpvSUjkXZdzOaQfvJy2P/s7bTZIzIwn40lGBwQfy4fvD/yomRk5/2YeE6
	 tLJ3H2HwbiIsE7/Q99EPNEUV64EXn2Rlg4kz9zErkaPeQHyyFU/gQZmRd8NjtASq1V
	 wFl20sXoQf61hcIuBW0C1Jo5EnA3qhXdkNau6ttYMv0JYNSIx4LFY8iuEG+W9Q2Enj
	 5sIw8sDXCw7bA==
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B683383FF1
	for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 13:19:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="b6TL94qL";
	dkim-atps=neutral
Received: by mail-wr1-f42.google.com with SMTP id e11so17760324wru.8
        for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 10:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q9sR+5HP1x+cznOoy9IdPEMBBQwSmvajVTjSqkUHNB0=;
        b=b6TL94qL7wWmYNxcAyNrlLf+Jm4/x0kwG7cdArdCMB3NRYtpcct0HEmkMcZmeSEIAE
         J9IiItMgRQosLhIskXFeTYmsvsQYVSiAB1mQJnl/A78VVIHCjeqbh54HMaRzHPk+Hb/i
         FRdyTgTDqS5zepncwHuIRAZ2B3pB4O4wXxmPjHfSMJIGms6VlyDRidlbgKBTxk4KPB3a
         tEzVteBhY5zT7stZ/yqFPtHID9b1Nk4OF82gVoP+GfnLus01Fp82q/T9jwjHgu7Xjk0c
         o8WHEmPRVUlQ++94IyXJu+FnZqU3kdQ2+YskxdANKOuhBMjymnID18Lp6XI841CurPCi
         fcFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q9sR+5HP1x+cznOoy9IdPEMBBQwSmvajVTjSqkUHNB0=;
        b=OcE7rDdwYWmRxWp3DS36gvXzGqPV3IUTrHCVowFCgjGdETb+AdtA5O1m8pWS7cEWeg
         KgJhhEczxuz41yvi0ZyMN0DkkhqUnlS0D662ej5YhAh59xs5AxIpa73RP7YRGAAmeamq
         mwWFOd9G50w/mUo+v4MJ7g9Gxezlt6eoMg40Jbl1h8vNC0FwTx7OVLKRgXVFFyY0N56L
         tshlUnJACzgI+wvOQaJJpaVzzVnPN5H2GHFJgIOHlOEKpzyt2rw2AFFymjUJ/zjyhDwj
         OpY0iCyqOadR72WjpalnJmVnBQb+y7w1LvqPO8ugnGha0mY4Pd2b1YbJ6mc9KUogmbOc
         BlLQ==
X-Gm-Message-State: ANoB5plz611Vusk3E1D8ZIE8bG5NDN7GqVv0dqLloK0lBFxCALKO3QR5
	/maIuQGc+vLe8JXOS3lgMADON3dziePG8c5q
X-Google-Smtp-Source: AA0mqf6qbGcDb1LvsW9eJfjSPJBUGObf1xozdCshaWVq2ymDLFkQbzooiBF/MOenaTp1JzHbq26GKg==
X-Received: by 2002:a5d:65c9:0:b0:241:bd29:6a73 with SMTP id e9-20020a5d65c9000000b00241bd296a73mr16620905wrw.499.1669227551750;
        Wed, 23 Nov 2022 10:19:11 -0800 (PST)
Received: from ?IPV6:2001:9e8:3844:e800:5bc8:3cc3:e10b:748e? ([2001:9e8:3844:e800:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id iv19-20020a05600c549300b003cf87623c16sm3583793wmb.4.2022.11.23.10.19.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 10:19:11 -0800 (PST)
Message-ID: <cfa7ea7a-c3ca-6e69-83b2-4e09c94d1ceb@ettus.com>
Date: Wed, 23 Nov 2022 19:19:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOR0_uhJWO_31xUzKyqdH5ZkN7kQHH2L9yD2YLgig8do+_9Mkw@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAOR0_uhJWO_31xUzKyqdH5ZkN7kQHH2L9yD2YLgig8do+_9Mkw@mail.gmail.com>
Message-ID-Hash: MTWQ3YP6WBX5LG6YIPX6HI5NATDRTNMG
X-Message-ID-Hash: MTWQ3YP6WBX5LG6YIPX6HI5NATDRTNMG
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD and GNU Radio in Windows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MTWQ3YP6WBX5LG6YIPX6HI5NATDRTNMG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSHVhLA0KDQp5ZXMsIHRoaXMgd29ya3Mgd2VsbC4NCg0KID4gQXJlIHRoZXJlIGluc3RydWN0
aW9ucyBvbmxpbmUgb24gaG93IHRvIGluc3RhbGwgVUhEIGFuZCBHTlUgUmFkaW8gKGFzIHdlbGwg
YXMgdGhlaXIgDQpkZXBlbmRlbmNpZXMpIGluIFdpbmRvd3MgMTA/DQoNCmh0dHBzOi8vd2lraS5n
bnVyYWRpby5vcmcvaW5kZXgucGhwP3RpdGxlPVdpbmRvd3NJbnN0YWxsDQoNCkdvIGZvciB0aGUg
cmFkaW9jb25kYSBpbnN0YWxsZXIuIElmIHlvdSB3YW50IHRvIGtub3cgd2hhdCB0aGF0IGRvZXMg
aW50ZXJuYWxseSwgDQpodHRwczovL3dpa2kuZ251cmFkaW8ub3JnL2luZGV4LnBocD90aXRsZT1D
b25kYUluc3RhbGwgaXMgYSBnb29kIHBpZWNlIG9mIGRvY3VtZW50YXRpb24uIA0KQnV0IHJlYWxs
eSwgeW91IGp1c3QgbmVlZCB0byBkb3dubG9hZCBSYWRpb2NvbmRhIGluc3RhbGxlciBmb3Igd2lu
ZG93cywgZG91YmxlIGNsaWNrLiANCkRvbmUuIEZyb20gdGhlcmUgeW91IGdldCBhIHNoZWxsIGlu
IHdoaWNoIHlvdSBjYW4gdXNlIGBjb25kYWAgdG8gaW5zdGFsbCB3aGF0ZXZlciB5b3UgDQp3YW50
LCBidXQgdGhlIGRlZmF1bHQgaW5zdGFsbGF0aW9uIGNvbWVzIHdpdGggVUhEICsgR05VIFJhZGlv
Lg0KDQoNCiA+IENhbiBzb21lb25lIHNoYXJlIHlvdXIgZXhwZXJpZW5jZSB3aXRoIFVTUlAgaW4g
V2luZG93cz8gSG93IGhhcmQgaXMgaXQgdG8gc2V0IHVwIHRoZSANCndvcmtpbmcgZW52aXJvbm1l
bnQgaW4gV2luZG93cw0KDQpJIGRvbid0IGRvIGRldmVsb3BtZW50IG9uIFdpbmRvd3MgbXlzZWxm
LCBidXQgSSB3aXRuZXNzZWQgbXVsdGlwbGUgZ3JvdXBzIG9mIDIgb3IgMyANCnN0dWRlbnRzIHNl
dCB1cCBHTlUgUmFkaW8gKyBVSEQgb24gYSB3aW5kb3dzIG1hY2hpbmUgd2l0aGluIGEgZmV3IG1p
bnV0ZXMuIFRoZXNlIHN0dWRlbnRzIA0KaGFkIG5vIHByaW9yIGRldmVsb3BtZW50IGV4cGVyaWVu
Y2UuDQoNCiA+IFdlwqBob3BlIHRvIHN0cmVhbSBzaWduYWxzIGZyb20gVVNSUCBYMzEwIHRvIFdp
bmRvd3MgKHZpYSAxMEdicHMgU1BGK8KgY2FibGUpIGZvciANCnJlYWwtdGltZSBwcm9jZXNzaW5n
IHVzaW5nIEdOVSBSYWRpbyBjb21wYW5pb24gYW5kIG91ciBvd24gT09UIG1vZHVsZXMuDQoNClgz
MTAgaXMgZXNwZWNpYWxseSBuaWNlLCBiZWNhdXNlIHVubGlrZSBmb3IgdGhlIFVTQi1iYXNlZCBk
ZXZpY2VzIHlvdSBkb24ndCBuZWVkIHRvIA0KaW5zdGFsbCBhIGxpYnVzYiBhYnN0cmFjdGlvbiBs
YXllciBkcml2ZXIgb24gd2luZG93cy4gSnVzdCBydW4gdWhkX2ltYWdlc19kb3dubG9hZGVyIHRv
IA0KZG93bmxvYWQgdGhlIHJpZ2h0IGltYWdlcyBhZnRlciByYWRpb2NvbmRhIHNldHVwIGZyb20g
dGhlIHNoZWxsIGl0IHByb3ZpZGVzLA0KDQogPiBJbiB0aGVvcnksIFVidW50dSBhbmQgV2luZG93
cyBvZiB0aGUgc2FtZSBjb21wdXRlciBzaG91bGQgaGF2ZSBzaW1wbGUgSS9PIGFuZCBjb21wdXRp
bmcgDQpwZXJmb3JtYW5jZSwgcmlnaHQ/DQoNClllcy4gVGhlIHdheXMgeW91IGRvIHRoaW5ncyBs
aWtlIHR3ZWFraW5nIG5ldHdvcmsgYnVmZmVyIHNpemVzLCBvciBuZXR3b3JrIGNhcmQgaW50ZXJy
dXB0IA0KY29hbGVzY2luZywgZGlmZmVyIG9uIFdpbmRvd3MgYW5kIExpbnV4LCBhbmQgSSdtIHJl
YWxseSBub3QgYW4gZXhwZXJ0IGluIGhvdyB0byB0dW5lIA0Kd2luZG93cywgYnV0IGluIHByaW5j
aXBsZSwgYm90aCBhcmUgZXF1YWxseSBjYXBhYmxlIG9wZXJhdGluZyBzeXN0ZW1zLCBhbmQgVUhE
IHVzZXMgdGhlIA0Kc2FtZSBhYnN0cmFjdGlvbnMgb24gYm90aCAobmFtZWx5LCBuZXR3b3JrIHNv
Y2tldHMpLg0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCg0KT24gMjMuMTEuMjIgMTg6MTQsIEh1
YWNoZW5nIFplbmcgd3JvdGU6DQo+IEhlbGxvLA0KPg0KPiBEbyBVSEQgYW5kIEdOVSBSYWRpbyAo
T09UIG1vZHVsZSBjcmVhdGlvbiwgY29tcGlsYXRpb24sIGFuZCBydW5uaW5nKSB3b3JrIHdlbGwg
aW4gDQo+IFdpbmRvd3M/IEFyZSB0aGVyZSBpbnN0cnVjdGlvbnMgb25saW5lIG9uIGhvdyB0byBp
bnN0YWxsIFVIRCBhbmQgR05VIFJhZGlvIChhcyB3ZWxsIGFzIA0KPiB0aGVpciBkZXBlbmRlbmNp
ZXMpIGluIFdpbmRvd3MgMTA/DQo+DQo+IFdlIGRpZCBtYW55IHByb2plY3RzIHVzaW5nIFVTUlAg
TjIxMCwgWDMxMCwgYW5kIE4zMTAgaW4gVWJ1bnR1IHN5c3RlbXMuIFdlIGhhdmUgDQo+IHN1ZmZp
Y2llbnQgZXhwZXJpZW5jZSB1c2luZyB0aGVtIHdpdGggR05VIFJhZGlvIE9PVCBtb2R1bGVzIGlu
IFVidW50dS4gQnV0LCBmb3IgDQo+IHNvbWXCoHJlYXNvbiwgb3VyIGN1cnJlbnQgcHJvamVjdCBj
YW4gb25seSBiZSBkb25lIGluIFdpbmRvd3MuIENhbiBzb21lb25lIHNoYXJlIHlvdXIgDQo+IGV4
cGVyaWVuY2Ugd2l0aCBVU1JQIGluIFdpbmRvd3M/IEhvdyBoYXJkIGlzIGl0IHRvIHNldCB1cCB0
aGUgd29ya2luZyBlbnZpcm9ubWVudCBpbiANCj4gV2luZG93cz8gV2XCoGhvcGUgdG8gc3RyZWFt
IHNpZ25hbHMgZnJvbSBVU1JQIFgzMTAgdG8gV2luZG93cyAodmlhIDEwR2JwcyBTUEYrwqBjYWJs
ZSkgZm9yIA0KPiByZWFsLXRpbWUgcHJvY2Vzc2luZyB1c2luZyBHTlUgUmFkaW8gY29tcGFuaW9u
IGFuZCBvdXIgb3duIE9PVCBtb2R1bGVzLiBJbiB0aGVvcnksIA0KPiBVYnVudHUgYW5kIFdpbmRv
d3Mgb2YgdGhlIHNhbWUgY29tcHV0ZXIgc2hvdWxkIGhhdmUgc2ltcGxlIEkvTyBhbmQgY29tcHV0
aW5nIA0KPiBwZXJmb3JtYW5jZSwgcmlnaHQ/DQo+DQo+IFRoYW5rIHlvdSBpbiBhZHZhbmNlIQ0K
Pg0KPiBIdWEuDQo+DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
