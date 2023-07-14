Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 802B575405A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jul 2023 19:18:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97CDC384A83
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jul 2023 13:18:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689355120; bh=d3caSUTPC4vUj0AKk+iGI3e+Ru2PA/d6pZXfi9jd/e0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EDYs+QJ9H5mNbTcOmisYzk3sHoBfjwpQ5JpRktMH6nrMh9CEHgHIC9XqNsh4QdFR1
	 t9I1C0aWUWWlY8vm3DDDU8NaqGigGlqXwn1tWFur/hyrmnh+LdTpHHgUafNmOS+h19
	 zcQrZCcqFnl3IcVh1JN2HIPRDBKIAXqtNqNYkReM7m53KyQTO01HSe+M/UyPC65M63
	 gZxLvSgimTcvt2VBn8kRMZ3mjPyAyd1mWgbW0ZTQgGZVgydIsJWZQzCaNK6zqBVbpn
	 AGaX0REmZuLwMjxyJ3oxwXXccIIdbFdF4Y8jfoZXZOcmyrkx9+eZWdPDmaOxu+EQwj
	 femv2hzNXRwRg==
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id B007A3842D0
	for <usrp-users@lists.ettus.com>; Fri, 14 Jul 2023 13:18:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wc33IlH8";
	dkim-atps=neutral
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-7943bfaed0dso732681241.0
        for <usrp-users@lists.ettus.com>; Fri, 14 Jul 2023 10:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689355083; x=1691947083;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5VvahIh3BI7pFflyNknYRoTa/eroSyl32A2o/3KUzFY=;
        b=Wc33IlH8QMvUXJQPOxR5AASqrkLZp18w148lpNJvpW2oQeoV45X6FKd204/P9eZTEz
         luOUpSGxWSnR1TCXSA4Dj8J5+uKxxh/YMtJOi5QZFmEvTNQ++nEEi41FYOcpwpLK7rM1
         I3apMK/S1xWd4Ffps4oiNpXYEJWg7V4NRuNve7tGcbVD2SF4I/lPoobU6+XOeUop4iDd
         SLOMTLxohqAHvlLbM6H3quqj+CbaPeZan4HEfz6iiI9vHDAqZryOD8fMHEiNxPm5iGzC
         DQ8v/zktEKuKr4/IqW/cqGoYcZJTg07D4IatPxUQyItB1ItIwMsZaZKiNo3AKotG2bgA
         qUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689355083; x=1691947083;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5VvahIh3BI7pFflyNknYRoTa/eroSyl32A2o/3KUzFY=;
        b=ZFyDwqX4bjKh0SsdX6WYRuiPkBkPMIehTsgr5w/wt+49a+oBdU7W8kjNDc/JJyaDO5
         8hS7zLZu+sJXeCm+QSTq74HhddqGxhJGUnqfoLj1P4bbgSAKACToZ0BdFpyimpPuvZnh
         lW0Evs3G3hm5NclPLf2V04w6yIGghv4wrr8Ue25ZVdTFw1A8w7Gdn9p4CfYn876EqLN1
         mK7UrVLjw0UHi4Oyy0hC3mbPuvUGnxctpqTFjutJ1ucIWv2wULZkiFTHjHZ8BytoDdyY
         gxRI8oiLkIG2SbZ9Szfu3rr6FxfhERoidTSYMCnrUZjhgt0gTZ4xjF4afRA3Z8ARJbf/
         ZmAg==
X-Gm-Message-State: ABy/qLamK2RVA5KKtC9LHklk6o9d9s6UFsM7HD0AaKM24NAnqvct7YGE
	mwcCz24ApD/Bkp06g/mcq2eNGQmaTnU=
X-Google-Smtp-Source: APBJJlGFWcpj0N2oIevVcR7G5HP5kAdl0UxD1rEp9d9IyyTG1GIisshhqqaQkF7Vsx0ZrXPGlRCkwg==
X-Received: by 2002:a67:d08b:0:b0:443:8401:556f with SMTP id s11-20020a67d08b000000b004438401556fmr2946697vsi.19.1689355082836;
        Fri, 14 Jul 2023 10:18:02 -0700 (PDT)
