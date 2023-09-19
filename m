Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9017A6201
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 14:05:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37E1B38651F
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 08:05:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695125130; bh=mDOr/I22V/J70xYI24kOH2Jg7b+LgRkNr/dnEs2sUIc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oWDZhMFf69AKtvJk4BiCNJFgIIHtESDeJdNV10ZY/yIdyyui23xjWcszN/hDl3nA4
	 UnCpfAhyLmal0H0O61nXecsGNgr79H32FxMvI9VBMpWlQIgfM62cXsRZxJ1sFY2lYO
	 3BMxRrBWK68kdiMLPVtrAfNXxF+S+3qQP+wKBoEVmg3c4ePhF6HKlRX8XCjstVcMdz
	 eBtBpRIK6mY9cjR/Rgd6qIRD1g9HCQBw2u+awrlVm6I5+nFdIdUGvuPAHoqC5Y/eh0
	 bj+k1Bj+jMuYMyhQUuDko6cA6J2r1Boz3/zwLSKF0/Lvdh/zLsRUYORqQvNVlbL6LP
	 pgHvl8d8olVLQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id BF26B3862E0
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 08:04:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UqU9dy6E";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5230a22cfd1so7032365a12.1
        for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 05:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695125059; x=1695729859; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YzCvb0TDnZM2IMmPa+P9tQM3JPUz/br8IWRvXpyx+AA=;
        b=UqU9dy6E5YBpFM7OGoO83zRRveoQtt7M7Jt90WHO7bnxTWarTpJ58AP1iSTLT7rqHX
         fP4WxruiB5AJq/Uvgy/DbuT34j9uJyNfbTH9Y6ul1rdEWKdtXjI8/6GzZOQ+KCFJ9Vjx
         JUlrAJwIDXCjHUS2o2VOBTNiePuk8Up+RTkctRTYvBH1K6CR3rjui1hCkpsQBi4jAXBD
         y3hCFLu7Fjpdjkpe5VnvHaU3bAXbokXHUlYG7B0z8tLuSokI1Rq8aZhvNvKU3gyPB+a0
         xPoHgQwG9yxyx2ee9zqQJtJzghcFRQxqouz3zKdpY0erT6AysBgGlYvVHFrIyBTMm7zd
         gQpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695125059; x=1695729859;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YzCvb0TDnZM2IMmPa+P9tQM3JPUz/br8IWRvXpyx+AA=;
        b=FwZMZZ/GPP71S2Wt9uV2Hm8hgijy+n82CCpCDrOmUNHHy/quNnq6bUxdNUriu6wqE3
         vf4f+C6Mb/iUa0PAfakY2aTVf3x0hZZgvAnI7nl0hTUMyDvKt5HxlU5rt3Syud5Jyph7
         rsG2Um6TQo22+z4tv8qQHRbETmLDF0pK0jPyaXX+9LI+XhgioTl3wZMuoYVkW2uNyIz+
         Vk8B6PTGH/RTM0DA7Bh9T9VNuXEL9SPnUVNzw1icGz7VCh71Xr+V7kLJA+08oyJDZ0XS
         LWy8vLj0Fv0eH9JxsvjyjuN17LAJOlcR1AoUZF+cl+LdcCm0FzpKYVrwMeKzmYJ/KxTx
         Favg==
X-Gm-Message-State: AOJu0YwbuMVII/lNNRHCg0XpF57wkrZANfXVn4KHFKxj8qLsRTLIrEKt
	fkn69uhDDvyBbLXrvjk/TKk1HewgyO8N1i6oJ4pgRA==
