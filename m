Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D722B60A
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 20:48:24 +0200 (CEST)
Received: from [::1] (port=36150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jygGV-00049r-G8; Thu, 23 Jul 2020 14:48:23 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:2947)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jygGR-00041m-Hn
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 14:48:19 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1595530059; h=from:subject:to:date:message-id;
 bh=SPG6ahqdTgOcRK79oclGFMgDZ3Pcd4kuv46W3tx0Xnw=;
 b=S3gvtsJZA/U6CClrw8/+ocgpF1xjVU1u437ziOFrTa+ZH6qxi6qyGDZjVbJolMisr7NkK3sTCrv
 Cx9dVdp965pv6ueMkWDI/sNHWY72yex4elLKA0i51hRGHdFDCpN7FtRiPrkYbbKsr/Aessn0+W/Xp
 y1vMUweZ84b+oxGGjTY=
Received: from parris.core.gtri.org (10.41.31.72) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 23 Jul
 2020 14:47:39 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by parris.core.gtri.org
 (10.41.31.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1913.5; Thu, 23
 Jul 2020 14:47:38 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Thu, 23 Jul 2020 14:47:38 -0400
To: Nick Foster <bistromath@gmail.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph
 Not Working
Thread-Index: AQHWYIm+tP/GOwzg/kGLyn+jjDex+qkVfTfGgABGLQD//75zHw==
Date: Thu, 23 Jul 2020 18:47:38 +0000
Message-ID: <3c078c0019c84b408ba615a394654810@gtri.gatech.edu>
References: <b2ae131056ae4db29b51cfcb63f13284@gtri.gatech.edu>
 <16b71d7c13fe4059b9b7c3ad660eef87@gtri.gatech.edu>,
 <CA+JMMq95M=qo8N+Ci1r=rcxaLtP086wvu6gAOg6Lz1wX6ZANOQ@mail.gmail.com>
In-Reply-To: <CA+JMMq95M=qo8N+Ci1r=rcxaLtP086wvu6gAOg6Lz1wX6ZANOQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph
 Not Working
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
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============4224016336597423517=="
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

--===============4224016336597423517==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3c078c0019c84b408ba615a394654810gtrigatechedu_"

--_000_3c078c0019c84b408ba615a394654810gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you Nick. I was using those same settings you recommended and still g=
etting the error.


The issue may be that I am using the LFRX boards? Are they not supported wi=
th RFNoC because of the sample rate?


Jeff



[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-54-gb=
c585b43
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:17:b8:5f
|   |   mac-addr1: 00:80:2f:17:b8:60
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 312CEC4
|   |   FW Version: 6.0
|   |   FPGA Version: 36.0
|   |   FPGA git hash: 9ba275d
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |   ID: LF RX (0x000f)
|   |   |   Serial: 3117C2F
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: AB
|   |   |   |   Name: LFRX (AB)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: BA
|   |   |   |   Name: LFRX (BA)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: A
|   |   |   |   Name: LFRX (A)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
|   |   |   |   Connection Type: I
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: B
|   |   |   |   Name: LFRX (B)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
|   |   |   |   Connection Type: Q
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: Unknown (0xffff) - 0
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: 0.000 to 0.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: B
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |   ID: LF TX (0x000e)
|   |   |   Serial: 312D6A8
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: AB
|   |   |   |   Name: LFTX (AB)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: BA
|   |   |   |   Name: LFTX (BA)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: A
|   |   |   |   Name: LFTX (A)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
|   |   |   |   Connection Type: I
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: B
|   |   |   |   Name: LFTX (B)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -32.000 to 32.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
|   |   |   |   Connection Type: Q
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Unknown (0xffff) - 0
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: 0.000 to 0.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: B
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * DmaFIFO_0
|   |   |   * Radio_0
|   |   |   * Radio_1
|   |   |   * DDC_0
|   |   |   * DDC_1
|   |   |   * DUC_0
|   |   |   * DUC_1



________________________________
From: Nick Foster <bistromath@gmail.com>
Sent: Thursday, July 23, 2020 2:40 PM
To: Hodges, Jeff
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph=
 Not Working

RFNoC Radio runs at a constant 200Msps. Use DUC parameters: input rate 1Msp=
s, output rate 200Msps. Use Radio parameter: Sampling Rate 200Msps.

I don't know why you're getting a gain error. What daughterboard are you us=
ing?

In addition, you probably don't need the DMA FIFO for this FG.

Nick

On Thu, Jul 23, 2020 at 11:34 AM Hodges, Jeff via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

Has anyone been able to transmit with RFNoC Radio using the standard FPGA i=
mage from UHD.3.15.LTS?


I have a clean installation and ran SigGen --> RFNoC: DmaFIFO --> RFNoC: DU=
C --> RFNoC: Radio


Most basic flow graph ever. It does not work. I get a run-time error.


Traceback (most recent call last):
  File "/home/nvd/Documents/top_block.py", line 169, in <module>
    main()
  File "/home/nvd/Documents/top_block.py", line 157, in main
    tb =3D top_block_cls()
  File "/home/nvd/Documents/top_block.py", line 84, in __init__
    self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
  File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line 3=
235, in set_tx_gain
    return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
RuntimeError: _Map_base::at




Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Hodges, Jeff via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, July 22, 2020 8:49:05 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph Not=
 Working


I get a set_tx_gain error running a basic signal generator through RFNoC Ra=
dio:

Signal Source -> DMA FIFO -> DUC -> Radio  (See image below)


This is equivalent to:

Signal Source --> USRP Sink    (Works fine)


https://kb.ettus.com/File:dma_fifo_v02.png


<https://kb.ettus.com/File:dma_fifo_v02.png>

Traceback (most recent call last):
  File "/home/nvd/Documents/top_block.py", line 169, in <module>
    main()
  File "/home/nvd/Documents/top_block.py", line 157, in main
    tb =3D top_block_cls()
  File "/home/nvd/Documents/top_block.py", line 84, in __init__
    self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
  File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line 3=
235, in set_tx_gain
    return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
RuntimeError: _Map_base::at



I am using 3.15.LTS.


Any ideas?

Thanks,


Jeff


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_3c078c0019c84b408ba615a394654810gtrigatechedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Thank you Nick. I was using those same settings you recommended and stil=
l getting the error.</p>
<p><br>
</p>
<p>The issue may be that I am using the LFRX boards? Are they not supported=
 with RFNoC because of the sample rate?</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<p><br>
</p>
<p><br>
</p>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UHD_3=
.15.0.0-54-gbc585b43<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 1472 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
&nbsp; _____________________________________________________<br>
&nbsp;/<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: X-Series Device<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: X310<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; revision: 11<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; revision_compat: 7<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; product: 30818<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr0: 00:80:2f:17:b8:5f<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr1: 00:80:2f:17:b8:60<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; gateway: 192.168.10.1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr0: 192.168.10.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet0: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr1: 192.168.20.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet1: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr2: 192.168.30.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet2: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr3: 192.168.40.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet3: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 312CEC4<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FW Version: 6.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 36.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA git hash: 9ba275d<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; RFNoC capable: Yes<br>
|&nbsp;&nbsp; |&nbsp; &nbsp;<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Time sources:&nbsp; internal, external, gpsdo<b=
r>
|&nbsp;&nbsp; |&nbsp;&nbsp; Clock sources: internal, external, gpsdo<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: ref_locked<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard=
: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: LF RX (0x000f)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3117C2F<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: AB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFRX (AB)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: AB, BA, A=
, B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: BA<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFRX (BA)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: AB, BA, A=
, B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QI=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFRX (A)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: AB, BA, A=
, B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: I<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFRX (B)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: AB, BA, A=
, B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: Q<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Codec: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard=
: B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Unknown (0xff=
ff) - 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 0.000 t=
o 0.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Codec: B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard=
: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: LF TX (0x000e)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 312D6A8<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: AB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFTX (AB)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: BA<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFTX (BA)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QI=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFTX (A)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: I<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: LFTX (B)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: -32.000=
 to 32.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: Q<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Codec: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard=
: B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Unknown (0xff=
ff) - 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 0.000 t=
o 0.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Codec: B<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blo=
cks on this device:<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp; &nbsp;<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DmaFIFO_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_1<br>
<br>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Nick Foster &lt;bis=
tromath@gmail.com&gt;<br>
<b>Sent:</b> Thursday, July 23, 2020 2:40 PM<br>
<b>To:</b> Hodges, Jeff<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Fl=
owgraph Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>RFNoC Radio runs at a constant 200Msps. Use DUC parameters: input rate=
 1Msps, output rate 200Msps. Use Radio parameter: Sampling Rate 200Msps.</d=
iv>
<div><br>
</div>
<div>I don't know why you're getting a gain error. What daughterboard are y=
ou using?<br>
</div>
<div><br>
</div>
<div>In addition, you probably don't need the DMA FIFO for this FG.</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 23, 2020 at 11:34 AM Hodg=
es, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-3662757746033311085divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sans=
-serif">
<p>Has anyone been able to transmit with RFNoC Radio using the standard FPG=
A image from UHD.3.15.LTS?</p>
<p><br>
</p>
<p>I have a clean installation and ran SigGen --&gt; RFNoC: DmaFIFO --&gt; =
RFNoC: DUC --&gt; RFNoC: Radio</p>
<p><br>
</p>
<p>Most basic flow graph ever. It does not work. I get a run-time error.&nb=
sp;</p>
<p><br>
</p>
<p></p>
<div>Traceback (most recent call last):<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
&nbsp;&nbsp;&nbsp; main()<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
&nbsp;&nbsp;&nbsp; tb =3D top_block_cls()<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
&nbsp;&nbsp;&nbsp; self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
&nbsp; File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
</div>
<br>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"gmail-m_-3662757746033311085divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 22, 2020 8:49:05 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgr=
aph Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"gmail-m_-3662757746033311085divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sans=
-serif">
<p>I get a set_tx_gain error running a basic signal generator through RFNoC=
 Radio:
<br>
<br>
Signal Source -&gt; DMA FIFO -&gt; DUC -&gt; Radio&nbsp; (See image below)<=
/p>
<p><br>
</p>
<p></p>
<div>
<p>This is equivalent to:</p>
Signal Source --&gt; USRP Sink&nbsp;&nbsp;&nbsp; (Works fine)</div>
<br>
<br>
<a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" id=3D"gmail-m_-36627=
57746033311085LPlnk387264" target=3D"_blank">https://kb.ettus.com/File:dma_=
fifo_v02.png</a>
<p></p>
<p><a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" id=3D"gmail-m_-36=
62757746033311085LPlnk387264" target=3D"_blank"><br>
</a></p>
<p></p>
<div>Traceback (most recent call last):<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
&nbsp;&nbsp;&nbsp; main()<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
&nbsp;&nbsp;&nbsp; tb =3D top_block_cls()<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
&nbsp;&nbsp;&nbsp; self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
&nbsp; File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
<br>
</div>
<p></p>
<p><br>
</p>
<p>I am using 3.15.LTS.</p>
<p><br>
</p>
Any ideas?
<p><br>
Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<p></p>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_3c078c0019c84b408ba615a394654810gtrigatechedu_--


--===============4224016336597423517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4224016336597423517==--

