Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7771944491E
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 20:41:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32656383FCD
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 15:41:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FpAqjBcQ";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A35F383D8B
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 15:40:18 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id p17so2368595qkj.0
        for <usrp-users@lists.ettus.com>; Wed, 03 Nov 2021 12:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=xeTuDYgPjNM77r2ijqmwcD7jUPf0oq/2Nxv1gNHd1Ns=;
        b=FpAqjBcQlTGoGi5WRhbAG4faZ9rl33u3M0lh9tT7WIafcvI7wgZy65a460MEjFEtgq
         YltCMFTFLjN/PlU27ic0vbsiFCbJazRtY6VxLJitPEsJRAaDenlfMKaZ2lDI5Ggmz3M/
         hcplMbtex83IU+XKSypBcGQNq1CuYxSWFz5zqEugCfs9s/K6clteCTZPA9mjyop1Wzyq
         72btpjJ9XZuqHZnGcv0cAVD5P1eJpdr269yr4yRNcyVvEoL/jrQJ2XO+zalu/YwQbnCS
         Y0rjuM9OibJtoauwS2Z0HCB+nruYnjVcJxL7WRmeimgDwEjv+YmVk6O9+dvQwUd41Mbe
         AGwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xeTuDYgPjNM77r2ijqmwcD7jUPf0oq/2Nxv1gNHd1Ns=;
        b=jYZS9uk2NFtHbh9pE9/F0ivbIPGEwWRrjFEcgDGCTXSar4EuOBnFxHt1ugzJnPhutl
         iE/VNkOHo5N9D0GAN3gAiPzgB7IYNX8cGDj5CXMUoPr74MAr9ZEQ9mH87NLcwL0IVcJw
         rPzsNbVBgNyDgakiQi2Yp9OBUQEI71xHJM05F3lWr55ZmpWl0mQ+LoeUDJYdh4OQP9ki
         FuT/uknwaKKlp0wR+6CVySZqGpysbde2tCv61M80B/mpIym4RbjcHk3RleHs9r+16V6f
         6Rqf868+sGeNlD2rflsf+G6ZuTlatFzxELK+nXkqaDqZWUO/ZRoYD+JWkksA1hUULmRf
         7zZg==
X-Gm-Message-State: AOAM533v+rJmgHpM0HpaHHrUoMpHI8LTabGcjaSzWw7Qtq9AAIoxMBcI
	ZN/QuerAO4yfkFguaRImasphR5tnicw=
X-Google-Smtp-Source: ABdhPJwrjTgRrbDoMZfkRP/QPxZeQ+ZQL6hBUs2YRAcfGelVA8rudSJY94oyvT4u3hejfpI7Fy3q/g==
X-Received: by 2002:a05:620a:c4a:: with SMTP id u10mr36067638qki.69.1635968418239;
        Wed, 03 Nov 2021 12:40:18 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id d18sm2380772qtb.70.2021.11.03.12.40.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 12:40:17 -0700 (PDT)
