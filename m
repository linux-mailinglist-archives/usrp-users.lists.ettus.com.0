Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869C62A0CD
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 18:57:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B05E383E4B
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 12:57:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668535053; bh=I9FSpQgTIDSQnLywBdc3gAthV/ykLXPBy0MhGYlAems=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Fy7dJSF/XWUgTd3rywNiia0dBYhCqFG73grKySP49E6SGJOcexP6tLWH2B4wXwSM5
	 +N3TN9os10rryWCJODAd9Svr+FR9FwuS7b9IVv4c7LJsjeUQCV29LTqygaPCYJeXrX
	 mvDNjcygv+OJq16URkS6UaSnCS8RoZeat5Ws4TWsrVIOeL6Pgk5hVnAOeJ8lKV/KdT
	 i33Jy+YH3+WETAz642eRDUFl80JoCJtoq9CH1Kv6TDPVupT3AsnmfdlyNNsXDb0MgJ
	 ZNx4vddNHWnSAaPQW6iNlJ7iPeRo6BQbov77O9CKwiphnKhAsC5VDwLVk0Wl2apBkc
	 6z8GggSMvON4A==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B1F4383BFB
	for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 12:56:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n5rDpRBC";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id lf15so10255170qvb.9
        for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 09:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EBHabJi60ju2BzrvaT34CWQtLsUTTxRMd6MbCDINlsg=;
        b=n5rDpRBCqm2A0qMnzuxq+DhiKAFenEyJpSmo+0nYxqBmzvwntTAeHlB76JDm87hqT3
         N6fgnWgb1ujGBU0Fw/7QqtY68NuQfmQUAw9+Y8zXu3a5XYR96Hbpa2S+5i5FywgH4t68
         ntAWaQ3QHSCzYQ0YaBZglS1uUbSeWQqm71so/YQnxR3zdQCxyPCq9cUAnPO5KooIZ06+
         OrTxTZNd4o1nZ5wVK3pKes23GKzvV/93zx1yFP5uKJCPC/zINuBAxJmQh7rlz2O57raH
         ncObjtNa7gAAgtA58WRRWCX2dQBkZKrB387Lq+5o5JM4dzodau6vWp7KTUkqmKYQpwYZ
         M5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EBHabJi60ju2BzrvaT34CWQtLsUTTxRMd6MbCDINlsg=;
        b=WhbvPkfp+VG/ZiOcwt++ndBJ+9oErUl7z9RAspInSu0oB0nL/nCxLRGKqBEvZR/obV
         mqXbgHDOteQsgiZcUIQV6ubbDOoSAwn1xNuzAKejEtwMAPKNRXMljfNCsxlmJrbnij95
         WgSeb3ZineQTxadXtXl6kEY/kBusVLScaG64KT0BVim8t21bp1sH1F0A6xUwq0kL1PJj
         pm1ynpe7J2ApLXBszfXk9ZBxyLPBCkP0aPgJFM4deg9T5rbEy7iE0NSmpVw6pS2pDn2F
         9B37Y2JzM8xKpnqVXIt+EDBFwbJwgL+jjaaG/dRBIhis+ifmGxp7JOg2hDuDWDo2vepx
         BECA==
X-Gm-Message-State: ANoB5ploucZo218iGjrnP65+7LrWOR7yRiKs8NW/Cy6B4U9ZuEwQvV1u
	pNU+Ca2Wsk3wHIqLDiKTX0FfJI+TSvc=
X-Google-Smtp-Source: AA0mqf6wYe1N9Vlte7yM0SvmgMt6EXzpJbkEQEcEPUdH3ZiCDWmJZZyUx7rLfC/SBskPONwUgs0DUw==
X-Received: by 2002:ad4:5904:0:b0:4bb:915f:f1aa with SMTP id ez4-20020ad45904000000b004bb915ff1aamr18137994qvb.38.1668534971607;
        Tue, 15 Nov 2022 09:56:11 -0800 (PST)
Received: from [192.168.2.173] (bras-base-smflon1825w-grc-08-174-93-1-10.dsl.bell.ca. [174.93.1.10])
        by smtp.googlemail.com with ESMTPSA id r21-20020a05620a299500b006e702033b15sm8860437qkp.66.2022.11.15.09.56.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 09:56:11 -0800 (PST)
