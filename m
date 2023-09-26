Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7657E7AF58F
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 22:53:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0743438533C
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 16:53:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695761600; bh=hu3N4u1Pe9hLjkL/zg3X5RsU3mwWMGsWsIlf3+sJSr0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CCPPP/kxHIY/BTNDUsFX4Ugx0U5cxIsQGa+BSMLYMMIa1pQ4RqYImdQnGkAy4XK4l
	 OWnrOH8W3fsmR3Qw77wf5ewtnszJDeVNGmQRt411T6lVY4UP545h+uLPe6ahitPtNw
	 7e5wNHTk5lbHJq9GGCOALlvohh57z7DCaIa2DhOsS1w6UTP6Rv0wBNmvFXl33+C36K
	 hnjcc7BnUFzLqFDBGp6RRuoHAvVCKbo6VdsOvV+nOKdOzs2yiLpo3GijU/VS9nXAMY
	 SXO+YHNjYXXHZz2xKfz8n7ekieJD5Eu2XAmtmvocHkdagnI1/S8YlE0GPcchyufLn8
	 6sBmuwe54gTFg==
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E55A38533A
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 16:53:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="m/k63nJk";
	dkim-atps=neutral
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d865db5b4c7so8015898276.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 13:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1695761596; x=1696366396; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hmoTg5UHGcEmo6BhZN3WWrD6qD5OkoIVJR2EWtv5bsw=;
        b=m/k63nJkLogBQeB+8SIs22Ndldywr7nozkKK/Rgtym5bW9t8CL3nF1aF35F3dtM0yL
         Bmnlrz0aW0eCpPyHWLmKOVzklGeLyfzn6R6Z/2XLDw3C6QaJotvDZ8uEWtSe57zDEmVk
         sTInOZTpc0honFC8+5aAgJt11G6Q0sfCJIDmRqT1dawFUVcguDf97PcpaZcNJ5KWhGmr
         82h/vyfL7YbOhKd7cZjDcrSedRqq8oyljTswlXgGZMup2iu4GZjO9+3fy891cIO3pknc
         DwzKCwgp0AEln6Jab0MHOPV3I+CS1Udoc0TZFxXPJP0QCBAsgSYHX31PCXYMyE/1uPfT
         QQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695761596; x=1696366396;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hmoTg5UHGcEmo6BhZN3WWrD6qD5OkoIVJR2EWtv5bsw=;
        b=EJk0CO+RNyyaLBwyS8TEFDPL0sgjb04e6jJTcHxkbTR1jKOg8Am2yyNb7laaIFKocD
         R/XwrOg6BJcf1bfx0kpFyhh3oC6Cw/H0prKW+Wt3XzV2VD4C2heYVSBrwYWX3/mJjtR5
         5SS6vQWvZoTYpXJVCYSwO2QIf19Ql95eGXWw1fjv6kCja77kCcDzPGBvaLPrXfs48KMl
         eJeonR5gSy+eIqLtBjT1xhUsfRf1jOrEvcDOk6REwQM8BQP35p/N3EMR6jgkZxyNAqHz
         OPo6oTM2Q5JC+UB5tI3Ga3bMcF/cilKBleuL4bbr1ifB3mlwc11da7HhCZsUbtGK2sce
         4TCw==
X-Gm-Message-State: AOJu0Yx8ONZxLApctQy33bYuSMomK9IazLhEly5HGAfIitZijdYJ6+JZ
	S3AkrV0GlCNuAAEo6d8OHROUpg6iCegO3KrPM5rP6QZ0kJkbrtsGyd8=
X-Google-Smtp-Source: AGHT+IEZhB2UY14+VnTTqLXF7Y6aBnl4EICBOWnV9CzV91wH98bf77IpZINC8HNeNVaemKCQ7Ea5gHEv/ZmJanYqmMw=
X-Received: by 2002:a25:df97:0:b0:d78:3e:4cca with SMTP id w145-20020a25df97000000b00d78003e4ccamr65542ybg.10.1695761595628;
 Tue, 26 Sep 2023 13:53:15 -0700 (PDT)
MIME-Version: 1.0
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Tue, 26 Sep 2023 16:53:00 -0400
Message-ID: <CAErymBjsm1EFK_Py2RGfm7nyWzAkspg5=at5Cd+24v2XVnOkQQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RV7453AJNTQAQ3KB4XGHHDHAVEWI7MUU
X-Message-ID-Hash: RV7453AJNTQAQ3KB4XGHHDHAVEWI7MUU
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RV7453AJNTQAQ3KB4XGHHDHAVEWI7MUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7342374644286033238=="

--===============7342374644286033238==
Content-Type: multipart/alternative; boundary="00000000000088160a06064943e5"

--00000000000088160a06064943e5
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have installed gnuradio/uhd in 10 computers in a lab (almost identical
setups).
These are  Ubuntu 20.04.4 LTS focal
The connected USRPs (X300) work fine in all 10 computers.

However, two of them result in a core dump when trying to use calibrating
utilities as follows:

$ uhd_cal_tx_dc_offset

Creating the usrp device with: ,ignore_cal_file=1,ignore-cal-file=1...
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0ubuntu1~focal1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Running calibration for UBX TX
Daughterboard serial: 3158306
Calibration frequency range: 10 MHz -> 6000 MHz
Dterminate called without an active exception
Aborted (core dumped)


