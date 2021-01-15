Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 299D42F88F1
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 23:55:44 +0100 (CET)
Received: from [::1] (port=49392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0Y0K-0008Aa-3r; Fri, 15 Jan 2021 17:55:40 -0500
Received: from mail-wr1-f54.google.com ([209.85.221.54]:40097)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1l0Y0G-00083u-49
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 17:55:36 -0500
Received: by mail-wr1-f54.google.com with SMTP id 91so10821682wrj.7
 for <usrp-users@lists.ettus.com>; Fri, 15 Jan 2021 14:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=wq2I8UEu7+5KuzwADOKt0CJcym2V8tT3fda/I2q4tA4=;
 b=amKd+rfYo+8pU+k+NA2WCqa8BZgB5Rgel3igA15o8ACM5+lrfAc9bZzbmD9pFu08Qk
 8LqoGyp0tKQ0LRvQlAg6OpwKrvD1cd2SChtxCTb51gvEW+9U+7evAsMOZrY02J5Lympu
 QagEBgn5+8nVoGRU4rmey1JEoa3wgGGSjiRSmF3i7R4Kg14oDot6iaX9oB8aSNTyMEy/
 hm47vQWEkbDF2uabp4ZNLp9NsdqZkLj7BtPBu1DXwfiQi0N/3csZF720K05yvutcE9SM
 FPdHlqxnRU/5H95zkVuUcwtCTVFMr7/5Oo4QEq/evc/zm+VNIthhxp/B9oW5ONubnEmB
 ioxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=wq2I8UEu7+5KuzwADOKt0CJcym2V8tT3fda/I2q4tA4=;
 b=qRIUltG7IZpgIAqiZ+9qUXQsCEDw3l46Ty9gqt4Kg4tS89otxyhIaU92nGWq8B+YMN
 ATNZ/9iSXTjBBN6o+QJEFsUoOsQRTuEBJ6tJjLg5tL8EqvhVSm+jE7ttzNFrg4syCD9M
 fzPi+v5S6E3Wxm6YEAlLEFBYUB3HePXpARUnb/XAJat+x4UFexHZ+FQ6SNtuvGVWY77c
 VA4pW0Kq3ALKdhfOeYTQuGI27KfH0ITq/5RErkxgTJN8gtL5DOys/8sSuNEgVFezquto
 6NoP+Gslo92EMCpZ1dU3bs9QsqQfbEMTl17WTFJh+KExrAuE+KO3G7qK7FG2cjAVVPFO
 7chA==
X-Gm-Message-State: AOAM5316DDcVqrkVPw1VtYQqa5D6BTo0fibVsgfSGpHJabcnpztvIpnd
 IfOS2teEBUeYSSKWVMP8oxk16h2wF+NFO6YcIj8=
X-Google-Smtp-Source: ABdhPJykkKwqnT805VH+lEVC0C0AJjwjyWbr3mhhEHFnBxRdFWkev0TaXS99FuN+0D4z4ueyxw1Z+g==
X-Received: by 2002:adf:fdcb:: with SMTP id i11mr15482789wrs.349.1610751294901; 
 Fri, 15 Jan 2021 14:54:54 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id w8sm16436357wrl.91.2021.01.15.14.54.54
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Jan 2021 14:54:54 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <CAFZDN5KC8vM2ir2UHJGxFH=fTTNgM8E0WAYnhNTQFpj9P_3Hhw@mail.gmail.com>
 <60015217.2070507@gmail.com>
Message-ID: <eb59c88a-2db5-b640-a72d-9659842bbe89@ettus.com>
Date: Fri, 15 Jan 2021 23:54:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <60015217.2070507@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] B210 TX from file of complex samples
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

