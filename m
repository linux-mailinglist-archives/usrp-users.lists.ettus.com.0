Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E1F66DC59
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 12:28:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E260D38447C
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 06:27:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673954879; bh=iY1pKiyRncQ2/HZ5CaACuCNFjfM/j2Hs5l1KnMqfg1Q=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GOTcZddDrPLJ6w2ojwc1z1Te4O4mfIaf4RbSHweE6qzIBjnOxlHiAW2T4rbsn590v
	 6TBzYgxaa7rFEhey0iLGYhsST1tHhJtXp/1D2Bog8HhJA9E+D5Sa68KTWdWFeikLvq
	 l47NvzPGuZKlL9h22UMVxwkph/KyFdZDVtWW9hDs7nJTWJPjJkKxp0lo5jXl+gEzq4
	 Wl08i4Erp0SoTbPx3nD43FewSdNNSOwwNyRbLojNEr9DqYGYgt189PT9Dr6EDUCX+N
	 TOwihSACYvS0h3aCimo9zqMs/PjYx4R3eXtzYl6aoePvD15Uk4QO98ntnPdf1x7aNH
	 4XY/4XvlRFFmQ==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id CD1AF384325
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 06:27:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h3aCM/wt";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id m6so46622493lfj.11
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 03:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JnXgkB2ZQPCdnc5/ZC/bIqVHd0CazyIfPWn9LCj7Tv0=;
        b=h3aCM/wtQ22g8JrsMxBpNI1WkcNbEXfOzRzXoBA9xqY2FFCDNiv6N59c/OQl87nGuJ
         6SNM1j9xfsJEqJrscoUzvDWOBxwt5E0PWWvrulAtPTtDQlFiHvYLaWnlAMGhRsHo3fNG
         xZH8ZzpzOfzrmk9wnQPMcbyQk9VdR6pF/XGOFNpPrMYDITQDJisbJck8sn83qSR7ctcb
         6ekuszG9LbW0ydBVbNMJgRTGebl0Q5myNdxvH1LKc6w5msAjxTTDXc1xBxsYY+HUjazr
         9LgTfEkN06SQp5kGs981ZdBHhdd+Nu7oRWhomOFtTdeUWcPz59FtMizYHvyEP79McxNi
         Ru/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JnXgkB2ZQPCdnc5/ZC/bIqVHd0CazyIfPWn9LCj7Tv0=;
        b=R9YrNh/u5bIasc9sztkMiwP/29kqA8KsiJoaAFiwUGZcF47pcouTyhnW9Rjn9cC5Qx
         WI1CXij1uUH1PFM3EAMd64MfS/wMU9F7b7QR29/N3jinV5BwPsK2M6lJ0Icc4IQfc2Ci
         QOHyOSLy2Cl+A1rkSeIyI2Lduk28I3kU7nQlWXomOxUOwel/VamBqtexKUjyRBCXi5lh
         rKTg0+crcW6clc630uc42XMZ7gUEQLe5IpDD2crvPDxp53hjXcOFwCRViugfI9yZkOgi
         UlKOZKsyO0py/OW3wj3dKkHIDfxMoFwJxlfLZr6WimKvkCaO/IxAgibvYGPOU8Xlp6aR
         mkkQ==
X-Gm-Message-State: AFqh2krNT7JG0BBimsORL0/0DfpYufcW7kFOZxyAyQ5C1aDXrAHZNxH4
	N9919DAD3QYF9S734C6OqjHZ/K9RPafxuv7gdf5awYlZCVTZ8g==
X-Google-Smtp-Source: AMrXdXvsWmeX1ByvDVhVD6bhk/4xCdyOokQM75aWIm43Mh5fxQrJvAyybzljeyzeat+Pkp3j6sc30QhCy4IaI0nqxD0=
X-Received: by 2002:ac2:5622:0:b0:4cc:5c68:3b1 with SMTP id
 b2-20020ac25622000000b004cc5c6803b1mr162424lff.603.1673954829497; Tue, 17 Jan
 2023 03:27:09 -0800 (PST)
MIME-Version: 1.0
From: mychk1 1 <mychk2@gmail.com>
Date: Tue, 17 Jan 2023 13:28:39 +0200
Message-ID: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RSJ5LG2CELOMVOKF2OBKWTSGK3P3N2ZV
X-Message-ID-Hash: RSJ5LG2CELOMVOKF2OBKWTSGK3P3N2ZV
X-MailFrom: mychk2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RSJ5LG2CELOMVOKF2OBKWTSGK3P3N2ZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8646152117458454477=="

--===============8646152117458454477==
Content-Type: multipart/alternative; boundary="000000000000fb7be705f273fa1a"

--000000000000fb7be705f273fa1a
Content-Type: text/plain; charset="UTF-8"

Hello Community,

I using the USRP N310 with openairinterface5G code.

recently,  I faced an error called updating MPM version. Is there a commend
to update MPM version?

[INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd21735d5
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`clock_source=internal,time_source=internal'.
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0.
Please update the version of MPM on your USRP device.
terminate called after throwing an instance of 'uhd::runtime_error'
  what():  RuntimeError: MPM minor compat number mismatch. Expected: 4.2
Actual: 4.0. Please update the version of MPM on your USRP device.
Aborted



Some useful logs:
 - In the host : uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.1.0.HEAD-0-gd21735d5
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.237.72.103,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=HG,mgmt_addr=10.237.72.103,product=n310,clock_source=internal,time_source=internal'.
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-31FD9DD
|   |   dboard_0_pid: 336
|   |   dboard_0_serial: 31F6BC8
|   |   dboard_1_pid: 336
|   |   dboard_1_serial: 31F6BF2
|   |   eeprom_version: 3
|   |   fs_version: 20210630170909
|   |   mender_artifact: v4.1.0.0_n3xx
|   |   mpm_sw_version: 4.1.0.0-gd21735d5
|   |   pid: 16962
|   |   product: n310
|   |   rev: 10
|   |   rpc_connection: remote
|   |   serial: 31FD9DD
|   |   type: n3xx
|   |   MPM Version: 4.0
|   |   FPGA Version: 8.0
|   |   FPGA git hash: d5c2750.clean
|   |
|   |   Time sources:  internal, external, gpsdo, sfp0
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
gps_time, gps_tpv
|     _____________________________________________________



- The UHD version SD-card attached with the USRP

root@ni-n3xx-31FD9DD:~# uhd_config_info --version
UHD 4.1.0.0-0-gd21735d5

BR,
Marcin

--000000000000fb7be705f273fa1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello Community, <br><br></div><div>I =
using the USRP N310 with openairinterface5G code. <br><br></div><div>recent=
ly,=C2=A0 I faced an error called updating MPM version. Is there a commend =
to update MPM version? <br><br>[INFO] [MPM.main] Launching USRP/MPM, versio=
n: 4.1.0.0-gd21735d5<br>[INFO] [MPM.main] Spawning RPC process...<br>[INFO]=
 [MPM.PeriphManager] Device serial number: 31FD9DD<br>[INFO] [MPM.PeriphMan=
ager] Initialized 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init() =
called with device args `clock_source=3Dinternal,time_source=3Dinternal&#39=
;.<br>[INFO] [MPM.RPCServer] RPC server ready!<br>[INFO] [MPM.RPCServer] Sp=
awning watchdog task...<br><span style=3D"color:rgb(255,0,0)">[ERROR]
 [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0.=20
Please update the version of MPM on your USRP device.</span><br>terminate c=
alled after throwing an instance of &#39;uhd::runtime_error&#39;<br>=C2=A0
 what(): =C2=A0RuntimeError: MPM minor compat number mismatch. Expected: 4.=
2=20
Actual: 4.0. Please update the version of MPM on your USRP device.<br>Abort=
ed<br><br><br><br></div><div>Some useful logs: <br></div><div>=C2=A0- In th=
e host : uhd_usrp_probe <br><div><div><div><div>[INFO] [UHD] linux; GNU C++=
 version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-gd21735d5<br>[INFO] [MPMD] I=
nitializing 1 device(s) in parallel with args: mgmt_addr=3D10.237.72.103,ty=
pe=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=3DHG,claimed=3DFalse,addr=3D=
192.168.10.2<br>[WARNING] [MPM.RPCServer] A timeout event occured!<br>[INFO=
] [MPM.PeriphManager] init() called with device args `fpga=3DHG,mgmt_addr=
=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal,time_source=3Dinter=
nal&#39;.<br>=C2=A0 _____________________________________________________<b=
r>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device<br>| =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD<br>| =C2=
=A0 | =C2=A0 dboard_0_pid: 336<br>| =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC=
8<br>| =C2=A0 | =C2=A0 dboard_1_pid: 336<br>| =C2=A0 | =C2=A0 dboard_1_seri=
al: 31F6BF2<br>| =C2=A0 | =C2=A0 eeprom_version: 3<br>| =C2=A0 | =C2=A0 fs_=
version: 20210630170909<br>| =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3xx=
<br>| =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd21735d5<br>| =C2=A0 | =C2=
=A0 pid: 16962<br>| =C2=A0 | =C2=A0 product: n310<br>| =C2=A0 | =C2=A0 rev:=
 10<br>| =C2=A0 | =C2=A0 rpc_connection: remote<br>| =C2=A0 | =C2=A0 serial=
: 31FD9DD<br>| =C2=A0 | =C2=A0 type: n3xx<br>| =C2=A0 | =C2=A0 MPM Version:=
 4.0<br>| =C2=A0 | =C2=A0 FPGA Version: 8.0<br>| =C2=A0 | =C2=A0 FPGA git h=
ash: d5c2750.clean<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources:=
 =C2=A0internal, external, gpsdo, sfp0<br>| =C2=A0 | =C2=A0 Clock sources: =
external, internal, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: ref_locked, gps_loc=
ked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv<br>| =C2=A0 =C2=A0 __=
___________________________________________________</div><div><br></div><di=
v><br></div><div><br></div><div>- The UHD version SD-card attached with the=
 USRP <br><br>root@ni-n3xx-31FD9DD:~# uhd_config_info --version<br>UHD 4.1.=
0.0-0-gd21735d5</div></div></div></div></div><div><br></div><div>BR,<br></d=
iv><div>Marcin <br></div></div>

--000000000000fb7be705f273fa1a--

--===============8646152117458454477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8646152117458454477==--
