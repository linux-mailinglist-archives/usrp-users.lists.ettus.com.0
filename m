Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7931980515A
	for <lists+usrp-users@lfdr.de>; Tue,  5 Dec 2023 11:56:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35C89384CA9
	for <lists+usrp-users@lfdr.de>; Tue,  5 Dec 2023 05:56:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701773775; bh=Ldd6eLP8r00QYqm5R+IrT/7FYb5fo0I2rbGMWttp7P8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JOw9lnInKEvHFNi8Fr1jFFCkHM6UGM5+J8X3EPykcaqCd8wgC1q+pzEd6/WdjTZIj
	 prTMKnu/DHs/SC8I59mNPUI3GwvqrinR+WufjlVsf4uTGHioPH4oab7Is1M/bSTHhI
	 OmiMRhHC+sMhEkpAKs4RFFuHI+44Xeg+XTE/s3KSdnUXE6NdTzSz0R7euEgK+nK1Uu
	 3sGK4Hd7G9KAHpJKnaW3OCiqHf5QPOghId5UbSMnqOSZ6j27DIgPwytQnNNLt6bsXM
	 l/lzVoPBRKxISWoxHJPSDIcrQzv3xpB4zIgUhOxATB/xG+bCxjBTc3C2SVv1yHNrAK
	 WKfaOjbDXj35Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE540383E42
	for <usrp-users@lists.ettus.com>; Tue,  5 Dec 2023 05:55:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701773722; bh=AIIY8MA2bc1a4Do2tFWET1TpObwPG3PdRsUerciX2hk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=AIAmvs085W1W5W9Z5LqYqTc5E2+Aj2dKdZl4+uG1n/N7DPlnZn0PEoYXs0kwdQVRC
	 D8zCsPGGkSB74I8z2C6c40VwAZm+qhAG3wIogkxDonU7o/mpk59f1ftIj8eBISzgy6
	 XC8nrDg6xqLoV0hgvnia+R8S1nzz19oZU8XP2KbfRjEEwOOB12YqY18QtChEr8cF7v
	 ftuAmZA5Myg6L28lh31tNlQl5AUTyboPYuj1fiPJ3yAbNnL7gkRHK+lE/AW4+6HG2f
	 GGIBMIK9isZeOWrNYH+wQMrD0CiBnREe+CcRUd5cE/WpIEJdiOfsK5qNrn+NoBPA3U
	 xMW05wh+GaUQA==
Date: Tue, 5 Dec 2023 10:55:22 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 579fcca7-82f8-40f7-9366-c196e67eccf2@gmail.com
MIME-Version: 1.0
Message-ID-Hash: LE6PH47RACG5Y52ZUQIUPY6XBQ5NEL4T
X-Message-ID-Hash: LE6PH47RACG5Y52ZUQIUPY6XBQ5NEL4T
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LE6PH47RACG5Y52ZUQIUPY6XBQ5NEL4T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0924728880008343115=="

This is a multi-part message in MIME format.

--===============0924728880008343115==
Content-Type: multipart/alternative;
 boundary="b1_rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Many many thanks Marcus. You are really great. I can find my device.=20

The output of =E2=80=9Cuhd_find_devices=E2=80=9D is

\[INFO\] \[UHD\] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-=
240-gb38c9d83

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: 319822B

    addr: 192.168.20.2

    claimed: False

    mgmt_addr: 192.168.20.2

    product: n310

    type: n3xx

and output of =E2=80=9Cuhd_usrp_probe=E2=80=9D is \[INFO\] \[UHD\] linux;=
 GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-240-gb38c9d83

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.20.2,type=3Dn3xx,product=3Dn310,serial=3D319822B,claimed=3DF=
alse,addr=3D192.168.20.2

\[INFO\] \[MPM.main\] Launching USRP/MPM, version: 3.14.1.1-g0347a6d8

\[INFO\] \[MPM.main\] Spawning RPC process...

\[INFO\] \[MPM.PeriphManager\] Device serial number: 319822B

\[INFO\] \[MPM.PeriphManager\] Initialized 2 daughterboard(s).

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`clock_sou=
rce=3Dinternal,time_source=3Dinternal'.

\[INFO\] \[MPM.RPCServer\] RPC server ready!

\[INFO\] \[MPM.RPCServer\] Spawning watchdog task...

Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_de=
vice_id'

I am really grateful.

--b1_rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Many many thanks Marcus. You are really great. I can find my device. </p=
><p>The output of =E2=80=9Cuhd_find_devices=E2=80=9D is</p><p>[INFO] [UHD] =
linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-240-gb38c9d83</p><p=
>--------------------------------------------------</p><p>-- UHD Device 0</=
p><p>--------------------------------------------------</p><p>Device Addres=
s:</p><p>    serial: 319822B</p><p>    addr: 192.168.20.2</p><p>    claimed=
: False</p><p>    mgmt_addr: 192.168.20.2</p><p>    product: n310</p><p>   =
 type: n3xx</p><p>and output of =E2=80=9Cuhd_usrp_probe=E2=80=9D is [INFO] =
[UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-240-gb38c9d83=
</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_a=
ddr=3D192.168.20.2,type=3Dn3xx,product=3Dn310,serial=3D319822B,claimed=3DFa=
lse,addr=3D192.168.20.2</p><p>[INFO] [MPM.main] Launching USRP/MPM, version=
: 3.14.1.1-g0347a6d8</p><p>[INFO] [MPM.main] Spawning RPC process...</p><p>=
[INFO] [MPM.PeriphManager] Device serial number: 319822B</p><p>[INFO] [MPM.=
PeriphManager] Initialized 2 daughterboard(s).</p><p>[INFO] [MPM.PeriphMana=
ger] init() called with device args `clock_source=3Dinternal,time_source=3D=
internal'.</p><p>[INFO] [MPM.RPCServer] RPC server ready!</p><p>[INFO] [MPM=
.RPCServer] Spawning watchdog task...</p><p>Error: rpc::timeout: Timeout of=
 2000ms while calling RPC function 'set_device_id'</p><p><br></p><p>I am re=
ally grateful. </p>

--b1_rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4--

--===============0924728880008343115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0924728880008343115==--
