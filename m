Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B63621408
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 14:56:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BA7A3813E4
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 08:56:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667915801; bh=VsGBd6WGA2jFHTwdT5MAs7N2JJDTsLYqouZrw3Cv5Pg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cn6rhD/y+1Z09ma9MT86CM47FVKnYjFaFZXRVPR276OsEpDZumohKzkeqAUKBvQDW
	 sntLyuVlx+E4Dv4IeDPnCb+Dhv+NPIP80tyEZ8JqYFRGt+KcqQt4qZ21l6t7Nq7PEQ
	 iP0Fur84lit9ypGF/Kk2R4PGBwxumfjEkjsVJKBFcCqXvXAOjg5ecsNwtBw3BB/3Z9
	 FTo0jOgCwcKczXMGOjb+oAu7rTx2WpBpOky57iiD11Dv/oh1zfi5INdCP17UKO9M0+
	 dcsBjI6fHy8+SldHGy403Tcgug7hHb959q04Fou9X01Pl7P6Xqnm26MRkcH/79Lj4G
	 7QP/TH2n/YUGg==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 14EDD380DD2
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 08:55:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fKFne7eD";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id s4so8658218qtx.6
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 05:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZC7pTPkO35PN3fcYKpi3sQDNqy9rCWF7YN0ykq9G/5c=;
        b=fKFne7eDSHeg+q00n3e6zIXuK7KQiGNOGSX4Wfhvp50ozA58q33kg2ZYw6pMFw0v4u
         gSVB/ZxLQ3XFcoXap3m2IpYZPb8QEf6m2A93/fyBb4RPWETiX2LTcg0wEU2npkhLVk0S
         ER2vflhDkDFy03/mbKwLOoA9YgYIVqunEYZoCS7Up4i1HCO23pIA+6t1C3OqnInUdWD7
         MNl8qnD9E/UlQsh8UeCt3iwei2SetOUatGcDNe/fd68+a/BcBdEl8CB8qIhpUtOdg/3D
         cspF/Rj3e8vCfhJew37WKJbNeafNPknj3BAcw1usE7Dm8ZRMWO8eCnU0Cb4n6EMclt2T
         C+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZC7pTPkO35PN3fcYKpi3sQDNqy9rCWF7YN0ykq9G/5c=;
        b=YT1DDVUUl1aLCYavrAVePMPwcgVdm60JUAMWW5U5BPeMuvGoTrBGMYBoLugcN35fi9
         hal3i/Q+fTz1xC2ULUHoO4q9ElRCXUJypDlamBmWE/ZUGo7OMzHQXolKSuS1U4kY9MvI
         EytNa8IckZ0CROJXVaD5fb/ovylzwX33OqlXxeelezcgaWv7+MXn3iJt3I/+xnBweeGY
         C31DysE5bCtyDcKx9nRUsDG+KOyHZUgdmvPW5iRWxZN9aR5pghZjLN1+vYa1jBbvkpY2
         rQQ45COiW7heFBlbvYdESQDaiIfIQZQ8xLfbhzPnpmoEO/SppR06LqNg5LeJm2CB4EDA
         WzTQ==
X-Gm-Message-State: ACrzQf3FPJUmvBEZzFJ6uQHoQO7fN+0MxsMxQTNSv4JTfdo9JmLk1Ro4
	DdzbuCShFAj6tCewx2/SeWjnsxGq2AY=
X-Google-Smtp-Source: AMsMyM6PZUBrl6SX8Zk7LPaLiTfuYOSLcr10Xh3bXBxIM2e2AzgsjAAt9BsXx8d/XOqtSqPzk64e2w==
X-Received: by 2002:ac8:5948:0:b0:3a5:23b9:1e19 with SMTP id 8-20020ac85948000000b003a523b91e19mr36868516qtz.194.1667915748398;
        Tue, 08 Nov 2022 05:55:48 -0800 (PST)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id bm26-20020a05620a199a00b006ed138e89f2sm9173090qkb.123.2022.11.08.05.55.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 05:55:47 -0800 (PST)
Message-ID: <8e7afdc0-ec28-79f5-dec7-05f029da605d@gmail.com>
Date: Tue, 8 Nov 2022 08:55:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg@lists.ettus.com>
Message-ID-Hash: VK2IPDLI72IXERL45O5O3MK4ZAINEBGX
X-Message-ID-Hash: VK2IPDLI72IXERL45O5O3MK4ZAINEBGX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VK2IPDLI72IXERL45O5O3MK4ZAINEBGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/11/2022 06:42, ali.mahbas@brunel.ac.uk wrote:
>
> Dear Marcus,
>
> Thank you for your reply.
>
> I thought the NI-USRP Configuration Utility would detect it even 
> though it has a different IP address.
>
>
Only if it happens to be on the same subnet as the host that is doing 
the query.

I'd take Mr. Mueller's advice....



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
