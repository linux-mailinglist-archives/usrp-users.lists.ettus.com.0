Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B799E60C3
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 23:41:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE7333858A7
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 17:41:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733438493; bh=pFulh4pmu7RbnIEhps1zDDYrX7A43j9XWAoueDDM3b8=;
	h=Date:References:In-Reply-To:From:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Yv2eKwsTz75AYCyWhitgIRUedrEHU3RBzcuKhOgTX47Zb3ye0TLEDSq6cba3B3ykU
	 kgJPxfAW64l9tB+H85iieVs1HpvOG3P4eXQzgS8BJgizvGEfrX40incxSQMu6RnUWT
	 lSKRx7uogfZegvP9JCa9Jq/8TVJG8mXK3dN3tr8sZA4G9i1XrFFhILS0Nm/NlTsOMz
	 HA6rnKgkFVwZWQ1oZqqvlrfGOgXt82Boe1xCwrl6x1jFoSPQXsiSWgsN9onUF0S6E9
	 sBM3uxp1Ud5CNBT0CmeYOcHToAFFNmLBaupV4G+Pf4dYkLDSY4T/Rw1uB5Z/mAly+j
	 X5Hqem0UaDBwQ==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mm2.emwd.com (Postfix) with ESMTPS id 731193859F0
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 17:39:46 -0500 (EST)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-515e3c2ac63so343284e0c.0
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 14:39:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733438385; x=1734043185;
        h=cc:to:from:subject:message-id:in-reply-to:references:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/TVZmqDHNW3HkSzS82gk8QUnxnQNFdJZqs0PHoDqgo=;
        b=Tj8R3j8ggxStken5L0m5QIeuvilYNevmfYEZMF5J9fxz4rotrQHpvAFPPTu5siF5/E
         +mBCFd4PbdZUXaAMGmXYPTF09UNxss5vfLleGgZxD0McndQRMArLuRHwT6k5gYqdSCOi
         5MNWqRkgMgp4TJ3O3sS2BEbgGsSFaiywr3X5jAXUi+wTEm8SwX6qm6joH88WRXj+GbG1
         sY9KIEQHwXihGzW/DznAwPJjPp5X4pBP1eyppnGoiGrHGRs4/me1Hs3V1DS0ZoOkosog
         VCfy/OVfyKmy97pRviyEpoM8NejoAQnoUeCOEMPBcIFt7/+VlGeqkFdKIXdf78BgLDMJ
         D11A==
X-Gm-Message-State: AOJu0YyY/gALNCEXdVo/Jz2aO6rcusPzLpeV34uk+WypZuCkWLnjr62y
	7plN+dyG4ymdmC+ZSQU2VgGdSKmGMhHsgVKmMr2ZpOxTadhtKW/tGmfFcBNJdpSPiAvzVTzP//b
	t5tXxOWDG2M88m6IlI/jaiS5A3/ypYWWmpLpbVKUeFFg4pYrksZXkwyU++AIzPmc8oipFDw==
X-Gm-Gg: ASbGncuzQf/5Gr2+MEmQuFj3hh798Cn1mUN9K863UJj+azS9jBaiRm4gv2VzpYRTopU
	HMpAbkO+4ZSvljw==
X-Google-Smtp-Source: AGHT+IFCP5gKHlwexXT8O74J8Ye1PsqW1Drf5tIJARXtsG6+Nr4NQLuFWh0s12Be+9P9jSyD7H6J0y+a5GAo7NpMRocTkgZ1Vh8b+A==
X-Received: by 2002:a05:6122:918:b0:515:e446:b9f2 with SMTP id 71dfb90a1353d-515fcb0529emr1408578e0c.12.1733438385677;
        Thu, 05 Dec 2024 14:39:45 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Dec 2024 20:15:32 +0100
