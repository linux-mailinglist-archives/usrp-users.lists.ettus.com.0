Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E49630DD3E
	for <lists+usrp-users@lfdr.de>; Wed,  3 Feb 2021 15:51:34 +0100 (CET)
Received: from [::1] (port=57622 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7JV9-0000Ln-JA; Wed, 03 Feb 2021 09:51:27 -0500
Received: from mail-ej1-f54.google.com ([209.85.218.54]:38591)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l7JV5-0000Gf-JJ
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 09:51:23 -0500
Received: by mail-ej1-f54.google.com with SMTP id bl23so36201880ejb.5
 for <usrp-users@lists.ettus.com>; Wed, 03 Feb 2021 06:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QgYC/hH2cRqug9ZX6MBnXEJoSul5q36IxCHY6tyDJIQ=;
 b=qswi1AtHldB9KPd6uhFUx6QlB7eWMDFdG3owhyBEIrFU1AP1Emw0WAV5XozWf6aSHo
 2wAGTvMqQCMpw2Yhlmfq8FX4uyv6FIikkf+d60TAwuZu7q/CfaCWQYQe3hNYUdwKtOnv
 /ILBGNp5tcb3qcAibEwYyFVU5REa9qS6HhzQRVfzf6zhFuKUI6TK6+GFdOY7al+lE9h0
 XsTBXoz5sXGIPzxUtC1OaqOcrTO2t8wA06aSf0TjMXS904T/hVctf/kTRE+JFHMV6hIG
 l6poxJ76SV44ZU1AIMYq3hFYjp7eiTqDmvmVM6Z7ev1+YhbPQ1MxT+viu9q1IJjec9+r
 Z3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=QgYC/hH2cRqug9ZX6MBnXEJoSul5q36IxCHY6tyDJIQ=;
 b=cjq9rzajQEtiLa0gSX/m2JnfsBt1RAwq+KpvOYKOmPt/nDcdp/eVqdCDR5cQ1aCDDV
 Z7XN7kJJRwohdMMukk/Mer+H4o3RhSNPgWM3vY/YwmkPkVKHUMBToxMxFOTS4mqIf6NB
 FPHo6ksLd7uvULn76XgwLXynbcJepTHDHc1NukpWEorZIYUsC2Xg8RmdpYkCBom0OodD
 xkAygbNzKNFqT4PPOh6MDz2EoJGzgUtiggfD/8lS896cpGIMqaA5wB0GUGVAskuCb8bN
 p+UwbEDZtgSHocf2EbwSpV4KvmYC4SX9nGNMzQB+Ng+CnTLGOcCq6xp2tZgf8Cvd0mBK
 Jtig==
X-Gm-Message-State: AOAM532YFvMgSGkFQlA+RiATxq52u7qYVG2LrckzRzWEPkof/puIKdJa
 UB0Vd/mr2c9dEyAlehokiWkw6puDiouMHQYiZ4Bym4H2ysevvZNI
X-Google-Smtp-Source: ABdhPJymctbtBe0wC93+bDgchGpDGpegFqf6l+OYu2GUA4LnLIHagEhugjx/ZFbXrKX07kJV3NUGSGuq73TDNABXQDk=
X-Received: by 2002:a17:906:3b04:: with SMTP id
 g4mr2367454ejf.369.1612363842243; 
 Wed, 03 Feb 2021 06:50:42 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
 <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
 <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
 <CAB__hTS2ECbCBYoGXDicytwurDEJsmtPwXm-tBp+d6JOw8a87A@mail.gmail.com>
In-Reply-To: <CAB__hTS2ECbCBYoGXDicytwurDEJsmtPwXm-tBp+d6JOw8a87A@mail.gmail.com>
Date: Wed, 3 Feb 2021 08:50:30 -0600
Message-ID: <CAAg5+MwQ1CqfBOMOiKrukhxkoRtxpSqh3ZdNz_7VPBHMBo3Nhg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] DPDK troubles (invalid ELF header loading dpdk
 library)
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

I notice in the second and subsequent runs, you get this message from UHD:

[ERROR] [DPDK] All DPDK links did not report as up!

One of the other issues I've noticed with DPDK (and unfortunately
don't have an answer for) is that link detection seems to have issues.
I'm not sure if this is an XL710-specific problem or whether it's more
widespread, but I added some code to try to mitigate things somewhat
in commit eada49e4d. This commit checks the link status at
250-millisecond intervals for up to the link status timeout (default 1
second) in case the links take a while to register as up. One thing
you could try is overriding the default link status timeout and
increasing the value, which you can do by adding a dpdk_link_timeout=X
line to the [use_dpdk=1] section of your uhd.conf file, where X is the
new timeout in number of milliseconds.

