Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D9FAB1DF
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 07:10:04 +0200 (CEST)
Received: from [::1] (port=41786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i66VV-0001cQ-Vf; Fri, 06 Sep 2019 01:10:01 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:46723)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1i66VR-0001Vm-Cv
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 01:09:57 -0400
Received: by mail-io1-f49.google.com with SMTP id x4so9909696iog.13
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 22:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=VmBp8WIqsQuyTuEy0VVcXcXEoYokqT1ft162oemfMjY=;
 b=2F0Qhi7lkwATkLwyvX3+lCqB6jTllADbGUlgjfmCqnn0M0SOWOVhiMmS76j/4FTULx
 bxiTcCIeD2oYaTfyN6yoizFPnWHDvEiEckSM9zUXbGT4E2nsYjl1Ov/1YF4WgDjRkNpO
 lnfK+mZGoJ5RZrnKQ4nIweMqcZ1+yyW6J3v4CItHrgT+0UIixtSgHp0BSRpfFxoMCvEG
 5If1h2gL4jyMBSRSYsywe0iggN+tmTea9pFPwkTZM+2VfrEwX2QP7hHigi0Sr9idtoXR
 fDVQQY4FX4vQP6cSIhbTmueG/Q0dwoJh5QoryZ02OpH7+iCW4LA1pfPyRiJg5FSpT/XF
 kU8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=VmBp8WIqsQuyTuEy0VVcXcXEoYokqT1ft162oemfMjY=;
 b=Y7R6Fw81DHmhPrl4btVwCWL9rrJDtN2ODCksX2SWQ8ZMM237O/o1ftakbBr+IHhhrF
 62qQoNVFrZRi+pmSTiL4QDEuz37nVCF+NV8j193iY/rIQHYS+1WGa352/H5uC57Cf96d
 7nK1X7Yma6gmnsp/0BCWCc30wYmFJXb4/vboYC3KVTCI1zM96KY/gLc3HVLQMz++QtKJ
 lQAOsYiIVMylcM3W2yvdlh4++GKdmwG/dynyYP1TFqpj/ef0XArfbyhz694nN+0RCa7H
 q+NpHMp1L3sqKZhexH/W5BWvd3DBXXRY4h0WaqZt5P9h92RcgEKmmwS20m7/xoMnd1GC
 oXrQ==
X-Gm-Message-State: APjAAAXiIfAQJZ+1WEnDQcTfXxw2T0dK4H5Z1ktn1++dkJakb97cDtCc
 1gimvgmErbeM81T+rn4zHOfa7mXYKtr8ahGeCESOiQ==
X-Google-Smtp-Source: APXvYqxZSnT4u3q2LeZWSRpVCPVTHQHE+X8Bc2/M7GIIRpF8kd6ZuWY7v98rxTZ4RKEVoZMt8jE0tmByGe02tXl9pxc=
X-Received: by 2002:a5e:de49:: with SMTP id e9mr8336719ioq.308.1567746556229; 
 Thu, 05 Sep 2019 22:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
 <5D71CBFB.6060907@gmail.com>
 <CAKJyDkKPwk_PMEuQhRGyM6-3zaV-JdOEfx=keQdu4GS2Z6B54g@mail.gmail.com>
 <CAMKs6hda+HH3BoYDg4YEK-wiWCZT8E7u=dzukERB0N3o1wDnxg@mail.gmail.com>
In-Reply-To: <CAMKs6hda+HH3BoYDg4YEK-wiWCZT8E7u=dzukERB0N3o1wDnxg@mail.gmail.com>
Date: Thu, 5 Sep 2019 22:09:05 -0700
Message-ID: <CAKJyDkK5W4-V+q-CadRckeUZxFm2eY2W_F6sQKirJH6SSWMgxw@mail.gmail.com>
To: Austin Adam <austinadam42@gmail.com>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP N310 Cannot ping or connect
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============9137468579901448779=="
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

--===============9137468579901448779==
Content-Type: multipart/alternative; boundary="0000000000009529da0591db7088"

--0000000000009529da0591db7088
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Austin.  Let's keep this thread on the usrp-users list so other people
might benefit from it.

Unless you have a dedicated PCIe (or Thunderbolt) 10gigE network adapter
connected to your host PC, the connection is most likely 1gigE.

What is the output when you invoke the following command from the host PC?
*uhd_usrp_probe --args "addr=3D192.168.10.2"*

-Robin


On Thu, Sep 5, 2019 at 9:59 PM Austin Adam <austinadam42@gmail.com> wrote:

