Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D07BF271ACB
	for <lists+usrp-users@lfdr.de>; Mon, 21 Sep 2020 08:22:17 +0200 (CEST)
Received: from [::1] (port=40520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKFDJ-0000KD-C9; Mon, 21 Sep 2020 02:22:13 -0400
Received: from mx-relay80-hz1.antispameurope.com ([94.100.133.250]:37381)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93)
 (envelope-from <prvs=05265f763e=khodr.saaifan@iis.fraunhofer.de>)
 id 1kKFDE-0000FD-Gs
 for usrp-users@lists.ettus.com; Mon, 21 Sep 2020 02:22:09 -0400
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
 mx-relay80-hz1.antispameurope.com; Mon, 21 Sep 2020 08:21:26 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.212.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id D275D2400082
 for <usrp-users@lists.ettus.com>; Mon, 21 Sep 2020 08:21:22 +0200 (CEST)
Received: from mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) by
 mailn1.iis.fhg.de (2001:638:a0a:2111:5807:dd5d:920c:76e8) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 21 Sep 2020 08:21:22 +0200
Received: from mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e]) by
 mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e%12]) with mapi id
 15.00.1395.000; Mon, 21 Sep 2020 08:21:22 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP device_init() crashes for MIMO
Thread-Index: AQHWjaPlEkNoyUmoC0aNdzumTqepmalyo2ey
Date: Mon, 21 Sep 2020 06:21:22 +0000
Message-ID: <1600669281450.87573@iis.fraunhofer.de>
References: <CAO38sJ6c2DqRettKAnGPmDxXbGTZ7R2dRTBsxCsQ9cWeP1uPSw@mail.gmail.com>,
 <1600669138401.49760@iis.fraunhofer.de>
In-Reply-To: <1600669138401.49760@iis.fraunhofer.de>
Accept-Language: en-CA, de-DE, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [153.96.171.210]
MIME-Version: 1.0
X-cloud-security-sender: khodr.saaifan@iis.fraunhofer.de
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay80-hz1.antispameurope.com with E8E8210E01C8
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
 IP=153.96.172.4
X-cloud-security: scantime:1.591
Subject: [USRP-users] USRP device_init() crashes for MIMO
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
From: "Saaifan, Khodr via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Saaifan, Khodr" <khodr.saaifan@iis.fraunhofer.de>
Content-Type: multipart/mixed; boundary="===============2265291483474311429=="
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

--===============2265291483474311429==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_160066928145087573iisfraunhoferde_"

--_000_160066928145087573iisfraunhoferde_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear all

We are testing OAI with USRP X300 device connected through PCIe.
There is a problem related to 2Tx-2Rx MIMO configuration when creating tx/r=
x streams in device_init(),
which is located at /USRP/USERSPACE/LIB/usrp_lib.cpp.

////////////////////////////////////////////////////////////////////
The code:
// create tx & rx streamer //
.
.
.
// Create rx streamer, rx_num_channels =3D2
uhd::stream_args_t stream_args_rx("sc16", "sc16");
for (int i =3D 0; i<openair0_cfg[0].rx_num_channels; i++)
stream_args_rx.channels.push_back(i);
s->rx_stream =3D s->usrp->get_rx_stream(stream_args_rx);
// Print device specification
printf(=93Using Devive %s=94, s->usrp->get_pp_string().c_str());
// Create tx streamer, tx_num_channels =3D2
uhd::stream_args_t stream_args_tx("sc16", "sc16");
for (int i =3D 0; i<openair0_cfg[0].tx_num_channels; i++)
stream_args_tx.channels.push_back(i);
s->tx_stream =3D s->usrp->get_tx_stream(stream_args_tx);
////////////////////////////////////////////////////////////////////
The program calls get_rx_stream to create the rx streams. However, the subs=
equent call for get_tx_stream ends with runtime error what indicates possib=
le resources leak.

////////////////////////////////////////////////////////////////////
The output:

