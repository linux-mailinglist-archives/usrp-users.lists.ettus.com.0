Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B8E7D0565
	for <lists+usrp-users@lfdr.de>; Fri, 20 Oct 2023 01:31:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C90F0386A19
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 19:31:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697758309; bh=hkF37AbLAcNbJRHJf8RBM5q5atv9f4l8mbMshv9X4H8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A+rtJ84diEH5AjrhpggzV8Z8af7nPaVNLMzktifZt+GLQPXsv6Z94eH4UdVwM0/xM
	 sCU48AOiUHpWEoytXRvla1SZ+xw0fFEevDHoRe3xGckp+ZT9iGZXiWWBKIH2sAi9sX
	 U4W8tAF/OzlxDQJx3GGkcIImTpiNJnp59bE1FhyXzf5j+RCV8HE6GEqwiaja0g2Aet
	 U8szBAtg0sGuc38qzoUgvj/cOLQHBYnsChIUjI44Nz+D+p5uu7qhfVA7dg3TGGJlvq
	 3vvC4LHqDOTsJ68+eTfeiwENbOZMMID7dxTYCBhN5YXSeXt4GO/+EpXg34A9wE6Bv7
	 BMjrVBe4h+JNg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B87C38545D
	for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 19:31:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UYgmHBWA";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-77896da2118so11724885a.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 16:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697758293; x=1698363093; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W8osANmR8Qv+bPpMvxaGvLyh4ZEr2Z9O2F7hi6d7qCY=;
        b=UYgmHBWAVlXUPgVjAr7+rCUsvaDyFN9HTdMGIqnbvRTVZLoKVxuaahj2n12YwS4W0B
         5I+k7i9yivdCABQtXKXAELuypgzvO/JkmyG/A+SGL3YQ78JGFgNhO11MUoo9bPT8jrbs
         irAglg+rM5m7EoMquDld9o2D83/ahWGjdwzuXdobr9kXussn4cQsCMbw3BMb7iZ/3GQo
         zSwN2K6szqagU6djRCmRY7a+Xb2nM7BRGxhfsBkyjSdxWmD5Jbx5bjdMrUgqBX5F/LXG
         IaLXztyPJX24qW6ZAG0UqsXQ/WVNXN0yhyAEmvh/0f6VZcV2xN8MiK9Q3onw+Ly2oY27
         DjPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697758293; x=1698363093;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W8osANmR8Qv+bPpMvxaGvLyh4ZEr2Z9O2F7hi6d7qCY=;
        b=bZka94NfUOQQDUuMx304PesxGMnXktC8c9phNW7FFlL0jLc54OhGBg9Rgdm5NlPAFW
         Q5QIZHfUXeMtuufdx0XAUq3JaeaITZ98logYPlFNpcVWTnWywMq8/C050aooxYyh/Bbl
         RhBg8SKdXeJTcZDzOI6K8rLNImyPd+/bJaTaozMSz+XYaJZJ7EDdg3fWq6iCnt0t5fuC
         N9nkuS4GaIU2UonHBY8aPJZeL64CHUqd06/filc43JXBM0gra5kylyEkUFqlCQKf2aQI
         b2agnkPo+loe8VtvS2DTLa6qaSHprn5oNNpE/AzT2xPcUlmTW1+775H6iQGz3Q2f/8wh
         Bwew==
X-Gm-Message-State: AOJu0Yz6IERgGcqGHZ3KxunLB51vemyaG0XplcB3p0XRBc/Eaz8mgDKy
	nlsDZGlzqZYJyg8No7amUitkMp+Uf4o=
X-Google-Smtp-Source: AGHT+IGczVfA/QL+Q27C/6ERIsEyyreFQERWvD/371U5Wp1TAcFBfJiSW/2iypVQaxgUOe3E07kIvA==
X-Received: by 2002:a05:620a:4144:b0:773:f6b6:4085 with SMTP id k4-20020a05620a414400b00773f6b64085mr186643qko.54.1697758293362;
        Thu, 19 Oct 2023 16:31:33 -0700 (PDT)
Received: from [192.168.2.200] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id v10-20020ae9e30a000000b00777611164c6sm179105qkf.15.2023.10.19.16.31.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 16:31:33 -0700 (PDT)
Message-ID: <1248e585-9261-495e-ac0a-ae8f8a0d98aa@gmail.com>
Date: Thu, 19 Oct 2023 19:31:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAMhTvwvj+UiwCJ-PGSDhkTnK7dbk9-GHgfPMfn-Q132PKV_rFg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMhTvwvj+UiwCJ-PGSDhkTnK7dbk9-GHgfPMfn-Q132PKV_rFg@mail.gmail.com>
Message-ID-Hash: T2GO3XQ2PBWHNAHNSZY7V2XZOV6PYJNY
X-Message-ID-Hash: T2GO3XQ2PBWHNAHNSZY7V2XZOV6PYJNY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Errors Running Cal Commands on SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2GO3XQ2PBWHNAHNSZY7V2XZOV6PYJNY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 19/10/2023 19:15, Michael Toussaint wrote:
> Hi User Group,
>
> I have been having errors running the self calibration commands on the 
> N320 SDRs.
>
> Attached are screenshots of the errors.
>
> Has anyone else run into this issue?
>
> Thanks,
>
> Michael
>
What happens if you run it from your PC host, rather than on the N320 
itself?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
