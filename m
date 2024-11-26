Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 753F39D9E11
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 20:36:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DDA33858FB
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 14:36:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732649794; bh=HyZXRfM7lyrDsWpJWrUKEoreKDwoRzKs27WyyBcCxsU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AWCRvAYaCfy6Lzgo6RkwEkUhbzk11YEZoBRTTNB5gsiag0BSjQefVWJ7QeclsxHZi
	 dm2m0um4JuX43SDmhjJrP+wToN0gI4W6476zfA11uxnuKenXC2VH0TrNYJ2Lqay3Iu
	 9PnrDOT2v1SLUCfjlRFjxZN67k8Qtt07Y3MdO/0QwnLQMVpf3tQpL81DQGOAvNHjp8
	 vXJPojbZq6LpaZsGijsHcx4uiHGRd9dzqPbSfXpUMMJbkkYJf1qzBSwNetxwZ3NRkA
	 cFVGu6XjHGEqubPTbKB+sU11llKm8tSw7R/qiPIufLFC/rqdT/Kc/5mArFpP0OhQBP
	 LwT9aVYbtPjWA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AB83385451
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 14:36:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732649773; bh=3Z/cmYVMw2D1Txc/5oIEpodrdR1MVZ4abLTmCheOUY8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VfezpSFoiCN243qbcuwDQJqWjsWGGpbo2INsbUAqV3HXO483l7YCB5hj7OXo084cf
	 JcJ7HokOWXfADKoDZ6NLHacsrYVdjOrllL8QZAl9EBr4CsHm4y8U7YqphW0LfT7JTh
	 KBALpcgUkTAF3/iXmLOor+XYNWOVkTNoRseP1F3FRJUBZGKyYVOjxaFIi9VXUiG4gS
	 BK4vf+v1nQfOowK7NPRMOSXJZNbPLTL1yqdeav2gM7F85AHr5nbWLyGjeyALnlhN+V
	 mL2937BT1Fw8GFGeTgKZTclPhnqfwwwD4sIREzy6HKskWtydjIKGl/2TG0Wf3GSJgj
	 Ia2KOKyN1MrPg==
Date: Tue, 26 Nov 2024 19:36:13 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <ygFh1KSuj3G44pxlNEH1YLqwD6rgybiT2s2S31ydbic@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 22d4dbd8-e014-4319-ab18-1f61a21c43fc@gmail.com
MIME-Version: 1.0
Message-ID-Hash: DQDBHKLQMQJT7LYQVGVJNCD4VGUWUGWP
X-Message-ID-Hash: DQDBHKLQMQJT7LYQVGVJNCD4VGUWUGWP
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LED quickly turns back off X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQDBHKLQMQJT7LYQVGVJNCD4VGUWUGWP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0150688633274503138=="

This is a multi-part message in MIME format.

--===============0150688633274503138==
Content-Type: multipart/alternative;
 boundary="b1_ygFh1KSuj3G44pxlNEH1YLqwD6rgybiT2s2S31ydbic"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ygFh1KSuj3G44pxlNEH1YLqwD6rgybiT2s2S31ydbic
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Its a high-end ASUS desktop machine with 128 GB RAM:\
description: Desktop Computer

    product: System Product Name (SKU)

    vendor: ASUS

    version: System Version

    serial: System Serial Number

    width: 64 bits

    capabilities: smbios-3.5.0 dmi-3.5.0 smp vsyscall32

    configuration: boot=3Dnormal chassis=3Ddesktop family=3DTo be filled =
by O.E.M. sku=3DSKU uuid=3Df3e615b3-efb6-49fa-381a-581122bbff40

  \*-core

       description: Motherboard

       product: ROG MAXIMUS Z790 HERO

       vendor: ASUSTeK COMPUTER INC.

       physical id: 0

       version: Rev 1.xx

       serial: 221011025300497

       slot: Default string

     \*-firmware

          description: BIOS

          vendor: American Megatrends Inc.

          physical id: 0

          version: 2202

          date: 04/17/2024

          size: 64KiB

          capacity: 16MiB

          capabilities: pci upgrade shadowing cdboot bootselect socketedr=