> Hey Robin,
> Thank you so much for the response. I have been waiting eagerly for a wee=
k
> now to hear back from Ettus, so it is nice to finally get a response form
> someone.
>
> I made sure that I was using the HG FPGA image because that is the one
> that supports 1gigE connection on SFP0, so I know that is not the problem=
.
> But I do not know how to check whether *enx70886b87f283* is a 1gigE or
> 10gigE connection. Could you please provide a way to find that? Also,
> cannot confirm exactly the type of cable I am using as I am unsure... but
> what I can confirm, is that I have had this exact USRP unit connected to
> the same host computer before and everything worked fine...so it can't be
> the cables or connections because it has worked in the past on SFP0.
>
> If this helps at all, I saw these messages in the bootlogs when connected
> via serial:
>
> <i>[   26.820220] nixge 40000000.ethernet sfp0: Link is Up -
> Unknown/Unknown - flow control off
> [   26.900861] nixge 40008000.ethernet sfp1: Link is Up - 10Gbps/Full -
> flow control off
> [   29.080221] nixge 40008000.ethernet sfp1: Link is Down</i>
>
> And incase it helps at all, here is a log from a bootup:
>
> <i>     Data Start:   0x0200010c
>      Data Size:    5617808 Bytes =3D 5.4 MiB
>      Architecture: ARM
>      OS:           Linux
>      Load Address: 0x00000000
>      Entry Point:  0x00000000
>      Hash algo:    sha1
>      Hash value:   c8b26f0437c92f83a1fc526e5ad2d4543664c23d
>    Verifying Hash Integrity ... sha1+ OK
> ## Loading fdt from FIT Image at 02000000 ...
>    Using 'conf@zynq-ni-sulfur-rev5-magnesium-rev3.dtb' configuration
>    Trying 'fdt@zynq-ni-sulfur-rev5-magnesium-rev3.dtb' fdt subimage
>      Description:  Flattened Device Tree blob
>      Type:         Flat Device Tree
>      Compression:  uncompressed
>      Data Start:   0x025825f0
>      Data Size:    18383 Bytes =3D 18 KiB
>      Architecture: ARM
>      Hash algo:    sha1
>      Hash value:   8f896f69ce56fada1271c0cfababc99ee6944e1a
>    Verifying Hash Integrity ... sha1+ OK
>    Booting using the fdt blob at 0x25825f0
>    Loading Kernel Image ... OK
>    Loading Device Tree to 1fff8000, end 1ffff7ce ... OK
>
> Starting kernel ...
>
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 4.15.18-yocto-standard (oe-user@oe-host)
> (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Mon Mar 25 20:13:00 UTC 2019
> [    0.000000] CPU: ARMv7 Processor [413fc090] revision 0 (ARMv7),
> cr=3D18c5387d
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> [    0.000000] OF: fdt: Machine model: NI Ettus Research Project Sulfur
> SDR Rev3
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] percpu: Embedded 17 pages/cpu @(ptrval) s39692 r8192 d2174=
8
> u69632
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 260416
> [    0.000000] Kernel command line: root=3D/dev/mmcblk0p2 rw rootwait
> uio_pdrv_genirq.of_id=3Dusrp-uio
> [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288
> bytes)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144
> bytes)
> [    0.000000] Memory: 1023252K/1048576K available (8192K kernel code,
> 684K rwdata, 2472K rodata, 1024K init, 593K bss, 25324K reserved, 0K
> cma-reserved, 262144K highmem)
> [    0.000000] Virtual kernel memory layout:
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> [    0.000000]     vmalloc : 0xf0800000 - 0xff800000   ( 240 MB)
> [    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (9184 kB)
> [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (1024 kB)
> [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 685 kB)
> [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 594 kB)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D2,=
 Nodes=3D1
> [    0.000000] ftrace: allocating 30122 entries in 89 pages
> [    0.000000] Preemptible hierarchical RCU implementation.
> [    0.000000]  RCU restricting CPUs from NR_CPUS=3D4 to nr_cpu_ids=3D2.
> [    0.000000]  Tasks RCU enabled.
> [    0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D2
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] slcr mapped to (ptrval)
> [    0.000000] L2C: platform modifies aux control register: 0x02060000 ->
> 0x02460000
> [    0.000000] L2C: DT/platform modifies aux control register: 0x02060000
> -> 0x02460000
> [    0.000000] L2C-310 erratum 769419 enabled
> [    0.000000] L2C-310 enabling early BRESP for Cortex-A9
> [    0.000000] L2C-310 full line of zeros enabled for Cortex-A9
> [    0.000000] L2C-310 dynamic clock gating enabled, standby mode enabled
> [    0.000000] L2C-310 cache controller enabled, 8 ways, 512 kB
> [    0.000000] L2C-310: CACHE_ID 0x410000c8, AUX_CTRL 0x46460001
> [    0.000000] zynq_clock_init: clkc starts at (ptrval)
> [    0.000000] Zynq clock init
> [    0.000011] sched_clock: 64 bits at 399MHz, resolution 2ns, wraps ever=
y
> 4398046511103ns
> [    0.000032] clocksource: arm_global_timer: mask: 0xffffffffffffffff
> max_cycles: 0x5c4093a7d1, max_idle_ns: 440795210635 ns
> [    0.000062] Switching to timer-based delay loop, resolution 2ns
> [    0.000425] Console: colour dummy device 80x30
> [    0.001152] console [tty0] enabled
> [    0.001190] Calibrating delay loop (skipped), value calculated using
> timer frequency.. 799.99 BogoMIPS (lpj=3D3999999)
> [    0.001232] pid_max: default: 32768 minimum: 301
> [    0.001365] Security Framework initialized
> [    0.001553] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes=
)
> [    0.001587] Mountpoint-cache hash table entries: 2048 (order: 1, 8192
> bytes)
> [    0.002334] CPU: Testing write buffer coherency: ok
> [    0.002652] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.040240] Setting up static identity map for 0x100000 - 0x100060
> [    0.060192] Hierarchical SRCU implementation.
> [    0.100192] smp: Bringing up secondary CPUs ...
> [    0.170504] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
> [    0.170662] smp: Brought up 1 node, 2 CPUs
> [    0.170709] SMP: Total of 2 processors activated (1599.99 BogoMIPS).
> [    0.170733] CPU: All CPU(s) started in SVC mode.
> [    0.171853] devtmpfs: initialized
> [    0.176262] random: get_random_u32 called from
> bucket_table_alloc+0x1d0/0x210 with crng_init=3D0
> [    0.176666] VFP support v0.3: implementor 41 architecture 3 part 30
> variant 9 rev 4
> [    0.177060] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
> [    0.177113] futex hash table entries: 512 (order: 3, 32768 bytes)
> [    0.177396] xor: measuring software checksum speed
> [    0.270174]    arm4regs  :  1200.000 MB/sec
> [    0.370181]    8regs     :   916.800 MB/sec
> [    0.470174]    32regs    :   968.400 MB/sec
> [    0.470197] xor: using function: arm4regs (1200.000 MB/sec)
> [    0.470227] pinctrl core: initialized pinctrl subsystem
> [    0.471190] NET: Registered protocol family 16
> [    0.472074] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
> [    0.473183] cpuidle: using governor menu
> [    0.474843] GPIO line 910 (ledn) hogged as output/high
> [    0.479823] hw-breakpoint: found 5 (+1 reserved) breakpoint and 1
> watchpoint registers.
> [    0.479865] hw-breakpoint: maximum watchpoint size is 4 bytes.
> [    0.480152] zynq-pinctrl 700.pinctrl: zynq pinctrl initialized
> [    0.480594] e0000000.serial: ttyPS0 at MMIO 0xe0000000 (irq =3D 25,
> base_baud =3D 6249999) is a xuartps
> [    0.958112] console [ttyPS0] enabled
> [    0.962107] e0001000.serial: ttyPS1 at MMIO 0xe0001000 (irq =3D 26,
> base_baud =3D 6249999) is a xuartps
> [    1.150551] raid6: int32x1  gen()   150 MB/s
> [    1.320294] raid6: int32x1  xor()   121 MB/s
> [    1.490561] raid6: int32x2  gen()   130 MB/s
> [    1.660402] raid6: int32x2  xor()   125 MB/s
> [    1.830193] raid6: int32x4  gen()   128 MB/s
> [    2.000197] raid6: int32x4  xor()    91 MB/s
> [    2.170194] raid6: int32x8  gen()   132 MB/s
> [    2.340366] raid6: int32x8  xor()    98 MB/s
> [    2.344561] raid6: using algorithm int32x1 gen() 150 MB/s
> [    2.349942] raid6: .... xor() 121 MB/s, rmw enabled
> [    2.354820] raid6: using intx1 recovery algorithm
> [    2.360588] SCSI subsystem initialized
> [    2.364474] usbcore: registered new interface driver usbfs
> [    2.369939] usbcore: registered new interface driver hub
> [    2.375312] usbcore: registered new device driver usb
> [    2.380466] usb_phy_generic phy0: phy0 supply vcc not found, using
> dummy regulator
> [    2.388162] Linux video capture interface: v2.00
> [    2.393020] EDAC MC: Ver: 3.0.0
> [    2.396540] FPGA manager framework
> [    2.400057] fpga-region fpga-full: FPGA Region probed
> [    2.405254] fpga-region amba:fpga-region@40000000: FPGA Region probed
> [    2.412097] random: fast init done
> [    2.416116] clocksource: Switched to clocksource arm_global_timer
> [    2.544444] NET: Registered protocol family 2
> [    2.549448] TCP established hash table entries: 8192 (order: 3, 32768
> bytes)
> [    2.556551] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
> [    2.563065] TCP: Hash tables configured (established 8192 bind 8192)
> [    2.569460] UDP hash table entries: 512 (order: 2, 16384 bytes)
> [    2.575374] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
> [    2.582000] NET: Registered protocol family 1
> [    2.600778] RPC: Registered named UNIX socket transport module.
> [    2.606632] RPC: Registered udp transport module.
> [    2.611368] RPC: Registered tcp transport module.
> [    2.616000] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    2.622974] hw perfevents: no interrupt-affinity property for
> /pmu@f8891000, guessing.
> [    2.631096] hw perfevents: enabled with armv7_cortex_a9 PMU driver, 7
> counters available
> [    2.640601] Initialise system trusted keyrings
> [    2.645175] workingset: timestamp_bits=3D14 max_order=3D18 bucket_orde=
r=3D4
> [    2.659662] NFS: Registering the id_resolver key type
> [    2.664713] Key type id_resolver registered
> [    2.668827] Key type id_legacy registered
> [    2.672855] nfs4filelayout_init: NFSv4 File Layout Driver Registering.=
..
> [    2.679725] fuse init (API version 7.26)
> [    2.687847] Key type asymmetric registered
> [    2.691916] Asymmetric key parser 'x509' registered
> [    2.696798] bounce: pool size: 64 pages
> [    2.700647] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 247)
> [    2.707978] io scheduler noop registered
> [    2.711896] io scheduler deadline registered
> [    2.716392] io scheduler cfq registered (default)
> [    2.721059] io scheduler mq-deadline registered
> [    2.725534] io scheduler kyber registered
> [    2.731238] dma-pl330 f8003000.dmac: Loaded driver for PL330 DMAC-2413=
30
> [    2.737882] dma-pl330 f8003000.dmac:         DBUFF-128x8bytes
> Num_Chans-8 Num_Peri-4 Num_Events-16
> [    2.746855] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    2.757231] brd: module loaded
> [    2.778622] libphy: Fixed MDIO Bus: probed
> [    2.784329] CAN device driver interface
> [    2.789032] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    2.795602] usbcore: registered new interface driver usb-storage
> [    2.801792] chipidea-usb2 e0002000.usb: e0002000.usb supply vbus not
> found, using dummy regulator
> [    2.830209] ci_hdrc ci_hdrc.0: EHCI Host Controller
> [    2.835045] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus
> number 1
> [    2.870197] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
> [    2.876332] hub 1-0:1.0: USB hub found
> [    2.880055] hub 1-0:1.0: 1 port detected
> [    2.885610] mousedev: PS/2 mouse device common for all mice
> [    2.891432] i2c /dev entries driver
> [    2.895587] cdns-i2c e0004000.i2c: 400 kHz mmio e0004000 irq 22
> [    2.908508] cros-ec-i2c 1-001e: Chrome EC device registered
> [    2.914148] cdns-i2c e0005000.i2c: 400 kHz mmio e0005000 irq 23
> [    2.922698] at24 2-0050: 256 byte 24c02 EEPROM, read-only, 0 bytes/wri=
te
> [    2.929993] i2c i2c-0: Added multiplexed i2c bus 3
> [    2.935017] i2c i2c-0: Added multiplexed i2c bus 4
> [    2.940007] i2c i2c-0: Added multiplexed i2c bus 5
> [    2.945211] pca953x 6-0022: 6-0022 supply vcc not found, using dummy
> regulator
> [    2.956658] i2c i2c-0: Added multiplexed i2c bus 6
> [    2.991421] tpm tpm0: starting up the TPM manually
> [    3.081701] i2c i2c-0: Added multiplexed i2c bus 7
> [    3.087915] rtc-ds1374 8-0068: rtc core: registered ds1374 as rtc0
> [    3.094718] i2c i2c-0: Added multiplexed i2c bus 8
> [    3.100321] at24 9-0050: 32768 byte 24c256 EEPROM, writable, 1
> bytes/write
> [    3.107555] pca953x 9-0020: 9-0020 supply vcc not found, using dummy
> regulator
> [    3.116627] i2c i2c-0: Added multiplexed i2c bus 9
> [    3.122284] at24 10-0050: 32768 byte 24c256 EEPROM, writable, 1
> bytes/write
> [    3.129581] pca953x 10-0020: 10-0020 supply vcc not found, using dummy
> regulator
> [    3.138830] i2c i2c-0: Added multiplexed i2c bus 10
> [    3.143665] pca954x 0-0070: registered 8 multiplexed busses for I2C
> switch pca9548
> [    3.152848] lm75 9-0048: hwmon0: sensor 'lm75'
> [    3.158289] lm75 10-0048: hwmon1: sensor 'lm75'
> [    3.173711] watchdog: cdns_wdt watchdog: cannot register miscdev on
> minor=3D130 (err=3D-16).
> [    3.181768] watchdog: cdns_wdt watchdog: a legacy watchdog module is
> probably present.
> [    3.189821] cdns-wdt f8005000.watchdog: Xilinx Watchdog Timer at
> (ptrval) with timeout 10s
> [    3.198771] device-mapper: ioctl: 4.37.0-ioctl (2017-09-20)
> initialised: dm-devel@redhat.com
> [    3.207510] EDAC MC: ECC not enabled
> [    3.211214] Xilinx Zynq CpuIdle Driver started
> [    3.215999] sdhci: Secure Digital Host Controller Interface driver
> [    3.222135] sdhci: Copyright(c) Pierre Ossman
> [    3.226447] sdhci-pltfm: SDHCI platform and OF driver helper
> [    3.290241] mmc0: SDHCI controller on e0100000.sdhci [e0100000.sdhci]
> using ADMA
> [    3.301811] usbcore: registered new interface driver usbhid
> [    3.307376] usbhid: USB HID core driver
> [    3.311367] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.318158] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.324962] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.331739] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.339507] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.348291] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.355068] cros-ec-i2c 1-001e: request of size 194 is too big (max:
> 120)
> [    3.369431] fpga_manager fpga0: Xilinx Zynq FPGA Manager registered
> [    3.376191] oprofile: using arm/armv7-ca9
> [    3.380250] u32 classifier
> [    3.382892]     Actions configured
> [    3.386505] NET: Registered protocol family 17
> [    3.390956] can: controller area network core (rev 20170425 abi 9)
> [    3.397183] NET: Registered protocol family 29
> [    3.401674] can: raw protocol (rev 20170425)
> [    3.405945] can: broadcast manager protocol (rev 20170425 t)
> [    3.411604] can: netlink gateway (rev 20170425) max_hops=3D1
> [    3.417294] Key type dns_resolver registered
> [    3.421799] Registering SWP/SWPB emulation handler
> [    3.427316] Loading compiled-in X.509 certificates
> [    3.433887] Btrfs loaded, crc32c=3Dcrc32c-generic
> [    3.439398] Key type encrypted registered
> [    3.446729] mmc0: new high speed SDHC card at address aaaa
> [    3.452787] mmcblk0: mmc0:aaaa SP32G 29.7 GiB
> [    3.457520] cdns-i2c e0005000.i2c: xfer_size reg rollover. xfer aborte=
d!
> [    3.466868]  mmcblk0: p1 p2 p3 p4
> [    4.480201] cdns-i2c e0005000.i2c: timeout waiting on completion
> [    4.486171] cros-ec-ctl cros-ec-ctl.0.auto: EC communication failed
> [    4.494588] libphy: MACB_mii_bus: probed
> [    4.591385] Marvell 88E1510 e000b000.ethernet-ffffffff:00: attached PH=
Y
> driver [Marvell 88E1510] (mii_bus:phy_addr=3De000b000.ethernet-ffffffff:0=
0,
> irq=3DPOLL)
> [    4.605288] macb e000b000.ethernet eth0: Cadence GEM rev 0x00020118 at
> 0xe000b000 irq 27 (00:80:2f:24:01:14)
> [    4.615170] console [netcon0] enabled
> [    4.618764] netconsole: network logging started
> [    4.623821] input: gpio-keys as /devices/soc0/gpio-keys/input/input0
> [    4.630861] rtc-ds1374 8-0068: setting system clock to 2019-08-30
> 23:00:59 UTC (1567206059)
> [    4.639149] of_cfs_init
> [    4.641677] of_cfs_init: OK
> [    4.644987] md: Waiting for all devices to be available before
> autodetect
> [    4.651757] md: If you don't use raid, use raid=3Dnoautodetect
> [    4.658031] md: Autodetecting RAID arrays.
> [    4.662092] md: autorun ...
> [    4.664830] md: ... autorun DONE.
> [    4.670723] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature
> incompatibilities
> [    4.681000] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature
> incompatibilities
> [    4.703794] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. Opts: (null)
> [    4.711908] VFS: Mounted root (ext4 filesystem) on device 179:2.
> [    4.723131] devtmpfs: mounted
> [    4.731994] Freeing unused kernel memory: 1024K
> [    5.059819] systemd[1]: systemd 237 running in system mode. (-PAM
> -AUDIT -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP
> -GCRYPT -GNUTLS +ACL -XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
> -PCRE2 default-hierarchy=3Dhybrid)
> [    5.081662] systemd[1]: Detected architecture arm.
>
> Welcome to Alchemy 2018.04!
>
> [    5.133006] systemd[1]: Set hostname to <ni-sulfur-rev6-mender>.
> [    5.147165] systemd[1]: Initializing machine ID from random generator.
> [    5.165704] systemd[1]: Hardware watchdog 'DS1374 WTD', version 0
> [    5.172621] systemd[1]: Set hardware watchdog to 10s.
> [    5.177614] rtc_ds1374: enable watchdog
> [    5.364191] systemd[1]: File
> /lib/systemd/system/systemd-journald.service:35 configures an IP firewall
> (IPAddressDeny=3Dany), but the local system does not support BPF/cgroup b=
ased
> firewalling.
> [    5.381322] systemd[1]: Proceeding WITHOUT firewalling in effect! (Thi=
s
> warning is only shown for the first loaded unit using IP firewalling.)
> [    5.513699] systemd[1]: Binding to IPv6 address not available since
> kernel does not support IPv6.
> [    5.555174] systemd[1]: Reached target Swap.
> [  OK  ] Reached target Swap.
> [  OK  ] Started Dispatch Password Requests to Console Directory Watch.
> [  OK  ] Created slice User and Session Slice.
> [  OK  ] Started Forward Password Requests to Wall Directory Watch.
> [  OK  ] Reached target Paths.
> [  OK  ] Reached target Remote File Systems.
> [  OK  ] Created slice System Slice.
> [  OK  ] Listening on Network Service Netlink Socket.
> [  OK  ] Listening on Journal Socket.
>          Mounting POSIX Message Queue File System...
> [  OK  ] Listening on udev Control Socket.
> [  OK  ] Listening on /dev/initctl Compatibility Named Pipe.
> [  OK  ] Listening on Journal Socket (/dev/log).
>          Starting Create list of required st=E2=80=A6ce nodes for the cur=
rent
> kernel...
> [  OK  ] Listening on udev Kernel Socket.
>          Starting Load Kernel Modules...
>          Mounting Temporary Directory (/tmp)...
> [  OK  ] Reached target Slices.
> [  OK  ] Created slice system-getty.slice.
>          Mounting Kernel Debug File System...
>          Starting udev Coldplug all Devices...
> [  OK  ] Listening on Syslog Socket.
> [  OK  ] Created slice system-serial\x2dgetty.slice.
>          Starting Journal Service...
>          Starting Remount Root and Kernel File Systems...
> [  OK  ] Mounted POSIX Message Queue File System.
> [    6.349070] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
> [  OK  ] Started Create list of required sta=E2=80=A6vice nodes for the c=
urrent
> kernel.
> [  OK  ] Started Journal Service.
> [  OK  ] Started Load Kernel Modules.
> [  OK  ] Mounted Temporary Directory (/tmp).
> [  OK  ] Mounted Kernel Debug File System.
> [  OK  ] Started Remount Root and Kernel File Systems.
>          Starting Rebuild Hardware Database...
>          Mounting FUSE Control File System...
>          Starting Apply Kernel Variables...
>          Mounting Kernel Configuration File System...
>          Starting Flush Journal to Persistent Storage...
>          Starting Create Static Device Nodes in /dev...
> [  OK  ] Mounted FUSE Control File System.
> [  OK  ] Started Apply Kernel Variables.
> [  OK  ] Mounted Kernel Configuration File System.
> [  OK  ] Started Create Static Device Nodes in /dev.
> [  OK  ] Started udev Coldplug all Devices.
> [    6.951486] systemd-journald[90]: Received request to flush runtime
> journal from PID 1
> [  OK  ] Reached target Local File Systems (Pre).
>          Mounting /var/volatile...
> [  OK  ] Started Flush Journal to Persistent Storage.
> [  OK  ] Mounted /var/volatile.
> [  OK  ] Started Rebuild Hardware Database.
>          Starting udev Kernel Device Manager...
> [  OK  ] Started udev Kernel Device Manager.
> [  OK  ] Found device /dev/ttyPS0.
> [  OK  ] Found device /dev/mmcblk0p1.
> [  OK  ] Found device /dev/mmcblk0p4.
>          Mounting /data...
>          Mounting /uboot...
> [    9.716983] EXT4-fs (mmcblk0p4): mounted filesystem with ordered data
> mode. Opts: (null)
> [  OK  ] Mounted /data.
> [  OK  ] Mounted /uboot.
> [  OK  ] Reached target Local File Systems.
>          Starting Create Volatile Files and Directories...
>          Starting Rebuild Journal Catalog...
> [  OK  ] Started Create Volatile Files and Directories.
> [  OK  ] Started Rebuild Journal Catalog.
>          Starting Update is Completed...
>          Starting Run pending postinsts...
>          Starting Opkg first boot configure...
>          Starting Network Time Synchronization...
> [  OK  ] Started Update is Completed.
> [  OK  ] Started Opkg first boot configure.
> [  OK  ] Started Network Time Synchronization.
> [  OK  ] Reached target System Time Synchronized.
> [  OK  ] Started Run pending postinsts.
> [  OK  ] Reached target System Initialization.
> [  OK  ] Started Daily Cleanup of Temporary Directories.
> [  OK  ] Reached target Timers.
> [  OK  ] Listening on RPCbind Server Activation Socket.
> [  OK  ] Listening on D-Bus System Message Bus Socket.
> [  OK  ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
>          Starting sshd.socket.
> [  OK  ] Listening on GPS (Global Positioning System) Daemon Sockets.
> [  OK  ] Listening on sshd.socket.
> [  OK  ] Reached target Sockets.
> [  OK  ] Reached target Basic System.
> [  OK  ] Started D-Bus System Message Bus.
> [  OK  ] Started Getty on tty1.
> [  OK  ] Started Kernel Logging Service.
> [  OK  ] Started Serial Getty on ttyPS0.
> [  OK  ] Reached target Login Prompts.
> [  OK  ] Started System Logging Service.
>          Starting Setting unique (s/n based) hostname...
>          Starting USRP Hardware Daemon (MPM)...
>          Starting Telephony service...
>          Starting Login Service...
>          Starting Hostname Service...
> [  OK  ] Started Login Service.
> [  OK  ] Started Telephony service.
> [  OK  ] Started Hostname Service.
> [  OK  ] Started Setting unique (s/n based) hostname.
>          Starting Avahi mDNS/DNS-SD Stack...
>          Starting Network Service...
> [  OK  ] Started Avahi mDNS/DNS-SD Stack.
> [  OK  ] Started Network Service.
>          Starting Network Name Resolution...
> [  OK  ] Started Network Name Resolution.
> [  OK  ] Started Mender OTA update service.
> [  OK  ] Reached target Host and Network Name Lookups.
> [  OK  ] Reached target Network.
>
> Alchemy 2018.04 ni-n3xx-3177E63 ttyPS0
>
> ni-n3xx-3177E63 login: root
> root@ni-n3xx-3177E63:~# [   24.582582] fpga_manager fpga0: writing
> n310.bin to Xilinx Zynq FPGA Manager
> [   25.414692] libphy: nixge_mii_bus: probed
> [   25.451582] libphy: nixge_mii_bus: probed
> [   25.469428] nixge 40000000.ethernet sfp0: renamed from eth1
> [   25.713083] rfnoc_crossbar crossbar0: NI Platform RFNoC Crossbar
> registered
> [   25.751871] nixge 40008000.ethernet sfp1: renamed from eth1
> [   25.836282] usrp-dma-core: Registered rx-dma0
> [   25.887989] usrp-dma-core: Registered rx-dma1
> [   25.909555] usrp-dma-core: Registered rx-dma2
> [   25.949161] usrp-dma-core: Registered rx-dma3
> [   25.961521] usrp-dma-core: Registered rx-dma4
> [   25.966603] usrp-dma-core: Registered rx-dma5
> [   25.981382] usrp-dma-core: Registered rx-dma6
> [   25.991645] usrp-dma-core: Registered rx-dma7
> [   25.996824] usrp-dma-core: Registered rx-dma8
> [   26.011477] usrp-dma-core: Registered rx-dma9
> [   26.022402] usrp-dma-core: Registered tx-dma0
> [   26.027511] usrp-dma-core: Registered tx-dma1
> [   26.041439] usrp-dma-core: Registered tx-dma2
> [   26.052196] usrp-dma-core: Registered tx-dma3
> [   26.062320] usrp-dma-core: Registered tx-dma4
> [   26.067453] usrp-dma-core: Registered tx-dma5
> [   26.081501] usrp-dma-core: Registered tx-dma6
> [   26.092381] usrp-dma-core: Registered tx-dma7
> [   26.101605] usrp-dma-core: Registered tx-dma8
> [   26.112430] usrp-dma-core: Registered tx-dma9
> [   26.820220] nixge 40000000.ethernet sfp0: Link is Up - Unknown/Unknown
> - flow control off
> [   26.900861] nixge 40008000.ethernet sfp1: Link is Up - 10Gbps/Full -
> flow control off
> [   29.080221] nixge 40008000.ethernet sfp1: Link is Down
> [   31.595778] random: crng init done</i>
>
> On Thu, Sep 5, 2019 at 8:19 PM Robin Coxe via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Austin.  Is *enx70886b87f283 *a 1 gigE or 10gigE connection?  If it's
>> 1gigE, my guess is that your problem may be that the new SD card is load=
ing
>> the XG FPGA image, which expects 10 gigE connections to the host on both
>> ports SFP0 and SFP1.   You'll need to update the SD card to load the HG
>> image from /lib/firmware at bootup (1 gigE on SFP0 on the N310, connecte=
d
>> to the Host PC using a cat 5 Ethernet cable and the SFP-to-RJ45 adapter)=
.
>>
>> Instructions here:
>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Netw=
ork_Mode_FPGA_Image_Update
>>
>> -Robin
>>
>>
>> On Thu, Sep 5, 2019 at 8:02 PM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
>>>
>>> I recently had my USRP N310 sent out for repairs to fix one of the SMA
>>> connectors, and when it came back, there was a new SD card in the slot.
>>> When I turned it on after getting it back, I was unable to connect to i=
t
>>> via 'uhd_find_devices'. I figured it was something with the SD card, so=
 I
>>> eventually decided to rewrite the whole thing, in case it needed an upd=
ate.
>>>
>>> That still did not fix the issue, and after trying just about
>>> everything, and following every possible tutorial on the ettus docs, an=
d
>>> checking the forums, I have decided to ask you guys for help.
>>>
>>> Below you can find all the information about the UHD versions and the
>>> ifconfigs... hopefully that is enough to spark some ideas!
>>>
>>> The USRP can find itself on localhost as you can see here:
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *root@ni-n3xx-3177E63:~# uhd_find_devices [INFO] [UHD] linux; GNU C++
>>> version 7.3.0; Boost_106600; UHD_3.14.0.0-0-g6875d061
>>> -------------------------------------------------- -- UHD Device 0
>>> -------------------------------------------------- Device Address:
>>> serial: 3177E63     claimed: False     mgmt_addr: 127.0.0.1     product=
:
>>> n310     type: n3xx*
>>>
>>> But when I run the command from the host machine, this is what I get:
>>>
>>>
>>>
>>> * admin@PC:~$ uhd_find_devices [INFO] [UHD] linux; GNU C++ version
>>> 8.3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061 No UHD Devices Found*
>>>
>>> *Here is ifconfig from the USRP:*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *root@ni-n3xx-3177E63:~# ifconfig eth0      Link encap:Ethernet  HWaddr
>>> 00:80:2F:24:01:14           UP BROADCAST MULTICAST  MTU:1500  Metric:1
>>>       RX packets:0 errors:0 dropped:0 overruns:0 frame:0           TX
>>> packets:0 errors:0 dropped:0 overruns:0 carrier:0           collisions:=
0
>>> txqueuelen:1000           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>>> Interrupt:27 Base address:0xb000 lo        Link encap:Local Loopback
>>>     inet addr:127.0.0.1  Mask:255.0.0.0           UP LOOPBACK RUNNING
>>>  MTU:65536  Metric:1           RX packets:89 errors:0 dropped:0 overrun=
s:0
>>> frame:0           TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>>>       collisions:0 txqueuelen:1000           RX bytes:7480 (7.3 KiB)  T=
X
>>> bytes:7480 (7.3 KiB) sfp0      Link encap:Ethernet  HWaddr
>>> 00:80:2F:24:01:15           inet addr:192.168.10.2  Bcast:192.168.10.25=
5
>>>  Mask:255.255.255.0           UP BROADCAST RUNNING MULTICAST  MTU:8000
>>>  Metric:1           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>>       TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
>>> collisions:0 txqueuelen:1000           RX bytes:0 (0.0 B)  TX bytes:257=
7
>>> (2.5 KiB) sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
>>> UP BROADCAST MULTICAST  MTU:8000  Metric:1           RX packets:0 error=
s:0
>>> dropped:0 overruns:0 frame:0           TX packets:1 errors:0 dropped:0
>>> overruns:0 carrier:0           collisions:0 txqueuelen:1000           R=
X
>>> bytes:0 (0.0 B)  TX bytes:62 (62.0 B)*
>>>
>>>
>>>
>>> *And here is ifconfig from the host machine: *
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *ugikie@Austin-Blade:~$ ifconfig enx70886b87f283:
>>> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000         inet
>>> 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255         i=
net6
>>> fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<link>         ethe=
r
>>> 70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)         RX packets 0  by=
tes
>>> 0 (0.0 B)         RX errors 0  dropped 0  overruns 0  frame 0         T=
X
>>> packets 46  bytes 4966 (4.9 KB)         TX errors 0  dropped 0 overruns=
 0
