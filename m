Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DC046A690
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 21:10:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9C65384BC7
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 15:10:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="m8IS9tb2";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 37F4538464A
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 15:10:02 -0500 (EST)
Received: by mail-qk1-f182.google.com with SMTP id g28so12362434qkk.9
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 12:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kWkGd+4EzoDhky0rlvccCIqsbw81KWZMqJ35EsbY0os=;
        b=m8IS9tb24jtf+D2e0i3y4jOIQo4A4HlvJVWHgBf3+1P5xFRxXoFx3p8Xm37zYR526V
         88R24r+unjZ6sFvp3r2s7BZW+0wjAMkxxoq0RycIn5YbXMrwtWy8qufsUwJ6Fvio1qRO
         9fpl3sI6TSr7lp6HbslGCue04jbeIswSRN2kgMQZ/dD1nYocweq5TNBXQ0tQjVRo3YJ5
         rSvlMEK1VLb/qkyhyqTnwwsFkgrKHXfTm8xOc6fCQcAigUuSfcBW2rL7tAWK2IYmInDf
         QbT1MPZQUHVUE6RwQz8wEmks8JgLU4jPfJj1TbG+kKFNlTGlviK0uESyQnMOKs76+udC
         R9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kWkGd+4EzoDhky0rlvccCIqsbw81KWZMqJ35EsbY0os=;
        b=kpaNVc6b6h+qyzg9DYNvpuZBsiGc7jAQ0TK690hEWMf63v11YcqTAxXY7ibXKlOfY3
         TP8sKkSxNb7VuzRUe5Y3ShZ0v99ZV20x9ZGiIBTqjQOzWkugFFGUFb9O0caiNOuVGi5A
         xDXsirZPiuMX5YLyQevY7TGJjI3isa6ASF9xT5siotUKmeR2PKgA1QrVg3K9IQLOQ9hX
         Aez8d0ZVGcQ7AyhAgHlympfNV7/YpNu1cRNBXBQXnr5FUHjl9JHC0IWK8SFEUh4tpvfE
         guWfpryusT40QjBBAjaO1yGXlhGeaelVXQrlkz4O3OVna3OiLD4zv+YWUHSrpfcKLzYo
         Ngow==
X-Gm-Message-State: AOAM533YCahB96GGDM2Qw4LxYJjobldstW49m3s20i9leii0Za5cytZp
	QG2PbYpwAuD7qIn1mkzirvw=
X-Google-Smtp-Source: ABdhPJzmDSeAF+i0J/fmPHuSRMC2a850gTu3b+iyAPVpUNSKDJMGK3H4FiuznWvIpL9RFnEDYdcGYQ==
X-Received: by 2002:a05:620a:4454:: with SMTP id w20mr36075786qkp.369.1638821401588;
        Mon, 06 Dec 2021 12:10:01 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a38sm6685188qkp.80.2021.12.06.12.10.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 12:10:01 -0800 (PST)
Message-ID: <499b8dac-6c7f-913f-38a9-41755aa9a169@gmail.com>
Date: Mon, 6 Dec 2021 15:10:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Temir Karakurum <temirkarakurum@gmail.com>
References: <CANP_ax+zVTY=H8NptjGVX10kRrysj3kYptxxfCwnKnFb1kW-AQ@mail.gmail.com>
 <7aa2680a-f8e2-84ac-002f-4cf37fe3377d@gmail.com>
 <CANP_axKGJv-p26okypxUTZ4r6Tmga9U9r-9Pgch4UhzpbvjNcA@mail.gmail.com>
 <cd880ff1-61ae-e84e-f57f-fce55965ecaa@gmail.com>
 <CANP_ax+otLyhdbZU8-RG_yU1dzjPOjHzYCYw4Ywxj+jvU573Cw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANP_ax+otLyhdbZU8-RG_yU1dzjPOjHzYCYw4Ywxj+jvU573Cw@mail.gmail.com>