Received: from [192.168.2.196] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i4-20020a0cf484000000b00635fc10afd6sm4146467qvm.70.2023.07.14.10.18.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jul 2023 10:18:02 -0700 (PDT)
Message-ID: <7b567967-a9f7-6223-3120-a13a4ce6d9cf@gmail.com>
Date: Fri, 14 Jul 2023 13:17:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr>
Message-ID-Hash: BKITJ25OTLZL6Y7RRGOE3LLSVWQNDGTF
X-Message-ID-Hash: BKITJ25OTLZL6Y7RRGOE3LLSVWQNDGTF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1-PPS synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKITJ25OTLZL6Y7RRGOE3LLSVWQNDGTF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTQvMDcvMjAyMyAxMDo1OCwgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPiBJIGFtIHJ1bm5p
bmcgYW4gZXhwZXJpbWVudCBhaW1lZCBhdCBhc3Nlc3NpbmcgdGhlIGFjY3VyYWN5IHdpdGggd2hp
Y2ggYSBjb21wdXRlcg0KPiBjYW4gdGltZXN0YW1wIGEgZmlsZSByZWNvcmRlZCBmcm9tIGFuIFgz
MTAsIGkuZS4gdXNpbmcgdGhlIHN0YXQgaW5mb3JtYXRpb24gb24NCj4gdGhlIGZpbGUgc2F2ZWQg
d2hlbiByZWNvcmRpbmcgYSBrbm93biBudW1iZXIgb2Ygc2FtcGxlcyAoR05VIFJhZGlvIGhlYWQg
YmxvY2spIGF0IGENCj4ga25vd24gc2FtcGxpbmcgcmF0ZS4gRm9yIHRoaXMgSSBjb25uZWN0IGFu
IFgzMTAgZml0dGVkIHdpdGggYSBCYXNpYyBSWCB0byBhIFBUUCBvciwNCj4gaGVyZSwgYW4gTlRQ
IHN5bmNocm9uaXplZCBjb21wdXRlciwgYW5kIGZlZWQgdGhlIDEtUFBTIG91dHB1dCBvZiBhIFdo
aXRlIFJhYmJpdA0KPiBzd2l0Y2ggKFBUUCBzZXJ2ZXIpIGFzIGlucHV0IHRvIHRoZSBCYXNpYyBS
WC4gVGhpcyBzYW1lIFdoaXRlIFJhYmJpdCBTd2l0Y2ggMS1QUFMNCj4gb3V0cHV0IGZlZWRzIHRo
ZSBFeHQgMSBQUFMgaW4gb2YgdGhlIFgzMTAgYW5kIGl0cyAxMCBNSHogb3V0cHV0IGZlZWRzIHRo
ZSBFeHQgQ2xvY2sgb2YNCj4gdGhlIFgzMTAuIEF0dGFjaGVkIGlzIHRoZSByZXN1bHQ6IG9uIHRo
ZSBib3R0b20gY2hhcnQgaXMgdGhlIHRpbWUgYXQgd2hpY2ggdGhlIGZpcnN0DQo+IHJpc2luZyBl
ZGdlIG9mIHRoZSByZWNvcmQgaXMgZGV0ZWN0ZWQuIEVhY2ggcmVjb3JkIGlzIDMtcyBsb25nIChz
byB0d28gY29uc2VjdXRpdmUgUFBTIGVkZ2VzDQo+IGF0IGxlYXN0KSBhbmQgdGhlIG1lYXN1cmVt
ZW50IGlzIHJlc3RhcnRlZCBldmVyeSAxNiBzZWNvbmRzIChYLWF4aXMgb2YgdGhlIGNoYXJ0KS4g
VGhlDQo+IFktYXhpcyBpcyBncmFkdWF0ZWQgd2l0aCB0aGUgcmlzaW5nIGVkZ2UgaW5kZXggZGl2
aWRlZCBieSB0aGUgc2FtcGxlIHJhdGUgb2YgNWU2IHNhbXBsZXMvcy4NCj4gV2hpbGUgdGhlIGR1
cmF0aW9uIGZyb20gZmlyc3QgdG8gc2Vjb25kIFBQUyBpbiBlYWNoIGZpbGUgaXMgZXhhY3RseSA1
ZTYrLy0xIChvZSAxcysvLTIwMCBucyksDQo+IHRoZSBmaXJzdCBQUFMgaXMgZGV0ZWN0ZWQgd2l0
aCBhIDUwIG1zIGZsdWN0dWF0aW9uIGZyb20gb25lIG1lYXN1cmVtZW50IHRvIGFub3RoZXIgKGJv
dHRvbSBjaGFydCkuDQo+DQo+IFdoYXQgY291bGQgdGhpcyBmbHVjdHVhdGlvbiBiZSBkdWUgdG8/
IEkgd291bGQgaGF2ZSBleHBlY3RlZCB0aGUgWDMxMCB0byB3YWl0IGZvciB0aGUgbmV4dA0KPiBQ
UFMgZWRnZSBhbmQgc3RhcnQgcmVjb3JkaW5nIGZyb20gdGhlcmUuIEkgY291bGQgdW5kZXJzdGFu
ZCBzb21lIGxhZyBiZXR3ZWVuIHRoZSBQUFMgZGV0ZWN0aW9uDQo+IGFuZCBmaXJzdCBzYW1wbGUs
IGJ1dCBJIHdvdWxkIGV4cGVjdCB0aGlzIGxhZyB0byBiZSBjb25zdGFudCBhbmQgdGhlIGZsdWN0
dWF0aW9uIHRvIGJlIDIwMCBucw0KPiAob25lIHNhbXBsZSkgYXQgbW9zdC4NCj4NCj4gRllJIHRo
ZSBjbTRfeDMxMC5weSBzY3JpcHQgdXNlZCBmb3IgdGhlc2UgcmVjb3JkaW5ncywgZXhlY3V0ZWQg
b24gYSBDb21wdXRlIE1vZHVsZSA0LCBmb3INCj4gY29uZmlndXJpbmcgYW5kIGNvbGxlY3Rpbmcg
dGhlIG1lYXN1cmVtZW50cyBmcm9tIHRoZSBYMzEwLCB3aXRoIFRpbWUgU291cmNlIHNldCB0byBF
eHRlcm5hbC4NCj4NCj4gVGhhbmtzLCBKTQ0KPg0KTG9va2luZyBhdCB0aGUgc2NyaXB0LCBpdCBs
b29rcyBsaWtlIHlvdSd2ZSBzZXQgdGhlICp0aW1lKiBzb3VyY2UgdG8gDQoiZXh0ZXJuYWwiLMKg
IGJ1dCBhcmUgc3RpbGwgcmVseWluZyBvbiB0aGUgaW50ZXJuYWwNCiDCoCBjbG9jayBmb3IgdGhl
IGFjdHVhbCByZWZlcmVuY2UgY2xvY2sgdGhhdCBpcyB1c2VkIHRvIGRyaXZlIGV2ZXJ5dGhpbmcg
DQppbnRlcm5hbGx5LS1pbmNsdWRpbmcgdGhlIEFEQ3MsIEZQR0ENCiDCoCBEU1AgYml0cywgZXRj
Lg0KDQpUaGUgIjFQUFMiIG9uIFVTUlBzIGlzIHVzZWQgT05MWSBhcyBhIDEtdGltZSBzeW5jaHJv
bml6YXRpb24gcG9pbnQgZm9yIA0KcmVzZXR0aW5nIHRoZSB0aW1lc3RhbXAgY2xvY2tzIHRvIGEg
a25vd24gdmFsdWUNCiDCoCAqYXQgYSBrbm93biB0aW1lKiAodGhlIDFQUFMgcHVsc2UpLsKgwqAg
VGhhdCB0aW1lc3RhbXAgcmVnaXN0ZXIgInRpY2tzIA0Kb3ZlciIgYmFzZWQgb24gZWl0aGVyIHRo
ZSBpbnRlcm5hbCByZWZlcmVuY2UgY2xvY2ssDQogwqAgb3IgYW4gZXh0ZXJuYWwgb25lLCBidXQg
eW91IGhhdmVuJ3QgcmVxdWVzdGVkIGV4dGVybmFsIHJlZmVyZW5jZSBjbG9jay4NCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
