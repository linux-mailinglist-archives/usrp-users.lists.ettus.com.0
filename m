Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D82426F85
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 19:24:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C843E3851A4
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 13:24:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i99dIKM1";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 55529384E7C
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 13:23:42 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id w2so1940911qtn.0
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 10:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=ukW02abd4e8Evn389DNWWAj23M10LT2LuJS328wqZ5Q=;
        b=i99dIKM1U/Q4fqPJeNp5HHOUiEHnuenPUoK4FD+cYgeNALxD/Ib76TbAeK7DuA5DbW
         7V4wftJPKesvOpJAipq5cLV24t7xY14UDyUrSkEGQ3gyJxyNpuKpw7ZhAmsbkM4+E8X7
         sdvyCcqrac4xT0OpzPKcE0VE7cwwJ4ucdyV3NYJIamLoLAiAIaBCw7Q6HHxX+F7ivCIh
         SwKcnmHXhOshqAF/Vf5zdJSYMMIggh4Hkb7uSJkv3Y+Yk855eoHgwEd9OklMJSdpKwJr
         ricDEal4pijL27UMwFm/QwSv5ftpdsynsBTVxgv8ANRuGQRuT8KvaR8zF29tY9SFwaWE
         6wMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=ukW02abd4e8Evn389DNWWAj23M10LT2LuJS328wqZ5Q=;
        b=SUllUv2e38slDrV5A3jK9qIT7AcoXTUEBB6rSwF4zf6pJh7nJ3HVa0ZLgllJPrxAW5
         MlW6ccjUKtV6n+gEy4/gzF71NeuTKt61+lpccyXSUzg3QM7bWcr8TtGxkYEvb6dWm1ul
         dQukPj/xn8qANuoooybaVOnEeVnjrQuPXnJzdf2fvK6gHbgxbwcltUylsVyNxp85GJtG
         5+oNN4wIDU1YNkYv5ci4Y+J6eONsWM93IbsDi+7PsKNkSEZcCtFiZGOwHySQPTu/uDXx
         RgfWyheEpvb63icJBpGT9SV9wvdpO4mjaAgG/CPvXzoFPpHE9u+88bVtXXqxSWh/Jofj
         Fn7g==
X-Gm-Message-State: AOAM530osqG8EOpyvQ2GsulujrvtBKAxLtFY9qETxP4Y/eMIoraexH5H
	ucfnpQ+RpO+QcRu+RpvWQGZpV47NIRg=
X-Google-Smtp-Source: ABdhPJzmACMiJx/5xknBhnlPVZ8BwBrT5FG2ttgum0UWjZHQxxsMufQU672uDWhlOMzju3nRGMgt/g==
X-Received: by 2002:ac8:7f86:: with SMTP id z6mr13287827qtj.71.1633713821338;
        Fri, 08 Oct 2021 10:23:41 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id x6sm2584999qts.79.2021.10.08.10.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 10:23:40 -0700 (PDT)
To: Jonathan Tobin <Tobin@augustusaero.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
 <CAB__hTR35saQd6PsoATaN93woLe_0g1Bnq2qoLzPATkZmMnz7A@mail.gmail.com>
 <BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <9449daef-bcc9-e996-f0eb-be6d8676f1c6@gmail.com>
 <BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <f69f676c-429d-6bfc-3c8f-e9fe2d576dda@gmail.com>
 <BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29@BN7PR05MB4500.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <35d603e1-9602-deab-f662-5b830a37fd8d@gmail.com>
Date: Fri, 8 Oct 2021 13:23:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29@BN7PR05MB4500.namprd05.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: 3GHNIZHI677ES45LRPGVY762AAJ6TP5F
X-Message-ID-Hash: 3GHNIZHI677ES45LRPGVY762AAJ6TP5F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3GHNIZHI677ES45LRPGVY762AAJ6TP5F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6962399407372220183=="

