Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E988D30E60E
	for <lists+usrp-users@lfdr.de>; Wed,  3 Feb 2021 23:30:00 +0100 (CET)
Received: from [::1] (port=32802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7Qeq-0002XW-2l; Wed, 03 Feb 2021 17:29:56 -0500
Received: from mail-lf1-f49.google.com ([209.85.167.49]:46121)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <prkane92@gmail.com>) id 1l7Qel-0002R0-Fd
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 17:29:51 -0500
Received: by mail-lf1-f49.google.com with SMTP id e15so1467486lft.13
 for <usrp-users@lists.ettus.com>; Wed, 03 Feb 2021 14:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AA6qGgmYhkehZM5EGZCqvLBgHCkXURq3Cqb0b0DkTGs=;
 b=HYHFFY6gWNvARM4y3jMDeHacXxAEpJSC4e32pvKGpcxSJ4iAiizqiEI9sLnPsvWxD4
 9h7FnJYN4CmAfErLKZ7Omwx24wgF4atEZ+hP9/sZdEpiyQMUBP9NBwFXUEYWY/mcx70E
 XeX4z89A3bzkmxHIjBE7ay63GKEQJAK77xLxSgVBAB53hdVOO9rP3noZvRhbqtiTxuEY
 Vhm9O3I8bqW2dUG4QoO3mu7vjuBATUq4epabVn9CW+sWmc45qgMyFuAQcMVIN4eEyezj
 /RSip5v4Orbj/bFY+TWuvTfc6wSf2NZhgabjHxeGgUNW662l032ZCWd/NKMjwcn2mPid
 pw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AA6qGgmYhkehZM5EGZCqvLBgHCkXURq3Cqb0b0DkTGs=;
 b=PMRV3fB6T4Ns23b8F71ojxdFkHF8WAly0rUk5e1175UjPmL8dWvZkI15RYlFIp/itF
 UlJGasiyQvNYVlXC+9ckBzK04sZQVwfcP/qrq6cSedxU737TQky58jfjMzy/7iOoYUR5
 bhwJIphw4sYOut7QzqXkBBWLbxs9CfDFWZmzsx44Nxmf+g4Hy3r4WCh9WFxZEagv9xI5
 eMDC18fp6N2VzSY31zPXFq9AcHLrjtnOLDOeTtHeLJsWD6FAKMd/inII528R3iA9wNsC
 ORy/2s9OfnlWV7kIe3Vc670vq3vd4V89z6WYvXhcuPa5S2TQWTh7+YWafgAFaxsU3/9w
 VAsQ==
X-Gm-Message-State: AOAM533uVm36uPjUpYqklkUcYy0F+PUkCSgvGh8X4O3pFF5VC6QA0APJ
 a9dA/Ihvl2OSZwp0+u71+nfltPwIv0Ix2DY6JF8=
X-Google-Smtp-Source: ABdhPJyu252XcP3RNJTF7yLArwc1xP0ACY3G5pbkuvpW4n74gtFULnyGKIaibIM9FlvnuzDIahIpvWhrYRjOd1sM6bA=
X-Received: by 2002:ac2:43c1:: with SMTP id u1mr2784030lfl.488.1612391349882; 
 Wed, 03 Feb 2021 14:29:09 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
 <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
 <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
 <CAB__hTS2ECbCBYoGXDicytwurDEJsmtPwXm-tBp+d6JOw8a87A@mail.gmail.com>
 <CAAg5+MwQ1CqfBOMOiKrukhxkoRtxpSqh3ZdNz_7VPBHMBo3Nhg@mail.gmail.com>
 <CAB__hTS4d0uQTFpuUtGokV36PV+LJRistR1FsNAC7zg=b0ACEg@mail.gmail.com>
 <CAB__hTT6_UYrEdOt0Yj1gn5uZwsg-jMkDu2ayWb0fjadyA14YQ@mail.gmail.com>
 <CAB__hTR7K8242X02BPW+=8exppDi6Vu_r4HGoQstTLK5sYgVnA@mail.gmail.com>
In-Reply-To: <CAB__hTR7K8242X02BPW+=8exppDi6Vu_r4HGoQstTLK5sYgVnA@mail.gmail.com>
Date: Wed, 3 Feb 2021 17:28:57 -0500
Message-ID: <CAOLzfShXVFSgO0yCpjjGMccxVavUQfJiOqfeOzjDUdiZbcsoFg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Patrick Kane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Patrick Kane <prkane92@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6761717035694593727=="
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

--===============6761717035694593727==
Content-Type: multipart/alternative; boundary="000000000000a6123705ba761db4"

--000000000000a6123705ba761db4
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Thanks for documenting your steps. I can confirm most if not all of your
problems on Centos 7, USRP N321, Intel XL710. @Ettus can we get some
attention for this issue? DPDK is marketted as a huge improvement for max
bandwidth applications, and I have failed to see any real testing or use
cases of it working more than once in a row. It is certainly a barrier for
my applications, forcing me to reduce the sample rate and simplify the use
cases.

-Pat


