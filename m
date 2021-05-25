Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA943900B7
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 14:16:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCC7D384296
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 08:16:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="yeXaQwmk";
	dkim-atps=neutral
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F2D438416D
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 08:15:23 -0400 (EDT)
Received: by mail-wm1-f41.google.com with SMTP id b7so16023805wmh.5
        for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 05:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=fpPtuf/m35ZsNdxGQorw0izSTHh7xkwtUYIYak1nxIk=;
        b=yeXaQwmkyNFMK36v04zTHERldblQzG++4hVPOoGRwZRYf9yaswZ8866XQiFUDOevlq
         D2XSLyLDNmPyxedNrQEoCOHPeNg6l1Sv4jqAFRgIS6NvQzZDh2jYdteWG/gT2f75dwPO
         FfkDUy5r3p98dIkBFr4IeUeCdpdB8rkrQD/FBF1T38tFC/o6RwLH1S4/MGugE3IV0/lT
         2l3pqTWvWfMyud+i/mF9ny+I4FwXL+EYD8TLYFc73eexUhzggo9odHWA/qoAGSkgcrOS
         RgfaNlkKb60KXf0pPbxPIo6/zbC/IBWCqKoTSwTbCLA/dv0kF+5RnDc2F9I6IM9bX2jA
         6LvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=fpPtuf/m35ZsNdxGQorw0izSTHh7xkwtUYIYak1nxIk=;
        b=bgnsy6dYxNkcyd1Fa65SvaG4T5RHXxzYNY2ilhb0TaalyCKvM2JfqLOhNc9JvuA5hg
         E+IG2B1Z7uUqvKt+u9vPibaPDZ8n2sjYdEPLIHhm1glNih139ri+DZvFKJvJRu7ai9fD
         pEylaEvpNF+32eZtjK9HK4md4R3cWKqpQgrCwDXnaS+dkD8hf2RU80Swq2li7AXheovY
         AfzW4Ka1/b8w+xPCbAi3hMlTyK2tKKd5njN20NIGTqW72/ZA+qRFqVT9R5cyllj5/HNd
         4VVgf06h+b+F4F3wf1K9kTDvv2OO+VHllEJZub3g7wKiAm9agE6CIar5RfVLNX4giohB
         V/4Q==
X-Gm-Message-State: AOAM5306+44cTn48ReM0PotUme8zPzpYx0ldSyVRFbKLa6vPgiH3etzX
	5Q0a7z5x6YGekkpkW/8CvgPiqhfjGbgRCYq4
X-Google-Smtp-Source: ABdhPJxaClvKq2yUEpURSq6QecXlxqL42O0t+waYZz3rbNva6oSSiEdTa/jiXu+zS2IDH36bcJduUA==
X-Received: by 2002:a05:600c:22c5:: with SMTP id 5mr3659441wmg.40.1621944922235;
        Tue, 25 May 2021 05:15:22 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id f1sm18135338wrr.63.2021.05.25.05.15.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 05:15:21 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
 <0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <aa2c4e08-eca3-17d6-cc65-5fabf20b5396@ettus.com>
