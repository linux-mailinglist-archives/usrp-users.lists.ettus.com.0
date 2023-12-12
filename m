Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E7C80EDCD
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:39:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBCC2385FBB
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 08:39:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702388353; bh=ocjMYWzPyq/Vpg71ZggbQvGkAOKNOfqviSTfciOShcQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hWnHSSHU5GQvGbNxEmAMq7jw4/LjKjeAIcUpuIgrfPP3IjJBZp1bvsKA87X/Zydtn
	 EttAuSePi/MS5/WxVAqltPo0pfckwVlw9rn9b+VAvu7/niLntXVSsTMYlPD5tBNKiM
	 CM+p0USo+JbWyfrYzeMFt2BEAVH9wCpoq63MNzeC9sUt/nWHZoAkLdjsCkvCEqm+IF
	 iqanLPasuZ9N78vze9CjlSKJbmX3cyIq69YN1fd0tequGitb3iWBMVRxJpw0TEjKE5
	 soqWMc/IYPMv+2S3POva81FIadsA4NgVPMwlZld9kTd3Trvo2qWt+mbuK7WV+oXgoG
	 f0l81c8zaW6RA==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D614385F7A
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 08:39:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a0L5Mkub";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-67ee17ab697so7829526d6.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 05:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702388339; x=1702993139; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQD3k0eccOix89fVMCbC+fPSC6kbIHfUzzgnFnYgfJ4=;
        b=a0L5MkubRyanLdC19oGifHAL7DW5K9jLNnos94nDtZytWnChdvtDcgg11NaSLLpUip
         TcDxU6sn4xW/LdWISzF9L/KdEg9TMiM/ITepNyhY7w4bNDQScOb+liHKhdRnqOzW1Ews
         sRuRburet8AuZjaDjhqrfvNzLbN4Oo0/uw3RKBuwvaUklC11nJgGi2phksi+63gO3+M4
         93oLFSXl47PEfjtsQbTgdMVAwrmg0TQWBD+BUsUtKQKmJkx7OpvWpl645ZICjSdujZqH
         xlZs8xP3jmClJXbQOba3U5/qZy1BfyW9wZUR3yTdD3uBGb+qEozmUk3QLV3NvObWB0dc
         SDYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702388339; x=1702993139;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xQD3k0eccOix89fVMCbC+fPSC6kbIHfUzzgnFnYgfJ4=;
        b=QDnOHYyH5GUFtqDgmoXSpVekBXQ9SGhnhSCEXc/+r4EUdNRp0qEjnmh6nQwIvzRBFJ
         MWC+JILPD+ZyKGsQDxzJrSRUFP8Ps1W9JNpNEidzDeWLrI/qF16pz2yLa1Nsh7Cx0Ykg
         u7kCZ2J74qDhn9R1VpVX6tbB/q46ThO2OZn08CWmcIprXRQxkBfpmOFLsGpF3squ4I7N
         7hxCycKO9yY2mVYA0nUG94B8d4YEZui82dXSAYmh0uHC7gQenQsI+J2SjAelAVJtt3XI
         lVHO+LYfUdOKzuydp1a71jM4kjWglSPboX68jSHE08D6HzSs9bbXFwQTlhlnLeNsa1JI
         7UQQ==
X-Gm-Message-State: AOJu0YxwqPfdpATWYy5k/CNkQqnAsk+vKPEOfh0V3m5ae3cv9PzhRxZ1
	/2pYIP7DGakhSgoS3Pr8HBitZGab4wU=
X-Google-Smtp-Source: AGHT+IE7Ovc2JVNTz6sBEWQoizuA+iV+LNV5js2afCeRZbI+nT2fY2L22FhUUtNYvZVRwhGFFogtCw==
X-Received: by 2002:a05:6214:1253:b0:67a:a721:8328 with SMTP id r19-20020a056214125300b0067aa7218328mr7227256qvv.130.1702388339164;
        Tue, 12 Dec 2023 05:38:59 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id n2-20020a0cec42000000b0067a10672b80sm4189448qvq.48.2023.12.12.05.38.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 05:38:58 -0800 (PST)
Message-ID: <dd36ce47-50c9-4a15-aad0-b8a8ed03354d@gmail.com>
Date: Tue, 12 Dec 2023 08:38:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CABk6P9yMhg67yvhwBHyHW0yEo_zonBF3+tvdp--Lz3-EMqCPxg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABk6P9yMhg67yvhwBHyHW0yEo_zonBF3+tvdp--Lz3-EMqCPxg@mail.gmail.com>
Message-ID-Hash: LJGOAMWRJWDYYB6SIRAVL4CY2L3VXGXA
X-Message-ID-Hash: LJGOAMWRJWDYYB6SIRAVL4CY2L3VXGXA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmark problems with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LJGOAMWRJWDYYB6SIRAVL4CY2L3VXGXA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5420705946550891150=="

This is a multi-part message in MIME format.
--===============5420705946550891150==
Content-Type: multipart/alternative;
 boundary="------------sTl6tScaNxPkMq74rFaUMCnA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------sTl6tScaNxPkMq74rFaUMCnA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/12/2023 07:03, Sachin Gupta wrote:
