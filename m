Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8983F6A5DEC
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 18:06:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD749383EC0
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 12:06:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677604007; bh=q2FxRp26MF3XOK0Fiq6GOZJxdRuqtmgjDmNtP7Rsovc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ham/6Azk/sA7Aj1HMYaGCOD/iEz29z+q5aGokr8xiLM/Eyhns/f2u9tLWNnO7JLLC
	 qvCS7oilOynpvqSX2u+csEwLjiqDxAMMhbIg6LiNkjlzTS5/t57edeL39ElXxfhGhG
	 fHTjdv7eZTXYGtfCA9mpHo599f06k9+zrjw/Z8H6d22JscSS3jeXTMstAErk6ITgEX
	 0Y900q+k0UH0b+OBPXBd02WKVfwf14OTOgWh9ecfH1KBw8wJuXV41+qcJeXkuuAcMk
	 5coIOweEWdEMIqPvfAnzCtEZGfQ7Wj4NEHAu7H5dQb1mvvR5d5rbs5I5dZ2k7nTq2g
	 vYjt6I/PYO6IA==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 94B8C383EC0
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 12:06:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="o4X0+sGM";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id c3so6963809qtc.8
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 09:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I61jQ5Ilb+61VIfJSP3DMbhiTbCQA6FYHnwhGVYX/SA=;
        b=o4X0+sGMFnQW+PqoRxxWR4SFgL34XJ8OP9AO2U/j36dIsrJp0V5tt1o0n5oOzyEcv6
         95ZV5d+i4GcYOK3Z+Yf3ZWTcI6o/nL8GCZ27EpxN/6z+5oZxtNxtCBhPlS3VhYrEYnTz
         FNrilkznWm+kKlRBJ7AKrqkyWTsINKc82vF9IO4k1Caxv2Eo0Otdn6kW6pHWBwqsQf6o
         0aykAiCKgOit+7LIxbs7NlSN4IzPTXCxJU8GUgElLl76lYvQ7FxAwroRjY9AjK10TWcj
         ZNXkChKt+x50KH0MFmaip0sUaY2Vbu5q707LF0KzuK4k2PhOOcbMH18Lcj/q8npzKpTv
         4XEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I61jQ5Ilb+61VIfJSP3DMbhiTbCQA6FYHnwhGVYX/SA=;
        b=6mvbsVN+xuvBzK0BgnBjqssRAfbGR87ZTTpk4ZsykupMNM87xKvU4LZ4xX6PP/N4jg
         Ipj25naZtOaD0+Y88VDy4HYHcZlUwQ5K+A0sGpw2tUlGSZIAksmCGnwHmEXSBSTZphHv
         fv218YMtpS3NONfTvtKX9/6oVC/399IJuaZ3WHyzeKLH2m4h86iea5O3CM0/jbU0Vwxj
         4xeCyIwZeez+lkpHwM0WPudAnKI66jpcvnlXwWfxdWv68QhT6bKs4qD2pfiZ33Jp/0CQ
         7E+23/IQAjU/hbYpQUNuotrNsOveWvjDakPC/CG1mIMLujiJp/fUR4MD65SQVTpsqOzR
         5LRA==
X-Gm-Message-State: AO0yUKXixkFA8zJqtFnoWoMQWvA2Maf/kiA03h+d3zeOD5sTVSdK8+qr
	8EBwghBXM17bvyxGQaa18jnt1pS3+mM=
X-Google-Smtp-Source: AK7set/DbUMxxcl4GijRYbccq55XR8oKG08zHAFiBN89kOSm01f3ZHhnqtC0GU87qtHmQMQYkVbZSA==
X-Received: by 2002:ac8:5dc9:0:b0:3b9:2b0:5e7f with SMTP id e9-20020ac85dc9000000b003b902b05e7fmr6403636qtx.32.1677604000801;
        Tue, 28 Feb 2023 09:06:40 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id x11-20020a05620a0ecb00b00741b312c899sm7177759qkm.6.2023.02.28.09.06.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 09:06:40 -0800 (PST)
