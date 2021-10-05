Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6BB422C50
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 17:23:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A22AC384B51
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 11:23:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bJBaKqRW";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E70838452F
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 11:22:36 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id a16so2939914qvm.2
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 08:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=C8KTKYHrZAeLa2WKNgFzROg6/7DxPNHZlIKoxPj1aNM=;
        b=bJBaKqRWw+eOhFMveBK2Sc96mRn9MW3UaT8x2c/IqPx9c3NiQMXxMcWu/kSoqk/CaH
         c7xuiMq/NKTLq75qisPNArevMGfc/21eC1lqm9XoYJq7LoNA3xfScY7oTPfAlPXjADoP
         G0qrJA4TYSCxKQH1HO0E33zHuhsJ4655tkQKP4i78//NdQ1roUm5TshQ1oaVtLJ2VfNs
         jSFMlezZs22u5opVw/s07mat2RuJOurv10mEQRIu8MenHPlZ9yMlONXNuY5rpqbQHrLW
         stp6quyAKO9KIM4ag+G+DJ801iYe1s7eWqtkyoa1kQP8nVlVYqJTR/Dc0EV+qsoT7KGN
         qsDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=C8KTKYHrZAeLa2WKNgFzROg6/7DxPNHZlIKoxPj1aNM=;
        b=gyVdGcmx63uT7n7MKrgbm8PhDxtIQRS4l8RP77j2wSlyiSgcGicm9aEn/Mg6oWISti
         fRNLYf0NWr6THM57Glb/dOC7zf04k5HDGRYCh9MbMKhsKnUv7suydCGZh8oAvU7gZs37
         oxxQc/ovF6IBM0Fk+3lj3ZGEV47g+jt0mD1AE5QGEFZsyrg+qRDSLJtH1b04i3QWGFU3
         txF0gxzXiIMbmdOqX9nPBH8kbEIGrbLuY5fJfr/sTFUTcgHqZJGfQzGwb7WvBSHwaPAw
         eI+7lvHIN4/y/BOSZRKEKX0BBlYxsMlICxZi77ZH1t9253/gGc3M2DT1laWM1zYbuPCj
         SEaQ==
X-Gm-Message-State: AOAM531i691K5xaS2Rs/sOtfsVWn0El5qVCxMijFD7nqa9zlEgVI74zg
	N9dxXDUVsHbE0KRzKsIoGFqgGAc/hN8=
X-Google-Smtp-Source: ABdhPJy1780Y0b2zjpECWs/iX2BV9ioVEHfoGB9gkgtVpDz4VQ3GwSSaUR1/ptcFY7sZow9qO2Uhfg==
X-Received: by 2002:a0c:9d4d:: with SMTP id n13mr28514174qvf.40.1633447355695;
        Tue, 05 Oct 2021 08:22:35 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id d11sm11935865qtb.39.2021.10.05.08.22.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 08:22:35 -0700 (PDT)
To: Huang Wei <weizardry@gmail.com>
References: <CAAopBk9+n6aMqQ+n27nezBeXc9AvtT89euJRWHDo39RcfzSLAw@mail.gmail.com>
 <fe7012b8-f339-c7f3-54d4-09c0fd1795cc@gmail.com>
 <CAAopBk9EyA4Pu4LFQ3LAV6mMKpKJ9NYLQmN4mmyKapb80Q2uxQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <5bd467ce-f7ba-6305-e291-bea7895f107f@gmail.com>
