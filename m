Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2314A3893D8
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 18:35:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 670363861A1
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 12:35:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Af/qimBh";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 057AD385DC6
	for <USRP-users@lists.ettus.com>; Wed, 19 May 2021 12:34:17 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id f18so13313474qko.7
        for <USRP-users@lists.ettus.com>; Wed, 19 May 2021 09:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=mazuR2Cd2SepcMl9srQVr1ExtuCx3D8ZhLY8+YvYoVc=;
        b=Af/qimBh/O/9vG6cljVmWT5reOOGcPw5ICVfAs2CwQke3Xt3PAkcct/uuCh44uNfyz
         2JigeF6P34wvbHy+bI+WW8nvHePoG/NVro7KjAT+/iQSV/REE+S3JGOxDVePsXZ8ysax
         2o76froI2+6U6nlEUYfR3f+VXwHvxrtX6yPmUxqq9rHsvQvI0aNLXYVA0MMGCFJiYHEX
         QEha3ew2a64/ZARuAAMqyQlAC96jcpj5QftkQtxwE81GGtR/P4a8ry47FcykRyTBEvf+
         MibGuTqlBiPkTBuntaYiylBJ7Xg9eB2Og5wSLMXd9hqVPmmplOggj2AwHeI+kGc4y5pq
         gJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=mazuR2Cd2SepcMl9srQVr1ExtuCx3D8ZhLY8+YvYoVc=;
        b=JX09IxFh2QZUpYPz6hz3XOpTa9ZtsUnoKtd4AXSfMeFKvtd3aHx7hWiHWNXV8Vkrut
         1stBZrpIYhNi3k0d+BMRkThl2U0GPb/ooyrJBA9+JhZGUB8bJkESkpdtaZXRoM68VDuk
         i4yR6LYULoJ6yqfX5YqcAr8VcofPfQUbJahyN28Qj5IbsJ8aBSmAiXtrKBFX+1Z3ZdY2
         LmRm14Xb8RI8ctkJjT/JgsOO+6o7LEZCGSa0TheBsuLG67i+S9Ap9a+crU306Qlt7Erj
         +AM8oaqhvfUpFwWpe1pu+Kbd2Cm3+5fh4GEdjSk4CXUjjIrlpHbucuYrVIXojRkcmORi
         saAQ==
X-Gm-Message-State: AOAM53234B2pX7Uu/LwfBXagTmvRdtMRFk563HPx7C66jBK5MKFZz5nP
	OiR08/jbNzW0StqzGpfv7ZA=
X-Google-Smtp-Source: ABdhPJzGkPm69XUoMau+xymW1VIdYPwD+MyX7xpgruvXWOrRPf25vn6doL4X9AZ04aGbtXHAFtfnYw==
X-Received: by 2002:a05:620a:3dd:: with SMTP id r29mr177551qkm.468.1621442057542;
        Wed, 19 May 2021 09:34:17 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id r10sm162472qke.9.2021.05.19.09.34.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 09:34:17 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 19 May 2021 12:34:15 -0400
Message-Id: <386F98B0-52B7-46A8-9863-04FC1ED3C4C6@gmail.com>
References: <cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4@lists.ettus.com>
In-Reply-To: <cRrZeleXubRfKAkKykKjalGhxS4ACJSr2h4BqD6Xxc4@lists.ettus.com>
To: thebouleoffools@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 3ZVSCEPB2L5US76FVIU5ERYNLOUQXILS
X-Message-ID-Hash: 3ZVSCEPB2L5US76FVIU5ERYNLOUQXILS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble running commands from host on E320 - Timed out getting recv buff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZVSCEPB2L5US76FVIU5ERYNLOUQXILS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5540697024131235820=="


--===============5540697024131235820==
Content-Type: multipart/alternative; boundary=Apple-Mail-E8FD4208-BC09-4FE7-8E84-A75BFB8BB751
Content-Transfer-Encoding: 7bit


--Apple-Mail-E8FD4208-BC09-4FE7-8E84-A75BFB8BB751
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This may be your USB3 Ethernet adaptor. They often have problems with suppor=
ting direct MTU and transaction rates that are even close to 1GB.=20

Sent from my iPhone

