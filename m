Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB09358393
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 14:47:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16D7B383AEE
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 08:47:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OFE7rKYD";
	dkim-atps=neutral
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id EAB5C3839E2
	for <usrp-users@lists.ettus.com>; Thu,  8 Apr 2021 08:46:10 -0400 (EDT)
Received: by mail-ej1-f44.google.com with SMTP id u21so2768915ejo.13
        for <usrp-users@lists.ettus.com>; Thu, 08 Apr 2021 05:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=GFlu0L+3/1ttAAIgLNikfKl62CF6wyr7M4Spi4masNE=;
        b=OFE7rKYDgrB7J/YluttVfjCk50Iric4i23cbjTNmonVUfFn9nTJOUF0R9ibJLi8i4j
         kaAhDCg0Rg9PFwO25mlKWQfNhDqnZA30GYfFABq+9tRq/1fFfVKdWmhKa34pdTO0hkKT
         0qj5x7MpQ6wDrPXjGvGGBUwinRuOGSQ6me8KhnCqWupPLzUjGxkSCJUGn2P+1R13iqCH
         PAe8fJF8NnMDlo4oJfLwovW2kJQF2lk+RgZoqDhfoO0qSoVQPAn0S6WH+bz47Iw9OYZq
         2PFdSvT4VdMZelfjVD9q+Kg1+28CHGry4Z8rK71KrTmYiLnl/rc7hxw71EI9/L8whRXr
         mvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=GFlu0L+3/1ttAAIgLNikfKl62CF6wyr7M4Spi4masNE=;
        b=VxTk9td2TMe5UMTCsLX/E/9wQaF50sTi2QXbTzfB9i8aqE1Vm7Ph/VwWUtVpJwctil
         M0FSdxeys1aIpipmuxoYgwKHKa67Q9Zkq50N/aE1x3zcAsuf4hyBT+xLd8FnaXCoUo4h
         ga0+G7IfGQuw36fCwqYO4UOEYv8qlBYHu6jk4ORywFpNiBCa1YPnWN+9QRSBd4maH1HH
         vCSdAEH1sqTzgRsFsWcr2E7sWQiO2t2VI8eZobPI9n7aefQugLhmdBSe1ZCNLonMewug
         fuhAvLarOlwV7+cZ/1tHg9eKoW4GGCkHOwEVbcdzZ7Cj83hzw9esFE/aNba0ZmrtNqKE
         PTXg==
X-Gm-Message-State: AOAM5322O/WJcKmQLYACqbuflCJZL7pum5zRwWH3Jj5b0XtPLL0lhFQz
	2rbTokUySCuLJPJTwZCq0wQRj/5wsuZ6Jg==
X-Google-Smtp-Source: ABdhPJxPxNx4QzvusefMVfC7afSrVH2qXMjQxxnwsylw7+KGGT0gnpyqRGbn3k8+oXwquRheOz45Pg==
X-Received: by 2002:a17:907:2cec:: with SMTP id hz12mr2645938ejc.372.1617885969777;
        Thu, 08 Apr 2021 05:46:09 -0700 (PDT)
Received: from [172.18.228.33] ([141.20.217.193])
        by smtp.gmail.com with ESMTPSA id ld19sm14370216ejb.102.2021.04.08.05.46.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 05:46:09 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Vladica Sark <vladicasark@gmail.com>
Message-ID: <42456a74-0a88-a74a-5e21-459680557d46@gmail.com>
Date: Thu, 8 Apr 2021 14:46:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: CGXLA6K5VKY64OLXL6EOGV662A3LXHYY
X-Message-ID-Hash: CGXLA6K5VKY64OLXL6EOGV662A3LXHYY
X-MailFrom: vladicasark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timed samples overflow
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGXLA6K5VKY64OLXL6EOGV662A3LXHYY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hello folks,


I would like to receive a relatively short burst of timed samples (eg. 
100k) on a N321 and get them over 1 Gbps Ethernet on the PC. The problem 
is that I get an overflow condition every time I try to receive more 
than 10k samples. According to the data for the N321, it has 1 or 2 GB 
memory, enough for 100k samples, so this number of samples can be stored 
in the RAM and than sent to the PC. Unfortunately, this is not 
happening. Is there a workaround for this issue?

I use rx_timed_samples for this. With 10 Gbps Ethernet everything is OK.


Also, I want to ask if it is possible to trigger the sample acquisition 
on a given input signal level, i.e. threshold?


Best regards,

Vladica



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
