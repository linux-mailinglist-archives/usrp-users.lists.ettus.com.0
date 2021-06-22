Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F703B0796
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 16:39:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B609C3840C2
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 10:39:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="KC93lPJQ";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="Ah4nQkDt";
	dkim-atps=neutral
Received: from mfw.dren.mil (mfw.dren.mil [140.32.61.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 12E86383EF3
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 10:38:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : mime-version; s=s1.dkim;
 bh=VIdV9Aus77RBhiaP29VDCDdUyskDdhNg4r7uY321zMM=;
 b=KC93lPJQx2LS90LLtC+Rr1/oUz0C5XExOjDnzGV3NSbIj0xLfBQQvjknIa88k1JLcVZj
 cqF06Jypf9uJQu0SmdkHWH37BOpww6KxPuRpu+DTj9J67q47CNs2egn98jAvH5tQ0bn5
 qTUalQKVbnqqB6n+Fc6gqohwkbvs8yqLXno=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : mime-version; s=s2.dkim;
 bh=VIdV9Aus77RBhiaP29VDCDdUyskDdhNg4r7uY321zMM=;
 b=Ah4nQkDtbl3fbv5TQVJfsW7iVi359E/ls10BelG0dHiCSCIBhzhofaCaQy6KpvBSXuf6
 KnEcVYKYGhgyVsABr4+LqnWbPQlf00gGHmtvRqvFEmiGUNlZ8OqCA+xjPk1Lyac6H0FX
 SY8gFNhwjSmPP+KcW8botISQlqMV/i9vmDi4p4fAWVOldZXIfDMOIhfgurTSGHZvqA2d
 jZxevr+sBlSL4GMl2a7UdcTUK5sX+gF8Std0AdyV7zOKZqp26ZT8svnTwJXCUro6Pyqn
 J6XXattSH4b3xRlmXNHQT/l3IXps5/h2PoFbOzkaTBGnrlLiR+2uL52XctuhA5uskL+a HA==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppaw.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 15MEcCde047839
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 14:38:13 GMT
X-IronPort-AV: E=Sophos;i="5.83,291,1616475600";
   d="txt'?scan'208,217";a="60986901"
Received: from unknown (HELO ERDC-EX2.erdc.dren.mil) ([134.164.254.14])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 09:38:12 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX2.erdc.dren.mil (134.164.254.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.14; Tue, 22 Jun 2021 09:38:12 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::b0df:9b58:9980:1cc8]) by
 ERDC-EX1.erdc.dren.mil ([fe80::b0df:9b58:9980:1cc8%6]) with mapi id
 15.01.2176.014; Tue, 22 Jun 2021 09:38:12 -0500
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: intermittent TX error using DPDK and x310
Thread-Index: AddncuH1hHDL89/KQ5Ce+J4RwAW7YA==
Date: Tue, 22 Jun 2021 14:38:12 +0000
Message-ID: <cde9266a2c524eecb4a3bb5c1af2fe25@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: multipart/mixed;
	boundary="_004_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_"
MIME-Version: 1.0
Message-ID-Hash: PPYF6L6BV33C3BB7TQS7TQJGDQ3J2AZT
X-Message-ID-Hash: PPYF6L6BV33C3BB7TQS7TQJGDQ3J2AZT
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] intermittent TX error using DPDK and x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PPYF6L6BV33C3BB7TQS7TQJGDQ3J2AZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>

--_004_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_
Content-Type: multipart/alternative;
	boundary="_000_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_"

--_000_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



Finally got DPDK running on my ubuntu 20.04 machine. I have two x310's over=
 a 10Gbe each going to their own port on a intel x520. If I have just a sin=
gle x310 hooked up, the rx_samples_to_file and tx_samples_from_file both wo=
rk flawlessly at 200 Msps. If they are both hooked up, I get a few errors w=
hen transmitting that I am not able to discern are going to cause me troubl=
e or not. This is a typical output upon calling tx_from_samples. The [ERROR=
] [UHD] and [ERROR] [USRP2] don't seem to be a major issue, since the PC is=
 finding the x310 without a problem, but I don't know what the [ERROR] [CTR=
LEP] at the end is trying to tell me. Any thoughts?



root@fmcw-sounder:/usr/local/lib/uhd/examples# ./tx_samples_from_file --fil=
e test_samples.dat --gain 0 --freq 2400000000 --lo-offset 100000000 --rate =
200000000 --args "addr=3D192.168.50.2,use_dpdk=3D1"



Creating the usrp device with: addr=3D192.168.50.2,use_dpdk=3D1...

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g=
90ce6062

[WARNING] [PREFS] Loaded config from /root/.uhd. This location is considere=
d deprecated, consider moving your config file to /root/.config instead.

