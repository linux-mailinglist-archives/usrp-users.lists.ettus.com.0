Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C386469D2B1
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 19:22:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15EB7383C1D
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 13:22:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676917339; bh=kwMxIAbVA4KoNgkLTKB7rqQ9uK08vzLFIvSByg4GXlc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iUXIG+A/XrpMELjWXnW2agstEqrcDVaMKzbzZ4HejWrISxJtEKg2Dai5XgIRSelt4
	 a1q4ADqRU+M9kRpIHIruLX+NVjDkpOXxLgLucIeVqaW5CYfqonuUnilibKQg8/YKHT
	 TpLVRtry8SqwuVdIf6mkFJ+4bjkKiu6KuLPklRW4OvfxgEDvY/68LMRh1j7GSplL+A
	 /Nu1LuQ7zDUvzA999A2VuWFeAi5ZAp/dSQzouN3uHj6JPurdeF6sviG5mm3PeC0fds
	 YQ/tzctFmVi/ik85uI8AtDKyrp4Y8no/a604OqZFn3J3lu+Z6aInJP6bAGMmEzr/xS
	 D+K45tX6fIrAg==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id CFF863830F3
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 13:21:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AF5Xhd7I";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id fp16so1955475qtb.10
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 10:21:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hIwBG0WxfREng4VHdTchh22p7Rk2MZG9rSg05doeg8U=;
        b=AF5Xhd7IshSFev0TVzAJW2ZssuKZ+wrJR02URSfAwMgO2QuAS8Bl7o40BYnvh+X1Qn
         EL9m8UeYqH0dlbDkC/a7nogPEGiYj9vTrvI2ftQ/7lXGYcd24QyIcA2I6QJJlXtiWh9b
         lKqHnscuivmWv7GC1r0TGYVF6+PVFFKNjfW9XbfxHQb/IjpMq6W0uasTOqzWyPBekxsT
         r+Je0W8qnYwsyHP2ZYX511MP4yLjuuII9YaLk1ci/mVofn0K0BVxxS+glZ/8uLnLsPSp
         jyYZXKWcooULMQ/sId9KBJjbqCwmEYBw9bSvY4D+JYa3kmw30S7irw8OnJkKRDvNoEED
         zyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hIwBG0WxfREng4VHdTchh22p7Rk2MZG9rSg05doeg8U=;
        b=34Tft1jD1s67OSGFR8G3loQyZ+GSGK5Dmo8dVn+FnrpqiOxbz06DgsPgFEBxWQSj3A
         nXijzLopaXC8JBLXP5MsxsWRhmfu/aS9TObGPP5MfDJZjke0FXSKif8MmvB32rM5rgj2
         2mXHDp2KqPhlIzWpjy+w9wNEbCe7i+E3R+kXzedd/TOScskO5RMjA2tvyERlJXt6OcXI
         zboTgNAU1be6wM93Tc5Ug997TytntrdkO9ogGljWPgQRRRcoRPsnN4hJ9TDJ3JJGNvyn
         AhELU+lAKM1llRW7VTQQZEm3Y9LHxbEExOWqaDnkQJVvSYjcCg0eE2EJSWwP9NZ9iYRX
         Hbhg==
X-Gm-Message-State: AO0yUKXnnCZIHYA4Muub2z/QN7mGI9WFIuEJlYoVhbq9cebsRYOQYkeM
	qVks2N4Qmc6tQiqn6HjPhgpaLVjarVM=
X-Google-Smtp-Source: AK7set8KZiI/oKox/g+hpYWPjBORTQR9G52bYG9y8Vv7KmM2WSv5rm6kEXXWvOXksXRjA7C069nodA==
X-Received: by 2002:a05:622a:170b:b0:3b8:1723:6d15 with SMTP id h11-20020a05622a170b00b003b817236d15mr1742665qtk.58.1676917286084;
        Mon, 20 Feb 2023 10:21:26 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id y190-20020a3764c7000000b0071ddbe8fe23sm9353011qkb.24.2023.02.20.10.21.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 10:21:25 -0800 (PST)
