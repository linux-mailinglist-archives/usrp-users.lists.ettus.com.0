Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3A86C599E
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:50:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77F1138192D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 18:50:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679525447; bh=xPJQLld/PQ0fNU1Rld4cBBMf+271XEutnj8b/a2jfR4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OQo3DpjwXpYNxU6+bYwW8bjKsqDLgK2Y6+ZvA0I5jz5y6+V2yEWkGj1usbd5seVW/
	 JXEpUUxKZ9l3q7oZXVUEsUkgGek8x4ell6wwXTHCoI2RMYi6r136k0wAOTbFEo5Mnx
	 iN3cxKxJVoRK5jOTUJ/EPWCqPxDrOMdEtx+yMKOCUrbxRHYsv277ffvCJyCBCBUqVM
	 ZYDDLNgpiwcpbuOMmHHJBXTTXm5aBB+l/kFn8D6zGtoYGgANnQuRKFv1lYX4kfTloA
	 u+OryPd2TLnk0ydbl2mE7YMSx1Q6Hkj1VCMoB5k+ki21HXynE0vj05srADgVLTLmeG
	 ETyaQVSPvgu+g==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D4AB5384545
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 18:49:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X89v9N5P";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id x1so24684784qtr.7
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 15:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679525393;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SByiPght9yDLQPRq5ElZjjPGEnIub33B2wPcJCSgvlM=;
        b=X89v9N5POE5P1xDI0TI9c4yJu+SINgchHkc8fmY8bbl9YcupviousWIAdKf87Kd0Q9
         pozCRz4RNqa6Iaf+yPDoCB5I8ksaBXVq6NqfrMZv6wQgGGNdqJv4rH0HK0Ry5zdRDpJo
         zt5TXanzNJEjtaOGIyre1s1ZYXueW72m+aSJ12GrQ3gXbmXaPBzB3LH5l0tonrLqTNPi
         Rgfhn34SnkCP1pUk7j8dHiqrCbJHQFFGd9QNnaitVzfyIx4IMR7kVvMPCWX/SBRV8i2k
         R04odSsHiRzPzhKkLEawJkavuMGn9aP1DYigg6BZLJs9o13Zutbm+EqSZ/CU8Oq1bTV4
         k4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679525393;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SByiPght9yDLQPRq5ElZjjPGEnIub33B2wPcJCSgvlM=;
        b=L3PkqNrQSYVBf6lH12J0rFGgagY6lY+JmUnuepGj+rOvmHem15SkTs2k5E0yY2LTKv
         gobp35KdQskUgktri/YdM5jh2ay7FjJgJLBF39aAtvV4qiOq1xNDF5lmogMBOGZy4pNp
         fuOabCntw64W2yeGb9jiT9POnhNNBFA61eoJ1M75R9CYF10Qyrnuxh5YYaOYdc5wGc8C
         P7r5HV6C3sDD4OYgmmiqn6CMPhIcFnT0M7n39iS+RR8zukjQO6K1vgkj+NGwzmUr1wPc
         VhFQSpRP7F89HEP1IK1K5tcFV2fAakSprzRZ34mf7LFfbhUkFSwtMM5MnT1VJEXwhKuH
         QhYg==
X-Gm-Message-State: AO0yUKWlZo3ec4agwCB0O8XTltxEAR/Qk3gZ/uU6zQMJc6rtP4+96V5B
	dI+DXn5HcnlG+BUlK9N1ufeUwyOjmmI=
X-Google-Smtp-Source: AK7set+EXEJIKO7lJNWZeVNi9ieKmHhXApqvvl4gyQoPabRRQGjlz11xppklyDw7U82e+UmZdWwyow==
X-Received: by 2002:ac8:59cd:0:b0:3e3:9199:d27 with SMTP id f13-20020ac859cd000000b003e391990d27mr621266qtf.53.1679525393076;
        Wed, 22 Mar 2023 15:49:53 -0700 (PDT)
Received: from [192.168.2.161] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id o80-20020a374153000000b00745903986d8sm12177459qka.114.2023.03.22.15.49.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 15:49:52 -0700 (PDT)
Message-ID: <8aeea2c0-450f-c174-de2c-8c192d610a8c@gmail.com>
Date: Wed, 22 Mar 2023 18:49:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ettus.com>
 <a8c9f29e-13e3-dd43-221a-cd27382fdf36@gmail.com>
 <a1e76c5d-18f7-7bef-600b-5affdf16fd7d@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a1e76c5d-18f7-7bef-600b-5affdf16fd7d@ettus.com>
