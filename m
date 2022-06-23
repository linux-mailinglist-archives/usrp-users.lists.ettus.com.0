Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D376557EDB
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 17:47:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DE4938442A
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 11:47:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655999252; bh=Ev0WWIddFJqVt0RkTu28kRF5TF2xDb5RxtmmrHcHb+c=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Oej7r+28I+Cl+Hx7Ygbq8Pn5mRPBv/rggg4SxsXDy8DHuMaJGtl7xZ2DwPjrQbc19
	 6V0gxJI6vj8xJfv5DEoFJZ7TiGgHV+Wycz3u1HjZkGhnmD48RRBYh4aRG7u2HpMSpi
	 ChPBhGc+pcaxRUVgupKTWJxHhzQkcZ+c2xCnmh6xr8bLDfVxrFf1cIyxUKpAtz+cA2
	 Yjx/GIrV1o9ouM7DI9iEwKP/K8HhIZwD6QBAevz2dVpar4Zh4cOprgMFmK6bu1G75z
	 P7jgtm7mw0pOGWbZ7nsSZzIrO69LJ+2hosw/bjLS00B7pgsnviV2MhT4TWi7zDIDxy
	 ip9/S6F9AH2ow==
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D9A03843C2
	for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 11:46:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X9mRMOZi";
	dkim-atps=neutral
Received: by mail-lj1-f171.google.com with SMTP id o23so16673590ljg.13
        for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 08:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=6Tal/QuJdXWaLKky2JC3DWwuEO0Xwljvvh1cb7QBDhQ=;
        b=X9mRMOZi0TWLrZ8BHsDAO+jzJWC6K/qnrkjUicGCHroYXOztM9pveRcRszMtT4W99m
         ZB1isLU88G+BPEGyiWw60qAuF2w26hsAFRZavW7cCuh9ekrIzZFWXzrDZjPmOHLHAv6s
         HlqNrDiIMU60UxuFw2YK+4qwri+KnxsBBImLZZ83FsdSEGkxcvQcord/TpV8ntAG3S1h
         0i7gp6cZ7433bijRqt2BvciGO9SsSvm6hshkqjNHhYUKoYWSu5Kflnax/ngQeH+ty9Sz
         JPWBMKmTeh/Xda8K6J6Q2peviPqH/JZsiQ4EV9NwvuT57BUvrmPvuY0mGt1YB5ah1DkS
         ROgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6Tal/QuJdXWaLKky2JC3DWwuEO0Xwljvvh1cb7QBDhQ=;
        b=4yr+AVNpmGpT6ANkCT1RcoX3pU7OpDmmVaCpV7/uB68Rc83Je0TVnx1aJRNDdTtvP6
         ZfBafP6eWIhDskqPH/YG49H1roSRNUuJr//a4FPHZCexY87PyoabyScsflA+qvRjj17k
         1FmzB3ZfrD8AK4RkWr2qMTWVs2g+tlPrf6MrW1rYopNXiIxvJG5yjWiqYagTl0KCXjih
         Ptij3eY/8HzBFIwMr4rpyuMfZFDXT758lYdnul9/Q/iWM3DPhfSz0Kh+CDQuujVi3OhQ
         FMj6bvid9JLn9+1oIGkm6J1gcl4UV0WZ/AmH8/Gv1UmBwkN0izM5VRf6huNQQd9PJLwv
         385g==
X-Gm-Message-State: AJIora/T1v3BjtSCAVSOdIZnKyvftsTx62cuhCtsf4WGVyngfyc3Br+l
	gJlNrlcVG3rOu8/0kNOHE41HHkTpYgJ7/do7z629t2boRk3bIw==
X-Google-Smtp-Source: AGRyM1tTAk26gTDKcuJp2DO7v0fWTNHA0dZv/+nycPE6Zg+WoBRgu+g9ayskA+Xu+E3Z15dpSp5m3uq4xRBCT3mYZlI=
X-Received: by 2002:a2e:a803:0:b0:25a:7654:dd95 with SMTP id
 l3-20020a2ea803000000b0025a7654dd95mr5009368ljq.329.1655999189479; Thu, 23
 Jun 2022 08:46:29 -0700 (PDT)
MIME-Version: 1.0
From: Shane Flandermeyer <shaneflandermeyer@gmail.com>
Date: Thu, 23 Jun 2022 10:46:18 -0500
Message-ID: <CAHN2CUfeJ8A7JLuataNQsRR-7O-h37YrcbbBy0s=FXs8fMsROg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 44P24W6NNYEBPO74LSK5XB4KYU57KPLL
X-Message-ID-Hash: 44P24W6NNYEBPO74LSK5XB4KYU57KPLL
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Dropped packets with DPDK and X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/44P24W6NNYEBPO74LSK5XB4KYU57KPLL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4994174400132095701=="

--===============4994174400132095701==
Content-Type: multipart/alternative; boundary="0000000000006ff3bb05e21f5b8d"

