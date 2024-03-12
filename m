Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9FF879877
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 16:59:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A650A384EAD
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 11:59:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710259153; bh=Kgg0VY3LkrZF4LJTIioYpSVWfhlloWWGFiC66T4yoMg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OCMUyIwRDLx+ZGGcSAOfvXBLmjhUrfBldXGzn8oPlRLhuPIzkQ3u0GNO8hEd94RnZ
	 Y3AyzKlwQER9Mfh9R7NeJ/2kPvAbYZnWNA+LpGGfhQ+kD3ezes/vGZr8/CD5QWXzHy
	 SENMDmTv5gLdUb/uJAJFuH4pgOVqGgxgGKpetaaJnYhYpV168Aps4gKWSFuj0ebHGR
	 r6FyPj2SeCQvr3HkfioyRBUIqpPE+cdS0qfcAAENCtYFNA214FB+fyQBBUk+6O+bdN
	 RLoz9M/6diNo+RvHgAJnHrwW+7fjM+kZLQs+tH5NIEzC9rdim0ZX+UTCJRFSeCQ3jN
	 RniJURJ8e1JfA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21DC6384BC2
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 11:58:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710259102; bh=lUqgAAdbbPG+rC4QLGy2kYhAkHjd09J1a2FeZMX4eV8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=zRHCvpK8u4IprX/H73oOdUsv01pYMdwvoH6cM2O8KWHN60Jg4n1TWiyW+zhriQ6WD
	 t3FJzyzhdAqQSbe0RoStI4IkJrzacpvwNnFvG/xYlSLtPXfeCuIi9VqV6XmrKLQyCW
	 9GA21/thNhO/wMvnEGDiwQc13VQjDdwllWU/mL3Rp/88qPY7jYEgBVfahCit5rQlAN
	 C4tBlFIY23Q7zDUqKTjegqEIK5yzaFgeB433KttlXMqxizMuUUUX/uAb6Cyue5QefV
	 g+4wZiclimD9KFqEqw5hiZVRCi3QHJhMp38fugVa1usK2XxcwcQlhqIP1qu+20r2pk
	 PsAyoC2e3q5dQ==
Date: Tue, 12 Mar 2024 15:58:22 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQUkt9LKwWQuMzQ1Z4mckxV90TWAmZbU+Stcu6ij6n1oQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: JUIWVASVKQ2S6R6ZXK2OSU6X3BRN5XUM
X-Message-ID-Hash: JUIWVASVKQ2S6R6ZXK2OSU6X3BRN5XUM
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JUIWVASVKQ2S6R6ZXK2OSU6X3BRN5XUM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1470324251165847831=="

This is a multi-part message in MIME format.

--===============1470324251165847831==
Content-Type: multipart/alternative;
 boundary="b1_EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0
Content-Type: text/plain; charset=us-ascii

Hello Rob!

I should have mentioned this in my original post but benchmark rate works well for me. Specifically, when I run:

```
./benchmark_rate --rx_rate 491.52e6 --args "addr=192.168.10.2,second_addr=192.168.20.2,mgmt_addr=192.168.1.19" --duration 600
```

I get 

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa
```

```
[00:00:00.000322] Creating the usrp device with: addr=192.168.10.2,second_addr=192.168.20.2,mgmt_addr=192.168.1.19...
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.19,type=x4xx,product=x410,serial=326E872,name=ni-x4xx-326E872,fpga=CG_400,claimed=False,addr=192.168.10.2,second_addr=192.168.20.2
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=CG_400,mgmt_addr=192.168.1.19,name=ni-x4xx-326E872,product=x410,second_addr=192.168.20.2,clock_source=internal,time_source=internal,initializing=True'.
```

```
Using Device: Single USRP:
```

```
  Device: X400-Series Device
```

```
  Mboard 0: x410
```

```
  RX Channel: 0
```

```
    RX DSP: n/a
```

```
    RX Dboard: A
```

```
    RX Subdev: 0
```

```
  RX Channel: 1
```

```
    RX DSP: n/a
```

```
    RX Dboard: A
```

```
    RX Subdev: 1
```

```
  RX Channel: 2
```

```
    RX DSP: n/a
```

```
    RX Dboard: B
```

```
    RX Subdev: 0
```

```
  RX Channel: 3
```

```
    RX DSP: n/a
```

```
    RX Dboard: B
