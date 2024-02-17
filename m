Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD0E858CB4
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 02:19:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FE8C384339
	for <lists+usrp-users@lfdr.de>; Fri, 16 Feb 2024 20:19:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708132796; bh=oePJKJVUOrjUCQibglS7eO1Bz6lKoUoWdtKFV8bxVf0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qkht0e3bGhEcD3kMHCAhgrZFNOIhObB/M8PnKFr2cFmq5YCC5svBVCuJOol+WbkIz
	 Y7GA7SWFYZHu+VC6y4Bb0BgPSNN7BBxMJUFgq5jOCRwz/vVzN/O3EkBqNG96WbKt0H
	 NhZNzBfjemLJ7IOfxj2192JilSZEDTqaK6BY3V2OaPQgxNfZzsu7j8RNS7fiOp6+n8
	 Yf3cKNLMKfCN42xl36WSKCN8BvjSxm1AxWJSz5imrCSTN7hcDzB6umNpXvlYnXLX8U
	 1iJ3tjoxTzKBqvPV0IBVKwLDIfp3XkxVHvF1MfXZO39K9+POfrh6C8NhNa8TU8OxGL
	 HYa57DYgo8nGg==
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FF78383319
	for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 20:19:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Aq13rzTu";
	dkim-atps=neutral
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3bbbc6bcc78so1805922b6e.1
        for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 17:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708132791; x=1708737591; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gbai1F+NH0HKxmjJ2nH1EU+/c+mBSu95uJaqcRT4Yvc=;
        b=Aq13rzTuvFV/ejcWQ6OarVoRTMxcwJKdxeF4xNbZ5horIV6GkK9NVjltgqKOdYX/q7
         4SfNFQrIES7xIRPsghfknqJy9E1ior3sljKUwVaVy+eS3/ZcfssJDoqIW8wmsq7GkeTx
         zMzWyg2MKiOmdGnZ4sZN9Sd5/tb7Nv6iABvyuHDHyapNsv201O2hZdjEWEMG1N4nPXUJ
         lFGD3kheLPTXfYOxoUHkNdY1wnHPmX6bXFtAk7x9Gqrhx77p5cW+5L1hnBEciVt0PrmP
         6TH0eMPldSHY4EtltSitthhA6Ns+KojW7cj/QZ0GO7pz5xfG/rj1TgcOpyBoV6MYT4fd
         eHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708132791; x=1708737591;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gbai1F+NH0HKxmjJ2nH1EU+/c+mBSu95uJaqcRT4Yvc=;
        b=arlGT6qiNBQ7w4Fwqqtp/1qJ891HjXZWmr4ZqWH69AtV304mkqvO8Fje0nTe5MBJd5
         84VWqcx++n/Fvua0rx7S+bgeWmQvhrnbb4dz+b/u85YQ2OY0gp67+YgHOKwTb4OWDXSy
         jMQbN789PNzqD/gdYYMIw/2dtD9XsIIL0K6DDTk+btI1Sq/N0giVJFvv1rw9wceTl91S
         1R05QtW1WOX+THAlE2J7v2JlAf+jsg3YKDI0P4OtQB5UXDhAU51691aKdpkhtdG7WOT0
         5QVquO0R20CtA9W655xgJZcwzXgIPH2T9ndhReXvfrJQ0ppI14ypA8+fNy53wXvvVnFj
         HsJw==
X-Gm-Message-State: AOJu0Yy8AkUrWWiSh3zFSnAI3QBHnabjUTOkYvgb7cSM4DvzSgf5igvn
	/4KdrJ4q31AdzZKRzVXBZvkn2CohM/UGOomYB0geidgqC+5WEEF6DJgRyUjj6BQ=
X-Google-Smtp-Source: AGHT+IF0s/jzOvAD7reSUw48ZPAnRw1ZME/q8Rqy0uDHWNf3pxl6i+evDjAOmoNxpwwuMxA9+Tx3kQ==
X-Received: by 2002:a05:6808:3a15:b0:3c0:3c32:ba78 with SMTP id gr21-20020a0568083a1500b003c03c32ba78mr8833128oib.55.1708132791330;
        Fri, 16 Feb 2024 17:19:51 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id ol19-20020a0562143d1300b0068f140f99e3sm465617qvb.140.2024.02.16.17.19.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 17:19:51 -0800 (PST)
