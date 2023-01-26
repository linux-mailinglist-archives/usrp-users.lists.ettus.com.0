Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B7667D7E4
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 22:45:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3382D384277
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 16:45:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674769533; bh=h4jiTkAzttRtyyTua/VKXrPQahQtWP1hzJcyxS1RiDY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=m8KOTptbJHWbUqOncBizp1Ga6OtCW9vr+uBsR87gXSKm5pCdEAG/fwDhrSc647t0F
	 t3kRqXiUIOzdb7X7bf59XUTgJ9gtm8SQNw49LqmXU5wbc1BeHBHz/ExXkkY6qrTfQ+
	 ZWmJ0xTb33ZsTDuvfmZhPtI0iROuoEtO5z7jp4/nA02wNv9hpNTDjZS1od7nj067Rf
	 20viUyeXOOSEwYk6TwT17Zr+hwaWb90FLTKtOaijFNmC4BI4XytIbmh6V6vlN90g2d
	 MeHN5F9aZrOD4HM9gmVqmCJq9inYt9ByfneE8xa3jxJ8G2RKyy1tJKHCtlDt4aX4d4
	 PZttoMZlamtEA==
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A42F3818B1
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 16:45:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="1PXIPdwM";
	dkim-atps=neutral
Received: by mail-wm1-f53.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso2132463wms.3
        for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 13:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tw3zIUwxKaN3y/Kn9ZKG5gqEGzItX+1LNORoB3zGjYU=;
        b=1PXIPdwMaH5AYev7ItrJZsnlOWgDKioTeseshPqFEDnefc2pNN2JCr1AU4aSJlOE+P
         5wdLVppEMxNye3q/dTqF4c8LoGmCLY8w/dkfFuztmk4xQW9dJHS/4rhnlLDJaFn5OkEq
         EyAHxbLwRveIbdHTcq6hJrzvoIKPQIhqZtETIdegA4M2P0rkwD8jlGkwcBktYzxryvHP
         KIUrDWefIHdXaK0XZiEyb93/Lcjfnfyu1xjcdOXjjms5y6sd72zBpoZfnRG3xiKnieea
         5tLp47XeYShfg9prl3xCvG2sltF7tSUl/DSod6i093AZAeA77/LkLGWVu9vVWfIGg2H3
         iSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tw3zIUwxKaN3y/Kn9ZKG5gqEGzItX+1LNORoB3zGjYU=;
        b=KZKc1SYfBCDa/FbnohX3dY9Gelcqxnr5MV8SgmdnTJmQOonn0Z9qVFZEqmb1whKF4E
         5HzT3zEqpDBDgrt4yVfGbzobpPqjXM4god76vSSA6dcVAx70RzMN2+d1mwm2Zdfufn/N
         zJ/lNf0kfUW7wI9AXhJ1ikZuDggpToZwucwAgcaGCZmOZKt8qXizxVmhv7ZTJQbKzehZ
         szdGBTZNyxe+LxFbm8/u2JWfwcToz1y2F23becW30nAfhAxUCf0qfft4z56d+/2OrrKj
         Fn2B2CKHO4hZYnWb1UUDRx6kBoD9xK3Nyc2ehuml/mYcc3aVYR1qA25biawI5Oa7ZhHj
         iVCw==
X-Gm-Message-State: AFqh2koMh3m0R7t848tFLkHxL0kjnsm38ue9PQLuR0ySg81/yrXZ7x2k
	5gT6sd1ZcfeBsjhA3sSVFMOc+tue
X-Google-Smtp-Source: AMrXdXttTU1OciOslVpN16KXApJKQnhVA/SphKIsqbOy1gDRVetZL1ff3HbBgfgTeRxOa1dZ/yOvow==
X-Received: by 2002:a05:600c:1c1a:b0:3da:fbd2:a324 with SMTP id j26-20020a05600c1c1a00b003dafbd2a324mr37200642wms.36.1674769524194;
        Thu, 26 Jan 2023 13:45:24 -0800 (PST)
