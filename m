Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1773207AB2
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jun 2020 19:49:52 +0200 (CEST)
Received: from [::1] (port=38046 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jo9Wv-0007D1-SX; Wed, 24 Jun 2020 13:49:49 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:45908)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jo9Ws-000746-7i
 for usrp-users@lists.ettus.com; Wed, 24 Jun 2020 13:49:46 -0400
Received: by mail-qt1-f169.google.com with SMTP id u12so2363255qth.12
 for <usrp-users@lists.ettus.com>; Wed, 24 Jun 2020 10:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=ucNfhtznEW13P+V9IkP/hwiuWA6PSdrKWAgtktKyfhg=;
 b=BQZd4p9LYpvHtx6a8grzAHwBVFxO5zX3sjt0CP/t0qTJeKpNq/16dxBWMgzBzLnDTO
 teegpKK2XZyGydKV8QFIFZoeSQ8FsrOIO3FAnqGe+DPZInVp6K00Z7+xMzZ+Cf/3c/iY
 U54zApaJAvRZ1cKWnma2xlqeZRDiCk8KR28+V72q7SaA+KT+0jCC5hQexqVe035In83F
 hV0nUE7Ta1bpvee7jpVejTtUFj8iuid9F4MygwB4M4xbk0V58frkGNkKakSCFdwXuwT3
 YzYb39AxeIzOrGSblE96ZV0S5gUTmK267qHByoWchxbhaIGWjm9paDXuBKAffaT2hWWS
 YEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=ucNfhtznEW13P+V9IkP/hwiuWA6PSdrKWAgtktKyfhg=;
 b=sVzv/j5fcefpiM4rGWc47FOYwOOa01PTMUgzUoXNCPfOhIaidcpYMyvmoDJOMofWYp
 0hVcrLlUDBAyma2oEdHJ4ATuv59NTiDGhRqcm/hnOf/l9j5szS+w3KhZnY1F+PpTbY3V
 P9Nh1cFGyXmpBaHx83qUH0b07e+1s4BMEAb7dxGWweiv8R4j1HN9w6UrTt3+0IyP4uMm
 SQTcLSJptHzPe1INgLdVnrVHnA9sRXtfGhQTsDwsfSbjg7VGwzQ/ZMivnEZtbeJHT5+l
 9jsruLtESmOdtf2pNv7J+3BHtbAJJk0ZlTvbPSyzDkWFjYrljK9LU1qYwnYgOjhd9Kgq
 TtxA==
X-Gm-Message-State: AOAM530sqwc7qGN2mZSolhNcl0oa6MykvbwQ+hwUc6rJqm+HBzYoT+rO
 8RXx/un7uuiPrfHpu8RxdcuKme7nHiY=
X-Google-Smtp-Source: ABdhPJz2ZAly3ihwOGD4D7RGCTaKAylP0mTutVMx+ITmmVugAOgGkDLZSzDd7vxO2+NP/mpAVxFxzg==
X-Received: by 2002:ac8:7ca1:: with SMTP id z1mr26058592qtv.334.1593020945489; 
 Wed, 24 Jun 2020 10:49:05 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id p125sm3574243qke.78.2020.06.24.10.49.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jun 2020 10:49:05 -0700 (PDT)
Message-ID: <5EF39210.9030407@gmail.com>
Date: Wed, 24 Jun 2020 13:49:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACjmV_nH=YZVbvU-Md4juBB6iazRxVuLFa+f8rC0Z4=_UumjKA@mail.gmail.com>
In-Reply-To: <CACjmV_nH=YZVbvU-Md4juBB6iazRxVuLFa+f8rC0Z4=_UumjKA@mail.gmail.com>
Subject: Re: [USRP-users] TX Burst at 200Msps sample rate on two channel
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

On 06/24/2020 01:46 PM, guowang qiu via USRP-users wrote:
> Hi all,
>
> I am trying to set my USRP X310 to send out signals in burst mode at 
> 200Msps sample rate on two channels. My target is sending out bursts 
> of 100ms without underflow.
> The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is used in the 
> test. The CPU is set to 4.2GHz.
> The X310 is connected to the host by dual 10 Gigabit Ethernet.
>
> sudo /usr/local/lib/uhd/examples/tx_bursts 
> --args="type=x300,use_dpdk=1,addr=192.168.30.2,second_addr=192.168.40.2,send_frame_size=8000,num_send_frames=512" 
> --repeat --dilv --nsamps=20000000 --channels=0,1 --rate=200e6
>
> If nsamps is set to 100000, there is no U printed. But if nsamps is 
> large than 120000, the terminal prints a lot of U.
> Question 1: the depth of DMA FIFO is 32MB by default, I guess there 
> should be 8M samples stored in the DMA FIFO, why it seems that it just 
> store 100K samples?
> Question 2: is there anything I could do to achieve my goal?
>
> Best regards,
> Damon
>
>
I don't know about the performance question, but there's ZERO reason to 
run that example under 'sudo'.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
