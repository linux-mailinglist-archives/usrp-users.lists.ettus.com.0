Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87429BC198
	for <lists+usrp-users@lfdr.de>; Tue, 24 Sep 2019 08:10:53 +0200 (CEST)
Received: from [::1] (port=51458 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCe2F-0003vb-Ry; Tue, 24 Sep 2019 02:10:51 -0400
Received: from mail-ed1-f53.google.com ([209.85.208.53]:32928)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <engr.khizarabbas14@gmail.com>)
 id 1iCe2B-0003p0-Rh
 for usrp-users@lists.ettus.com; Tue, 24 Sep 2019 02:10:48 -0400
Received: by mail-ed1-f53.google.com with SMTP id c4so675647edl.0
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 23:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NLUE4oY7Zf3zN0lKdTkbWddBmuVCSs06eTL6JUOFlUc=;
 b=gF8J0eVFuiSF2maOGvqjVBTXj/dV/yLT1V9o9aff7WoXgIiJxUOllx5+pjJsiKtepS
 Bt3W1Xjs0wne04o6n1fcUDeAO7A2tjtA465nJZpIYp5+xDdoA1hN9vqrBe3RKx8/BoEL
 1D8NTQ2Bl4dQ7Hmi16M0edllxYxSA5lGfnOZWz0Sakmk9zByyHbdSmi3MichbnnvmqJw
 Z/AA5Ef92S0KN9HqGdqvGtIwvihxMpf2ffI36CgvkNBx+UiiLObxujNE22j1fs+CvNG5
 c3IVKTRF4hFwjCrS28NFdoOeFNgC3d8dqB2zqR7RY20H+QQTDzMghUXs9okvTy/pB1wA
 dBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NLUE4oY7Zf3zN0lKdTkbWddBmuVCSs06eTL6JUOFlUc=;
 b=Ez5z1IdjzJUidkSuUF6m1r+f41ODpIDjn9B5uhsX8O0rUuq8v9dNuaPHoL5B7iodjM
 3/oMJ5XNahvckVmALNQNyCicHudPL/tzu/7hbRani7c/VI58HWaRSxXw5d4VvKxujZMA
 8GevGDO4aIKiO7wLTr6NgS69MnFO3KfhjGaoSeqX6LCDTJnv3M9OyaV32dy8QZHmS1Ox
 VOuIJuNaa9Ps1dnDXldnG8wcC86Za6SYrEb0eYMqgNCIvx0oBpkCQOqFAEsOyFlBSZyA
 SYxIwLgYbhy2W23ZbjF0eC7fu4b58H93naAUJXe+Lj3WMaXuyvc5CHNwMJt7e7gd151P
 1akg==
X-Gm-Message-State: APjAAAV5Ntty9PKqBWJZd9nQygpoOZOYIrVauJxyxmzxgVFFLO8N0JSD
 R2VQ58ehVFC+J/jC0GLl7AJoHOPh6oIICz56CzRxH4/N
X-Google-Smtp-Source: APXvYqzj3F/aWrWYaGA/bd5Ks0eDq3r/2hOyo1BCQaSbNdz2WbQk+zRGx49uuGrMHH3F/GSv8FrwjhJegv07Qc64+KA=
X-Received: by 2002:a50:a557:: with SMTP id z23mr890819edb.99.1569305406359;
 Mon, 23 Sep 2019 23:10:06 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 15:09:54 +0900
Message-ID: <CALHv-k-QwzYPg2XeO1ZdkVpAEo=9qPhoq4cnL-ghzHD65NBoEw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B210 ERROR
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
From: Khizar Abbas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Khizar Abbas <engr.khizarabbas14@gmail.com>
Content-Type: multipart/mixed; boundary="===============6471264329793479022=="
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

--===============6471264329793479022==
Content-Type: multipart/alternative; boundary="0000000000004a4e22059346633a"

--0000000000004a4e22059346633a
Content-Type: text/plain; charset="UTF-8"

