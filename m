Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 587064C1A97
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 19:04:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35E453846F3
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 13:04:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AlLdDhAp";
	dkim-atps=neutral
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 25AD53845F1
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 13:03:33 -0500 (EST)
Received: by mail-qv1-f51.google.com with SMTP id g23so4731922qvb.4
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 10:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=BivvUHRQ+YKgz8nwCdoWg3Ig6cOwB46uY8GHuk/MNh0=;
        b=AlLdDhApyAkl1jKMk05x0M1lNTqJFvjHHAN8X7/h8SOWoadeta+R6bBdoycJmo7NAu
         Oy6uMYXrAjLSS7xllSVxdgYO3vzISvHyrAsCbMjY4JEnFntz5xRo3prf9H9XSs9gaQl2
         749wCNzPcRi0w3MFdS2QoPM/pFJeDC+zj/EmmtYQH8XLmWKf5zFns7IguPPd6A8CMPYK
         PUDURVyvlYrw+LtIJpCAqTXh4O6pyHRwVUzvTKeYmJIz0gS8E/nMp/MbyzXK//VtOemM
         ESzncuQ/+pv2bWKYXAlEXxhubXFpFDATWv8gWvYvgosc8EgyyVIa0tGfwWC/z+fhjHIh
         dFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BivvUHRQ+YKgz8nwCdoWg3Ig6cOwB46uY8GHuk/MNh0=;
        b=mrx/Fiqs9g6UGr/T2LLBVkB1F2o1ob+fKNJ3NOIfFd0DM3V24fLdJ2P5w+XYW6OT5W
         6hdTypyVwjUvSq1rl26g2l7RTs6v1K76a4n3NnSZTxrj0KKG8LIIrLNQKETRKNk5MKu0
         36Au7/1Vxy7cTxaXC8FXZm4pNj+I4yyFLmifpBs4w4AIAppK6cORFSVsowviwRuJ2/Iu
         6UFI3dT/FFGSgdenuVLeslKBDyYSUve/bxYOXk/bQGeQweiO7Hvt7TaJnUo/dgSNkCea
         Uq5A6hGT0GXBbaRdq4SrbbCTbpZQOA82W1z608eWak25KNkThbX3/L4f2xPs7SrB3U3Y
         rvZw==
X-Gm-Message-State: AOAM532zB+ZATDvsgvS3ov+xrHOnCCXBwPL68g+fY68yDvp+5med+TR7
	pVWpTCzj3WTA/ipG9rpQc9HZ8KUwPiIRpQ==
X-Google-Smtp-Source: ABdhPJzyHwskEeeZnXxxnhJshLzexmltc+zJodoixITB6Zie8pDw3Sn9+wK12wCoE40S+EneYLlNhg==
X-Received: by 2002:ac8:5f07:0:b0:2dd:2f21:1ebb with SMTP id x7-20020ac85f07000000b002dd2f211ebbmr914322qta.264.1645639412220;
        Wed, 23 Feb 2022 10:03:32 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y18sm223605qtj.33.2022.02.23.10.03.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 10:03:31 -0800 (PST)
Message-ID: <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com>
Date: Wed, 23 Feb 2022 13:03:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
Message-ID-Hash: 7YWEVZHUT4W4KA7BMRPHLYJH3MKTCXBP
X-Message-ID-Hash: 7YWEVZHUT4W4KA7BMRPHLYJH3MKTCXBP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7YWEVZHUT4W4KA7BMRPHLYJH3MKTCXBP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0yMyAxMjowMCwgemxpa2FfZXNlQGhvdG1haWwuY29tIHdyb3RlOg0KPg0KPiBU
aGFua3MgZm9yIHlvdXIgYW5zd2VyLg0KPg0KPiBJIHRyaWVkIHRvIHVzZSBiZW5jaG1hcmtfcmF0
ZSwgYW5kIEkgZG9u4oCZdCBoYXZlIGFueSBzYW1wbGUgbG9zcyBhdCANCj4gMjAwTVMvcy4NCj4N
Cj4gT24gR251UmFkaW8gd2l0aCBhIHZlcnkgc2ltcGxlIGZsb3dncmFwaCAoVVNSUCBTb3VyY2Ug
LT4gTnVsbCBTaW5rKSBJIA0KPiBzdGlsbCBoYXZlIHZlcnkgcmVndWxhciAoZXZlcnkgZmV3IHNl
Y29uZHMpIG92ZXJmbG93cy4NCj4NCj4gSW4gYm90aCBjYXNlcywgdGhlIENQVSBsb2FkIG9mIGVh
Y2ggY29yZSBuZXZlciBnb2VzIG92ZXIgfjI1JS4NCj4NCj4gSXMgdGhlcmUgYW55IHBhcnRpY3Vs
YXIgcGVyZm9ybWFuY2UgdGlwcyB0byBrbm93IG9uIEdudVJhZGlvIChlLmcuIA0KPiBwbGF5aW5n
IHdpdGggdGhlIG1pbi9tYXggb3V0cHV0IGJ1ZmZlciBzaXplcyBvZiB0aGUgYmxvY2tzKSB0byAN
Cj4gb3B0aW1pemUgdGhlIHRocm91Z2hwdXQ/DQo+DQo+DQpBIEdudSBSYWRpbyBmbG93LWdyYXBo
IHdpbGwgKk5FVkVSKiBiZSBhcyBwZXJmb3JtYW50LCBmb3IgInNpbXBsZSANCnRoaW5ncyIgYXMg
YSBoYW5kLWNvZGVkIGVxdWl2YWxlbnQsIGJlY2F1c2UgaXQgaGFzIGV4dHJhIG92ZXJoZWFkIGlu
IA0KbWFuYWdpbmcgYnVmZmVycyBhbmQgdGhyZWFkcw0KIMKgIGFuZCBzby1vbi4NCg0KQXQgdGhl
c2Ugc2FtcGxlLXJhdGVzIG92ZXJhbGwgcGVyZm9ybWFuY2Ugb3B0aW1pemF0aW9uIGNhbiBiZSAN
CmV4Y2VlZGluZ2x5IHN1YnRsZSwgYW5kIGludm9sdmUga25vd2xlZGdlIG5vdCBvbmx5IG9mIHlv
dXIgb3duIA0KYXBwbGljYXRpb24sIGJ1dCBob3cgdGhlIG5ldHdvcmsNCiDCoCBzdGFjayBwZXJm
b3Jtcywga2VybmVsIHNjaGVkdWxpbmcgYmVoYXZpb3JzLCBtZW1vcnkgYmFuZHdpZHRoLCBldGMs
IGV0Yy4NCg0KWW91IG1pZ2h0IHRyeSB1c2luZyBEUERLLCBidXQgdGhhdCdzIGEgYml0IG9mIGEg
bWluZWZpZWxkIGF0IHRoZSBtb21lbnQsIA0KVEJILg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
