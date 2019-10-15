Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B090BD8315
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 23:56:33 +0200 (CEST)
Received: from [::1] (port=55104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKUnq-0006VT-Dl; Tue, 15 Oct 2019 17:56:26 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:36589)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iKUnm-0006KY-7K
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 17:56:22 -0400
Received: by mail-il1-f175.google.com with SMTP id z2so259759ilb.3
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 14:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0RHE5j8FtJf9wiM0s8vF8JM7jCqUmh2JK4HVGEnoBiw=;
 b=r+f2y2mNWXY4lO7x9Q4rbNn1vjXsJPQI1/F0gcMiApuukpRiUzY2ic5clr/zbkW4DP
 dkaYhe3D/8UB4wL4kozxwAoLSUvDZYSvfc04Y1wEl4j0wX4p5ZFD23Olah57hFpx1q9p
 nouC4EiRTOzC4qP6K0X/BxD9FYc6h6dtFiOapt9/AB/gmkQXZvidjZMZWcb2PcpG6Yf0
 IJzvb3Sra6brYrn3gl9JLtcK06If7e111GXpC3MECPLP5kL+V+xEh1YAGK5L/B6omALZ
 IOg1EBUu4D7NcZGIPucxCofZq4WAiPn6BUQWf36yBE8aZidb2Hg9vnLQ1ZsLAjr1DnJ4
 QMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0RHE5j8FtJf9wiM0s8vF8JM7jCqUmh2JK4HVGEnoBiw=;
 b=LgphD/WV0kVHg7zM0bVB5uHA0wndAxIOrOey/ypL7u26fmevDapsoarneHxLrm24cv
 ceAGKImYG7M9BJ3wcS49xdMm4oSk+8HhAvsgJKD17OhZEDbWd6KEWwLKQ527sCscbedy
 MBK0kgs7dI+fMl/+WBuEifJY+6LGSdRAMfjT4RcP9S8ZPlxMn3NjMSTUzsYEa9Z8cXMp
 fd7E4URXuzVSO+UDE1p5pKqlCuoNKBb3r8ZDMhbmGf0rpkciCQRdpc7ryeJRMocFmKft
 oNnZTeo4I7t9bMWI1zFm6/WoKgBl4jU2ILGwrWU6Lr+kSsqL+vgfhdeiTWl1az/gycRf
 YrAA==
X-Gm-Message-State: APjAAAUaL5i44hBXFqxeixiP89V43+OjOuP4S5LuWsTPMCkQDxAZEYeN
 b/exMdRMQcd9v+R7eH4yPy4=
X-Google-Smtp-Source: APXvYqy6th51AEtoowJpRvIuf2mIj5TtillVfjt/7C/zhm02pkCpx2p38dU5BbWjXSZ24GcG4qtuFQ==
X-Received: by 2002:a92:88cf:: with SMTP id m76mr8627385ilh.40.1571176541431; 
 Tue, 15 Oct 2019 14:55:41 -0700 (PDT)
Received: from [192.168.0.208]
 (CPEac202e757853-CMac202e757850.cpe.net.cable.rogers.com. [99.245.7.168])
 by smtp.gmail.com with ESMTPSA id f23sm16268495ioc.36.2019.10.15.14.55.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 14:55:40 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <CANf970YVdxRbB3c=DF3WpBsJfRHokMPDdC3nRbC63d_Zw3otQw@mail.gmail.com>
Date: Tue, 15 Oct 2019 17:55:37 -0400
Message-Id: <2D0F1026-36DB-4B12-9704-17AC23092DEB@gmail.com>
References: <CALHv-k-QwzYPg2XeO1ZdkVpAEo=9qPhoq4cnL-ghzHD65NBoEw@mail.gmail.com>
 <CANf970YVdxRbB3c=DF3WpBsJfRHokMPDdC3nRbC63d_Zw3otQw@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] USRP B210 ERROR
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4665466556260177148=="
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


--===============4665466556260177148==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-D3C22AFF-6E21-4CFB-9F36-C9AFB4F245C2
Content-Transfer-Encoding: 7bit


--Apple-Mail-D3C22AFF-6E21-4CFB-9F36-C9AFB4F245C2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What does =E2=80=98lsusb=E2=80=99 show with the device plugged in?


Sent from my iPhone

