Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FB56ED040
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 16:23:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69970384568
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 10:23:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682346217; bh=zvsH+Jbh8cXFY3a4ddoleHUShlqGumnp7uviq6tua0Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=smBxljGeDhkcCWqI8XpIaQRVajnxaARmRlYARwNGjKNIN1YlqGNhaSMOQLZ6+5ON1
	 nCq35Ys51H3Ffotp1l8cL4/DVgOxTDXjhIqR0Bl3lPiuQsN26ilevrbwnr/8w1m3yX
	 IVyYxk6iB867hLIlggyL03/P91ONRVSRZjx6xmOsCMsRPSbta/GU/YU4vqte4GkWkg
	 G2c0u40vtNvNURqDaNFVj/smrwWidWWX9vl76zRtHVU7mSbGI8q0ulym2IRNPv3VeV
	 nD2+6iu0cFlzz16OV9SqLl94FY6/XftakI+/rCjOhvbOqY9JkxjLMva37jIrgY3YHk
	 AicTeCA1ScFeQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 45A6C38456C
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 10:22:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q1+WkoPr";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-3e8b3aed55bso21159361cf.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 07:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682346175; x=1684938175;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u2Kcqylwj1zd8lUmwNw3svG/lDZts/xdGT0gQuHpIMU=;
        b=Q1+WkoPrJYecFFHXz8xapNuZHGaPySxXBzmApoXLrI54vqWms71kDOUxaIpRvjZD/w
         HbcgVm9Smw8pFbpdKRePZtXprdBK9LiHjFzpweKg+4UZvNq33DHMWCw4TxxekZuebgn8
         7MMhHx89AxFI8xxVB97dJt4IG8eKWmlwh3ViabFwWPQGVl52tdbHxKJecST+15gJcGjs
         jPHHrbFf7tq2Z4fmZn53LQi1gIzAPBjMd2Vxaq2o45m/rj0X6/AV/gKbMwkHozMTvJH9
         ba89RzJ45FdPNU96UPN3UJKg/tdP4KNLqgOr1ORIA9nAYrcuCjomY9UJuGS1wxm5ovKV
         QuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682346175; x=1684938175;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u2Kcqylwj1zd8lUmwNw3svG/lDZts/xdGT0gQuHpIMU=;
        b=bX6Ht0UocsR2JvtoNlAsnSozXUWKNwtZVLeoj+4TxJaj0MjxAzw4yCljOUxQBiquSG
         iqkUgk6t//cC9sA2C1kQPK067HXEJ+aqSxZPBFOkLfMf4HAp1UGRY3gdBV9NWTolhRzF
         ICf0QbhyeSD1ULHrPuJuMvNbc1Q7tqro5QRHiDcZR6WjBVUMWaBY+MimEfNl5CdDy7ej
         w7+SN6BXP6XQ7RUk26YLYepPv10MgDTxqzbg7cNAb5aZOjNeTp5XFVnwFd/e2ktT4iSM
         RFAt5kCSGFM+X77PKlYywK3T3KxkszfdWByUcfTDZKSBouOVihDZ0mX4B84UMiJXGKY8
         HnkQ==
X-Gm-Message-State: AAQBX9erFzjPIvkqNGA1kOppzd7/uEs0WADmtSue+vQ/QdJkqd4ctwz8
	E3dnCiysXcsTbpnMz83nFYv5IJie8V8=
X-Google-Smtp-Source: AKy350bu9acfQWCt8mXN/PlTzSZaNMtQu38G05fECEb/R55cK9ez4jGZkow9q/Q2EPuvOEJFykHMHg==
X-Received: by 2002:ac8:7e81:0:b0:3b8:2e36:9d24 with SMTP id w1-20020ac87e81000000b003b82e369d24mr24549800qtj.50.1682346175521;
        Mon, 24 Apr 2023 07:22:55 -0700 (PDT)
Received: from [192.168.2.177] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id bp10-20020a05620a458a00b0074e0951c7e7sm3584250qkb.28.2023.04.24.07.22.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 07:22:55 -0700 (PDT)
Message-ID: <1e958c37-f136-f933-fe9b-ed015b7527f8@gmail.com>
Date: Mon, 24 Apr 2023 10:22:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw@lists.ettus.com>
Message-ID-Hash: R635JB3XKEVYUBX5ASPFDZUYDTYXEODQ
X-Message-ID-Hash: R635JB3XKEVYUBX5ASPFDZUYDTYXEODQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R635JB3XKEVYUBX5ASPFDZUYDTYXEODQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 24/04/2023 09:42, h57jafari@gmail.com wrote:
>
> Hello,
>
> With support of this forum, I purchased and connected through 1*4 
> breakout cable, intel X710 based NIC PCIe card with 10GbE ports to 
> USRP X410 in 4*10GbE port mode. Links are up now. But I can not 
> increase sampling frequency to higher than like 8 Msps. Is there any 
> document to explain what parameters need to be optimized in system and 
> gnuradio code to reach more sampling frequency like 100Msps. For 
> example I modified MTU size from 1500 to 9000. But it seems I need to 
> do more. Thank you.
>
>
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
