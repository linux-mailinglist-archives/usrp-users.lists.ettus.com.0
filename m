Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDE4A3E09A
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 17:26:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22D7F385513
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 11:26:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740068805; bh=+Cq7vsPrIpr/4YJ9wlDYmwl/FPXtXCj+kqY/yzmkQn0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=y8Ljn7RwDJlZ3GXZr5cOHfoc7jZgfUXaGwrYa3WH+ycPTyDryih7ceR4gaZTGOyEm
	 3jkvLIouKSXD86mImq0zRlh8ceMLy+LC/oPz0G6iIHZ1aA+FdLdItOJcTnY/CJQ7o2
	 iOb/tds4iQAtk2BErbYgEkV9jz6ZMHEiBvj7zBeHQKbiT6FGbHn01BJZL230wIz3Gf
	 f5xyngBl/mthsEepFetFnyLRGqKV6ecm5WytwQUtdyGyb/Zp327dWkIQ522Mlk2YHG
	 jpF/hfGwS1+Ndt4s8l981g2FBW7hAY8CyLK57tdNvQi3fuSDS3iBl91LCf2Bedhwto
	 JDNV1Dd6NQvqQ==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C1DFC385FC9
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 11:25:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="egkcQoDv";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6e68943a295so8805156d6.0
        for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 08:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740068753; x=1740673553; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/8jzhLVaPh0j5+z7jnkhLVcHBa3TAiGlWw9s7Q0tulQ=;
        b=egkcQoDv4QASYfMN6Lq5RCMW/9axyXKmOJ0LK6UrRKvvpUXFnxSJKKIY5fwp8xzE3N
         tJOcUX5kIecL0jiZN9FmrVfCqhWMQiKqtUMFphOyk5uk+b6c6m/oqY61YlCiSp9xleOs
         gSeJha3aAGd3QG480MrV70oWEbW+I5auk+4S5yCFN2gIkjpHf1vcvGeS7iQp7gV8+vM6
         k9wWGiTecZXlTeC+3d+KczT3RHxovdpMk+uMTlVKYrNGdetUeqRV1D5nx9k8F9711amB
         14L+GwJMkQyER0DlcJbhyi5TULsnnq4mceAjM6IX3qOuzT7wgV/eMJLGwONWt5KeGPW6
         drzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740068753; x=1740673553;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/8jzhLVaPh0j5+z7jnkhLVcHBa3TAiGlWw9s7Q0tulQ=;
        b=j5hRSspB6+MuB3jUxmvX+rhVLKrskM7S/UIr9XPcDbV6G/1kavnftfbJBNL/Zs7P0X
         FFZeh8BVi3LAQemXQFwnR90Dz1XGY/ve3q5pSImrUATXX6KmeXD2PS5cCJvAqONoTw4x
         CUbGGYlYYuUpy0+TF/FWBl8GFQHeJw9NZHhUGavr0OfLo78IVxhHkdKec5rXMvvvlPd3
         Akn7tSu1Wo6ebOJUESbT7p2ikT/vuEiwHkRTny0zah+kQvxl1D6MPo+Su08arPHd1+b7
         NIa0i1JSWWQP8URFY3MNVoKgYS7zSSv7B4gGEG2PBJag7bc2KmqxC/OfkFuZFj/aGQhJ
         kmyw==
X-Gm-Message-State: AOJu0YxYOcFeOgnN6JpfQmpNMeBzBoFHYKb18UKPArTsbb6H25lqWG7C
	zbhR1NplWrLq/qQD/rZiDQy0GCWb7qZ/A+INCGQH1Mr8Ev39URgj+pSfeg==
X-Gm-Gg: ASbGncscIFvzGIwMjTLryqjgS4P4uGIjkg3F8TtKaB92/7EUQbJizZALm+46PiEPsoy
	ujpD67KSNtt+8QrkWopxBXEYsHSOMe+w8ualVI6hfQdeZa+2kUkPJMxPK8wwVg2wgunhkMdKc1P
	FViDoLuySHA2v7H4blM2R2xshQMCXqqgXahOKfrwcDzNokwCLBVNUIz7XQo6GLLPOsv0RyZeUC4
	0Qrl++US5b759/+pkTu+AtvudD7Yyhi7inFEJNLdzNn8ix3K5gDgkZaLdlZxSJS/nU2bUxYLJZB
	BTb6pLED7MDwqGk1lYG48tniMcpycFdkFVIvUscihIADplJDgGxNKFDGS7nO86DluxyMY1lbhbi
	DBvdbjIeVxEGDSA==