Best regards,
Aaron

On Tue, Feb 2, 2021 at 1:47 PM Rob Kossler <rkossler@nd.edu> wrote:
>
> Hi Aaron,
> This did indeed help.  Now I am able to run ONCE successfully.  After that I get an error.  Same behavior on both systems.  Not yet sure how to clear the error.  I played with dpdk_link_timeout and even tried resetting the N310 using "overlay rm n310 && overlay add n310 && systemctl restart usrp-hwd".  But no luck.
> Rob
>
> // First run succeeds
> root@irisheyes5-hp-z240-sff:~# uhd_image_loader --args="addr=192.168.1.88,type=n3xx,fpga=XG"
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,skip_init=1
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.PeriphManager] Updating component `dts'
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 3144673
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args `clock_source=internal,time_source=internal'.
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6 --rx_rate=62.5e6 --channels="0,1,2,3" --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:03:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> EAL: PCI device 0000:03:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.2 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.3 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> [00:00:00.000152] Creating the usrp device with: use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,use_dpdk=1,addr=192.168.60.2
> [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=192.168.1.88,product=n310,use_dpdk=1,clock_source=internal,time_source=internal'.
> Using Device: Single USRP:
>   Device: N300-Series Device
>   Mboard 0: n310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: Magnesium
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: Magnesium
>   RX Channel: 2
>     RX DSP: 2
>     RX Dboard: B
>     RX Subdev: Magnesium
>   RX Channel: 3
>     RX DSP: 3
>     RX Dboard: B
>     RX Subdev: Magnesium
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Magnesium
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: Magnesium
>   TX Channel: 2
>     TX DSP: 2
>     TX Dboard: B
>     TX Subdev: Magnesium
>   TX Channel: 3
>     TX DSP: 3
>     TX Dboard: B
>     TX Subdev: Magnesium
>
> [00:00:03.21715319] Setting device timestamp to 0...
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> Setting TX spp to 1989
> [00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels
> [00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4 channels
> [00:00:15.167869894] Benchmark complete.
>
>
> Benchmark rate summary:
>   Num received samples:     2549794336
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  2499910452
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 0
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>
>
> Done!
>
> // Second run fails
> root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6 --rx_rate=62.5e6 --channels="0,1,2,3" --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:03:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> EAL: PCI device 0000:03:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.2 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.3 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> [ERROR] [DPDK] All DPDK links did not report as up!
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links did not report as up!
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL initialization
> [00:00:00.000122] Creating the usrp device with: use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initialization
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL initialization
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     use_dpdk: 1
>     mgmt_addr: 192.168.1.88
>     addr: 192.168.60.2
>
> // Third run fails
> root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6 --rx_rate=62.5e6 --channels="0,1,2,3" --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:03:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> EAL: PCI device 0000:03:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.2 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.3 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> [ERROR] [DPDK] All DPDK links did not report as up!
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links did not report as up!
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL initialization
> [00:00:00.000148] Creating the usrp device with: use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initialization
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL initialization
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     use_dpdk: 1
>     mgmt_addr: 192.168.1.88
>     addr: 192.168.60.2
>
>
>
> On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com> wrote:
>>
>> On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users
>> <usrp-users@lists.ettus.com> wrote:
>>
>> > Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel XL710 NIC, and N310 (or X310)?
>>
>> If I remember correctly, I believe DPDK tries to dlopen() *everything*
>> in the directory specified by the dpdk_driver parameter in the DPDK
>> section of uhd.conf, leading to a lot of errors similar to yours
>> ('Invalid ELF header' and the like). Having the correct collection of
>> .so files in that directory is key.
>>
>> What's worked for me in the past when using DPDK with an Intel XL710
>> is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying
>> a specific set of DPDK .so files into this directory:
>> * librte_mempool_ring.so
>> * librte_pdump.so (I think this one is optional--I had been trying to
>> get packet dumps from DPDK a while back)
>> * librte_pmd_i40e.so
>> * librte_pmd_ixgbe.so (may be optional?)
>> * librte_pmd_pcap.so (this one is also optional, I think)
>> * librte_pmd_ring.so
>>
>> (Symlinking to the actual libraries wherever they get installed
>> instead of copying them into the directory would probably work as
>> well.)
>>
>> Then, make sure that the dpdk-driver key in the [use_dpdk=1] section
>> of uhd.conf points to that directory:
>> dpdk_driver = /usr/local/lib/dpdk-pmds
>>
>> Hopefully that will resolve the issue and get you a little further
>> down the road.
>>
>> Best regards,
>> Aaron
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
