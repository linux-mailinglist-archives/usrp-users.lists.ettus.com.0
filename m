Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5C996347A
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 00:15:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E0E03857A1
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 18:15:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724883342; bh=KjO1c/R10XixswjytIPvo/uXjIRhj3xv3vL1fRfg7vc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ja/D7rcpZXRSJN960g9Wx2JTNFqKuhYKozM4QbTCCImQLgalqHdppN8L4s7IuBFlB
	 0Exa78vSAGVq7nGUtUwMd6jkr1ZXyGgUrr7nnBeKtZe5vr8coHBAOUKSCoFM16HZrE
	 apHiIG3pYyjrAVcmw/5g+uDEcon2ag0q0WOWA2Uu2f3uFnaA+1WqEP9AOv1BibAQYC
	 ZeFz0b7yS9hZs78kLZGfNr0b0cBB7IIiwGT7OVIdYg9027BvfXQvt339JnVp00W7zz
	 5FLBvZj8gDuGRZNVikRLLLFTcxsvFk55gNDQDfCHxc6rwvVotRtBKMqlDKagaFCDoL
	 vpuZSmg1R/YdQ==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id BF366385696
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 18:14:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WH5XdFfX";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6bf775d1bdfso126156d6.1
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 15:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724883297; x=1725488097; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0oH3t1WO4cRbfkGswZ0XUA9rMqfAbRZbVANvZBSJPC4=;
        b=WH5XdFfX8rfdVY4P6qG7pQZQbsDUMG5k2DDQoJz04HmLuhGV8nliAEgaVM9uDR3/EN
         fcX/ufpIdQdz4/SAP2biUckg8Ik+TEJTeyCy5TMhAN68+uqzVUS3TwAofzPMU0eAJPdq
         jjnLlbA/csfBcynD7wLnZWvBfi5/S4XqEDp4QfnyagF2RqLA/KdrqgLsFmit5DhIql1u
         aC3uybeoJ7STaV/MSRjJPAx+XwN90NiVNYnHI7WoQM4vU87sDPy5FTbBXn1x/rAWMoeH
         ovhmyOU33/cJA1CLypA+BKY0KmZPdMfR6yZS4ATGyRxgwr6mOSWzd2PefSGdQetihrJi
         x0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724883297; x=1725488097;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0oH3t1WO4cRbfkGswZ0XUA9rMqfAbRZbVANvZBSJPC4=;
        b=Q/JMFY5EbJd6hODnnT+4sxRRcQFRHcSxjWPC5ZWU7NOjoi1aiw7qIMSYJR+9kiqNXh
         LmJ+GE4+WV28uq9I/I+gDgxQc8pJ+1q9/WqczJMiGWaWyXkCHV0J/LCAASk5EDturksw
         RrDvyQa6S7ZwQO1azVJFypaBUBar3Y0JpLaaNt+nlYFv1fNelFN8IV7xXRTzcfHiiruJ
         waUAPNeGObbD/yVC7KxEKNip/WilnXn3Q6u9vfAYGWL4c+nhMBBugu5jUBop3FVRJ0Zg
         fLzMu5ViBOtqLJH6LXnPus/CmrjA7lU3KWNAHjPo1qIUE0R49U0TErg0lJYGWQUAN+XQ
         fNmw==
X-Gm-Message-State: AOJu0YwZHop/E6Al9xddx7GzDJ1/2Pq1E/PGhnRluDnib8t/kbrGBlTT
	ZW6ow3q0tJ/CvlAio/LRhxRTGlO902+7OGkdioGwLzGjSredzX3BY8xZag==
X-Google-Smtp-Source: AGHT+IEGgi9NyOVm3B/LAEEOmmFN6n45Mqp153FnM+Lh56SuY8Y4vUMsCmvMXqYbI/loPylnJX5m1Q==
X-Received: by 2002:a05:6214:434a:b0:6bf:a9c0:e589 with SMTP id 6a1803df08f44-6c33e671527mr10688286d6.42.1724883296991;
        Wed, 28 Aug 2024 15:14:56 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c162dcddadsm69442306d6.121.2024.08.28.15.14.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 15:14:56 -0700 (PDT)