This is a multi-part message in MIME format.
--===============6962399407372220183==
Content-Type: multipart/alternative;
 boundary="------------9B3305E9A2C32545BCAAFB7F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9B3305E9A2C32545BCAAFB7F
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-08 1:20 p.m., Jonathan Tobin wrote:
>
> Sure. Find device still displays =96 reachable: no.
>
> *Here is the output from using a host running Windows:*
>
> C:\Program Files\UHD3\bin>uhd_find_devices
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> =A0=A0=A0 serial: 3218B5F
>
> =A0=A0=A0 claimed: False
>
> =A0 =A0=A0mgmt_addr: 192.168.10.2
>
> =A0=A0=A0 product: n310
>
> =A0=A0=A0 reachable: No
>
> =A0=A0=A0 type: n3xx
>
> C:\Program Files\UHD3\bin>uhd_usrp_probe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD=20
> session. Specify find_all to find all devices.
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Empty Device Address
>
> C:\Program Files\UHD3\bin>uhd_usrp_probe --args=20
> "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> [ERROR] [UHD] Device discovery error: send_to: A socket operation was=20
> attempted to an unreachable host
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> =A0=A0=A0 addr: 192.168.10.2
>
> =A0=A0=A0 type: n3xx
>
> =A0=A0=A0 product: n310
>
So, this is likely a windows networking configuration issue--perhaps=20
some firewalling.=A0 But that's a subject with which I'm utterly unfamili=
ar.

Do you have network-based anti-virus protections turned on, and are they=20
maybe interfering?


> *Here is the output from using a host running Linux:*
>
> jonathan@bob-XPS-8930:/home/bob/sdr_setup$ uhd_find_devices
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_106501;=20
> UHD_3.15.0.0-65-g1b60cf86
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> =A0 =A0 serial: 3218B5F
>
> =A0 =A0 addr: 192.168.10.2
>
> =A0 =A0 claimed: False
>
> =A0 =A0 mgmt_addr: 192.168.10.2
>
> =A0 =A0 product: n310
>
> =A0 =A0 type: n3xx
>
> jonathan@bob-XPS-8930:/home/bob/sdr_setup$ uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_106501;=20
> UHD_3.15.0.0-65-g1b60cf86
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,cl=
aimed=3DFalse,addr=3D192.168.10.2
>
> [INFO] [MPM.main] Launching USRP/MPM, version: 3.15.0.0-gaea0e2de
>
> [INFO] [MPM.main] Spawning RPC process...
>
> [INFO] [MPM.PeriphManager] Device serial number: 3218B5F
>
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `clock_source=3Dinternal,time_source=3Dinternal'.
>
> [INFO] [MPM.RPCServer] RPC server ready!
>
> [INFO] [MPM.RPCServer] Spawning watchdog task...
>
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `product=3Dn310,clock_source=3Dinternal,mgmt_addr=3D192.168.10.2,time_s=
ource=3Dinternal'.
>
> [INFO] [0/Replay_0] Initializing block control (NOC ID:=20
> 0x4E91A00000000004)
>
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000000113=
12)
>
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1000000113=
12)
>
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002=
)
>
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002=
)
>
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> _____________________________________________________
>
> =A0/
>
> | =A0 =A0 =A0 Device: N300-Series Device
>
> | _____________________________________________________
>
> | =A0 =A0/
>
> | =A0 | =A0 =A0 =A0 Mboard: ni-n3xx-3218B5F
>
> | =A0 | eeprom_version: 3
>
> | =A0 | mpm_version: 3.15.0.0-gaea0e2de
>
> | =A0 | =A0 pid: 16962
>
> | =A0 | =A0 product: n310
>
> | =A0 | =A0 rev: 10
>
> | =A0 | rpc_connection: remote
>
> | =A0 | =A0 serial: 3218B5F
>
> | =A0 | =A0 type: n3xx
>
> | =A0 | =A0 MPM Version: 1.2
>
> | =A0 | =A0 FPGA Version: 5.3
>
> | =A0 | =A0 FPGA git hash: fde2a94.clean
>
> | =A0 | =A0 RFNoC capable: Yes
>
> | =A0 |
>
> | =A0 | =A0 Time sources: =A0internal, external, gpsdo, sfp0
>
> | =A0 | =A0 Clock sources: external, internal, gpsdo
>
> | =A0 | =A0 Sensors: gps_sky, gps_locked, ref_locked, temp, gps_tpv,=20
> gps_time, fan, gps_gpgga
>
> | =A0 | _____________________________________________________
>
> | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 =A0 =A0 RX Dboard: A
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | RX Frontend: 0
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX, RX2, CAL, LOCAL
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 75.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | RX Frontend: 1
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX, RX2, CAL, LOCAL
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 75.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | RX Codec: A
>
> | =A0 | =A0 | =A0 | Name: AD9371 Dual ADC
>
> | =A0 | =A0 | =A0 | Gain Elements: None
>
> | =A0 | _____________________________________________________
>
> | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 =A0 =A0 RX Dboard: B
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | RX Frontend: 0
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX, RX2, CAL, LOCAL
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 75.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | RX Frontend: 1
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX, RX2, CAL, LOCAL
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 75.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | RX Codec: B
>
> | =A0 | =A0 | =A0 | Name: AD9371 Dual ADC
>
> | =A0 | =A0 | =A0 | Gain Elements: None
>
> | =A0 | _____________________________________________________
>
> | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 =A0 =A0 TX Dboard: A
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | TX Frontend: 0
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 65.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | TX Frontend: 1
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 65.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | TX Codec: A
>
> | =A0 | =A0 | =A0 | Name: AD9371 Dual DAC
>
> | =A0 | =A0 | =A0 | Gain Elements: None
>
> | =A0 | _____________________________________________________
>
> | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 =A0 =A0 TX Dboard: B
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | TX Frontend: 0
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 65.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | TX Frontend: 1
>
> | =A0 | =A0 | =A0 | Name: Magnesium
>
> | =A0 | =A0 | =A0 | Antennas: TX/RX
>
> | =A0 | =A0 | =A0 | Sensors: lo_locked, lowband_lo_locked, ad9371_lo_lo=
cked
>
> | =A0 | =A0 | =A0 | Freq range: 1.000 to 6000.000 MHz
>
> | =A0 | =A0 | =A0 | Gain range all: 0.0 to 65.0 step 0.5 dB
>
> | =A0 | =A0 | =A0 | Gain range rfic: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range dsa: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Gain range amp: 0.0 to 0.0 step 0.0 dB
>
> | =A0 | =A0 | =A0 | Bandwidth range: 20000000.0 to 100000000.0 step 0.0=
 Hz