>>>  carrier 0  collisions 0 lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>>>   inet 127.0.0.1  netmask 255.0.0.0         inet6 ::1  prefixlen 128
>>>  scopeid 0x10<host>         loop  txqueuelen 1000  (Local Loopback)
>>> RX packets 5037  bytes 466961 (466.9 KB)         RX errors 0  dropped 0
>>>  overruns 0  frame 0         TX packets 5037  bytes 466961 (466.9 KB)
>>>   TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0 wlp59s0:
>>> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500         inet
>>> 172.28.229.114  netmask 255.255.240.0  broadcast 172.28.239.255
>>> inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<link>
>>> ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)         RX packets
>>> 110339  bytes 123997000 (123.9 MB)         RX errors 0  dropped 0  over=
runs
>>> 0  frame 0         TX packets 47191  bytes 11048840 (11.0 MB)         T=
X
>>> errors 0  dropped 0 overruns 0  carrier 0  collisions 0*
>>>
>>> I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the hos=
t
>>> but didn't get a response from the N310 or anything for that matter.
>>>
>>> I hope someone out there can help me out! Thank you in advance :)
>>>
>>> Best,
>>> Austin
>>>
>>>
>>> So, easy stuff first--you are plugged into the SFP0 port on the N310,
>>> and not one of the two others?
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000009529da0591db7088
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Austin.=C2=A0 Let&#39;s keep this thread on the usrp-us=
ers list so other people might benefit from it.=C2=A0<div><br></div><div>Un=
less you have a dedicated PCIe (or Thunderbolt) 10gigE network adapter conn=
ected to your host PC, the connection is most likely 1gigE.</div><div><br><=
/div><div>What is the output when you invoke the following command from the=
 host PC?<div><i>uhd_usrp_probe --args &quot;addr=3D192.168.10.2&quot;</i><=