Message-ID: <80b48728-8029-e93f-23f1-34da9e042c6e@gmail.com>
Date: Tue, 15 Nov 2022 12:56:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE@lists.ettus.com>
Message-ID-Hash: KPKEN47ITT4YVZEIXGQZ2S2QURBEUHFM
X-Message-ID-Hash: KPKEN47ITT4YVZEIXGQZ2S2QURBEUHFM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDC block control in mutli_usrp application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPKEN47ITT4YVZEIXGQZ2S2QURBEUHFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUvMTEvMjAyMiAxMjoyNCwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBJcyB0aGVy
ZSBhIG1ldGhvZCBmb3IgYWNjZXNzaW5nIGEgZGRjX2Jsb2NrX2NvbnRyb2wgb2JqZWN0IGZyb20g
YSANCj4gbXVsdGlfdXNycCBvYmplY3Q/IEkgaGF2ZSBiZWVuIHNraW1taW5nIHRoZSB2YXJpb3Vz
IFJGTm9DIGV4YW1wbGVzLCANCj4gYW5kIGl0IHNlZW1zIHRoZSBwcmVmZXJyZWQgbWV0aG9kIG9m
IGFjY2Vzc2luZyBSRk5vQyBvYmplY3RzIGlzIHZpYSANCj4gdGhlIGdyYXBoIEFQSS4gVGhlIHBy
b2JsZW0gaXMgSSBjYW7igJl0IGNyZWF0ZSBhbiBSRk5vQyBncmFwaCBmb3IgYW4gDQo+IGV4aXN0
aW5nIG11bHRpX3VzcnAgb2JqZWN0IHdpdGhvdXQgZ2V0dGluZyBhIHJ1bnRpbWUgZXhjZXB0aW9u
Lg0KPg0KPiBJdCBsb29rcyBsaWtlIGluIFVIRCAzLlggdGhlcmUgd2FzIGEgbWV0aG9kIGdldF9k
ZXZpY2UzKCkgd2hpY2ggZ2F2ZSANCj4gYWNjZXNzIHRvIHRoZSB1bmRlcmx5aW5nIFJGTm9DIHN0
cnVjdHVyZS4gSSBhbSB1c2luZyBVSEQgNC4yIHdpdGggYW4gDQo+IHgzMTAuDQo+DQo+IFBlcmhh
cHMgdGhlcmUgaXMgYSByZWFzb24gdGhhdCBtdWx0aV91c3JwIGFuZCBSRk5vQyBBUElzIGFwcGVh
ciBtb3N0bHkgDQo+IG9ydGhvZ29uYWwuIFRoZSByZWFzb24gSSB3YW50IGFjY2VzcyB0byB0aGlz
IGJsb2NrIGRpcmVjdGx5IGlzIGl0IGhhcyANCj4gYSBzZXRfZnJlcSgpIG1ldGhvZCB0aGF0IHRh
a2VzIGEgZnJlcXVlbmN5IGFuZCBhIHRpbWVzdGFtcC4gQ3VycmVudGx5IA0KPiBpbiBteSBhcHBs
aWNhdGlvbiBJIHVzZSB0aGUgdGltZWQgY29tbWFuZCBBUEkgdG8gZGlnaXRhbGx5IHJldHVuZSBh
dCBhIA0KPiBzcGVjaWZpZWQgdGltZS4gVGhlIGlzc3VlIHRoYXQgSSBlbmNvdW50ZXIgaXMgSSBo
YXZlIHRvIGVuc3VyZSB0aGF0IG15IA0KPiBjaGFubmVscyBhcmUgc2VyaWFsaXplZCBpbiB0aW1l
LCBiZWNhdXNlIGlmIHRoZSBmcmVxIGhvcCB0aW1lZCBjb21tYW5kIA0KPiBmb3IgY2hhbm5lbCBB
IGlzIHQwLCBhbmQgY2hhbm5lbCBCIGlzIHQxLCBidXQgdGhlIHBhY2tldCBjb21tYW5kaW5nIA0K
PiBjaGFubmVsIEIgYXJyaXZlcyBmaXJzdCwgSSBoYXZlIHRvIGVuc3VyZSBteSBhcHBsaWNhdGlv
biBob2xkcyB0aGUgQiANCj4gY29tbWFuZCwgd2FpdHMgZm9yIHRoZSBBIGNvbW1hbmQgdG8gYXJy
aXZlLCBhbmQgaXNzdWVzIHRoZSBBIGNvbW1hbmQgDQo+IGZpcnN0LiBJIHdvdWxkIHJlYWxseSBs
aWtlIHRvIGJlIGFibGUgdG8gaXNzdWUgZnJlcSBzaGlmdHMgaW5kZXBlbmRlbnQgDQo+IG9mIGNo
YW5uZWwsIGJ1dCBtYWludGFpbiB0aGUgcHJvcGVyIHRpbWVzdGFtcGluZy4NCj4NClRoZSBtdWx0
aV91c3JwIEFQSSBleGlzdGVkIGxvbmcgYmVmb3JlIFJGTm9DIHdhcyBldmVuIGEgdGhpbmcuwqAg
VGhleSANCndlcmUgZGV2ZWxvcGVkIGZhaXJseSBzZXBhcmF0ZWx5IGZvciBxdWl0ZSBzb21lIHRp
bWUsDQogwqAgYW5kIHRoZW4gbXVsdGlfdXNycCB3YXMgbW9zdGx5ICpyZS1pbXBsZW1lbnRlZCog
InVuZGVyIHRoZSBjb3ZlcnMiIA0KdXNpbmcgUkZOb0MgYmxvY2tzIHVuZGVybmVhdGguwqAgV2l0
aCBVSEQgNC4wIGl0DQogwqAgaGFzIG1lcmdlZCBldmVuIGZ1cnRoZXIuwqAgQmV5b25kIHRoYXQs
IEkgY2Fubm90IGNvbW1lbnQsIHNpbmNlIEknbSANCm5vdCBhbiBSRk5vQyB1c2VyLg0KDQpJIHRo
aW5rIHlvdXIgdHJvdWJsZXMgc3RlbSBmcm9tIHRoZSBmYWN0IHRoYXQgdGhlcmUgaXMgb25seSBh
IHNpbmdsZSANCnRpbWVkLWNvbW1hbmQgcXVldWUgaW4gdGhlIFVTUlAsIGFuZCBpdCBpcyBzbWFs
bCBhbmQNCiDCoCBmaW5pdGUuwqAgVGhlIGFyY2hpdGVjdHVyZSBtYWtlcyBpdCBhd2t3YXJkIHRv
IGV4cHJlc3MgdGhlIGtpbmQgb2YgDQoic3RhZ2dlcmVkIiB0aW1pbmcgeW91J3JlIGxvb2tpbmcg
Zm9yLCBJIHRoaW5rLsKgIEl0J3Mgbm90IGNsZWFyDQogwqAgdG8gbWUgdGhhdCBzaW1wbHkgInJl
YWNoaW5nIGJlbG93IiB0aGUgVUhEIHVzZXItZmFjaW5nIEFQSSB3aWxsIGdldCANCmFyb3VuZCB0
aGlzLCBidXQgSSBjb3VsZCBiZSB3cm9uZy4NCj4NCj4gT24gdG9wIG9mIHRoYXQsIEkgZmluZCB0
aGUgc2V0X3RpbWVkX2NvbW1hbmQgQVBJIGN1bWJlcnNvbWUuIEkgDQo+IG9jY2FzaW9uYWxseSBj
cmFzaCBmcm9tIGxvbmdlciBydW5zIHdpdGggbXkgYXBwbGljYXRpb24uIEkgZG9u4oCZdCBoYXZl
IA0KPiB0aGUgZXhhY3QgcnVudGltZSBleGNlcHRpb24gbmFtZSwgYnV0IGl0IGhhcyBzb21ldGhp
bmcgdG8gZG8gd2l0aCBhIA0KPiBidWZmZXIgYmVpbmcgZnVsbCBhbmQgY3Jhc2hpbmcgd2hlbiB0
b28gbWFueSB0aW1lZCBjb21tYW5kcyBhcmUgaXNzdWVkLg0KPg0KSGF2aW5nIHRoZSBleGFjdCBl
eGNlcHRpb24gZGV0YWlscyB3b3VsZCBiZSB2ZXJ5IGhlbHBmdWwgdG8gc2hhcmUtLWp1c3QgDQps
aWtlIGluIGFueSBvdGhlciBkaXNjaXBsaW5lIGludm9sdmluZyBjb21wdXRlcnMuwqAgVGhpcyBj
YW4NCiDCoCBoZWxwIHRoZSBjb21tdW5pdHkgaGVscCB5b3UuDQoNCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
