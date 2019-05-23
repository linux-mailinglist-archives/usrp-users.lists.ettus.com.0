Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 024832788D
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 10:55:13 +0200 (CEST)
Received: from [::1] (port=42100 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTjVD-0005gm-Cn; Thu, 23 May 2019 04:55:07 -0400
Received: from [141.226.237.60] (port=47988 helo=netlinetech.com)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <Ilayn@netlinetech.com>) id 1hTjUe-0005cB-KD
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 04:55:03 -0400
Received: from Internal Mail-Server by Mail-SeCure (envelope-from
 Ilayn@netlinetech.com) with SMTP; 23 May 2019 09:38:41 +0000
Received: from NCTSERVER5.netline.co.il ([::1]) by nctserver5.netline.co.il
 ([::1]) with mapi id 14.03.0439.000; Thu, 23 May 2019 11:52:17 +0300
To: "support@ettus.com" <support@ettus.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: x310 gpsdo get_time_now() - uhd 3.14.0 bug?
Thread-Index: AdURRKg5U/W6TEdKRo2yJF9/ZMyx1w==
Date: Thu, 23 May 2019 08:52:17 +0000
Message-ID: <EBDEC4BDBD1F534686BED262D988D71508657CBF@nctserver5.netline.co.il>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.1.173]
x-c2processedorg: b6f1b805-3509-4939-a2f1-63107df1a371
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] x310 gpsdo get_time_now() - uhd 3.14.0 bug?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ilay Nissim via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ilay Nissim <Ilayn@netlinetech.com>
Content-Type: multipart/mixed; boundary="===============4739544704108979003=="
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

--===============4739544704108979003==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EBDEC4BDBD1F534686BED262D988D71508657CBFnctserver5netli_"

--_000_EBDEC4BDBD1F534686BED262D988D71508657CBFnctserver5netli_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Also UHD 14.00 original example fails to sync_to_gps.
This is with checking the original examples shipped
with ettus official release of  uhd ver 3.14.00
running  uhd/host/build/examples$ ./sync_to_gps
Here is the output
This looks like a bug in UHD 3.14.0
------

~/uhd/host/build/examples$ ./sync_to_gps

Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.=
0.0-0-unknown
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: TwinRX RX0
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: TwinRX RX1
  RX Channel: 2
    RX DSP: 0
    RX Dboard: B
    RX Subdev: TwinRX RX0
  RX Channel: 3
    RX DSP: 1
    RX Dboard: B
    RX Subdev: TwinRX RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Unknown (0x0094) - 0
  TX Channel: 1
    TX DSP: 0
    TX Dboard: B
    TX Subdev: Unknown (0x0094) - 0

Synchronizing mboard 0: X310

**************************************Helpful Notes on Clock/PPS Selection*=
*************************************
As you can see, the default 10 MHz Reference and 1 PPS signals are now from=
 the GPSDO.
If you would like to use the internal reference(TCXO) in other applications=
, you must configure that explicitly.
You can no longer select the external SMAs for 10 MHz or 1 PPS signaling.
***************************************************************************=
*************************************

Waiting for reference lock...LOCKED
WARNING:  GPS not locked - time will not be accurate until locked
USRP time: 1558515302.999999762
GPSDO time: 1558515304.000000000

ERROR: Failed to synchronize USRP time to GPS time


Regards,
Ilay Nissim
RT Embedded Team Leader

From: Ilay Nissim
Sent: Thursday, May 16, 2019 8:48 PM
To: support@ettus.com; usrp-users@lists.ettus.com
Cc: Ilay Nissim
Subject: x310 gpsdo get_time_now()

Hi
I have an x310 connected to gpsdo UHD ver14.0
I sync to gpsdo at start of bringup
Than use get_time_now() to follow usrp time
It look like usrp time is2x slow
Meaning if 100 seocnds should have passed - 50 seconds pass


For example
Using clock source - gpsdo time source gpsdo
 if on  init gps time is
1558028200
And usrp is
1558028200

After 100 seconds
Usrptime is
1558028250
And gps time is
1558028300

