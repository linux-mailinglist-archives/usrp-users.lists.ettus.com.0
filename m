Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DF152A483
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 16:16:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7094F38504C
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 10:16:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652796967; bh=q8vIG+XVkdm0EHySdDPXbMHZ7rSHtw5Q0L8uGMsUFho=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RyR1665utvn9RAlfFJE1gx72FKUyXp5rMwI/4t/pCSZuk5W/4cmcLXjssNp8BvETS
	 LGGq1UCXDVOKt3cCDhd4SWZ9BSFBRsUb1KdBiR3Trn3Pbdiha9mumZmFJ4J1GmhZrJ
	 7lYWP7PmST+EkbvdGXPWg56tWyIgy8NAgxJkw7Lu9kAOOkwrbnI3jwUFc8CpnTXZJX
	 +fmaYD+YMe1AFZ0c/No9/qzR8h31RJkvT/Na6adLYgPRXJ0+rdMPD8rPZZ8IaT3Qwz
	 kQnrKTgQXcKn3VfNfQjk4gD6XakmSAtjUxjofA1nEYx8i0AQfdxYV6MWn+8ZmPuIiH
	 Cc7Qx4OdYWdcQ==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id ED23F3848A3
	for <USRP-users@lists.ettus.com>; Tue, 17 May 2022 10:15:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bVJL7Fns";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id bs17so14683388qkb.0
        for <USRP-users@lists.ettus.com>; Tue, 17 May 2022 07:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=mxBDoKrELMSJj9IGnJ36Vk1OLsod0UXNugXrN4h82qo=;
        b=bVJL7FnsbTKFckpmi7CraigJYoAC06vPKVkzeelHU7bzPlwDwwYy2ONdI5Rd9X0eXx
         Kl/CsJKvrIfG8ZpZwg9shO+MGKhHSMrW5pCj61qPVXCofl8GVo9AHoVHvQIk/u/k1RCK
         XeT0Wl1kYCtOnqN2vUSg+TY4ekHOfpt3G8O2F5QcQMOAIOCYlpZPRRkKgcGRx4rBCRFE
         XabmZiRbhDBZhusC8uPXTVTj8Rh+XF8gWBc4fxf3LmLKD92UFRQQhUeLVve916yBpOqO
         cyCjwNEv5PtQ67kf4+7EoMKR7iVvGNHtl1Ser+AWK33XU+Ptclp9jP5xoz5AqCIZ71+3
         g4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=mxBDoKrELMSJj9IGnJ36Vk1OLsod0UXNugXrN4h82qo=;
        b=iVXeOeBcwZMrNDAcWGJpEM7Y9NAX2aHAwbAtC726I8rlXwcqLauJ+y8OrH/8T+eYL3
         +FxA+NogJa6YZsrOe/30fH5bAIP0zvnNyi9BqrASjwKnkKZn6nCknFVIRHb8z8ZmARQq
         KQoAhOAZqMiKPWJFUDKMI6O/yfZiGeWQSil/BAAlgLzcIdDxzFeWYD9chveeP1xE0B7M
         Psb+BgeZ+vgwRKjo0F3zLudCPF0kpeL2TZdfFFdJeg93MIYvbf8/L6LkWK6GuC41hM4H
         odS+UCzshJ0ORSSZnDPRkVTKVrgHP/pqHQB1Yz9FAiX/WSSLaCnpzH5KAx2iPklfbNi/
         SljQ==
X-Gm-Message-State: AOAM532TWpXmQK7VdIwuNUXu/b/IqqgzAhPw8LBrsqKZAMY8LDoQBNCy
	kKjk0qNyAGr3DuCvAXCy6l8=
X-Google-Smtp-Source: ABdhPJxpap/M1mHOcCUJL9pT41ipPG3qbqfdnn0kGYpYUL8Q46+grk13Q6Vk8GQys+jtUdVCJwpm7A==
X-Received: by 2002:a37:42d3:0:b0:69c:830d:6e51 with SMTP id p202-20020a3742d3000000b0069c830d6e51mr16666750qka.302.1652796905383;
        Tue, 17 May 2022 07:15:05 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id s20-20020ac87594000000b002f39b99f6acsm7629438qtq.70.2022.05.17.07.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:15:04 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 17 May 2022 10:15:03 -0400
