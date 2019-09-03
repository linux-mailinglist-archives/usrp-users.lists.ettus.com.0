Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3BEA6412
	for <lists+usrp-users@lfdr.de>; Tue,  3 Sep 2019 10:35:22 +0200 (CEST)
Received: from [::1] (port=46214 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i54HY-0006rT-OR; Tue, 03 Sep 2019 04:35:20 -0400
Received: from mailin.dlr.de ([194.94.201.12]:44136)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Emanuel.Staudinger@dlr.de>)
 id 1i54HU-0006ZD-6U
 for usrp-users@lists.ettus.com; Tue, 03 Sep 2019 04:35:16 -0400
IronPort-SDR: OfRLdKZn2YWIq3frFGOoNPN97zq+xV7k4IWlKRKfAaYM27EVJeK+AP4+q4JfHK7EIEzVmciWcR
 GhkjcUhhmvqw==
IronPort-PHdr: =?us-ascii?q?9a23=3Axa2buxefnsVVdc7Q5Z61sw2+lGMj4u6mDksu8p?=
 =?us-ascii?q?Mizoh2WeGdxcuzYh7h7PlgxGXEQZ/co6odzbaP6ea5BjZLuc3JmUtBWaQEbw?=
 =?us-ascii?q?UCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdFR?=
 =?us-ascii?q?rlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MQu6oR/MusQUn4duJbo9xx?=
 =?us-ascii?q?XUqXZUZupawn9lK0iOlBjm/Mew+5Bj8yVUu/0/8sNLTLv3caclQ7FGFToqK2?=
 =?us-ascii?q?866tHluhnFVguP+2ATUn4KnRpSAgjK9w/1U5HsuSbnrOV92S2aPcrrTbAoXD?=
 =?us-ascii?q?mp8qlmRAP0hCoBKjU09nzchM5tg6JBuB+vpwJxzZPIYI+bN/R+f7/SctwBSG?=
 =?us-ascii?q?VbQspcUzZMDp+gY4cSCecKIOZWr5P6p1sLtRazAgaiBOb1xT9Om3/5w6k63/?=
 =?us-ascii?q?48HwHaxgMgAs8BsHXSrNX6KqgSS/u4w7TMzTXZdf9ZxCny5ZHOfxs8ov+MRa?=
 =?us-ascii?q?p9fdfNxUU1Cg/IjVqdpZb4Mz6b1ekBqXWX4/R4We6yl2IrsRx9rzugy8s2l4?=
 =?us-ascii?q?XEiIEYxkra+Sh22Io5ONy1RUphbdK6EJZduDuWOolsTs4sRWxjpTw0xaccuZ?=
 =?us-ascii?q?GheSgH0JEnxxnCZPOZa4WI+RfjVPqJITd/mXJlZKqzhxas/kikze3xTse63l?=
 =?us-ascii?q?BEoCRKktfCtncD2R/U5MadVvdx4Eiv1jeR2gzJ6+FEJ1w0lbDBJJI737Ewko?=
 =?us-ascii?q?ATvV7eESDogEn2jamWeVs4+uWw9ujrfq/qqoKfOoJ7kA3yL6ojl8+lDeglLA?=
 =?us-ascii?q?QCR22b9v691L3n8035WrJKjvgun6fWtZDVP8IbprOnDA9RyIot9gq/AC270N?=
 =?us-ascii?q?sFnHkHKl1Fdwydj4XyJl7OJOr4Ae2ijFuyiDtr3ezJPqX9ApXRKXjOiKrhfa?=
 =?us-ascii?q?1n605E0QYz0Mtf6IxOCrEaO//zXk7xtMfEDh8iKQC73frnCMlg1oMFQ26AHq?=
 =?us-ascii?q?iZMKaB+WOPs7YyOPOUIZIOtSzmA/wk/OL1y3IlhUIGO6Ku2M1ERmq/G6EyDk?=
 =?us-ascii?q?CQZ2fhhpE6DW4Xsgs4Q+HwoFGGS3hfaiDhDOoH+jgnBdf+Xs/4TYe3jenZ0Q?=
 =?us-ascii?q?=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2F2EAAFJW5d/wyKuAplHgEGBwaBZwK?=
 =?us-ascii?q?BFIFbgU2XMJkWCQEBAQEBAQEBATcBAYQ/AoMUOBMCAwgBAQUBAQEBAQYEAQE?=
 =?us-ascii?q?ChiNCARABgWYihAEBKlYmAQQbhDisQYpFgTQBjg6BEUaCHmyEJAEBIIM7giY?=
 =?us-ascii?q?EjHSIU4gOjkQHgTuVXY1aiwyoToF6cYM8gkoDF44ihh+Hd4EigSMBAQ?=
