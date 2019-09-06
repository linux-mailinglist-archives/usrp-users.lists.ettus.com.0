Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ECCAB212
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 07:34:08 +0200 (CEST)
Received: from [::1] (port=46616 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i66sl-0002we-TW; Fri, 06 Sep 2019 01:34:03 -0400
Received: from mail-pg1-f170.google.com ([209.85.215.170]:46749)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1i66sh-0002rN-OR
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 01:33:59 -0400
Received: by mail-pg1-f170.google.com with SMTP id m3so2798480pgv.13
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 22:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=up8QmWnTCVngr7UqM7fEAqmCnWm3Oo8fse0F2Gf783w=;
 b=hMnr8bRWrYLz7QzLF4eG0nxDUs0audWBscVeqoJLN88oixQ4TVz/dSwyg3EOG+GipZ
 qV0Gi2hRnAuBh22ai06ft3256nsdeOiFO12wG7td/SjdV0AtyMYbBJaJoYkpbdXBxTxg
 6VjtGYUb08x4zyuyGtrjGev8I986Vkf+/7yMuxKdbbb2r/FLd3KomjFoKckaoEVFvFfJ
 gN29jnA1QMMQfPi/qDEq6Cb9wEev8CnQPIB1MkBqPRtAF2bitk98M3k3044bKIqaTfv2
 NjxUaNfVikn/vbaPZLey6zg/q1dqsVkhMq4eFzCxX62clg/+CmQpJQl3S+ZOaThPs6EH
 Z5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=up8QmWnTCVngr7UqM7fEAqmCnWm3Oo8fse0F2Gf783w=;
 b=HWCt/WHZmGQskS2V9MHHaqgruEDB6UXzgNB0tO/ynz/HHKp7XOjNNUKkA8K4ECQOBT
 OSCE9fgOVOy2CNocCcsPxmGSKKP6BX3JfcCe3N5JDTTkuq5hFD96JRpYKZc4DibhYDQC
 Dl9KH1dM0/lEO5+WlrQdrW63EdtXIT1arDq3V1LrETbLgYji3JpxD6wZIC2W5/NOlEGZ
 Dit5HuFYNP+6sEtN/6eU9RR3XXEqCDp8YQhQSKDwH9hMBkgUlYvuddjaW1S0i6cJrEbQ
 6WTQjw8cUn+v4IGZia7xt9WCuNotmzDApfuWQwVEvd//zEGNDHK9UtIcsneAtXkQojJS
 qabg==
X-Gm-Message-State: APjAAAXvy36vV0n8PWEpmSjIqvWnuQPlzDCm1YcNZa02k4op27frg2sF
 gu54euz7yZ/T7xum75CXu+Q2DTxjzFYd2A==
X-Google-Smtp-Source: APXvYqwizaJ3LV3ZU2cRUlFs+bxhs+yr707N0EN9C3B0/t+KynbspsgABk8N/0e8l1vDGDR+fnInxw==
X-Received: by 2002:a63:2903:: with SMTP id p3mr6516434pgp.306.1567747998093; 
 Thu, 05 Sep 2019 22:33:18 -0700 (PDT)
Received: from [192.168.86.22] (cpe-76-169-110-166.socal.res.rr.com.
 [76.169.110.166])
 by smtp.gmail.com with ESMTPSA id g11sm3790062pgu.11.2019.09.05.22.33.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 22:33:17 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G77)
In-Reply-To: <CAKJyDkK5W4-V+q-CadRckeUZxFm2eY2W_F6sQKirJH6SSWMgxw@mail.gmail.com>
Date: Thu, 5 Sep 2019 22:33:16 -0700
Message-Id: <812D2778-C97C-471D-AA99-88EEE7222AAE@gmail.com>
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
 <5D71CBFB.6060907@gmail.com>
 <CAKJyDkKPwk_PMEuQhRGyM6-3zaV-JdOEfx=keQdu4GS2Z6B54g@mail.gmail.com>
 <CAMKs6hda+HH3BoYDg4YEK-wiWCZT8E7u=dzukERB0N3o1wDnxg@mail.gmail.com>
 <CAKJyDkK5W4-V+q-CadRckeUZxFm2eY2W_F6sQKirJH6SSWMgxw@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7196164947892797970=="
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


--===============7196164947892797970==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-D20304F5-8B10-487D-AA95-B0E291FE5AB5
Content-Transfer-Encoding: 7bit


--Apple-Mail-D20304F5-8B10-487D-AA95-B0E291FE5AB5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hey Robin,
Sorry about that. I tried responding through the forum but it doesn=E2=80=99=
t seem to be working. I gave it a few minutes to see if my response went thr=
ough but it didn=E2=80=99t, so I just responded directly to the email. If it=
 doesn=E2=80=99t work next time I try, then I guess the best thing to do wou=
ld be to quote my response like you did previously. That way anyone with thi=
s issue can still follow along.=20

I don=E2=80=99t have access to the device at the moment, however in the morn=
ing I will be with it all day, so if you=E2=80=99re around, we can do some t=
roubleshooting. My time zone is PST so hopefully we can continue this conver=
sation in the morning, when I can run some tests.=20

I do know however that running the command with those args (and the type=3Dn=
3xx arg) still returns =E2=80=9CNo UHD devices found=E2=80=9D but for clarif=
ication, I will send you the exact output in the morning. But maybe you can s=
till think of more ideas in the meantime.=20

It=E2=80=99s a crazy situation and I feel like I=E2=80=99ve done everything r=
ight and checked everything a hundred times. So it=E2=80=99s gonna take a mi=
racle at this point to get it working.=20

Thank you for all of your help thus far! I hope we can figure it out!

Best,
Austin

> On Sep 5, 2019, at 10:09 PM, Robin Coxe <coxe@quanttux.com> wrote:
>=20
> Hi Austin.  Let's keep this thread on the usrp-users list so other people m=
ight benefit from it.=20
>=20
> Unless you have a dedicated PCIe (or Thunderbolt) 10gigE network adapter c=
onnected to your host PC, the connection is most likely 1gigE.
>=20
> What is the output when you invoke the following command from the host PC?=

> uhd_usrp_probe --args "addr=3D192.168.10.2"
>=20
> -Robin
>=20
>=20
>> On Thu, Sep 5, 2019 at 9:59 PM Austin Adam <austinadam42@gmail.com> wrote=
:
>> Hey Robin,
>> Thank you so much for the response. I have been waiting eagerly for a wee=
k now to hear back from Ettus, so it is nice to finally get a response form s=
omeone.
>>=20
>> I made sure that I was using the HG FPGA image because that is the one th=
at supports 1gigE connection on SFP0, so I know that is not the problem.  Bu=
t I do not know how to check whether *enx70886b87f283* is a 1gigE or 10gigE c=
onnection. Could you please provide a way to find that? Also, cannot confirm=
 exactly the type of cable I am using as I am unsure... but what I can confi=
rm, is that I have had this exact USRP unit connected to the same host compu=
ter before and everything worked fine...so it can't be the cables or connect=
ions because it has worked in the past on SFP0.=20
>>=20
>> If this helps at all, I saw these messages in the bootlogs when connected=
 via serial:
>>=20
>> <i>[   26.820220] nixge 40000000.ethernet sfp0: Link is Up - Unknown/Unkn=
own - flow control off
>> [   26.900861] nixge 40008000.ethernet sfp1: Link is Up - 10Gbps/Full - f=
low control off
>> [   29.080221] nixge 40008000.ethernet sfp1: Link is Down</i>
>>=20
>> And incase it helps at all, here is a log from a bootup:
>>=20
>> <i>     Data Start:   0x0200010c
>>      Data Size:    5617808 Bytes =3D 5.4 MiB
>>      Architecture: ARM
>>      OS:           Linux
>>      Load Address: 0x00000000
>>      Entry Point:  0x00000000
>>      Hash algo:    sha1
>>      Hash value:   c8b26f0437c92f83a1fc526e5ad2d4543664c23d
>>    Verifying Hash Integrity ... sha1+ OK
>> ## Loading fdt from FIT Image at 02000000 ...
>>    Using 'conf@zynq-ni-sulfur-rev5-magnesium-rev3.dtb' configuration
>>    Trying 'fdt@zynq-ni-sulfur-rev5-magnesium-rev3.dtb' fdt subimage
>>      Description:  Flattened Device Tree blob
>>      Type:         Flat Device Tree
>>      Compression:  uncompressed
>>      Data Start:   0x025825f0
>>      Data Size:    18383 Bytes =3D 18 KiB
>>      Architecture: ARM
>>      Hash algo:    sha1
>>      Hash value:   8f896f69ce56fada1271c0cfababc99ee6944e1a
>>    Verifying Hash Integrity ... sha1+ OK
>>    Booting using the fdt blob at 0x25825f0
>>    Loading Kernel Image ... OK
>>    Loading Device Tree to 1fff8000, end 1ffff7ce ... OK
>>=20
>> Starting kernel ...
>>=20
>> [    0.000000] Booting Linux on physical CPU 0x0
>> [    0.000000] Linux version 4.15.18-yocto-standard (oe-user@oe-host) (gc=
c version 7.3.0 (GCC)) #1 SMP PREEMPT Mon Mar 25 20:13:00 UTC 2019
>> [    0.000000] CPU: ARMv7 Processor [413fc090] revision 0 (ARMv7), cr=3D1=
8c5387d
>> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing ins=
truction cache
>> [    0.000000] OF: fdt: Machine model: NI Ettus Research Project Sulfur S=
DR Rev3
>> [    0.000000] Memory policy: Data cache writealloc
>> [    0.000000] percpu: Embedded 17 pages/cpu @(ptrval) s39692 r8192 d2174=
8 u69632
>> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 260=
416
>> [    0.000000] Kernel command line: root=3D/dev/mmcblk0p2 rw rootwait uio=
_pdrv_genirq.of_id=3Dusrp-uio
>> [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 b=
ytes)
>> [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 by=
tes)
>> [    0.000000] Memory: 1023252K/1048576K available (8192K kernel code, 68=
4K rwdata, 2472K rodata, 1024K init, 593K bss, 25324K reserved, 0K cma-reser=
ved, 262144K highmem)
>> [    0.000000] Virtual kernel memory layout:
>> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
>> [    0.000000]     vmalloc : 0xf0800000 - 0xff800000   ( 240 MB)
>> [    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
>> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>> [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (9184 kB)
>> [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (1024 kB)
>> [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 685 kB)
>> [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 594 kB)
>> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D2,=
 Nodes=3D1
>> [    0.000000] ftrace: allocating 30122 entries in 89 pages
>> [    0.000000] Preemptible hierarchical RCU implementation.
>> [    0.000000]  RCU restricting CPUs from NR_CPUS=3D4 to nr_cpu_ids=3D2.
>> [    0.000000]  Tasks RCU enabled.
>> [    0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D2
>> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
>> [    0.000000] slcr mapped to (ptrval)
>> [    0.000000] L2C: platform modifies aux control register: 0x02060000 ->=
 0x02460000
>> [    0.000000] L2C: DT/platform modifies aux control register: 0x02060000=
 -> 0x02460000
>> [    0.000000] L2C-310 erratum 769419 enabled
>> [    0.000000] L2C-310 enabling early BRESP for Cortex-A9
>> [    0.000000] L2C-310 full line of zeros enabled for Cortex-A9
>> [    0.000000] L2C-310 dynamic clock gating enabled, standby mode enabled=

>> [    0.000000] L2C-310 cache controller enabled, 8 ways, 512 kB
>> [    0.000000] L2C-310: CACHE_ID 0x410000c8, AUX_CTRL 0x46460001
>> [    0.000000] zynq_clock_init: clkc starts at (ptrval)
>> [    0.000000] Zynq clock init
>> [    0.000011] sched_clock: 64 bits at 399MHz, resolution 2ns, wraps ever=
y 4398046511103ns
>> [    0.000032] clocksource: arm_global_timer: mask: 0xffffffffffffffff ma=
x_cycles: 0x5c4093a7d1, max_idle_ns: 440795210635 ns
>> [    0.000062] Switching to timer-based delay loop, resolution 2ns
>> [    0.000425] Console: colour dummy device 80x30
>> [    0.001152] console [tty0] enabled
>> [    0.001190] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 799.99 BogoMIPS (lpj=3D3999999)
>> [    0.001232] pid_max: default: 32768 minimum: 301
>> [    0.001365] Security Framework initialized
>> [    0.001553] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes=
)
>> [    0.001587] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 b=
ytes)
>> [    0.002334] CPU: Testing write buffer coherency: ok
>> [    0.002652] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
>> [    0.040240] Setting up static identity map for 0x100000 - 0x100060
>> [    0.060192] Hierarchical SRCU implementation.
>> [    0.100192] smp: Bringing up secondary CPUs ...
>> [    0.170504] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
>> [    0.170662] smp: Brought up 1 node, 2 CPUs
>> [    0.170709] SMP: Total of 2 processors activated (1599.99 BogoMIPS).
>> [    0.170733] CPU: All CPU(s) started in SVC mode.
>> [    0.171853] devtmpfs: initialized
>> [    0.176262] random: get_random_u32 called from bucket_table_alloc+0x1d=
0/0x210 with crng_init=3D0
>> [    0.176666] VFP support v0.3: implementor 41 architecture 3 part 30 va=
riant 9 rev 4
>> [    0.177060] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 19112604462750000 ns
>> [    0.177113] futex hash table entries: 512 (order: 3, 32768 bytes)
>> [    0.177396] xor: measuring software checksum speed
>> [    0.270174]    arm4regs  :  1200.000 MB/sec
>> [    0.370181]    8regs     :   916.800 MB/sec
>> [    0.470174]    32regs    :   968.400 MB/sec
>> [    0.470197] xor: using function: arm4regs (1200.000 MB/sec)
>> [    0.470227] pinctrl core: initialized pinctrl subsystem
>> [    0.471190] NET: Registered protocol family 16
>> [    0.472074] DMA: preallocated 256 KiB pool for atomic coherent allocat=
ions
>> [    0.473183] cpuidle: using governor menu
>> [    0.474843] GPIO line 910 (ledn) hogged as output/high
>> [    0.479823] hw-breakpoint: found 5 (+1 reserved) breakpoint and 1 watc=
hpoint registers.
>> [    0.479865] hw-breakpoint: maximum watchpoint size is 4 bytes.
>> [    0.480152] zynq-pinctrl 700.pinctrl: zynq pinctrl initialized
>> [    0.480594] e0000000.serial: ttyPS0 at MMIO 0xe0000000 (irq =3D 25, ba=
se_baud =3D 6249999) is a xuartps
>> [    0.958112] console [ttyPS0] enabled
>> [    0.962107] e0001000.serial: ttyPS1 at MMIO 0xe0001000 (irq =3D 26, ba=
se_baud =3D 6249999) is a xuartps
>> [    1.150551] raid6: int32x1  gen()   150 MB/s
>> [    1.320294] raid6: int32x1  xor()   121 MB/s
>> [    1.490561] raid6: int32x2  gen()   130 MB/s
>> [    1.660402] raid6: int32x2  xor()   125 MB/s
>> [    1.830193] raid6: int32x4  gen()   128 MB/s
>> [    2.000197] raid6: int32x4  xor()    91 MB/s
>> [    2.170194] raid6: int32x8  gen()   132 MB/s
>> [    2.340366] raid6: int32x8  xor()    98 MB/s
>> [    2.344561] raid6: using algorithm int32x1 gen() 150 MB/s
>> [    2.349942] raid6: .... xor() 121 MB/s, rmw enabled
>> [    2.354820] raid6: using intx1 recovery algorithm
>> [    2.360588] SCSI subsystem initialized
>> [    2.364474] usbcore: registered new interface driver usbfs
>> [    2.369939] usbcore: registered new interface driver hub
>> [    2.375312] usbcore: registered new device driver usb
>> [    2.380466] usb_phy_generic phy0: phy0 supply vcc not found, using dum=
my regulator
>> [    2.388162] Linux video capture interface: v2.00
>> [    2.393020] EDAC MC: Ver: 3.0.0
>> [    2.396540] FPGA manager framework
>> [    2.400057] fpga-region fpga-full: FPGA Region probed
>> [    2.405254] fpga-region amba:fpga-region@40000000: FPGA Region probed
>> [    2.412097] random: fast init done
>> [    2.416116] clocksource: Switched to clocksource arm_global_timer
>> [    2.544444] NET: Registered protocol family 2
>> [    2.549448] TCP established hash table entries: 8192 (order: 3, 32768 b=
ytes)
>> [    2.556551] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
>> [    2.563065] TCP: Hash tables configured (established 8192 bind 8192)
>> [    2.569460] UDP hash table entries: 512 (order: 2, 16384 bytes)
>> [    2.575374] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
>> [    2.582000] NET: Registered protocol family 1
>> [    2.600778] RPC: Registered named UNIX socket transport module.
>> [    2.606632] RPC: Registered udp transport module.
>> [    2.611368] RPC: Registered tcp transport module.
>> [    2.616000] RPC: Registered tcp NFSv4.1 backchannel transport module.
>> [    2.622974] hw perfevents: no interrupt-affinity property for /pmu@f88=
91000, guessing.
>> [    2.631096] hw perfevents: enabled with armv7_cortex_a9 PMU driver, 7 c=
ounters available
>> [    2.640601] Initialise system trusted keyrings
>> [    2.645175] workingset: timestamp_bits=3D14 max_order=3D18 bucket_orde=
r=3D4
>> [    2.659662] NFS: Registering the id_resolver key type
>> [    2.664713] Key type id_resolver registered
>> [    2.668827] Key type id_legacy registered
>> [    2.672855] nfs4filelayout_init: NFSv4 File Layout Driver Registering.=
..
>> [    2.679725] fuse init (API version 7.26)
>> [    2.687847] Key type asymmetric registered
>> [    2.691916] Asymmetric key parser 'x509' registered
>> [    2.696798] bounce: pool size: 64 pages
>> [    2.700647] Block layer SCSI generic (bsg) driver version 0.4 loaded (=
major 247)
>> [    2.707978] io scheduler noop registered
>> [    2.711896] io scheduler deadline registered
>> [    2.716392] io scheduler cfq registered (default)
>> [    2.721059] io scheduler mq-deadline registered
>> [    2.725534] io scheduler kyber registered
>> [    2.731238] dma-pl330 f8003000.dmac: Loaded driver for PL330 DMAC-2413=
30
>> [    2.737882] dma-pl330 f8003000.dmac:         DBUFF-128x8bytes Num_Chan=
s-8 Num_Peri-4 Num_Events-16
>> [    2.746855] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>> [    2.757231] brd: module loaded
>> [    2.778622] libphy: Fixed MDIO Bus: probed
>> [    2.784329] CAN device driver interface
>> [    2.789032] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver=

>> [    2.795602] usbcore: registered new interface driver usb-storage
>> [    2.801792] chipidea-usb2 e0002000.usb: e0002000.usb supply vbus not f=
ound, using dummy regulator
>> [    2.830209] ci_hdrc ci_hdrc.0: EHCI Host Controller
>> [    2.835045] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus nu=
mber 1
>> [    2.870197] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
>> [    2.876332] hub 1-0:1.0: USB hub found
>> [    2.880055] hub 1-0:1.0: 1 port detected
>> [    2.885610] mousedev: PS/2 mouse device common for all mice
>> [    2.891432] i2c /dev entries driver
>> [    2.895587] cdns-i2c e0004000.i2c: 400 kHz mmio e0004000 irq 22
>> [    2.908508] cros-ec-i2c 1-001e: Chrome EC device registered
>> [    2.914148] cdns-i2c e0005000.i2c: 400 kHz mmio e0005000 irq 23
>> [    2.922698] at24 2-0050: 256 byte 24c02 EEPROM, read-only, 0 bytes/wri=
te
>> [    2.929993] i2c i2c-0: Added multiplexed i2c bus 3
>> [    2.935017] i2c i2c-0: Added multiplexed i2c bus 4
>> [    2.940007] i2c i2c-0: Added multiplexed i2c bus 5
>> [    2.945211] pca953x 6-0022: 6-0022 supply vcc not found, using dummy r=
egulator
>> [    2.956658] i2c i2c-0: Added multiplexed i2c bus 6
>> [    2.991421] tpm tpm0: starting up the TPM manually
>> [    3.081701] i2c i2c-0: Added multiplexed i2c bus 7
>> [    3.087915] rtc-ds1374 8-0068: rtc core: registered ds1374 as rtc0
>> [    3.094718] i2c i2c-0: Added multiplexed i2c bus 8
>> [    3.100321] at24 9-0050: 32768 byte 24c256 EEPROM, writable, 1 bytes/w=
rite
>> [    3.107555] pca953x 9-0020: 9-0020 supply vcc not found, using dummy r=
egulator
>> [    3.116627] i2c i2c-0: Added multiplexed i2c bus 9
>> [    3.122284] at24 10-0050: 32768 byte 24c256 EEPROM, writable, 1 bytes/=
write
>> [    3.129581] pca953x 10-0020: 10-0020 supply vcc not found, using dummy=
 regulator
>> [    3.138830] i2c i2c-0: Added multiplexed i2c bus 10
>> [    3.143665] pca954x 0-0070: registered 8 multiplexed busses for I2C sw=
itch pca9548
>> [    3.152848] lm75 9-0048: hwmon0: sensor 'lm75'
>> [    3.158289] lm75 10-0048: hwmon1: sensor 'lm75'
>> [    3.173711] watchdog: cdns_wdt watchdog: cannot register miscdev on mi=
nor=3D130 (err=3D-16).
>> [    3.181768] watchdog: cdns_wdt watchdog: a legacy watchdog module is p=
robably present.
>> [    3.189821] cdns-wdt f8005000.watchdog: Xilinx Watchdog Timer at (ptrv=
al) with timeout 10s
>> [    3.198771] device-mapper: ioctl: 4.37.0-ioctl (2017-09-20) initialise=
d: dm-devel@redhat.com
>> [    3.207510] EDAC MC: ECC not enabled
>> [    3.211214] Xilinx Zynq CpuIdle Driver started
>> [    3.215999] sdhci: Secure Digital Host Controller Interface driver
>> [    3.222135] sdhci: Copyright(c) Pierre Ossman
>> [    3.226447] sdhci-pltfm: SDHCI platform and OF driver helper
>> [    3.290241] mmc0: SDHCI controller on e0100000.sdhci [e0100000.sdhci] u=
sing ADMA
>> [    3.301811] usbcore: registered new interface driver usbhid
>> [    3.307376] usbhid: USB HID core driver
>> [    3.311367] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.318158] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.324962] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.331739] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.339507] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.348291] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.355068] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)
>> [    3.369431] fpga_manager fpga0: Xilinx Zynq FPGA Manager registered
>> [    3.376191] oprofile: using arm/armv7-ca9
>> [    3.380250] u32 classifier
>> [    3.382892]     Actions configured
>> [    3.386505] NET: Registered protocol family 17
>> [    3.390956] can: controller area network core (rev 20170425 abi 9)
>> [    3.397183] NET: Registered protocol family 29
>> [    3.401674] can: raw protocol (rev 20170425)
>> [    3.405945] can: broadcast manager protocol (rev 20170425 t)
>> [    3.411604] can: netlink gateway (rev 20170425) max_hops=3D1
>> [    3.417294] Key type dns_resolver registered
>> [    3.421799] Registering SWP/SWPB emulation handler
>> [    3.427316] Loading compiled-in X.509 certificates
>> [    3.433887] Btrfs loaded, crc32c=3Dcrc32c-generic
>> [    3.439398] Key type encrypted registered
>> [    3.446729] mmc0: new high speed SDHC card at address aaaa
>> [    3.452787] mmcblk0: mmc0:aaaa SP32G 29.7 GiB
>> [    3.457520] cdns-i2c e0005000.i2c: xfer_size reg rollover. xfer aborte=
d!
>> [    3.466868]  mmcblk0: p1 p2 p3 p4
>> [    4.480201] cdns-i2c e0005000.i2c: timeout waiting on completion
>> [    4.486171] cros-ec-ctl cros-ec-ctl.0.auto: EC communication failed
>> [    4.494588] libphy: MACB_mii_bus: probed
>> [    4.591385] Marvell 88E1510 e000b000.ethernet-ffffffff:00: attached PH=
Y driver [Marvell 88E1510] (mii_bus:phy_addr=3De000b000.ethernet-ffffffff:00=
, irq=3DPOLL)
>> [    4.605288] macb e000b000.ethernet eth0: Cadence GEM rev 0x00020118 at=
 0xe000b000 irq 27 (00:80:2f:24:01:14)