> Dear Forum members,
>
> I am trying to run an OAI 5G UE Simulator using USRP B210. The gNB=20
> configuration that is planned to be used is DL 2x2 MIMO mode and 20=20
> MHz system bandwidth. Due to this I am trying to use benchmark_rate=20
> application to see if my UE setup is working fine
>
> My understanding is that to support 2x2 MIMO with a bandwidth of 20=20
> MHz, I will need 2 TX and 2 RX channels=C2=A0@ sampling rate of 30.72 m=
sps.=20
> When I run a benchmark_rate test with this configuration it is=20
> consistently failing. Single channel and reduced sampling rate tests=20
> with dual channel are passing
>
> Request if someone can help troubleshoot this issue or point me in the=20
> right direction to resolve this issue
>
> *// Dual channel (required for 2x2 MIMO), TX and RX rate test @ 30.72=20
> msps *
> benchmark_rate --tx_rate 30.72e6 --rx_rate 30.72e6 --rx_channels "0,1"=20
> --tx_channels "0,1" --duration 100 =3D>=C2=A0Fails with lot of overflow=
s=20
> (logs below)
>
> *// Single channel (for 1x1 SISO), TX and RX rate test @ 30.72 msps *
> benchmark_rate --tx_rate 30.72e6 --rx_rate 30.72e6 --rx_channels "0"=20
> --tx_channels "0" --duration 100 =3D> PASS w/o any overflow
>
> *// Dual channel (required for 2x2 MIMO), RX rate test @ 30.72 msps=20
> and TX rate test @ 15.36 msps =3D> reduced TX rate to see if it is work=
ing*
> benchmark_rate --tx_rate 15.36e6 --rx_rate 30.72e6 --rx_channels "0,1"=20
> --tx_channels "0,1" --duration 100 =3D> PASS
>
> NOTE: As mentioned in Ettus documentation, external power supply is=20
> provided for 2x2 configuration
>
> *=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DSystem Information=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D*
>
> # lscpu
> Architecture: =C2=A0 =C2=A0 =C2=A0 =C2=A0 x86_64
> =C2=A0 CPU op-mode(s):=C2=A0 =C2=A0 =C2=A0 =C2=A0 32-bit, 64-bit
> =C2=A0 Address sizes:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A039 bits physical=
, 48 bits virtual
> =C2=A0 Byte Order: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Little Endian
> CPU(s): =C2=A0 =C2=A0 =C2=A0 =C2=A0 6
> =C2=A0 On-line CPU(s) list:=C2=A0 =C2=A00-5
> Vendor ID: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GenuineIntel
> =C2=A0 Model name: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Intel(R) Core(TM) i7-107=
10U CPU @ 1.10GHz
> =C2=A0 =C2=A0 CPU family: =C2=A0 =C2=A0 =C2=A0 =C2=A0 6
> =C2=A0 =C2=A0 Model: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0166
> =C2=A0 =C2=A0 Thread(s) per core:=C2=A0 1
> =C2=A0 =C2=A0 Core(s) per socket:=C2=A0 6
> =C2=A0 =C2=A0 Socket(s): =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01
> =C2=A0 =C2=A0 Stepping: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 =C2=A0 Frequency boost:=C2=A0 =C2=A0 =C2=A0enabled
> =C2=A0 =C2=A0 CPU max MHz:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01601.0000
> =C2=A0 =C2=A0 CPU min MHz:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0400.0000
> =C2=A0 =C2=A0 BogoMIPS: =C2=A0 =C2=A0 =C2=A0 =C2=A0 3199.92
> =C2=A0 =C2=A0 Flags: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fpu vme de pse t=
sc msr pae mce cx8 apic sep mtrr=20
> pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe=20
> syscall nx pd
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pe1gb rdtscp lm constant_tsc art arch=
_perfmon pebs bts=20
> rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq=20
> dtes64 moni
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tor ds_cpl vmx est tm2 ssse3 sdbg fma=
 cx16 xtpr pdcm pcid=20
> sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx=20
> f16c rdr
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and lahf_lm abm 3dnowprefetch cpuid_f=
ault epb invpcid_single=20
> ssbd ibrs ibpb stibp ibrs_enhanced tpr_shadow vnmi flexpriority ept vpi=
d
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ept_ad fsgsbase tsc_adjust sgx bmi1 =
avx2 smep bmi2 erms=20
> invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec=20
> xgetbv1 xsav
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0es dtherm ida arat pln pts hwp hwp_no=
tify hwp_act_window=20
> hwp_epp md_clear flush_l1d arch_capabilities
> Virtualization features:
> Virtualization:=C2=A0 =C2=A0 =C2=A0 =C2=A0 VT-x
> Caches (sum of all):
> =C2=A0 L1d: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0192 KiB (6 instances)
> =C2=A0 L1i: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0192 KiB (6 instances)
> =C2=A0 L2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 1.5 MiB (6 instances)
> =C2=A0 L3: =C2=A0 =C2=A0 =C2=A0 =C2=A0 12 MiB (1 instance)
> NUMA:
> =C2=A0 NUMA node(s): =C2=A0 =C2=A0 =C2=A0 =C2=A0 1
> =C2=A0 NUMA node0 CPU(s):=C2=A0 =C2=A0 =C2=A00-5
> Vulnerabilities:
> =C2=A0 Gather data sampling:=C2=A0 Not affected
> =C2=A0 Itlb multihit:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0KVM: Mitigation:=
 VMX disabled
> =C2=A0 L1tf: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Not affected
> =C2=A0 Mds: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not affected
> =C2=A0 Meltdown: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Not affected
> =C2=A0 Mmio stale data:=C2=A0 =C2=A0 =C2=A0 =C2=A0Mitigation; Clear CPU=
 buffers; SMT disabled
