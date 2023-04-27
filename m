Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DE86F09EC
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:34:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 688F83844EC
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:34:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682613280; bh=zuYbhy9sG9SM/YObIwVbbgb5Wid/O1UdUs3cPx2D2pc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HVTiPeCWdncVl5SKUKppz9BqmqvjwWV6uou1cBCOt2zWtYOxU5lHpMhp9XNCt4KSp
	 Qe84VxYNw4v/ZbEZJ0imhZcXBRJRM+qPfcrh1KU5EYspMZtfScjDEYUnqsgPDwmB4T
	 GcDJs3A9XpVRlmT4FKzmkptnxoFpqlqfwfXvDMzxhus54dzZJJCExJkGDqKdd8HO19
	 Nemw5K77kfsDMMLa3+Ed3jHZGOznybY8yCnQe4UZAHl6TuRhZpWB34uJ9lBZus+vCa
	 F7nP7R8m4fY8YHYBYsbGtmrHEnXyrc6qVyKNVvOi2r7cIT5tJ5L3mVU+AOPO7sK5Aw
	 JtwbZi5xZnCXg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id CEF643842EC
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:33:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J0OjTm8h";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-3ef49c15454so40691781cf.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 09:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682613238; x=1685205238;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ctozLliFZAKHxOKSV0YovGOR9z3yBgM7eZ+Hqef7+Ww=;
        b=J0OjTm8hy8q09B0+8PT5Xamn00RiyQe55dpIHSR8QMA7DC3bO45XZka7BjHBxoq/P2
         M9TqBWRZtKmyPflXi6JMJmNOT5D0uqigQta3EXhGgNEeWuRf1o/VY8+sYO4N8gr+54Ph
         be8/3BinWtW3tP0GstwjpIIPGqe1c+omEjCb4s3aD3Xgsrmv4JmdEFxtGI50++bjVmTq
         mbID8UiF79dFtRDNrxewlTaiE5VMGGQODCfA38csM38LuwX2MFuZXratq2jsMKY9itjh
         l1v7OCpXAM/kF8Dhhk5nLq5S7pUKRkXKhOVvsZx/Rhm3nU+97Ejo6/cIe9G8M5NPMK+w
         hr9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682613238; x=1685205238;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ctozLliFZAKHxOKSV0YovGOR9z3yBgM7eZ+Hqef7+Ww=;
        b=bdP9cB2BpL3m9Q/lcAGMFBfuQX+xLiHa0DitPRr0+18pDJmT2dQhsUuPGHVWp8u9Rk
         VKaFlma5BFBgKtwzSMLc9TDb38LvvsACqmZ37BXz3lQauUrn52IbEM4VN5HrzPVX/GKt
         aS4fKoC07PlrZEEBlVevnH/Rbsfqw+iYUoAfq4bEQx6jlAFvbFj870QmC6cve+KZpZA8
         CopdHL1y7SQnowd3Wz8InYwCslZ8oH6cdNZ/U8aPzDIZpTsoNYnW3eSGpFMyolFxgEhC
         LCS0nf/P0LFxWSEiSLWHFhj/ev3NDLJoaxBdAFgOCcQ9+ai1e1zEFmRa5uITbrtfJnx3
         kimA==
X-Gm-Message-State: AC+VfDyqkuni1O4LXzyHsydmXL7vrBgLFVB43F6178CwzOQS9fJ14KGM
	azCXx2E+5KS2TW4QCK2t9SNtBbTk24I=
X-Google-Smtp-Source: ACHHUZ5cFO0dz4DbaSMgCvrRnqd7hx241ZrxbL6KPzUVbfRAKQJAtiHrBqRIUN9sejUANYQpio1Jeg==
X-Received: by 2002:a05:622a:612:b0:3ef:62f7:899b with SMTP id z18-20020a05622a061200b003ef62f7899bmr3149347qta.57.1682613238094;
        Thu, 27 Apr 2023 09:33:58 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id or16-20020a05620a619000b0074abe1e1457sm6055755qkn.76.2023.04.27.09.33.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 09:33:57 -0700 (PDT)
Message-ID: <a0f6365f-2c89-f12e-bc3b-92dfbee348ee@gmail.com>
Date: Thu, 27 Apr 2023 12:33:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFFpLrECHikVQ-KE=y1Z4mVhs6y+prmqtBdR6WJcbuae5553Mg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFFpLrECHikVQ-KE=y1Z4mVhs6y+prmqtBdR6WJcbuae5553Mg@mail.gmail.com>
Message-ID-Hash: ULBYKZTNETUVDDBSJBBZWYPM2M5F7PRR
X-Message-ID-Hash: ULBYKZTNETUVDDBSJBBZWYPM2M5F7PRR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: static ip on E312 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULBYKZTNETUVDDBSJBBZWYPM2M5F7PRR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxMjowNSwgSk9SR0UgR09OWkFMRVogT1JFTExBTkEgdmlhIFVTUlAtdXNl
cnMgd3JvdGU6DQo+IEhpIGFsbA0KPg0KPiBpIHdhbnQgdG8gYXNzaWduIGEgc3RhdGljIGlwIGFk
ZHJlc3MgdG8gbXkgRTMxMiwgaSBoYXZlIG1vZGlmeSB0aGUgDQo+IGV0aDAubmV0d29yayBmaWxl
IGluIC9kYXRhL25ldHdvcmssIHRoaXMgaXMgdGhlIGNvbnRlbnQ6DQo+DQo+IFtNYXRjaF0NCj4g
TmFtZT1ldGgwDQo+IEtlcm5lbENvbW1hbmRMaW5lPSFuZnNyb290DQo+DQo+IFtOZXR3b3JrXQ0K
PiBBZGRyZXNzPTE5Mi4xNjguMTAuNDINCj4gSVBGb3J3YXJkPWlwdjQNCj4NCj4gW0RIQ1BdDQo+
IFVzZUhvc3RuYW1lPXRydWUNCj4gVXNlRG9tYWlucz10cnVlDQo+IENsaWVudElkZW50aWZpZXI9
bWFjDQo+DQo+IEJ1dCBJIHJlYm9vdGVkIHRoZSBFMzEyIGFuZCBkaWQgbm90IGhhdmUgdGhlIGlw
IGFzc2lnbmVkLCDCv2RvZXMgYW55b25lIA0KPiBrbm93IHdoeSB0aGlzIGlzIG5vdCBoYXBwZW5p
bmc/DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20NCldoYXQgb3RoZXIgZmlsZXMgYXJlIGluIC9kYXRhL25ldHdvcms/DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
