Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 699D84BFC4F
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 16:20:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67E33380E4D
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 10:20:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n6hV0Uhm";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D1FA3840A1
	for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 10:19:49 -0500 (EST)
Received: by mail-qv1-f45.google.com with SMTP id d3so42970403qvb.5
        for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 07:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=buW6Sj+vuZc8b36ebSbjevz854R/fGODyKWPhQzEcLY=;
        b=n6hV0UhmFZk7245dQM5fw3G3CVkXRNCYP7Pu8tQ1q+5z8Xyzh1cHZwRvqEbRRN2bvr
         c7En4VI4uD8B5PjrAX1CmxUwrmv+bkJwZQnSqnxCZY51kUBdtpTD4Wlu9DOgHDR/FvXd
         fwDYxi8sEXD05D8iNY3gbm0GVn4GVtRcWCnULD0kWF7JQEU1HVBgM3FWuPY5uQuJkrz0
         aIuISmqW0oEkVsj5n3G0T2L5Pv0ihYQXMyD0w1zZE78AG4aRPP+8iczGxSybTgIIKrp3
         hWmMx8PIMvG0SvH37JoCkvvsQhvA6aJ6rA2BrJfKwMa2e7aaH5nLs67AW5Sx+oWo7xbw
         FBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=buW6Sj+vuZc8b36ebSbjevz854R/fGODyKWPhQzEcLY=;
        b=QPrzi5WmgUjK0gTbKEI5RvkM+gTMWi10dPYI/XdravjbERvvHynclXIUtDqNwe2wyG
         kpoj6AWjeI8/iCwlNrWRqoWuiFtmOEjkBtOfzESFC2g1Z7MdwuOeXOka3THvTQC51zSx
         IPllQBWjQSsDCxsdPSlPJxlie3+ZCebiNUTJMmXf3xIy12KBAtm9a5dLxfisgIDo/nlv
         Y3dLp3IfIsOV5uODcV2iFOIQUI/U7BqHaYiLAzsp6Pd83Rdpu/2DOWG4DfkjClKCcxpb
         16NKi6i/RFdDG6KGeE/JrIMlMZecI1N0TETJIOroauAAf3aFSKB5CC6g3G9uask+Mli/
         a+Rg==
X-Gm-Message-State: AOAM531bQTlYSUkDTbDWIuyMn7QG8rgvj9UwyNj8PFinIji+KKJngAYI
	J9/lb11yOp3IZDUkwMYrvhMr9akeKsLzpQ==
X-Google-Smtp-Source: ABdhPJzyfmQyDg5OemguI6fMlBnzxXbQ+f2aG4yO/Graag8cpxo9PKvu8nbXvSfdglP9qLpFxb5gHQ==
X-Received: by 2002:ac8:41d3:0:b0:2d4:170f:85ac with SMTP id o19-20020ac841d3000000b002d4170f85acmr22360237qtm.292.1645543188660;
        Tue, 22 Feb 2022 07:19:48 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id i13sm1607561qkp.83.2022.02.22.07.19.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 07:19:48 -0800 (PST)
Message-ID: <4876156c-b6b9-9fb7-7e9f-d0c56961d4f0@gmail.com>
Date: Tue, 22 Feb 2022 10:19:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
Message-ID-Hash: U7YFOJDQARLERGTAHSJLBTSXQBVMTOQZ
X-Message-ID-Hash: U7YFOJDQARLERGTAHSJLBTSXQBVMTOQZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U7YFOJDQARLERGTAHSJLBTSXQBVMTOQZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0yMiAwNzozNiwgQWx2YXJvIFBlbmRhcyBSZWNvbmRvIHdyb3RlOg0KPiBIZWxs
bywNCj4NCj4gV2hlbiBJIHdvcmsgd2l0aCAxIEIyMTAgSSBjYW4gZ2V0IDIgUnggcGVyZmVjdGx5
IHN5bmNocm9uaXplZCBhcyANCj4gZXhwZWN0ZWQuIEFsc28sIGlmIEkgdXNlIDIgQjIxMCB3aXRo
IDEgUnggZWFjaCwgSSBjYW4gc3luY2hyb25pemUgdGhlbSANCj4gd2l0aCBhbiBleHRlcm5hbCBy
ZWZlcmVuY2UgKGluIHRoaXMgY2FzZSB0aGUgb2N0b2Nsb2NrKSB3aXRob3V0IGFueSANCj4gcHJv
YmxlbS4gSG93ZXZlciwgd2hlbiB1c2luZyAyIEIyMTAgd2l0aCAyIFJ4IGVhY2ggKDQgUnggaW4g
dG90YWwpIHRoZSANCj4gc3luY2hyb25pemF0aW9uwqBpcyBzdGlsbCBwZXJmZWN0IGJldHdlZW4g
Unggb2YgdGhlIHNhbWUgZGV2aWNlcywgYnV0IA0KPiBoYXMgc29tZSBwcm9ibGVtcyBiZXR3ZWVu
wqBSeCBvZiBkaWZmZXJlbnQgZGV2aWNlcy4gT2YgY291cnNlLCB0aGUgDQo+IHJlc3VsdCB3aXRo
IHRoZSBvY3RvY2xvY2sgaXMgd2F5IGJldHRlciB0aGFuIGlmIEkgZG8gbm90IHVzZSBhbnkgDQo+
IGV4dGVybmFsIHJlZmVyZW5jZS4gTmV2ZXJ0aGVsZXNzLCBpdCBzZWVtcyB0aGF0wqAgdGhlcmUg
YXJlIHNvbWUgDQo+IHByb2JsZW1zIHdpdGggdGhlIHBoYXNlIHN5bmMgKGFsdGhvdWdoIHRoZSBm
cmVxdWVuY3kgc3luYyBzZWVtcyANCj4gY29ycmVjdCkuIEkgd29uZGVyIGlmIHRoaXMgaXMgYSBo
YXJkd2FyZSBsaW1pdGF0aW9uIG9yIGlmIHRoZXJlIGlzIA0KPiBzb21ldGhpbmcgSSBhbSBub3Qg
ZG9pbmcgcmlnaHQuDQo+DQo+IFRoYW5rIHlvdSB2ZXJ5IG11Y2gsDQo+DQo+IMOBbHZhcm8NCj4N
CllvdSBjb3VsZCBwZXJoYXBzIHNoYXJlIHdpdGggdXMgdGhlIGNvZGUgeW91J3JlIHVzaW5nIHRv
IHNldC11cCBzeW5jIA0KYW1vbmcgYWxsIDQgY2hhbm5lbHMuwqDCoCBUaGUgQjJ4eCBzZXJpZXMg
aXMgbm90IGFjdHVhbGx5IGRlc2lnbmVkIHRvIA0Kc3VwcG9ydCBzeW5jaHJvbml6YXRpb24gZXh0
ZXJuYWwNCiDCoCB0byB0aGUgYm9hcmQsIGJ1dCBpbiBzb21lIGNhc2VzLCB5b3UgY2FuIHNvcnQt
b2YgYWNoaWV2ZSBpdC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