Message-Id: <05297835-DF89-4F40-ADDF-1FCB059EAC81@gmail.com>
References: <CALER=b0-98SwN6fzT-1+KANF3o85e717dz0kFgAjgctf76Qu_A@mail.gmail.com>
In-Reply-To: <CALER=b0-98SwN6fzT-1+KANF3o85e717dz0kFgAjgctf76Qu_A@mail.gmail.com>
To: Shehla Amir <samir2@ncsu.edu>
X-Mailer: iPhone Mail (19E258)
Message-ID-Hash: EYV2QDI26AC7BKNDCMNYUPSWKRAIFM5Y
X-Message-ID-Hash: EYV2QDI26AC7BKNDCMNYUPSWKRAIFM5Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with USRP X310 LibUHD error MATLAB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EYV2QDI26AC7BKNDCMNYUPSWKRAIFM5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8781252150466540906=="


--===============8781252150466540906==
Content-Type: multipart/alternative; boundary=Apple-Mail-A94B1513-869B-4B52-BCDE-D11DCB87C71A
Content-Transfer-Encoding: 7bit


--Apple-Mail-A94B1513-869B-4B52-BCDE-D11DCB87C71A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Your Ubuntu system is set up for UHD 4.2 whereas your windows with MatLab is=
 setup for 4.1. You probably can just downgrade to 4.1 firmware when running=
 MatLab on windows. Unless they have a 4.2 compatible UHD build.=20

Sent from my iPhone

> On May 17, 2022, at 9:29 AM, Shehla Amir via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi,=20
>=20
> I have been working with 2 USRP X310. Both have one daughter board install=
ed. I am facing multiple errors and I can't find relevant documentation. The=
y were working fine a week ago but now whenever I try to connect using MATLA=
B I get the errors mentioned below. Can you please help me in debugging this=
 issue?
