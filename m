Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3309E5EB8
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 20:24:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 488EE3859CB
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 14:24:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733426644; bh=bTRpsObTwU1X+SRCtuEQbowst58YP8ghU1sJFrpl5g4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qVZwIhTnj4ygJ8s8QUnZTksSxdw1Ec7LvBLGFaGoqDaxiE2CbMIMnS+lXSvOoI7da
	 WejWPqwGula3aqKvIqw3iB1DeCdMnckOigtspNtdK5c7A5RIIXtTq+ZF815Har5p5p
	 4Xi9R6VLDJiC/Y5c2QC0OjmQjuqraId/J+n/Z5bbIOwRbr9aWj8fyPTsy9j7DnQCSY
	 CCfEmPoI3VY4PNintfx2d6cF8HbDx79ap3uV9M2vShHV9sZoTzaAGHti/Ze9iT8kJS
	 rlhS29hmI0uwcJpXTtgO26EqzTtdH4TEkGBglm6vJHMaHo8BlEYSPtiEgWQnDCxChl
	 n7fvuWwemV7Mg==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 22998385A34
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 14:23:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PuItKXFB";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-46684744173so21027311cf.3
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 11:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733426608; x=1734031408; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2zWg4vTaxZsHG6YSr6CcZD29mcBoQVi5XNPJngdwYFg=;
        b=PuItKXFBUuAUWKP+i3sbvc+mSgcWUyMcLQ69pFANMWQ+ALo3DK1+F3P6BS4mP+WTtE
         o9rmXh6v2dgxpz/S2tTnhfCzroqQFS9RwYviPMX5T+NYm8wHrfCR94taIF7IZBXPHYB9
         CdLKxtg7HHNLRnJktYAY8u9jfbUKs8ylE1AxwxzEthYjorvP8CAAL+HcZgC7EziF6C1F
         QEulowe6q+A1PoPTApWJYdDXb1FdEh36L9MM3AFAvgZJuxNFL+mHCnw8ezMkhL8Wl8ww
         oe3SvJMaD+BKFmyp7A0wlpQWdYqp8f4VW+J0Z7RHJ2jvBtnhKQEFDG4C4C8Py1erW03Z
         LGSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733426608; x=1734031408;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2zWg4vTaxZsHG6YSr6CcZD29mcBoQVi5XNPJngdwYFg=;
        b=pvsGJMztTEeLQMcYuf+3m77YYQWo53bhterwVZjhOY2DnQdz7wVlT1hR80aMBYGRqt
         9OypVvsTc1Pbn7IV9A3mRjmh8p0x1+y0VAMW00SZ+aszfBUBtUO5AEYfFfJ3GYxQKl/c
         1jR3aYYmxE4OphOXW+hBIh/O5y63vneKh/UHYtB6ypKftqjXBgenx2WPr58ygdwOJilu
         j3CD2LJkpYIvI3+xjPswdEA+hQQgs5h6K8t/7YAvZ7FbLjRI5UGhHNKoc90KEtbJGnzy
         f/KS+zllCAVebdm0/ayjboUksGjptJxJTcSig03c+nIEmcE8TmV0SNwwWnzH1hrtYYwQ
         4sEQ==
X-Gm-Message-State: AOJu0Yw4WmShKYQDtn1jlg6awLn4K6RzN5JhrbKhauQe5p7xwX/xtuQ/
	GdUjkHkifK8BAzh/BGUfej1S33zGQysmkBBMRki7gTRHwoQ81pdD
X-Gm-Gg: ASbGncv64gecYenvXt6PoN6FQNucZZNAfwYRsxSIq42a1qfIJ4xfowXV0vC1iNOUYBR
	5WBcQJQyksyfgV83W6/8vFA9ZjBys80T5g9JUt5LtlXQGB3sYxMSFpvBM/9b0BoK67hEPpkEgvQ
	pHMlHneMHZyCtJscvmLfXNqqCSjUom76xACsYH5BKuX1OtzZroZyoK8MQP8nSBYaUYdOFHYqISS
	Je+BWLp/wCMXzXek7KLJoFF4oIX+n0PJBEQw3Xlsofup6jm/TV+4f8XJxrF
X-Google-Smtp-Source: AGHT+IEiayL16fmgZ5rDD7L6Rj+yBWg4WYpOKc3J/4CyKojEAyC87YAOjkOxbjU2FSRCDRvicchNfQ==
X-Received: by 2002:a05:620a:24c1:b0:7b1:374d:760 with SMTP id af79cd13be357-7b6bcac2699mr63870985a.11.1733426608406;
        Thu, 05 Dec 2024 11:23:28 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d8da696d9esm9483026d6.46.2024.12.05.11.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 11:23:27 -0800 (PST)