On Wed, Feb 3, 2021 at 4:53 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am now to the point where things are kind of working and I'm basically
> giving up trying to make them better.  A few remarks for anyone who tries
> DPDK in the future (with N310, Ubuntu 20.04, Intel XL710 NIC, and UHD 4.0).
>
> 1) I can only get my application to run once and then I have to do some
> stuff (see NOTE 1 below) to run again.
> 2) I get occasional (but much too often) lock-ups of other applications
> running in Ubuntu.  This was previously my experience using DPDK under 3.15
> (DPDK 17.11) but I had hoped things were better now.  They are not.  See
> below for more details (NOTE 2 below) on this. Note that these lockups do
> not occur even occasionally when not running with DPDK.
> 3) The instructions in the UHD manual are not nearly good enough to get
> things running.
> 4) I first got things working as "root" (as recommended), but this caused
> some ancillary issues with my apps. Fortunately, I was able to get it to
> run as a lowly user (see NOTE 3 below)
> 5) I could not get things working even once until I followed Aaron's
> advice of putting just a few symlinks in a folder and pointing to that
> folder from .config/uhd.conf (dpdk_driver=<folder>). See NOTE 4 below.
>
> Read on for the details if interested.
> Rob
>
> NOTE 1: After I run and exit my app, I notice that the link LEDs on the
> SFP ports of the N310 are not both on as they should be and I am unable to
> run a second time.  The following sequence fixes this (perhaps there is a
> better sequence but I haven't found it yet) such that I am able to re-run
> successfully.
> - sudo dpdk-devbind -b i40e  03:00.0 03.00.1  # bind normal driver
> - sudo dpdk-devbind -b vfio-pci 03:00.0 03.00.1 # re-bind vfio-pci driver
> - physically, unplug & plug QSFP+ transceiver on XL710 (sometimes have to
> do this 2 or 3 times before it "fixes" the link LEDs on N310 SFPs)
>
> NOTE 2: The fact that DPDK takes over the CPU cores (at least 1 if not 2
> of them) seems to cause issues with other apps.  In the past I have even
> had issues with keyboard/mouse input that became intolerably slow. I didn't
> have keyboard/mouse issues this time, but I did have issues with a
> companion application that I run alongside my c++/UHD application.  This
> companion application (actually Matlab based control/display GUI) would
> lock up such that I couldn't even close it down.  But, once I stop my
> c++/UHD application, everything starts behaving normally.  Note that I
> NEVER have this issue when running the same applications without DPDK.  I
> tried the grub update "isolcpus=N,M" but not sure if this helped or not.  I
> also tried changing my DPDK corelist from 0,1 to 6,7 because in the past I
> had convinced myself (perhaps wrongly) that things behaved better if not
> using CPU 0.  I have no hard evidence to support this.  In the end, things
> mostly work, but these lockups are reason enough to avoid DPDK.
>
> NOTE 3: I did the following to run as lowly user rather than root.
> 1) updated /etc/security/limits.conf to use the following. I really have
> no idea if these are reasonable values or not. The DPDK docs indicated that
> these are the relevant settings to adjust but gave no advice on what they
> should be set to.
> <username> - memlock 2000000
> <username> - nofile  2000
> <username> - locks   2000
> 2) after binding the vfio-pci driver using dpdk-devbind, I ran the
> following. The first two are commands I determined after running the DPDK
> usertools/dpdk-setup.sh utility and then looking at the source to see the
> exact chmod settings used by this utility (BTW, this utility was helpful).
> The third was recommended in the DPDK documentation.
> sudo chmod a+x /dev/vfio
> sudo chmod 0666 /dev/vfio/*
> sudo chmod a+w /dev/hugepages/
>
> NOTE 4: The following are the few symlinks I put in a folder I created
> "/usr/local/lib/dpdk-pmds/".  After pointing the dpdk_driver=<folder>
> setting in uhd.conf to this, I was able to run successfully.
> librte_mempool_ring.so, librte_pmd_i40e.so, librte_pmd_ixgbe.so, and
> librte_pmd_ring.so.
>
> On Wed, Feb 3, 2021 at 10:44 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Aaron,
>> Two things:
>> 1) I am getting an error message at the conclusion of a successful run
>> (see below). Not sure if this is something I should be looking at or if it
>> is harmless.
>> 2) I figured out a sequence of steps that can "fix" my broken state
>> following a successful run. If I do the following, the links are fixed:
>>   a) dpdk-devbind -b i40e 03:00.0 03:00.1   // bind to the normal driver
>>   b) dpdk-devbind -b vfio-pci 03:00.0 03:00.1  // bind back to the
>> vfio-pci driver
>>   c) physically unplug & plug the XL710 QSFP+ transceiver (mine is
>> optical, but unplugging just the MTP does not do the trick - I need to
>> unplug the full transceiver)
>>
>> Once I complete the sequence above, the link LEDs are back to normal and
>> I can complete another run of benchmark_rate. This is obviously a bad
>> solution so if you have any ideas, please let me know.
>> Rob
>>
>> [00:00:05.113788990] Testing receive rate 125.000000 Msps on 4 channels
>> [00:00:05.120454627] Testing transmit rate 125.000000 Msps on 4 channels
>> [00:00:15.373972384] Benchmark complete.
>>
>> Benchmark rate summary:
>>   Num received samples:     5099558824
>>   Num dropped samples:      0
>>   Num overruns detected:    0
>>   Num transmitted samples:  4999335588
>>   Num sequence errors (Tx): 0
>>   Num sequence errors (Rx): 0
>>   Num underruns detected:   0
>>   Num late commands:        0
>>   Num timeouts (Tx):        0
>>   Num timeouts (Rx):        0
>>
>>
>> Done!
>>
>> i40e_phy_conf_link(): Failed to get PHY capabilities: -7
>>
>>
>> On Wed, Feb 3, 2021 at 10:16 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Aaron,
>>> Unfortunately, I already tried playing around with the link timeout
>>> increasing up to 10 seconds.  No luck.  But, I am presently troubleshooting
>>> the issue and trying to switch back and forth between DPDK and normal
>>> networking. I am finding that normal networking is not working after 1 run
>>> of DPDK. And, I'm noticing that link LEDs are messed up and normal pings
>>> are not working.  I am playing around with disconnecting / reconnecting
>>> links in order to get the link LEDs back to normal.  My guess is that
>>> things are not cleaning up as they should.
>>> Rob
>>>
>>> On Wed, Feb 3, 2021 at 9:51 AM Aaron Rossetto via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> I notice in the second and subsequent runs, you get this message from
>>>> UHD:
>>>>
>>>> [ERROR] [DPDK] All DPDK links did not report as up!
>>>>
>>>> One of the other issues I've noticed with DPDK (and unfortunately
>>>> don't have an answer for) is that link detection seems to have issues.
>>>> I'm not sure if this is an XL710-specific problem or whether it's more
>>>> widespread, but I added some code to try to mitigate things somewhat
>>>> in commit eada49e4d. This commit checks the link status at
>>>> 250-millisecond intervals for up to the link status timeout (default 1
>>>> second) in case the links take a while to register as up. One thing
>>>> you could try is overriding the default link status timeout and
>>>> increasing the value, which you can do by adding a dpdk_link_timeout=X
>>>> line to the [use_dpdk=1] section of your uhd.conf file, where X is the
>>>> new timeout in number of milliseconds.
>>>>
>>>> Best regards,
>>>> Aaron
>>>>
>>>> On Tue, Feb 2, 2021 at 1:47 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>> >
>>>> > Hi Aaron,
>>>> > This did indeed help.  Now I am able to run ONCE successfully.  After
>>>> that I get an error.  Same behavior on both systems.  Not yet sure how to
>>>> clear the error.  I played with dpdk_link_timeout and even tried resetting
>>>> the N310 using "overlay rm n310 && overlay add n310 && systemctl restart
>>>> usrp-hwd".  But no luck.
>>>> > Rob
>>>> >
>>>> > // First run succeeds
>>>> > root@irisheyes5-hp-z240-sff:~# uhd_image_loader
>>>> --args="addr=192.168.1.88,type=n3xx,fpga=XG"
>>>> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.0-50-ge520e3ff
>>>> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>> mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,skip_init=1
>>>> > [WARNING] [MPM.RPCServer] A timeout event occured!
>>>> > [INFO] [MPMD] Claimed device without full initialization.
>>>> > [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>>>> > [INFO] [MPM.PeriphManager] Updating component `fpga'
>>>> > [INFO] [MPM.PeriphManager] Updating component `dts'
>>>> > [INFO] [MPM.RPCServer] Resetting peripheral manager.
>>>> > [INFO] [MPM.PeriphManager] Device serial number: 3144673
>>>> > [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>>>> > [INFO] [MPM.PeriphManager] init() called with device args
>>>> `clock_source=internal,time_source=internal'.
>>>> > [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>>>> > root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
>>>> --rx_rate=62.5e6 --channels="0,1,2,3"
>>>> --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
>>>> >
>>>> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.0-50-ge520e3ff
>>>> > EAL: Detected 8 lcore(s)
>>>> > EAL: Detected 1 NUMA nodes
>>>> > EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>>>> > EAL: No free hugepages reported in hugepages-1048576kB
>>>> > EAL: Probing VFIO support...
>>>> > EAL: VFIO support initialized
>>>> > EAL: PCI device 0000:03:00.0 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL:   using IOMMU type 1 (Type 1)
>>>> > EAL: PCI device 0000:03:00.1 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL: PCI device 0000:03:00.2 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL: PCI device 0000:03:00.3 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > [00:00:00.000152] Creating the usrp device with:
>>>> use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
>>>> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>> mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,use_dpdk=1,addr=192.168.60.2
>>>> > [INFO] [MPM.PeriphManager] init() called with device args
>>>> `mgmt_addr=192.168.1.88,product=n310,use_dpdk=1,clock_source=internal,time_source=internal'.
>>>> > Using Device: Single USRP:
>>>> >   Device: N300-Series Device
>>>> >   Mboard 0: n310
>>>> >   RX Channel: 0
>>>> >     RX DSP: 0
>>>> >     RX Dboard: A
>>>> >     RX Subdev: Magnesium
>>>> >   RX Channel: 1
>>>> >     RX DSP: 1
>>>> >     RX Dboard: A
>>>> >     RX Subdev: Magnesium
>>>> >   RX Channel: 2
>>>> >     RX DSP: 2
>>>> >     RX Dboard: B
>>>> >     RX Subdev: Magnesium
>>>> >   RX Channel: 3
>>>> >     RX DSP: 3
>>>> >     RX Dboard: B
>>>> >     RX Subdev: Magnesium
>>>> >   TX Channel: 0
>>>> >     TX DSP: 0
>>>> >     TX Dboard: A
>>>> >     TX Subdev: Magnesium
>>>> >   TX Channel: 1
>>>> >     TX DSP: 1
>>>> >     TX Dboard: A
>>>> >     TX Subdev: Magnesium
>>>> >   TX Channel: 2
>>>> >     TX DSP: 2
>>>> >     TX Dboard: B
>>>> >     TX Subdev: Magnesium
>>>> >   TX Channel: 3
>>>> >     TX DSP: 3
>>>> >     TX Dboard: B
>>>> >     TX Subdev: Magnesium
>>>> >
>>>> > [00:00:03.21715319] Setting device timestamp to 0...
>>>> > [INFO] [MULTI_USRP]     1) catch time transition at pps edge
>>>> > [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
>>>> > [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>> > [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>>>> > [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>>>> > [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>> > Setting TX spp to 1989
>>>> > [00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels
>>>> > [00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4
>>>> channels
>>>> > [00:00:15.167869894] Benchmark complete.
>>>> >
>>>> >
>>>> > Benchmark rate summary:
>>>> >   Num received samples:     2549794336
>>>> >   Num dropped samples:      0
>>>> >   Num overruns detected:    0
>>>> >   Num transmitted samples:  2499910452
>>>> >   Num sequence errors (Tx): 0
>>>> >   Num sequence errors (Rx): 0
>>>> >   Num underruns detected:   0
>>>> >   Num late commands:        0
>>>> >   Num timeouts (Tx):        0
>>>> >   Num timeouts (Rx):        0
>>>> >
>>>> >
>>>> > Done!
>>>> >
>>>> > // Second run fails
>>>> > root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
>>>> --rx_rate=62.5e6 --channels="0,1,2,3"
>>>> --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
>>>> >
>>>> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.0-50-ge520e3ff
>>>> > EAL: Detected 8 lcore(s)
>>>> > EAL: Detected 1 NUMA nodes
>>>> > EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>>>> > EAL: No free hugepages reported in hugepages-1048576kB
>>>> > EAL: Probing VFIO support...
>>>> > EAL: VFIO support initialized
>>>> > EAL: PCI device 0000:03:00.0 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL:   using IOMMU type 1 (Type 1)
>>>> > EAL: PCI device 0000:03:00.1 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL: PCI device 0000:03:00.2 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL: PCI device 0000:03:00.3 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > [ERROR] [DPDK] All DPDK links did not report as up!
>>>> > EAL: FATAL: already called initialization.
>>>> > EAL: already called initialization.
>>>> > [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK
>>>> links did not report as up!
>>>> > [ERROR] [DPDK] Error with EAL initialization
>>>> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with
>>>> EAL initialization
>>>> > [00:00:00.000122] Creating the usrp device with:
>>>> use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
>>>> > EAL: FATAL: already called initialization.
>>>> > EAL: already called initialization.
>>>> > [ERROR] [DPDK] Error with EAL initialization
>>>> > [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
>>>> initialization
>>>> > EAL: FATAL: already called initialization.
>>>> > EAL: already called initialization.
>>>> > [ERROR] [DPDK] Error with EAL initialization
>>>> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with
>>>> EAL initialization
>>>> > Error: LookupError: KeyError: No devices found for ----->
>>>> > Device Address:
>>>> >     use_dpdk: 1
>>>> >     mgmt_addr: 192.168.1.88
>>>> >     addr: 192.168.60.2
>>>> >
>>>> > // Third run fails
>>>> > root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
>>>> --rx_rate=62.5e6 --channels="0,1,2,3"
>>>> --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
>>>> >
>>>> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.0-50-ge520e3ff
>>>> > EAL: Detected 8 lcore(s)
>>>> > EAL: Detected 1 NUMA nodes
>>>> > EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>>>> > EAL: No free hugepages reported in hugepages-1048576kB
>>>> > EAL: Probing VFIO support...
>>>> > EAL: VFIO support initialized
>>>> > EAL: PCI device 0000:03:00.0 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL:   using IOMMU type 1 (Type 1)
>>>> > EAL: PCI device 0000:03:00.1 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL: PCI device 0000:03:00.2 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > EAL: PCI device 0000:03:00.3 on NUMA socket -1
>>>> > EAL:   Invalid NUMA socket, default to 0
>>>> > EAL:   probe driver: 8086:1584 net_i40e
>>>> > [ERROR] [DPDK] All DPDK links did not report as up!
>>>> > EAL: FATAL: already called initialization.
>>>> > EAL: already called initialization.
>>>> > [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK
>>>> links did not report as up!
>>>> > [ERROR] [DPDK] Error with EAL initialization
>>>> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with
>>>> EAL initialization
>>>> > [00:00:00.000148] Creating the usrp device with:
>>>> use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
>>>> > EAL: FATAL: already called initialization.
>>>> > EAL: already called initialization.
>>>> > [ERROR] [DPDK] Error with EAL initialization
>>>> > [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
>>>> initialization
>>>> > EAL: FATAL: already called initialization.
>>>> > EAL: already called initialization.
>>>> > [ERROR] [DPDK] Error with EAL initialization
>>>> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with
>>>> EAL initialization
>>>> > Error: LookupError: KeyError: No devices found for ----->
>>>> > Device Address:
>>>> >     use_dpdk: 1
>>>> >     mgmt_addr: 192.168.1.88
>>>> >     addr: 192.168.60.2
>>>> >
>>>> >
>>>> >
>>>> > On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>> >>
>>>> >> On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users
>>>> >> <usrp-users@lists.ettus.com> wrote:
>>>> >>
>>>> >> > Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0,
>>>> Intel XL710 NIC, and N310 (or X310)?
>>>> >>
>>>> >> If I remember correctly, I believe DPDK tries to dlopen()
>>>> *everything*
>>>> >> in the directory specified by the dpdk_driver parameter in the DPDK
>>>> >> section of uhd.conf, leading to a lot of errors similar to yours
>>>> >> ('Invalid ELF header' and the like). Having the correct collection of
>>>> >> .so files in that directory is key.
>>>> >>
>>>> >> What's worked for me in the past when using DPDK with an Intel XL710
>>>> >> is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying
>>>> >> a specific set of DPDK .so files into this directory:
>>>> >> * librte_mempool_ring.so
>>>> >> * librte_pdump.so (I think this one is optional--I had been trying to
>>>> >> get packet dumps from DPDK a while back)
>>>> >> * librte_pmd_i40e.so
>>>> >> * librte_pmd_ixgbe.so (may be optional?)
>>>> >> * librte_pmd_pcap.so (this one is also optional, I think)
>>>> >> * librte_pmd_ring.so
>>>> >>
>>>> >> (Symlinking to the actual libraries wherever they get installed
>>>> >> instead of copying them into the directory would probably work as
>>>> >> well.)
>>>> >>
>>>> >> Then, make sure that the dpdk-driver key in the [use_dpdk=1] section
>>>> >> of uhd.conf points to that directory:
>>>> >> dpdk_driver = /usr/local/lib/dpdk-pmds
>>>> >>
>>>> >> Hopefully that will resolve the issue and get you a little further
>>>> >> down the road.
>>>> >>
>>>> >> Best regards,
>>>> >> Aaron
>>>> >>
>>>> >> _______________________________________________
>>>> >> USRP-users mailing list
>>>> >> USRP-users@lists.ettus.com
>>>> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a6123705ba761db4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,=C2=A0<div><br></div><div>Thanks for documenting yo=
ur steps. I can confirm most if not all of your problems on Centos 7, USRP =
N321, Intel XL710.=C2=A0@Ettus can we get some attention for this issue? DP=
DK is marketted as a huge improvement for max bandwidth applications, and I=
 have failed to see any real testing or use cases of it working more than o=
nce in a row. It is certainly a barrier for my applications, forcing me to =
reduce the sample rate and simplify the use cases.=C2=A0</div><div><br></di=
v><div>-Pat</div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 3, 2021 at 4:53 PM Rob Kossler =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">I am now to the point where things are kin=
d of working and I&#39;m basically giving up trying to make them better.=C2=
=A0 A few remarks for anyone who tries DPDK in the future (with N310, Ubunt=
u 20.04, Intel XL710 NIC, and UHD 4.0).<div><br><div>1) I can only get my a=
pplication to run once and then I have to do some stuff (see NOTE 1 below) =
to run again.</div><div>2) I get occasional (but much too often) lock-ups o=
f other applications running in Ubuntu.=C2=A0 This was previously my experi=
ence using DPDK under 3.15 (DPDK 17.11) but I had hoped things were better =
now.=C2=A0 They are not.=C2=A0 See below for more details (NOTE 2 below) on=
 this. Note that these lockups do not occur even occasionally when not runn=
ing with DPDK.</div><div>3) The instructions in the UHD manual are not near=
ly good enough to get things running.</div><div>4) I first got things worki=
ng as &quot;root&quot; (as recommended), but this caused some ancillary iss=
ues with my apps. Fortunately, I was able to get it to run as a lowly user =
(see NOTE 3 below)</div><div>5) I could not get things working even once un=
til I followed Aaron&#39;s advice of putting just a few symlinks in a folde=
r and pointing to that folder from .config/uhd.conf (dpdk_driver=3D&lt;fold=
er&gt;). See NOTE 4 below.</div><div><br></div><div>Read on for the details=
 if interested.</div><div>Rob</div><div><br></div><div>NOTE 1: After I run =
and exit my app, I notice that the link LEDs on the SFP ports of the N310 a=
re not both on as they should be and I am unable to run a second time.=C2=
=A0 The following sequence fixes this (perhaps there is a better sequence b=
ut I haven&#39;t found it yet) such that I am able to re-run successfully.<=
/div><div>- sudo dpdk-devbind -b i40e=C2=A0 03:00.0 03.00.1=C2=A0 # bind no=
rmal driver</div><div>- sudo dpdk-devbind -b vfio-pci 03:00.0 03.00.1 # re-=
bind vfio-pci driver</div><div>- physically, unplug &amp; plug QSFP+ transc=
eiver on XL710 (sometimes have to do this 2 or 3 times before it &quot;fixe=
s&quot; the link LEDs on N310 SFPs)</div><div><br></div><div>NOTE 2: The fa=
ct that DPDK takes over the CPU cores (at least 1 if not 2 of them) seems t=
o cause issues with other apps.=C2=A0 In the past I have even had issues wi=
th keyboard/mouse input that became intolerably slow. I didn&#39;t have key=
board/mouse issues this time, but I did have issues with a companion applic=
ation that I run alongside my c++/UHD application.=C2=A0 This companion app=
lication (actually Matlab based control/display GUI) would lock up such tha=
t I couldn&#39;t even close it down.=C2=A0 But, once I stop my c++/UHD appl=
ication, everything starts behaving normally.=C2=A0 Note that I NEVER have =
this issue when running the same applications without DPDK.=C2=A0 I tried t=
he grub update &quot;isolcpus=3DN,M&quot; but not sure if this helped or no=
t.=C2=A0 I also tried changing my DPDK corelist from 0,1 to 6,7 because in =
the past I had convinced myself (perhaps wrongly) that things behaved bette=
r if not using CPU 0.=C2=A0 I have no hard evidence to support this.=C2=A0 =
In the end, things mostly work, but these lockups are reason enough to avoi=
d DPDK.</div><div><br></div><div>NOTE 3: I did the following to run as lowl=
y user rather than root.</div><div>1) updated /etc/security/limits.conf to =
use the following. I really have no idea if these are reasonable values or =
not. The DPDK docs indicated that these are the relevant settings to adjust=
 but gave no advice on what they should be set to.</div><div>&lt;username&g=
t; - memlock 2000000<br>&lt;username&gt; - nofile =C2=A02000<br>&lt;usernam=
e&gt; - locks =C2=A0 2000<br></div><div>2) after binding the vfio-pci drive=
r using dpdk-devbind, I ran the following. The first two are commands I det=
ermined after running the DPDK usertools/dpdk-setup.sh utility and then loo=
king at the source to see the exact chmod settings used by this utility (BT=
W, this utility was helpful).=C2=A0 The third was recommended in the DPDK d=
ocumentation.</div><div>sudo chmod a+x /dev/vfio<br>sudo chmod 0666 /dev/vf=
io/*<br>sudo chmod a+w /dev/hugepages/<br></div><div><br></div><div>NOTE 4:=
 The following are the few symlinks I put in a folder I created &quot;/usr/=
local/lib/dpdk-pmds/&quot;.=C2=A0 After pointing the dpdk_driver=3D&lt;fold=
er&gt; setting in uhd.conf to this, I was able to run successfully.=C2=A0</=
div><div>librte_mempool_ring.so, librte_pmd_i40e.so, librte_pmd_ixgbe.so, a=
nd librte_pmd_ring.so.</div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 3, 2021 at 10:44 AM Rob Kossl=
er &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div><font face=3D"monospace">Hi Aaron,</font></div><div><=
font face=3D"monospace">Two things:</font></div><div><font face=3D"monospac=
e">1) I am getting an error message at the conclusion of a successful run (=
see below). Not sure if this is something I should be looking at or if it i=
s harmless.</font></div><div><font face=3D"monospace">2) I figured out a se=
quence of steps that can &quot;fix&quot; my broken state following a succes=
sful run. If I do the following, the links are fixed:</font></div><div><fon=
t face=3D"monospace">=C2=A0 a) dpdk-devbind -b i40e 03:00.0 03:00.1=C2=A0 =
=C2=A0// bind to the normal driver</font></div><div><font face=3D"monospace=
">=C2=A0 b) dpdk-devbind -b vfio-pci 03:00.0 03:00.1=C2=A0 // bind back to =
the vfio-pci driver</font></div><div><font face=3D"monospace">=C2=A0 c) phy=
sically unplug &amp; plug the XL710 QSFP+ transceiver=C2=A0(mine is optical=
, but unplugging just the MTP does not do the trick - I need to unplug the =
full transceiver)</font></div><div><br></div><div>Once I complete the seque=
nce above, the link LEDs are back to normal and I can complete another run =
of benchmark_rate. This is obviously a bad solution so if you have any idea=
s, please let me know.</div><div>Rob</div><div><br></div><font face=3D"mono=
space">[00:00:05.113788990] Testing receive rate 125.000000 Msps on 4 chann=
els<br>[00:00:05.120454627] Testing transmit rate 125.000000 Msps on 4 chan=
nels<br>[00:00:15.373972384] Benchmark complete.<br><br>Benchmark rate summ=
ary:<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 5099558824<br>=C2=A0 Num=
 dropped samples: =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =
=C2=A0 =C2=A00<br>=C2=A0 Num transmitted samples: =C2=A04999335588<br>=C2=
=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 0<br>=
=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Num late commands: =C2=A0=
 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =
=C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><b=
r>Done!<br><br><span style=3D"background-color:rgb(255,255,0)">i40e_phy_con=
f_link(): Failed to get PHY capabilities: -7</span><br></font><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Feb 3, 2021 at 10:16 AM Rob Kossler &lt;<a href=3D"mailto:rkossle=
r@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
">Hi Aaron,<div>Unfortunately, I already tried playing around with the link=
 timeout increasing up to 10 seconds.=C2=A0 No luck.=C2=A0 But, I am presen=
tly troubleshooting the issue and trying to switch back and forth between D=
PDK and normal networking. I am finding that normal networking is not worki=
ng after 1 run of DPDK. And, I&#39;m noticing that link LEDs are messed up =
and normal pings are not working.=C2=A0 I am playing around with disconnect=
ing / reconnecting links in order to get the link LEDs back to normal.=C2=
=A0 My guess is that things are not cleaning up as they should.=C2=A0</div>=
<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 3, 2021 at 9:51 AM Aaron Rossetto via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">I notice in the second and subsequent runs, you get th=
is message from UHD:<br>
<br>
[ERROR] [DPDK] All DPDK links did not report as up!<br>
<br>
One of the other issues I&#39;ve noticed with DPDK (and unfortunately<br>
don&#39;t have an answer for) is that link detection seems to have issues.<=
br>
I&#39;m not sure if this is an XL710-specific problem or whether it&#39;s m=
ore<br>
widespread, but I added some code to try to mitigate things somewhat<br>
in commit eada49e4d. This commit checks the link status at<br>
250-millisecond intervals for up to the link status timeout (default 1<br>
second) in case the links take a while to register as up. One thing<br>
you could try is overriding the default link status timeout and<br>
increasing the value, which you can do by adding a dpdk_link_timeout=3DX<br=
>
line to the [use_dpdk=3D1] section of your uhd.conf file, where X is the<br=
>
new timeout in number of milliseconds.<br>
<br>
Best regards,<br>
Aaron<br>
<br>
On Tue, Feb 2, 2021 at 1:47 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Aaron,<br>
&gt; This did indeed help.=C2=A0 Now I am able to run ONCE successfully.=C2=
=A0 After that I get an error.=C2=A0 Same behavior on both systems.=C2=A0 N=
ot yet sure how to clear the error.=C2=A0 I played with dpdk_link_timeout a=
nd even tried resetting the N310 using &quot;overlay rm n310 &amp;&amp; ove=
rlay add n310 &amp;&amp; systemctl restart usrp-hwd&quot;.=C2=A0 But no luc=
k.<br>
&gt; Rob<br>
&gt;<br>
&gt; // First run succeeds<br>
&gt; root@irisheyes5-hp-z240-sff:~# uhd_image_loader --args=3D&quot;addr=3D=
192.168.1.88,type=3Dn3xx,fpga=3DXG&quot;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144673,claimed=3DFals=
e,skip_init=3D1<br>
&gt; [WARNING] [MPM.RPCServer] A timeout event occured!<br>
&gt; [INFO] [MPMD] Claimed device without full initialization.<br>
&gt; [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>
&gt; [INFO] [MPM.PeriphManager] Updating component `fpga&#39;<br>
&gt; [INFO] [MPM.PeriphManager] Updating component `dts&#39;<br>
&gt; [INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
&gt; [INFO] [MPM.PeriphManager] Device serial number: 3144673<br>
&gt; [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal&#39;.<br>
&gt; [INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>
&gt; root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_=
rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,=
mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: Detected 1 NUMA nodes<br>
&gt; EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)<br>
&gt; EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; [00:00:00.000152] Creating the usrp device with: use_dpdk=3D1,mgmt_add=
r=3D192.168.1.88,addr=3D192.168.60.2...<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144673,claimed=3DFals=
e,use_dpdk=3D1,addr=3D192.168.60.2<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.1.88,product=3Dn310,use_dpdk=3D1,clock_source=3Dinternal,time_so=
urce=3Dinternal&#39;.<br>
&gt; Using Device: Single USRP:<br>
&gt;=C2=A0 =C2=A0Device: N300-Series Device<br>
&gt;=C2=A0 =C2=A0Mboard 0: n310<br>
&gt;=C2=A0 =C2=A0RX Channel: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX DSP: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0RX Channel: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX DSP: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0RX Channel: 2<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX DSP: 2<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Dboard: B<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0RX Channel: 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX DSP: 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Dboard: B<br>
&gt;=C2=A0 =C2=A0 =C2=A0RX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0TX Channel: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX DSP: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0TX Channel: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX DSP: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0TX Channel: 2<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX DSP: 2<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Dboard: B<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Subdev: Magnesium<br>
&gt;=C2=A0 =C2=A0TX Channel: 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX DSP: 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Dboard: B<br>
&gt;=C2=A0 =C2=A0 =C2=A0TX Subdev: Magnesium<br>
&gt;<br>
&gt; [00:00:03.21715319] Setting device timestamp to 0...<br>
&gt; [INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time transition at pps=
 edge<br>
&gt; [INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) set times next pps (synchron=
ously)<br>
&gt; [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
&gt; [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.<br>
&gt; [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.<br>
&gt; [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
&gt; Setting TX spp to 1989<br>
&gt; [00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels=
<br>
&gt; [00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4 channel=
s<br>
&gt; [00:00:15.167869894] Benchmark complete.<br>
&gt;<br>
&gt;<br>
&gt; Benchmark rate summary:<br>
&gt;=C2=A0 =C2=A0Num received samples:=C2=A0 =C2=A0 =C2=A02549794336<br>
&gt;=C2=A0 =C2=A0Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0<br>
&gt;=C2=A0 =C2=A0Num overruns detected:=C2=A0 =C2=A0 0<br>
&gt;=C2=A0 =C2=A0Num transmitted samples:=C2=A0 2499910452<br>
&gt;=C2=A0 =C2=A0Num sequence errors (Tx): 0<br>
&gt;=C2=A0 =C2=A0Num sequence errors (Rx): 0<br>
&gt;=C2=A0 =C2=A0Num underruns detected:=C2=A0 =C2=A00<br>
&gt;=C2=A0 =C2=A0Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br>
&gt;=C2=A0 =C2=A0Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br>
&gt;=C2=A0 =C2=A0Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br>
&gt;<br>
&gt;<br>
&gt; Done!<br>
&gt;<br>
&gt; // Second run fails<br>
&gt; root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_=
rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,=
mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: Detected 1 NUMA nodes<br>
&gt; EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)<br>
&gt; EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; [ERROR] [DPDK] All DPDK links did not report as up!<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK lin=
ks did not report as up!<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; [00:00:00.000122] Creating the usrp device with: use_dpdk=3D1,mgmt_add=
r=3D192.168.1.88,addr=3D192.168.60.2...<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL ini=
tialization<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; Error: LookupError: KeyError: No devices found for -----&gt;<br>
&gt; Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0use_dpdk: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr: 192.168.1.88<br>
&gt;=C2=A0 =C2=A0 =C2=A0addr: 192.168.60.2<br>
&gt;<br>
&gt; // Third run fails<br>
&gt; root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_=
rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,=
mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: Detected 1 NUMA nodes<br>
&gt; EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)<br>
&gt; EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>
&gt; EAL:=C2=A0 =C2=A0Invalid NUMA socket, default to 0<br>
&gt; EAL:=C2=A0 =C2=A0probe driver: 8086:1584 net_i40e<br>
&gt; [ERROR] [DPDK] All DPDK links did not report as up!<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK lin=
ks did not report as up!<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; [00:00:00.000148] Creating the usrp device with: use_dpdk=3D1,mgmt_add=
r=3D192.168.1.88,addr=3D192.168.60.2...<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL ini=
tialization<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; Error: LookupError: KeyError: No devices found for -----&gt;<br>
&gt; Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0use_dpdk: 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0mgmt_addr: 192.168.1.88<br>
&gt;=C2=A0 =C2=A0 =C2=A0addr: 192.168.60.2<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users<br>
&gt;&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0,=
 Intel XL710 NIC, and N310 (or X310)?<br>
&gt;&gt;<br>
&gt;&gt; If I remember correctly, I believe DPDK tries to dlopen() *everyth=
ing*<br>
&gt;&gt; in the directory specified by the dpdk_driver parameter in the DPD=
K<br>
&gt;&gt; section of uhd.conf, leading to a lot of errors similar to yours<b=
r>
&gt;&gt; (&#39;Invalid ELF header&#39; and the like). Having the correct co=
llection of<br>
&gt;&gt; .so files in that directory is key.<br>
&gt;&gt;<br>
&gt;&gt; What&#39;s worked for me in the past when using DPDK with an Intel=
 XL710<br>
&gt;&gt; is creating a directory (I used /usr/local/lib/dpdk-pmds) and copy=
ing<br>
&gt;&gt; a specific set of DPDK .so files into this directory:<br>
&gt;&gt; * librte_mempool_ring.so<br>
&gt;&gt; * librte_pdump.so (I think this one is optional--I had been trying=
 to<br>
&gt;&gt; get packet dumps from DPDK a while back)<br>
&gt;&gt; * librte_pmd_i40e.so<br>
&gt;&gt; * librte_pmd_ixgbe.so (may be optional?)<br>
&gt;&gt; * librte_pmd_pcap.so (this one is also optional, I think)<br>
&gt;&gt; * librte_pmd_ring.so<br>
&gt;&gt;<br>
&gt;&gt; (Symlinking to the actual libraries wherever they get installed<br=
>
&gt;&gt; instead of copying them into the directory would probably work as<=
br>
&gt;&gt; well.)<br>
&gt;&gt;<br>
&gt;&gt; Then, make sure that the dpdk-driver key in the [use_dpdk=3D1] sec=
tion<br>
&gt;&gt; of uhd.conf points to that directory:<br>
&gt;&gt; dpdk_driver =3D /usr/local/lib/dpdk-pmds<br>
&gt;&gt;<br>
&gt;&gt; Hopefully that will resolve the issue and get you a little further=
<br>
&gt;&gt; down the road.<br>
&gt;&gt;<br>
&gt;&gt; Best regards,<br>
&gt;&gt; Aaron<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6123705ba761db4--


--===============6761717035694593727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6761717035694593727==--

