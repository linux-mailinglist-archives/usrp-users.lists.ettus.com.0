Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A529052A365
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 15:30:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE4CD384A4A
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 09:30:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652794232; bh=dgKfjJTIcWquaku8aiMPbFJh0H/fzb/QPFDlC9quOGc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=IZBd+jjYJVh1ObxJPWKVDOXuzqJqp3XzvryRuIUw2u5IFDR8AyRqtZR5LYXOOrv88
	 haqysCF9ha8g6/AUUBiMElWihPkwVS8n8SFdss0AfT6JdUbEk67kbS41J5QuWZ+Yds
	 qRvrjndJo9UiyHywOf/v/w5wWOEfIssBHVWMfB0y5WUaEAHS3CUdcK0+YYRvga3s3e
	 ia06DtPjsOhbW/+GsUW2Hb4M4QAXiDdwgSZ51uGt24OZPi36VK/twslxEcuDyqJSKR
	 wn6idbzyYPhKLvcPq3nAjxnvWTKEr9yZdDC+zJB+quoGz4oj9NJex1lQj4sDrh4+A0
	 WULHzpo/0iZLw==
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 8753F38481B
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 09:29:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="TrHauIV4";
	dkim-atps=neutral
Received: by mail-pl1-f176.google.com with SMTP id n8so17344052plh.1
        for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 06:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=PgKUHQu0k8ipJTa9XbSDngkMLKNbfUAC8EiJ9nP3RO0=;
        b=TrHauIV4m3aUgoMoD1n+vmvrvxAhRUQ7WoA7ENvck1XhuZEXLRNk+OoMN+4b2zI6yL
         HDWpYaF3iFEuxVTC1MXLpU30kVt/mC1B8DotWPsu10uln3668ccn+u9fKCqq59L1L7KI
         H1kMk8e8MVhLLPq79d1elatHN3qom7J8aBRw9RQEZDD2ccXP/8IKHYafaKGM7IMAHzE2
         /5tc8ZCAa9DWa9sJFGWqkesAE+wN/shx8tJ9pSyHyC2Ortu2eF2RSL1YTXZbJ3QyVumi
         rEwSMc/jNp0ocV8CYZ+LY+PE/AaCSpEszocv2MQ39ZsOLJRCC9NqZ1WqfaokZlGOzQ7Q
         oA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PgKUHQu0k8ipJTa9XbSDngkMLKNbfUAC8EiJ9nP3RO0=;
        b=1deQFyfbWB3fhKks8m/Lq6wD45wIFjTLIU5rLf5qVqM+NZTkmH0PI03xPpLGCN0mhX
         X94rXCQ6gGRazBbcDgPuAk6MhdkLo81z/MROERRpwss56SKo9QAWL3kaQoAeUTaEU8tr
         oGXE38ziF6K3ixkXJjSmREuWik1yHzY4cV0xwznvHUHmbR8fJuCeoQNHyvSCLAmd+YJ1
         uUu+0w5GhbDnjaelMhruDClX+jsgJvJBv/AtksQvS9+YE+oGS7ENcJeQVvwG8bTWufMU
         hN+nwHvp9LDMdL3/3nrYdijUdUWcoiJ2gOVJlS4NKF6g5bgQ3gonkm8iltTuV3mD9tqb
         sqEA==
X-Gm-Message-State: AOAM533uz09X+ttCvDRm1Ivczq1KJj1rapKVqblcwbdJxukSC2sqh4Dp
	LHZER0ZQjQu2UmTAQP/PPQND+qvHs8GpIIAcBuS/sMd3T8fMQA==
X-Google-Smtp-Source: ABdhPJzFNRBvSjGhG1W8OAlLtFLSFZq5SD6CWNJiyZL79crN1eypFa7OaeccCHfZ41/QU60tFFqLJDtswEiJMjO8pmU=
X-Received: by 2002:a17:902:7296:b0:14b:4bc6:e81 with SMTP id
 d22-20020a170902729600b0014b4bc60e81mr22157123pll.132.1652794165972; Tue, 17
 May 2022 06:29:25 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 17 May 2022 09:29:15 -0400
