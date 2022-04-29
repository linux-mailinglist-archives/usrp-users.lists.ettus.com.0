Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E715155B3
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 22:32:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E72A384BB7
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 16:32:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651264377; bh=Uk9/6MqL/IUE3T2jHmIzYv6qhgqsHx76Wsar4wYrVeM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BZxU2FVN5sfaEO5gKhOvUtx1yhAR7XfIPX8R+hcqnbptixXoW9Lp428J4IqvRcKWl
	 85DzjRKy1jvSMqb7LM1nSWbGjebPGMCQ8bYL9v+dds82whaNfzbxZXrL1Njr6hIQ19
	 BgTzHK62MzFC+0C2/IikWpCcLQMGu9x0wp7FvSGTdhDcehB5uk9mmeWFVlRd/CyJjt
	 5Bx1HeGIlRQXfLIAz/2nsk3ikxOBKLODFeqxR491l0i7icK0ztJCVOmxRnoSZuo0ob
	 KwC57ufN4utBwwyG9GVw/MFvwjFKPri5FUqMa/DjIwBxQaZQdFmVxX6jcy2h00jQ+G
	 Rk4FgBklN4Lnw==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 14B563849F7
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 16:31:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e3wEUL1I";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id k2so199633qtp.1
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 13:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=sWJGUmQC0FT32AxWv6mlg3AiPyknBeYSGwV0G8GeQS0=;
        b=e3wEUL1Ilv0k8EM39pewD2nTMWc/yjiN082fVyCw7ryWpXzSSMcaFuDVUwTmv5Zgc/
         GDG+OzJFxuwB0lnYiA0JHfKowqtCW+yAVLoYwC0qsm/6OeP+oyo8RqUfzyZW2wgGIzNT
         GKDq/NHLMIRqz6WFPLNBoBml6YKB2zgGDphYaGGEvWxNdCVtoFp4STJEysHzDNaS7uy+
         4Q8bZqo0yPRYXJkBaxOGk8tiPtlelafV4Lx6DlypxBzP4WrGh92XYxOTBZXIiqLfqzJT
         tLT8odHGP4TUY8QTTyOx4bgkX1PFNG/2caIra9TXePljVNZ54a5LcH1bopgabBpuD9j9
         1rhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sWJGUmQC0FT32AxWv6mlg3AiPyknBeYSGwV0G8GeQS0=;
        b=edc77s6qobUF2yXH6539YWbDRBF9UxxjxsvKUeMHipaEQblmbzSXn/FSadJbn1tmqs
         ZngZ47UnX44nFRxRAej/GJBFQmOflHBJrIGCzrSEf+Bu79qUdzMbiAUIWcgIVk9G31Op
         fA/0AVp589shpluHHNJfoi7jKLTElSFL7e4GzjJpXqiwZAB5jLMokRRK5c4OXp0l4+Tv
         Tj5P+rOjpwzfupicYUhQ839gm08ftr3nmy7Zd8znfTY3EHvOKaMIpPNW3vaW5ugvp6bS
         G8QCYBE8bQbL46yX5uDfZq0BXznvPDXpf9+A1GUwSZI4hlFJYRRvRZ7j4A9y5inOPfkf
         dZ+A==
X-Gm-Message-State: AOAM531a6gfZrn0MeBSJM5acwlSNe4qX9ma4mqlFz2vBkvheXYNeM15W
	5GAJZ1x8lcLx38U7YUgvEBmdDsWDLjQ=
X-Google-Smtp-Source: ABdhPJxJ7jrwymiYRzFdqEwnCnPSPZ9vFsoF6+pa2+uH6MBrf0boh2jpfcX/3X8IEwUydHyU3xUS0w==
X-Received: by 2002:a05:622a:494:b0:2f3:40ad:fe64 with SMTP id p20-20020a05622a049400b002f340adfe64mr1090595qtx.424.1651264308297;
        Fri, 29 Apr 2022 13:31:48 -0700 (PDT)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id o8-20020ac841c8000000b002f39b99f684sm122723qtm.30.2022.04.29.13.31.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 13:31:47 -0700 (PDT)
Message-ID: <f49e1bc4-5667-8795-0bc0-8efc856b3f4a@gmail.com>
Date: Fri, 29 Apr 2022 16:31:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAxXO2HtAS7+TTxRhHz05fKpD98e7G9AMU7_GLuAL7ogysyY2w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2HtAS7+TTxRhHz05fKpD98e7G9AMU7_GLuAL7ogysyY2w@mail.gmail.com>
Message-ID-Hash: RHDX27SPHTXX2PPVREHEF4CCRHYUD4WL
X-Message-ID-Hash: RHDX27SPHTXX2PPVREHEF4CCRHYUD4WL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd_set_thread_priority fails in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RHDX27SPHTXX2PPVREHEF4CCRHYUD4WL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-04-29 15:16, Nikos Balkanas wrote:
> Hi,
>
> Uhd_set_thread_priority for uhd 3.15 fails in Ubuntu 20.04, with the
> error (31). System error.
>
> Nikos
> _______________________________________________
>
Because your user likely isn't in group "usrp" which is listed in 
/etc/security/limits.conf as being allowed to ask for real-time scheduling.

User your user-management tools to add your user to "usrp" and 
log-out/in again.

This would have been set-up on your old system, but you probably forgot, 
since this requirement has been around for probably a decade.

I often just ignore that warning, since it has only minor consequences 
for performance....

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