Would be happy to get feedback
Regards,
Ilay Nissim
RT Embedded Team Leader
Netline Communications Technologies Ltd
Tel: + (972) 36068171<tel:+972%203-606-8161>
Fax: + (972) 36068101<tel:+972%203-606-8101>
http://www.netlinetech.com/
Azrieli Circular Tower , Menachem Begin 132, Tel-Aviv 67021, ISRAEL


This email and the associated attachments may contain information that is p=
roprietary, privileged, confidential or otherwise protected from disclosure=
. If you are not the intended recipient or otherwise have received this mes=
sage in error, you are not authorized to read, print, retain, copy or disse=
minate this message or any part of it. If you are not the intended recipien=
t or otherwise have received this message in error, please notify me immedi=
ately, destroy any paper copies and delete all electronic files of the mess=
age.

This email and the associated attachments may contain information that is p=
roprietary, privileged, confidential or otherwise protected from disclosure=
. If you are not the intended recipient or otherwise have received this mes=
sage in error, you are not authorized to read, print, retain, copy or disse=
minate this message or any part of it. If you are not the intended recipien=
t or otherwise have received this message in error, please notify me immedi=
ately, destroy any paper copies and delete all electronic files of the mess=
age.

--_000_EBDEC4BDBD1F534686BED262D988D71508657CBFnctserver5netli_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">Hi,<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">Also UH=
D 14.00 original example fails to sync_to_gps.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">This is=
 with checking the original examples shipped<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">with et=
tus official release of &nbsp;uhd ver 3.14.00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">running=
 &nbsp;</span><span style=3D"color:#1F497D">uhd/host/build/examples$ ./sync=
_to_gps</span><span lang=3D"EN-GB" style=3D"color:#1F497D"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">Here is=
 the output<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">This lo=
oks like a bug in UHD
</span><span style=3D"color:#1F497D">3.14.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">~/uhd/host/build/examp=
les$ ./sync_to_gps
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Creating the USRP devi=
ce with: ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [UHD] linux; GN=
U C&#43;&#43; version 5.4.0 20160609; Boost_105800; UHD_3.14.0.0-0-unknown<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] X300 ini=
tialization sequence...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Maximum =
frame size: 8000 bytes.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Radio 1x=
 clock: 200 MHz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [GPS] Found an =
