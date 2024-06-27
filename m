Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C82891AFCA
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 21:41:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E1373859EF
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 15:41:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719517318; bh=qCFuL+muzdNEePr32WirUBM57pz1uA6Kf2/779WmRHI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dT0HiEev1qpq6ex5eKO1heuts3DFRIboRIxIoYBJh2ZOjk5se9WXNVxF617cZ7ky2
	 M6o7ahTG3ocxTFyvOtjxAVtQLsjaudHWMJro4GoBEW/wMnhSrgBntUXPhV/mXBhvhT
	 TBB/UTPKyskpF1EmqY/qa5LJSU1j+rj6XrJRyBOvEo+n2aGTFWCRk88e/6dgR8lBvO
	 RmL/SKwsCRBjSct4hgLAfJhgYo0GWZ6dXIJjy9tWmKQ33z8f4gELa8ruxrp4MuNpRj
	 DCNNn75dtgSupQBGTLI6FbMpwjl7EK8/lTf4QEQQfHt+2cm3uF+F7DlD+UkUcDT/uB
	 zMvNLJG90CWVA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6FB13859C3
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 15:41:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719517270; bh=a4lNnGu2XBTSef2bjx+2Oxkg3TevGfeIuRDbwNvOC78=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=s5spA/umVCZNFKh7aGdU1xnVvBc5QAPHssSq79RzLD6PFryGHYi9UwYfGnfjOKRu8
	 UNFPlVeA1naR4O4qqFTlYVv6k5skQnknIPnByGsKuVOZ4Qd1BI5GXxfa2qZuDljRzj
	 ERTwj/xRhapsGKR1PIVm95/9883BMNbe+fnulwaUC04CjKemfvjweX60gfi/y4JCqg
	 jGlkP8l7XX70ZAbdP6nYP3G4YCPMBPHDD758WC4cY8kViLYcmnoi6GM2w4cTu+0nd0
	 CRhKHZhjFeT2f0PAJ+ntxaWEbzbrKpWMLWc21Lp3j4y9USpM5Dyy1etlGRnE2qhqiZ
	 WZ31l4XtJ1jMw==
Date: Thu, 27 Jun 2024 19:41:10 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 97a1f439-6322-47c6-bfe6-a71c4a78c504@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5DAY362VTKLXC5CBMY2NXGZOYG62QMVP
X-Message-ID-Hash: 5DAY362VTKLXC5CBMY2NXGZOYG62QMVP
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DAY362VTKLXC5CBMY2NXGZOYG62QMVP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8741585517831338386=="

This is a multi-part message in MIME format.

--===============8741585517831338386==
Content-Type: multipart/alternative;
 boundary="b1_X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Can you help me figure out what the problem is using the modified example=
 (I provided in last response), a fast machine which has the tips and tri=
cks implemented?

I directly connected our 64 core / 4 GPU / >250GI RAM workstation with 10=
G output directly to the X310 10G, which should easily keep up with 200Ms=
ps.

I ran the same program I provided above (I just modified your example pro=
gram tx_timed_samples.cpp) and now it outputs S=E2=80=99s instead of U=E2=
=80=99s.

Here is the output:

```
cjohnson@demo:~/uhd_versions/uhd_4.4.0.0/host/build/examples$ ./tx_timed_=
samples

Creating the usrp device with: type=3Dx300,addr=3D192.168.30.2...
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
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
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

Setting TX Rate: 200.000000 Msps...
Actual TX Rate: 200.000000 Msps...

Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
SSSSSSSS (... more S's)
```

I verified the interface is setup for 9000 MTU, and that I have made the =
adjustments indicated in <https://kb.ettus.com/USRP_Host_Performance_Tuni=
ng_Tips_and_Tricks>\
 except for Specture / bios changes).  This includes Ring Buffers for NIC=
 and Network Buffers

```
(Below, same for CPU 0-63)
analyzing CPU 63:
  driver: intel_cpufreq
  CPUs which run at the same hardware frequency: 63
  CPUs which need to have their frequency coordinated by software: 63
  maximum transition latency: 20.0 us.
  hardware limits: 800 MHz - 3.50 GHz
  available cpufreq governors: conservative, ondemand, userspace, powersa=
ve, performance, schedutil
  current policy: frequency should be within 800 MHz and 3.50 GHz.
                  The governor "performance" may decide which speed to us=
e
                  within this range.
  current CPU frequency is 3.50 GHz.
```

--b1_X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>Can you help me figure out what the problem is using the mod=
ified example (I provided in last response), a fast machine which has the=
 tips and tricks implemented?</p><p>I directly connected our 64 core / 4 =
GPU / &gt;250GI RAM workstation with 10G output directly to the X310 10G,=
 which should easily keep up with 200Msps.</p><p>I ran the same program I=
 provided above (I just modified your example program tx_timed_samples.cp=
p) and now it outputs S=E2=80=99s instead of U=E2=80=99s.</p><p>Here is t=
he output:<br><br></p><pre><code>cjohnson@demo:~/uhd_versions/uhd_4.4.0.0=
/host/build/examples$ ./tx_timed_samples

Creating the usrp device with: type=3Dx300,addr=3D192.168.30.2...
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
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
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

Setting TX Rate: 200.000000 Msps...
Actual TX Rate: 200.000000 Msps...

Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
SSSSSSSS (... more S's)</code></pre><p class=3D"">I verified the interfac=
e is setup for 9000 MTU, and that I have made the adjustments indicated i=
n <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_T=
ricks">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks<=
/a><br> except for Specture / bios changes).  This includes Ring Buffers =
for NIC and Network Buffers<br><br></p><pre><code>(Below, same for CPU 0-=
63)
analyzing CPU 63:
  driver: intel_cpufreq
  CPUs which run at the same hardware frequency: 63
  CPUs which need to have their frequency coordinated by software: 63
  maximum transition latency: 20.0 us.
  hardware limits: 800 MHz - 3.50 GHz
  available cpufreq governors: conservative, ondemand, userspace, powersa=
ve, performance, schedutil
  current policy: frequency should be within 800 MHz and 3.50 GHz.
                  The governor "performance" may decide which speed to us=
e
                  within this range.
  current CPU frequency is 3.50 GHz.</code></pre><p><br></p>


--b1_X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs--

--===============8741585517831338386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8741585517831338386==--