EAL: Detected 12 lcore(s)

EAL: Detected 1 NUMA nodes

EAL: Multi-process socket /var/run/dpdk/rte/mp_socket

EAL: No free hugepages reported in hugepages-1048576kB

EAL: Probing VFIO support...

EAL: VFIO support initialized

EAL: PCI device 0000:01:00.0 on NUMA socket -1

EAL:   Invalid NUMA socket, default to 0

EAL:   probe driver: 8086:10fb net_ixgbe

EAL:   using IOMMU type 1 (Type 1)

EAL: Ignore mapping IO port bar(2)

EAL: PCI device 0000:01:00.1 on NUMA socket -1

EAL:   Invalid NUMA socket, default to 0

EAL:   probe driver: 8086:10fb net_ixgbe

EAL: Ignore mapping IO port bar(2)

[ERROR] [UHD] Device discovery error: send_to: Network is unreachable

[ERROR] [USRP2] USRP2 Network discovery error send_to: Network is unreachab=
le

[INFO] [X300] X300 initialization sequence...

[INFO] [X300] Maximum frame size: 8000 bytes.

[INFO] [X300] Radio 1x clock: 200 MHz

Using Device: Single USRP:

  Device: X-Series Device

  Mboard 0: X310

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: UBX RX

  RX Channel: 1

    RX DSP: 1

    RX Dboard: B

    RX Subdev: Unknown (0xffff) - 0

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: UBX TX

  TX Channel: 1

    TX DSP: 1

    TX Dboard: B

    TX Subdev: Unknown (0xffff) - 0



Setting TX Rate: 200.000000 Msps...

Actual TX Rate: 200.000000 Msps...



Setting TX Freq: 2400.000000 MHz...

Setting TX LO Offset: 100.000000 MHz...

Actual TX Freq: 2400.000000 MHz...



Setting TX Gain: 0.000000 dB...

Actual TX Gain: 0.000000 dB...



Checking TX: TXLO: locked ...

