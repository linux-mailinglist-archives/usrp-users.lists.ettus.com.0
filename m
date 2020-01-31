Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF49014F4BC
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2020 23:28:44 +0100 (CET)
Received: from [::1] (port=59282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixemH-0002wo-2y; Fri, 31 Jan 2020 17:28:41 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:44374)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ixemD-0002nH-Ed
 for usrp-users@lists.ettus.com; Fri, 31 Jan 2020 17:28:37 -0500
Received: by mail-ot1-f49.google.com with SMTP id h9so8076229otj.11
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 14:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=Krrix17x9/JVuJAZFLgluPZmU1a/FWRJQ1AgcQj9fho=;
 b=QaZHkz0N3P+/i6DbzWEQs+e+kU4TnMyPV26wdvawt9FT9gLg6sHud4qPefxz88K0lU
 IlVNExAGtw9q/o7R+3uUrZWuw3yXO33Q16iNGxDZ2jDWUVKvun5Gnn8JdV1ftQr53xbn
 cTwMeMayoSsh+RvUI7mHBYPpoNZWZsx2GMV+Kp+h6TrcxNmbaw2MGIBxocBHHDWgWYtQ
 aXbCnAw0rZL2JZBUgDgAt5CLgM0s55uZzbmIVMRubZRAGag3cdGjyFGbl4cIbzcQsKnk
 mYJQEkadTK7GR7JmhUVhmGW2W6K9/TsT322t+X78CKn4dsca33VosE4sEYMPIzUMnB8H
 2IhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Krrix17x9/JVuJAZFLgluPZmU1a/FWRJQ1AgcQj9fho=;
 b=LgD/bijRB2XoxnDlUTH2zAURekh2gS3XIsyQFXgK2eQmXzV7lL4X+OzMfLGHdaM+ff
 S5C8HZWeHqbyw8vsJO+a7s0ZqgtPZCxgwWgpmMaguEiMzFr6LX8pJLpQYdXjCDCTxHY0
 fSK7tgDe1yU9twXADs9mYkIBwHaKxUX9HesV9wJ8Lib3VzApcqRIefucFkFcGFHu9cLK
 gJt9MyYbhm/7tRprFszqh/NFxcWzey3O2i6qJU4ivzASPZpmxuoLqkXDe9clXVvUrvnz
 Rbn1oJjo246VxTmYf55gvV4B8EZNeye9pWPIXQAcG5pn9+OkCfF57WDrDqgJp7hHvvR9
 wd/A==
X-Gm-Message-State: APjAAAXdk4Gen4NrjgMlJ0TtFsB6KisHsM7Sp2+vOt9ogrgPxu883Rk5
 p89u0m/7inoprYBgHl8DacINgoEnJ+GpxHx5xDREuHjpG1s=
X-Google-Smtp-Source: APXvYqwVDumkRwkoc8swdZ7LaKoQ5AHAv/ox9sgBop4DWMqQvRs5HSjt/TJrHDSq5enilhzWn0HiW/Q20gis3ErKTwM=
X-Received: by 2002:a9d:7b51:: with SMTP id f17mr9067317oto.302.1580509676078; 
 Fri, 31 Jan 2020 14:27:56 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 31 Jan 2020 17:27:44 -0500
Message-ID: <CAB__hTQfZ7J+ma2vkX-owQ0v97Z6oNrT-VKqZ1Mb2AFzGuhnVw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000cf0861059d77153b"
Subject: [USRP-users] Error "clock synchronizer offset" loading N310 rfnoc
 image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
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

--000000000000cf0861059d77153b
Content-Type: multipart/alternative; boundary="000000000000cf085f059d771539"

--000000000000cf085f059d771539
Content-Type: text/plain; charset="UTF-8"

Hi,
I just successfully built an N310 rfnoc XG image (build rpt attached) with
some custom blocks using fpga-src version v3.15.0.0, but I can't load the
image successfully on the device.  Below you will find four consecutive
commands (highlighted in yellow) where I do the following:

   1. uhd_image_loader to load my custom image (results show "clock
   synchronizer offset" error)
   2. uhd_usrp_probe (results show "'NoneType' object has no attribute
   'get'" error)
   3. uhd_image_loader to load default XG image (no errors)
   4. uhd_usrp_probe (no errors)

I have tried multiple times but I am getting the same results each time. I
have tried rebooting the N310, but still the same results.  Any suggestions?
Rob


$ uhd_image_loader --args="type=n3xx,addr=192.168.64.2"
--fpga-path=usrp_n310_fpga_RFNOC_XG.bit
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,skip_init=1
[INFO] [MPMD] Claimed device without full initialization.
[WARNING] [MPMD IMAGE LOADER] RuntimeError: Component file does not exist:
/home/irisheyes1/uhd_nd/fpga_images/n310/v3.15.0.0/20200131_ddc-duc-txarb-radarfilter3-fifo/build/usrp_n310_fpga_RFNOC_XG.dts
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 318F043
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`time_source=internal,clock_source=internal'.
[ERROR] [MPM.Magnesium-0.init] Clock synchronizer measured an offset of
132.5 ps!
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[WARNING] [MPM.PeriphManager] Failed to initialize device on boot: Clock
synchronizer measured an offset of 132.5 ps!

$ uhd_usrp_probe --args="addr=192.168.64.2"
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,addr=192.168.64.2
[ERROR] [RPC] 'NoneType' object has no attribute 'get'
[INFO] [MPM.PeriphManager] init() called with device args
`time_source=internal,clock_source=internal,product=n310,mgmt_addr=192.168.64.2'.
[ERROR] [MPM.RPCServer] init() failed with error: 'NoneType' object has no
attribute 'get'
Error: RuntimeError: Error during RPC call to `init'. Error message:
'NoneType' object has no attribute 'get'

$ uhd_image_loader --args="type=n3xx,addr=192.168.64.2,fpga=XG"
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,skip_init=1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 318F043
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`clock_source=internal,time_source=internal'.
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.

$ uhd_usrp_probe --args="addr=192.168.64.2"
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.64.2,type=n3xx,product=n310,serial=318F043,claimed=False,addr=192.168.64.2
[INFO] [MPM.PeriphManager] init() called with device args
`time_source=internal,clock_source=internal,product=n310,mgmt_addr=192.168.64.2'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-318F043
|   |   eeprom_version: 2
|   |   mpm_version: 3.15.0.0-gaea0e2de
|   |   pid: 16962
|   |   product: n310
|   |   rev: 7
|   |   rpc_connection: remote
|   |   serial: 318F043
|   |   type: n3xx
|   |   MPM Version: 1.2
|   |   FPGA Version: 5.3
|   |   FPGA git hash: fde2a94.clean
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo, sfp0
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: gps_tpv, gps_locked, ref_locked, fan, gps_sky, temp,
gps_gpgga, gps_time
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: AD9371 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: B
|   |   |   |   Name: AD9371 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: AD9371 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: B
|   |   |   |   Name: AD9371 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * Replay_0
|   |   |   * Radio_0
|   |   |   * Radio_1
|   |   |   * DDC_0
|   |   |   * DDC_1
|   |   |   * DUC_0
|   |   |   * DUC_1
|   |   |   * FIFO_0
|   |   |   * FIFO_1
|   |   |   * FIFO_2
|   |   |   * FIFO_3

--000000000000cf085f059d771539
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,</div><div>I just successfully built an N310 =
rfnoc XG image (build rpt attached) with some custom blocks using fpga-src =
version v3.15.0.0, but I can&#39;t load the image successfully on the devic=
e.=C2=A0 Below you will find four consecutive commands (highlighted in yell=
ow) where I do the following:</div><div><ol><li>uhd_image_loader to load my=
 custom image (results show &quot;clock synchronizer offset&quot; error)</l=
i><li>uhd_usrp_probe (results show &quot;&#39;NoneType&#39; object has no a=
ttribute &#39;get&#39;&quot; error)</li><li>uhd_image_loader to load defaul=
t XG image (no errors)</li><li>uhd_usrp_probe (no errors)</li></ol></div><d=
iv>I have tried multiple times but I am getting the same results each time.=
 I have tried rebooting the N310, but still the same results.=C2=A0 Any sug=
gestions?</div><div>Rob</div><div><br></div><div><br></div><div>$ <span sty=
le=3D"background-color:rgb(255,255,0)">uhd_image_loader --args=3D&quot;type=
=3Dn3xx,addr=3D192.168.64.2&quot; --fpga-path=3Dusrp_n310_fpga_RFNOC_XG.bit=
</span> <br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.=
15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Initializing 1 device(s) in parallel=
 with args: mgmt_addr=3D192.168.64.2,type=3Dn3xx,product=3Dn310,serial=3D31=
8F043,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Claimed device without=
 full initialization.<br><font color=3D"#ff9900">[WARNING] [MPMD IMAGE LOAD=
ER] RuntimeError: Component file does not exist: /home/irisheyes1/uhd_nd/fp=
ga_images/n310/v3.15.0.0/20200131_ddc-duc-txarb-radarfilter3-fifo/build/usr=
p_n310_fpga_RFNOC_XG.dts</font><br>[INFO] [MPMD IMAGE LOADER] Starting upda=
te. This may take a while.<br>[INFO] [MPM.PeriphManager] Updating component=
 `fpga&#39;<br>[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>[INF=
O] [MPM.PeriphManager] Device serial number: 318F043<br>[INFO] [MPM.PeriphM=
anager] Initialized 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init(=
) called with device args `time_source=3Dinternal,clock_source=3Dinternal&#=
39;.<br><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#f=
f0000">[ERROR] [MPM.Magnesium-0.init] Clock synchronizer measured an offset=
 of 132.5 ps!</font></span><br>[INFO] [MPMD IMAGE LOADER] Update component =
function succeeded.<br><font color=3D"#ff9900">[WARNING] [MPM.PeriphManager=
] Failed to initialize device on boot: Clock synchronizer measured an offse=
t of 132.5 ps!</font><br><br></div><div>$ <span style=3D"background-color:r=
gb(255,255,0)">uhd_usrp_probe --args=3D&quot;addr=3D192.168.64.2&quot;</spa=
n><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.H=
EAD-0-gaea0e2de<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with =
args: mgmt_addr=3D192.168.64.2,type=3Dn3xx,product=3Dn310,serial=3D318F043,=
claimed=3DFalse,addr=3D192.168.64.2<br><font color=3D"#ff0000">[ERROR] [RPC=
] &#39;NoneType&#39; object has no attribute &#39;get&#39;</font><br>[INFO]=
 [MPM.PeriphManager] init() called with device args `time_source=3Dinternal=
,clock_source=3Dinternal,product=3Dn310,mgmt_addr=3D192.168.64.2&#39;.<br><=
font color=3D"#ff0000">[ERROR] [MPM.RPCServer] init() failed with error: &#=
39;NoneType&#39; object has no attribute &#39;get&#39;<br>Error: RuntimeErr=
or: Error during RPC call to `init&#39;. Error message: &#39;NoneType&#39; =
object has no attribute &#39;get&#39;</font><br></div></div><div><font colo=
r=3D"#ff0000"><br></font></div><div>$ <span style=3D"background-color:rgb(2=
55,255,0)">uhd_image_loader --args=3D&quot;type=3Dn3xx,addr=3D192.168.64.2,=
fpga=3DXG&quot;</span><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_=
106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Initializing 1 device(=
s) in parallel with args: mgmt_addr=3D192.168.64.2,type=3Dn3xx,product=3Dn3=
10,serial=3D318F043,claimed=3DFalse,skip_init=3D1<br>[INFO] [MPMD] Claimed =
device without full initialization.<br>[INFO] [MPMD IMAGE LOADER] Starting =
update. This may take a while.<br>[INFO] [MPM.PeriphManager] Updating compo=
nent `fpga&#39;<br>[INFO] [MPM.PeriphManager] Updating component `dts&#39;<=
br>[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>[INFO] [MPM.Peri=
phManager] Device serial number: 318F043<br>[INFO] [MPM.PeriphManager] Init=
ialized 2 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init() called wit=
h device args `clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>[INF=
O] [MPMD IMAGE LOADER] Update component function succeeded.<div><br><div>$ =
<span style=3D"background-color:rgb(255,255,0)">uhd_usrp_probe --args=3D&qu=
ot;addr=3D192.168.64.2&quot;</span><br>[INFO] [UHD] linux; GNU C++ version =
7.4.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [MPMD] Initializ=
ing 1 device(s) in parallel with args: mgmt_addr=3D192.168.64.2,type=3Dn3xx=
,product=3Dn310,serial=3D318F043,claimed=3DFalse,addr=3D192.168.64.2<br>[IN=
FO] [MPM.PeriphManager] init() called with device args `time_source=3Dinter=
nal,clock_source=3Dinternal,product=3Dn310,mgmt_addr=3D192.168.64.2&#39;.<b=
r>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A0000000000=
4)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000001=
1312)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000=
0011312)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC00000=
00000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000=
000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000=
0000000002)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C00=
00000000002)<br>[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F=
0000000000000)<br>[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF=
1F0000000000000)<br>[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0=
xF1F0000000000000)<br>[INFO] [0/FIFO_3] Initializing block control (NOC ID:=
 0xF1F0000000000000)<br>=C2=A0 ____________________________________________=
_________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device<b=
r>| =C2=A0 =C2=A0 _____________________________________________________<br>=
| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-318F043=
<br>| =C2=A0 | =C2=A0 eeprom_version: 2<br>| =C2=A0 | =C2=A0 mpm_version: 3=
.15.0.0-gaea0e2de<br>| =C2=A0 | =C2=A0 pid: 16962<br>| =C2=A0 | =C2=A0 prod=
uct: n310<br>| =C2=A0 | =C2=A0 rev: 7<br>| =C2=A0 | =C2=A0 rpc_connection: =
remote<br>| =C2=A0 | =C2=A0 serial: 318F043<br>| =C2=A0 | =C2=A0 type: n3xx=
<br>| =C2=A0 | =C2=A0 MPM Version: 1.2<br>| =C2=A0 | =C2=A0 FPGA Version: 5=
.3<br>| =C2=A0 | =C2=A0 FPGA git hash: fde2a94.clean<br>| =C2=A0 | =C2=A0 R=
FNoC capable: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =
=C2=A0internal, external, gpsdo, sfp0<br>| =C2=A0 | =C2=A0 Clock sources: e=
xternal, internal, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: gps_tpv, gps_locked,=
 ref_locked, fan, gps_sky, temp, gps_gpgga, gps_time<br>| =C2=A0 | =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: A<br>=
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _________________________________________=
____________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: T=
X/RX, RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_lo=
cked, lowband_lo_locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Gain range all: 0.0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.=
0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0=
 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesi=
um<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<=
br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locke=
d, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.00=
0 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.=
0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfi=
c: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range=
 dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain ra=
nge amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Band=
width range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________=
__________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Name: AD9371 Dual ADC<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 ______________=
_______________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: B<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magn=
esium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOC=
AL<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_lo=
cked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1=
.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all:=
 0.0 to 75.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range =
rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain ra=
nge dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain=
 range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 B=
andwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _______________=
______________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0=
/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL, LOCAL<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 75.0 step 0.5 dB<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 =
dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0=
.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 ste=
p 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0=
 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connecti=
on Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Name: AD9371 Dual ADC<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Eleme=
nts: None<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________=
________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0=
 =C2=A0 =C2=A0 TX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________=
___________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 65.0 step 0.5 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 step 0.0 dB<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 d=
B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 100=
000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type=
: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =
| =C2=A0 | =C2=A0 =C2=A0 __________________________________________________=
___<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locked, a=
d9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to=
 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to=
 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0=
.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa=
: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range =
amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidt=
h range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Use=
s LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Name: AD9371 Dual DAC<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 ______________=
_______________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: B<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Magn=
esium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowband_lo_locked, ad9371_lo_l=
ocked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 1.000 to 6000.000 =
MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 65.0 step=
 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range rfic: 0.0 to 0.0 =
step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range dsa: 0.0 to 0=
.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range amp: 0.0 t=
o 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 2=
0000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset:=
 No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________________________________=
___________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Name: Magnesium<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ante=
nnas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, lowb=
and_lo_locked, ad9371_lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq=
 range: 1.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain r=
ange all: 0.0 to 65.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ga=
in range rfic: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain range dsa: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Gain range amp: 0.0 to 0.0 step 0.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Code=
c: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9371 Dual DAC<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on thi=
s device:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 | =C2=A0 * Re=
play_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=
=A0 * Radio_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0 | =C2=A0 | =
=C2=A0 * DDC_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_0<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 * DUC_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * FIFO_0<br>| =C2=A0 | =C2=A0=
 | =C2=A0 * FIFO_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * FIFO_2<br>| =C2=A0 | =C2=
=A0 | =C2=A0 * FIFO_3<br><br></div><div><br></div></div></div></div>

--000000000000cf085f059d771539--
--000000000000cf0861059d77153b
Content-Type: application/octet-stream; name="usrp_n310_fpga_RFNOC_XG.rpt"
Content-Disposition: attachment; filename="usrp_n310_fpga_RFNOC_XG.rpt"
Content-Transfer-Encoding: base64
Content-ID: <f_k62q5kot0>
X-Attachment-Id: f_k62q5kot0

