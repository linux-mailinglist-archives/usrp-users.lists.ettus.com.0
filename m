Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A3F295F14
	for <lists+usrp-users@lfdr.de>; Thu, 22 Oct 2020 14:56:46 +0200 (CEST)
Received: from [::1] (port=55068 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kVa93-0002Ho-4M; Thu, 22 Oct 2020 08:56:41 -0400
Received: from smtprelay0076.hostedemail.com ([216.40.44.76]:46534
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1kVa8y-000223-SB
 for usrp-users@lists.ettus.com; Thu, 22 Oct 2020 08:56:36 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 62AD518224D65
 for <usrp-users@lists.ettus.com>; Thu, 22 Oct 2020 12:55:55 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:1:2:10:41:72:173:196:355:379:541:542:960:962:967:973:983:988:989:1021:1029:1155:1189:1208:1212:1221:1260:1263:1308:1309:1313:1314:1345:1381:1431:1436:1437:1516:1517:1518:1575:1587:1588:1589:1592:1594:1605:1622:1691:1730:1776:1792:2068:2069:2194:2199:2525:2526:2527:2528:2566:2682:2685:2716:2729:2859:2899:2902:2917:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3503:3504:3505:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4050:4078:4081:4184:4225:4250:4321:4362:4379:4433:5007:6117:6119:6261:6300:6630:6658:6670:6678:7688:7901:7903:7904:8603:8700:8784:8957:9008:9025:9040:9388:9868:10004:10026:10049:10197:10848:10919:11026:11233:11473:11656:11658:11914:12043:12296:12297:12555:12663:12679:12723:12737:12740:12895:12986:13139:13439:13845:14096:14659:21060:21063:21080:21099:21324:21433:21451:21499:21627:21740:21819:21917:21939:21987:21990:30034:30041:30054:300
X-HE-Tag: sign83_381575827251
X-Filterd-Recvd-Size: 12441
Received: from jonpc (cpc98568-croy24-2-0-cust213.19-2.cable.virginm.net
 [82.34.249.214]) (Authenticated sender: jon@beniston.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA
 for <usrp-users@lists.ettus.com>; Thu, 22 Oct 2020 12:55:54 +0000 (UTC)
To: <usrp-users@lists.ettus.com>
Date: Thu, 22 Oct 2020 13:55:50 +0100
Message-ID: <007001d6a872$ac63fb60$052bf220$@beniston.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdaocoYQkxBoPOpuQWSPwBW+iFGKfQ==
Content-Language: en-gb
Subject: [USRP-users] B210 RX stream rate problems
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
From: Jon Beniston via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jon Beniston <jon@beniston.com>
Content-Type: multipart/mixed; boundary="===============1188853676895390337=="
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

This is a multipart message in MIME format.

--===============1188853676895390337==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0071_01D6A87B.0E28D890"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0071_01D6A87B.0E28D890
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I'm trying to work out and optimise the maximum RX stream rate with a b210. 

 

If I run benchmark_rate --rx_rate X --rx_otw=sc16 --duration 30 on Windows,
I get timeouts if X is above about 18e6.

 

[00:00:05.661692300] Testing receive rate 20.000000 Msps on 1 channels

O[00:00:05.731709000] Timestamp after overrun recovery ahead of error
timestamp! Unable to calculate number of dropped samples.(Delta: -3748
ticks)

[00:00:05.953411900] Receiver error: ERROR_CODE_TIMEOUT, continuing...

 

System specification is:

 

Windows 10 Pro 64-bit Version 2004

18 core i9-7980XE @4Ghz, 64GB RAM, Samsung 970 SSD 

USB chipset: PCI 8086 Intel Corporation a2af 200 Series/Z370 Chipset Family
USB 3.0 xHCI Controller

Driver: Intel USB 3.0 eXtensible Host Controller 1.0 Microsoft

 

Benchmark prints out [INFO] [B200] Operating over USB 3, so should be using
USB 3.

B210 is connected directly to PC (without a hub in the way). Have also tried
a USB 3.1 xHCI controller, but that is no better.

I've tried UHD_4.0.0.0-release and UHD_3.15.0.0-0-gaea0e2de both with the
same performance.

 

Next question, is which libusb to use? The install page:
https://files.ettus.com/manual/page_install.html doesn't actually mention
where or what version to get. I initially installed MS64/libusb-1.0.dll
1.0.23.11397 from https://libusb.info/, but the MingGW64 version doesn't
appear to be any better. (1.0.22 and earlier doesn't appear to be
compatible)

 

I couldn't find anywhere in the docs that describes the values for --rx_spp,
but looking in the usrp lib source suggests its limited to 4096 for the b200
family. However, using that doesn't seem to improve the results.

 

In the mailing lists, I saw a few references to num_recv_frames, so gave
that a try with  --args "num_recv_frames=x". The behaviour varies with the
value chosen. If I use num_recv_frames=64, when running the benchmark, it
appears to pause for about 1 minute at:

 

[INFO] [B200] Initialize CODEC control...

 

Whereas usually it almost instantly moves on to the next step. 

 

If I set num_recv_frames=512 or 1024, then it doesn't pause, but there are
some strange warnings output:

 

[INFO] [B200] Asking for clock rate 16.000000 MHz...

[INFO] [B200] Actually got clock rate 16.000000 MHz.

[WARNING] [CORES] Timer loopback test failed!

[WARNING] [CORES] Expecting clock rate: 16 MHz

Approximate clock rate: 33.6429 MHz

 

[INFO] [B200] Asking for clock rate 20.000000 MHz...

[INFO] [B200] Actually got clock rate 20.000000 MHz.

[WARNING] [CORES] Timer loopback test failed!

[WARNING] [CORES] Expecting clock rate: 20 MHz

Approximate clock rate: 42.301 MHz

 

And it doesn't help improve performance (but it does complete the benchmark
at lower rates, even with those warnings). Any idea what might be happening?

 

Next, I thought I'd give Linux a try, by running Ubuntu 20 in a Virtual
Machine (VM Workstation 15) on the exact same PC with Windows as the host
OS. Ubuntu also had UHD 4.0.0 and libusb 1.0.23 installed.

 

Despite being in a VM, performance actually improved. It run at 28MSps
without any extra options, timing out at around 30MSps. 

 

Adding  num_recv_frames=64 did not cause the Timer loopback test failure.
Using num_recv_frames=1024 (Which appears to be the maximum) allows it to
run at 50MSps without timeouts!

 

So why might the Windows performance be less than half that of Linux (with
pretty much everything equal), and how can it be improved?

 

Thanks,

Jon

 

 


------=_NextPart_000_0071_01D6A87B.0E28D890
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;m =
trying to work out and optimise the maximum RX stream rate with a b210. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>If I run benchmark_rate --rx_rate X --rx_otw=3Dsc16 =
--duration 30 on Windows, I get timeouts if X is above about =
18e6.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>[00:00:05.661692300] Testing receive rate 20.000000 =
Msps on 1 channels<o:p></o:p></p><p =
class=3DMsoNormal>O[00:00:05.731709000] Timestamp after overrun recovery =
ahead of error timestamp! Unable to calculate number of dropped =
samples.(Delta: -3748 ticks)<o:p></o:p></p><p =
class=3DMsoNormal>[00:00:05.953411900] Receiver error: =
ERROR_CODE_TIMEOUT, continuing...<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>System =
specification is:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Windows 10 =
Pro 64-bit Version 2004<o:p></o:p></p><p class=3DMsoNormal>18 core =
i9-7980XE @4Ghz, 64GB RAM, Samsung 970 SSD <o:p></o:p></p><p =
class=3DMsoNormal>USB chipset: PCI 8086 Intel Corporation a2af 200 =
Series/Z370 Chipset Family USB 3.0 xHCI Controller<o:p></o:p></p><p =
class=3DMsoNormal>Driver: Intel USB 3.0 eXtensible Host Controller 1.0 =
Microsoft<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Benchmark prints out [INFO] [B200] Operating over USB =
3, so should be using USB 3.<o:p></o:p></p><p class=3DMsoNormal>B210 is =
connected directly to PC (without a hub in the way). Have also tried a =
USB 3.1 xHCI controller, but that is no better.<o:p></o:p></p><p =
class=3DMsoNormal>I&#8217;ve tried UHD_4.0.0.0-release and =
UHD_3.15.0.0-0-gaea0e2de both with the same =
performance.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Next question, is which libusb to use? The install =
page: <a =
href=3D"https://files.ettus.com/manual/page_install.html">https://files.e=
ttus.com/manual/page_install.html</a> doesn&#8217;t actually mention =
where or what version to get. I initially installed MS64/libusb-1.0.dll =
1.0.23.11397 from <a =
href=3D"https://libusb.info/">https://libusb.info/</a>, but the MingGW64 =
version doesn&#8217;t appear to be any better. (1.0.22 and earlier =
doesn&#8217;t appear to be compatible)<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I =
couldn&#8217;t find anywhere in the docs that describes the values for =
--rx_spp, but looking in the usrp lib source suggests its limited to =
4096 for the b200 family. However, using that doesn&#8217;t seem to =
improve the results.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>In the =
mailing lists, I saw a few references to num_recv_frames, so gave that a =
try with&nbsp; --args &quot;num_recv_frames=3Dx&quot;. The behaviour =
varies with the value chosen. If I use num_recv_frames=3D64, when =
running the benchmark, it appears to pause for about 1 minute =
at:<o:p></o:p></p><p class=3DMsoNormal =
style=3D'text-indent:36.0pt'><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>[INFO] [B200] Initialize CODEC =
control...<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Whereas usually it almost instantly moves on to the =
next step. <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>If I set num_recv_frames=3D512 or 1024, then it =
doesn&#8217;t pause, but there are some strange warnings =
output:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>[INFO] [B200] Asking for clock rate 16.000000 =
MHz...<o:p></o:p></p><p class=3DMsoNormal>[INFO] [B200] Actually got =
clock rate 16.000000 MHz.<o:p></o:p></p><p class=3DMsoNormal>[WARNING] =
[CORES] Timer loopback test failed!<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [CORES] Expecting clock rate: 16 =
MHz<o:p></o:p></p><p class=3DMsoNormal>Approximate clock rate: 33.6429 =
MHz<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>[INFO] [B200] Asking for clock rate 20.000000 =
MHz...<o:p></o:p></p><p class=3DMsoNormal>[INFO] [B200] Actually got =
clock rate 20.000000 MHz.<o:p></o:p></p><p class=3DMsoNormal>[WARNING] =
[CORES] Timer loopback test failed!<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [CORES] Expecting clock rate: 20 =
MHz<o:p></o:p></p><p class=3DMsoNormal>Approximate clock rate: 42.301 =
MHz<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>And it doesn&#8217;t help improve performance (but it =
does complete the benchmark at lower rates, even with those warnings). =
Any idea what might be happening?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Next, I =
thought I&#8217;d give Linux a try, by running Ubuntu 20 in a Virtual =
Machine (VM Workstation 15) on the exact same PC with Windows as the =
host OS. Ubuntu also had UHD 4.0.0 and libusb 1.0.23 =
installed.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Despite being in a VM, performance actually improved. =
It run at 28MSps without any extra options, timing out at around 30MSps. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Adding &nbsp;num_recv_frames=3D64 did not cause the =
Timer loopback test failure. Using num_recv_frames=3D1024 (Which appears =
to be the maximum) allows it to run at 50MSps without =
timeouts!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>So why might the Windows performance be less than half =
that of Linux (with pretty much everything equal), and how can it be =
improved?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Jon<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0071_01D6A87B.0E28D890--



--===============1188853676895390337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1188853676895390337==--


