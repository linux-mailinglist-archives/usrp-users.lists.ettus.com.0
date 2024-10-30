Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B639B6BAB
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 19:08:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29F8B38649E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 14:08:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730311686; bh=dr2TZqHbAMDksIoUWPOjHJ0U6uR4Fre/CFnOLUj0cCQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oRLn8ypFqsnApb1LpLuXhDRC4y0mnlhDfLI/1NN9ov2GG4k3NAMnaJsxP9SmjCuKW
	 AlvePfkS2owL99p+nKygO+dNCgHWSr+QYdxWSNtvI4SvNHSFc0yxJoy7m7YpKAaeGr
	 WbaSMjyIIZUZmlvR3OjwnEulvYpBzaDVuk8d5qqLdxqOP22ZUpvHph3kK15GH4hUgH
	 vOghXAX+QCcJ+6z9SNHL3XTXRQrHR3E6unavP4x6wnsE4jypNaYIRcTimPjAM5hXZg
	 lAviL2CTtZCiqlYGFRMQO4N+PUGj14CdmhrlToJLfPGB47QiQnitSUPkyddJvB8beZ
	 4vuzJzSEyDJAg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E73A386495
	for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2024 14:07:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AlniamXT";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7b1511697a5so7571885a.2
        for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2024 11:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730311671; x=1730916471; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mUJ624XPQioPARKnVS+lgz9FB38t1YgflE7FhoAKBFo=;
        b=AlniamXTeY+CdtDdnGbbzHcdLI49FzanrVkMf1xKnqjO/UU/gfe9TR3toB57EadupA
         kb84Mut6r8eIm0IXXUnVJWxcHLulniAcXdId71ecLtvhctwrhBv6puCcgLFcFR2zuJkh
         +Shh+pQdutss7elGrjU4IKSEgY5OiDMYFKkhjQsFB7VjQ4u0TmScZthgRfB+eC0xn81m
         h0sTiLVpyvW2q1jDGEUNhUmiSdXtV06ovrrDdEv319vlL+gAKj3eXBa+cXvXIl4yxzN8
         Ega2qCGdQKszXVnb7K5RFJpfVlHsxyo2AZb80IT/aJvOtX4uyW6jRmuULe0KQhn+z3Mv
         hr0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730311671; x=1730916471;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mUJ624XPQioPARKnVS+lgz9FB38t1YgflE7FhoAKBFo=;
        b=LRTwUB5n89gEHk1wdcEnjWNE+HfsGQS7oJWIlKBvL/iwj2XcTZxLZrp1qyKv76uQql
         PzSUL5zCDeLQZb1cDeI5t5E1mGuQ8YwSRArU7UvRsSYck5Sg919GxUcljd8q2uqR1+Fw
         I2361R8bAulPQrhlIcP+/Kn0w5JYJw9Yr6xyMlejGsSv+DuTonDxvlCJaJUQDSI7wfwm
         +BO7GiIkoKaH/FOjMuPl6YSQqNXKNiEVrAbVuc1NZnJ5+/aLeu0V+Pl4S1dOJVw5ty2f
         hrZW8tDCtJo5I15lWla0gA6c4qZqUMSOO3M+0z4cxFwmoFemgHHtRPu0OC3MsVNZ+gXL
         TFWA==
X-Gm-Message-State: AOJu0YxXMPc7Zam/YmMkvK0LwtlZCqd1fIyobRYzJT9V6qoMF8gQID4y
	eOPh81DmMwwKLVJFaya+ZhYLogZdXPJztoBov0Un5cWyvKEZEeVELjLM7A==
X-Google-Smtp-Source: AGHT+IHI4dFlB8diGdPNR1gaVxOmsBAtj+RW7TLFOiVBqjqpmE01la5HWuQUcDpIlAG6kkdNvnttNw==
X-Received: by 2002:a05:620a:468f:b0:7ac:9b5e:baf3 with SMTP id af79cd13be357-7b193ef2c9amr2417353485a.26.1730311671221;
        Wed, 30 Oct 2024 11:07:51 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b18d27911asm536940685a.26.2024.10.30.11.07.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 11:07:50 -0700 (PDT)
