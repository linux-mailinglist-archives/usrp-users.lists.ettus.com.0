Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C735FC9F7
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 19:36:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5B0E38368D
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 13:36:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665596195; bh=vWlglGS80hyX2foqS7OY6dIvs+0RyAWvWUgt8VB7bEo=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Z3YhRVu2W4vdc6Ydb3FQlqYYtdbw+0hgtm6RDyxEYnXe7J4+9gJNRmT4lv6RWE2QI
	 d0dJZwZOr2dnX53QcNsnNds19oYmDYFdr2obWD7iMA3X1J6eRmcYYcXtN2B7N2vRo7
	 WEswZeiQJ2+GrjDh3J0B7agkLBFiZI0Mr9UPSGSmkP7VdguuBvPicxHPRYbGOshq1I
	 fubX7lIIJISFd/KLORZ1/YQYlGGwJHaf/h6oA/T9TiscIJD7hkuZk1gp/5qbgMVI0R
	 vqOCssyLJ8XTUgij4mi88zR8LX/y459dA4A6uwW/CSFIz3ww2F1EzxcjU2jZBR8vjB
	 yKR9cnQDEbqAA==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id B3CCC3809DC
	for <USRP-users@lists.ettus.com>; Wed, 12 Oct 2022 13:35:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="xYW12Yu7";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id b2so39513224eja.6
        for <USRP-users@lists.ettus.com>; Wed, 12 Oct 2022 10:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4+2NTFCskTIWxUzA9PCutWDND5PxTUxQKqexzbE0VA=;
        b=xYW12Yu7AyXLrG3hiHqWGBJ8CJG84lxW7sdrLSEjSnyLfoDWztAQQX8944r0zFm7Iu
         p6aEzuI6PuwNvIp1LQow5gI8y0nWtRv9tdyn0DjT0NO5OEWK02vJtumKpt3oxgDVIaEN
         kO4UQjxMcY+ZkRFUPMULUEptWytIut7G4mNU1nBOPiubvTU4Q7jDnBEzfnmrk5Cm7EkH
         tWMZnv/z+s9u/tb5r4h38K5WgiaoBqyoHGuA6uyKqaSlC0IDfZXPTXf1EBm2e+Ylm+lq
         BPCUDrGVXHV1LqxavKIAS0bukBmPAQuVFKMPQ51ylImvBRLaPIuMSboB/ih2EdcramVH
         7jEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E4+2NTFCskTIWxUzA9PCutWDND5PxTUxQKqexzbE0VA=;
        b=4Q0DCyPaaoqxHlMUdH+4oO4yjKH+n4ZM4X/KOFwracjMKVYQoaKJ7q9XfhcV0cDU4j
         S2T9K3hXs6o1j6ZKnW3N+JvY9fBEsnBLl2nkDGUqm8/DaXeLr+ajWpD6axvTCnwITGMh
         kfSiHSLza/dqXxKCT2yHZ352Yn2lqchjhMQ9ZZYqRh1Ql8E/q3aFaVFRwIvJZmRVdL6U
         VN/cOES/IpojtLqSpH7Hgajbvv6uVBpUltndtGhkePRdYlpiY0Ad6w8sSCM0uqfyCbt7
         Q67on0lkrXouTNOR2KNKdZr48kB57ysNrE+4ECHtAUCdWrN0jXfr664wPB4ix25+sE0t
         aT1g==
X-Gm-Message-State: ACrzQf309z/vYSYSRlCZ8qJL2+PyvjdPZu3RIKdJpyIwALkQU0/xvxjd
	OMXs+iriHmNAEb8m1v2XlMZefxypqu5SgA==
X-Google-Smtp-Source: AMsMyM6qwMkJYV+hR3HqbDNrXM6NvyZOQAMs6HwlBh8Fb/qLl1yS0NlmZRApC5h8wajb8ixmO1VhpQ==
X-Received: by 2002:a17:906:eecb:b0:73c:5bcb:8eb3 with SMTP id wu11-20020a170906eecb00b0073c5bcb8eb3mr23312319ejb.284.1665596123168;
        Wed, 12 Oct 2022 10:35:23 -0700 (PDT)
Received: from [192.168.1.21] ([151.21.50.101])
        by smtp.gmail.com with ESMTPSA id h8-20020a1709063c0800b007708130c287sm1629517ejg.40.2022.10.12.10.35.21
        for <USRP-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 10:35:22 -0700 (PDT)
Message-ID: <4d7ce11b-5510-761c-cce3-105d790bd3af@sma-rty.com>
Date: Wed, 12 Oct 2022 19:35:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
From: Federico Civerchia <federico.civerchia@sma-rty.com>
To: usrp-users <USRP-users@lists.ettus.com>
Message-ID-Hash: UDMQWKOSWPRWRP3KNQ44TGYKQDMPX4EE
X-Message-ID-Hash: UDMQWKOSWPRWRP3KNQ44TGYKQDMPX4EE
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Late packets performance Issues on N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UDMQWKOSWPRWRP3KNQ44TGYKQDMPX4EE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi community,

I am using openairinterface to perform some tests with 5G SA. During the 
test phase, I can see a lot of "LLLLLLL" (most of the time hundreds, 
sometime thousands of these) from time to time. These late packets do 
not represent an issue with lower throughput, but if I try to send 
downlink data at 150 Mbps or higher they cause instability in the 
system. Thus, I would like to understand more in depth why they happen.

My setup is based on 1x N310 connected to a server equipped with 2x 
Xeon, 12 cores each one. The link between the USRP and the server is 
based on 2x10Gbps optical fiber interfaces. The device is connected at 
3.5GHz with MIMO support. I am using UHD 3.15. I disabled 
hyperthreading, C states and CPU frequency scaling. I also tried with 
low latency kernel but anything resolved the issue.

Could it be possible that 2x Xeon cores are not able to handle samples 
fast enough? What could be the reason of this behavior?

Thank you.

Best Regards,

Federico
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