Message-ID: <3eba92d0-2cb7-262f-9786-528042cc4679@gmail.com>
Date: Wed, 3 Nov 2021 15:40:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <97776b25089c4fec9a2cd5e9b4bf5d8c@erdc.dren.mil>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <97776b25089c4fec9a2cd5e9b4bf5d8c@erdc.dren.mil>
Message-ID-Hash: HMK54Q6C4OXRL2UPFMWLSUVHMISNBPX6
X-Message-ID-Hash: HMK54Q6C4OXRL2UPFMWLSUVHMISNBPX6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with error_code_late_command using two x310's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMK54Q6C4OXRL2UPFMWLSUVHMISNBPX6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0wMyAxMzoxNCwgV29sc2llZmZlciwgQ2FybCBMLiBFUkRDLVJERS1DUkwtTkgg
Q0lWIHZpYSANClVTUlAtdXNlcnMgd3JvdGU6DQo+IEhlbGxvIGFsbCwNCj4NCj4gSSBoYXZlIDIg
eDMxMCdzLCBvbmUgaXMgYSB0cmFuc21pdHRlciBhbmQgdGhlIG90aGVyIGlzIGEgcmVjZWl2ZXIu
IEkgaGF2ZSBzb21lIGNvZGUgSSBhZGFwdGVkIGZyb20gYSB1c3JwIGV4YW1wbGUgYXdoaWxlIGJh
Y2sgYW5kIGluIHRlc3RpbmcgdGhlIGJvdW5kcyBvZiBteSBzeXN0ZW0sIEkgYW0gZ2V0dGluZyBh
IEVSUk9SX0NPREVfTEFURV9DT01NQU5EIHdhcm5pbmcgYWZ0ZXIgYSBmZXcgc2Vjb25kcyB3aGVu
IHRyeWluZyB0byByZWNlaXZlIGV2ZXJ5IGZldyBtcyBhbmQgdGhpbmsgSSBtYXkgYmUgbWlzaW50
ZXJwcmV0aW5nIGF0IGxlYXN0IHBhcnRpYWxseSB3aGF0IG15IGNvZGUgaXMgZG9pbmcuIEkgY2Fu
IHJ1biB0aGUgY29kZSBmb3IgdXAgdG8gNSwwMDBpc2ggbG9vcHMgc28gSSdtIGd1ZXNzaW5nIHNv
bWV0aGluZyBpcyBldmVudHVhbGx5IGxvc2luZyBncm91bmQgc29tZXdoZXJlIGFuZCBmYWlscw0K
Pg0KPiBJdCBhbGwgb3BlcmF0ZXMgb3V0IG9mIG9uZSAuY3BwIHByb2dyYW0gYW5kIG1hbmFnZXMg
YSBzZW5kX2Zyb21fZmlsZSBhbmQgcmVjdl90b19maWxlIHRocmVhZC4NCj4NCj4gSSdtIGd1ZXNz
aW5nIHRoZSBwcm9ibGVtIGlzIG9uIHRoZSByZWNlaXZlIHNpZGUsIGFuZCBlc3NlbnRpYWxseSB0
aGUgcmVjdl90b19maWxlIGZ1bmN0aW9uIGdvZXMgc29tZXRoaW5nIGxpa2UgdGhpczoNCj4NCj4g
c3RyZWFtX2NtZC5udW1fc2FtcGVzID0gbnVtX3JlcXVlc3RlZF9zYW1wbGVzOw0KPiBzdHJlYW1f
Y21kLnN0cmVhbV9ub3cgPSBmYWxzZTsNCj4gc3RyZWFtX2NtZC50aW1lX3NwZWMgPSB1aGQ6OnRp
bWVfc3BlY190KCByZWN2X3RpbWUgKTsNCj4gcnhfc3RyZWFtLT5pc3N1ZV9zdHJlYW1fY21kKCBz
dHJlYW1fY21kICk7DQo+DQo+IHdoaWxlIChub3Qgc3RvcF9zaWduYWxfY2FsbGVkKSB7DQo+IAkN
Cj4gCW51bV9zYW1wbGVzID0gcnhfc3RyZWFtLT5yZWN2KCBidWZmZXJfcHRycywgc2FtcGxzX3Bl
cl9idWZmLCBtZXRhX2RhdGEsIHRpbWVvdXQgKTsNCj4NCj4gCXRvdGFsX251bV9zYW1wcyA9IHRv
dGFsX251bV9zYW1wcyArIG51bV9zYW1wczsNCj4NCj4gCS8vLy8vIFJlY2VpdmUgZm9yIDIwIHVz
IC8vLy8vLw0KPiAJLy8vLy8gYmFzaWNhbGx5IGl0J3MgbGlzdGVuaW5nIGZvciBhIDIwdXMgbG9u
ZyBzaWduYWwgc2VudCBmcm9tIHRyYW5zbWl0dGVyIChzZW50IGF0ICJyZWN2X3RpbWUiIGFzIHdl
bGwpDQo+IAkvLy8vLyB3cml0ZXMgdG8gb3V0ZmlsZSAvLy8vLy8vLw0KPiAJLy8vLy8gY2hlY2sg
Zm9yIGVycm9ycyAvLy8vLy8vLw0KPiAJDQo+IAkvLyBlbmQgb2YgdHJhbnNtaXR0ZWQgZmlsZSBw
cmVzdW1hYmx5IHJlYWNoZWQNCj4gCUlmICggbnVtX3RvdGFsX3NhbXBsZXMgPj0gbnVtX3JlcXVl
c3RlZF9zYW1wbGVzKSB7DQo+IAkNCj4gCQludW1fdG90YWxfc2FtcGxlcyA9IDA7DQo+IAkJDQo+
IAkJcmVjdl90aW1lID0gcmVjdl90aW1lICsgZGVsYXk7IC8vIGluY3JlbWVudCBkZWxheSBieSAx
IG1zIGhhdmUgdHJpZWQgYXMgaGlnaCBhcyAxMCBtcyB3aXRoIG5vIGx1Y2sgYWZ0ZXIgYWJvdXQg
MTAsMDAwIGxvb3BzIG9yIHNvDQo+IAkJc3RyZWFtX2NtZC50aW1lX3NwZWMgPSB1aGQ6OnR1bmVf
c3BlY190KCByZWN2X3RpbWUgKTsNCj4gCQlyeF9zdHJlYW0tPmlzc3VlX3N0cmVhbV9jbWQoIHN0
cmVhbV9jbWQgKTsNCj4gCQkNCj4gCQlmb3IgKHNpemVfdCBpPTA7IGk8IGJ1ZmZzLnNpemUoKTsg
aSsrKSB7DQo+IAkJCWJ1ZmZfcHRycy5wdXNoX2JhY2soJmJ1ZmZzW2ldLmZyb250KCkpOw0KPiAJ
CX0NCj4gCX0NCj4gfQ0KPg0KPg0KPiBJJ20gdGhpbmtpbmcgaXQgbWF5IGp1c3QgYmUgYW4gZXJy
b3IgaW4gaG93IEkndmUgaW50ZXJwcmV0ZWQgdGhlIGV4YW1wbGUgY29kZSBhbmQgcmVwdXJwb3Nl
ZCBpdC4gSSBkb24ndCBoYXZlIGEgc3Ryb25nIHVuZGVyc3RhbmRpbmcgb2YgdGhlIGRpZmZlcmVu
Y2UgYmV0d2VlbiBpc3N1ZV9zdHJlYW1fY21kKCkgYW5kIHJlY3YoKSB3aGljaCBjb3VsZCBiZSBw
YXJ0IG9mIHRoZSBwcm9ibGVtIGFzIHdlbGwuIFRoaXMgaXMgYSBzaW1wbGlmaWVkIHZlcnNpb24g
b2YgdGhlIGNvZGUgdG8gZXhwbGFpbiB3aGF0J3MgaGFwcGVuaW5nIHNvIHBsZWFzZSBsZXQgbWUg
a25vdyBpZiB5b3UgbmVlZCBhZGRpdGlvbmFsIGRldGFpbHMNCj4NCj4NCj4gVGhhbmtzDQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
ClRoZSBzdHJlYW0gY29tbWFuZCBpbnN0cnV0cyB0aGUgVVNSUCB0byBzdGFydCBzdHJlYW1pbmcg
c2FtcGxlcywgd2hpbGUgDQpyZWN2KCkgaXMgdXNlZCB0byBjYXB0dXJlIHRob3NlIHNhbXBsZXMu
wqAgVGhleSBhcmVuJ3QgbmVjZXNzYXJpbHkgMToxIA0KZGVwZW5kaW5nIG9uIHRoZSBzdHJlYW1p
bmcNCiDCoCAqTU9ERSouDQoNClNlZSB0aGUgQVBJIGRvY3VtZW50YXRpb24gaGVyZToNCg0KaHR0
cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL2NsYXNzdWhkXzFfMXVzcnBfMV8xbXVsdGlfX3Vz
cnAuaHRtbCNhZmU1MGMyYjI0MjczZDFiM2IyYTM0M2I3MzYwOWIzMTANCg0KaHR0cHM6Ly9maWxl
cy5ldHR1cy5jb20vbWFudWFsL3N0cnVjdHVoZF8xXzFzdHJlYW1fX2NtZF9fdC5odG1sDQoNCg0K
U28sIGZvciBleGFtcGxlIGZvciBTVFJFQU1fTU9ERV9TVEFSVF9DT05USU5VT1VTwqAgeW91J2Qg
aXNzdWUgZXhhY3RseSAxIA0Kb2YgdGhvc2UsIGFuZCB0aGVuIHJlY3YoKSBzYW1wbGVzIHVudGls
IHlvdSBhcmUgYm9yZWQsIGFuZCB0aGVuIGlzc3VlIGENCiDCoCBTVFJFQU1fTU9ERV9TVE9QX0NP
TlRJTlVPVVMuDQoNCkJ1dCB0aGVyZSdzIGFsc28gU1RSRUFNX01PREVfTlVNX1NBTVBTX0FORF9E
T05FIGFuZCANClNUUkVBTV9NT0RFX05VTV9TQU1QU19BTkRfTU9SRQ0KDQpZb3UgcHJvYmFibHkg
d2FudCBTVFJFQU1fTU9ERV9OVU1fU0FNUFNfQU5EX01PUkUNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