>
> | =A0 | =A0 | =A0 | Connection Type: IQ
>
> | =A0 | =A0 | =A0 | Uses LO offset: No
>
> | =A0 | =A0 | _____________________________________________________
>
> | =A0 | =A0 | =A0 =A0/
>
> | =A0 | =A0 | =A0 | TX Codec: B
>
> | =A0 | =A0 | =A0 | Name: AD9371 Dual DAC
>
> | =A0 | =A0 | =A0 | Gain Elements: None
>
> | =A0 | _____________________________________________________
>
> | =A0 | =A0 =A0/
>
> | =A0 | =A0 | RFNoC blocks on this device:
>
> | =A0 | =A0 |
>
> | =A0 | =A0 | =A0 * Replay_0
>
> | =A0 | =A0 | =A0 * Radio_0
>
> | =A0 | =A0 | =A0 * Radio_1
>
> | =A0 | =A0 | =A0 * DDC_0
>
> | =A0 | =A0 | =A0 * DDC_1
>
> | =A0 | =A0 | =A0 * DUC_0
>
> | =A0 | =A0 | =A0 * DUC_1
>
> | =A0 | =A0 | =A0 * FIFO_0
>
> | =A0 | =A0 | =A0 * FIFO_1
>
> | =A0 | =A0 | =A0 * FIFO_2
>
> | =A0 | =A0 | =A0 * FIFO_3
>
> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, October 8, 2021 11:07 AM
> *To:* Jonathan Tobin <Tobin@augustusaero.com>;=20
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: UHD 3.15 on Windows
>
> On 2021-10-08 1:02 p.m., Jonathan Tobin wrote:
>
>     It does indeed fail. I updated the image on the N310, but the
>     issue remains the same.
>
>     Thanks,
>
>     Jonathan
>
> Could you share with us the output of the (newly) failing uhd_usrp_prob=
e?
>
> And you confirm that the SAME device works from Linux under the same=20
> physical configuration?
>
>
>
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Thursday, October 7, 2021 1:27 PM
>     *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com=
>
>     *Subject:* [USRP-users] Re: UHD 3.15 on Windows
>
>     On 2021-10-07 2:31 p.m., Jonathan Tobin wrote:
>
>         I am only connected to the USRP via ethernet to SFP+0 port.
>
>         I have no problems with a Linux Host running 3.15.
>
>     Yup, so try:
>
>     uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn31=
0
>
>     If that *still* fails, then you probably have a much-older image
>     on the N310, and should follow the directions for updating it:
>
>     https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_S=
D_Card
>     <https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_=
SD_Card>
>
>
>
>         *From:* Rob Kossler <rkossler@nd.edu> <mailto:rkossler@nd.edu>
>         *Sent:* Thursday, October 7, 2021 11:56 AM
>         *To:* Jonathan Tobin <Tobin@augustusaero.com>
>         <mailto:Tobin@augustusaero.com>
>         *Cc:* usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>
>         *Subject:* Re: [USRP-users] UHD 3.15 on Windows
>
>         Also, does the N310 have the 3.15 file system / MPM installed?
>
>         On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler <rkossler@nd.edu
>         <mailto:rkossler@nd.edu>> wrote:
>
>             Perhaps you are just finding the address of the N310 RJ45
>             Ethernet port, but not the address of the SFP+ ports?
>             These are needed for UHD (at least one of them). Are you
>             only connected via 1GB? Do you have a direct=A0link between
>             host PC and one of the SFP+ ports?
>
>             Rob
>
>             On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin
>             <Tobin@augustusaero.com <mailto:Tobin@augustusaero.com>>
>             wrote:
>
>                 Hello =96 I am attempting to install UHD 3.15 on my
>                 Windows 10 PC. I am able to ping and find the device,
>                 but currently unable to probe. Not sure what the issue
>                 is =96 any recommendations?
>
>                 Command Prompt output:
>
>                 C:\Program Files\UHD3\bin>uhd_find_devices
>
>                 [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2;
>                 Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de
>
>                 --------------------------------------------------
>
>                 -- UHD Device 0
>
>                 --------------------------------------------------
>
>                 Device Address:
>
>                 =A0=A0=A0 serial: 3218B5F
>
>                 =A0=A0=A0 claimed: False
>
>                 =A0=A0mgmt_addr: 192.168.10.2
>
>                 =A0=A0=A0 product: n310
>
>                 reachable: No
>
>                 =A0=A0=A0 type: n3xx
>
>                 C:\Program Files\UHD3\bin>uhd_usrp_probe
>
>                 [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2;
>                 Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de
>
>                 [INFO] [MPMD FIND] Found MPM devices, but none are
>                 reachable for a UHD session. Specify find_all to find
>                 all devices.
>
>                 Error: LookupError: KeyError: No devices found for ----=
->
>
>                 Empty Device Address
>
>                 Thanks,
>
>                 Jonathan
>
>                 _______________________________________________
>                 USRP-users mailing list -- usrp-users@lists.ettus.com
>                 <mailto:usrp-users@lists.ettus.com>
>                 To unsubscribe send an email to
>                 usrp-users-leave@lists.ettus.com
>                 <mailto:usrp-users-leave@lists.ettus.com>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:u=
srp-users@lists.ettus.com>
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com=
  <mailto:usrp-users-leave@lists.ettus.com>
>


--------------9B3305E9A2C32545BCAAFB7F
Content-Type: multipart/related;
 boundary="------------9B0A4EE2B7DBC4B55EEED3D5"


--------------9B0A4EE2B7DBC4B55EEED3D5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-08 1:20 p.m., Jonathan Tobi=
n
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29@BN7PR05MB4500.namprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}.MsoChpDefault
	{mso-style-type:export-only;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black">Sure. Find device
              still displays =96 reachable: no.<o:p></o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><b><span
                style=3D"font-size:12.0pt;color:black">Here is the output
                from using a host running Windows:</span></b><span
              style=3D"font-size:12.0pt;color:black"><o:p></o:p></span></=
p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
        </div>
        <p class=3D"MsoNormal">C:\Program
          Files\UHD3\bin&gt;uhd_find_devices<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++
          version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o=
:p></p>
        <p class=3D"MsoNormal">------------------------------------------=
--------<o:p></o:p></p>
        <p class=3D"MsoNormal">-- UHD Device 0<o:p></o:p></p>
        <p class=3D"MsoNormal">------------------------------------------=
--------<o:p></o:p></p>
        <p class=3D"MsoNormal">Device Address:<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 serial: 3218B5F<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 claimed: False<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0 =A0=A0mgmt_addr: 192.168.10.2<o:p></o:=
p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 product: n310<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 reachable: No<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 type: n3xx<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_prob=
e<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++
          version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o=
:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD FIND] Found MPM devices, but
          none are reachable for a UHD session. Specify find_all to find
          all devices.<o:p></o:p></p>
        <p class=3D"MsoNormal">Error: LookupError: KeyError: No devices
          found for -----&gt;<o:p></o:p></p>
        <p class=3D"MsoNormal">Empty Device Address<o:p></o:p></p>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
        </div>
        <p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_prob=
e
          --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"<o:p></o=
:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++
          version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o=
:p></p>
        <p class=3D"MsoNormal">[ERROR] [UHD] Device discovery error:
          send_to: A socket operation was attempted to an unreachable
          host<o:p></o:p></p>
        <p class=3D"MsoNormal">Error: LookupError: KeyError: No devices
          found for -----&gt;<o:p></o:p></p>
        <p class=3D"MsoNormal">Device Address:<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 addr: 192.168.10.2<o:p></o:p></p=
>
        <p class=3D"MsoNormal">=A0=A0=A0 type: n3xx<o:p></o:p></p>
        <div>
          <p class=3D"MsoNormal">=A0=A0=A0 product: n310</p>
        </div>
      </div>
    </blockquote>
    So, this is likely a windows networking configuration issue--perhaps
    some firewalling.=A0 But that's a subject with which I'm utterly
    unfamiliar.<br>
    <br>
    Do you have network-based anti-virus protections turned on, and are
    they maybe interfering?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29@BN7PR05MB4500.namprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p></o:p></span></=
p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><b><span
                style=3D"font-size:12.0pt;color:black">Here is the output
                from using a host running Linux:</span></b><span
              style=3D"font-size:12.0pt;color:black"><o:p></o:p></span></=
p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black">jonathan@bob-XPS-893=
0:/home/bob/sdr_setup$
              uhd_find_devices
              <o:p></o:p></span></p>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [UHD] linux=
;
                GNU C++ version 9.4.0; Boost_106501;
                UHD_3.15.0.0-65-g1b60cf86<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">------------------=
--------------------------------<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">-- UHD Device 0<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">------------------=
--------------------------------<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">Device Address:<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0 =A0 serial: 32=
18B5F<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0 =A0 addr:
                192.168.10.2<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0 =A0 claimed: F=
alse<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0 =A0 mgmt_addr:
                192.168.10.2<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0 =A0 product: n=
310<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0 =A0 type: n3xx=
<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></sp=
an></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></sp=
an></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">jonathan@bob-XPS-8=
930:/home/bob/sdr_setup$
                uhd_usrp_probe<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [UHD] linux=
;
                GNU C++ version 9.4.0; Boost_106501;
                UHD_3.15.0.0-65-g1b60cf86<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [MPMD]
                Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,clai=
med=3DFalse,addr=3D192.168.10.2<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [MPM.main]
                Launching USRP/MPM, version: 3.15.0.0-gaea0e2de<o:p></o:p=
></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [MPM.main]
                Spawning RPC process...<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO]
                [MPM.PeriphManager] Device serial number: 3218B5F<o:p></o=
:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO]
                [MPM.PeriphManager] Initialized 2 daughterboard(s).<o:p><=
/o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO]
                [MPM.PeriphManager] init() called with device args
                `clock_source=3Dinternal,time_source=3Dinternal'.<o:p></o=
:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO]
                [MPM.RPCServer] RPC server ready!<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO]
                [MPM.RPCServer] Spawning watchdog task...<o:p></o:p></spa=
n></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO]
                [MPM.PeriphManager] init() called with device args
`product=3Dn310,clock_source=3Dinternal,mgmt_addr=3D192.168.10.2,time_sou=
rce=3Dinternal'.<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/Replay_0=
]
                Initializing block control (NOC ID: 0x4E91A00000000004)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/Radio_0]
                Initializing block control (NOC ID: 0x12AD100000011312)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/Radio_1]
                Initializing block control (NOC ID: 0x12AD100000011312)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/DDC_0]
                Initializing block control (NOC ID: 0xDDC0000000000000)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/DDC_1]
                Initializing block control (NOC ID: 0xDDC0000000000000)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/DUC_0]
                Initializing block control (NOC ID: 0xD0C0000000000002)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/DUC_1]
                Initializing block control (NOC ID: 0xD0C0000000000002)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/FIFO_0]
                Initializing block control (NOC ID: 0xF1F0000000000000)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/FIFO_1]
                Initializing block control (NOC ID: 0xF1F0000000000000)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/FIFO_2]
                Initializing block control (NOC ID: 0xF1F0000000000000)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">[INFO] [0/FIFO_3]
                Initializing block control (NOC ID: 0xF1F0000000000000)<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">=A0/<o:p></o:p></s=