Message-ID: <e3e60f62-e613-833a-d5f7-e500ec3ceb88@gmail.com>
Date: Mon, 20 Feb 2023 13:21:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <e446dd9a-d5b5-34fe-049e-612e233fb9eb@iki.fi>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <e446dd9a-d5b5-34fe-049e-612e233fb9eb@iki.fi>
Message-ID-Hash: G56VDDUJLDVU3P2NMBLWFAGEWYRL3I6T
X-Message-ID-Hash: G56VDDUJLDVU3P2NMBLWFAGEWYRL3I6T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio, UHD, and AGC with USRP B205mini-i
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G56VDDUJLDVU3P2NMBLWFAGEWYRL3I6T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDIvMjAyMyAxMzowNSwgVmlsbGUgRWVyb2xhIHdyb3RlOg0KPg0KPg0KPiBTZWNvbmRs
eSwgdGhlIHNlZW1zIHRvIElDIHN1cHBvcnQgYWR2YW5jZWQgY29uZmlndXJhYmlsaXR5IG9mIHRo
ZSBBR0MgDQo+IGZyb20gY2hvb3NpbmcgYmV0d2VlbiBmYXN0IGFuZCBzbG93IEFHQyBhbmQgbWFu
dWFsIGdhaW4gc2V0dGluZ3MgdG8gDQo+IHR1bmluZyB0aGUgcGFyYW1ldGVycyBvZiB0aGUgQUdD
IGZ1bmN0aW9uIGluc2lkZSB0aGUgSUMuIEJ1dCANCj4gdW5mb3J0dW5hdGVseSBub25lIG9mIHRo
aXMgc2VlbSB0byBiZSBleHBvc2VkIGluIHRoZSBVSEQgbGlicmFyeS4gVGhpcyANCj4gY291bGQg
YWxsb3cgdHVuaW5nIHRoZSBBR0MgdG8gYmVoYXZlIGJldHRlciBmb3IgbXkgc2lnbmFscy4NCj4N
Cj4gSSBjb3VsZCB0cnkgdG8gd29yayBvdXQgc29tZXRoaW5nIG15c2VsZiwgYnV0IEkgd2FzIHVu
YWJsZSB0byBmaW5kIGFueSANCj4gZG9jdW1lbnRhdGlvbiBhYm91dCBob3cgdGhlIFVIRCBsaWJy
YXJ5IGlzIGxheWVyZWQsIGFuZCBob3cgdGhlIA0KPiBoaWdoLWxldmVsIGZ1bmN0aW9ucyBldmVu
dHVhbGx5IGludGVyZmFjZSB3aXRoIHRoZSBkaWZmZXJlbnQgcmFkaW8gDQo+IElDOnMuIEl0IGlz
IGNlcnRhaW5seSBwb3NzaWJsZSB0byBmaW5kIG91dCBhbGwgb2YgaXQgZnJvbSB0aGUgc291cmNl
LCANCj4gYnV0IGhhdmluZyBzb21lIGRvY3VtZW50YXRpb24gb3IgcG9pbnRlcnMgdG8gdGhlIHJp
Z2h0IGRpcmVjdGlvbiB3b3VsZCANCj4gbWFrZSBpdCBhbGwgbXVjaCBlYXNpZXIuDQpZdXAuwqAg
VGhlcmUncyBubyAic3RydWN0dXJlZCB3YWxrLXRocm91Z2giIGRvY3VtZW50YXRpb24gb2YgY29k
ZSANCmJhc2UuwqDCoMKgIFBhcnQgb2YgdGhlIHJlYXNvbiBmb3IgdGhpcyBpcyB0aGF0IHRoZSBj
b2RlLWJhc2UNCiDCoCBjaGFuZ2VzLCBidXQgdGhlICJzdGFiaWxpdHkgcG9pbnQiIGlzIHRoZSBB
UEkuwqDCoCBJbiBteSBleHBlcmllbmNlIA0KKG9ubHkgYWJvdXQgNDQgeWVhcnMgc28gZmFyKSwg
c3VjaCAic3RydWN0dXJlZCB3YWxrLXRocm91Z2giDQogwqAgZG9jdW1lbnRhdGlvbiBpcyAic3Rh
bGUiIG1vcmUtb3ItbGVzcyBhcyBzb29uIGFzIGl0cyBib3JuIGZvciBhbnkgDQpsYXJnZSBjb2Rl
YmFzZSBzdWNoIGFzIFVIRC7CoMKgIFVzZSB0aGUgc291cmNlLCBMdWtlLg0KDQpUaGUgQVBJIGlz
IHJlYXNvbmFibHkgd2VsbCBkb2N1bWVudGVkOg0KDQpodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9t
YW51YWwvcGFnZV9jb2RpbmcuaHRtbCNjb2RpbmdfYXBpX2hpbGV2ZWwNCg0KQnV0LCBhcyB5b3Ug
bm90ZSwgVUhEIHdhcyAqZGVsaWJlcmF0ZWx5KiBkZXNpZ25lZCB0byAiaGlkZSIgdGhlIGRldGFp
bHMgDQpvZiB0aGUgdW5kZXJseWluZyBoYXJkd2FyZSwgdG8gZmFjaWxpdGF0ZSB0aGUNCiDCoCB2
ZXJ5IGxhcmdlIG51bWJlciBvZiBVU1JQIGRldmljZSB0eXBlcyB0aGF0IGV4aXN0LCBhbmQgdG8g
YWxsb3cgDQphcHBsaWNhdGlvbnMgdGhhdCBhcmUgdXR0ZXJseSBoYXJkd2FyZSBhZ25vc3RpYy4N
CiDCoCBOZWFybHkgQUxMIG9mIG15IGFwcHMgZG9uJ3QgYWN0dWFsbHkgY2FyZSBtdWNoIHdoaWNo
IGhhcmR3YXJlIGlzIA0KdW5kZXJuZWF0aCB0aGVtLS1VU1JQcywgUlRMLVNEUnMsIExpbWVTRFJz
LCBldGMuDQoNCkknbGwgYWxzbyBub3RlIHRoYXQgR251IFJhZGlvIGRvZXMgaGF2ZSBBR0MgZnVu
Y3Rpb25zIGluIGl0cyBmYW1pbHkgb2YgDQoiYmxvY2tzIiBzbyB5b3UgbWlnaHQgd2FudCB0byBl
eHBlcmltZW50IHdpdGggdGhvc2UsDQogwqAgYW5kIHVzZSBhIGZpeGVkLWdhaW4uDQoNCkluIHRo
ZSBuZWFybHkgMjAgeWVhcnMgSSd2ZSBiZWVuIHBsYXlpbmcgd2l0aCBTRFJzLCBJJ3ZlIG5ldmVy
IGFjdHVhbGx5IA0KbmVlZGVkIHRvIHVzZSBoYXJkd2FyZSBBR0MuwqAgQnV0IEknbGwgYWRtaXQg
dGhhdA0KIMKgIEkgb25seSBleHBlcmltZW50IGluIG9uZSBzbWFsbCBjb3JuZXIgb2YgdGhlIHJh
ZGlvIHVuaXZlcnNlLg0KDQoNCj4NCj4gSXQgaXMgYWx3YXlzIHBvc3NpYmxlIHRvIGltcGxlbWVu
dCB0aGUgQUdDIGZ1bmN0aW9uIGluIEdSIGJ5IHNldHRpbmcgDQo+IHRoZSBnci11aGQgdG8gdXNl
IG1hbnVhbCBnYWluLCBidXQgSSdtIGEgYml0IGFmcmFpZCB0aGF0IHRoZSBsb29wIA0KPiBjb3Vs
ZCBiZSB0b28gc2xvdy4NCj4NCj4NCj4gUmVnYXJkcywgVmlsbGUNCj4NCj4gLS0gDQo+IFZpbGxl
IEVlcm9sYQ0KPiB2aWxsZS5lZXJvbGFAaWtpLmZpDQo+IDA1MC00ODA0NDM1DQo+DQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