> =C2=A0 Retbleed: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; Enhanced IBRS
> =C2=A0 Spec rstack overflow:=C2=A0 Not affected
> =C2=A0 Spec store bypass:=C2=A0 =C2=A0 =C2=A0Mitigation; Speculative St=
ore Bypass disabled=20
> via prctl and seccomp
> =C2=A0 Spectre v1: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; usercopy/swa=
pgs barriers and __user=20
> pointer sanitization
> =C2=A0 Spectre v2: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; Enhanced IBR=
S, IBPB conditional, RSB=20
> filling, PBRSB-eIBRS SW sequence
> =C2=A0 Srbds: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not affected
> =C2=A0 Tsx async abort:=C2=A0 =C2=A0 =C2=A0 =C2=A0Not affected
>
> *=3D=3D=3D=3D=3D=3D=3D=3D=3D Device Information=3D=3D=3D=3D=3D=3D=3D=3D=
=3D*
> # uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.6.0.0-3-g080b1baa
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> =C2=A0 =C2=A0 serial: 32308C2
> =C2=A0 =C2=A0 name: MyB210
> =C2=A0 =C2=A0 product: B210
> =C2=A0 =C2=A0 type: b200
>
> # uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.6.0.0-3-g080b1baa
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> _____________________________________________________
> =C2=A0/
> |=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: B-Series Device
> | =C2=A0_____________________________________________________
> |=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0| =C2=A0Mboard: B210
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 32308C2
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0name: MyB210
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0product: 2
> |=C2=A0 =C2=A0| =C2=A0revision: 4
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0FW Version: 8.0
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 16.0
> |=C2=A0 =C2=A0|
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 none, internal, externa=
l, gpsdo
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: internal, external, gpsdo
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: ref_locked
> |=C2=A0 =C2=A0| =C2=A0_________________________________________________=
____
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0RX DSP: 0
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: -8.000 to 8.000 M=
Hz
> |=C2=A0 =C2=A0| =C2=A0_________________________________________________=
____
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0RX DSP: 1
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: -8.000 to 8.000 M=
Hz
> |=C2=A0 =C2=A0| =C2=A0_________________________________________________=
____
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0RX Dboard: A
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0___________________________________=
__________________
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0 =C2=A0RX Frontend: A
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Name: FE-RX2
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Antennas: TX/RX, RX2
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Sensors: temp, rssi, =
lo_locked
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Freq range: 50.000 to=
 6000.000 MHz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Gain range PGA: 0.0 t=
o 76.0 step 1.0 dB
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Bandwidth range: 2000=
00.0 to 56000000.0 step 0.0 Hz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Connection Type: IQ
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Uses LO offset: No
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0___________________________________=
__________________
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0 =C2=A0RX Frontend: B
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Name: FE-RX1
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Antennas: TX/RX, RX2
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Sensors: temp, rssi, =
lo_locked
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Freq range: 50.000 to=
 6000.000 MHz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Gain range PGA: 0.0 t=
o 76.0 step 1.0 dB
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Bandwidth range: 2000=
00.0 to 56000000.0 step 0.0 Hz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Connection Type: IQ
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Uses LO offset: No
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0___________________________________=
__________________
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0 =C2=A0RX Codec: A
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Name: B210 RX dual AD=
C
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Gain Elements: None
> |=C2=A0 =C2=A0| =C2=A0_________________________________________________=
____
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0TX DSP: 0
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: -8.000 to 8.000 M=
Hz
> |=C2=A0 =C2=A0| =C2=A0_________________________________________________=
____
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0TX DSP: 1
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: -8.000 to 8.000 M=
Hz
> |=C2=A0 =C2=A0| =C2=A0_________________________________________________=
____
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0TX Dboard: A
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0___________________________________=
__________________
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0 =C2=A0TX Frontend: A
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Name: FE-TX2
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Antennas: TX/RX
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Sensors: temp, lo_loc=
ked
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Freq range: 50.000 to=
 6000.000 MHz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Gain range PGA: 0.0 t=
o 89.8 step 0.2 dB
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Bandwidth range: 2000=
00.0 to 56000000.0 step 0.0 Hz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Connection Type: IQ
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Uses LO offset: No
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0___________________________________=
__________________
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0 =C2=A0TX Frontend: B
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Name: FE-TX1
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Antennas: TX/RX
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Sensors: temp, lo_loc=
ked
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Freq range: 50.000 to=
 6000.000 MHz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Gain range PGA: 0.0 t=
o 89.8 step 0.2 dB
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Bandwidth range: 2000=
00.0 to 56000000.0 step 0.0 Hz
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Connection Type: IQ
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Uses LO offset: No
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0___________________________________=
__________________
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0 =C2=A0TX Codec: A
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Name: B210 TX dual DA=
C
> |=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0| =C2=A0Gain Elements: None
>
> *=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Problem scenario Logs (TX and RX rate @=
 30.72 msps)=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D*
