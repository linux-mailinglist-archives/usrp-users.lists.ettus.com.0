Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2475514825
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 13:29:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11B8F3847E1
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 07:29:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651231756; bh=QLmF/lzfqEGudBeaV4Lvn5DdgNH1HEu+0jd3PCfFqVY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dGJnnxwm5iA4nKjO+hU1tWdEzUg4XiiOGFwNAqEXjn0ImjeRIdMY1+ZudYKLvsoZE
	 adu08aOIvlYfV3j2zO+jn2Mn/Fxik0ijEvw+nFtOp0xJE4jclxQAtV6hffAmsNE0iG
	 XZjcmwc1zbX9YAcgxk0xcTnZPatp4pmP3MtZIzHvVhixx2piC/XR2Rh7b+9l3le2iu
	 EOuR+UxIY57lLbyFb2Ft/shdKhqxuXC4wtssl6qKqpGGYtQcsuwsIegLnS4Nii3ORb
	 OizivBHZ7sWFEiS1xOVz4q7vgg5/WUIDt7nl07u2HC27wr8NSNthFgo9SzaAbr/2kY
	 5xMwXwGT176gg==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E074A38442F
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 07:28:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="L1q2LRaV";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id q23so10392478wra.1
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 04:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=napv0AHb2mebzl/T8KYpmi8dxh/Az+0+kQ5CflxQVEU=;
        b=L1q2LRaVe6vDn9VWa4fbEeFYI4WZPN8YvHUPHAsK7TpA0qv9AFpv5oHThkNf2DGses
         /N1//Ec0rl4u6RIrKPPa19kEWfblSaP2Nn1v1rJobtvG+yPasHBg26I5mb7Q1hMJXxWT
         KQ1UY+fVgjYqSbDlmey+VexrAMW+HlXAHMYH/8+iMzom+sH1Iz3drO4+LywhW37560tf
         w3jZnI+2jUxFbjPtzYVtmR+7wFzttALBl2/P2GcwUbnqcKo85kNShzQkk20C06+YjpOk
         HEJU1PoVPyc/h/4pCyFTJ3tt/7+lVq9aGur4sxU7QZfHiTgInTzKgZbPmfhQ1Lskc8Zf
         DUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=napv0AHb2mebzl/T8KYpmi8dxh/Az+0+kQ5CflxQVEU=;
        b=PM838vL9+YOzouOdj3uVd+lcQhKh/bGomJs2W2hEX902n8GbIVnl/akINzLLUQuToU
         LfZHawb8nNGcgE8ljnDdGgSfBuYD95o1NGS8Qk4I+kiWO1NKzytAg9feEYJNbnLQv0lL
         L5R/HMCAwIrQOoowzCbXed4e3aJn6KnQRH+01yHNzXo14l5iZr4vkml6xQqO3l5qQMFg
         2JVm+z68jpug5r46d6MZdk/qCxbysU6RHQwNEEyIprKphaV6mvGGXqfq1FqDuw6EVzlW
         5KLMm7tgy5AH+7LePbGeRNYkAVdQ7K+zPoUTH1a30+fMERJroXnKfwwxlIHT6SpVcT0t
         SW7A==
X-Gm-Message-State: AOAM533/k+VD2BtGbFBfqr+CKDDdoX3dJY6sK3KspftSx0lGWKSXg3od
	yjuGnadwk6jCEWoR9sgzKPzzMAST621IgFcF
X-Google-Smtp-Source: ABdhPJyDSbwWClm3jKN+yv1vplo/Orunm4ml0hCHYNHtBe5xA23tCM5oSNqTS17qlVGiP4rg6UV9Wg==
X-Received: by 2002:adf:f803:0:b0:20a:d4a9:b67e with SMTP id s3-20020adff803000000b0020ad4a9b67emr25199109wrp.171.1651231689364;
        Fri, 29 Apr 2022 04:28:09 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3860:e9fc::d8d? ([2001:9e8:3860:e9fc::d8d])
        by smtp.gmail.com with ESMTPSA id g21-20020a1c4e15000000b0039419a269a2sm2794046wmh.39.2022.04.29.04.28.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 04:28:09 -0700 (PDT)
