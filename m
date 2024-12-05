Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B509E5D1B
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 18:29:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B76DF3858EA
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 12:29:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733419796; bh=L+B3ucaT89HGhzwHP7XopAFwthujcXr35oFnU/mlBq0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZAE/TZXIJDUb6JM0IRmlSIWb//zHk5PbaNBvBxMABbXffwe+wtKtHR/RmD2bxNjAD
	 Jp4sp+L4nHMe1isKwFkMus8yeuu6BLQ+OWO0IBgD0/Zb1N8jPrMgQYkAQlklLbvDrG
	 ZyL3GLdeosv/vUXsd/1pp1ubjomIgOBuwv7AApFgx88Eblqn+LKmcx/Up7/S/CVoBn
	 zV5CIwK8DWfGBvhCWVlUxrId6AhBvq7w0WBOaGCxey+s4SqhqdmWBCUToLd/N+VlLU
	 oeIn5dRsp53V6Xagd9MlcraycoD9YIFEPrenjUIK4bbEPzuFyFGulksHNUXF4noDSK
	 H/nm43uwruD7g==
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 29DA4385434
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 12:29:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="x7j0FSy6";
	dkim-atps=neutral
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-84194e90c0fso71782739f.2
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 09:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1733419760; x=1734024560; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bE+8iBnNdsZFL472dCW2GvY6AmioEnWm9tWSqODt4Vc=;
        b=x7j0FSy6Pw4tA3xXZ069F9uA54dOEpkPk1EKanj5O340qW8/ZYVI4UqG1itTfP4f2H
         io/xTTfQVX/6CL9UFp92rO/41dQI1ih5b1Abtm9yHF9CBxHJzgRntXidhFwkgNzTfvju
         Ni1v09PRzPp3YsCmLeLzReuKUggk8JM9nhCd4J9njrTm/XmxBOFYYrlGwD2sED2XybsD
         vyRFQrV8SIq1ozpaQIGs53D1cmsOikAxHkU2mjkCubgXVL1eqzSUN/xf/sEzeIBBuQfg
         1ZjAdyXSenYxwpulSV32e91r7dJpYdHFITorZq6fLuCEgWX78dfN5FfTi1BDT5W85fKn
         3vtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733419760; x=1734024560;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bE+8iBnNdsZFL472dCW2GvY6AmioEnWm9tWSqODt4Vc=;
        b=D0wT/9sdnz+8v2Rmbi0eVduthBJmFv0JMIV7Xv084S6YHRf4ee/q2FhNOkM1Uq6Ll7
         wOwzGjAFFnpjIpAXbvilusUv2hkG553ORYkel78lQEdQzMyOnY3Z2pgDz95Fzva50qo9
         qHZmZVwIraVAtQlhcYNQ4E6giRse3D5l6sMS08Js86r6/b8Axmn3mkvW4vgHVcTd++IZ
         8irDUvK5R/TuQOuTLJ1Y4BK9WH/SH8znTNk+QP2rDnBqj9iWobam1tiIuSiqUKUGNUtB
         n51onmSLfYKpSsu4prB6iuAXWTRYwyYxUnDgyM0PxDXTUr5y1c1kDKZwDVn2ieftuwpb
         AdUA==
X-Gm-Message-State: AOJu0YyTer8BjPpRh7T9yHcY6c4gAsA4vHiRpMV1ghMPpEHznETfPR1+
	TTnuiETd7DF16KfIfW5gqSkFP9f6DyA4am1EE+POeq0nj8vqPsevnG+/YGQY2u45xs8Ge1kfrvK
	lAGEGKX5rzAMLlFbeXLbcYAJEgfQmQ4trw7acPi/csBtFfl3FQpG96w==
X-Gm-Gg: ASbGncvLKK3czJ7trC2wcsvfSHKZ1jX+ugmPUy90QVmlF5P1tHLSXAc/TwNTQPkngSg
	DUXoxBM1Qni/7aNqToWBjdtvGaZVH+vdA
X-Google-Smtp-Source: AGHT+IHtYOeDaFajbeIDpQCRRCae46hloBgkikBZXNuJn9PTgR0ctfgWrg683uiE+TwjT/ZryeHgaHINQsdHtSMenOU=
X-Received: by 2002:a05:6602:1651:b0:843:ebf1:16df with SMTP id
 ca18e2360f4ac-844629fdb35mr763712639f.10.1733419760441; Thu, 05 Dec 2024
 09:29:20 -0800 (PST)