I have tried this  /usr/local/lib/uhd/utils/uhd_images_downloader.py
download the image and install it. but the error is still same no device
found. Even i have tried to download the drivers again. still same error.
Please suggest some solution. Below is log in the response of the command .
check the error in Bold text below.
Thanks
ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/build$ sudo
-E ./lte-uesoftmodem -C 2625000000 -r 25 --ue-rxgain 125 --ue-txgain 90
--ue-scan-carrier -d
[CONFIG] get parameters from cmdline , debug flags: 0x00400000
# /dev/cpu_dma_latency set to 0us
[CONFIG] log_config: 2/3 parameters successfully set
[CONFIG] log_config: 42/42 parameters successfully set
[CONFIG] log_config: 42/42 parameters successfully set
[CONFIG] log_config: 15/15 parameters successfully set
[CONFIG] log_config: 15/15 parameters successfully set
log init done
Reading in command-line options
[CONFIG] (root): 19/22 parameters successfully set
[CONFIG] (root): 4/5 parameters successfully set
[ENB_APP]   nfapi running mode: MONOLITHIC
Running with 1 UE instances
[CONFIG] TTracer: 4/4 parameters successfully set
CPU Freq is 3.000175
ITTI init
[TMR]   Starting itti queue: TASK_UNKNOWN as task 0
[TMR]   Starting itti queue: TASK_TIMER as task 1
[TMR]   Starting itti queue: TASK_L2L1 as task 2
[TMR]   Starting itti queue: TASK_BM as task 3
[TMR]   Starting itti queue: TASK_PHY_ENB as task 4
[TMR]   Starting itti queue: TASK_MAC_ENB as task 5
[TMR]   Starting itti queue: TASK_RLC_ENB as task 6
[TMR]   Starting itti queue: TASK_RRC_ENB_NB_IoT as task 7
[TMR]   Starting itti queue: TASK_PDCP_ENB as task 8
[TMR]   Starting itti queue: TASK_DATA_FORWARDING as task 9
[TMR]   Starting itti queue: TASK_END_MARKER as task 10
[TMR]   Starting itti queue: TASK_RRC_ENB as task 11
[TMR]   Starting itti queue: TASK_RAL_ENB as task 12
[TMR]   Starting itti queue: TASK_S1AP as task 13
[TMR]   Starting itti queue: TASK_X2AP as task 14
[TMR]   Starting itti queue: TASK_SCTP as task 15
[TMR]   Starting itti queue: TASK_ENB_APP as task 16
[TMR]   Starting itti queue: TASK_FLEXRAN_AGENT as task 17
[TMR]   Starting itti queue: TASK_PHY_UE as task 18
[TMR]   Starting itti queue: TASK_MAC_UE as task 19
[TMR]   Starting itti queue: TASK_RLC_UE as task 20
[TMR]   Starting itti queue: TASK_PDCP_UE as task 21
[TMR]   Starting itti queue: TASK_RRC_UE as task 22
[TMR]   Starting itti queue: TASK_NAS_UE as task 23
[TMR]   Starting itti queue: TASK_RAL_UE as task 24
[TMR]   Starting itti queue: TASK_MSC as task 25
[TMR]   Starting itti queue: TASK_GTPV1_U as task 26
[TMR]   Starting itti queue: TASK_UDP as task 27
[TMR]   Starting itti queue: TASK_CU_F1 as task 28
[TMR]   Starting itti queue: TASK_DU_F1 as task 29
[CONFIG] opt: 3/3 parameters successfully set
[OPT]   OPT disabled
[PDCP]   pdcp init,usegtp
RRC control socket
PDCP PC5S socket
[RRC]   Listening to incoming connection from ProSe App
reported resolution = 1 ns
[HW]   Version: Branch: develop Abrev. Hash: f8288afe1 Date: Wed Jul 24
23:00:59 2019 +0200
Card 0, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 0, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 0, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 0, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 1, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 1, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 1, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 1, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 2, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 2, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 2, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 2, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 3, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 3, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 3, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 3, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 4, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 4, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 4, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 4, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 5, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 5, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 5, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 5, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 6, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 6, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 6, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 6, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
Card 7, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq
2625000000.000000, rx_freq 2625000000.000000
Card 7, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 7, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
Card 7, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq
0.000000, rx_freq 0.000000
[PHY]   USRP clock source not specified. defaulting to internal
CPU Freq is 3.000173
NO deadline scheduler
[HW]   CPU Affinity of main() function is...  CPU_0  CPU_1  CPU_2  CPU_3
[TMR]   Created Posix thread TASK_NAS_UE
[TMR]   Created Posix thread TASK_RRC_UE
ITTI tasks created
[NAS]
 /home/ncl/openairinterface5g/openair3/NAS/UE/API/USER/user_api.c:143
 USR-API   - User's UDP socket 68 is BOUND to rasputin/10000
