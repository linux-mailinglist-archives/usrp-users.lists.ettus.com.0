Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D5D3E4D73
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 21:56:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3593E38498A
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 15:56:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="JW+/Ild5";
	dkim-atps=neutral
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by mm2.emwd.com (Postfix) with ESMTPS id B93D73847AA
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 15:55:52 -0400 (EDT)
Received: by mail-oo1-f45.google.com with SMTP id t1-20020a4a54010000b02902638ef0f883so4696814ooa.11
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 12:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=dOYUZ/OGLkfpq+apGlj9FjGVTqafMZjJacP70kKW2L0=;
        b=JW+/Ild51OHoBFRA28wy1b+ETvgwkprkRkDXBtzDIqv/lS6AlBlQt8pQkgszZ5rv07
         RJH7jC+eiQ2QGGHID2rxfBDVEX2S6XDNK5LpWau0nHfJz+04EKNUGjARB1PJuC2C1Kc1
         jSVXpHuBOvgrtgH1yZqhTAUizhWAuWqaDctg7zQfKzIxWy1PGAMJV+LSaxz77IsJQgtU
         cZimkcCY1HxKNEEC0deKloqmlh3wQ9LClS/t3+XxAWj9ro/pBLAerwXMZnAVNJW4B2I/
         mjHRHNfBNxgTijn3Df+nk8HNzJvO3fuzqSsabaJUcu+GLNHBLdhpHQFp29NaruLSG3rr
         Vdyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dOYUZ/OGLkfpq+apGlj9FjGVTqafMZjJacP70kKW2L0=;
        b=qfF+ZCuRWBoPrRO8gMP4QNwqyJUZvZCCosJi6uZdbKDOQ49jlKSJX9XJHQ6MYMFeZ2
         r46CABePEiH3bwpzHee7/Ygbxj7iVI3ot2+z5JIVD0L8qtOw3+fBFsOP5E64x4B1JTlu
         ql7JvGQ7TzbiOVjPBVMQBqEdOINItd4jfPNOEflSFHM9RfPA3NMvPWO0Gk1TGhTBKbJD
         /LcHam3xoo1JygAJfiSTUdQD60n5wCNCIQRM7/rYk54E4+t9/NngdFm/rV57euWlzzq5
         jNP2n+MdehXkJ1mt0OVis+qSa3e+kvNDKA5Fw7hw+fLU6LFuVf1GY5MzPXoClbL4HaSs
         7ZeA==
X-Gm-Message-State: AOAM531/mRYReaMk3pwe2W8IgU6ZVoBPmZYms+sX9FQ+iQzI3133A5QJ
	j4wx6vmWzoo08msBHIJxIWADZwbcPjYXAiVm9Af3YaFtmX0=
X-Google-Smtp-Source: ABdhPJwKqAsqvTcenqC83eQWgVvgWjmmrHnA6uzq5uj4HYQskKf13kVPvseLzsS3XTM0IC7XWqPypImTz0mK5F2dHFI=
X-Received: by 2002:a4a:e750:: with SMTP id n16mr14344527oov.13.1628538951652;
 Mon, 09 Aug 2021 12:55:51 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 9 Aug 2021 15:55:41 -0400
Message-ID: <CAB__hTSDx23Tgv39w7546q54MBg6iH+nE4SBRcEMcNF5bjj3+A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PBOSAQWQ2MCWX6VWI7TTGYPAETDDPNLA
X-Message-ID-Hash: PBOSAQWQ2MCWX6VWI7TTGYPAETDDPNLA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1: image loader doesn't seem to change the image
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBOSAQWQ2MCWX6VWI7TTGYPAETDDPNLA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6804395091284229620=="

--===============6804395091284229620==
Content-Type: multipart/alternative; boundary="000000000000b7a5c505c925c528"

--000000000000b7a5c505c925c528
Content-Type: text/plain; charset="UTF-8"

I just tried to update the FPGA image in my N321 to be the XG image rather
than the WX. See below three commands run in succession: uhd_find_devices,
uhd_image_loader, and then uhd_find_devices again. Note that the image
appears to still be the WX image after requesting the XG image when running
uhd_image_loader. Is this a bug?
Rob

irisheyes-14@irisheyes14-ThinkStation-P620:~$ uhd_find_devices
--args="addr=192.168.70.2"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.1.0.2-0-g96032d06
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 320EAED
    claimed: False
    fpga: WX
    mgmt_addr: 192.168.70.2
    product: n320
    type: n3xx