>=20
> When I connect using MATLAB and use probesdru command I get the error 'Err=
or: RuntimeError: Failure to create rfnoc_graph.'
> and the probesdru command generate the following output:=20
>=20
> '[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107500; UHD_=
4.1.0.4-vendor
>      [INFO] [X300] X300 initialization sequence...
>      [INFO] [X300] Maximum frame size: 1472 bytes.
>      [INFO] [GPS] No GPSDO found
>      [INFO] [X300] Radio 1x clock: 200 MHz
>      [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Environmen=
tError: IOError: Timed out getting recv buff for management transaction
>      [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Env=
ironmentError: IOError: Timed out getting recv buff for management transacti=
on
>      Error: RuntimeError: Failure to create rfnoc_graph.
>      '
> Moreover, when I use the findsdru command I get the following error:=20
>=20
> ---------- begin libuhd error output ----------
> IO Error during GSM initialization. EnvironmentError: IOError: Timed out g=
etting recv buff for management transaction
> ---------- end libuhd error output ----------
> ---------- begin libuhd error output ----------
> Caught exception while initializing graph: EnvironmentError: IOError: Time=
d out getting recv buff for management transaction
> ---------- end libuhd error output ----------
> ---------- begin libuhd error output ----------
> Error during initialization of block 0/DUC#0!
> ---------- end libuhd error output ----------
> ---------- begin libuhd error output ----------
> Caught exception while initializing graph: RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK
> ---------- end libuhd error output ----------
> ---------- begin libuhd error output ----------
> Error during initialization of block 0/Radio#0!
> ---------- end libuhd error output ----------
> ---------- begin libuhd error output ----------
> Caught exception while initializing graph: RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK
> ---------- end libuhd error output ----------
> ---------- begin libuhd error output ----------
> Caught exception while initializing graph: RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK
> ---------- end libuhd error output ----------
>=20
> %%%%%%%%%%%%%%%%%%%%%%%%%
> While connecting through ubuntu uhd and using the command ush_usrp_probe I=
 get the following message:=20
>=20
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.0-0ubun=
tu1~focal1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 2453333 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=3D2453333
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2453333 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2453333
> [WARNING] [UDP] The current recv_buff_size of 163840 is less than the mini=
mum recommended size of 816000 and may result in dropped packets on some NIC=
s
> [WARNING] [UDP] The current send_buff_size of 163840 is less than the mini=
mum recommended size of 307200 and may result in dropped packets on some NIC=
s
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> |   |   revision: 11
> |   |   revision_compat: 7
> |   |   product: 30818
> |   |   mac-addr0: 00:80:2f:32:8e:52
> |   |   mac-addr1: 00:80:2f:32:8e:53
> |   |   gateway: 192.168.10.1
> |   |   ip-addr0: 192.168.137.4
> |   |   subnet0: 255.255.255.0
> |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0
> |   |   ip-addr2: 192.168.30.2
> |   |   subnet2: 255.255.255.0
> |   |   ip-addr3: 192.168.40.2
> |   |   subnet3: 255.255.255.0
> |   |   serial: 321741F
> |   |   FW Version: 6.0
> |   |   FPGA Version: 38.0
> |   |   FPGA git hash: b1ca7f3
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal, external, gpsdo
> |   |   Sensors: ref_locked
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DDC#1
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |   |   * 0/Replay#0
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
> |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
> |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
> |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
> |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
> |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
> |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
> |   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
> |   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
> |   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
> |   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: 0/Radio#0
> |   |   ID: UBX-160 v2 (0x007d)
> |   |   Serial: 3208538
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: UBX TX
> |   |   |   Antennas: TX/RX, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: QI
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: 0/Radio#0
> |   |   ID: UBX-160 v2 (0x007e)
> |   |   Serial: 3208538
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: UBX RX
> |   |   |   Antennas: TX/RX, RX2, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: 0/Radio#1
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   Antennas:
> |   |   |   Sensors:
> |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   Gain Elements: None
> |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: 0/Radio#1
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   Antennas:
> |   |   |   Sensors:
> |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   Gain Elements: None
> |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
>=20
> Thanks,=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A94B1513-869B-4B52-BCDE-D11DCB87C71A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Your Ubuntu system is set up for UHD 4.2 wh=
ereas your windows with MatLab is setup for 4.1. You probably can just downg=
rade to 4.1 firmware when running MatLab on windows. Unless they have a 4.2 c=
ompatible UHD build.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div>=
<div dir=3D"ltr"><br><blockquote type=3D"cite">On May 17, 2022, at 9:29 AM, S=
hehla Amir via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"ltr">Hi,&nbsp;<br><br>I have been working with 2 USRP X310. Both have o=
ne daughter board installed. I am facing multiple errors and I can't find re=
levant documentation. They were working fine a week ago but now whenever I t=
ry to connect using MATLAB I get the errors mentioned below. Can you please h=
elp me in debugging this issue?<br><br>When I connect using MATLAB and use p=
robesdru&nbsp;command I get the error 'Error: RuntimeError: Failure to creat=
e rfnoc_graph.'<br>and the&nbsp;<i>probesdru&nbsp;</i>command&nbsp;generate t=
he following output:&nbsp;<br><br><font size=3D"1">'[INFO] [UHD] Win32; Micr=
osoft Visual C++ version 14.2; Boost_107500; UHD_4.1.0.4-vendor<br>&nbsp; &n=
bsp; &nbsp;[INFO] [X300] X300 initialization sequence...<br>&nbsp; &nbsp; &n=
bsp;[INFO] [X300] Maximum frame size: 1472 bytes.<br>&nbsp; &nbsp; &nbsp;[IN=
FO] [GPS] No GPSDO found<br>&nbsp; &nbsp; &nbsp;[INFO] [X300] Radio 1x clock=
: 200 MHz<br>&nbsp; &nbsp; &nbsp;[ERROR] [RFNOC::GRAPH] IO Error during GSM i=
nitialization. EnvironmentError: IOError: Timed out getting recv buff for ma=
nagement transaction<br>&nbsp; &nbsp; &nbsp;[ERROR] [RFNOC::GRAPH] Caught ex=
ception while initializing graph: EnvironmentError: IOError: Timed out getti=
ng recv buff for management transaction<br>&nbsp; &nbsp; &nbsp;Error: Runtim=
eError: Failure to create rfnoc_graph.</font><br>&nbsp; &nbsp; &nbsp;'<br>Mo=
reover, when I use the&nbsp;<i>findsdru&nbsp;</i>command I get the following=
 error:&nbsp;<div><br><font size=3D"1">---------- begin libuhd error output -=
---------<br>IO Error during GSM initialization. EnvironmentError: IOError: T=
imed out getting recv buff for management transaction<br>---------- end libu=
hd error output ----------<br>---------- begin libuhd error output ---------=
-<br>Caught exception while initializing graph: EnvironmentError: IOError: T=
imed out getting recv buff for management transaction<br>---------- end libu=
hd error output ----------<br>---------- begin libuhd error output ---------=
-<br>Error during initialization of block 0/DUC#0!<br>---------- end libuhd e=
rror output ----------<br>---------- begin libuhd error output ----------<br=
>Caught exception while initializing graph: RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK<br>---------- end libuhd error output ---=
-------<br>---------- begin libuhd error output ----------<br>Error during i=
nitialization of block 0/Radio#0!<br>---------- end libuhd error output ----=
------<br>---------- begin libuhd error output ----------<br>Caught exceptio=
n while initializing graph: RfnocError: OpTimeout: Control operation timed o=
ut waiting for ACK<br>---------- end libuhd error output ----------<br>-----=
----- begin libuhd error output ----------<br>Caught exception while initial=
izing graph: RfnocError: OpTimeout: Control operation timed out waiting for A=
CK<br>---------- end libuhd error output ----------<br></font><br>%%%%%%%%%%=
%%%%%%%%%%%%%%%<br>While connecting through ubuntu uhd and using the command=
 <i>ush_usrp_probe&nbsp;</i>I get the following message:&nbsp;<br><br>[<font=
 size=3D"1">INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.=
0.0-0ubuntu1~focal1<br>[INFO] [X300] X300 initialization sequence...<br>[INFO=
] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 20=
0 MHz<br>[WARNING] [UDP] The recv buffer could not be resized sufficiently.<=
br>Target sock buff size: 2453333 bytes.<br>Actual sock buff size: 163840 by=
tes.<br>See the transport application notes on buffer resizing.<br>Please ru=
n: sudo sysctl -w net.core.rmem_max=3D2453333<br>[WARNING] [UDP] The send bu=
ffer could not be resized sufficiently.<br>Target sock buff size: 2453333 by=
tes.<br>Actual sock buff size: 163840 bytes.<br>See the transport applicatio=
n notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D=
2453333<br>[WARNING] [UDP] The current recv_buff_size of 163840 is less than=
 the minimum recommended size of 816000 and may result in dropped packets on=
 some NICs<br>[WARNING] [UDP] The current send_buff_size of 163840 is less t=
han the minimum recommended size of 307200 and may result in dropped packets=
 on some NICs<br>&nbsp; ____________________________________________________=
_<br>&nbsp;/<br>| &nbsp; &nbsp; &nbsp; Device: X-Series Device<br>| &nbsp; &=
nbsp; _____________________________________________________<br>| &nbsp; &nbs=
p;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; Mboard: X310<br>| &nbsp; | &nbsp; rev=
ision: 11<br>| &nbsp; | &nbsp; revision_compat: 7<br>| &nbsp; | &nbsp; produ=
ct: 30818<br>| &nbsp; | &nbsp; mac-addr0: 00:80:2f:32:8e:52<br>| &nbsp; | &n=
bsp; mac-addr1: 00:80:2f:32:8e:53<br>| &nbsp; | &nbsp; gateway: 192.168.10.1=
<br>| &nbsp; | &nbsp; ip-addr0: 192.168.137.4<br>| &nbsp; | &nbsp; subnet0: 2=
55.255.255.0<br>| &nbsp; | &nbsp; ip-addr1: 192.168.20.2<br>| &nbsp; | &nbsp=
; subnet1: 255.255.255.0<br>| &nbsp; | &nbsp; ip-addr2: 192.168.30.2<br>| &n=
bsp; | &nbsp; subnet2: 255.255.255.0<br>| &nbsp; | &nbsp; ip-addr3: 192.168.=
40.2<br>| &nbsp; | &nbsp; subnet3: 255.255.255.0<br>| &nbsp; | &nbsp; serial=
: 321741F<br>| &nbsp; | &nbsp; FW Version: 6.0<br>| &nbsp; | &nbsp; FPGA Ver=
sion: 38.0<br>| &nbsp; | &nbsp; FPGA git hash: b1ca7f3<br>| &nbsp; | &nbsp; R=
FNoC capable: Yes<br>| &nbsp; |<br>| &nbsp; | &nbsp; Time sources: &nbsp;int=
ernal, external, gpsdo<br>| &nbsp; | &nbsp; Clock sources: internal, externa=
l, gpsdo<br>| &nbsp; | &nbsp; Sensors: ref_locked<br>| &nbsp; &nbsp; _______=
______________________________________________<br>| &nbsp; &nbsp;/<br>| &nbs=
p; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:<br>| &nbsp; |<br>| &n=
bsp; | &nbsp; * 0/DDC#0<br>| &nbsp; | &nbsp; * 0/DDC#1<br>| &nbsp; | &nbsp; *=
 0/DUC#0<br>| &nbsp; | &nbsp; * 0/DUC#1<br>| &nbsp; | &nbsp; * 0/Radio#0<br>=
| &nbsp; | &nbsp; * 0/Radio#1<br>| &nbsp; | &nbsp; * 0/Replay#0<br>| &nbsp; &=
nbsp; _____________________________________________________<br>| &nbsp; &nbs=
p;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; Static connections on this device:<br=
>| &nbsp; |<br>| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| &nbsp; |=
 &nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| &nbsp; | &nbsp; * 0/Radio#0:0=3D=
=3D&gt;0/DDC#0:0<br>| &nbsp; | &nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| &n=
bsp; | &nbsp; * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| &nbsp; | &nbsp; * 0/DDC#=
0:1=3D=3D&gt;0/SEP#1:0<br>| &nbsp; | &nbsp; * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<b=
r>| &nbsp; | &nbsp; * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| &nbsp; | &nbsp; * 0=
/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>| &nbsp; | &nbsp; * 0/DDC#1:0=3D=3D&gt;0/SE=
P#2:0<br>| &nbsp; | &nbsp; * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| &nbsp; | &n=
bsp; * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>| &nbsp; | &nbsp; * 0/SEP#4:0=3D=3D&g=
t;0/Replay#0:0<br>| &nbsp; | &nbsp; * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| &=
nbsp; | &nbsp; * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| &nbsp; | &nbsp; * 0/Re=
play#0:1=3D=3D&gt;0/SEP#5:0<br>| &nbsp; &nbsp; _____________________________=
________________________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nb=
sp; TX Dboard: 0/Radio#0<br>| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007d)<br>| &=
nbsp; | &nbsp; Serial: 3208538<br>| &nbsp; | &nbsp; &nbsp; _________________=
____________________________________<br>| &nbsp; | &nbsp; &nbsp;/<br>| &nbsp=
; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<br>| &nbsp; | &nbsp; | &nbs=
p; Name: UBX TX<br>| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, CAL<br>| &nbs=
p; | &nbsp; | &nbsp; Sensors: lo_locked<br>| &nbsp; | &nbsp; | &nbsp; Freq r=
ange: 10.000 to 6000.000 MHz<br>| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0=
.0 to 31.5 step 0.5 dB<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000=
000.0 to 160000000.0 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connection Ty=
pe: QI<br>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>| &nbsp; &nbsp; _=
____________________________________________________<br>| &nbsp; &nbsp;/<br>=
| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#0<br>| &nbsp; | &nbsp; ID=
: UBX-160 v2 (0x007e)<br>| &nbsp; | &nbsp; Serial: 3208538<br>| &nbsp; | &nb=
sp; &nbsp; _____________________________________________________<br>| &nbsp;=
 | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0=
<br>| &nbsp; | &nbsp; | &nbsp; Name: UBX RX<br>| &nbsp; | &nbsp; | &nbsp; An=
tennas: TX/RX, RX2, CAL<br>| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked<br>=
| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.000 MHz<br>| &nbsp; | &=
nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>| &nbsp; | &nbsp;=
 | &nbsp; Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz<br>| &nbsp=
; | &nbsp; | &nbsp; Connection Type: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses L=
O offset: No<br>| &nbsp; &nbsp; ____________________________________________=
_________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: 0=
/Radio#1<br>| &nbsp; | &nbsp; &nbsp; _______________________________________=
______________<br>| &nbsp; | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp; &n=
bsp; &nbsp; TX Frontend: 0<br>| &nbsp; | &nbsp; | &nbsp; Name: Unknown (0xff=
ff) - 0<br>| &nbsp; | &nbsp; | &nbsp; Antennas:<br>| &nbsp; | &nbsp; | &nbsp=
; Sensors:<br>| &nbsp; | &nbsp; | &nbsp; Freq range: 0.000 to 0.000 MHz<br>|=
 &nbsp; | &nbsp; | &nbsp; Gain Elements: None<br>| &nbsp; | &nbsp; | &nbsp; B=
andwidth range: 0.0 to 0.0 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connect=
ion Type: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>| &nbsp; &n=
bsp; _____________________________________________________<br>| &nbsp; &nbsp=
;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#1<br>| &nbsp; | &nb=
sp; &nbsp; _____________________________________________________<br>| &nbsp;=
 | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0=
<br>| &nbsp; | &nbsp; | &nbsp; Name: Unknown (0xffff) - 0<br>| &nbsp; | &nbs=
p; | &nbsp; Antennas:<br>| &nbsp; | &nbsp; | &nbsp; Sensors:<br>| &nbsp; | &=
nbsp; | &nbsp; Freq range: 0.000 to 0.000 MHz<br>| &nbsp; | &nbsp; | &nbsp; G=
ain Elements: None<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 0.0 to 0.0=
 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>| &nbsp; |=
 &nbsp; | &nbsp; Uses LO offset: No</font><br><br>Thanks,&nbsp;<br><br><br><=
/div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-A94B1513-869B-4B52-BCDE-D11DCB87C71A--

--===============8781252150466540906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8781252150466540906==--