Date: Tue, 25 May 2021 14:15:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
Content-Language: en-US
Message-ID-Hash: KBSQDUET2MXGZPB55MDAC346LNUEESNC
X-Message-ID-Hash: KBSQDUET2MXGZPB55MDAC346LNUEESNC
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KBSQDUET2MXGZPB55MDAC346LNUEESNC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBkaWRuJ3QgZ2V0IHlvdXIgY29kZSwgc29ycnkuIE1heWJlIHlvdSBjYW4gZGVzY3JpYmUgaG93
IHlvdSdyZSBtZWFzdXJpbmcgdHVuaW5nIHNwZWVkPw0KRG8geW91IGhhdmUgc29tZSBleHRlcm5h
bCBtZXRlciwgb3IgZG8geW91IG9ic2VydmUgdGhlIFRYIGZyZXF1ZW5jeSBvbiB5b3VyIFJYIHVz
aW5nIHRoZQ0Kc2FtZSBVU1JQPw0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCg0KRElTQ0xBSU1F
UjogQW55IGF0dGFjaGVkIENvZGUgaXMgcHJvdmlkZWQgQXMgSXMuIEl0IGhhcyBub3QgYmVlbiB0
ZXN0ZWQgb3IgdmFsaWRhdGVkIGFzIGEgcHJvZHVjdCwgZm9yIHVzZSBpbiBhIGRlcGxveWVkIGFw
cGxpY2F0aW9uIG9yIHN5c3RlbSwgb3IgZm9yIHVzZSBpbiBoYXphcmRvdXMgZW52aXJvbm1lbnRz
LiBZb3UgYXNzdW1lIGFsbCByaXNrcyBmb3IgdXNlIG9mIHRoZSBDb2RlLiBVc2Ugb2YgdGhlIENv
ZGUgaXMgc3ViamVjdCB0byB0ZXJtcyBvZiB0aGUgbGljZW5zZXMgdG8gdGhlIFVIRCBvciBSRk5v
QyBjb2RlIHdpdGggd2hpY2ggdGhlIENvZGUgaXMgdXNlZC4gU3RhbmRhcmQgbGljZW5zZXMgdG8g
VUhEIGFuZCBSRk5vQyBjYW4gYmUgZm91bmQgYXQgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3Nkci1z
b2Z0d2FyZS9saWNlbnNlcy8uDQoNCk5JIHdpbGwgb25seSBwZXJmb3JtIHNlcnZpY2VzIGJhc2Vk
IG9uIGl0cyB1bmRlcnN0YW5kaW5nIGFuZCBjb25kaXRpb24gdGhhdCB0aGUgZ29vZHMgb3Igc2Vy
dmljZXMgKGkpIGFyZSBub3QgZm9yIHRoZSB1c2UgaW4gdGhlIHByb2R1Y3Rpb24gb3IgZGV2ZWxv
cG1lbnQgb2YgYW55IGl0ZW0gcHJvZHVjZWQsIHB1cmNoYXNlZCwgb3Igb3JkZXJlZCBieSBhbnkg
ZW50aXR5IHdpdGggYSBmb290bm90ZSAxIGRlc2lnbmF0aW9uIGluIHRoZSBsaWNlbnNlIHJlcXVp
cmVtZW50IGNvbHVtbiBvZiBTdXBwbGVtZW50IE5vLiA0IHRvIFBhcnQgNzQ0LCBVLlMuIEV4cG9y
dCBBZG1pbmlzdHJhdGlvbiBSZWd1bGF0aW9ucyBhbmQgKGlpKSBzdWNoIGEgY29tcGFueSBpcyBu
b3QgYSBwYXJ0eSB0byB0aGUgdHJhbnNhY3Rpb24uICBJZiBvdXIgdW5kZXJzdGFuZGluZyBpcyBp
bmNvcnJlY3QsIHBsZWFzZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkgYmVjYXVzZSBhIHNwZWNpZmlj
IGF1dGhvcml6YXRpb24gbWF5IGJlIHJlcXVpcmVkIGZyb20gdGhlIFUuUy4gQ29tbWVyY2UgRGVw
YXJ0bWVudCBiZWZvcmUgdGhlIHRyYW5zYWN0aW9uIG1heSBwcm9jZWVkIGZ1cnRoZXIuDQoNCk9u
IDI1LjA1LjIxIDEzOjM5LCDQkNC90LTRgNC10Lkg0JAgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
IE15IGNvZGUgaW7CoGF0dGFjaG1lbnRzLg0KPiBUaGVyZSBpcyBhIHNpbXBsZSB0ZXN0LiBPUyBX
aW4xMC4NCj4NCj4NCj4gLg0KPg0KPiAgICAgMjUuMDUuMjAyMSwgMTQ6MTcsINCQ0L3QtNGA0LXQ
uSDQkCA8YW5kcmV3NDAxMEByYW1ibGVyLnJ1IDxtYWlsdG86YW5kcmV3NDAxMEByYW1ibGVyLnJ1
Pj4NCj4gICAgIEhlbGxvDQo+DQo+ICAgICBJIHdhbnQgdG8gdXNlIHRoZSBYMzAwIHRvIGdldCBh
IHdpZGUgc3BlY3RyYWwgcGFub3JhbWEgYnV0IGdvdCBhIHNsb3cgc3BlZWQuDQo+ICAgICBUaGFu
IEnCoGNvbXBhcmVkIHR1bmUgc3BlZWQgWDMwMCB3aXRoIEIyMDBtaW5pIGFuZCBnb3TCoHRoYXQg
dGhlIGZpcnN0IGxvc2VzIGFsbW9zdCB0d2ljZS4NCj4gICAgIElzIHRoZXJlIGNvcnJlY3Q/IFdo
aWNoIGJvYXJkIGFsbG93cyBzeW50aGVzaXplciB0dW5lcyBpbiBsZXNzIHRoYW4gMTBtcz8NCj4N
Cj4gICAgIFNvdXJjZSBjb2RlIGFuZCB0ZXJtaW5hbCBzY3JlZW5zaG90cyBpbiBhdHRhY2htZW50
cy4NCj4NCj4NCj4gICAgIFRoYW5rIHlvdQ0KPiAgICAgLg0KPg0KPg0KPg0KPg0KPg0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
