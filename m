Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2523F620F3F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 12:38:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21C2D381286
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 06:38:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667907490; bh=i1ooc+GOnAkFv4BHQobsnpKNVa2KI6zVU+y651S1dhY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r4sQFo7VZVJNYojv3jHH+XlZSOFoEJf9rOUGTFlYfq0sxZ96fKkAa5uN5LkuXUxeU
	 hhDO/3rbMsYiAxGWN7YcfUu5i93BdbPrTPnLcyr8WVqeeQ/rJxbTRq8zWt79j/uTbi
	 40owSxfzS6/EsMKbP3Q711wjdWFVyGO3iXANSyWyEU0qCJVJQv7HA8sgZD8GYjglcm
	 QxfxKI1yXRHtBnDjNN0qeZaGdrPRWMMJHQHKWZgsukgt/zCekKmv5Cl8wB/Nk8R5I8
	 Keh5L4GZzCvTjRrYq9FVzSHw78r7j/jOxz8YRSy6+rje26fmwMkYKE94WL5OrbrTY4
	 MtviksNy2V9rw==
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 59FAA380E85
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 06:37:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="rzJpGmEg";
	dkim-atps=neutral
Received: by mail-wm1-f48.google.com with SMTP id v7so8646748wmn.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 03:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KPY59wl/OCeBWHN+KQ2/6qrVWq4jtRr4/5h7CrcQjwY=;
        b=rzJpGmEgAIbZmUxMkDToygL6qNUXp6LpeYjZRTE2TqQU3zrB7OnMQ2CqOxjMLfy+ZS
         I2wDuyoWYaUCSnA7HrqLwgfVVcF1OFFy6eMCQh/yEMQpCsHZul4vWU20m25UBNbIK1ze
         wdC7HVYfxXz81ZfamDhdUt6q4O+TNOSCM3A3I88S54bQUFR40fulPcbpn14OJKVB/vOB
         XIkXfSXdapGg44MDliYLkPWRqLcd8AxigSmZxg0+VCQbBGKJgUKu9e5tOCHFFAL3L2Mx
         W594+MwvOJ53h4DTO6EB+CNddFv6vC/uHM415eVuVKsKUloCtX4y9Td/G8Jmw53eUSyS
         aMGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KPY59wl/OCeBWHN+KQ2/6qrVWq4jtRr4/5h7CrcQjwY=;
        b=ITG5Oko6Ttk5qu1vqeMdxEF6ayB6GdWzk2z02JTO5EbztTH0dAyodOiCtM07h2lujv
         976FYyKPD9TmGgYOyrMYzMrIsuN77ruvLR32CM8xxT6ee4KATYqZm9GWS7zDpJsh+JSo
         n56bNihtvTRuFtBH+Z+JnjDuhbFXmGJzSt6EYniXH+8CaeFVD5uPxIOI2Yc7kW17tuyl
         0oaP+CnbDzQHEOtE35HKIPNaU+5N0orhgLqqDtFtnAowc67f7PMxMMVJcOpEzyElgNRV
         ouixhFcsM3OGOal/p4d8FF4N6wkjflOSlGLXmpxG46DADDuNLzOVLPKzRdLHvy43TetM
         jBYg==
X-Gm-Message-State: ACrzQf0CM30JOStJPSFQJxLzoT8ADGV4LIXue//JK85Mn7+4o5sDpMhn
	MCPjyIZjsJA/pAHWvSgE5r5fV02ly7jCaDCy
X-Google-Smtp-Source: AMsMyM7wT2TLuipbljIlBwgglQjcvMQzvMmHEITc9cesRUinJmTEBGwUGs9GVUSK4HOSB8cQDoOsaA==
X-Received: by 2002:a05:600c:29a:b0:3cf:8e62:66f1 with SMTP id 26-20020a05600c029a00b003cf8e6266f1mr18889723wmk.39.1667907439887;
        Tue, 08 Nov 2022 03:37:19 -0800 (PST)
Received: from ?IPV6:2001:9e8:3843:4500:5bc8:3cc3:e10b:748e? ([2001:9e8:3843:4500:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id v18-20020adfe292000000b00228dbf15072sm10044172wri.62.2022.11.08.03.37.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 03:37:19 -0800 (PST)
Message-ID: <fa78104a-bb25-a9f4-7571-62722df10075@ettus.com>
Date: Tue, 8 Nov 2022 12:37:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MsPwkx0fCEEn8A7uUckBaWHUmFhePQWsBOcA6Fl9yTg@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <MsPwkx0fCEEn8A7uUckBaWHUmFhePQWsBOcA6Fl9yTg@lists.ettus.com>
Message-ID-Hash: 4DP435LLMD5KMYVEMMXD5XT2Q2Z52DAJ
X-Message-ID-Hash: 4DP435LLMD5KMYVEMMXD5XT2Q2Z52DAJ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4DP435LLMD5KMYVEMMXD5XT2Q2Z52DAJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Probably, the device is programmed to use a different IP address than you think it's using.

See https://files.ettus.com/manual/page_usrp2.html#usrp2_loadflash_brick on how to use the 
safe-mode button to temporarily set a fixed IP address. Do that, use the address to 
correct the programmed IP address to what you expect, and power-cycle the device after.

Best regards,
Marcus

On 08.11.22 11:43, ali.mahbas@brunel.ac.uk wrote:
>
> Dear all,
>
> We need your help to solve an issue we having recently with one of N210.
>
>
> N210 - It works (the fan can be heard and some of the LEDs are on (please see attached 
> pic). Unfortunately, it is 'timed out' when I ping it and it is undetectable (I tried 
> both Windows and Ubuntu). Could you please help me to solve this issue.
>
>
> Thank you in advance.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