Message-ID: <CALER=b0-98SwN6fzT-1+KANF3o85e717dz0kFgAjgctf76Qu_A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: LTTARAKI7QQRBBVQKPX6XBB7466FMKEA
X-Message-ID-Hash: LTTARAKI7QQRBBVQKPX6XBB7466FMKEA
X-MailFrom: samir2@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problems with USRP X310 LibUHD error MATLAB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LTTARAKI7QQRBBVQKPX6XBB7466FMKEA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Shehla Amir via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Shehla Amir <samir2@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============7407089797707970859=="

--===============7407089797707970859==
Content-Type: multipart/alternative; boundary="00000000000026c64e05df35210e"

--00000000000026c64e05df35210e
Content-Type: text/plain; charset="UTF-8"

Hi,

I have been working with 2 USRP X310. Both have one daughter board
installed. I am facing multiple errors and I can't find relevant
documentation. They were working fine a week ago but now whenever I try to
connect using MATLAB I get the errors mentioned below. Can you please help
me in debugging this issue?

When I connect using MATLAB and use probesdru command I get the error
'Error: RuntimeError: Failure to create rfnoc_graph.'
and the *probesdru *command generate the following output:

'[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107500;
UHD_4.1.0.4-vendor
     [INFO] [X300] X300 initialization sequence...
     [INFO] [X300] Maximum frame size: 1472 bytes.
     [INFO] [GPS] No GPSDO found
     [INFO] [X300] Radio 1x clock: 200 MHz
     [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
EnvironmentError: IOError: Timed out getting recv buff for management
transaction
     [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
EnvironmentError: IOError: Timed out getting recv buff for management
transaction
     Error: RuntimeError: Failure to create rfnoc_graph.
     '
Moreover, when I use the *findsdru *command I get the following error:

---------- begin libuhd error output ----------
IO Error during GSM initialization. EnvironmentError: IOError: Timed out
getting recv buff for management transaction
---------- end libuhd error output ----------
---------- begin libuhd error output ----------
Caught exception while initializing graph: EnvironmentError: IOError: Timed
out getting recv buff for management transaction
---------- end libuhd error output ----------
---------- begin libuhd error output ----------
Error during initialization of block 0/DUC#0!
---------- end libuhd error output ----------
---------- begin libuhd error output ----------
Caught exception while initializing graph: RfnocError: OpTimeout: Control
operation timed out waiting for ACK
---------- end libuhd error output ----------
---------- begin libuhd error output ----------
Error during initialization of block 0/Radio#0!
---------- end libuhd error output ----------
---------- begin libuhd error output ----------
Caught exception while initializing graph: RfnocError: OpTimeout: Control
operation timed out waiting for ACK
---------- end libuhd error output ----------
---------- begin libuhd error output ----------
Caught exception while initializing graph: RfnocError: OpTimeout: Control
operation timed out waiting for ACK
---------- end libuhd error output ----------

%%%%%%%%%%%%%%%%%%%%%%%%%
While connecting through ubuntu uhd and using the command *ush_usrp_probe *I
get the following message:

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0ubuntu1~focal1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 2453333 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=2453333
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2453333 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=2453333
[WARNING] [UDP] The current recv_buff_size of 163840 is less than the
minimum recommended size of 816000 and may result in dropped packets on
some NICs
[WARNING] [UDP] The current send_buff_size of 163840 is less than the
minimum recommended size of 307200 and may result in dropped packets on
some NICs
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:32:8e:52
|   |   mac-addr1: 00:80:2f:32:8e:53
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.137.4
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 321741F
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: b1ca7f3
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/Radio#0:0
|   |   * 0/Radio#0:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#0:0
|   |   * 0/Radio#0:1==>0/DDC#0:1
|   |   * 0/DDC#0:1==>0/SEP#1:0
|   |   * 0/SEP#2:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/Radio#1:0
|   |   * 0/Radio#1:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#2:0
|   |   * 0/Radio#1:1==>0/DDC#1:1
|   |   * 0/DDC#1:1==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/Replay#0:0
|   |   * 0/Replay#0:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/Replay#0:1
|   |   * 0/Replay#0:1==>0/SEP#5:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 3208538
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 3208538
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Unknown (0xffff) - 0
|   |   |   Antennas:
|   |   |   Sensors:
|   |   |   Freq range: 0.000 to 0.000 MHz
|   |   |   Gain Elements: None
|   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Unknown (0xffff) - 0
|   |   |   Antennas:
|   |   |   Sensors:
|   |   |   Freq range: 0.000 to 0.000 MHz
|   |   |   Gain Elements: None
|   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

Thanks,

--00000000000026c64e05df35210e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<br><br>I have been working with 2 USRP X310. Bot=
h have one daughter board installed. I am facing multiple errors and I can&=
#39;t find relevant documentation. They were working fine a week ago but no=
w whenever I try to connect using MATLAB I get the errors mentioned below. =
Can you please help me in debugging this issue?<br><br>When I connect using=
 MATLAB and use probesdru=C2=A0command I get the error &#39;Error: RuntimeE=
rror: Failure to create rfnoc_graph.&#39;<br>and the=C2=A0<i>probesdru=C2=
=A0</i>command=C2=A0generate the following output:=C2=A0<br><br><font size=
=3D"1">&#39;[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_10=
7500; UHD_4.1.0.4-vendor<br>=C2=A0 =C2=A0 =C2=A0[INFO] [X300] X300 initiali=
zation sequence...<br>=C2=A0 =C2=A0 =C2=A0[INFO] [X300] Maximum frame size:=
 1472 bytes.<br>=C2=A0 =C2=A0 =C2=A0[INFO] [GPS] No GPSDO found<br>=C2=A0 =
=C2=A0 =C2=A0[INFO] [X300] Radio 1x clock: 200 MHz<br>=C2=A0 =C2=A0 =C2=A0[=
ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError:=
 IOError: Timed out getting recv buff for management transaction<br>=C2=A0 =
=C2=A0 =C2=A0[ERROR] [RFNOC::GRAPH] Caught exception while initializing gra=
ph: EnvironmentError: IOError: Timed out getting recv buff for management t=
ransaction<br>=C2=A0 =C2=A0 =C2=A0Error: RuntimeError: Failure to create rf=
noc_graph.</font><br>=C2=A0 =C2=A0 =C2=A0&#39;<br>Moreover, when I use the=
=C2=A0<i>findsdru=C2=A0</i>command I get the following error:=C2=A0<div><br=
><font size=3D"1">---------- begin libuhd error output ----------<br>IO Err=
or during GSM initialization. EnvironmentError: IOError: Timed out getting =
recv buff for management transaction<br>---------- end libuhd error output =
----------<br>---------- begin libuhd error output ----------<br>Caught exc=
eption while initializing graph: EnvironmentError: IOError: Timed out getti=
ng recv buff for management transaction<br>---------- end libuhd error outp=
ut ----------<br>---------- begin libuhd error output ----------<br>Error d=
uring initialization of block 0/DUC#0!<br>---------- end libuhd error outpu=
t ----------<br>---------- begin libuhd error output ----------<br>Caught e=
xception while initializing graph: RfnocError: OpTimeout: Control operation=
 timed out waiting for ACK<br>---------- end libuhd error output ----------=
<br>---------- begin libuhd error output ----------<br>Error during initial=
ization of block 0/Radio#0!<br>---------- end libuhd error output ---------=
-<br>---------- begin libuhd error output ----------<br>Caught exception wh=
ile initializing graph: RfnocError: OpTimeout: Control operation timed out =
waiting for ACK<br>---------- end libuhd error output ----------<br>-------=
--- begin libuhd error output ----------<br>Caught exception while initiali=
zing graph: RfnocError: OpTimeout: Control operation timed out waiting for =
ACK<br>---------- end libuhd error output ----------<br></font><br>%%%%%%%%=
%%%%%%%%%%%%%%%%%<br>While connecting through ubuntu uhd and using the comm=
and <i>ush_usrp_probe=C2=A0</i>I get the following message:=C2=A0<br><br>[<=
font size=3D"1">INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD=
_4.2.0.0-0ubuntu1~focal1<br>[INFO] [X300] X300 initialization sequence...<b=
r>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x c=
lock: 200 MHz<br>[WARNING] [UDP] The recv buffer could not be resized suffi=
ciently.<br>Target sock buff size: 2453333 bytes.<br>Actual sock buff size:=
 163840 bytes.<br>See the transport application notes on buffer resizing.<b=
r>Please run: sudo sysctl -w net.core.rmem_max=3D2453333<br>[WARNING] [UDP]=
 The send buffer could not be resized sufficiently.<br>Target sock buff siz=
e: 2453333 bytes.<br>Actual sock buff size: 163840 bytes.<br>See the transp=
ort application notes on buffer resizing.<br>Please run: sudo sysctl -w net=
.core.wmem_max=3D2453333<br>[WARNING] [UDP] The current recv_buff_size of 1=
63840 is less than the minimum recommended size of 816000 and may result in=
 dropped packets on some NICs<br>[WARNING] [UDP] The current send_buff_size=
 of 163840 is less than the minimum recommended size of 307200 and may resu=
lt in dropped packets on some NICs<br>=C2=A0 ______________________________=
_______________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: X-Seri=
es Device<br>| =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310=
<br>| =C2=A0 | =C2=A0 revision: 11<br>| =C2=A0 | =C2=A0 revision_compat: 7<=
br>| =C2=A0 | =C2=A0 product: 30818<br>| =C2=A0 | =C2=A0 mac-addr0: 00:80:2=
f:32:8e:52<br>| =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:32:8e:53<br>| =C2=A0 | =
=C2=A0 gateway: 192.168.10.1<br>| =C2=A0 | =C2=A0 ip-addr0: 192.168.137.4<b=
r>| =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr1: 1=
92.168.20.2<br>| =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>| =C2=A0 | =C2=
=A0 ip-addr2: 192.168.30.2<br>| =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>|=
 =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>| =C2=A0 | =C2=A0 subnet3: 255.2=
55.255.0<br>| =C2=A0 | =C2=A0 serial: 321741F<br>| =C2=A0 | =C2=A0 FW Versi=
on: 6.0<br>| =C2=A0 | =C2=A0 FPGA Version: 38.0<br>| =C2=A0 | =C2=A0 FPGA g=
it hash: b1ca7f3<br>| =C2=A0 | =C2=A0 RFNoC capable: Yes<br>| =C2=A0 |<br>|=
 =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=A0 =
| =C2=A0 Clock sources: internal, external, gpsdo<br>| =C2=A0 | =C2=A0 Sens=
ors: ref_locked<br>| =C2=A0 =C2=A0 ________________________________________=
_____________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC =
blocks on this device:<br>| =C2=A0 |<br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =
=C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=
=A0 * 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Rad=
io#1<br>| =C2=A0 | =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 _________________=
____________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 Static connections on this device:<br>| =C2=A0 |<br>| =C2=
=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:=
0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:=
0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 =
* 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;=
0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 |=
 =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=
=3D=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>=
| =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0=
/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Rep=
lay#0:0<br>| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 =
| =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#=
0:1=3D=3D&gt;0/SEP#5:0<br>| =C2=A0 =C2=A0 _________________________________=
____________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0=
 TX Dboard: 0/Radio#0<br>| =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>| =C2=
=A0 | =C2=A0 Serial: 3208538<br>| =C2=A0 | =C2=A0 =C2=A0 __________________=
___________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Name: UBX TX<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 =
Freq range: 10.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range=
 PGA0: 0.0 to 31.5 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth rang=
e: 160000000.0 to 160000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Con=
nection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>| =
=C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>| =C2=A0 | =C2=A0 Serial: 320853=
8<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to =
6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 1600=
00000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 |=
 =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>| =C2=A0 | =C2=A0 =C2=A0 ____=
_________________________________________________<br>| =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Antennas:<br>| =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Freq range: 0.000 to 0.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain El=
ements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step=
 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 ________________________=
_____________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 RX Dboard: 0/Radio#1<br>| =C2=A0 | =C2=A0 =C2=A0 _______________=
______________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 =
| =C2=A0 Name: Unknown (0xffff) - 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas:=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq =
range: 0.000 to 0.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Uses LO offset: No</font><br><br>Thanks,=C2=A0<br><br><br></div></div>

--00000000000026c64e05df35210e--

--===============7407089797707970859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7407089797707970859==--
