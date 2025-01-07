Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4C6A03CC5
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2025 11:46:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA9E1385532
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2025 05:46:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736246761; bh=ooh6+CHqji7Pe1fbUH05ffDnU1m0wreX/eUd7Mwyamc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=rz67OBiyTt/KEJhu9ybfI5CyrAUvitzg7wOTLC3wHCaJnlRNvpccw8tB9hiYfdctj
	 CDNMVduLJZEJDXwpJEdKGR4Iew8ltI8aQfImzTYqWYfweImOnNoa7CrurEg7CFOXFK
	 OkVlqRnRZ/qoL2c7iIi5MaAJoEbC4lbjW0/MoMhHr+mUCA073Rme26s2a2HsdZ2R2g
	 LgwXFRPUCxwz3M6XTxGR2389vBKP1MLlfsZd5Z9L2PUXdvz9B+PKQ1KBCu0Pwmhx5m
	 QMCI7XfxDOnMLFIMEdYd0H4Tijgg42nTC2YuJ4jFxFIslz3VEDf+G2xGgSBA/o8eqY
	 /g/Ft+CtfaHTw==
Received: from fm-1.ptn.foi.se (ip1-m.foi.se [150.227.5.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D1CEF3853D4
	for <usrp-users@lists.ettus.com>; Tue,  7 Jan 2025 05:45:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=foi.se header.i=@foi.se header.b="DoZ9+yv9";
	dkim-atps=neutral
Received: from ex05.win.foi.se (etn-gw.foi.se [150.227.13.254])
	by fm-1.ptn.foi.se with ESMTP id 507AjFVi006302-507AjFVj006302
	for <usrp-users@lists.ettus.com>; Tue, 7 Jan 2025 11:45:15 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Problem sending samples with tx_samples_from_file to two
 USRP2/USRPN210
Thread-Index: AQHbYPAnqom6TYZvUESXBOXiP4aWwg==
Date: Tue, 7 Jan 2025 10:45:15 +0000
Message-ID: <89a4b5930a3e4d4693aa8bbb9f4b66ed@foi.se>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [150.227.160.212]
MIME-Version: 1.0
X-FEAS-Client-IP: 150.227.13.254
X-FE-Last-Public-Client-IP: 150.227.13.254
X-FE-Policy-ID: 8:3:5:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=foi.se; s=dk2048-2020; c=relaxed/relaxed;
 h=from:to:subject:date:message-id:content-type:mime-version;
 bh=RWJv9xCyJMso+ZZ+ZbSoqH3aG0rgnjngjPW9lc6a5X0=;
 b=DoZ9+yv9Qz3U+n52xNF2GRjr3Yb28gcSpY8KtkilTuR+FFaer8QN6VE9EzN1O7DRo+oBQ4RdWJfW
	xQXzAwLYT7lJrvXmxQ6Uw1D5y0B4OT8TN7tXPKltQr7wRiGPie6A2wv0ZLgx34uOKPW0IDxX3tef
	eDmYGOA2fBOTfnhHcT3iLvB+bcGPuWJeTl/xQHU0dVJc2eA7a5Q7caQ+XE+hsa+7oRnwMIb/hJmH
	9wlSEXxj3o9ccq6gf/oMy6UpTEVS5DAjQbweNPoBKDEXCxtrGKlZDkEii3KhERRoCA62UsdPqpd4
	PpdjdzJvlD0senIQQDRtciw84OwPwvXI/iPZ4w==
Message-ID-Hash: NS43RPT7YDH4VXTOK5OZYGRAMRBTUR3Q
X-Message-ID-Hash: NS43RPT7YDH4VXTOK5OZYGRAMRBTUR3Q
X-MailFrom: per.zetterberg@foi.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem sending samples with tx_samples_from_file to two USRP2/USRPN210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NS43RPT7YDH4VXTOK5OZYGRAMRBTUR3Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Per Zetterberg via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Per Zetterberg <per.zetterberg@foi.se>
Content-Type: multipart/mixed; boundary="===============2697134997626468107=="

--===============2697134997626468107==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_89a4b5930a3e4d4693aa8bbb9f4b66edfoise_"

--_000_89a4b5930a3e4d4693aa8bbb9f4b66edfoise_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear List,


I am trying to stream using tx_samples_from_file as:


./tx_samples_from_file --args=3D"addr0=3D192.168.10.2,addr1=3D192.168.10.3"=
 --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal


However only the LED-A of USRP 192.168.10.2 is on. If I change order to


./tx_samples_from_file --args=3D"addr0=3D192.168.10.3,addr1=3D192.168.10.2"=
 --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal


only LED-A of USRP 192.168.10.3 is on. The results are the same on a pair o=
f USRP2 as on a pair of N210.

I use ubuntu 22.04 with UHD version "tag: v4.7.0.0-rc1". The USRPs are conn=
ected though a netgear switch. Below is an example printout from a run:

./tx_samples_from_file --args=3D"addr0=3D192.168.10.3,addr1=3D192.168.10.2"=
 --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal

Creating the usrp device with: addr0=3D192.168.10.3,addr1=3D192.168.10.2...
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.HEAD-0-=
g327f294e
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
Using Device: Multi USRP:
  Device: USRP2 / N-Series Device
  Mboard 0: USRP2 r4
  Mboard 1: USRP2 r3
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: LFRX (AB)
  RX Channel: 1
    RX DSP: 0
    RX Dboard: A
    RX Subdev: LFRX (AB)
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: LFTX (AB)
  TX Channel: 1
    TX DSP: 0
    TX Dboard: A
    TX Subdev: LFTX (AB)

Setting TX Rate: 0.390625 Msps...
Actual TX Rate: 0.390625 Msps...

Setting TX Freq: 0.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 0.000000 MHz...

Checking TX: Ref: locked ...
Press Ctrl + C to stop streaming...
^C
Done!

^C[WARNING] [UHD] Exception caught in safe-call.
  in ~usrp2_fifo_ctrl_impl
  at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:49
this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
^[[A^C^C[WARNING] [UHD] Exception caught in safe-call.
  in ~usrp2_fifo_ctrl_impl
  at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:49
this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks

Any help would be appreciated.

BR/
Per


--_000_89a4b5930a3e4d4693aa8bbb9f4b66edfoise_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p></p>
<div>Dear List,<br>
<br>
<br>
I am trying to stream using tx_samples_from_file as:<br>
<br>
<br>
./tx_samples_from_file --args=3D&quot;addr0=3D192.168.10.2,addr1=3D192.168.=
10.3&quot; --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal<br>
<br>
<br>
However only the LED-A of USRP 192.168.10.2 is on. If I change order to<br>
<br>
<br>
./tx_samples_from_file --args=3D&quot;addr0=3D192.168.10.3,addr1=3D192.168.=
10.2&quot; --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal<br>
<br>
<br>
only LED-A of USRP 192.168.10.3 is on. The results are the same on a pair o=
f USRP2 as on a pair of N210.<br>
<br>
I use ubuntu 22.04 with UHD version &quot;tag: v4.7.0.0-rc1&quot;. The USRP=
s are connected though a netgear switch. Below is an example printout from =
a run:<br>
<br>
<div>./tx_samples_from_file --args=3D&quot;addr0=3D192.168.10.3,addr1=3D192=
.168.10.2&quot; --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal<br>
<br>
Creating the usrp device with: addr0=3D192.168.10.3,addr1=3D192.168.10.2...=
<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_4.7.0=
.HEAD-0-g327f294e<br>
[INFO] [USRP2] Opening a USRP2/N-Series device...<br>
[INFO] [USRP2] Current recv frame size: 1472 bytes<br>
[INFO] [USRP2] Current send frame size: 1472 bytes<br>
Using Device: Multi USRP:<br>
&nbsp; Device: USRP2 / N-Series Device<br>
&nbsp; Mboard 0: USRP2 r4<br>
&nbsp; Mboard 1: USRP2 r3<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: LFRX (AB)<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: LFRX (AB)<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: LFTX (AB)<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: LFTX (AB)<br>
<br>
Setting TX Rate: 0.390625 Msps...<br>
Actual TX Rate: 0.390625 Msps...<br>
<br>
Setting TX Freq: 0.000000 MHz...<br>
Setting TX LO Offset: 0.000000 MHz...<br>
Actual TX Freq: 0.000000 MHz...<br>
<br>
Checking TX: Ref: locked ...<br>
Press Ctrl &#43; C to stop streaming...<br>
^C<br>
Done!<br>
<br>
^C[WARNING] [UHD] Exception caught in safe-call.<br>
&nbsp; in ~usrp2_fifo_ctrl_impl<br>
&nbsp; at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp=
:49<br>
this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out looking for ack=
s<br>
^[[A^C^C[WARNING] [UHD] Exception caught in safe-call.<br>
&nbsp; in ~usrp2_fifo_ctrl_impl<br>
&nbsp; at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp=
:49<br>
this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out looking for ack=
s<br>
<br>
</div>
Any help would be appreciated.</div>
<div><br>
</div>
<div>BR/</div>
<div>Per <br>
<br>
</div>
<p></p>
</div>
</body>
</html>

--_000_89a4b5930a3e4d4693aa8bbb9f4b66edfoise_--

--===============2697134997626468107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2697134997626468107==--
