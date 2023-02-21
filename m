Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DBC69E585
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 18:05:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F047381976
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 12:05:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676999141; bh=j72TJRVtFbtCAbd+5QEo/X8c858o5u6R69SpDqoPoJU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ncitw9ciDlr0Kp7OTxGxo3Sk0dGVaBKMuUgGN56w7vv07sOp2Khv9KHD7GAuCtRLv
	 H07QNFmosrgoYE7va1pH8P+FQwUJf6Lh10fDdSHR5GnwGYxKEffev7efyvj72xSJ4y
	 DeCqbkt7at5V5i80oJ8YTeAmerIOhz+6kuXSW43rc5ka+wqymPMoL2mdcoQT/PkjKD
	 v4tBK6NL4rRu7Khs/b0MtU9oZ1NgFifX0qTxjOg09gFlcVeKtZt53xl+NHjTq+U+2V
	 b0SdVQHIlWP6gYcShfa1/csq5AxpS0t/HKXB5ExMMIRWBzUg4IYIt76lYq5HLR3FnL
	 o7uPVeqid8YbA==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id CE705380946
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 12:04:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="akQOBD3M";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id ne1so5584057qvb.9
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 09:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uPJbYTp1mUbBbjIYRf7PgvFFBYS2/2fb6kfbJrHGJdw=;
        b=akQOBD3M6OugCwWQMzjZJSenzXR8WI4s9LjZB+ZCeyeiy1G5cel/vyKeDsUSaxuARb
         ZVtqrRhIBD9tiU4Wg8bYLyw/huTAjx6xvJ+zeB1QsUjgPO5P8hjtnTwf/o/r8x5zT7rA
         R2rPz99/C5dURhnUCZfONXmVfTdhmzU950riPUB6z/8QPOIbZHz/QGs1WmsMYBs87bIM
         k8zBv4XltGCS/dy0v5eQuejBArtiiULUUBY1hoG6AKlLaMNakXiWXGJgzRA/8+cC1Q5N
         mPtAlEhgsj0Di/a69ua4khOpEhIwCbBWBMzDstigY09KIR7H0xvdBWNpYIBW/G3V9XQg
         r+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uPJbYTp1mUbBbjIYRf7PgvFFBYS2/2fb6kfbJrHGJdw=;
        b=Dkpho+baidzIrzxh69LpUh2i+CJEM8wNUTqZ2Aus8KKst1PQx43I0IZgB5Jn6w6BQb
         WgRBdXyljsl6YrLGNOnugdWR6KLRBHki/Y1Nh72ZgCrb08RLkSIwPgG81i5FLYuhkYxt
         VSxCAgxxnutLYCHIw1hknI7+ux2ZIDOwSYjqqvnYEXB078CToqsBlL3GqKebc3ppEDL9
         MTqsSfgQB4DTfTYlywyh+l9atSYVgoQ8cMMSsk5NYENhBqOKaaglz1/xr0R2SlU/BkEN
         KypovsejsjMHpFNolkDJMYyY2h3nY0IDkDtnl7PeGP14g3OFVcSkal0jyiIyepjwkFwp
         sa7Q==
X-Gm-Message-State: AO0yUKXokMpoaQV/QRl694dDMR03Ijs427zeN4WMn7kt8pU+6dTWo0Xu
	wTAIj/wGOqxoe0lJGxej2tmIOfEsrF4=
X-Google-Smtp-Source: AK7set8KPyNWfgKKtXJPkuokPzDSLCGZFR+/HPnq8VE80fn0T7FBQWsaGWIM6i7l2XTu4+3eq5rYaw==
X-Received: by 2002:ad4:5be7:0:b0:570:ae8a:f23 with SMTP id k7-20020ad45be7000000b00570ae8a0f23mr12340922qvc.24.1676999090964;
        Tue, 21 Feb 2023 09:04:50 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id j64-20020a378743000000b00739e7e10b71sm11218722qkd.114.2023.02.21.09.04.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 09:04:50 -0800 (PST)