pan></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 =A0 =A0 Devi=
ce:
                N300-Series Device<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 =A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 =A0/<o:p></o=
:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0 =A0=
 Mboard:
                ni-n3xx-3218B5F<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0
                eeprom_version: 3<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0
                mpm_version: 3.15.0.0-gaea0e2de<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 pid: 1=
6962<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 produc=
t:
                n310<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 rev: 1=
0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0
                rpc_connection: remote<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 serial=
:
                3218B5F<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 type: =
n3xx<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 MPM
                Version: 1.2<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 FPGA
                Version: 5.3<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 FPGA g=
it
                hash: fde2a94.clean<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 RFNoC
                capable: Yes<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 <o:p><=
/o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 Time
                sources: =A0internal, external, gpsdo, sfp0<o:p></o:p></s=
pan></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 Clock
                sources: external, internal, gpsdo<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 Sensor=
s:
                gps_sky, gps_locked, ref_locked, temp, gps_tpv,
                gps_time, fan, gps_gpgga<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0/<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0 =A0 RX
                Dboard: A<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                RX Frontend: 0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                RX Frontend: 1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                RX Codec: A<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: AD9371 Dual ADC<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain Elements: None<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0/<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0 =A0 RX
                Dboard: B<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                RX Frontend: 0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                RX Frontend: 1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                RX Codec: B<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: AD9371 Dual ADC<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain Elements: None<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0/<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0 =A0 TX
                Dboard: A<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                TX Frontend: 0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                TX Frontend: 1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                TX Codec: A<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: AD9371 Dual DAC<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain Elements: None<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0/<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0 =A0 TX
                Dboard: B<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                TX Frontend: 0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                TX Frontend: 1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: Magnesium<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Antennas: TX/RX<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Freq range: 1.000 to 6000.000 MHz<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span>=