References: <n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com>
	<c6884d1d-c5d8-4e18-a65c-238dd84662b2@gmail.com>
	<CAO=xj9WWy4FwmOVvK1D2-XNKNnvn4q7vUeDv_u=iXbz4zycJ7A@mail.gmail.com>
	<54f72452-ae5c-4b91-a382-ad6324ee69c2@gmail.com>
In-Reply-To: <54f72452-ae5c-4b91-a382-ad6324ee69c2@gmail.com>
Message-ID: <CAO=xj9X1GjMQeudKEwG_QW+vjb6sx-wnQeWTLD3Cq30k32YEOw@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: EVX6YIRASDZ2ZF3GW4D4ELE5NOBZEIUU
X-Message-ID-Hash: EVX6YIRASDZ2ZF3GW4D4ELE5NOBZEIUU
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EVX6YIRASDZ2ZF3GW4D4ELE5NOBZEIUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8377929620684261121=="

--===============8377929620684261121==
Content-Type: multipart/alternative; boundary="000000000000e1926606288ab811"

--000000000000e1926606288ab811
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello
It 8s not rj45.it is sfp

On Thu, Dec 5, 2024, 7:47=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail.c=
om>
wrote:

> On 05/12/2024 12:27, Houshang wrote:
>
> Hi Marcus
> Here it is:
>
> ad@bm-super11-intel:~$ sudo /usr/local/lib/uhd/examples/benchmark_rate
> --args "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=
=3D125e6"
> --rx_rate 25e6 --tx_rate 25e6
>
> My recollection of your config is that 10.10.0.100 is the RJ-45 you use
> for your management port?  What if you use
>   one of the SFP+ port addresses for the same thing?
>
> 25Msps is the absolute limit of streaming over a 1GiGe connection, and I
> think 10.10.0.100 was the RJ-45 port on
>   your configuration as I recall.   It's likely that the combined network
> traffic of full-duplex streaming and management
>   traffic cause your 1GIGe interface to totally saturate and start losing
> critical things.
>
>
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11;
> UHD_4.7.0.HEAD-0-ga5ed1872
> [00:00:00.000131] Creating the usrp device with:
> type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D125e6..=
.
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=
=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.0.100,master_cloc=
k_rate=3D125e6
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DXG,master_clock_rate=3D125e6,mgmt_addr=3D10.10.0.100,name=3Dni-n3=
xx-32000F1,product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'.
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
> [00:00:22.270989651] Setting device timestamp to 0...
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
> decimation =3D dsp_rate/samp_rate -> 5
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> Setting TX spp to 364
> [00:00:22.285623308] Testing receive rate 25.000000 Msps on 1 channels
> [00:00:22.290554120] Testing transmit rate 25.000000 Msps on 1 channels
> UOUUUUUUUUUUUUUUUUUterminate called after throwing an instance of
> 'uhd::op_timeout'
>   what():  RfnocError: OpTimeout: Control operation timed out waiting for
> ACK
> Aborted
> ad@bm-super11-intel:~$  ping 10.10.0.100
> PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.
> 64 bytes from 10.10.0.100: icmp_seq=3D1 ttl=3D64 time=3D0.311 ms
> 64 bytes from 10.10.0.100: icmp_seq=3D2 ttl=3D64 time=3D0.297 ms
> ^C
> --- 10.10.0.100 ping statistics ---
> 2 packets transmitted, 2 received, 0% packet loss, time 1006ms
> rtt min/avg/max/mdev =3D 0.297/0.304/0.311/0.007 ms
> ad@bm-super11-intel:~$  uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11;
> UHD_4.7.0.HEAD-0-ga5ed1872
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 32000F1
>     addr: 10.10.0.100
>     claimed: False
>     fpga: XG
>     mgmt_addr: 10.10.0.100
>     name: ni-n3xx-32000F1
>     product: n310
>     type: n3xx
>
>
> ad@bm-super11-intel:~$
>
> On Thu, 5 Dec 2024 at 18:23, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 05/12/2024 11:44, houshang.azizi@accelleran.com wrote:
>>
>> Hello
>>
>> Have you managed to fix this?
>>
>> I have a similar issue as you can see below.
>>
>> Thanks
>>
>> Well, again, what happens when you do the simple benchmark_rate test
>> *WITHOUT* DPDK involved?
>>
>>
>>
>> ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py --status
>>
>> Network devices using DPDK-compatible driver
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> 0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-p=
ci
>> unused=3Di40e
>>
>> 0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-p=
ci
>> unused=3Di40e
>>
>> Network devices using kernel driver
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> 0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=3Deno1 drv=3Dixgbe
>> unused=3Dvfio-pci *Active*
>>
>> 0000:04:00.1 'Ethernet Controller 10G X550T 1563' if=3Deno2 drv=3Dixgbe
>> unused=3Dvfio-pci
>>
>> 0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dens1f0
>> drv=3Di40e unused=3Dvfio-pci
>>
>> 0000:43:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dens1f3
>> drv=3Di40e unused=3Dvfio-pci *Active*
>>
>> 0000:70:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dens2f0
>> drv=3Di40e unused=3Dvfio-pci
>>
>> 0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dens2f1
>> drv=3Di40e unused=3Dvfio-pci
>>
>> Other Baseband devices
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> 0000:f7:00.0 'Device 57c0' unused=3Dvfio-pci
>>
>> No 'Crypto' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>>
>> DMA devices using kernel driver
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>>
>> 0000:f6:01.0 'Device 0b25' drv=3Didxd unused=3Dvfio-pci
>>
>> No 'Eventdev' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>>
>> No 'Mempool' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>>
>> No 'Compress' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>>
>> No 'Misc (rawdev)' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> No 'Regex' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>
>> No 'ML' devices detected
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> ad@bm-super11-intel:~/accelleran$
>>
>> ad@bm-super11-intel:~/accelleran$ uhd_find_devices
>>
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11;
>> UHD_4.7.0.HEAD-0-ga5ed1872
>>
>> --------------------------------------------------
>>
>> -- UHD Device 0
>>
>> --------------------------------------------------
>>
>> Device Address:
>>
>> serial: 32000F1
>>
>> addr: 10.10.0.100
>>
>> claimed: False
>>
>> fpga: XG
>>
>> mgmt_addr: 10.10.0.100
>>
>> name: ni-n3xx-32000F1
>>
>> product: n310
>>
>> type: n3xx
>>
>> ad@bm-super11-intel:~/accelleran$ sudo
>> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev "=
A:0
>> B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channe=
ls
>> 0,1 --args
>> "addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,ma=
ster_clock_rate=3D125e6,use_dpdk=3D1"
>>
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11;
>> UHD_4.7.0.HEAD-0-ga5ed1872
>>
>> EAL: Detected CPU lcores: 64
>>
>> EAL: Detected NUMA nodes: 1
>>
>> EAL: Detected shared linkage of DPDK
>>
>> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>>
>> EAL: Selected IOVA mode 'VA'
>>
>> EAL: VFIO support initialized
>>
>> EAL: Using IOMMU type 1 (Type 1)
>>
>> EAL: Ignore mapping IO port bar(1)
>>
>> EAL: Ignore mapping IO port bar(4)
>>
>> EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.1 (socket
>> 0)
>>
>> EAL: Ignore mapping IO port bar(1)
>>
>> EAL: Ignore mapping IO port bar(4)
>>
>> EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 (socket
>> 0)
>>
>> TELEMETRY: No legacy callbacks, legacy socket not created
>>
>> i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for RX
>>
>> i40e_dev_rx_queue_start(): Failed to allocate RX queue mbuf
>>
>> [ERROR] [DPDK] Port 1: Could not start device
>>
>> EAL: FATAL: already called initialization.
>>
>> EAL: already called initialization.
>>
>> [00:00:00.000306] Creating the usrp device with:
>> addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,mas=
ter_clock_rate=3D125e6,use_dpdk=3D1...
>>
>> EAL: FATAL: already called initialization.
>>
>> EAL: already called initialization.
>>
>> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Failure
>> to start device
>>
>> [ERROR] [DPDK] Error with EAL initialization
>>
>> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
>> initialization
>>
>> [ERROR] [DPDK] Error with EAL initialization
>>
>> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
>> initialization
>>
>> EAL: FATAL: already called initialization.
>>
>> EAL: already called initialization.
>>
>> Error: LookupError: KeyError: No devices found for ----->
>>
>> Device Address:
>>
>> addr: 10.10.1.100
>>
>> second_addr: 10.10.2.100
>>
>> mgmt_addr: 10.10.0.100
>>
>> master_clock_rate: 125e6
>>
>> use_dpdk: 1
>>
>> [ERROR] [DPDK] Error with EAL initialization
>>
>> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
>> initialization
>>
>> Segmentation fault
>>
>> ad@bm-super11-intel:~/accelleran$
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>
> --
>
> *Houshang Azizi*
>
> *Test Engineer*
> [image: logo] <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <Email@accelleran.com>*
>
>
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [=
image:
> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D=
1>
>
>
>
>

--000000000000e1926606288ab811
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello<div dir=3D"auto">It 8s not <a href=3D"http://rj45.i=
t">rj45.it</a> is sfp</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Dec 5, 2024, 7:47=E2=80=AFPM Marcus D. L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 05/12/2024 12:27, Houshang wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi Marcus</div>
        <div>Here it is:</div>
        <div><br>
        </div>
        <div><span style=3D"font-family:monospace">ad@bm-super11-intel:~$
            sudo /usr/local/lib/uhd/examples/benchmark_rate --args
            &quot;type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_cloc=
k_rate=3D125e6&quot;
            --rx_rate 25e6 --tx_rate 25e6<br>
          </span></div>
      </div>
    </blockquote>
    My recollection of your config is that 10.10.0.100 is the RJ-45 you
    use for your management port?=C2=A0 What if you use<br>
    =C2=A0 one of the SFP+ port addresses for the same thing?<br>
    <br>
    25Msps is the absolute limit of streaming over a 1GiGe connection,
    and I think 10.10.0.100 was the RJ-45 port on<br>
    =C2=A0 your configuration as I recall.=C2=A0=C2=A0 It&#39;s likely that=
 the combined
    network traffic of full-duplex streaming and management<br>
    =C2=A0 traffic cause your 1GIGe interface to totally saturate and start
    losing critical things.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><span style=3D"font-family:monospace"><br>
            [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
            DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>
            [00:00:00.000131] Creating the usrp device with:
            type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=
=3D125e6...<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3D=
ni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.0.100,master_clock_r=
ate=3D125e6<br>
            [WARNING] [MPM.RPCServer] A timeout event occured!<br>
            [INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,master_clock_rate=3D125e6,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx=
-32000F1,product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal&#39;=
.<br>
            Using Device: Single USRP:<br>
            =C2=A0 Device: N300-Series Device<br>
            =C2=A0 Mboard 0: n310<br>
            =C2=A0 RX Channel: 0<br>
            =C2=A0 =C2=A0 RX DSP: 0<br>
            =C2=A0 =C2=A0 RX Dboard: A<br>
            =C2=A0 =C2=A0 RX Subdev: Magnesium<br>
            =C2=A0 RX Channel: 1<br>
            =C2=A0 =C2=A0 RX DSP: 1<br>
            =C2=A0 =C2=A0 RX Dboard: A<br>
            =C2=A0 =C2=A0 RX Subdev: Magnesium<br>
            =C2=A0 RX Channel: 2<br>
            =C2=A0 =C2=A0 RX DSP: 2<br>
            =C2=A0 =C2=A0 RX Dboard: B<br>
            =C2=A0 =C2=A0 RX Subdev: Magnesium<br>
            =C2=A0 RX Channel: 3<br>
            =C2=A0 =C2=A0 RX DSP: 3<br>
            =C2=A0 =C2=A0 RX Dboard: B<br>
            =C2=A0 =C2=A0 RX Subdev: Magnesium<br>
            =C2=A0 TX Channel: 0<br>
            =C2=A0 =C2=A0 TX DSP: 0<br>
            =C2=A0 =C2=A0 TX Dboard: A<br>
            =C2=A0 =C2=A0 TX Subdev: Magnesium<br>
            =C2=A0 TX Channel: 1<br>
            =C2=A0 =C2=A0 TX DSP: 1<br>
            =C2=A0 =C2=A0 TX Dboard: A<br>
            =C2=A0 =C2=A0 TX Subdev: Magnesium<br>
            =C2=A0 TX Channel: 2<br>
            =C2=A0 =C2=A0 TX DSP: 2<br>
            =C2=A0 =C2=A0 TX Dboard: B<br>
            =C2=A0 =C2=A0 TX Subdev: Magnesium<br>
            =C2=A0 TX Channel: 3<br>
            =C2=A0 =C2=A0 TX DSP: 3<br>
            =C2=A0 =C2=A0 TX Dboard: B<br>
            =C2=A0 =C2=A0 TX Subdev: Magnesium<br>
            <br>
            [00:00:22.270989651] Setting device timestamp to 0...<br>
            [WARNING] [0/DDC#0] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#0] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#0] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#0] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#1] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#1] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#1] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DDC#1] The requested decimation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even decimation to ensure that a halfband filter
            is enabled.<br>
            Decimations factorable by 4 will enable 2 halfbands, those
            factorable by 8 will enable 3 halfbands.<br>
            decimation =3D dsp_rate/samp_rate -&gt; 5<br>
            [WARNING] [0/DUC#0] The requested interpolation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even interpolation to ensure that a halfband
            filter is enabled.<br>
            <br>
            [WARNING] [0/DUC#0] The requested interpolation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even interpolation to ensure that a halfband
            filter is enabled.<br>
            <br>
            [WARNING] [0/DUC#1] The requested interpolation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even interpolation to ensure that a halfband
            filter is enabled.<br>
            <br>
            [WARNING] [0/DUC#1] The requested interpolation is odd; the
            user should expect passband CIC rolloff.<br>
            Select an even interpolation to ensure that a halfband
            filter is enabled.<br>
            <br>
            Setting TX spp to 364<br>
            [00:00:22.285623308] Testing receive rate 25.000000 Msps on
            1 channels<br>
            [00:00:22.290554120] Testing transmit rate 25.000000 Msps on
            1 channels<br>
            UOUUUUUUUUUUUUUUUUUterminate called after throwing an
            instance of &#39;uhd::op_timeout&#39;<br>
            =C2=A0 what(): =C2=A0RfnocError: OpTimeout: Control operation t=
imed
            out waiting for ACK<br>
            Aborted<br>
            ad@bm-super11-intel:~$ =C2=A0ping 10.10.0.100<br>
            PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.<br>
            64 bytes from <a href=3D"http://10.10.0.100" target=3D"_blank" =
rel=3D"noreferrer">10.10.0.100</a>: icmp_seq=3D1 ttl=3D64
            time=3D0.311 ms<br>
            64 bytes from <a href=3D"http://10.10.0.100" target=3D"_blank" =
rel=3D"noreferrer">10.10.0.100</a>: icmp_seq=3D2 ttl=3D64
            time=3D0.297 ms<br>
            ^C<br>
            --- 10.10.0.100 ping statistics ---<br>
            2 packets transmitted, 2 received, 0% packet loss, time
            1006ms<br>
            rtt min/avg/max/mdev =3D 0.297/0.304/0.311/0.007 ms<br>
            ad@bm-super11-intel:~$ =C2=A0uhd_find_devices<br>
            [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
            DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>
            --------------------------------------------------<br>
            -- UHD Device 0<br>
            --------------------------------------------------<br>
            Device Address:<br>
            =C2=A0 =C2=A0 serial: 32000F1<br>
            =C2=A0 =C2=A0 addr: 10.10.0.100<br>
            =C2=A0 =C2=A0 claimed: False<br>
            =C2=A0 =C2=A0 fpga: XG<br>
            =C2=A0 =C2=A0 mgmt_addr: 10.10.0.100<br>
            =C2=A0 =C2=A0 name: ni-n3xx-32000F1<br>
            =C2=A0 =C2=A0 product: n310<br>
            =C2=A0 =C2=A0 type: n3xx<br>
            <br>
            <br>
            ad@bm-super11-intel:~$ </span><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, 5 Dec 2024 at 18:23,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 05/12/2024 11:44, <a href=3D"mailto:houshang.azizi@acce=
lleran.com" target=3D"_blank" rel=3D"noreferrer">houshang.azizi@accelleran.=
com</a>
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>Hello</p>
              <p>Have you managed to fix this?</p>
              <p>I have a similar issue as you can see below.</p>
              <p>Thanks</p>
            </blockquote>
            Well, again, what happens when you do the simple
            benchmark_rate test *WITHOUT* DPDK involved?<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <p><br>
              </p>
              <p><code>ad@bm-super11-intel:~/accelleran$ sudo
                  dpdk-devbind.py --status</code></p>
              <p><code>Network devices using DPDK-compatible driver</code><=
/p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</code></p>
              <p><code>0000:43:00.1 &#39;Ethernet Controller X710 for 10GbE
                  SFP+ 1572&#39; drv=3Dvfio-pci unused=3Di40e</code></p>
              <p><code>0000:43:00.2 &#39;Ethernet Controller X710 for 10GbE
                  SFP+ 1572&#39; drv=3Dvfio-pci unused=3Di40e</code></p>
              <p><code>Network devices using kernel driver</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>0000:04:00.0 &#39;Ethernet Controller 10G X550T 1563=
&#39;
                  if=3Deno1 drv=3Dixgbe unused=3Dvfio-pci *Active*</code></=
p>
              <p><code>0000:04:00.1 &#39;Ethernet Controller 10G X550T 1563=
&#39;
                  if=3Deno2 drv=3Dixgbe unused=3Dvfio-pci </code></p>
              <p><code>0000:43:00.0 &#39;Ethernet Controller X710 for 10GbE
                  SFP+ 1572&#39; if=3Dens1f0 drv=3Di40e unused=3Dvfio-pci <=
/code></p>
              <p><code>0000:43:00.3 &#39;Ethernet Controller X710 for 10GbE
                  SFP+ 1572&#39; if=3Dens1f3 drv=3Di40e unused=3Dvfio-pci *=
Active*</code></p>
              <p><code>0000:70:00.0 &#39;Ethernet Controller X710 for 10GbE
                  SFP+ 1572&#39; if=3Dens2f0 drv=3Di40e unused=3Dvfio-pci <=
/code></p>
              <p><code>0000:70:00.1 &#39;Ethernet Controller X710 for 10GbE
                  SFP+ 1572&#39; if=3Dens2f1 drv=3Di40e unused=3Dvfio-pci <=
/code></p>
              <p><code>Other Baseband devices</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</code></p>
              <p><code>0000:f7:00.0 &#39;Device 57c0&#39; unused=3Dvfio-pci=
</code></p>
              <p><code>No &#39;Crypto&#39; devices detected</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>DMA devices using kernel driver</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>0000:f6:01.0 &#39;Device 0b25&#39; drv=3Didxd
                  unused=3Dvfio-pci </code></p>
              <p><code>No &#39;Eventdev&#39; devices detected</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>No &#39;Mempool&#39; devices detected</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>No &#39;Compress&#39; devices detected</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>No &#39;Misc (rawdev)&#39; devices detected</code></=
p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>No &#39;Regex&#39; devices detected</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>No &#39;ML&#39; devices detected</code></p>
              <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</code></p>
              <p><code>ad@bm-super11-intel:~/accelleran$ </code></p>
              <p><code>ad@bm-super11-intel:~/accelleran$
                  uhd_find_devices</code></p>
              <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0;
                  Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</cod=
e></p>
              <p><code>--------------------------------------------------</=
code></p>
              <p><code>-- UHD Device 0</code></p>
              <p><code>--------------------------------------------------</=
code></p>
              <p><code>Device Address:</code></p>
              <p><code> serial: 32000F1</code></p>
              <p><code> addr: 10.10.0.100</code></p>
              <p><code> claimed: False</code></p>
              <p><code> fpga: XG</code></p>
              <p><code> mgmt_addr: 10.10.0.100</code></p>
              <p><code> name: ni-n3xx-32000F1</code></p>
              <p><code> product: n310</code></p>
              <p><code> type: n3xx</code></p>
              <p><code>ad@bm-super11-intel:~/accelleran$ sudo
                  /usr/local/lib/uhd/examples/benchmark_rate --rx_rate
                  125e6 --rx_subdev &quot;A:0 B:0&quot; --rx_channels 0,1
                  --tx_rate 125e6 --tx_subdev &quot;A:0 B:0&quot; --tx_chan=
nels
                  0,1 --args
&quot;addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,=
master_clock_rate=3D125e6,use_dpdk=3D1&quot;</code></p>
              <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0;
                  Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</cod=
e></p>
              <p><code>EAL: Detected CPU lcores: 64</code></p>
              <p><code>EAL: Detected NUMA nodes: 1</code></p>
              <p><code>EAL: Detected shared linkage of DPDK</code></p>
              <p><code>EAL: Multi-process socket
                  /var/run/dpdk/rte/mp_socket</code></p>
              <p><code>EAL: Selected IOVA mode &#39;VA&#39;</code></p>
              <p><code>EAL: VFIO support initialized</code></p>
              <p><code>EAL: Using IOMMU type 1 (Type 1)</code></p>
              <p><code>EAL: Ignore mapping IO port bar(1)</code></p>
              <p><code>EAL: Ignore mapping IO port bar(4)</code></p>
              <p><code>EAL: Probe PCI driver: net_i40e (8086:1572)
                  device: 0000:43:00.1 (socket 0)</code></p>
              <p><code>EAL: Ignore mapping IO port bar(1)</code></p>
              <p><code>EAL: Ignore mapping IO port bar(4)</code></p>
              <p><code>EAL: Probe PCI driver: net_i40e (8086:1572)
                  device: 0000:43:00.2 (socket 0)</code></p>
              <p><code>TELEMETRY: No legacy callbacks, legacy socket not
                  created</code></p>
              <p><code>i40e_alloc_rx_queue_mbufs(): Failed to allocate
                  mbuf for RX</code></p>
              <p><code>i40e_dev_rx_queue_start(): Failed to allocate RX
                  queue mbuf</code></p>
              <p><code>[ERROR] [DPDK] Port 1: Could not start device</code>=
</p>
              <p><code>EAL: FATAL: already called initialization.</code></p=
>
              <p><code>EAL: already called initialization.</code></p>
              <p><code>[00:00:00.000306] Creating the usrp device with:
addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,master=
_clock_rate=3D125e6,use_dpdk=3D1...</code></p>
              <p><code>EAL: FATAL: already called initialization.</code></p=
>
              <p><code>EAL: already called initialization.</code></p>
              <p><code>[ERROR] [X300] X300 Network discovery error
                  RuntimeError: DPDK: Failure to start device</code></p>
              <p><code>[ERROR] [DPDK] Error with EAL initialization</code><=
/p>
              <p><code>[ERROR] [UHD] Device discovery error:
                  RuntimeError: Error with EAL initialization</code></p>
              <p><code>[ERROR] [DPDK] Error with EAL initialization</code><=
/p>
              <p><code>[ERROR] [UHD] Device discovery error:
                  RuntimeError: Error with EAL initialization</code></p>
              <p><code>EAL: FATAL: already called initialization.</code></p=
>
              <p><code>EAL: already called initialization.</code></p>
              <p><code>Error: LookupError: KeyError: No devices found
                  for -----&gt;</code></p>
              <p><code>Device Address:</code></p>
              <p><code> addr: 10.10.1.100</code></p>
              <p><code> second_addr: 10.10.2.100</code></p>
              <p><code> mgmt_addr: 10.10.0.100</code></p>
              <p><code> master_clock_rate: 125e6</code></p>
              <p><code> use_dpdk: 1</code></p>
              <p><code>[ERROR] [DPDK] Error with EAL initialization</code><=
/p>
              <p><code>[ERROR] [X300] X300 Network discovery error
                  RuntimeError: Error with EAL initialization</code></p>
              <p><code>Segmentation fault</code></p>
              <p><code>ad@bm-super11-intel:~/accelleran$</code></p>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>
</pre>
            </blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>=
<br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@li=
sts.ettus.com</a><br>
        </blockquote>
      </div>
      <div><br clear=3D"all">
      </div>
      <br>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,173,238)">Houshang
                  Azizi</span></b><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif"></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test
                  Engineer</span></b></p>
          </div>
          <a href=3D"https://www.accelleran.com/" rel=3D"noopener noreferre=
r" style=3D"color:rgb(51,122,183);background-color:transparent" target=3D"_=
blank"><font size=3D"2"><img alt=3D"logo" src=3D"https://accelleran.com/wp-=
content/uploads/2024/04/Accelleran_NewLogo_NoBaseline.png" style=3D"border:=
0px;vertical-align:middle;width:143px;height:auto" width=3D"143" border=3D"=
0"></font></a>
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif;color:black">(32)
                  492195241</span></b><span style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif"></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif"><b><span style=3D"color:black"><a href=3D"mail=
to:Email@accelleran.com" target=3D"_blank" rel=3D"noreferrer">houshang.aziz=
i@accelleran.com</a></span></b></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif">=C2=A0</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank" rel=3D"noreferrer"><b><span sty=
le=3D"color:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p>
          </div>
          <p style=3D"text-align:left;margin:20px 0px"><a href=3D"https://w=
ww.linkedin.com/company/accelleran" rel=3D"noopener noreferrer" style=3D"co=
lor:rgb(51,122,183);background-color:transparent" target=3D"_blank"><img al=
t=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-genera=
tor/img/templates/simple-and-light/ln.png" style=3D"border:0px;vertical-ali=
gn:middle;height:15px;width:15px" width=3D"15" border=3D"0"></a>=C2=A0=C2=
=A0=C2=A0=C2=A0<a href=3D"https://twitter.com/accelleran" rel=3D"noopener n=
oreferrer" style=3D"color:rgb(51,122,183);background-color:transparent" tar=
get=3D"_blank"><img alt=3D"twitter icon" src=3D"https://www.mail-signatures=
.com/signature-generator/img/templates/simple-and-light/tt.png" style=3D"bo=
rder:0px;vertical-align:middle;height:15px;width:15px" width=3D"15" border=
=3D"0"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"https://www.youtube.com/chann=
el/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D1" rel=3D"noopener noreferrer" s=
tyle=3D"color:rgb(51,122,183);background-color:transparent" target=3D"_blan=
k"><img alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signatu=
re-generator/img/templates/simple-and-light/yt.png" style=3D"border:0px;ver=
tical-align:middle;height:15px;width:15px" width=3D"15" border=3D"0"></a>=
=C2=A0=C2=A0=C2=A0 <br>
          </p>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000e1926606288ab811--

--===============8377929620684261121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8377929620684261121==--
