Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B4428CFE
	for <lists+usrp-users@lfdr.de>; Mon, 11 Oct 2021 14:27:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BF29384823
	for <lists+usrp-users@lfdr.de>; Mon, 11 Oct 2021 08:27:44 -0400 (EDT)
Received: from mail2.swro.de (mail2.swro.de [88.133.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 59AAC384300
	for <usrp-users@lists.ettus.com>; Mon, 11 Oct 2021 08:24:57 -0400 (EDT)
IronPort-SDR: U3Axi4PebdakVR3fx+AAi//UHahaW1O0fNJIgnbeONbznX0g6YV7vSbnL8LSeWuRUcEQHWB/Db
 SYM0Ojgpm7PpP6wMSWXr29bil7ZfNoGIUfdLkVHLzx6vKB8i3xjrluTuheESxuYrK4fSNmzpxv
 JWlxZNc+sgkEOTwk/XgJ7u7dvLVFCT2SKDFUpREFedppyrl65cLbMuz59r1sPT1KBV6fzn4wvp
 XTbt4eRe+RSur6IhB/mO15i73TG2DZEygf3S3L3twcncDZyt1DR0okelHStQ6fGT5ca+G9eolS
 miW2OPtoBWIykTr2+45pLCcg
X-IronPort-AV: E=Sophos;i="5.85,364,1624312800";
   d="scan'208,217";a="310816"
Received: from unknown (HELO mail.office.komro.net) ([10.2.38.40])
  by mail2.swro.de with ESMTP; 11 Oct 2021 14:24:55 +0200
Received: from EX01.komro.local (10.2.38.40) by EX01.komro.local (10.2.38.40)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 11 Oct
 2021 14:24:54 +0200
Received: from EX01.komro.local ([fe80::c096:6704:88ee:70e]) by
 EX01.komro.local ([fe80::c096:6704:88ee:70e%4]) with mapi id 15.01.2375.007;
 Mon, 11 Oct 2021 14:24:54 +0200
From: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: UHD example rx_samples_to_file fails
Thread-Index: Ade+mQ7L5873esBWSpuGtma3yNMSug==
Date: Mon, 11 Oct 2021 12:24:54 +0000
Message-ID: <99ed3c5aa86a47f1954865e59d9d5bf4@komro.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.35.84]
MIME-Version: 1.0
Message-ID-Hash: ZVW4SRCTVES4FXVZAH7JVHB7IF7GCXGX
X-Message-ID-Hash: ZVW4SRCTVES4FXVZAH7JVHB7IF7GCXGX
X-MailFrom: thangaraj@komro.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD example rx_samples_to_file fails
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZVW4SRCTVES4FXVZAH7JVHB7IF7GCXGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2949197225915672215=="

--===============2949197225915672215==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_99ed3c5aa86a47f1954865e59d9d5bf4komronet_"

--_000_99ed3c5aa86a47f1954865e59d9d5bf4komronet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Everyone,

My system config:
Host OS: Windows 10
Guest OS: VirtualBox Ubuntu 20.04.3 LTS
UHD version: 3.15.0.0
GNU Radio version: 3.8.1.0
SDR Device : Ettus USRP N320
My Goal: Use Ettus N320 as Analysis tool (Ex: Spectrum Analyzer)

Console logs:

komro@komro-HP-ProBook-6560b:/usr/lib/uhd/examples$ ./rx_samples_to_file --=
freq 98e6 --rate 5e6 --gain 20 --duration 10 usrp_samples.dat

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.=
0.0-2build5
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31F43B7,claimed=3DFalse,add=
r=3D192.168.10.2
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,time_source=3Dinternal,clock_source=3Dinternal,product=3Dn320'.
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,ti=
me_source=3Dinternal,clock_source=3Dinternal,product=3Dn320'
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,ti=
me_source=3Dinternal,clock_source=3Dinternal,product=3Dn320'
.
.
.
.
[WARNING] [MULTI_USRP] The hardware does not support the requested RX sampl=
e rate:
Target sample rate: 5.000000 MSps
Actual sample rate: 5.015510 MSps
Actual RX Rate: 5.015510 Msps...


Setting RX Freq: 98.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 98.000000 MHz...

Setting RX Gain: 20.000000 dB...
Actual RX Gain: 20.000000 dB...

Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...
DGot an overflow indication. Please consider the following:
  Your write medium must sustain a rate of 20.062041MB/s.
  Dropped samples will not be written to the file.
  Please modify this example for your purposes.
  This message will not appear again.
DDDD
Done!

[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness=
_t _endianness =3D uhd::ENDIANNESS_BIG]
  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:50
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (C=
E_00_Port_33) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long =
unsigned int]
  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:151

