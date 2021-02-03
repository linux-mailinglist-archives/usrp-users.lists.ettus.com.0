Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0D730DDE1
	for <lists+usrp-users@lfdr.de>; Wed,  3 Feb 2021 16:17:04 +0100 (CET)
Received: from [::1] (port=57794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7Jtv-0001V3-4v; Wed, 03 Feb 2021 10:17:03 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:39207)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l7Jtq-0001OG-Nb
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 10:16:58 -0500
Received: by mail-oi1-f180.google.com with SMTP id w124so192999oia.6
 for <usrp-users@lists.ettus.com>; Wed, 03 Feb 2021 07:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ob/i/bq7yk91jvS4xifsJW2U7+mGKXYTeqVXAURqSqk=;
 b=fptxbzAKIaXELYzMKR4WMVv1ZOcNDdvqOyiRVcCW5avZRVjud8IiKd+b6NIykYfxyg
 RqM2GNVJOLorSa93qY+A2njQAO55ThNb7sxrxLxn9xNh5mYDZztdFZ849IQ1DkWwOUlF
 eWyfd1clVMuHoVcdnCbbA8SB94BOyoVunDFLwK9mhjRuSUEPxu//G2jkpJqQBpN0SzE/
 H9EIiMm4C67sH8O1jQyP8P1Oe/oaSKE3wams8XyPUYEtvGu32vPBDpbAKX+YusRzwiey
 nI5t/4/0iNRP428ZfVqYQZus6CYKBKZjTGx+dux1GS/0o4hFD1S63funnviepA+DtOIW
 xPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ob/i/bq7yk91jvS4xifsJW2U7+mGKXYTeqVXAURqSqk=;
 b=lW6Q1Rqt2FY+DzzUnk7Ck03DDrALm13T0LjvFOQIqvp5faF/F0jJnPDU++JCOYpIwj
 jTtMAWV9Sy7WxbGwqpKZVFlKPmaGmph5mhSY6hAIQaxDnY5pB9n/2fDKggkYtzJnBzAI
 3uaGDFmxNYmS4H8HbPa2cQkNO7BudNekEuphjNbBFdUc1hyxdj52Pz++csPGpxwkI/nE
 p5JDioxGMY9rQO6Uzt/r5G9mwI4MFle2sgIo7v5uQ1eC8rzt4nV87EsVFqtO91qqq5oG
 YwZRZnb4mzAHz82aIq0I0kMteZMgFzMZjTU429JhD29X4rif11tLjlUyS/Mnm77m1QW0
 cjow==
X-Gm-Message-State: AOAM530ANuV5kb3jFpE3jPUgnZEuVp8Edj7VxjY2mzpM5cdQ6vLcOLIM
 bPOTEwqCOUYVlzITABtQLQ4kTwi6r4VnkJ/9n4mRNA==
X-Google-Smtp-Source: ABdhPJw3aYNOfqpuGkOh9u7lNK1Ye3aLbDUgsQQNXrMIB8kfxp0nczbPGceNwXXjRcElZaK46wUwld582mzV15cYXr8=
X-Received: by 2002:aca:4c85:: with SMTP id z127mr2304961oia.124.1612365377641; 
 Wed, 03 Feb 2021 07:16:17 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
 <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
 <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
 <CAB__hTS2ECbCBYoGXDicytwurDEJsmtPwXm-tBp+d6JOw8a87A@mail.gmail.com>
 <CAAg5+MwQ1CqfBOMOiKrukhxkoRtxpSqh3ZdNz_7VPBHMBo3Nhg@mail.gmail.com>
In-Reply-To: <CAAg5+MwQ1CqfBOMOiKrukhxkoRtxpSqh3ZdNz_7VPBHMBo3Nhg@mail.gmail.com>
Date: Wed, 3 Feb 2021 10:16:06 -0500
Message-ID: <CAB__hTS4d0uQTFpuUtGokV36PV+LJRistR1FsNAC7zg=b0ACEg@mail.gmail.com>
To: Aaron Rossetto <aaron.rossetto@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3198853305045380031=="
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

--===============3198853305045380031==
Content-Type: multipart/alternative; boundary="0000000000009571d005ba7011a2"

--0000000000009571d005ba7011a2
Content-Type: text/plain; charset="UTF-8"

Hi Aaron,
Unfortunately, I already tried playing around with the link timeout
increasing up to 10 seconds.  No luck.  But, I am presently troubleshooting
the issue and trying to switch back and forth between DPDK and normal
networking. I am finding that normal networking is not working after 1 run
of DPDK. And, I'm noticing that link LEDs are messed up and normal pings
are not working.  I am playing around with disconnecting / reconnecting
links in order to get the link LEDs back to normal.  My guess is that
things are not cleaning up as they should.
Rob