>> [    4.615170] console [netcon0] enabled
>> [    4.618764] netconsole: network logging started
>> [    4.623821] input: gpio-keys as /devices/soc0/gpio-keys/input/input0
>> [    4.630861] rtc-ds1374 8-0068: setting system clock to 2019-08-30 23:0=
0:59 UTC (1567206059)
>> [    4.639149] of_cfs_init
>> [    4.641677] of_cfs_init: OK
>> [    4.644987] md: Waiting for all devices to be available before autodet=
ect
>> [    4.651757] md: If you don't use raid, use raid=3Dnoautodetect
>> [    4.658031] md: Autodetecting RAID arrays.
>> [    4.662092] md: autorun ...
>> [    4.664830] md: ... autorun DONE.
>> [    4.670723] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature=
 incompatibilities
>> [    4.681000] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature=
 incompatibilities
>> [    4.703794] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data m=
ode. Opts: (null)
>> [    4.711908] VFS: Mounted root (ext4 filesystem) on device 179:2.
>> [    4.723131] devtmpfs: mounted
>> [    4.731994] Freeing unused kernel memory: 1024K
>> [    5.059819] systemd[1]: systemd 237 running in system mode. (-PAM -AUD=
IT -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -GCRYPT -GN=
UTLS +ACL -XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN -PCRE2 default=
-hierarchy=3Dhybrid)
>> [    5.081662] systemd[1]: Detected architecture arm.
>>=20
>> Welcome to Alchemy 2018.04!
>>=20
>> [    5.133006] systemd[1]: Set hostname to <ni-sulfur-rev6-mender>.
>> [    5.147165] systemd[1]: Initializing machine ID from random generator.=

>> [    5.165704] systemd[1]: Hardware watchdog 'DS1374 WTD', version 0
>> [    5.172621] systemd[1]: Set hardware watchdog to 10s.
>> [    5.177614] rtc_ds1374: enable watchdog
>> [    5.364191] systemd[1]: File /lib/systemd/system/systemd-journald.serv=
ice:35 configures an IP firewall (IPAddressDeny=3Dany), but the local system=
 does not support BPF/cgroup based firewalling.
>> [    5.381322] systemd[1]: Proceeding WITHOUT firewalling in effect! (Thi=
s warning is only shown for the first loaded unit using IP firewalling.)
>> [    5.513699] systemd[1]: Binding to IPv6 address not available since ke=
rnel does not support IPv6.
>> [    5.555174] systemd[1]: Reached target Swap.
>> [  OK  ] Reached target Swap.
>> [  OK  ] Started Dispatch Password Requests to Console Directory Watch.
>> [  OK  ] Created slice User and Session Slice.
>> [  OK  ] Started Forward Password Requests to Wall Directory Watch.
>> [  OK  ] Reached target Paths.
>> [  OK  ] Reached target Remote File Systems.
>> [  OK  ] Created slice System Slice.
>> [  OK  ] Listening on Network Service Netlink Socket.
>> [  OK  ] Listening on Journal Socket.
>>          Mounting POSIX Message Queue File System...
>> [  OK  ] Listening on udev Control Socket.
>> [  OK  ] Listening on /dev/initctl Compatibility Named Pipe.
>> [  OK  ] Listening on Journal Socket (/dev/log).
>>          Starting Create list of required st=E2=80=A6ce nodes for the cur=
rent kernel...
>> [  OK  ] Listening on udev Kernel Socket.
>>          Starting Load Kernel Modules...
>>          Mounting Temporary Directory (/tmp)...
>> [  OK  ] Reached target Slices.
>> [  OK  ] Created slice system-getty.slice.
>>          Mounting Kernel Debug File System...
>>          Starting udev Coldplug all Devices...
>> [  OK  ] Listening on Syslog Socket.
>> [  OK  ] Created slice system-serial\x2dgetty.slice.
>>          Starting Journal Service...
>>          Starting Remount Root and Kernel File Systems...
>> [  OK  ] Mounted POSIX Message Queue File System.
>> [    6.349070] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
>> [  OK  ] Started Create list of required sta=E2=80=A6vice nodes for the c=
urrent kernel.
>> [  OK  ] Started Journal Service.
>> [  OK  ] Started Load Kernel Modules.
>> [  OK  ] Mounted Temporary Directory (/tmp).
>> [  OK  ] Mounted Kernel Debug File System.
>> [  OK  ] Started Remount Root and Kernel File Systems.
>>          Starting Rebuild Hardware Database...
>>          Mounting FUSE Control File System...
>>          Starting Apply Kernel Variables...
>>          Mounting Kernel Configuration File System...
>>          Starting Flush Journal to Persistent Storage...
>>          Starting Create Static Device Nodes in /dev...
>> [  OK  ] Mounted FUSE Control File System.
>> [  OK  ] Started Apply Kernel Variables.
>> [  OK  ] Mounted Kernel Configuration File System.
>> [  OK  ] Started Create Static Device Nodes in /dev.
>> [  OK  ] Started udev Coldplug all Devices.
>> [    6.951486] systemd-journald[90]: Received request to flush runtime jo=
urnal from PID 1
>> [  OK  ] Reached target Local File Systems (Pre).
>>          Mounting /var/volatile...
>> [  OK  ] Started Flush Journal to Persistent Storage.
>> [  OK  ] Mounted /var/volatile.
>> [  OK  ] Started Rebuild Hardware Database.
>>          Starting udev Kernel Device Manager...
>> [  OK  ] Started udev Kernel Device Manager.
>> [  OK  ] Found device /dev/ttyPS0.
>> [  OK  ] Found device /dev/mmcblk0p1.
>> [  OK  ] Found device /dev/mmcblk0p4.
>>          Mounting /data...
>>          Mounting /uboot...
>> [    9.716983] EXT4-fs (mmcblk0p4): mounted filesystem with ordered data m=
ode. Opts: (null)
>> [  OK  ] Mounted /data.
>> [  OK  ] Mounted /uboot.
>> [  OK  ] Reached target Local File Systems.
>>          Starting Create Volatile Files and Directories...
>>          Starting Rebuild Journal Catalog...
>> [  OK  ] Started Create Volatile Files and Directories.
>> [  OK  ] Started Rebuild Journal Catalog.
>>          Starting Update is Completed...
>>          Starting Run pending postinsts...
>>          Starting Opkg first boot configure...
>>          Starting Network Time Synchronization...
>> [  OK  ] Started Update is Completed.
>> [  OK  ] Started Opkg first boot configure.
>> [  OK  ] Started Network Time Synchronization.
>> [  OK  ] Reached target System Time Synchronized.
>> [  OK  ] Started Run pending postinsts.
>> [  OK  ] Reached target System Initialization.
>> [  OK  ] Started Daily Cleanup of Temporary Directories.
>> [  OK  ] Reached target Timers.
>> [  OK  ] Listening on RPCbind Server Activation Socket.
>> [  OK  ] Listening on D-Bus System Message Bus Socket.
>> [  OK  ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
>>          Starting sshd.socket.
>> [  OK  ] Listening on GPS (Global Positioning System) Daemon Sockets.
>> [  OK  ] Listening on sshd.socket.
>> [  OK  ] Reached target Sockets.
>> [  OK  ] Reached target Basic System.
>> [  OK  ] Started D-Bus System Message Bus.
>> [  OK  ] Started Getty on tty1.
>> [  OK  ] Started Kernel Logging Service.
>> [  OK  ] Started Serial Getty on ttyPS0.
>> [  OK  ] Reached target Login Prompts.
>> [  OK  ] Started System Logging Service.
>>          Starting Setting unique (s/n based) hostname...
>>          Starting USRP Hardware Daemon (MPM)...
>>          Starting Telephony service...
>>          Starting Login Service...
>>          Starting Hostname Service...
>> [  OK  ] Started Login Service.
>> [  OK  ] Started Telephony service.
>> [  OK  ] Started Hostname Service.
>> [  OK  ] Started Setting unique (s/n based) hostname.
>>          Starting Avahi mDNS/DNS-SD Stack...
>>          Starting Network Service...
>> [  OK  ] Started Avahi mDNS/DNS-SD Stack.
>> [  OK  ] Started Network Service.
>>          Starting Network Name Resolution...
>> [  OK  ] Started Network Name Resolution.
>> [  OK  ] Started Mender OTA update service.
>> [  OK  ] Reached target Host and Network Name Lookups.
>> [  OK  ] Reached target Network.
>>=20
>> Alchemy 2018.04 ni-n3xx-3177E63 ttyPS0
>>=20
>> ni-n3xx-3177E63 login: root
>> root@ni-n3xx-3177E63:~# [   24.582582] fpga_manager fpga0: writing n310.b=
in to Xilinx Zynq FPGA Manager
>> [   25.414692] libphy: nixge_mii_bus: probed
>> [   25.451582] libphy: nixge_mii_bus: probed
>> [   25.469428] nixge 40000000.ethernet sfp0: renamed from eth1
>> [   25.713083] rfnoc_crossbar crossbar0: NI Platform RFNoC Crossbar regis=
tered
>> [   25.751871] nixge 40008000.ethernet sfp1: renamed from eth1
>> [   25.836282] usrp-dma-core: Registered rx-dma0
>> [   25.887989] usrp-dma-core: Registered rx-dma1
>> [   25.909555] usrp-dma-core: Registered rx-dma2
>> [   25.949161] usrp-dma-core: Registered rx-dma3
>> [   25.961521] usrp-dma-core: Registered rx-dma4
>> [   25.966603] usrp-dma-core: Registered rx-dma5
>> [   25.981382] usrp-dma-core: Registered rx-dma6
>> [   25.991645] usrp-dma-core: Registered rx-dma7
>> [   25.996824] usrp-dma-core: Registered rx-dma8
>> [   26.011477] usrp-dma-core: Registered rx-dma9
>> [   26.022402] usrp-dma-core: Registered tx-dma0
>> [   26.027511] usrp-dma-core: Registered tx-dma1
>> [   26.041439] usrp-dma-core: Registered tx-dma2
>> [   26.052196] usrp-dma-core: Registered tx-dma3
>> [   26.062320] usrp-dma-core: Registered tx-dma4
>> [   26.067453] usrp-dma-core: Registered tx-dma5
>> [   26.081501] usrp-dma-core: Registered tx-dma6
>> [   26.092381] usrp-dma-core: Registered tx-dma7
>> [   26.101605] usrp-dma-core: Registered tx-dma8
>> [   26.112430] usrp-dma-core: Registered tx-dma9
>> [   26.820220] nixge 40000000.ethernet sfp0: Link is Up - Unknown/Unknown=
 - flow control off
>> [   26.900861] nixge 40008000.ethernet sfp1: Link is Up - 10Gbps/Full - f=
low control off
>> [   29.080221] nixge 40008000.ethernet sfp1: Link is Down
>> [   31.595778] random: crng init done</i>
>>=20
>>> On Thu, Sep 5, 2019 at 8:19 PM Robin Coxe via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>>> Hi Austin.  Is enx70886b87f283 a 1 gigE or 10gigE connection?  If it's 1=
gigE, my guess is that your problem may be that the new SD card is loading t=
he XG FPGA image, which expects 10 gigE connections to the host on both port=
s SFP0 and SFP1.   You'll need to update the SD card to load the HG image fr=
om /lib/firmware at bootup (1 gigE on SFP0 on the N310, connected to the Hos=
t PC using a cat 5 Ethernet cable and the SFP-to-RJ45 adapter).=20
>>>=20
>>> Instructions here:  https://kb.ettus.com/USRP_N300/N310/N320/N321_Gettin=
g_Started_Guide#Network_Mode_FPGA_Image_Update
>>>=20
>>> -Robin
>>>=20
>>>=20
>>>>> On Thu, Sep 5, 2019 at 8:02 PM Marcus D. Leech via USRP-users <usrp-us=
ers@lists.ettus.com> wrote:
>>>>> On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
>>>>> I recently had my USRP N310 sent out for repairs to fix one of the SMA=
 connectors, and when it came back, there was a new SD card in the slot. Whe=
n I turned it on after getting it back, I was unable to connect to it via 'u=
hd_find_devices'. I figured it was something with the SD card, so I eventual=
ly decided to rewrite the whole thing, in case it needed an update.
>>>>>=20
>>>>> That still did not fix the issue, and after trying just about everythi=
ng, and following every possible tutorial on the ettus docs, and checking th=
e forums, I have decided to ask you guys for help.
>>>>>=20
>>>>> Below you can find all the information about the UHD versions and the i=
fconfigs... hopefully that is enough to spark some ideas!
>>>>>=20
>>>>> The USRP can find itself on localhost as you can see here:
>>>>>=20
>>>>> root@ni-n3xx-3177E63:~# uhd_find_devices
>>>>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.14.0.0-=
0-g6875d061
>>>>> --------------------------------------------------
>>>>> -- UHD Device 0
>>>>> --------------------------------------------------
>>>>> Device Address:
>>>>>     serial: 3177E63
>>>>>     claimed: False
>>>>>     mgmt_addr: 127.0.0.1
>>>>>     product: n310
>>>>>     type: n3xx
>>>>>=20
>>>>> But when I run the command from the host machine, this is what I get:
>>>>>=20
>>>>> admin@PC:~$ uhd_find_devices
>>>>> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HE=
AD-0-g6875d061
>>>>> No UHD Devices Found
>>>>>=20
>>>>> Here is ifconfig from the USRP:
>>>>>=20
>>>>> root@ni-n3xx-3177E63:~# ifconfig
>>>>> eth0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:14
>>>>>           UP BROADCAST MULTICAST  MTU:1500  Metric:1
>>>>>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>>>>           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>>>>>           collisions:0 txqueuelen:1000
>>>>>           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>>>>>           Interrupt:27 Base address:0xb000
>>>>>=20
>>>>> lo        Link encap:Local Loopback
>>>>>           inet addr:127.0.0.1  Mask:255.0.0.0
>>>>>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>>>>>           RX packets:89 errors:0 dropped:0 overruns:0 frame:0
>>>>>           TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>>>>>           collisions:0 txqueuelen:1000
>>>>>           RX bytes:7480 (7.3 KiB)  TX bytes:7480 (7.3 KiB)
>>>>>=20
>>>>> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:15
>>>>>           inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.2=
55.0
>>>>>           UP BROADCAST RUNNING MULTICAST  MTU:8000  Metric:1
>>>>>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>>>>           TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
>>>>>           collisions:0 txqueuelen:1000
>>>>>           RX bytes:0 (0.0 B)  TX bytes:2577 (2.5 KiB)
>>>>>=20
>>>>> sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
>>>>>           UP BROADCAST MULTICAST  MTU:8000  Metric:1
>>>>>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>>>>           TX packets:1 errors:0 dropped:0 overruns:0 carrier:0
>>>>>           collisions:0 txqueuelen:1000
>>>>>           RX bytes:0 (0.0 B)  TX bytes:62 (62.0 B) =20
>>>>>=20
>>>>> And here is ifconfig from the host machine:
>>>>>=20
>>>>> ugikie@Austin-Blade:~$ ifconfig
>>>>> enx70886b87f283: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 800=
0
>>>>>         inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10=
.255
>>>>>         inet6 fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<lin=
k>
>>>>>         ether 70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)
>>>>>         RX packets 0  bytes 0 (0.0 B)
>>>>>         RX errors 0  dropped 0  overruns 0  frame 0
>>>>>         TX packets 46  bytes 4966 (4.9 KB)
>>>>>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>>>>>=20
>>>>> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>>>>>         inet 127.0.0.1  netmask 255.0.0.0
>>>>>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>>>>>         loop  txqueuelen 1000  (Local Loopback)
>>>>>         RX packets 5037  bytes 466961 (466.9 KB)
>>>>>         RX errors 0  dropped 0  overruns 0  frame 0
>>>>>         TX packets 5037  bytes 466961 (466.9 KB)
>>>>>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>>>>>=20
>>>>> wlp59s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>>>>>         inet 172.28.229.114  netmask 255.255.240.0  broadcast 172.28.2=
39.255
>>>>>         inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<li=
nk>
>>>>>         ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)
>>>>>         RX packets 110339  bytes 123997000 (123.9 MB)
>>>>>         RX errors 0  dropped 0  overruns 0  frame 0
>>>>>         TX packets 47191  bytes 11048840 (11.0 MB)
>>>>>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>>>>>=20
>>>>> I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the ho=
st but didn't get a response from the N310 or anything for that matter.
>>>>>=20
>>>>> I hope someone out there can help me out! Thank you in advance :)
>>>>>=20
>>>>> Best,
>>>>> Austin
>>>> So, easy stuff first--you are plugged into the SFP0 port on the N310, a=
nd not one of the two others?
>>>>=20
>>>>=20
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-D20304F5-8B10-487D-AA95-B0E291FE5AB5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><span></span></div><div di=
r=3D"ltr">Hey Robin,<div>Sorry about that. I tried responding through the fo=
rum but it doesn=E2=80=99t seem to be working. I gave it a few minutes to se=
e if my response went through but it didn=E2=80=99t, so I just responded dir=
ectly to the email. If it doesn=E2=80=99t work next time I try, then I guess=
 the best thing to do would be to quote my response like you did previously.=
 That way anyone with this issue can still follow along.&nbsp;</div><div><br=
