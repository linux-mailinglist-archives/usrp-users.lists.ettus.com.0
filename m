Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D412A9BE9
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 09:33:18 +0200 (CEST)
Received: from [::1] (port=34092 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5mGZ-0006Sr-6n; Thu, 05 Sep 2019 03:33:15 -0400
Received: from mailin.dlr.de ([194.94.201.12]:41110)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Emanuel.Staudinger@dlr.de>)
 id 1i5mGU-0006MT-Sa
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 03:33:11 -0400
IronPort-SDR: np79d5ErrJqhnufL+WmGdx+u5D/sZy5G+oVCjZDEI8jXi95nYsc6biZTa/3v5P22OnyupwxNid
 xAzJhCyrFl9A==
IronPort-PHdr: =?us-ascii?q?9a23=3AXOLpHR3s3wRO2qgMsmDT+DRfVm0co7zxezQtwd?=
 =?us-ascii?q?8ZseIfKPad9pjvdHbS+e9qxAeQG9mCsbQd1LSd6vm6EUU7or+5+EgYd5JNUx?=
 =?us-ascii?q?JXwe43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQ?=
 =?us-ascii?q?viPgRpOOv1BpTSj8Oq3Oyu5pHfeQpFiCejbb9oMRm7rwTcusYLjYd/NKo61w?=
 =?us-ascii?q?fErGZPd+lK321jOEidnwz75se+/Z5j9zpftvc8/MNeUqv0Yro1Q6VAADspL2?=
 =?us-ascii?q?466svrtQLeTQSU/XsTTn8WkhtTDAfb6hzxQ4r8vTH7tup53ymaINH2QLUpUj?=
 =?us-ascii?q?ms86tnVBnlgzoBOjUk8m/Yl9Zwgbpbrhy/uhJ/34DaboKbNPV8f6PSYdwVSH?=
 =?us-ascii?q?FbUcpNUyFMGJ+wY5cSA+cHIO1Wr5P9p1wLrRamAgSiC+bvxSVOhn/rw6I61/?=
 =?us-ascii?q?4tHxza3AM6AtIBrXXUrNP6NKgMS+C417THzTHZb/9MxDjy9pHFfxY8qv+CWr?=
 =?us-ascii?q?JwdNDeyUgpFw7dkFqQtZDlPy6O1ugXr2eb6O9gWOSygGAkswF8uiWjyts2ho?=
 =?us-ascii?q?XUhY8YxUrI+Th3zYs2P9G0VVN3bca5HJdMrS2WKoh7T8w4T211tis3yacKtY?=
 =?us-ascii?q?C0cSQS1ZgqxhrSZ+aZf4WI7R/vTuScLS12iX9jZbmxnQy98VK6xe35TsS01V?=
 =?us-ascii?q?FKoTdbndTUrXAN0gDT6tCASvtg4ketwTaP2B7X6uFDOU06m6zVJZAuzLAwlp?=
 =?us-ascii?q?QdtkfNECjslknqkaOYeUQr9/ay5+TmZLXmuoWcOJVuhg7jNqQugNazDvkmPQ?=
 =?us-ascii?q?QWXmib//qz1KH78EHkXLlGlOA6n6rWvZzAOMgWqK20DxVI3oo+8xq/Ci2p0N?=
 =?us-ascii?q?UcnXkJNlJFfxeHgpDmNVHLOv/4C+q/jEqokDtx2v7GIqfuAojQIXjClrfhcq?=
 =?us-ascii?q?hy61RHxQUuydBf/YhYBawfL/7rQE/+qMTYDgMlMwyz2+vnDs9y1p8AVm6VHq?=
 =?us-ascii?q?+WLqbSsUeM5u0xOOSDepMVuCrgK/g+/fLhkXg5mVoFd6mzwZQXcGy4HuhhI0?=
 =?us-ascii?q?iBfHrsmc0BEX8TsgojV+zllkeCUSVIana2XqI8/S07CJm8AYjdWoCtnKGB3D?=
 =?us-ascii?q?yhEpJKYWBGDwPELXC9I4ONR/pKdC+XOstsujEYSaW6DYQm0Ef9mhX9zu8zA+?=
 =?us-ascii?q?/d/DAVsdTYyNFo6+zVmhwo3TBwFYKR3jfeHClPgmoUSmpuj+hEqktnxwLb3A?=
 =?us-ascii?q?=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2G3AQDduHBd/wuKuAplGwEBAQEDAQE?=
 =?us-ascii?q?BBwMBAQGBZ4EWgVsUgS8KlTKbFQkBAQEBAQEBAQEgAQoMAQEChD0Cglk4EwI?=
 =?us-ascii?q?DCAEBBQEBAQEBBgQBAQKGFwyCOiIcgQsBAQEBAQEBAQFNAkQtAgQBAWwLEAI?=
 =?us-ascii?q?BKh0HJwEKFBEBAQQOBQiDG4EdfKtkik6BNI4PgRFGgh5sgmEBBIE+AQEgNIM?=
 =?us-ascii?q?HgiYEjHiIFUKIEI5IB4E7h16IVYUzgyOKPIsRlXSSQCpggRpxT4IEaAmCQgM?=
 =?us-ascii?q?Xg0+KU3MBAY4HgSKBIwEB?=
