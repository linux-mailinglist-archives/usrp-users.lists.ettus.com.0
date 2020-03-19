Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B0D18BB9A
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 16:50:38 +0100 (CET)
Received: from [::1] (port=55492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jExRL-0006v5-Kf; Thu, 19 Mar 2020 11:50:35 -0400
Received: from barracuda1.dynetics.com ([204.154.192.63]:46192
 helo=barracuda.dynetics.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <btv1==34751870e06==Ryan.Carmichael@dynetics.com>)
 id 1jExRI-0006jN-95
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 11:50:32 -0400
X-ASG-Debug-ID: 1584633177-10620d75e95b8e90001-5wTQH4
Received: from MX5.in.dynetics.com (MX5.in.dynetics.com [10.1.15.132]) by
 barracuda.dynetics.com with ESMTP id LW5iPaCTCFX98zvL (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO) for
 <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 10:52:57 -0500 (CDT)
X-Barracuda-Envelope-From: Ryan.Carmichael@dynetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.1.15.132
Received: from MAUI.in.dynetics.com ([169.254.1.66]) by MX5.in.dynetics.com
 ([10.1.15.132]) with mapi id 14.03.0487.000; Thu, 19 Mar 2020 10:49:51 -0500
X-Barracuda-RBL-IP: 169.254.1.66
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: MTU Issues after upgrading to UHD 3.15.0
X-ASG-Orig-Subj: MTU Issues after upgrading to UHD 3.15.0
Thread-Index: AQHV/gYGaknX8jD2jkGZxzqeC3AaMQ==
Date: Thu, 19 Mar 2020 15:49:50 +0000
Message-ID: <10F7328F6AD1354BA6DD787687B66B9001A304FBD9@Maui.in.dynetics.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.0.40]
MIME-Version: 1.0
X-Barracuda-Connect: MX5.in.dynetics.com[10.1.15.132]
X-Barracuda-Start-Time: 1584633177
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.in.dynetics.com:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at dynetics.com
X-Barracuda-Scan-Msg-Size: 20709
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No,
 SCORE=0.50 using per-user scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M, HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.80707
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
 0.50 BSF_RULE7568M          Custom Rule 7568M
Subject: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
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
From: "Carmichael, Ryan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
Content-Type: multipart/mixed; boundary="===============2761670934786278103=="
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

--===============2761670934786278103==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10F7328F6AD1354BA6DD787687B66B9001A304FBD9Mauiindynetic_"

--_000_10F7328F6AD1354BA6DD787687B66B9001A304FBD9Mauiindynetic_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I had an application running with 3.11.1 libraries and and my X310 correspo=
nding firmware. After building and installing 3.15.0 on my system and flash=
ing the X310, everything seemed okay.

However, we now get this error when starting up:

[WARNING] [X300] You requested a send frame size of (9000) but your NIC's m=
ax frame size is (8000).Please verify your NIC's MTU setting using 'ip link=
' or set the send_frame_size argument appropriately.UHD will use the auto-d=
etected max frame size for this connection.

