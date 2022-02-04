Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAEF4AA2FE
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 23:18:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 307DD385A41
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 17:18:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WcKhYU3U";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 28EC238595D
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 17:16:59 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id o9so6442610qvy.13
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 14:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=2CJFRmzQ/A+qgO3/mMvNQ1BBkkLpHxv8Vg0faBngC9U=;
        b=WcKhYU3ULjzlt41G2ja9fUm6+e7GlFxhe1G9Pn/4W9vglk+gU1F9bxiEk1kE3Io9cC
         KL6c6dWE+bYItTyIRX9zYLeqLikQhFdqgQEZPVbJP7w+C2sNs5VHXda7mpnNTp9SuZhi
         IvBhmlm7vU0ITJ8ac76vIWXGBfusGTyFqnN6V0FFp9qxNpR5DC5C3EfNWa/5qt98vc6p
         4xDG34w8uVj9HF8ZjdKrDS4sqb8WfTdIE6p7fcrNSwi68mUOtzZjaHyOOSC81hk+8cg/
         MmUfrf6yjySII/FU7198N0MuVeMZWteEHrqKb49Wvv+k5Bz/X7gPJZbl9c/O94hwT2ph
         BNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2CJFRmzQ/A+qgO3/mMvNQ1BBkkLpHxv8Vg0faBngC9U=;
        b=QogmDZUqX33a/0jWLtLZpD5TKtGfO/B6gwHZurnU6/KBWsPvzZTT3FhHRczUI3sS8t
         lyJo1HkJ9YOTpECDRlVVUMRbcSY+KlWNOaxUvR0JDA2OSvwYKDX99XPmQw/dNflCv3IC
         UPWVdCsTA7rOo+5BbIgChDPqmYWIEauAdD4zLNUqRguu7MXFNCj44bTpweehL1Wgk1zt
         BctIzv9bnu4UwbvlqXlzRvwqWBz03kKXl/HkVsZ/wstp3NwO81iXQy7+0jHyiUBD0flY
         sRaYk/dtElCfRZ1GaKVeJZED8H5bDTcne1QZMtoMyTEB4ST1h8Qf4HQTJsP67o0yA9uT
         6t6Q==
X-Gm-Message-State: AOAM532AVur3khJskVs37Hpm1s46GrP0O3W8xgFbbvbgMMgM3FVHzD9r
	+muAngHh3/7a4wt5fsqjyqCltgoyqiw=
X-Google-Smtp-Source: ABdhPJx5NeRCPPcxqdpzJJH3n8IyOWgrFSqCt/fFwMtmm37zjNKfJMk7lFRIzzxgvztGgnrWTLMkTw==
X-Received: by 2002:a05:6214:3005:: with SMTP id ke5mr3534528qvb.83.1644013018358;
        Fri, 04 Feb 2022 14:16:58 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id m17sm1915942qtk.53.2022.02.04.14.16.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Feb 2022 14:16:57 -0800 (PST)
