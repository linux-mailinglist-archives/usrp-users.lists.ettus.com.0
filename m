Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF8118C493
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 02:18:11 +0100 (CET)
Received: from [::1] (port=53764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF6Ia-0006Vk-Hi; Thu, 19 Mar 2020 21:18:08 -0400
Received: from barracuda1.dynetics.com ([204.154.192.63]:37144
 helo=barracuda.dynetics.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <btv1==34826e458e2==Ryan.Carmichael@dynetics.com>)
 id 1jF6IW-0006P6-CY
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 21:18:04 -0400
X-ASG-Debug-ID: 1584667229-10620d75ea5e46c0001-5wTQH4
Received: from MX5.in.dynetics.com (MX5.in.dynetics.com [10.1.15.132]) by
 barracuda.dynetics.com with ESMTP id eIzwXi61VzzkPl1D (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO) for
 <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 20:20:29 -0500 (CDT)
X-Barracuda-Envelope-From: Ryan.Carmichael@dynetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.1.15.132
Received: from MAUI.in.dynetics.com ([169.254.1.66]) by MX5.in.dynetics.com
 ([10.1.15.132]) with mapi id 14.03.0487.000; Thu, 19 Mar 2020 20:17:22 -0500
X-Barracuda-RBL-IP: 169.254.1.66
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
X-ASG-Orig-Subj: Re: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
Thread-Index: AdX+VAsUG0pL2QuXRQ2o9qu/tQMkOw==
Date: Fri, 20 Mar 2020 01:17:21 +0000
Message-ID: <10F7328F6AD1354BA6DD787687B66B9001A304FD2A@Maui.in.dynetics.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.24.49]
MIME-Version: 1.0
X-Barracuda-Connect: MX5.in.dynetics.com[10.1.15.132]
X-Barracuda-Start-Time: 1584667229
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.in.dynetics.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at dynetics.com
X-Barracuda-Scan-Msg-Size: 37393
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No,
 SCORE=0.50 using per-user scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M, HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.80716
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
 0.50 BSF_RULE7568M          Custom Rule 7568M
Subject: Re: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
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
Content-Type: multipart/mixed; boundary="===============8002571028749148217=="
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

--===============8002571028749148217==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10F7328F6AD1354BA6DD787687B66B9001A304FD2AMauiindynetic_"

--_000_10F7328F6AD1354BA6DD787687B66B9001A304FD2AMauiindynetic_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have 4 SFI/SFP+ NICs, shown below (Intel 82599ES), although right now I o=
nly have two of them connected to anything (the X310 in question)

0b:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)
0b:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)
0d:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)
0d:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)

Although I'm only testing with 1 right now, I have 2 X310s connected, each =
with two SFP+. IPs of one radio is 192.168.40.2/30.2 and the other radio is=
 192.168.130.1/140.1.

I do have another non-10Gb card connected to a separate device with a 192 s=
ubnet.

Ifconfig for the 192.x devices is:

inet 192.168.130.99  netmask 255.255.255.0  broadcast 192.168.130.255
inet 192.168.140.98  netmask 255.255.255.0  broadcast 192.168.140.255
inet 192.168.30.99  netmask 255.255.255.0  broadcast 192.168.30.255
inet 192.168.40.99  netmask 255.255.255.0  broadcast 192.168.40.255
inet 192.168.122.1  netmask 255.255.255.0  broadcast 192.168.122.255

The NICs are direct connected to the radios via the SFP+ so don't think the=
 IP stack could be sending the data to the X310s any other way (or is there=
 something else I should check?). The args we pass into  uhd::usrp::multi_u=
srp::make are:

addr=3D192.168.30.2, second_addr=3D192.168.40.2,send_frame_size=3D9000



Thanks,
Ryan

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D=
. Leech via USRP-users
Sent: Thursday, March 19, 2020 7:26 PM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] Re: [USRP-users] MTU Issues after upgrading to UHD 3.15=
.0

On 03/19/2020 08:09 PM, Neel Pandeya via USRP-users wrote:
Which 10 Gbps network card are you using?

--Neel Pandeya


Also, are you certain that your IP stack is actually routing to one of thos=
e two cards?




On Thu, 19 Mar 2020 at 10:50, Carmichael, Ryan via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_000_10F7328F6AD1354BA6DD787687B66B9001A304FD2AMauiindynetic_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;
	color:black;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I have 4 SFI/SFP&#43; NICs, shown bel=
ow (Intel 82599ES), although right now I only have two of them connected to=
 anything (the X310 in question)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">0b:00.0 Ethernet controller: Intel Co=