And when we start to transmit, odd errors like this show up (what is 'this =
can cause 27.0464' trying to tell me?):

[WARNING] [MULTI_USRP] The total sum of rates (66.666667 MSps on 1 channels=
) exceeds the maximum capacity of the connection (overflows (O) MSps).
This can cause 27.0464.

I'm using 10Gb NICs that again, worked fine with 3.11. The MTUs are set to =
9000 (I've also tried 9001, 9100, nothing seems to change the warning).

ip link
6: enp13s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP =
mode DEFAULT group default qlen 1000
    link/ether f8:f2:1e:42:e1:d4 brd ff:ff:ff:ff:ff:ff
7: enp13s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP =
mode DEFAULT group default qlen 1000
    link/ether f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff

The usrp_probe output is below. Any ideas on what is happening?

uhd_usrp_probe --args=3D"addr=3D192.168.30.2"
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boos=
t_106700; UHD_3.15.0.0-7-g8d228dbe
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1321 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
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
|   |   mac-addr0: 00:80:2f:24:d2:a9
|   |   mac-addr1: 00:80:2f:24:d2:aa
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 318D6DF
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
|   |   |   ID: UBX-160 v2 (0x007e)
|   |   |   Serial: 3185BEE
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: UBX RX
|   |   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
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
|   |   |   ID: UBX-160 v2 (0x007e)
|   |   |   Serial: 3185CA1
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: UBX RX
|   |   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
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
|   |   |   ID: UBX-160 v2 (0x007d)
|   |   |   Serial: 3185BEE
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: UBX TX
|   |   |   |   Antennas: TX/RX, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
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
|   |   |   ID: UBX-160 v2 (0x007d)
|   |   |   Serial: 3185CA1
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: UBX TX
|   |   |   |   Antennas: TX/RX, CAL
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
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

Thanks,
Ryan

________________________________

The information contained in this message, and any attachments, may contain=
 privileged and/or proprietary information that is intended solely for the =
person or entity to which it is addressed. Moreover, it may contain export =
restricted technical data controlled by Export Administration Regulations (=
EAR) or the International Traffic in Arms Regulations (ITAR). Any review, r=
etransmission, dissemination, or re-export to foreign or domestic entities =
by anyone other than the intended recipient in accordance with EAR and/or I=
TAR regulations is prohibited.

--_000_10F7328F6AD1354BA6DD787687B66B9001A304FBD9Mauiindynetic_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>I had an application running with 3.11.1 libraries and and my X310 cor=
responding firmware. After building and installing 3.15.0 on my system and =
flashing the X310, everything seemed okay.<br>
</div>
<div><br>
</div>
<div>However, we now get this error when starting up:</div>
<div><br>
</div>
<div><b>[WARNING] [X300] You requested a send frame size of (9000) but your=
 NIC's max frame size is (8000).Please verify your NIC's MTU setting using =
'ip link' or set the send_frame_size argument appropriately.UHD will use th=
e auto-detected max frame size for
 this connection.</b></div>
<div><b><br>
</b></div>
<div>And when we start to transmit, odd errors like this show up (what is '=
this can cause 27.0464' trying to tell me?):</div>
<div><br>
</div>
<div><b>[WARNING] [MULTI_USRP] The total sum of rates (66.666667 MSps on 1 =
channels) exceeds the maximum capacity of the connection (overflows (O) MSp=
s).<br>
This can cause 27.0464.</b></div>
<div><br>
</div>
<div>I'm using 10Gb NICs that again, worked fine with 3.11. The MTUs are se=
t to 9000 (I've also tried 9001, 9100, nothing seems to change the warning)=
.</div>
<div><br>
</div>
<div><b>ip link</b></div>
<div><b>6: enp13s0f0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdis=
c mq state UP mode DEFAULT group default qlen 1000<br>
&nbsp;&nbsp;&nbsp; link/ether f8:f2:1e:42:e1:d4 brd ff:ff:ff:ff:ff:ff<br>
7: enp13s0f1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq sta=
te UP mode DEFAULT group default qlen 1000<br>
&nbsp;&nbsp;&nbsp; link/ether f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff</b></=
div>
<div><b><br>
</b></div>
<div>The usrp_probe output is below. Any ideas on what is happening?</div>
<div><br>
</div>
<div><b>uhd_usrp_probe --args=3D&quot;addr=3D192.168.30.2&quot;<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20150623 (Red Hat 4.8.5-3=
9); Boost_106700; UHD_3.15.0.0-7-g8d228dbe<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [GPS] No GPSDO found<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1321 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)<br>
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
|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr0: 00:80:2f:24:d2:a9<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr1: 00:80:2f:24:d2:aa<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; gateway: 192.168.10.1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr0: 192.168.10.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet0: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr1: 192.168.20.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet1: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr2: 192.168.30.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet2: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr3: 192.168.40.2<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; subnet3: 255.255.255.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 318D6DF<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FW Version: 6.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 36.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA git hash: 9ba275d<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; RFNoC capable: Yes<br>
|&nbsp;&nbsp; |<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Time sources:&nbsp; internal, external, gpsdo<b=
r>
|&nbsp;&nbsp; |&nbsp;&nbsp; Clock sources: internal, external, gpsdo<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: ref_locked<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard=
: A<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: UBX-160 v2 (0x007e)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3185BEE<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: UBX RX<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, RX=
2, CAL<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 =
to 6000.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ=
<br>
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
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: UBX-160 v2 (0x007e)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3185CA1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; RX Frontend: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: UBX RX<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, RX=
2, CAL<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 =
to 6000.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
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
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: UBX-160 v2 (0x007d)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3185BEE<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: UBX TX<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, CA=
L<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 =
to 6000.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QI=
<br>
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
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: UBX-160 v2 (0x007d)<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3185CA1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____________________=
________________________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; TX Frontend: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: UBX TX<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, CA=
L<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<=
br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 =
to 6000.000 MHz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QI=
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
|&nbsp;&nbsp; |&nbsp;&nbsp; |<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DmaFIFO_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_1</b></div>
<div><br>
</div>
<div>Thanks,</div>
<div>Ryan<br>
<b></b></div>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt; line-height:9pt; font-style:monospace">The infor=
mation contained in this message, and any attachments, may contain privileg=
ed and/or proprietary information that is intended solely for the person or=
 entity to which it is addressed.
 Moreover, it may contain export restricted technical data controlled by Ex=
port Administration Regulations (EAR) or the International Traffic in Arms =
Regulations (ITAR). Any review, retransmission, dissemination, or re-export=
 to foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or =
ITAR regulations is prohibited.</p>
</i>
</body>
</html>

--_000_10F7328F6AD1354BA6DD787687B66B9001A304FBD9Mauiindynetic_--


--===============2761670934786278103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2761670934786278103==--

