Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5857B654A73
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 02:19:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BB0638116F
	for <lists+usrp-users@lfdr.de>; Thu, 22 Dec 2022 20:19:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671758355; bh=aD/7/PedgoAF0wUxCzr9IIPltexvwZELSQBEheA21po=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hzzFYegiDpyJapMrhkkOLBa1H/ysvY4Z5Ak0hJNeR3kyvHklk5JtcyXye4FhryLFF
	 qJVBX1Fg/k66IJOsSR4ErUjT0NNnW9pgVMrxEQ+dH8FU5tnAUHiIqjjwDKxBcrDP/M
	 MMJugo3jHrfpKRwlMmJ0taQ9uLApSpOExbLb2ojW8J7LbdBKOwtUpcJ8MYB3Xwt7tb
	 uGZtaCRGKO4PKHGnQAwr4PRcVnvNFv4ShZ9JD455qM5mSi9MOBqQj/Fwnoi2/ZxvDe
	 kjj8pHj96Ttbll7XHGfcsD0wFzp2E48Mi9lCwQ3raUArcWC8/+mjQ/42nUH5ujCaaV
	 0QONIyRWUkUMQ==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C1E47383F75
	for <usrp-users@lists.ettus.com>; Thu, 22 Dec 2022 20:17:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IBj3Eh2w";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id c11so2732628qtn.11
        for <usrp-users@lists.ettus.com>; Thu, 22 Dec 2022 17:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kkJH8tjR5qsCuZpvDAlcY6ZNkXQCxvtli47O/8nVk5M=;
        b=IBj3Eh2wbKNHUjJhbNhUr6tCcCQrA65OA2sgcveVQgr4B5UWnuj2YbgPqIAv4sRmGK
         Ci+i74FWLs2arWlvlBwbv7ZWVvYxZzHMpXLvJKf9bt16qrP6TAa2bhFQSMGySIoJMrfb
         eWTHIBeGsWy7dN52K8zG7neaBczT3YX4WAbwU+EW/7vK7jMcH7mzWk1+UUAIO/pN9BT1
         6/wbouPDfyLNjWTvL1qd4DtXSk8WXrTkxpyqHITkHX97r/AgLWqS4c+jlt1633r23I+u
         v9YgIOeJaVaXyfH5v88kOacEMAMD6TweJRj8dEYku/xT3jjyGqXJgFvb2vJD/NbaLkGx
         mSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kkJH8tjR5qsCuZpvDAlcY6ZNkXQCxvtli47O/8nVk5M=;
        b=TKJQFKAc/28VpsZmjNXuWIot9xflFMDVOxvrITX5Z5WFc02yCXvYkzl3TlgGurHFV+
         FpJGsp0zmjhKwaYAmTx7WmSFAmjBrRPFMiPUrgteCQyBqzSo1OsF1DI5pjU7U6abP4UF
         nScuLRMFJQ+gB2YHkfFsELRfR6L374I8QYZg+Kcbg5ffYKrGiDc/2aoUy6SfvCn8gNeB
         h+lKnTCTIMPNndyAkEdwRE3LOqUint54cujBw6EMTlHnngZvhcotG3rFbcaiCWPi2U83
         pwCdWQ7LJsu5i3SeHiBxkn7HowoqvreS8vdeRj7KUtLY6o9DI3F2Dy7qgewbMbt+dyYN
         zkYA==
X-Gm-Message-State: AFqh2krae/K8yhmRleIK7zhxeD8oKdjVBz9Tx3geGgdLtYwUJZibL8le
	tS985Iarici2hEVBKcecz3xWse37HLI=