X-Google-Smtp-Source: AGHT+IHdXRrD6Qhz4w12y2TduKfNhM7LDRU8kEOSIXLp22F58BvVy0s8sfh1Xp93hlkqD9Ss+nTeZw==
X-Received: by 2002:aa7:d74b:0:b0:522:3ef1:b1d with SMTP id a11-20020aa7d74b000000b005223ef10b1dmr8041961eds.6.1695125058815;
        Tue, 19 Sep 2023 05:04:18 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3861:1900:10fc:1619:bea3:90d1? ([2001:9e8:3861:1900:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id z18-20020a1709060ad200b009887f4e0291sm7662906ejf.27.2023.09.19.05.04.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 05:04:18 -0700 (PDT)
Message-ID: <1b003a13-10d7-0e9a-bcee-9398ec0c84ed@ettus.com>
Date: Tue, 19 Sep 2023 14:04:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI@lists.ettus.com>
Message-ID-Hash: PEXI3OT4INL3AQYZSFPIW4ZN2FCEADGN
X-Message-ID-Hash: PEXI3OT4INL3AQYZSFPIW4ZN2FCEADGN
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PEXI3OT4INL3AQYZSFPIW4ZN2FCEADGN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDE5LjA5LjIzIDA5OjI0LCBvdXphbl90c0Bob3RtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gRGVhciBNYXJjdXMsDQo+DQo+IFRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4gSSB0aGluayB5
b3VyIFJGIGVuZ2luZWVycyBoYXZlIGFuIGFpbSB0byBoYXZlIHRoZSBwYWRzIG9uIHRoZSANCj4g
UENCIGZvciBieXBhc3NpbmcgdGhlIHN3aXRjaGVzLiBJbiBvdGhlciBjYXNlLCB3aHkgZG8geW91
IGhhdmUgdGhlc2UgcGFkcyBpZiB0aGV5IA0KPiBoYXZlbid0IHRlc3RlZCBpZiB0aGV5IGFyZSB3
b3JraW5nID8NCj4NCldoZW4geW91IGJ1aWxkIGEgY29tcGxleCBkZXZpY2UsIHlvdSBsZWF2ZSBv
cHRpb25zIHRvIG1ha2UgdGhlIGJvYXJkIHdvcmsgZGlmZmVyZW50bHksIGZvciANCmV4YW1wbGUg
Zm9yIGludmVzdGlnYXRpbmcgZmF1bHRzIGluIG1hbnVmYWN0dXJpbmcgbGF0ZXIgb24uIEhhdmlu
ZyB0aGF0IHRyYWNlIHRoZXJlIGNvc3RzIA0KZXhhY3RseSBub3RoaW5nLiBJdHMgZXhpc3RlbmNl
IGRvZXNuJ3QgbWVhbiBhbnlvbmUgZXZlciBpbnRlbmRlZCBpdCB0byBiZSB1c2VkIGJ5IGN1c3Rv
bWVycyENCg0KSXQgcmVhbGx5IGRvZXNuJ3QgbWF0dGVyIOKAkyB3ZSBoYXZlIG5vIGtub3dsZWRn
ZSBvZiB0aGUgY2hhcmFjdGVyaXN0aWNzIG9mIHRoYXQgcGF0aCwgDQpiZWNhdXNlIGl0J3Mgbm90
IHNvbWV0aGluZyBxdWFsaWZpZWQgZm9yIHVzYWdlLiBTbywgSSBjYW4ndCBnaXZlIHlvdSBtZWFz
dXJlbWVudHMgd2UgZG9uJ3QgDQpoYXZlLg0KDQo+IElzIGl0IHBvc3NpYmxlIGlmIHlvdSBjb3Vs
ZCBhc2sgeW91ciBSRiBlbmdpbmVlcnMgd2hpY2ggY29tcG9uZW50IHZhbHVlcyB3ZSBuZWVkIHRv
IA0KPiBsb2NhdGUgb24gdGhlc2UgcGFkcyA/DQo+DQpObywgc29ycnkuIFRoYXQgYm9hcmQgd2Fz
IGRlc2lnbmVkIHNvbWUgdGVuIHllYXJzIGFnbywgbW9zdCBvZiB0aGUgZm9sa3MgdGhhdCB3ZXJl
IGFyb3VuZCANCmJhY2sgaW4gdGhlIGRheSBoYXZlIG1vdmVkIG9uIHRvIG90aGVyIGRlcGFydG1l
bnRzLCBhbmQgd2hhdCBkbyB5b3UgZXhwZWN0IHRvIGNvbWUgYmFjayBhcyANCmFuc3dlcj8NClRo
ZXkgY291bGRuJ3QgcXVhbGlmeSB3aXRoIHRoZWlyIGJvYXJkLCB1c2luZyB0aGVpciBjb21wb25l
bnRzIGFuZCB0aGVpciBzb2xkZXJpbmcgDQp0ZWNobmlxdWVzIGFuZCBxdWFsaXRpZXMgd2hhdCB5
b3Ugd291bGQgYWNoaWV2ZSBvbiB5b3VyIGJvYXJkLiBTbywgdGhpcyBpcyByZWFsbHkgYSBtb290
IA0KcXVlc3Rpb24gdG8gYXNrIQ0KDQpCdXQ6IEkgbWVhbiwgdGhlc2UgYXJlIGp1c3QgZHVtbXkg
Y29ubmVjdGlvbiBwYXJ0cywgc28geW91J2Qgc3RhcnQgd2l0aCBhIDDOqSBhbmQgdGhlbiBsb29r
IA0KYXQgU21pdGggY2hhcnRzIGZvciBsb25nIGVub3VnaCB1bnRpbCB5b3UgY29tcGVuc2F0ZWQg
YW55IG1pc21hdGNoIGludHJvZHVjZWQgYnkgdGhlIHNtYWxsIA0KcGFpciBvZiBpbXBlZGFuY2Ug
ZGlzY29udGludWl0aWVzIHdpdGggYSBaXzAgdHJhY2Ugb2YgZGVmaW5lZCBsZW5ndGggaW4gYmV0
d2VlbjsgaXQgd2lsbCANCmRlcGVuZCBvbiB0aGUgZnJlcXVlbmN5Lg0KDQo+IDUwLTU0IGRCIFRY
L1JYIGlzb2xhdGlvbiBpcyB2ZXJ5IGxvdyBhcyBhIGR5bmFtaWMgcmFuZ2Ugb2YgbWFueSBhcHBs
aWNhdGlvbnMuDQo+DQpXZWxsLCB0aGF0J3Mgbm90IHJlYWxseSB0cnVlOyB2ZXJ5IGZldyBpbnRl
Z3JhdGVkIHRyYW5zY2VpdmVycyBhY2hpZXZlIG1vcmUgKGZvciB0aGUgc2FtZSANCnJlYXNvbnMg
dGhhdCB0aGUgVVNSUCBkb2Vzbid0IGFjaGlldmUgbW9yZTogeW91IGhhdmUgYSBsaW1pdGVkIG51
bWJlciBvZiBsYXllcnMsIA0KYWZmb3JkYWJsZSBib2FyZCBzdWJzdHJhdGUsIGFuZCBhcyBNYXJj
dXMgc2F5cywgaW50ZWdyYXRlZCB0cmFuc2NlaXZlcnMgd2l0aGluIHRoZSBzYW1lIGNoaXApLg0K
DQpZb3UncmUgYmFya2luZyB1cCB0aGUgd3JvbmcgdHJlZSBpZiB5b3UgbmVlZCBtb3JlOiB0aGF0
J3MgcmVhbGx5IG5vdCBzb21ldGhpbmcgdGhhdCANCmRldmljZXMgYmFzZWQgb24gY2hpcHMgdGhh
dCBkbyBib3RoIHRoZSB0cmFuc21pdCBhbmQgcmVjZWl2ZSBzaWRlIGluIHRoZSBzYW1lIElDIHBh
Y2thZ2UgDQpjYW4gdHlwaWNhbGx5IGFjaGlldmUgYXQgcmVhc29uYWJsZSBjb3N0Lg0KDQpUaGVy
ZSdzIHBsZW50eSBvZiBleGFtcGxlcyBvZiBkZXZpY2VzIHdpdGggaXNvbGF0aW9ucyBubyBiZXR0
ZXIgdGhhbiB0aGF0IHN0aWxsIHdvcmtpbmcgaW4gDQpmdWxsIGR1cGxleCAoZm9yIGV4YW1wbGUs
IEkga25vdyBvZiBhIE11bmljaC1kZXNpZ25lZCBzZXQgb2YgV2lmaSBjaGlwc2V0cyB0aGF0IGRv
IA0Kc2VsZi1pbnRlcmZlcmVuY2UgY2FuY2VsbGF0aW9uOyB5b3UgY2FuIGJlIHJlbGF0aXZlbHkg
c3VyZSB0aGF0IGEgMjDigqwgd2lmaSBjYXJkIGRlc2lnbmVkIA0KYnkgYW4gT0VNIGhhcyBubyBi
ZXR0ZXIgVFgvUlggaXNvbGF0aW9uIHRoYXQgdGhhdCkuIEl0J3MgaW4gdGhlIGVuZCBhIHF1ZXN0
aW9uIG9mIHF1YWxpdHkgDQpvZiB5b3VyIGFsZ29yaXRobXMsIGFuZCB3aGV0aGVyIHlvdXIgZXhw
ZWN0YXRpb25zIG1hdGNoIHRoZSBoYXJkd2FyZSB5b3UgYm91Z2h0Lg0KDQpTdXJlLCBpZiB5b3Ug
bmVlZCB0byBidWlsZCBhIGhpZ2gtUFJGIGFpcmNyYWZ0IHJhZGFyLCB0aGlzIG1pZ2h0IGJlIHRv
byBsaXR0bGUgaXNvbGF0aW9uIA0Kd2l0aG91dCBleHRlcm5hbCBhbXBsaWZpY2F0aW9uOyBidXQg
bWF5YmUgdGhlIEIyeHgganVzdCBpc24ndCB0aGUgZGV2aWNlIGZvciB0aGF0IGtpbmQgb2YgDQph
cHBsaWNhdGlvbiA6KQ0KDQo+IEZvciBvdXIgYXBwbGljYXRpb24sIHRoaXMgaXMgb3VyIG1haW4g
cHJvYmxlbS4gVGhhdCBpcyB3aHkgd2Ugd2FudCB0byB0cnkgdG8gYnlwYXNzIGFuZCANCj4gc2Vl
IGlmIHRoZSBpc29sYXRpb24gb2YgdGhlIGNhcmQgaW5jcmVhc2VzLg0KPg0KUmVhbGx5OiBub2Jv
ZHkncyBzdG9wcGluZyB5b3UgZnJvbSB0cnlpbmcgb3V0LCBidXQgaW4gYWxsIGhvbmVzdHksIHVu
bGlrZWx5IHRoYXQgeW91IGdhaW4gDQphbnl0aGluZzsgdGhhdCdzIHdoeSBJIGluZm9ybWVkIHlv
dSBvZiB0aGF0LiBUaGUgZmFjdCBhbG9uZSB0aGF0IHlvdSBhc2tlZCBhYm91dCB0aGUgDQpjYXBh
Y2l0b3JzIGlzIGhvbmVzdGx5IGFsc28gbm90IGEgZ3JlYXQgc2lnbiB3aGVuIGl0IGNvbWVzIHRv
IHlvdXIgdGVhbSdzIFJGIGhhcmR3YXJlIA0KdGVzdGluZyBjYXBhYmlsaXRpZXMuIEJ1dCB5b3Ug
YWxyZWFkeSB1c2UgdGhlIHdvcmQgInRyeSI6IHNvIHlvdSB3aWxsIGFsc28gaW5jdXIgdGhlIG9u
dXMgDQpvZiBoYXZpbmcgdG8gbWVhc3VyZSB0aGUgb3V0cHV0LiBOb3RoaW5nIHdlIGNvdWxkIGRl
bGl2ZXIgY291bGQgY2hhbmdlIHRoYXQsIHNvOiBiZXN0IG9mIGx1Y2shDQo+DQo+IFRoZXJlIGlz
IG5vIGRhdGEgYWJvdXQgdGhlIFRYL1JYIGlzb2xhdGlvbiBvZiBBRDkzNjQgaW4gaXRzIGRhdGFz
aGVldC4gVGhlcmUgaXMgc29tZSANCj4gaW5mb3JtYXRpb24gaW4gdGhlIGZvcnVtcyBpbmRpY2F0
aW5nIHRoYXQgdGhlIFRYMS9SWDEgaXNvbGF0aW9uIGlzIG1lYXN1cmVkIGFzIDY1IGRCLg0KPg0K
4oCmIHdoaWNoIGlzIGV4YWN0bHkgd2hhdCB0aGUgb3RoZXIgTWFyY3VzIChNYXJjdXMgTGVlY2gp
IGFuZCBJIG5vdGVkLiBCdXQsIGFzIHNhaWQsIHRoZSANCkFEOTM2MSBpdHNlbGYgaXNuJ3QgdGhl
IG9ubHkgdGhpbmcgd2l0aCBjcm9zc3RhbGsgaW4gYSBjb21wbGV4IHN5c3RlbSwgYW5kIHRoZSBz
d2l0Y2ggDQpjb21iaW5hdGlvbiB3YXMgY2hvc2VuIHRvIGZpdCB0aGUgb3ZlcmFsbCBzeXN0ZW0s
IG5vdCBqdXN0IHRoYXQgY29tcG9uZW50Lg0KDQpCZXN0LA0KTWFyY3VzIE0NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