Q29weXJpZ2h0IDE5ODYtMjAxOCBYaWxpbngsIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQp8IFRvb2wgVmVyc2lv
biA6IFZpdmFkbyB2LjIwMTguM19BUjcxODk4IChsaW42NCkgQnVpbGQgMjQwNTk5MSBUaHUgRGVj
ICA2IDIzOjM2OjQxIE1TVCAyMDE4CnwgRGF0ZSAgICAgICAgIDogRnJpIEphbiAzMSAxNDoyMDo1
MCAyMDIwCnwgSG9zdCAgICAgICAgIDogcHJhdHRocGMuY3JjLm5kLmVkdSBydW5uaW5nIDY0LWJp
dCBSZWQgSGF0IEVudGVycHJpc2UgTGludXggU2VydmVyIHJlbGVhc2UgNy43IChNYWlwbykKfCBD
b21tYW5kICAgICAgOiByZXBvcnRfdXRpbGl6YXRpb24gLW9taXRfbG9jcyAtZmlsZSAvYWZzL2Ny
Yy5uZC5lZHUvdXNlci9yL3Jrb3NzbGVyL3VoZC9VSEQtMy4xNS4wLjAvdWhkL2ZwZ2Etc3JjL3Vz
cnAzL3RvcC9uM3h4L2J1aWxkLU4zMTBfUkZOT0NfWEcvYnVpbGQucnB0CnwgRGVzaWduICAgICAg
IDogbjN4eAp8IERldmljZSAgICAgICA6IDd6MTAwZmZnOTAwLTIKfCBEZXNpZ24gU3RhdGUgOiBS
b3V0ZWQKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKVXRp
bGl6YXRpb24gRGVzaWduIEluZm9ybWF0aW9uCgpUYWJsZSBvZiBDb250ZW50cwotLS0tLS0tLS0t
LS0tLS0tLQoxLiBTbGljZSBMb2dpYwoxLjEgU3VtbWFyeSBvZiBSZWdpc3RlcnMgYnkgVHlwZQoy
LiBTbGljZSBMb2dpYyBEaXN0cmlidXRpb24KMy4gTWVtb3J5CjQuIERTUAo1LiBJTyBhbmQgR1Qg
U3BlY2lmaWMKNi4gQ2xvY2tpbmcKNy4gU3BlY2lmaWMgRmVhdHVyZQo4LiBQcmltaXRpdmVzCjku
IEJsYWNrIEJveGVzCjEwLiBJbnN0YW50aWF0ZWQgTmV0bGlzdHMKCjEuIFNsaWNlIExvZ2ljCi0t
LS0tLS0tLS0tLS0tCgorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0t
LS0tLS0tLSstLS0tLS0tKwp8ICAgICAgICAgIFNpdGUgVHlwZSAgICAgICAgIHwgIFVzZWQgIHwg
QXZhaWxhYmxlIHwgVXRpbCUgfAorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0t
LSstLS0tLS0tLS0tLSstLS0tLS0tKwp8IFNsaWNlIExVVHMgICAgICAgICAgICAgICAgIHwgMTkz
NjcxIHwgICAgMjc3NDAwIHwgNjkuODIgfAp8ICAgTFVUIGFzIExvZ2ljICAgICAgICAgICAgIHwg
MTYzNDA2IHwgICAgMjc3NDAwIHwgNTguOTEgfAp8ICAgTFVUIGFzIE1lbW9yeSAgICAgICAgICAg
IHwgIDMwMjY1IHwgICAgMTA4MjAwIHwgMjcuOTcgfAp8ICAgICBMVVQgYXMgRGlzdHJpYnV0ZWQg
UkFNIHwgIDExMDE4IHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgICBMVVQgYXMgU2hpZnQgUmVn
aXN0ZXIgIHwgIDE5MjQ3IHwgICAgICAgICAgIHwgICAgICAgfAp8IFNsaWNlIFJlZ2lzdGVycyAg
ICAgICAgICAgIHwgMzIyMDEzIHwgICAgNTU0ODAwIHwgNTguMDQgfAp8ICAgUmVnaXN0ZXIgYXMg
RmxpcCBGbG9wICAgIHwgMzIxOTk5IHwgICAgNTU0ODAwIHwgNTguMDQgfAp8ICAgUmVnaXN0ZXIg
YXMgTGF0Y2ggICAgICAgIHwgICAgICAwIHwgICAgNTU0ODAwIHwgIDAuMDAgfAp8ICAgUmVnaXN0
ZXIgYXMgQU5EL09SICAgICAgIHwgICAgIDE0IHwgICAgNTU0ODAwIHwgPDAuMDEgfAp8IEY3IE11
eGVzICAgICAgICAgICAgICAgICAgIHwgICA0Nzc5IHwgICAgMTM4NzAwIHwgIDMuNDUgfAp8IEY4
IE11eGVzICAgICAgICAgICAgICAgICAgIHwgICAxNzk4IHwgICAgIDY5MzUwIHwgIDIuNTkgfAor
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLS0tLSstLS0tLS0t
KwoKCjEuMSBTdW1tYXJ5IG9mIFJlZ2lzdGVycyBieSBUeXBlCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCgorLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLSstLS0t
LS0tLS0tLS0tLSsKfCAgVG90YWwgfCBDbG9jayBFbmFibGUgfCBTeW5jaHJvbm91cyB8IEFzeW5j
aHJvbm91cyB8CistLS0tLS0tLSstLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tKy0tLS0tLS0t
LS0tLS0tKwp8IDE0ICAgICB8ICAgICAgICAgICAgXyB8ICAgICAgICAgICAtIHwgICAgICAgICAg
ICAtIHwKfCAwICAgICAgfCAgICAgICAgICAgIF8gfCAgICAgICAgICAgLSB8ICAgICAgICAgIFNl
dCB8CnwgMCAgICAgIHwgICAgICAgICAgICBfIHwgICAgICAgICAgIC0gfCAgICAgICAgUmVzZXQg
fAp8IDAgICAgICB8ICAgICAgICAgICAgXyB8ICAgICAgICAgU2V0IHwgICAgICAgICAgICAtIHwK
fCAwICAgICAgfCAgICAgICAgICAgIF8gfCAgICAgICBSZXNldCB8ICAgICAgICAgICAgLSB8Cnwg
MCAgICAgIHwgICAgICAgICAgWWVzIHwgICAgICAgICAgIC0gfCAgICAgICAgICAgIC0gfAp8IDcw
MjggICB8ICAgICAgICAgIFllcyB8ICAgICAgICAgICAtIHwgICAgICAgICAgU2V0IHwKfCA0MjE1
OCAgfCAgICAgICAgICBZZXMgfCAgICAgICAgICAgLSB8ICAgICAgICBSZXNldCB8CnwgMzgzOCAg
IHwgICAgICAgICAgWWVzIHwgICAgICAgICBTZXQgfCAgICAgICAgICAgIC0gfAp8IDI2OTAzMyB8
ICAgICAgICAgIFllcyB8ICAgICAgIFJlc2V0IHwgICAgICAgICAgICAtIHwKKy0tLS0tLS0tKy0t
LS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0rCgoKMi4gU2xpY2UgTG9n
aWMgRGlzdHJpYnV0aW9uCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tKy0t
LS0tLS0rCnwgICAgICAgICAgICAgICAgICBTaXRlIFR5cGUgICAgICAgICAgICAgICAgIHwgIFVz
ZWQgIHwgQXZhaWxhYmxlIHwgVXRpbCUgfAorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLSsKfCBTbGljZSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNjgzNzUgfCAgICAgNjkzNTAgfCA5
OC41OSB8CnwgICBTTElDRUwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQx
Njc1IHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgU0xJQ0VNICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAyNjcwMCB8ICAgICAgICAgICB8ICAgICAgIHwKfCBMVVQgYXMgTG9n
aWMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxNjM0MDYgfCAgICAyNzc0MDAgfCA1
OC45MSB8CnwgICB1c2luZyBPNSBvdXRwdXQgb25seSAgICAgICAgICAgICAgICAgICAgIHwgICAg
IDU2IHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgdXNpbmcgTzYgb3V0cHV0IG9ubHkgICAgICAg
ICAgICAgICAgICAgICB8IDEyMDA3MCB8ICAgICAgICAgICB8ICAgICAgIHwKfCAgIHVzaW5nIE81
IGFuZCBPNiAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNDMyODAgfCAgICAgICAgICAgfCAg
ICAgICB8CnwgTFVUIGFzIE1lbW9yeSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMw
MjY1IHwgICAgMTA4MjAwIHwgMjcuOTcgfAp8ICAgTFVUIGFzIERpc3RyaWJ1dGVkIFJBTSAgICAg
ICAgICAgICAgICAgICB8ICAxMTAxOCB8ICAgICAgICAgICB8ICAgICAgIHwKfCAgICAgdXNpbmcg
TzUgb3V0cHV0IG9ubHkgICAgICAgICAgICAgICAgICAgfCAgICAgIDAgfCAgICAgICAgICAgfCAg
ICAgICB8CnwgICAgIHVzaW5nIE82IG91dHB1dCBvbmx5ICAgICAgICAgICAgICAgICAgIHwgICAg
NDYyIHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgICB1c2luZyBPNSBhbmQgTzYgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAxMDU1NiB8ICAgICAgICAgICB8ICAgICAgIHwKfCAgIExVVCBhcyBT
aGlmdCBSZWdpc3RlciAgICAgICAgICAgICAgICAgICAgfCAgMTkyNDcgfCAgICAgICAgICAgfCAg
ICAgICB8CnwgICAgIHVzaW5nIE81IG91dHB1dCBvbmx5ICAgICAgICAgICAgICAgICAgIHwgICA4
ODAzIHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgICB1c2luZyBPNiBvdXRwdXQgb25seSAgICAg
ICAgICAgICAgICAgICB8ICAgNjE3NCB8ICAgICAgICAgICB8ICAgICAgIHwKfCAgICAgdXNpbmcg
TzUgYW5kIE82ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQyNzAgfCAgICAgICAgICAgfCAg
ICAgICB8CnwgU2xpY2UgUmVnaXN0ZXJzICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMzIy
MDEzIHwgICAgNTU0ODAwIHwgNTguMDQgfAp8ICAgUmVnaXN0ZXIgZHJpdmVuIGZyb20gd2l0aGlu
IHRoZSBTbGljZSAgICB8IDE2MTEzNyB8ICAgICAgICAgICB8ICAgICAgIHwKfCAgIFJlZ2lzdGVy
IGRyaXZlbiBmcm9tIG91dHNpZGUgdGhlIFNsaWNlICAgfCAxNjA4NzYgfCAgICAgICAgICAgfCAg
ICAgICB8CnwgICAgIExVVCBpbiBmcm9udCBvZiB0aGUgcmVnaXN0ZXIgaXMgdW51c2VkIHwgIDkz
MzUzIHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgICBMVVQgaW4gZnJvbnQgb2YgdGhlIHJlZ2lz
dGVyIGlzIHVzZWQgICB8ICA2NzUyMyB8ICAgICAgICAgICB8ICAgICAgIHwKfCBVbmlxdWUgQ29u
dHJvbCBTZXRzICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTAzMDUgfCAgICAgNjkzNTAgfCAx
NC44NiB8CistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0t
LS0tLSstLS0tLS0tLS0tLSstLS0tLS0tKwoqIE5vdGU6IEF2YWlsYWJsZSBDb250cm9sIFNldHMg
Y2FsY3VsYXRlZCBhcyBTbGljZSBSZWdpc3RlcnMgLyA4LCBSZXZpZXcgdGhlIENvbnRyb2wgU2V0
cyBSZXBvcnQgZm9yIG1vcmUgaW5mb3JtYXRpb24gcmVnYXJkaW5nIGNvbnRyb2wgc2V0cy4KCgoz
LiBNZW1vcnkKLS0tLS0tLS0tCgorLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0t
LS0rLS0tLS0tLSsKfCAgICAgU2l0ZSBUeXBlICAgICB8IFVzZWQgfCBBdmFpbGFibGUgfCBVdGls
JSB8CistLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLSstLS0tLS0tLS0tLSstLS0tLS0tKwp8IEJs
b2NrIFJBTSBUaWxlICAgIHwgIDU5NiB8ICAgICAgIDc1NSB8IDc4Ljk0IHwKfCAgIFJBTUIzNi9G
SUZPKiAgICB8ICA1MTYgfCAgICAgICA3NTUgfCA2OC4zNCB8CnwgICAgIFJBTUIzNkUxIG9ubHkg
fCAgNTE2IHwgICAgICAgICAgIHwgICAgICAgfAp8ICAgUkFNQjE4ICAgICAgICAgIHwgIDE2MCB8
ICAgICAgMTUxMCB8IDEwLjYwIHwKfCAgICAgUkFNQjE4RTEgb25seSB8ICAxNjAgfCAgICAgICAg
ICAgfCAgICAgICB8CistLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLSstLS0tLS0tLS0tLSstLS0t
LS0tKwoqIE5vdGU6IEVhY2ggQmxvY2sgUkFNIFRpbGUgb25seSBoYXMgb25lIEZJRk8gbG9naWMg
YXZhaWxhYmxlIGFuZCB0aGVyZWZvcmUgY2FuIGFjY29tbW9kYXRlIG9ubHkgb25lIEZJRk8zNkUx
IG9yIG9uZSBGSUZPMThFMS4gSG93ZXZlciwgaWYgYSBGSUZPMThFMSBvY2N1cGllcyBhIEJsb2Nr
IFJBTSBUaWxlLCB0aGF0IHRpbGUgY2FuIHN0aWxsIGFjY29tbW9kYXRlIGEgUkFNQjE4RTEKCgo0
LiBEU1AKLS0tLS0tCgorLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0t
LSsKfCAgICBTaXRlIFR5cGUgICB8IFVzZWQgfCBBdmFpbGFibGUgfCBVdGlsJSB8CistLS0tLS0t
LS0tLS0tLS0tKy0tLS0tLSstLS0tLS0tLS0tLSstLS0tLS0tKwp8IERTUHMgICAgICAgICAgIHwg
IDYxMiB8ICAgICAgMjAyMCB8IDMwLjMwIHwKfCAgIERTUDQ4RTEgb25seSB8ICA2MTIgfCAgICAg
ICAgICAgfCAgICAgICB8CistLS0tLS0tLS0tLS0tLS0tKy0tLS0tLSstLS0tLS0tLS0tLSstLS0t
LS0tKwoKCjUuIElPIGFuZCBHVCBTcGVjaWZpYwotLS0tLS0tLS0tLS0tLS0tLS0tLS0KCistLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0rCnwg
ICAgICAgICAgU2l0ZSBUeXBlICAgICAgICAgIHwgVXNlZCB8IEF2YWlsYWJsZSB8ICBVdGlsJSB8
CistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0t
LS0rCnwgQm9uZGVkIElPQiAgICAgICAgICAgICAgICAgIHwgIDI1MyB8ICAgICAgIDM2MiB8ICA2
OS44OSB8CnwgICBJT0IgTWFzdGVyIFBhZHMgICAgICAgICAgIHwgIDEyOSB8ICAgICAgICAgICB8
ICAgICAgICB8CnwgICBJT0IgU2xhdmUgUGFkcyAgICAgICAgICAgIHwgIDEyNCB8ICAgICAgICAg
ICB8ICAgICAgICB8CnwgICBJT0IgRmxpcCBGbG9wcyAgICAgICAgICAgIHwgICA1OCB8ICAgICAg
ICAgICB8ICAgICAgICB8CnwgQm9uZGVkIElQQURzICAgICAgICAgICAgICAgIHwgICAyOCB8ICAg
ICAgICA1MCB8ICA1Ni4wMCB8CnwgQm9uZGVkIE9QQURzICAgICAgICAgICAgICAgIHwgICAyMCB8
ICAgICAgICAzMiB8ICA2Mi41MCB8CnwgQm9uZGVkIElPUEFEcyAgICAgICAgICAgICAgIHwgIDEz
MCB8ICAgICAgIDEzMCB8IDEwMC4wMCB8CnwgUEhZX0NPTlRST0wgICAgICAgICAgICAgICAgIHwg
ICAgMiB8ICAgICAgICAgOCB8ICAyNS4wMCB8CnwgUEhBU0VSX1JFRiAgICAgICAgICAgICAgICAg
IHwgICAgMiB8ICAgICAgICAgOCB8ICAyNS4wMCB8CnwgT1VUX0ZJRk8gICAgICAgICAgICAgICAg
ICAgIHwgICAgOCB8ICAgICAgICAzMiB8ICAyNS4wMCB8CnwgSU5fRklGTyAgICAgICAgICAgICAg
ICAgICAgIHwgICAgNCB8ICAgICAgICAzMiB8ICAxMi41MCB8CnwgSURFTEFZQ1RSTCAgICAgICAg
ICAgICAgICAgIHwgICAgMSB8ICAgICAgICAgOCB8ICAxMi41MCB8CnwgSUJVRkRTICAgICAgICAg
ICAgICAgICAgICAgIHwgICAgOCB8ICAgICAgIDM0OCB8ICAgMi4zMCB8CnwgR1RYRTJfQ09NTU9O
ICAgICAgICAgICAgICAgIHwgICAgMyB8ICAgICAgICAgNCB8ICA3NS4wMCB8CnwgR1RYRTJfQ0hB
Tk5FTCAgICAgICAgICAgICAgIHwgICAxMCB8ICAgICAgICAxNiB8ICA2Mi41MCB8CnwgUEhBU0VS
X09VVC9QSEFTRVJfT1VUX1BIWSAgIHwgICAgOCB8ICAgICAgICAzMiB8ICAyNS4wMCB8CnwgICBQ
SEFTRVJfT1VUX1BIWSBvbmx5ICAgICAgIHwgICAgOCB8ICAgICAgICAgICB8ICAgICAgICB8Cnwg
UEhBU0VSX0lOL1BIQVNFUl9JTl9QSFkgICAgIHwgICAgNCB8ICAgICAgICAzMiB8ICAxMi41MCB8
CnwgICBQSEFTRVJfSU5fUEhZIG9ubHkgICAgICAgIHwgICAgNCB8ICAgICAgICAgICB8ICAgICAg
ICB8CnwgSURFTEFZRTIvSURFTEFZRTJfRklORURFTEFZIHwgICAzMiB8ICAgICAgIDQwMCB8ICAg
OC4wMCB8CnwgICBJREVMQVlFMiBvbmx5ICAgICAgICAgICAgIHwgICAzMiB8ICAgICAgICAgICB8
ICAgICAgICB8CnwgT0RFTEFZRTIvT0RFTEFZRTJfRklORURFTEFZIHwgICAgMCB8ICAgICAgIDE1
MCB8ICAgMC4wMCB8CnwgSUJVRkRTX0dURTIgICAgICAgICAgICAgICAgIHwgICAgNCB8ICAgICAg
ICAgOCB8ICA1MC4wMCB8CnwgSUxPR0lDICAgICAgICAgICAgICAgICAgICAgIHwgICA0MCB8ICAg
ICAgIDM2MiB8ICAxMS4wNSB8CnwgICBJRkZfSUREUl9SZWdpc3RlciAgICAgICAgIHwgICAgOCB8
ICAgICAgICAgICB8ICAgICAgICB8CnwgICBJU0VSREVTICAgICAgICAgICAgICAgICAgIHwgICAz
MiB8ICAgICAgIDM2MiB8ICAgICAgICB8CnwgT0xPR0lDICAgICAgICAgICAgICAgICAgICAgIHwg
IDEzMiB8ICAgICAgIDM2MiB8ICAzNi40NiB8CnwgICBPVVRGRl9SZWdpc3RlciAgICAgICAgICAg
IHwgICA1OCB8ICAgICAgICAgICB8ICAgICAgICB8CnwgICBPVVRGRl9PRERSX1JlZ2lzdGVyICAg
ICAgIHwgICAgOSB8ICAgICAgICAgICB8ICAgICAgICB8CnwgICBURkZfT0REUl9SZWdpc3RlciAg
ICAgICAgIHwgICAgNCB8ICAgICAgICAgICB8ICAgICAgICB8CnwgICBPU0VSREVTICAgICAgICAg
ICAgICAgICAgIHwgICA2NSB8ICAgICAgIDM2MiB8ICAgICAgICB8CistLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0rCgoKNi4gQ2xvY2tpbmcK
LS0tLS0tLS0tLS0KCistLS0tLS0tLS0tLS0rLS0tLS0tKy0tLS0tLS0tLS0tKy0tLS0tLS0rCnwg
IFNpdGUgVHlwZSB8IFVzZWQgfCBBdmFpbGFibGUgfCBVdGlsJSB8CistLS0tLS0tLS0tLS0rLS0t
LS0tKy0tLS0tLS0tLS0tKy0tLS0tLS0rCnwgQlVGR0NUUkwgICB8ICAgMTYgfCAgICAgICAgMzIg
fCA1MC4wMCB8CnwgQlVGSU8gICAgICB8ICAgIDAgfCAgICAgICAgMzIgfCAgMC4wMCB8CnwgTU1D
TUUyX0FEViB8ICAgIDQgfCAgICAgICAgIDggfCA1MC4wMCB8CnwgUExMRTJfQURWICB8ICAgIDEg
fCAgICAgICAgIDggfCAxMi41MCB8CnwgQlVGTVJDRSAgICB8ICAgIDAgfCAgICAgICAgMTYgfCAg
MC4wMCB8CnwgQlVGSENFICAgICB8ICAgIDcgfCAgICAgICAxNjggfCAgNC4xNyB8CnwgQlVGUiAg
ICAgICB8ICAgIDEgfCAgICAgICAgMzIgfCAgMy4xMyB8CistLS0tLS0tLS0tLS0rLS0tLS0tKy0t
LS0tLS0tLS0tKy0tLS0tLS0rCgoKNy4gU3BlY2lmaWMgRmVhdHVyZQotLS0tLS0tLS0tLS0tLS0t
LS0tCgorLS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0rCnwgIFNpdGUg
VHlwZSAgfCBVc2VkIHwgQXZhaWxhYmxlIHwgIFV0aWwlIHwKKy0tLS0tLS0tLS0tLS0rLS0tLS0t
Ky0tLS0tLS0tLS0tKy0tLS0tLS0tKwp8IEJTQ0FORTIgICAgIHwgICAgMCB8ICAgICAgICAgNCB8
ICAgMC4wMCB8CnwgQ0FQVFVSRUUyICAgfCAgICAwIHwgICAgICAgICAxIHwgICAwLjAwIHwKfCBE
TkFfUE9SVCAgICB8ICAgIDAgfCAgICAgICAgIDEgfCAgIDAuMDAgfAp8IEVGVVNFX1VTUiAgIHwg
ICAgMCB8ICAgICAgICAgMSB8ICAgMC4wMCB8CnwgRlJBTUVfRUNDRTIgfCAgICAwIHwgICAgICAg
ICAxIHwgICAwLjAwIHwKfCBJQ0FQRTIgICAgICB8ICAgIDAgfCAgICAgICAgIDIgfCAgIDAuMDAg
fAp8IFBDSUVfMl8xICAgIHwgICAgMCB8ICAgICAgICAgMSB8ICAgMC4wMCB8CnwgU1RBUlRVUEUy
ICAgfCAgICAwIHwgICAgICAgICAxIHwgICAwLjAwIHwKfCBYQURDICAgICAgICB8ICAgIDEgfCAg
ICAgICAgIDEgfCAxMDAuMDAgfAorLS0tLS0tLS0tLS0tLSstLS0tLS0rLS0tLS0tLS0tLS0rLS0t
LS0tLS0rCgoKOC4gUHJpbWl0aXZlcwotLS0tLS0tLS0tLS0tCgorLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCnwgICAgICAgIFJlZiBOYW1l
ICAgICAgICB8ICBVc2VkICB8ICBGdW5jdGlvbmFsIENhdGVnb3J5IHwKKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwp8IEZEUkUgICAgICAg
ICAgICAgICAgICAgfCAyNjkwMzMgfCAgICAgICAgIEZsb3AgJiBMYXRjaCB8CnwgTFVUMyAgICAg
ICAgICAgICAgICAgICB8ICA2MzcxMiB8ICAgICAgICAgICAgICAgICAgTFVUIHwKfCBMVVQ2ICAg
ICAgICAgICAgICAgICAgIHwgIDQ3NjIzIHwgICAgICAgICAgICAgICAgICBMVVQgfAp8IEZEQ0Ug
ICAgICAgICAgICAgICAgICAgfCAgNDIxNTggfCAgICAgICAgIEZsb3AgJiBMYXRjaCB8CnwgTFVU
MiAgICAgICAgICAgICAgICAgICB8ICAzNDI2MyB8ICAgICAgICAgICAgICAgICAgTFVUIHwKfCBM
VVQ1ICAgICAgICAgICAgICAgICAgIHwgIDI4MTY1IHwgICAgICAgICAgICAgICAgICBMVVQgfAp8
IExVVDQgICAgICAgICAgICAgICAgICAgfCAgMjcxNjkgfCAgICAgICAgICAgICAgICAgIExVVCB8
CnwgU1JMMTZFICAgICAgICAgICAgICAgICB8ICAxNzkzNCB8ICAgRGlzdHJpYnV0ZWQgTWVtb3J5
IHwKfCBSQU1EMzIgICAgICAgICAgICAgICAgIHwgIDE2NjMwIHwgICBEaXN0cmlidXRlZCBNZW1v
cnkgfAp8IENBUlJZNCAgICAgICAgICAgICAgICAgfCAgMTM5OTggfCAgICAgICAgICAgQ2FycnlM
b2dpYyB8CnwgRkRQRSAgICAgICAgICAgICAgICAgICB8ICAgNzAyOCB8ICAgICAgICAgRmxvcCAm
IExhdGNoIHwKfCBMVVQxICAgICAgICAgICAgICAgICAgIHwgICA1NzU0IHwgICAgICAgICAgICAg
ICAgICBMVVQgfAp8IFNSTEMzMkUgICAgICAgICAgICAgICAgfCAgIDU1ODMgfCAgIERpc3RyaWJ1
dGVkIE1lbW9yeSB8CnwgTVVYRjcgICAgICAgICAgICAgICAgICB8ICAgNDc3OSB8ICAgICAgICAg
ICAgICAgIE11eEZ4IHwKfCBSQU1TMzIgICAgICAgICAgICAgICAgIHwgICA0NjI0IHwgICBEaXN0
cmlidXRlZCBNZW1vcnkgfAp8IEZEU0UgICAgICAgICAgICAgICAgICAgfCAgIDM4MzggfCAgICAg
ICAgIEZsb3AgJiBMYXRjaCB8CnwgTVVYRjggICAgICAgICAgICAgICAgICB8ICAgMTc5OCB8ICAg
ICAgICAgICAgICAgIE11eEZ4IHwKfCBEU1A0OEUxICAgICAgICAgICAgICAgIHwgICAgNjEyIHwg
ICAgIEJsb2NrIEFyaXRobWV0aWMgfAp8IFJBTUIzNkUxICAgICAgICAgICAgICAgfCAgICA1MTYg
fCAgICAgICAgIEJsb2NrIE1lbW9yeSB8CnwgUkFNUzY0RSAgICAgICAgICAgICAgICB8ICAgIDE5
MiB8ICAgRGlzdHJpYnV0ZWQgTWVtb3J5IHwKfCBPQlVGICAgICAgICAgICAgICAgICAgIHwgICAg
MTcyIHwgICAgICAgICAgICAgICAgICAgSU8gfAp8IFJBTUIxOEUxICAgICAgICAgICAgICAgfCAg
ICAxNjAgfCAgICAgICAgIEJsb2NrIE1lbW9yeSB8CnwgQklCVUYgICAgICAgICAgICAgICAgICB8
ICAgIDEzMCB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBSQU1ENjRFICAgICAgICAgICAgICAg
IHwgICAgMTI4IHwgICBEaXN0cmlidXRlZCBNZW1vcnkgfAp8IE9TRVJERVNFMiAgICAgICAgICAg
ICAgfCAgICAgNjUgfCAgICAgICAgICAgICAgICAgICBJTyB8CnwgSUJVRiAgICAgICAgICAgICAg
ICAgICB8ICAgICA2MSB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBPQlVGVF9EQ0lFTiAgICAg
ICAgICAgIHwgICAgIDMyIHwgICAgICAgICAgICAgICAgICAgSU8gfAp8IElTRVJERVNFMiAgICAg
ICAgICAgICAgfCAgICAgMzIgfCAgICAgICAgICAgICAgICAgICBJTyB8CnwgSURFTEFZRTIgICAg
ICAgICAgICAgICB8ICAgICAzMiB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBJQlVGX0lCVUZE
SVNBQkxFICAgICAgIHwgICAgIDMyIHwgICAgICAgICAgICAgICAgICAgSU8gfAp8IE9CVUZUICAg
ICAgICAgICAgICAgICAgfCAgICAgMjYgfCAgICAgICAgICAgICAgICAgICBJTyB8CnwgT0REUiAg
ICAgICAgICAgICAgICAgICB8ICAgICAxMyB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBBTkQy
QjFMICAgICAgICAgICAgICAgIHwgICAgIDEyIHwgICAgICAgICAgICAgICBPdGhlcnMgfAp8IEJV
RkcgICAgICAgICAgICAgICAgICAgfCAgICAgMTEgfCAgICAgICAgICAgICAgICBDbG9jayB8Cnwg
R1RYRTJfQ0hBTk5FTCAgICAgICAgICB8ICAgICAxMCB8ICAgICAgICAgICAgICAgICAgIElPIHwK
fCBQSEFTRVJfT1VUX1BIWSAgICAgICAgIHwgICAgICA4IHwgICAgICAgICAgICAgICAgICAgSU8g
fAp8IE9VVF9GSUZPICAgICAgICAgICAgICAgfCAgICAgIDggfCAgICAgICAgICAgICAgICAgICBJ
TyB8CnwgT0JVRlREU19EQ0lFTiAgICAgICAgICB8ICAgICAgOCB8ICAgICAgICAgICAgICAgICAg
IElPIHwKfCBJRERSICAgICAgICAgICAgICAgICAgIHwgICAgICA4IHwgICAgICAgICAgICAgICAg
ICAgSU8gfAp8IElCVUZEU19JQlVGRElTQUJMRV9JTlQgfCAgICAgIDggfCAgICAgICAgICAgICAg
ICAgICBJTyB8CnwgSUJVRkRTICAgICAgICAgICAgICAgICB8ICAgICAgOCB8ICAgICAgICAgICAg
ICAgICAgIElPIHwKfCBJTlYgICAgICAgICAgICAgICAgICAgIHwgICAgICA1IHwgICAgICAgICAg
ICAgICAgICBMVVQgfAp8IEJVRkggICAgICAgICAgICAgICAgICAgfCAgICAgIDUgfCAgICAgICAg
ICAgICAgICBDbG9jayB8CnwgQlVGR0NUUkwgICAgICAgICAgICAgICB8ICAgICAgNSB8ICAgICAg
ICAgICAgICAgIENsb2NrIHwKfCBQSEFTRVJfSU5fUEhZICAgICAgICAgIHwgICAgICA0IHwgICAg
ICAgICAgICAgICAgICAgSU8gfAp8IE1NQ01FMl9BRFYgICAgICAgICAgICAgfCAgICAgIDQgfCAg
ICAgICAgICAgICAgICBDbG9jayB8CnwgSU5fRklGTyAgICAgICAgICAgICAgICB8ICAgICAgNCB8
ICAgICAgICAgICAgICAgICAgIElPIHwKfCBJQlVGRFNfR1RFMiAgICAgICAgICAgIHwgICAgICA0
IHwgICAgICAgICAgICAgICAgICAgSU8gfAp8IEdUWEUyX0NPTU1PTiAgICAgICAgICAgfCAgICAg
IDMgfCAgICAgICAgICAgICAgICAgICBJTyB8CnwgUEhZX0NPTlRST0wgICAgICAgICAgICB8ICAg
ICAgMiB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBQSEFTRVJfUkVGICAgICAgICAgICAgIHwg
ICAgICAyIHwgICAgICAgICAgICAgICAgICAgSU8gfAp8IE9SMkwgICAgICAgICAgICAgICAgICAg
fCAgICAgIDIgfCAgICAgICAgICAgICAgIE90aGVycyB8CnwgT0JVRkRTICAgICAgICAgICAgICAg
ICB8ICAgICAgMiB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBCVUZIQ0UgICAgICAgICAgICAg
ICAgIHwgICAgICAyIHwgICAgICAgICAgICAgICAgQ2xvY2sgfAp8IFhBREMgICAgICAgICAgICAg
ICAgICAgfCAgICAgIDEgfCAgICAgICAgICAgICAgIE90aGVycyB8CnwgVVNSX0FDQ0VTU0UyICAg
ICAgICAgICB8ICAgICAgMSB8ICAgICAgICAgICAgICAgT3RoZXJzIHwKfCBQUzcgICAgICAgICAg
ICAgICAgICAgIHwgICAgICAxIHwgU3BlY2lhbGl6ZWQgUmVzb3VyY2UgfAp8IFBMTEUyX0FEViAg
ICAgICAgICAgICAgfCAgICAgIDEgfCAgICAgICAgICAgICAgICBDbG9jayB8CnwgSURFTEFZQ1RS
TCAgICAgICAgICAgICB8ICAgICAgMSB8ICAgICAgICAgICAgICAgICAgIElPIHwKfCBCVUZSICAg
ICAgICAgICAgICAgICAgIHwgICAgICAxIHwgICAgICAgICAgICAgICAgQ2xvY2sgfAorLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCgoKOS4g
QmxhY2sgQm94ZXMKLS0tLS0tLS0tLS0tLS0KCistLS0tLS0tLS0tKy0tLS0tLSsKfCBSZWYgTmFt
ZSB8IFVzZWQgfAorLS0tLS0tLS0tLSstLS0tLS0rCgoKMTAuIEluc3RhbnRpYXRlZCBOZXRsaXN0
cwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLSsKfCAgICAgICAgUmVmIE5hbWUgICAgICAgIHwgVXNlZCB8CistLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rLS0tLS0tKwp8IGZpZm9fc2hvcnRfMmNsayAgICAgICAgfCAgMjE2IHwKfCBmaWZv
XzRrXzJjbGsgICAgICAgICAgIHwgICA0OCB8CnwgZGRzX3Npbl9jb3NfbHV0X29ubHkgICB8ICAg
IDggfAp8IGNvbXBsZXhfbXVsdGlwbGllcl9kZHMgfCAgICA4IHwKfCBheGlfaGI0NyAgICAgICAg
ICAgICAgIHwgICAgOCB8CnwgYXhpX2ZmdCAgICAgICAgICAgICAgICB8ICAgIDYgfAp8IGhiZGVj
MyAgICAgICAgICAgICAgICAgfCAgICA0IHwKfCBoYmRlYzIgICAgICAgICAgICAgICAgIHwgICAg
NCB8CnwgaGJkZWMxICAgICAgICAgICAgICAgICB8ICAgIDQgfAp8IGNvbXBsZXhfbXVsdGlwbGll
ciAgICAgfCAgICA0IHwKfCBheGk2NF80a18yY2xrX2ZpZm8gICAgIHwgICAgNCB8CnwgVGRjQ29y
ZSAgICAgICAgICAgICAgICB8ICAgIDQgfAp8IHRlbl9naWdfZXRoX3Bjc19wbWEgICAgfCAgICAy
IHwKfCBheGlfZXRoX2RtYSAgICAgICAgICAgIHwgICAgMiB8CnwgU3luY1JlZ3NJZmMgICAgICAg
ICAgICB8ICAgIDIgfAp8IEplc2QyMDRiWGN2ckNvcmUgICAgICAgfCAgICAyIHwKfCBtaXNjX2Ns
b2NrX2dlbiAgICAgICAgIHwgICAgMSB8CnwgZGRyM18zMmJpdCAgICAgICAgICAgICB8ICAgIDEg
fAorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLSsKCgpDb3B5cmlnaHQgMTk4Ni0yMDE4
IFhpbGlueCwgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLgotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQp8IFRvb2wgVmVyc2lv
biA6IFZpdmFkbyB2LjIwMTguM19BUjcxODk4IChsaW42NCkgQnVpbGQgMjQwNTk5MSBUaHUgRGVj
ICA2IDIzOjM2OjQxIE1TVCAyMDE4CnwgRGF0ZSAgICAgICAgIDogRnJpIEphbiAzMSAxNDoyMTox
OCAyMDIwCnwgSG9zdCAgICAgICAgIDogcHJhdHRocGMuY3JjLm5kLmVkdSBydW5uaW5nIDY0LWJp
dCBSZWQgSGF0IEVudGVycHJpc2UgTGludXggU2VydmVyIHJlbGVhc2UgNy43IChNYWlwbykKfCBD
b21tYW5kICAgICAgOiByZXBvcnRfdGltaW5nX3N1bW1hcnkgLW5vX2RldGFpbGVkX3BhdGhzIC1m
aWxlIC9hZnMvY3JjLm5kLmVkdS91c2VyL3Ivcmtvc3NsZXIvdWhkL1VIRC0zLjE1LjAuMC91aGQv
ZnBnYS1zcmMvdXNycDMvdG9wL24zeHgvYnVpbGQtTjMxMF9SRk5PQ19YRy9idWlsZC5ycHQgLWFw
cGVuZAp8IERlc2lnbiAgICAgICA6IG4zeHgKfCBEZXZpY2UgICAgICAgOiA3ejEwMC1mZmc5MDAK
fCBTcGVlZCBGaWxlICAgOiAtMiAgUFJPRFVDVElPTiAxLjExIDIwMTQtMDktMTEKLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
ClRpbWluZyBTdW1tYXJ5IFJlcG9ydAoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCnwgVGltZXIgU2V0dGluZ3MKfCAtLS0tLS0tLS0tLS0tLQotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgRW5hYmxlIE11bHRpIENvcm5lciBBbmFseXNpcyAg
ICAgICAgICAgICAgIDogIFllcwogIEVuYWJsZSBQZXNzaW1pc20gUmVtb3ZhbCAgICAgICAgICAg
ICAgICAgICA6ICBZZXMKICBQZXNzaW1pc20gUmVtb3ZhbCBSZXNvbHV0aW9uICAgICAgICAgICAg
ICAgOiAgTmVhcmVzdCBDb21tb24gTm9kZQogIEVuYWJsZSBJbnB1dCBEZWxheSBEZWZhdWx0IENs
b2NrICAgICAgICAgICA6ICBObwogIEVuYWJsZSBQcmVzZXQgLyBDbGVhciBBcmNzICAgICAgICAg
ICAgICAgICA6ICBObwogIERpc2FibGUgRmxpZ2h0IERlbGF5cyAgICAgICAgICAgICAgICAgICAg
ICA6ICBObwogIElnbm9yZSBJL08gUGF0aHMgICAgICAgICAgICAgICAgICAgICAgICAgICA6ICBO
bwogIFRpbWluZyBFYXJseSBMYXVuY2ggYXQgQm9ycm93aW5nIExhdGNoZXMgICA6ICBmYWxzZQoK
ICBDb3JuZXIgIEFuYWx5emUgICAgQW5hbHl6ZSAgICAKICBOYW1lICAgIE1heCBQYXRocyAgTWlu
IFBhdGhzICAKICAtLS0tLS0gIC0tLS0tLS0tLSAgLS0tLS0tLS0tICAKICBTbG93ICAgIFllcyAg
ICAgICAgWWVzICAgICAgICAKICBGYXN0ICAgIFllcyAgICAgICAgWWVzICAgICAgICAKCgoKY2hl
Y2tfdGltaW5nIHJlcG9ydAoKVGFibGUgb2YgQ29udGVudHMKLS0tLS0tLS0tLS0tLS0tLS0KMS4g
Y2hlY2tpbmcgbm9fY2xvY2sKMi4gY2hlY2tpbmcgY29uc3RhbnRfY2xvY2sKMy4gY2hlY2tpbmcg
cHVsc2Vfd2lkdGhfY2xvY2sKNC4gY2hlY2tpbmcgdW5jb25zdHJhaW5lZF9pbnRlcm5hbF9lbmRw
b2ludHMKNS4gY2hlY2tpbmcgbm9faW5wdXRfZGVsYXkKNi4gY2hlY2tpbmcgbm9fb3V0cHV0X2Rl
bGF5CjcuIGNoZWNraW5nIG11bHRpcGxlX2Nsb2NrCjguIGNoZWNraW5nIGdlbmVyYXRlZF9jbG9j
a3MKOS4gY2hlY2tpbmcgbG9vcHMKMTAuIGNoZWNraW5nIHBhcnRpYWxfaW5wdXRfZGVsYXkKMTEu
IGNoZWNraW5nIHBhcnRpYWxfb3V0cHV0X2RlbGF5CjEyLiBjaGVja2luZyBsYXRjaF9sb29wcwoK
MS4gY2hlY2tpbmcgbm9fY2xvY2sKLS0tLS0tLS0tLS0tLS0tLS0tLS0KIFRoZXJlIGFyZSAwIHJl
Z2lzdGVyL2xhdGNoIHBpbnMgd2l0aCBubyBjbG9jay4KCgoyLiBjaGVja2luZyBjb25zdGFudF9j
bG9jawotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogVGhlcmUgYXJlIDAgcmVnaXN0ZXIvbGF0
Y2ggcGlucyB3aXRoIGNvbnN0YW50X2Nsb2NrLgoKCjMuIGNoZWNraW5nIHB1bHNlX3dpZHRoX2Ns
b2NrCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBUaGVyZSBpcyAxIHJlZ2lzdGVyL2xh
dGNoIHBpbiB3aGljaCBuZWVkIHB1bHNlX3dpZHRoIGNoZWNrLiAoTE9XKQoKCjQuIGNoZWNraW5n
IHVuY29uc3RyYWluZWRfaW50ZXJuYWxfZW5kcG9pbnRzCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBUaGVyZSBhcmUgMCBwaW5zIHRoYXQgYXJlIG5vdCBjb25z
dHJhaW5lZCBmb3IgbWF4aW11bSBkZWxheS4KCiBUaGVyZSBhcmUgMyBwaW5zIHRoYXQgYXJlIG5v
dCBjb25zdHJhaW5lZCBmb3IgbWF4aW11bSBkZWxheSBkdWUgdG8gY29uc3RhbnQgY2xvY2suIChN
RURJVU0pCgoKNS4gY2hlY2tpbmcgbm9faW5wdXRfZGVsYXkKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIFRoZXJlIGFyZSA2IGlucHV0IHBvcnRzIHdpdGggbm8gaW5wdXQgZGVsYXkgc3BlY2lm
aWVkLiAoSElHSCkKCiBUaGVyZSBhcmUgMCBpbnB1dCBwb3J0cyB3aXRoIG5vIGlucHV0IGRlbGF5
IGJ1dCB1c2VyIGhhcyBhIGZhbHNlIHBhdGggY29uc3RyYWludC4KCgo2LiBjaGVja2luZyBub19v
dXRwdXRfZGVsYXkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBUaGVyZSBhcmUgNyBwb3J0
cyB3aXRoIG5vIG91dHB1dCBkZWxheSBzcGVjaWZpZWQuIChISUdIKQoKIFRoZXJlIGFyZSAwIHBv
cnRzIHdpdGggbm8gb3V0cHV0IGRlbGF5IGJ1dCB1c2VyIGhhcyBhIGZhbHNlIHBhdGggY29uc3Ry
YWludAoKIFRoZXJlIGFyZSAyIHBvcnRzIHdpdGggbm8gb3V0cHV0IGRlbGF5IGJ1dCB3aXRoIGEg
dGltaW5nIGNsb2NrIGRlZmluZWQgb24gaXQgb3IgcHJvcGFnYXRpbmcgdGhyb3VnaCBpdCAoTE9X
KQoKCjcuIGNoZWNraW5nIG11bHRpcGxlX2Nsb2NrCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiBUaGVyZSBhcmUgMCByZWdpc3Rlci9sYXRjaCBwaW5zIHdpdGggbXVsdGlwbGUgY2xvY2tzLgoK
CjguIGNoZWNraW5nIGdlbmVyYXRlZF9jbG9ja3MKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogVGhlcmUgYXJlIDAgZ2VuZXJhdGVkIGNsb2NrcyB0aGF0IGFyZSBub3QgY29ubmVjdGVkIHRv
IGEgY2xvY2sgc291cmNlLgoKCjkuIGNoZWNraW5nIGxvb3BzCi0tLS0tLS0tLS0tLS0tLS0tCiBU
aGVyZSBhcmUgMCBjb21iaW5hdGlvbmFsIGxvb3BzIGluIHRoZSBkZXNpZ24uCgoKMTAuIGNoZWNr
aW5nIHBhcnRpYWxfaW5wdXRfZGVsYXkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
IFRoZXJlIGFyZSAwIGlucHV0IHBvcnRzIHdpdGggcGFydGlhbCBpbnB1dCBkZWxheSBzcGVjaWZp
ZWQuCgoKMTEuIGNoZWNraW5nIHBhcnRpYWxfb3V0cHV0X2RlbGF5Ci0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQogVGhlcmUgYXJlIDAgcG9ydHMgd2l0aCBwYXJ0aWFsIG91dHB1dCBk
ZWxheSBzcGVjaWZpZWQuCgoKMTIuIGNoZWNraW5nIGxhdGNoX2xvb3BzCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogVGhlcmUgYXJlIDAgY29tYmluYXRpb25hbCBsYXRjaCBsb29wcyBpbiB0aGUg
ZGVzaWduIHRocm91Z2ggbGF0Y2ggaW5wdXQKCgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCnwgRGVzaWduIFRpbWluZyBTdW1tYXJ5CnwgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICAgIFdOUyhucykg
ICAgICBUTlMobnMpICBUTlMgRmFpbGluZyBFbmRwb2ludHMgIFROUyBUb3RhbCBFbmRwb2ludHMg
ICAgICBXSFMobnMpICAgICAgVEhTKG5zKSAgVEhTIEZhaWxpbmcgRW5kcG9pbnRzICBUSFMgVG90
YWwgRW5kcG9pbnRzICAgICBXUFdTKG5zKSAgICAgVFBXUyhucykgIFRQV1MgRmFpbGluZyBFbmRw
b2ludHMgIFRQV1MgVG90YWwgRW5kcG9pbnRzICAKICAgIC0tLS0tLS0gICAgICAtLS0tLS0tICAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tLS0gICAgICAtLS0tLS0tICAg
ICAgLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLS0tICAg
ICAtLS0tLS0tLSAgICAgLS0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gIC0tLS0tLS0t
LS0tLS0tLS0tLS0tICAKICAgICAgMC4wMTAgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAg
ICAgIDAgICAgICAgICAgICAgICA5NjM4ODkgICAgICAgIDAuMDQ3ICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgOTYzNDQxICAgICAgICAwLjAwMSAgICAg
ICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgMzY5NTY5ICAK
CgpBbGwgdXNlciBzcGVjaWZpZWQgdGltaW5nIGNvbnN0cmFpbnRzIGFyZSBtZXQuCgoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCnwgQ2xvY2sgU3VtbWFyeQp8IC0tLS0t
LS0tLS0tLS0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpDbG9jayAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFdhdmVmb3JtKG5zKSAgICAg
ICAgIFBlcmlvZChucykgICAgICBGcmVxdWVuY3koTUh6KQotLS0tLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC0tLS0tLS0tLS0tLSAgICAgICAgIC0tLS0tLS0tLS0g
ICAgICAtLS0tLS0tLS0tLS0tLQphc3luY19pbl9jbGsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHswLjAwMCAyNS4wMDB9ICAgICAgIDUwLjAwMCAgICAgICAgICAyMC4wMDAgICAg
ICAgICAgCmFzeW5jX291dF9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAu
MDAwIDI1LjAwMH0gICAgICAgNTAuMDAwICAgICAgICAgIDIwLjAwMCAgICAgICAgICAKYnVzX2Ns
ayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgMi41MDB9ICAg
ICAgICA1LjAwMCAgICAgICAgICAgMjAwLjAwMCAgICAgICAgIApjbGsxMDAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCA1LjAwMH0gICAgICAgIDEwLjAwMCAg
ICAgICAgICAxMDAuMDAwICAgICAgICAgCmNsazQwICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgezAuMDAwIDEyLjUwMH0gICAgICAgMjUuMDAwICAgICAgICAgIDQwLjAw
MCAgICAgICAgICAKZGRyM19leHRfcmVmY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB7MC4wMDAgNS4wMDB9ICAgICAgICAxMC4wMDAgICAgICAgICAgMTAwLjAwMCAgICAgICAgIAog
IGZyZXFfcmVmY2xrXzEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHsxLjQ0MiAyLjIx
Mn0gICAgICAgIDEuNTM4ICAgICAgICAgICA2NTAuMDAwICAgICAgICAgCiAgICB1X21lbWNfdWlf
dG9wX2F4aS9tZW1faW50ZmMwL2Rkcl9waHlfdG9wMC91X2Rkcl9tY19waHlfd3JhcHBlci91X2Rk
cl9tY19waHkvZGRyX3BoeV80bGFuZXNfMC51X2Rkcl9waHlfNGxhbmVzL2Rkcl9ieXRlX2xhbmVf
QS5kZHJfYnl0ZV9sYW5lX0EvaXNlcmRlc19jbGtfMSAgezEuNDQyIDIuMjEyfSAgICAgICAgMS41
MzggICAgICAgICAgIDY1MC4wMDAgICAgICAgICAKICAgICAgaXNlcmRlc19jbGtkaXZfNCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB7MS40NDIgMi45ODF9ICAgICAgICAzLjA3NyAgICAgICAgICAg
MzI1LjAwMCAgICAgICAgIAogICAgdV9tZW1jX3VpX3RvcF9heGkvbWVtX2ludGZjMC9kZHJfcGh5
X3RvcDAvdV9kZHJfbWNfcGh5X3dyYXBwZXIvdV9kZHJfbWNfcGh5L2Rkcl9waHlfNGxhbmVzXzAu
dV9kZHJfcGh5XzRsYW5lcy9kZHJfYnl0ZV9sYW5lX0IuZGRyX2J5dGVfbGFuZV9CL2lzZXJkZXNf
Y2xrXzEgIHsxLjQ0MiAyLjIxMn0gICAgICAgIDEuNTM4ICAgICAgICAgICA2NTAuMDAwICAgICAg
ICAgCiAgICAgIGlzZXJkZXNfY2xrZGl2XzUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezEuNDQy
IDIuOTgxfSAgICAgICAgMy4wNzcgICAgICAgICAgIDMyNS4wMDAgICAgICAgICAKICAgIHVfbWVt
Y191aV90b3BfYXhpL21lbV9pbnRmYzAvZGRyX3BoeV90b3AwL3VfZGRyX21jX3BoeV93cmFwcGVy
L3VfZGRyX21jX3BoeS9kZHJfcGh5XzRsYW5lc18wLnVfZGRyX3BoeV80bGFuZXMvZGRyX2J5dGVf
bGFuZV9DLmRkcl9ieXRlX2xhbmVfQy9pc2VyZGVzX2Nsa18xICB7MS40NDIgMi4yMTJ9ICAgICAg
ICAxLjUzOCAgICAgICAgICAgNjUwLjAwMCAgICAgICAgIAogICAgICBpc2VyZGVzX2Nsa2Rpdl82
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHsxLjQ0MiAyLjk4MX0gICAgICAgIDMuMDc3ICAgICAg
ICAgICAzMjUuMDAwICAgICAgICAgCiAgICB1X21lbWNfdWlfdG9wX2F4aS9tZW1faW50ZmMwL2Rk
cl9waHlfdG9wMC91X2Rkcl9tY19waHlfd3JhcHBlci91X2Rkcl9tY19waHkvZGRyX3BoeV80bGFu
ZXNfMC51X2Rkcl9waHlfNGxhbmVzL2Rkcl9ieXRlX2xhbmVfRC5kZHJfYnl0ZV9sYW5lX0QvaXNl
cmRlc19jbGtfMSAgezEuNDQyIDIuMjEyfSAgICAgICAgMS41MzggICAgICAgICAgIDY1MC4wMDAg
ICAgICAgICAKICAgICAgaXNlcmRlc19jbGtkaXZfNyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7
MS40NDIgMi45ODF9ICAgICAgICAzLjA3NyAgICAgICAgICAgMzI1LjAwMCAgICAgICAgIAogIG1l
bV9yZWZjbGtfMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAwLjc2OX0g
ICAgICAgIDEuNTM4ICAgICAgICAgICA2NTAuMDAwICAgICAgICAgCiAgICBvc2VyZGVzX2Nsa18x
MCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDAuNzY5fSAgICAgICAgMS41Mzgg
ICAgICAgICAgIDY1MC4wMDAgICAgICAgICAKICAgICAgb3NlcmRlc19jbGtkaXZfMTAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB7MC4wMDAgMS41Mzh9ICAgICAgICAzLjA3NyAgICAgICAgICAgMzI1
LjAwMCAgICAgICAgIAogICAgb3NlcmRlc19jbGtfMTEgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHswLjAwMCAwLjc2OX0gICAgICAgIDEuNTM4ICAgICAgICAgICA2NTAuMDAwICAgICAgICAg
CiAgICAgIG9zZXJkZXNfY2xrZGl2XzExICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDEu
NTM4fSAgICAgICAgMy4wNzcgICAgICAgICAgIDMyNS4wMDAgICAgICAgICAKICAgIG9zZXJkZXNf
Y2xrXzEyICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgMC43Njl9ICAgICAgICAx
LjUzOCAgICAgICAgICAgNjUwLjAwMCAgICAgICAgIAogICAgICBvc2VyZGVzX2Nsa2Rpdl8xMiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAzLjA3N30gICAgICAgIDYuMTU0ICAgICAgICAg
ICAxNjIuNTAwICAgICAgICAgCiAgICBvc2VyZGVzX2Nsa18xMyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgezAuMDAwIDAuNzY5fSAgICAgICAgMS41MzggICAgICAgICAgIDY1MC4wMDAgICAg
ICAgICAKICAgICAgb3NlcmRlc19jbGtkaXZfMTMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4w
MDAgMy4wNzd9ICAgICAgICA2LjE1NCAgICAgICAgICAgMTYyLjUwMCAgICAgICAgIAogICAgb3Nl
cmRlc19jbGtfMTQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAwLjc2OX0gICAg
ICAgIDEuNTM4ICAgICAgICAgICA2NTAuMDAwICAgICAgICAgCiAgICAgIG9zZXJkZXNfY2xrZGl2
XzE0ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDMuMDc3fSAgICAgICAgNi4xNTQgICAg
ICAgICAgIDE2Mi41MDAgICAgICAgICAKICAgIG9zZXJkZXNfY2xrXzE1ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB7MC4wMDAgMC43Njl9ICAgICAgICAxLjUzOCAgICAgICAgICAgNjUwLjAw
MCAgICAgICAgIAogICAgICBvc2VyZGVzX2Nsa2Rpdl8xNSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHswLjAwMCAzLjA3N30gICAgICAgIDYuMTU0ICAgICAgICAgICAxNjIuNTAwICAgICAgICAgCiAg
ICBvc2VyZGVzX2Nsa184ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDAuNzY5
fSAgICAgICAgMS41MzggICAgICAgICAgIDY1MC4wMDAgICAgICAgICAKICAgICAgb3NlcmRlc19j
bGtkaXZfOCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgMS41Mzh9ICAgICAgICAzLjA3
NyAgICAgICAgICAgMzI1LjAwMCAgICAgICAgIAogICAgb3NlcmRlc19jbGtfOSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHswLjAwMCAwLjc2OX0gICAgICAgIDEuNTM4ICAgICAgICAgICA2
NTAuMDAwICAgICAgICAgCiAgICAgIG9zZXJkZXNfY2xrZGl2XzkgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgezAuMDAwIDEuNTM4fSAgICAgICAgMy4wNzcgICAgICAgICAgIDMyNS4wMDAgICAgICAg
ICAKICBwbGxfY2xrM19vdXRfMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAg
My4wNzd9ICAgICAgICA2LjE1NCAgICAgICAgICAgMTYyLjUwMCAgICAgICAgIAogICAgZGRyM191
aV9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAzLjA3N30gICAgICAg
IDYuMTU0ICAgICAgICAgICAxNjIuNTAwICAgICAgICAgCiAgICBkZHIzX3VpX2Nsa18yeCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDYuMTU0fSAgICAgICAgMTIuMzA4ICAgICAg
ICAgIDgxLjI1MCAgICAgICAgICAKICBwbGxfY2xrZmJvdXRfMSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB7MC4wMDAgNS4wMDB9ICAgICAgICAxMC4wMDAgICAgICAgICAgMTAwLjAwMCAg
ICAgICAgIAogIHN5bmNfcHVsc2VfMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHsw
LjY3MyAyLjIxMn0gICAgICAgIDI0LjYxNSAgICAgICAgICA0MC42MjUgICAgICAgICAgCmZwZ2Ff
Y2xrX2EgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDMuMjU1fSAg
ICAgICAgNi41MTAgICAgICAgICAgIDE1My42MTAgICAgICAgICAKICByYWRpb19jbGsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgMy4yNTV9ICAgICAgICA2LjUxMCAg
ICAgICAgICAgMTUzLjYxMCAgICAgICAgIAogICAgYXRyX2J1c19jbGsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHswLjAwMCA2LjUxMH0gICAgICAgIDEzLjAyMCAgICAgICAgICA3Ni44
MDUgICAgICAgICAgCiAgICBkc2FfYnVzX2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgezAuMDAwIDYuNTEwfSAgICAgICAgMTMuMDIwICAgICAgICAgIDc2LjgwNSAgICAgICAgICAK
ICAgIGZwX2dwaW9fYnVzX2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgNi41
MTB9ICAgICAgICAxMy4wMjAgICAgICAgICAgNzYuODA1ICAgICAgICAgIAogICAgcGxfc3BpX2Ns
a19hICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAxNjIuNzUwfSAgICAgIDMy
NS41MDAgICAgICAgICAzLjA3MiAgICAgICAgICAgCiAgICBwbF9zcGlfY2xrX2IgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDE2Mi43NTB9ICAgICAgMzI1LjUwMCAgICAgICAg
IDMuMDcyICAgICAgICAgICAKICByYWRpb19jbGtfZmIgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB7MC4wMDAgMy4yNTV9ICAgICAgICA2LjUxMCAgICAgICAgICAgMTUzLjYxMCAgICAg
ICAgIApmcGdhX2Nsa19hX3YgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAw
MCAzLjI1NX0gICAgICAgIDYuNTEwICAgICAgICAgICAxNTMuNjEwICAgICAgICAgCmZwZ2FfY2xr
X2IgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDMuMjU1fSAgICAg
ICAgNi41MTAgICAgICAgICAgIDE1My42MTAgICAgICAgICAKICByYWRpb19jbGtfYiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgMy4yNTV9ICAgICAgICA2LjUxMCAgICAg
ICAgICAgMTUzLjYxMCAgICAgICAgIAogIHJhZGlvX2Nsa19iX2ZiICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHswLjAwMCAzLjI1NX0gICAgICAgIDYuNTEwICAgICAgICAgICAxNTMuNjEw
ICAgICAgICAgCmZwZ2FfY2xrX2JfdiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ezAuMDAwIDMuMjU1fSAgICAgICAgNi41MTAgICAgICAgICAgIDE1My42MTAgICAgICAgICAKZ2Vf
cGh5X2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgNC4wMDB9
ICAgICAgICA4LjAwMCAgICAgICAgICAgMTI1LjAwMCAgICAgICAgIAptZWFzX2Nsa19yZWYgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAzLjAwMH0gICAgICAgIDYuMDAw
ICAgICAgICAgICAxNjYuNjY3ICAgICAgICAgCiAgZGRyM19kbWFfY2xrX21pc2NfY2xvY2tfZ2Vu
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgezAuMDAwIDEuNjQ2fSAgICAgICAgMy4yOTEgICAgICAgICAgIDMw
My44MTkgICAgICAgICAKICBtZWFzX2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB7MC4wMDAgMi41MjB9ICAgICAgICA1LjA0MCAgICAgICAgICAgMTk4LjQxMyAgICAgICAg
IAogIG1lYXNfY2xrX2ZiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCA5
LjAwMH0gICAgICAgIDE4LjAwMCAgICAgICAgICA1NS41NTYgICAgICAgICAgCm1ndF9jbGtfZGJh
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDMuMjU1fSAgICAgICAg
Ni41MTAgICAgICAgICAgIDE1My42MTAgICAgICAgICAKbWd0X2Nsa19kYmIgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB7MC4wMDAgMy4yNTV9ICAgICAgICA2LjUxMCAgICAgICAg
ICAgMTUzLjYxMCAgICAgICAgIApuZXRfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHswLjAwMCA0LjAwMH0gICAgICAgIDguMDAwICAgICAgICAgICAxMjUuMDAwICAg
ICAgICAgCnJlZl9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAu
MDAwIDIwLjAwMH0gICAgICAgNDAuMDAwICAgICAgICAgIDI1LjAwMCAgICAgICAgICAKc2ZwX3dy
YXBwZXJfMC9sYW5lc1swXS5sYW5lX2kvbWd0X2lvX2kvdGVuX2dpZ2VfcGh5X2kvdGVuX2dpZ19l
dGhfcGNzX3BtYV9pL2luc3QvZ3QwX2d0d2l6YXJkXzEwZ2Jhc2VyX211bHRpX2d0X2kvZ3QwX2d0
d2l6YXJkXzEwZ2Jhc2VyX2kvZ3R4ZTJfaS9SWE9VVENMSyAgICAgICB7MC4wMDAgMS41NTF9ICAg
ICAgICAzLjEwMyAgICAgICAgICAgMzIyLjI2OSAgICAgICAgIApzZnBfd3JhcHBlcl8wL2xhbmVz
WzBdLmxhbmVfaS9tZ3RfaW9faS90ZW5fZ2lnZV9waHlfaS90ZW5fZ2lnX2V0aF9wY3NfcG1hX2kv
aW5zdC9ndDBfZ3R3aXphcmRfMTBnYmFzZXJfbXVsdGlfZ3RfaS9ndDBfZ3R3aXphcmRfMTBnYmFz
ZXJfaS9ndHhlMl9pL1RYT1VUQ0xLICAgICAgIHswLjAwMCAxLjU1MX0gICAgICAgIDMuMTAzICAg
ICAgICAgICAzMjIuMjY5ICAgICAgICAgCnNmcF93cmFwcGVyXzEvbGFuZXNbMF0ubGFuZV9pL21n
dF9pb19pL3Rlbl9naWdlX3BoeV9pL3Rlbl9naWdfZXRoX3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdp
emFyZF8xMGdiYXNlcl9tdWx0aV9ndF9pL2d0MF9ndHdpemFyZF8xMGdiYXNlcl9pL2d0eGUyX2kv
UlhPVVRDTEsgICAgICAgezAuMDAwIDEuNTUxfSAgICAgICAgMy4xMDMgICAgICAgICAgIDMyMi4y
NjkgICAgICAgICAKc2ZwX3dyYXBwZXJfMS9sYW5lc1swXS5sYW5lX2kvbWd0X2lvX2kvdGVuX2dp
Z2VfcGh5X2kvdGVuX2dpZ19ldGhfcGNzX3BtYV9pL2luc3QvZ3QwX2d0d2l6YXJkXzEwZ2Jhc2Vy
X211bHRpX2d0X2kvZ3QwX2d0d2l6YXJkXzEwZ2Jhc2VyX2kvZ3R4ZTJfaS9UWE9VVENMSyAgICAg
ICB7MC4wMDAgMS41NTF9ICAgICAgICAzLjEwMyAgICAgICAgICAgMzIyLjI2OSAgICAgICAgIAp4
Z2VfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHswLjAwMCAzLjIw
MH0gICAgICAgIDYuNDAwICAgICAgICAgICAxNTYuMjUwICAgICAgICAgCiAgZGNsa19idWYgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgezAuMDAwIDYuNDAwfSAgICAgICAgMTIu
ODAwICAgICAgICAgIDc4LjEyNSAgICAgICAgICAKCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KfCBJbnRyYSBDbG9jayBUYWJsZQp8IC0tLS0tLS0tLS0tLS0tLS0tCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKQ2xvY2sgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgV05TKG5zKSAgICAgIFROUyhucykgIFRO
UyBGYWlsaW5nIEVuZHBvaW50cyAgVE5TIFRvdGFsIEVuZHBvaW50cyAgICAgIFdIUyhucykgICAg
ICBUSFMobnMpICBUSFMgRmFpbGluZyBFbmRwb2ludHMgIFRIUyBUb3RhbCBFbmRwb2ludHMgICAg
IFdQV1MobnMpICAgICBUUFdTKG5zKSAgVFBXUyBGYWlsaW5nIEVuZHBvaW50cyAgVFBXUyBUb3Rh
bCBFbmRwb2ludHMgIAotLS0tLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAtLS0tLS0tICAgICAgLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tICAtLS0t
LS0tLS0tLS0tLS0tLS0tICAgICAgLS0tLS0tLSAgICAgIC0tLS0tLS0gIC0tLS0tLS0tLS0tLS0t
LS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLSAgICAgLS0tLS0tLS0gICAgIC0tLS0tLS0tICAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLS0tLSAgCmJ1c19jbGsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC4wMTYgICAgICAgIDAu
MDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAyNDA4MTMgICAgICAgIDAu
MDQ3ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgMjQw
ODEzICAgICAgICAwLjI2NCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAg
ICAgICAgICAgICAgMTAxMTM5ICAKY2xrNDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA2Ljk1MCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAg
MCAgICAgICAgICAgICAgICA4NTg1NyAgICAgICAgMC4wNTIgICAgICAgIDAuMDAwICAgICAgICAg
ICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgODU0OTcgICAgICAgMTEuNTAwICAgICAgICAw
LjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgMzU1MzMgIApkZHIz
X2V4dF9yZWZjbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgMy4wMDAgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAg
ICAwICAgICAgICAgICAgICAgICAgICAgMSAgCiAgZnJlcV9yZWZjbGtfMSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjI4NyAg
ICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDE1
ICAKICAgIHVfbWVtY191aV90b3BfYXhpL21lbV9pbnRmYzAvZGRyX3BoeV90b3AwL3VfZGRyX21j
X3BoeV93cmFwcGVyL3VfZGRyX21jX3BoeS9kZHJfcGh5XzRsYW5lc18wLnVfZGRyX3BoeV80bGFu
ZXMvZGRyX2J5dGVfbGFuZV9BLmRkcl9ieXRlX2xhbmVfQS9pc2VyZGVzX2Nsa18xICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDAuNDY4ICAgICAgICAwLjAwMCAgICAgICAgICAgICAg
ICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMTYgIAogICAgICBpc2VyZGVzX2Nsa2Rpdl80
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEuNTU1ICAgICAgICAwLjAwMCAgICAgICAg
ICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDMzICAgICAgICAwLjA3MCAgICAgICAg
MC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAzMyAgICAgICAg
MC42MjQgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAg
ICAgICAgOSAgCiAgICB1X21lbWNfdWlfdG9wX2F4aS9tZW1faW50ZmMwL2Rkcl9waHlfdG9wMC91
X2Rkcl9tY19waHlfd3JhcHBlci91X2Rkcl9tY19waHkvZGRyX3BoeV80bGFuZXNfMC51X2Rkcl9w
aHlfNGxhbmVzL2Rkcl9ieXRlX2xhbmVfQi5kZHJfYnl0ZV9sYW5lX0IvaXNlcmRlc19jbGtfMSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjQ2OCAgICAgICAgMC4wMDAgICAgICAg
ICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDE2ICAKICAgICAgaXNlcmRlc19j
bGtkaXZfNSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxLjU2OSAgICAgICAgMC4wMDAg
ICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAzMyAgICAgICAgMC4wNzAg
ICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMzMg
ICAgICAgIDAuNjI0ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAg
ICAgICAgICAgICAgIDkgIAogICAgdV9tZW1jX3VpX3RvcF9heGkvbWVtX2ludGZjMC9kZHJfcGh5
X3RvcDAvdV9kZHJfbWNfcGh5X3dyYXBwZXIvdV9kZHJfbWNfcGh5L2Rkcl9waHlfNGxhbmVzXzAu
dV9kZHJfcGh5XzRsYW5lcy9kZHJfYnl0ZV9sYW5lX0MuZGRyX2J5dGVfbGFuZV9DL2lzZXJkZXNf
Y2xrXzEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC40NjggICAgICAgIDAuMDAw
ICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxNiAgCiAgICAgIGlz
ZXJkZXNfY2xrZGl2XzYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMS41NzQgICAgICAg
IDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMzMgICAgICAg
IDAuMDcwICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAg
ICAgIDMzICAgICAgICAwLjYyNCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAg
ICAgICAgICAgICAgICAgICAgICA5ICAKICAgIHVfbWVtY191aV90b3BfYXhpL21lbV9pbnRmYzAv
ZGRyX3BoeV90b3AwL3VfZGRyX21jX3BoeV93cmFwcGVyL3VfZGRyX21jX3BoeS9kZHJfcGh5XzRs
YW5lc18wLnVfZGRyX3BoeV80bGFuZXMvZGRyX2J5dGVfbGFuZV9ELmRkcl9ieXRlX2xhbmVfRC9p
c2VyZGVzX2Nsa18xICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuNDY4ICAgICAg
ICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMTYgIAog
ICAgICBpc2VyZGVzX2Nsa2Rpdl83ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEuNTUw
ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDMz
ICAgICAgICAwLjA3MCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAg
ICAgICAgICAgICAzMyAgICAgICAgMC42MjQgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAg
ICAgICAwICAgICAgICAgICAgICAgICAgICAgOSAgCiAgbWVtX3JlZmNsa18xICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMC40NjEgICAgICAgIDAuMDAwICAgICAgICAgICAg
ICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDIgICAgICAgIDAuMzI0ICAgICAgICAwLjAw
MCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAyICAgICAgICAwLjIz
NCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAg
IDE1ICAKICAgIG9zZXJkZXNfY2xrXzEwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAwLjQ3NCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAg
ICAgICAgNCAgICAgICAgMC4zNzEgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAg
ICAgICAgICAgICAgICAgICAgIDQgICAgICAgIDAuNDY4ICAgICAgICAwLjAwMCAgICAgICAgICAg
ICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMTIgIAogICAgICBvc2VyZGVzX2Nsa2Rp
dl8xMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEuNzkxICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDM2ICAgICAgICAwLjA2NiAgICAg
ICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAzNiAgICAg
ICAgMC42MjQgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAg
ICAgICAgICAxMSAgCiAgICBvc2VyZGVzX2Nsa18xMSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgMC40ODYgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAg
ICAgICAgICAgICAgIDQgICAgICAgIDAuMzY0ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAg
ICAgICAwICAgICAgICAgICAgICAgICAgICA0ICAgICAgICAwLjQ2OCAgICAgICAgMC4wMDAgICAg
ICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEyICAKICAgICAgb3NlcmRl
c19jbGtkaXZfMTEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxLjg5NSAgICAgICAgMC4w
MDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAzNiAgICAgICAgMC4w
NjIgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAg
MzYgICAgICAgIDAuNjI0ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAg
ICAgICAgICAgICAgICAgMTEgIAogICAgb3NlcmRlc19jbGtfMTIgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC40NjggICAgICAgIDAu
MDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAgMSAgCiAgICAg
IG9zZXJkZXNfY2xrZGl2XzEyICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNS4xNjkgICAg
ICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDQgICAg
ICAgIDAuMDcyICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAg
ICAgICAgICA0ICAgICAgICAyLjE2MyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAg
IDAgICAgICAgICAgICAgICAgICAgICAyICAKICAgIG9zZXJkZXNfY2xrXzEzICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuNDY4ICAg
ICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgIDgg
IAogICAgICBvc2VyZGVzX2Nsa2Rpdl8xMyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDUu
MTU5ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAg
IDI4ICAgICAgICAwLjA3MiAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAg
ICAgICAgICAgICAgICAyOCAgICAgICAgMi4xNjMgICAgICAgIDAuMDAwICAgICAgICAgICAgICAg
ICAgICAgICAwICAgICAgICAgICAgICAgICAgICAgOCAgCiAgICBvc2VyZGVzX2Nsa18xNCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAw
LjQ2OCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAg
ICAgICA3ICAKICAgICAgb3NlcmRlc19jbGtkaXZfMTQgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA1LjE2MCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAg
ICAgICAgICAyOCAgICAgICAgMC4wNzAgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAg
IDAgICAgICAgICAgICAgICAgICAgMjggICAgICAgIDIuMTYzICAgICAgICAwLjAwMCAgICAgICAg
ICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgIDggIAogICAgb3NlcmRlc19jbGtf
MTUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgMC40NjggICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAg
ICAgICAgICAgICAxMCAgCiAgICAgIG9zZXJkZXNfY2xrZGl2XzE1ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgNC45NzIgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAg
ICAgICAgICAgICAgICAgNDAgICAgICAgIDAuMDYyICAgICAgICAwLjAwMCAgICAgICAgICAgICAg
ICAgICAgICAwICAgICAgICAgICAgICAgICAgIDQwICAgICAgICAyLjE2MyAgICAgICAgMC4wMDAg
ICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDExICAKICAgIG9zZXJk
ZXNfY2xrXzggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjQ3OSAgICAgICAg
MC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgNCAgICAgICAg
MC4zNjkgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAg
ICAgIDQgICAgICAgIDAuNDY4ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAg
ICAgICAgICAgICAgICAgICAgMTIgIAogICAgICBvc2VyZGVzX2Nsa2Rpdl84ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDIuMDkyICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAg
ICAwICAgICAgICAgICAgICAgICAgIDM2ICAgICAgICAwLjA2NCAgICAgICAgMC4wMDAgICAgICAg
ICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAzNiAgICAgICAgMC42MjQgICAgICAg
IDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxMSAgCiAg
ICBvc2VyZGVzX2Nsa185ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC40NjYg
ICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDQg
ICAgICAgIDAuMzc1ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAg
ICAgICAgICAgICA0ICAgICAgICAwLjQ2OCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAg
ICAgIDAgICAgICAgICAgICAgICAgICAgIDEyICAKICAgICAgb3NlcmRlc19jbGtkaXZfOSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAyLjA4MiAgICAgICAgMC4wMDAgICAgICAgICAgICAg
ICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAzNiAgICAgICAgMC4wNjggICAgICAgIDAuMDAw
ICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMzYgICAgICAgIDAuNjI0
ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAg
MTEgIAogIHBsbF9jbGszX291dF8xICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMS41NzcgICAgICAgIDAuMDAwICAgICAgICAgICAg
ICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAgMyAgCiAgICBkZHIzX3VpX2NsayAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC4yMTUgICAgICAgIDAuMDAwICAgICAg
ICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgNTExNzMgICAgICAgIDAuMDUxICAgICAg
ICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgIDUxMTczICAgICAg
ICAxLjgyNyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAg
ICAgIDIxMjgxICAKICAgIGRkcjNfdWlfY2xrXzJ4ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAzLjcyOSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAg
ICAgICAgICAgICAxNiAgICAgICAgMC4xMTkgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAg
ICAgIDAgICAgICAgICAgICAgICAgICAgMTYgICAgICAgIDUuNzU0ICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMjAgIAogIHBsbF9jbGtmYm91
dF8xICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgOC45MjkgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAg
ICAgICAgICAgICAgICAgMiAgCiAgc3luY19wdWxzZV8xICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjQ2NiAgICAgICAgMC4w
MDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDE1ICAKZnBnYV9j
bGtfYSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDEuNzU1ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAg
MCAgICAgICAgICAgICAgICAgICAgIDEgIAogIHJhZGlvX2NsayAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDAuMTIwICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAg
ICAgICAwICAgICAgICAgICAgICAgNDc3MDIzICAgICAgICAwLjA1MCAgICAgICAgMC4wMDAgICAg
ICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgIDQ3NzAyMyAgICAgICAgMi40ODcgICAg
ICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgIDE4Mjg5OCAg
CiAgcmFkaW9fY2xrX2ZiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA1LjEwMiAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAg
ICAgICAgIDAgICAgICAgICAgICAgICAgICAgICAzICAKZnBnYV9jbGtfYiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEu
NzU1ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAg
ICAgIDEgIAogIHJhZGlvX2Nsa19iICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDIuNjExICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAg
ICAgICAgMjAyICAgICAgICAwLjEwOCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAg
MCAgICAgICAgICAgICAgICAgIDIwMiAgICAgICAgMi44NTUgICAgICAgIDAuMDAwICAgICAgICAg
ICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDE0NyAgCiAgcmFkaW9fY2xrX2JfZmIg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA1LjEwMiAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAg
ICAgICAgICAgICAzICAKbWVhc19jbGtfcmVmICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEuNTAwICAgICAgICAwLjAwMCAg
ICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgIDIgIAogIGRkcjNfZG1h
X2Nsa19taXNjX2Nsb2NrX2dlbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuMDEwICAgICAgICAw
LjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgIDQyNDAxICAgICAgICAw
LjA1MyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICA0
MjQwMSAgICAgICAgMC44NzggICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAg
ICAgICAgICAgICAgICAxNTI1NyAgCiAgbWVhc19jbGsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgMC43MTAgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAg
IDAgICAgICAgICAgICAgICAgIDM0MTggICAgICAgIDAuMDUzICAgICAgICAwLjAwMCAgICAgICAg
ICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAzNDE4ICAgICAgICAyLjEyMCAgICAgICAg
MC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAxODEzICAKICBt
ZWFzX2Nsa19mYiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgMTYuOTI5ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAg
ICAgMCAgICAgICAgICAgICAgICAgICAgIDIgIAptZ3RfY2xrX2RiYSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDUuNzE2ICAgICAgICAwLjAwMCAgICAgICAgICAgICAg
ICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAgICAgICAwLjMyMSAgICAgICAgMC4wMDAg
ICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMSAgICAgICAgMi44NTUg
ICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAg
OSAgCm1ndF9jbGtfZGJiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Ni4wNzcgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAg
ICAgIDEgICAgICAgIDAuMTQ5ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAg
ICAgICAgICAgICAgICAgICAxICAgICAgICAyLjg1NSAgICAgICAgMC4wMDAgICAgICAgICAgICAg
ICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgICA5ICAKbmV0X2NsayAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDYuNTkyICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAg
ICAgICAgIDEgIApyZWZfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDEuNDczICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAg
ICAgICAgICAxMDkwICAgICAgICAwLjEwOCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAg
ICAgMCAgICAgICAgICAgICAgICAgMTA5MCAgICAgICAxOS42MDAgICAgICAgIDAuMDAwICAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDc5NyAgCnNmcF93cmFwcGVyXzAv
bGFuZXNbMF0ubGFuZV9pL21ndF9pb19pL3Rlbl9naWdlX3BoeV9pL3Rlbl9naWdfZXRoX3Bjc19w
bWFfaS9pbnN0L2d0MF9ndHdpemFyZF8xMGdiYXNlcl9tdWx0aV9ndF9pL2d0MF9ndHdpemFyZF8x
MGdiYXNlcl9pL2d0eGUyX2kvUlhPVVRDTEsgICAgICAgICAgICAgMC4wMjkgICAgICAgIDAuMDAw
ICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgIDM3NzQgICAgICAgIDAuMDU1
ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAzNzc0
ICAgICAgICAwLjAwMSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAg
ICAgICAgICAgICAxNDY0ICAKc2ZwX3dyYXBwZXJfMC9sYW5lc1swXS5sYW5lX2kvbWd0X2lvX2kv
dGVuX2dpZ2VfcGh5X2kvdGVuX2dpZ19ldGhfcGNzX3BtYV9pL2luc3QvZ3QwX2d0d2l6YXJkXzEw
Z2Jhc2VyX211bHRpX2d0X2kvZ3QwX2d0d2l6YXJkXzEwZ2Jhc2VyX2kvZ3R4ZTJfaS9UWE9VVENM
SyAgICAgICAgICAgICAwLjc1NSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAg
ICAgICAgICAgICAgICAgIDMzOSAgICAgICAgMC4wODUgICAgICAgIDAuMDAwICAgICAgICAgICAg
ICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAzMzkgICAgICAgIDAuMDAxICAgICAgICAwLjAw
MCAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAyMDMgIApzZnBfd3Jh
cHBlcl8xL2xhbmVzWzBdLmxhbmVfaS9tZ3RfaW9faS90ZW5fZ2lnZV9waHlfaS90ZW5fZ2lnX2V0
aF9wY3NfcG1hX2kvaW5zdC9ndDBfZ3R3aXphcmRfMTBnYmFzZXJfbXVsdGlfZ3RfaS9ndDBfZ3R3
aXphcmRfMTBnYmFzZXJfaS9ndHhlMl9pL1JYT1VUQ0xLICAgICAgICAgICAgIDAuMjE4ICAgICAg
ICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAzNzc0ICAgICAg
ICAwLjA1OCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAg
ICAgMzc3NCAgICAgICAgMC4wMDEgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAw
ICAgICAgICAgICAgICAgICAgMTQ2NCAgCnNmcF93cmFwcGVyXzEvbGFuZXNbMF0ubGFuZV9pL21n
dF9pb19pL3Rlbl9naWdlX3BoeV9pL3Rlbl9naWdfZXRoX3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdp
emFyZF8xMGdiYXNlcl9tdWx0aV9ndF9pL2d0MF9ndHdpemFyZF8xMGdiYXNlcl9pL2d0eGUyX2kv
VFhPVVRDTEsgICAgICAgICAgICAgMC45MjQgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAg
ICAgIDAgICAgICAgICAgICAgICAgICAzMzkgICAgICAgIDAuMTA4ICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgMzM5ICAgICAgICAwLjAwMSAgICAg
ICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMjAzICAK
eGdlX2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjcx
OSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAxMzAy
OCAgICAgICAgMC4wNTUgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAg
ICAgICAgICAgMTMwMjYgICAgICAgIDIuNDMyICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAg
ICAgICAgMCAgICAgICAgICAgICAgICAgIDY3NzYgIAogIGRjbGtfYnVmICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAuMDM0ICAgICAgICAwLjAwMCAgICAgICAgICAg
ICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgMzcwICAgICAgICAwLjEwOCAgICAgICAgMC4w
MDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgIDM3MCAgICAgICAgNi4w
MDAgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAg
IDI0NSAgCgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCnwgSW50ZXIg
Q2xvY2sgVGFibGUKfCAtLS0tLS0tLS0tLS0tLS0tLQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCkZyb20gQ2xvY2sgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBUbyBDbG9jayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFdOUyhucykg
ICAgICBUTlMobnMpICBUTlMgRmFpbGluZyBFbmRwb2ludHMgIFROUyBUb3RhbCBFbmRwb2ludHMg
ICAgICBXSFMobnMpICAgICAgVEhTKG5zKSAgVEhTIEZhaWxpbmcgRW5kcG9pbnRzICBUSFMgVG90
YWwgRW5kcG9pbnRzICAKLS0tLS0tLS0tLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IC0tLS0tLS0tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0tLS0tLSAg
ICAgIC0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLSAg
ICAgIC0tLS0tLS0gICAgICAtLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0gIC0tLS0tLS0t
LS0tLS0tLS0tLS0gIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
YXN5bmNfb3V0X2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDAuNDQzICAg
ICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA0ICAg
ICAgICAzLjI4MyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAg
ICAgICAgICAgNCAgCmJ1c19jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBh
c3luY19vdXRfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAzNi4wMzMgICAg
ICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDUgICAg
ICAgIDMuMjY2ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAg
ICAgICAgICA1ICAKY2xrNDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFz
eW5jX291dF9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDM5Ljg2MSAgICAg
ICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMiAgICAg
ICAgNS4wNzAgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAg
ICAgICAgIDIgIApyYWRpb19jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXN5
bmNfb3V0X2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDMuODg5ICAgICAg
ICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA3ICAgICAg
ICAxLjAwNyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAg
ICAgICAgNyAgCmF0cl9idXNfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhc3lu
Y19vdXRfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA0Ny45NDQgICAgICAg
IDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEgICAgICAg
IDEuNDA2ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAg
ICAgICAxICAKZHNhX2J1c19jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFzeW5j
X291dF9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQ3LjkxNCAgICAgICAg
MC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMSAgICAgICAg
MS40MzYgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAg
ICAgIDEgIApmcF9ncGlvX2J1c19jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXN5bmNf
b3V0X2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDQuMDIzICAgICAgICAw
LjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAgICAgICA0
LjYxNCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAg
ICAgMSAgCnJhZGlvX2Nsa19iICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhc3luY19v
dXRfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA0Ny45NjkgICAgICAgIDAu
MDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEgICAgICAgIDAu
MzM1ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAg
ICAxICAKcmVmX2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFzeW5jX291
dF9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQxLjk0MyAgICAgICAgMC4w
MDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMiAgICAgICAgMy43
MDIgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAg
IDIgIApzZnBfd3JhcHBlcl8wL2xhbmVzWzBdLmxhbmVfaS9tZ3RfaW9faS90ZW5fZ2lnZV9waHlf
aS90ZW5fZ2lnX2V0aF9wY3NfcG1hX2kvaW5zdC9ndDBfZ3R3aXphcmRfMTBnYmFzZXJfbXVsdGlf
Z3RfaS9ndDBfZ3R3aXphcmRfMTBnYmFzZXJfaS9ndHhlMl9pL1RYT1VUQ0xLICAgYXN5bmNfb3V0
X2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMzUuODAzICAgICAgICAwLjAw
MCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAgICAgICA3Ljg5
MCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAg
MSAgCnNmcF93cmFwcGVyXzEvbGFuZXNbMF0ubGFuZV9pL21ndF9pb19pL3Rlbl9naWdlX3BoeV9p
L3Rlbl9naWdfZXRoX3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdpemFyZF8xMGdiYXNlcl9tdWx0aV9n
dF9pL2d0MF9ndHdpemFyZF8xMGdiYXNlcl9pL2d0eGUyX2kvVFhPVVRDTEsgICBhc3luY19vdXRf
Y2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAzNS40NDMgICAgICAgIDAuMDAw
ICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEgICAgICAgIDguMDU5
ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAx
ICAKZGRyM191aV9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVfbWVtY191aV90
b3BfYXhpL21lbV9pbnRmYzAvZGRyX3BoeV90b3AwL3VfZGRyX21jX3BoeV93cmFwcGVyL3VfZGRy
X21jX3BoeS9kZHJfcGh5XzRsYW5lc18wLnVfZGRyX3BoeV80bGFuZXMvZGRyX2J5dGVfbGFuZV9B
LmRkcl9ieXRlX2xhbmVfQS9pc2VyZGVzX2Nsa18xICAgICAgICA0LjI5MyAgICAgICAgMC4wMDAg
ICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgOCAgICAgICAyMy40MDEg
ICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDgg
IApkZHIzX3VpX2NsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdV9tZW1jX3VpX3Rv
cF9heGkvbWVtX2ludGZjMC9kZHJfcGh5X3RvcDAvdV9kZHJfbWNfcGh5X3dyYXBwZXIvdV9kZHJf
bWNfcGh5L2Rkcl9waHlfNGxhbmVzXzAudV9kZHJfcGh5XzRsYW5lcy9kZHJfYnl0ZV9sYW5lX0Iu
ZGRyX2J5dGVfbGFuZV9CL2lzZXJkZXNfY2xrXzEgICAgICAgIDMuNTc1ICAgICAgICAwLjAwMCAg
ICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA4ICAgICAgIDIzLjk3NCAg
ICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgOCAg
CmRkcjNfdWlfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1X21lbWNfdWlfdG9w
X2F4aS9tZW1faW50ZmMwL2Rkcl9waHlfdG9wMC91X2Rkcl9tY19waHlfd3JhcHBlci91X2Rkcl9t
Y19waHkvZGRyX3BoeV80bGFuZXNfMC51X2Rkcl9waHlfNGxhbmVzL2Rkcl9ieXRlX2xhbmVfQy5k
ZHJfYnl0ZV9sYW5lX0MvaXNlcmRlc19jbGtfMSAgICAgICAgMi44MzIgICAgICAgIDAuMDAwICAg
ICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDggICAgICAgMjQuNDIyICAg
ICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA4ICAK
ZGRyM191aV9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVfbWVtY191aV90b3Bf
YXhpL21lbV9pbnRmYzAvZGRyX3BoeV90b3AwL3VfZGRyX21jX3BoeV93cmFwcGVyL3VfZGRyX21j
X3BoeS9kZHJfcGh5XzRsYW5lc18wLnVfZGRyX3BoeV80bGFuZXMvZGRyX2J5dGVfbGFuZV9ELmRk
cl9ieXRlX2xhbmVfRC9pc2VyZGVzX2Nsa18xICAgICAgICAxLjc3MCAgICAgICAgMC4wMDAgICAg
ICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgOCAgICAgICAyNC44ODggICAg
ICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDggIApz
eW5jX3B1bHNlXzEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWVtX3JlZmNsa18xICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuMzc1ICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAyICAgICAgICAwLjIwMCAgICAg
ICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMiAgCm9z
ZXJkZXNfY2xrXzEwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvc2VyZGVzX2Nsa2Rpdl8x
MCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC43MjIgICAgICAgIDAuMDAwICAgICAg
ICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMTUgICAgICAgIDAuMDc1ICAgICAg
ICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDE1ICAKb3Nl
cmRlc19jbGtfMTEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9zZXJkZXNfY2xrZGl2XzEx
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjQzMiAgICAgICAgMC4wMDAgICAgICAg
ICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAxNSAgICAgICAgMC4wOTQgICAgICAg
IDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMTUgIApvc2Vy
ZGVzX2Nsa18xMiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3NlcmRlc19jbGtkaXZfMTIg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuNzg5ICAgICAgICAwLjAwMCAgICAgICAg
ICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAyICAgICAgICAwLjA5NCAgICAgICAg
MC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMiAgCm9zZXJk
ZXNfY2xrXzEzICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvc2VyZGVzX2Nsa2Rpdl8xMyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMC43ODkgICAgICAgIDAuMDAwICAgICAgICAg
ICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDggICAgICAgIDAuMDc4ICAgICAgICAw
LjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA4ICAKb3NlcmRl
c19jbGtfMTQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9zZXJkZXNfY2xrZGl2XzE0ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLjc3MiAgICAgICAgMC4wMDAgICAgICAgICAg
ICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgOCAgICAgICAgMC4wOTQgICAgICAgIDAu
MDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDggIApvc2VyZGVz
X2Nsa18xNSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3NlcmRlc19jbGtkaXZfMTUgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuNDczICAgICAgICAwLjAwMCAgICAgICAgICAg
ICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDExICAgICAgICAwLjA5NCAgICAgICAgMC4w
MDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAxMSAgCm9zZXJkZXNf
Y2xrXzggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvc2VyZGVzX2Nsa2Rpdl84ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMC43ODkgICAgICAgIDAuMDAwICAgICAgICAgICAg
ICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMTUgICAgICAgIDAuMDczICAgICAgICAwLjAw
MCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgIDE1ICAKb3NlcmRlc19j
bGtfOSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9zZXJkZXNfY2xrZGl2XzkgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAwLjcxNSAgICAgICAgMC4wMDAgICAgICAgICAgICAg
ICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAxNSAgICAgICAgMC4wNzcgICAgICAgIDAuMDAw
ICAgICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgMTUgIApkZHIzX3VpX2Ns
a18yeCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGRyM191aV9jbGsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDMuNjIzICAgICAgICAwLjAwMCAgICAgICAgICAgICAg
ICAgICAgICAwICAgICAgICAgICAgICAgICAgICA1ICAgICAgICAwLjA5OCAgICAgICAgMC4wMDAg
ICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgNSAgCmRkcjNfdWlfY2xr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZHIzX3VpX2Nsa18yeCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgMC44NjMgICAgICAgIDAuMDAwICAgICAgICAgICAgICAg
ICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEgICAgICAgIDIuMDU5ICAgICAgICAwLjAwMCAg
ICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAKZnBfZ3Bpb19idXNf
Y2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJhZGlvX2NsayAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDM3Ljk2OSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAg
ICAgICAgMCAgICAgICAgICAgICAgICAgICAgMSAgICAgICAgNi4zODkgICAgICAgIDAuMDAwICAg
ICAgICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEgIApwbF9zcGlfY2xrX2Eg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmFkaW9fY2xrICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgODQuNjc0ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAg
ICAgICAwICAgICAgICAgICAgICAgICAgICAxICAgICAgIDE3LjczMSAgICAgICAgMC4wMDAgICAg
ICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMSAgCnBsX3NwaV9jbGtfYiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByYWRpb19jbGsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA4NC4xMjkgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAg
ICAgIDAgICAgICAgICAgICAgICAgICAgIDEgICAgICAgMTguMDMwICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAKZnBnYV9jbGtfYV92ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJhZGlvX2NsayAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAxLjAyNCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAg
ICAgMCAgICAgICAgICAgICAgICAgICAgMSAgICAgICAgMS4wNTYgICAgICAgIDAuMDAwICAgICAg
ICAgICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDEgIApyYWRpb19jbGtfYiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcmFkaW9fY2xrICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDMuOTIyICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAg
ICAwICAgICAgICAgICAgICAgICAgICAxICAgICAgICAwLjYwMCAgICAgICAgMC4wMDAgICAgICAg
ICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMSAgCnJhZGlvX2NsayAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBhdHJfYnVzX2NsayAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgMS4zNjYgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAg
IDAgICAgICAgICAgICAgICAgICAgIDcgICAgICAgIDAuMzYxICAgICAgICAwLjAwMCAgICAgICAg
ICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA3ICAKcmFkaW9fY2xrICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGRzYV9idXNfY2xrICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAwLjI5MCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAg
MCAgICAgICAgICAgICAgICAgICA0NyAgICAgICAgMC4yNjEgICAgICAgIDAuMDAwICAgICAgICAg
ICAgICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgNDcgIApyYWRpb19jbGsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZnBfZ3Bpb19idXNfY2xrICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDMuMjg5ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAw
ICAgICAgICAgICAgICAgICAgIDExICAgICAgICAwLjE3NyAgICAgICAgMC4wMDAgICAgICAgICAg
ICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAxMSAgCnJhZGlvX2NsayAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBwbF9zcGlfY2xrX2EgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgNy45MjYgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAg
ICAgICAgICAgICAgICAgICAgIDQgICAgICAgIDguNDc0ICAgICAgICAwLjAwMCAgICAgICAgICAg
ICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICA0ICAKcmFkaW9fY2xrICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHBsX3NwaV9jbGtfYiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA4LjMyNyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAg
ICAgICAgICAgICAgICAgICAgNCAgICAgICAgOC4wNjAgICAgICAgIDAuMDAwICAgICAgICAgICAg
ICAgICAgICAgIDAgICAgICAgICAgICAgICAgICAgIDQgIApyYWRpb19jbGsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZnBnYV9jbGtfYV92ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDAuMjYwICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAg
ICAgICAgICAgICAgICAgICAxICAgICAgICAwLjU2NSAgICAgICAgMC4wMDAgICAgICAgICAgICAg
ICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMSAgCmZwZ2FfY2xrX2JfdiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByYWRpb19jbGtfYiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgMS40MzEgICAgICAgIDAuMDAwICAgICAgICAgICAgICAgICAgICAgIDAgICAg
ICAgICAgICAgICAgICAgIDEgICAgICAgIDAuNzY1ICAgICAgICAwLjAwMCAgICAgICAgICAgICAg
ICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAKZGNsa19idWYgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHhnZV9jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAyLjMzMyAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAg
ICAgICAgICAgICAgICAzMiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp4Z2VfY2xrICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZGNsa19idWYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDIuMDA3ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAg
ICAgICAgICAgICAgIDUyICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCnwgT3RoZXIgUGF0aCBHcm91cHMgVGFibGUKfCAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KClBhdGgg
R3JvdXAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZyb20gQ2xvY2sgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFRvIENsb2NrICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBXTlMobnMpICAgICAgVE5TKG5zKSAgVE5TIEZhaWxpbmcgRW5kcG9pbnRzICBU
TlMgVG90YWwgRW5kcG9pbnRzICAgICAgV0hTKG5zKSAgICAgIFRIUyhucykgIFRIUyBGYWlsaW5n
IEVuZHBvaW50cyAgVEhTIFRvdGFsIEVuZHBvaW50cyAgCi0tLS0tLS0tLS0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tLS0tLS0tLS0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC0tLS0tLS0tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLS0tLS0t
ICAgICAgLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLS0t
ICAgICAgLS0tLS0tLSAgICAgIC0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0t
LS0tLS0tLS0tLS0tLSAgCioqYXN5bmNfZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGJ1c19jbGsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1c19jbGsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuMDkyICAgICAgICAwLjAwMCAgICAg
ICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgIDE5OTMwICAgICAgICAwLjE0MCAgICAg
ICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAxOTkzMCAgCioq
YXN5bmNfZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsazQwICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNsazQwICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgMTAuMTU3ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAw
ICAgICAgICAgICAgICAgICA0NTQ3ICAgICAgICAwLjIwNSAgICAgICAgMC4wMDAgICAgICAgICAg
ICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgNDU0NyAgCioqYXN5bmNfZGVmYXVsdCoqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGRkcjNfZG1hX2Nsa19taXNjX2Nsb2NrX2dlbiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGRkcjNfZG1hX2Nsa19taXNjX2Nsb2NrX2dlbiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAu
MTM5ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAx
NjM5ICAgICAgICAwLjE2MSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAg
ICAgICAgICAgICAgMTYzOSAgCioqYXN5bmNfZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRkcjNfdWlfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRkcjNfdWlfY2xr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuNjUxICAgICAgICAwLjAwMCAg
ICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgNDk5ICAgICAgICAwLjE1OSAg
ICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgIDQ5OSAg
CioqYXN5bmNfZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJhZGlvX2NsayAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJhZGlvX2NsayAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDEuMzgwICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAg
ICAwICAgICAgICAgICAgICAgIDEwODM2ICAgICAgICAwLjExNCAgICAgICAgMC4wMDAgICAgICAg
ICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAxMDgzNiAgCioqYXN5bmNfZGVmYXVsdCoq
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHNmcF93cmFwcGVyXzAvbGFuZXNbMF0ubGFuZV9pL21n
dF9pb19pL3Rlbl9naWdlX3BoeV9pL3Rlbl9naWdfZXRoX3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdp
emFyZF8xMGdiYXNlcl9tdWx0aV9ndF9pL2d0MF9ndHdpemFyZF8xMGdiYXNlcl9pL2d0eGUyX2kv
VFhPVVRDTEsgIHNmcF93cmFwcGVyXzAvbGFuZXNbMF0ubGFuZV9pL21ndF9pb19pL3Rlbl9naWdl
X3BoeV9pL3Rlbl9naWdfZXRoX3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdpemFyZF8xMGdiYXNlcl9t
dWx0aV9ndF9pL2d0MF9ndHdpemFyZF8xMGdiYXNlcl9pL2d0eGUyX2kvVFhPVVRDTEsgICAgICAg
IDIuMzA0ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAg
ICAgICAxICAgICAgICAwLjI5NSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAg
ICAgICAgICAgICAgICAgICAgMSAgCioqYXN5bmNfZGVmYXVsdCoqICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHNmcF93cmFwcGVyXzEvbGFuZXNbMF0ubGFuZV9pL21ndF9pb19pL3Rlbl9naWdlX3Bo
eV9pL3Rlbl9naWdfZXRoX3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdpemFyZF8xMGdiYXNlcl9tdWx0
aV9ndF9pL2d0MF9ndHdpemFyZF8xMGdiYXNlcl9pL2d0eGUyX2kvVFhPVVRDTEsgIHNmcF93cmFw
cGVyXzEvbGFuZXNbMF0ubGFuZV9pL21ndF9pb19pL3Rlbl9naWdlX3BoeV9pL3Rlbl9naWdfZXRo
X3Bjc19wbWFfaS9pbnN0L2d0MF9ndHdpemFyZF8xMGdiYXNlcl9tdWx0aV9ndF9pL2d0MF9ndHdp
emFyZF8xMGdiYXNlcl9pL2d0eGUyX2kvVFhPVVRDTEsgICAgICAgIDIuMjI2ICAgICAgICAwLjAw
MCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAxICAgICAgICAwLjMy
NSAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAg
MSAgCioqYXN5bmNfZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHhnZV9jbGsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHhnZV9jbGsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDAuNTc0ICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAg
ICAgICAwICAgICAgICAgICAgICAgICAyMDkwICAgICAgICAwLjcyOSAgICAgICAgMC4wMDAgICAg
ICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgMjA5MCAgCioqZGVmYXVsdCoqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDEuNTMzICAgICAgICAwLjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAg
ICAgICAgIDE4ICAgICAgICAxLjAwMCAgICAgICAgMC4wMDAgICAgICAgICAgICAgICAgICAgICAg
MCAgICAgICAgICAgICAgICAgICAxOCAgCioqZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGRkcjNfdWlfY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAuNDMwICAgICAgICAw
LjAwMCAgICAgICAgICAgICAgICAgICAgICAwICAgICAgICAgICAgICAgICAgICAyICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgCioqZGVmYXVsdCoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlucHV0IHBv
cnQgY2xvY2sgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDEuNDg3ICAgICAgICAwLjAwMCAgICAgICAgICAgICAg
ICAgICAgICAwICAgICAgICAgICAgICAgICAgICAyICAgICAgICAxLjQ1MyAgICAgICAgMC4wMDAg
ICAgICAgICAgICAgICAgICAgICAgMCAgICAgICAgICAgICAgICAgICAgMiAgCgoK
--000000000000cf0861059d77153b
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000cf0861059d77153b--

