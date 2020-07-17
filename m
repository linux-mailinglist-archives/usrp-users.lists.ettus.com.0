Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E2D223128
	for <lists+usrp-users@lfdr.de>; Fri, 17 Jul 2020 04:26:24 +0200 (CEST)
Received: from [::1] (port=48864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jwG4q-0007jE-DD; Thu, 16 Jul 2020 22:26:20 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:42210)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jwG4m-0007ez-0k
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 22:26:16 -0400
Received: by mail-qv1-f41.google.com with SMTP id dm12so3664223qvb.9
 for <usrp-users@lists.ettus.com>; Thu, 16 Jul 2020 19:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=d9nuka0vOf6VOU6BuDlDamybbaUvGRKpzcsEOK7wT+I=;
 b=gP+wQNNH8bJd1oW8EweAzZvd9MB4Duils0xnhN5z6hG75lk20J2qtfptOGDeDVWI1I
 ErAftqSKZnEbwtMj8k682py/2CW5VWjuK7a7RrHNz2KtyAYUnd6YECAH9tEweIuFSZl9
 Is+6cN7J67E/XSQLpoVE2KM65IUuEPqrak9+bdgemmTHz1QHsEfiJl3TEiNFBtOE1cUv
 msF2I15bsxbWKtkF+WQSMfwVHhUkErSzNCa4ATPnqY5Iz58eB4p/fpIotQvsMQ6I+UTO
 0iOpEkPpBz100AbKBOmzgDvPvRuRcf6GirNkeFAguIApC8EoGnUFu5ir/Oq5AJp3AoN8
 XnjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=d9nuka0vOf6VOU6BuDlDamybbaUvGRKpzcsEOK7wT+I=;
 b=DoIVjo5CQVC3vAtaYrrsrKXde3QAOQ7olefYl+0J8yNCfmTwRK0xznkiDwViA4l7El
 20X/QctO3nNucmeOko1fwfuUAbPN852lBid6LRTtMNAX9e/uBBPozNfOLIifnVzmUMm3
 mApwmFwxckYMZnuYJb3PtJLhH8gS5Ai16IKkcSG3dNTcyZJPQ1V9OI63vZIJyf9XijuW
 qi353pcSQ3iawnL79FCJ01rWiocewL70e9RMSy01S2SS/3VZdesDy2QRvNveG6C1uqj+
 46PheC1Q+VrUYWfc2QCLSsfG2o6kv70tPNEKjduc2gxe2ZNiRaMDHRX64k62plToys/Q
 GYUg==
X-Gm-Message-State: AOAM533NDcMqweOmlTFy3jzM2UolnP1tQ7Z0UN4Yjx9vcwbQ5RtuCaZG
 oRC+CYjbp5rKjns4Eqvdcz4F7QAn
X-Google-Smtp-Source: ABdhPJzFAM3svRZjAvXfGRR/h+AL7QxNVfsjsukmj5lXOQTs6dTtpVhu8YbIgWq7NKxpVn3Cgk6q6w==
X-Received: by 2002:a0c:83a5:: with SMTP id k34mr7077984qva.130.1594952735053; 
 Thu, 16 Jul 2020 19:25:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id j18sm11053301qko.95.2020.07.16.19.25.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jul 2020 19:25:34 -0700 (PDT)
Message-ID: <5F110C1D.8080402@gmail.com>
Date: Thu, 16 Jul 2020 22:25:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACxOa3bQJTiSnDK-W_U+Fj3=o8m45MZDMfpcVyNX6PJcqtBACQ@mail.gmail.com>
In-Reply-To: <CACxOa3bQJTiSnDK-W_U+Fj3=o8m45MZDMfpcVyNX6PJcqtBACQ@mail.gmail.com>
Subject: Re: [USRP-users] uhd_usrp_probe to N310 fails with DPDK
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

On 07/16/2020 05:41 PM, Colby Boyer via USRP-users wrote:
> Hi All,
>
> I followed the flow listed here 
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD with UHD 3.15 
> and DPDK 17.11, but I am unable to run uhd_usrp_probe, it fails. At 
> the end of the email the result of uhd_usrp_probe is attached.
>
> Running Ubuntu 18.04. Installed UHD from source and installed dpdk 
> from apt-get.
>
> The app note worked mostly as expected except for the sudo 
> dpdk-devbind --bind=vfio=pci 02:00.0 commands. However, this failed as 
> it failed to bind to the device. I had to run sudo dpdk-devbind 
> --bind=vfio-pci enp2s0f0 instead, and that worked.
>
> Any suggestions on what to try next?
>
> Thanks
> Colby
>
> root@genxcomm-tower:~# uhd_usrp_probe 
>  --args="use_dpdk=1,mgmt_addr=172.26.60.1,addr=192.168.20.2,type=n3xx"
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.v315-0-gaea0e2de
> EAL: Detected 8 lcore(s)
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:00:19.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:15a1 net_e1000_em
> EAL: PCI device 0000:02:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10fb net_ixgbe
> EAL:   using IOMMU type 1 (Type 1)
> EAL: Ignore mapping IO port bar(2)
> EAL: PCI device 0000:02:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10fb net_ixgbe
> EAL: Ignore mapping IO port bar(2)
> EAL: PCI device 0000:06:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:10d3 net_e1000_em
> EAL: Waiting for links to come up...
> EAL: Init DONE!
> EAL: Starting I/O threads!
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=172.26.60.1,type=n3xx,product=n310,serial=31D90DA,claimed=False,use_dpdk=1,addr=192.168.20.2
> [INFO] [MPM.PeriphManager] init() called with device args 
> `product=n310,use_dpdk=1,clock_source=internal,mgmt_addr=172.26.60.1,time_source=internal'.
> EAL: Please set IPv4 address for port 0 before opening socket
> [ERROR] [MPMD] Failure during block enumeration: AssertionError: 
> _rx_sock != nullptr
>   in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const 
> uhd::transport::uhd_dpdk_ctx&, unsigned int, const string&, const 
> string&, const string&, const uhd::transport::zero_copy_xport_params&)
>   at /home/genxcomm/repo/uhd/host/lib/transport/dpdk_zero_copy.cpp:355
>
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
I haven't run DPDK in my lab so, I'm guessing here.

It's complaining that there's no IP address associated with the 
interface, which will almost certainly cause downstream problems.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
