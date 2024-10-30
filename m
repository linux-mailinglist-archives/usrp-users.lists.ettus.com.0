Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F40649B6D27
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 20:54:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C491C3852E6
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 15:54:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730318095; bh=r08diZ4iFAi+Og0xH88yG3rLnHfyYj7a+rZYr6m1V8M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UrCLzBe4SqNM+kL05RGRKTwqGwELZ/wRqNHl6k30wbpim0JfAZMJu6vwIJw15a91j
	 EwnbJcNUOJL8ukzSRMT+ts3/0T2lWVxEAjsb+k44q/Cqj97sjFKunQpcoj06nkbru1
	 Opj+5x1Le4GZNTN+ewr+il9t61kBMZxg4cCykbXvWZB1c3OsaM+QqBxQoUiImEuvlV
	 a0N0FkQByxst9xoA7JIZPswVdoV+wQ6gszJ7rQ/3E5FBB6etMgwmmtYO1zMlrAkJcm
	 aEq7AqCc55KQyJV4SxrhKK0VMKxOgjG7j9UvZhW+91PWQ9YFGeMUwClK32GGkv+AzC
	 tlvb5DQhJ8YEw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FD19385CED
	for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2024 15:54:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730318081; bh=Z/O59Z1z9PaHkPvdH2V2GD2nq+30hTz4IkQO5wSIhjI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=b8F9saYntRb0+KMMIxa90f7gWKXwpTtWVp5viv27RetWjuKx6qmWEXimDI61WRlRp
	 cmeSDDq9Gm0H9XbwFgkzYaK+sYLyvITBRJMo53J0qhJ/t9S7exMuA/3jafx8GPbXdY
	 RFVex3sSKcbaAhBC7WENmPGj/W2cZdncK7OF3N6RzLX7svgX/+kSe8zTv/86dp6BBA
	 tZEu73ct6ircQThlm4PZmV9UGabHoHq8rKIaC7E9BHnqYuw7sY6jF3cIO3IsfT8vOa
	 nGqdKLR89WZcGp4oDCcQ3mxcoMPYVbJ7rpXYaXsYAUsQfUUV4lQbLiiMMXrbhLsBG1
	 qDT3qDv+102fQ==
Date: Wed, 30 Oct 2024 19:54:41 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <3JsLpo8xjTrlyMuaHmQmruQwdo4Z0rWBugWprIbBkM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 118a5072-b4c9-47f7-8113-529133b67633@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HXJPTYQU7VQAWFRA54HDUU3TWYBKCQRL
X-Message-ID-Hash: HXJPTYQU7VQAWFRA54HDUU3TWYBKCQRL
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HXJPTYQU7VQAWFRA54HDUU3TWYBKCQRL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6762629289953709304=="

This is a multi-part message in MIME format.

--===============6762629289953709304==
Content-Type: multipart/alternative;
 boundary="b1_3JsLpo8xjTrlyMuaHmQmruQwdo4Z0rWBugWprIbBkM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3JsLpo8xjTrlyMuaHmQmruQwdo4Z0rWBugWprIbBkM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, its a bare metal system (no VM involved). I have the RF cable connec=
ted from A:0 to A:1 and I=E2=80=99m using the Mellanox cable connected fr=
om OSFP28-1 (right port on X410) to right port on 100G NIC card.=20

I=E2=80=99m using Xubuntu 22.04.\
$ lsb_release -a

No LSB modules are available.

Distributor ID:	Ubuntu

Description:	Ubuntu 22.04.5 LTS

Release:	22.04

Codename:	jammy

$ ethtool -g enp1s0f0np0

Ring parameters for enp1s0f0np0:

Pre-set maximums:

RX:		8192

RX Mini:	n/a

RX Jumbo:	n/a

TX:		8192

Current hardware settings:

RX:		4096

RX Mini:	n/a

RX Jumbo:	n/a

TX:		4096

$ sudo sysctl -w net.core.rmem_max=3D250000000

net.core.rmem_max =3D 250000000

$ sudo sysctl -w net.core.wmem_max=3D250000000

net.core.wmem_max =3D 250000000

$ lscpu

Architecture:             x86_64

  CPU op-mode(s):         32-bit, 64-bit

  Address sizes:          46 bits physical, 48 bits virtual

  Byte Order:             Little Endian

CPU(s):                   32

  On-line CPU(s) list:    0-31

