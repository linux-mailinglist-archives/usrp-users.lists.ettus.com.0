Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9646353ED9E
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 20:09:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5FBA383C4C
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 14:09:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654538965; bh=qRntOa/D4wytAUKv28IeA7mWnntaQ0/VQZWD/cJnTO4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jsUkdo4TkbQZBfBGGSjT4xRBuLFZaWdA7yWWdwhVpEM2ohW4atUWw9kfaHYJxIEon
	 MVATUW8B9LX19TkjATL09XMJvNbzDauEFD08fHnkLEbINUG3eydQOYvIudj1vwbTup
	 Wzuihx2hUnd2eqc7r7rfAqfflBEFfFSXAEepql+STlwNsps9nS+IAc583o8kphL8oT
	 n7wPjVekafs5OBwNHPbtMUS4rPRoLNFYCHzDCnoWqw88/h4ovY5jYeL1AyZdCYFs2i
	 3uyVNfAkjXYqvgmt1Ig/LEhYyoQbJqaH7rG8NJU62qLTK+Oua+Bw/eQ94GZow0EEzS
	 oKYlBveo97vfA==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id CA5673840E4
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 14:06:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AOWcux4/";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id h18so10712668qvj.11
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 11:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Oo9yPd39kgyqZMj9fLmR+uuLRZ0lAXhVMh/0kjsmdRk=;
        b=AOWcux4/uYNKlaLbhhzX8ZU46ayyPI0OV0kJ5QsiVRzLsT3ggx4Y2Ujg4NP89hllaG
         zh7dbCP44atNNnhNnT2yLAtvR4bCDOzzjmbLBBFxofPwycdOPtvuvpXMvhBdJ3qUL2Zs
         51olrES2cwVNSC83zDGQO5SsDizjM/o1rcwKHwnQy3tQ0nbxvpQaxyYrW4CuKshRQG/h
         Gk8MUIz4EnvNMdbjVLLOCZuvE/zAdGcnqostGEbHpNLKuGJ6/c6G0k5pBYi1oNZHlt3q
         LmvRkgI1Y0/6DpSLOr85FlUvegqyO/4VZt4cRFeR4xXMjWBjBDhbEGr5ZSQIlfiqus7o
         TXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Oo9yPd39kgyqZMj9fLmR+uuLRZ0lAXhVMh/0kjsmdRk=;
        b=6plCN5nqoFg5Ff/w21OMNu1zjkgGEJrY6Blvk/AQEzIAyKAIO2/gEwdUWLsrBi+6LD
         zwd/Dkzd+DiKW//YDSF/ggqLo8aI0o2mt8m8HM2wmVpGUY/vSJOs9PgarYeUgX1H9uVV
         xFeEMNHNPwifhKY4cBbx3P2BlXfz/PrLCo98ashBwxNYmF2QddBixhMQPnV1BwP86YET
         eMK1XikNO2Sq60XvvND+rlmmYSA/lAxci6GYlnqa/ucSPXD/xaAqeDpWp2l8p46+iCGz
         TxSeV47jJQPZzDbCBGdhTAbszBdv8ohrbMeHk4Wzn54SzyZmNvLDQgxv7k+JdHGtC32M
         DejQ==
X-Gm-Message-State: AOAM533IvE5EwQ2LIeefQyS6jifyPv7E6qqpkOq+d6AGILRLqlad7L4Y
	YyL+G7XvgGFDWRN/5axjUhNQoD9hJ/EKHg==
X-Google-Smtp-Source: ABdhPJzMXTuKw5ngEv5AXpvULhkMmkssjfrbhPNAJG4yku1udG/0468K+CnWH4vWWWeYDnNh518MdQ==
X-Received: by 2002:a05:6214:5017:b0:464:4836:565e with SMTP id jo23-20020a056214501700b004644836565emr33091656qvb.10.1654538819192;
        Mon, 06 Jun 2022 11:06:59 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id de7-20020a05620a370700b006a670348ba5sm11670153qkb.99.2022.06.06.11.06.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 11:06:58 -0700 (PDT)
Message-ID: <2379689d-7bac-b90c-9cc8-1ff25fac9e67@gmail.com>
Date: Mon, 6 Jun 2022 14:06:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jon Beniston <jon@beniston.com>, usrp-users@lists.ettus.com
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
 <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
 <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com>
 <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com>
 <0a9901d879cb$7bcb4270$7361c750$@beniston.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0a9901d879cb$7bcb4270$7361c750$@beniston.com>
