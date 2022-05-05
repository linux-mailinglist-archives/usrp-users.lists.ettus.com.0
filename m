Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D057A51CAC4
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 22:41:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D94C838510C
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651783307; bh=UEHOrO5lTn14y7/Dm+gWMfZ0/Isg7nytvR4PLPgiLws=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PBuhzL3MuhdB3+DFjn6QmGZJ/7FXlFHeXTRxSTJvFJTLworF2EV0AEAiBJo3AdYPI
	 eMP+9z3HZ6v3iBPkH6xuooApr2WT9VacMGzW9vln8Fd5vIz9PxVSnN9I7x1GH88laQ
	 4/x1ydKMXBI8pzhqne3SmkBqm9C/q9sT7cZBcNAPDdwtjiXgnSaYiqie7U5IONMVYr
	 L8jSvqmZEkSk4WbQP5lRPRXD7JefdJ0F/3S8DINc9oEriVJhSBt8TojAIhly5SM/uq
	 jkqJJlFg68ddj4E0jGidllBSshgyXynh7IWYyZQi8uk4UvY5ctpc15LWqO05hBk6dw
	 E0LA/pmH7tqXA==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 258F838510C
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 16:40:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bK/D+iNO";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id w3so4057899qkb.3
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 13:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=ZBGFEnYebNM05X7Nse+d9IUvet4PYu8yX4mRJKueiIY=;
        b=bK/D+iNOcAa7OocGZ7FR+IYEE43sL9Gh6Ti8KncP0iksdopj0+L7mKk83qWrNu849u
         1ybylfdhaA4iAl7HktRL4ifRiJmTtg8amEXQLBEC11x8nLLMeBegUoeVbZ3QiTwsgElu
         corJejF8sxri5iBj50aTMGeIn9E8UixoaBmrKwqs8rAf56S1g2pZmGqbC5I5FLYSYBAW
         GfKHl8HeaPqAKvkvNJO9PYfpCFv8jwvWkVqb+XucpDd4f5k5UbPlk79OHI8All+rrHwe
         gWb9FmgLMRiujRleKbjgjRlDwhYr2Y7CXm2s/KP8lJmptNYUIO4LxuqKuKyY93g+BCv8
         rFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZBGFEnYebNM05X7Nse+d9IUvet4PYu8yX4mRJKueiIY=;
        b=8BFRgWjEz1jJVICVcGf+eZXpEnR1CqeFibBYnuOgPA6RLq4VuQCrmx4LxBz65X2q5y
         QBaxMNmxsJKJrml3Aga/6rJktRFXUIQgoe2UsaeYZuxpfG76QLkhRnyJHHZg4i/ai8KD
         pxV6OexYAW/2lUbwG0oHa12FC+SBjzIvQfFWu0bC2xZt/GhtgTlHmqXdBCDDDTojJfnM
         IgzApQV76jQqS5SKmqd+PMTq8UEmtKfjvN3hIdN38Jnn3B204UnHuPMmxf3v75NGNFHj
         vEiw+w1GsgCoQ2MaGC3wEUA9MpOioZ6yrFpHLUuwYKCcJEWFdbwRBVTK0asqGyUz+bUS
         hDlg==
X-Gm-Message-State: AOAM530K2aZgtyHLvnij+9insmCX6rLTV2p2mwI01XWcF4bUEtMjqYcJ
	wTuJWtYTsRT9WaCb4F6JDuwGLxMdYiY=
X-Google-Smtp-Source: ABdhPJxgAlfTyM5MV5R4noJffEoEe5/zET767hDxLDTdvSucpabAXvzaGcFhvOL/NdJbNZCfwWPTxQ==
X-Received: by 2002:a37:f518:0:b0:680:a811:1ef7 with SMTP id l24-20020a37f518000000b00680a8111ef7mr92190qkk.765.1651783241857;
        Thu, 05 May 2022 13:40:41 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id p185-20020a37bfc2000000b0069fc13ce24fsm1388134qkf.128.2022.05.05.13.40.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 13:40:41 -0700 (PDT)
