Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3A65468C0
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 16:48:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 043D1384944
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 10:48:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654872484; bh=o7/h+pJV5/4Br2rXhgSlhg4ownsbs3Nc2ZQ46nyZ+38=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Xj4R9aoNH+2glc8iK5mmMsox4nzpaADP02t88B8B8Hy8mLQ/kp3r4u9cAHD91knjx
	 Iy6LEEyRfDwNRJnzwmPO63gTJ5S0RdzU6J6Y6YgVzKvVQBtB7QF4vbbRsydngCbr3t
	 WY8RuuAA7M182W8N/8fCuQO/cLfQF2LrLKmGqnOIJ7r+BkO/7bF2V1/oOzLE8Ue9Ml
	 LBo8VAvHK7cIxIhMw6eM5UZaFchKBRPqBJllK8mElE2MtyCJ26Frxd54vccLbuIIVt
	 CnoVjYWd1TMRL1N3LEwTAmtkxy4FvLelmhFEIxKEXAFofF1pgOz9ZJGRGiM4wRUg5B
	 zdofOh5GNCAEA==
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A72838477E
	for <usrp-users@lists.ettus.com>; Fri, 10 Jun 2022 10:47:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="HWo3jWgd";
	dkim-atps=neutral
Received: by mail-wm1-f53.google.com with SMTP id z9so7215776wmf.3
        for <usrp-users@lists.ettus.com>; Fri, 10 Jun 2022 07:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=cLR/IeZeOAAUccXL4st99GIr8TkneipOPU6LW4TPPSI=;
        b=HWo3jWgdaY7bTrWaXIrdIp3gbGktDpCI93CiBWbARQ1L1iYuGkmY9PNihaYQHxq5A0
         zND55J7k0iKiUzsubX4AiP1vwA7/f9NUtsn1hKB3MTE/itzdF2Kf1x9zVuzShTp4q1oK
         FOIEWZPZsQ1rHRaJQNRYx40C/o7XlswXUnYse3U/NMIGHwC4jHYvRw1knmBXVCjrEKlI
         vuLttvXd3jqLimtdZe6xbo6gkfzUGFt0uwHxLOhQ1PfPSpgNjLwvQDB7SOnI1qIh1lHP
         rT2BMhCqvN+fs/zxXlD3TpYFVhULck0bPpBGLBhOvEq/D0vW9cemYqCeYYpGTUUhXh9M
         Y7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cLR/IeZeOAAUccXL4st99GIr8TkneipOPU6LW4TPPSI=;
        b=mLM1eiIjfepmrXoLAyb4JeGguc/JBy1lFC/GUFNJdGCV2zbOK+4JVkx78umA6kKh5I
         hVj+rz1py14LqEpktUajR8jDqDSpGbzieN8D0sZlkIj2XeMWXoi+Xov/v5ovhK1YjIZb
         onM6t11DTXlZ70SbYwBb0m0VBi7cjel4gcDSslDtkBQekBhzhOa4H9weXFoujM18iTR5
         wzJm6xYqQpEVrscy7yKYzWfJPKRULaW3H72AGZF9KpYKVZvq7aQNE6wccGIUlHOF4afj
         B7jEuTyJSmdQnHvEC4pGkZLbaZCUPP5wJTIrzGaSVBWdZP+1Fj2CSgPQz20nQIlJg7MQ
         cWTg==
X-Gm-Message-State: AOAM530rW8LFs0ZsS1FNOaYa2UURBjaSomKlUst+jUx7VAwABwWTQ6rD
	mNf/AxGOdrjYGDcy6I7RZHgmlBAr3XtfgdPN
X-Google-Smtp-Source: ABdhPJxgqEI+Nk/4jePjr+uDRwpfTvoQVYgMINRY+3jfeZjIu9x/fmir55sGgUuLGzx38trV/rvXlw==
X-Received: by 2002:a7b:cb83:0:b0:37e:bc50:3c6b with SMTP id m3-20020a7bcb83000000b0037ebc503c6bmr107086wmi.67.1654872419883;
        Fri, 10 Jun 2022 07:46:59 -0700 (PDT)
Received: from ?IPV6:2001:9e8:384b:efc::d8d? ([2001:9e8:384b:efc::d8d])
        by smtp.gmail.com with ESMTPSA id bg23-20020a05600c3c9700b0039c15861001sm4025148wmb.21.2022.06.10.07.46.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 07:46:59 -0700 (PDT)
Message-ID: <89c0f614-59a2-613c-b344-0d70fc2de0b3@ettus.com>
Date: Fri, 10 Jun 2022 16:46:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com,
 "White, Joshua J" <jjwhite@RiversideResearch.org>
