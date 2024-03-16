Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1687DBF7
	for <lists+usrp-users@lfdr.de>; Sun, 17 Mar 2024 00:14:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F8A4384F19
	for <lists+usrp-users@lfdr.de>; Sat, 16 Mar 2024 19:14:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710630858; bh=XaNqLIw7kbjgF08V1T+lLEGVzAF9116cQcScngWt6Nw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f3r9VTqFxZsCQXw1D/FJpG5COBSBXOHTkrbUbZxblc4wcYuNQw1/A55HkNZhvQna1
	 uLeUFDvQZPDGAsgFc4EqqRkvPc3N41OP7m1qgTi0C/xzG2jdd0EfqF3jhdoeccM15A
	 ltbGzJF5L3cO945KsriQos+uT0GOhQ5hT/1ILCNfecdpV/+q6QjCGLSp6Fi2x6Sxmw
	 Sm5e7dI9khncCSQYNxFmdk1yZYgaQXUH3kfLXEMpMQt5RpHDeFmLo1n+Y2b03rO+9R
	 k2du5Zg1GAuJ9mBHXnoxPYntXvGU7tEH3RqNrQf0EKIybyTkFeZTzn6WiXa4qg90Wd
	 C7RVDIAUz7Hdg==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C551384E1C
	for <usrp-users@lists.ettus.com>; Sat, 16 Mar 2024 19:13:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VEWL0Zui";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-690b24973beso35281196d6.0
        for <usrp-users@lists.ettus.com>; Sat, 16 Mar 2024 16:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710630809; x=1711235609; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H7XzeEm93XcQKeOcR8sOhtxnmxcS4wywdizYi/Nzesc=;
        b=VEWL0Zui4B1i2dULzaTciytG4db9jQlQLkG10MFVCxo7IrZsOWg+JUVnMKTOP6sK1Z
         uJ4ar/zmpYhCR4AqA+sam2KuJIs8NLJJ8lgFXlsFhiwRljdNrBfVkEzhm0Rvnf0kWV4p
         u1s6Jo4jdmHomNtozvkySDPElQfcbNP5aDUyzjn6gXBTyZQD81lmJO52NizPmqaFVmVZ
         n4v05AiwHAWeqvGFP+QgA0OVu7VCMTQMMVygo5XGs7v5BhppNDduHaZrehNkp0BZ42+t
         MorMA6W7r4XfhgQbkz8X+9Ra0dlHHbpldDBvtMjV8X//52j31s+LBDfrtiUfeqAuKY0k
         zKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710630809; x=1711235609;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H7XzeEm93XcQKeOcR8sOhtxnmxcS4wywdizYi/Nzesc=;
        b=ucAXLfp5czXo6y6/pWbLsoC236dSzkSabT0AG3EohA7onX4oLoKRQ9+hTh9kILK6e4
         2bfREUmgVT9FqaJl01KaCoeoivSDqQypQfqHR4hh0qUG0hGdUrcI1gjMwQFu+6gWpj/B
         XyEK7NA58Gu/EB0twdMNyCx63pe4s8U2Y/dMNf8xcllZJSon0rUs2h3zQhQygm14V58q
         GHKaIwXqLCKv8TVMH4JS2KtJc9DG7t+n5qvvQ0tkhHDwgrZ/yortIUZ21BoKADWSOGzj
         l6qCUr1IU0XkDP0QmINh+LPLQZ4JB4zUG2WrY25fgLE4PXVwFc1DrSQYPTPqoRZm8ajQ
         koNQ==
X-Gm-Message-State: AOJu0YypHGOJKOLT+dw9BIqtWwp/ABePLC7uRTHQxTF3x+CoAWfFVWD3
	fT2LN+Htg4YqpK3g7XHEjkUTOK2pJ4z7g2l3SK3lL1z7x2U2Bh1bU9QhuR5F4CY=
X-Google-Smtp-Source: AGHT+IESfIqbbhk5UUvAf+aBTZcB8yYaoNhjCK8hr2LebnkRtfHr67CFbY5VUNgKHZpJazhWxahijA==
X-Received: by 2002:ad4:41c9:0:b0:691:2393:2a04 with SMTP id a9-20020ad441c9000000b0069123932a04mr12434046qvq.32.1710630809621;
        Sat, 16 Mar 2024 16:13:29 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id fn1-20020ad45d61000000b0069044802760sm3582562qvb.120.2024.03.16.16.13.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Mar 2024 16:13:29 -0700 (PDT)