```

```
    RX Subdev: 1
```

```
  TX Channel: 0
```

```
    TX DSP: n/a
```

```
    TX Dboard: A
```

```
    TX Subdev: 0
```

```
  TX Channel: 1
```

```
    TX DSP: n/a
```

```
    TX Dboard: A
```

```
    TX Subdev: 1
```

```
  TX Channel: 2
```

```
    TX DSP: n/a
```

```
    TX Dboard: B
```

```
    TX Subdev: 0
```

```
  TX Channel: 3
```

```
    TX DSP: n/a
```

```
    TX Dboard: B
```

```
    TX Subdev: 1
```

```
[00:00:03.511001021] Setting device timestamp to 0...
```

```
[00:00:03.512894034] Testing receive rate 491.520000 Msps on 1 channels
```

```
[00:10:03.513454979] Benchmark complete.
```

```
Benchmark rate summary:
```

```
  Num received samples:     294911842520
```

```
  Num dropped samples:      0
```

```
  Num overruns detected:    0
```

```
  Num transmitted samples:  0
```

```
  Num sequence errors (Tx): 0
```

```
  Num sequence errors (Rx): 0
```

```
  Num underruns detected:   0
```

```
  Num late commands:        0
```

```
  Num timeouts (Tx):        0
```

```
  Num timeouts (Rx):        0
```

```
Done!
```

 When I use the example that saves to file:

./rx_samples_to_file --args "addr=192.168.10.2,second_addr=192.168.20.2,mgmt_addr=192.168.1.19" --file \[path\] --duration 10 --rate 491.52e6 --freq 1575.42e6

I get :

```
Creating the usrp device with: addr=192.168.10.2,second_addr=192.168.20.2,mgmt_addr=192.168.1.19...
```

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.19,type=x4xx,product=x410,serial=326E872,name=ni-x4xx-326E872,fpga=CG_400,claimed=False,addr=192.168.10.2,second_addr=192.168.20.2
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=CG_400,mgmt_addr=192.168.1.19,name=ni-x4xx-326E872,product=x410,second_addr=192.168.20.2,clock_source=internal,time_source=internal,initializing=True'.
```

```
Using Device: Single USRP:
```

```
  Device: X400-Series Device
```

```
  Mboard 0: x410
```

```
  RX Channel: 0
```

```
    RX DSP: n/a
```

```
    RX Dboard: A
```

```
    RX Subdev: 0
```

```
  RX Channel: 1
```

```
    RX DSP: n/a
```

```
    RX Dboard: A
```

```
    RX Subdev: 1
```

```
  RX Channel: 2
```

```
    RX DSP: n/a
```

```
    RX Dboard: B
```

```
    RX Subdev: 0
```

```
  RX Channel: 3
```

```
    RX DSP: n/a
```

```
    RX Dboard: B
```

```
    RX Subdev: 1
```

```
  TX Channel: 0
```

```
    TX DSP: n/a
```

```
    TX Dboard: A
```

```
    TX Subdev: 0
```

```
  TX Channel: 1
```

```
    TX DSP: n/a
```

```
    TX Dboard: A
```

```
    TX Subdev: 1
```

```
  TX Channel: 2
```

```
    TX DSP: n/a
```

```
    TX Dboard: B
```

```
    TX Subdev: 0
```

```
  TX Channel: 3
```

```
    TX DSP: n/a
```

```
    TX Dboard: B
```

```
    TX Subdev: 1
```

```
Setting RX Rate: 491.520000 Msps...
```

```
Actual RX Rate: 491.520000 Msps...
```

```
Setting RX Freq: 1575.420000 MHz...
```

```
Setting RX LO Offset: 0.000000 MHz...
```

```
[WARNING] [MULTI_USRP] No DSP capabilities detected. Combining offset into target frequency of 1575.420MHz
```

```
Actual RX Freq: 1575.420000 MHz...
```

```
Locking LO on channel 0
```

```
Waiting for "lo_locked": ++++++++++ locked.
```

```
Press Ctrl + C to stop streaming...
```

```
  Disk write test indicates that an overflow is likely to occur.
```

```
  Your write medium must sustain a rate of 1966.080MB/s,
```

```
  but write test returned write speed of 184.000MB/s.
```

```
  The disk write rate is also affected by system load
```

```
  and OS/disk caching capacity.
```

