Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8423D7B3A84
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 21:18:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FE7438526B
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 15:18:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696015107; bh=6IDSReFjfwkkjqdywWd+iYw0U4WolHYgl863x98wv9g=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rCchx3U3WWCc+jO3QfEcB6DZi9cZJz2i+CeLlgRezf0YZ1fJqjp1n4QVfoF/Um9wc
	 F6MAnDWVYJK5BHqHHgMv7Z6prgyJ6sKT4OCtF4vif5Q7gBo9joD5hUPJOuLhK656xK
	 ZctmQHnGcg3zPQ5ojxpghN+7V7W9msdsJSsMy7+d85OlAKFxbj8tWWBV3tNz17yPdr
	 05UUC0dG4CsVWK48B6NzOFfckl467m97X/i02imsQ+yFHxQDc9b4laL2QUwRuZazFH
	 V0LsPQOWi++tnMjkZyKL8IvUjllUmK4uxOij5aCJoEVBR1Px/YyVuMsSvvZRp5kX27
	 DTsp3lWI4oVRQ==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E1DF0384DD8
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 15:18:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LC1TYrjN";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-9b27bc8b65eso1347641266b.0
        for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 12:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696015101; x=1696619901; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SLc8l899q3JepoZz3iLd/aauhcC/4qXG1NeirZEWL0s=;
        b=LC1TYrjN7ER6H3EbS/Issma6iE2se0WJniXi8EtfNEvRLUyHa0aJBjrF0fdB5e+8kR
         xHJvEuSrstyH1JqlY0THd8qT5WNiUD8aaYKIhfH2V70Dcoi2K6o6sHtNnS0lXHZ6Z3i4
         74Jid6x86bcgyLo1GsgHsTTqa6KrB1VJNi3fKXmeoBbuCK+TOo4n9nemJAK1f5gmN9CA
         x/0XQcPik7azsAq0XlW7bBKaYD0c7yE09L/2TQJOEK8mxF+7MbHJ7amh4klqdHZHNqmW
         1cUtDkVi4DGLaFmNvcImyeoh6Fgq7k+VhC13sOAcDAiTeVLwsSxiXDtKeaOASSrdoN8Q
         huiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696015101; x=1696619901;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SLc8l899q3JepoZz3iLd/aauhcC/4qXG1NeirZEWL0s=;
        b=dDZda88X5PJMR2kLCSZ8gEnIuXZcsuSl3eBg7fsDl02oTS+7gIDNbILzEna2mvSO3O
         Cp71kjCO12jfgQgOAGN1tcMoZu4wR3J6XjDA6jQ+E6i5fMgZHEyWgVJG2XvhMi/KIf36
         o1z2Y4Wxi7XdGXGKEL2tiasMO/nBGgkqP2p9J5nKbkAIvjKsFrf3oIh/huurheAzKAbq
         O0BtrPj7211ZvlAWO3KWU+hdOPJW1sA3MQMt4o8UFHuIPqpGBc01LPT1Nv88Uv1Bg5oF
         23GzELnxRXMFZDS3uGfxt6rJxACC7KVExpbQU3ynbi4awhihMYMewuLwGVcsQrsvguHF
         iqFQ==
X-Gm-Message-State: AOJu0YwEfuoH+8//f9jQHN01hj0/Ad83jfZ4+tsgqr+RbQGMW8eOcnwD
	jEStFqbhE1mdehxG8Q8G9OrVMGsu7+f8lcYV+rzyDHrMC6dsrw==
X-Google-Smtp-Source: AGHT+IGVjWz9wMq7xYmoicAdbFoH9a7wfBJzmq0z3GvW/rzznkA0qjHQjxXEsUVh3SMLvHcgmn++qQTg1DFr6DAfj7o=
X-Received: by 2002:a17:906:7695:b0:9ae:6196:d80e with SMTP id
 o21-20020a170906769500b009ae6196d80emr5276366ejm.18.1696015101147; Fri, 29
 Sep 2023 12:18:21 -0700 (PDT)
MIME-Version: 1.0
From: Shane Flandermeyer <shaneflandermeyer@gmail.com>
Date: Fri, 29 Sep 2023 14:18:09 -0500
Message-ID: <CAHN2CUf=xOzHmyRBaaXMWSuv5ZrprVEaO-BPXq+dH21NtxAkjQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: QX2LCCLBN6HHCIDKXQLIEQJ3ZXU6B46J
X-Message-ID-Hash: QX2LCCLBN6HHCIDKXQLIEQJ3ZXU6B46J
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QX2LCCLBN6HHCIDKXQLIEQJ3ZXU6B46J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4649475374964813757=="