Message-ID-Hash: ON6WNSPPTJMQ3M25JZHOQWT6WDZQJMCK
X-Message-ID-Hash: ON6WNSPPTJMQ3M25JZHOQWT6WDZQJMCK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ON6WNSPPTJMQ3M25JZHOQWT6WDZQJMCK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMDMvMjAyMyAxODoyMiwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+DQo+IEhpLA0KPg0K
PiBkb24ndCBoYXZlIGEgZGV2aWNlIHRvIHRlc3Qgd2l0aCBtZSwgYnV0IGRvbid0IGZvcmdldCB0
aGF0IHRoZSANCj4gKnR1bmluZyogdG8gdGhhdCBmcmVxdWVuY3kgbWlnaHQgYmUgdGVjaG5pY2Fs
bHkgcG9zc2libGUgZHVlIHRvIEZQR0EgDQo+IGZyZXF1ZW5jeSBzaGlmdGluZywgc28gdGhhdCBp
bmRlZWQgdGhlIGZyZXF1ZW5jeSAxMDAwMCBrSHogZ2V0cyANCj4gc2hpZnRlZCB0byBiYXNlYmFu
ZCwgMCBIei4NCj4NCj4gKFlvdSBiZWluZyBhYmxlIHRvIG9ic2VydmUgdGhlIExPIGhpbnRzIGF0
IHRoYXQ6IHRoZSAicGh5c2ljYWwiIHR1bmVyIA0KPiBkb2Vzbid0IGdvIGFzIGxvdywgYW5kIHRo
ZSByZW1haW5kZXIgb2YgZnJlcXVlbmN5IHNoaWZ0aW5nIGlzIGRvbmUgDQo+IGRpZ2l0YWxseSwg
c28gdGhhdCB0aGUgTE8gZG9lc24ndCBlbmQgdXAgYXQgMCBIei4pDQo+DQo+IEhvd2V2ZXIsIHRo
aXMgZG9lc24ndCBtZWFuIHRoYXQgdGhlIGFuYWxvZyBzaWduYWwgY2hhaW4gY2FuIGFjdHVhbGx5
IA0KPiBsZXQgdGhyb3VnaCB0aGF0IGZyZXF1ZW5jeS4gSW4gdGhlIGVuZCwgdGhlIE4zMnggaGFz
IGFuIFJGIGZyb250ZW5kLCANCj4gYW5kIGl0cyBEQyByZXNwb25zZSBpcyB1bmRlZmluZWQvYmFk
IGJ5IGRlc2lnbi4NCj4NCj4NCj4gWW91IGNhbiBwcm9iYWJseSB3b3JrIGFyb3VuZCB0aGF0LCBi
dXQgaXQgZGVwZW5kcyBvbiB5b3VyIHVzZSBjYXNlOiANCj4gV2h5IGFyZSB5b3UgdHJ5aW5nIHRv
IG9ic2VydmUgYSAxMDAga0h6LWNlbnRlcmVkIHNpZ25hbCB3aXRoIGEgZGV2aWNlIA0KPiB0aGF0
IGhhcyBhIGJhbmR3aWR0aCB0aG91c2FuZHMgb2YgdGltZXMgb2YgdGhhdD8gSSBzdXNwZWN0IHlv
dSdyZSBvbiANCj4gdG8gc29tZXRoaW5nIGludGVyZXN0aW5nIQ0KPg0KPg0KVGhlIHF1b3RlZCAi
M01IeiIgbG93ZXN0IGZyZXF1ZW5jeSBpbiB0aGUgZGF0YXNoZWV0IGlzIGxpa2VseSAqQUxSRUFE
WSogDQpkdWUgdG8gInN0dXBpZCBEREMgdHJpY2tzIi7CoCBUaGUgTE1YMjU5MiBQTEwgc3ludGhl
c2l6ZXINCiDCoCBoYXMgYSBsb3dlc3QtcG9zc2libGUgTE8gb3V0cHV0IG9mIDIwTUh6Lg0KDQpU
aGUgbG93LWJhbmQgcGF0aHdheSBvbiB0aGUgaW5wdXQgZ29lcyB0aHJvdWdoIGEgcGFpciBvZiBM
RkNOLTQwMCsgDQpmaWx0ZXJzLsKgIE15IGd1ZXNzIGlzIHRoYXQgdGhleSBhcmVuJ3Qgd29uZGVy
ZnVsIGJlbG93IDFNSHogb3Igc28uIEl0J3MgDQphbHNvIHBvc3NpYmx5IHRoZSBjYXNlIHRoYXQg
dGhlICJ0dW5pbmcgbG9naWMiIGluIFVIRCBzaW1wbHkgZG9lc24ndCANCmNvbnNpZGVyIGFueXRo
aW5nIGJlbG93IDNNSHosIHNpbmNlIHRoYXQncyB3aGF0J3MNCiDCoCBzdGFydGVkIG9uIHRoZSBk
YXRhc2hlZXQuDQoNClNvbWV0aGluZyBsaWtlIGFuIE4yMTAgd2l0aCBhIExGX1JYIHdpbGwgYWxs
b3cgeW91IHRvICJyZWFjaCIgYWxsIHRoZSANCndheSBkb3duIHRvIGNsb3NlIHRvIERDLsKgwqAg
SSBhbHNvIHJlY2FsbCBkb2luZyBWTEYNCiDCoCBleHBlcmltZW50cyB3aXRoIGEgVVNSUDErQkFT
SUNfUlggYWJvdXQgMTIgeWVhcnMgYWdvLsKgwqDCoCBBbHRob3VnaCB0aGUgDQpCQVNJQ19SWCAi
b2ZmaWNpYWxseSIgb25seSBnb2VzIGRvd24gdG8gMU1IeiwNCiDCoCBpbiBwcmFjdGljZSwgeW91
IGNhbiAicmVhY2giIGNvbnNpZGVyYWJseSBsb3dlci4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
