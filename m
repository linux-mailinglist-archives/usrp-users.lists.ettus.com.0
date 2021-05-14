Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB58A3810B8
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 21:27:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72E33383DDD
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 15:27:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E5nUrtrq";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 3291E380BBC
	for <USRP-users@lists.ettus.com>; Fri, 14 May 2021 15:26:34 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id a22so43951qkl.10
        for <USRP-users@lists.ettus.com>; Fri, 14 May 2021 12:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=6e6dALxigLPbSJl9Rb3Ih/B9YpsJkUt7NF3sM0NApP0=;
        b=E5nUrtrqyEZhqZ2DDGgX7W8VAGjltvtmbQLkVQLd6gSRh/jcTP0wWs+UH0hQALUWT/
         QYT+4LC/HsXYzfmzAHlsRVKammklCqGrnGphjOnFbJu3T4+P4fTXcUv6whfVBXBoZdn8
         zc0jIuFMfCRgFlOuS8zY3SlKaGegyi3ArzRZsigig4k8SDFaiUOv8+99cFNI29XxPN/A
         oJ3Q+dk4LzUlotpv7k6v85FukekqMMM7tGDfr0UjcxizF0ylpRsrtZQILWb0NQVMw8H4
         tJRtd/sy2etVbWLy59S5qzSYqIpuZf9u+LpbNRDryQv1e/Er1UIiPR70JlS2s+FYU2tf
         cTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=6e6dALxigLPbSJl9Rb3Ih/B9YpsJkUt7NF3sM0NApP0=;
        b=m7vSxyLYcDcYQm7Zy6BnRGYjRv5o8bCcX2IOuccqU4zoosAA2V+NuFqwnJbXCZd/YK
         CZUMm7uSbqmDu74S8duW77DyObUPORJTfNmkyEDGAF6CBcB3ljSl4aKydBfmB93KP+Yo
         nDYQI5veaoiJ52NqyD1vmT1QZdsLsIb+h0IyO94b3AdlNvBzIinvvkR54qE8qGSsXe9o
         pAtCsinIB3PzxmxoZyrxaieIC+nUl415WHLsLu6PgpF9jvP8t4sDf9zeQrMl9kAjH2To
         UsREP2YCcB0fWNF/pok9PJc/npWty+W4A4/uCZTcWRJ2SsG2ihxo9/pRvc+6ZB7po7U2
         i77A==
X-Gm-Message-State: AOAM532Cn0fXK6Xv9+4NqIO8qGap2m0NVcUisSOsLdqWDpGE+X1+84RJ
	EV90N0OkO4ekzvlMoJnBB/8DIEv6aTk=
X-Google-Smtp-Source: ABdhPJy+NVFyxYig9tszYZL/NkEyPRfPS22pIYJWo204rDw45YRfDMpQ8iauzaOZJWTAVdKT2E7ktA==
X-Received: by 2002:a05:620a:3dc:: with SMTP id r28mr13404683qkm.319.1621020393672;
        Fri, 14 May 2021 12:26:33 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id q23sm5691849qtl.13.2021.05.14.12.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 12:26:33 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 May 2021 15:26:32 -0400
