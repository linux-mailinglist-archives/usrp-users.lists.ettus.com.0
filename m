Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DFC319339
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 20:38:39 +0100 (CET)
Received: from [::1] (port=59188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAHnP-0002o1-0U; Thu, 11 Feb 2021 14:38:35 -0500
Received: from mail-qv1-f43.google.com ([209.85.219.43]:36367)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lAHnL-0002Y5-Fh
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 14:38:31 -0500
Received: by mail-qv1-f43.google.com with SMTP id e9so2569320qvy.3
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 11:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=wWEUc0cZJrFVicP1zc6DJTEo4piWKP0s673zS5aCkW8=;
 b=DB0iwMM/IrAw5rVTpV+R4NHVcxTqC/EK6QnqvaIix8B26iY+LK1Vf3Md7e1MPCz8rM
 Vnh+5yHVEoR5VYJ4vl2jIKSvpc3Gq/Jm6qUcgLgUZt0fvWd+wRtFvouc0Vprql/7LaIg
 MV4CYVZb36xMyn+v+2KSNd6nL1G/jxcbQAB3tVtiB6dnnAniRUDbV9w5vlwvc4EfUlSJ
 6DTJJVuKVeS145+RsrWEnAoqMXv9QMGdso2gTsAI8q+hI/k4od3D9ObjBLOqIfRcpueI
 UtPbD0J21Vrev7ERGdH3nmSpS/S7l2rkTCImQwxLUoEPZAM/FmHE0Rp0Sh/GogIdi2F+
 11Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=wWEUc0cZJrFVicP1zc6DJTEo4piWKP0s673zS5aCkW8=;
 b=q35DsoFZjsaV2ZMZFywxQQOTMs9BWL3YJEws0uc3bxT2BXdcIPgJxB/w7P9VFJyueb
 cMXrtF/jDBMAXZlvQstFUskAfoLQw+0tH/x+pTKDhkX5ATKV25ubwa/59oE8LKirC7gV
 z58uFUY/aXbKkWwRteYQ5RK6Gf8rhIR/+b/Jcp60VH7bY97oMnqcPZWU6lmDATyj1kJm
 BMhz5rZjTyhVwdbP927CzhlV80bUnpZonUrYAve9DQGsQg1l+vERk6ME6FAxSCz4Kptv
 Ujw2bw9Ote3AH0yyT7u9jLgLT0igCQzoL9rlSx1LfGJB7eO8heC55TEuRWph+o1JAias
 Vf6g==
X-Gm-Message-State: AOAM530gunJkBuFmImMF+YVXBYoFL4gwZAlpA9MeUAJhE3u66OPgyTFR
 gd/2GJsAXl7J2oBKEo2HgxZvDSLU22c=
X-Google-Smtp-Source: ABdhPJy4PqI3ZeqaYnhWknWsRMnkDRw8PluERkxvot06B/MLUiAG9N4Xv6iCfOUwKt7kLEAtqfTqhQ==
X-Received: by 2002:ad4:55aa:: with SMTP id f10mr9515459qvx.46.1613072270588; 
 Thu, 11 Feb 2021 11:37:50 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 11sm4792642qkm.25.2021.02.11.11.37.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 11:37:50 -0800 (PST)
Message-ID: <6025878D.6070404@gmail.com>
Date: Thu, 11 Feb 2021 14:37:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Johannes Demel <demel@ant.uni-bremen.de>
References: <0ffc349b-bf7c-6bef-6b74-505926796c40@ant.uni-bremen.de>
 <EC78AD9C-8584-49F6-98FA-A7BF09D4E62B@gmail.com>
 <57b7d3d1-cd2e-0d6c-2487-e7eb3de6e73d@ant.uni-bremen.de>
In-Reply-To: <57b7d3d1-cd2e-0d6c-2487-e7eb3de6e73d@ant.uni-bremen.de>
Subject: Re: [USRP-users] How to use 2 N310 for TX and RX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

On 02/11/2021 05:04 AM, Johannes Demel wrote:
> Hi,
>
> yes, I just attach a grc file for GR 3.9 that I use to test things.
>
> It works if I specify `addr=...` or `addr0=...` with one device. If I 
> switch to 2 devices `addr=....,addr1=...` it fails.
>
> It seems like UHD tries to initialize the devices twice.
>
> ----
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
> UHD_3.15.0.0-62-g7a3f1516
> [INFO] [MPMD] Initializing 2 device(s) in parallel with args: 
> mgmt_addr0=192.168.20.213,type0=n3xx,product0=n310,serial0=319841B,claimed0=False,mgmt_addr1=192.168.21.218,type1=n3xx,product1=n310,serial1=3180AF3,claimed1=False,addr0=192.168.20.213,addr1=192.168.21.218,master_clock_rate=122.88e6,clock_source=external,time_source=external
> [INFO] [MPM.PeriphManager] init() called with device args 
> `time_source=external,clock_source=external,master_clock_rate=122.88e6,product=n310,mgmt_addr=192.168.20.213'.
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 
> 0x4E91A00000000004)
> [INFO] [MPM.PeriphManager] init() called with device args 
> `time_source=external,product=n310,master_clock_rate=122.88e6,clock_source=external,mgmt_addr=192.168.21.218'.
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 
> 0x12AD100000011312)
>
> [...]
>
> [INFO] [1/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [INFO] [MPMD] Initializing 2 device(s) in parallel with args: 
> mgmt_addr0=192.168.20.213,type0=n3xx,product0=n310,serial0=319841B,claimed0=True,mgmt_addr1=192.168.21.218,type1=n3xx,product1=n310,serial1=3180AF3,claimed1=True,addr0=192.168.20.213,addr1=192.168.21.218,master_clock_rate=122.88e6,clock_source=external,time_source=external
> [ERROR] [RPC] Someone tried to claim this device again (From: 
> 192.168.20.34)
> ----
>
> If I use only one device, it looks like this:
>
> ----
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
> UHD_3.15.0.0-62-g7a3f1516
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.20.213,type=n3xx,product=n310,serial=319841B,claimed=False,addr0=192.168.20.213,master_clock_rate=122.88e6,clock_source=external,time_source=external
> [INFO] [MPM.PeriphManager] init() called with device args 
> `time_source=external,clock_source=external,master_clock_rate=122.88e6,product=n310,mgmt_addr=192.168.20.213'.
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 
> 0x4E91A00000000004)
>
> [...]
>
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> ----
>
> The last 4 lines are suspicious because they indicate that 
> synchronization is performed twice. Also, most of the time during 
> start up is spend there.
>
> Anyways, I attached my MWE flowgraph. I'd be happy if you could tell 
> me how to fix my issue.
>
> Cheers
> Johannes
>
Johannes:

I'm copying Michael Dickens from Ettus Engineering on this, and also, 
continuing this thread on the usrp-users mailing list would be
   more useful than on the discuss-gnuradio list, as there are folks on 
the usrp-users list who have done multi-N310 configurations
   successfully.

In particular, Ali Dormiani (sdormian@eng.ucsd.edu) has at least 6 N310 
operating in their lab with a single host:

Hello fellow N310 users. My lab has 6 N310's all operating and streaming 
to a single data server (10 Gbe links).

We use GNU Radio for everything. The software is great for controlling 
multiple devices with many antennas easily (highly recommended). My 
experience with native C++ UHD driver commands is rather limited.

I'm personally hampered by only having a single N310 at my disposal, so 
I can't reproduce your issue.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