Date: Tue, 5 Oct 2021 11:22:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAAopBk9EyA4Pu4LFQ3LAV6mMKpKJ9NYLQmN4mmyKapb80Q2uxQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 5R7D2QZM3G6WSLXLQ4QFJBOEMAWDBICK
X-Message-ID-Hash: 5R7D2QZM3G6WSLXLQ4QFJBOEMAWDBICK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset set_start_time of USRP at runtime
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5R7D2QZM3G6WSLXLQ4QFJBOEMAWDBICK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0wNSAxMDo1NSBhLm0uLCBIdWFuZyBXZWkgd3JvdGU6DQo+IEhpIE1hcmN1cywN
Cj4NCj4gSW5pdGlhbGx5IHdoZW4gSSBjcmVhdGUgdGhlIFVTUlAgb2JqZWN0LCBJIHN5bmNocm9u
aXplIFVTUlAgdG8gDQo+IGV4dGVybmFsIFBQUyB0aG91Z2ggc2VsZi51c3JwMS5zZXRfdGltZV9u
ZXh0X3Bwcyhyb3VuZCh0aW1lLnRpbWUoKSkrMSkgDQo+IG1ldGhvZC4NCj4gYW5kIGluIHRoZSBm
dW5jdGlvbiBnZXRfc3RhcnQoKSwgSSB3cm90ZSBsaWtlOg0KPiDCoCBzZWxmLnN0b3AoKQ0KPiDC
oCBzZWxmLndhaXQoKQ0KPiDCoCBzZWxmLmRpc2Nvbm5lY3RfYWxsKCkNCj4gwqAgI3NlbGYudXNy
cDEuc3RvcCgpDQo+IMKgICNzZWxmLnVzcnAxLnN0YXJ0KCkNCj4gwqAgc2VsZi51c3JwMS5zZXRf
c3RhcnRfdGltZShzZWxmLnVzcnAxLmdldF90aW1lX25vdygpICsgDQo+IHVoZC50aW1lX3NwZWNf
dCg1KSkNCj4gwqAgc2VsZi5jb25uZWN0KC4uLikNCj4gwqAgc2VsZi5jb25uZWN0KC4uLikNCj4g
wqAgc2VsZi5jb25uZWN0KGZpbGVzaW5rLCBzZWxmLnVzcnAxKQ0KPiDCoCBzZWxmLnN0YXJ0DQo+
IEkgd2lzaCB0aGUgVVNSUCBzdG9wcywgYW5kIHJlc3RhcnRzIHRyYW5zbWlzc2lvbiA1IHNlYyBs
YXRlciBldmVyeSANCj4gdGltZSBJIHJ1biB0aGUgZ2V0X3N0YXJ0KCkgZnVuY3Rpb24uIEJ1dCB0
aGUgVVNSUCBkb2Vzbid0IHN0b3AsIGFuZCANCj4gd2lsbCBwcm9kdWNlcyBMTExMTExMTExMIG9u
IHRoZSBzY3JlZW4gYWZ0ZXIgYXJvdW5kIDUgc2VjLiBJZiBJIHVzZSANCj4gIsKgc2VsZi51c3Jw
MS5zZXRfY29tbWFuZF90aW1lKHNlbGYudXNycDEuZ2V0X3RpbWVfbm93KCkgKyANCj4gdWhkLnRp
bWVfc3BlY190KDUpKSIgaW5zdGVhZCBvZiBzZXRfc3RhcnRfdGltZSgpLCBpdCBkb2VzIHN0b3Ag
DQo+IHRyYW5zbWlzc2lvbiBmb3IgNSBzZWMgYW5kIHN0YXJ0LCBidXQgaXQncyBub3QgdGhlIGNv
cnJlY3QgY29tbWFuZCBmb3IgDQo+IHN0YXJ0IHRpbWUuDQo+DQo+IERvIHlvdSBoYXZlIGFueSBh
ZHZpY2UgaG93IGNhbiBJIG1ha2UgaXQgd29yaz8NCj4gSSBhcHByZWNpYXRlIGFsbCB5b3VyIGhl
bHAhDQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gV2VpDQo+DQpJIHN1c3BlY3QgdGhhdCB5b3UncmUg
YmV0dGVyIG9mZiBsb29raW5nIGludG8gdGFnZ2VkIHN0cmVhbXMgaW4gR251IA0KUmFkaW8gdGhh
dCBzdXBwb3J0ICJidXJzdHkiIHRyYW5zbWlzc2lvbjoNCg0KaHR0cHM6Ly93d3cuZ251cmFkaW8u
b3JnL2RvYy9kb3h5Z2VuL2NsYXNzZ3JfMV8xdWhkXzFfMXVzcnBfX3NpbmsuaHRtbA0KDQpZb3Ug
bWF5IGdldCBtb3JlIGhlbHAgb24gdGhhdCBmcm9tIHRoZSBkaXNjdXNzLWdudXJhZGlvIG1haWxp
bmcgbGlzdC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