[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness=
_t _endianness =3D uhd::ENDIANNESS_BIG]
  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:50
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (C=
E_00_Port_30) packet parse error - EnvironmentError: IOError: Expected pack=
et index: 28 Received index: 29
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness=
_t _endianness =3D uhd::ENDIANNESS_BIG]
  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:50
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (C=
E_01_Port_40) packet parse error - EnvironmentError: IOError: Expected pack=
et index: 566 Received index: 567

1. What should I do in order to fix this?
2. I tried the fm_receiver flowgraph in GNU Radio, it was running successfu=
lly but when I tune the frequency there is nothing I could hear except the =
first 5 seconds noise!
3. I also tried the example 'Spectrum Analyzer' grc program, it was also ru=
nning without error but there was not much changes/effects when I tune the =
frequency! Is there something wrong in receiver?

Thank you in advance!

Regards,
Thangz



--_000_99ed3c5aa86a47f1954865e59d9d5bf4komronet_
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hello Everyone,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif">My system config:<o:p></o:p></span></u></b></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Host OS: Windows 10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Guest OS: VirtualBox Ubuntu 20.04.3 LTS<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">UHD version: 3.15.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">GNU Radio version: 3.8.1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">SDR Device : Ettus USRP N320<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">My Goal: Use Ettus N320 as Analysis tool (Ex: Spect=
rum Analyzer)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Console logs:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow">komro@komro-HP-Pro=
Book-6560b:/usr/lib/uhd/examples$ ./rx_samples_to_file --freq 98e6 --rate 5=
e6 --gain 20 --duration 10 usrp_samples.dat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Creating the usrp device with: ...<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.2.1 20=
200304; Boost_107100; UHD_3.15.0.0-2build5<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31F4=
3B7,claimed=3DFalse,addr=3D192.168.10.2<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called with device=
 args `mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinter=
nal,product=3Dn320'.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.Rhodium-0] init() called with args `mgmt=
_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal,product=
=3Dn320'<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.Rhodium-1] init() called with args `mgmt=
_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal,product=
=3Dn320'<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [MULTI_USRP] The hardware does not support=
 the requested RX sample rate:<o:p></o:p></p>
<p class=3D"MsoNormal">Target sample rate: 5.000000 MSps<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sample rate: 5.015510 MSps<o:p></o:p></p>
<p class=3D"MsoNormal">Actual RX Rate: 5.015510 Msps...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Setting RX Freq: 98.000000 MHz...<o:p></o:p></p>
<p class=3D"MsoNormal">Setting RX LO Offset: 0.000000 MHz...<o:p></o:p></p>
<p class=3D"MsoNormal">Actual RX Freq: 98.000000 MHz...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Setting RX Gain: 20.000000 dB...<o:p></o:p></p>
<p class=3D"MsoNormal">Actual RX Gain: 20.000000 dB...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Waiting for &quot;lo_locked&quot;: &#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43; locked.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Press Ctrl &#43; C to stop streaming...<o:p></o:p></=
p>
<p class=3D"MsoNormal">DGot an overflow indication. Please consider the fol=
lowing:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Your write medium must sustain a rate of 20.0=
62041MB/s.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Dropped samples will not be written to the fi=
le.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Please modify this example for your purposes.=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; This message will not appear again.<o:p></o:p=
></p>
<p class=3D"MsoNormal">DDDD<o:p></o:p></p>
<p class=3D"MsoNormal">Done!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">[ERROR] [UHD] Exception caught in safe-call.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with u=
hd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:5=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Bloc=
k ctrl (CE_00_Port_33) no response packet - AssertionError: bool(buff)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool=
, double) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint=
64_t =3D long unsigned int]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:1=
51<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">[ERROR] [UHD] Exception caught in safe-call.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with u=
hd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:5=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Bloc=
k ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOError: Expe=
cted packet index: 28 Received index: 29<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">[ERROR] [UHD] Exception caught in safe-call.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with u=
hd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">&nbsp; at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:5=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Bloc=
k ctrl (CE_01_Port_40) packet parse error - EnvironmentError: IOError: Expe=
cted packet index: 566 Received index: 567</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1. What should I do in order to fix this? <o:p></o:p=
></p>
<p class=3D"MsoNormal">2. I tried the fm_receiver flowgraph in GNU Radio, i=
t was running successfully but when I tune the frequency there is nothing I=
 could hear except the first 5 seconds noise! &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">3. I also tried the example &#8218;Spectrum Analyzer=
&#8216; grc program, it was also running without error but there was not mu=
ch changes/effects when I tune the frequency! Is there something wrong in r=
eceiver?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you in advance!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Thangz <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_99ed3c5aa86a47f1954865e59d9d5bf4komronet_--

--===============2949197225915672215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2949197225915672215==--