[HW] Actual master clock: 184.320000MHz...
[HW] Actual clock source internal...
[HW] Actual time source internal...
[HW] RF board max packet size 1020, size for 100=B5s jitter 4608
[HW] rx_max_num_samps 1020
Using Device Single USRP:
Device: X-Series
Device Mboard 0: X300
RX Channel: 0
RX DSP: 0
RX Dboard: A
RX Subdev: CBX-120 RX
RX Channel: 1
RX DSP: 0
RX Dboard: B
RX Subdev: CBX-120 RX
TX Channel: 0 TX DSP: 0
TX Dboard: A
TX Subdev: CBX-120 TX
TX Channel: 1
TX DSP: 0
TX Dboard: B
TX Subdev: CBX-120 TX
terminate called after throwing an instance of 'uhd::runtime_error' what():=
 RuntimeError: Could not create nirio_zero_copy transport. A parameter to a=
 function was not valid. This could be a NULL pointer, a bad value, etc. (E=
rror code -52005) Linux signal Aborted...
////////////////////////////////////////////////////////////////////

I attached below the PCIe driver and version as follows:
 ///////////////////////////////////////////////////////////////////
n@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ lsmod | grep -i =
'^ni'
NiRioSrv              954368  2
niusrpriok            421888  0
nistreamk             135168  2 niusrpriok,NiRioSrv
nibds                  57344  2 niusrpriok,NiRioSrv
nikal                 102400  4 niusrpriok,NiRioSrv,nistreamk,nibds
sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$
sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ lspci -d 1093:=
c4c4 -vv
04:00.0 Signal processing controller: National Instruments PXIe/PCIe Device
               Subsystem: National Instruments PXIe/PCIe Device
               Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- =
ParErr+ Stepping- SERR+ FastB2B- DisINTx+
               Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAb=
ort- <TAbort- <MAbort- >SERR- <PERR- INTx-
               Latency: 0
               Interrupt: pin A routed to IRQ 46
               Region 0: Memory at 90100000 (32-bit, non-prefetchable) [siz=
e=3D1M]
               Capabilities: <access denied>
               Kernel driver in use: niusrpriok
               Kernel modules: niusrpriok

sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ cat /usr/local=
/natinst/nirio/bin/nirioiInstallerUtility64.sh | grep nirioi
# File: nirioiInstallerUtility.sh
#   nirioi installer.  Each function is meant to execute at the
nirioiVersion=3D17.0.0f0
nirioiPreInstall()
nirioiPostInstall64()
nirioiPreUninstall64()
nirioiPostUninstall64()
sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ uhd_find_devic=
es
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.=
0.0-release
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3183D39
    fpga: HG
    name:
    product: X300
    resource: RIO0
    type: x300


sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.=
0.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/share/uhd/images/usrp_x300_fpga_HG.=
lvbitx
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
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
|   |       Mboard: X300
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30817
|   |   mac-addr0: 00:80:2f:24:78:a9
|   |   mac-addr1: 00:80:2f:24:78:aa
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3183D39
|   |   FW Version: 6.0
|   |   FPGA Version: 36.0
|   |   FPGA git hash: fde2a94
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |   ID: CBX-120 (0x0085)
|   |   |   Serial: 3186571
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: CBX-120 RX
|   |   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 1200.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |   ID: CBX-120 (0x0085)
|   |   |   Serial: 318657B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: CBX-120 RX
|   |   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 1200.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
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
|   |   |   ID: CBX-120 (0x0084)
|   |   |   Serial: 3186571
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: CBX-120 TX
|   |   |   |   Antennas: TX/RX, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 1200.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |   ID: CBX-120 (0x0084)
|   |   |   Serial: 318657B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: CBX-120 TX
|   |   |   |   Antennas: TX/RX, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 1200.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
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
///////////////////////////////////////////////////////////////////

BR,
Khodr Saaifan
Fraunhofer IIS

