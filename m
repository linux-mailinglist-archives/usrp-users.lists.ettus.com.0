Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAE37171EC
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 01:47:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72C483844C0
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 19:47:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685490470; bh=R3/oMB4uz6C6iho89iXu0B0BMk9JE4m4DCiKuvkQAiw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cupWJYBEEBjtT8jZSRidf3MmDwqeZq1mN11R4MTV9TQ+6ARvypxTQK8pVxiKcL8/h
	 hMb6JT7MVLBRTgpoS3H+BZhe+ZAdexcb4DhkMAWfYr7sqUalbJfLnT3dk2xtUV5Dlq
	 je7+dicgtj4vLY+tz5HebvAk2IfeILnoFcHKq7KJJu+McE3wAGt8G+AKVLZuyFgHTD
	 NPO+gCiXE5Rp1OO7dlO5L4uLt1GADAQzg0v9zDhx/qKHnXLs3i3FxWPsOItudRu//i
	 zVlBUjPq9cYVOrmLyazFLmNgdnZrbgnOKAJIqUNY0TPMNOtcrysiZdLygIzIuDysyi
	 BZ0m1DZfXLAgw==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C86A383B91
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 19:47:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Sh9YEwTn";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6261a8bbe5fso25680946d6.0
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 16:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685490444; x=1688082444;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7bKhPLi1crlcWD6+vxgg+OeD1zIBOCgc6CqQu0EwBfA=;
        b=Sh9YEwTnzc5rbKQV8n6rFlftABBgq4bcR5Bzm/T0S8IxkY1utzkuJQr6ELa/e9THKj
         Ma0eM968mJS0tCUaQFpqc5wzUr3Ac4K/6cMVkrGhrZO880nAUuwYfxqQyXzopZf7BMNN
         Hi2dMgbveLtq2TLSQOrtCIwLoGtz9X37x4p9YqUh4bzIzqIPzMASOmmmlDnDluLSTlw3
         hKP3zkjjVy1yWACF2ZD2tZW9asjgVKrm0JhFDfZVK81g0XR129lqHcb9iDm3eb1nHzT9
         ds7wUhj0S2lBxXxoMAAPg0O6wY83MiQoxYB/Z9sTDmVRBkBmtotyQon2crqyjNez94Rt
         RMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685490444; x=1688082444;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7bKhPLi1crlcWD6+vxgg+OeD1zIBOCgc6CqQu0EwBfA=;
        b=Hqy3lny5kAL0cOWevXY2P6WeDmuqU5J+YoJvBUrscBmvM+r2hXF+1DyRrKIoGqhAuf
         fffy/Q/HvyjurOVtL3ltm8r3kXttgI34bvM60irwe0BwLv/Iv6Bf4P3s/BaZcI0PbTQG
         IKFor/zW1/XBvjunvGvvvdSXvX8mB6D6Ds/5/Q2xfO/2Fj17fbMac7H7LfjJY97x+BdX
         2ajyzHSZ0jBRPztdMGFXSV4UDznW7RUWPYq4BRIG+w7WwiIulK+RJjYA7NJUtYIqjXsW
         4K7P7a4rYMu+Hn4uFR79iqRox939FHws5oSDARTTYymVrjZNkn3EnaPgNCdd5etypJFA
         D2Sg==
X-Gm-Message-State: AC+VfDwYHS8fpkc6uk7FF1i531AEMBRT/Wk3SG6G7RUbW8Cho3FOkWex
	i9K4rPEaj/QrvZgy2rc+7tThUrwAbD62Jw==
X-Google-Smtp-Source: ACHHUZ5GFEjE4S982gGL/yRtqAewNWlFenf5EQ5lEZ093J0uVwF0BkGBC0Lb2PVRRdJ5MeSiOutxWw==
X-Received: by 2002:a05:6214:48a:b0:625:b1f3:69c8 with SMTP id pt10-20020a056214048a00b00625b1f369c8mr5287351qvb.49.1685490444301;
        Tue, 30 May 2023 16:47:24 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id mn6-20020a0562145ec600b0060530c942f4sm5144176qvb.46.2023.05.30.16.47.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 16:47:23 -0700 (PDT)
Message-ID: <8319f56e-6c2f-0fce-fec1-c57b87b0c268@gmail.com>
Date: Tue, 30 May 2023 19:47:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CA+ZR=nVNAVMnFD6G2LNZKpcB=H6dtQd+tMqs119KENuT0Uv4gQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+ZR=nVNAVMnFD6G2LNZKpcB=H6dtQd+tMqs119KENuT0Uv4gQ@mail.gmail.com>
Message-ID-Hash: JPC7OI2FKSJKW5PM6PKIP53FFD2NQWL6
X-Message-ID-Hash: JPC7OI2FKSJKW5PM6PKIP53FFD2NQWL6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JPC7OI2FKSJKW5PM6PKIP53FFD2NQWL6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 30/05/2023 18:17, Ashton Palacios wrote:
> My research group recently got an Ettus X410. We are wanting to 
> connect to it through two MT27800 NICs on our server. We are able to 
> set up the IP addresses on the server and running uhd_find_devices 
> shows the USRP having the correct IP address that we are expecting. 
> When we go to run the benchmark_rate test we get the following error:
>
>
> /usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 --tx_rate 
> 10e6
>
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; 
> UHD_4.4.0.HEAD-0-g5fac246b
> [00:00:00.000581] Creating the usrp device with: ...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.13.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.11.2
> [INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=X4_200,mgmt_addr=192.168.13.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: 
> Connection refused
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. 
> EnvironmentError: IOError: recv error on socket: Connection refused
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: 
> EnvironmentError: IOError: recv error on socket: Connection refused
> Error: RuntimeError: Failure to create rfnoc_graph.
> alfor@sdr:/usr/local/lib/uhd/examples$ sudo !!
> sudo ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6
>
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; 
> UHD_4.4.0.HEAD-0-g5fac246b
> [00:00:00.000251] Creating the usrp device with: ...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.13.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.11.2
> [INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=X4_200,mgmt_addr=192.168.13.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: 
> Connection refused
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. 
> EnvironmentError: IOError: recv error on socket: Connection refused
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: 
> EnvironmentError: IOError: recv error on socket: Connection refused
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> Any suggestions on how to fix this?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
This looks like a simple networking issue.

First things first--can you "ping" the ip addresses of the device?

If you explicitly use the device address, instead of letting UHD "hunt" 
for it, does it still do this?

benchmark_rate --args "addr=<ip address of device> type=x400"

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