```
OGot an overflow indication. Please consider the following:
```

```
  Your write medium must sustain a rate of 1966.080MB/s.
```

```
  Dropped samples will not be written to the file.
```

```
  Please modify this example for your purposes.
```

```
  This message will not appear again.
```

```
OOOOOO^C
```

```
Done!
```

Which I abort since I get overruns.

--b1_EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello Rob!</p><p>I should have mentioned this in my original post but be=
nchmark rate works well for me. Specifically, when I run:</p><pre><code>./b=
enchmark_rate --rx_rate 491.52e6 --args "addr=3D192.168.10.2,second_addr=3D=
192.168.20.2,mgmt_addr=3D192.168.1.19" --duration 600</code></pre><p>I get =
</p><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPD=
K_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pre><pre><code>[00:00:00.000322=
] Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.19...</code></pre><pre><code>[INFO] [MPMD] Initi=
alizing 1 device(s) in parallel with args: mgmt_addr=3D192.168.1.19,type=3D=
x4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,c=
laimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192.168.20.2</code></pre><=
pre><code>[INFO] [MPM.PeriphManager] init() called with device args `fpga=
=3DCG_400,mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,se=
cond_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal,ini=
tializing=3DTrue'.</code></pre><pre><code>Using Device: Single USRP:</code>=
</pre><pre><code>  Device: X400-Series Device</code></pre><pre><code>  Mboa=
rd 0: x410</code></pre><pre><code>  RX Channel: 0</code></pre><pre><code>  =
  RX DSP: n/a</code></pre><pre><code>    RX Dboard: A</code></pre><pre><cod=
e>    RX Subdev: 0</code></pre><pre><code>  RX Channel: 1</code></pre><pre>=
<code>    RX DSP: n/a</code></pre><pre><code>    RX Dboard: A</code></pre><=
pre><code>    RX Subdev: 1</code></pre><pre><code>  RX Channel: 2</code></p=
re><pre><code>    RX DSP: n/a</code></pre><pre><code>    RX Dboard: B</code=
></pre><pre><code>    RX Subdev: 0</code></pre><pre><code>  RX Channel: 3</=
code></pre><pre><code>    RX DSP: n/a</code></pre><pre><code>    RX Dboard:=
 B</code></pre><pre><code>    RX Subdev: 1</code></pre><pre><code>  TX Chan=
nel: 0</code></pre><pre><code>    TX DSP: n/a</code></pre><pre><code>    TX=
 Dboard: A</code></pre><pre><code>    TX Subdev: 0</code></pre><pre><code> =
 TX Channel: 1</code></pre><pre><code>    TX DSP: n/a</code></pre><pre><cod=
e>    TX Dboard: A</code></pre><pre><code>    TX Subdev: 1</code></pre><pre=
><code>  TX Channel: 2</code></pre><pre><code>    TX DSP: n/a</code></pre><=
pre><code>    TX Dboard: B</code></pre><pre><code>    TX Subdev: 0</code></=
pre><pre><code>  TX Channel: 3</code></pre><pre><code>    TX DSP: n/a</code=
></pre><pre><code>    TX Dboard: B</code></pre><pre><code>    TX Subdev: 1<=
/code></pre><pre><code>[00:00:03.511001021] Setting device timestamp to 0..=
.</code></pre><pre><code>[00:00:03.512894034] Testing receive rate 491.5200=
00 Msps on 1 channels</code></pre><pre><code>[00:10:03.513454979] Benchmark=
 complete.</code></pre><pre><code>Benchmark rate summary:</code></pre><pre>=
<code>  Num received samples:     294911842520</code></pre><pre><code>  Num=
 dropped samples:      0</code></pre><pre><code>  Num overruns detected:   =
 0</code></pre><pre><code>  Num transmitted samples:  0</code></pre><pre><c=
ode>  Num sequence errors (Tx): 0</code></pre><pre><code>  Num sequence err=
ors (Rx): 0</code></pre><pre><code>  Num underruns detected:   0</code></pr=
e><pre><code>  Num late commands:        0</code></pre><pre><code>  Num tim=
eouts (Tx):        0</code></pre><pre><code>  Num timeouts (Rx):        0</=
code></pre><pre><code>Done!
<br></code></pre><p> When I use the example that saves to file:</p><p>./rx_=
samples_to_file --args "addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt=
_addr=3D192.168.1.19" --file [path] --duration 10 --rate 491.52e6 --freq 15=
75.42e6</p><p><br></p><p>I get :</p><pre><code>Creating the usrp device wit=
h: addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19.=
..</code></pre><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_=
107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pre><pre><code>[INFO=
] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.16=
8.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,f=
pga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192.168.20.2=
</code></pre><pre><code>[INFO] [MPM.PeriphManager] init() called with devic=
e args `fpga=3DCG_400,mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,produ=
ct=3Dx410,second_addr=3D192.168.20.2,clock_source=3Dinternal,time_source=3D=
internal,initializing=3DTrue'.</code></pre><pre><code>Using Device: Single =
USRP:</code></pre><pre><code>  Device: X400-Series Device</code></pre><pre>=
<code>  Mboard 0: x410</code></pre><pre><code>  RX Channel: 0</code></pre><=
pre><code>    RX DSP: n/a</code></pre><pre><code>    RX Dboard: A</code></p=
re><pre><code>    RX Subdev: 0</code></pre><pre><code>  RX Channel: 1</code=
></pre><pre><code>    RX DSP: n/a</code></pre><pre><code>    RX Dboard: A</=
code></pre><pre><code>    RX Subdev: 1</code></pre><pre><code>  RX Channel:=
 2</code></pre><pre><code>    RX DSP: n/a</code></pre><pre><code>    RX Dbo=