X-IronPort-AV: E=Sophos;i="5.64,462,1559512800"; d="scan'208,217";a="21522930"
To: <usrp-users@lists.ettus.com>
Thread-Topic: N200: Sequence error at low sampling rate
Thread-Index: AdViMadolrykrHJHSQyxrLgPkYKdyg==
Date: Tue, 3 Sep 2019 08:34:33 +0000
Message-ID: <38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34@DLDEFFMIMP04EXC.intra.dlr.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 86E74C082F1DDFF5247C9E105127FF0C4E7988B73B82D6AC3847E04BE6A482FC2000:8
MIME-Version: 1.0
Subject: [USRP-users] N200: Sequence error at low sampling rate
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
From: Emanuel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emanuel.Staudinger@dlr.de
Content-Type: multipart/mixed; boundary="===============7420733281697865564=="
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

--===============7420733281697865564==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34DLDEFFMIMP04EXC_"

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34DLDEFFMIMP04EXC_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I experience a weird behavior while streaming from my N200 at low sampling =
rates.
The setup is as follows: USRP N200 with latest FPGA image, UHD Version 3.14=
.1.0, Host computer is a Intel NUC Hades Canyon with Ubuntu 18.04 LTS and C=
PU governor set to performance. The USRP is directly connected to the NUC (=
no switch in between)

If I use the benchmark program at 1 MHz sampling rate, I get multiple seque=
nce errors, see one example log at the end of this Mail. It does not seem t=
o correlate with the MTU size: I tried smaller ones and in same cases a sma=
ller MTU size (about 1000) seems to decrease the number of sequence errors =
a bit. The overall CPU load is pretty small. I also experience the same tro=
ubles if I simply stream into a null-sink or any other block in Gnuradio.

If I use a sampling rate of 20MHz or 25MHz I do not get any sequence errors=
. And that's what puzzles me: Does anyone have an idea why it works worse a=
t low sampling rates?

In the manual I found the entry about the ups_per_fifo and ups_per_sec for =
the N200 series. However, I did not find more information on that: Would ch=
anging those settings help, and if so, in which direction should I change t=
hose parameters?

Best regards,
Emanuel

xx@xx:/usr/local/lib/uhd/examples$ ./benchmark_rate --duration 600 --rx_sub=
dev A:A --rx_rate 1e6 --args "addr=3D192.168.21.2"

