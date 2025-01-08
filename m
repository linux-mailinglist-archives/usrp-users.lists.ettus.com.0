Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2280A0536C
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 07:53:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86506385B1D
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 01:53:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736319203; bh=J/U10bp2dgV4EmCagwGa8qAuqAEO2D2mrsdxaqAKYVc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kL6hiQXoU5b4B+jsAMTvdVAIa8sik9jFVtV7rv9vpwGXnFItdNetqd8H3ERiJHGfk
	 iOMgpGMo/bwh3gNL5FjWH138MJKWF4zgSiKZTzU8FnvWos1hc5aEO7YUmvaup44zHC
	 jEs5EMlEO9ohZCPJh44ivFRcsIiE7oLBV4UkVKVe7y/9NLjk5UDgWSwhkvsC93wGQ8
	 2XXga7FnOflNsLr4hIOpxgMb7milbFT1OQVZHuMT3/7IkR9nHg46mPDv6X1qT5EfGY
	 Lytjmrj6kqAhf2xzk+93AlT558VmXMyLsb4amk0ltv9OqJ7rm6WudMX7cKM4PycZK7
	 XAjfGJgUdw0DQ==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 58BB1385B18
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 01:52:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V4rQ41S2";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6dcdd9a3e54so162697136d6.3
        for <usrp-users@lists.ettus.com>; Tue, 07 Jan 2025 22:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736319160; x=1736923960; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4SClk/ty5V+WbNfnIywWxHqG/U3a1jyV5yxUBpPkwIQ=;
        b=V4rQ41S2TR/VGLdnbsp5rWd/We9Gwn0QK8V0EDndWKTpCQtYOfRLikldRswETS/+F+
         fwZOyQp5fPy9jG7gGkej3Xc6i+JyCt/NOqhTfRLuFrZly5M4l0JxWQ5jMvASLXnmt+FN
         xd9LxJgeq5AJ9IPZLauAC1ceEF2F7yanEJnYtiee6so0/dfHstI8s8wk7IEZ8aKjIvPC
         XMcxHqVV4LAXRNG+RYNFiY1MqLn6jD/TGdcQsQ1k4C4wEgtmi9LEYl7HIKCIF3yXuTtJ
         WSlbe5dew7g5uEeduKe18PKAQ5+6HmcqQMdfTB9jknO9T0f12F2BfbKUJo1iqkaZGR3o
         EGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736319160; x=1736923960;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4SClk/ty5V+WbNfnIywWxHqG/U3a1jyV5yxUBpPkwIQ=;
        b=TuM462FtT3MAg0qaWdAj37zQlwUnsojWJsVrqUpHoDMtIpDL+wK/vqc0GM4xPR7Gsl
         CkFZgg2JB/NRIgtg0LANWFwzUYLH4ZthJOdCA4eQ2bcw8p1HpurHIqiP4kR11UtEBdT1
         cbT7IytokD/3/EOQwzksJsKcdLDNn7K/9+hUIp8zECX1pAW6o9XmkSI+FaBDZARU2P+c
         1YgZrQ65u4kADPs2e0NPA0Sx9eVhxsBrIaF84+Fw+aE0+Uely/FQi7p9dTE4LELgDEPG
         4g4oh9Bn2/ybLcVb+Ak5GJI0qspCfKwgjrS0zbfe6IitTgu+A4j64xwJ5uz10tluu3G5
         hxHw==
X-Gm-Message-State: AOJu0Yy2YPrJnsXSzAdgpTFAjUbvlTRueGZ5qTLkRomPOthDvAXOXx1b
	WOFze9OJjlOMYrP31oRz5MDE458wkzX6+wrJSXy4uSrg9WJftFbZeA6Pow==
X-Gm-Gg: ASbGncsCNUABjHyqCpdm4JzUj+SmAYB4Y5wCVEBqxVJ2rxDUIOxB+ngblCEUZErOEO8
	Bj0NHcpKuBWMmXtZST6H50N7u9QW1t7gJHYEtPcYUuZZ05oNCQHn7K876NTazW7sD2GomfcOAFn
	l4EWJXUqFG2AXT+9wtV1q6t9i05ejNbf6Day1znIWOeTm6OzIEq/CbjJQYApSPyiswgH1iZdlT5
	61IYbq/mkKM7Lh/fCGlPljdS3Ld9tEjvkCM56Tsc+nRXihKPigZD6F8ix609ivSKRw=
X-Google-Smtp-Source: AGHT+IE4/twLTHARDRlgJr8upbYbLjTWeGzg7H+rFmRgw/88T30YBFcXXww3hWxm5s87LgBe8ni/8Q==
X-Received: by 2002:ad4:5d64:0:b0:6d8:d79c:1cbd with SMTP id 6a1803df08f44-6df9b238518mr30668356d6.15.1736319159994;
        Tue, 07 Jan 2025 22:52:39 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6dd1813858csm187801826d6.70.2025.01.07.22.52.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 22:52:39 -0800 (PST)