internal GPSDO: LC_XO, Firmware Rev 0.929a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DmaFIFO_0] I=
nitializing block control (NOC ID: 0xF1F0D00000000000)<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DmaFIFO_0] B=
IST passed (Throughput: 1319 MB/s)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DmaFIFO_0] B=
IST passed (Throughput: 1315 MB/s)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/Radio_0] Ini=
tializing block control (NOC ID: 0x12AD100000000001)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/Radio_1] Ini=
tializing block control (NOC ID: 0x12AD100000000001)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DDC_0] Initi=
alizing block control (NOC ID: 0xDDC0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DDC_1] Initi=
alizing block control (NOC ID: 0xDDC0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DUC_0] Initi=
alizing block control (NOC ID: 0xD0C0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [0/DUC_1] Initi=
alizing block control (NOC ID: 0xD0C0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Using Device: Single U=
SRP:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; Device: X-Serie=
s Device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; Mboard 0: X310<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; RX Channel: 0<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Subdev: TwinRX RX0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; RX Channel: 1<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
DSP: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Subdev: TwinRX RX1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; RX Channel: 2<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Subdev: TwinRX RX0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; RX Channel: 3<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
DSP: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; RX =
Subdev: TwinRX RX1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; TX Channel: 0<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; TX =
DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; TX =
Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; TX =
Subdev: Unknown (0x0094) - 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; TX Channel: 1<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; TX =
DSP: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; TX =
Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; TX =
Subdev: Unknown (0x0094) - 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Synchronizing mboard 0=
: X310<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">**********************=
****************Helpful Notes on Clock/PPS Selection***********************=
***************<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">As you can see, the de=
fault 10 MHz Reference and 1 PPS signals are now from the GPSDO.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If you would like to u=
se the internal reference(TCXO) in other applications, you must configure t=
hat explicitly.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">You can no longer sele=
ct the external SMAs for 10 MHz or 1 PPS signaling.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">**********************=
***************************************************************************=
***************<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Waiting for reference =
lock...LOCKED<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">WARNING:&nbsp; GPS not=
 locked - time will not be accurate until locked<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">USRP time: 1558515302.=
999999762<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">GPSDO time: 1558515304=
.000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR: Failed to synch=
ronize USRP time to GPS time<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0in 0in 1.0pt 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><span style=3D"col=
or:#1F497D"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:#1F497D">Regards,<br>
Ilay Nissim <br>
RT Embedded Team Leader</span><span lang=3D"SV" style=3D"color:#1F497D"><o:=
p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Ilay Nis=
sim
<br>
<b>Sent:</b> Thursday, May 16, 2019 8:48 PM<br>
<b>To:</b> support@ettus.com; usrp-users@lists.ettus.com<br>
<b>Cc:</b> Ilay Nissim<br>
<b>Subject:</b> x310 gpsdo get_time_now()<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal">I have an x310 connected to gpsdo UHD ver14.0<o:p></=
o:p></p>
<p class=3D"MsoNormal">I sync to gpsdo at start of bringup<o:p></o:p></p>
<p class=3D"MsoNormal">Than use get_time_now() to follow usrp time<o:p></o:=
p></p>
<p class=3D"MsoNormal">It look like usrp time is2x slow<o:p></o:p></p>
<p class=3D"MsoNormal">Meaning if 100 seocnds should have passed &#8211; 50=
 seconds pass<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For example<o:p></o:p></p>
<p class=3D"MsoNormal">Using clock source &#8211; gpsdo time source gpsdo <=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;if on&nbsp; init gps time is <o:p></o:p></p>
<p class=3D"MsoNormal">1558028200<o:p></o:p></p>
<p class=3D"MsoNormal">And usrp is<o:p></o:p></p>
<p class=3D"MsoNormal">1558028200<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After 100 seconds<o:p></o:p></p>
<p class=3D"MsoNormal">Usrptime is <o:p></o:p></p>
<p class=3D"MsoNormal">1558028250<o:p></o:p></p>
<p class=3D"MsoNormal">And gps time is<o:p></o:p></p>
<p class=3D"MsoNormal">1558028300<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Would be happy to get feedback<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:#1F497D">Regards,<br>
Ilay Nissim <br>
RT Embedded Team Leader</span><span lang=3D"SV"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:gray">Netline Communications Technologies Ltd
<br>
Tel: <a href=3D"tel:&#43;972%203-606-8161" target=3D"_blank">&#43; (972) 36=
068171</a><br>
Fax: <a href=3D"tel:&#43;972%203-606-8101" target=3D"_blank">&#43; (972) 36=
068101</a><br>
</span><a href=3D"http://www.netlinetech.com/" target=3D"_blank">http://www=
.netlinetech.com/</a><span style=3D"color:blue"><br>
</span><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:gray">Azrieli Circular Tower , Menachem Begin 132, Tel-Aviv 67021, IS=
RAEL</span><span lang=3D"SV"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;">This email and the associated attachments may contain informa=
tion that is proprietary, privileged, confidential or otherwise protected f=
rom disclosure. If you are not the intended recipient
 or otherwise have received this message in error, you are not authorized t=
o read, print, retain, copy or disseminate this message or any part of it. =
If you are not the intended recipient or otherwise have received this messa=
ge in error, please notify me immediately,
 destroy any paper copies and delete all electronic files of the message. <=
o:p></o:p></span></p>
</div>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">This email and the associa=
ted attachments may contain information that is proprietary, privileged, co=
nfidential or otherwise protected from disclosure. If you are not the inten=
ded recipient or otherwise have received
 this message in error, you are not authorized to read, print, retain, copy=
 or disseminate this message or any part of it. If you are not the intended=
 recipient or otherwise have received this message in error, please notify =
me immediately, destroy any paper
 copies and delete all electronic files of the message. </p>
</body>
</html>

--_000_EBDEC4BDBD1F534686BED262D988D71508657CBFnctserver5netli_--


--===============4739544704108979003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4739544704108979003==--