></div><div>I don=E2=80=99t have access to the device at the moment, however=
 in the morning I will be with it all day, so if you=E2=80=99re around, we c=
an do some troubleshooting. My time zone is PST so hopefully we can continue=
 this conversation in the morning, when I can run some tests.&nbsp;</div><di=
v><br></div><div>I do know however that running the command with those args (=
and the type=3Dn3xx arg) still returns =E2=80=9CNo UHD devices found=E2=80=9D=
 but for clarification, I will send you the exact output in the morning. But=
 maybe you can still think of more ideas in the meantime.&nbsp;</div><div><b=
r></div><div>It=E2=80=99s a crazy situation and I feel like I=E2=80=99ve don=
e everything right and checked everything a hundred times. So it=E2=80=99s g=
onna take a miracle at this point to get it working.&nbsp;</div><div><br></d=
iv><div>Thank you for all of your help thus far! I hope we can figure it out=
!<br><br><div id=3D"AppleMailSignature" dir=3D"ltr">Best,<div>Austin</div></=
div><div dir=3D"ltr"><br>On Sep 5, 2019, at 10:09 PM, Robin Coxe &lt;<a href=
=3D"mailto:coxe@quanttux.com">coxe@quanttux.com</a>&gt; wrote:<br><br></div>=
<blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">Hi Austin.&nbsp;=
 Let's keep this thread on the usrp-users list so other people might benefit=
 from it.&nbsp;<div><br></div><div>Unless you have a dedicated PCIe (or Thun=
derbolt) 10gigE network adapter connected to your host PC, the connection is=
 most likely 1gigE.</div><div><br></div><div>What is the output when you inv=
oke the following command from the host PC?<div><i>uhd_usrp_probe --args "ad=
dr=3D192.168.10.2"</i><br></div><div><div><br></div><div>-Robin</div><div><b=
r></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Sep 5, 2019 at 9:59 PM Austin Adam &lt;<a href=3D=
"mailto:austinadam42@gmail.com">austinadam42@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Rob=
in,<br>Thank you so much for the response. I have been waiting eagerly for a=
 week now to hear back from Ettus, so it is nice to finally get a response f=
orm someone.<br><br>I made sure that I was using the HG FPGA image because t=
hat is the one that supports 1gigE connection on SFP0, so I know that is not=
 the problem.&nbsp; But I do not know how to check whether *enx70886b87f283*=
 is a 1gigE or 10gigE connection. Could you please provide a way to find tha=
t? Also, cannot confirm exactly the type of cable I am using as I am unsure.=
.. but what I can confirm, is that I have had this exact USRP unit connected=
 to the same host computer before and everything worked fine...so it can't b=
e the cables or connections because it has worked in the past on SFP0. <br><=
br>If this helps at all, I saw these messages in the bootlogs when connected=
 via serial:<br><br>&lt;i&gt;[ &nbsp; 26.820220] nixge 40000000.ethernet sfp=
0: Link is Up - Unknown/Unknown - flow control off<br>[ &nbsp; 26.900861] ni=
xge 40008000.ethernet sfp1: Link is Up - 10Gbps/Full - flow control off<br>[=
 &nbsp; 29.080221] nixge 40008000.ethernet sfp1: Link is Down&lt;/i&gt;<br><=
br>And incase it helps at all, here is a log from a bootup:<br><br>&lt;i&gt;=
 &nbsp; &nbsp; Data Start: &nbsp; 0x0200010c<br>&nbsp; &nbsp; &nbsp;Data Siz=
e: &nbsp; &nbsp;5617808 Bytes =3D 5.4 MiB<br>&nbsp; &nbsp; &nbsp;Architectur=
e: ARM<br>&nbsp; &nbsp; &nbsp;OS: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linux<b=
r>&nbsp; &nbsp; &nbsp;Load Address: 0x00000000<br>&nbsp; &nbsp; &nbsp;Entry P=
oint: &nbsp;0x00000000<br>&nbsp; &nbsp; &nbsp;Hash algo: &nbsp; &nbsp;sha1<b=
r>&nbsp; &nbsp; &nbsp;Hash value: &nbsp; c8b26f0437c92f83a1fc526e5ad2d454366=
4c23d<br>&nbsp; &nbsp;Verifying Hash Integrity ... sha1+ OK<br>## Loading fd=
t from FIT Image at 02000000 ...<br>&nbsp; &nbsp;Using '<a href=3D"mailto:co=
nf@zynq-ni-sulfur-rev5-magnesium-rev3.dtb">conf@zynq-ni-sulfur-rev5-magnesiu=
m-rev3.dtb</a>' configuration<br>&nbsp; &nbsp;Trying '<a href=3D"mailto:fdt@=
zynq-ni-sulfur-rev5-magnesium-rev3.dtb">fdt@zynq-ni-sulfur-rev5-magnesium-re=
v3.dtb</a>' fdt subimage<br>&nbsp; &nbsp; &nbsp;Description: &nbsp;Flattened=
 Device Tree blob<br>&nbsp; &nbsp; &nbsp;Type: &nbsp; &nbsp; &nbsp; &nbsp; Fl=
at Device Tree<br>&nbsp; &nbsp; &nbsp;Compression: &nbsp;uncompressed<br>&nb=
sp; &nbsp; &nbsp;Data Start: &nbsp; 0x025825f0<br>&nbsp; &nbsp; &nbsp;Data S=
ize: &nbsp; &nbsp;18383 Bytes =3D 18 KiB<br>&nbsp; &nbsp; &nbsp;Architecture=
: ARM<br>&nbsp; &nbsp; &nbsp;Hash algo: &nbsp; &nbsp;sha1<br>&nbsp; &nbsp; &=
nbsp;Hash value: &nbsp; 8f896f69ce56fada1271c0cfababc99ee6944e1a<br>&nbsp; &=
nbsp;Verifying Hash Integrity ... sha1+ OK<br>&nbsp; &nbsp;Booting using the=
 fdt blob at 0x25825f0<br>&nbsp; &nbsp;Loading Kernel Image ... OK<br>&nbsp;=
 &nbsp;Loading Device Tree to 1fff8000, end 1ffff7ce ... OK<br><br>Starting k=