br></div><div><div><br></div><div>-Robin</div><div><br></div></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Sep 5, 2019 at 9:59 PM Austin Adam &lt;<a href=3D"mailto:austinadam42=
@gmail.com">austinadam42@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Robin,<br>Thank you =
so much for the response. I have been waiting eagerly for a week now to hea=
r back from Ettus, so it is nice to finally get a response form someone.<br=
><br>I made sure that I was using the HG FPGA image because that is the one=
 that supports 1gigE connection on SFP0, so I know that is not the problem.=
=C2=A0 But I do not know how to check whether *enx70886b87f283* is a 1gigE =
or 10gigE connection. Could you please provide a way to find that? Also, ca=
nnot confirm exactly the type of cable I am using as I am unsure... but wha=
t I can confirm, is that I have had this exact USRP unit connected to the s=
ame host computer before and everything worked fine...so it can&#39;t be th=
e cables or connections because it has worked in the past on SFP0. <br><br>=
If this helps at all, I saw these messages in the bootlogs when connected v=
ia serial:<br><br>&lt;i&gt;[ =C2=A0 26.820220] nixge 40000000.ethernet sfp0=
: Link is Up - Unknown/Unknown - flow control off<br>[ =C2=A0 26.900861] ni=
xge 40008000.ethernet sfp1: Link is Up - 10Gbps/Full - flow control off<br>=
[ =C2=A0 29.080221] nixge 40008000.ethernet sfp1: Link is Down&lt;/i&gt;<br=
><br>And incase it helps at all, here is a log from a bootup:<br><br>&lt;i&=
gt; =C2=A0 =C2=A0 Data Start: =C2=A0 0x0200010c<br>=C2=A0 =C2=A0 =C2=A0Data=
 Size: =C2=A0 =C2=A05617808 Bytes =3D 5.4 MiB<br>=C2=A0 =C2=A0 =C2=A0Archit=
ecture: ARM<br>=C2=A0 =C2=A0 =C2=A0OS: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 L=
inux<br>=C2=A0 =C2=A0 =C2=A0Load Address: 0x00000000<br>=C2=A0 =C2=A0 =C2=
=A0Entry Point: =C2=A00x00000000<br>=C2=A0 =C2=A0 =C2=A0Hash algo: =C2=A0 =
=C2=A0sha1<br>=C2=A0 =C2=A0 =C2=A0Hash value: =C2=A0 c8b26f0437c92f83a1fc52=
6e5ad2d4543664c23d<br>=C2=A0 =C2=A0Verifying Hash Integrity ... sha1+ OK<br=
>## Loading fdt from FIT Image at 02000000 ...<br>=C2=A0 =C2=A0Using &#39;c=
onf@zynq-ni-sulfur-rev5-magnesium-rev3.dtb&#39; configuration<br>=C2=A0 =C2=
=A0Trying &#39;fdt@zynq-ni-sulfur-rev5-magnesium-rev3.dtb&#39; fdt subimage=
<br>=C2=A0 =C2=A0 =C2=A0Description: =C2=A0Flattened Device Tree blob<br>=
=C2=A0 =C2=A0 =C2=A0Type: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Flat Device Tree<br>=
=C2=A0 =C2=A0 =C2=A0Compression: =C2=A0uncompressed<br>=C2=A0 =C2=A0 =C2=A0=
Data Start: =C2=A0 0x025825f0<br>=C2=A0 =C2=A0 =C2=A0Data Size: =C2=A0 =C2=
=A018383 Bytes =3D 18 KiB<br>=C2=A0 =C2=A0 =C2=A0Architecture: ARM<br>=C2=
=A0 =C2=A0 =C2=A0Hash algo: =C2=A0 =C2=A0sha1<br>=C2=A0 =C2=A0 =C2=A0Hash v=
alue: =C2=A0 8f896f69ce56fada1271c0cfababc99ee6944e1a<br>=C2=A0 =C2=A0Verif=
ying Hash Integrity ... sha1+ OK<br>=C2=A0 =C2=A0Booting using the fdt blob=
 at 0x25825f0<br>=C2=A0 =C2=A0Loading Kernel Image ... OK<br>=C2=A0 =C2=A0L=