I found some similar questions on the Internet but not any definite answers.
Are there any ideas on how to proceed with investigating that?

thanks
Achilleas




FYI:

$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0ubuntu1~focal1
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 315C6B2
    addr: 192.168.10.2
    addr: 192.168.40.2
    fpga: HG
    name:
    product: X310
    type: x300

Also:

$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0ubuntu1~focal1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:22:64:6c
|   |   mac-addr1: 00:80:2f:22:64:6d
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 315C6B2
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: be53058
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
|   |   Serial: 3158306
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
|   |   Serial: 3158306
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

--00000000000088160a06064943e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I have installed gnu=
radio/uhd in 10 computers in a lab (almost identical setups).</div><div>The=
se are=C2=A0 Ubuntu 20.04.4 LTS focal=C2=A0</div><div>The connected USRPs (=
X300) work fine in all 10 computers.</div><div><br></div><div>However, two =
of them result in a core dump when trying to use calibrating utilities as f=
ollows:</div><div><br></div>$ uhd_cal_tx_dc_offset<br><br>Creating the usrp=
 device with: ,ignore_cal_file=3D1,ignore-cal-file=3D1...<br>[INFO] [UHD] l=
inux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1<br>[=
INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum frame=
 size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>Running cali=
bration for UBX TX<br>Daughterboard serial: 3158306<br>Calibration frequenc=
y range: 10 MHz -&gt; 6000 MHz<br>Dterminate called without an active excep=
tion<br>Aborted (core dumped)<br><div><br></div><div><br></div><div><div>I =
found some similar questions on the Internet but not any definite answers.<=
/div><div>Are there any ideas on how to proceed with investigating that?</d=
iv><div><br></div><div>thanks</div><div>Achilleas</div><div><br></div></div=
><div><br></div><div><br></div><div><br></div><div>FYI:</div><div><br></div=
><div>$ uhd_find_devices<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boos=
t_107100; UHD_4.2.0.0-0ubuntu1~focal1<br>----------------------------------=
----------------<br>-- UHD Device 0<br>------------------------------------=
--------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 315C6B2<br>=C2=
=A0 =C2=A0 addr: 192.168.10.2<br>=C2=A0 =C2=A0 addr: 192.168.40.2<br>=C2=A0=
 =C2=A0 fpga: HG<br>=C2=A0 =C2=A0 name:<br>=C2=A0 =C2=A0 product: X310<br>=
=C2=A0 =C2=A0 type: x300<br></div><div><br></div><div>Also:</div><div><br><=
/div><div>$ uhd_usrp_probe</div>[INFO] [UHD] linux; GNU C++ version 9.4.0; =
Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1<br>[INFO] [X300] X300 initializat=
ion sequence...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] =
[X300] Radio 1x clock: 200 MHz<br>=C2=A0 __________________________________=
___________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: X-Series D=
evice<br>| =C2=A0 =C2=A0 __________________________________________________=
___<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>=
| =C2=A0 | =C2=A0 revision: 11<br>| =C2=A0 | =C2=A0 revision_compat: 7<br>|=
 =C2=A0 | =C2=A0 product: 30818<br>| =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:22=
:64:6c<br>| =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:22:64:6d<br>| =C2=A0 | =C2=
=A0 gateway: 192.168.10.1<br>| =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2<br>| =
=C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr1: 192.1=
68.20.2<br>| =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip=
-addr2: 192.168.30.2<br>| =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>| =C2=
=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>| =C2=A0 | =C2=A0 subnet3: 255.255.2=
55.0<br>| =C2=A0 | =C2=A0 serial: 315C6B2<br>| =C2=A0 | =C2=A0 FW Version: =
6.0<br>| =C2=A0 | =C2=A0 FPGA Version: 38.0<br>| =C2=A0 | =C2=A0 FPGA git h=
ash: be53058<br>| =C2=A0 | =C2=A0 RFNoC capable: Yes<br>| =C2=A0 |<br>| =C2=
=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=A0 | =
=C2=A0 Clock sources: internal, external, gpsdo<br>| =C2=A0 | =C2=A0 Sensor=
s: ref_locked<br>| =C2=A0 =C2=A0 __________________________________________=
___________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC bl=
ocks on this device:<br>| =C2=A0 |<br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=
=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 =
* 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1=
<br>| =C2=A0 | =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 _____________________=
________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 Static connections on this device:<br>| =C2=A0 |<br>| =C2=A0 =
| =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=
=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br=
>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/=
Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SE=
P#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 | =C2=
=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=
=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>| =
=C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0/D=
DC#1:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Repla=
y#0:0<br>| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =
=C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#0:=
1=3D=3D&gt;0/SEP#5:0<br>| =C2=A0 =C2=A0 ___________________________________=
__________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 T=
X Dboard: 0/Radio#0<br>| =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>| =C2=
=A0 | =C2=A0 Serial: 3158306<br>| =C2=A0 | =C2=A0 =C2=A0 __________________=
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
=C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>| =C2=A0 | =C2=A0 Serial: 315830=
6<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
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
 Uses LO offset: No<br><div><br></div><div><br></div><div><br></div><div><b=
r></div></div>

--00000000000088160a06064943e5--

--===============7342374644286033238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7342374644286033238==--
