Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3F530CC2A
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 20:48:26 +0100 (CET)
Received: from [::1] (port=50114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l71ev-0000uO-RO; Tue, 02 Feb 2021 14:48:21 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:37091)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l71es-0000n8-MM
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 14:48:18 -0500
Received: by mail-oi1-f178.google.com with SMTP id a77so24089551oii.4
 for <usrp-users@lists.ettus.com>; Tue, 02 Feb 2021 11:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=injnX4cHUaA4fGXzZg9Uf0h/WoHq3iL3OVQPdxdcvVU=;
 b=IQbdGe9THyYCkveilwPagFscLzSWykC4yD9DoAFqW5/2FsQ/2fCQ76K1ERYQtEfYqh
 yP/5zMVyTOEMoVzfYRaNIPaykZDd6LPWWykVJVwhoMYohmCAK/i8Rnseqq53cE4zg0D4
 7mv0Sf2vyOO9M4GCSs1Z6j3tddKpy8owyuHJ0m0M2zrVSpBatVswWYsaC0QJLNq3LyuA
 8fHrLo8RbabTcaFc29Cmr/NCig/vXHsC7ROndg6y/w/+3Ng0tFzIvYBxZI/GGgnee9hk
 yyujwvweYid6sL5eqsQEM2hiVDOB+wL6baEFYKkJBVqo0a27iYdeXk9/ej7OPyE7wmgc
 a9qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=injnX4cHUaA4fGXzZg9Uf0h/WoHq3iL3OVQPdxdcvVU=;
 b=nj/LaJePUB6QIhy0Lq2l4ZdZDl7/s5ttjKlXUhalwQFtiHyE2UC0lVcGvFF+oIQslu
 zLlCcplljGuVsXboHI4fqOA9IPozqxk5Hhyk3JhSGac0rpmAlfj5PI8dljgNcymwpp7z
 uBi39oZcFVYGAOxRPNkqViAemUMFTiU7Wc+bDEqgyCa+2o4/FHUgb6mjEUj51M0vp2vW
 6FoCb3ilf2dIaIBlyCrcOdpEgXE+2zX9IT0Qzd25O8+Jlt+LD7qV4LkMgmVDAfLXzSPL
 kWlSFulAJEMNUC4PXcnwpltUrh58rEytJcYXlmxnXbNY1KyxeW3f7S5TmYVt3KLnfov5
 YWQA==
X-Gm-Message-State: AOAM533nPkWylniP0Tqg1mNjCEV5isoFJngELQE2OhWBzYrOLHhL1wZB
 o7uycXucAdqt2/+x1ZsG3s0OP+2H17CL+nMNntv2gQ==
X-Google-Smtp-Source: ABdhPJwEP/yyjaQqfRSDCCt18CuNAXVeF/2b/iTJaMm46/AL8q/k1DbLs0dwhza+jLLmfCZFTTdlleiCDyyVNvtKibo=
X-Received: by 2002:aca:4c85:: with SMTP id z127mr3975817oia.124.1612295257492; 
 Tue, 02 Feb 2021 11:47:37 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
 <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
 <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
In-Reply-To: <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
Date: Tue, 2 Feb 2021 14:47:26 -0500
Message-ID: <CAB__hTS2ECbCBYoGXDicytwurDEJsmtPwXm-tBp+d6JOw8a87A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8019589825370683359=="
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

--===============8019589825370683359==
Content-Type: multipart/alternative; boundary="00000000000019095c05ba5fbe5b"

--00000000000019095c05ba5fbe5b
Content-Type: text/plain; charset="UTF-8"

Hi Aaron,
This did indeed help.  Now I am able to run ONCE successfully.  After that
I get an error.  Same behavior on both systems.  Not yet sure how to clear
the error.  I played with dpdk_link_timeout and even tried resetting the
N310 using "overlay rm n310 && overlay add n310 && systemctl restart
usrp-hwd".  But no luck.
Rob