> On Oct 15, 2019, at 3:50 PM, Sam Reiter via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> Khizar,
>=20
> Is this still an issue for you? There's an important step in the UHD insta=
ll process to allow USB devices to be used by non-root users:
>=20
> https://files.ettus.com/manual/page_transport.html#transport_usb_udev
>=20
> Let me know if this does the trick.
>=20
> Sam
>=20
>> On Tue, Sep 24, 2019 at 1:10 AM Khizar Abbas via USRP-users <usrp-users@l=
ists.ettus.com> wrote:
>> I have tried this  /usr/local/lib/uhd/utils/uhd_images_downloader.py down=
load the image and install it. but the error is still same no device found. E=
ven i have tried to download the drivers again. still same error. Please sug=
gest some solution. Below is log in the response of the command . check the e=
rror in Bold text below.=20
>> Thanks
>> ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/build$ sudo=
 -E ./lte-uesoftmodem -C 2625000000 -r 25 --ue-rxgain 125 --ue-txgain 90 --u=
e-scan-carrier -d
>> [CONFIG] get parameters from cmdline , debug flags: 0x00400000
>> # /dev/cpu_dma_latency set to 0us
>> [CONFIG] log_config: 2/3 parameters successfully set=20
>> [CONFIG] log_config: 42/42 parameters successfully set=20
>> [CONFIG] log_config: 42/42 parameters successfully set=20
>> [CONFIG] log_config: 15/15 parameters successfully set=20
>> [CONFIG] log_config: 15/15 parameters successfully set=20
>> log init done
>> Reading in command-line options
>> [CONFIG] (root): 19/22 parameters successfully set=20
>> [CONFIG] (root): 4/5 parameters successfully set=20
>> [ENB_APP]   nfapi running mode: MONOLITHIC
>> Running with 1 UE instances
>> [CONFIG] TTracer: 4/4 parameters successfully set=20
>> CPU Freq is 3.000175=20
>> ITTI init
>> [TMR]   Starting itti queue: TASK_UNKNOWN as task 0
>> [TMR]   Starting itti queue: TASK_TIMER as task 1
>> [TMR]   Starting itti queue: TASK_L2L1 as task 2
>> [TMR]   Starting itti queue: TASK_BM as task 3
>> [TMR]   Starting itti queue: TASK_PHY_ENB as task 4
>> [TMR]   Starting itti queue: TASK_MAC_ENB as task 5
>> [TMR]   Starting itti queue: TASK_RLC_ENB as task 6
>> [TMR]   Starting itti queue: TASK_RRC_ENB_NB_IoT as task 7
>> [TMR]   Starting itti queue: TASK_PDCP_ENB as task 8
>> [TMR]   Starting itti queue: TASK_DATA_FORWARDING as task 9
>> [TMR]   Starting itti queue: TASK_END_MARKER as task 10
>> [TMR]   Starting itti queue: TASK_RRC_ENB as task 11
>> [TMR]   Starting itti queue: TASK_RAL_ENB as task 12
>> [TMR]   Starting itti queue: TASK_S1AP as task 13
>> [TMR]   Starting itti queue: TASK_X2AP as task 14
>> [TMR]   Starting itti queue: TASK_SCTP as task 15
>> [TMR]   Starting itti queue: TASK_ENB_APP as task 16
>> [TMR]   Starting itti queue: TASK_FLEXRAN_AGENT as task 17
>> [TMR]   Starting itti queue: TASK_PHY_UE as task 18
>> [TMR]   Starting itti queue: TASK_MAC_UE as task 19
>> [TMR]   Starting itti queue: TASK_RLC_UE as task 20
>> [TMR]   Starting itti queue: TASK_PDCP_UE as task 21
>> [TMR]   Starting itti queue: TASK_RRC_UE as task 22
>> [TMR]   Starting itti queue: TASK_NAS_UE as task 23
>> [TMR]   Starting itti queue: TASK_RAL_UE as task 24
>> [TMR]   Starting itti queue: TASK_MSC as task 25
>> [TMR]   Starting itti queue: TASK_GTPV1_U as task 26
>> [TMR]   Starting itti queue: TASK_UDP as task 27
>> [TMR]   Starting itti queue: TASK_CU_F1 as task 28
>> [TMR]   Starting itti queue: TASK_DU_F1 as task 29
>> [CONFIG] opt: 3/3 parameters successfully set=20
>> [OPT]   OPT disabled
>> [PDCP]   pdcp init,usegtp=20
>> RRC control socket
>> PDCP PC5S socket
>> [RRC]   Listening to incoming connection from ProSe App=20
>> reported resolution =3D 1 ns
>> [HW]   Version: Branch: develop Abrev. Hash: f8288afe1 Date: Wed Jul 24 2=
3:00:59 2019 +0200
>> Card 0, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 0, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 0, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 0, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 1, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 1, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 1, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 1, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 2, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 2, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 2, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 2, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 3, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 3, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 3, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 3, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 4, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 4, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 4, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 4, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 5, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 5, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 5, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 5, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 6, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 6, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 6, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 6, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> Card 7, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq=
 2625000000.000000, rx_freq 2625000000.000000