[NAS]
 /home/ncl/openairinterface5g/openair3/NAS/UE/API/USER/user_api.c:166
 USR-API   - Notification handlers successfully registered
[NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:203
 EMM-MAIN  - USIM application data successfully read
[NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:248
 EMM-MAIN  - usim_api_k: 8b af 47 3f 2f 8f d0 94 87 cc cb d7 09 7c 68 62
[NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:249
 EMM-MAIN  - opc:        8e 27 b6 af 0e 69 2e 75 0f 32 66 7a 3b 14 60 5d
[NAS]    /home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:403
 EMM-MAIN  - EMM data successfully read
[PHY]   UE : Calling Layer 2 for initialization
[MAC]   [MAIN] MAC_INIT_GLOBAL_PARAM IN...
[MAC]   [MAIN] CALLING RLC_MODULE_INIT...
[PDCP]   PDCP layer has been initialized
[MAC]   [MAIN] Init Global Param Done
[MAC]   [MAIN] init UE MAC functions
[MAC]   [MAIN] Init function start:Nb_UE_INST=1
[MAC]   [UE0] Applying default macMainConfig
[MAC]   [MAIN] calling RRC
[RRC]   Allocating 408 bytes for UE_EUTRA_Capability
[PHY]   [RRC]UE Capability encoded, 15 bytes (120 bits)
[RRC]   [UE] eMBMS active state is 0
[MAC]   [MAIN][INIT] Init function finished
[PHY]   Allocating UE context 0
[PHY]   Initializing frame parms for N_RB_DL 25, Ncp 0, osf 1
[PHY]   lte_parms.c: Setting N_RB_DL to 25, ofdm_symbol_size 512
[CONFIG] loader: 2/2 parameters successfully set
[CONFIG] loader.coding: 1/2 parameters successfully set
[LOADER] library libcoding.so successfully loaded
[PHY]   common_vars->rxdata[0] 0x7fb4ea773040
PHY_vars_UE_g[0][0] = 0x7fb4f0a18010
UE->mode = 0
[PHY]   Intializing UE Threads for instance 0
(0x5571c5251940,0x7fb4f0a18010)...
Init_UE_threads rtd 0 proc 0 nb_threads 2 i 0
Init_UE_threads rtd 1 proc 1 nb_threads 2 i 1
[CONFIG] loader.oai_device: 1/2 parameters successfully set
UE_thread_sync in with PHY_vars_UE 0x7fb4f0a18010
CPU Affinity of thread UE_0_proc_0 is  0  1  2  3
CPU Affinity of thread UE_0_proc_1 is  0  1  2  3
CPU Affinity of thread sync UE 0
 is  0  1  2  3
starting UE synch thread (IC -1)
Scanning band 1, dl_min 2110000000, ul_min 1920000000
Scanning band 2, dl_min 1930000000, ul_min 1850000000
Scanning band 3, dl_min 1805000000, ul_min 1710000000
Scanning band 4, dl_min 2110000000, ul_min 1710000000
Scanning band 5, dl_min 869000000, ul_min 824000000
Scanning band 6, dl_min 875000000, ul_min 830000000
Scanning band 7, dl_min 2620000000, ul_min 2500000000
[PHY]   [SCHED][UE] Check absolute frequency DL 2625000000, UL 0 (oai_exit
0, rx_num_channels 1)
waiting for sync
(UE_thread_sync,-1/0x5571c28b3268,0x5571c2fa4200,0x5571c2e5a4a0)
[LOADER] library liboai_device.so successfully loaded
[PHY]   C


*hecking for USRPs : UHD 3.14.1.0-release (3.14.1)[HW]   No USRP Device
Found. [PHY]   /home/ncl/openairinterface5g/targets/RT/USER/lte-ue.c:367
init_UE() Exiting OAI softmodem: Error loading device library*
ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/build$ sudo
uhd_usrp_probe
l


*inux; GNU C++ version 7.4.0; Boost_106501;
UHD_003.010.003.UHD-3.10-0-gef157678Error: LookupError: KeyError: No
devices found for ----->Empty Device Address*

--0000000000004a4e22059346633a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have tried this=C2=A0 /usr/local/lib/uhd/utils/uhd_=
images_downloader.py
 download the image and install it. but the error is still same no=20
device found. Even i have tried to download the drivers again. still same=
=20
error. Please suggest some solution. Below is log in the response of the co=
mmand . check the error in Bold text below. <br></div><div><div>Thanks</div=
><div><div>ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/bu=
ild$ sudo -E ./lte-uesoftmodem -C 2625000000 -r 25 --ue-rxgain 125 --ue-txg=
ain 90 --ue-scan-carrier -d </div>[CONFIG] get parameters from cmdline , de=
bug flags: 0x00400000<br># /dev/cpu_dma_latency set to 0us<br>[CONFIG] log_=
config: 2/3 parameters successfully set <br>[CONFIG] log_config: 42/42 para=
meters successfully set <br>[CONFIG] log_config: 42/42 parameters successfu=
lly set <br>[CONFIG] log_config: 15/15 parameters successfully set <br>[CON=
FIG] log_config: 15/15 parameters successfully set <br>log init done<br>Rea=
ding in command-line options<br>[CONFIG] (root): 19/22 parameters successfu=
lly set <br>[CONFIG] (root): 4/5 parameters successfully set <br>[ENB_APP] =
=C2=A0 nfapi running mode: MONOLITHIC<br>Running with 1 UE instances<br>[CO=
NFIG] TTracer: 4/4 parameters successfully set <br>CPU Freq is 3.000175 <br=
>ITTI init<br>[TMR] =C2=A0 Starting itti queue: TASK_UNKNOWN as task 0<br>[=
TMR] =C2=A0 Starting itti queue: TASK_TIMER as task 1<br>[TMR] =C2=A0 Start=
ing itti queue: TASK_L2L1 as task 2<br>[TMR] =C2=A0 Starting itti queue: TA=
SK_BM as task 3<br>[TMR] =C2=A0 Starting itti queue: TASK_PHY_ENB as task 4=
<br>[TMR] =C2=A0 Starting itti queue: TASK_MAC_ENB as task 5<br>[TMR] =C2=
=A0 Starting itti queue: TASK_RLC_ENB as task 6<br>[TMR] =C2=A0 Starting it=
ti queue: TASK_RRC_ENB_NB_IoT as task 7<br>[TMR] =C2=A0 Starting itti queue=
: TASK_PDCP_ENB as task 8<br>[TMR] =C2=A0 Starting itti queue: TASK_DATA_FO=
RWARDING as task 9<br>[TMR] =C2=A0 Starting itti queue: TASK_END_MARKER as =
task 10<br>[TMR] =C2=A0 Starting itti queue: TASK_RRC_ENB as task 11<br>[TM=
R] =C2=A0 Starting itti queue: TASK_RAL_ENB as task 12<br>[TMR] =C2=A0 Star=
ting itti queue: TASK_S1AP as task 13<br>[TMR] =C2=A0 Starting itti queue: =
TASK_X2AP as task 14<br>[TMR] =C2=A0 Starting itti queue: TASK_SCTP as task=
 15<br>[TMR] =C2=A0 Starting itti queue: TASK_ENB_APP as task 16<br>[TMR] =
=C2=A0 Starting itti queue: TASK_FLEXRAN_AGENT as task 17<br>[TMR] =C2=A0 S=
tarting itti queue: TASK_PHY_UE as task 18<br>[TMR] =C2=A0 Starting itti qu=
eue: TASK_MAC_UE as task 19<br>[TMR] =C2=A0 Starting itti queue: TASK_RLC_U=
E as task 20<br>[TMR] =C2=A0 Starting itti queue: TASK_PDCP_UE as task 21<b=
r>[TMR] =C2=A0 Starting itti queue: TASK_RRC_UE as task 22<br>[TMR] =C2=A0 =
Starting itti queue: TASK_NAS_UE as task 23<br>[TMR] =C2=A0 Starting itti q=
ueue: TASK_RAL_UE as task 24<br>[TMR] =C2=A0 Starting itti queue: TASK_MSC =
as task 25<br>[TMR] =C2=A0 Starting itti queue: TASK_GTPV1_U as task 26<br>=
[TMR] =C2=A0 Starting itti queue: TASK_UDP as task 27<br>[TMR] =C2=A0 Start=
ing itti queue: TASK_CU_F1 as task 28<br>[TMR] =C2=A0 Starting itti queue: =
TASK_DU_F1 as task 29<br>[CONFIG] opt: 3/3 parameters successfully set <br>=
[OPT] =C2=A0 OPT disabled<br>[PDCP] =C2=A0 pdcp init,usegtp <br>RRC control=
 socket<br>PDCP PC5S socket<br>[RRC] =C2=A0 Listening to incoming connectio=
n from ProSe App <br>reported resolution =3D 1 ns<br>[HW] =C2=A0 Version: B=
ranch: develop Abrev. Hash: f8288afe1 Date: Wed Jul 24 23:00:59 2019 +0200<=
br>Card 0, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_fre=
q 2625000000.000000, rx_freq 2625000000.000000<br>Card 0, channel 1, Settin=
g tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<=
br>Card 0, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq=
 0.000000, rx_freq 0.000000<br>Card 0, channel 3, Setting tx_gain 0.000000,=
 rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] =C2=A0 USR=
P clock source not specified. defaulting to internal<br>Card 1, channel 0, =
Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq 2625000000.000000, r=
x_freq 2625000000.000000<br>Card 1, channel 1, Setting tx_gain 0.000000, rx=
_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 1, channel 2, =
Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.0=
00000<br>Card 1, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, t=
x_freq 0.000000, rx_freq 0.000000<br>[PHY] =C2=A0 USRP clock source not spe=
cified. defaulting to internal<br>Card 2, channel 0, Setting tx_gain 90.000=
000, rx_gain 125.000000, tx_freq 2625000000.000000, rx_freq 2625000000.0000=
00<br>Card 2, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_f=
req 0.000000, rx_freq 0.000000<br>Card 2, channel 2, Setting tx_gain 0.0000=
00, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 2, chann=
el 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_fr=
eq 0.000000<br>[PHY] =C2=A0 USRP clock source not specified. defaulting to =
internal<br>Card 3, channel 0, Setting tx_gain 90.000000, rx_gain 125.00000=
0, tx_freq 2625000000.000000, rx_freq 2625000000.000000<br>Card 3, channel =
1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq =
0.000000<br>Card 3, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000=
, tx_freq 0.000000, rx_freq 0.000000<br>Card 3, channel 3, Setting tx_gain =
0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] =
=C2=A0 USRP clock source not specified. defaulting to internal<br>Card 4, c=
hannel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq 2625000000=
.000000, rx_freq 2625000000.000000<br>Card 4, channel 1, Setting tx_gain 0.=
000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 4, c=
hannel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, r=
x_freq 0.000000<br>Card 4, channel 3, Setting tx_gain 0.000000, rx_gain 125=
.000000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] =C2=A0 USRP clock sour=
ce not specified. defaulting to internal<br>Card 5, channel 0, Setting tx_g=
ain 90.000000, rx_gain 125.000000, tx_freq 2625000000.000000, rx_freq 26250=
00000.000000<br>Card 5, channel 1, Setting tx_gain 0.000000, rx_gain 125.00=
0000, tx_freq 0.000000, rx_freq 0.000000<br>Card 5, channel 2, Setting tx_g=
ain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Car=
d 5, channel 3, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000=
000, rx_freq 0.000000<br>[PHY] =C2=A0 USRP clock source not specified. defa=
ulting to internal<br>Card 6, channel 0, Setting tx_gain 90.000000, rx_gain=
 125.000000, tx_freq 2625000000.000000, rx_freq 2625000000.000000<br>Card 6=