ernel ...<br><br>[ &nbsp; &nbsp;0.000000] Booting Linux on physical CPU 0x0<=
br>[ &nbsp; &nbsp;0.000000] Linux version 4.15.18-yocto-standard (oe-user@oe=
-host) (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Mon Mar 25 20:13:00 UTC 2019=
<br>[ &nbsp; &nbsp;0.000000] CPU: ARMv7 Processor [413fc090] revision 0 (ARM=
v7), cr=3D18c5387d<br>[ &nbsp; &nbsp;0.000000] CPU: PIPT / VIPT nonaliasing d=
ata cache, VIPT aliasing instruction cache<br>[ &nbsp; &nbsp;0.000000] OF: f=
dt: Machine model: NI Ettus Research Project Sulfur SDR Rev3<br>[ &nbsp; &nb=
sp;0.000000] Memory policy: Data cache writealloc<br>[ &nbsp; &nbsp;0.000000=
] percpu: Embedded 17 pages/cpu @(ptrval) s39692 r8192 d21748 u69632<br>[ &n=
bsp; &nbsp;0.000000] Built 1 zonelists, mobility grouping on.&nbsp; Total pa=
ges: 260416<br>[ &nbsp; &nbsp;0.000000] Kernel command line: root=3D/dev/mmc=
blk0p2 rw rootwait uio_pdrv_genirq.of_id=3Dusrp-uio<br>[ &nbsp; &nbsp;0.0000=
00] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)<br>[ &n=
bsp; &nbsp;0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144=
 bytes)<br>[ &nbsp; &nbsp;0.000000] Memory: 1023252K/1048576K available (819=
2K kernel code, 684K rwdata, 2472K rodata, 1024K init, 593K bss, 25324K rese=
rved, 0K cma-reserved, 262144K highmem)<br>[ &nbsp; &nbsp;0.000000] Virtual k=
ernel memory layout:<br>[ &nbsp; &nbsp;0.000000] &nbsp; &nbsp; vector &nbsp;=
: 0xffff0000 - 0xffff1000 &nbsp; ( &nbsp; 4 kB)<br>[ &nbsp; &nbsp;0.000000] &=
nbsp; &nbsp; fixmap &nbsp;: 0xffc00000 - 0xfff00000 &nbsp; (3072 kB)<br>[ &n=
bsp; &nbsp;0.000000] &nbsp; &nbsp; vmalloc : 0xf0800000 - 0xff800000 &nbsp; (=
 240 MB)<br>[ &nbsp; &nbsp;0.000000] &nbsp; &nbsp; lowmem &nbsp;: 0xc0000000=
 - 0xf0000000 &nbsp; ( 768 MB)<br>[ &nbsp; &nbsp;0.000000] &nbsp; &nbsp; pkm=
ap &nbsp; : 0xbfe00000 - 0xc0000000 &nbsp; ( &nbsp; 2 MB)<br>[ &nbsp; &nbsp;=
0.000000] &nbsp; &nbsp; modules : 0xbf000000 - 0xbfe00000 &nbsp; ( &nbsp;14 M=
B)<br>[ &nbsp; &nbsp;0.000000] &nbsp; &nbsp; &nbsp; .text : 0x(ptrval) - 0x(=
ptrval) &nbsp; (9184 kB)<br>[ &nbsp; &nbsp;0.000000] &nbsp; &nbsp; &nbsp; .i=
nit : 0x(ptrval) - 0x(ptrval) &nbsp; (1024 kB)<br>[ &nbsp; &nbsp;0.000000] &=
nbsp; &nbsp; &nbsp; .data : 0x(ptrval) - 0x(ptrval) &nbsp; ( 685 kB)<br>[ &n=
bsp; &nbsp;0.000000] &nbsp; &nbsp; &nbsp; &nbsp;.bss : 0x(ptrval) - 0x(ptrva=
l) &nbsp; ( 594 kB)<br>[ &nbsp; &nbsp;0.000000] SLUB: HWalign=3D64, Order=3D=
0-3, MinObjects=3D0, CPUs=3D2, Nodes=3D1<br>[ &nbsp; &nbsp;0.000000] ftrace:=
 allocating 30122 entries in 89 pages<br>[ &nbsp; &nbsp;0.000000] Preemptibl=
e hierarchical RCU implementation.<br>[ &nbsp; &nbsp;0.000000] &nbsp;RCU res=
tricting CPUs from NR_CPUS=3D4 to nr_cpu_ids=3D2.<br>[ &nbsp; &nbsp;0.000000=
] &nbsp;Tasks RCU enabled.<br>[ &nbsp; &nbsp;0.000000] RCU: Adjusting geomet=
ry for rcu_fanout_leaf=3D16, nr_cpu_ids=3D2<br>[ &nbsp; &nbsp;0.000000] NR_I=
RQS: 16, nr_irqs: 16, preallocated irqs: 16<br>[ &nbsp; &nbsp;0.000000] slcr=
 mapped to (ptrval)<br>[ &nbsp; &nbsp;0.000000] L2C: platform modifies aux c=
ontrol register: 0x02060000 -&gt; 0x02460000<br>[ &nbsp; &nbsp;0.000000] L2C=
: DT/platform modifies aux control register: 0x02060000 -&gt; 0x02460000<br>=
[ &nbsp; &nbsp;0.000000] L2C-310 erratum 769419 enabled<br>[ &nbsp; &nbsp;0.=
000000] L2C-310 enabling early BRESP for Cortex-A9<br>[ &nbsp; &nbsp;0.00000=
0] L2C-310 full line of zeros enabled for Cortex-A9<br>[ &nbsp; &nbsp;0.0000=
00] L2C-310 dynamic clock gating enabled, standby mode enabled<br>[ &nbsp; &=
nbsp;0.000000] L2C-310 cache controller enabled, 8 ways, 512 kB<br>[ &nbsp; &=
nbsp;0.000000] L2C-310: CACHE_ID 0x410000c8, AUX_CTRL 0x46460001<br>[ &nbsp;=
 &nbsp;0.000000] zynq_clock_init: clkc starts at (ptrval)<br>[ &nbsp; &nbsp;=
0.000000] Zynq clock init<br>[ &nbsp; &nbsp;0.000011] sched_clock: 64 bits a=
t 399MHz, resolution 2ns, wraps every 4398046511103ns<br>[ &nbsp; &nbsp;0.00=
0032] clocksource: arm_global_timer: mask: 0xffffffffffffffff max_cycles: 0x=
5c4093a7d1, max_idle_ns: 440795210635 ns<br>[ &nbsp; &nbsp;0.000062] Switchi=
ng to timer-based delay loop, resolution 2ns<br>[ &nbsp; &nbsp;0.000425] Con=
sole: colour dummy device 80x30<br>[ &nbsp; &nbsp;0.001152] console [tty0] e=
nabled<br>[ &nbsp; &nbsp;0.001190] Calibrating delay loop (skipped), value c=
alculated using timer frequency.. 799.99 BogoMIPS (lpj=3D3999999)<br>[ &nbsp=
; &nbsp;0.001232] pid_max: default: 32768 minimum: 301<br>[ &nbsp; &nbsp;0.0=
01365] Security Framework initialized<br>[ &nbsp; &nbsp;0.001553] Mount-cach=
e hash table entries: 2048 (order: 1, 8192 bytes)<br>[ &nbsp; &nbsp;0.001587=
] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes)<br>[ &nbs=
p; &nbsp;0.002334] CPU: Testing write buffer coherency: ok<br>[ &nbsp; &nbsp=
;0.002652] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000<br>[ &nbsp; &nbs=
p;0.040240] Setting up static identity map for 0x100000 - 0x100060<br>[ &nbs=
p; &nbsp;0.060192] Hierarchical SRCU implementation.<br>[ &nbsp; &nbsp;0.100=
192] smp: Bringing up secondary CPUs ...<br>[ &nbsp; &nbsp;0.170504] CPU1: t=
hread -1, cpu 1, socket 0, mpidr 80000001<br>[ &nbsp; &nbsp;0.170662] smp: B=
rought up 1 node, 2 CPUs<br>[ &nbsp; &nbsp;0.170709] SMP: Total of 2 process=
ors activated (1599.99 BogoMIPS).<br>[ &nbsp; &nbsp;0.170733] CPU: All CPU(s=
) started in SVC mode.<br>[ &nbsp; &nbsp;0.171853] devtmpfs: initialized<br>=
[ &nbsp; &nbsp;0.176262] random: get_random_u32 called from bucket_table_all=
oc+0x1d0/0x210 with crng_init=3D0<br>[ &nbsp; &nbsp;0.176666] VFP support v0=
.3: implementor 41 architecture 3 part 30 variant 9 rev 4<br>[ &nbsp; &nbsp;=
0.177060] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max=
_idle_ns: 19112604462750000 ns<br>[ &nbsp; &nbsp;0.177113] futex hash table e=
ntries: 512 (order: 3, 32768 bytes)<br>[ &nbsp; &nbsp;0.177396] xor: measuri=
ng software checksum speed<br>[ &nbsp; &nbsp;0.270174] &nbsp; &nbsp;arm4regs=
 &nbsp;: &nbsp;1200.000 MB/sec<br>[ &nbsp; &nbsp;0.370181] &nbsp; &nbsp;8reg=
s &nbsp; &nbsp; : &nbsp; 916.800 MB/sec<br>[ &nbsp; &nbsp;0.470174] &nbsp; &=
nbsp;32regs &nbsp; &nbsp;: &nbsp; 968.400 MB/sec<br>[ &nbsp; &nbsp;0.470197]=
 xor: using function: arm4regs (1200.000 MB/sec)<br>[ &nbsp; &nbsp;0.470227]=
 pinctrl core: initialized pinctrl subsystem<br>[ &nbsp; &nbsp;0.471190] NET=
: Registered protocol family 16<br>[ &nbsp; &nbsp;0.472074] DMA: preallocate=
d 256 KiB pool for atomic coherent allocations<br>[ &nbsp; &nbsp;0.473183] c=
puidle: using governor menu<br>[ &nbsp; &nbsp;0.474843] GPIO line 910 (ledn)=
 hogged as output/high<br>[ &nbsp; &nbsp;0.479823] hw-breakpoint: found 5 (+=
1 reserved) breakpoint and 1 watchpoint registers.<br>[ &nbsp; &nbsp;0.47986=
5] hw-breakpoint: maximum watchpoint size is 4 bytes.<br>[ &nbsp; &nbsp;0.48=
0152] zynq-pinctrl 700.pinctrl: zynq pinctrl initialized<br>[ &nbsp; &nbsp;0=
.480594] e0000000.serial: ttyPS0 at MMIO 0xe0000000 (irq =3D 25, base_baud =3D=
 6249999) is a xuartps<br>[ &nbsp; &nbsp;0.958112] console [ttyPS0] enabled<=
br>[ &nbsp; &nbsp;0.962107] e0001000.serial: ttyPS1 at MMIO 0xe0001000 (irq =3D=
 26, base_baud =3D 6249999) is a xuartps<br>[ &nbsp; &nbsp;1.150551] raid6: i=
nt32x1 &nbsp;gen() &nbsp; 150 MB/s<br>[ &nbsp; &nbsp;1.320294] raid6: int32x=
1 &nbsp;xor() &nbsp; 121 MB/s<br>[ &nbsp; &nbsp;1.490561] raid6: int32x2 &nb=
sp;gen() &nbsp; 130 MB/s<br>[ &nbsp; &nbsp;1.660402] raid6: int32x2 &nbsp;xo=
r() &nbsp; 125 MB/s<br>[ &nbsp; &nbsp;1.830193] raid6: int32x4 &nbsp;gen() &=
nbsp; 128 MB/s<br>[ &nbsp; &nbsp;2.000197] raid6: int32x4 &nbsp;xor() &nbsp;=
 &nbsp;91 MB/s<br>[ &nbsp; &nbsp;2.170194] raid6: int32x8 &nbsp;gen() &nbsp;=
 132 MB/s<br>[ &nbsp; &nbsp;2.340366] raid6: int32x8 &nbsp;xor() &nbsp; &nbs=