QSBjbGFzc2ljIGhlcmUgd291bGQgYmUgaWYgdGhlcmUgd2FzIGEgbmV0d29yay1hdHRhY2hlZCBV
U1JQIHRoYXQgaXMKYWxzbyBmb3VuZCBieSB5b3VyIFBDLCBhbmQgdGhlbiB1c2VkIHdpdGhvdXQg
eW91IG5vdGljaW5nLiBDb3VsZCB0aGF0IGJlCnRoZSBjYXNlPyBXaGF0IGRvIHlvdSB1c2UgaW4g
dGhlICJkZXZpY2UgYWRkcmVzcyIgZmllbGQgb2YgdGhlIFVIRCBVU1JQClNpbms/CgpCZXN0IHJl
Z2FyZHMsCgpNYXJjdXMgKHRoZSBvdGhlcikKCk9uIDE1LjAxLjIxIDA5OjI4LCBNYXJjdXMgRC4g
TGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cgo+IE9uIDAxLzE1LzIwMjEgMDI6MjcgQU0sIEhh
aSBOZ3V5ZW4gdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+IEhlbGxvLAo+Pgo+PiBJJ20gdHJ5aW5n
IHRvIHRyYW5zbWl0IGNvbXBsZXggc2FtcGxlcyAoZS5nLiBCUFNLIGNoaXBzKSB1c2luZyBCMjEw
Cj4+IGFuZCBHTlVyYWRpby4gTXkgZmxvd2dyYXBoIGlzIHZlcnkgc2ltcGxlOiBBIGZpbGUgc291
cmNlIGNvbm5lY3RlZCB0bwo+PiBhIFVTUlAgc2luayAoY3B1IGZvcm1hdCBmYzY0KSwgc2FtcGxl
IHJhdGUgaXMgMWU2LiBIb3dldmVyIHRoZSBVU1JQCj4+IHNlZW1zIG5vdCB0byB0cmFuc21pdCBh
bnl0aGluZyAobm8gcmVkIGxpZ2h0LCBhbmQgbm90aGluZyBvbiB0aGUKPj4gc3BlY3RydW0pIGFu
ZCBhbHNvIHRoZXJlIGlzIG5vIGVycm9yIG1lc3NhZ2UuIEkgdHJpZWQgd2l0aCB2YXJpb3VzCj4+
IGdhaW4gdmFsdWVzIGJ1dCBzdGlsbCBzYXcgbm90aGluZy4KPj4KPj4gSSB0cmllZCB0aGUgc2Ft
ZSB0aGluZyB3aXRoIGFuIFgzMTAgYW5kIGl0IHdvcmtlZCBmaW5lLiBXaGF0IHdvdWxkIGJlCj4+
IHRoZSBjYXVzZSBmb3IgdGhlIEIyMTAgYW5kIGFyZSB0aGVyZSBhbnkgd2F5cyBJIGNhbiBtYWtl
IGl0IHdvcms/Cj4+Cj4+IFRoYW5rIHlvdSwKPj4gSGFpCj4gV2hhdCBkb2VzOgo+Cj4gdWhkX3Vz
cnBfcHJvYmUgLS1hcmdzIHR5cGU9YjIwMAo+Cj4gR0l2ZSB5b3U/Cj4KPiBXaGF0IFRYIGdhaW4g
c2V0dGluZyBhcmUgeW91IHVzaW5nP8KgwqAgVGhlIGRldmljZXMgYmFzZWQgb24gQUQ5MzYxIGhh
dmUKPiBhbiB1bnVzdWFsbHkgbGFyZ2UgZ2Fpbi1jb250cm9sIHJhbmdlLCBnb2luZyB1cCB0byBh
Ym91dCA4MGRCLgo+IMKgIFNvIGlmIHlvdSdyZSB1c2VkIHRvIGdhaW4gcmFuZ2Ugc3RvcHBpbmcg
YXQgMzEuNWRCLCB5b3UnbGwgYmUgImxvdyIKPiBieSBhYm91dCA1MGRCLgo+Cj4gV2hhdCBmcmVx
dWVuY3k/wqDCoCBUaGUgQjIxMCBjYW4gdHVuZSBmcm9tIGFib3V0IDcwTWh6IHRvIDZHSHouCj4K
Pgo+PiBtIAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQo=