om edd int13floppynec int13floppytoshiba int13floppy360 int13floppy1200 i=
nt13floppy720 int13floppy2880 int5printscreen int14serial int17printer in=
t10video acpi usb biosbootspecification uefi

     \*-memory

          description: System Memory

          physical id: c

          slot: System board or motherboard

          size: 128GiB

        \*-bank:0

             description: DIMM Synchronous 4200 MHz (0.2 ns)

             product: KF556C40-32

             vendor: Kingston

             physical id: 0

             serial: CE344740

             slot: Controller0-DIMM0

             size: 32GiB

             width: 64 bits

             clock: 4200MHz (0.2ns)

        \*-bank:1

             description: DIMM Synchronous 4200 MHz (0.2 ns)

             product: KF556C40-32

             vendor: Kingston

             physical id: 1

             serial: E1345EF2

             slot: Controller0-DIMM1

             size: 32GiB

             width: 64 bits

             clock: 4200MHz (0.2ns)

        \*-bank:2

             description: DIMM Synchronous 4200 MHz (0.2 ns)

             product: KF556C40-32

             vendor: Kingston

             physical id: 2

             serial: D0349087

             slot: Controller1-DIMM0

             size: 32GiB

             width: 64 bits

             clock: 4200MHz (0.2ns)

        \*-bank:3

             description: DIMM Synchronous 4200 MHz (0.2 ns)

             product: KF556C40-32

             vendor: Kingston

             physical id: 3

             serial: 4A348668

             slot: Controller1-DIMM1

             size: 32GiB

             width: 64 bits

             clock: 4200MHz (0.2ns)

     \*-cache:0

          description: L1 cache

          physical id: 1d

          slot: L1 Cache

          size: 384KiB

          capacity: 384KiB

          capabilities: synchronous internal write-back data

          configuration: level=3D1

     \*-cache:1

          description: L1 cache

          physical id: 1e

          slot: L1 Cache

          size: 256KiB

          capacity: 256KiB

          capabilities: synchronous internal write-back instruction

          configuration: level=3D1

     \*-cache:2

          description: L2 cache

          physical id: 1f

          slot: L2 Cache

          size: 16MiB

          capacity: 16MiB

          capabilities: synchronous internal write-back unified

          configuration: level=3D2

     \*-cache:3

          description: L3 cache

          physical id: 20

          slot: L3 Cache

          size: 36MiB

          capacity: 36MiB

          capabilities: synchronous internal write-back unified

          configuration: level=3D3

     \*-cache:4

          description: L1 cache

          physical id: 21

          slot: L1 Cache

          size: 512KiB

          capacity: 512KiB

          capabilities: synchronous internal write-back data

          configuration: level=3D1

     \*-cache:5

          description: L1 cache

          physical id: 22

          slot: L1 Cache

          size: 1MiB

          capacity: 1MiB

          capabilities: synchronous internal write-back instruction

          configuration: level=3D1

     \*-cache:6

          description: L2 cache

          physical id: 23

          slot: L2 Cache

          size: 16MiB

          capacity: 16MiB

          capabilities: synchronous internal write-back unified

          configuration: level=3D2

     \*-cache:7

          description: L3 cache

          physical id: 24

          slot: L3 Cache

          size: 36MiB

          capacity: 36MiB

          capabilities: synchronous internal write-back unified

          configuration: level=3D3

     \*-cpu

          description: CPU

          product: Intel(R) Core(TM) i9-14900K

          vendor: Intel Corp.

          physical id: 25

          bus info: cpu@0

          version: 6.183.1

          serial: To Be Filled By O.E.M.

          slot: LGA1700

          size: 5696MHz

          capacity: 5700MHz

          width: 64 bits

          clock: 100MHz

          capabilities: lm fpu fpu_exception wp vme de pse tsc msr pae mc=
e cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse =
sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp x86-64 constant_tsc art arch_=
perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc=
_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdb=
g fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_=
timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb=
 ssbd ibrs ibpb stibp ibrs_enhanced tpr_shadow flexpriority ept vpid ept_=
ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap c=
lflushopt clwb intel_pt sha_ni xsaveopt xsavec xgetbv1 xsaves split_lock_=
detect user_shstk avx_vnni dtherm ida arat pln pts hwp hwp_notify hwp_act=
_window hwp_epp hwp_pkg_req hfi vnmi umip pku ospke waitpkg gfni vaes vpc=
lmulqdq tme rdpid movdiri movdir64b fsrm md_clear serialize pconfig arch_=
lbr ibt flush_l1d arch_capabilities cpufreq

          configuration: cores=3D24 enabledcores=3D24 microcode=3D297 thr=
eads=3D24