Message-ID: <8c046397-e28a-988e-69a6-0d7d3617bd0e@gmail.com>
Date: Fri, 4 Feb 2022 17:16:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAMMoi3uE+=fDJwuaOP0X2qCqGL1wvxTR=ghC=Udo4waZe3y_6w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMMoi3uE+=fDJwuaOP0X2qCqGL1wvxTR=ghC=Udo4waZe3y_6w@mail.gmail.com>
Message-ID-Hash: HEOR3O77NDFQLVA2QVGSJLDZBCCWNEE3
X-Message-ID-Hash: HEOR3O77NDFQLVA2QVGSJLDZBCCWNEE3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The source of O's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HEOR3O77NDFQLVA2QVGSJLDZBCCWNEE3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0wNCAxNToyNiwgUmljaGFyZCBCZWxsIHdyb3RlOg0KPiBIZWxsbywNCj4NCj4g
SSBrbm93IHRoYXQgd2hlbiBJIHNlZSBPJ3MgKG92ZXJydW5zKSBpbiB0aGUgdGVybWluYWwgaXQg
bWVhbnMgbXkgaG9zdCANCj4gcHJvY2Vzc2luZyBpcyBub3Qga2VlcGluZyB1cCB3aXRoIHRoZSBz
YW1wbGUgc3RyZWFtIGNvbWluZyBpbiBmcm9tIHRoZSANCj4gVVNSUC4gU2FtcGxlcyBhcmUgYmVp
bmcgZHJvcHBlZCBiZWNhdXNlIHRoZSBob3N0IGlzIHRvbyBzbG93IHRvIGtlZXAgdXAuDQo+DQo+
IEknbSB3b25kZXJpbmcgaWYgdGhlcmUgaXMgYSB0ZXN0IEkgY2FuIHJ1biB0aGF0IHdvdWxkIHJl
dmVhbCB0aGUgY2F1c2UgDQo+IG9mIHRoZSBPJ3Mgb24gbXkgc2VydmVyLiBXaGF0IGlzIGl0IG9u
IG15IHNlcnZlciB0aGF0IGlzIHRoZSANCj4gYm90dGxlbmVjaz8gRG8gTydzIG1lYW4gdGhlIHBy
b2JsZW0gaXMgYnVmZmVyIG92ZXJydW5zIHdpdGhpbiB0aGUgTklDIA0KPiBpdHNlbGY/IERvZXMg
aXQgbWVhbiBidWZmZXIgb3ZlcnJ1biBhZnRlciB0aGUgQ1BVPyBEb2VzIGl0IG1lYW4gYnVmZmVy
IA0KPiBvdmVycnVuIHdoaWxlIGZpbGxpbmcgdXAgcmFtPw0KPg0KPiBJIGFtIHVzaW5nIGEgMiBw
b3J0IFFGU1ArIDEwMEcgTklDIHdpdGggYm90aCBwb3J0cyBhdHRhY2hlZCB2aWEgUVNGUCsgDQo+
IGNhYmxlcyB0byBhIDEwMEcgc3dpdGNoLiBGcm9tIHRoZSBzd2l0Y2ggSSBjb25uZWN0IDUgVVNS
UCBuMzEwJ3MgdXNpbmcgDQo+IHRoZWlyIFNGUCsgcG9ydHMgYW5kIFNGUCsgY2FibGVzLiBFYWNo
IG9mIHRoZSBuMzEwJ3MgZHVhbCBTRlArIHBvcnRzIA0KPiBhcmUgY29ubmVjdGVkIHRvIHRoZSAx
MDBHIHN3aXRjaCBhbmQgaW4gdGhpcyBjb25maWd1cmF0aW9uIEkgYW0gYWJsZSANCj4gdG8gdXNl
IDIgb2YgdGhlIDUgbjMxMCdzIHNpbXVsdGFuZW91c2x5IHdpdGggMiByZWNlaXZlIGFudGVubmFz
IHBlciANCj4gcmFkaW8gc2FtcGxpbmcgYXQgMTI1IE1IeiB3aXRob3V0IGFueSBPJ3MuIFdoZW4g
SSBpbmNyZWFzZSB0aGUgbnVtYmVyIA0KPiBvZiByYWRpb3MgYWJvdmUgdGhpcywgSSBzdGFydCBz
ZWVpbmcgTydzLiBUaGUgc2VydmVyIGlzIGEgNjQgY29yZSANCj4gbWFjaGluZSB3aXRoIDIwMEcg
UkFNLg0KPg0KPiBJIGNhbGN1bGF0ZSB0aGUgdG90YWwgdGhyb3VnaHB1dCByZXF1aXJlZCB0byBr
ZWVwIHVwIHdpdGggNSBuMzEwJ3MgDQo+IHNhbXBsaW5nIGF0IDEyNSBNSHogZnJvbSAyIGFudGVu
bmFzIHdpdGggMTYgYml0IEkgYW5kIDE2IGJpdCBRIGNvbWluZyANCj4gb2ZmIHRoZSB3aXJlIGF0
IHRoZSBzZXJ2ZXIgYXM6DQo+ICg1IHJhZGlvcykqKDIgYW50ZW5uYXMpKigxMjUgbWVnYSBzYW1w
bGVzIHBlciBzZWNvbmQpKigzMiBiaXRzIHBlciANCj4gY29tcGxleCBzYW1wbGUpPTQwIEdiaXQv
cyBvciBqdXN0IDUgR0J5dGUvcy4gVGhpcyBpcyB3ZWxsIGJlbG93IHRoZSANCj4gY2FwYWJpbGl0
eSBvZiB0aGUgbmV0d29yayBhbmQgSSBhc3N1bWUgYSBoaWdoIGVuZCA2NCBjb3JlIHNlcnZlciwg
DQo+IHVubGVzcyBJJ20gb3Zlcmxvb2tpbmcgc29tZXRoaW5nPw0KPg0KPiBBbnkgaGVscCBvciBm
ZWVkYmFjayBpcyBhcHByZWNpYXRlZC4NCj4NCj4gUmljaGFyZA0KPg0KRG9uJ3QgZm9yZ2V0IHRo
YXQgaW4gZ2VuZXJhbCwgYSBzaW5nbGUgQ1BVIGlzIGhhbmRsaW5nIHBhY2tldHMgY29taW5nIA0K
ZnJvbSB5b3VyIE5JQy7CoCBEaXN0cmlidXRpbmcgdGhhdCBsb2FkIG92ZXIgbXVsdGlwbGUgQ1BV
cyBpcyBleGNlZWRpbmdseSANCmRpZmZpY3VsdCB0byBtYWtlIHdvcmsNCiDCoCBpbiBzdWNoIGEg
d2F5IHRoYXQgb3ZlcmFsbCBwZXJmb3JtYW5jZSBpcyBpbXByb3ZlZC4NCg0KT25jZSB5b3VyIHNh
bXBsZXMgYXJlICJpbnNpZGUgdGhlIHN5c3RlbSIsIHRoZXJlJ3MgYSBMT1Qgb2YgImJpdHMgYW5k
IA0KcGllY2VzIiBhdCBwbGF5LCBhbmQgaXQncyB1c3VhbGx5IGhhcmQgdG8gcG9pbnQgdG8gYSBz
aW5nbGUgdGhpbmcgYW5kIA0Kc2F5ICJ0aGVyZSBpdCBpcywgdGhlcmUncw0KIMKgIHRoZSBwZXJm
b3JtYW5jZSBib3R0bGVuZWNrIi4NCg0KUXVpdGUgYXBhcnQgZnJvbSBDUFUgY29uc2lkZXJhdGlv
bnMgKGFuZCB5b3UgY2FuIHN0YXJ0IHJ1bm5pbmcgaW50byANCm92ZXJydW4gc2l0dWF0aW9ucyBs
b25nIGJlZm9yZSB5b3VyIENQVSBpcyBjbG9zZSB0byBzYXR1cmF0ZWQpLCB0aGVyZSdzIA0KbWVt
b3J5LWJhbmR3aWR0aCBpc3N1ZXMsDQogwqAgSU8gYmFuZHdpZHRoIGlzc3VlcywgZXRjLCBldGMu
DQoNCkZvciAxMDBNc3BzLXNjYWxlIHNhbXBsZSByYXRlcywgeW91IHNob3VsZCBwcm9iYWJseSBp
bmNyZWFzZSB0aGUgDQpybWVtX21heCBzeXNjdGwgcGFyYW1ldGVyIGJleW9uZCBldmVuIHdoYXQg
VUhEIHJlY29tbWVuZHMgYnkgZGVmYXVsdCwgDQpqdXN0IHRvIG1ha2Ugc3VyZSB0aGF0DQogwqAg
dHJhbnNpZW50IGluc3VmZmljaWVuY2llcyBpbiBtb3Zpbmcgc2FtcGxlcyB1cCB0byB1c2VyLXNw
YWNlIGRvbid0IA0KY2F1c2UgeW91IGlzc3Vlcy4NCg0KVGhlIG92ZXJhbGwgdGFrZS1hd2F5LCB0
aG91Z2gsIGlzIHRoYXQgYWRkaW5nIGJ1ZmZlcmluZyB0byBhIA0Kc2lnbmFsLXByb2Nlc3Npbmcg
cGF0aHdheSB0aGF0IGNhbm5vdCwgb24gYXZlcmFnZSwgImtlZXAgdXAiIGRvZXMgbm90IA0KaGVs
cCB5b3Ugb3RoZXIgdGhhbiBkZWxheQ0KIMKgIHRoZSBwb2ludCBhdCB3aGljaCBzYW1wbGVzIHN0
YXJ0IGdldHRpbmcgZHJvcHBlZC7CoCBUaGF0J3MganVzdCBhIA0KYmFzaWMgcHJvZHVjZXItY29u
c3VtZXIgdGhpbmcgaW4gY29tcHV0ZXIgc2NpZW5jZSwgYW5kIG5vdCB1bmlxdWUgdG8gRFNQIA0K
Zmxvd3MuLi4NCg0KUm9iIEtvc3NsZXIgaGFzIGFscmVhZHkgbWVudGlvbmVkIHRoaXMgZ3VpZGUs
IGJ1dCBoZXJlJ3MgYSBwb2ludGVyOg0KDQpodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX0hvc3Rf
UGVyZm9ybWFuY2VfVHVuaW5nX1RpcHNfYW5kX1RyaWNrcw0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