Message-ID: <00e1bdc5-7342-4819-9fce-2a8b83fb5e8f@gmail.com>
Date: Fri, 16 Feb 2024 20:19:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
Message-ID-Hash: JRXO5U4XASLNNIKJX7WM5FVFR5K6HJJM
X-Message-ID-Hash: JRXO5U4XASLNNIKJX7WM5FVFR5K6HJJM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JRXO5U4XASLNNIKJX7WM5FVFR5K6HJJM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMDIvMjAyNCAxOTozMCwgSmltIEdydWJiIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0K
PiBXaGVuIEkgcnVuOg0KPg0KPiB1aGRfZmluZF9kZXZpY2VzDQo+DQo+IEkgZ2V0Og0KPg0KPiBb
SU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS40LjA7IEJvb3N0XzEwNzQwMDsg
DQo+IFVIRF80LjYuMC4wLTB1YnVudHUxfmphbW15MQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAtLSBVSEQgRGV2aWNlIDANCj4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gRGV2aWNlIEFk
ZHJlc3M6DQo+IMKgwqDCoCBzZXJpYWw6IDMyOTM1NjENCj4gwqDCoMKgIG5hbWU6IEIyMDVpDQo+
IMKgwqDCoCBwcm9kdWN0OiBCMjA1bWluaQ0KPiDCoMKgwqAgdHlwZTogYjIwMA0KPg0KPg0KPiBX
aGVuIEkgcnVuOg0KPg0KPiB1aGRfdXNycF9wcm9iZQ0KPg0KPiBJIGdldDoNCj4NCj4gW0lORk9d
IFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IA0KPiBV
SERfNC42LjAuMC0wdWJ1bnR1MX5qYW1teTENCj4gW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZp
Y2U6IEIyMDVtaW5pDQo+IFtJTkZPXSBbQjIwMF0gT3BlcmF0aW5nIG92ZXIgVVNCIDMuDQo+IFtF
UlJPUl0gW1VIRF0gRXhjZXB0aW9uIGNhdWdodCBpbiBzYWZlLWNhbGwuDQo+IMKgIGluIH5iMjAw
X3JhZGlvX2N0cmxfY29yZV9pbXBsDQo+IMKgIGF0IC4vaG9zdC9saWIvdXNycC9iMjAwL2IyMDBf
cmFkaW9fY3RybF9jb3JlLmNwcDo2NQ0KPiB0aGlzLT5wZWVrMzIoMCk7IF9hc3luY190YXNrLnJl
c2V0KCk7IC0+IEFzc2VydGlvbkVycm9yOiBhY2N1bV90aW1lb3V0IA0KPiA8IF90aW1lb3V0DQo+
IMKgIGluIHdhaXRfZm9yX2Fjaw0KPiDCoCBhdCAuL2hvc3QvbGliL3VzcnAvYjIwMC9iMjAwX3Jh
ZGlvX2N0cmxfY29yZS5jcHA6MjI3DQo+DQo+IEVycm9yOiBBc3NlcnRpb25FcnJvcjogYWNjdW1f
dGltZW91dCA8IF90aW1lb3V0DQo+IMKgIGluIHdhaXRfZm9yX2Fjaw0KPiDCoCBhdCAuL2hvc3Qv
bGliL3VzcnAvYjIwMC9iMjAwX3JhZGlvX2N0cmxfY29yZS5jcHA6MjI3DQo+DQo+DQo+IFRoaXMg
aXMgb24gYW4gWDY0IFVidW50dSAyMC4wNCBtYWNoaW5lLg0KPg0KPiBBbnkgaGVscCB3b3VsZCBi
ZSBhcHByZWNpYXRlZC4NCj4NCj4gVGhhbmsgeW91LA0KPiBKaW0NClRoaW5ncyB0byBjaGVjazoN
Cg0KQXJlIHlvdSB1c2luZyBhIFVTQjMtY29tcGF0aWJsZSBjYWJsZS0tLWxpa2UgdGhlIG9uZSBz
aGlwcGVkIHdpdGggdGhlIEIyMDU/DQoNCkhvdyBvbGQgaXMgeW91ciBjb21wdXRlcj/CoCBWZXJ5
LWVhcmx5IFVTQjMgY29udHJvbGxlcnMgd2VyZSBmbGFrZXkgaW4gDQp0aGlzIHJlZ2FyZC4NCg0K
QXJlIHlvdSBnb2luZyB0aHJvdWdoIGEgVVNCIGh1Yiwgb3IgZGlyZWN0IHRvIHRoZSBjb21wdXRl
cj/CoCBTb21lIGh1YnMgDQphcmUsIGFnYWluLA0KIMKgIGZsYWtleSBpbiB0aGlzIHJlZ2FyZC4N
Cg0KQXJlIHlvdSBydW5uaW5nIGluIGEgVk0sIG9yIG9uICJiYXJlIG1ldGFsIj/CoMKgIFVTQiBz
dXBwb3J0IGluIFZNcyANCmNvbnRpbnVlcyB0byBiZSBzdWItb3B0aW1hbC4NCg0KQ2FuIHlvdSB0
cnkgYmFja2luZy1vdXQgdG8gVUhENC41IG9yIGV2ZW4gNC40Pw0KDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