MIME-Version: 1.0
References: <n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com>
 <c6884d1d-c5d8-4e18-a65c-238dd84662b2@gmail.com> <CAO=xj9WWy4FwmOVvK1D2-XNKNnvn4q7vUeDv_u=iXbz4zycJ7A@mail.gmail.com>
In-Reply-To: <CAO=xj9WWy4FwmOVvK1D2-XNKNnvn4q7vUeDv_u=iXbz4zycJ7A@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
Date: Thu, 5 Dec 2024 18:29:09 +0100
Message-ID: <CAO=xj9VJDr2Vymb7VvFGQTGZ9ntxMmqo1XjuX1_DmBBBLxDNCw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UFTDTCLUSHUO4VLRCP3NDR7TSMZOBEFW
X-Message-ID-Hash: UFTDTCLUSHUO4VLRCP3NDR7TSMZOBEFW
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UFTDTCLUSHUO4VLRCP3NDR7TSMZOBEFW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8570742026889757531=="

--===============8570742026889757531==
Content-Type: multipart/alternative; boundary="0000000000001176c50628893d2a"

--0000000000001176c50628893d2a
Content-Type: text/plain; charset="UTF-8"

And this is for the prob command:

ad@bm-super11-intel:~$  uhd_usrp_probe --args
"type=n3xx,product=n310,addr=10.10.0.100"
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11;
UHD_4.7.0.HEAD-0-ga5ed1872
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.10.0.100,type=n3xx,product=n310,serial=32000F1,name=ni-n3xx-32000F1,fpga=XG,claimed=False,addr=10.10.0.100
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=XG,mgmt_addr=10.10.0.100,name=ni-n3xx-32000F1,product=n310,clock_source=internal,time_source=internal'.
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-32000F1
|   |   dboard_0_pid: 336
|   |   dboard_0_serial: 31F6BD1
|   |   dboard_1_pid: 336
|   |   dboard_1_serial: 31F6BD5
|   |   eeprom_version: 3
|   |   fs_version: 20240628134248
|   |   mender_artifact: v4.7.0.0_n3xx
|   |   mpm_sw_version: 4.7.0.0-ga5ed1872
|   |   pid: 16962
|   |   product: n310
|   |   rev: 10
|   |   rpc_connection: remote
|   |   serial: 32000F1
|   |   type: n3xx
|   |   MPM Version: 5.3
|   |   FPGA Version: 8.2
|   |   FPGA git hash: c37b318.clean
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo, sfp0
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
gps_time, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/Radio#0:0
|   |   * 0/Radio#0:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#0:0
|   |   * 0/SEP#1:0==>0/DUC#0:1
|   |   * 0/DUC#0:1==>0/Radio#0:1
|   |   * 0/Radio#0:1==>0/DDC#0:1
|   |   * 0/DDC#0:1==>0/SEP#1:0
|   |   * 0/SEP#2:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/Radio#1:0
|   |   * 0/Radio#1:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#2:0
|   |   * 0/SEP#3:0==>0/DUC#1:1
|   |   * 0/DUC#1:1==>0/Radio#1:1
|   |   * 0/Radio#1:1==>0/DDC#1:1
|   |   * 0/DDC#1:1==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/Replay#0:0
|   |   * 0/Replay#0:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/Replay#0:1
|   |   * 0/Replay#0:1==>0/SEP#5:0
|   |   * 0/SEP#6:0==>0/Replay#0:2
|   |   * 0/Replay#0:2==>0/SEP#6:0
|   |   * 0/SEP#7:0==>0/Replay#0:3
|   |   * 0/Replay#0:3==>0/SEP#7:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 1
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 1
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 1
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 1
|   |   |   Name: Magnesium
|   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

ad@bm-super11-intel:~$

On Thu, 5 Dec 2024 at 18:27, Houshang <houshang.azizi@accelleran.com> wrote:

