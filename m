Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1363B269874
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 23:59:57 +0200 (CEST)
Received: from [::1] (port=58594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHwVu-00035c-41; Mon, 14 Sep 2020 17:59:54 -0400
Received: from a8-31.smtp-out.amazonses.com ([54.240.8.31]:35922)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
 (Exim 4.93) (envelope-from
 <010001748ea0faca-5195f8e1-5fdc-4d29-8473-ec0d9d392eef-000000@amazonses.com>)
 id 1kHwVp-000306-TT
 for usrp-users@lists.ettus.com; Mon, 14 Sep 2020 17:59:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=leirvt27dq24qdtfhpelrkwnirsvxls5; d=ltsnet.net; t=1600120749;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 bh=PsFkhi7YM4HCPplutdDOUJvM3iDqtKbeVUwEVewrdGM=;
 b=ITGr+2lRtj5iJdD1kCsaEJYF/Iguo8JVOdOS6Bk5arIXT0huB4OhmxMOOVdIKtHV
 LxUw0tgRT06Kg7Cu7VmukZ1yWcIGztG8bYKmHcpLPhVdjQXFjIi9hmH2T2fLeLpVfgw
 GBkgGoOTC7/ash0e9gKJJK5K8oZAeJvien5ARsH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=224i4yxa5dv7c2xz3womw6peuasteono; d=amazonses.com; t=1600120749;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version:Feedback-ID;
 bh=PsFkhi7YM4HCPplutdDOUJvM3iDqtKbeVUwEVewrdGM=;
 b=k7Z7pcZ2DHWAtLwxFdQco4H+WlqOI9NX5tlvnHLkRadRQMm5nnyciv/PZWYaeDxt
 9I1li48Idg4tFWAfn9vkMOzRbUMkmBw+UfbA/nMvLpuHiFPFj81TvMJk4tvuWo+OnN0
 DDj23HJzcbjzUagnkY1XDzzyZ9jvcLfKfKFO4Mng=
X-ASG-Debug-ID: 1600120748-13da5840a61263b0001-5wTQH4
X-Barracuda-Envelope-From: rclancy@ltsnet.net
X-Barracuda-Effective-Source-IP: UNKNOWN[65.127.220.148]
X-Barracuda-Apparent-Source-IP: 65.127.220.148
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [ERROR] [RPC] TDC Failed to reset.
X-ASG-Orig-Subj: [ERROR] [RPC] TDC Failed to reset.
Thread-Index: AQHWiuEpivxXYXHZuEGTrlk1wh9QxA==
Date: Mon, 14 Sep 2020 21:59:08 +0000
Message-ID: <010001748ea0faca-5195f8e1-5fdc-4d29-8473-ec0d9d392eef-000000@email.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.40.195.107]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[65.127.220.148]
X-Barracuda-Start-Time: 1600120748
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://mx0.ltsnet.net:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at ltsnet.net
X-Barracuda-Scan-Msg-Size: 9220
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No, SCORE=0.50 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M, HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.84632
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
 0.50 BSF_RULE7568M          Custom Rule 7568M
X-SES-Outgoing: 2020.09.14-54.240.8.31
Feedback-ID: 1.us-east-1.V/CRDAuSMjsGd/XgcRknIHwtEgjJofZ/T2DY67iFlVQ=:AmazonSES
Subject: [USRP-users] [ERROR] [RPC] TDC Failed to reset.
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
From: Robert Clancy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Clancy <rclancy@ltsnet.net>
Content-Type: multipart/mixed; boundary="===============7824606629285478452=="
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

--===============7824606629285478452==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3cc5eda9897e49a2b0d81220a39daabeltsnetnet_"

--_000_3cc5eda9897e49a2b0d81220a39daabeltsnetnet_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to get an N321 working with a WhiteRabbit switch.


First, if I don't try to set the timing to sfp0, everything is fine:


myprompt:./rx_samples_to_file --args "addr=3D192.168.10.2,clock_source=3Din=
ternal,master_clock_rate=3D250e06" --file blob.dat --type short --duration =
1 --freq 75010000 --ant "TX/RX" --channel 0

Creating the usrp device with: addr=3D192.168.10.2,clock_source=3Dinternal,=
master_clock_rate=3D250e06...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-54-gb=
c585b43
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2,clock_source=3Dinternal,master_clock_rate=3D250e06
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,master_clock_rate=3D250e06,product=3Dn320,mgmt_addr=3D192.168.10.2,=
time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,mas=
ter_clock_rate=3D250e06,product=3Dn320,mgmt_addr=3D192.168.10.2,time_source=
=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,mas=
ter_clock_rate=3D250e06,product=3Dn320,mgmt_addr=3D192.168.10.2,time_source=
=3Dinternal'
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000320)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000320)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-31B36CF
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Rhodium
  RX Channel: 1
    RX DSP: 0
    RX Dboard: B
    RX Subdev: Rhodium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Rhodium
  TX Channel: 1
    TX DSP: 0
    TX Dboard: B
    TX Subdev: Rhodium

Setting RX Rate: 1.000000 Msps...
Actual RX Rate: 1.000000 Msps...

Setting RX Freq: 75.010000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 75.010000 MHz...

Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...

Done!