[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106501; UHD_3.14.1.HEAD-0-=
gbfb9c1c7
[00:00:00.000001] Creating the usrp device with: addr=3D192.168.21.2...
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[INFO] [USRP2] Detecting internal GPSDO....
[INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware Rev =
0.929
[INFO] [USRP2] Setting references to the internal GPSDO
Using Device: Single USRP:
  Device: USRP2 / N-Series Device
  Mboard 0: N200r4
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: BasicRX (A)
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Unknown (0xffff) - 0

[00:00:02.491478] Setting device timestamp to 0...
[00:00:02.491698] Testing receive rate 1.000000 Msps on 1 channels
[D00:01:03.889970] Detected Rx sequence error.
[D00:01:28.796795] Detected Rx sequence error.
[D00:01:32.880153] Detected Rx sequence error.
[D00:02:34.087632] Detected Rx sequence error.
[D00:05:13.241379] Detected Rx sequence error.
[D00:06:13.370751] Detected Rx sequence error.
[D00:07:05.771504] Detected Rx sequence error.
[D00:07:12.235087] Detected Rx sequence error.
[D00:08:25.865832] Detected Rx sequence error.
[D00:09:18.883324] Detected Rx sequence error.
[00:10:02.491954] Benchmark complete.


Benchmark rate summary:
  Num received samples:     599997347
  Num dropped samples:      3630
  Num overruns detected:    0
  Num transmitted samples:  0
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 10
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!




--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34DLDEFFMIMP04EXC_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>Hi everybody,</div>
<div><br>
</div>
<div>I experience a weird behavior while streaming from my N200 at low samp=
ling rates.</div>
<div>The setup is as follows: USRP N200 with latest FPGA image, UHD Version=
 3.14.1.0, Host computer is a Intel NUC Hades Canyon with Ubuntu 18.04 LTS =
and CPU governor set to performance. The USRP is directly connected to the =
NUC (no switch in between)<br>
</div>
<div><br>
</div>
<div>If I use the benchmark program at 1 MHz sampling rate, I get multiple =
sequence errors, see one example log at the end of this Mail. It does not s=
eem to correlate with the MTU size: I tried smaller ones and in same cases =
a smaller MTU size (about 1000)
 seems to decrease the number of sequence errors a bit. The overall CPU loa=
d is pretty small. I also experience the same troubles if I simply stream i=
nto a null-sink or any other block in Gnuradio.<br>
</div>
<div><br>
</div>
<div>If I use a sampling rate of 20MHz or 25MHz I do not get any sequence e=
rrors. And that's what puzzles me: Does anyone have an idea why it works wo=
rse at low sampling rates?</div>
<div><br>
</div>
<div>In the manual I found the entry about the ups_per_fifo and ups_per_sec=
 for the N200 series. However, I did not find more information on that: Wou=
ld changing those settings help, and if so, in which direction should I cha=
nge those parameters?<br>
</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Emanuel</div>
<div><br>
</div>
<div>xx@xx:/usr/local/lib/uhd/examples$ ./benchmark_rate --duration 600 --r=
x_subdev A:A --rx_rate 1e6 --args &quot;addr=3D192.168.21.2&quot;<br>
<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 8.3.0; Boost_106501; UHD_3.14.1=
.HEAD-0-gbfb9c1c7<br>
[00:00:00.000001] Creating the usrp device with: addr=3D192.168.21.2...<br>
[INFO] [USRP2] Opening a USRP2/N-Series device...<br>
[INFO] [USRP2] Current recv frame size: 1472 bytes<br>
[INFO] [USRP2] Current send frame size: 1472 bytes<br>
[INFO] [USRP2] Detecting internal GPSDO.... <br>
[INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware Rev =
0.929<br>
[INFO] [USRP2] Setting references to the internal GPSDO<br>
Using Device: Single USRP:<br>
&nbsp; Device: USRP2 / N-Series Device<br>
&nbsp; Mboard 0: N200r4<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: BasicRX (A)<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: Unknown (0xffff) - 0<br>
<br>
[00:00:02.491478] Setting device timestamp to 0...<br>
[00:00:02.491698] Testing receive rate 1.000000 Msps on 1 channels<br>
[D00:01:03.889970] Detected Rx sequence error.<br>
[D00:01:28.796795] Detected Rx sequence error.<br>
[D00:01:32.880153] Detected Rx sequence error.<br>
[D00:02:34.087632] Detected Rx sequence error.<br>
[D00:05:13.241379] Detected Rx sequence error.<br>
[D00:06:13.370751] Detected Rx sequence error.<br>
[D00:07:05.771504] Detected Rx sequence error.<br>
[D00:07:12.235087] Detected Rx sequence error.<br>
[D00:08:25.865832] Detected Rx sequence error.<br>
[D00:09:18.883324] Detected Rx sequence error.<br>
[00:10:02.491954] Benchmark complete.<br>
<br>
<br>
Benchmark rate summary:<br>
&nbsp; Num received samples:&nbsp;&nbsp;&nbsp;&nbsp; 599997347<br>
&nbsp; Num dropped samples:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3630<br>
&nbsp; Num overruns detected:&nbsp;&nbsp;&nbsp; 0<br>
&nbsp; Num transmitted samples:&nbsp; 0<br>
&nbsp; Num sequence errors (Tx): 0<br>
&nbsp; Num sequence errors (Rx): 10<br>
&nbsp; Num underruns detected:&nbsp;&nbsp; 0<br>
&nbsp; Num late commands:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<br>
&nbsp; Num timeouts (Tx):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<br>
&nbsp; Num timeouts (Rx):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<br>
<br>
<br>
Done!<br>
<br>
</div>
<div><br>
</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34DLDEFFMIMP04EXC_--


--===============7420733281697865564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7420733281697865564==--

