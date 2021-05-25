Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF39390009
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 13:32:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84268384338
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 07:32:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="uoc47TEx";
	dkim-atps=neutral
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A2441383F81
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 07:31:39 -0400 (EDT)
Received: by mail-wr1-f44.google.com with SMTP id i17so31823341wrq.11
        for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 04:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=0FvZ9kt0ZrR8kfbfoSBnXPfmZL+ed6awKkpZGcpZT88=;
        b=uoc47TExpW0Wc98K29mOTPljk+s8+46WfrRWeiBn8GuLnlTA4I4npTcrQK/FKYXr6w
         p7wnkobyl7yPU+cB4PkWYbhvh/gJs+481AJY+z4hsXp6DmQOYXCdOahIzQg0XXjV44tO
         ySJI6UsRG5HzjCu3LRASR6k1v93tTyTncQ1DuHHQa5Hp7bgsANnBNTjuv3YC23wruWHv
         s0haliX72G/GWuDwoRACQM+Cp6OKRK5pQ7lhM4erghDLxd61TgczBotmRds63hFMqOYx
         TLaQs0lvRaVS7KhLNwWX72JP3E64VUaluVCVLRJJeQddrfMMciFwHZhkpoJcLOafUyjr
         QFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=0FvZ9kt0ZrR8kfbfoSBnXPfmZL+ed6awKkpZGcpZT88=;
        b=hDW7/e/dJ66b165n4TgE7oR66gQu43XioBbJFIWSgVov0m2+BpUrFrIHTuIBFTGmQE
         aF9ZGeE/+mDLdW3NMS9uyj2x3ZoYstkB26ZLFhUHwYN6ziF/C6rbl/22CKhUPNMgvjiD
         Ld1Wosyc2COBHSkb2zUEYObIdYpyDq1nipYJl4bZE8Ll6p7+joA8X0cmSZ5LhI/u5HE1
         8Xa1jXomDAExXaPsb0ej8vZBmMeOD9uJNNM9Lm5M0OP/9R6fmYV2gA1rf8IqRabMUvhk
         nshQxfo3F4GQfQq0n7423MY8JN0jofzLO1Cpi2WZ5gxZAcevSpKULpsc/2FspRAhWXes
         lEng==
X-Gm-Message-State: AOAM531YO7IeMQN3aRxlRi2vWIdsUsJXMToSToQbWYkwI9f3oh6Awdzc
	0DLCtW/aiEnyru4hPS5U0P8wKyt8EwQFEB1b
X-Google-Smtp-Source: ABdhPJwRvq/0Q2bYxDETwoEdPEtYQLG9kiGIZlzL/E/Sf+GSSaqWFcCTB2Qz7+iIk5uOz6IrGF6A7A==
X-Received: by 2002:adf:ea89:: with SMTP id s9mr26578517wrm.205.1621942298406;
        Tue, 25 May 2021 04:31:38 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id g11sm15678422wri.59.2021.05.25.04.31.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 04:31:37 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <d2887c78-9650-5426-bc1d-d658ecc5e9e3@ettus.com>