ard: B</code></pre><pre><code>    RX Subdev: 0</code></pre><pre><code>  RX =
Channel: 3</code></pre><pre><code>    RX DSP: n/a</code></pre><pre><code>  =
  RX Dboard: B</code></pre><pre><code>    RX Subdev: 1</code></pre><pre><co=
de>  TX Channel: 0</code></pre><pre><code>    TX DSP: n/a</code></pre><pre>=
<code>    TX Dboard: A</code></pre><pre><code>    TX Subdev: 0</code></pre>=
<pre><code>  TX Channel: 1</code></pre><pre><code>    TX DSP: n/a</code></p=
re><pre><code>    TX Dboard: A</code></pre><pre><code>    TX Subdev: 1</cod=
e></pre><pre><code>  TX Channel: 2</code></pre><pre><code>    TX DSP: n/a</=
code></pre><pre><code>    TX Dboard: B</code></pre><pre><code>    TX Subdev=
: 0</code></pre><pre><code>  TX Channel: 3</code></pre><pre><code>    TX DS=
P: n/a</code></pre><pre><code>    TX Dboard: B</code></pre><pre><code>    T=
X Subdev: 1</code></pre><pre><code>Setting RX Rate: 491.520000 Msps...</cod=
e></pre><pre><code>Actual RX Rate: 491.520000 Msps...</code></pre><pre><cod=
e>Setting RX Freq: 1575.420000 MHz...</code></pre><pre><code>Setting RX LO =
Offset: 0.000000 MHz...</code></pre><pre><code>[WARNING] [MULTI_USRP] No DS=
P capabilities detected. Combining offset into target frequency of 1575.420=
MHz</code></pre><pre><code>Actual RX Freq: 1575.420000 MHz...</code></pre><=
pre><code>Locking LO on channel 0</code></pre><pre><code>Waiting for "lo_lo=
cked": ++++++++++ locked.</code></pre><pre><code>Press Ctrl + C to stop str=
eaming...</code></pre><pre><code>  Disk write test indicates that an overfl=
ow is likely to occur.</code></pre><pre><code>  Your write medium must sust=
ain a rate of 1966.080MB/s,</code></pre><pre><code>  but write test returne=
d write speed of 184.000MB/s.</code></pre><pre><code>  The disk write rate =
is also affected by system load</code></pre><pre><code>  and OS/disk cachin=
g capacity.</code></pre><pre><code>OGot an overflow indication. Please cons=
ider the following:</code></pre><pre><code>  Your write medium must sustain=
 a rate of 1966.080MB/s.</code></pre><pre><code>  Dropped samples will not =
be written to the file.</code></pre><pre><code>  Please modify this example=
 for your purposes.</code></pre><pre><code>  This message will not appear a=
gain.</code></pre><pre><code>OOOOOO^C</code></pre><pre><code>Done!</code></=
pre><p><br></p><p>Which I abort since I get overruns. </p>

--b1_EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0--

--===============1470324251165847831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1470324251165847831==--
