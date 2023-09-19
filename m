Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7967A63CD
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 14:52:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8599386418
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 08:52:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695127939; bh=c8zux4UdVRM+GCes3ojOztQlx86sWt0O1kmf4Fxnjfo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Fb+qa317qmlZJIMm6FjIqx0PX7kLmhdfgZPz2L8IudUFxb/u5rZstdIuwO8PVaBTN
	 vdo0AhIOLSTLnsDiKwuyURMnGxvctEHaJGnlVUrdWGLFowf0p5XQ9K5KOdIk7M4eo0
	 hrdOwAFkFTi4TdF1fTYaG9XXiYr0xtGtBlMMYG4MBX6hO7v27XV+MV51X1w+/gh14L
	 M1nRn1LbTRSXBcoFVfM1+OuLBIfsfFKf74jmd8k6YecH5llIeO8vYm3zpK4uARjVEe
	 4rcB0jBdrgyzmUKE4AsOFTNxW61iEU/Ymbjegm2BzkUi+OqP0ryuReHBvDWY0aOI6y
	 4b6t0k7bRxf4Q==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F1CE3860E1
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 08:52:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PhAB3PnV";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-41369b80875so25152901cf.1
        for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 05:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695127922; x=1695732722; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QA0ylP6DNyHDSdcuAMF4yzpzy/zFf/2cry8+Xn9S0/A=;
        b=PhAB3PnVT+mfq57Q+yLESnVuGnrCZYHbVJ90UKM2Ib4dwlYlGIezTx50cfulDljFDI
         950GVDG6/3wVGTDCRm9Ld+f+o65A56/XWA1HFHAK4QaRKqExppkv+YWY2pjGKgJHhBia
         W+xBQMQxgxA68esLxsxUeiymDaBBIb6fLCOcS6cpEVkEajyQKDlMxPVufyljQLO7K7oe
         32QFDdV2nvfOk2IrI9uXZC40n0RGDoiEj+Is/q4hodWqwZFon7LzLV2eD2w8W3HT1esJ
         A8GeZx2Qkw3XchdGydKpQvbOqX2tqmM36HVr8p79T6nu3v0AmFNYfRKTGS9mP9NkOm9u
         rCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695127922; x=1695732722;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QA0ylP6DNyHDSdcuAMF4yzpzy/zFf/2cry8+Xn9S0/A=;
        b=X4AP9/SlMcwxo+LpaNCoNPlpgJytUMpELus7OSJJOn76rB9m7smznKRY8I0GcPGJsx
         MAFYfqfywiQueIBsV+H6G/B7Poz8m2e68pg0GabPpoxuTsqgE+znW43/99IewCtzR6RR
         t9Yd/qbKa/KjCjnJzIZ6HuL2hrTjEXe5nrUlJZ+fQjDkqRv1MpYfN0aRXKdkkmLq/v1A
         iQ4dsWIemx/flKo/q5GnZj3EXxsye39i5aoqC/NnEFIhc1UhOi3TGPOCuRUwK3ir/yji
         1or9DUhj4Ec8tS6T3HFvLXGt4+GMUcyaXcVbJDTWZLDvKmvb4SBw2okfYQP1RdffAzjq
         PeNw==
X-Gm-Message-State: AOJu0YxdcqpLUCbsaz9TpYEvLybgBmxpxtLOLl1HthhPcJ77dr0+LT9W
	LwmqVMJji9xMIj4vwkNLe6f8ChfjCSkzRQ==
X-Google-Smtp-Source: AGHT+IGh4Erh/iHoCJ57XZgv+T5b82HvB09WSjDFrZEqaCS097Ka3R18JsfXjDvETnlhdsmK8P4EGg==
X-Received: by 2002:a05:622a:6f8b:b0:3f5:16af:17db with SMTP id iw11-20020a05622a6f8b00b003f516af17dbmr2128917qtb.0.1695127922261;
        Tue, 19 Sep 2023 05:52:02 -0700 (PDT)