</p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o:p></span><=
/p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<o:=
p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Connection Type: IQ<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Uses LO offset: No<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0/<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0 =A0 =A0
                TX Codec: B<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Name: AD9371 Dual DAC<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
| =A0
                Gain Elements: None<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0
                _____________________________________________________<o:p=
></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 =A0/<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
=A0 =A0
                RFNoC blocks on this device:<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
<o:p>
                </o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                Replay_0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                Radio_0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                Radio_1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
* DDC_0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
* DDC_1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
* DUC_0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
* DUC_1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                FIFO_0<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                FIFO_1<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                FIFO_2<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;color:black">| =A0 | =A0 | =A0 =
*
                FIFO_3<o:p></o:p></span></p>
          </div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black"><o:p>=A0</o:p></span=
></p>
        </div>
        <p class=3D"MsoNormal"><img style=3D"width:2.8916in;height:.0208i=
n"
            id=3D"Horizontal_x0020_Line_x0020_1"
            src=3D"cid:part1.F975FD43.584430B1@gmail.com" class=3D""
            width=3D"278" height=3D"2"><o:p></o:p></p>
        <div id=3D"divRplyFwdMsg">
          <p class=3D"MsoNormal"><b><span style=3D"color:black">From:</sp=
an></b><span
              style=3D"color:black"> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
              <b>Sent:</b> Friday, October 8, 2021 11:07 AM<br>
              <b>To:</b> Jonathan Tobin <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:Tobin@augustusaero.com">&lt;Tobin@augustusaero.com&gt;</=
a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject:</b> Re: [USRP-users] Re: UHD 3.15 on Windows</s=
pan>
            <o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">=A0<o:p></o:p></p>
          </div>
        </div>
        <div>
          <div>
            <p class=3D"MsoNormal">On 2021-10-08 1:02 p.m., Jonathan Tobi=
n
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"xmsonormal">It does indeed fail. I updated the
                image on the N310, but the issue remains the same.</p>
              <p class=3D"xmsonormal">=A0</p>
              <p class=3D"xmsonormal">Thanks,</p>
              <p class=3D"xmsonormal">Jonathan</p>
            </div>
          </blockquote>
          <p class=3D"MsoNormal">Could you share with us the output of th=