Date: Tue, 25 May 2021 13:31:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
Content-Language: en-US
Message-ID-Hash: 3FLZX2OGTORBBAOI3ZMDYRQWLFNN4TZQ
X-Message-ID-Hash: 3FLZX2OGTORBBAOI3ZMDYRQWLFNN4TZQ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3FLZX2OGTORBBAOI3ZMDYRQWLFNN4TZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8hDQoNCkFsbCBkYXVnaHRlYm9hcmRzIGZvciB0aGUgWDMxMCwgYXMgZmFyIGFzIEkga25v
dywgYWxsb3cgZm9yIG11Y2gsIG11Y2ggZmFzdGVyIHR1bmluZyB0aW1lcw0KdGhhbiAxMCBtcy4g
VGhpcyBpcyBub3QgdHJ1ZSBmb3IgdGhlIEIyMDBtaW5pLCBvbiB3aGljaCBsYXJnZSB0dW5pbmcg
c3RlcHMgY2FuIHRha2UgdmVyeSBsb25nLg0KDQpBcmUgeW91IHVzaW5nIHRpbWVkIGNvbW1hbmRz
IGNvcnJlY3RseT8gSG93IGFyZSB5b3UgbWVhc3VyaW5nIHRoZSB0dW5pbmcgdGltZT8NCg0KQmVz
dCByZWdhcmRzLA0KDQpNYXJjdXMNCg0KRElTQ0xBSU1FUjogQW55IGF0dGFjaGVkIENvZGUgaXMg
cHJvdmlkZWQgQXMgSXMuIEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQgb3IgdmFsaWRhdGVkIGFzIGEg
cHJvZHVjdCwgZm9yIHVzZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5c3RlbSwgb3Ig
Zm9yIHVzZSBpbiBoYXphcmRvdXMgZW52aXJvbm1lbnRzLiBZb3UgYXNzdW1lIGFsbCByaXNrcyBm
b3IgdXNlIG9mIHRoZSBDb2RlLiBVc2Ugb2YgdGhlIENvZGUgaXMgc3ViamVjdCB0byB0ZXJtcyBv
ZiB0aGUgbGljZW5zZXMgdG8gdGhlIFVIRCBvciBSRk5vQyBjb2RlIHdpdGggd2hpY2ggdGhlIENv
ZGUgaXMgdXNlZC4gU3RhbmRhcmQgbGljZW5zZXMgdG8gVUhEIGFuZCBSRk5vQyBjYW4gYmUgZm91
bmQgYXQgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3Nkci1zb2Z0d2FyZS9saWNlbnNlcy8uDQoNCk5J
IHdpbGwgb25seSBwZXJmb3JtIHNlcnZpY2VzIGJhc2VkIG9uIGl0cyB1bmRlcnN0YW5kaW5nIGFu
ZCBjb25kaXRpb24gdGhhdCB0aGUgZ29vZHMgb3Igc2VydmljZXMgKGkpIGFyZSBub3QgZm9yIHRo
ZSB1c2UgaW4gdGhlIHByb2R1Y3Rpb24gb3IgZGV2ZWxvcG1lbnQgb2YgYW55IGl0ZW0gcHJvZHVj
ZWQsIHB1cmNoYXNlZCwgb3Igb3JkZXJlZCBieSBhbnkgZW50aXR5IHdpdGggYSBmb290bm90ZSAx
IGRlc2lnbmF0aW9uIGluIHRoZSBsaWNlbnNlIHJlcXVpcmVtZW50IGNvbHVtbiBvZiBTdXBwbGVt
ZW50IE5vLiA0IHRvIFBhcnQgNzQ0LCBVLlMuIEV4cG9ydCBBZG1pbmlzdHJhdGlvbiBSZWd1bGF0
aW9ucyBhbmQgKGlpKSBzdWNoIGEgY29tcGFueSBpcyBub3QgYSBwYXJ0eSB0byB0aGUgdHJhbnNh
Y3Rpb24uICBJZiBvdXIgdW5kZXJzdGFuZGluZyBpcyBpbmNvcnJlY3QsIHBsZWFzZSBub3RpZnkg
dXMgaW1tZWRpYXRlbHkgYmVjYXVzZSBhIHNwZWNpZmljIGF1dGhvcml6YXRpb24gbWF5IGJlIHJl
cXVpcmVkIGZyb20gdGhlIFUuUy4gQ29tbWVyY2UgRGVwYXJ0bWVudCBiZWZvcmUgdGhlIHRyYW5z
YWN0aW9uIG1heSBwcm9jZWVkIGZ1cnRoZXIuDQoNCk9uIDI1LjA1LjIxIDEzOjE3LCDQkNC90LTR
gNC10Lkg0JAgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEhlbGxvDQo+DQo+IEkgd2FudCB0byB1
c2UgdGhlIFgzMDAgdG8gZ2V0IGEgd2lkZSBzcGVjdHJhbCBwYW5vcmFtYSBidXQgZ290IGEgc2xv
dyBzcGVlZC4NCj4gVGhhbiBJwqBjb21wYXJlZCB0dW5lIHNwZWVkIFgzMDAgd2l0aCBCMjAwbWlu
aSBhbmQgZ290wqB0aGF0IHRoZSBmaXJzdCBsb3NlcyBhbG1vc3QgdHdpY2UuDQo+IElzIHRoZXJl
IGNvcnJlY3Q/IFdoaWNoIGJvYXJkIGFsbG93cyBzeW50aGVzaXplciB0dW5lcyBpbiBsZXNzIHRo
YW4gMTBtcz8NCj4NCj4gU291cmNlIGNvZGUgYW5kIHRlcm1pbmFsIHNjcmVlbnNob3RzIGluIGF0
dGFjaG1lbnRzLg0KPg0KPg0KPiBUaGFuayB5b3UNCj4gLg0KPg0KPg0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