, channel 1, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000=
, rx_freq 0.000000<br>Card 6, channel 2, Setting tx_gain 0.000000, rx_gain =
125.000000, tx_freq 0.000000, rx_freq 0.000000<br>Card 6, channel 3, Settin=
g tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<=
br>[PHY] =C2=A0 USRP clock source not specified. defaulting to internal<br>=
Card 7, channel 0, Setting tx_gain 90.000000, rx_gain 125.000000, tx_freq 2=
625000000.000000, rx_freq 2625000000.000000<br>Card 7, channel 1, Setting t=
x_gain 0.000000, rx_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>=
Card 7, channel 2, Setting tx_gain 0.000000, rx_gain 125.000000, tx_freq 0.=
000000, rx_freq 0.000000<br>Card 7, channel 3, Setting tx_gain 0.000000, rx=
_gain 125.000000, tx_freq 0.000000, rx_freq 0.000000<br>[PHY] =C2=A0 USRP c=
lock source not specified. defaulting to internal<br>CPU Freq is 3.000173 <=
br>NO deadline scheduler<br>[HW] =C2=A0 CPU Affinity of main() function is.=
..=C2=A0 CPU_0 =C2=A0CPU_1 =C2=A0CPU_2 =C2=A0CPU_3 <br>[TMR] =C2=A0 Created=
 Posix thread TASK_NAS_UE<br>[TMR] =C2=A0 Created Posix thread TASK_RRC_UE<=