e
            (newly) failing uhd_usrp_probe?<br>
            <br>
            And you confirm that the SAME device works from Linux under
            the same physical configuration?<br>
            <br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"xmsonormal"><a name=3D"x__MailEndCompose"
                  moz-do-not-send=3D"true">=A0</a></p>
              <div>
                <div style=3D"border:none;border-top:solid #E1E1E1
                  1.0pt;padding:3.0pt 0in 0in 0in">
                  <p class=3D"xmsonormal"><a name=3D"x__MailOriginal"
                      moz-do-not-send=3D"true"><b>From:</b></a> Marcus D.
                    Leech <a href=3D"mailto:patchvonbraun@gmail.com"
                      moz-do-not-send=3D"true">
                      &lt;patchvonbraun@gmail.com&gt;</a> <br>
                    <b>Sent:</b> Thursday, October 7, 2021 1:27 PM<br>
                    <b>To:</b> <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true">usrp-users@lists.ettus.com=
</a><br>
                    <b>Subject:</b> [USRP-users] Re: UHD 3.15 on Windows<=
/p>
                </div>
              </div>
              <p class=3D"xmsonormal">=A0</p>
              <div>
                <p class=3D"xmsonormal">On 2021-10-07 2:31 p.m., Jonathan
                  Tobin wrote:</p>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"xmsonormal">I am only connected to the USRP
                  via ethernet to SFP+0 port. =A0</p>
                <p class=3D"xmsonormal">=A0</p>
                <p class=3D"xmsonormal">I have no problems with a Linux
                  Host running 3.15.</p>
                <p class=3D"xmsonormal">=A0</p>
              </blockquote>
              <p class=3D"xmsonormal" style=3D"margin-bottom:12.0pt">Yup,=
 so
                try:<br>
                <br>
                uhd_usrp_probe --args
                addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310<br>
                <br>
                If that *still* fails, then you probably have a
                much-older image on the N310, and should follow the
                directions for updating it:<br>
                <br>
                <a
href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a=
_SD_Card"
                  moz-do-not-send=3D"true">https://kb.ettus.com/Writing_t=
he_USRP_File_System_Disk_Image_to_a_SD_Card</a><br>
                <br>
                <br>
                <br>
              </p>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <div style=3D"border:none;border-top:solid #E1E1E1
                  1.0pt;padding:3.0pt 0in 0in 0in">
                  <p class=3D"xmsonormal"><b>From:</b> Rob Kossler <a
                      href=3D"mailto:rkossler@nd.edu"
                      moz-do-not-send=3D"true">&lt;rkossler@nd.edu&gt;</a=
>
                    <br>
                    <b>Sent:</b> Thursday, October 7, 2021 11:56 AM<br>
                    <b>To:</b> Jonathan Tobin <a
                      href=3D"mailto:Tobin@augustusaero.com"
                      moz-do-not-send=3D"true">&lt;Tobin@augustusaero.com=
&gt;</a><br>
                    <b>Cc:</b> <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true">usrp-users@lists.ettus.com=
</a><br>
                    <b>Subject:</b> Re: [USRP-users] UHD 3.15 on Windows<=
/p>
                </div>
                <p class=3D"xmsonormal">=A0</p>
                <div>
                  <p class=3D"xmsonormal">Also, does the N310 have the
                    3.15 file system / MPM installed?</p>
                </div>
                <p class=3D"xmsonormal">=A0</p>
                <div>
                  <div>
                    <p class=3D"xmsonormal">On Thu, Oct 7, 2021 at 1:54 P=
M
                      Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
                        moz-do-not-send=3D"true">rkossler@nd.edu</a>&gt;
                      wrote:</p>
                  </div>
                  <blockquote style=3D"border:none;border-left:solid
                    #CCCCCC 1.0pt;padding:0in 0in 0in
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt">
                    <div>
                      <div>
                        <p class=3D"xmsonormal" style=3D"margin-left:40.8=
pt">Perhaps
                          you are just finding the address of the N310
                          RJ45 Ethernet port, but not the address of the
                          SFP+ ports? These are needed for UHD (at least
                          one of them). Are you only connected via 1GB?=A0
                          Do you have a direct=A0link between host PC and
                          one of the SFP+ ports?</p>
                        <div>
                          <p class=3D"xmsonormal"
                            style=3D"margin-left:40.8pt">Rob</p>
                        </div>
                      </div>
                      <p class=3D"xmsonormal" style=3D"margin-left:40.8pt=