Message-ID: <78ee03b2-2026-4970-a147-7da52b870215@gmail.com>
Date: Thu, 5 Dec 2024 14:23:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Houshang <houshang.azizi@accelleran.com>
References: <n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com>
 <c6884d1d-c5d8-4e18-a65c-238dd84662b2@gmail.com>
 <CAO=xj9WWy4FwmOVvK1D2-XNKNnvn4q7vUeDv_u=iXbz4zycJ7A@mail.gmail.com>
 <54f72452-ae5c-4b91-a382-ad6324ee69c2@gmail.com>
 <CAO=xj9X1GjMQeudKEwG_QW+vjb6sx-wnQeWTLD3Cq30k32YEOw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAO=xj9X1GjMQeudKEwG_QW+vjb6sx-wnQeWTLD3Cq30k32YEOw@mail.gmail.com>
Message-ID-Hash: WYM6LYQQN5DRXTGSQSJPPAQLTCQQEQCF
X-Message-ID-Hash: WYM6LYQQN5DRXTGSQSJPPAQLTCQQEQCF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYM6LYQQN5DRXTGSQSJPPAQLTCQQEQCF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2325273408182730858=="

This is a multi-part message in MIME format.
--===============2325273408182730858==
Content-Type: multipart/alternative;
 boundary="------------pIvZNGLwMGKFCelLEz6zykrN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pIvZNGLwMGKFCelLEz6zykrN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/12/2024 14:15, Houshang wrote:
> Hello
> It 8s not rj45.it <http://rj45.it> is sfp
My mistake.


>
> On Thu, Dec 5, 2024, 7:47=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>=20
> wrote:
>
>     On 05/12/2024 12:27, Houshang wrote:
>>     Hi Marcus
>>     Here it is:
>>
>>     ad@bm-super11-intel:~$ sudo
>>     /usr/local/lib/uhd/examples/benchmark_rate --args
>>     "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D=
125e6"
>>     --rx_rate 25e6 --tx_rate 25e6
>     My recollection of your config is that 10.10.0.100 is the RJ-45
>     you use for your management port?=C2=A0 What if you use
>     =C2=A0 one of the SFP+ port addresses for the same thing?
>
>     25Msps is the absolute limit of streaming over a 1GiGe connection,
>     and I think 10.10.0.100 was the RJ-45 port on
>     =C2=A0 your configuration as I recall.=C2=A0=C2=A0 It's likely that=
 the combined