p;98 MB/s<br>[ &nbsp; &nbsp;2.344561] raid6: using algorithm int32x1 gen() 1=
50 MB/s<br>[ &nbsp; &nbsp;2.349942] raid6: .... xor() 121 MB/s, rmw enabled<=
br>[ &nbsp; &nbsp;2.354820] raid6: using intx1 recovery algorithm<br>[ &nbsp=
; &nbsp;2.360588] SCSI subsystem initialized<br>[ &nbsp; &nbsp;2.364474] usb=
core: registered new interface driver usbfs<br>[ &nbsp; &nbsp;2.369939] usbc=
ore: registered new interface driver hub<br>[ &nbsp; &nbsp;2.375312] usbcore=
: registered new device driver usb<br>[ &nbsp; &nbsp;2.380466] usb_phy_gener=
ic phy0: phy0 supply vcc not found, using dummy regulator<br>[ &nbsp; &nbsp;=
2.388162] Linux video capture interface: v2.00<br>[ &nbsp; &nbsp;2.393020] E=
DAC MC: Ver: 3.0.0<br>[ &nbsp; &nbsp;2.396540] FPGA manager framework<br>[ &=
nbsp; &nbsp;2.400057] fpga-region fpga-full: FPGA Region probed<br>[ &nbsp; &=
nbsp;2.405254] fpga-region amba:fpga-region@40000000: FPGA Region probed<br>=
[ &nbsp; &nbsp;2.412097] random: fast init done<br>[ &nbsp; &nbsp;2.416116] c=
locksource: Switched to clocksource arm_global_timer<br>[ &nbsp; &nbsp;2.544=
444] NET: Registered protocol family 2<br>[ &nbsp; &nbsp;2.549448] TCP estab=
lished hash table entries: 8192 (order: 3, 32768 bytes)<br>[ &nbsp; &nbsp;2.=
556551] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)<br>[ &nbsp=
; &nbsp;2.563065] TCP: Hash tables configured (established 8192 bind 8192)<b=
r>[ &nbsp; &nbsp;2.569460] UDP hash table entries: 512 (order: 2, 16384 byte=
s)<br>[ &nbsp; &nbsp;2.575374] UDP-Lite hash table entries: 512 (order: 2, 1=
6384 bytes)<br>[ &nbsp; &nbsp;2.582000] NET: Registered protocol family 1<br=
>[ &nbsp; &nbsp;2.600778] RPC: Registered named UNIX socket transport module=
.<br>[ &nbsp; &nbsp;2.606632] RPC: Registered udp transport module.<br>[ &nb=
sp; &nbsp;2.611368] RPC: Registered tcp transport module.<br>[ &nbsp; &nbsp;=
2.616000] RPC: Registered tcp NFSv4.1 backchannel transport module.<br>[ &nb=
sp; &nbsp;2.622974] hw perfevents: no interrupt-affinity property for /pmu@f=
8891000, guessing.<br>[ &nbsp; &nbsp;2.631096] hw perfevents: enabled with a=
rmv7_cortex_a9 PMU driver, 7 counters available<br>[ &nbsp; &nbsp;2.640601] I=
nitialise system trusted keyrings<br>[ &nbsp; &nbsp;2.645175] workingset: ti=
mestamp_bits=3D14 max_order=3D18 bucket_order=3D4<br>[ &nbsp; &nbsp;2.659662=
] NFS: Registering the id_resolver key type<br>[ &nbsp; &nbsp;2.664713] Key t=
ype id_resolver registered<br>[ &nbsp; &nbsp;2.668827] Key type id_legacy re=
gistered<br>[ &nbsp; &nbsp;2.672855] nfs4filelayout_init: NFSv4 File Layout D=
river Registering...<br>[ &nbsp; &nbsp;2.679725] fuse init (API version 7.26=
)<br>[ &nbsp; &nbsp;2.687847] Key type asymmetric registered<br>[ &nbsp; &nb=
sp;2.691916] Asymmetric key parser 'x509' registered<br>[ &nbsp; &nbsp;2.696=
798] bounce: pool size: 64 pages<br>[ &nbsp; &nbsp;2.700647] Block layer SCS=
I generic (bsg) driver version 0.4 loaded (major 247)<br>[ &nbsp; &nbsp;2.70=
7978] io scheduler noop registered<br>[ &nbsp; &nbsp;2.711896] io scheduler d=
eadline registered<br>[ &nbsp; &nbsp;2.716392] io scheduler cfq registered (=
default)<br>[ &nbsp; &nbsp;2.721059] io scheduler mq-deadline registered<br>=
[ &nbsp; &nbsp;2.725534] io scheduler kyber registered<br>[ &nbsp; &nbsp;2.7=
31238] dma-pl330 f8003000.dmac: Loaded driver for PL330 DMAC-241330<br>[ &nb=
sp; &nbsp;2.737882] dma-pl330 f8003000.dmac: &nbsp; &nbsp; &nbsp; &nbsp; DBU=
FF-128x8bytes Num_Chans-8 Num_Peri-4 Num_Events-16<br>[ &nbsp; &nbsp;2.74685=
5] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled<br>[ &nbsp; &nbs=
p;2.757231] brd: module loaded<br>[ &nbsp; &nbsp;2.778622] libphy: Fixed MDI=
O Bus: probed<br>[ &nbsp; &nbsp;2.784329] CAN device driver interface<br>[ &=
nbsp; &nbsp;2.789032] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Dr=
iver<br>[ &nbsp; &nbsp;2.795602] usbcore: registered new interface driver us=
b-storage<br>[ &nbsp; &nbsp;2.801792] chipidea-usb2 e0002000.usb: e0002000.u=
sb supply vbus not found, using dummy regulator<br>[ &nbsp; &nbsp;2.830209] c=
i_hdrc ci_hdrc.0: EHCI Host Controller<br>[ &nbsp; &nbsp;2.835045] ci_hdrc c=
i_hdrc.0: new USB bus registered, assigned bus number 1<br>[ &nbsp; &nbsp;2.=
870197] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00<br>[ &nbsp; &nbsp;2.87=
6332] hub 1-0:1.0: USB hub found<br>[ &nbsp; &nbsp;2.880055] hub 1-0:1.0: 1 p=
ort detected<br>[ &nbsp; &nbsp;2.885610] mousedev: PS/2 mouse device common f=
or all mice<br>[ &nbsp; &nbsp;2.891432] i2c /dev entries driver<br>[ &nbsp; &=
nbsp;2.895587] cdns-i2c e0004000.i2c: 400 kHz mmio e0004000 irq 22<br>[ &nbs=
p; &nbsp;2.908508] cros-ec-i2c 1-001e: Chrome EC device registered<br>[ &nbs=
p; &nbsp;2.914148] cdns-i2c e0005000.i2c: 400 kHz mmio e0005000 irq 23<br>[ &=
nbsp; &nbsp;2.922698] at24 2-0050: 256 byte 24c02 EEPROM, read-only, 0 bytes=
/write<br>[ &nbsp; &nbsp;2.929993] i2c i2c-0: Added multiplexed i2c bus 3<br=
>[ &nbsp; &nbsp;2.935017] i2c i2c-0: Added multiplexed i2c bus 4<br>[ &nbsp;=
 &nbsp;2.940007] i2c i2c-0: Added multiplexed i2c bus 5<br>[ &nbsp; &nbsp;2.=
945211] pca953x 6-0022: 6-0022 supply vcc not found, using dummy regulator<b=
r>[ &nbsp; &nbsp;2.956658] i2c i2c-0: Added multiplexed i2c bus 6<br>[ &nbsp=
; &nbsp;2.991421] tpm tpm0: starting up the TPM manually<br>[ &nbsp; &nbsp;3=
.081701] i2c i2c-0: Added multiplexed i2c bus 7<br>[ &nbsp; &nbsp;3.087915] r=
tc-ds1374 8-0068: rtc core: registered ds1374 as rtc0<br>[ &nbsp; &nbsp;3.09=
4718] i2c i2c-0: Added multiplexed i2c bus 8<br>[ &nbsp; &nbsp;3.100321] at2=
4 9-0050: 32768 byte 24c256 EEPROM, writable, 1 bytes/write<br>[ &nbsp; &nbs=
p;3.107555] pca953x 9-0020: 9-0020 supply vcc not found, using dummy regulat=
or<br>[ &nbsp; &nbsp;3.116627] i2c i2c-0: Added multiplexed i2c bus 9<br>[ &=
nbsp; &nbsp;3.122284] at24 10-0050: 32768 byte 24c256 EEPROM, writable, 1 by=
tes/write<br>[ &nbsp; &nbsp;3.129581] pca953x 10-0020: 10-0020 supply vcc no=
t found, using dummy regulator<br>[ &nbsp; &nbsp;3.138830] i2c i2c-0: Added m=
ultiplexed i2c bus 10<br>[ &nbsp; &nbsp;3.143665] pca954x 0-0070: registered=
 8 multiplexed busses for I2C switch pca9548<br>[ &nbsp; &nbsp;3.152848] lm7=
5 9-0048: hwmon0: sensor 'lm75'<br>[ &nbsp; &nbsp;3.158289] lm75 10-0048: hw=
mon1: sensor 'lm75'<br>[ &nbsp; &nbsp;3.173711] watchdog: cdns_wdt watchdog:=
 cannot register miscdev on minor=3D130 (err=3D-16).<br>[ &nbsp; &nbsp;3.181=
768] watchdog: cdns_wdt watchdog: a legacy watchdog module is probably prese=
nt.<br>[ &nbsp; &nbsp;3.189821] cdns-wdt f8005000.watchdog: Xilinx Watchdog T=
imer at (ptrval) with timeout 10s<br>[ &nbsp; &nbsp;3.198771] device-mapper:=
 ioctl: 4.37.0-ioctl (2017-09-20) initialised: <a href=3D"mailto:dm-devel@re=
dhat.com" target=3D"_blank">dm-devel@redhat.com</a><br>[ &nbsp; &nbsp;3.2075=
10] EDAC MC: ECC not enabled<br>[ &nbsp; &nbsp;3.211214] Xilinx Zynq CpuIdle=
 Driver started<br>[ &nbsp; &nbsp;3.215999] sdhci: Secure Digital Host Contr=
oller Interface driver<br>[ &nbsp; &nbsp;3.222135] sdhci: Copyright(c) Pierr=
e Ossman<br>[ &nbsp; &nbsp;3.226447] sdhci-pltfm: SDHCI platform and OF driv=
er helper<br>[ &nbsp; &nbsp;3.290241] mmc0: SDHCI controller on e0100000.sdh=
ci [e0100000.sdhci] using ADMA<br>[ &nbsp; &nbsp;3.301811] usbcore: register=
ed new interface driver usbhid<br>[ &nbsp; &nbsp;3.307376] usbhid: USB HID c=
ore driver<br>[ &nbsp; &nbsp;3.311367] cros-ec-i2c 1-001e: request of size 1=
94 is too big (max: 120)<br>[ &nbsp; &nbsp;3.318158] cros-ec-i2c 1-001e: req=
uest of size 194 is too big (max: 120)<br>[ &nbsp; &nbsp;3.324962] cros-ec-i=
2c 1-001e: request of size 194 is too big (max: 120)<br>[ &nbsp; &nbsp;3.331=
739] cros-ec-i2c 1-001e: request of size 194 is too big (max: 120)<br>[ &nbs=
p; &nbsp;3.339507] cros-ec-i2c 1-001e: request of size 194 is too big (max: 1=
20)<br>[ &nbsp; &nbsp;3.348291] cros-ec-i2c 1-001e: request of size 194 is t=
oo big (max: 120)<br>[ &nbsp; &nbsp;3.355068] cros-ec-i2c 1-001e: request of=
 size 194 is too big (max: 120)<br>[ &nbsp; &nbsp;3.369431] fpga_manager fpg=
