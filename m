Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D679498CE
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 22:07:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5459385408
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 16:07:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722974877; bh=Vf7jZQnWo7eiemTWawnNg1T2E23XqvUOY24DsIWFsB0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=O/v3TrsgUwYcoY4G5MHZfO5NqBV/45wBFA5kFCnA2u8Oh/sKpil61IWjqLpYptdyn
	 +CxqclGQQ1GmHmH93J3djoN7azhJ4mAZuqPj8adXF9jjGgnwgofZBmHSLCKQNLbNbF
	 YGm+Wk0XObnF9ksyaVxsQCkYJ/4ghJv4tisC8HK0wMeTWz+6rnoVX6lmyccp79H5za
	 8J/TUo1CQJqX9Dz7umVJEL1K9KiXlI+Ccf/AZt19KTONdJDK10Jyuw7OEllC6ocT4N
	 PCAJmkp3oLyfgrrSC9U9gMrfiShUC2fqdMlgmUa2ufTcJgtSlvWv6m67yS9ZmQVw2e
	 2r8BL39u3zveA==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 3510F383314
	for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2024 16:07:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iOmIgNon";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7a1d42da3baso58012285a.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 13:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722974846; x=1723579646; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V/i/pb9KQpaTtxLuCdH1q2UhjVGMhIbS+cT5B94ayso=;
        b=iOmIgNonba/eLVN05qKh0U0ovlz5Vp+TeIdZCnf61Rb1tFyQnYpeG/H1VyhWXMh6g4
         x8YqmAqJ5odQK5bsLWKUwln8BrGzEKoyXoi8an7v7xAEmsyTCQLPbYmsZ0LdDZSOdANx
         f9YsG1c9TqrQqbdyKBS5oCHnLA8LQ2s4FVx++gQ9go05a/JXN5LgsqUy5p4x8TNE4yEi
         KjJPugsMjIZxPqBci5629kY53s9EtCQJT/648zMkr262lkPJLnY5MIQDPLli6EZPVTLM
         sIvklG46AKNvN0xodfCktCIfKU9rcLNjDMBN6GYhTmuD+PcDjcYQVQ0qH4yKHtjR19Wx
         0TAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722974846; x=1723579646;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V/i/pb9KQpaTtxLuCdH1q2UhjVGMhIbS+cT5B94ayso=;
        b=Envs8R0p1kzVpWZ6KIS7U3rzs4HrNGuAjp8U1D6r9ggVNJjz26R6aymU+DEiVyp3iZ
         FoittjKQ2ICEwoZOOAiHKdw7FKwyJxrRG/7rkl9GZQSZ3Qf8wzfENLRhO6EXc7yheyE8
         dsH+c7iEdBPEt7VYxUwwZQ99VRPubCUMPSuFJJGZqML2PPoHjLKUyYldT5ApvthHjp4/
         aXxXu0yu9qpfWLB/zP26AYY5Q0cwj+9o/KBBjjiEh+8DGpJ+PZjcgzDXv/+mBPIAZF6S
         gQyCCVno+Q1ZjSRVKMLsttyDjE8uR59TksVlVQT3Ovu4E727a8iv1E/6raMxLgWwSdvj
         V6VQ==
X-Gm-Message-State: AOJu0Ywa55Xy8NJ5BSsIFXw9BzWT2mUUsnwYExQeuGu4ffBxsP5E3FZF
	BHmKKCxyBoVIjqPZuMl+JDsmqTuITGqtKOhQfJ0xVjSxllg+MUAzj4fVMw==
X-Google-Smtp-Source: AGHT+IEJjm6vRYa2DrWr/muncZRYAnG9AMl/uWDe4g/ahrnCXK+hfwOaixYeTQSJzQQaS+WxBxYKXw==
X-Received: by 2002:a05:6214:300c:b0:6bb:9cb9:e1e9 with SMTP id 6a1803df08f44-6bb9cb9e6damr216344566d6.33.1722974846318;
        Tue, 06 Aug 2024 13:07:26 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bb9c839fa0sm49227006d6.93.2024.08.06.13.07.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 13:07:25 -0700 (PDT)