I=E2=80=99m implementing a custom-made filter block with the output data.=
 I lowered the sample rate to 61.44 MHz and am still noticing the green l=
ight turn off when i connect the custom-made filter block to the UHD sour=
ce block.=20

Also, under stream args, I set the following parameters: num_recv_frames=3D=
50000, recv_buff_size=3D2000000000. MTU is set to 9000. Is there a transp=
ort parameter max when using DPDK?

--b1_ygFh1KSuj3G44pxlNEH1YLqwD6rgybiT2s2S31ydbic
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Its a high-end ASUS desktop machine with 128 GB RAM:<br>description: Des=
ktop Computer</p><p>    product: System Product Name (SKU)</p><p>    vendor=
: ASUS</p><p>    version: System Version</p><p>    serial: System Serial Nu=
mber</p><p>    width: 64 bits</p><p>    capabilities: smbios-3.5.0 dmi-3.5.=
0 smp vsyscall32</p><p>    configuration: boot=3Dnormal chassis=3Ddesktop f=
amily=3DTo be filled by O.E.M. sku=3DSKU uuid=3Df3e615b3-efb6-49fa-381a-581=
122bbff40</p><p>  *-core</p><p>       description: Motherboard</p><p>      =
 product: ROG MAXIMUS Z790 HERO</p><p>       vendor: ASUSTeK COMPUTER INC.<=
/p><p>       physical id: 0</p><p>       version: Rev 1.xx</p><p>       ser=
ial: 221011025300497</p><p>       slot: Default string</p><p>     *-firmwar=
e</p><p>          description: BIOS</p><p>          vendor: American Megatr=
ends Inc.</p><p>          physical id: 0</p><p>          version: 2202</p><=
p>          date: 04/17/2024</p><p>          size: 64KiB</p><p>          ca=
pacity: 16MiB</p><p>          capabilities: pci upgrade shadowing cdboot bo=
otselect socketedrom edd int13floppynec int13floppytoshiba int13floppy360 i=
nt13floppy1200 int13floppy720 int13floppy2880 int5printscreen int14serial i=
nt17printer int10video acpi usb biosbootspecification uefi</p><p>     *-mem=
ory</p><p>          description: System Memory</p><p>          physical id:=
 c</p><p>          slot: System board or motherboard</p><p>          size: =
128GiB</p><p>        *-bank:0</p><p>             description: DIMM Synchron=
ous 4200 MHz (0.2 ns)</p><p>             product: KF556C40-32</p><p>       =
      vendor: Kingston</p><p>             physical id: 0</p><p>            =
 serial: CE344740</p><p>             slot: Controller0-DIMM0</p><p>        =
     size: 32GiB</p><p>             width: 64 bits</p><p>             clock=
: 4200MHz (0.2ns)</p><p>        *-bank:1</p><p>             description: DI=
MM Synchronous 4200 MHz (0.2 ns)</p><p>             product: KF556C40-32</p=
><p>             vendor: Kingston</p><p>             physical id: 1</p><p> =
            serial: E1345EF2</p><p>             slot: Controller0-DIMM1</p>=
<p>             size: 32GiB</p><p>             width: 64 bits</p><p>       =
      clock: 4200MHz (0.2ns)</p><p>        *-bank:2</p><p>             desc=
ription: DIMM Synchronous 4200 MHz (0.2 ns)</p><p>             product: KF5=
56C40-32</p><p>             vendor: Kingston</p><p>             physical id=
: 2</p><p>             serial: D0349087</p><p>             slot: Controller=
1-DIMM0</p><p>             size: 32GiB</p><p>             width: 64 bits</p=
><p>             clock: 4200MHz (0.2ns)</p><p>        *-bank:3</p><p>      =
       description: DIMM Synchronous 4200 MHz (0.2 ns)</p><p>             p=
roduct: KF556C40-32</p><p>             vendor: Kingston</p><p>             =
physical id: 3</p><p>             serial: 4A348668</p><p>             slot:=
 Controller1-DIMM1</p><p>             size: 32GiB</p><p>             width:=
 64 bits</p><p>             clock: 4200MHz (0.2ns)</p><p>     *-cache:0</p>=
<p>          description: L1 cache</p><p>          physical id: 1d</p><p>  =
        slot: L1 Cache</p><p>          size: 384KiB</p><p>          capacit=
y: 384KiB</p><p>          capabilities: synchronous internal write-back dat=
a</p><p>          configuration: level=3D1</p><p>     *-cache:1</p><p>     =
     description: L1 cache</p><p>          physical id: 1e</p><p>          =