Message-Id: <A86ADD35-1A53-4DCF-8F77-E29172D9E135@gmail.com>
References: <42f4dc77-e817-171a-ad75-ba2d4ac51e63@olifantasia.com>
In-Reply-To: <42f4dc77-e817-171a-ad75-ba2d4ac51e63@olifantasia.com>
To: Martin <usrp-users-list@olifantasia.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: KZNLZ7O35WYJUNIMDMUGJMDWCIO75HUS
X-Message-ID-Hash: KZNLZ7O35WYJUNIMDMUGJMDWCIO75HUS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZNLZ7O35WYJUNIMDMUGJMDWCIO75HUS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBoYXBwZW5zIGlmIHlvdSBkb27igJl0IHNwZWNpZnkgYW55IGFyZ3MgYXQgYWxsPw0KDQpT
ZW50IGZyb20gbXkgaVBob25lDQoNCj4gT24gTWF5IDE0LCAyMDIxLCBhdCAzOjIwIFBNLCBNYXJ0
aW4gPHVzcnAtdXNlcnMtbGlzdEBvbGlmYW50YXNpYS5jb20+IHdyb3RlOg0KPiANCj4g77u/SGks
DQo+IA0KPiBJIGhhdmUgYW4gRTMxMCBzZzEgd2hpY2ggaGFkIGFuIG9sZGVyIHNkaW1nIG9uIGl0
ICh3aXRoIHVoZCAzLjkuMikuIFVIRCB3b3JrZWQgZmluZSB3aXRoIHRoaXMgb2xkZXIgaW1hZ2Uu
DQo+IA0KPiBCdXQgbm93IEkgdXBkYXRlZCB0aGUgc2RjYXJkIHdpdGggdGhlIFVIRCAzLjE1LjAu
MCBzZCBpbWFnZSBmb3IgRTMxMCBzZzENCj4gDQo+IHVzcnBfZTMxMF9mcy5zZGltZyBmcm9tIGUz
eHhfZTMxMF9zZzFfc2RpbWdfZGVmYXVsdC12My4xNS4wLjAuemlwDQo+IA0KPiBJdCBib290cyBm
aW5lIGJ1dCBub3cgaXQgZG9lcyBub3QgZmluZCBpdHMgb3duIHVoZCBoYXJkd2FyZQ0KPiANCj4g
VGhpcyBpcyB3aGF0IEkgZ2V0IHdoZW4gSSBydW4gdGhlc2UgY29tbWFuZHMgb24gdGhlIGRldmlj
ZSAodGhyb3VnaCBzZXJpYWwgb3Igc3NoKQ0KPiANCj4gcm9vdEBuaS1lMzF4On4jIHVoZF91c3Jw
X3Byb2JlIC0tYXJncyAidHlwZT1lMzAwIg0KPiBFcnJvcjogTG9va3VwRXJyb3I6IEtleUVycm9y
OiBObyBkZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4NCj4gRGV2aWNlIEFkZHJlc3M6DQo+ICAgIHR5
cGU6IGUzMDANCj4gDQo+IHJvb3RAbmktZTMxeDp+IyB1aGRfZmluZF9kZXZpY2VzDQo+IFtJTkZP
XSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDguMi4wOyBCb29zdF8xMDY4MDA7IFVIRF8z
LjE1LjAuMC0wLWdhZWEwZTJkZQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiAtLSBVSEQgRGV2aWNlIDANCj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gRGV2aWNlIEFkZHJlc3M6DQo+ICAg
IHNlcmlhbDoNCj4gICAgY2xhaW1lZDogRmFsc2UNCj4gICAgbWdtdF9hZGRyOiAxMjcuMC4wLjEN
Cj4gICAgcHJvZHVjdDoNCj4gICAgcmVhY2hhYmxlOiBObw0KPiAgICB0eXBlOg0KPiANCj4gDQo+
IFdoYXQgYW0gSSBkb2luZyB3cm9uZyBoZXJlPw0KPiANCj4gU2hvdWxkIEkgdXNlIGEgZGlmZmVy
ZW50IGRldmljZSBhZGRyZXNzDQo+IA0KPiBJIGFsc28gdHJpZWQgLWFyZ3MgImFkZHI9MTI3LjAu
MC4xIiBCdXQgdGhhdCBvZiBjb3Vyc2UgZG9lcyBub3Qgd29yay4gKGFzIGV4cGVjdGVkKQ0KPiAN
Cj4gT3IgbWF5YmUgaXQgaGFzIHRvIGRvIHRoYXQgdGhpcyBpcyBhbiBvbGRlciBzZzEgdXNycCBF
MzEwLg0KPiBEb2VzIHRoYXQgd29yayBkaWZmZXJlbnRseSBvciBtYXliZSB0aGUgc2cxIGltYWdl
IGlzIGxlc3MgdGVzdGVkLg0KPiANCj4gUGxlYXNlIGVubGlnaHRlbiBtZS4NCj4gDQo+IFRoYW5r
cyBpbiBhZHZhbmNlLA0KPiANCj4gTWFydGluIER1ZG9rIHZhbiBIZWVsDQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