br>ITTI tasks created<br>[NAS] =C2=A0 =C2=A0/home/ncl/openairinterface5g/op=
enair3/NAS/UE/API/USER/user_api.c:143 =C2=A0USR-API =C2=A0 - User&#39;s UDP=
 socket 68 is BOUND to rasputin/10000<br>[NAS] =C2=A0 =C2=A0/home/ncl/opena=
irinterface5g/openair3/NAS/UE/API/USER/user_api.c:166 =C2=A0USR-API =C2=A0 =
- Notification handlers successfully registered<br>[NAS] =C2=A0 =C2=A0/home=
/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:203 =C2=A0EMM-MAIN =
=C2=A0- USIM application data successfully read<br>[NAS] =C2=A0 =C2=A0/home=
/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:248 =C2=A0EMM-MAIN =
=C2=A0- usim_api_k: 8b af 47 3f 2f 8f d0 94 87 cc cb d7 09 7c 68 62<br>[NAS=
] =C2=A0 =C2=A0/home/ncl/openairinterface5g/openair3/NAS/UE/EMM/emm_main.c:=
249 =C2=A0EMM-MAIN =C2=A0- opc: =C2=A0 =C2=A0 =C2=A0 =C2=A08e 27 b6 af 0e 6=
9 2e 75 0f 32 66 7a 3b 14 60 5d<br>[NAS] =C2=A0 =C2=A0/home/ncl/openairinte=
rface5g/openair3/NAS/UE/EMM/emm_main.c:403 =C2=A0EMM-MAIN =C2=A0- EMM data =
successfully read<br>[PHY] =C2=A0 UE : Calling Layer 2 for initialization<b=
r>[MAC] =C2=A0 [MAIN] MAC_INIT_GLOBAL_PARAM IN...<br>[MAC] =C2=A0 [MAIN] CA=
LLING RLC_MODULE_INIT...<br>[PDCP] =C2=A0 PDCP layer has been initialized<b=
r>[MAC] =C2=A0 [MAIN] Init Global Param Done<br>[MAC] =C2=A0 [MAIN] init UE=
 MAC functions <br>[MAC] =C2=A0 [MAIN] Init function start:Nb_UE_INST=3D1<b=