// First run succeeds
root@irisheyes5-hp-z240-sff:~# uhd_image_loader
--args="addr=192.168.1.88,type=n3xx,fpga=XG"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-50-ge520e3ff
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,skip_init=1
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 3144673
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`clock_source=internal,time_source=internal'.
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
--rx_rate=62.5e6 --channels="0,1,2,3"
--args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-50-ge520e3ff
EAL: Detected 8 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:03:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL:   using IOMMU type 1 (Type 1)
EAL: PCI device 0000:03:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL: PCI device 0000:03:00.2 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL: PCI device 0000:03:00.3 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
[00:00:00.000152] Creating the usrp device with:
use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.88,type=n3xx,product=n310,serial=3144673,claimed=False,use_dpdk=1,addr=192.168.60.2
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=192.168.1.88,product=n310,use_dpdk=1,clock_source=internal,time_source=internal'.
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 2
    RX DSP: 2
    RX Dboard: B
    RX Subdev: Magnesium
  RX Channel: 3
    RX DSP: 3
    RX Dboard: B
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 2
    TX DSP: 2
    TX Dboard: B
    TX Subdev: Magnesium
  TX Channel: 3
    TX DSP: 3
    TX Dboard: B
    TX Subdev: Magnesium

[00:00:03.21715319] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1989
[00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels
[00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4 channels
[00:00:15.167869894] Benchmark complete.


Benchmark rate summary:
  Num received samples:     2549794336
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  2499910452
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

// Second run fails
root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
--rx_rate=62.5e6 --channels="0,1,2,3"
--args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-50-ge520e3ff
EAL: Detected 8 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:03:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL:   using IOMMU type 1 (Type 1)
EAL: PCI device 0000:03:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL: PCI device 0000:03:00.2 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL: PCI device 0000:03:00.3 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
[ERROR] [DPDK] All DPDK links did not report as up!
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links
did not report as up!
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
initialization
[00:00:00.000122] Creating the usrp device with:
use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
initialization
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
initialization
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    use_dpdk: 1
    mgmt_addr: 192.168.1.88
    addr: 192.168.60.2

// Third run fails
root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=62.5e6
--rx_rate=62.5e6 --channels="0,1,2,3"
--args="use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2"

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-50-ge520e3ff
EAL: Detected 8 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:03:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL:   using IOMMU type 1 (Type 1)
EAL: PCI device 0000:03:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL: PCI device 0000:03:00.2 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
EAL: PCI device 0000:03:00.3 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:1584 net_i40e
[ERROR] [DPDK] All DPDK links did not report as up!
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links
did not report as up!
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
initialization
[00:00:00.000148] Creating the usrp device with:
use_dpdk=1,mgmt_addr=192.168.1.88,addr=192.168.60.2...
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
initialization
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
initialization
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    use_dpdk: 1
    mgmt_addr: 192.168.1.88
    addr: 192.168.60.2



On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users
> <usrp-users@lists.ettus.com> wrote:
>
> > Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel
> XL710 NIC, and N310 (or X310)?
>
> If I remember correctly, I believe DPDK tries to dlopen() *everything*
> in the directory specified by the dpdk_driver parameter in the DPDK
> section of uhd.conf, leading to a lot of errors similar to yours
> ('Invalid ELF header' and the like). Having the correct collection of
> .so files in that directory is key.
>
> What's worked for me in the past when using DPDK with an Intel XL710
> is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying
> a specific set of DPDK .so files into this directory:
> * librte_mempool_ring.so
> * librte_pdump.so (I think this one is optional--I had been trying to
> get packet dumps from DPDK a while back)
> * librte_pmd_i40e.so
> * librte_pmd_ixgbe.so (may be optional?)
> * librte_pmd_pcap.so (this one is also optional, I think)
> * librte_pmd_ring.so
>
> (Symlinking to the actual libraries wherever they get installed
> instead of copying them into the directory would probably work as
> well.)
>
> Then, make sure that the dpdk-driver key in the [use_dpdk=1] section
> of uhd.conf points to that directory:
> dpdk_driver = /usr/local/lib/dpdk-pmds
>
> Hopefully that will resolve the issue and get you a little further
> down the road.
>
> Best regards,
> Aaron
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000019095c05ba5fbe5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Aaron,<div>This did indeed help.=C2=A0 Now I am able to=
 run ONCE successfully.=C2=A0 After that I get an error.=C2=A0 Same behavio=
r on both systems.=C2=A0 Not yet sure how to clear the error.=C2=A0 I playe=
d with dpdk_link_timeout and even tried resetting the N310 using &quot;over=
lay rm n310 &amp;&amp; overlay add n310 &amp;&amp; systemctl restart usrp-h=
wd&quot;.=C2=A0 But no luck.</div><div>Rob</div><div><br></div><div><font f=
ace=3D"monospace" style=3D"background-color:rgb(255,255,0)">// First run su=
cceeds</font></div><div><font face=3D"monospace">root@irisheyes5-hp-z240-sf=
f:~# uhd_image_loader --args=3D&quot;addr=3D192.168.1.88,type=3Dn3xx,fpga=
=3DXG&quot;<br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD=
_4.0.0.0-50-ge520e3ff<br>[INFO] [MPMD] Initializing 1 device(s) in parallel=
 with args: mgmt_addr=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D31=
44673,claimed=3DFalse,skip_init=3D1<br>[WARNING] [MPM.RPCServer] A timeout =
event occured!<br>[INFO] [MPMD] Claimed device without full initialization.=
<br>[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>[=
INFO] [MPM.PeriphManager] Updating component `fpga&#39;<br>[INFO] [MPM.Peri=
phManager] Updating component `dts&#39;<br>[INFO] [MPM.RPCServer] Resetting=
 peripheral manager.<br>[INFO] [MPM.PeriphManager] Device serial number: 31=
44673<br>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>[INF=
O] [MPM.PeriphManager] init() called with device args `clock_source=3Dinter=
nal,time_source=3Dinternal&#39;.<br>[INFO] [MPMD IMAGE LOADER] Update compo=
nent function succeeded.<br>root@irisheyes5-hp-z240-sff:~# benchmark_rate -=
-tx_rate=3D62.5e6 --rx_rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --arg=
s=3D&quot;use_dpdk=3D1,mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<b=
r><br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-=
50-ge520e3ff<br>EAL: Detected 8 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>E=
AL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: No free hugepa=
ges reported in hugepages-1048576kB<br>EAL: Probing VFIO support...<br>EAL:=
 VFIO support initialized<br>EAL: PCI device 0000:03:00.0 on NUMA socket -1=
