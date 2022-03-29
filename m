Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F534EB27E
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 19:09:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27902384A48
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 13:09:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648573757; bh=pUIYBt+Nh+8uKBb2UbZSBjOxwoalp8vpSKMyijpRSuA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jTzOCQ8OEHR/bcRRUX0ywKEHtYOFu/Xc2dMLTharDK9IV0aTFvFqy+WWp+5Je4NVn
	 KA6cRd24ctXJki2DVwxVE9y859aIUCPPTb+8fig8Ciaij/QkuFK+Lq0WoeTuSRRBBd
	 nAMsbLtqKHAUXEoEP+TS/Ua0O0CuuuSQ+CjR4HPquomv5vYUMqnY9xhq7LzjPjxL+H
	 teFy05wK2S9BHbRPYdtWAFx+bDa16kHstatXtQ9yc5WmxzoyrLhF0NA3COwb+Qaggv
	 kMeCjmeQrilSAIDYOQBFTESrlAoA8EGn5Y8l7YbLtG8yw9Q2FUzDWuvJGkfLi0po7O
	 ugDY7a0sda2AA==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id AA303384229
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 13:08:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Pcjx/Nun";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id 10so15818654qtz.11
        for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=nidncLRHh2W7RSteI/wb4+kDW4bwKaboUpJOg15RgKA=;
        b=Pcjx/NunywLcLnQWPUFT4bPcY2RpJJnlu2DTN+BsX+kbqo9eJ+TdvUYlzmfzZ6262T
         APcVC7gd9i9Z81Kj/YBhX2e0bLrbLpU49/A5EKBkaMLJGe5FeXEYk7h+fsFH8aogY++5
         /Xczt1deEdqZSTbgYpvyyEf/ETXd0odw63sHEPfasoy+dKKcDZslHbcLidxYMj2iqQS2
         MkP0Ynm7I/KMpRhYX7o7kpqtHzJYYhOJaZAd/ZnbYNhL6jxKFJHgKK6653N7ZfU5g3Y9
         ICGhrChx9URFBiRGKM3hmpwzfzzjT2WqJ1Lf9UsdUPXGZVYdKGKEF7UpXyeSWx7i7+sz
         rn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nidncLRHh2W7RSteI/wb4+kDW4bwKaboUpJOg15RgKA=;
        b=iu36vNmYiIR2FnjRtKjVhWb8cgK9APZoeqHdDwW3Ay6xfTTwMzXKgRPnbivS5MRu6B
         mWj6l5FbAZYSzIkmlNhrZTKceBI+F0SsTHt6P2c+cwP/Zs7shPY5IvLH7NTLkJK1J75R
         VVmR0d7Tm8gRcKXbE6JILqayOXb4gM8ZA9Md00I/Ef+HPCusvtXmdg5+42OaCzC/hdeW
         +ZlNVmphznWEgvPJXvvooJmRY+bRgAAGMhSqfDK4VauwaNphyBSkpidYvPSLPvkhN8WP
         dSuupSXfavVk0InMLIi/9Ry4tz9zWTYA1hInyvRZp5i6u/gkWSI0OAmhW3Dh3ErSCn60
         CTDQ==
X-Gm-Message-State: AOAM532Tc/PSoxV7UxqrM3/RuOhsAqSrVXElam/Cr+k60wmd9yTT0Lo4
	dLLfz9nTKtl4PcVOghR3z5eCHVx/Y2w=
X-Google-Smtp-Source: ABdhPJz0OdG6NL7ByrNKDxZa1ZLuyuNS2Wns00Exe+jPoL/4A/PZmt11jXuX4qvX1g1kwPvxq34IrQ==
X-Received: by 2002:a05:622a:2d6:b0:2e2:1294:4a80 with SMTP id a22-20020a05622a02d600b002e212944a80mr28771800qtx.256.1648573697887;
        Tue, 29 Mar 2022 10:08:17 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id i17-20020a05620a145100b0067dd2587bddsm9730052qkl.24.2022.03.29.10.08.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 10:08:17 -0700 (PDT)
Message-ID: <ebe95e87-1997-dfd8-696e-d0a399990f90@gmail.com>
Date: Tue, 29 Mar 2022 13:08:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw@lists.ettus.com>
Message-ID-Hash: 5GQNQWWPKOAM66DLQVQGNV6LOQGTRBRQ
X-Message-ID-Hash: 5GQNQWWPKOAM66DLQVQGNV6LOQGTRBRQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5GQNQWWPKOAM66DLQVQGNV6LOQGTRBRQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yOSAxMzowNSwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBNYXJjdXMg
aGFzIHBlcmZlY3RseSBzdW1tYXJpemVkIHRoZSBpc3N1ZS4gSSB0aGluayBhdCB0aGlzIHBvaW50
IG15IA0KPiBiZXN0IGJldCBpcyB0byBoYW5kbGUgaXQgYXQgYmFzZWJhbmQgaW4gc29mdHdhcmUu
DQo+DQo+DQo+IEnigJl2ZSBiZWVuIGRpZ2dpbmcgdGhyb3VnaCBBVlggaW50cmluc2ljcywgaG9w
ZWZ1bGx5IEkgY2FuIHdyaXRlIA0KPiBzb21ldGhpbmcgdGhhdCB3aWxsIG1lZXQgbXkgdGhyb3Vn
aHB1dCByZXF1aXJlbWVudHMuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCllvdSBtaWdodCBsb29rIGF0ICJWT0xLIiB3
aGljaCBpcyBhbiBleHRlbnNpdmUgbGlicmFyeSBvZiBTSU1EIA0Ka2VybmVscy0tdXNlZCBieSBH
bnUgUmFkaW8sIGFuZCBJIHRoaW5rIFVIRCBpdHNlbGYgdXNlcyBpdCBmb3IgYSBjb3VwbGUNCiDC
oCBvZiB0aGluZ3MuwqAgVGhleSBoYXZlIGEgImdlbmVyaWMiIGludGVyZmFjZSwgd2hpY2ggbWVh
bnMgeW91IGRvbid0IA0KbmVlZCB0byB1bmRlcnN0YW5kIHRoZSBpZGVhbCBTSU1EIGluc3RydWN0
aW9ucyBvbiB5b3VyIHBhcnRpY3VsYXIgaGFyZHdhcmUtLQ0KIMKgICJ2b2xrIiBhbHJlYWR5IGtu
b3dzLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