> Hi Marcus
> Here it is:
>
> ad@bm-super11-intel:~$ sudo /usr/local/lib/uhd/examples/benchmark_rate
> --args "type=n3xx,product=n310,addr=10.10.0.100,master_clock_rate=125e6"
> --rx_rate 25e6 --tx_rate 25e6
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11;
> UHD_4.7.0.HEAD-0-ga5ed1872
> [00:00:00.000131] Creating the usrp device with:
> type=n3xx,product=n310,addr=10.10.0.100,master_clock_rate=125e6...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=10.10.0.100,type=n3xx,product=n310,serial=32000F1,name=ni-n3xx-32000F1,fpga=XG,claimed=False,addr=10.10.0.100,master_clock_rate=125e6
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=XG,master_clock_rate=125e6,mgmt_addr=10.10.0.100,name=ni-n3xx-32000F1,product=n310,clock_source=internal,time_source=internal'.
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
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
> Select an even decimation to ensure that a halfband filter is enabled.
> Decimations factorable by 4 will enable 2 halfbands, those factorable by 8
> will enable 3 halfbands.
> decimation = dsp_rate/samp_rate -> 5
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
> 64 bytes from 10.10.0.100: icmp_seq=1 ttl=64 time=0.311 ms
> 64 bytes from 10.10.0.100: icmp_seq=2 ttl=64 time=0.297 ms
> ^C
> --- 10.10.0.100 ping statistics ---
> 2 packets transmitted, 2 received, 0% packet loss, time 1006ms
> rtt min/avg/max/mdev = 0.297/0.304/0.311/0.007 ms
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
>> ============================================
>>
>> 0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci
>> unused=i40e
>>
>> 0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci
>> unused=i40e
>>
>> Network devices using kernel driver
>>
>> ===================================
>>
>> 0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=eno1 drv=ixgbe
>> unused=vfio-pci *Active*
>>
>> 0000:04:00.1 'Ethernet Controller 10G X550T 1563' if=eno2 drv=ixgbe
>> unused=vfio-pci
>>
>> 0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens1f0
>> drv=i40e unused=vfio-pci
>>
>> 0000:43:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens1f3
>> drv=i40e unused=vfio-pci *Active*
>>
>> 0000:70:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens2f0
>> drv=i40e unused=vfio-pci
>>
>> 0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens2f1
>> drv=i40e unused=vfio-pci
>>
>> Other Baseband devices
>>
>> ======================
>>
>> 0000:f7:00.0 'Device 57c0' unused=vfio-pci
>>
>> No 'Crypto' devices detected
>>
>> ============================
>>
>> DMA devices using kernel driver
>>
>> ===============================
>>
>> 0000:f6:01.0 'Device 0b25' drv=idxd unused=vfio-pci
>>
>> No 'Eventdev' devices detected
>>
>> ==============================
>>
>> No 'Mempool' devices detected
>>
>> =============================
>>
>> No 'Compress' devices detected
>>
>> ==============================
>>
>> No 'Misc (rawdev)' devices detected
>>
>> ===================================
>>
>> No 'Regex' devices detected
>>
>> ===========================
>>
>> No 'ML' devices detected
>>
>> ========================
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
>> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev "A:0
>> B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" --tx_channels
>> 0,1 --args
>> "addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1"
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
>> addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1...
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
>
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
> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>
>
>


-- 

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>