> On May 19, 2021, at 12:16 PM, thebouleoffools@gmail.com wrote:
>=20
> =EF=BB=BF
> I have an E320 connected to my host computer over a 1Gb to USB3 adapter. I=
 can SSH into the E320 just fine and run uhd_usrp_probe, but when I run it f=
rom my host computer I get:
>=20
> dan@ubuntu:~/Desktop$ uhd_usrp_probe=20
> [INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400; UHD_4.0.0.HEAD-0=
-g90ce6062
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.0.11,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse,add=
r=3D192.168.0.11
> [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192=
.168.0.11,product=3De320'.
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErro=
r: IOError: Timed out getting recv buff for management transaction
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environm=
entError: IOError: Timed out getting recv buff for management transaction
> Error: RuntimeError: Failure to create rfnoc_graph.
>=20
> At least it=E2=80=99s finding it and identifying it correctly. Running fro=
m the device, everything appears to be fine:
>=20
>=20
>=20
> root@ni-e320-317989F:~/localinstall# uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.HEAD-0-=
g90ce6062
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
127.0.0.1,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse
> [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D127=
.0.0.1,product=3De320'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...=20
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...=20
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)=

> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)=

>   _____________________________________________________
>  /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e320-317989F
> |   |   eeprom_version: 2
> |   |   fs_version: 20200914014807
> |   |   mender_artifact: v4.0.0.0_e320
> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> |   |   pid: 58144
> |   |   product: e320
> |   |   rev: 2
> |   |   rpc_connection: local
> |   |   serial: 317989F
> |   |   type: e3xx
> |   |   MPM Version: 3.0
> |   |   FPGA Version: 6.0
> |   |   FPGA git hash: 413ebee.clean
> |   |  =20
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, te=
mp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_t=
ime, gps_tpv
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |  =20
> |   |   * 0/DDC#0
> |   |   * 0/DUC#0
> |   |   * 0/DmaFIFO#0
> |   |   * 0/Radio#0
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E8FD4208-BC09-4FE7-8E84-A75BFB8BB751
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This may be your USB3 Ethernet adaptor. The=
y often have problems with supporting direct MTU and transaction rates that a=
re even close to 1GB.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 19, 2021, at 12:16 PM=
, thebouleoffools@gmail.com wrote:<br><br></blockquote></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>I have an E320 connected to my host c=
omputer over a 1Gb to USB3 adapter. I can SSH into the E320 just fine and ru=
n uhd_usrp_probe, but when I run it from my host computer I get:</p><pre><co=
de>dan@ubuntu:~/Desktop$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400; UHD_4.0.0.HEAD-0-g=
90ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D19=
2.168.0.11,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse,addr=3D=
192.168.0.11
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.1=
68.0.11,product=3De320'.
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError:=
 IOError: Timed out getting recv buff for management transaction
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environmen=
tError: IOError: Timed out getting recv buff for management transaction
Error: RuntimeError: Failure to create rfnoc_graph.
<br></code></pre><p>At least it=E2=80=99s finding it and identifying it corr=
ectly. Running from the device, everything appears to be fine:</p><p><br></p=
><pre><code>root@ni-e320-317989F:~/localinstall# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.HEAD-0-g9=
0ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D12=
7.0.0.1,type=3De3xx,product=3De320,serial=3D317989F,claimed=3DFalse
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D127.0=
.0.1,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...=20
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...=20
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e320-317989F
|   |   eeprom_version: 2
|   |   fs_version: 20200914014807
|   |   mender_artifact: v4.0.0.0_e320
|   |   mpm_sw_version: 4.0.0.0-g90ce6062
|   |   pid: 58144
|   |   product: e320
|   |   rev: 2
|   |   rpc_connection: local
|   |   serial: 317989F
|   |   type: e3xx
|   |   MPM Version: 3.0
|   |   FPGA Version: 6.0
|   |   FPGA git hash: 413ebee.clean
|   |  =20
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, temp=
_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_tim=
e, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |  =20
|   |   * 0/DDC#0
|   |   * 0/DUC#0
|   |   * 0/DmaFIFO#0
|   |   * 0/Radio#0
<br></code></pre><p><br></p><p><br></p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-E8FD4208-BC09-4FE7-8E84-A75BFB8BB751--

--===============5540697024131235820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5540697024131235820==--