--_000_160066928145087573iisfraunhoferde_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<div><span style=3D"background-color:white" lang=3D"en-US"></span><span sty=
le=3D"background-color:white" lang=3D"en-US"></span><span style=3D"backgrou=
nd-color:white" lang=3D"en-US">
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">Dear all</font></span></font></div>
</span><span style=3D"background-color:white" lang=3D"en-US"></span><span s=
tyle=3D"background-color:white" lang=3D"en-US"></span><span style=3D"backgr=
ound-color:white" lang=3D"en-US"></span><span style=3D"background-color:whi=
te" lang=3D"en-US">
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">We are testing OAI with USRP X300 device connected thr=
ough PCIe.</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">There is a problem related to 2Tx-2Rx MIMO configurati=
on when creating tx/rx streams in
</font><font face=3D"Calibri,sans-serif" color=3D"black"><strong>device_ini=
t</strong></font><font face=3D"Calibri,sans-serif" color=3D"black">(),</fon=
t></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">which is located at /USRP/USERSPACE/LIB/usrp_lib.cpp.<=
/font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">//////////////////////////////////////////////////////=
//////////////</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">The code:</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"#4BA524">// create tx &amp; rx streamer //</font></span></fon=
t></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">.</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">.</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">.</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"#4BA524">// Crea<span style=3D"color:rgb(75,165,36)">t</span>=
</font><font style=3D"color:rgb(75,165,36)" face=3D"Calibri,sans-serif"><sp=
an style=3D"color:rgb(75,165,36)">e</span></font><font style=3D"color:rgb(7=
5,165,36)" face=3D"Calibri,sans-serif">
</font><font face=3D"Calibri,sans-serif" color=3D"#4BA524">rx streamer, rx_=
num_channels =3D2</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">uhd::stream_args_t stream_args_</font><font face=3D"Ca=
libri,sans-serif" color=3D"red">r</font><font face=3D"Calibri,sans-serif" c=
olor=3D"black">x(&quot;sc16&quot;,
 &quot;sc16&quot;);</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">for (int i =3D 0; i&lt;openair0_cfg[0].rx_num_channels=
; i&#43;&#43;)
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">stream_args_rx.channels.push_back(i);</font></span></f=
ont></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">s-&gt;rx_stream =3D s-&gt;usrp-&gt;get_rx_stream(strea=
m_args_rx);</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"#4BA524">// Print device specification</font></span></font></=
div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">printf(=93Using Devive %s=94, s-&gt;usrp-&gt;get_pp_st=
ring().c_str());</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"#4BA524">// Cr<span style=3D"color:rgb(75,165,36)">eat</span>=
</font><font style=3D"color:rgb(75,165,36)" face=3D"Calibri,sans-serif"><sp=
an style=3D"color:rgb(75,165,36)">e</span></font><font face=3D"Calibri,sans=
-serif" color=3D"#4BA524"><span style=3D"color:rgb(75,165,36)">
 tx</span> streamer, tx_num_channels =3D2</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">uhd::stream_args_t stream_args_tx(&quot;sc16&quot;, &q=
uot;sc16&quot;);</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">for (int i =3D 0; i&lt;openair0_cfg[0].tx_num_channels=
; i&#43;&#43;)
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">stream_args_tx.channels.push_back(i);</font></span></f=
ont></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">s-&gt;tx_stream =3D s-&gt;usrp-&gt;get_tx_stream(strea=
m_args_tx);</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">//////////////////////////////////////////////////////=
//////////////</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">The program calls get_rx_stream to create the rx strea=
ms. However, the subsequent call for get_tx_stream
 ends with runtime error what indicates possible resources leak.</font></sp=
an></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">//////////////////////////////////////////////////////=
//////////////</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">The output:</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">[HW]
 Actual master clock: 184.320000MHz... </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">[HW]
 Actual clock source internal... </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">[HW]
 Actual time source internal... </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">[HW]
 RF board max packet size 1020, size for 100=B5s jitter 4608 </span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">[HW]
 rx_max_num_samps 1020 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">Using
 Device Single USRP: </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">Device:
 X-Series </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">Device
 Mboard 0: X300 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 Channel: 0 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 DSP: 0 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 Dboard: A </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 Subdev: CBX-120 RX </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 Channel: 1 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 DSP: 0 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 Dboard: B </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">RX
 Subdev: CBX-120 RX </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 Channel: 0 TX DSP: 0 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 Dboard: A </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 Subdev: CBX-120 TX </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 Channel: 1 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 DSP: 0 </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 Dboard: B </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">TX
 Subdev: CBX-120 TX </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(208,92,1=
8)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(208,92,18)"><font style=3D"color:rgb(208,92,18)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(208,92,18)">terminate
 called after throwing an instance of 'uhd::runtime_error' what(): RuntimeE=
rror: Could not create nirio_zero_copy transport. A parameter to a function=
 was not valid. This could be a NULL pointer, a bad value, etc. (Error code=
 -52005) Linux signal Aborted...</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">//////////////////////////////////////////////////////=