Message-ID-Hash: UECBDBCHA54N5SRAPFFMW2EYVY5RYLA7
X-Message-ID-Hash: UECBDBCHA54N5SRAPFFMW2EYVY5RYLA7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UECBDBCHA54N5SRAPFFMW2EYVY5RYLA7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNi0wNiAxMzozMywgSm9uIEJlbmlzdG9uIHdyb3RlOg0KPiBIaSBNYXJjdXMsDQo+
DQo+PiBUaGUgIm1hc3Rlcl9jbG9ja19yYXRlIiBzcGVjaWZpY2F0aW9uIGlzICpwZXIgc2Vzc2lv
biouICAgSXQgZG9lcyBOT1Qgc2V0IGl0IGluIGFueSBwZXJzaXN0ZW50IHdheS4NCj4+IEluIHRo
ZSBuZXh0IHNlc3Npb24sIGlmIHlvdSBkb24ndCBzcGVjaWZ5IGl0LCBVSEQgd2lsbCBwaWNrIGFu
IGFwcHJvcHJpYXRlDQo+PiBjbG9jayB2YWx1ZS4gIElmIHRoaXMgaXMgTk9UIGhhcHBlbmluZywg
dGhlbiB0aGF0IGlzIGEgYnVnIG9yIGFuIHVuZGVyLWRvY3VtZW50ZWQgZmVhdHVyZS4NCj4gU29y
cnkgZm9yIHRoZSBiYXNpYyBxdWVzdGlvbiwgYnV0IHdoYXQgaXMgYSAic2Vzc2lvbiI/IEhvdyBk
byBJIGVuZCBvbmUgYW5kIHN0YXJ0IGEgbmV3IG9uZSB3aXRoaW4gYSBzaW5nbGUgZXhlY3V0aW9u
IG9mIGEgcHJvZ3JhbT8NCj4NCj4gSWYgSSBqdXN0IHRyeSB0byByZS1tYWtlIHRoZSBkZXZpY2Us
IEkgZ2V0IGFuIGV4Y2VwdGlvbi4gRWc6DQo+DQo+ICAgICAgICAgICAgICAgICAgbV9kZXYgPSB1
aGQ6OnVzcnA6Om11bHRpX3VzcnA6Om1ha2UoZGV2aWNlX2FyZ3MpOw0KPiAgICAgICAgICAgICAg
ICAgIG1fZGV2LT5zZXRfbWFzdGVyX2Nsb2NrX3JhdGUoNjEuNDRlNik7DQo+ICAgICAgICAgICAg
ICAgICAvLyBIb3cgdG8gcmVzdGFydCBhIHNlc3Npb24gaGVyZT8NCj4gICAgICAgICAgICAgICAg
ICBtX2RldiA9IHVoZDo6dXNycDo6bXVsdGlfdXNycDo6bWFrZShkZXZpY2VfYXJncyk7DQo+DQo+
IC4uLg0KPiBbSU5GT10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSA2MS40NDAwMDAgTUh6
Li4uDQo+IFtJTkZPXSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgNjEuNDQwMDAwIE1I
ei4NCj4gW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZpY2U6IEIyMTANCj4gW0lORk9dIFtCMjAw
XSBPcGVyYXRpbmcgb3ZlciBVU0IgMy4NCj4gW0VSUk9SXSBbVUhEXSBFeGNlcHRpb24gY2F1Z2h0
IGluIHNhZmUtY2FsbC4NCj4gICAgaW4gYjIwMF9yYWRpb19jdHJsX2NvcmVfaW1wbDo6fmIyMDBf
cmFkaW9fY3RybF9jb3JlX2ltcGwNCj4gICAgYXQgQzpcVXNlcnNcYnVpbGRib3Rcd29ya2VyMFxC
dWlsZGVyX3VoZFBhY2thZ2VfV2luZG93c194NjRfdnMyMDE5XHdvcmtcdWhkXGhvc3RcbGliXHVz
cnBcYjIwMFxiMjAwX3JhZGlvX2N0cmxfY29yZS5jcHA6NjgNCj4gdGhpcy0+cGVlazMyKDApOyBf
YXN5bmNfdGFzay5yZXNldCgpOyAtPiBBc3NlcnRpb25FcnJvcjogYWNjdW1fdGltZW91dCA8IF90
aW1lb3V0DQo+ICAgIGluIGIyMDBfcmFkaW9fY3RybF9jb3JlX2ltcGw6OndhaXRfZm9yX2Fjaw0K
PiAgICBhdCBDOlxVc2Vyc1xidWlsZGJvdFx3b3JrZXIwXEJ1aWxkZXJfdWhkUGFja2FnZV9XaW5k
b3dzX3g2NF92czIwMTlcd29ya1x1aGRcaG9zdFxsaWJcdXNycFxiMjAwXGIyMDBfcmFkaW9fY3Ry
bF9jb3JlLmNwcDoyMjcNCj4NCj4gUHJvYmFibHkgc29tZXRoaW5nIHRyaXZpYWwsIGJ1dCBJIGNh
bid0IHNlZSBpdCBpbiB0aGUgZG9jcy4gTm8gY2xvc2UvcmVsZWFzZSBtZXRob2QgSSBjYW4gc2Vl
Lg0KPg0KPiBUaGFua3MsDQo+IEpvbg0KQWgsIHRoYXQgaXMgYSBkaWZmZXJlbnQgcXVlc3Rpb24u
DQoNCkEgc2Vzc2lvbiBpcyBkZWZpbmVkIGJ5IHRoZSBsaWZldGltZSBvZiB0aGUgbXVsdGlfdXNy
cCBvYmplY3QuDQoNCkhvd2V2ZXIsIHRoZXJlIGlzIGEgc2V0X21hc3Rlcl9jbG9ja19yYXRlKCkg
QVBJIGNhbGw6DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1
c3JwXzFfMW11bHRpX191c3JwLmh0bWwjYTk5MjU0YWJmYTUyNTliNzBhMDIwZTY2N2VlZTYxOWI5
DQoNCg0KDQpXaGF0IHRoZSBjb25zZXF1ZW5jZXMgYXJlIGZvciBjaGFuZ2luZyB0aGlzIHdpdGhp
biBhIHNlc3Npb24gaXMgDQpuZWNlc3NhcmlseSBkZXZpY2UgZGVwZW5kZW50LsKgwqAgSWYgSSB3
ZXJlIGdvaW5nIHRvIGRvIHRoaXMsIEknZCB0ZWFyIA0KZG93biB0aGUgc3RyZWFtZXJzLCBzZXQg
dGhlDQogwqAgbWFzdGVyX2Nsb2NrIHRvIHRoZSBuZXcgcmF0ZSwgYW5kIHRoZW4gcmUtY3JlYXRl
IHRoZSBzdHJlYW1lcnMuDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