X-IronPort-AV: E=Sophos;i="5.64,469,1559512800"; d="scan'208,217";a="21622607"
To: <nate.temple@ettus.com>
Thread-Topic: [USRP-users] N200: Sequence error at low sampling rate
Thread-Index: AdViMadolrykrHJHSQyxrLgPkYKdygA8XimAACRsAP4=
Date: Thu, 5 Sep 2019 07:32:28 +0000
Message-ID: <38E0BEB98EBB5941BDC0A8EA39458CB4A88E365E@DLDEFFMIMP04EXC.intra.dlr.de>
References: <38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34@DLDEFFMIMP04EXC.intra.dlr.de>,
 <CAL263iyOs=-srcJh8H5cQ0wm0PCAKsRZw55A5wDQ=6pCXCD1XQ@mail.gmail.com>
In-Reply-To: <CAL263iyOs=-srcJh8H5cQ0wm0PCAKsRZw55A5wDQ=6pCXCD1XQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: A0A6A0907EA20DC7DDD86B7ACBF0044802DC656C5056B19C481709E11242C35B2000:8
MIME-Version: 1.0
Subject: Re: [USRP-users] N200: Sequence error at low sampling rate
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6203788843182386940=="
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

--===============6203788843182386940==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E365EDLDEFFMIMP04EXC_"

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E365EDLDEFFMIMP04EXC_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Nate,

thank you for the support.
The lspci output is as follows:
00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (2) I219=
-LM (rev 31)
05:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network Connect=
ion (rev 03)
The I219-LM is used.

On Tuesday, when I had those sequence troubles, I restarted the computers s=
everal times to test if there is any influence. Rebooting did not help.

On Wednesday, I started my computers again and wanted to use ethtool to get=
 an idea of dropped packets. No matter how often I tried and for how long, =
I was not able to produce sequence errors: neither for 1 Msps nor 25 Msps. =
This puzzles me, because I have no clue what could have been the cause.

This morning I benchmarked on two computers again: Guess what...no sequence=
 errors.

Nate, I think we can close this thread now, and I will check with ethtool o=
nce I get those sequence errors again and then come back to you.

Regards,
Emanuel


Yesterday
________________________________
Von: Nate Temple [nate.temple@ettus.com]
Gesendet: Mittwoch, 4. September 2019 17:17
An: Staudinger, Emanuel
Cc: USRP-users@lists.ettus.com
Betreff: Re: [USRP-users] N200: Sequence error at low sampling rate

Hi Emanuel,

What ethernet controller is installed on your NUC?

lspci | grep Ethernet


Can you try rebooting the NUC, and then run a benchmark to trigger the sequ=
ence errors, after that run:

ethtool -S <interface>

and send its output.

Regards,
Nate Temple

On Tue, Sep 3, 2019 at 1:35 AM Emanuel via USRP-users <usrp-users@lists.ett=
us.com<mailto:usrp-users@lists.ettus.com>> wrote:
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



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E365EDLDEFFMIMP04EXC_
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
<div>Hi Nate,</div>
<div><br>
</div>
<div>thank you for the support.</div>
<div>The lspci output is as follows:</div>
<div>00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (2)=
 I219-LM (rev 31)<br>
05:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network Connect=
ion (rev 03)<br>
The I219-LM is used.</div>
<div><br>
</div>
<div>On Tuesday, when I had those sequence troubles, I restarted the comput=
ers several times to test if there is any influence. Rebooting did not help=
.</div>
<div><br>
</div>
<div>On Wednesday, I started my computers again and wanted to use ethtool t=
o get an idea of dropped packets. No matter how often I tried and for how l=
ong, I was not able to produce sequence errors: neither for 1 Msps nor 25 M=
sps. This puzzles me, because I
 have no clue what could have been the cause.</div>
<div><br>
</div>
<div>This morning I benchmarked on two computers again: Guess what...no seq=
uence errors.</div>
<div><br>
</div>
<div>Nate, I think we can close this thread now, and I will check with etht=
ool once I get those sequence errors again and then come back to you.</div>
<div><br>
</div>
<div>Regards,</div>
<div>Emanuel</div>
<div><br>
</div>
<div><br>
</div>
<div>Yesterday<br>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div id=3D"divRpF56169" style=3D"direction: ltr;"><font size=3D"2" face=3D"=
Tahoma" color=3D"#000000"><b>Von:</b> Nate Temple [nate.temple@ettus.com]<b=
r>
<b>Gesendet:</b> Mittwoch, 4. September 2019 17:17<br>
<b>An:</b> Staudinger, Emanuel<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Betreff:</b> Re: [USRP-users] N200: Sequence error at low sampling rate<=
br>
</font><br>
</div>
<div></div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">Hi Emanuel,<br>
<br>
What ethernet controller is installed on your NUC? &nbsp;<br>
<br>
lspci | grep Ethernet<br>
<br>
<br>
Can you try rebooting the NUC, and then run a benchmark to trigger the sequ=
ence errors, after that run:<br>
<br>
ethtool -S &lt;interface&gt; <br>
<br>
and send its output.<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2019 at 1:35 AM Emanue=
l via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank" rel=3D"noopener noreferrer">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div style=3D"direction:ltr; font-family:Tahoma; color:rgb(0,0,0); font-siz=
e:10pt">
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
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"noop=
ener noreferrer">USRP-users@lists.ettus.com</a><br>
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

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88E365EDLDEFFMIMP04EXC_--


--===============6203788843182386940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6203788843182386940==--