> Followed General Tuning notes=C2=A0@=20
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Tuning_Notes=20
> (*CPUs 2-5 isolated*)
>
> # taskset -c "2-5" examples/benchmark_rate --tx_rate 30.72e6 --rx_rate=20
> 30.72e6 --rx_channels "0,1" --tx_channels "0,1" --duration 1=20
> --priority high
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.6.0.0-3-g080b1baa
> [00:00:00.000029] Creating the usrp device with: ...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
> =C2=A0 Device: B-Series Device
> =C2=A0 Mboard 0: B210
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: FE-RX2
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: 1
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: FE-RX1
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: FE-TX2
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: FE-TX1
>
> [00:00:01.866378510] Setting device timestamp to 0...
> [INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time transition at pps =
edge
> [INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) set times next pps (synchrono=
usly)
> [INFO] [B200] Asking for clock rate 30.720000 MHz...
> [INFO] [B200] Actually got clock rate 30.720000 MHz.
> [00:00:05.66457702] Testing receive rate 30.720000 Msps on 2 channels
> Setting TX spp to 2040
> [00:00:05.88338475] Testing transmit rate 30.720000 Msps on 2 channels
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.356178311]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.373353034] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.390809194] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.408309136]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.425513440] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.442918966]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.460473385]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.477327828] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.494827031] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.512352750]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.529942938]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.547127246] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.564702200]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.581790507] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.599503284]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.616332439] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.633433429] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.650535502] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.667989498] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.685455166]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.702877567]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.720326408]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.737630193] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.754504596] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.771535859] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.788576687] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.806317150]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.823610494] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.840615113] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.857670406] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.874838720] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.892369065] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.909245514] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.926880429]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.943781582] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.960899743] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.978572166]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.995669275] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.12991071] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.30083109] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.47759726]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.65033966] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.82480858] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.99961987]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.117452418]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.134652518] Detected Rx=20
> sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.152241203]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.169706747]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.186942554] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.204331660]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.221620703] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.238834026] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.256245885] Detected=20
> Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.274190434]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.291702252]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.308942984]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.326528850]=20
> Detected Rx sequence error.
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.343856658] Detected=20
> Rx sequence error.
> [00:00:06.344059518] Benchmark complete.
>
>
> Benchmark rate summary:
> =C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A028048518
> =C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 23595022
> =C2=A0 Num overruns detected:=C2=A0 =C2=A0 58
> =C2=A0 Num transmitted samples:=C2=A0 58833600
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 58
> =C2=A0 Num underruns detected:=C2=A0 =C2=A02214
> =C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
>
>
> Done!
>
> *=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Working scenario Logs (TX Rate @ 15.36 =
msps, RX Rate @=20
> 30.72 msps) =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D*
> *
> *
> # taskset -c "2-5" examples/benchmark_rate --tx_rate 15.36e6 --rx_rate=20
> 30.72e6 --rx_channels "0,1" --tx_channels "0,1" --duration 1=20
> --priority high
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.6.0.0-3-g080b1baa
> [00:00:00.000108] Creating the usrp device with: ...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
> =C2=A0 Device: B-Series Device
> =C2=A0 Mboard 0: B210
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: FE-RX2
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: 1
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: FE-RX1
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: FE-TX2
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: FE-TX1
>
> [00:00:01.866204171] Setting device timestamp to 0...
> [INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch time transition at pps =
edge
> [INFO] [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) set times next pps (synchrono=
usly)
> [INFO] [B200] Asking for clock rate 30.720000 MHz...
> [INFO] [B200] Actually got clock rate 30.720000 MHz.
> [00:00:05.497349995] Testing receive rate 30.720000 Msps on 2 channels
> Setting TX spp to 2040
> [00:00:05.519203256] Testing transmit rate 15.360000 Msps on 2 channels
> [00:00:06.771457104] Benchmark complete.
>
>
> Benchmark rate summary:
> =C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A075074598
> =C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num overruns detected:=C2=A0 =C2=A0 0
> =C2=A0 Num transmitted samples:=C2=A0 30787680
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> =C2=A0 Num underruns detected:=C2=A0 =C2=A00
> =C2=A0 Num late commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
> =C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
>
>
> Done!
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Best Regards,
> Sachin
>
You'll likely want to look at adding "num_recv_frames=3D256" and=20
"num_send_frames=3D256" to your device arguments at
 =C2=A0 higher rates.

See:

https://files.ettus.com/manual/page_transport.html



--------------sTl6tScaNxPkMq74rFaUMCnA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/12/2023 07:03, Sachin Gupta
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABk6P9yMhg67yvhwBHyHW0yEo_zonBF3+tvdp--Lz3-EMqCPxg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">Dear Forum members,=C2=A0
                          <div><br>
                          </div>
                          <div>I am trying to run an OAI 5G UE Simulator
                            using USRP B210. The gNB configuration that
                            is planned to be used is DL 2x2 MIMO mode
                            and 20 MHz system bandwidth. Due to this I
                            am trying to use benchmark_rate application
                            to see if my UE setup is working fine</div>
                          <div><br>
                          </div>
                          <div>My understanding is that to support 2x2
                            MIMO with a bandwidth of 20 MHz, I will need
                            2 TX and 2 RX channels=C2=A0@ sampling rate o=
f
                            30.72 msps. When I run a benchmark_rate test
                            with this configuration it is consistently
                            failing. Single channel and reduced sampling
                            rate tests with dual channel are passing=C2=A0=
</div>
                          <div><br>
                          </div>
                          <div>Request if someone can help troubleshoot
                            this issue or point me in the right
                            direction to resolve this issue</div>
                          <div><br>
                          </div>
                          <div>
                            <div><b>// Dual channel (required for 2x2
                                MIMO), TX and RX rate test @ 30.72 msps=C2=
=A0</b></div>
                            <div>benchmark_rate --tx_rate 30.72e6
                              --rx_rate 30.72e6 --rx_channels "0,1"
                              --tx_channels "0,1" --duration 100 =3D&gt;<=
font
                                color=3D"#ff0000">=C2=A0Fails with lot of
                                overflows (logs below)</font></div>
                            <div><br>
                            </div>
                          </div>
                          <div>
                            <div><b>// Single channel (for 1x1 SISO), TX
                                and RX rate test @ 30.72 msps=C2=A0</b></=
div>
                            <div>benchmark_rate --tx_rate 30.72e6
                              --rx_rate 30.72e6 --rx_channels "0"
                              --tx_channels "0" --duration 100 =3D&gt; <f=
ont
                                color=3D"#00ff00">PASS w/o any overflow</=
font></div>
                            <div><br>
                            </div>
                            <div><b>// Dual channel (required for 2x2
                                MIMO), RX rate test @ 30.72 msps and TX
                                rate test @ 15.36 msps =3D&gt; reduced TX
                                rate to see if it is working</b><br>
                            </div>
                            <div>benchmark_rate --tx_rate 15.36e6
                              --rx_rate 30.72e6 --rx_channels "0,1"
                              --tx_channels "0,1" --duration 100 <font
                                color=3D"#00ff00">=3D&gt; PASS</font></di=