a0: Xilinx Zynq FPGA Manager registered<br>[ &nbsp; &nbsp;3.376191] oprofile=
: using arm/armv7-ca9<br>[ &nbsp; &nbsp;3.380250] u32 classifier<br>[ &nbsp;=
 &nbsp;3.382892] &nbsp; &nbsp; Actions configured<br>[ &nbsp; &nbsp;3.386505=
] NET: Registered protocol family 17<br>[ &nbsp; &nbsp;3.390956] can: contro=
ller area network core (rev 20170425 abi 9)<br>[ &nbsp; &nbsp;3.397183] NET:=
 Registered protocol family 29<br>[ &nbsp; &nbsp;3.401674] can: raw protocol=
 (rev 20170425)<br>[ &nbsp; &nbsp;3.405945] can: broadcast manager protocol (=
rev 20170425 t)<br>[ &nbsp; &nbsp;3.411604] can: netlink gateway (rev 201704=
25) max_hops=3D1<br>[ &nbsp; &nbsp;3.417294] Key type dns_resolver registere=
d<br>[ &nbsp; &nbsp;3.421799] Registering SWP/SWPB emulation handler<br>[ &n=
bsp; &nbsp;3.427316] Loading compiled-in X.509 certificates<br>[ &nbsp; &nbs=
p;3.433887] Btrfs loaded, crc32c=3Dcrc32c-generic<br>[ &nbsp; &nbsp;3.439398=
] Key type encrypted registered<br>[ &nbsp; &nbsp;3.446729] mmc0: new high s=
peed SDHC card at address aaaa<br>[ &nbsp; &nbsp;3.452787] mmcblk0: mmc0:aaa=
a SP32G 29.7 GiB<br>[ &nbsp; &nbsp;3.457520] cdns-i2c e0005000.i2c: xfer_siz=
e reg rollover. xfer aborted!<br>[ &nbsp; &nbsp;3.466868] &nbsp;mmcblk0: p1 p=
2 p3 p4<br>[ &nbsp; &nbsp;4.480201] cdns-i2c e0005000.i2c: timeout waiting o=
n completion<br>[ &nbsp; &nbsp;4.486171] cros-ec-ctl cros-ec-ctl.0.auto: EC c=
ommunication failed<br>[ &nbsp; &nbsp;4.494588] libphy: MACB_mii_bus: probed=
<br>[ &nbsp; &nbsp;4.591385] Marvell 88E1510 e000b000.ethernet-ffffffff:00: a=
ttached PHY driver [Marvell 88E1510] (mii_bus:phy_addr=3De000b000.ethernet-f=
fffffff:00, irq=3DPOLL)<br>[ &nbsp; &nbsp;4.605288] macb e000b000.ethernet e=
th0: Cadence GEM rev 0x00020118 at 0xe000b000 irq 27 (00:80:2f:24:01:14)<br>=
[ &nbsp; &nbsp;4.615170] console [netcon0] enabled<br>[ &nbsp; &nbsp;4.61876=
4] netconsole: network logging started<br>[ &nbsp; &nbsp;4.623821] input: gp=
io-keys as /devices/soc0/gpio-keys/input/input0<br>[ &nbsp; &nbsp;4.630861] r=
tc-ds1374 8-0068: setting system clock to 2019-08-30 23:00:59 UTC (156720605=
9)<br>[ &nbsp; &nbsp;4.639149] of_cfs_init<br>[ &nbsp; &nbsp;4.641677] of_cf=
s_init: OK<br>[ &nbsp; &nbsp;4.644987] md: Waiting for all devices to be ava=
ilable before autodetect<br>[ &nbsp; &nbsp;4.651757] md: If you don't use ra=
id, use raid=3Dnoautodetect<br>[ &nbsp; &nbsp;4.658031] md: Autodetecting RA=
ID arrays.<br>[ &nbsp; &nbsp;4.662092] md: autorun ...<br>[ &nbsp; &nbsp;4.6=
64830] md: ... autorun DONE.<br>[ &nbsp; &nbsp;4.670723] EXT4-fs (mmcblk0p2)=
: couldn't mount as ext3 due to feature incompatibilities<br>[ &nbsp; &nbsp;=
4.681000] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature incompa=
tibilities<br>[ &nbsp; &nbsp;4.703794] EXT4-fs (mmcblk0p2): mounted filesyst=
em with ordered data mode. Opts: (null)<br>[ &nbsp; &nbsp;4.711908] VFS: Mou=
nted root (ext4 filesystem) on device 179:2.<br>[ &nbsp; &nbsp;4.723131] dev=
tmpfs: mounted<br>[ &nbsp; &nbsp;4.731994] Freeing unused kernel memory: 102=
4K<br>[ &nbsp; &nbsp;5.059819] systemd[1]: systemd 237 running in system mod=
e. (-PAM -AUDIT -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETU=
P -GCRYPT -GNUTLS +ACL -XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN -=
PCRE2 default-hierarchy=3Dhybrid)<br>[ &nbsp; &nbsp;5.081662] systemd[1]: De=
tected architecture arm.<br><br>Welcome to Alchemy 2018.04!<br><br>[ &nbsp; &=
nbsp;5.133006] systemd[1]: Set hostname to &lt;ni-sulfur-rev6-mender&gt;.<br=
>[ &nbsp; &nbsp;5.147165] systemd[1]: Initializing machine ID from random ge=
nerator.<br>[ &nbsp; &nbsp;5.165704] systemd[1]: Hardware watchdog 'DS1374 W=
TD', version 0<br>[ &nbsp; &nbsp;5.172621] systemd[1]: Set hardware watchdog=
 to 10s.<br>[ &nbsp; &nbsp;5.177614] rtc_ds1374: enable watchdog<br>[ &nbsp;=
 &nbsp;5.364191] systemd[1]: File /lib/systemd/system/systemd-journald.servi=
ce:35 configures an IP firewall (IPAddressDeny=3Dany), but the local system d=
oes not support BPF/cgroup based firewalling.<br>[ &nbsp; &nbsp;5.381322] sy=
stemd[1]: Proceeding WITHOUT firewalling in effect! (This warning is only sh=
own for the first loaded unit using IP firewalling.)<br>[ &nbsp; &nbsp;5.513=
699] systemd[1]: Binding to IPv6 address not available since kernel does not=
 support IPv6.<br>[ &nbsp; &nbsp;5.555174] systemd[1]: Reached target Swap.<=
br>[ &nbsp;OK &nbsp;] Reached target Swap.<br>[ &nbsp;OK &nbsp;] Started Dis=
patch Password Requests to Console Directory Watch.<br>[ &nbsp;OK &nbsp;] Cr=
eated slice User and Session Slice.<br>[ &nbsp;OK &nbsp;] Started Forward Pa=
ssword Requests to Wall Directory Watch.<br>[ &nbsp;OK &nbsp;] Reached targe=
t Paths.<br>[ &nbsp;OK &nbsp;] Reached target Remote File Systems.<br>[ &nbs=
p;OK &nbsp;] Created slice System Slice.<br>[ &nbsp;OK &nbsp;] Listening on N=
etwork Service Netlink Socket.<br>[ &nbsp;OK &nbsp;] Listening on Journal So=
cket.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting POSIX Message Queue File=
 System...<br>[ &nbsp;OK &nbsp;] Listening on udev Control Socket.<br>[ &nbs=
p;OK &nbsp;] Listening on /dev/initctl Compatibility Named Pipe.<br>[ &nbsp;=
OK &nbsp;] Listening on Journal Socket (/dev/log).<br>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;Starting Create list of required st=E2=80=A6ce nodes for the cur=
rent kernel...<br>[ &nbsp;OK &nbsp;] Listening on udev Kernel Socket.<br>&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Load Kernel Modules...<br>&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;Mounting Temporary Directory (/tmp)...<br>[ &nbsp;OK=
 &nbsp;] Reached target Slices.<br>[ &nbsp;OK &nbsp;] Created slice system-g=
etty.slice.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting Kernel Debug File S=
ystem...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting udev Coldplug all Dev=
ices...<br>[ &nbsp;OK &nbsp;] Listening on Syslog Socket.<br>[ &nbsp;OK &nbs=
p;] Created slice system-serial\x2dgetty.slice.<br>&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;Starting Journal Service...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;St=
arting Remount Root and Kernel File Systems...<br>[ &nbsp;OK &nbsp;] Mounted=
 POSIX Message Queue File System.<br>[ &nbsp; &nbsp;6.349070] EXT4-fs (mmcbl=
k0p2): re-mounted. Opts: (null)<br>[ &nbsp;OK &nbsp;] Started Create list of=
 required sta=E2=80=A6vice nodes for the current kernel.<br>[ &nbsp;OK &nbsp=
;] Started Journal Service.<br>[ &nbsp;OK &nbsp;] Started Load Kernel Module=
s.<br>[ &nbsp;OK &nbsp;] Mounted Temporary Directory (/tmp).<br>[ &nbsp;OK &=
nbsp;] Mounted Kernel Debug File System.<br>[ &nbsp;OK &nbsp;] Started Remou=
nt Root and Kernel File Systems.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starti=
ng Rebuild Hardware Database...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mountin=
g FUSE Control File System...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting A=
pply Kernel Variables...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting Kerne=
l Configuration File System...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting=
 Flush Journal to Persistent Storage...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;Starting Create Static Device Nodes in /dev...<br>[ &nbsp;OK &nbsp;] Mounte=
d FUSE Control File System.<br>[ &nbsp;OK &nbsp;] Started Apply Kernel Varia=
bles.<br>[ &nbsp;OK &nbsp;] Mounted Kernel Configuration File System.<br>[ &=
nbsp;OK &nbsp;] Started Create Static Device Nodes in /dev.<br>[ &nbsp;OK &n=
bsp;] Started udev Coldplug all Devices.<br>[ &nbsp; &nbsp;6.951486] systemd=
-journald[90]: Received request to flush runtime journal from PID 1<br>[ &nb=
sp;OK &nbsp;] Reached target Local File Systems (Pre).<br>&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;Mounting /var/volatile...<br>[ &nbsp;OK &nbsp;] Started Flus=
h Journal to Persistent Storage.<br>[ &nbsp;OK &nbsp;] Mounted /var/volatile=
.<br>[ &nbsp;OK &nbsp;] Started Rebuild Hardware Database.<br>&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;Starting udev Kernel Device Manager...<br>[ &nbsp;OK &nbs=
p;] Started udev Kernel Device Manager.<br>[ &nbsp;OK &nbsp;] Found device /=
dev/ttyPS0.<br>[ &nbsp;OK &nbsp;] Found device /dev/mmcblk0p1.<br>[ &nbsp;OK=
 &nbsp;] Found device /dev/mmcblk0p4.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;M=
ounting /data...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting /uboot...<br>=
[ &nbsp; &nbsp;9.716983] EXT4-fs (mmcblk0p4): mounted filesystem with ordere=
d data mode. Opts: (null)<br>[ &nbsp;OK &nbsp;] Mounted /data.<br>[ &nbsp;OK=
 &nbsp;] Mounted /uboot.<br>[ &nbsp;OK &nbsp;] Reached target Local File Sys=