">=A0</p>
                      <div>
                        <div>
                          <p class=3D"xmsonormal"
                            style=3D"margin-left:40.8pt">On Thu, Oct 7,
                            2021 at 1:37 PM Jonathan Tobin &lt;<a
                              href=3D"mailto:Tobin@augustusaero.com"
                              target=3D"_blank" moz-do-not-send=3D"true">=
Tobin@augustusaero.com</a>&gt;
                            wrote:</p>
                        </div>
                        <blockquote style=3D"border:none;border-left:soli=
d
                          #CCCCCC 1.0pt;padding:0in 0in 0in
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt">
                          <div>
                            <div>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Hello =96 I =
am
                                attempting to install UHD 3.15 on my
                                Windows 10 PC. I am able to ping and
                                find the device, but currently unable to
                                probe. Not sure what the issue is =96 any
                                recommendations?</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Command
                                Prompt output:</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">C:\Program
                                Files\UHD3\bin&gt;uhd_find_devices</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">[INFO] [UHD]
                                Win32; Microsoft Visual C++ version
                                14.2; Boost_107200;
                                UHD_3.15.0.HEAD-0-gaea0e2de</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">------------=
--------------------------------------</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">-- UHD Devic=
e
                                0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">------------=
--------------------------------------</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Device
                                Address:</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0=A0=A0 se=
rial:
                                3218B5F</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0=A0=A0 cl=
aimed:
                                False</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0
                                =A0=A0mgmt_addr: 192.168.10.2</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0=A0=A0 pr=
oduct:
                                n310</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0=A0=A0
                                reachable: No</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0=A0=A0 ty=
pe:
                                n3xx</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">C:\Program
                                Files\UHD3\bin&gt;uhd_usrp_probe</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">[INFO] [UHD]
                                Win32; Microsoft Visual C++ version
                                14.2; Boost_107200;
                                UHD_3.15.0.HEAD-0-gaea0e2de</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">[INFO] [MPMD
                                FIND] Found MPM devices, but none are
                                reachable for a UHD session. Specify
                                find_all to find all devices.</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Error:
                                LookupError: KeyError: No devices found
                                for -----&gt;</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Empty Device
                                Address</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Thanks,</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">Jonathan</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                              <p class=3D"xmsonormal"
                                style=3D"margin-left:45.6pt">=A0</p>
                            </div>
                          </div>
                          <p class=3D"xmsonormal"
                            style=3D"margin-left:45.6pt">________________=
_______________________________<br>
                            USRP-users mailing list -- <a
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              target=3D"_blank" moz-do-not-send=3D"true">
                              usrp-users@lists.ettus.com</a><br>
                            To unsubscribe send an email to <a
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
                              target=3D"_blank" moz-do-not-send=3D"true">
                              usrp-users-leave@lists.ettus.com</a></p>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <p class=3D"xmsonormal" style=3D"margin-bottom:12.0pt"><o=
:p>=A0</o:p></p>
                <pre>_______________________________________________</pre=
>
                <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" moz-do-not-send=3D"true">usrp-users@lists.ettus.com<=
/a></pre>
                <pre>To unsubscribe send an email to <a href=3D"mailto:us=
rp-users-leave@lists.ettus.com" moz-do-not-send=3D"true">usrp-users-leave=
@lists.ettus.com</a></pre>
              </blockquote>
              <p class=3D"xmsonormal">=A0</p>
            </div>
          </blockquote>
        </div>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------9B0A4EE2B7DBC4B55EEED3D5
Content-Type: image/png;
 name="70B998830A7E499EA2C7737370EE868B.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.F975FD43.584430B1@gmail.com>
Content-Disposition: inline;
 filename="70B998830A7E499EA2C7737370EE868B.png"

iVBORw0KGgoAAAANSUhEUgAAArYAAAAFCAYAAACwwq8eAAAAAXNSR0IArs4c6QAAAARnQU1B
AACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABTSURBVGhD7dhBDYBADEXBlY4xtgJI
BbCIgWzPGGgyL5lDHfx0nNd9AABAdyPyeQEAoLsatjNX/K1eAADoYO/ZGrb7GJIkSVLTas/6
2AIA0N3MFR+wca2F6etB6AAAAABJRU5ErkJggg==
--------------9B0A4EE2B7DBC4B55EEED3D5--

--------------9B3305E9A2C32545BCAAFB7F--

--===============6962399407372220183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6962399407372220183==--