>> Card 7, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 7, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> Card 7, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0=
.000000, rx_freq 0.000000
>> [PHY]   USRP clock source not specified. defaulting to internal
>> CPU Freq is 3.000173=20
>> NO deadline scheduler
>> [HW]   CPU Affinity of main() function is...  CPU_0  CPU_1  CPU_2  CPU_3=20=

>> [TMR]   Created Posix thread TASK_NAS_UE
>> [TMR]   Created Posix thread TASK_RRC_UE
>> ITTI tasks created
>> [NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/API/USER/user_api.c=
:143  USR-API   - User's UDP socket 68 is BOUND to rasputin/10000
>> [NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/API/USER/user_api.c=
:166  USR-API   - Notification handlers successfully registered
>> [NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:203 =
 EMM-MAIN  - USIM application data successfully read
>> [NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:248 =
 EMM-MAIN  - usim_api_k: 8b af 47 3f 2f 8f d0 94 87 cc cb d7 09 7c 68 62
>> [NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:249 =
 EMM-MAIN  - opc:        8e 27 b6 af 0e 69 2e 75 0f 32 66 7a 3b 14 60 5d
>> [NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:403 =
 EMM-MAIN  - EMM data successfully read
>> [PHY]   UE : Calling Layer 2 for initialization
>> [MAC]   [MAIN] MAC_INIT_GLOBAL_PARAM IN...
>> [MAC]   [MAIN] CALLING RLC_MODULE_INIT...
>> [PDCP]   PDCP layer has been initialized
>> [MAC]   [MAIN] Init Global Param Done
>> [MAC]   [MAIN] init UE MAC functions=20
>> [MAC]   [MAIN] Init function start:Nb_UE_INST=3D1
>> [MAC]   [UE0] Applying default macMainConfig
>> [MAC]   [MAIN] calling RRC
>> [RRC]   Allocating 408 bytes for UE_EUTRA_Capability
>> [PHY]   [RRC]UE Capability encoded, 15 bytes (120 bits)
>> [RRC]   [UE] eMBMS active state is 0=20
>> [MAC]   [MAIN][INIT] Init function finished
>> [PHY]   Allocating UE context 0
>> [PHY]   Initializing frame parms for N_RB_DL 25, Ncp 0, osf 1
>> [PHY]   lte_parms.c: Setting N_RB_DL to 25, ofdm_symbol_size 512
>> [CONFIG] loader: 2/2 parameters successfully set=20
>> [CONFIG] loader.coding: 1/2 parameters successfully set=20
>> [LOADER] library libcoding.so successfully loaded
>> [PHY]   common_vars->rxdata[0] 0x7fb4ea773040
>> PHY_vars_UE_g[0][0] =3D 0x7fb4f0a18010
>> UE->mode =3D 0
>> [PHY]   Intializing UE Threads for instance 0 (0x5571c5251940,0x7fb4f0a18=
010)...
>> Init_UE_threads rtd 0 proc 0 nb_threads 2 i 0
>> Init_UE_threads rtd 1 proc 1 nb_threads 2 i 1
>> [CONFIG] loader.oai_device: 1/2 parameters successfully set=20
>> UE_thread_sync in with PHY_vars_UE 0x7fb4f0a18010
>> CPU Affinity of thread UE_0_proc_0 is  0  1  2  3=20
>> CPU Affinity of thread UE_0_proc_1 is  0  1  2  3=20
>> CPU Affinity of thread sync UE 0
>>  is  0  1  2  3=20
>> starting UE synch thread (IC -1)
>> Scanning band 1, dl_min 2110000000, ul_min 1920000000
>> Scanning band 2, dl_min 1930000000, ul_min 1850000000
>> Scanning band 3, dl_min 1805000000, ul_min 1710000000
>> Scanning band 4, dl_min 2110000000, ul_min 1710000000
>> Scanning band 5, dl_min 869000000, ul_min 824000000
>> Scanning band 6, dl_min 875000000, ul_min 830000000
>> Scanning band 7, dl_min 2620000000, ul_min 2500000000
>> [PHY]   [SCHED][UE] Check absolute frequency DL 2625000000, UL 0 (oai_exi=
t 0, rx_num_channels 1)
>> waiting for sync (UE_thread_sync,-1/0x5571c28b3268,0x5571c2fa4200,0x5571c=
2e5a4a0)
>> [LOADER] library liboai_device.so successfully loaded
>> [PHY]   Checking for USRPs : UHD 3.14.1.0-release (3.14.1)
>> [HW]   No USRP Device Found.
>>  [PHY]  =20
>> /home/ncl/openairinterface5g/targets/RT/USER/lte-ue.c:367 init_UE() Exiti=
ng OAI softmodem: Error loading device library
>> ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/build$ sudo=
 uhd_usrp_probe
>> linux; GNU C++ version 7.4.0; Boost_106501; UHD_003.010.003.UHD-3.10-0-ge=
f157678
>>=20
>> Error: LookupError: KeyError: No devices found for ----->
>> Empty Device Address
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-D3C22AFF-6E21-4CFB-9F36-C9AFB4F245C2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What does =E2=80=98lsusb=E2=80=99 show with=
 the device plugged in?<div><br><br><div id=3D"AppleMailSignature" dir=3D"lt=
r">Sent from my iPhone</div><div dir=3D"ltr"><br>On Oct 15, 2019, at 3:50 PM=
, Sam Reiter via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><blockquote type=3D=
"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div>Khizar,</div><div><br></div><d=
iv>Is this still an issue for you? There's an important step in the UHD inst=
all process to allow USB devices to be used by non-root users:</div><div><br=
></div><div><a href=3D"https://files.ettus.com/manual/page_transport.html#tr=
ansport_usb_udev">https://files.ettus.com/manual/page_transport.html#transpo=
rt_usb_udev</a></div><div><br></div><div>Let me know if this does the trick.=
</div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam</div>=
</div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Sep 24, 2019 at 1:10 AM Khizar Abbas via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>I have tried this&nbsp; /usr/local/lib/uhd/utils/=
uhd_images_downloader.py
 download the image and install it. but the error is still same no=20
device found. Even i have tried to download the drivers again. still same=20=

error. Please suggest some solution. Below is log in the response of the com=
mand . check the error in Bold text below. <br></div><div><div>Thanks</div><=
div><div>ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/build=
$ sudo -E ./lte-uesoftmodem -C 2625000000 -r 25 --ue-rxgain 125 --ue-txgain 9=
0 --ue-scan-carrier -d </div>[CONFIG] get parameters from cmdline , debug fl=
ags: 0x00400000<br># /dev/cpu_dma_latency set to 0us<br>[CONFIG] log_config:=
 2/3 parameters successfully set <br>[CONFIG] log_config: 42/42 parameters s=
uccessfully set <br>[CONFIG] log_config: 42/42 parameters successfully set <=
br>[CONFIG] log_config: 15/15 parameters successfully set <br>[CONFIG] log_c=
onfig: 15/15 parameters successfully set <br>log init done<br>Reading in com=
mand-line options<br>[CONFIG] (root): 19/22 parameters successfully set <br>=
[CONFIG] (root): 4/5 parameters successfully set <br>[ENB_APP] &nbsp; nfapi r=
unning mode: MONOLITHIC<br>Running with 1 UE instances<br>[CONFIG] TTracer: 4=
/4 parameters successfully set <br>CPU Freq is 3.000175 <br>ITTI init<br>[TM=
R] &nbsp; Starting itti queue: TASK_UNKNOWN as task 0<br>[TMR] &nbsp; Starti=
ng itti queue: TASK_TIMER as task 1<br>[TMR] &nbsp; Starting itti queue: TAS=
K_L2L1 as task 2<br>[TMR] &nbsp; Starting itti queue: TASK_BM as task 3<br>[=
TMR] &nbsp; Starting itti queue: TASK_PHY_ENB as task 4<br>[TMR] &nbsp; Star=
ting itti queue: TASK_MAC_ENB as task 5<br>[TMR] &nbsp; Starting itti queue:=
 TASK_RLC_ENB as task 6<br>[TMR] &nbsp; Starting itti queue: TASK_RRC_ENB_NB=
_IoT as task 7<br>[TMR] &nbsp; Starting itti queue: TASK_PDCP_ENB as task 8<=
br>[TMR] &nbsp; Starting itti queue: TASK_DATA_FORWARDING as task 9<br>[TMR]=
 &nbsp; Starting itti queue: TASK_END_MARKER as task 10<br>[TMR] &nbsp; Star=
ting itti queue: TASK_RRC_ENB as task 11<br>[TMR] &nbsp; Starting itti queue=
: TASK_RAL_ENB as task 12<br>[TMR] &nbsp; Starting itti queue: TASK_S1AP as t=
ask 13<br>[TMR] &nbsp; Starting itti queue: TASK_X2AP as task 14<br>[TMR] &n=
bsp; Starting itti queue: TASK_SCTP as task 15<br>[TMR] &nbsp; Starting itti=
 queue: TASK_ENB_APP as task 16<br>[TMR] &nbsp; Starting itti queue: TASK_FL=
EXRAN_AGENT as task 17<br>[TMR] &nbsp; Starting itti queue: TASK_PHY_UE as t=
ask 18<br>[TMR] &nbsp; Starting itti queue: TASK_MAC_UE as task 19<br>[TMR] &=
nbsp; Starting itti queue: TASK_RLC_UE as task 20<br>[TMR] &nbsp; Starting i=
tti queue: TASK_PDCP_UE as task 21<br>[TMR] &nbsp; Starting itti queue: TASK=
_RRC_UE as task 22<br>[TMR] &nbsp; Starting itti queue: TASK_NAS_UE as task 2=
3<br>[TMR] &nbsp; Starting itti queue: TASK_RAL_UE as task 24<br>[TMR] &nbsp=
; Starting itti queue: TASK_MSC as task 25<br>[TMR] &nbsp; Starting itti que=
ue: TASK_GTPV1_U as task 26<br>[TMR] &nbsp; Starting itti queue: TASK_UDP as=
 task 27<br>[TMR] &nbsp; Starting itti queue: TASK_CU_F1 as task 28<br>[TMR]=
 &nbsp; Starting itti queue: TASK_DU_F1 as task 29<br>[CONFIG] opt: 3/3 para=
meters successfully set <br>[OPT] &nbsp; OPT disabled<br>[PDCP] &nbsp; pdcp i=
nit,usegtp <br>RRC control socket<br>PDCP PC5S socket<br>[RRC] &nbsp; Listen=
ing to incoming connection from ProSe App <br>reported resolution =3D 1 ns<b=
r>[HW] &nbsp; Version: Branch: develop Abrev. Hash: f8288afe1 Date: Wed Jul 2=
4 23:00:59 2019 +0200<br>Card 0, channel 0, Setting tx_gain 90.000000, rx_ga=
in 125.000000, tx_freq 2625000000.000000, rx_freq 2625000000.000000<br>Card 0=
, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000,=
 rx_freq 0.000000<br>Card 0, channel 2, Setting tx_gain 0.000000, rx_gain 12=
5.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 0, channel 3, Setting t=
x_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>[=
PHY] &nbsp; USRP clock source not specified. defaulting to internal<br>Card 1=
, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq 26250000=
00.000000, rx_freq 2625000000.000000<br>Card 1, channel 1, Setting tx_gain 0=
.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 1, c=
hannel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx=
_freq 0.000000<br>Card 1, channel 3, Setting tx_gain 0.000000, rx_gain 125.0=
00000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] &nbsp; USRP clock source n=
ot specified. defaulting to internal<br>Card 2, channel 0, Setting tx_gain 9=
0.000000, rx_gain 125.000000, tx_freq 2625000000.000000, rx_freq 2625000000.=
000000<br>Card 2, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, t=
x_freq 0.000000, rx_freq 0.000000<br>Card 2, channel 2, Setting tx_gain 0.00=
0000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 2, chan=
nel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_fr=
eq 0.000000<br>[PHY] &nbsp; USRP clock source not specified. defaulting to i=
nternal<br>Card 3, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000,=
 tx_freq 2625000000.000000, rx_freq 2625000000.000000<br>Card 3, channel 1, S=
etting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000=
000<br>Card 3, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_f=
req 0.000000, rx_freq 0.000000<br>Card 3, channel 3, Setting tx_gain 0.00000=
0, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] &nbsp; US=
RP clock source not specified. defaulting to internal<br>Card 4, channel 0, S=
etting tx_gain 90.000000, rx_gain 125.000000, tx_freq 2625000000.000000, rx_=
freq 2625000000.000000<br>Card 4, channel 1, Setting tx_gain 0.000000, rx_ga=
in 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 4, channel 2, Sett=
ing tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000=
<br>Card 4, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq=
 0.000000, rx_freq 0.000000<br>[PHY] &nbsp; USRP clock source not specified.=
 defaulting to internal<br>Card 5, channel 0, Setting tx_gain 90.000000, rx_=
gain 125.000000, tx_freq 2625000000.000000, rx_freq 2625000000.000000<br>Car=
d 5, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.0000=
00, rx_freq 0.000000<br>Card 5, channel 2, Setting tx_gain 0.000000, rx_gain=
 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 5, channel 3, Settin=
g tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<b=
r>[PHY] &nbsp; USRP clock source not specified. defaulting to internal<br>Ca=
rd 6, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq 2625=
000000.000000, rx_freq 2625000000.000000<br>Card 6, channel 1, Setting tx_ga=
in 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 6=
, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000,=
 rx_freq 0.000000<br>Card 6, channel 3, Setting tx_gain 0.000000, rx_gain 12=
5.000000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] &nbsp; USRP clock sour=
ce not specified. defaulting to internal<br>Card 7, channel 0, Setting tx_ga=
in 90.000000, rx_gain 125.000000, tx_freq 2625000000.000000, rx_freq 2625000=
000.000000<br>Card 7, channel 1, Setting tx_gain 0.000000, rx_gain 125.00000=
0, tx_freq 0.000000, rx_freq 0.000000<br>Card 7, channel 2, Setting tx_gain 0=
.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 7, c=
hannel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx=
_freq 0.000000<br>[PHY] &nbsp; USRP clock source not specified. defaulting t=
o internal<br>CPU Freq is 3.000173 <br>NO deadline scheduler<br>[HW] &nbsp; C=
PU Affinity of main() function is...&nbsp; CPU_0 &nbsp;CPU_1 &nbsp;CPU_2 &nb=
sp;CPU_3 <br>[TMR] &nbsp; Created Posix thread TASK_NAS_UE<br>[TMR] &nbsp; C=
reated Posix thread TASK_RRC_UE<br>ITTI tasks created<br>[NAS] &nbsp; &nbsp;=
/home/ncl/openairinterface5g/openair3/NAS/UE/API/USER/user_api.c:143 &nbsp;U=
SR-API &nbsp; - User's UDP socket 68 is BOUND to rasputin/10000<br>[NAS] &nb=
sp; &nbsp;/home/ncl/openairinterface5g/openair3/NAS/UE/API/USER/user_api.c:1=
66 &nbsp;USR-API &nbsp; - Notification handlers successfully registered<br>[=
NAS] &nbsp; &nbsp;/home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.=
c:203 &nbsp;EMM-MAIN &nbsp;- USIM application data successfully read<br>[NAS=
] &nbsp; &nbsp;/home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:2=
48 &nbsp;EMM-MAIN &nbsp;- usim_api_k: 8b af 47 3f 2f 8f d0 94 87 cc cb d7 09=
 7c 68 62<br>[NAS] &nbsp; &nbsp;/home/ncl/openairinterface5g/openair3/NAS/UE=
/EMM/emm_main.c:249 &nbsp;EMM-MAIN &nbsp;- opc: &nbsp; &nbsp; &nbsp; &nbsp;8=
e 27 b6 af 0e 69 2e 75 0f 32 66 7a 3b 14 60 5d<br>[NAS] &nbsp; &nbsp;/home/n=
cl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:403 &nbsp;EMM-MAIN &nbs=
p;- EMM data successfully read<br>[PHY] &nbsp; UE : Calling Layer 2 for init=
ialization<br>[MAC] &nbsp; [MAIN] MAC_INIT_GLOBAL_PARAM IN...<br>[MAC] &nbsp=
; [MAIN] CALLING RLC_MODULE_INIT...<br>[PDCP] &nbsp; PDCP layer has been ini=
tialized<br>[MAC] &nbsp; [MAIN] Init Global Param Done<br>[MAC] &nbsp; [MAIN=
] init UE MAC functions <br>[MAC] &nbsp; [MAIN] Init function start:Nb_UE_IN=
ST=3D1<br>[MAC] &nbsp; [UE0] Applying default macMainConfig<br>[MAC] &nbsp; [=
MAIN] calling RRC<br>[RRC] &nbsp; Allocating 408 bytes for UE_EUTRA_Capabili=
ty<br>[PHY] &nbsp; [RRC]UE Capability encoded, 15 bytes (120 bits)<br>[RRC] &=
nbsp; [UE] eMBMS active state is 0 <br>[MAC] &nbsp; [MAIN][INIT] Init functi=
on finished<br>[PHY] &nbsp; Allocating UE context 0<br>[PHY] &nbsp; Initiali=
zing frame parms for N_RB_DL 25, Ncp 0, osf 1<br>[PHY] &nbsp; lte_parms.c: S=
etting N_RB_DL to 25, ofdm_symbol_size 512<br>[CONFIG] loader: 2/2 parameter=
s successfully set <br>[CONFIG] loader.coding: 1/2 parameters successfully s=
et <br>[LOADER] library libcoding.so successfully loaded<br>[PHY] &nbsp; com=
mon_vars-&gt;rxdata[0] 0x7fb4ea773040<br>PHY_vars_UE_g[0][0] =3D 0x7fb4f0a18=
010<br>UE-&gt;mode =3D 0<br>[PHY] &nbsp; Intializing UE Threads for instance=
 0 (0x5571c5251940,0x7fb4f0a18010)...<br>Init_UE_threads rtd 0 proc 0 nb_thr=
eads 2 i 0<br>Init_UE_threads rtd 1 proc 1 nb_threads 2 i 1<br>[CONFIG] load=
er.oai_device: 1/2 parameters successfully set <br>UE_thread_sync in with PH=
Y_vars_UE 0x7fb4f0a18010<br>CPU Affinity of thread UE_0_proc_0 is &nbsp;0 &n=
bsp;1 &nbsp;2 &nbsp;3 <br>CPU Affinity of thread UE_0_proc_1 is &nbsp;0 &nbs=
p;1 &nbsp;2 &nbsp;3 <br>CPU Affinity of thread sync UE 0<br>&nbsp;is &nbsp;0=
 &nbsp;1 &nbsp;2 &nbsp;3 <br>starting UE synch thread (IC -1)<br>Scanning ba=
nd 1, dl_min 2110000000, ul_min 1920000000<br>Scanning band 2, dl_min 193000=
0000, ul_min 1850000000<br>Scanning band 3, dl_min 1805000000, ul_min 171000=
0000<br>Scanning band 4, dl_min 2110000000, ul_min 1710000000<br>Scanning ba=
nd 5, dl_min 869000000, ul_min 824000000<br>Scanning band 6, dl_min 87500000=
0, ul_min 830000000<br>Scanning band 7, dl_min 2620000000, ul_min 2500000000=
<br>[PHY] &nbsp; [SCHED][UE] Check absolute frequency DL 2625000000, UL 0 (o=
ai_exit 0, rx_num_channels 1)<br>waiting for sync (UE_thread_sync,-1/0x5571c=
28b3268,0x5571c2fa4200,0x5571c2e5a4a0)<br>[LOADER] library liboai_device.so s=
uccessfully loaded<br>[PHY] &nbsp; C<b>hecking for USRPs : UHD 3.14.1.0-rele=
ase (3.14.1)<br>[HW] &nbsp; No USRP Device Found.<br>&nbsp;[PHY] &nbsp; <br>=
/home/ncl/openairinterface5g/targets/RT/USER/lte-ue.c:367 init_UE() Exiting O=
AI softmodem: Error loading device library</b><br>ncl@rasputin:~/openairinte=
rface5g/cmake_targets/lte_build_oai/build$ sudo uhd_usrp_probe<br>l<b>inux; G=
NU C++ version 7.4.0; Boost_106501; UHD_003.010.003.UHD-3.10-0-gef157678<spa=
n><br><br>Error: LookupError: KeyError: No devices found for -----&gt;<br>Em=
pty Device Address</span></b></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body=
></html>=

--Apple-Mail-D3C22AFF-6E21-4CFB-9F36-C9AFB4F245C2--


--===============4665466556260177148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4665466556260177148==--