>     network traffic of full-duplex streaming and management
>     =C2=A0 traffic cause your 1GIGe interface to totally saturate and s=
tart
>     losing critical things.
>
>
>>
>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>     DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872
>>     [00:00:00.000131] Creating the usrp device with:
>>     type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D=
125e6...
>>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>     mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F=
1,name=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.0.100,mas=
ter_clock_rate=3D125e6
>>     [WARNING] [MPM.RPCServer] A timeout event occured!
>>     [INFO] [MPM.PeriphManager] init() called with device args
>>     `fpga=3DXG,master_clock_rate=3D125e6,mgmt_addr=3D10.10.0.100,name=3D=
ni-n3xx-32000F1,product=3Dn310,clock_source=3Dinternal,time_source=3Dinte=
rnal'.
>>     Using Device: Single USRP:
>>     =C2=A0 Device: N300-Series Device
>>     =C2=A0 Mboard 0: n310
>>     =C2=A0 RX Channel: 0
>>     =C2=A0 =C2=A0 RX DSP: 0
>>     =C2=A0 =C2=A0 RX Dboard: A
>>     =C2=A0 =C2=A0 RX Subdev: Magnesium
>>     =C2=A0 RX Channel: 1
>>     =C2=A0 =C2=A0 RX DSP: 1
>>     =C2=A0 =C2=A0 RX Dboard: A
>>     =C2=A0 =C2=A0 RX Subdev: Magnesium
>>     =C2=A0 RX Channel: 2
>>     =C2=A0 =C2=A0 RX DSP: 2
>>     =C2=A0 =C2=A0 RX Dboard: B
>>     =C2=A0 =C2=A0 RX Subdev: Magnesium
>>     =C2=A0 RX Channel: 3
>>     =C2=A0 =C2=A0 RX DSP: 3
>>     =C2=A0 =C2=A0 RX Dboard: B
>>     =C2=A0 =C2=A0 RX Subdev: Magnesium
>>     =C2=A0 TX Channel: 0
>>     =C2=A0 =C2=A0 TX DSP: 0
>>     =C2=A0 =C2=A0 TX Dboard: A
>>     =C2=A0 =C2=A0 TX Subdev: Magnesium
>>     =C2=A0 TX Channel: 1
>>     =C2=A0 =C2=A0 TX DSP: 1
>>     =C2=A0 =C2=A0 TX Dboard: A
>>     =C2=A0 =C2=A0 TX Subdev: Magnesium
>>     =C2=A0 TX Channel: 2
>>     =C2=A0 =C2=A0 TX DSP: 2
>>     =C2=A0 =C2=A0 TX Dboard: B
>>     =C2=A0 =C2=A0 TX Subdev: Magnesium
>>     =C2=A0 TX Channel: 3
>>     =C2=A0 =C2=A0 TX DSP: 3
>>     =C2=A0 =C2=A0 TX Dboard: B
>>     =C2=A0 =C2=A0 TX Subdev: Magnesium
>>
>>     [00:00:22.270989651] Setting device timestamp to 0...
>>     [WARNING] [0/DDC#0] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#0] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#0] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#0] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#1] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#1] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#1] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DDC#1] The requested decimation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even decimation to ensure that a halfband filter is
>>     enabled.
>>     Decimations factorable by 4 will enable 2 halfbands, those
>>     factorable by 8 will enable 3 halfbands.
>>     decimation =3D dsp_rate/samp_rate -> 5
>>     [WARNING] [0/DUC#0] The requested interpolation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even interpolation to ensure that a halfband filter is
>>     enabled.
>>
>>     [WARNING] [0/DUC#0] The requested interpolation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even interpolation to ensure that a halfband filter is
>>     enabled.
>>
>>     [WARNING] [0/DUC#1] The requested interpolation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even interpolation to ensure that a halfband filter is
>>     enabled.
>>
>>     [WARNING] [0/DUC#1] The requested interpolation is odd; the user
>>     should expect passband CIC rolloff.
>>     Select an even interpolation to ensure that a halfband filter is
>>     enabled.
>>
>>     Setting TX spp to 364
>>     [00:00:22.285623308] Testing receive rate 25.000000 Msps on 1
>>     channels
>>     [00:00:22.290554120] Testing transmit rate 25.000000 Msps on 1
>>     channels
>>     UOUUUUUUUUUUUUUUUUUterminate called after throwing an instance of
>>     'uhd::op_timeout'
>>     =C2=A0 what(): =C2=A0RfnocError: OpTimeout: Control operation time=
d out
>>     waiting for ACK
>>     Aborted
>>     ad@bm-super11-intel:~$ =C2=A0ping 10.10.0.100
>>     PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.
>>     64 bytes from 10.10.0.100 <http://10.10.0.100>: icmp_seq=3D1 ttl=3D=
64
>>     time=3D0.311 ms
>>     64 bytes from 10.10.0.100 <http://10.10.0.100>: icmp_seq=3D2 ttl=3D=
64
>>     time=3D0.297 ms
>>     ^C
>>     --- 10.10.0.100 ping statistics ---
>>     2 packets transmitted, 2 received, 0% packet loss, time 1006ms
>>     rtt min/avg/max/mdev =3D 0.297/0.304/0.311/0.007 ms
>>     ad@bm-super11-intel:~$ =C2=A0uhd_find_devices
>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>     DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872
>>     --------------------------------------------------
>>     -- UHD Device 0
>>     --------------------------------------------------
>>     Device Address:
>>     =C2=A0 =C2=A0 serial: 32000F1
>>     =C2=A0 =C2=A0 addr: 10.10.0.100
>>     =C2=A0 =C2=A0 claimed: False
>>     =C2=A0 =C2=A0 fpga: XG
>>     =C2=A0 =C2=A0 mgmt_addr: 10.10.0.100
>>     =C2=A0 =C2=A0 name: ni-n3xx-32000F1
>>     =C2=A0 =C2=A0 product: n310
>>     =C2=A0 =C2=A0 type: n3xx
>>
>>
>>     ad@bm-super11-intel:~$
>>
>>     On Thu, 5 Dec 2024 at 18:23, Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 05/12/2024 11:44, houshang.azizi@accelleran.com wrote:
>>>
>>>         Hello
>>>
>>>         Have you managed to fix this?
>>>
>>>         I have a similar issue as you can see below.
>>>
>>>         Thanks
>>>
>>         Well, again, what happens when you do the simple
>>         benchmark_rate test *WITHOUT* DPDK involved?
>>
>>
>>>
>>>         |ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py
>>>         --status|
>>>
>>>         |Network devices using DPDK-compatible driver|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572'
>>>         drv=3Dvfio-pci unused=3Di40e|
>>>
>>>         |0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572'
>>>         drv=3Dvfio-pci unused=3Di40e|
>>>
>>>         |Network devices using kernel driver|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=3Deno1
>>>         drv=3Dixgbe unused=3Dvfio-pci *Active*|
>>>
>>>         |0000:04:00.1 'Ethernet Controller 10G X550T 1563' if=3Deno2
>>>         drv=3Dixgbe unused=3Dvfio-pci |
>>>
>>>         |0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572'
>>>         if=3Dens1f0 drv=3Di40e unused=3Dvfio-pci |
>>>
>>>         |0000:43:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572'
>>>         if=3Dens1f3 drv=3Di40e unused=3Dvfio-pci *Active*|
>>>
>>>         |0000:70:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572'
>>>         if=3Dens2f0 drv=3Di40e unused=3Dvfio-pci |
>>>
>>>         |0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572'
>>>         if=3Dens2f1 drv=3Di40e unused=3Dvfio-pci |
>>>
>>>         |Other Baseband devices|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D|
>>>
>>>         |0000:f7:00.0 'Device 57c0' unused=3Dvfio-pci|
>>>
>>>         |No 'Crypto' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |DMA devices using kernel driver|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |0000:f6:01.0 'Device 0b25' drv=3Didxd unused=3Dvfio-pci |
>>>
>>>         |No 'Eventdev' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |No 'Mempool' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |No 'Compress' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |No 'Misc (rawdev)' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |No 'Regex' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D|
>>>
>>>         |No 'ML' devices detected|
>>>
>>>         |=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D|
>>>
>>>         |ad@bm-super11-intel:~/accelleran$ |
>>>
>>>         |ad@bm-super11-intel:~/accelleran$ uhd_find_devices|
>>>
>>>         |[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>>         DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872|
>>>
>>>         |--------------------------------------------------|
>>>
>>>         |-- UHD Device 0|
>>>
>>>         |--------------------------------------------------|
>>>
>>>         |Device Address:|
>>>
>>>         |serial: 32000F1|
>>>
>>>         |addr: 10.10.0.100|
>>>
>>>         |claimed: False|
>>>
>>>         |fpga: XG|
>>>
>>>         |mgmt_addr: 10.10.0.100|
>>>
>>>         |name: ni-n3xx-32000F1|
>>>
>>>         |product: n310|
>>>
>>>         |type: n3xx|
>>>
>>>         |ad@bm-super11-intel:~/accelleran$ sudo
>>>         /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6
>>>         --rx_subdev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6
>>>         --tx_subdev "A:0 B:0" --tx_channels 0,1 --args
>>>         "addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.=
10.0.100,master_clock_rate=3D125e6,use_dpdk=3D1"|
>>>
>>>         |[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>>         DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872|
>>>
>>>         |EAL: Detected CPU lcores: 64|
>>>
>>>         |EAL: Detected NUMA nodes: 1|
>>>
>>>         |EAL: Detected shared linkage of DPDK|
>>>
>>>         |EAL: Multi-process socket /var/run/dpdk/rte/mp_socket|
>>>
>>>         |EAL: Selected IOVA mode 'VA'|
>>>
>>>         |EAL: VFIO support initialized|
>>>
>>>         |EAL: Using IOMMU type 1 (Type 1)|
>>>
>>>         |EAL: Ignore mapping IO port bar(1)|
>>>
>>>         |EAL: Ignore mapping IO port bar(4)|
>>>
>>>         |EAL: Probe PCI driver: net_i40e (8086:1572) device:
>>>         0000:43:00.1 (socket 0)|
>>>
>>>         |EAL: Ignore mapping IO port bar(1)|
>>>
>>>         |EAL: Ignore mapping IO port bar(4)|
>>>
>>>         |EAL: Probe PCI driver: net_i40e (8086:1572) device:
>>>         0000:43:00.2 (socket 0)|
>>>
>>>         |TELEMETRY: No legacy callbacks, legacy socket not created|
>>>
>>>         |i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for RX|
>>>
>>>         |i40e_dev_rx_queue_start(): Failed to allocate RX queue mbuf|
>>>
>>>         |[ERROR] [DPDK] Port 1: Could not start device|
>>>
>>>         |EAL: FATAL: already called initialization.|
>>>
>>>         |EAL: already called initialization.|
>>>
>>>         |[00:00:00.000306] Creating the usrp device with:
>>>         addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.1=
0.0.100,master_clock_rate=3D125e6,use_dpdk=3D1...|
>>>
>>>         |EAL: FATAL: already called initialization.|
>>>
>>>         |EAL: already called initialization.|
>>>
>>>         |[ERROR] [X300] X300 Network discovery error RuntimeError:
>>>         DPDK: Failure to start device|
>>>
>>>         |[ERROR] [DPDK] Error with EAL initialization|
>>>
>>>         |[ERROR] [UHD] Device discovery error: RuntimeError: Error
>>>         with EAL initialization|
>>>
>>>         |[ERROR] [DPDK] Error with EAL initialization|
>>>
>>>         |[ERROR] [UHD] Device discovery error: RuntimeError: Error
>>>         with EAL initialization|
>>>
>>>         |EAL: FATAL: already called initialization.|
>>>
>>>         |EAL: already called initialization.|
>>>
>>>         |Error: LookupError: KeyError: No devices found for ----->|
>>>
>>>         |Device Address:|
>>>
>>>         |addr: 10.10.1.100|
>>>
>>>         |second_addr: 10.10.2.100|
>>>
>>>         |mgmt_addr: 10.10.0.100|
>>>
>>>         |master_clock_rate: 125e6|
>>>
>>>         |use_dpdk: 1|
>>>
>>>         |[ERROR] [DPDK] Error with EAL initialization|
>>>
>>>         |[ERROR] [X300] X300 Network discovery error RuntimeError:
>>>         Error with EAL initialization|
>>>
>>>         |Segmentation fault|
>>>
>>>         |ad@bm-super11-intel:~/accelleran$|
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>>
>>
>>     --=20
>>
>>     *Houshang Azizi*
>>
>>     *Test Engineer*
>>
>>     logo <https://www.accelleran.com/>
>>
>>     *(32) 492195241*
>>
>>     *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>>
>>     *www.accelleran.com* <http://www.accelleran.com/>
>>
>>     linkedin icon <https://www.linkedin.com/company/accelleran>
>>     twitter icon <https://twitter.com/accelleran> youtube icon
>>     <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1>
>>
>>
>

--------------pIvZNGLwMGKFCelLEz6zykrN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/12/2024 14:15, Houshang wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9X1GjMQeudKEwG_QW+vjb6sx-wnQeWTLD3Cq30k32YEOw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Hello
        <div dir=3D"auto">It 8s not <a href=3D"http://rj45.it"
            moz-do-not-send=3D"true">rj45.it</a> is sfp</div>
      </div>
    </blockquote>
    My mistake.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9X1GjMQeudKEwG_QW+vjb6sx-wnQeWTLD3Cq30k32YEOw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 5, 2024, 7:47=E2=
=80=AFPM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div>
            <div>On 05/12/2024 12:27, Houshang wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi Marcus</div>
                <div>Here it is:</div>
                <div><br>
                </div>
                <div><span style=3D"font-family:monospace">ad@bm-super11-=
intel:~$
                    sudo /usr/local/lib/uhd/examples/benchmark_rate
                    --args
                    "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master=
_clock_rate=3D125e6"
                    --rx_rate 25e6 --tx_rate 25e6<br>
                  </span></div>
              </div>
            </blockquote>
            My recollection of your config is that 10.10.0.100 is the
            RJ-45 you use for your management port?=C2=A0 What if you use=
<br>
            =C2=A0 one of the SFP+ port addresses for the same thing?<br>
            <br>
            25Msps is the absolute limit of streaming over a 1GiGe
            connection, and I think 10.10.0.100 was the RJ-45 port on<br>
            =C2=A0 your configuration as I recall.=C2=A0=C2=A0 It's likel=
y that the
            combined network traffic of full-duplex streaming and
            management<br>
            =C2=A0 traffic cause your 1GIGe interface to totally saturate=
 and
            start losing critical things.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><span style=3D"font-family:monospace"><br>
                    [INFO] [UHD] linux; GNU C++ version 11.4.0;
                    Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872<=
br>
                    [00:00:00.000131] Creating the usrp device with:
                    type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_=
clock_rate=3D125e6...<br>
                    [INFO] [MPMD] Initializing 1 device(s) in parallel
                    with args:
mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3D=
ni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.0.100,master_clock=
_rate=3D125e6<br>
                    [WARNING] [MPM.RPCServer] A timeout event occured!<br=
>
                    [INFO] [MPM.PeriphManager] init() called with device
                    args
`fpga=3DXG,master_clock_rate=3D125e6,mgmt_addr=3D10.10.0.100,name=3Dni-n3=
xx-32000F1,product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'=
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
                    [00:00:22.270989651] Setting device timestamp to
                    0...<br>
                    [WARNING] [0/DDC#0] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#0] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#0] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#0] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#1] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#1] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#1] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DDC#1] The requested decimation is odd;
                    the user should expect passband CIC rolloff.<br>
                    Select an even decimation to ensure that a halfband
                    filter is enabled.<br>
                    Decimations factorable by 4 will enable 2 halfbands,
                    those factorable by 8 will enable 3 halfbands.<br>
                    decimation =3D dsp_rate/samp_rate -&gt; 5<br>
                    [WARNING] [0/DUC#0] The requested interpolation is
                    odd; the user should expect passband CIC rolloff.<br>
                    Select an even interpolation to ensure that a
                    halfband filter is enabled.<br>
                    <br>
                    [WARNING] [0/DUC#0] The requested interpolation is
                    odd; the user should expect passband CIC rolloff.<br>
                    Select an even interpolation to ensure that a
                    halfband filter is enabled.<br>
                    <br>
                    [WARNING] [0/DUC#1] The requested interpolation is
                    odd; the user should expect passband CIC rolloff.<br>
                    Select an even interpolation to ensure that a
                    halfband filter is enabled.<br>
                    <br>
                    [WARNING] [0/DUC#1] The requested interpolation is
                    odd; the user should expect passband CIC rolloff.<br>
                    Select an even interpolation to ensure that a
                    halfband filter is enabled.<br>
                    <br>
                    Setting TX spp to 364<br>
                    [00:00:22.285623308] Testing receive rate 25.000000
                    Msps on 1 channels<br>
                    [00:00:22.290554120] Testing transmit rate 25.000000
                    Msps on 1 channels<br>
                    UOUUUUUUUUUUUUUUUUUterminate called after throwing
                    an instance of 'uhd::op_timeout'<br>
                    =C2=A0 what(): =C2=A0RfnocError: OpTimeout: Control o=
peration
                    timed out waiting for ACK<br>
                    Aborted<br>
                    ad@bm-super11-intel:~$ =C2=A0ping 10.10.0.100<br>
                    PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.<=
br>
                    64 bytes from <a href=3D"http://10.10.0.100"
                      target=3D"_blank" rel=3D"noreferrer"
                      moz-do-not-send=3D"true">10.10.0.100</a>: icmp_seq=3D=
1
                    ttl=3D64 time=3D0.311 ms<br>
                    64 bytes from <a href=3D"http://10.10.0.100"
                      target=3D"_blank" rel=3D"noreferrer"
                      moz-do-not-send=3D"true">10.10.0.100</a>: icmp_seq=3D=
2
                    ttl=3D64 time=3D0.297 ms<br>
                    ^C<br>
                    --- 10.10.0.100 ping statistics ---<br>
                    2 packets transmitted, 2 received, 0% packet loss,
                    time 1006ms<br>
                    rtt min/avg/max/mdev =3D 0.297/0.304/0.311/0.007 ms<b=
r>
                    ad@bm-super11-intel:~$ =C2=A0uhd_find_devices<br>
                    [INFO] [UHD] linux; GNU C++ version 11.4.0;
                    Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872<=
br>
                    --------------------------------------------------<br=
>
                    -- UHD Device 0<br>
                    --------------------------------------------------<br=
>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, 5 Dec 2024 =
at
                  18:23, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" rel=3D"noreferrer"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div>
                    <div>On 05/12/2024 11:44, <a
                        href=3D"mailto:houshang.azizi@accelleran.com"
                        target=3D"_blank" rel=3D"noreferrer"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">houshang.azizi@ac=
celleran.com</a>
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
                      <p><code>Network devices using DPDK-compatible
                          driver</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</code></p>
                      <p><code>0000:43:00.1 'Ethernet Controller X710
                          for 10GbE SFP+ 1572' drv=3Dvfio-pci unused=3Di4=
0e</code></p>
                      <p><code>0000:43:00.2 'Ethernet Controller X710
                          for 10GbE SFP+ 1572' drv=3Dvfio-pci unused=3Di4=
0e</code></p>
                      <p><code>Network devices using kernel driver</code>=
</p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p=
>
                      <p><code>0000:04:00.0 'Ethernet Controller 10G
                          X550T 1563' if=3Deno1 drv=3Dixgbe unused=3Dvfio=
-pci
                          *Active*</code></p>
                      <p><code>0000:04:00.1 'Ethernet Controller 10G
                          X550T 1563' if=3Deno2 drv=3Dixgbe unused=3Dvfio=
-pci
                        </code></p>
                      <p><code>0000:43:00.0 'Ethernet Controller X710
                          for 10GbE SFP+ 1572' if=3Dens1f0 drv=3Di40e
                          unused=3Dvfio-pci </code></p>
                      <p><code>0000:43:00.3 'Ethernet Controller X710
                          for 10GbE SFP+ 1572' if=3Dens1f3 drv=3Di40e
                          unused=3Dvfio-pci *Active*</code></p>
                      <p><code>0000:70:00.0 'Ethernet Controller X710
                          for 10GbE SFP+ 1572' if=3Dens2f0 drv=3Di40e
                          unused=3Dvfio-pci </code></p>
                      <p><code>0000:70:00.1 'Ethernet Controller X710
                          for 10GbE SFP+ 1572' if=3Dens2f1 drv=3Di40e
                          unused=3Dvfio-pci </code></p>
                      <p><code>Other Baseband devices</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>0000:f7:00.0 'Device 57c0'
                          unused=3Dvfio-pci</code></p>
                      <p><code>No 'Crypto' devices detected</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>DMA devices using kernel driver</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>0000:f6:01.0 'Device 0b25' drv=3Didxd
                          unused=3Dvfio-pci </code></p>
                      <p><code>No 'Eventdev' devices detected</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>No 'Mempool' devices detected</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>No 'Compress' devices detected</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>No 'Misc (rawdev)' devices detected</code>=
</p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p=
>
                      <p><code>No 'Regex' devices detected</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>No 'ML' devices detected</code></p>
                      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
                      <p><code>ad@bm-super11-intel:~/accelleran$ </code><=
/p>
                      <p><code>ad@bm-super11-intel:~/accelleran$
                          uhd_find_devices</code></p>
                      <p><code>[INFO] [UHD] linux; GNU C++ version
                          11.4.0; Boost_107400; DPDK_23.11;
                          UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
                      <p><code>------------------------------------------=
--------</code></p>
                      <p><code>-- UHD Device 0</code></p>
                      <p><code>------------------------------------------=
--------</code></p>
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
                          /usr/local/lib/uhd/examples/benchmark_rate
                          --rx_rate 125e6 --rx_subdev "A:0 B:0"
                          --rx_channels 0,1 --tx_rate 125e6 --tx_subdev
                          "A:0 B:0" --tx_channels 0,1 --args
"addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,mas=
ter_clock_rate=3D125e6,use_dpdk=3D1"</code></p>
                      <p><code>[INFO] [UHD] linux; GNU C++ version
                          11.4.0; Boost_107400; DPDK_23.11;
                          UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
                      <p><code>EAL: Detected CPU lcores: 64</code></p>
                      <p><code>EAL: Detected NUMA nodes: 1</code></p>
                      <p><code>EAL: Detected shared linkage of DPDK</code=
></p>
                      <p><code>EAL: Multi-process socket
                          /var/run/dpdk/rte/mp_socket</code></p>
                      <p><code>EAL: Selected IOVA mode 'VA'</code></p>
                      <p><code>EAL: VFIO support initialized</code></p>
                      <p><code>EAL: Using IOMMU type 1 (Type 1)</code></p=
>
                      <p><code>EAL: Ignore mapping IO port bar(1)</code><=
/p>
                      <p><code>EAL: Ignore mapping IO port bar(4)</code><=
/p>
                      <p><code>EAL: Probe PCI driver: net_i40e
                          (8086:1572) device: 0000:43:00.1 (socket 0)</co=
de></p>
                      <p><code>EAL: Ignore mapping IO port bar(1)</code><=
/p>
                      <p><code>EAL: Ignore mapping IO port bar(4)</code><=
/p>
                      <p><code>EAL: Probe PCI driver: net_i40e
                          (8086:1572) device: 0000:43:00.2 (socket 0)</co=
de></p>
                      <p><code>TELEMETRY: No legacy callbacks, legacy
                          socket not created</code></p>
                      <p><code>i40e_alloc_rx_queue_mbufs(): Failed to
                          allocate mbuf for RX</code></p>
                      <p><code>i40e_dev_rx_queue_start(): Failed to
                          allocate RX queue mbuf</code></p>
                      <p><code>[ERROR] [DPDK] Port 1: Could not start
                          device</code></p>
                      <p><code>EAL: FATAL: already called
                          initialization.</code></p>
                      <p><code>EAL: already called initialization.</code>=
</p>
                      <p><code>[00:00:00.000306] Creating the usrp
                          device with:
addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,mast=
er_clock_rate=3D125e6,use_dpdk=3D1...</code></p>
                      <p><code>EAL: FATAL: already called
                          initialization.</code></p>
                      <p><code>EAL: already called initialization.</code>=
</p>
                      <p><code>[ERROR] [X300] X300 Network discovery
                          error RuntimeError: DPDK: Failure to start
                          device</code></p>
                      <p><code>[ERROR] [DPDK] Error with EAL
                          initialization</code></p>
                      <p><code>[ERROR] [UHD] Device discovery error:
                          RuntimeError: Error with EAL initialization</co=
de></p>
                      <p><code>[ERROR] [DPDK] Error with EAL
                          initialization</code></p>
                      <p><code>[ERROR] [UHD] Device discovery error:
                          RuntimeError: Error with EAL initialization</co=
de></p>
                      <p><code>EAL: FATAL: already called
                          initialization.</code></p>
                      <p><code>EAL: already called initialization.</code>=
</p>
                      <p><code>Error: LookupError: KeyError: No devices
                          found for -----&gt;</code></p>
                      <p><code>Device Address:</code></p>
                      <p><code> addr: 10.10.1.100</code></p>
                      <p><code> second_addr: 10.10.2.100</code></p>
                      <p><code> mgmt_addr: 10.10.0.100</code></p>
                      <p><code> master_clock_rate: 125e6</code></p>
                      <p><code> use_dpdk: 1</code></p>
                      <p><code>[ERROR] [DPDK] Error with EAL
                          initialization</code></p>
                      <p><code>[ERROR] [X300] X300 Network discovery
                          error RuntimeError: Error with EAL
                          initialization</code></p>
                      <p><code>Segmentation fault</code></p>
                      <p><code>ad@bm-super11-intel:~/accelleran$</code></=
p>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" rel=3D"noreferrer"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>
To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      target=3D"_blank" rel=3D"noreferrer"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" rel=3D"noreferrer"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" rel=3D"noreferrer"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users-leave@lists.ettus.com</a><br>
                </blockquote>
              </div>
              <div><br clear=3D"all">
              </div>
              <br>
              <span class=3D"gmail_signature_prefix">-- </span><br>
              <div dir=3D"ltr" class=3D"gmail_signature">
                <div dir=3D"ltr">
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                          Azizi</span></b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                          Engineer</span></b></p>
                  </div>
                  <a href=3D"https://www.accelleran.com/"
                    rel=3D"noopener noreferrer"
style=3D"color:rgb(51,122,183);background-color:transparent"
                    target=3D"_blank" moz-do-not-send=3D"true"><font
                      size=3D"2"><img alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border:0px;vertical-align:middle;width:143px;height:auto"
                        moz-do-not-send=3D"true" width=3D"143" border=3D"=
0"></font></a>
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                          492195241</span></b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span
                            style=3D"color:black"><a
                              href=3D"mailto:Email@accelleran.com"
                              target=3D"_blank" rel=3D"noreferrer"
                              moz-do-not-send=3D"true">houshang.azizi@acc=
elleran.com</a></span></b></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=A0</span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                          href=3D"http://www.accelleran.com/"
                          style=3D"color:rgb(17,85,204)" target=3D"_blank=
"
                          rel=3D"noreferrer" moz-do-not-send=3D"true"><b>=
<span
                              style=3D"color:rgb(246,146,30)">www.accelle=
ran.com</span></b></a></span></p>
                  </div>
                  <p style=3D"text-align:left;margin:20px 0px"><a
                      href=3D"https://www.linkedin.com/company/accelleran=
"
                      rel=3D"noopener noreferrer"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border:0px;vertical-align:middle;height:15px;width:15px"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a
                      href=3D"https://twitter.com/accelleran"
                      rel=3D"noopener noreferrer"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border:0px;vertical-align:middle;height:15px;width:15px"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
                      rel=3D"noopener noreferrer"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border:0px;vertical-align:middle;height:15px;width:15px"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0
                    <br>
                  </p>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------pIvZNGLwMGKFCelLEz6zykrN--

--===============2325273408182730858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2325273408182730858==--