<br>EAL: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driv=
er: 8086:1584 net_i40e<br>EAL: =C2=A0 using IOMMU type 1 (Type 1)<br>EAL: P=
CI device 0000:03:00.1 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA socket=
, default to 0<br>EAL: =C2=A0 probe driver: 8086:1584 net_i40e<br>EAL: PCI =
device 0000:03:00.2 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA socket, d=
efault to 0<br>EAL: =C2=A0 probe driver: 8086:1584 net_i40e<br>EAL: PCI dev=
ice 0000:03:00.3 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA socket, defa=
ult to 0<br>EAL: =C2=A0 probe driver: 8086:1584 net_i40e<br>[00:00:00.00015=
2] Creating the usrp device with: use_dpdk=3D1,mgmt_addr=3D192.168.1.88,add=
r=3D192.168.60.2...<br>[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144=
673,claimed=3DFalse,use_dpdk=3D1,addr=3D192.168.60.2<br>[INFO] [MPM.PeriphM=
anager] init() called with device args `mgmt_addr=3D192.168.1.88,product=3D=
n310,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>U=
sing Device: Single USRP:<br>=C2=A0 Device: N300-Series Device<br>=C2=A0 Mb=
oard 0: n310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =
=C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: Magnesium<br>=C2=A0 RX Chan=
nel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =
=C2=A0 RX Subdev: Magnesium<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=A0 RX DSP=
: 2<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: Magnesium<br>=
=C2=A0 RX Channel: 3<br>=C2=A0 =C2=A0 RX DSP: 3<br>=C2=A0 =C2=A0 RX Dboard:=
 B<br>=C2=A0 =C2=A0 RX Subdev: Magnesium<br>=C2=A0 TX Channel: 0<br>=C2=A0 =
=C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: =
Magnesium<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=
=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br>=C2=A0 TX Channel=
: 2<br>=C2=A0 =C2=A0 TX DSP: 2<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=
=A0 TX Subdev: Magnesium<br>=C2=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 3=
<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br><br=
>[00:00:03.21715319] Setting device timestamp to 0...<br>[INFO] [MULTI_USRP=
] =C2=A0 =C2=A0 1) catch time transition at pps edge<br>[INFO] [MULTI_USRP]=
 =C2=A0 =C2=A0 2) set times next pps (synchronously)<br>[WARNING] [0/Radio#=
0] Attempting to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Att=
empting to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Attemptin=
g to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#0] Attempting to s=
et tick rate to 0. Skipping.<br>Setting TX spp to 1989<br>[00:00:04.9074010=
82] Testing receive rate 62.500000 Msps on 4 channels<br>[00:00:04.91461557=
6] Testing transmit rate 62.500000 Msps on 4 channels<br>[00:00:15.16786989=
4] Benchmark complete.<br><br><br>Benchmark rate summary:<br>=C2=A0 Num rec=
eived samples: =C2=A0 =C2=A0 2549794336<br>=C2=A0 Num dropped samples: =C2=
=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=
=A0 Num transmitted samples: =C2=A02499910452<br>=C2=A0 Num sequence errors=
 (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 0<br>=C2=A0 Num underruns dete=
cted: =C2=A0 0<br>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br=
>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeo=
uts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><br>Done!<br><br></font><div>=
<font face=3D"monospace" style=3D"background-color:rgb(255,255,0)">// Secon=
d run fails</font></div><div></div><font face=3D"monospace">root@irisheyes5=
-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_rate=3D62.5e6 --chan=
nels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,mgmt_addr=3D192.168.=
1.88,addr=3D192.168.60.2&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 9=
.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff<br>EAL: Detected 8 lcore(s)<br=
>EAL: Detected 1 NUMA nodes<br>EAL: Multi-process socket /var/run/dpdk/rte/=
mp_socket<br>EAL: No free hugepages reported in hugepages-1048576kB<br>EAL:=
 Probing VFIO support...<br>EAL: VFIO support initialized<br>EAL: PCI devic=
e 0000:03:00.0 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA socket, defaul=
t to 0<br>EAL: =C2=A0 probe driver: 8086:1584 net_i40e<br>EAL: =C2=A0 using=
 IOMMU type 1 (Type 1)<br>EAL: PCI device 0000:03:00.1 on NUMA socket -1<br=
>EAL: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver:=
 8086:1584 net_i40e<br>EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>EA=
L: =C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 80=
86:1584 net_i40e<br>EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>EAL: =
=C2=A0 Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:=
1584 net_i40e<br>[ERROR] [DPDK] All DPDK links did not report as up!<br>EAL=
: FATAL: already called initialization.<br>EAL: already called initializati=
on.<br>[ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK l=
inks did not report as up!<br>[ERROR] [DPDK] Error with EAL initialization<=
br>[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL=
 initialization<br>[00:00:00.000122] Creating the usrp device with: use_dpd=
k=3D1,mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2...<br>EAL: FATAL: alread=
y called initialization.<br>EAL: already called initialization.<br>[ERROR] =
[DPDK] Error with EAL initialization<br>[ERROR] [UHD] Device discovery erro=
r: RuntimeError: Error with EAL initialization<br>EAL: FATAL: already calle=
d initialization.<br>EAL: already called initialization.<br>[ERROR] [DPDK] =
Error with EAL initialization<br>[ERROR] [X300] X300 Network discovery erro=
r RuntimeError: Error with EAL initialization<br>Error: LookupError: KeyErr=
or: No devices found for -----&gt;<br>Device Address:<br>=C2=A0 =C2=A0 use_=
dpdk: 1<br>=C2=A0 =C2=A0 mgmt_addr: 192.168.1.88<br>=C2=A0 =C2=A0 addr: 192=
.168.60.2<br><br></font><div><font face=3D"monospace" style=3D"background-c=
olor:rgb(255,255,0)">// Third run fails</font></div><div></div><font face=
=3D"monospace"></font><font face=3D"monospace">root@irisheyes5-hp-z240-sff:=
~# benchmark_rate --tx_rate=3D62.5e6 --rx_rate=3D62.5e6 --channels=3D&quot;=
0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,mgmt_addr=3D192.168.1.88,addr=3D1=
92.168.60.2&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_1=
07100; UHD_4.0.0.0-50-ge520e3ff<br>EAL: Detected 8 lcore(s)<br>EAL: Detecte=
d 1 NUMA nodes<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>=
EAL: No free hugepages reported in hugepages-1048576kB<br>EAL: Probing VFIO=
 support...<br>EAL: VFIO support initialized<br>EAL: PCI device 0000:03:00.=
0 on NUMA socket -1<br>EAL: =C2=A0 Invalid NUMA socket, default to 0<br>EAL=
: =C2=A0 probe driver: 8086:1584 net_i40e<br>EAL: =C2=A0 using IOMMU type 1=
 (Type 1)<br>EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>EAL: =C2=A0 =
Invalid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:1584 ne=
t_i40e<br>EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>EAL: =C2=A0 Inv=
alid NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:1584 net_i=
40e<br>EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>EAL: =C2=A0 Invali=
d NUMA socket, default to 0<br>EAL: =C2=A0 probe driver: 8086:1584 net_i40e=
<br>[ERROR] [DPDK] All DPDK links did not report as up!<br>EAL: FATAL: alre=
ady called initialization.<br>EAL: already called initialization.<br>[ERROR=
] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links did not =
report as up!<br>[ERROR] [DPDK] Error with EAL initialization<br>[ERROR] [X=
300] X300 Network discovery error RuntimeError: Error with EAL initializati=
on<br>[00:00:00.000148] Creating the usrp device with: use_dpdk=3D1,mgmt_ad=
dr=3D192.168.1.88,addr=3D192.168.60.2...<br>EAL: FATAL: already called init=
ialization.<br>EAL: already called initialization.<br>[ERROR] [DPDK] Error =
with EAL initialization<br>[ERROR] [UHD] Device discovery error: RuntimeErr=
or: Error with EAL initialization<br>EAL: FATAL: already called initializat=
ion.<br>EAL: already called initialization.<br>[ERROR] [DPDK] Error with EA=
L initialization<br>[ERROR] [X300] X300 Network discovery error RuntimeErro=
r: Error with EAL initialization<br>Error: LookupError: KeyError: No device=
s found for -----&gt;<br>Device Address:<br>=C2=A0 =C2=A0 use_dpdk: 1<br>=
=C2=A0 =C2=A0 mgmt_addr: 192.168.1.88<br>=C2=A0 =C2=A0 addr: 192.168.60.2<b=
r><br></font><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users<br>
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel XL=
710 NIC, and N310 (or X310)?<br>
<br>
If I remember correctly, I believe DPDK tries to dlopen() *everything*<br>
in the directory specified by the dpdk_driver parameter in the DPDK<br>
section of uhd.conf, leading to a lot of errors similar to yours<br>
(&#39;Invalid ELF header&#39; and the like). Having the correct collection =
of<br>
.so files in that directory is key.<br>
<br>
What&#39;s worked for me in the past when using DPDK with an Intel XL710<br=
>
is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying<br>
a specific set of DPDK .so files into this directory:<br>
* librte_mempool_ring.so<br>
* librte_pdump.so (I think this one is optional--I had been trying to<br>
get packet dumps from DPDK a while back)<br>
* librte_pmd_i40e.so<br>
* librte_pmd_ixgbe.so (may be optional?)<br>
* librte_pmd_pcap.so (this one is also optional, I think)<br>
* librte_pmd_ring.so<br>
<br>
(Symlinking to the actual libraries wherever they get installed<br>
instead of copying them into the directory would probably work as<br>
well.)<br>
<br>
Then, make sure that the dpdk-driver key in the [use_dpdk=3D1] section<br>
of uhd.conf points to that directory:<br>
dpdk_driver =3D /usr/local/lib/dpdk-pmds<br>
<br>
Hopefully that will resolve the issue and get you a little further<br>
down the road.<br>
<br>
Best regards,<br>
Aaron<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000019095c05ba5fbe5b--


--===============8019589825370683359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8019589825370683359==--

