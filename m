Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A5A30AB87
	for <lists+usrp-users@lfdr.de>; Mon,  1 Feb 2021 16:35:35 +0100 (CET)
Received: from [::1] (port=35594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6bEf-0002LC-7y; Mon, 01 Feb 2021 10:35:29 -0500
Received: from mail-ed1-f41.google.com ([209.85.208.41]:33237)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1l6bEb-0002DD-V1
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 10:35:26 -0500
Received: by mail-ed1-f41.google.com with SMTP id c6so19375694ede.0
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 07:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EeYX74O2w0nsAUVzyo3GYoikpGp8DFq/m0Wzz62i3NI=;
 b=rPyvdYJgE3dcQM8bfc7T/W+mOdJopQgO0BTOPhF/DTZvQbPw1mlhXZCX8v/ykfELPD
 pn310jDV+/x/in8O22iBzmN948MQtGbKTybPHtk/y0vBZX1If37LqxhCRr2E/WxgiUXB
 V/oAvG/7Gk9gxZBRh7Bu/i2/h4AZCIyCKaaRoM2nN8EfS5SveOfn1E6xBIYi2esvdUKq
 q96+Ve4ez0PMd7FD18kSA4aGK8my5eSAW49++/I4JX/mICQJHH4XYUSzj4NABBTasRSX
 NDAviE7FnuiBuath1RF2C3YvzHOkDxBBU2BeFcsEMdMCFEY0ZA6Oo0dE2xk7RBuOaN3k
 oOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EeYX74O2w0nsAUVzyo3GYoikpGp8DFq/m0Wzz62i3NI=;
 b=jBdfugLEeX3zHZ8fddX6tprGJG9ihJkezC7sBYb14jkZtmeFGeaweXwPg7Jmm3bkqe
 hAJAyffTIiEhwWlQuuG/SxYRYvoMo97BIEVEY47gwdMlRihIdrLJB9QEHPTxm/+odHeY
 yz3aGympJnCpBOuhziMG9iCSEHonr5fDoeKWgdED9RML+0i4FbwPJCFyCjQA7kn2n9vh
 wosnBQs5fLDOmtuYhwnaBfOnSr3XNKN56/YKnhUhZSljNdmaCSLXusMK7ZSmXNkaFA0c
 d+D20Qctv9Cx7Z/Z7jX2cTuq7j2Wh0sOPOUqFwyA6kYvcM5aSI3zHVAkbyg9pO0YGGxd
 pucA==
X-Gm-Message-State: AOAM530BSHpGEDBF3hkZWDdX7u0LqtsYXbsS/BnU4LQDQ/DgP4qtQrNP
 YS1iX90GPksu5YCpSYwC3XTGNHTlsfzJ5kEi4792FSug
X-Google-Smtp-Source: ABdhPJy+eWtDzHL3zR8vv+scgM3RK6lGzwUemBfUYgF3VfUyitOAvPY+AOq2sXFexD8tbfluNXbSVTm6v5RpWkjJORw=
X-Received: by 2002:aa7:ce05:: with SMTP id d5mr19398063edv.63.1612193684774; 
 Mon, 01 Feb 2021 07:34:44 -0800 (PST)
MIME-Version: 1.0
References: <CAJ28uHHT3GC_Bx65vRUSQ7vCR42u-kF86GyTTaQZc4i+w_0emg@mail.gmail.com>
In-Reply-To: <CAJ28uHHT3GC_Bx65vRUSQ7vCR42u-kF86GyTTaQZc4i+w_0emg@mail.gmail.com>
Date: Mon, 1 Feb 2021 10:34:34 -0500
Message-ID: <CAGNhwTPML0-knfpaC9WRNF4fUg-SwUJUpCRMQYJ8dJAYrFPuRg@mail.gmail.com>
To: gokul sani <cnsgokul@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD version mismatch
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============1600741777477582439=="
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

--===============1600741777477582439==
Content-Type: multipart/alternative; boundary="000000000000e3f8d005ba48176b"

--000000000000e3f8d005ba48176b
Content-Type: text/plain; charset="UTF-8"

Hi Gokul - Did you update UHD to the same version on both the host computer
running OAI as well as the USRP (via the filesystem on the SDcard)? It
looks from the GIT commands like you're trying to use UHD 4.0-beta on this
new host & you note UHD 3.15 on the USRP ... which won't work. You have to
have the same version on both devices. - MLD


On Mon, Feb 1, 2021 at 6:50 AM gokul sani via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear USRP Community,
>
> I am working on OAI project, and trying to run enb using USRP n310. My uhd
> version was 3.15 LTS. But as part of the installation for OAI, I used this
> command in a different workstation:
>
>
>
>
> *git clone git://github.com/EttusResearch/uhd.git <http://github.com/EttusResearch/uhd.git>
> cd uhd; mkdir host/build; cd host/build
> cmake -DCMAKE_INSTALL_PREFIX=/usr ..
> make -j4
> sudo make install
> sudo ldconfigsudo /usr/lib/uhd/utils/uhd_images_downloader.py*
>
> But, now I am getting an error in the enb trace as follows:
>
> ***************************----trace---*****************
> ---
> -----
> ------
> wait_eNBs()
> Waiting for eNB L1 instances to all get configured ... sleeping 50ms (nb_L1_inst 1)
> RC.nb_L1_CC[0]:1
> eNB L1 are configured
> About to Init RU threads RC.nb_RU:1
> Initializing RU threads
> [PHY]   DJP - delete code above this /home/ubuntu18/openairinterface5g/targets/RT/USER/lte-ru.c:2704
> [PHY]   Copying frame parms from eNB 0 to ru 0
> [PHY]   Initializing RRU descriptor 0 : (local RF,synch_to_ext_device,0)
> [PHY]   NFGI_RRU_IF4p5: configuring ru_id 0 (start_rf 0x56469465fc30)
> [PHY]   channel 0, Setting tx_gain offset 0.000000, rx_gain offset 110.000000, tx_freq 2630000000.000000, rx_freq 2510000000.000000
> [PHY]   Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1
> [PHY]   lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024
> [PHY]   Starting ru_thread 0, is_slave 0, send_dmrs 0
> [PHY]   Initializing RU proc 0 (eNodeB_3GPP,synch_to_ext_device),
> [PHY]   init_RU_proc() DJP - added creation of pthread_prach
> [HW]   thread_top_init() called with affinity>0, but overruled by #ifndef CPU_AFFINITY.
> [HW]   [SCHED][eNB] ru_thread started on CPU 3, sched_policy = SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3
> wait RUs
> [ENB_APP]   Waiting for RUs to be configured ... RC.ru_mask:01
> [HW]   thread_top_init() called with affinity>0, but overruled by #ifndef CPU_AFFINITY.
> [HW]   [SCHED][eNB] ru_thread_prach started on CPU 0, sched_policy = SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3
> [PHY]   thread ru created id=15286
> [PHY]   Starting RU 0 (eNodeB_3GPP,synch_to_ext_device),
> [PHY]   RU 0 has no OAI ctrl port
> [PHY]   channel 0, Setting tx_gain offset 0.000000, rx_gain offset 110.000000, tx_freq 2630000000.000000, rx_freq 2510000000.000000
> [PHY]   Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1
> [PHY]   lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024
> [PHY]   ru_thread_prach() RU configured - RACH processing thread running
> [LIBCONFIG] device.recplay: 7/7 parameters successfully set, (7 to default value)
> [LIBCONFIG] device: 1/1 parameters successfully set, (1 to default value)
> [LIBCONFIG] loader.oai_device: 2/2 parameters successfully set, (1 to default value)
> [LOADER] library liboai_device.so successfully loaded
> [HW]   UHD version 4.0.0.0-93-g3b9ced8f (4.0.0)
> [HW]   Checking for USRP with args type=n3xx,addr=192.168.10.2
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-93-g3b9ced8f
> [HW]   Found USRP n3xx
> Found USRP n300
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=318F049,claimed=False,addr=192.168.10.2,master_clock_rate=122880000.000000
> [WARNING] [MPM.RPCServer] A timeout event occured!
> terminate called after throwing an instance of 'rpc::timeout'
>   what():  rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'
> Linux signal Aborted...
> /home/ubuntu18/openairinterface5g/executables/softmodem-common.c:187 signal_handler() Exiting OAI softmodem: softmodem starting exit procedure
>
> ***********************************trace ***********************************************
>
> The following is the trace for the *uhd_usrp_probe*:
> ************************************************
>
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-93-g3b9ced8f
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.170.20,type=n3xx,product=n310,serial=318F049,claimed=False,addr=192.168.170.20
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully initialized!
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'
>
> **************************************************
>
> And when I try to update the default FPGA variant, using the command
>
>
>
> *uhd_image_loader --args type=n3xx,addr=192.168.170.20*
>
> I get the following trace,
>
> ************************************************************************
>
> uhd_image_loader --args type=n3xx,addr=192.168.170.20
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-93-g3b9ced8f
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.170.20,type=n3xx,product=n310,serial=318F049,claimed=False,skip_init=1
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully initialized!
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.PeriphManager] Updating component `dts'
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 318F049
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> [ERROR] [MPM.PeriphManager] Major compat number mismatch for component `FPGA': Expected: 5.3 Actual: 8.0
> [ERROR] [MPM.PeriphManager] Failed to initialize motherboard: Major compat number mismatch for component `FPGA': Expected: 5.3 Actual: 8.0
> [ERROR] [MPM.PeriphManager] Cannot run init(), device was never fully initialized!
>
>
> *******************************************************************************
>
> Please let me know what am I missing ..?
>
> Thank you for your help in advance.!
>
> WR,
> Gokul
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e3f8d005ba48176b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Gokul - Did you update UHD to the same version on =
both=C2=A0the host computer running OAI as well as the USRP (via the filesy=
stem on the SDcard)? It looks from the GIT commands like you&#39;re trying =
to use UHD 4.0-beta on this new host &amp; you note UHD 3.15 on the USRP ..=
. which won&#39;t work. You have to have the same version on both=C2=A0devi=
ces. - MLD<br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Feb 1, 2021 at 6:50 AM gokul sani via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Dear USRP Community,</div><div><br></div><div>I am w=
orking on OAI project, and trying to run enb using USRP n310. My uhd versio=
n was 3.15 LTS. But as part of the installation for OAI, I used this comman=
d in a different workstation:</div><div><br></div><div><pre><b>git clone gi=
t://<a href=3D"http://github.com/EttusResearch/uhd.git" target=3D"_blank">g=
ithub.com/EttusResearch/uhd.git</a>
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e3f8d005ba48176b--


--===============1600741777477582439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1600741777477582439==--