Message-ID-Hash: LHQEXABFZSJP72II273OCIRJHRRJIE72
X-Message-ID-Hash: LHQEXABFZSJP72II273OCIRJHRRJIE72
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A question about external local oscillator
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LHQEXABFZSJP72II273OCIRJHRRJIE72/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0wNiAxNDo0OSwgVGVtaXIgS2FyYWt1cnVtIHdyb3RlOg0KPiBZZWFoLCBJIGtu
b3cgOTM2MSBkb2Vzbid0IHN1cHBvcnQgZXh0ZXJuYWwgTE8sIHRoYXQncyB3aHkgSSBhbSBsb29r
aW5nIA0KPiBpbnRvIHB1cmNoYXNpbmcgTjMyMC4gSSBhbSBpbnRlcmVzdGVkIGluIHRoZSBhYmls
aXR5IG9mIGZhc3Qgc3dlZXBpbmcgDQo+IHRvIGRvIHNwZWN0cnVtIHNlbnNpbmcvbW9uaXRvcmlu
Zy4NCkFoLCBOMzIwIGlzIGEgYml0IG9mIGEgZGlmZmVyZW50IGJlYXN0IHRoYW4gTjMxMCwgSSBo
YWQgdGhvdWdodCB5b3Ugd2VyZSANCmNvbnNpZGVyaW5nIE4zMTAgKEFEOTM3MS1iYXNlZCkuDQoN
ClRoZSBOMzIwIGZvciB0aGUgImhpZ2ggYmFuZCIgKDQwME1oeiB0byA2R0h6IGFzIGZhciBhcyBJ
IGtub3cpIHVzZXMgYW4gDQpBREw1MzgwIG1peGVyLCB3aGljaCB1c2VzIGFuIFItQyBwaGFzZSBz
cGxpdHRlciB3aG9zZSBwZXJmb3JtYW5jZSB2YXJpZXMgYnkNCiDCoCBmcmVxdWVuY3kuwqAgQXQg
dGhlIGhpZ2ggZW5kIG9mIHRoZSByYW5nZSwgdGhlIEkvUSBwaGFzZSBpbWJhbGFuY2UgaXMgDQph
cyBtdWNoIGFzIDEuMjVERUcsIHdoaWNoIG1heSBiZSB0b2xlcmFibGUgaW4geW91ciBhcHBsaWNh
dGlvbiwgYW5kIA0KYW55d2F5LCBJIHRoaW5rDQogwqAgTjMyMCB1c2VzIHN0YXRpYyBJL1EgY2Fs
aWJyYXRpb24sIHZlcnkgbXVjaCBsaWtlIFdCWCBhbmQgU0JYIGluIE4yeHggDQpvciBYM3h4IGRl
dmljZXMuwqDCoCBTbyBpbmRlZWQsIGlmIHlvdSBoYXZlIGEgZmFzdC1zd2VlcGluZyBleHRlcm5h
bCBMTywgDQp5b3Ugc2hvdWxkDQogwqAgYmUgYWJsZSB0byB1c2UgaXQgd2l0aCBOMzIwLg0KDQpU
aGUgbmF0aXZlIHN5bnRoZXNpemVyIG9uIHRoZSBib2FyZCBpcyBhbiBMTVgyNTkyLCB3aGljaCBj
YW4gYWNoaWV2ZSANCmxvY2sgdGltZXMgb2YgMTAwdXMuDQoNCj4NCj4gSSB0aG91Z2h0IGFib3V0
IGJ1aWxkaW5nIGEgY3VzdG9tIHN1cGVyLWhldGVyb2R5bmUgZnJvbnQtZW5kIGFuZCANCj4gZHJp
dmluZyBpdCBmcm9tLCBzYXksIHRoZSBHUElPIHBpbnMgb2YgdGhlIFNEUiBidXQgbG9va2luZyBh
dCBFdHR1cycgDQo+IG9mZmVyaW5ncywgTjMyMCBzZWVtZWQgcHJvbWlzaW5nIGFzwqBhIGJ1aWx0
LWluIHNvbHV0aW9uLiBIb3dldmVyLCBmcm9tIA0KPiB5b3VyIHJlcGxpZXMgaXQgbG9va3MgbGlr
ZSB0aGVyZSBhcmUgZnVydGhlciBjb21wbGljYXRpb25zIGFuZCBudWFuY2VzIA0KPiBhbmQgaXQg
aXMgbm90IGFzIHN0cmFpZ2h0Zm9yd2FyZCBhcyBJIGhvcGVkLg0KPg0KPiBCZXN0LA0KPiBUZW1p
cg0KPg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