X-Google-Smtp-Source: AGHT+IENK+TyG5xSnn1wpXUJqOG5Yb2Cy8bHEgFYdmHaJkXlqIwl4n0xvwnlLdBu/Ws+tBbh7Zo6pA==
X-Received: by 2002:a05:6214:1bcb:b0:6e6:62f7:d460 with SMTP id 6a1803df08f44-6e66ccb7b14mr312480036d6.17.1740068753483;
        Thu, 20 Feb 2025 08:25:53 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e65d785cf1sm87537366d6.42.2025.02.20.08.25.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 08:25:53 -0800 (PST)
Message-ID: <e8a060a7-b3b1-4371-abb4-a89fee78e591@gmail.com>
Date: Thu, 20 Feb 2025 11:25:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CACPignQ2NHBxXnd4nVjHd8PprL4hDUYvC5W9k_b7JRHVCfJDJw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACPignQ2NHBxXnd4nVjHd8PprL4hDUYvC5W9k_b7JRHVCfJDJw@mail.gmail.com>
Message-ID-Hash: DJ4MULD7GWEQDQKX5SNGTX43I4WMFEHW
X-Message-ID-Hash: DJ4MULD7GWEQDQKX5SNGTX43I4WMFEHW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRPN210 frequency changing through serial port data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJ4MULD7GWEQDQKX5SNGTX43I4WMFEHW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDIvMjAyNSAxMToxMiwgTXVoYW1tYWQgQW5hcyB3cm90ZToNCj4gRGVhciBDb21tdW5p
dHksDQo+DQo+IEkgd2FudCB0byBjb250cm9sIHRoZSBjaGFubmVsIGZyZXF1ZW5jeSBpbiB0aGUg
UkYgb3B0aW9ucyBpbiB0aGUgVVNSUCANCj4gc2luayBibG9jayBvbiBHTlUgUmFkaW8gQ29tcGFu
aW9uIGZyb20gdGhlIGZsb2F0IGRhdGEgY29taW5nIGZyb20gDQo+IHNlcmlhbCBwb3J0IHRocm91
Z2ggYSBjdXN0b20gcHl0aG9uIGJsb2NrIGFuZCB0aGUgZGF0YSBjb21pbmcgaXMgDQo+IHNob3dp
bmcgaW4gdGhlIEdSQyBlbnZpcm9ubWVudCBpbiBiYXIgc2luayBhcyBmbG9hdCB2YWx1ZXMgYW5k
IEkgYW0gDQo+IHRyeWluZyB0byBzYXZlIHRoZXNlIGZsb2F0IHZhbHVlcyBpbiB0aGUgdmFyaWFi
bGUgJ2ZyZXF1ZW5jeScgYnkgdXNpbmcgDQo+IGFub3RoZXIgcHl0aG9uIGJsb2NrLCBhbmQgd2hl
biBJIHdyaXRlIHRoZSBzYW1lIHZhcmlhYmxlICdmcmVxdWVuY3knIA0KPiBpbiBwbGFjZSBvZiBV
U1JQIGNoYW5uZWwgZnJlcXVlbmN5IG9wdGlvbiwgaXQncyBub3QgcmVjb2duaXppbmcgdGhpcyAN
Cj4gdmFyaWFibGUuDQo+DQo+IElzIHRoZXJlIGFueSB3YXkgdG8gY29udHJvbCB0aGUgVVNSUCBj
aGFubmVsIGZyZXF1ZW5jeSB0aHJvdWdoIHRoZSANCj4gZGF0YSBjb21pbmcgZnJvbSBzZXJpYWwg
cG9ydCBpbiByZWFsIHRpbWUuIEtpbmRseSBoZWxwIG1lIGluIHRoaXMgcmVnYXJkLg0KPg0KPiBC
ZXN0IHJlZ2FyZHMNCj4gTXVoYW1tYWQgQW5hcw0KVGhpcyBpcyBkZWNpZGVkbHkgYSAqR05VIFJh
ZGlvIFByb2dyYW1taW5nIFF1ZXN0aW9uKiwgYW5kIG5vdCBhIHF1ZXN0aW9uIA0KZm9yIHRoaXMg
bGlzdC7CoCBJIHN1Z2dlc3QgeW91IHRyeSB0aGUNCiDCoCBkaXNjdXNzLWdudXJhZGlvIG1haWxp
bmcgbGlzdC4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