--===============4649475374964813757==
Content-Type: multipart/alternative; boundary="000000000000a340a00606844949"

--000000000000a340a00606844949
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm trying to configure my X310 to transmit at its full 200 MS/s rate
without underflows. People have recommended DPDK, but it seems that DPDK
can't find the X310 when I try to run scripts. I can use the X310 when I
don't bind the NIC to vfio-pci, but running the benchmark_rate script with
DPDK (as root) gives the following:

$ ./benchmark_rate --rx_rate 200e6 --tx_rate 200e6 --args
"addr=192.168.30.2,use_dpdk=1"

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
UHD_4.5.0.HEAD-0-g471af98f
EAL: Detected CPU lcores: 32
EAL: Detected NUMA nodes: 1
EAL: Detected shared linkage of DPDK
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: Selected IOVA mode 'VA'
EAL: No available 1048576 kB hugepages reported
EAL: VFIO support initialized
EAL: Using IOMMU type 1 (Type 1)
EAL: Ignore mapping IO port bar(2)
EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.0 (socket 0)
EAL: Ignore mapping IO port bar(2)
EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.1 (socket 0)
TELEMETRY: No legacy callbacks, legacy socket not created
[ERROR] [DPDK] Could not find route to destination address 192.168.30.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
find route to destination address 192.168.30.2
[00:00:00.000300] Creating the usrp device with:
addr=192.168.30.2,use_dpdk=1...
[ERROR] [DPDK] Could not find route to destination address 192.168.30.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not
find route to destination address 192.168.30.2
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.30.2
    use_dpdk: 1

*Additional info that may be helpful:*
- After binding the NIC, dpdk-devbind gives the following

$ dpdk-devbind.py -s

Network devices using DPDK-compatible driver
============================================
0000:61:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
drv=vfio-pci unused=ixgbe
0000:61:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
drv=vfio-pci unused=ixgbe

Network devices using kernel driver
===================================
0000:64:00.0 'I210 Gigabit Network Connection 1533' if=enp100s0 drv=igb
unused=vfio-pci
0000:6a:00.0 'Ethernet Controller 10G X550T 1563' if=enp106s0f0 drv=ixgbe
unused=vfio-pci *Active*
0000:6a:00.1 'Ethernet Controller 10G X550T 1563' if=enp106s0f1 drv=ixgbe
unused=vfio-pci

No 'Baseband' devices detected
==============================

Crypto devices using kernel driver
==================================
0000:24:00.1 'Starship/Matisse Cryptographic Coprocessor PSPCPP 1486'
drv=ccp unused=vfio-pci

No 'DMA' devices detected
=========================

No 'Eventdev' devices detected
==============================

No 'Mempool' devices detected
=============================

No 'Compress' devices detected
==============================

No 'Misc (rawdev)' devices detected
===================================

No 'Regex' devices detected
===========================

- My configuration file is located at /root/.config/uhd.conf, and has the
following contents:
[use_dpdk=1]
dpdk-mtu=9000
dpdk-driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0
dpdk-corelist=0,1
dpdk-num-mbufs=4095
dpdk-mbufs-cache-size=315
dpdk_link_timeout=9000

[dpdk-mac=90:e2:ba:dd:5b:cc]
dpdk-io-cpu = 1
dpdk-ipv4 = 192.168.30.1/24

Does anyone have any ideas for why it isn't working? Thank you!

--000000000000a340a00606844949
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I&#39;m trying to=
 configure my X310 to transmit at its full 200 MS/s rate without underflows=
. People have recommended DPDK, but it seems that DPDK can&#39;t find the X=
310 when I try to run scripts. I can use the X310 when I don&#39;t bind the=
 NIC to vfio-pci, but running the benchmark_rate script with DPDK (as root)=
 gives the following:<br></div><div><br></div>$ ./benchmark_rate --rx_rate =
200e6 --tx_rate 200e6 --args &quot;addr=3D192.168.30.2,use_dpdk=3D1&quot;<b=
r><br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;=
 UHD_4.5.0.HEAD-0-g471af98f<br>EAL: Detected CPU lcores: 32<br>EAL: Detecte=