[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.



Done!



[ERROR] [CTRLEP] Caught exception during async message handling: map::at



root@fmcw-sounder:/usr/local/lib/uhd/examples#





Thanks!

Casey

--_000_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_
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
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hello,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Finally got DPDK running on my ubuntu 20.04 machi=
ne. I have two x310's over a 10Gbe each going to their own port on a intel =
x520. If I have just a single x310 hooked up, the rx_samples_to_file and tx=
_samples_from_file both work flawlessly
 at 200 Msps. If they are both hooked up, I get a few errors when transmitt=
ing that I am not able to discern are going to cause me trouble or not. Thi=
s is a typical output upon calling tx_from_samples. The [ERROR] [UHD] and [=
ERROR] [USRP2] don't seem to be
 a major issue, since the PC is finding the x310 without a problem, but I d=
on't know what the [ERROR] [CTRLEP] at the end is trying to tell me. Any th=
oughts?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">root@fmcw-sounder:/usr/local/lib/uhd/examples# ./=
tx_samples_from_file --file test_samples.dat --gain 0 --freq 2400000000 --l=
o-offset 100000000 --rate 200000000 --args &quot;addr=3D192.168.50.2,use_dp=
dk=3D1&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Creating the usrp device with: addr=3D192.168.50.=
2,use_dpdk=3D1...<o:p></o:p></p>
<p class=3D"MsoPlainText">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.3.0=
; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<o:p></o:p></p>
<p class=3D"MsoPlainText">[WARNING] [PREFS] Loaded config from /root/.uhd. =
This location is considered deprecated, consider moving your config file to=
 /root/.config instead.<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Detected 12 lcore(s)<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Detected 1 NUMA nodes<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Multi-process socket /var/run/dpdk/rte/mp_so=
cket<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: No free hugepages reported in hugepages-1048=
576kB<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Probing VFIO support...<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: VFIO support initialized<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: PCI device 0000:01:00.0 on NUMA socket -1<o:=
p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; Invalid NUMA socket, default to =
0<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgb=
e<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; using IOMMU type 1 (Type 1)<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">EAL: Ignore mapping IO port bar(2)<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: PCI device 0000:01:00.1 on NUMA socket -1<o:=
p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; Invalid NUMA socket, default to =
0<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgb=
e<o:p></o:p></p>
<p class=3D"MsoPlainText">EAL: Ignore mapping IO port bar(2)<o:p></o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [UHD] Device discovery error: send_to:=
 Network is unreachable<o:p></o:p></b></p>
<p class=3D"MsoPlainText"><b>[ERROR] [USRP2] USRP2 Network discovery error =
send_to: Network is unreachable<o:p></o:p></b></p>
<p class=3D"MsoPlainText">[INFO] [X300] X300 initialization sequence...<o:p=
></o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] Maximum frame size: 8000 bytes.<o:p=
></o:p></p>
<p class=3D"MsoPlainText">[INFO] [X300] Radio 1x clock: 200 MHz<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">Using Device: Single USRP:<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; Device: X-Series Device<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; Mboard 0: X310<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; RX Channel: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX DSP: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&nbsp; RX Channel: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX DSP: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Dboard: B<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; RX Subdev: Unknown (0xffff) - =
0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp; TX Channel: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX DSP: 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&nbsp; TX Channel: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX DSP: 1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Dboard: B<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; TX Subdev: Unknown (0xffff) - =
0<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Setting TX Rate: 200.000000 Msps...<o:p></o:p></p=
>
<p class=3D"MsoPlainText">Actual TX Rate: 200.000000 Msps...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Setting TX Freq: 2400.000000 MHz...<o:p></o:p></p=
>
<p class=3D"MsoPlainText">Setting TX LO Offset: 100.000000 MHz...<o:p></o:p=
></p>
<p class=3D"MsoPlainText">Actual TX Freq: 2400.000000 MHz...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Setting TX Gain: 0.000000 dB...<o:p></o:p></p>
<p class=3D"MsoPlainText">Actual TX Gain: 0.000000 dB...<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Checking TX: TXLO: locked ...<o:p></o:p></p>
<p class=3D"MsoPlainText">[WARNING] [0/Radio#0] Attempting to set tick rate=
 to 0. Skipping.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Done!<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><b>[ERROR] [CTRLEP] Caught exception during async=
 message handling: map::at<o:p></o:p></b></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">root@fmcw-sounder:/usr/local/lib/uhd/examples#<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks!<o:p></o:p></p>
<p class=3D"MsoPlainText">Casey<o:p></o:p></p>
</div>
</body>
</html>

--_000_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_--

--_004_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_
Content-Type: text/plain; name="tx_output.txt"
Content-Description: tx_output.txt
Content-Disposition: attachment; filename="tx_output.txt"; size=2205;
	creation-date="Tue, 22 Jun 2021 14:33:36 GMT";
	modification-date="Tue, 22 Jun 2021 14:33:35 GMT"
Content-Transfer-Encoding: base64

Cgpyb290QGZtY3ctc291bmRlcjovdXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMjIC4vdHhfc2Ft
cGxlc19mcm9tX2ZpbGUgLS1maWxlIHRlc3Rfc2FtcGxlcy5kYXQgLS1nYWluIDAgLS1mcmVxIDI0
MDAwMDAwMDAgLS1sby1vZmZzZXQgMTAwMDAwMDAwIC0tcmF0ZSAyMDAwMDAwMDAgLS1hcmdzICJh
ZGRyPTE5Mi4xNjguNTAuMix1c2VfZHBkaz0xIgoKQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNlIHdp
dGg6IGFkZHI9MTkyLjE2OC41MC4yLHVzZV9kcGRrPTEuLi4KW0lORk9dIFtVSERdIGxpbnV4OyBH
TlUgQysrIHZlcnNpb24gOS4zLjA7IEJvb3N0XzEwNzEwMDsgVUhEXzQuMC4wLkhFQUQtMC1nOTBj
ZTYwNjIKW1dBUk5JTkddIFtQUkVGU10gTG9hZGVkIGNvbmZpZyBmcm9tIC9yb290Ly51aGQuIFRo
aXMgbG9jYXRpb24gaXMgY29uc2lkZXJlZCBkZXByZWNhdGVkLCBjb25zaWRlciBtb3ZpbmcgeW91
ciBjb25maWcgZmlsZSB0byAvcm9vdC8uY29uZmlnIGluc3RlYWQuCkVBTDogRGV0ZWN0ZWQgMTIg
bGNvcmUocykKRUFMOiBEZXRlY3RlZCAxIE5VTUEgbm9kZXMKRUFMOiBNdWx0aS1wcm9jZXNzIHNv
Y2tldCAvdmFyL3J1bi9kcGRrL3J0ZS9tcF9zb2NrZXQKRUFMOiBObyBmcmVlIGh1Z2VwYWdlcyBy
ZXBvcnRlZCBpbiBodWdlcGFnZXMtMTA0ODU3NmtCCkVBTDogUHJvYmluZyBWRklPIHN1cHBvcnQu
Li4KRUFMOiBWRklPIHN1cHBvcnQgaW5pdGlhbGl6ZWQKRUFMOiBQQ0kgZGV2aWNlIDAwMDA6MDE6
MDAuMCBvbiBOVU1BIHNvY2tldCAtMQpFQUw6ICAgSW52YWxpZCBOVU1BIHNvY2tldCwgZGVmYXVs
dCB0byAwCkVBTDogICBwcm9iZSBkcml2ZXI6IDgwODY6MTBmYiBuZXRfaXhnYmUKRUFMOiAgIHVz
aW5nIElPTU1VIHR5cGUgMSAoVHlwZSAxKQpFQUw6IElnbm9yZSBtYXBwaW5nIElPIHBvcnQgYmFy
KDIpCkVBTDogUENJIGRldmljZSAwMDAwOjAxOjAwLjEgb24gTlVNQSBzb2NrZXQgLTEKRUFMOiAg
IEludmFsaWQgTlVNQSBzb2NrZXQsIGRlZmF1bHQgdG8gMApFQUw6ICAgcHJvYmUgZHJpdmVyOiA4
MDg2OjEwZmIgbmV0X2l4Z2JlCkVBTDogSWdub3JlIG1hcHBpbmcgSU8gcG9ydCBiYXIoMikKW0VS
Uk9SXSBbVUhEXSBEZXZpY2UgZGlzY292ZXJ5IGVycm9yOiBzZW5kX3RvOiBOZXR3b3JrIGlzIHVu
cmVhY2hhYmxlCltFUlJPUl0gW1VTUlAyXSBVU1JQMiBOZXR3b3JrIGRpc2NvdmVyeSBlcnJvciBz
ZW5kX3RvOiBOZXR3b3JrIGlzIHVucmVhY2hhYmxlCltJTkZPXSBbWDMwMF0gWDMwMCBpbml0aWFs
aXphdGlvbiBzZXF1ZW5jZS4uLgpbSU5GT10gW1gzMDBdIE1heGltdW0gZnJhbWUgc2l6ZTogODAw
MCBieXRlcy4KW0lORk9dIFtYMzAwXSBSYWRpbyAxeCBjbG9jazogMjAwIE1IegpVc2luZyBEZXZp
Y2U6IFNpbmdsZSBVU1JQOgogIERldmljZTogWC1TZXJpZXMgRGV2aWNlCiAgTWJvYXJkIDA6IFgz
MTAKICBSWCBDaGFubmVsOiAwCiAgICBSWCBEU1A6IDAKICAgIFJYIERib2FyZDogQQogICAgUlgg
U3ViZGV2OiBVQlggUlgKICBSWCBDaGFubmVsOiAxCiAgICBSWCBEU1A6IDEKICAgIFJYIERib2Fy
ZDogQgogICAgUlggU3ViZGV2OiBVbmtub3duICgweGZmZmYpIC0gMAogIFRYIENoYW5uZWw6IDAK
ICAgIFRYIERTUDogMAogICAgVFggRGJvYXJkOiBBCiAgICBUWCBTdWJkZXY6IFVCWCBUWAogIFRY
IENoYW5uZWw6IDEKICAgIFRYIERTUDogMQogICAgVFggRGJvYXJkOiBCCiAgICBUWCBTdWJkZXY6
IFVua25vd24gKDB4ZmZmZikgLSAwCgpTZXR0aW5nIFRYIFJhdGU6IDIwMC4wMDAwMDAgTXNwcy4u
LgpBY3R1YWwgVFggUmF0ZTogMjAwLjAwMDAwMCBNc3BzLi4uCgpTZXR0aW5nIFRYIEZyZXE6IDI0
MDAuMDAwMDAwIE1Iei4uLgpTZXR0aW5nIFRYIExPIE9mZnNldDogMTAwLjAwMDAwMCBNSHouLi4K
QWN0dWFsIFRYIEZyZXE6IDI0MDAuMDAwMDAwIE1Iei4uLgoKU2V0dGluZyBUWCBHYWluOiAwLjAw
MDAwMCBkQi4uLgpBY3R1YWwgVFggR2FpbjogMC4wMDAwMDAgZEIuLi4KCkNoZWNraW5nIFRYOiBU
WExPOiBsb2NrZWQgLi4uCltXQVJOSU5HXSBbMC9SYWRpbyMwXSBBdHRlbXB0aW5nIHRvIHNldCB0
aWNrIHJhdGUgdG8gMC4gU2tpcHBpbmcuCgpEb25lIQoKW0VSUk9SXSBbQ1RSTEVQXSBDYXVnaHQg
ZXhjZXB0aW9uIGR1cmluZyBhc3luYyBtZXNzYWdlIGhhbmRsaW5nOiBtYXA6OmF0CnJvb3RAZm1j
dy1zb3VuZGVyOi91c3IvbG9jYWwvbGliL3VoZC9leGFtcGxlcyMK

--_004_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_cde9266a2c524eecb4a3bb5c1af2fe25erdcdrenmil_--