Message-ID: <e635f7c6-86d1-4818-a5c8-30c3990cceec@gmail.com>
Date: Wed, 8 Jan 2025 01:52:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <596764823.847657463.1736318858776.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <596764823.847657463.1736318858776.JavaMail.zimbra@free.fr>
Message-ID-Hash: RRM6GFHZLOSMBTJZGDO25JGOPA6RMU7N
X-Message-ID-Hash: RRM6GFHZLOSMBTJZGDO25JGOPA6RMU7N
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRM6GFHZLOSMBTJZGDO25JGOPA6RMU7N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDEvMjAyNSAwMTo0NywgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPj4gTXkgdW5kZXJz
dGFuZGluZyBpcyB0aGF0IHRoZSBjbG9jayBzaWduYWwgZmVkIHRvIHRoZSBkYXVnaHRlci1jYXJk
cw0KPj4gaXMgdHlwaWNhbGx5IHNvbWUgZnJhY3Rpb24gb2YgdGhlIG1hc3Rlcl9jbG9jaw0KPj4g
ICDCoCBmcmVxdWVuY3ksIGFuZCBpcyBkZXNpZ25lZCB0byBwcm92aWRlIGEgUkVGIHNpZ25hbCBm
b3INCj4+IHN5bnRoZXNpemVycywgZXRjLsKgwqAgSXQgc2hvdWxkIGJlIHN5bmNocm9uaXplZCB0
byB0aGUNCj4+ICAgwqAgQURDIGNsb2NrcywgYnV0IHdvbid0IG5lY2Vzc2FyaWx5IGJlIGF0IHRo
ZSBzYW1lIGZyZXF1ZW5jeS4NCj4gSSBoYXZlIGZ1cnRoZXIgaW52ZXN0aWdhdGVkIGFuZCBJIHNl
ZQ0KPiAxLyBhIGNsZWFyIGNsb2NrIHNpZ25hbCBiZXR3ZWVuIEdORCBhbmQgY2xrX3AgKEozOCBw
aW4gMg0KPiBvbiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9zY2hlbWF0aWNzL2Jhc2ljX2Ricy9C
YXNpY1JYLnBkZikNCj4gb2YgdGhlIEJhc2ljUlggYm9hcmQgZm9yIGFib3V0IDEtcyB3aGVuIHRo
ZSBVU1JQIFNvdXJjZSBCbG9jayBpbg0KPiBHTlUgUmFkaW8gQ29tcGFuaW9uIGRpc3BsYXlzDQo+
IFtJTkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNCj4gYnV0IHRoZW4gdGhlIHNp
Z25hbCB2YW5pc2hlcw0KPiAyLyBJIGNhbiBjaGFuZ2UgdGhpcyBzaG9ydCBjbG9jayBzaWduYWwg
ZnJlcXVlbmN5IGJ5IHByb3ZpZGluZyB0aGUNCj4gYXJndW1lbnQgZGJvYXJkX2Nsb2NrX3JhdGUg
dG8gdGhlIFVTUlAgU291cmNlIEJsb2NrOiBJIGhhdmUgY2hlY2tlZA0KPiB0aGF0IHRoZSBkZWZh
dWx0IGZyZXF1ZW5jeSBpcyAxMDAgTUh6LCBJIGNhbiByZXF1ZXN0IDUwIE1IeiBhbmQgUkZOT0MN
Cj4gc29tZXdoYXQgY29tcGxhaW5zIHdoZW4gcmVxdWVzdGluZyAyMDAgTUh6IGJ1dCBzdGlsbCB0
aGUgY2xvY2sgc2lnbmFsDQo+IGlzIHZpc2libGUgZm9yIGEgc2Vjb25kLg0KPg0KPiBzbyB0aGlz
IHNpZ25hbCBjYW4gYmUgY29udHJvbGxlZCBmcm9tIHNvZnR3YXJlLiBJcyB0aGVyZSBhIHdheSB0
byBrZWVwDQo+IHRoZSBzaWduYWwgYXMgdGhlIGZsb3dncmFwaCBpcyBydW5uaW5nIHJhdGhlciB0
aGFuIG9ubHkgYSBzZWNvbmQgb3Igc28NCj4gYXQgc3RhcnR1cD8NCj4NCj4gVGhhbmtzDQo+DQpN
eSBndWVzcyBpcyB0aGF0IHRoZSBiYXNpY19yeCBob3N0LXNpZGUgZHJpdmVyIHR1cm5zIGl0IG9m
ZiwgYmVjYXVzZSB0aGUgDQpiYXNpY19yeCBkb2Vzbid0IGFjdHVhbGx5IHVzZSBpdCwgc28gaXQg
d291bGQgYmUgZmxvYXRpbmcsIGFuZA0KIMKgIHRodXMgcG90ZW50aWFsbHkgcmFkaWF0aW5nIGFu
ZCBjYXVzaW5nIGFuIGlzc3VlIGF0IGJvdGggdGhlIA0KZnVuZGFtZW50YWwgYW5kIG9kZCBoYXJt
b25pY3MuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