r>[MAC] =C2=A0 [UE0] Applying default macMainConfig<br>[MAC] =C2=A0 [MAIN] =
calling RRC<br>[RRC] =C2=A0 Allocating 408 bytes for UE_EUTRA_Capability<br=
>[PHY] =C2=A0 [RRC]UE Capability encoded, 15 bytes (120 bits)<br>[RRC] =C2=
=A0 [UE] eMBMS active state is 0 <br>[MAC] =C2=A0 [MAIN][INIT] Init functio=
n finished<br>[PHY] =C2=A0 Allocating UE context 0<br>[PHY] =C2=A0 Initiali=
zing frame parms for N_RB_DL 25, Ncp 0, osf 1<br>[PHY] =C2=A0 lte_parms.c: =
Setting N_RB_DL to 25, ofdm_symbol_size 512<br>[CONFIG] loader: 2/2 paramet=
ers successfully set <br>[CONFIG] loader.coding: 1/2 parameters successfull=
y set <br>[LOADER] library libcoding.so successfully loaded<br>[PHY] =C2=A0=
 common_vars-&gt;rxdata[0] 0x7fb4ea773040<br>PHY_vars_UE_g[0][0] =3D 0x7fb4=
f0a18010<br>UE-&gt;mode =3D 0<br>[PHY] =C2=A0 Intializing UE Threads for in=
stance 0 (0x5571c5251940,0x7fb4f0a18010)...<br>Init_UE_threads rtd 0 proc 0=
 nb_threads 2 i 0<br>Init_UE_threads rtd 1 proc 1 nb_threads 2 i 1<br>[CONF=
IG] loader.oai_device: 1/2 parameters successfully set <br>UE_thread_sync i=
n with PHY_vars_UE 0x7fb4f0a18010<br>CPU Affinity of thread UE_0_proc_0 is =
=C2=A00 =C2=A01 =C2=A02 =C2=A03 <br>CPU Affinity of thread UE_0_proc_1 is =
=C2=A00 =C2=A01 =C2=A02 =C2=A03 <br>CPU Affinity of thread sync UE 0<br>=C2=
=A0is =C2=A00 =C2=A01 =C2=A02 =C2=A03 <br>starting UE synch thread (IC -1)<=
br>Scanning band 1, dl_min 2110000000, ul_min 1920000000<br>Scanning band 2=
, dl_min 1930000000, ul_min 1850000000<br>Scanning band 3, dl_min 180500000=
0, ul_min 1710000000<br>Scanning band 4, dl_min 2110000000, ul_min 17100000=
00<br>Scanning band 5, dl_min 869000000, ul_min 824000000<br>Scanning band =
6, dl_min 875000000, ul_min 830000000<br>Scanning band 7, dl_min 2620000000=
, ul_min 2500000000<br>[PHY] =C2=A0 [SCHED][UE] Check absolute frequency DL=
 2625000000, UL 0 (oai_exit 0, rx_num_channels 1)<br>waiting for sync (UE_t=
hread_sync,-1/0x5571c28b3268,0x5571c2fa4200,0x5571c2e5a4a0)<br>[LOADER] lib=
rary liboai_device.so successfully loaded<br>[PHY] =C2=A0 C<b>hecking for U=
SRPs : UHD 3.14.1.0-release (3.14.1)<br>[HW] =C2=A0 No USRP Device Found.<b=
r>=C2=A0[PHY] =C2=A0 <br>/home/ncl/openairinterface5g/targets/RT/USER/lte-u=
e.c:367 init_UE() Exiting OAI softmodem: Error loading device library</b><b=
r>ncl@rasputin:~/openairinterface5g/cmake_targets/lte_build_oai/build$ sudo=
 uhd_usrp_probe<br>l<b>inux; GNU C++ version 7.4.0; Boost_106501; UHD_003.0=
10.003.UHD-3.10-0-gef157678<span class=3D"gmail-im"><br><br>Error: LookupEr=
ror: KeyError: No devices found for -----&gt;<br>Empty Device Address</span=
></b></div></div></div>

--0000000000004a4e22059346633a--


--===============6471264329793479022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6471264329793479022==--