References: <BN0P110MB101568B51F419564572EF38DB1A69@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <BN0P110MB101568B51F419564572EF38DB1A69@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 7IX7XC5ZRD5H4BKJG5CT52F4U4DKBAVM
X-Message-ID-Hash: 7IX7XC5ZRD5H4BKJG5CT52F4U4DKBAVM
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Test
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IX7XC5ZRD5H4BKJG5CT52F4U4DKBAVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSm9zaHVhLA0KDQpnb3QgaXQuDQoNCkJ5IHRoZSB3YXksIHlvdSBjYW4gc2VlIGhvdyBwZW9w
bGUgcmVzcG9uZGVkLCBpbiBvdXIgbWFpbCBhcmNoaXZlIQ0KDQpodHRwczovL2xpc3RzLmV0dHVz
LmNvbS9lbXBhdGh5L3NlYXJjaD9xPWpqd2hpdGUlNDBSaXZlcnNpZGVSZXNlYXJjaC5vcmcmc2xp
c3Q9dXNycC11c2Vycy5saXN0cy5ldHR1cy5jb20mc29ydD1uZXdlciZjb2xsYXBzZT1vbg0KDQpC
ZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCg0KT24gMTAuMDYuMjIgMTY6MzUsIFdoaXRlLCBKb3NodWEg
SiB3cm90ZToNCj4NCj4gSGksDQo+DQo+IElmIGFueW9uZSBzZWVzIHRoaXMgbWVzc2FnZSwgcGxl
YXNlIHJlc3BvbmQuIEkgaGF2ZSBzZW50IHNldmVyYWwgbWVzc2FnZXMgdG8gdGhlIG1haWxpbmcg
DQo+IGxpc3QgcHJldmlvdXNseSBhbmQgaGF2ZSBub3QgcmVjZWl2ZWQgYW55IGNvbmZpcm1hdGlv
biBvciByZXNwb25zZSwgYW5kIEkgYW0gYXR0ZW1wdGluZyANCj4gdG8gdHJvdWJsZXNob290IHRo
ZSBpc3N1ZS4gVGhhbmsgeW91Lg0KPg0KPiBWZXJ5IHJlc3BlY3RmdWxseSwNCj4NCj4gKioNCj4N
Cj4gTG9nbyBEZXNjcmlwdGlvbiBhdXRvbWF0aWNhbGx5IGdlbmVyYXRlZA0KPg0KPiAyNjQwIEhp
YmlzY3VzIFdheQ0KPiBCZWF2ZXJjcmVlaywgT0ggNDU0MzENCj4NCj4NCj4gZmFjZWJvb2sgaWNv
biANCj4gPGh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9SaXZlcnNpZGVSZXNlYXJjaC8+PGh0dHBz
Oi8vdHdpdHRlci5jb20vUml2ZXJzaWRlUnNjaD5saW5rZWRpbiANCj4gaWNvbiA8aHR0cHM6Ly93
d3cubGlua2VkaW4uY29tL2NvbXBhbnkvcml2ZXJzaWRlLXJlc2VhcmNoPg0KPg0KPiAqcml2ZXJz
aWRlcmVzZWFyY2gub3JnKiA8aHR0cDovL3JpdmVyc2lkZXJlc2VhcmNoLm9yZy8+DQo+DQo+IAkN
Cj4NCj4gKkpvc2h1YSBXaGl0ZQ0KPiAqUHJlY2lzaW9uIFRpbWluZyBTeXN0ZW1zIEVuZ2luZWVy
DQo+IEVuZ2luZWVyaW5nICYgU3VwcG9ydCBTb2x1dGlvbnMgRGlyZWN0b3JhdGUNCj4NCj4gKnBo
b25lOio5MzcuOTg2LjMxNTMNCj4gKmZheDoqwqDCoMKgwqDCoCA5MzcuNDMxLjM4MTENCj4NCj4g
Ly8NCj4NCj4gL1RoaXMgZS1tYWlsIG1lc3NhZ2UsIGluY2x1ZGluZyBhbnkgYXR0YWNobWVudHMs
IGlzIGZvciB0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIA0KPiByZWNpcGllbnQocykgYW5k
IG1heSBjb250YWluIHByb3ByaWV0YXJ5LCBjb25maWRlbnRpYWwgb3IgcHJpdmlsZWdlZCBpbmZv
cm1hdGlvbiBvciANCj4gb3RoZXJ3aXNlIGJlIHByb3RlY3RlZCBieSBsYXcuIEFueSB1bmF1dGhv
cml6ZWQgcmV2aWV3LCB1c2UsIGRpc2Nsb3N1cmUgb3IgZGlzdHJpYnV0aW9uIA0KPiBpcyBwcm9o
aWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90
aWZ5IHRoZSBzZW5kZXIgYW5kIA0KPiBkZXN0cm95IGFsbCBjb3BpZXMgYW5kIHRoZSBvcmlnaW5h
bCBtZXNzYWdlLi8vLw0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