--0000000000006ff3bb05e21f5b8d
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to configure UHD to work with DPDK and my Intel X550T NIC. When
running the benchmark_rate UHD example, the x310 drops packets and gives
sequence errors even at lower sample rates. Below is an example of the
output from the script. Have I configured something incorrectly?

/usr/local/lib/uhd/examples# ./benchmark_rate --rx_rate 100e6 --args
"addr=192.168.40.2,use_dpdk=1"

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11;
UHD_4.2.0.HEAD-0-g46a70d85
EAL: Detected CPU lcores: 16
EAL: Detected NUMA nodes: 1
EAL: Detected shared linkage of DPDK
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: Selected IOVA mode 'PA'
EAL: No available 1048576 kB hugepages reported
EAL: VFIO support initialized
EAL: Using IOMMU type 8 (No-IOMMU)
EAL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0 (socket 0)
TELEMETRY: No legacy callbacks, legacy socket not created
[00:00:00.000411] Creating the usrp device with:
addr=192.168.40.2,use_dpdk=1...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

[00:00:02.819147387] Setting device timestamp to 0...
[00:00:02.821865134] Testing receive rate 100.000000 Msps on 1 channels
[00:00:03.355548206] Detected Rx sequence error.
D[D00:00:04.355894703] Detected Rx sequence error.
[D00:00:05.356027514] Detected Rx sequence error.
[00:00:06.355927093] Detected Rx sequence error.
D[00:00:07.355947814] Detected Rx sequence error.
D[D00:00:08.355300086] Detected Rx sequence error.
[D00:00:09.355619635] Detected Rx sequence error.
[D00:00:10.355006440] Detected Rx sequence error.
[D00:00:11.355740470] Detected Rx sequence error.
[D00:00:12.354932569] Detected Rx sequence error.
[00:00:12.822469413] Benchmark complete.


Benchmark rate summary:
  Num received samples:     961039704
  Num dropped samples:      38916012
  Num overruns detected:    0
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 10
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

--0000000000006ff3bb05e21f5b8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to configure UHD =
to work with DPDK and my Intel X550T NIC. When running the benchmark_rate U=
HD example, the x310 drops packets and gives sequence errors even at lower =
sample rates. Below is an example of the output from the script. Have I con=
figured something incorrectly?</div><div><br></div><div>/usr/local/lib/uhd/=
examples# ./benchmark_rate --rx_rate 100e6 --args &quot;addr=3D192.168.40.2=
,use_dpdk=3D1&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 11.2.0; Boos=
t_107400; DPDK_21.11; UHD_4.2.0.HEAD-0-g46a70d85<br>EAL: Detected CPU lcore=
s: 16<br>EAL: Detected NUMA nodes: 1<br>EAL: Detected shared linkage of DPD=
K<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected=
 IOVA mode &#39;PA&#39;<br>EAL: No available 1048576 kB hugepages reported<=
br>EAL: VFIO support initialized<br>EAL: Using IOMMU type 8 (No-IOMMU)<br>E=
AL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0 (socket 0)=
<br>TELEMETRY: No legacy callbacks, legacy socket not created<br>[00:00:00.=
000411] Creating the usrp device with: addr=3D192.168.40.2,use_dpdk=3D1...<=
br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum f=
rame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>Using De=
vice: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X3=
10<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX D=
board: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=
=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subd=
ev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=
=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1=
<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 =
TX Subdev: UBX TX<br><br>[00:00:02.819147387] Setting device timestamp to 0=
...<br>[00:00:02.821865134] Testing receive rate 100.000000 Msps on 1 chann=
els<br>[00:00:03.355548206] Detected Rx sequence error.<br>D[D00:00:04.3558=
94703] Detected Rx sequence error.<br>[D00:00:05.356027514] Detected Rx seq=
uence error.<br>[00:00:06.355927093] Detected Rx sequence error.<br>D[00:00=
:07.355947814] Detected Rx sequence error.<br>D[D00:00:08.355300086] Detect=
ed Rx sequence error.<br>[D00:00:09.355619635] Detected Rx sequence error.<=
br>[D00:00:10.355006440] Detected Rx sequence error.<br>[D00:00:11.35574047=
0] Detected Rx sequence error.<br>[D00:00:12.354932569] Detected Rx sequenc=
e error.<br>[00:00:12.822469413] Benchmark complete.<br><br><br>Benchmark r=
ate summary:<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 961039704<br>=C2=
=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A038916012<br>=C2=A0 Num overrun=
s detected: =C2=A0 =C2=A00<br>=C2=A0 Num transmitted samples: =C2=A00<br>=
=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 10<b=
r>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Num late commands: =C2=
=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0=
 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><=
br>Done!<br></div></div>

--0000000000006ff3bb05e21f5b8d--

--===============4994174400132095701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4994174400132095701==--