Message-ID: <a8c707e7-4305-44d9-aeb2-765d792b5c6f@gmail.com>
Date: Tue, 6 Aug 2024 16:07:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
 <CAHVeOW8UJErf8RMuajePLpiyVAnp5qEtyxDe1T9Fo+i27cHRJg@mail.gmail.com>
 <5dcedd39-5b0d-4ba7-8627-817299665d80@gmail.com>
 <CAHVeOW8O1F75N9EpuzjOw2J-FncKoAUatp=5sq_Qddg7iKUKKw@mail.gmail.com>
 <2ac6c048-3459-4fef-a64b-566ee5728a99@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2ac6c048-3459-4fef-a64b-566ee5728a99@ettus.com>
Message-ID-Hash: FM2Q3WG4WVDJVVTZUORPDKXRD3THO6HN
X-Message-ID-Hash: FM2Q3WG4WVDJVVTZUORPDKXRD3THO6HN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid permissions to write images destination on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FM2Q3WG4WVDJVVTZUORPDKXRD3THO6HN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDgvMjAyNCAxMTozMCwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhpIENocmlzLCBN
YXJjdXMgYW5kIFNjb3R0LA0KPg0KPiBKdXN0IHRvIGJlIHRoZSBiYWxhbmNpbmcgTWFyY3VzIGhl
cmU6IEkgbGlrZSB0aGUgYXBwcm9hY2ggb2YgdXNlciANCj4gZG93bmxvYWRhYmlsaXR5LiBJbiB0
ZXN0aW5nIGVudmlyb25tZW50cywgd2UgaGVhdmlseSBhZHZvY2F0ZSBmb3IgDQo+IGlzb2xhdGlu
ZyBpbnN0YWxsYXRpb25zIGZyb20gdXNlci1kb25lIGRvd25sb2FkcywgZm9yIGV4YW1wbGUhIEkg
dGhpbmsgDQo+IHdoYXQgTWFyY3VzIHRyaWVkIHRvIHNheSBpczogSGlzIDJjdCBhcmUgdGhhdCB5
b3Ugc2hvdWxkbid0IGJlIGFmcmFpZCANCj4gdG8gcnVuIGEgdGhpbmcgdGhhdCB5b3Ugd2FudCB0
byBoYXZlIHN5c3RlbS13aWRlIGNvbnNlcXVlbmNlcyB3aXRoIA0KPiBzdWRvLiBJJ20gbm90IGRp
c2FncmVlaW5nLCBJJ20ganVzdCBub3Qgc3VyZSB5b3Ugd2FudCB0aGUgc3lzdGVtLXdpZGUgDQo+
IGFzcGVjdCBoZXJlIDopDQo+DQo+IEFzIGEgbWF0dGVyIG9mIGZhY3QsIHlvdSBjYW4ganVzdCBj
b25maWd1cmUgdGhlIHBhdGggd2hlcmUgVUhEIGxvb2tzIA0KPiBieSBzZXR0aW5nIHRoZSBVSERf
SU1BR0VTX0RJUiBlbnZpcm9ubWVudCB2YXJpYWJsZSwgZS5nLiBpbiB5b3VyIA0KPiB+Ly5wcm9m
aWxlLiAoSXQgZG9lc24ndCBzZWVtIGxpa2Ugd2UgY3VycmVudGx5IGhhdmUgYSBwcmVmZXJlbmNl
cyANCj4gc2V0dGluZyBmb3IgdGhhdCBpbiB1aGQuY29uZjsgbWF5YmUgd2Ugc2hvdWxkLikNCj4N
Cj4gQmVzdCByZWdhcmRzLA0KPiBNYXJjdXMNCkkgZ3Vlc3MgaXQgZGVwZW5kcyBvbiB3aGVyZSB0
aGUgb3ZlcmFsbCBVSEQgaW5zdGFsbCBnb3QgaW5zdGFsbGVkLiBJZiANCml0J3MgaW5zdGFsbGVk
IHN5c3RlbS13aWRlIChhcyBpcyB0aGUgY2FzZSBmb3IgaW5zdGFsbHMgZnJvbQ0KIMKgIHRoZSBw
YWNrYWdlZC1ieS10aGUtZGlzdHJvIHBhY2thZ2VzKSwgdGhlbiBJIHNlZSBubyByZWFzb24gbm90
IHRvIA0KYWxzbyBoYXZlIHRoZSBpbWFnZXMgZG93bmxvYWQgYXZhaWxhYmxlIHN5c3RlbS13aWRl
IGFzDQogwqAgd2VsbC4NCg0KDQo+DQo+IE9uIDA2LjA4LjI0IDE3OjA4LCBDaHJpcyBHb3JtYW4g
d3JvdGU6DQo+PiBUaGFuayB5b3UgTWFyY3VzLA0KPj4NCj4+IEkgc3RhbmQgY29ycmVjdGVkLg0K
Pj4NCj4+IFRoZSBjb21tYW5kIHNob3VsZCBiZQ0KPj4NCj4+IHN1ZG8gL3Vzci9sb2NhbC9saWIv
dWhkL3V0aWxzL3VoZF9pbWFnZXNfZG93bmxvYWRlci5weQ0KPj4NCj4+IFRoaXMgc2hvdWxkIHB1
dCB5b3VyIGZpbGVzIGluIHRoZSBjb3JyZWN0IGxvY2F0aW9uIGZvciB0aGUgb3RoZXINCj4+IHBy
b2dyYW1zIHRvIGZpbmQuDQo+Pg0KPj4gSG9wZSB0aGlzIGhlbHBzLg0KPj4NCj4+IENocmlzDQo+
Pg0KPj4gT24gVHVlLCBBdWcgNiwgMjAyNCBhdCAxMDozMeKAr0FNIE1hcmN1cyBELiBMZWVjaCAN
Cj4+IDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4gT24gMDYvMDgvMjAyNCAx
MDoxMywgQ2hyaXMgR29ybWFuIHdyb3RlOg0KPj4+PiBIaSBTY290dCwNCj4+Pj4NCj4+Pj4gSSBi
ZWxpZXZlIHRoZSBwcm9ibGVtIHlvdSdyZSBleHBlcmllbmNpbmcgaXMgbGludXggbm90IGFsbG93
aW5nIHlvdSB0bw0KPj4+PiB3cml0ZSB0byB0aGUgL3Vzci9sb2NhbCBkaXJlY3Rvcnkgc3RydWN0
dXJlIGFzIGl0IGlzIG5vdCBvd25lZCBieSB5b3VyDQo+Pj4+IHVzZXIuwqAgSSB0aGluayB5b3Ug
aGF2ZSBhIGNvdXBsZSBvZiBjaG9pY2VzIHRvIGRvd25sb2FkIHRoZSBpbWFnZXMuDQo+Pj4+IFRo
ZSBmaXJzdCBpcyB0byBpbnN0YWxsIHRoZW0gaW50byB0aGUgZGVmYXVsdCBkaXJlY3Rvcnkgd2l0
aCBzdWRvLA0KPj4+PiB3aGljaCBJIHdvdWxkbid0IHJlY29tbWVuZCwgdGhlIHNlY29uZCBpcyBp
bnN0YWxsaW5nIHRoZSBwYWNrYWdlcyBpbnRvDQo+Pj4+IGEgZGlmZmVyZW50IGRpcmVjdG9yeSB3
aXRoIHRoZSAtaSBzd2l0Y2ggdG8gdWhkX2ltYWdlc19kb3dubG9hZGVyLnB5Lg0KPj4+PiBQZXJo
YXBzIHJ1biB0aGUgZm9sbG93aW5nIGNvbW1hbmRzDQo+Pj4+DQo+Pj4+IGNkIH4vDQo+Pj4+IG1r
ZGlyIHVoZF9pbWFnZXMNCj4+Pj4gL3Vzci9sb2NhbC9saWIvdWhkL3V0aWxzL3VoZF9pbWFnZXNf
ZG93bmxvYWRlci5weSAtaSB+L3VoZF9pbWFnZXMNCj4+Pj4NCj4+Pj4gVGhhdCBzaG91bGQgZ2V0
IHlvdSB0aGUgZG93bmxvYWQgaW1hZ2VzIEkgdGhpbmsuDQo+Pj4+DQo+Pj4+IEhvcGUgdGhpcyBo
ZWxwcywNCj4+Pj4NCj4+Pj4gQ2hyaXMNCj4+PiBUaGlzIHdpbGwgY29tZSB3aXRoIHRoZSBhZGRl
ZCAiYm9udXMiIHRoYXQgdG9vbHMgdGhhdCBleHBlY3QgdGhlIGltYWdlcw0KPj4+IHRvIGJlIGlu
ICJ0aGUgc3RhbmRhcmQgbG9jYXRpb24iIHdpbGwNCj4+PiDCoMKgwqAgYmUgdW5hYmxlIHRvIGZp
bmQgdGhlbSB1bmxlc3MgeW91IHNldCB0aGUgYXBwcm9wcmlhdGUgZW52aXJvbm1lbnQNCj4+PiB2
YXJpYWJsZXMgdG8gdGVsbCB0aGUgdG9vbHMgd2hlcmUgdG8gZmluZCB0aGVtLg0KPj4+DQo+Pj4g
VGhlcmUncyBub3RoaW5nIHdyb25nIHdpdGggaW5zdGFsbGluZw0KPj4+IGZpbGVzLXRoYXQtYXJl
LWNvbmNlcHR1YWxseS1zeXN0ZW0tZmlsZXMgaW4gdGhlIHN0YW5kYXJkICJzeXN0ZW0gZmlsZSIN
Cj4+PiBwbGFjZXMsDQo+Pj4gwqDCoMKgIHVzaW5nIHN1ZG8uDQo+Pj4NCj4+PiBUaGlzIHdob2xl
IHRoaW5nIGlzIGJhc2ljYWxseSAibGl2aW5nIGFuZCB3b3JraW5nIGFzIGEgZGV2IG9uDQo+Pj4g
PFVuaXgtZmFtaWx5LU9TPiIuwqAgSWYgdGhhdCBpcyB0byBiZSB0aGUgcGxhdGZvcm0gb2YgY2hv
aWNlDQo+Pj4gwqDCoMKgIGluIHRoaXMgY2FzZSwgdGhlbiBpdCB3b3VsZCBiZSBwcm9kdWN0aXZl
IHRvIGxlYXJuIGhvdyB0byBsaXZlIGFuZA0KPj4+IHdvcmsgb24gdGhlIE9TLCBpbmNsdWRpbmcg
bGVhcm5pbmcgd2hhdCBmaWxlDQo+Pj4gwqDCoMKgIHBlcm1pc3Npb25zIGFyZSwgYW5kIGhvdyB0
byBsaXZlIHdpdGggdGhlbSBhbmQgdXNlIHRoZW0gDQo+Pj4gYXBwcm9wcmlhdGVseS4NCj4+Pg0K
Pj4+IEp1c3QgbXkgJDAuMDIsIGhhdmluZyBiZWVuIGEgIlVuaXgtZmFtaWx5LU9TIiBndXkgc2lu
Y2UgSSB3YXMgYQ0KPj4+IHRlZW5hZ2VyLS0taW4gMTk3OS4NCj4+Pg0KPj4+DQo+Pj4+IE9uIFR1
ZSwgQXVnIDYsIDIwMjQgYXQgNDoxNuKAr0FNIERyLiBTY290dCBCZXN0IHZpYSBVU1JQLXVzZXJz
DQo+Pj4+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+Pj4+PiBEZWFyIFVT
UlAtVXNlcnMgR3JvdXAsDQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+PiBJIGluc3RhbGxlZCBV
SEQgNC43IG9uIGFuIFVidW50dSBNaW5pUEMgZm9sbG93aW5nIHRoZSBvbmxpbmUgDQo+Pj4+PiBp
bnN0cnVjdGlvbnMuwqAgSXQgc2VlbXMgdG8gYmUgd29ya2luZyBPSywgc28gSSB0cmllZCB1cGRh
dGluZyB0aGUgDQo+Pj4+PiBmaXJtd2FyZSBmb3IgYW4gTjIwMCB0aGF0IEkgcGlja2VkIHVwIGFz
IGEgdGVzdCB2ZWhpY2xlIGZvciBteSBzZXQgDQo+Pj4+PiBvZiBuZXcgTjMyMHMuwqAgSSByYW4g
aW50byBhIGJ1ZyB0aGF0IEkgaGF2ZSBub3QgZm91bmQgYW4gYW5zd2VyIA0KPj4+Pj4gdG8sIGFz
IHNlZW4gaW4gdGhlIGZvbGxvd2luZyBUZXJtaW5hbCBzY3JpcHQgd2l0aCBVSEQgY29tbWFuZHMg
DQo+Pj4+PiBzaG93biBpbiBCT0xEIFRZUEU6DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+PiBk
cnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3VoZC9ob3N0L3V0aWxzJCB1aGRfZmluZF9kZXZpY2Vz
DQo+Pj4+Pg0KPj4+Pj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuNC4w
OyBCb29zdF8xMDc0MDA7IA0KPj4+Pj4gVUhEXzQuNy4wLjAtMC1nYTVlZDE4NzINCj4+Pj4+DQo+
Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
Pj4+Pj4NCj4+Pj4+IC0tIFVIRCBEZXZpY2UgMA0KPj4+Pj4NCj4+Pj4+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4+Pg0KPj4+Pj4gRGV2aWNl
IEFkZHJlc3M6DQo+Pj4+Pg0KPj4+Pj4gwqDCoMKgwqDCoCBzZXJpYWw6IEUyUjE2VEVVTg0KPj4+
Pj4NCj4+Pj4+IMKgwqDCoMKgwqAgYWRkcjogMTkyLjE2OC4xMC4yDQo+Pj4+Pg0KPj4+Pj4gwqDC
oMKgwqDCoCBuYW1lOg0KPj4+Pj4NCj4+Pj4+IMKgwqDCoMKgwqAgdHlwZTogdXNycDINCj4+Pj4+
DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+Pg0KPj4+Pj4gZHJzY290dEBVYnVudHU6fi93b3Jr
YXJlYS91aGQvaG9zdC91dGlscyQgdWhkX3VzcnBfcHJvYmUNCj4+Pj4+DQo+Pj4+PiBbSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS40LjA7IEJvb3N0XzEwNzQwMDsgDQo+Pj4+
PiBVSERfNC43LjAuMC0wLWdhNWVkMTg3Mg0KPj4+Pj4NCj4+Pj4+IFtJTkZPXSBbVVNSUDJdIE9w
ZW5pbmcgYSBVU1JQMi9OLVNlcmllcyBkZXZpY2UuLi4NCj4+Pj4+DQo+Pj4+PiBFcnJvcjogUnVu
dGltZUVycm9yOg0KPj4+Pj4NCj4+Pj4+IFBsZWFzZSB1cGRhdGUgdGhlIGZpcm13YXJlIGFuZCBG
UEdBIGltYWdlcyBmb3IgeW91ciBkZXZpY2UuDQo+Pj4+Pg0KPj4+Pj4gU2VlIHRoZSBhcHBsaWNh
dGlvbiBub3RlcyBmb3IgVVNSUDIvTi1TZXJpZXMgZm9yIGluc3RydWN0aW9ucy4NCj4+Pj4+DQo+
Pj4+PiBFeHBlY3RlZCBGUEdBIGNvbXBhdGliaWxpdHkgbnVtYmVyIDExLCBidXQgZ290IDk6DQo+
Pj4+Pg0KPj4+Pj4gVGhlIEZQR0EgYnVpbGQgaXMgbm90IGNvbXBhdGlibGUgd2l0aCB0aGUgaG9z
dCBjb2RlIGJ1aWxkLg0KPj4+Pj4NCj4+Pj4+IFBsZWFzZSBydW46DQo+Pj4+Pg0KPj4+Pj4NCj4+
Pj4+DQo+Pj4+PiAiL3Vzci9sb2NhbC9saWIvdWhkL3V0aWxzL3VoZF9pbWFnZXNfZG93bmxvYWRl
ci5weSINCj4+Pj4+DQo+Pj4+PiAiL3Vzci9sb2NhbC9iaW4vdWhkX2ltYWdlX2xvYWRlciIgXA0K
Pj4+Pj4NCj4+Pj4+IMKgwqDCoMKgwqAgLS1hcmdzPSJ0eXBlPXVzcnAyLGFkZHI9MTkyLjE2OC4x
MC4yIg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+Pg0KPj4+Pj4gZHJzY290dEBVYnVudHU6fi93b3JrYXJl
YS91aGQvaG9zdC91dGlscyQgDQo+Pj4+PiAvdXNyL2xvY2FsL2xpYi91aGQvdXRpbHMvdWhkX2lt
YWdlc19kb3dubG9hZGVyLnB5DQo+Pj4+Pg0KPj4+Pj4gW0lORk9dIFVzaW5nIGJhc2UgVVJMOiBo
dHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS8NCj4+Pj4+DQo+Pj4+PiBbSU5G
T10gSW1hZ2VzIGRlc3RpbmF0aW9uOiAvdXNyL2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMNCj4+Pj4+
DQo+Pj4+PiBbRVJST1JdIEludmFsaWQgcGVybWlzc2lvbnMgdG8gd3JpdGUgaW1hZ2VzIGRlc3Rp
bmF0aW9uDQo+Pj4+Pg0KPj4+Pj4gZHJzY290dEBVYnVudHU6fi93b3JrYXJlYS91aGQvaG9zdC91
dGlscyQNCj4+Pj4+DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+IFVIRCBvbiBVYnVudHUgaXMgYWJsZSB0
byBmaW5kIHRoZSBOMjAwLCBhbmQgaXMgYWJsZSB0byBwcm9iZSB0aGUgDQo+Pj4+PiBOMjAwIHdp
dGggdGhlIHNlY29uZCBVSEQgY29tbWFuZC7CoCBIb3dldmVyLCB0aGUgdGhpcmQgY29tbWFuZCBp
cyANCj4+Pj4+IC91c3IvbG9jYWwvbGliL3VoZC91dGlscy91aGRfaW1hZ2VzX2Rvd25sb2FkZXIu
cHksIHdoaWNoIHByb2R1Y2VzIA0KPj4+Pj4gdGhlIGZvbGxvd2luZyBFUlJPUiBNRVNTQUdFIC0g
SW52YWxpZCBwZXJtaXNzaW9ucyB0byB3cml0ZSBpbWFnZXMgDQo+Pj4+PiBkZXN0aW5hdGlvbi7C
oCBUaGUgTjIwMCB3YXMgbm90IGJvb3RlZCBpbiBTQUZFIE1PREUsIHNvIGl0IHNob3VsZCANCj4+
Pj4+IGJlIGF2YWlsYWJsZSBmb3IgZmlybXdhcmUgdXBkYXRlcy4NCj4+Pj4+DQo+Pj4+Pg0KPj4+
Pj4NCj4+Pj4+IEkgaGF2ZSBiZWVuIHVuYWJsZSB0byBsb2NhdGUgYW55IGluZm9ybWF0aW9uIG9u
bGluZSBmb3IgaG93IHRvIA0KPj4+Pj4gZWxpbWluYXRlIHRoaXMgcHJvYmxlbSBzbyBJIGNhbiB3
cml0ZSBmaXJtd2FyZSB1cGRhdGVzIHRvIHRoZSANCj4+Pj4+IE4yMDAuwqAgSXMgYSBkb2N1bWVu
dCBhdmFpbGFibGUgZm9yIGZpeGluZyB0aGlzIHByb2JsZW0/wqAgSWYgbm90LCANCj4+Pj4+IGNh
biB5b3UgdGVsbCBtZSBob3cgdG8gZml4IHRoaXMgZmlybXdhcmUgdXBkYXRlIHByb2JsZW0gb24g
dGhlIE4yMDA/DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+PiBUaGFua3MgaW4gYWR2YW5jZSBm
b3IgeW91ciBhc3Npc3RhbmNlIHdpdGggZml4aW5nIHRoaXMgcHJvYmxlbS4NCj4+Pj4+DQo+Pj4+
Pg0KPj4+Pj4NCj4+Pj4+IFJlc3BlY3RmdWxseSwNCj4+Pj4+DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+
IFNjb3R0DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+Pj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+Pj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+Pj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tDQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