Message-ID: <3251368c-6d81-4a20-8250-691bacfe55bd@gmail.com>
Date: Sat, 16 Mar 2024 19:13:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DGuvE6FZPXP6KZYsyOQaxqPgewknhO38qUmv8tQ124@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DGuvE6FZPXP6KZYsyOQaxqPgewknhO38qUmv8tQ124@lists.ettus.com>
Message-ID-Hash: KKW5NTDYTVXXG5Q2KCEQIE7JA4PHX4GX
X-Message-ID-Hash: KKW5NTDYTVXXG5Q2KCEQIE7JA4PHX4GX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Twinrx matlab issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KKW5NTDYTVXXG5Q2KCEQIE7JA4PHX4GX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMDMvMjAyNCAxOTowNywgYWxpLm1haGJhc0BicnVuZWwuYWMudWsgd3JvdGU6DQo+DQo+
IERlYXIgYWxsLA0KPg0KPiBJIGhhdmUgYmVlbiB1c2luZyBYMzEwICh0d28gU0JYcykgdG8gcnVu
IGEgbWF0bGFiIGV4YW1wbGUgd2l0aCBubyANCj4gaXNzdWVzLiBSZWNlbnRseSB3ZSBib3VnaHQg
YW5vdGhlciBYMzEwICh0d28gVHdpbnJ4cykgdG8gcnVuIHRoZSBzYW1lIA0KPiBtYXRsYWIgY29k
ZSAodXNpbmcgdGhlIHNhbWUgbWFjaGluZSksIGhvd2V2ZXIsIEkgaGF2ZSBiZWVuIGZhY2luZyBz
b21lIA0KPiBpc3N1ZXMuIEkgaGFkIHRvIHVwZGF0ZSB0aGUgZmlybXdhcmUgYnkgdXNpbmcgc2Ry
dWxvYWQoKSBvbiBtYXRsYWIgDQo+IGhvd2V2ZXIgd2hlbiBJIGRvIHRoZSBIYXJkd2FyZSBzZXR1
cCBieSB1c2luZyDigJxDb21tdW5pY2F0aW9ucyBUb29sYm94IA0KPiBTdXBwb3J0IFBhY2thZ2Ug
Zm9yIFVTUlAgUmFkaW/igJ0gdGhlIHRlc3QgZmFpbHMgKGFzIHNob3duIGluIHRoZSANCj4gYXR0
YWNoZWQgc2NyZWVuc2hvdCkuDQo+DQo+IFdoZW4gSSBydW4gdGhlIG1hdGxhYiBleGFtcGxlLCBp
dCBzaG93cyBtZSB0aGUgZXJyb3Igc2hvd24gaW4gdGhlIA0KPiBvdGhlciBhdHRhY2hlZCBzY3Jl
ZW5zaG90Lg0KPg0KPiBTaW5jZSBJIGhhdmUgbm8gaXNzdWVzIHdoZW4gdXNpbmcgdGhlIG9sZCBY
MzEwIHdpdGggU0JYcywgaXMgdGhlIGlzc3VlIA0KPiBiZWNhdXNlIG9mIFR3aW5yeD8NCj4NCj4g
QW55IGhlbHAgd291bGQgYmUgbXVjaCBhcHByZWNpYXRlZC4NCj4NCj4gS2luZCByZWdhcmRzLA0K
Pg0KPiBBbGkNCj4NCj4NCk5vdCB0b28gbWFueSBNYXRMYWIgZm9sa3Mgb24gaGVyZSwgYnV0IGl0
IGxvb2tzIGxpa2UgeW91J3JlIHRyeWluZyB0byANCip0cmFuc21pdCogd2l0aCB0aGF0IE1hdExh
YiBjb2RlIHNuaXBwZXQuwqAgVGhlDQogwqAgVHdpblJYIGNhcmRzIERPIE5PVCBTVVBQT1JUIHRy
YW5zbWlzc2lvbi7CoCBUaGV5IGFyZSB0d28tY2hhbm5lbCwgDQpyZWNlaXZlLW9ubHkgZGV2aWNl
cy4NCg0KDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