Vendor ID:                GenuineIntel

  Model name:             Intel(R) Core(TM) i9-14900K

    CPU family:           6

    Model:                183

    Thread(s) per core:   2

    Core(s) per socket:   24

    Socket(s):            1

    Stepping:             1

    CPU max MHz:          6000.0000

    CPU min MHz:          800.0000

    BogoMIPS:             6374.40

    Flags:                fpu vme de pse tsc msr pae mce cx8 apic sep mtr=
r pge m

                          ca cmov pat pse36 clflush dts acpi mmx fxsr sse=
 sse2 s

                          s ht tm pbe syscall nx pdpe1gb rdtscp lm consta=
nt_tsc=20

                          art arch_perfmon pebs bts rep_good nopl xtopolo=
gy nons

                          top_tsc cpuid aperfmperf tsc_known_freq pni pcl=
mulqdq=20

                          dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdb=
g fma c

                          x16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe p=
opcnt t

                          sc_deadline_timer aes xsave avx f16c rdrand lah=
f_lm ab

                          m 3dnowprefetch cpuid_fault epb ssbd ibrs ibpb =
stibp i

                          brs_enhanced tpr_shadow flexpriority ept vpid e=
pt_ad f

                          sgsbase tsc_adjust bmi1 avx2 smep bmi2 erms inv=
pcid rd

                          seed adx smap clflushopt clwb intel_pt sha_ni x=
saveopt

                           xsavec xgetbv1 xsaves split_lock_detect user_s=
hstk av

                          x_vnni dtherm ida arat pln pts hwp hwp_notify h=
wp_act_

                          window hwp_epp hwp_pkg_req hfi vnmi umip pku os=
pke wai

                          tpkg gfni vaes vpclmulqdq tme rdpid movdiri mov=
dir64b=20

                          fsrm md_clear serialize pconfig arch_lbr ibt fl=
ush_l1d

                           arch_capabilities

Virtualization features: =20

  Virtualization:         VT-x

Caches (sum of all):     =20

  L1d:                    896 KiB (24 instances)

  L1i:                    1.3 MiB (24 instances)

  L2:                     32 MiB (12 instances)

  L3:                     36 MiB (1 instance)

NUMA:                    =20

  NUMA node(s):           1

  NUMA node0 CPU(s):      0-31

Vulnerabilities:         =20

  Gather data sampling:   Not affected

  Itlb multihit:          Not affected

  L1tf:                   Not affected

  Mds:                    Not affected

  Meltdown:               Not affected

  Mmio stale data:        Not affected

  Reg file data sampling: Mitigation; Clear Register File

  Retbleed:               Not affected

  Spec rstack overflow:   Not affected

  Spec store bypass:      Mitigation; Speculative Store Bypass disabled v=
ia prct

                          l

  Spectre v1:             Mitigation; usercopy/swapgs barriers and __user=
 pointe

                          r sanitization

  Spectre v2:             Mitigation; Enhanced / Automatic IBRS; IBPB con=
ditiona

                          l; RSB filling; PBRSB-eIBRS SW sequence; BHI BH=
I_DIS_S

  Srbds:                  Not affected

  Tsx async abort:        Not affected

--b1_3JsLpo8xjTrlyMuaHmQmruQwdo4Z0rWBugWprIbBkM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Yes, its a bare metal system (no VM involved). I have the RF cable conne=
cted from A:0 to A:1 and I=E2=80=99m using the Mellanox cable connected fro=
m OSFP28-1 (right port on X410) to right port on 100G NIC card. </p><p>I=
=E2=80=99m using Xubuntu 22.04.<br>$ lsb_release -a</p><p>No LSB modules ar=
e available.</p><p>Distributor ID:=09Ubuntu</p><p>Description:=09Ubuntu 22.=
04.5 LTS</p><p>Release:=0922.04</p><p>Codename:=09jammy</p><p><br></p><p>$ =
ethtool -g enp1s0f0np0</p><p>Ring parameters for enp1s0f0np0:</p><p>Pre-set=
 maximums:</p><p>RX:=09=098192</p><p>RX Mini:=09n/a</p><p>RX Jumbo:=09n/a</=
p><p>TX:=09=098192</p><p>Current hardware settings:</p><p>RX:=09=094096</p>=
<p>RX Mini:=09n/a</p><p>RX Jumbo:=09n/a</p><p>TX:=09=094096</p><p><br></p><=
p>$ sudo sysctl -w net.core.rmem_max=3D250000000</p><p>net.core.rmem_max =
=3D 250000000</p><p>$ sudo sysctl -w net.core.wmem_max=3D250000000</p><p>ne=
t.core.wmem_max =3D 250000000</p><p><br></p><p>$ lscpu</p><p>Architecture: =
            x86_64</p><p>  CPU op-mode(s):         32-bit, 64-bit</p><p>  A=