slot: L1 Cache</p><p>          size: 256KiB</p><p>          capacity: 256Ki=
B</p><p>          capabilities: synchronous internal write-back instruction=
</p><p>          configuration: level=3D1</p><p>     *-cache:2</p><p>      =
    description: L2 cache</p><p>          physical id: 1f</p><p>          s=
lot: L2 Cache</p><p>          size: 16MiB</p><p>          capacity: 16MiB</=
p><p>          capabilities: synchronous internal write-back unified</p><p>=
          configuration: level=3D2</p><p>     *-cache:3</p><p>          des=
cription: L3 cache</p><p>          physical id: 20</p><p>          slot: L3=
 Cache</p><p>          size: 36MiB</p><p>          capacity: 36MiB</p><p>  =
        capabilities: synchronous internal write-back unified</p><p>       =
   configuration: level=3D3</p><p>     *-cache:4</p><p>          descriptio=
n: L1 cache</p><p>          physical id: 21</p><p>          slot: L1 Cache<=
/p><p>          size: 512KiB</p><p>          capacity: 512KiB</p><p>       =
   capabilities: synchronous internal write-back data</p><p>          confi=
guration: level=3D1</p><p>     *-cache:5</p><p>          description: L1 ca=
che</p><p>          physical id: 22</p><p>          slot: L1 Cache</p><p>  =
        size: 1MiB</p><p>          capacity: 1MiB</p><p>          capabilit=
ies: synchronous internal write-back instruction</p><p>          configurat=
ion: level=3D1</p><p>     *-cache:6</p><p>          description: L2 cache</=
p><p>          physical id: 23</p><p>          slot: L2 Cache</p><p>       =
   size: 16MiB</p><p>          capacity: 16MiB</p><p>          capabilities=
: synchronous internal write-back unified</p><p>          configuration: le=
vel=3D2</p><p>     *-cache:7</p><p>          description: L3 cache</p><p>  =
        physical id: 24</p><p>          slot: L3 Cache</p><p>          size=
: 36MiB</p><p>          capacity: 36MiB</p><p>          capabilities: synch=
ronous internal write-back unified</p><p>          configuration: level=3D3=
</p><p>     *-cpu</p><p>          description: CPU</p><p>          product:=
 Intel(R) Core(TM) i9-14900K</p><p>          vendor: Intel Corp.</p><p>    =
      physical id: 25</p><p>          bus info: cpu@0</p><p>          versi=
on: 6.183.1</p><p>          serial: To Be Filled By O.E.M.</p><p>          =
slot: LGA1700</p><p>          size: 5696MHz</p><p>          capacity: 5700M=
Hz</p><p>          width: 64 bits</p><p>          clock: 100MHz</p><p>     =
     capabilities: lm fpu fpu_exception wp vme de pse tsc msr pae mce cx8 a=
pic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss h=
t tm pbe syscall nx pdpe1gb rdtscp x86-64 constant_tsc art arch_perfmon peb=
s bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq p=
ni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr=
 pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave a=
vx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb ssbd ibrs ibpb sti=
bp ibrs_enhanced tpr_shadow flexpriority ept vpid ept_ad fsgsbase tsc_adjus=
t bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb intel_pt=
 sha_ni xsaveopt xsavec xgetbv1 xsaves split_lock_detect user_shstk avx_vnn=
i dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp hwp_pkg_req=
 hfi vnmi umip pku ospke waitpkg gfni vaes vpclmulqdq tme rdpid movdiri mov=
dir64b fsrm md_clear serialize pconfig arch_lbr ibt flush_l1d arch_capabili=
ties cpufreq</p><p>          configuration: cores=3D24 enabledcores=3D24 mi=
crocode=3D297 threads=3D24</p><p><br></p><p>I=E2=80=99m implementing a cust=
om-made filter block with the output data. I lowered the sample rate to 61.=
44 MHz and am still noticing the green light turn off when i connect the cu=
stom-made filter block to the UHD source block. </p><p>Also, under stream a=
rgs, I set the following parameters: num_recv_frames=3D50000, recv_buff_siz=
e=3D2000000000. MTU is set to 9000. Is there a transport parameter max when=
 using DPDK?</p>

--b1_ygFh1KSuj3G44pxlNEH1YLqwD6rgybiT2s2S31ydbic--

--===============0150688633274503138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0150688633274503138==--