--0000000000001176c50628893d2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>And this is for the prob command:</div><div><br></div=
><div>ad@bm-super11-intel:~$ =C2=A0uhd_usrp_probe --args &quot;type=3Dn3xx,=
product=3Dn310,addr=3D10.10.0.100&quot;<br>[INFO] [UHD] linux; GNU C++ vers=
ion 11.4.0; Boost_107400; DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D10.10.0.=
100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3Dni-n3xx-32000F1,fpga=
=3DXG,claimed=3DFalse,addr=3D10.10.0.100<br>[WARNING] [MPM.RPCServer] A tim=
eout event occured!<br>[INFO] [MPM.PeriphManager] init() called with device=
 args `fpga=3DXG,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn=
310,clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>=C2=A0 ________=
_____________________________________________<br>=C2=A0/<br>| =C2=A0 =C2=A0=
 =C2=A0 Device: N300-Series Device<br>| =C2=A0 =C2=A0 _____________________=
________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 Mboard: ni-n3xx-32000F1<br>| =C2=A0 | =C2=A0 dboard_0_pid: 33=
6<br>| =C2=A0 | =C2=A0 dboard_0_serial: 31F6BD1<br>| =C2=A0 | =C2=A0 dboard=
_1_pid: 336<br>| =C2=A0 | =C2=A0 dboard_1_serial: 31F6BD5<br>| =C2=A0 | =C2=
=A0 eeprom_version: 3<br>| =C2=A0 | =C2=A0 fs_version: 20240628134248<br>| =
=C2=A0 | =C2=A0 mender_artifact: v4.7.0.0_n3xx<br>| =C2=A0 | =C2=A0 mpm_sw_=
version: 4.7.0.0-ga5ed1872<br>| =C2=A0 | =C2=A0 pid: 16962<br>| =C2=A0 | =
=C2=A0 product: n310<br>| =C2=A0 | =C2=A0 rev: 10<br>| =C2=A0 | =C2=A0 rpc_=
connection: remote<br>| =C2=A0 | =C2=A0 serial: 32000F1<br>| =C2=A0 | =C2=
=A0 type: n3xx<br>| =C2=A0 | =C2=A0 MPM Version: 5.3<br>| =C2=A0 | =C2=A0 F=
PGA Version: 8.2<br>| =C2=A0 | =C2=A0 FPGA git hash: c37b318.clean<br>| =C2=
=A0 | =C2=A0 RFNoC capable: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 =
Time sources: =C2=A0internal, external, gpsdo, sfp0<br>| =C2=A0 | =C2=A0 Cl=
ock sources: external, internal, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: ref_lo=
cked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv<br>| =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:=
<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0 | =C2=A0 =
* 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#1<br>=
| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<br>| =C2=A0 =
| =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 __________________________________=
___________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
Static connections on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=
=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&g=
t;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =
=C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#1:0=3D=3D&gt;0/DUC#0:1<br>| =C2=A0 | =C2=A0 * 0/DUC#0:1=3D=3D&gt;0/Radio#0=
:1<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=
=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&g=
t;0/DUC#1:0<br>| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=
=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#=
1:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DUC#1:1<=
br>| =C2=A0 | =C2=A0 * 0/DUC#1:1=3D=3D&gt;0/Radio#1:1<br>| =C2=A0 | =C2=A0 =
* 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;=
0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>| =C2=
=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/S=
EP#5:0<br>| =C2=A0 | =C2=A0 * 0/SEP#6:0=3D=3D&gt;0/Replay#0:2<br>| =C2=A0 |=
 =C2=A0 * 0/Replay#0:2=3D=3D&gt;0/SEP#6:0<br>| =C2=A0 | =C2=A0 * 0/SEP#7:0=
=3D=3D&gt;0/Replay#0:3<br>| =C2=A0 | =C2=A0 * 0/Replay#0:3=3D=3D&gt;0/SEP#7=
:0<br>| =C2=A0 =C2=A0 _____________________________________________________=
<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#=
0<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq=
 range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic=
: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 =
to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0=
 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 65.0 step=
 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000=
000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: =
TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0=
 | =C2=A0 Gain range all: 0.0 to 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO =
offset: No<br>| =C2=A0 =C2=A0 _____________________________________________=
________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: =
0/Radio#0<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________=
________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0=
 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Ga=
in range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain ran=
ge all: 0.0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth ran=
ge: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Con=
nection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=
=A0 | =C2=A0 =C2=A0 _____________________________________________________<b=
r>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX =
Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range=
 rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa:=
 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 t=
o 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 75.0=
 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 1=
00000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br=
>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 _________=
____________________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>| =C2=A0 | =C2=A0 =C2=A0=
 _____________________________________________________<br>| =C2=A0 | =C2=A0=
 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 Ante=
nnas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Gain range all: 0.0 to 65.0 step 0.5 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 =
Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 ____________________________=
_________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: =
Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 G=
ain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain ra=
nge amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range al=
l: 0.0 to 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 2=
0000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connecti=
on Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1<br>| =C2=A0=
 | =C2=A0 =C2=A0 _____________________________________________________<br>|=
 =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Fro=
ntend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0=
 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0 Fr=
eq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range rf=
ic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.=
0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0=
.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 75.0 st=
ep 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 1000=
00000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: =
TX/RX, RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6=
000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step =
0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 75.0 step 0.5 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 H=
z<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br><br>ad@bm-super11-intel:~$ <br></div></div><br=
><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, 5 Dec 2024 at 18:27, Houshang &lt;<a href=3D"mailto:ho=
ushang.azizi@accelleran.com">houshang.azizi@accelleran.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>Hi Marcus</div><div>Here it is:</div><div><br></div><div><span style=
=3D"font-family:monospace">ad@bm-super11-intel:~$ sudo /usr/local/lib/uhd/e=
xamples/benchmark_rate --args &quot;type=3Dn3xx,product=3Dn310,addr=3D10.10=
.0.100,master_clock_rate=3D125e6&quot; --rx_rate 25e6 --tx_rate 25e6<br><br=
>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11; UHD_=
4.7.0.HEAD-0-ga5ed1872<br>[00:00:00.000131] Creating the usrp device with: =
type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D125e6...<=
br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3Dni-n3xx-3=
2000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.0.100,master_clock_rate=3D125=
e6<br>[WARNING] [MPM.RPCServer] A timeout event occured!<br>[INFO] [MPM.Per=
iphManager] init() called with device args `fpga=3DXG,master_clock_rate=3D1=
25e6,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn310,clock_so=
urce=3Dinternal,time_source=3Dinternal&#39;.<br>Using Device: Single USRP:<=
br>=C2=A0 Device: N300-Series Device<br>=C2=A0 Mboard 0: n310<br>=C2=A0 RX =
Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=
=A0 =C2=A0 RX Subdev: Magnesium<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX=
 DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: Magnesium=