oading Device Tree to 1fff8000, end 1ffff7ce ... OK<br><br>Starting kernel =
...<br><br>[ =C2=A0 =C2=A00.000000] Booting Linux on physical CPU 0x0<br>[ =
=C2=A0 =C2=A00.000000] Linux version 4.15.18-yocto-standard (oe-user@oe-hos=
t) (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Mon Mar 25 20:13:00 UTC 2019<br=
>[ =C2=A0 =C2=A00.000000] CPU: ARMv7 Processor [413fc090] revision 0 (ARMv7=
), cr=3D18c5387d<br>[ =C2=A0 =C2=A00.000000] CPU: PIPT / VIPT nonaliasing d=
ata cache, VIPT aliasing instruction cache<br>[ =C2=A0 =C2=A00.000000] OF: =
fdt: Machine model: NI Ettus Research Project Sulfur SDR Rev3<br>[ =C2=A0 =
=C2=A00.000000] Memory policy: Data cache writealloc<br>[ =C2=A0 =C2=A00.00=
0000] percpu: Embedded 17 pages/cpu @(ptrval) s39692 r8192 d21748 u69632<br=
>[ =C2=A0 =C2=A00.000000] Built 1 zonelists, mobility grouping on.=C2=A0 To=
tal pages: 260416<br>[ =C2=A0 =C2=A00.000000] Kernel command line: root=3D/=
dev/mmcblk0p2 rw rootwait uio_pdrv_genirq.of_id=3Dusrp-uio<br>[ =C2=A0 =C2=
=A00.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 byte=
s)<br>[ =C2=A0 =C2=A00.000000] Inode-cache hash table entries: 65536 (order=
: 6, 262144 bytes)<br>[ =C2=A0 =C2=A00.000000] Memory: 1023252K/1048576K av=
ailable (8192K kernel code, 684K rwdata, 2472K rodata, 1024K init, 593K bss=
, 25324K reserved, 0K cma-reserved, 262144K highmem)<br>[ =C2=A0 =C2=A00.00=
0000] Virtual kernel memory layout:<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=
=A0 vector =C2=A0: 0xffff0000 - 0xffff1000 =C2=A0 ( =C2=A0 4 kB)<br>[ =C2=
=A0 =C2=A00.000000] =C2=A0 =C2=A0 fixmap =C2=A0: 0xffc00000 - 0xfff00000 =
=C2=A0 (3072 kB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 vmalloc : 0xf080=
0000 - 0xff800000 =C2=A0 ( 240 MB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=
=A0 lowmem =C2=A0: 0xc0000000 - 0xf0000000 =C2=A0 ( 768 MB)<br>[ =C2=A0 =C2=
=A00.000000] =C2=A0 =C2=A0 pkmap =C2=A0 : 0xbfe00000 - 0xc0000000 =C2=A0 ( =
=C2=A0 2 MB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 modules : 0xbf000000=
 - 0xbfe00000 =C2=A0 ( =C2=A014 MB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=
=A0 =C2=A0 .text : 0x(ptrval) - 0x(ptrval) =C2=A0 (9184 kB)<br>[ =C2=A0 =C2=
=A00.000000] =C2=A0 =C2=A0 =C2=A0 .init : 0x(ptrval) - 0x(ptrval) =C2=A0 (1=
024 kB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 .data : 0x(ptrval)=
 - 0x(ptrval) =C2=A0 ( 685 kB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.bss : 0x(ptrval) - 0x(ptrval) =C2=A0 ( 594 kB)<br>[ =C2=A0 =
=C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D2, =
Nodes=3D1<br>[ =C2=A0 =C2=A00.000000] ftrace: allocating 30122 entries in 8=
9 pages<br>[ =C2=A0 =C2=A00.000000] Preemptible hierarchical RCU implementa=
tion.<br>[ =C2=A0 =C2=A00.000000] =C2=A0RCU restricting CPUs from NR_CPUS=
=3D4 to nr_cpu_ids=3D2.<br>[ =C2=A0 =C2=A00.000000] =C2=A0Tasks RCU enabled=
.<br>[ =C2=A0 =C2=A00.000000] RCU: Adjusting geometry for rcu_fanout_leaf=
=3D16, nr_cpu_ids=3D2<br>[ =C2=A0 =C2=A00.000000] NR_IRQS: 16, nr_irqs: 16,=
 preallocated irqs: 16<br>[ =C2=A0 =C2=A00.000000] slcr mapped to (ptrval)<=
br>[ =C2=A0 =C2=A00.000000] L2C: platform modifies aux control register: 0x=
02060000 -&gt; 0x02460000<br>[ =C2=A0 =C2=A00.000000] L2C: DT/platform modi=
fies aux control register: 0x02060000 -&gt; 0x02460000<br>[ =C2=A0 =C2=A00.=
000000] L2C-310 erratum 769419 enabled<br>[ =C2=A0 =C2=A00.000000] L2C-310 =
enabling early BRESP for Cortex-A9<br>[ =C2=A0 =C2=A00.000000] L2C-310 full=
 line of zeros enabled for Cortex-A9<br>[ =C2=A0 =C2=A00.000000] L2C-310 dy=
namic clock gating enabled, standby mode enabled<br>[ =C2=A0 =C2=A00.000000=
] L2C-310 cache controller enabled, 8 ways, 512 kB<br>[ =C2=A0 =C2=A00.0000=
00] L2C-310: CACHE_ID 0x410000c8, AUX_CTRL 0x46460001<br>[ =C2=A0 =C2=A00.0=
00000] zynq_clock_init: clkc starts at (ptrval)<br>[ =C2=A0 =C2=A00.000000]=
 Zynq clock init<br>[ =C2=A0 =C2=A00.000011] sched_clock: 64 bits at 399MHz=
, resolution 2ns, wraps every 4398046511103ns<br>[ =C2=A0 =C2=A00.000032] c=
locksource: arm_global_timer: mask: 0xffffffffffffffff max_cycles: 0x5c4093=
a7d1, max_idle_ns: 440795210635 ns<br>[ =C2=A0 =C2=A00.000062] Switching to=
 timer-based delay loop, resolution 2ns<br>[ =C2=A0 =C2=A00.000425] Console=
: colour dummy device 80x30<br>[ =C2=A0 =C2=A00.001152] console [tty0] enab=
led<br>[ =C2=A0 =C2=A00.001190] Calibrating delay loop (skipped), value cal=
culated using timer frequency.. 799.99 BogoMIPS (lpj=3D3999999)<br>[ =C2=A0=
 =C2=A00.001232] pid_max: default: 32768 minimum: 301<br>[ =C2=A0 =C2=A00.0=
01365] Security Framework initialized<br>[ =C2=A0 =C2=A00.001553] Mount-cac=
he hash table entries: 2048 (order: 1, 8192 bytes)<br>[ =C2=A0 =C2=A00.0015=
87] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes)<br>[ =
=C2=A0 =C2=A00.002334] CPU: Testing write buffer coherency: ok<br>[ =C2=A0 =
=C2=A00.002652] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000<br>[ =C2=
=A0 =C2=A00.040240] Setting up static identity map for 0x100000 - 0x100060<=
br>[ =C2=A0 =C2=A00.060192] Hierarchical SRCU implementation.<br>[ =C2=A0 =
=C2=A00.100192] smp: Bringing up secondary CPUs ...<br>[ =C2=A0 =C2=A00.170=
504] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001<br>[ =C2=A0 =C2=A00.1=
70662] smp: Brought up 1 node, 2 CPUs<br>[ =C2=A0 =C2=A00.170709] SMP: Tota=
l of 2 processors activated (1599.99 BogoMIPS).<br>[ =C2=A0 =C2=A00.170733]=
 CPU: All CPU(s) started in SVC mode.<br>[ =C2=A0 =C2=A00.171853] devtmpfs:=
 initialized<br>[ =C2=A0 =C2=A00.176262] random: get_random_u32 called from=
 bucket_table_alloc+0x1d0/0x210 with crng_init=3D0<br>[ =C2=A0 =C2=A00.1766=
66] VFP support v0.3: implementor 41 architecture 3 part 30 variant 9 rev 4=
<br>[ =C2=A0 =C2=A00.177060] clocksource: jiffies: mask: 0xffffffff max_cyc=
les: 0xffffffff, max_idle_ns: 19112604462750000 ns<br>[ =C2=A0 =C2=A00.1771=
13] futex hash table entries: 512 (order: 3, 32768 bytes)<br>[ =C2=A0 =C2=
=A00.177396] xor: measuring software checksum speed<br>[ =C2=A0 =C2=A00.270=
174] =C2=A0 =C2=A0arm4regs =C2=A0: =C2=A01200.000 MB/sec<br>[ =C2=A0 =C2=A0=
0.370181] =C2=A0 =C2=A08regs =C2=A0 =C2=A0 : =C2=A0 916.800 MB/sec<br>[ =C2=
=A0 =C2=A00.470174] =C2=A0 =C2=A032regs =C2=A0 =C2=A0: =C2=A0 968.400 MB/se=
c<br>[ =C2=A0 =C2=A00.470197] xor: using function: arm4regs (1200.000 MB/se=
c)<br>[ =C2=A0 =C2=A00.470227] pinctrl core: initialized pinctrl subsystem<=
br>[ =C2=A0 =C2=A00.471190] NET: Registered protocol family 16<br>[ =C2=A0 =
=C2=A00.472074] DMA: preallocated 256 KiB pool for atomic coherent allocati=
ons<br>[ =C2=A0 =C2=A00.473183] cpuidle: using governor menu<br>[ =C2=A0 =
=C2=A00.474843] GPIO line 910 (ledn) hogged as output/high<br>[ =C2=A0 =C2=
=A00.479823] hw-breakpoint: found 5 (+1 reserved) breakpoint and 1 watchpoi=
nt registers.<br>[ =C2=A0 =C2=A00.479865] hw-breakpoint: maximum watchpoint=
 size is 4 bytes.<br>[ =C2=A0 =C2=A00.480152] zynq-pinctrl 700.pinctrl: zyn=
q pinctrl initialized<br>[ =C2=A0 =C2=A00.480594] e0000000.serial: ttyPS0 a=
t MMIO 0xe0000000 (irq =3D 25, base_baud =3D 6249999) is a xuartps<br>[ =C2=
=A0 =C2=A00.958112] console [ttyPS0] enabled<br>[ =C2=A0 =C2=A00.962107] e0=
001000.serial: ttyPS1 at MMIO 0xe0001000 (irq =3D 26, base_baud =3D 6249999=
) is a xuartps<br>[ =C2=A0 =C2=A01.150551] raid6: int32x1 =C2=A0gen() =C2=
=A0 150 MB/s<br>[ =C2=A0 =C2=A01.320294] raid6: int32x1 =C2=A0xor() =C2=A0 =
121 MB/s<br>[ =C2=A0 =C2=A01.490561] raid6: int32x2 =C2=A0gen() =C2=A0 130 =
MB/s<br>[ =C2=A0 =C2=A01.660402] raid6: int32x2 =C2=A0xor() =C2=A0 125 MB/s=
<br>[ =C2=A0 =C2=A01.830193] raid6: int32x4 =C2=A0gen() =C2=A0 128 MB/s<br>=
[ =C2=A0 =C2=A02.000197] raid6: int32x4 =C2=A0xor() =C2=A0 =C2=A091 MB/s<br=
>[ =C2=A0 =C2=A02.170194] raid6: int32x8 =C2=A0gen() =C2=A0 132 MB/s<br>[ =
=C2=A0 =C2=A02.340366] raid6: int32x8 =C2=A0xor() =C2=A0 =C2=A098 MB/s<br>[=
 =C2=A0 =C2=A02.344561] raid6: using algorithm int32x1 gen() 150 MB/s<br>[ =
=C2=A0 =C2=A02.349942] raid6: .... xor() 121 MB/s, rmw enabled<br>[ =C2=A0 =
=C2=A02.354820] raid6: using intx1 recovery algorithm<br>[ =C2=A0 =C2=A02.3=
60588] SCSI subsystem initialized<br>[ =C2=A0 =C2=A02.364474] usbcore: regi=
stered new interface driver usbfs<br>[ =C2=A0 =C2=A02.369939] usbcore: regi=
stered new interface driver hub<br>[ =C2=A0 =C2=A02.375312] usbcore: regist=
ered new device driver usb<br>[ =C2=A0 =C2=A02.380466] usb_phy_generic phy0=
: phy0 supply vcc not found, using dummy regulator<br>[ =C2=A0 =C2=A02.3881=
62] Linux video capture interface: v2.00<br>[ =C2=A0 =C2=A02.393020] EDAC M=
C: Ver: 3.0.0<br>[ =C2=A0 =C2=A02.396540] FPGA manager framework<br>[ =C2=
=A0 =C2=A02.400057] fpga-region fpga-full: FPGA Region probed<br>[ =C2=A0 =
=C2=A02.405254] fpga-region amba:fpga-region@40000000: FPGA Region probed<b=
r>[ =C2=A0 =C2=A02.412097] random: fast init done<br>[ =C2=A0 =C2=A02.41611=
6] clocksource: Switched to clocksource arm_global_timer<br>[ =C2=A0 =C2=A0=
2.544444] NET: Registered protocol family 2<br>[ =C2=A0 =C2=A02.549448] TCP=
 established hash table entries: 8192 (order: 3, 32768 bytes)<br>[ =C2=A0 =
=C2=A02.556551] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)<b=
r>[ =C2=A0 =C2=A02.563065] TCP: Hash tables configured (established 8192 bi=
nd 8192)<br>[ =C2=A0 =C2=A02.569460] UDP hash table entries: 512 (order: 2,=
 16384 bytes)<br>[ =C2=A0 =C2=A02.575374] UDP-Lite hash table entries: 512 =
(order: 2, 16384 bytes)<br>[ =C2=A0 =C2=A02.582000] NET: Registered protoco=
l family 1<br>[ =C2=A0 =C2=A02.600778] RPC: Registered named UNIX socket tr=
ansport module.<br>[ =C2=A0 =C2=A02.606632] RPC: Registered udp transport m=
odule.<br>[ =C2=A0 =C2=A02.611368] RPC: Registered tcp transport module.<br=
>[ =C2=A0 =C2=A02.616000] RPC: Registered tcp NFSv4.1 backchannel transport=
 module.<br>[ =C2=A0 =C2=A02.622974] hw perfevents: no interrupt-affinity p=
roperty for /pmu@f8891000, guessing.<br>[ =C2=A0 =C2=A02.631096] hw perfeve=
nts: enabled with armv7_cortex_a9 PMU driver, 7 counters available<br>[ =C2=
=A0 =C2=A02.640601] Initialise system trusted keyrings<br>[ =C2=A0 =C2=A02.=
645175] workingset: timestamp_bits=3D14 max_order=3D18 bucket_order=3D4<br>=
[ =C2=A0 =C2=A02.659662] NFS: Registering the id_resolver key type<br>[ =C2=
=A0 =C2=A02.664713] Key type id_resolver registered<br>[ =C2=A0 =C2=A02.668=
827] Key type id_legacy registered<br>[ =C2=A0 =C2=A02.672855] nfs4filelayo=
ut_init: NFSv4 File Layout Driver Registering...<br>[ =C2=A0 =C2=A02.679725=
] fuse init (API version 7.26)<br>[ =C2=A0 =C2=A02.687847] Key type asymmet=
ric registered<br>[ =C2=A0 =C2=A02.691916] Asymmetric key parser &#39;x509&=
#39; registered<br>[ =C2=A0 =C2=A02.696798] bounce: pool size: 64 pages<br>=
[ =C2=A0 =C2=A02.700647] Block layer SCSI generic (bsg) driver version 0.4 =
loaded (major 247)<br>[ =C2=A0 =C2=A02.707978] io scheduler noop registered=
<br>[ =C2=A0 =C2=A02.711896] io scheduler deadline registered<br>[ =C2=A0 =
=C2=A02.716392] io scheduler cfq registered (default)<br>[ =C2=A0 =C2=A02.7=
21059] io scheduler mq-deadline registered<br>[ =C2=A0 =C2=A02.725534] io s=
cheduler kyber registered<br>[ =C2=A0 =C2=A02.731238] dma-pl330 f8003000.dm=
ac: Loaded driver for PL330 DMAC-241330<br>[ =C2=A0 =C2=A02.737882] dma-pl3=
30 f8003000.dmac: =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBUFF-128x8bytes Num_Chans-8 =
Num_Peri-4 Num_Events-16<br>[ =C2=A0 =C2=A02.746855] Serial: 8250/16550 dri=
ver, 4 ports, IRQ sharing disabled<br>[ =C2=A0 =C2=A02.757231] brd: module =
loaded<br>[ =C2=A0 =C2=A02.778622] libphy: Fixed MDIO Bus: probed<br>[ =C2=
=A0 =C2=A02.784329] CAN device driver interface<br>[ =C2=A0 =C2=A02.789032]=
 ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controller (EHCI) Driver<br>[ =
=C2=A0 =C2=A02.795602] usbcore: registered new interface driver usb-storage=
<br>[ =C2=A0 =C2=A02.801792] chipidea-usb2 e0002000.usb: e0002000.usb suppl=
y vbus not found, using dummy regulator<br>[ =C2=A0 =C2=A02.830209] ci_hdrc=
 ci_hdrc.0: EHCI Host Controller<br>[ =C2=A0 =C2=A02.835045] ci_hdrc ci_hdr=
c.0: new USB bus registered, assigned bus number 1<br>[ =C2=A0 =C2=A02.8701=
97] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00<br>[ =C2=A0 =C2=A02.87633=
2] hub 1-0:1.0: USB hub found<br>[ =C2=A0 =C2=A02.880055] hub 1-0:1.0: 1 po=
rt detected<br>[ =C2=A0 =C2=A02.885610] mousedev: PS/2 mouse device common =
for all mice<br>[ =C2=A0 =C2=A02.891432] i2c /dev entries driver<br>[ =C2=
=A0 =C2=A02.895587] cdns-i2c e0004000.i2c: 400 kHz mmio e0004000 irq 22<br>=
[ =C2=A0 =C2=A02.908508] cros-ec-i2c 1-001e: Chrome EC device registered<br=
>[ =C2=A0 =C2=A02.914148] cdns-i2c e0005000.i2c: 400 kHz mmio e0005000 irq =
23<br>[ =C2=A0 =C2=A02.922698] at24 2-0050: 256 byte 24c02 EEPROM, read-onl=
y, 0 bytes/write<br>[ =C2=A0 =C2=A02.929993] i2c i2c-0: Added multiplexed i=
2c bus 3<br>[ =C2=A0 =C2=A02.935017] i2c i2c-0: Added multiplexed i2c bus 4=
<br>[ =C2=A0 =C2=A02.940007] i2c i2c-0: Added multiplexed i2c bus 5<br>[ =
=C2=A0 =C2=A02.945211] pca953x 6-0022: 6-0022 supply vcc not found, using d=
ummy regulator<br>[ =C2=A0 =C2=A02.956658] i2c i2c-0: Added multiplexed i2c=
 bus 6<br>[ =C2=A0 =C2=A02.991421] tpm tpm0: starting up the TPM manually<b=
r>[ =C2=A0 =C2=A03.081701] i2c i2c-0: Added multiplexed i2c bus 7<br>[ =C2=
=A0 =C2=A03.087915] rtc-ds1374 8-0068: rtc core: registered ds1374 as rtc0<=
br>[ =C2=A0 =C2=A03.094718] i2c i2c-0: Added multiplexed i2c bus 8<br>[ =C2=
=A0 =C2=A03.100321] at24 9-0050: 32768 byte 24c256 EEPROM, writable, 1 byte=
s/write<br>[ =C2=A0 =C2=A03.107555] pca953x 9-0020: 9-0020 supply vcc not f=
ound, using dummy regulator<br>[ =C2=A0 =C2=A03.116627] i2c i2c-0: Added mu=
ltiplexed i2c bus 9<br>[ =C2=A0 =C2=A03.122284] at24 10-0050: 32768 byte 24=
c256 EEPROM, writable, 1 bytes/write<br>[ =C2=A0 =C2=A03.129581] pca953x 10=
-0020: 10-0020 supply vcc not found, using dummy regulator<br>[ =C2=A0 =C2=
=A03.138830] i2c i2c-0: Added multiplexed i2c bus 10<br>[ =C2=A0 =C2=A03.14=
3665] pca954x 0-0070: registered 8 multiplexed busses for I2C switch pca954=
8<br>[ =C2=A0 =C2=A03.152848] lm75 9-0048: hwmon0: sensor &#39;lm75&#39;<br=
>[ =C2=A0 =C2=A03.158289] lm75 10-0048: hwmon1: sensor &#39;lm75&#39;<br>[ =
=C2=A0 =C2=A03.173711] watchdog: cdns_wdt watchdog: cannot register miscdev=
 on minor=3D130 (err=3D-16).<br>[ =C2=A0 =C2=A03.181768] watchdog: cdns_wdt=
 watchdog: a legacy watchdog module is probably present.<br>[ =C2=A0 =C2=A0=
3.189821] cdns-wdt f8005000.watchdog: Xilinx Watchdog Timer at (ptrval) wit=
h timeout 10s<br>[ =C2=A0 =C2=A03.198771] device-mapper: ioctl: 4.37.0-ioct=
l (2017-09-20) initialised: <a href=3D"mailto:dm-devel@redhat.com" target=
=3D"_blank">dm-devel@redhat.com</a><br>[ =C2=A0 =C2=A03.207510] EDAC MC: EC=
C not enabled<br>[ =C2=A0 =C2=A03.211214] Xilinx Zynq CpuIdle Driver starte=
d<br>[ =C2=A0 =C2=A03.215999] sdhci: Secure Digital Host Controller Interfa=
ce driver<br>[ =C2=A0 =C2=A03.222135] sdhci: Copyright(c) Pierre Ossman<br>=
[ =C2=A0 =C2=A03.226447] sdhci-pltfm: SDHCI platform and OF driver helper<b=
r>[ =C2=A0 =C2=A03.290241] mmc0: SDHCI controller on e0100000.sdhci [e01000=
00.sdhci] using ADMA<br>[ =C2=A0 =C2=A03.301811] usbcore: registered new in=
terface driver usbhid<br>[ =C2=A0 =C2=A03.307376] usbhid: USB HID core driv=
er<br>[ =C2=A0 =C2=A03.311367] cros-ec-i2c 1-001e: request of size 194 is t=
oo big (max: 120)<br>[ =C2=A0 =C2=A03.318158] cros-ec-i2c 1-001e: request o=
f size 194 is too big (max: 120)<br>[ =C2=A0 =C2=A03.324962] cros-ec-i2c 1-=
001e: request of size 194 is too big (max: 120)<br>[ =C2=A0 =C2=A03.331739]=
 cros-ec-i2c 1-001e: request of size 194 is too big (max: 120)<br>[ =C2=A0 =
=C2=A03.339507] cros-ec-i2c 1-001e: request of size 194 is too big (max: 12=
0)<br>[ =C2=A0 =C2=A03.348291] cros-ec-i2c 1-001e: request of size 194 is t=
oo big (max: 120)<br>[ =C2=A0 =C2=A03.355068] cros-ec-i2c 1-001e: request o=
f size 194 is too big (max: 120)<br>[ =C2=A0 =C2=A03.369431] fpga_manager f=
pga0: Xilinx Zynq FPGA Manager registered<br>[ =C2=A0 =C2=A03.376191] oprof=
ile: using arm/armv7-ca9<br>[ =C2=A0 =C2=A03.380250] u32 classifier<br>[ =
=C2=A0 =C2=A03.382892] =C2=A0 =C2=A0 Actions configured<br>[ =C2=A0 =C2=A03=
.386505] NET: Registered protocol family 17<br>[ =C2=A0 =C2=A03.390956] can=
: controller area network core (rev 20170425 abi 9)<br>[ =C2=A0 =C2=A03.397=
183] NET: Registered protocol family 29<br>[ =C2=A0 =C2=A03.401674] can: ra=
w protocol (rev 20170425)<br>[ =C2=A0 =C2=A03.405945] can: broadcast manage=
r protocol (rev 20170425 t)<br>[ =C2=A0 =C2=A03.411604] can: netlink gatewa=
y (rev 20170425) max_hops=3D1<br>[ =C2=A0 =C2=A03.417294] Key type dns_reso=
lver registered<br>[ =C2=A0 =C2=A03.421799] Registering SWP/SWPB emulation =
handler<br>[ =C2=A0 =C2=A03.427316] Loading compiled-in X.509 certificates<=
br>[ =C2=A0 =C2=A03.433887] Btrfs loaded, crc32c=3Dcrc32c-generic<br>[ =C2=
=A0 =C2=A03.439398] Key type encrypted registered<br>[ =C2=A0 =C2=A03.44672=
9] mmc0: new high speed SDHC card at address aaaa<br>[ =C2=A0 =C2=A03.45278=
7] mmcblk0: mmc0:aaaa SP32G 29.7 GiB<br>[ =C2=A0 =C2=A03.457520] cdns-i2c e=
0005000.i2c: xfer_size reg rollover. xfer aborted!<br>[ =C2=A0 =C2=A03.4668=
68] =C2=A0mmcblk0: p1 p2 p3 p4<br>[ =C2=A0 =C2=A04.480201] cdns-i2c e000500=
0.i2c: timeout waiting on completion<br>[ =C2=A0 =C2=A04.486171] cros-ec-ct=
l cros-ec-ctl.0.auto: EC communication failed<br>[ =C2=A0 =C2=A04.494588] l=
ibphy: MACB_mii_bus: probed<br>[ =C2=A0 =C2=A04.591385] Marvell 88E1510 e00=
0b000.ethernet-ffffffff:00: attached PHY driver [Marvell 88E1510] (mii_bus:=
phy_addr=3De000b000.ethernet-ffffffff:00, irq=3DPOLL)<br>[ =C2=A0 =C2=A04.6=
05288] macb e000b000.ethernet eth0: Cadence GEM rev 0x00020118 at 0xe000b00=
0 irq 27 (00:80:2f:24:01:14)<br>[ =C2=A0 =C2=A04.615170] console [netcon0] =
enabled<br>[ =C2=A0 =C2=A04.618764] netconsole: network logging started<br>=
[ =C2=A0 =C2=A04.623821] input: gpio-keys as /devices/soc0/gpio-keys/input/=
input0<br>[ =C2=A0 =C2=A04.630861] rtc-ds1374 8-0068: setting system clock =
to 2019-08-30 23:00:59 UTC (1567206059)<br>[ =C2=A0 =C2=A04.639149] of_cfs_=
init<br>[ =C2=A0 =C2=A04.641677] of_cfs_init: OK<br>[ =C2=A0 =C2=A04.644987=
] md: Waiting for all devices to be available before autodetect<br>[ =C2=A0=
 =C2=A04.651757] md: If you don&#39;t use raid, use raid=3Dnoautodetect<br>=
[ =C2=A0 =C2=A04.658031] md: Autodetecting RAID arrays.<br>[ =C2=A0 =C2=A04=
.662092] md: autorun ...<br>[ =C2=A0 =C2=A04.664830] md: ... autorun DONE.<=
br>[ =C2=A0 =C2=A04.670723] EXT4-fs (mmcblk0p2): couldn&#39;t mount as ext3=
 due to feature incompatibilities<br>[ =C2=A0 =C2=A04.681000] EXT4-fs (mmcb=
lk0p2): couldn&#39;t mount as ext2 due to feature incompatibilities<br>[ =
=C2=A0 =C2=A04.703794] EXT4-fs (mmcblk0p2): mounted filesystem with ordered=
 data mode. Opts: (null)<br>[ =C2=A0 =C2=A04.711908] VFS: Mounted root (ext=
4 filesystem) on device 179:2.<br>[ =C2=A0 =C2=A04.723131] devtmpfs: mounte=
d<br>[ =C2=A0 =C2=A04.731994] Freeing unused kernel memory: 1024K<br>[ =C2=
=A0 =C2=A05.059819] systemd[1]: systemd 237 running in system mode. (-PAM -=
AUDIT -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -GCRYPT=
 -GNUTLS +ACL -XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN -PCRE2 de=
fault-hierarchy=3Dhybrid)<br>[ =C2=A0 =C2=A05.081662] systemd[1]: Detected =
architecture arm.<br><br>Welcome to Alchemy 2018.04!<br><br>[ =C2=A0 =C2=A0=
5.133006] systemd[1]: Set hostname to &lt;ni-sulfur-rev6-mender&gt;.<br>[ =
=C2=A0 =C2=A05.147165] systemd[1]: Initializing machine ID from random gene=
rator.<br>[ =C2=A0 =C2=A05.165704] systemd[1]: Hardware watchdog &#39;DS137=
4 WTD&#39;, version 0<br>[ =C2=A0 =C2=A05.172621] systemd[1]: Set hardware =
watchdog to 10s.<br>[ =C2=A0 =C2=A05.177614] rtc_ds1374: enable watchdog<br=
>[ =C2=A0 =C2=A05.364191] systemd[1]: File /lib/systemd/system/systemd-jour=
nald.service:35 configures an IP firewall (IPAddressDeny=3Dany), but the lo=
cal system does not support BPF/cgroup based firewalling.<br>[ =C2=A0 =C2=
=A05.381322] systemd[1]: Proceeding WITHOUT firewalling in effect! (This wa=
rning is only shown for the first loaded unit using IP firewalling.)<br>[ =
=C2=A0 =C2=A05.513699] systemd[1]: Binding to IPv6 address not available si=
nce kernel does not support IPv6.<br>[ =C2=A0 =C2=A05.555174] systemd[1]: R=
eached target Swap.<br>[ =C2=A0OK =C2=A0] Reached target Swap.<br>[ =C2=A0O=
K =C2=A0] Started Dispatch Password Requests to Console Directory Watch.<br=
>[ =C2=A0OK =C2=A0] Created slice User and Session Slice.<br>[ =C2=A0OK =C2=
=A0] Started Forward Password Requests to Wall Directory Watch.<br>[ =C2=A0=
OK =C2=A0] Reached target Paths.<br>[ =C2=A0OK =C2=A0] Reached target Remot=
e File Systems.<br>[ =C2=A0OK =C2=A0] Created slice System Slice.<br>[ =C2=
=A0OK =C2=A0] Listening on Network Service Netlink Socket.<br>[ =C2=A0OK =
=C2=A0] Listening on Journal Socket.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0M=
ounting POSIX Message Queue File System...<br>[ =C2=A0OK =C2=A0] Listening =
on udev Control Socket.<br>[ =C2=A0OK =C2=A0] Listening on /dev/initctl Com=
patibility Named Pipe.<br>[ =C2=A0OK =C2=A0] Listening on Journal Socket (/=
dev/log).<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Create list of requ=
ired st=E2=80=A6ce nodes for the current kernel...<br>[ =C2=A0OK =C2=A0] Li=
stening on udev Kernel Socket.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Startin=
g Load Kernel Modules...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting Temp=
orary Directory (/tmp)...<br>[ =C2=A0OK =C2=A0] Reached target Slices.<br>[=
 =C2=A0OK =C2=A0] Created slice system-getty.slice.<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0Mounting Kernel Debug File System...<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Starting udev Coldplug all Devices...<br>[ =C2=A0OK =C2=A0] Li=
stening on Syslog Socket.<br>[ =C2=A0OK =C2=A0] Created slice system-serial=
\x2dgetty.slice.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Journal Serv=
ice...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Remount Root and Kerne=
l File Systems...<br>[ =C2=A0OK =C2=A0] Mounted POSIX Message Queue File Sy=
stem.<br>[ =C2=A0 =C2=A06.349070] EXT4-fs (mmcblk0p2): re-mounted. Opts: (n=
ull)<br>[ =C2=A0OK =C2=A0] Started Create list of required sta=E2=80=A6vice=
 nodes for the current kernel.<br>[ =C2=A0OK =C2=A0] Started Journal Servic=
e.<br>[ =C2=A0OK =C2=A0] Started Load Kernel Modules.<br>[ =C2=A0OK =C2=A0]=
 Mounted Temporary Directory (/tmp).<br>[ =C2=A0OK =C2=A0] Mounted Kernel D=
ebug File System.<br>[ =C2=A0OK =C2=A0] Started Remount Root and Kernel Fil=
e Systems.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Rebuild Hardware D=
atabase...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting FUSE Control File =
System...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Apply Kernel Variab=
les...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting Kernel Configuration F=
ile System...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Flush Journal t=
o Persistent Storage...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Creat=
e Static Device Nodes in /dev...<br>[ =C2=A0OK =C2=A0] Mounted FUSE Control=
 File System.<br>[ =C2=A0OK =C2=A0] Started Apply Kernel Variables.<br>[ =
=C2=A0OK =C2=A0] Mounted Kernel Configuration File System.<br>[ =C2=A0OK =
=C2=A0] Started Create Static Device Nodes in /dev.<br>[ =C2=A0OK =C2=A0] S=
tarted udev Coldplug all Devices.<br>[ =C2=A0 =C2=A06.951486] systemd-journ=
ald[90]: Received request to flush runtime journal from PID 1<br>[ =C2=A0OK=
 =C2=A0] Reached target Local File Systems (Pre).<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Mounting /var/volatile...<br>[ =C2=A0OK =C2=A0] Started Flush =
Journal to Persistent Storage.<br>[ =C2=A0OK =C2=A0] Mounted /var/volatile.=
<br>[ =C2=A0OK =C2=A0] Started Rebuild Hardware Database.<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Starting udev Kernel Device Manager...<br>[ =C2=A0OK =
=C2=A0] Started udev Kernel Device Manager.<br>[ =C2=A0OK =C2=A0] Found dev=
ice /dev/ttyPS0.<br>[ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p1.<br>[ =
=C2=A0OK =C2=A0] Found device /dev/mmcblk0p4.<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0Mounting /data...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting /=
uboot...<br>[ =C2=A0 =C2=A09.716983] EXT4-fs (mmcblk0p4): mounted filesyste=
m with ordered data mode. Opts: (null)<br>[ =C2=A0OK =C2=A0] Mounted /data.=
<br>[ =C2=A0OK =C2=A0] Mounted /uboot.<br>[ =C2=A0OK =C2=A0] Reached target=
 Local File Systems.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Create V=
olatile Files and Directories...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Start=
ing Rebuild Journal Catalog...<br>[ =C2=A0OK =C2=A0] Started Create Volatil=
e Files and Directories.<br>[ =C2=A0OK =C2=A0] Started Rebuild Journal Cata=
log.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Update is Completed...<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Run pending postinsts...<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Opkg first boot configure...<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Network Time Synchronization...<=
br>[ =C2=A0OK =C2=A0] Started Update is Completed.<br>[ =C2=A0OK =C2=A0] St=
arted Opkg first boot configure.<br>[ =C2=A0OK =C2=A0] Started Network Time=
 Synchronization.<br>[ =C2=A0OK =C2=A0] Reached target System Time Synchron=
ized.<br>[ =C2=A0OK =C2=A0] Started Run pending postinsts.<br>[ =C2=A0OK =
=C2=A0] Reached target System Initialization.<br>[ =C2=A0OK =C2=A0] Started=
 Daily Cleanup of Temporary Directories.<br>[ =C2=A0OK =C2=A0] Reached targ=
et Timers.<br>[ =C2=A0OK =C2=A0] Listening on RPCbind Server Activation Soc=
ket.<br>[ =C2=A0OK =C2=A0] Listening on D-Bus System Message Bus Socket.<br=
>[ =C2=A0OK =C2=A0] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting sshd.socket.<br>[ =C2=A0OK =
=C2=A0] Listening on GPS (Global Positioning System) Daemon Sockets.<br>[ =
=C2=A0OK =C2=A0] Listening on sshd.socket.<br>[ =C2=A0OK =C2=A0] Reached ta=
rget Sockets.<br>[ =C2=A0OK =C2=A0] Reached target Basic System.<br>[ =C2=
=A0OK =C2=A0] Started D-Bus System Message Bus.<br>[ =C2=A0OK =C2=A0] Start=
ed Getty on tty1.<br>[ =C2=A0OK =C2=A0] Started Kernel Logging Service.<br>=
[ =C2=A0OK =C2=A0] Started Serial Getty on ttyPS0.<br>[ =C2=A0OK =C2=A0] Re=
ached target Login Prompts.<br>[ =C2=A0OK =C2=A0] Started System Logging Se=
rvice.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Setting unique (s/n ba=
sed) hostname...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting USRP Hardwar=
e Daemon (MPM)...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Telephony s=
ervice...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Login Service...<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Hostname Service...<br>[ =C2=A0=
OK =C2=A0] Started Login Service.<br>[ =C2=A0OK =C2=A0] Started Telephony s=
ervice.<br>[ =C2=A0OK =C2=A0] Started Hostname Service.<br>[ =C2=A0OK =C2=
=A0] Started Setting unique (s/n based) hostname.<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Starting Avahi mDNS/DNS-SD Stack...<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Starting Network Service...<br>[ =C2=A0OK =C2=A0] Started Avah=
i mDNS/DNS-SD Stack.<br>[ =C2=A0OK =C2=A0] Started Network Service.<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Network Name Resolution...<br>[ =C2=
=A0OK =C2=A0] Started Network Name Resolution.<br>[ =C2=A0OK =C2=A0] Starte=
d Mender OTA update service.<br>[ =C2=A0OK =C2=A0] Reached target Host and =
Network Name Lookups.<br>[ =C2=A0OK =C2=A0] Reached target Network.<br><br>=
Alchemy 2018.04 ni-n3xx-3177E63 ttyPS0<br><br>ni-n3xx-3177E63 login: root<b=
r>root@ni-n3xx-3177E63:~# [ =C2=A0 24.582582] fpga_manager fpga0: writing n=
310.bin to Xilinx Zynq FPGA Manager<br>[ =C2=A0 25.414692] libphy: nixge_mi=
i_bus: probed<br>[ =C2=A0 25.451582] libphy: nixge_mii_bus: probed<br>[ =C2=
=A0 25.469428] nixge 40000000.ethernet sfp0: renamed from eth1<br>[ =C2=A0 =
25.713083] rfnoc_crossbar crossbar0: NI Platform RFNoC Crossbar registered<=
br>[ =C2=A0 25.751871] nixge 40008000.ethernet sfp1: renamed from eth1<br>[=
 =C2=A0 25.836282] usrp-dma-core: Registered rx-dma0<br>[ =C2=A0 25.887989]=
 usrp-dma-core: Registered rx-dma1<br>[ =C2=A0 25.909555] usrp-dma-core: Re=
gistered rx-dma2<br>[ =C2=A0 25.949161] usrp-dma-core: Registered rx-dma3<b=
r>[ =C2=A0 25.961521] usrp-dma-core: Registered rx-dma4<br>[ =C2=A0 25.9666=
03] usrp-dma-core: Registered rx-dma5<br>[ =C2=A0 25.981382] usrp-dma-core:=
 Registered rx-dma6<br>[ =C2=A0 25.991645] usrp-dma-core: Registered rx-dma=
7<br>[ =C2=A0 25.996824] usrp-dma-core: Registered rx-dma8<br>[ =C2=A0 26.0=
11477] usrp-dma-core: Registered rx-dma9<br>[ =C2=A0 26.022402] usrp-dma-co=
re: Registered tx-dma0<br>[ =C2=A0 26.027511] usrp-dma-core: Registered tx-=
dma1<br>[ =C2=A0 26.041439] usrp-dma-core: Registered tx-dma2<br>[ =C2=A0 2=
6.052196] usrp-dma-core: Registered tx-dma3<br>[ =C2=A0 26.062320] usrp-dma=
-core: Registered tx-dma4<br>[ =C2=A0 26.067453] usrp-dma-core: Registered =
tx-dma5<br>[ =C2=A0 26.081501] usrp-dma-core: Registered tx-dma6<br>[ =C2=
=A0 26.092381] usrp-dma-core: Registered tx-dma7<br>[ =C2=A0 26.101605] usr=
p-dma-core: Registered tx-dma8<br>[ =C2=A0 26.112430] usrp-dma-core: Regist=
ered tx-dma9<br>[ =C2=A0 26.820220] nixge 40000000.ethernet sfp0: Link is U=
p - Unknown/Unknown - flow control off<br>[ =C2=A0 26.900861] nixge 4000800=
0.ethernet sfp1: Link is Up - 10Gbps/Full - flow control off<br>[ =C2=A0 29=
.080221] nixge 40008000.ethernet sfp1: Link is Down<br>[ =C2=A0 31.595778] =
random: crng init done&lt;/i&gt;<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 5, 2019 at 8:19 PM Robin Co=
xe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Austin.=C2=A0 Is=
=C2=A0<i>enx70886b87f283 </i>a 1 gigE or 10gigE connection?=C2=A0 If it&#39=
;s 1gigE, my guess is that your problem may be that the new SD card is load=
ing the XG FPGA image, which expects 10 gigE connections to the host on bot=
h ports SFP0 and SFP1.=C2=A0 =C2=A0You&#39;ll need to update the SD card to=
 load the HG image from /lib/firmware at bootup (1 gigE on SFP0 on the N310=
, connected to the Host PC using a cat 5 Ethernet cable and the SFP-to-RJ45=
 adapter).=C2=A0<div><br></div><div>Instructions here:=C2=A0=C2=A0<a href=
=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Net=
work_Mode_FPGA_Image_Update" target=3D"_blank">https://kb.ettus.com/USRP_N3=
00/N310/N320/N321_Getting_Started_Guide#Network_Mode_FPGA_Image_Update</a><=
/div><div><br></div><div>-Robin</div><div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 5, 2019 at =
8:02 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_3137567207575742529gmail-m_8386253087106734267gma=
il-m_-103551041112186870moz-cite-prefix">On 09/05/2019 10:28 PM, Austin Ada=
m via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I recently had my USRP N310 sent out for repairs to
        fix one of the SMA connectors, and when it came back, there was
        a new SD card in the slot. When I turned it on after getting it
        back, I was unable to connect to it via &#39;uhd_find_devices&#39;.=
 I
        figured it was something=C2=A0with the SD card, so I eventually
        decided to rewrite=C2=A0the whole thing, in case it needed an updat=
e.
        <div><br>
        </div>
        <div>That still did not fix the issue, and after trying just
          about everything, and following every possible tutorial on the
          ettus docs, and checking the forums, I have decided to ask you
          guys for help.</div>
        <div><br>
        </div>
        <div>Below you can find all the information about the UHD
          versions and the ifconfigs... hopefully that is enough to
          spark some ideas!</div>
        <div><br>
        </div>
        <div>The USRP can find itself=C2=A0on localhost as you can see here=
:</div>
        <div><br>
        </div>
        <div>
          <div><i>root@ni-n3xx-3177E63:~# uhd_find_devices<br>
              [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
              UHD_3.14.0.0-0-g6875d061<br>
              --------------------------------------------------<br>
              -- UHD Device 0<br>
              --------------------------------------------------<br>
              Device Address:<br>
              =C2=A0 =C2=A0 serial: 3177E63<br>
              =C2=A0 =C2=A0 claimed: False<br>
              =C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
              =C2=A0 =C2=A0 product: n310<br>
              =C2=A0 =C2=A0 type: n3xx</i><br>
          </div>
          <div><br>
          </div>
          <div>But when I run the command from the host machine, this is
            what I get:</div>
          <div><i><br>
              admin@PC:~$ uhd_find_devices<br>
              [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
              UHD_3.14.0.HEAD-0-g6875d061<br>
              No UHD Devices Found</i></div>
        </div>
        <div><i><br>
          </i></div>
        <div><b>Here is ifconfig from the USRP:</b></div>
        <div><b><br>
          </b></div>
        <div><font color=3D"#000000"><i>root@ni-n3xx-3177E63:~#
              ifconfig<br>
              eth0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:=
80:2F:24:01:14<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=
=A0MTU:1500 =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:0 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0T=
X bytes:0 (0.0 B)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt:27 Base address:=
0xb000<br>
              <br>
              lo =C2=A0 =C2=A0 =C2=A0 =C2=A0Link encap:Local Loopback<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1 =C2=A0=
Mask:255.0.0.0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNING =C2=A0=
MTU:65536 =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:89 errors:0 dro=
pped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:89 errors:0 dro=
pped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:7480 (7.3 KiB) =
=C2=A0TX bytes:7480 (7.3 KiB)<br>
              <br>
              sfp0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:=
80:2F:24:01:15<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.10.2 =C2=
=A0Bcast:192.168.10.255
              =C2=A0Mask:255.255.255.0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST RUNNING MULTI=
CAST =C2=A0MTU:8000
              =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:14 errors:0 dro=
pped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0T=
X bytes:2577 (2.5 KiB)<br>
              <br>
              sfp1 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:=
80:2F:24:01:16<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=
=A0MTU:8000 =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:1 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0T=
X bytes:62 (62.0 B)</i>=C2=A0</font>=C2=A0<br>
        </div>
        <div><br>
        </div>
        <div><b>And here is ifconfig from the host machine:<br>
            <br>
          </b></div>
        <div>
          <div><i>ugikie@Austin-Blade:~$ ifconfig<br>
              enx70886b87f283:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu =
8000<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1 =C2=A0netmask 2=
55.255.255.0
              =C2=A0broadcast 192.168.10.255<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::73b:c879:60cf:8127 =
=C2=A0prefixlen 64
              =C2=A0scopeid 0x20&lt;link&gt;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 70:88:6b:87:f2:83 =C2=A0txq=
ueuelen 1000
              =C2=A0(Ethernet)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 0 =C2=A0bytes 0 (0.0 B=
)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=
=A0overruns 0 =C2=A0frame 0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 46 =C2=A0bytes 4966 (4=
.9 KB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overr=
uns 0 =C2=A0carrier 0
              =C2=A0collisions 0<br>
              <br>
              lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu 65536<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1 =C2=A0netmask 255.=
0.0.0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1 =C2=A0prefixlen 128 =C2=
=A0scopeid 0x10&lt;host&gt;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 loop =C2=A0txqueuelen 1000 =C2=A0=
(Local Loopback)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 5037 =C2=A0bytes 46696=
1 (466.9 KB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=
=A0overruns 0 =C2=A0frame 0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 5037 =C2=A0bytes 46696=
1 (466.9 KB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overr=
uns 0 =C2=A0carrier 0
              =C2=A0collisions 0<br>
              <br>
              wlp59s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
              =C2=A0mtu 1500<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 172.28.229.114 =C2=A0netmask=
 255.255.240.0
              =C2=A0broadcast 172.28.239.255<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::c9b4:5623:34c4:ae56 =
=C2=A0prefixlen 64
              =C2=A0scopeid 0x20&lt;link&gt;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 9c:b6:d0:18:53:3f =C2=A0txq=
ueuelen 1000
              =C2=A0(Ethernet)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 110339 =C2=A0bytes 123=
997000 (123.9 MB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=
=A0overruns 0 =C2=A0frame 0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 47191 =C2=A0bytes 1104=
8840 (11.0 MB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overr=
uns 0 =C2=A0carrier 0
              =C2=A0collisions 0</i><br>
          </div>
          <div><br>
          </div>
          <div>I tried broadcast pinging 192.168.10.255=C2=A0 and
            192.168.10.2 from the host but didn&#39;t get a response from
            the N310 or anything for that matter.</div>
          <div><br>
          </div>
          <div>I hope someone out there can help me out! Thank you in
            advance :)</div>
          <div><br>
          </div>
          <div>Best,</div>
          <div>Austin</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    So, easy stuff first--you are plugged into the SFP0 port on the
    N310, and not one of the two others?<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000009529da0591db7088--


--===============9137468579901448779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9137468579901448779==--