Message-ID: <42655882-6289-5755-9f79-b374c8ce70d3@ettus.com>
Date: Fri, 29 Apr 2022 13:28:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
Message-ID-Hash: JCVXR7E2HPXF3GEOEHW2SZYWPJRECOXF
X-Message-ID-Hash: JCVXR7E2HPXF3GEOEHW2SZYWPJRECOXF
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transport properties
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JCVXR7E2HPXF3GEOEHW2SZYWPJRECOXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhleSdyZSBVSEQgc2V0dGluZ3MsIG5vdCBOSUMgc2V0dGluZ3MuIFNvLCB5b3UgY2Fubm90IGNo
YW5nZSB0aGVtIGluIHRoZSBOSUMuDQoNCldoYXQgeW91ciBOSUMgbmVlZHMgdG8gc3VwcG9ydCBh
cmUgdGhlIGxhcmdlIGV0aGVybmV0IGZyYW1lIHNpemVzICgianVtYm9mcmFtZXMiKSwgYnV0IEkg
DQpkb3VidCB0aGF0J3Mgc29tZW9uZSB5b3VyIE5JQyBuZWVkcyBoZWxwIHdpdGgg4oCTIGl0J3Mg
cHJvYmFibHkgYSBuZXR3b3JrIHN0YWNrIHByb2JsZW0gaWYgDQp0aGUgTVRVIGlzIHNldCB0b28g
bG93Lg0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCg0KRElTQ0xBSU1FUjogQW55IGF0dGFjaGVk
IENvZGUgaXMgcHJvdmlkZWQgQXMgSXMuIEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQgb3IgdmFsaWRh
dGVkIGFzIGEgcHJvZHVjdCwgZm9yIHVzZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5
c3RlbSwgb3IgZm9yIHVzZSBpbiBoYXphcmRvdXMgZW52aXJvbm1lbnRzLiBZb3UgYXNzdW1lIGFs
bCByaXNrcyBmb3IgdXNlIG9mIHRoZSBDb2RlLiBVc2Ugb2YgdGhlIENvZGUgaXMgc3ViamVjdCB0
byB0ZXJtcyBvZiB0aGUgbGljZW5zZXMgdG8gdGhlIFVIRCBvciBSRk5vQyBjb2RlIHdpdGggd2hp
Y2ggdGhlIENvZGUgaXMgdXNlZC4gU3RhbmRhcmQgbGljZW5zZXMgdG8gVUhEIGFuZCBSRk5vQyBj
YW4gYmUgZm91bmQgYXQgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3Nkci1zb2Z0d2FyZS9saWNlbnNl
cy8uDQoNCk5JIHdpbGwgb25seSBwZXJmb3JtIHNlcnZpY2VzIGJhc2VkIG9uIGl0cyB1bmRlcnN0
YW5kaW5nIGFuZCBjb25kaXRpb24gdGhhdCB0aGUgZ29vZHMgb3Igc2VydmljZXMgKGkpIGFyZSBu
b3QgZm9yIHRoZSB1c2UgaW4gdGhlIHByb2R1Y3Rpb24gb3IgZGV2ZWxvcG1lbnQgb2YgYW55IGl0
ZW0gcHJvZHVjZWQsIHB1cmNoYXNlZCwgb3Igb3JkZXJlZCBieSBhbnkgZW50aXR5IHdpdGggYSBm
b290bm90ZSAxIGRlc2lnbmF0aW9uIGluIHRoZSBsaWNlbnNlIHJlcXVpcmVtZW50IGNvbHVtbiBv
ZiBTdXBwbGVtZW50IE5vLiA0IHRvIFBhcnQgNzQ0LCBVLlMuIEV4cG9ydCBBZG1pbmlzdHJhdGlv
biBSZWd1bGF0aW9ucyBhbmQgKGlpKSBzdWNoIGEgY29tcGFueSBpcyBub3QgYSBwYXJ0eSB0byB0
aGUgdHJhbnNhY3Rpb24uICBJZiBvdXIgdW5kZXJzdGFuZGluZyBpcyBpbmNvcnJlY3QsIHBsZWFz
ZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkgYmVjYXVzZSBhIHNwZWNpZmljIGF1dGhvcml6YXRpb24g
bWF5IGJlIHJlcXVpcmVkIGZyb20gdGhlIFUuUy4gQ29tbWVyY2UgRGVwYXJ0bWVudCBiZWZvcmUg
dGhlIHRyYW5zYWN0aW9uIG1heSBwcm9jZWVkIGZ1cnRoZXIuDQoNCk9uIDI5LjA0LjIyIDA5OjUw
LCBOaWtvcyBCYWxrYW5hcyB3cm90ZToNCj4gSGksDQo+DQo+IHVoZF91c3JwX3Byb2JlIHJlcG9y
dHMgdGhhdCBJIHNob3VsZCByYWlzZSBteSBzZW5kX2ZyYW1lX3NpemUgJg0KPiByZWN2X2ZyYW1l
X3NpemUgYXJndW1lbnRzLg0KPiBVU1JQIE1hbnVhbCwgdHJhbnNwb3J0IG5vdGVzLCByZXBvcnQg
dG8gY2hhbmdlIHRoZW0gaW4gZGV2aWNlIG9yDQo+IHN0cmVhbSBhcmd1bWVudHMuDQo+IEFueW9u
ZSBrbm93cyBob3cgdG8gY2hhbmdlIHRoZXNlIHNldHRpbmdzIGluIHRoZSBOSUM/DQo+IEkgaGF2
ZSBhIDEwIEdiIE1MTlggTklDIGFuZCBqdXN0IHVwZ3JhZGVkIG15IFVidW50dSBmcm9tIDE0LjA0
IHRvDQo+IDIwLjA0LiBJIGFtIHByZXR0eSBzdXJlIEkgaGFkIHNvbWUgb2YgdGhlc2Ugb3B0aW1p
emF0aW9ucyBpbiB0aGUgTklDDQo+IHVzaW5nIGV0aHRvb2w/IEFueW9uZSByZW1lbWJlcnMgd2hh
dCB0aGVzZSBvcHRpbWl6YXRpb25zIHdlcmU/DQo+DQo+IFRJQQ0KPiBOaWtvcw0KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