Message-ID: <0bd53570-3d91-497f-ba4e-6c1df0ce87f1@gmail.com>
Date: Wed, 28 Aug 2024 18:14:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
Message-ID-Hash: RAMUIFH47JBKHR4OB6UZTO7PVUA7KVVC
X-Message-ID-Hash: RAMUIFH47JBKHR4OB6UZTO7PVUA7KVVC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RAMUIFH47JBKHR4OB6UZTO7PVUA7KVVC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDgvMjAyNCAxODowNCwgU3RldmUgSGFtbiB3cm90ZToNCj4gSGVsbG8sDQo+DQo+IEkg
aGF2ZSBiZWVuIHRyeWluZyB0byBlc3RpbWF0ZSB0aGUgTm9pc2UgRmlndXJlIG9mIHRoZSBYNDQw
LiBJIGxvb2tlZCANCj4gdGhyb3VnaCBhbGwgdGhlIGRvY3VtZW50YXRpb24gSSBjb3VsZCBmaW5k
IGFuZCBjb3VsZG4ndCBmaW5kIGl0IA0KPiBhbnl3aGVyZSwgc28gSSB0cmllZCB0byBjYWxjdWxh
dGUgaXQgbXlzZWxmLg0KPg0KPiBJdCBsb29rcyBsaWtlIHRoZSBaVTJ4RFIgUkZTb0MgaGFzIGEg
TlNEIG9mIC0xNDZkQkZTL0h6IEAgMi40R0h6IA0KPiAoaHR0cHM6Ly9kb2NzLmFtZC5jb20vci9l
bi1VUy9kczkyNi16eW5xLXVsdHJhc2NhbGUtcGx1cy1yZnNvYy9SRi1BREMtUGVyZm9ybWFuY2Ut
Q2hhcmFjdGVyaXN0aWNzKSANCj4gYW5kIHRoZSBGdWxsIFNjYWxlIElucHV0IGlzIDFWcHBkICgw
LjcwN1ZybXMpIEAgMTAwb2htcyANCj4gKGh0dHBzOi8vZG9jcy5hbWQuY29tL3IvZW4tVVMvZHM5
MjYtenlucS11bHRyYXNjYWxlLXBsdXMtcmZzb2MvUkYtQURDLUVsZWN0cmljYWwtQ2hhcmFjdGVy
aXN0aWNzKSANCj4gLg0KPg0KPiBCYXNlZCBvbiB0aGlzIGluZm9ybWF0aW9uIEkgY2FsY3VsYXRl
IE5TRCBvZiAtMTM5ZEJtL0h6IFstMTQ2ZEJGUy9IeiArIA0KPiAxMGxvZzEwKDAuNzA3XjIvMTAw
zqkqMTAwMCldLCBzbyAtMTM5ZEJtL0h6IC0gLTE3NGRCbS9IeiBnaXZlcyBOb2lzZSANCj4gRmln
dXJlIG9mIDM1ZEI/IEFkZCB0aGUgMS41IGluc2VydGlvbiBsb3NzIG9mIHRoZSBUQ00yLTYzV1gr
IG9uIHRoZSANCj4gRGF1Z2h0ZXJib2FyZCAoaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFs
L3BhZ2VfZmJ4Lmh0bWwpLCBnaXZlcyBhbiANCj4gYXBwcm94aW1hdGUgbm9pc2UgZmlndXJlIG9m
IHRoZSBYNDQwIGF0IDM2LjVkQiBmb3IgMi40R0h6Lg0KPg0KPiBJcyB0aGlzIGNvcnJlY3Q/IFNl
ZW1zIGhpZ2gsIEkgZG9uJ3QgaGF2ZSBtdWNoIGV4cGVyaWVuY2UgY2FsY3VsYXRpbmcgDQo+IG5v
aXNlIGZpZ3VyZSBmcm9tIEFEQydzIHNvIEknbSB3b25kZXJpbmcgaWYgSSdtIG1pc3Npbmcgc29t
ZXRoaW5nLg0KPg0KPiBUaGFua3MsDQo+DQo+IFN0ZXZlDQo+DQo+DQoiTmFrZWQiIEFEQ3MgYXJl
IGluaGVyZW50bHkgdmVyeSB2ZXJ5IG5vaXN5IGRldmljZXMuwqAgU2luY2UgdGhlIFg0NDAgaGFz
IA0Kbm8gUkYgcHJlLXByb2Nlc3Npbmcgb2YgYW55IGltcG9ydGFuY2UsIHlvdSdkIGF0DQogwqAg
bGVhc3QgbmVlZCBhIGxvdy1ub2lzZSBmaWx0ZXJlZCBmcm9udC1lbmQgdG8gYmVhdCB0aGUgaW5o
ZXJlbnQgQURDIA0Kbm9pc2UgaW50byBpbnNpZ25pZmljYW5jZS7CoMKgwqAgRm9yIG90aGVyIFVT
UlAgcmFkaW9zLCBtb3N0bHksDQogwqAgdGhhdCdzIGFscmVhZHkgdGFrZW4gY2FyZSBvZiwgYW5k
IHRoZSByZWNlaXZlciBub2lzZS1maWd1cmUgaXMgbXVjaCANCm1vcmUgInJlc3BlY3RhYmxlIsKg
IChub3QsIHJhZGlvIGFzdHJvbm9teSByZXNwZWN0YWJsZSwNCiDCoCBidXQgYWRlcXVhdGUgdG8g
cHV0IG9udG8gYW4gb3Zlci10aGUtYWlyIGFudGVubmEpLg0KDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