d NUMA nodes: 1<br>EAL: Detected shared linkage of DPDK<br>EAL: Multi-proce=
ss socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected IOVA mode &#39;VA&#3=
9;<br>EAL: No available 1048576 kB hugepages reported<br>EAL: VFIO support =
initialized<br>EAL: Using IOMMU type 1 (Type 1)<br>EAL: Ignore mapping IO p=
ort bar(2)<br>EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:=
00.0 (socket 0)<br>EAL: Ignore mapping IO port bar(2)<br>EAL: Probe PCI dri=
ver: net_ixgbe (8086:10fb) device: 0000:61:00.1 (socket 0)<br>TELEMETRY: No=
 legacy callbacks, legacy socket not created<br>[ERROR] [DPDK] Could not fi=
nd route to destination address 192.168.30.2<br>[ERROR] [X300] X300 Network=
 discovery error RuntimeError: DPDK: Could not find route to destination ad=
dress 192.168.30.2<br>[00:00:00.000300] Creating the usrp device with: addr=
=3D192.168.30.2,use_dpdk=3D1...<br>[ERROR] [DPDK] Could not find route to d=
estination address 192.168.30.2<br>[ERROR] [X300] X300 Network discovery er=
ror RuntimeError: DPDK: Could not find route to destination address 192.168=
.30.2<br>Error: LookupError: KeyError: No devices found for -----&gt;<br>De=
vice Address:<br>=C2=A0 =C2=A0 addr: 192.168.30.2<br>=C2=A0 =C2=A0 use_dpdk=
: 1<br><div><br></div><div><b>Additional info that may be helpful:</b></div=
><div>- After binding the NIC, dpdk-devbind gives the following</div><div><=
br></div><div>$ dpdk-devbind.py -s<br><br>Network devices using DPDK-compat=
ible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>0000:61:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39;=
 drv=3Dvfio-pci unused=3Dixgbe<br>0000:61:00.1 &#39;82599ES 10-Gigabit SFI/=
SFP+ Network Connection 10fb&#39; drv=3Dvfio-pci unused=3Dixgbe<br><br>Netw=
ork devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:=
64:00.0 &#39;I210 Gigabit Network Connection 1533&#39; if=3Denp100s0 drv=3D=
igb unused=3Dvfio-pci <br>0000:6a:00.0 &#39;Ethernet Controller 10G X550T 1=
563&#39; if=3Denp106s0f0 drv=3Dixgbe unused=3Dvfio-pci *Active*<br>0000:6a:=
00.1 &#39;Ethernet Controller 10G X550T 1563&#39; if=3Denp106s0f1 drv=3Dixg=
be unused=3Dvfio-pci <br><br>No &#39;Baseband&#39; devices detected<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br><br>Crypto devices using kernel driver<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>0000:24:00.1 &#39;Starship/Matisse Cryptographic Coprocesso=
r PSPCPP 1486&#39; drv=3Dccp unused=3Dvfio-pci <br><br>No &#39;DMA&#39; dev=
ices detected<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br><br>No &#39;Eventdev&#39; devices detected<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br><br>No &#39;Mempool&#39; devices detected<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
><br>No &#39;Compress&#39; devices detected<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>No &=
#39;Misc (rawdev)&#39; devices detected<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br><br>No &#39;Regex&#39; devices detected<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div>=
<div>- My configuration file is located at /root/.config/uhd.conf, and has =
the following contents:</div><div>[use_dpdk=3D1]<br>dpdk-mtu=3D9000<br>dpdk=
-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0<br>dpdk-corelist=3D0,1<b=
r>dpdk-num-mbufs=3D4095<br>dpdk-mbufs-cache-size=3D315<br>dpdk_link_timeout=
=3D9000<br>=C2=A0 =C2=A0 <br>[dpdk-mac=3D90:e2:ba:dd:5b:cc]<br>dpdk-io-cpu =
=3D 1<br>dpdk-ipv4 =3D <a href=3D"http://192.168.30.1/24">192.168.30.1/24</=
a></div><div><br></div><div>Does anyone have any ideas for why it isn&#39;t=
 working? Thank you!<br></div></div>

--000000000000a340a00606844949--

--===============4649475374964813757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4649475374964813757==--