X-Google-Smtp-Source: AMrXdXs/yRB8ow2+B8qqzwkikWc32YAjbwyF8Md1Syim3NMrwQDXJ4izFWyMOzr7Xbr5M513i9HwXQ==
X-Received: by 2002:a05:622a:5d9d:b0:3a7:e1db:2fd7 with SMTP id fu29-20020a05622a5d9d00b003a7e1db2fd7mr15792239qtb.61.1671758271986;
        Thu, 22 Dec 2022 17:17:51 -0800 (PST)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id g25-20020ac84b79000000b003a70a675066sm1168490qts.79.2022.12.22.17.17.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 17:17:51 -0800 (PST)
Message-ID: <38ea043c-b655-a79d-12fa-3c5de0b8a544@gmail.com>
Date: Thu, 22 Dec 2022 20:17:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOcHjo+sQE-tDoW-1neDyk8_VsJM3iBvyQvm2penhKiub8+mOg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOcHjo+sQE-tDoW-1neDyk8_VsJM3iBvyQvm2penhKiub8+mOg@mail.gmail.com>
Message-ID-Hash: M3I2PJBRZ2DKZ4AKSPP6MMBH3OWFFOOS
X-Message-ID-Hash: M3I2PJBRZ2DKZ4AKSPP6MMBH3OWFFOOS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The design did not satisfy timing constraints.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3I2PJBRZ2DKZ4AKSPP6MMBH3OWFFOOS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMTIvMjAyMiAyMDoxMSwgQUVSTUFOIFRVRVJYVU4uIHdyb3RlOg0KPiBIaSwNCj4NCj4g
SSBhbSBidWlsZGluZyBhIGN1c3RvbSBSRk5vQyBibG9jayBvbiBVU1JQIFgzMTAuDQo+IFdoZW4g
SSB3YXMgdHJ5aW5nIHRvIGJ1aWxkIGJpdHN0cmVhbSwgYWZ0ZXIgYWxtb3N0IHR3byBob3VycyAN
Cj4gcHJvY2Vzc2luZywgaXQgZ2F2ZSBtZSB0aGUgZXJyb3IgYXMgYmVsb3cuDQo+DQo+IERvIHlv
dSBoYXZlIGFueSBpZGVhIHdoYXQgdGltaW5nIGNvbnN0cmFpbnRzIGFyZT8NCj4gSXMgdGhhdCBi
ZWNhdXNlIHRoZSBjdXN0b20gSVAgaXMgdG9vIGxhcmdlIGZvciBGUEdBPw0KPiBUaGFuayB5b3Uh
DQpJJ20gbm90IGFuIEZQR0EgcGVyc29uLCBwZXIgc2UsIGJ1dCBpbiBnZW5lcmFsIGZhaWx1cmUg
dG8gbWVldCB0aW1pbmcgDQptZWFucyB0aGF0IHRoZSBsYXlvdXQgZW5naW5lIGNhbm5vdA0KIMKg
IGZpbmQgYSBsYXlvdXQgaW4gd2hpY2ggYWxsIHRoZSBzaWduYWxzIHRoYXQgYXJlIHN1cHBvc2Vk
IHRvIGFycml2ZWQgDQoidG9nZXRoZXIiIGRvIHNvIHdpdGhpbiB0aGUgYXBwcm9wcmlhdGUNCiDC
oCB0aW1pbmcgd2luZG93cy7CoCBJdCBpcyB0aGUgY2FzZSwgaW4gbXkgcHJldmlvdXMgZXhwZXJp
ZW5jZSB3aXRoIEZQR0EgDQpkZXNpZ25zLCB0aGF0IHRoZSBsYXJnZXIgdGhlIGRlc2lnbiwNCiDC
oCB0aGUgaGFyZGVyIGl0IGlzIGZvciB0aGUgbGF5b3V0IGVuZ2luZSB0byBmaW5kIGEgbGF5b3V0
IHRoYXQgDQpzYXRpc2ZpZXMgdGltaW5nIGZvciBhbGwgdGhlIHRpbWluZy1jcml0aWNhbCBwaWVj
ZXMNCiDCoCBvZiB0aGUgZGVzaWduLg0KDQpPdGhlcnMgb24gdGhpcyBsaXN0IGhhdmUgdmFzdGx5
IG1vcmUgZXhwZXJpZW5jZSB0aGFuIG1lIGFuZCBjYW4gYW1wbGlmeSANCm9uIHRoaXMuwqAgVGhl
IGdlbmVyYWwgcXVlc3Rpb24gb2YNCiDCoCAid2hhdCBhcmUgdGltaW5nIGNvbnN0cmFpbnRzIiBp
cyBNVUNIIG1vcmUgb2YgYSBnZW5lcmFsICJkZXNpZ25pbmcgDQp3aXRoIEZQR0FzIiBxdWVzdGlv
biB0aGFuIGEgVUhEDQogwqAgcXVlc3Rpb24gb3IgZXZlbiBhbiBSRk5vQyBxdWVzdGlvbiwgcGVy
IHNlLsKgIEJ1dCB0aGVyZSBtYXkgYmUgYXNwZWN0cyANCm9mIHRoZSBSRk5vQyB1bml2ZXJzZSB0
aGF0IG1ha2UNCiDCoCB0aGlzIGEgbW9yZSBmcmVxdWVudCBwcm9ibGVtIGluIGFkZGluZyBjdXN0
b20gYml0cyBhbmQgcGllY2VzIHRvIHRoZSANCnN0YW5kYXJkIGRlc2lnbi4NCg0KDQo+DQo+IEl0
IHN0YXJ0ZWQgYWZ0ZXINCj4gWzAxOjU4OjM2XSBFeGVjdXRpbmcgVGNsOiB3cml0ZV9iaXRzdHJl
YW0gLWZvcmNlIA0KPiAvaG9tZS94eHh4eC91aGQvZnBnYS91c3JwMy90b3AveDMwMC9idWlsZC1Y
MzEwX0hHL3gzMDAuYml0DQo+IFswMTo1ODozNl0gU3RhcnRpbmcgV3JpdGUgQml0c3RyZWFtIENv
bW1hbmQNCj4gLi4uIChvbWl0IHNhbWUgQ1JJVElDQUwgV0FSTklORykNCj4gQ1JJVElDQUwgV0FS
TklORzogW1RpbWluZyAzOC00NjldIFRoZSBSRUZDTEsgcGluIG9mIElERUxBWUNUUkwgDQo+IHVf
ZGRyM18zMmJpdC91X2RkcjNfMzJiaXRfbWlnL3VfaW9kZWxheV9jdHJsL3VfaWRlbGF5Y3RybF8y
MDAgaGFzIGEgDQo+IGNsb2NrIHBlcmlvZCBvZiA0Ljk5OCBucyAoZnJlcXVlbmN5IDIwMC4wODAg
TWh6KSBidXQgSURFTEFZRTIgDQo+IHVfZGRyM18zMmJpdC91X2RkcjNfMzJiaXRfbWlnL3VfbWVt
Y191aV90b3BfYXhpL21lbV9pbnRmYzAvZGRyX3BoeV90b3AwL3VfZGRyX21jX3BoeV93cmFwcGVy
L3VfZGRyX21jX3BoeS9kZHJfcGh5XzRsYW5lc18wLnVfZGRyX3BoeV80bGFuZXMvZGRyX2J5dGVf
bGFuZV9DLmRkcl9ieXRlX2xhbmVfQy9kZHJfYnl0ZV9ncm91cF9pby9pbnB1dF9bN10uaXNlcmRl
c19kcV8uaWRlbGF5X2RxLmlkZWxheWUyIA0KPiBoYXMgUkVGQ0xLX0ZSRVFVRU5DWSBvZiAyMDAu
MDAwIE1oeiAocGVyaW9kIDUuMDAwIG5zKS4gVGhlIElERUxBWUNUUkwgDQo+IFJFRkNMSyBwaW4g
ZnJlcXVlbmN5IG11c3QgbWF0Y2ggdGhlIElERUxBWUUyIFJFRkNMS19GUkVRVUVOQ1kgcHJvcGVy
dHkuDQo+IENSSVRJQ0FMIFdBUk5JTkc6IFtUaW1pbmcgMzgtNDY5XSBUaGUgUkVGQ0xLIHBpbiBv
ZiBJREVMQVlDVFJMIA0KPiB1X2RkcjNfMzJiaXQvdV9kZHIzXzMyYml0X21pZy91X2lvZGVsYXlf
Y3RybC91X2lkZWxheWN0cmxfMjAwIGhhcyBhIA0KPiBjbG9jayBwZXJpb2Qgb2YgNC45OTggbnMg
KGZyZXF1ZW5jeSAyMDAuMDgwIE1oeikgYnV0IElERUxBWUUyIA0KPiB1X2RkcjNfMzJiaXQvdV9k
ZHIzXzMyYml0X21pZy91X21lbWNfdWlfdG9wX2F4aS9tZW1faW50ZmMwL2Rkcl9waHlfdG9wMC91
X2Rkcl9tY19waHlfd3JhcHBlci91X2Rkcl9tY19waHkvZGRyX3BoeV80bGFuZXNfMC51X2Rkcl9w
aHlfNGxhbmVzL2Rkcl9ieXRlX2xhbmVfQy5kZHJfYnl0ZV9sYW5lX0MvZGRyX2J5dGVfZ3JvdXBf
aW8vaW5wdXRfWzhdLmlzZXJkZXNfZHFfLmlkZWxheV9kcS5pZGVsYXllMiANCj4gaGFzIFJFRkNM
S19GUkVRVUVOQ1kgb2YgMjAwLjAwMCBNaHogKHBlcmlvZCA1LjAwMCBucykuIFRoZSBJREVMQVlD
VFJMIA0KPiBSRUZDTEsgcGluIGZyZXF1ZW5jeSBtdXN0IG1hdGNoIHRoZSBJREVMQVlFMiBSRUZD
TEtfRlJFUVVFTkNZIHByb3BlcnR5Lg0KPiBFUlJPUjogW0J1aWxkZXIgMC0wXSBUaGUgZGVzaWdu
IGRpZCBub3Qgc2F0aXNmeSB0aW1pbmcgY29uc3RyYWludHMuIA0KPiAoSW1wbGVtZW50YXRpb24g
b3V0cHV0cyB3ZXJlIHN0aWxsIGdlbmVyYXRlZCkNCj4gRVJST1I6IFtDb21tb24gMTctMzldICdz
ZW5kX21zZ19pZCcgZmFpbGVkIGR1ZSB0byBlYXJsaWVyIGVycm9ycy4NCj4gWzAyOjAwOjA4XSBD
dXJyZW50IHRhc2s6IFdyaXRlIEJpdHN0cmVhbSArKysgQ3VycmVudCBQaGFzZTogU3RhcnRpbmcN
Cj4gWzAyOjAwOjA4XSBDdXJyZW50IHRhc2s6IFdyaXRlIEJpdHN0cmVhbSArKysgQ3VycmVudCBQ
aGFzZTogRmluaXNoZWQNCj4gWzAyOjAwOjA4XSBQcm9jZXNzIHRlcm1pbmF0ZWQuIFN0YXR1czog
RmFpbHVyZQ0KPg0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQ0KPiBXYXJuaW5nczogwqAgwqAgwqAgwqAgwqAgMTEyMQ0KPiBDcml0aWNh
bCBXYXJuaW5nczogwqAxMTMNCj4gRXJyb3JzOiDCoCDCoCDCoCDCoCDCoCDCoCAyDQo+DQo+IG1h
a2VbNV06ICoqKiBbTWFrZWZpbGUueDMwMC5pbmM6MTI3OiBiaW5dIEVycm9yIDENCj4gbWFrZVs0
XTogKioqIFtNYWtlZmlsZTo4NTogWDMxMF9IR10gRXJyb3IgMg0KPg0KPg0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
