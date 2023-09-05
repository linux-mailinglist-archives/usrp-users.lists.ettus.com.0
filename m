Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDA3792C4C
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 19:17:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FE0C384FB3
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 13:17:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693934243; bh=xhs7yuBblh38nx+C55WS9yFYyXj+QesM2PkaQAKCu8I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eG6PIu6bmMkTB3AawrYMdF+YELqzkjJQl35ML8Gkd2QWUjpIWDJ6Ap91L9kx7Woch
	 sL65HYkI2LpaVrDoVz0eG3tDDfZ8lfof+9JpHT3AyTVYVHuSPqjQj1poVfwvKigzvd
	 W3Tc8lS8gO036mh/kv/E/WQm8s5e3G4tsxlR0LqRox2oLs2ozI+2sHrDXO+AFXhuxe
	 B4ekPJV9fcoPORPkK1ThfkNjcu3bVuNxXFuc24kFsMkx49sQdkqFDBITww0wxb0idE
	 dpzr0VwnCQQl1IuAdcC0ivwDHuHAfrUJHLy9rmlwGfiUmeZnzrlOTvAaRaaWO1e1pA
	 tN+wjiDSPLYWQ==
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mm2.emwd.com (Postfix) with ESMTPS id C1DBC384A61
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 13:16:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ceLGWLXE";
	dkim-atps=neutral
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6bcade59b24so2213877a34.0
        for <usrp-users@lists.ettus.com>; Tue, 05 Sep 2023 10:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693934184; x=1694538984; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3R8TvXWLsZZCJDtOxW+grpYFS4mGmSKFYNg+V6JCH1I=;
        b=ceLGWLXEbOKYd4x/yz9KtoAKIZzNXPJBAaBNrbgh4vpKoKcdplafHWZrIqqArSSwpS
         +HW68ykQz+J+iMxyRtXmjCj2yYtKKd378q+MApj7obZZmyyYaiLQWC+czl7vboJO5C63
         SmYNulrTKge0HpGWqmpPudJuO38irS2er81vPWCwxYPR45NaXCUBtd4D8wZ0LHgWjZdz
         vrHOplvKVD059ucZz9+EjHYfvHGeO2VRJpXIMqEVGoisNwJNVcG9eoCt3SleLPTWq6Hf
         B7DAi2wh8mid262Rd6hupBJnFyWtEROmHyUz8BtzhBIUSUwwzbwMWjUQWcwsfXd9tYva
         MNQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693934184; x=1694538984;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3R8TvXWLsZZCJDtOxW+grpYFS4mGmSKFYNg+V6JCH1I=;
        b=h2Q6fnCxYmyO0E7O72INlEhVQSprWq/YH++T3RYksE0yeZOu21mr1Av+NMmnFmcXDy
         DzAhFlXPKh8BaXaMK5uA3A6E/bWsM3upRLPeWwQYCcYtfbItHkEEgNkc/8aM4i9Hz8ur
         23sGrOUO099hbAGUQFkGZ+dDZlvTZkUqBDLsz2J2hkOQJlK2z23ap39NY4L6o1NC4z7L
         LgexLFXDEeBCSTFH8enWo7psaXhykaFKhPsoyG1xIjoTohMQZ2CpIRjpJZeQ4JLDhNcK
         p8jQx3qcCpYAioAIzt1ISrYkCfG0fr7ZHfwwR3MNIPON7koJi5graNU/SkRVm2LCiZB1
         7pUQ==
X-Gm-Message-State: AOJu0YxK+6rSs1AAEOgi4j2WgJ4+lzLQhK4N/H+JH1qVLJ8wzJGSxWwQ
	fYtx40DNH3e8GdYHGISou6BPIdMyPdrdHA==
X-Google-Smtp-Source: AGHT+IFIqDok/ba+cxHu/7eJ/qp6aUcGxPdQzIGyV50SuLnGwQEdjUnS2GvToC3s5QjKTi7ids8JDQ==
X-Received: by 2002:a05:6830:ce:b0:6bc:96c3:b6ce with SMTP id x14-20020a05683000ce00b006bc96c3b6cemr14647993oto.16.1693934183829;
        Tue, 05 Sep 2023 10:16:23 -0700 (PDT)
Received: from [192.168.2.217] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id t9-20020a0c8d89000000b006431027ac44sm4653787qvb.83.2023.09.05.10.16.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 10:16:23 -0700 (PDT)
Message-ID: <4767ec99-336c-c284-bb57-5632544695f8@gmail.com>
Date: Tue, 5 Sep 2023 13:16:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <S4CPvEXTsOFPH5hlf6EZ2G8pm0kxMopscDQPQNoI@lists.ettus.com>
Message-ID-Hash: 5LXN3WI5F64KK4EKWE6NEXEW2PKKH7BI
X-Message-ID-Hash: 5LXN3WI5F64KK4EKWE6NEXEW2PKKH7BI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5LXN3WI5F64KK4EKWE6NEXEW2PKKH7BI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/09/2023 13:12, blakebaldwin@uvic.ca wrote:
>
> I am trying to get the GPIO pins to toggle when transmitting for both 
> channels on the b210 however I am having difficulties as channel B is 
> not toggling the ATR which controls the pin out. I have gone through 
> the commands which select the different sources and banks to control 
> the GPIOs but usually just get a "not implemented for this 
> motherboard" error.
>
> If anyone has experienced this problem before and has any insights to 
> how to solve it that would be greatly apricated.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Maybe this is an issue with the "Bank" being used?

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a5e1c95bbcd0d62af48852a7048393491


Can be used to query the GPIO "banks" on the device.

That's about as much as I know about the GPIO on the B210, having never 
used it.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