//////////////</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">I attached below the PCIe driver and version as follow=
s:</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">&nbsp;////////////////////////////////////////////////=
///////////////////</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">n@ux1682:~/oai_fhg_mimo2=
/openairinterface5g/cmake_targets$
 lsmod | grep -i '^ni'</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">NiRioSrv&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 954368&nbsp; 2</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">niusrpriok&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 421888&nbsp; 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nistreamk&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 135168&nbsp; 2 niusrpriok,NiRioSrv</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nibds&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
 57344&nbsp; 2 niusrpriok,NiRioSrv</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nikal&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;102400&nbsp; 4 niusrpriok,NiRioSrv,nistreamk,nibds</span></=
font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mim=
o2/openairinterface5g/cmake_targets$
</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mim=
o2/openairinterface5g/cmake_targets$
 lspci -d 1093:c4c4 -vv</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">04:00.0
 Signal processing controller: National Instruments PXIe/PCIe Device</span>=
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Subsystem: National Instruments PXIe/PCIe Device</span></font></span></fon=
t></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Control: I/O- Mem&#43; BusMaster&#43; SpecCycle- MemWINV- VGASnoop- ParErr=
&#43; Stepping- SERR&#43; FastB2B- DisINTx&#43;</span></font></span></font>=
</div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Status: Cap&#43; 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast &gt;TAbort- &l=
t;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-</span></font></span></font>=
</div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Latency: 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Interrupt: pin A routed to IRQ 46</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Region 0: Memory at 90100000 (32-bit, non-prefetchable) [size=3D1M]</span>=
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Capabilities: &lt;access denied&gt;</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Kernel driver in use: niusrpriok</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Kernel modules: niusrpriok</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mim=
o2/openairinterface5g/cmake_targets$
 cat /usr/local/natinst/nirio/bin/nirioiInstallerUtility64.sh | grep nirioi=
</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">#
 File: nirioiInstallerUtility.sh</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">#&nbsp;&nbsp;
 nirioi installer.&nbsp; Each function is meant to execute at the</span></f=
ont></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nirioiVersion=3D17.0.0f0=
</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nirioiPreInstall()</span=
></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nirioiPostInstall64()</s=
pan></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nirioiPreUninstall64()</=
span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">nirioiPostUninstall64()<=
/span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mim=
o2/openairinterface5g/cmake_targets$
 uhd_find_devices </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [UHD] linux; GNU C&#43;&#43; version 5.4.0 20160609; Boost_105800; UHD_3.1=
5.0.0-release</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">------------------------=
--------------------------</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">--
 UHD Device 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">------------------------=
--------------------------</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">Device
 Address:</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;
 serial: 3183D39</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;
 fpga: HG</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;
 name: </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;
 product: X300</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;
 resource: RIO0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;&nbsp;&nbsp;
 type: x300</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif">&nbsp;</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mim=
o2/openairinterface5g/cmake_targets$
 uhd_usrp_probe </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [UHD] linux; GNU C&#43;&#43; version 5.4.0 20160609; Boost_105800; UHD_3.1=
5.0.0-release</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [X300] X300 initialization sequence...</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [X300] Connecting to niusrpriorpc at localhost:5444...</span></font></span=
></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [X300] Using LVBITX bitfile /usr/share/uhd/images/usrp_x300_fpga_HG.lvbitx=
</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [X300] Radio 1x clock: 200 MHz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [GPS] No GPSDO found</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)</spa=
n></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)</span></font></span></fo=
nt></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)</span></font></span></fo=
nt></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)</span>=
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)</span>=
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)</span></=
font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)</span></=
font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)</span></=
font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">[INFO]
 [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)</span></=
font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;
 _____________________________________________________</span></font></span>=
</font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">&nbsp;/</span></font></s=
pan></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
 Device: X-Series Device</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;&nbsp;&nbsp=
;
 _____________________________________________________</span></font></span>=
</font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;&nbsp;
 /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: X300</span></font></span></f=