Message-ID: <118a5072-b4c9-47f7-8113-529133b67633@gmail.com>
Date: Wed, 30 Oct 2024 14:07:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <TddC7jbd6VbQLsI5EBw6RnJugjuJuYPuHOxOJb9iDEU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <TddC7jbd6VbQLsI5EBw6RnJugjuJuYPuHOxOJb9iDEU@lists.ettus.com>
Message-ID-Hash: QGPHCJUD4NA7ALYXCZQSLDIDWNZ2EQWF
X-Message-ID-Hash: QGPHCJUD4NA7ALYXCZQSLDIDWNZ2EQWF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QGPHCJUD4NA7ALYXCZQSLDIDWNZ2EQWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzAvMTAvMjAyNCAxMzozOCwgZGhwYW5jaGFhaUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEkg
aGFkIHRvIGNoYW5nZSBteSAxMDBHIElQIGFkZHJlc3MgdG8gMTkyLjE2OC4xMjAuMiBhbmQgY2hh
bm5lbHMgb24gDQo+IHRoZSBYNDEwIHRvIOKAnEHigJ0uDQo+DQo+IEkgc2V0IHRoZSBDUFUgdG8g
UGVyZm9ybWFuY2UgTW9kZSBhbmQgbG93ZXJlZCB0aGUgc2FtcGxlIHJhdGUgdG8gDQo+IDEyMi44
OGU2Lg0KPg0KPiBIb3dldmVyLCBJ4oCZbSBzdGlsbCBleHBlcmllbmNpbmcgZHJvcHBlZCBwYWNr
ZXRzIGFuZCBzZXF1ZW5jZSBlcnJvcnMuDQo+DQo+IC91c3IvbG9jYWwvbGliL3VoZC9leGFtcGxl
cyQgc3VkbyAuL2JlbmNobWFya19yYXRlIC0tYXJncyANCj4gInR5cGU9eDR4eCxwcm9kdWN0PXg0
MTAsYWRkcj0xOTIuMTY4LjEyMC4yLG1nbXRfYWRkcj0xOTIuMTY4LjEuMyx1c2VfZHBkaz0xIiAN
Cj4gLS1wcmlvcml0eSAiaGlnaCIgLS1yeF9yYXRlIDEyMi44OGU2IC0tcnhfc3ViZGV2ICJBOjEi
IC0tdHhfcmF0ZSANCj4gMTIyLjg4ZTYgLS10eF9zdWJkZXYgIkE6MCINCj4NCj4gW0lORk9dIFtV
SERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IERQREtfMjEu
MTE7IA0KPiBVSERfNC43LjAuSEVBRC0wLWdhNWVkMTg3Mg0KPg0KPiBFQUw6IERldGVjdGVkIENQ
VSBsY29yZXM6IDMyDQo+DQo+IEVBTDogRGV0ZWN0ZWQgTlVNQSBub2RlczogMQ0KPg0KPiBFQUw6
IERldGVjdGVkIHNoYXJlZCBsaW5rYWdlIG9mIERQREsNCj4NCj4gRUFMOiBNdWx0aS1wcm9jZXNz
IHNvY2tldCAvdmFyL3J1bi9kcGRrL3J0ZS9tcF9zb2NrZXQNCj4NCj4gRUFMOiBTZWxlY3RlZCBJ
T1ZBIG1vZGUgJ1ZBJw0KPg0KPiBFQUw6IE5vIGF2YWlsYWJsZSAxMDQ4NTc2IGtCIGh1Z2VwYWdl
cyByZXBvcnRlZA0KPg0KPiBFQUw6IFByb2JlIFBDSSBkcml2ZXI6IG1seDVfcGNpICgxNWIzOjEw
MTcpIGRldmljZTogMDAwMDowMTowMC4wIA0KPiAoc29ja2V0IDApDQo+DQo+IEVBTDogUHJvYmUg
UENJIGRyaXZlcjogbWx4NV9wY2kgKDE1YjM6MTAxNykgZGV2aWNlOiAwMDAwOjAxOjAwLjEgDQo+
IChzb2NrZXQgMCkNCj4NCj4gVEVMRU1FVFJZOiBObyBsZWdhY3kgY2FsbGJhY2tzLCBsZWdhY3kg
c29ja2V0IG5vdCBjcmVhdGVkDQo+DQo+IFswMDowMDowMC4wMDAwOTRdIENyZWF0aW5nIHRoZSB1
c3JwIGRldmljZSB3aXRoOiANCj4gdHlwZT14NHh4LHByb2R1Y3Q9eDQxMCxhZGRyPTE5Mi4xNjgu
MTIwLjIsbWdtdF9hZGRyPTE5Mi4xNjguMS4zLHVzZV9kcGRrPTEuLi4NCj4NCj4gW0lORk9dIFtN
UE1EXSBJbml0aWFsaXppbmcgMSBkZXZpY2UocykgaW4gcGFyYWxsZWwgd2l0aCBhcmdzOiANCj4g
bWdtdF9hZGRyPTE5Mi4xNjguMS4zLHR5cGU9eDR4eCxwcm9kdWN0PXg0MTAsc2VyaWFsPTMyOEFG
RDcsbmFtZT1uaS14NHh4LTMyOEFGRDcsZnBnYT1VQ18yMDAsY2xhaW1lZD1GYWxzZSxhZGRyPTE5
Mi4xNjguMTIwLjIsdXNlX2RwZGs9MQ0KPg0KPiBbSU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBp
bml0KCkgY2FsbGVkIHdpdGggZGV2aWNlIGFyZ3MgDQo+IGBmcGdhPVVDXzIwMCxtZ210X2FkZHI9
MTkyLjE2OC4xLjMsbmFtZT1uaS14NHh4LTMyOEFGRDcscHJvZHVjdD14NDEwLHVzZV9kcGRrPTEs
Y2xvY2tfc291cmNlPWludGVybmFsLHRpbWVfc291cmNlPWludGVybmFsLGluaXRpYWxpemluZz1U
cnVlJy4NCj4NCj4gVXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoNCj4NCj4gRGV2aWNlOiBYNDAw
LVNlcmllcyBEZXZpY2UNCj4NCj4gTWJvYXJkIDA6IHg0MTANCj4NCj4gUlggQ2hhbm5lbDogMA0K
Pg0KPiBSWCBEU1A6IDANCj4NCj4gUlggRGJvYXJkOiBBDQo+DQo+IFJYIFN1YmRldjogMQ0KPg0K
PiBUWCBDaGFubmVsOiAwDQo+DQo+IFRYIERTUDogMA0KPg0KPiBUWCBEYm9hcmQ6IEENCj4NCj4g
VFggU3ViZGV2OiAwDQo+DQo+IFswMDowMDowMS45NTQ3MTcwMDBdIFNldHRpbmcgZGV2aWNlIHRp
bWVzdGFtcCB0byAwLi4uDQo+DQo+IFswMDowMDowMS45NTU5OTkwNjJdIFRlc3RpbmcgcmVjZWl2
ZSByYXRlIDEyMi44ODAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzDQo+DQo+IFNldHRpbmcgVFggc3Bw
IHRvIDE5OTINCj4NCj4gWzAwOjAwOjAxLjk1NjgxNjY1NV0gVGVzdGluZyB0cmFuc21pdCByYXRl
IDEyMi44ODAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzDQo+DQo+IFVbMDA6MDA6MDIuNTc1NDg2NzQ5
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDMuNTc1NTI5NjIz
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDQuNTc1NTM3MDM2
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDUuNTc1NDc3MDYy
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDYuNTc1NDY1Mjk2
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDcuNTc1NTQ5MTgz
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDguNTc1NTM5NTY5
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MDkuNTc1NTMyNzAy
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MTAuNTc1NDc5ODUz
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFVbMDA6MDA6MTEuNTc1NDY0NTk3
XSBEZXRlY3RlZCBSeCBzZXF1ZW5jZSBlcnJvci4NCj4NCj4gRFswMDowMDoxMS45NTgzMzY3NTJd
IEJlbmNobWFyayBjb21wbGV0ZS4NCj4NCj4gQmVuY2htYXJrIHJhdGUgc3VtbWFyeToNCj4NCj4g
TnVtIHJlY2VpdmVkIHNhbXBsZXM6IDExNzY3MzYxOTkNCj4NCj4gTnVtIGRyb3BwZWQgc2FtcGxl
czogNTIxNjc0NTYNCj4NCj4gTnVtIG92ZXJydW5zIGRldGVjdGVkOiAwDQo+DQo+IE51bSB0cmFu
c21pdHRlZCBzYW1wbGVzOiAxMTY4MTUyNjI0DQo+DQo+IE51bSBzZXF1ZW5jZSBlcnJvcnMgKFR4
KTogMA0KPg0KPiBOdW0gc2VxdWVuY2UgZXJyb3JzIChSeCk6IDEwDQo+DQo+IE51bSB1bmRlcnJ1
bnMgZGV0ZWN0ZWQ6IDEwDQo+DQo+IE51bSBsYXRlIGNvbW1hbmRzOiAwDQo+DQo+IE51bSB0aW1l
b3V0cyAoVHgpOiAwDQo+DQo+IE51bSB0aW1lb3V0cyAoUngpOiAwDQo+DQo+IERvbmUhDQo+DQo+
DQo+IE15IC9yb290Ly5jb25maWcvdWhkLmNvbmYgZmlsZToNCj4NCj4gW3VzZV9kcGRrPTFdDQo+
DQo+IGRwZGtfbXR1PTkwMDANCj4NCj4gZHBka19kcml2ZXI9L3Vzci9saWIveDg2XzY0LWxpbnV4
LWdudS9kcGRrL3BtZHMtMjIuMC8NCj4NCj4gZHBka19jb3JlbGlzdD0xMCwxMQ0KPg0KPiBkcGRr
X251bV9tYnVmcz00MDk1DQo+DQo+IGRwZGtfbWJ1Zl9jYWNoZV9zaXplPTMxNQ0KPg0KPiBbZHBk
a19tYWM9Yjg6M2Y6ZDI6YjA6ZDc6NThdDQo+DQo+IGRwZGtfbGNvcmUgPSAxMQ0KPg0KPiBkcGRr
X2lwdjQgPSAxOTIuMTY4LjEyMC4zMy8yNA0KPg0KPiAjZHBka19udW1fZGVzYyA9IDQwOTYNCj4N
Cj4NCj4gSSBoYXZlIGF0dGFjaGVkIHNjcmVlbnNob3Qgb2YgdGhlIHBlcmZvcm1hbmNlIEdVSSBh
bmQgc3lzdGVtIG1vbml0b3IgDQo+IG9mIHRoZSBDUFUgdXNhZ2UNCj4NCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KVGhpcyBp
cyBvbiBhICJiYXJlIG1ldGFsIiBzeXN0ZW0sIGFuZCBOT1Qgb24gYSBWTSwgSSBhc3N1bWU/DQoN
CkkganVzdCByYW4gYSB0ZXN0ICh1c2luZyBhIGRpZmZlcmVudCBVU1JQKSBkb2luZyAxMjVNc3Bz
IG9mIHJlY2VpdmUgaW50byANCm15IHN5c3RlbSwgb3ZlciBhIGNoZWFwIDEwR2lHZSBjYXJkLsKg
IFdvcmtlZCB3aXRob3V0DQogwqAgQU5ZIGRyb3BwZWQgc2FtcGxlcy0tanVzdCB1c2luZyB0aGUg
ImJlbmNobWFya19yYXRlIiBhcHBsaWNhdGlvbiBhcyANCnlvdSBoYXZlLsKgIE15IHN5c3RlbSBp
cyBhIDgteWVhci1vbGQgZHVhbC1jaGlwLA0KIMKgIDYtY29yZSBYZW9uIHN5c3RlbSB3aXRoIDMy
RyBvZiBtZW1vcnksIHJ1bm5pbmcgb24gVWJ1bnR1IDIyLjA0LiBZb3VyIA0Kc3lzdGVtIFNIT1VM
RCBiZSBjYXBhYmxlIG9mIE1VQ0ggbW9yZS4NCg0KDQpJIGFzc3VtZSB5b3UndmUgZm9sbG93ZWQg
dGhlIHZhcmlvdXMgYml0cyBvZiBhZHZpY2UgaGVyZToNCg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20v
VVNSUF9Ib3N0X1BlcmZvcm1hbmNlX1R1bmluZ19UaXBzX2FuZF9Ucmlja3MjSW5jcmVhc2luZ19S
aW5nX0J1ZmZlcnMNCg0KSSB3b25kZXIgaWYgeW91IGhhdmUgYSBQSFktbGF5ZXIgaXNzdWUgd2l0
aCB5b3VyIGNhYmxpbmc/DQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