On Wed, Feb 3, 2021 at 9:51 AM Aaron Rossetto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I notice in the second and subsequent runs, you get this message from UHD:
>
> [ERROR] [DPDK] All DPDK links did not report as up!
>
> One of the other issues I've noticed with DPDK (and unfortunately
> don't have an answer for) is that link detection seems to have issues.
> I'm not sure if this is an XL710-specific problem or whether it's more
> widespread, but I added some code to try to mitigate things somewhat
> in commit eada49e4d. This commit checks the link status at
> 250-millisecond intervals for up to the link status timeout (default 1
> second) in case the links take a while to register as up. One thing
> you could try is overriding the default link status timeout and
> increasing the value, which you can do by adding a dpdk_link_timeout=X
> line to the [use_dpdk=1] section of your uhd.conf file, where X is the
> new timeout in number of milliseconds.
>
> Best regards,
> Aaron
>
> On Tue, Feb 2, 2021 at 1:47 PM Rob Kossler <rkossler@nd.edu> wrote:
> >
> > Hi Aaron,
> > This did indeed help.  Now I am able to run ONCE successfully.  After
> that I get an error.  Same behavior on both systems.  Not yet sure how to
> clear the error.  I played with dpdk_link_timeout and even tried resetting
> the N310 using "overlay rm n310 && overlay add n310 && systemctl restart
> usrp-hwd".  But no luck.
> > Rob
> >
> > // First run succeeds
> > root@irisheyes5-hp-z240-sff:~# uhd_image_loader
> --args="addr=192.168.1.88,type=n3xx,fpga=XG"
> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-50-ge520e3ff
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,skip_init=1
> > [WARNING] [MPM.RPCServer] A timeout event occured!
> > [INFO] [MPMD] Claimed device without full initialization.
> > [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> > [INFO] [MPM.PeriphManager] Updating component `fpga'
> > [INFO] [MPM.PeriphManager] Updating component `dts'
> > [INFO] [MPM.RPCServer] Resetting peripheral manager.
> > [INFO] [MPM.PeriphManager] Device serial number: 3144673
> > [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> > [INFO] [MPM.PeriphManager] init() called with device args
> `clock_source=internal,time_source=internal'.
> > [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> > root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
> --rx_rate=62.5e6 --channels="0,1,2,3"
> --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
> >
> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-50-ge520e3ff
> > EAL: Detected 8 lcore(s)
> > EAL: Detected 1 NUMA nodes
> > EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> > EAL: No free hugepages reported in hugepages-1048576kB
> > EAL: Probing VFIO support...
> > EAL: VFIO support initialized
> > EAL: PCI device 0000:03:00.0 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL:   using IOMMU type 1 (Type 1)
> > EAL: PCI device 0000:03:00.1 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL: PCI device 0000:03:00.2 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL: PCI device 0000:03:00.3 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > [00:00:00.000152] Creating the usrp device with:
> use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,use_dpdk=1,addr=192.168.60.2
> > [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=192.168.1.88,product=n310,use_dpdk=1,clock_source=internal,time_source=internal'.
> > Using Device: Single USRP:
> >   Device: N300-Series Device
> >   Mboard 0: n310
> >   RX Channel: 0
> >     RX DSP: 0
> >     RX Dboard: A
> >     RX Subdev: Magnesium
> >   RX Channel: 1
> >     RX DSP: 1
> >     RX Dboard: A
> >     RX Subdev: Magnesium
> >   RX Channel: 2
> >     RX DSP: 2
> >     RX Dboard: B
> >     RX Subdev: Magnesium
> >   RX Channel: 3
> >     RX DSP: 3
> >     RX Dboard: B
> >     RX Subdev: Magnesium
> >   TX Channel: 0
> >     TX DSP: 0
> >     TX Dboard: A
> >     TX Subdev: Magnesium
> >   TX Channel: 1
> >     TX DSP: 1
> >     TX Dboard: A
> >     TX Subdev: Magnesium
> >   TX Channel: 2
> >     TX DSP: 2
> >     TX Dboard: B
> >     TX Subdev: Magnesium
> >   TX Channel: 3
> >     TX DSP: 3
> >     TX Dboard: B
> >     TX Subdev: Magnesium
> >
> > [00:00:03.21715319] Setting device timestamp to 0...
> > [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> > [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> > [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> > [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> > [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> > [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> > Setting TX spp to 1989
> > [00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels
> > [00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4 channels
> > [00:00:15.167869894] Benchmark complete.
> >
> >
> > Benchmark rate summary:
> >   Num received samples:     2549794336
> >   Num dropped samples:      0
> >   Num overruns detected:    0
> >   Num transmitted samples:  2499910452
> >   Num sequence errors (Tx): 0
> >   Num sequence errors (Rx): 0
> >   Num underruns detected:   0
> >   Num late commands:        0
> >   Num timeouts (Tx):        0
> >   Num timeouts (Rx):        0
> >
> >
> > Done!
> >
> > // Second run fails
> > root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
> --rx_rate=62.5e6 --channels="0,1,2,3"
> --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
> >
> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-50-ge520e3ff
> > EAL: Detected 8 lcore(s)
> > EAL: Detected 1 NUMA nodes
> > EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> > EAL: No free hugepages reported in hugepages-1048576kB
> > EAL: Probing VFIO support...
> > EAL: VFIO support initialized
> > EAL: PCI device 0000:03:00.0 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL:   using IOMMU type 1 (Type 1)
> > EAL: PCI device 0000:03:00.1 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL: PCI device 0000:03:00.2 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL: PCI device 0000:03:00.3 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > [ERROR] [DPDK] All DPDK links did not report as up!
> > EAL: FATAL: already called initialization.
> > EAL: already called initialization.
> > [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links
> did not report as up!
> > [ERROR] [DPDK] Error with EAL initialization
> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
> initialization
> > [00:00:00.000122] Creating the usrp device with:
> use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
> > EAL: FATAL: already called initialization.
> > EAL: already called initialization.
> > [ERROR] [DPDK] Error with EAL initialization
> > [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
> initialization
> > EAL: FATAL: already called initialization.
> > EAL: already called initialization.
> > [ERROR] [DPDK] Error with EAL initialization
> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
> initialization
> > Error: LookupError: KeyError: No devices found for ----->
> > Device Address:
> >     use_dpdk: 1
> >     mgmt_addr: 192.168.1.88
> >     addr: 192.168.60.2
> >
> > // Third run fails
> > root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
> --rx_rate=62.5e6 --channels="0,1,2,3"
> --args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"
> >
> > [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-50-ge520e3ff
> > EAL: Detected 8 lcore(s)
> > EAL: Detected 1 NUMA nodes
> > EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> > EAL: No free hugepages reported in hugepages-1048576kB
> > EAL: Probing VFIO support...
> > EAL: VFIO support initialized
> > EAL: PCI device 0000:03:00.0 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL:   using IOMMU type 1 (Type 1)
> > EAL: PCI device 0000:03:00.1 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL: PCI device 0000:03:00.2 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > EAL: PCI device 0000:03:00.3 on NUMA socket -1
> > EAL:   Invalid NUMA socket, default to 0
> > EAL:   probe driver: 8086:1584 net_i40e
> > [ERROR] [DPDK] All DPDK links did not report as up!
> > EAL: FATAL: already called initialization.
> > EAL: already called initialization.
> > [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links
> did not report as up!
> > [ERROR] [DPDK] Error with EAL initialization
> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
> initialization
> > [00:00:00.000148] Creating the usrp device with:
> use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
> > EAL: FATAL: already called initialization.
> > EAL: already called initialization.
> > [ERROR] [DPDK] Error with EAL initialization
> > [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
> initialization
> > EAL: FATAL: already called initialization.
> > EAL: already called initialization.
> > [ERROR] [DPDK] Error with EAL initialization
> > [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
> initialization
> > Error: LookupError: KeyError: No devices found for ----->
> > Device Address:
> >     use_dpdk: 1
> >     mgmt_addr: 192.168.1.88
> >     addr: 192.168.60.2
> >
> >
> >
> > On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >>
> >> On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users
> >> <usrp-users@lists.ettus.com> wrote:
> >>
> >> > Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel
> XL710 NIC, and N310 (or X310)?
> >>
> >> If I remember correctly, I believe DPDK tries to dlopen() *everything*
> >> in the directory specified by the dpdk_driver parameter in the DPDK
> >> section of uhd.conf, leading to a lot of errors similar to yours
> >> ('Invalid ELF header' and the like). Having the correct collection of
> >> .so files in that directory is key.
> >>
> >> What's worked for me in the past when using DPDK with an Intel XL710
> >> is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying
> >> a specific set of DPDK .so files into this directory:
> >> * librte_mempool_ring.so
> >> * librte_pdump.so (I think this one is optional--I had been trying to
> >> get packet dumps from DPDK a while back)
> >> * librte_pmd_i40e.so
> >> * librte_pmd_ixgbe.so (may be optional?)
> >> * librte_pmd_pcap.so (this one is also optional, I think)
> >> * librte_pmd_ring.so
> >>
> >> (Symlinking to the actual libraries wherever they get installed
> >> instead of copying them into the directory would probably work as
> >> well.)
> >>
> >> Then, make sure that the dpdk-driver key in the [use_dpdk=1] section
> >> of uhd.conf points to that directory:
> >> dpdk_driver = /usr/local/lib/dpdk-pmds
> >>
> >> Hopefully that will resolve the issue and get you a little further
> >> down the road.
> >>
> >> Best regards,
> >> Aaron
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009571d005ba7011a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Aaron,<div>Unfortunately, I already tr=
ied playing around with the link timeout increasing up to 10 seconds.=C2=A0=
 No luck.=C2=A0 But, I am presently troubleshooting the issue and trying to=
 switch back and forth between DPDK and normal networking. I am finding tha=
t normal networking is not working after 1 run of DPDK. And, I&#39;m notici=
ng that link LEDs are messed up and normal pings are not working.=C2=A0 I a=
m playing around with disconnecting / reconnecting links in order to get th=
e link LEDs back to normal.=C2=A0 My guess is that things are not cleaning =
up as they should.=C2=A0</div><div>Rob</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 3, 2021 at 9:51 AM =
Aaron Rossetto via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">I notice in the second and subsequent runs=
, you get this message from UHD:<br>
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

--0000000000009571d005ba7011a2--


--===============3198853305045380031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3198853305045380031==--