v>
                          </div>
                          <div><br>
                          </div>
                          <div>NOTE: As mentioned in Ettus
                            documentation, external power supply is
                            provided for 2x2 configuration</div>
                          <div><br>
                          </div>
                          <div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DSystem
                              Information=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</b></div>
                          <div>
                            <div><br>
                            </div>
                            <div><font face=3D"monospace"># lscpu</font><=
/div>
                            <div><font face=3D"monospace">Architecture:=C2=
=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 x86_64</font>=
</div>
                            <div><font face=3D"monospace">=C2=A0 CPU
                                op-mode(s):=C2=A0 =C2=A0 =C2=A0 =C2=A0 32=
-bit, 64-bit</font></div>
                            <div><font face=3D"monospace">=C2=A0 Address
                                sizes:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03=
9 bits physical, 48 bits
                                virtual</font></div>
                            <div><font face=3D"monospace">=C2=A0 Byte Ord=
er:=C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Little Endian=
</font></div>
                            <div><font face=3D"monospace">CPU(s):=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 6</font></div=
>
                            <div><font face=3D"monospace">=C2=A0 On-line =
CPU(s)
                                list:=C2=A0 =C2=A00-5</font></div>
                            <div><font face=3D"monospace">Vendor ID:=C2=A0=
 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Genuine=
Intel</font></div>
                            <div><font face=3D"monospace">=C2=A0 Model na=
me:=C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Intel(R) Core=
(TM) i7-10710U CPU
                                @ 1.10GHz</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 C=
PU family:=C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 6</font></div=
>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 M=
odel:=C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0166</fo=
nt></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
hread(s)
                                per core:=C2=A0 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 C=
ore(s) per
                                socket:=C2=A0 6</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 S=
ocket(s):=C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01</font=
></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 S=
tepping:=C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font></div=
>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 F=
requency
                                boost:=C2=A0 =C2=A0 =C2=A0enabled</font><=
/div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 C=
PU max
                                MHz:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0160=
1.0000</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 C=
PU min
                                MHz:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0400=
.0000</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 B=
ogoMIPS:=C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 3199.92</font=
></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 F=
lags:=C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fpu vme=
 de pse tsc msr pae mce
                                cx8 apic sep mtrr pge mca cmov pat pse36
                                clflush dts acpi mmx fxsr sse sse2 ss ht
                                tm pbe syscall nx pd</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pe1gb r=
dtscp lm constant_tsc
                                art arch_perfmon pebs bts rep_good nopl
                                xtopology nonstop_tsc cpuid aperfmperf
                                pni pclmulqdq dtes64 moni</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tor ds_=
cpl vmx est tm2 ssse3
                                sdbg fma cx16 xtpr pdcm pcid sse4_1
                                sse4_2 x2apic movbe popcnt
                                tsc_deadline_timer aes xsave avx f16c
                                rdr</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and lah=
f_lm abm 3dnowprefetch
                                cpuid_fault epb invpcid_single ssbd ibrs
                                ibpb stibp ibrs_enhanced tpr_shadow vnmi
                                flexpriority ept vpid</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ept_ad=
 fsgsbase tsc_adjust sgx
                                bmi1 avx2 smep bmi2 erms invpcid mpx
                                rdseed adx smap clflushopt intel_pt
                                xsaveopt xsavec xgetbv1 xsav</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0es dthe=
rm ida arat pln pts hwp
                                hwp_notify hwp_act_window hwp_epp
                                md_clear flush_l1d arch_capabilities</fon=
t></div>
                            <div><font face=3D"monospace">Virtualization
                                features:</font></div>
                            <div><font face=3D"monospace">=C2=A0
                                Virtualization:=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 VT-x</font></div>
                            <div><font face=3D"monospace">Caches (sum of
                                all):</font></div>
                            <div><font face=3D"monospace">=C2=A0 L1d:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0192 KiB=
 (6 instances)</font></div>
                            <div><font face=3D"monospace">=C2=A0 L1i:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0192 KiB=
 (6 instances)</font></div>
                            <div><font face=3D"monospace">=C2=A0 L2:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 1.5 MiB (6 in=
stances)</font></div>
                            <div><font face=3D"monospace">=C2=A0 L3:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 12 MiB (1 ins=
tance)</font></div>
                            <div><font face=3D"monospace">NUMA:</font></d=
iv>
                            <div><font face=3D"monospace">=C2=A0 NUMA nod=
e(s):=C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 1</font></div=
>
                            <div><font face=3D"monospace">=C2=A0 NUMA nod=
e0
                                CPU(s):=C2=A0 =C2=A0 =C2=A00-5</font></di=
v>
                            <div><font face=3D"monospace">Vulnerabilities=
:</font></div>
                            <div><font face=3D"monospace">=C2=A0 Gather d=
ata
                                sampling:=C2=A0 Not affected</font></div>
                            <div><font face=3D"monospace">=C2=A0 Itlb
                                multihit:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
KVM: Mitigation: VMX
                                disabled</font></div>
                            <div><font face=3D"monospace">=C2=A0 L1tf:=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Not affected<=
/font></div>
                            <div><font face=3D"monospace">=C2=A0 Mds:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not aff=
ected</font></div>
                            <div><font face=3D"monospace">=C2=A0 Meltdown=
:=C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Not affected<=
/font></div>
                            <div><font face=3D"monospace">=C2=A0 Mmio sta=
le
                                data:=C2=A0 =C2=A0 =C2=A0 =C2=A0Mitigatio=
n; Clear CPU
                                buffers; SMT disabled</font></div>
                            <div><font face=3D"monospace">=C2=A0 Retbleed=
:=C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; E=
nhanced IBRS</font></div>
                            <div><font face=3D"monospace">=C2=A0 Spec rst=
ack
                                overflow:=C2=A0 Not affected</font></div>
                            <div><font face=3D"monospace">=C2=A0 Spec sto=