However if I include the required argument to set the timing source to SFP0=
, then I get a TDC error:

myprompt:~/WR_sandbox/uhd/Debug_Build/examples$ ./rx_samples_to_file --args=
 "addr=3D192.168.10.2,clock_source=3Dinternal,time_source=3Dsfp0,master_clo=
ck_rate=3D250e06" --file blob.dat --type short --duration 1 --freq 75010000=
 --ant "TX/RX" --channel 0

Creating the usrp device with: addr=3D192.168.10.2,clock_source=3Dinternal,=
time_source=3Dsfp0,master_clock_rate=3D250e06...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-54-gb=
c585b43
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2,clock_source=3Dinternal,time_source=3Dsfp0,master_clock_ra=
te=3D250e06
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,mgm=
t_addr=3D192.168.10.2,skip_rfic=3DNone,master_clock_rate=3D250000000.0,ref_=
clk_freq=3D25000000.0,time_source=3Dsfp0,product=3Dn320'
[ERROR] [RPC] TDC Failed to reset.
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0
[ERROR] [MPM.RPCServer] init() failed with error: TDC Failed to reset.
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC Fa=
iled to reset.


I've loaded the WX firmware and am using UHD-3.15-LTS.

Any ideas what is going on?

Otto


--_000_3cc5eda9897e49a2b0d81220a39daabeltsnetnet_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I'm trying to get an N321 working with a WhiteRabbit switch. <br>
</p>
<p><br>
</p>
<p>First, if I don't try to set the timing to sfp0, everything is fine:</p>
<p><br>
</p>
<p></p>
<div><i>myprompt:./rx_samples_to_file --args &quot;addr=3D192.168.10.2,cloc=
k_source=3Dinternal,master_clock_rate=3D250e06&quot; --file blob.dat --type=
 short --duration 1 --freq 75010000 --ant &quot;TX/RX&quot; --channel 0
<br>
<br>
Creating the usrp device with: addr=3D192.168.10.2,clock_source=3Dinternal,=
master_clock_rate=3D250e06...<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UHD_3.15.0=
.0-54-gbc585b43<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2,clock_source=3Dinternal,master_clock_rate=3D250e06<br>
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,master_clock_rate=3D250e06,product=3Dn320,mgmt_addr=3D192.168.10.2,=
time_source=3Dinternal'.<br>
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,mas=
ter_clock_rate=3D250e06,product=3Dn320,mgmt_addr=3D192.168.10.2,time_source=
=3Dinternal'<br>
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,mas=
ter_clock_rate=3D250e06,product=3Dn320,mgmt_addr=3D192.168.10.2,time_source=
=3Dinternal'<br>
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)=
<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000320)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000320)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
Using Device: Single USRP:<br>
&nbsp; Device: N300-Series Device<br>
&nbsp; Mboard 0: ni-n3xx-31B36CF<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: Rhodium<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: Rhodium<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: Rhodium<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: Rhodium<br>
<br>
Setting RX Rate: 1.000000 Msps...<br>
Actual RX Rate: 1.000000 Msps...<br>
<br>
Setting RX Freq: 75.010000 MHz...<br>
Setting RX LO Offset: 0.000000 MHz...<br>
Actual RX Freq: 75.010000 MHz...<br>
<br>
Waiting for &quot;lo_locked&quot;: &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;=
&#43;&#43; locked.<br>
<br>
Press Ctrl &#43; C to stop streaming...<br>
<br>
Done!<br>
</i></div>
<div><br>
</div>
<div>However if I include the required argument to set the timing source to=
 SFP0, then I get a TDC error:</div>
<div><br>
</div>
<div>
<div><i>myprompt:~/WR_sandbox/uhd/Debug_Build/examples$ ./rx_samples_to_fil=
e --args &quot;addr=3D192.168.10.2,clock_source=3Dinternal,time_source=3Dsf=
p0,master_clock_rate=3D250e06&quot; --file blob.dat --type short --duration=
 1 --freq 75010000 --ant &quot;TX/RX&quot; --channel 0
<br>
<br>
Creating the usrp device with: addr=3D192.168.10.2,clock_source=3Dinternal,=
time_source=3Dsfp0,master_clock_rate=3D250e06...<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UHD_3.15.0=
.0-54-gbc585b43<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2,clock_source=3Dinternal,time_source=3Dsfp0,master_clock_ra=
te=3D250e06<br>
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.<br>
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,mgm=
t_addr=3D192.168.10.2,skip_rfic=3DNone,master_clock_rate=3D250000000.0,ref_=
clk_freq=3D25000000.0,time_source=3Dsfp0,product=3Dn320'<br>
[ERROR] [RPC] TDC Failed to reset.<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0<br=
>
[ERROR] [MPM.RPCServer] init() failed with error: TDC Failed to reset.<br>
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC Fa=
iled to reset.<br>
</i><br>
</div>
<br>
</div>
<div><i></i>I've loaded the WX firmware and am using UHD-3.15-LTS. <br>
</div>
<div><br>
</div>
<div>Any ideas what is going on?</div>
<div><br>
</div>
<div>Otto<br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_3cc5eda9897e49a2b0d81220a39daabeltsnetnet_--


--===============7824606629285478452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7824606629285478452==--