rporation 82599ES 10-Gigabit SFI/SFP&#43; Network Connection (rev 01)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">0b:00.1 Ethernet controller: Intel Co=
rporation 82599ES 10-Gigabit SFI/SFP&#43; Network Connection (rev 01)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">0d:00.0 Ethernet controller: Intel Co=
rporation 82599ES 10-Gigabit SFI/SFP&#43; Network Connection (rev 01)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">0d:00.1 Ethernet controller: Intel Co=
rporation 82599ES 10-Gigabit SFI/SFP&#43; Network Connection (rev 01)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Although I&#8217;m only testing with =
1 right now, I have 2 X310s connected, each with two SFP&#43;. IPs of one r=
adio is 192.168.40.2/30.2 and the other radio is 192.168.130.1/140.1.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I do have another non-10Gb card conne=
cted to a separate device with a 192 subnet.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Ifconfig for the 192.x devices is:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">inet 192.168.130.99&nbsp; netmask 255=
.255.255.0&nbsp; broadcast 192.168.130.255<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">inet 192.168.140.98&nbsp; netmask 255=
.255.255.0&nbsp; broadcast 192.168.140.255<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">inet 192.168.30.99&nbsp; netmask 255.=
255.255.0&nbsp; broadcast 192.168.30.255<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">inet 192.168.40.99&nbsp; netmask 255.=
255.255.0&nbsp; broadcast 192.168.40.255<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">inet 192.168.122.1&nbsp; netmask 255.=
255.255.0&nbsp; broadcast 192.168.122.255<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The NICs are direct connected to the =
radios via the SFP&#43; so don&#8217;t think the IP stack could be sending =
the data to the X310s any other way (or is there something
 else I should check?). The args we pass into &nbsp;uhd::usrp::multi_usrp::=
make are:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">addr=3D192.168.30.2, second_addr=3D19=
2.168.40.2,send_frame_size=3D9000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Ryan<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:windowtext">From:</span></b><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtex=
t"> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Thursday, March 19, 2020 7:26 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] MTU Issues after upgrading to U=
HD 3.15.0<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 03/19/2020 08:09 PM, Neel Pandeya via USRP-users =
wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">Which 10 Gbps network card are you using?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">--Neel Pandeya<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal">Also, are you certain that your IP stack is actually=
 routing to one of those two cards?<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, 19 Mar 2020 at 10:50, Carmichael, Ryan via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">I had an application running with 3.11.1 libraries a=
nd and my X310 corresponding firmware. After building and installing 3.15.0=
 on my system and flashing the X310, everything
 seemed okay.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">However, we now get this error when starting up:<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,sans-serif">[WARNING] [X300] You requested a send frame size =
of (9000) but your NIC's max frame size is (8000).Please verify your NIC's =
MTU setting using 'ip link' or set the send_frame_size
 argument appropriately.UHD will use the auto-detected max frame size for t=
his connection.</span></b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,sans-serif"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">And when we start to transmit, odd errors like this =
show up (what is 'this can cause 27.0464' trying to tell me?):<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,sans-serif">[WARNING] [MULTI_USRP] The total sum of rates (66=
.666667 MSps on 1 channels) exceeds the maximum capacity of the connection =
(overflows (O) MSps).<br>
This can cause 27.0464.</span></b><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Tahoma&quot;,sans-serif"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">I'm using 10Gb NICs that again, worked fine with 3.1=
1. The MTUs are set to 9000 (I've also tried 9001, 9100, nothing seems to c=
hange the warning).<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,sans-serif">ip link</span></b><span style=3D"font-size:10.0pt=
;font-family:&quot;Tahoma&quot;,sans-serif"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,sans-serif">6: enp13s0f0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP=
&gt; mtu 9000 qdisc mq state UP mode DEFAULT group default qlen 1000<br>
&nbsp;&nbsp;&nbsp; link/ether f8:f2:1e:42:e1:d4 brd ff:ff:ff:ff:ff:ff<br>
7: enp13s0f1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq sta=
te UP mode DEFAULT group default qlen 1000<br>
&nbsp;&nbsp;&nbsp; link/ether f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff</span=
></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,sans-se=
rif"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">The usrp_probe output is below. Any ideas on what is=
 happening?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,sans-serif">uhd_usrp_probe --args=3D&quot;addr=3D192.168.30.2=
&quot;<br>
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
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_1</span></b><span style=3D"=
font-size:10.0pt;font-family:&quot;Tahoma&quot;,sans-serif"><o:p></o:p></sp=
an></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">Thanks,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif">Ryan<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><i>
<hr size=3D"2" width=3D"100%" align=3D"center">
</i></div>
<p style=3D"line-height:9.0pt"><i><span style=3D"font-size:8.0pt">The infor=
mation contained in this message, and any attachments, may contain privileg=
ed and/or proprietary information that is intended solely for the person or=
 entity to which it is addressed. Moreover,
 it may contain export restricted technical data controlled by Export Admin=
istration Regulations (EAR) or the International Traffic in Arms Regulation=
s (ITAR). Any review, retransmission, dissemination, or re-export to foreig=
n or domestic entities by anyone
 other than the intended recipient in accordance with EAR and/or ITAR regul=
ations is prohibited.<o:p></o:p></span></i></p>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br>
<br>
<br>
<o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_10F7328F6AD1354BA6DD787687B66B9001A304FD2AMauiindynetic_--


--===============8002571028749148217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8002571028749148217==--