re
                                bypass:=C2=A0 =C2=A0 =C2=A0Mitigation; Sp=
eculative
                                Store Bypass disabled via prctl and
                                seccomp</font></div>
                            <div><font face=3D"monospace">=C2=A0 Spectre =
v1:=C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; u=
sercopy/swapgs
                                barriers and __user pointer sanitization<=
/font></div>
                            <div><font face=3D"monospace">=C2=A0 Spectre =
v2:=C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mitigation; E=
nhanced IBRS, IBPB
                                conditional, RSB filling, PBRSB-eIBRS SW
                                sequence</font></div>
                            <div><font face=3D"monospace">=C2=A0 Srbds:=C2=
=A0 =C2=A0 =C2=A0 =C2=A0
                                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not aff=
ected</font></div>
                            <div><font face=3D"monospace">=C2=A0 Tsx asyn=
c
                                abort:=C2=A0 =C2=A0 =C2=A0 =C2=A0Not affe=
cted</font></div>
                          </div>
                          <div><br>
                          </div>
                          <div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D Device Info=
rmation=3D=3D=3D=3D=3D=3D=3D=3D=3D</b></div>
                          <div>
                            <div><font face=3D"monospace">#
                                uhd_find_devices</font></div>
                            <div><font face=3D"monospace">[INFO] [UHD]
                                linux; GNU C++ version 11.4.0;
                                Boost_107400; UHD_4.6.0.0-3-g080b1baa</fo=
nt></div>
                            <div><font face=3D"monospace">---------------=
-----------------------------------</font></div>
                            <div><font face=3D"monospace">-- UHD Device 0=
</font></div>
                            <div><font face=3D"monospace">---------------=
-----------------------------------</font></div>
                            <div><font face=3D"monospace">Device Address:=
</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 s=
erial:
                                32308C2</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 n=
ame: MyB210</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 p=
roduct:
                                B210</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 t=
ype: b200</font></div>
                          </div>
                          <div><font face=3D"monospace"><br>
                            </font></div>
                          <div>
                            <div><font face=3D"monospace"># uhd_usrp_prob=
e</font></div>
                            <div><font face=3D"monospace">[INFO] [UHD]
                                linux; GNU C++ version 11.4.0;
                                Boost_107400; UHD_4.6.0.0-3-g080b1baa</fo=
nt></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Detected Device: B210</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Operating over USB 3.</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Initialize CODEC control...</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Initialize Radio control...</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Performing register loopback test...</fon=
t></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Register loopback test passed</font></div=
>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Performing register loopback test...</fon=
t></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Register loopback test passed</font></div=
>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Setting master clock rate selection to
                                'automatic'.</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Asking for clock rate 16.000000 MHz...</f=
ont></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Actually got clock rate 16.000000 MHz.</f=
ont></div>
                            <div><font face=3D"monospace">=C2=A0
                                _________________________________________=
____________</font></div>
                            <div><font face=3D"monospace">=C2=A0/</font><=
/div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0 =
=C2=A0 =C2=A0Device:
                                B-Series Device</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0 =
/</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 =C2=A0
                                =C2=A0Mboard: B210</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0serial:
                                32308C2</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0name:
                                MyB210</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0product:
                                2</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0
                                =C2=A0revision: 4</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0FW
                                Version: 8.0</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0FPGA
                                Version: 16.0</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Time
                                sources:=C2=A0 none, internal, external,
                                gpsdo</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Clock
                                sources: internal, external, gpsdo</font>=
</div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0Sensors:
                                ref_locked</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0
                                =C2=A0RX DSP: 0</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq
                                range: -8.000 to 8.000 MHz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0
                                =C2=A0RX DSP: 1</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq
                                range: -8.000 to 8.000 MHz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0
                                =C2=A0RX Dboard: A</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0 =C2=A0RX Frontend: A</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Name: FE-RX2</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Antennas: TX/RX, RX2</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Sensors: temp, rssi, lo_locked</fon=
t></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Freq range: 50.000 to 6000.000 MHz<=
/font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Gain range PGA: 0.0 to 76.0 step 1.=
0 dB</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Bandwidth range: 200000.0 to 560000=
00.0
                                step 0.0 Hz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Connection Type: IQ</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Uses LO offset: No</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0 =C2=A0RX Frontend: B</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Name: FE-RX1</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Antennas: TX/RX, RX2</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Sensors: temp, rssi, lo_locked</fon=
t></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Freq range: 50.000 to 6000.000 MHz<=
/font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Gain range PGA: 0.0 to 76.0 step 1.=
0 dB</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Bandwidth range: 200000.0 to 560000=
00.0
                                step 0.0 Hz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Connection Type: IQ</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Uses LO offset: No</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0 =C2=A0RX Codec: A</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Name: B210 RX dual ADC</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Gain Elements: None</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0
                                =C2=A0TX DSP: 0</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq
                                range: -8.000 to 8.000 MHz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0
                                =C2=A0TX DSP: 1</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq
                                range: -8.000 to 8.000 MHz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0
                                =C2=A0TX Dboard: A</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0 =C2=A0TX Frontend: A</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Name: FE-TX2</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Antennas: TX/RX</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Sensors: temp, lo_locked</font></di=
v>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Freq range: 50.000 to 6000.000 MHz<=
/font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Gain range PGA: 0.0 to 89.8 step 0.=
2 dB</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Bandwidth range: 200000.0 to 560000=
00.0
                                step 0.0 Hz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Connection Type: IQ</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Uses LO offset: No</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0 =C2=A0TX Frontend: B</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Name: FE-TX1</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Antennas: TX/RX</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Sensors: temp, lo_locked</font></di=
v>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Freq range: 50.000 to 6000.000 MHz<=
/font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Gain range PGA: 0.0 to 89.8 step 0.=
2 dB</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Bandwidth range: 200000.0 to 560000=
00.0
                                step 0.0 Hz</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Connection Type: IQ</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Uses LO offset: No</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0___________________________________=