ont></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; revision: 11</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; revision_compat: 7</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; product: 30817</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; mac-addr0: 00:80:2f:24:78:a9</span></font></span></font></di=
v>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; mac-addr1: 00:80:2f:24:78:aa</span></font></span></font></di=
v>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; gateway: 192.168.10.1</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; ip-addr0: 192.168.10.2</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; subnet0: 255.255.255.0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; ip-addr1: 192.168.20.2</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; subnet1: 255.255.255.0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; ip-addr2: 192.168.30.2</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; subnet2: 255.255.255.0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; ip-addr3: 192.168.40.2</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; subnet3: 255.255.255.0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; serial: 3183D39</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; FW Version: 6.0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; FPGA Version: 36.0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; FPGA git hash: fde2a94</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; RFNoC capable: Yes</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; Time sources:&nbsp; internal, external, gpsdo</span></font><=
/span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; Clock sources: internal, external, gpsdo</span></font></span=
></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; Sensors: ref_locked</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp;&nbsp; ________________________________________________=
_____</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: A</span></f=
ont></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; ID: CBX-120 (0x0085)</span></font></span></fon=
t></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3186571</span></font></span></font></d=
iv>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Front=
end: 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: CBX-120 RX</span></font></=
span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, RX2, CAL</span>=
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1200.000 to 6000.000=
 MHz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 120000000.0 to =
120000000.0 step 0.0 Hz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</span></font=
></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec=
: A</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48</span></font></sp=
an></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 s=
tep 0.5 dB</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp;&nbsp; ________________________________________________=
_____</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: B</span></f=
ont></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; ID: CBX-120 (0x0085)</span></font></span></fon=
t></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 318657B</span></font></span></font></d=
iv>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Front=
end: 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: CBX-120 RX</span></font></=
span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, RX2, CAL</span>=
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1200.000 to 6000.000=
 MHz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 120000000.0 to =
120000000.0 step 0.0 Hz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</span></font=
></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec=
: B</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp; &nbsp;|&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48</span></font></sp=
an></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 s=
tep 0.5 dB</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp;&nbsp; ________________________________________________=
_____</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: A</span></f=
ont></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; ID: CBX-120 (0x0084)</span></font></span></fon=
t></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3186571</span></font></span></font></d=
iv>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Front=
end: 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: CBX-120 TX</span></font></=
span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, CAL</span></fon=
t></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1200.000 to 6000.000=
 MHz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 120000000.0 to =
120000000.0 step 0.0 Hz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QI</span></font=
></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;
 &nbsp;|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ____________________________=
_________________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec=
: A</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146</span></font></span=
></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None</span></font=
></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp;&nbsp; ________________________________________________=
_____</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: B</span></f=
ont></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; ID: CBX-120 (0x0084)</span></font></span></fon=
t></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 318657B</span></font></span></font></d=
iv>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Front=
end: 0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: CBX-120 TX</span></font></=
span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, CAL</span></fon=
t></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1200.000 to 6000.000=
 MHz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 120000000.0 to =
120000000.0 step 0.0 Hz</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QI</span></font=
></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></font>=
</span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; __________________________________=
___________________</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec=
: B</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146</span></font></span=
></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None</span></font=
></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp;&nbsp; ________________________________________________=
_____</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp;&nbsp; /</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks on this d=
evice:</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; </span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * DmaFIFO_0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_1</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_1</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_0</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font style=3D"color:rgb(0,111,20=
1)" size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12pt=
; color:rgb(0,111,201)"><font style=3D"color:rgb(0,111,201)" face=3D"Calibr=
i,sans-serif"><span style=3D"color:rgb(0,111,201)">|&nbsp;&nbsp;
 |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_1</span></font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><font size=3D"3" face=3D"Times Ne=
w Roman,serif"><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-se=
rif" color=3D"black">//////////////////////////////////////////////////////=
/////////////<br>
</font></span></font></div>
<div style=3D"margin:0" align=3D"justify"><br>
</div>
<div style=3D"margin:0" align=3D"justify">BR,</div>
<div style=3D"margin:0" align=3D"justify">Khodr Saaifan</div>
<div style=3D"margin:0" align=3D"justify">Fraunhofer IIS<br>
<font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12=
pt"><font face=3D"Calibri,sans-serif" color=3D"black"></font></span></font>=
</div>
</span></div>
</div>
</body>
</html>

--_000_160066928145087573iisfraunhoferde_--


--===============2265291483474311429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2265291483474311429==--