irisheyes-14@irisheyes14-ThinkStation-P620:~$ uhd_image_loader
--args="addr=192.168.70.2,type=n3xx,fpga=XG"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.1.0.2-0-g96032d06
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.70.2,type=n3xx,product=n320,serial=320EAED,fpga=WX,claimed=False,skip_init=1
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 320EAED
[INFO] [MPM.Rhodium-0] Enabling LO distribution board
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled
in the device tree overlay (e.g., HG, XG images).
[INFO] [MPM.PeriphManager] init() called with device args
`clock_source=internal,time_source=internal'.
[INFO] [MPM.Rhodium-0] init() called with args
`clock_source=internal,time_source=internal'
[INFO] [MPM.Rhodium-1] init() called with args
`clock_source=internal,time_source=internal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complete
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complete
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.70.2,type=n3xx,product=n320,serial=320EAED,fpga=WX,claimed=False,addr=192.168.70.2,find_all=1
Error: rpc::timeout: Timeout of 2000ms while calling RPC function
'supports_feature'

irisheyes-14@irisheyes14-ThinkStation-P620:~$ uhd_find_devices
--args="addr=192.168.70.2"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.1.0.2-0-g96032d06
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 320EAED
    claimed: False
    fpga: WX
    mgmt_addr: 192.168.70.2
    product: n320
    type: n3xx

--000000000000b7a5c505c925c528
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font face=3D"monospace">I just tried to update the F=
PGA image in my N321 to be the XG image rather than the WX. See below three=
 commands run in succession: uhd_find_devices, uhd_image_loader, and then u=
hd_find_devices again. Note that the image appears to still be the WX image=
 after requesting the XG image when running uhd_image_loader. Is this a bug=
?</font></div><div><font face=3D"monospace">Rob</font></div><div><font face=
=3D"monospace"><br></font></div><font face=3D"monospace">irisheyes-14@irish=
eyes14-ThinkStation-P620:~<span style=3D"background-color:rgb(255,255,0)">$=
 uhd_find_devices --args=3D&quot;addr=3D192.168.70.2&quot;</span><br>[INFO]=
 [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.2-0-g96032d06<=
br>--------------------------------------------------<br>-- UHD Device 0<br=
>--------------------------------------------------<br>Device Address:<br>=
=C2=A0 =C2=A0 serial: 320EAED<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=
=A0 <span style=3D"background-color:rgb(255,255,0)">fpga: WX</span><br>=C2=
=A0 =C2=A0 mgmt_addr: 192.168.70.2<br>=C2=A0 =C2=A0 product: n320<br>=C2=A0=
 =C2=A0 type: n3xx<br><br><br>irisheyes-14@irisheyes14-ThinkStation-P620:~<=
span style=3D"background-color:rgb(255,255,0)">$ uhd_image_loader --args=3D=
&quot;addr=3D192.168.70.2,type=3Dn3xx,fpga=3DXG&quot;</span><br>[INFO] [UHD=
] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.2-0-g96032d06<br>[I=
NFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192=
.168.70.2,type=3Dn3xx,product=3Dn320,serial=3D320EAED,fpga=3DWX,claimed=3DF=
alse,skip_init=3D1<br>[WARNING] [MPM.RPCServer] A timeout event occured!<br=
>[INFO] [MPMD] Claimed device without full initialization.<br>[INFO] [MPMD =
IMAGE LOADER] Starting update. This may take a while.<br>[INFO] [MPM.Periph=
Manager] Updating component `fpga&#39;<br>[INFO] [MPM.PeriphManager] Updati=
ng component `dts&#39;<br>[INFO] [MPM.RPCServer] Resetting peripheral manag=
er.<br>[INFO] [MPM.PeriphManager] Device serial number: 320EAED<br>[INFO] [=
MPM.Rhodium-0] Enabling LO distribution board<br>[INFO] [MPM.Rhodium-0] Suc=
cessfully loaded all peripherals!<br>[INFO] [MPM.Rhodium-1] Successfully lo=
aded all peripherals!<br>[INFO] [MPM.PeriphManager] Initialized 2 daughterb=
oard(s).<br>[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it =
is disabled in the device tree overlay (e.g., HG, XG images).<br>[INFO] [MP=
M.PeriphManager] init() called with device args `clock_source=3Dinternal,ti=
me_source=3Dinternal&#39;.<br>[INFO] [MPM.Rhodium-0] init() called with arg=
s `clock_source=3Dinternal,time_source=3Dinternal&#39;<br>[INFO] [MPM.Rhodi=
um-1] init() called with args `clock_source=3Dinternal,time_source=3Dintern=
al&#39;<br>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!=
<br>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!<br>[IN=
FO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!<br>[INFO] [MPM.Rhodium-1.AD969=
5] ADC PLL Locked!<br>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initializat=
ion &amp; Training Complete<br>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Lock=
ed!<br>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>[=
INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>[INFO] [MPM.Rhodium-0.init]=
 JESD204B Link Initialization &amp; Training Complete<br>[INFO] [MPMD] Init=
ializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.70.2,type=
=3Dn3xx,product=3Dn320,serial=3D320EAED,fpga=3DWX,claimed=3DFalse,addr=3D19=
2.168.70.2,find_all=3D1<br>Error: rpc::timeout: Timeout of 2000ms while cal=
ling RPC function &#39;supports_feature&#39;<br><br></font><div><font face=
=3D"monospace">irisheyes-14@irisheyes14-ThinkStation-P620:~<span style=3D"b=
ackground-color:rgb(255,255,0)">$ uhd_find_devices --args=3D&quot;addr=3D19=
2.168.70.2&quot;</span><br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost=
_107100; UHD_4.1.0.2-0-g96032d06<br>---------------------------------------=
-----------<br>-- UHD Device 0<br>-----------------------------------------=
---------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 320EAED<br>=C2=A0 =C2=
=A0 claimed: False<br>=C2=A0 =C2=A0 <span style=3D"background-color:rgb(255=
,255,0)">fpga: WX</span><br>=C2=A0 =C2=A0 mgmt_addr: 192.168.70.2<br>=C2=A0=
 =C2=A0 product: n320<br>=C2=A0 =C2=A0 type: n3xx<br></font><br></div></div=
>

--000000000000b7a5c505c925c528--

--===============6804395091284229620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6804395091284229620==--