__________________</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0 /</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0
                                =C2=A0 =C2=A0TX Codec: A</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Name: B210 TX dual DAC</font></div>
                            <div><font face=3D"monospace">|=C2=A0 =C2=A0|=
=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0
                                =C2=A0Gain Elements: None</font></div>
                          </div>
                          <div><font face=3D"monospace"><br>
                            </font></div>
                          <div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Problem =
scenario Logs (TX
                              and RX rate @ 30.72 msps)
                              =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</b></div>
                          <div>
                            <div>Followed General Tuning notes=C2=A0@=C2=A0=
<a
href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Tuning_Not=
es"
                                moz-do-not-send=3D"true"
                                class=3D"moz-txt-link-freetext">https://k=
b.ettus.com/Getting_Started_with_DPDK_and_UHD#Tuning_Notes</a>
                              (<b>CPUs 2-5 isolated</b>)</div>
                            <div><br>
                            </div>
                            <div><font face=3D"monospace"># taskset -c
                                "2-5" examples/benchmark_rate --tx_rate
                                30.72e6 --rx_rate 30.72e6 --rx_channels
                                "0,1" --tx_channels "0,1" --duration 1
                                --priority high</font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">[INFO] [UHD]
                                linux; GNU C++ version 11.4.0;
                                Boost_107400; UHD_4.6.0.0-3-g080b1baa</fo=
nt></div>
                            <div><font face=3D"monospace">[00:00:00.00002=
9]
                                Creating the usrp device with: ...</font>=
</div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Detected Device: B210</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Operating over USB 3.</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Initialize CODEC control...</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Initialize Radio control...</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Performing register loopback test...</fon=
t></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Register loopback test passed</font></div=
>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Performing register loopback test...</fon=
t></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Register loopback test passed</font></div=
>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Setting master clock rate selection to
                                'automatic'.</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Asking for clock rate 16.000000 MHz...</f=
ont></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Actually got clock rate 16.000000 MHz.</f=
ont></div>
                            <div><font face=3D"monospace">Using Device:
                                Single USRP:</font></div>
                            <div><font face=3D"monospace">=C2=A0 Device:
                                B-Series Device</font></div>
                            <div><font face=3D"monospace">=C2=A0 Mboard 0=
: B210</font></div>
                            <div><font face=3D"monospace">=C2=A0 RX Chann=
el: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X DSP: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Subdev:
                                FE-RX2</font></div>
                            <div><font face=3D"monospace">=C2=A0 RX Chann=
el: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X DSP: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Subdev:
                                FE-RX1</font></div>
                            <div><font face=3D"monospace">=C2=A0 TX Chann=
el: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X DSP: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Subdev:
                                FE-TX2</font></div>
                            <div><font face=3D"monospace">=C2=A0 TX Chann=
el: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X DSP: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Subdev:
                                FE-TX1</font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">[00:00:01.86637=
8510]
                                Setting device timestamp to 0...</font></=
div>
                            <div><font face=3D"monospace">[INFO]
                                [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch =
time
                                transition at pps edge</font></div>
                            <div><font face=3D"monospace">[INFO]
                                [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) set ti=
mes next pps
                                (synchronously)</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Asking for clock rate 30.720000 MHz...</f=
ont></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Actually got clock rate 30.720000 MHz.</f=
ont></div>
                            <div><font face=3D"monospace">[00:00:05.66457=
702]
                                Testing receive rate 30.720000 Msps on 2
                                channels</font></div>
                            <div><font face=3D"monospace">Setting TX spp
                                to 2040</font></div>
                            <div><font face=3D"monospace">[00:00:05.88338=
475]
                                Testing transmit rate 30.720000 Msps on
                                2 channels</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.356178311]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.373353034]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.390809194]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.408309136]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUO[D00:00:05.425513440]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.442918966]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.460473385]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.477327828]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.494827031]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.512352750]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.529942938]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.547127246]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.564702200]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUO[D00:00:05.581790507]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.599503284]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUO[D00:00:05.616332439]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.633433429]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUO[D00:00:05.650535502]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.667989498]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.685455166]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.702877567]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.720326408]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.737630193]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUO[D00:00:05.754504596]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUO[D00:00:05.771535859]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.788576687]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.806317150]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUO[D00:00:05.823610494]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUO[D00:00:05.840615113]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUO[D00:00:05.857670406]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUO[D00:00:05.874838720]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.892369065]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.909245514]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.926880429]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUO[D00:00:05.943781582]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.960899743]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.978572166]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:05.995669275]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.12991071]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUO[D00:00:06.30083109]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.47759726]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUO[D00:00:06.65033966]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.82480858]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.99961987]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.117452418]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUO[D00:00:06.134652518]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.152241203]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.169706747]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.186942554]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.204331660]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.221620703]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.238834026]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.256245885]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.274190434]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.291702252]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.308942984]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.326528850]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUO[D00:00:06.343856658]
                                Detected Rx sequence error.</font></div>
                            <div><font face=3D"monospace">[00:00:06.34405=
9518]
                                Benchmark complete.</font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">Benchmark rate
                                summary:</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num rece=
ived
                                samples:=C2=A0 =C2=A0 =C2=A028048518</fon=
t></div>
                            <div><font face=3D"monospace">=C2=A0 Num drop=
ped
                                samples:=C2=A0 =C2=A0 =C2=A0 23595022</fo=
nt></div>
                            <div><font face=3D"monospace">=C2=A0 Num over=
runs
                                detected:=C2=A0 =C2=A0 58</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num
                                transmitted samples:=C2=A0 58833600</font=
></div>
                            <div><font face=3D"monospace">=C2=A0 Num sequ=