Message-ID: <0e4c1eed-8838-8e2d-e8f4-db08ebb73aa1@gmail.com>
Date: Tue, 28 Feb 2023 12:06:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng@lists.ettus.com>
Message-ID-Hash: UBAQLT7F6VO7CRHMCT7J455UORUFSUZK
X-Message-ID-Hash: UBAQLT7F6VO7CRHMCT7J455UORUFSUZK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBAQLT7F6VO7CRHMCT7J455UORUFSUZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDIvMjAyMyAwMToyMCwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSGVsbG8sIGFnYWluLg0KPg0KPiBJIHRyaWVkIHdpdGggc3RlcCBhdHRlbnVhdG9ycyBhbmQg
dGhlIHJlc3VsdCBpcyB0aGVyZSB3YXMgZGlmZmVyZW5jZSANCj4gYXJvdW5kIDJkQiBiZXR3ZWVu
IDAgZGVncmVlIGFuZCAxODAgZGVncmVlIHJvdGF0aW9uIG9mIGhvcm4gd2l0aG91dCANCj4gYXR0
ZW51YXRvci4gV2hlbiBJIGNvbm5lY3RlZCB0aGUgYXR0ZW51YXRvcnMgdG8gcnggYW5kIHR4IHBh
dGhzLCB0aGUgDQo+IGRpZmZlcmVuY2UgcmFpc2VkIGFyb3VuZCAxMGRCLiBXaGVuIEkgY2hhbmdl
IHN0ZXAgb2YgYXR0ZW51YXRvciwgSSBjYW4gDQo+IGRlY3JlYXNlIGRpZmZlcmVuY2UgYXQgMiwg
M2RCLiBCdXQgSSBjYW7igJl0IGZpeCB0aGlzLg0KPg0KPiBZZXMgbXkgc2lnbmFsIGlzIENXIHdp
b3Rob3V0IG9mZnNldC4gSSB0cmllZCB0byBzaGlmdCB0aGUgY2VudGVyIA0KPiBmcmVxdWVuY3kg
b2YgcmVjZWl2ZXIuIEJ1dCB0aGUgcmVzdWx0IGlzIHNhbWUuIEJ1dCBJIGRpc2NvdmVyZWQgDQo+
IHNvbWV0aGluZywgV2hlbiBJIHN3aXRjaCB0aGUgY2VudGVyIGZyZXF1ZW5jeSB3aXRoIDEwTUh6
IHN0ZXAsIGxpa2UgDQo+IHN0YXJ0aW5nIDRHSHogdG8gNC40R0h6IHdpdGggMTBNSHogc3RlcCwg
dGhlcmUgaXMgbm8gZGlmZmVyZW5jZSBhdCAwIA0KPiBhbmQgMTgwIGRlZ3JlZSBvZiBob3JuIGlu
IHNvbWUgZnJlcXVlbmNpZXMuIEFuZCBhbHNvLCBJZiBjaGFuZ2UgdGhlIA0KPiBhbnRlbm5hIGxv
Y2F0aW9uLCBJIGNhbiBmaW5kIHRoZSBsb2NhdGlvbiB3aGljaCBpcyBubyBkaWZmZXJlbmNlIGF0
IDAgDQo+IGFuZCAxODAgZGVncmVlIGluIHNhbWUgZnJlcXVlbmN5IGxpa2UganVzdCA0R0h6Lg0K
Pg0KPiBWTkEgaXMgdXNpbmcgc3dlcHQgdGVjaG5pcXVlLiBJIGtub3cgdGhlIHZhbHVlcyBhcmUg
dW5jYWxpYnJhdGVkIGluIA0KPiBHTlUgUmFkaW8sIEkgZG9u4oCZdCBjYXJlIGFib3V0IHRoZSBh
Y3R1YWwgdmFsdWVzIGF0IHRoaXMgc3RhZ2UsIG1heWJlIGkgDQo+IGNhbiBpbXByb3ZlIHRoZSBz
eXN0ZW1zIGluIHRoZSBjb21pbmcgZGF5cyBidXQgbm90IG5vdy4gQWN0dWFsbHksIFdoZW4gDQo+
IEkgcm90YXRlIHRoZSBIb3JuIDQ1IGRlZ3JlZSBpbiByb2xsLWF4ZXMsIEkgY2FuIHNlZSAzZEIg
ZGVjcmVhc2UuIEluIA0KPiBjcm9zcyBwb3NpdGlvbiwgSSBtZWFuIDkwIGRlZ3JlZSwgVmFsdWVz
IGFyZSBzZW5zaWJsZS4gSSBjYW4gc2VlIHRoZSANCj4gc2FtZSByZXN1bHQgaW4gVk5BIGF0IHRo
ZSBzYW1lIGRlZ3JlZSBleGNlcHQgMTgwIGRlZ3JlZS4gVGhhdCBkb2VzbuKAmXQgDQo+IG1ha2Ug
c2Vuc2UuDQo+DQo+IFRoYW5rcyBmb3IgYWxsIGFuc3dlcnMuDQo+DQo+DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCkhlbnJ5Og0K
DQpUaGUgZmFjdCB0aGF0IGFudGVubmEgcG9zaXRpb24gd2l0aGluIHlvdXIgc3BhY2UgbWFrZXMg
YSBkaWZmZXJlbmNlIA0KaW5kaWNhdGVzIHRvIG1lIHRoYXQgdGhpcyBpcyB1dHRlcmx5IHVucmVs
YXRlZCB0byB0aGUgcmFkaW8gYXQgYWxsLg0KDQpJIHVzZSBVU1JQcyBpbiByYWRpbyBhc3Ryb25v
bXksIHdoZXJlIHdlIHRyeSB0byBnZXQgcmVwZWF0YWJsZSANCm1lYXN1cmVtZW50cyBkYXktb3Zl
ci1kYXkuwqDCoCBXZSBnZW5lcmFsbHkgYWNoaWV2ZSB0aGF0IHRvIHdpdGhpbg0KIMKgIGFib3V0
IDAuNGRCIC0tIGFuZCBvbmx5IGEgdGlueSBmcmFjdGlvbiBvZiB0aGUgbm9uLXJlcGVhdGFibGUg
aXMgdGhlIA0KcmFkaW8uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