Received: from ?IPV6:2001:9e8:385e:e300:998f:ca6a:6065:3212? ([2001:9e8:385e:e300:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id bi5-20020a05600c3d8500b003db0bb81b6asm2600541wmb.1.2023.01.26.13.45.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 13:45:23 -0800 (PST)
Message-ID: <07be0bdc-50cb-8025-ecde-724833124884@ettus.com>
Date: Thu, 26 Jan 2023 22:45:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Mark-Jan Bastian <markjan@xs4all.nl>, usrp-users@lists.ettus.com
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
Message-ID-Hash: HB43DWZIDOKVGHSD2WEJUB3DZR3547TW
X-Message-ID-Hash: HB43DWZIDOKVGHSD2WEJUB3DZR3547TW
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HB43DWZIDOKVGHSD2WEJUB3DZR3547TW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWFyay1KYW4sDQoNCmxldCBtZSBxdWlja2x5IHJlcGx5IGluLXRleHQ6DQoNCiA+IC0gSXMg
dGhpcyBMTyBmaWx0ZXIgYXV0b21hdGljYWxseSBzZWxlY3RlZCwgYW5kIHdoZXJlIHNob3VsZCBJ
IGxvb2sgZm9yIHRoZSBydWxlcyA/DQoNCnllcywgYW5kOiB1aGQvaG9zdC9saWIvdXNycC9kYm9h
cmQvZGJfdWJ4LmNwcDsgbG9vayBmb3IgdGhlIHNldF97dHgscnh9X2ZyZXEgbWV0aG9kcy4NCg0K
PiAtIElzIHRoZXJlIHNvbWUgd2F5IHRvIGNvbnRyb2wgdGhpcyBMTyBmaWx0ZXIgc2VsZWN0aW9u
IHZpYSBVSEQsIHNpbWlsYXIgdG8gYSB0dW5lIHJlcXVlc3Q/DQpUaGF0J3MgY3VycmVudGx5IG5v
dCBleHBvc2VkLCBuby4gWW91J2QgaGF2ZSB0byBnbyBhbmQgbW9kaWZ5IHRoZSBhZm9yZW1lbnRp
b25lZCBtZXRob2RzIA0KdG8gdXNlIHNvbWUgc2V0dGluZ3MgeW91IHNwZWNpZmllZCB0aHJvdWdo
IGFub3RoZXIgZnVuY3Rpb24sIGFuZCB0aGVuIGRvIHRoZSBmcmVxdWVuY3kgDQpzZXR0aW5nIHJl
c3BlY3RpbmcgdGhhdC4NCj4gLSBUaGUgSVEgbWl4ZXIgQURMNTM3MSBkb2N1bWVudGF0aW9uIHdh
cm5zIHRoYXQgdGhlIExPJ3MgM3JkIGhhcm1vbmljDQo+IG5lZWRzIHRvIGJlIHdlbGwgc3VwcHJl
c3NlZC4NCnllcA0KPiBJcyB0aGVyZSBiZW5lZml0IHRvIGJlIGdhaW5lZA0KPiBieSB1c2luZyBh
biBleHRlcm5hbCwgbW9yZSBmaWx0ZXJlZCBMTyBpbnN0ZWFkIG9mIHRoZSBvbi1ib2FyZCBVQlgt
MTYwIExPIHBsdXMgaXRzIGZpbHRlcnMgPw0KDQpZZXMsIGJ1dCB5b3UnZCBuZWVkIHRvIGJyaW5n
IGEgcmF0aGVyIG5pY2UgTE8gc3ludGhlc2l6ZXIgdG8gdGhlIHRhYmxlIHRvIGJlZ2luIHdpdGgs
IA0KbW9kaWZ5IHRoZSBoYXJkd2FyZSDigJNhcyBmYXIgYXMgSSByZW1lbWJlciB0aGUgYm9hcmQg
bGF5b3V0IChjdXJyZW50bHkgZG9uJ3QgaGF2ZSBhIFVCWCBpbiANCm15IGhhbmRzKeKAkyBhbmQg
d291bGQgbmVlZCB0byBzb21laG93IGhvb2sgdGhhdCBMTyBzeW50aGVzaXplciB1cCB0byBVSEQg
c28gdGhhdCB5b3UgY2FuIA0Kc3RpbGwgdHVuZSB3aXRoIGl0Lg0KDQpTbyB5ZWFoLCB5b3UgY2Fu
ICphbHdheXMqIG1ha2UgYSBuaWNlciBvc2NpbGxhdG9yLCB0aGUgcXVlc3Rpb24gaXMganVzdCBo
b3cgbXVjaCBtb25leSBhbmQgDQp0aW1lIHlvdSBicmluZyA7KQ0KDQpBcyBhIGZpcnN0IHN0ZXAs
IGJ1dCBJJ20gYXNzdW1pbmcgeW91J3JlIGFscmVhZHkgZG9pbmcgdGhhdDogdHJ5IHRoZSBgbW9k
ZV9uPWludGVnZXJgIA0KdHVuaW5nIGFyZ3VtZW50LCBhbmQgc2VlIHdoZXRoZXIgaXQgcmVkdWNl
cyB0aGUgc3B1cnMgeW91IHNlZSBpbiB5b3VyIHNwZWN0cnVtLg0KDQpCZXN0IHJlZ2FyZHMsDQpN
YXJjdXMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