ence
                                errors (Tx): 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num sequ=
ence
                                errors (Rx): 58</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num unde=
rruns
                                detected:=C2=A0 =C2=A02214</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num late
                                commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</f=
ont></div>
                            <div><font face=3D"monospace">=C2=A0 Num time=
outs
                                (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font>=
</div>
                            <div><font face=3D"monospace">=C2=A0 Num time=
outs
                                (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font>=
</div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">Done!</font></d=
iv>
                          </div>
                          <div><br>
                          </div>
                          <div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Working =
scenario Logs (TX
                              Rate @ 15.36 msps, RX Rate @ 30.72 msps)
                              =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</b></d=
iv>
                          <div><b><br>
                            </b></div>
                          <div>
                            <div><font face=3D"monospace"># taskset -c
                                "2-5" examples/benchmark_rate --tx_rate
                                15.36e6 --rx_rate 30.72e6 --rx_channels
                                "0,1" --tx_channels "0,1" --duration 1
                                --priority high</font></div>
                            <div><font face=3D"monospace">[INFO] [UHD]
                                linux; GNU C++ version 11.4.0;
                                Boost_107400; UHD_4.6.0.0-3-g080b1baa<br>
                              </font></div>
                            <div><font face=3D"monospace">[00:00:00.00010=
8]
                                Creating the usrp device with: ...</font>=
</div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Detected Device: B210</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Operating over USB 3.</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Initialize CODEC control...</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Initialize Radio control...</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Performing register loopback test...</fon=
t></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Register loopback test passed</font></div=
>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Performing register loopback test...</fon=
t></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Register loopback test passed</font></div=
>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Setting master clock rate selection to
                                'automatic'.</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Asking for clock rate 16.000000 MHz...</f=
ont></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Actually got clock rate 16.000000 MHz.</f=
ont></div>
                            <div><font face=3D"monospace">Using Device:
                                Single USRP:</font></div>
                            <div><font face=3D"monospace">=C2=A0 Device:
                                B-Series Device</font></div>
                            <div><font face=3D"monospace">=C2=A0 Mboard 0=
: B210</font></div>
                            <div><font face=3D"monospace">=C2=A0 RX Chann=
el: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X DSP: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Subdev:
                                FE-RX2</font></div>
                            <div><font face=3D"monospace">=C2=A0 RX Chann=
el: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X DSP: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 R=
X Subdev:
                                FE-RX1</font></div>
                            <div><font face=3D"monospace">=C2=A0 TX Chann=
el: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X DSP: 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Subdev:
                                FE-TX2</font></div>
                            <div><font face=3D"monospace">=C2=A0 TX Chann=
el: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X DSP: 1</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Dboard: A</font></div>
                            <div><font face=3D"monospace">=C2=A0 =C2=A0 T=
X Subdev:
                                FE-TX1</font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">[00:00:01.86620=
4171]
                                Setting device timestamp to 0...</font></=
div>
                            <div><font face=3D"monospace">[INFO]
                                [MULTI_USRP]=C2=A0 =C2=A0 =C2=A01) catch =
time
                                transition at pps edge</font></div>
                            <div><font face=3D"monospace">[INFO]
                                [MULTI_USRP]=C2=A0 =C2=A0 =C2=A02) set ti=
mes next pps
                                (synchronously)</font></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Asking for clock rate 30.720000 MHz...</f=
ont></div>
                            <div><font face=3D"monospace">[INFO] [B200]
                                Actually got clock rate 30.720000 MHz.</f=
ont></div>
                            <div><font face=3D"monospace">[00:00:05.49734=
9995]
                                Testing receive rate 30.720000 Msps on 2
                                channels</font></div>
                            <div><font face=3D"monospace">Setting TX spp
                                to 2040</font></div>
                            <div><font face=3D"monospace">[00:00:05.51920=
3256]
                                Testing transmit rate 15.360000 Msps on
                                2 channels</font></div>
                            <div><font face=3D"monospace">[00:00:06.77145=
7104]
                                Benchmark complete.</font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">Benchmark rate
                                summary:</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num rece=
ived
                                samples:=C2=A0 =C2=A0 =C2=A075074598</fon=
t></div>
                            <div><font face=3D"monospace">=C2=A0 Num drop=
ped
                                samples:=C2=A0 =C2=A0 =C2=A0 0</font></di=
v>
                            <div><font face=3D"monospace">=C2=A0 Num over=
runs
                                detected:=C2=A0 =C2=A0 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num
                                transmitted samples:=C2=A0 30787680</font=
></div>
                            <div><font face=3D"monospace">=C2=A0 Num sequ=
ence
                                errors (Tx): 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num sequ=
ence
                                errors (Rx): 0</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num unde=
rruns
                                detected:=C2=A0 =C2=A00</font></div>
                            <div><font face=3D"monospace">=C2=A0 Num late
                                commands:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</f=
ont></div>
                            <div><font face=3D"monospace">=C2=A0 Num time=
outs
                                (Tx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font>=
</div>
                            <div><font face=3D"monospace">=C2=A0 Num time=
outs
                                (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0</font>=
</div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace"><br>
                              </font></div>
                            <div><font face=3D"monospace">Done!</font></d=
iv>
                            <div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</div>
                          </div>
                          <div><br>
                          </div>
                          <div>Best Regards,</div>
                          <div>Sachin=C2=A0</div>
                          <br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    You'll likely want to look at adding "num_recv_frames=3D256" and
    "num_send_frames=3D256" to your device arguments at<br>
    =C2=A0 higher rates.<br>
    <br>
    See:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_transport.html">https://files.ettus.com/manual/page_transport.h=
tml</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------sTl6tScaNxPkMq74rFaUMCnA--

--===============5420705946550891150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5420705946550891150==--