Message-ID: <42c2e790-7e4a-c73e-a342-772664fa8d0c@gmail.com>
Date: Tue, 21 Feb 2023 12:04:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CA+7S2faCOt9o1wmpZsVkBMu-mrjuNH4R84GVtGWO1A61Q-uyUA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+7S2faCOt9o1wmpZsVkBMu-mrjuNH4R84GVtGWO1A61Q-uyUA@mail.gmail.com>
Message-ID-Hash: Q3X6A4L7PBTDHYRQXABM5JP5CMVKBXXL
X-Message-ID-Hash: Q3X6A4L7PBTDHYRQXABM5JP5CMVKBXXL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem verifying B200 device
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q3X6A4L7PBTDHYRQXABM5JP5CMVKBXXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDIvMjAyMyAxMTo1MywgTWF4aW0gQmVsb3RzZXJrb3Zza3kgd3JvdGU6DQo+IEhpIGV2
ZXJ5b25lLiBHb3QgYSBicmFuZC1uZXcgQjIwMC1taW5pIGRldmljZSwgaW5zdGFsbGVkIGFsbCB0
aGUgdG9vbHMgDQo+IGV0Yy4gVWJ1bnR1IHNlZXMgdGhlIGRldmljZSBjb3JyZWN0bHkgb25jZSBp
dCdzIGF0dGFjaGVkIHRvIHRoZSBob3N0Og0KPg0KPiA8aG9tZT46fiQgbHN1c2INCj4gQnVzIDAw
MSBEZXZpY2UgMDA0OiBJRCAyNTAwOjAwMjEgRXR0dXMgUmVzZWFyY2ggTExDIFVTUlAgQjIwMC1t
aW5pDQo+IC4uLi4uLi4uLi4uDQo+DQo+IEhvd2V2ZXIsIGFueSBhdHRlbXB0IHRvIHJ1biBpbml0
aWFsIFVIRCB2ZXJpZmljYXRpb24gKGFzIHBlciANCj4gaHR0cHM6Ly9rYi5ldHR1cy5jb20vVmVy
aWZ5aW5nX3RoZV9PcGVyYXRpb25fb2ZfdGhlX1VTUlBfVXNpbmdfVUhEX2FuZF9HTlVfUmFkaW8p
LCANCj4gZm9yIGV4YW1wbGUsIGJ5IHJ1bm5pbmcgdWhkX2ZpbmRfZGV2aWNlcywgZmFpbHMgaW4g
dGhlIGZvbGxvd2luZyB3YXkgOg0KPg0KPiA8aG9tZT46fiQgdWhkX2ZpbmRfZGV2aWNlcw0KPiBb
SU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS4zLjA7IEJvb3N0XzEwNzQwMDsg
DQo+IFVIRF80LjQuMC4wLTB1YnVudHUxfmphbW15MQ0KPiBbSU5GT10gW0IyMDBdIExvYWRpbmcg
ZmlybXdhcmUgaW1hZ2U6IA0KPiAvdXNyL3NoYXJlL3VoZC9pbWFnZXMvdXNycF9iMjAwX2Z3Lmhl
eC4uLg0KPiBObyBVSEQgRGV2aWNlcyBGb3VuZA0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiBXaGVuIEkgcmUtcnVuICdsc3VzYicgbm93LCBUaGUgJ0IyMDAnIGRldmljZSBubyBsb25n
ZXIgc2hvd3MgdXA6DQo+DQo+IDxob21lPjp+JCBsc3VzYg0KPiDCoC4uLi4uLi4uLi4uLi4uLi4u
Lg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IEF0IHRoaXMgcG9p
bnQsIGl0IG5vdyByZXF1aXJlcyBwb3dlci1jeWNsaW5nIHRoZcKgQjIwMCBpbiBvcmRlciBmb3Ig
aXQgDQo+IHRvIGJlIHJlY29nbml6ZWQgYnkgdGhlIE9TIGFnYWluICh3aGljaCBwcmVzdW1hYmx5
IHJlLWxvYWRzIHRoZSANCj4gZGVmYXVsdCBmYWN0b3J5IGltYWdlIHRoYXQgY29tZXMgb24gdGhl
IGJ1aWx0LWluIGZsYXNoKQ0KPg0KPiBTbywgdGhlIHByb2JsZW0gaXMgdGhpczogaXQgYXBwZWFy
cyBhcyBpZiBpbiB0aGUgcHJvY2VzcyBvZiBsb2FkaW5nIA0KPiB0aGUgZmlybXdhcmUgaW1hZ2Ug
KHdoaWNoIGNvbWVzIGFzIGEgcGFydCBvZiBydW5uaW5nIGFueSBvZiB0aGUgVUhEIA0KPiB1dGls
aXRpZXMpIHRoZSBkZXZpY2UgbG9zZXMgY29ubmVjdGlvbiB0byB0aGUgc3lzdGVtLCBjYXVzaW5n
IGl0IHRvIG5vIA0KPiBsb25nZXIgZW51bWVyYXRlIG9uIHRoZSBPUywgc28gdGhhdCB0aGUgc3Vi
c2VxdWVudCBzdGVwcyAob2YgDQo+ICd1aGRfZmluZF9kZXZpY2VzJyBpbiBvdXIgZXhhbXBsZSkg
Y2FuIG5vIGxvbmdlciBiZSBleGVjdXRlZCAoZHVlIHRvIA0KPiAnTm8gVUhEIERldmljZXMgZm91
bmQnKS4NCj4NCj4gVGhlIHF1ZXN0aW9ucyBJIGhhdmUgYXJlIHRoZXNlIDoNCj4gMSkgSXMgdGhp
cyBzb21ldGhpbmcgZ2VuZXJhbGx5IGtub3duLCB3aXRoIGEga25vd24gc29sdXRpb24sIG9yIGlz
IA0KPiB0aGVyZSBzb21ldGhpbmcgd3Jvbmcgd2l0aCBteSBwYXJ0aWN1bGFyIHN5c3RlbSwgdGhl
IEIyMDAgZGV2aWNlLCANCj4gZHJpdmVyIGluc3RhbGxhdGlvbiBldGMuPw0KPiAyKSBJcyB0aGUg
cHJvYmxlbSByZWFsbHkgY2F1c2VkIGJ5IHRoZSBGUEdBIGltYWdlIGxvYWRpbmcsIG9yIHNvbWUg
DQo+IG90aGVyIG5vbi1GUEdBIGNvbXBvbmVudCBiZWluZyBkaXN0dXJiZWQgY2F1c2luZyB0aGUg
ZGV2aWNlIHRvIA0KPiBkaXNjb25uZWN0PyBJcyBpdCBwb3NzaWJsZSB0aGXCoGltYWdlIGF0dGVt
cHRlZCB0byBiZSBsb2FkZWQgdGhlIHdyb25nIA0KPiBvbmUoIHVzcnBfYjIwMF9mdy5oZXggaW5j
b21wYXRpYmxlIHdpdGggdGhlIGhhcmR3YXJlKT8NCj4gMikgSXMgdGhlcmUgYSB3b3JrLWFyb3Vu
ZD8gRm9yIGV4YW1wbGUgKHByZWZlcnJlZCBieSBtZSk6IGNhbiBJIHJ1biANCj4gVUhEIHdpdGgg
dGhlIG9wdGlvbiBwYXNzZWQgdG8gY29tbWFuZHMgb2Ygbm90LWxvYWRpbmcgdGhlIEZQR0EgaW1h
Z2UgDQo+IGV2ZXJ5IHRpbWUgYSBjb21tYW5kIGlzIGV4ZWN1dGVkPyBTYXksIGEgY29uZmlnIGZp
bGUgdGhhdCBVSEQgcmVhZHMgdG8gDQo+IGtub3cgd2hhdCB0byBkbyB3aXRoIHRoZSBkZXZpY2U/
IEkgd2FudCB0byBiZSBhYmxlIHRvIGRlYWwgd2l0aCB0aGUgDQo+IEIyMDAgd2l0aCB3aGF0ZXZl
ciBzdGF0aWMgaW1hZ2UgSSd2ZSBsb2FkZWQgdXAgb24gaXQgKGJlIGl0IHRoZSANCj4gZmFjdG9y
eSBpbWFnZSBvciBzb21lIGZ1dHVyZSBjdXN0b23CoGltYWdlKQ0KPg0KPiBUaGFuayB5b3UuDQo+
DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NCldoYXQgdmVyc2lvbiBvZiBVYnVudHU/wqAgV2hhdCB0eXBlIG9mIGhhcmR3YXJl
Pw0KDQpUaGlzIG1pZ2h0IGJlIHRoYXQgdGhlIFVTQiBjb250cm9sbGVyIG9uIHlvdXIgaG9zdCBp
cyBkcm9wcGVkIHRoZSBkZXZpY2UgDQpvZmYgdGhlIGJ1cyBkdWUgdG8gcG93ZXItY29uc3VtcHRp
b24uDQoNClRoZSBGUEdBL0Zpcm13YXJlIGFyZSBvbmx5IGxvYWRlZCBkdXJpbmcgKmNvbGQgc3Rh
cnQqIG9mIHRoZSANCmRldmljZS0tdGhhdCBpcyBhZnRlciBhIHBvd2VyIGN5Y2xlLsKgwqAgT25j
ZSBpdCBpcyBsb2FkZWQsIGFzIGxvbmcNCiDCoCBhcyBpdCdzIHBsdWdnZWQgaW4sIGFuZCB5b3Ug
ZG9uJ3QgYXNrIGZvciBhIGRpZmZlcmVudCBGUEdBIGltYWdlLCBpdCANCndpbGwgY29udGludWUg
dG8gcnVuIHdpdGggdGhhdCBpbWFnZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
