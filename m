Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E97530A6D1
	for <lists+usrp-users@lfdr.de>; Mon,  1 Feb 2021 12:50:56 +0100 (CET)
Received: from [::1] (port=33898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6XjI-0005UK-5k; Mon, 01 Feb 2021 06:50:52 -0500
Received: from mail-pg1-f172.google.com ([209.85.215.172]:43077)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cnsgokul@gmail.com>) id 1l6XjE-0005Nz-J9
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 06:50:48 -0500
Received: by mail-pg1-f172.google.com with SMTP id n10so11891041pgl.10
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 03:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=zdQ+DS9KlgOP9nUJfqNulqyEjPm58AEJpcqSBGcwYgQ=;
 b=DDgDHHFd/IP6hUyQfgX2POMc+UrspRFwES2F4GXKi6YoD2Jm1PVDZ+LDTDmz84dNtD
 zWB2KdiOAqSCKr/QhhRCDMXTyNGl6Uk0Jiatf1/PQGlaDGaNTqdLrUkRAlLx/y9hLD3h
 OIQoOaZESW4L12bd1B7mOMfTVjNJ0mK0hLhgOoJkBlSJxx4fdOR/kM+eujkhzaZN1ZSg
 ngx5/fjKdkCqG9LJsKTpzSnyNg1CZcRm/VJ/OY4FYMuLYAzWXCk1tyt1+1eYhH9arp95
 kAI8WsLOduCuDQBo6qspzaxlEQwXWzrt0tmAlPRIsE73mJ8p2PdVYvfFN9a3VEN7utSm
 PzrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zdQ+DS9KlgOP9nUJfqNulqyEjPm58AEJpcqSBGcwYgQ=;
 b=QvSXfKw+AGiRQ6A5DCBz9Xzb9iE8QIratZPaczjen4gCGCw+j8Md75yeDOn5M1gZ13
 rwMCqj9T4+b/x01i5LExA33Vn/NcU1J6L3IQUw6LvevLh0ZEuirRHd4uRYQnl6G0Zy55
 51WKtKTVyl1sZR731MWV39tfwGJgZJjAMpnxAcbzC8qsOriDiCZZO4/JND8G1tvPA9kA
 d4VkyNLgiUeKlaBul9hpMoznR03nAmgFfuFJ4nL99hgnOk1yct3HZvEAoqDn78fkOIKT
 A650mN5lG0BxwoZAcSZLnz46kBANNgqNqmfk0/WxbGV+Ed611bKW8yoifO4wl3n6KUxj
 KKvA==
X-Gm-Message-State: AOAM532xVaQNVqXccB2AyuljYpQu2W8afyd5Zi71yO2K7DUE802BTGPt
 nRnXTQGIuzyPRx9wjmV9JaQ8JKeAT8bRvmgG4Z4Jg2ymIXmXWg==
X-Google-Smtp-Source: ABdhPJyWgcFW7xh3UoMh+rX37bBKc7k5p/AmUUEaDoxgM4hTCjquQTS7Cx94PTXpzw7WjHb3j86gRr8f3i+vustM8Gs=
X-Received: by 2002:a63:3c3:: with SMTP id 186mr16817065pgd.107.1612180207054; 
 Mon, 01 Feb 2021 03:50:07 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 1 Feb 2021 12:49:56 +0100
Message-ID: <CAJ28uHHT3GC_Bx65vRUSQ7vCR42u-kF86GyTTaQZc4i+w_0emg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD version mismatch
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: gokul sani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: gokul sani <cnsgokul@gmail.com>
Content-Type: multipart/mixed; boundary="===============5618647842052062234=="
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

--===============5618647842052062234==
Content-Type: multipart/alternative; boundary="0000000000008e332205ba44f423"

--0000000000008e332205ba44f423
Content-Type: text/plain; charset="UTF-8"

Dear USRP Community,

I am working on OAI project, and trying to run enb using USRP n310. My uhd
version was 3.15 LTS. But as part of the installation for OAI, I used this
command in a different workstation:




*git clone git://github.com/EttusResearch/uhd.git
<http://github.com/EttusResearch/uhd.git>
cd uhd; mkdir host/build; cd host/build
cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make -j4
sudo make install
sudo ldconfigsudo /usr/lib/uhd/utils/uhd_images_downloader.py*

But, now I am getting an error in the enb trace as follows:

***************************----trace---*****************
---
-----
------
wait_eNBs()
Waiting for eNB L1 instances to all get configured ... sleeping 50ms
(nb_L1_inst 1)
RC.nb_L1_CC[0]:1
eNB L1 are configured
About to Init RU threads RC.nb_RU:1
Initializing RU threads
[PHY]   DJP - delete code above this
/home/ubuntu18/openairinterface5g/targets/RT/USER/lte-ru.c:2704
[PHY]   Copying frame parms from eNB 0 to ru 0
[PHY]   Initializing RRU descriptor 0 : (local RF,synch_to_ext_device,0)
[PHY]   NFGI_RRU_IF4p5: configuring ru_id 0 (start_rf 0x56469465fc30)
[PHY]   channel 0, Setting tx_gain offset 0.000000, rx_gain offset
110.000000, tx_freq 2630000000.000000, rx_freq 2510000000.000000
[PHY]   Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1
[PHY]   lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024
[PHY]   Starting ru_thread 0, is_slave 0, send_dmrs 0
[PHY]   Initializing RU proc 0 (eNodeB_3GPP,synch_to_ext_device),
[PHY]   init_RU_proc() DJP - added creation of pthread_prach
[HW]   thread_top_init() called with affinity>0, but overruled by
#ifndef CPU_AFFINITY.
[HW]   [SCHED][eNB] ru_thread started on CPU 3, sched_policy =
SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3
wait RUs
[ENB_APP]   Waiting for RUs to be configured ... RC.ru_mask:01
[HW]   thread_top_init() called with affinity>0, but overruled by
#ifndef CPU_AFFINITY.
[HW]   [SCHED][eNB] ru_thread_prach started on CPU 0, sched_policy =
SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3
[PHY]   thread ru created id=15286
[PHY]   Starting RU 0 (eNodeB_3GPP,synch_to_ext_device),
[PHY]   RU 0 has no OAI ctrl port
[PHY]   channel 0, Setting tx_gain offset 0.000000, rx_gain offset
110.000000, tx_freq 2630000000.000000, rx_freq 2510000000.000000
[PHY]   Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1
[PHY]   lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024
[PHY]   ru_thread_prach() RU configured - RACH processing thread running
[LIBCONFIG] device.recplay: 7/7 parameters successfully set, (7 to
default value)
[LIBCONFIG] device: 1/1 parameters successfully set, (1 to default value)
[LIBCONFIG] loader.oai_device: 2/2 parameters successfully set, (1 to
default value)
[LOADER] library liboai_device.so successfully loaded
[HW]   UHD version 4.0.0.0-93-g3b9ced8f (4.0.0)
[HW]   Checking for USRP with args type=n3xx,addr=192.168.10.2
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.0-93-g3b9ced8f
[HW]   Found USRP n3xx
Found USRP n300
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=318F049,claimed=False,addr=192.168.10.2,master_clock_rate=122880000.000000
[WARNING] [MPM.RPCServer] A timeout event occured!
terminate called after throwing an instance of 'rpc::timeout'
  what():  rpc::timeout: Timeout of 2000ms while calling RPC function
'set_device_id'
Linux signal Aborted...
/home/ubuntu18/openairinterface5g/executables/softmodem-common.c:187
signal_handler() Exiting OAI softmodem: softmodem starting exit
procedure

***********************************trace
***********************************************

The following is the trace for the *uhd_usrp_probe*:
************************************************

uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.0-93-g3b9ced8f
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.170.20,type=n3xx,product=n310,serial=318F049,claimed=False,addr=192.168.170.20
[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never
fully initialized!
Error: rpc::timeout: Timeout of 2000ms while calling RPC function
'set_device_id'

**************************************************

And when I try to update the default FPGA variant, using the command



*uhd_image_loader --args type=n3xx,addr=192.168.170.20*

I get the following trace,

************************************************************************

uhd_image_loader --args type=n3xx,addr=192.168.170.20
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.0-93-g3b9ced8f
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.170.20,type=n3xx,product=n310,serial=318F049,claimed=False,skip_init=1
[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never
fully initialized!
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 318F049
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[ERROR] [MPM.PeriphManager] Major compat number mismatch for component
`FPGA': Expected: 5.3 Actual: 8.0
[ERROR] [MPM.PeriphManager] Failed to initialize motherboard: Major
compat number mismatch for component `FPGA': Expected: 5.3 Actual: 8.0
[ERROR] [MPM.PeriphManager] Cannot run init(), device was never fully
initialized!


*******************************************************************************

Please let me know what am I missing ..?

Thank you for your help in advance.!

WR,
Gokul

--0000000000008e332205ba44f423
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear USRP Community,</div><div><br></div><div>I am wo=
rking on OAI project, and trying to run enb using USRP n310. My uhd version=
 was 3.15 LTS. But as part of the installation for OAI, I used this command=
 in a different workstation:</div><div><br></div><div><pre><b>git clone git=
://<a href=3D"http://github.com/EttusResearch/uhd.git">github.com/EttusRese=
arch/uhd.git</a>
cd uhd; mkdir host/build; cd host/build
cmake -DCMAKE_INSTALL_PREFIX=3D/usr ..
make -j4
sudo make install
sudo ldconfig<br>sudo /usr/lib/uhd/utils/uhd_images_downloader.py<br><br></=
b></pre><pre>But, now I am getting an error in the enb trace as follows:<br=
><br></pre><pre>***************************----trace---*****************<br=
>---<br>-----<br>------<br>wait_eNBs()<br>Waiting for eNB L1 instances to a=
ll get configured ... sleeping 50ms (nb_L1_inst 1)<br>RC.nb_L1_CC[0]:1<br>e=
NB L1 are configured<br>About to Init RU threads RC.nb_RU:1<br>Initializing=
 RU threads<br>[PHY] =C2=A0 DJP - delete code above this /home/ubuntu18/ope=
nairinterface5g/targets/RT/USER/lte-ru.c:2704<br>[PHY] =C2=A0 Copying frame=
 parms from eNB 0 to ru 0<br>[PHY] =C2=A0 Initializing RRU descriptor 0 : (=
local RF,synch_to_ext_device,0)<br>[PHY] =C2=A0 NFGI_RRU_IF4p5: configuring=
 ru_id 0 (start_rf 0x56469465fc30)<br>[PHY] =C2=A0 channel 0, Setting tx_ga=
in offset 0.000000, rx_gain offset 110.000000, tx_freq 2630000000.000000, r=
x_freq 2510000000.000000<br>[PHY] =C2=A0 Initializing frame parms for N_RB_=
DL 50, Ncp 0, osf 1<br>[PHY] =C2=A0 lte_parms.c: Setting N_RB_DL to 50, ofd=
m_symbol_size 1024<br>[PHY] =C2=A0 Starting ru_thread 0, is_slave 0, send_d=
mrs 0<br>[PHY] =C2=A0 Initializing RU proc 0 (eNodeB_3GPP,synch_to_ext_devi=
ce),<br>[PHY] =C2=A0 init_RU_proc() DJP - added creation of pthread_prach<b=
r>[HW] =C2=A0 thread_top_init() called with affinity&gt;0, but overruled by=
 #ifndef CPU_AFFINITY.<br>[HW] =C2=A0 [SCHED][eNB] ru_thread started on CPU=
 3, sched_policy =3D SCHED_FIFO , priority =3D 99, CPU Affinity=3D CPU_0 CP=
U_1 CPU_2 CPU_3 <br>wait RUs<br>[ENB_APP] =C2=A0 Waiting for RUs to be conf=
igured ... RC.ru_mask:01<br>[HW] =C2=A0 thread_top_init() called with affin=
ity&gt;0, but overruled by #ifndef CPU_AFFINITY.<br>[HW] =C2=A0 [SCHED][eNB=
] ru_thread_prach started on CPU 0, sched_policy =3D SCHED_FIFO , priority =
=3D 99, CPU Affinity=3D CPU_0 CPU_1 CPU_2 CPU_3 <br>[PHY] =C2=A0 thread ru =
created id=3D15286<br>[PHY] =C2=A0 Starting RU 0 (eNodeB_3GPP,synch_to_ext_=
device),<br>[PHY] =C2=A0 RU 0 has no OAI ctrl port<br>[PHY] =C2=A0 channel =
0, Setting tx_gain offset 0.000000, rx_gain offset 110.000000, tx_freq 2630=
000000.000000, rx_freq 2510000000.000000<br>[PHY] =C2=A0 Initializing frame=
 parms for N_RB_DL 50, Ncp 0, osf 1<br>[PHY] =C2=A0 lte_parms.c: Setting N_=
RB_DL to 50, ofdm_symbol_size 1024<br>[PHY] =C2=A0 ru_thread_prach() RU con=
figured - RACH processing thread running<br>[LIBCONFIG] device.recplay: 7/7=
 parameters successfully set, (7 to default value)<br>[LIBCONFIG] device: 1=
/1 parameters successfully set, (1 to default value)<br>[LIBCONFIG] loader.=
oai_device: 2/2 parameters successfully set, (1 to default value)<br>[LOADE=
R] library liboai_device.so successfully loaded<br>[HW] =C2=A0 UHD version =
4.0.0.0-93-g3b9ced8f (4.0.0)<br>[HW] =C2=A0 Checking for USRP with args typ=
e=3Dn3xx,addr=3D192.168.10.2<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; =
Boost_106501; UHD_4.0.0.0-93-g3b9ced8f<br>[HW] =C2=A0 Found USRP n3xx<br>Fo=
und USRP n300<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with ar=
gs: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D318F049,cl=
aimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122880000.000000<br>[=
WARNING] [MPM.RPCServer] A timeout event occured!<br>terminate called after=
 throwing an instance of &#39;rpc::timeout&#39;<br>=C2=A0 what(): =C2=A0rpc=
::timeout: Timeout of 2000ms while calling RPC function &#39;set_device_id&=
#39;<br>Linux signal Aborted...<br>/home/ubuntu18/openairinterface5g/execut=
ables/softmodem-common.c:187 signal_handler() Exiting OAI softmodem: softmo=
dem starting exit procedure<br><br></pre><pre>*****************************=
******trace ***********************************************<br><br></pre><p=
re>The following is the trace for the <b>uhd_usrp_probe</b>:<br>***********=
*************************************<br><br>uhd_usrp_probe <br>[INFO] [UHD=
] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-93-g3b9ced8f<br>[=
INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D19=
2.168.170.20,type=3Dn3xx,product=3Dn310,serial=3D318F049,claimed=3DFalse,ad=
dr=3D192.168.170.20<br>[WARNING] [MPM.PeriphManager] Cannot run deinit(), d=
evice was never fully initialized!<br>Error: rpc::timeout: Timeout of 2000m=
s while calling RPC function &#39;set_device_id&#39;<br><br>***************=
***********************************<br><br></pre><pre>And when I try to upd=
ate the default FPGA variant, using the command <br><br><b>uhd_image_loader=
 --args type=3Dn3xx,addr=3D192.168.170.20<br><br></b></pre><pre>I get the f=
ollowing trace,<br><br>****************************************************=
********************<br><br></pre><pre>uhd_image_loader --args type=3Dn3xx,=
addr=3D192.168.170.20<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_1=
06501; UHD_4.0.0.0-93-g3b9ced8f<br>[INFO] [MPMD] Initializing 1 device(s) i=
n parallel with args: mgmt_addr=3D192.168.170.20,type=3Dn3xx,product=3Dn310=
,serial=3D318F049,claimed=3DFalse,skip_init=3D1<br>[WARNING] [MPM.PeriphMan=
ager] Cannot run deinit(), device was never fully initialized!<br>[INFO] [M=
PMD] Claimed device without full initialization.<br>[INFO] [MPMD IMAGE LOAD=
ER] Starting update. This may take a while.<br>[INFO] [MPM.PeriphManager] U=
pdating component `fpga&#39;<br>[INFO] [MPM.PeriphManager] Updating compone=
nt `dts&#39;<br>[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>[IN=
FO] [MPM.PeriphManager] Device serial number: 318F049<br>[INFO] [MPM.Periph=
Manager] Initialized 2 daughterboard(s).<br>[INFO] [MPMD IMAGE LOADER] Upda=
te component function succeeded.<br>[ERROR] [MPM.PeriphManager] Major compa=
t number mismatch for component `FPGA&#39;: Expected: 5.3 Actual: 8.0<br>[E=
RROR] [MPM.PeriphManager] Failed to initialize motherboard: Major compat nu=
mber mismatch for component `FPGA&#39;: Expected: 5.3 Actual: 8.0<br>[ERROR=
] [MPM.PeriphManager] Cannot run init(), device was never fully initialized=
!<br><br><br>**************************************************************=
*****************<br><br></pre><pre>Please let me know what am I missing ..=
?<br><br></pre><pre>Thank you for your help in advance.!<br><br></pre><pre>=
WR,<br>Gokul<br></pre><pre><br><br></pre><pre><b></b></pre></div></div>

--0000000000008e332205ba44f423--


--===============5618647842052062234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5618647842052062234==--