ddress sizes:          46 bits physical, 48 bits virtual</p><p>  Byte Order=
:             Little Endian</p><p>CPU(s):                   32</p><p>  On-l=
ine CPU(s) list:    0-31</p><p>Vendor ID:                GenuineIntel</p><p=
>  Model name:             Intel(R) Core(TM) i9-14900K</p><p>    CPU family=
:           6</p><p>    Model:                183</p><p>    Thread(s) per c=
ore:   2</p><p>    Core(s) per socket:   24</p><p>    Socket(s):           =
 1</p><p>    Stepping:             1</p><p>    CPU max MHz:          6000.0=
000</p><p>    CPU min MHz:          800.0000</p><p>    BogoMIPS:           =
  6374.40</p><p>    Flags:                fpu vme de pse tsc msr pae mce cx=
8 apic sep mtrr pge m</p><p>                          ca cmov pat pse36 clf=
lush dts acpi mmx fxsr sse sse2 s</p><p>                          s ht tm p=
be syscall nx pdpe1gb rdtscp lm constant_tsc </p><p>                       =
   art arch_perfmon pebs bts rep_good nopl xtopology nons</p><p>           =
               top_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq </p><p=
>                          dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg=
 fma c</p><p>                          x16 xtpr pdcm pcid sse4_1 sse4_2 x2a=
pic movbe popcnt t</p><p>                          sc_deadline_timer aes xs=
ave avx f16c rdrand lahf_lm ab</p><p>                          m 3dnowprefe=
tch cpuid_fault epb ssbd ibrs ibpb stibp i</p><p>                          =
brs_enhanced tpr_shadow flexpriority ept vpid ept_ad f</p><p>              =
            sgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid rd</p><p>  =
                        seed adx smap clflushopt clwb intel_pt sha_ni xsave=
opt</p><p>                           xsavec xgetbv1 xsaves split_lock_detec=
t user_shstk av</p><p>                          x_vnni dtherm ida arat pln =
pts hwp hwp_notify hwp_act_</p><p>                          window hwp_epp =
hwp_pkg_req hfi vnmi umip pku ospke wai</p><p>                          tpk=
g gfni vaes vpclmulqdq tme rdpid movdiri movdir64b </p><p>                 =
         fsrm md_clear serialize pconfig arch_lbr ibt flush_l1d</p><p>     =
                      arch_capabilities</p><p>Virtualization features:  </p=
><p>  Virtualization:         VT-x</p><p>Caches (sum of all):      </p><p> =
 L1d:                    896 KiB (24 instances)</p><p>  L1i:               =
     1.3 MiB (24 instances)</p><p>  L2:                     32 MiB (12 inst=
ances)</p><p>  L3:                     36 MiB (1 instance)</p><p>NUMA:     =
                </p><p>  NUMA node(s):           1</p><p>  NUMA node0 CPU(s=
):      0-31</p><p>Vulnerabilities:          </p><p>  Gather data sampling:=
   Not affected</p><p>  Itlb multihit:          Not affected</p><p>  L1tf: =
                  Not affected</p><p>  Mds:                    Not affected=
</p><p>  Meltdown:               Not affected</p><p>  Mmio stale data:     =
   Not affected</p><p>  Reg file data sampling: Mitigation; Clear Register =
File</p><p>  Retbleed:               Not affected</p><p>  Spec rstack overf=
low:   Not affected</p><p>  Spec store bypass:      Mitigation; Speculative=
 Store Bypass disabled via prct</p><p>                          l</p><p>  S=
pectre v1:             Mitigation; usercopy/swapgs barriers and __user poin=
te</p><p>                          r sanitization</p><p>  Spectre v2:      =
       Mitigation; Enhanced / Automatic IBRS; IBPB conditiona</p><p>       =
                   l; RSB filling; PBRSB-eIBRS SW sequence; BHI BHI_DIS_S</=
p><p>  Srbds:                  Not affected</p><p>  Tsx async abort:       =
 Not affected</p>

--b1_3JsLpo8xjTrlyMuaHmQmruQwdo4Z0rWBugWprIbBkM--

--===============6762629289953709304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6762629289953709304==--