tems.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Create Volatile Files an=
d Directories...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Rebuild Journ=
al Catalog...<br>[ &nbsp;OK &nbsp;] Started Create Volatile Files and Direct=
ories.<br>[ &nbsp;OK &nbsp;] Started Rebuild Journal Catalog.<br>&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;Starting Update is Completed...<br>&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;Starting Run pending postinsts...<br>&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;Starting Opkg first boot configure...<br>&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;Starting Network Time Synchronization...<br>[ &nbsp;OK &nbsp;] Sta=
rted Update is Completed.<br>[ &nbsp;OK &nbsp;] Started Opkg first boot conf=
igure.<br>[ &nbsp;OK &nbsp;] Started Network Time Synchronization.<br>[ &nbs=
p;OK &nbsp;] Reached target System Time Synchronized.<br>[ &nbsp;OK &nbsp;] S=
tarted Run pending postinsts.<br>[ &nbsp;OK &nbsp;] Reached target System In=
itialization.<br>[ &nbsp;OK &nbsp;] Started Daily Cleanup of Temporary Direc=
tories.<br>[ &nbsp;OK &nbsp;] Reached target Timers.<br>[ &nbsp;OK &nbsp;] L=
istening on RPCbind Server Activation Socket.<br>[ &nbsp;OK &nbsp;] Listenin=
g on D-Bus System Message Bus Socket.<br>[ &nbsp;OK &nbsp;] Listening on Ava=
hi mDNS/DNS-SD Stack Activation Socket.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;Starting sshd.socket.<br>[ &nbsp;OK &nbsp;] Listening on GPS (Global Positi=
oning System) Daemon Sockets.<br>[ &nbsp;OK &nbsp;] Listening on sshd.socket=
.<br>[ &nbsp;OK &nbsp;] Reached target Sockets.<br>[ &nbsp;OK &nbsp;] Reache=
d target Basic System.<br>[ &nbsp;OK &nbsp;] Started D-Bus System Message Bu=
s.<br>[ &nbsp;OK &nbsp;] Started Getty on tty1.<br>[ &nbsp;OK &nbsp;] Starte=
d Kernel Logging Service.<br>[ &nbsp;OK &nbsp;] Started Serial Getty on ttyP=
S0.<br>[ &nbsp;OK &nbsp;] Reached target Login Prompts.<br>[ &nbsp;OK &nbsp;=
] Started System Logging Service.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Start=
ing Setting unique (s/n based) hostname...<br>&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;Starting USRP Hardware Daemon (MPM)...<br>&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;Starting Telephony service...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Start=
ing Login Service...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Hostname S=
ervice...<br>[ &nbsp;OK &nbsp;] Started Login Service.<br>[ &nbsp;OK &nbsp;]=
 Started Telephony service.<br>[ &nbsp;OK &nbsp;] Started Hostname Service.<=
br>[ &nbsp;OK &nbsp;] Started Setting unique (s/n based) hostname.<br>&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;Starting Avahi mDNS/DNS-SD Stack...<br>&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;Starting Network Service...<br>[ &nbsp;OK &nbsp;] S=
tarted Avahi mDNS/DNS-SD Stack.<br>[ &nbsp;OK &nbsp;] Started Network Servic=
e.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Network Name Resolution...<=
br>[ &nbsp;OK &nbsp;] Started Network Name Resolution.<br>[ &nbsp;OK &nbsp;]=
 Started Mender OTA update service.<br>[ &nbsp;OK &nbsp;] Reached target Hos=
t and Network Name Lookups.<br>[ &nbsp;OK &nbsp;] Reached target Network.<br=
><br>Alchemy 2018.04 ni-n3xx-3177E63 ttyPS0<br><br>ni-n3xx-3177E63 login: ro=
ot<br>root@ni-n3xx-3177E63:~# [ &nbsp; 24.582582] fpga_manager fpga0: writin=
g n310.bin to Xilinx Zynq FPGA Manager<br>[ &nbsp; 25.414692] libphy: nixge_=
mii_bus: probed<br>[ &nbsp; 25.451582] libphy: nixge_mii_bus: probed<br>[ &n=
bsp; 25.469428] nixge 40000000.ethernet sfp0: renamed from eth1<br>[ &nbsp; 2=
5.713083] rfnoc_crossbar crossbar0: NI Platform RFNoC Crossbar registered<br=
>[ &nbsp; 25.751871] nixge 40008000.ethernet sfp1: renamed from eth1<br>[ &n=
bsp; 25.836282] usrp-dma-core: Registered rx-dma0<br>[ &nbsp; 25.887989] usr=
p-dma-core: Registered rx-dma1<br>[ &nbsp; 25.909555] usrp-dma-core: Registe=
red rx-dma2<br>[ &nbsp; 25.949161] usrp-dma-core: Registered rx-dma3<br>[ &n=
bsp; 25.961521] usrp-dma-core: Registered rx-dma4<br>[ &nbsp; 25.966603] usr=
p-dma-core: Registered rx-dma5<br>[ &nbsp; 25.981382] usrp-dma-core: Registe=
red rx-dma6<br>[ &nbsp; 25.991645] usrp-dma-core: Registered rx-dma7<br>[ &n=
bsp; 25.996824] usrp-dma-core: Registered rx-dma8<br>[ &nbsp; 26.011477] usr=
p-dma-core: Registered rx-dma9<br>[ &nbsp; 26.022402] usrp-dma-core: Registe=
red tx-dma0<br>[ &nbsp; 26.027511] usrp-dma-core: Registered tx-dma1<br>[ &n=
bsp; 26.041439] usrp-dma-core: Registered tx-dma2<br>[ &nbsp; 26.052196] usr=
p-dma-core: Registered tx-dma3<br>[ &nbsp; 26.062320] usrp-dma-core: Registe=
red tx-dma4<br>[ &nbsp; 26.067453] usrp-dma-core: Registered tx-dma5<br>[ &n=
bsp; 26.081501] usrp-dma-core: Registered tx-dma6<br>[ &nbsp; 26.092381] usr=
p-dma-core: Registered tx-dma7<br>[ &nbsp; 26.101605] usrp-dma-core: Registe=
red tx-dma8<br>[ &nbsp; 26.112430] usrp-dma-core: Registered tx-dma9<br>[ &n=
bsp; 26.820220] nixge 40000000.ethernet sfp0: Link is Up - Unknown/Unknown -=
 flow control off<br>[ &nbsp; 26.900861] nixge 40008000.ethernet sfp1: Link i=
s Up - 10Gbps/Full - flow control off<br>[ &nbsp; 29.080221] nixge 40008000.=
ethernet sfp1: Link is Down<br>[ &nbsp; 31.595778] random: crng init done&lt=
;/i&gt;<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Sep 5, 2019 at 8:19 PM Robin Coxe via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi Austin.&nbsp; Is&nbsp;<i>enx70886b87f283 </i>a 1 g=
igE or 10gigE connection?&nbsp; If it's 1gigE, my guess is that your problem=
 may be that the new SD card is loading the XG FPGA image, which expects 10 g=
igE connections to the host on both ports SFP0 and SFP1.&nbsp; &nbsp;You'll n=
eed to update the SD card to load the HG image from /lib/firmware at bootup (=
1 gigE on SFP0 on the N310, connected to the Host PC using a cat 5 Ethernet c=
able and the SFP-to-RJ45 adapter).&nbsp;<div><br></div><div>Instructions her=
e:&nbsp;&nbsp;<a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getti=
ng_Started_Guide#Network_Mode_FPGA_Image_Update" target=3D"_blank">https://k=
b.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Network_Mode_FPGA=
_Image_Update</a></div><div><br></div><div>-Robin</div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Sep 5, 2019 at 8:02 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_3137567207575742529gmail-m_8386253087106734267gmai=
l-m_-103551041112186870moz-cite-prefix">On 09/05/2019 10:28 PM, Austin Adam v=
ia
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I recently had my USRP N310 sent out for repairs to
        fix one of the SMA connectors, and when it came back, there was
        a new SD card in the slot. When I turned it on after getting it
        back, I was unable to connect to it via 'uhd_find_devices'. I
        figured it was something&nbsp;with the SD card, so I eventually
        decided to rewrite&nbsp;the whole thing, in case it needed an update=
.
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
        <div>The USRP can find itself&nbsp;on localhost as you can see here:=
</div>
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
              &nbsp; &nbsp; serial: 3177E63<br>
              &nbsp; &nbsp; claimed: False<br>
              &nbsp; &nbsp; mgmt_addr: 127.0.0.1<br>
              &nbsp; &nbsp; product: n310<br>
              &nbsp; &nbsp; type: n3xx</i><br>
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
              eth0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:8=
0:2F:24:01:14<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST MULTICAST &nbs=
p;MTU:1500 &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:0 errors:0 dropp=
ed:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:0 errors:0 dropp=
ed:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:0 (0.0 B) &nbsp;TX=
 bytes:0 (0.0 B)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Interrupt:27 Base address:0=
xb000<br>
              <br>
              lo &nbsp; &nbsp; &nbsp; &nbsp;Link encap:Local Loopback<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:127.0.0.1 &nbsp;M=
ask:255.0.0.0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP LOOPBACK RUNNING &nbsp;M=
TU:65536 &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:89 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:89 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:7480 (7.3 KiB) &nb=
sp;TX bytes:7480 (7.3 KiB)<br>
              <br>
              sfp0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:8=
0:2F:24:01:15<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.10.2 &nbs=
p;Bcast:192.168.10.255
              &nbsp;Mask:255.255.255.0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST RUNNING MULTIC=
AST &nbsp;MTU:8000
              &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:0 errors:0 dropp=
ed:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:14 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:0 (0.0 B) &nbsp;TX=
 bytes:2577 (2.5 KiB)<br>
              <br>
              sfp1 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:8=
0:2F:24:01:16<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST MULTICAST &nbs=
p;MTU:8000 &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:0 errors:0 dropp=
ed:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:1 errors:0 dropp=
ed:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:0 (0.0 B) &nbsp;TX=
 bytes:62 (62.0 B)</i>&nbsp;</font>&nbsp;<br>
        </div>
        <div><br>
        </div>
        <div><b>And here is ifconfig from the host machine:<br>
            <br>
          </b></div>
        <div>
          <div><i>ugikie@Austin-Blade:~$ ifconfig<br>
              enx70886b87f283:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu 8=
000<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.10.1 &nbsp;netmask 25=
5.255.255.0
              &nbsp;broadcast 192.168.10.255<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::73b:c879:60cf:8127 &nb=
sp;prefixlen 64
              &nbsp;scopeid 0x20&lt;link&gt;<br>
              &nbsp; &nbsp; &nbsp; &nbsp; ether 70:88:6b:87:f2:83 &nbsp;txqu=
euelen 1000
              &nbsp;(Ethernet)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX packets 0 &nbsp;bytes 0 (0.0 B)=
<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;=
overruns 0 &nbsp;frame 0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX packets 46 &nbsp;bytes 4966 (4.=
9 KB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overru=
ns 0 &nbsp;carrier 0
              &nbsp;collisions 0<br>
              <br>
              lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; &nbsp;mtu 65536<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1 &nbsp;netmask 255.0=
.0.0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet6 ::1 &nbsp;prefixlen 128 &nbs=
p;scopeid 0x10&lt;host&gt;<br>
              &nbsp; &nbsp; &nbsp; &nbsp; loop &nbsp;txqueuelen 1000 &nbsp;(=
Local Loopback)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX packets 5037 &nbsp;bytes 466961=
 (466.9 KB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;=
overruns 0 &nbsp;frame 0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX packets 5037 &nbsp;bytes 466961=
 (466.9 KB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overru=
ns 0 &nbsp;carrier 0
              &nbsp;collisions 0<br>
              <br>
              wlp59s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
              &nbsp;mtu 1500<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet 172.28.229.114 &nbsp;netmask 2=
55.255.240.0
              &nbsp;broadcast 172.28.239.255<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::c9b4:5623:34c4:ae56 &n=
bsp;prefixlen 64
              &nbsp;scopeid 0x20&lt;link&gt;<br>
              &nbsp; &nbsp; &nbsp; &nbsp; ether 9c:b6:d0:18:53:3f &nbsp;txqu=
euelen 1000
              &nbsp;(Ethernet)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX packets 110339 &nbsp;bytes 1239=
97000 (123.9 MB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;=
overruns 0 &nbsp;frame 0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX packets 47191 &nbsp;bytes 11048=
840 (11.0 MB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overru=
ns 0 &nbsp;carrier 0
              &nbsp;collisions 0</i><br>
          </div>
          <div><br>
          </div>
          <div>I tried broadcast pinging 192.168.10.255&nbsp; and
            192.168.10.2 from the host but didn't get a response from
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></div></body></html>=

--Apple-Mail-D20304F5-8B10-487D-AA95-B0E291FE5AB5--


--===============7196164947892797970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7196164947892797970==--