Received: from [192.168.2.193] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h11-20020ac8138b000000b00407ffb2c24dsm3749723qtj.63.2023.09.19.05.52.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 05:52:01 -0700 (PDT)
Message-ID: <182b2d18-00a7-4511-0f13-2384ca8524d2@gmail.com>
Date: Tue, 19 Sep 2023 08:51:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MA0PR01MB92187ECC43DC43A0A4050C2FB6E8A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB92187E3CD217ED05912CBA5BB6F1A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB9218A5503D87BFF14F28AB9AB6FAA@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <98489dd8-4111-17f3-61ea-e8a8afa180de@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <98489dd8-4111-17f3-61ea-e8a8afa180de@ettus.com>
Message-ID-Hash: FD5EWEMYYRRA3RTOTD4V7PNFDVBPIQMJ
X-Message-ID-Hash: FD5EWEMYYRRA3RTOTD4V7PNFDVBPIQMJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP codebase walkthrough/understanding
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FD5EWEMYYRRA3RTOTD4V7PNFDVBPIQMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTkvMDkvMjAyMyAwNzo0NCwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+DQo+IEhpIEpleWFr
dW1hciwNCj4NCj4NCj4gb2J2aW91c2x5LCB3ZSdkIHBvaW50IHlvdSB0byB0aGUgc2FtZSByZXNv
dXJjZXMgb24gdGhlIEV0dHVzIGtub3dsZWRnZSANCj4gYmFzZSB0aGF0IHlvdSd2ZSBhbHJlYWR5
IHJlYWQsIHByb2JhYmx5LiBTbywgdW0sIGNhbiB5b3UgbWF5YmUgcGhyYXNlIA0KPiB0aGlzIGlu
IGEgbGVzcyBvcGVuLWVuZGVkIHdheT8gV2hhdCBkbyB5b3UgbmVlZCBoZWxwIHdpdGg/DQo+DQo+
DQo+IEFsc286ICJBZGQgQUkgY2FwYWJpbGl0aWVzIiwgdGhhdCBtYWtlcyBteSAidW5kZXJkZWZp
bmVkIHRlcm0gdXNhZ2UiIA0KPiBtZXRlciBoYXZlIHZlcnkgaGlnaCByZWFkaW5ncy4gUGxlYXNl
IHRyeSB0byBhbHNvIG5hcnJvdyBkb3duIHdoYXQgeW91IA0KPiB3YW50IHRoaXMgdG8gbWVhbiEN
Cj4NCj4NCj4NClRvIGFtcGxpZnkgb24gdGhpcyBwb2ludCBhIGJpdC7CoCBJJ20gbm90IHN1cmUg
d2hhdCAiQWRkIEFJIGNhcGFiaWxpdGllcyIgDQphY3R1YWxseSBtZWFucyBmb3IgYSBjb2RlLWJh
c2UgdGhhdCBmb3IgdGhlIG1vc3QgcGFydA0KIMKgIGlzIGEgaGFyZHdhcmUtYWJzdHJhY3Rpb24g
bGF5ZXIgZm9yIFVTUlAgaGFyZHdhcmUuwqAgSXQgaXNuJ3QsIHBlciBzZSwgDQphIERTUCBmcmFt
ZXdvcmsgKGxpa2UgR251IFJhZGlvKSwgc28gSSdtIG5vdCBzdXJlDQogwqAgd2hlcmUgIkFJIGNh
cGFiaWxpdGllcyIgd291bGQgZXZlbiAiZml0Ii7CoCBJdCdzIHZlcnkgbGlrZWx5IHRoYXQgVUhE
IA0KaXMgdGhlIHdyb25nIGxheWVyLsKgIFdoaWxlIGFueSBzdWNoIGNvZGUgbWF5ICp1c2UqDQog
wqAgVUhEIHVuZGVybmVhdGgsIGl0IHdvdWxkIGJlIGEgcG9vciBpZGVhIHRvIGFkZCB0aGlzIHRv
IFVIRCBpdHNlbGYuDQoNClRoZXJlIGlzIG5vICJzdHJ1Y3R1cmVkIHdhbGstdGhyb3VnaCIgZm9y
IFVIRCBjb2RlLsKgIFRoZXJlJ3MgdGhlIGNvZGUgDQppdHNlbGYsIHRoZSB2YXJpb3VzIGJpdHMg
b2YgZ2VuZXJhbCBhbmQgQVBJIGRvY3VtZW50YXRpb24sDQogwqAgdGhlIEV0dHVzIEtub3dsZWRn
ZSBCYXNlLCBhbmQgcmVzb3VyY2VzIGxpa2UgdGhpcyBtYWlsaW5nIGxpc3QuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