<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=A0 RX DSP: 2<br>=C2=A0 =C2=A0 RX Dbo=
ard: B<br>=C2=A0 =C2=A0 RX Subdev: Magnesium<br>=C2=A0 RX Channel: 3<br>=C2=
=A0 =C2=A0 RX DSP: 3<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subd=
ev: Magnesium<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =
=C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br>=C2=A0 TX Chan=
nel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =
=C2=A0 TX Subdev: Magnesium<br>=C2=A0 TX Channel: 2<br>=C2=A0 =C2=A0 TX DSP=
: 2<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br>=
=C2=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 3<br>=C2=A0 =C2=A0 TX Dboard:=
 B<br>=C2=A0 =C2=A0 TX Subdev: Magnesium<br><br>[00:00:22.270989651] Settin=
g device timestamp to 0...<br>[WARNING] [0/DDC#0] The requested decimation =
is odd; the user should expect passband CIC rolloff.<br>Select an even deci=
mation to ensure that a halfband filter is enabled.<br>Decimations factorab=
le by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfba=
nds.<br>decimation =3D dsp_rate/samp_rate -&gt; 5<br>[WARNING] [0/DDC#0] Th=
e requested decimation is odd; the user should expect passband CIC rolloff.=
<br>Select an even decimation to ensure that a halfband filter is enabled.<=
br>Decimations factorable by 4 will enable 2 halfbands, those factorable by=
 8 will enable 3 halfbands.<br>decimation =3D dsp_rate/samp_rate -&gt; 5<br=
>[WARNING] [0/DDC#0] The requested decimation is odd; the user should expec=
t passband CIC rolloff.<br>Select an even decimation to ensure that a halfb=
and filter is enabled.<br>Decimations factorable by 4 will enable 2 halfban=
ds, those factorable by 8 will enable 3 halfbands.<br>decimation =3D dsp_ra=
te/samp_rate -&gt; 5<br>[WARNING] [0/DDC#0] The requested decimation is odd=
; the user should expect passband CIC rolloff.<br>Select an even decimation=
 to ensure that a halfband filter is enabled.<br>Decimations factorable by =
4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.<b=
r>decimation =3D dsp_rate/samp_rate -&gt; 5<br>[WARNING] [0/DDC#1] The requ=
ested decimation is odd; the user should expect passband CIC rolloff.<br>Se=
lect an even decimation to ensure that a halfband filter is enabled.<br>Dec=
imations factorable by 4 will enable 2 halfbands, those factorable by 8 wil=
l enable 3 halfbands.<br>decimation =3D dsp_rate/samp_rate -&gt; 5<br>[WARN=
ING] [0/DDC#1] The requested decimation is odd; the user should expect pass=
band CIC rolloff.<br>Select an even decimation to ensure that a halfband fi=
lter is enabled.<br>Decimations factorable by 4 will enable 2 halfbands, th=
ose factorable by 8 will enable 3 halfbands.<br>decimation =3D dsp_rate/sam=
p_rate -&gt; 5<br>[WARNING] [0/DDC#1] The requested decimation is odd; the =
user should expect passband CIC rolloff.<br>Select an even decimation to en=
sure that a halfband filter is enabled.<br>Decimations factorable by 4 will=
 enable 2 halfbands, those factorable by 8 will enable 3 halfbands.<br>deci=
mation =3D dsp_rate/samp_rate -&gt; 5<br>[WARNING] [0/DDC#1] The requested =
decimation is odd; the user should expect passband CIC rolloff.<br>Select a=
n even decimation to ensure that a halfband filter is enabled.<br>Decimatio=
ns factorable by 4 will enable 2 halfbands, those factorable by 8 will enab=
le 3 halfbands.<br>decimation =3D dsp_rate/samp_rate -&gt; 5<br>[WARNING] [=
0/DUC#0] The requested interpolation is odd; the user should expect passban=
d CIC rolloff.<br>Select an even interpolation to ensure that a halfband fi=
lter is enabled.<br><br>[WARNING] [0/DUC#0] The requested interpolation is =
odd; the user should expect passband CIC rolloff.<br>Select an even interpo=
lation to ensure that a halfband filter is enabled.<br><br>[WARNING] [0/DUC=
#1] The requested interpolation is odd; the user should expect passband CIC=
 rolloff.<br>Select an even interpolation to ensure that a halfband filter =
is enabled.<br><br>[WARNING] [0/DUC#1] The requested interpolation is odd; =
the user should expect passband CIC rolloff.<br>Select an even interpolatio=
n to ensure that a halfband filter is enabled.<br><br>Setting TX spp to 364=
<br>[00:00:22.285623308] Testing receive rate 25.000000 Msps on 1 channels<=
br>[00:00:22.290554120] Testing transmit rate 25.000000 Msps on 1 channels<=
br>UOUUUUUUUUUUUUUUUUUterminate called after throwing an instance of &#39;u=
hd::op_timeout&#39;<br>=C2=A0 what(): =C2=A0RfnocError: OpTimeout: Control =
operation timed out waiting for ACK<br>Aborted<br>ad@bm-super11-intel:~$ =
=C2=A0ping 10.10.0.100<br>PING 10.10.0.100 (10.10.0.100) 56(84) bytes of da=
ta.<br>64 bytes from <a href=3D"http://10.10.0.100" target=3D"_blank">10.10=
.0.100</a>: icmp_seq=3D1 ttl=3D64 time=3D0.311 ms<br>64 bytes from <a href=
=3D"http://10.10.0.100" target=3D"_blank">10.10.0.100</a>: icmp_seq=3D2 ttl=
=3D64 time=3D0.297 ms<br>^C<br>--- 10.10.0.100 ping statistics ---<br>2 pac=
kets transmitted, 2 received, 0% packet loss, time 1006ms<br>rtt min/avg/ma=
x/mdev =3D 0.297/0.304/0.311/0.007 ms<br>ad@bm-super11-intel:~$ =C2=A0uhd_f=
ind_devices<br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DP=
DK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>-----------------------------------=
---------------<br>-- UHD Device 0<br>-------------------------------------=
-------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 32000F1<br>=C2=A0=
 =C2=A0 addr: 10.10.0.100<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 =
fpga: XG<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.0.100<br>=C2=A0 =C2=A0 name: ni-=
n3xx-32000F1<br>=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx<br>=
<br><br>ad@bm-super11-intel:~$ </span><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 5 Dec 2024 at 18:23=
, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"=
_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 05/12/2024 11:44,
      <a href=3D"mailto:houshang.azizi@accelleran.com" target=3D"_blank">ho=
ushang.azizi@accelleran.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hello</p>
      <p>Have you managed to fix this?</p>
      <p>I have a similar issue as you can see below.</p>
      <p>Thanks</p>
    </blockquote>
    Well, again, what happens when you do the simple benchmark_rate test
    *WITHOUT* DPDK involved?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <p><br>
      </p>
      <p><code>ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py
          --status</code></p>
      <p><code>Network devices using DPDK-compatible driver</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</c=
ode></p>
      <p><code>0000:43:00.1 &#39;Ethernet Controller X710 for 10GbE SFP+
          1572&#39; drv=3Dvfio-pci unused=3Di40e</code></p>
      <p><code>0000:43:00.2 &#39;Ethernet Controller X710 for 10GbE SFP+
          1572&#39; drv=3Dvfio-pci unused=3Di40e</code></p>
      <p><code>Network devices using kernel driver</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>0000:04:00.0 &#39;Ethernet Controller 10G X550T 1563&#39; if=
=3Deno1
          drv=3Dixgbe unused=3Dvfio-pci *Active*</code></p>
      <p><code>0000:04:00.1 &#39;Ethernet Controller 10G X550T 1563&#39; if=
=3Deno2
          drv=3Dixgbe unused=3Dvfio-pci </code></p>
      <p><code>0000:43:00.0 &#39;Ethernet Controller X710 for 10GbE SFP+
          1572&#39; if=3Dens1f0 drv=3Di40e unused=3Dvfio-pci </code></p>
      <p><code>0000:43:00.3 &#39;Ethernet Controller X710 for 10GbE SFP+
          1572&#39; if=3Dens1f3 drv=3Di40e unused=3Dvfio-pci *Active*</code=
></p>
      <p><code>0000:70:00.0 &#39;Ethernet Controller X710 for 10GbE SFP+
          1572&#39; if=3Dens2f0 drv=3Di40e unused=3Dvfio-pci </code></p>
      <p><code>0000:70:00.1 &#39;Ethernet Controller X710 for 10GbE SFP+
          1572&#39; if=3Dens2f1 drv=3Di40e unused=3Dvfio-pci </code></p>
      <p><code>Other Baseband devices</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</code></p>
      <p><code>0000:f7:00.0 &#39;Device 57c0&#39; unused=3Dvfio-pci</code><=
/p>
      <p><code>No &#39;Crypto&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>DMA devices using kernel driver</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>0000:f6:01.0 &#39;Device 0b25&#39; drv=3Didxd unused=3Dvfio-=
pci </code></p>
      <p><code>No &#39;Eventdev&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>No &#39;Mempool&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>No &#39;Compress&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>No &#39;Misc (rawdev)&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>No &#39;Regex&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</code></p>
      <p><code>No &#39;ML&#39; devices detected</code></p>
      <p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$ </code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$ uhd_find_devices</code></p=
>
      <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
      <p><code>--------------------------------------------------</code></p=
>
      <p><code>-- UHD Device 0</code></p>
      <p><code>--------------------------------------------------</code></p=
>
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
          /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6
          --rx_subdev &quot;A:0 B:0&quot; --rx_channels 0,1 --tx_rate 125e6
          --tx_subdev &quot;A:0 B:0&quot; --tx_channels 0,1 --args
&quot;addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,=
master_clock_rate=3D125e6,use_dpdk=3D1&quot;</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
      <p><code>EAL: Detected CPU lcores: 64</code></p>
      <p><code>EAL: Detected NUMA nodes: 1</code></p>
      <p><code>EAL: Detected shared linkage of DPDK</code></p>
      <p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code>=
</p>
      <p><code>EAL: Selected IOVA mode &#39;VA&#39;</code></p>
      <p><code>EAL: VFIO support initialized</code></p>
      <p><code>EAL: Using IOMMU type 1 (Type 1)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(1)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(4)</code></p>
      <p><code>EAL: Probe PCI driver: net_i40e (8086:1572) device:
          0000:43:00.1 (socket 0)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(1)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(4)</code></p>
      <p><code>EAL: Probe PCI driver: net_i40e (8086:1572) device:
          0000:43:00.2 (socket 0)</code></p>
      <p><code>TELEMETRY: No legacy callbacks, legacy socket not created</c=
ode></p>
      <p><code>i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for
          RX</code></p>
      <p><code>i40e_dev_rx_queue_start(): Failed to allocate RX queue
          mbuf</code></p>
      <p><code>[ERROR] [DPDK] Port 1: Could not start device</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>[00:00:00.000306] Creating the usrp device with:
addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,master=
_clock_rate=3D125e6,use_dpdk=3D1...</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>[ERROR] [X300] X300 Network discovery error RuntimeError:
          DPDK: Failure to start device</code></p>
      <p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>
      <p><code>[ERROR] [UHD] Device discovery error: RuntimeError: Error
          with EAL initialization</code></p>
      <p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>
      <p><code>[ERROR] [UHD] Device discovery error: RuntimeError: Error
          with EAL initialization</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>Error: LookupError: KeyError: No devices found for
          -----&gt;</code></p>
      <p><code>Device Address:</code></p>
      <p><code> addr: 10.10.1.100</code></p>
      <p><code> second_addr: 10.10.2.100</code></p>
      <p><code> mgmt_addr: 10.10.0.100</code></p>
      <p><code> master_clock_rate: 125e6</code></p>
      <p><code> use_dpdk: 1</code></p>
      <p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>
      <p><code>[ERROR] [X300] X300 Network discovery error RuntimeError:
          Error with EAL initialization</code></p>
      <p><code>Segmentation fault</code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$</code></p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>

--0000000000001176c50628893d2a--

--===============8570742026889757531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8570742026889757531==--