Message-ID: <097faa68-de85-687e-1cf2-ce54d9bc49ce@gmail.com>
Date: Thu, 5 May 2022 16:40:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw@lists.ettus.com>
Message-ID-Hash: CXJGFNX63ICQAEGCXQFICBLYGUY3W5J4
X-Message-ID-Hash: CXJGFNX63ICQAEGCXQFICBLYGUY3W5J4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dropped samples in sync across channels?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXJGFNX63ICQAEGCXQFICBLYGUY3W5J4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0wNSAxMDoyNiwgamFzb25AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20gd3JvdGU6
DQo+DQo+IEkgd2FudGVkIHRvIHZlcmlmeSBzb21ldGhpbmcgdG8gbWFrZSBzdXJlIEkgdW5kZXJz
dGFuZCBob3cgdGhpbmdzIA0KPiB3b3JrLiBJdCBzZWVtcyB0byBtZSB0aGF0IHdoZW4gdXNpbmcg
YW4gWDMxMCBvciBOMzIwICh0aGUgdHdvIFVTUlBzIEkgDQo+IGhhcHBlbiB0byBiZSBtZXNzaW5n
IHdpdGgpLCB0aGF0IHdoZW4gSSBhbSB1c2luZyBib3RoIFJYIGNoYW5uZWxzLCBpZiANCj4gSSBj
aGFuZ2UgZnJlcXVlbmNpZXMgb24gb24gb25lIGNoYW5uZWwsIGJvdGggd2lsbCBwcm9kdWNlIHRp
bWUgdGFncyBpbiANCj4gR251IFJhZGlvLiBJ4oCZdmUgbG9va2VkIHRocm91Z2ggdGhlIHVoZCBh
bmQgRlBHQSBzb3VyY2UgY29kZSBhbmQgDQo+IGhhdmVu4oCZdCBzZWVuIGFueXdoZXJlIHdoZXJl
IHRoZSB0d28gY2hhbm5lbHMgYXJlIGxpbmtlZCB0b2dldGhlciBvbiBhIA0KPiBmcmVxIGNoYW5n
ZTsgYnV0IEkgc3VzcGVjdCB0aGF0IEkgbWlzc2VkIHNvbWV0aGluZyBhbmQgd2FudGVkIHRvIHZl
cmlmeS4NCj4NCkludGVyZXN0aW5nLsKgIFRpbWUgdGFncyBhcmUgZGVmaW5pdGVseSBpc3N1ZWQg
d2hlbmV2ZXIgdGhlcmUncyBhbiANCm92ZXJydW4sIGFuZCBpZiB5b3VyIHR1bmluZyByZXN1bHRz
IGluIGFuIG92ZXJydW4sIHlvdSdsbCBhbHNvIGdldCBhIA0KZnJlc2ggdGltZS10YWcgaW4gR251
IFJhZGlvLg0KDQoNCg0KPiBBbHNvLCBpdCBzZWVtcyBsaWtlIHdoZW4gSSBjaGFuZ2UgZnJlcXVl
bmNpZXMsIEkgbWF5LCBvciBtYXkgbm90LCBkcm9wIA0KPiBzYW1wbGVzLiBUaGlzIG1ha2VzIHNl
bnNlIGFuZCBpcyBtb3JlIHByZXZhbGVudCB3aGVuIEkgYW0gdXNpbmcgYSANCj4gaGlnaGVyIHNh
bXBsZSByYXRlLiBXaGF0IGlzIHdlaXJkIHRvIG1lIGlzIHRoYXQgaXQgbG9va3MgbGlrZSB3aGVu
IEkgDQo+IGFnYWluIGNoYW5nZSB0aGUgZnJlcSBvbiBhIHNpbmdsZSBjaGFubmVsLCBib3RoIGNo
YW5uZWxzIHdpbGwgZHJvcCAob3IgDQo+IG5vdCBkcm9wKSB0aGUgc2FtZSBudW1iZXIgb2Ygc2Ft
cGxlcy4gSSBhc3N1bWUgdGhhdCB0aGlzIGlzIHRvIGtlZXAgDQo+IHRoZSBzdHJlYW1zIGluIHN5
bmMsIGJ1dCBhZ2FpbiBJIHdhbnRlZCB0byB2ZXJpZnkgdGhhdC4NCj4NCklOIGEgbXVsdGlfdXNy
cCB3aXRoIG11bHRpcGxlIGNoYW5uZWxzIHRoZSBzdHJlYW1zIGFyZSBjb25jZXB0dWFsbHkgDQoi
bXVsdGktY2hhbm5lbCBzdHJlYW1zIi7CoCBTaW5jZSB0aGUgY29ubmVjdGlvbiBpbnRvIGEgc2lu
Z2xlIGRldmljZSBpcyANCnR5cGljYWxseSBhcnJhbmdlZCBhcw0KIMKgIEkxUTIgSTJRMiBldGMs
IHRoZW4gcGFja2V0IGRyb3BzIHdpbGwgYWx3YXlzIGVuZCB1cCBkcm9wcGluZyBmb3IgYm90aCAN
CmNoYW5uZWxzLsKgwqAgT24gdG9wIG9mIFRIQVQsIHllcywgdGhlIHVuZGVybHlpbmcgbXVsdGlf
dXNycCBjb2RlIHRyaWVzIHRvIA0Ka2VlcCB0aGUgY2hhbm5lbHMNCiDCoCBhbGlnbmVkIGFmdGVy
IGFuIG92ZXJydW4sIGV0Yy4NCg0KRHJvcHBpbmcgc2FtcGxlcyBvbiBmcmVxdWVuY3ktY2hhbmdl
IGlzIGRlZmluaXRlbHkgTk9UICJieSBkZXNpZ24iLCBidXQgDQptYXkgZW1lcmdlIGFzIHlvdSBn
ZXQgY2xvc2UgdG8gdGhlIGxpbWl0cyBvZiB0aGUgb3ZlcmFsbCByYWRpbzwtLS0tPmhvc3QgDQoi
Y2hhbm5lbCIsIHdoaWNoIGluY2x1ZGVzDQogwqDCoCBub3Qgb25seSB0aGUgcmF3IGJpdC1yYXRl
IG9mIHRoZSB1bmRlcmx5aW5nIHRyYW5zcG9ydCwgYnV0IHRoZSANCmFiaWxpdHkgb2YgdGhlIGVu
dGlyZSAic3RhY2siIHRvICJrZWVwIHVwIi4NCg0KDQo+DQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
