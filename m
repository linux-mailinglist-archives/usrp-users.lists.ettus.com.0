Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 161927BA38F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Oct 2023 17:58:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AC0D3857DE
	for <lists+usrp-users@lfdr.de>; Thu,  5 Oct 2023 11:58:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696521502; bh=63wA29VZxB55WdRAPTmtwu6178rJw3pxgR/XhvNOeNw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XHzlJ30SfX6TIQWqmH/4lpda0ah0axHijYPpKrr6Jxns2GV7uEp/2xX1NPx8OEyvz
	 D1b+F/8QNcWofYdmxZl5QI3qaO/+HTpf5dfKeI5TxBUMRDjo80ZuAvvq9lpHHeTEmS
	 hvr1WMjnct3QkA7lqr6KrVNI8FmU5jo9gAZbOrDCKg2Wv6ppidSHg3mj0ocjS2CUWi
	 kfrgb/s/wxdUaF2ZhdeV0xQSH6aAnDaG/SS++6HTK8zIbZZdfR7syL4LK2qZTIJ+sM
	 4g+yaHEF0CWsHXQ9bBwOsY5R9suKSHBCPu/DQnEo5aZ4Zr2+mmbGtV1rDLdNIYi7cu
	 JawFwEAF2SZ7Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 966CC385643
	for <usrp-users@lists.ettus.com>; Thu,  5 Oct 2023 11:57:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696521447; bh=VelKqZtzdB/56gj9gnFN78x8eLEkcjCjKyaX4aLHjAY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=OxL4CMQetQODX3bWPIDgNt1BhHdkEFZT54nf+pEfpINxjnK4PxmrtORqO6W5AqxyD
	 7jpJrSvwlUE5GzRKgiXldYxso2zlRet73ntBgAz3RfPBl/Higbbo4rYc4o72yMZgH+
	 nwfAAptmM71wGCGF5peSXhYRhrubtmASZ3sSEfYprj7Eat31mUZcf3qNSyrlAMccvv
	 yW7qbM1VqXIqeO+xL7vDEqGR+MX5LbKWcY8wX1ghOLHbWxxaCqzURsajyoZRL1U9yu
	 /vGvEhpCyjcSHNdiVlWyyzFL206hmJ75xapE9AeZ10qccVmXLXh5mGf5650a9LP7Bc
	 h699W9k7esoVQ==
Date: Thu, 5 Oct 2023 15:57:27 +0000
To: usrp-users@lists.ettus.com
From: usama.khurram@hotmail.com
Message-ID: <xsjvd6L7WlNj5YG4BqDINkcFGIgukObDoJzOXQbw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: kD9pULH193Yh1cqAp0vMudJJz0JS81oYxRh061SuBU@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: AR4GNNADTYV22DQAFZ4XM37IEUQUMZHF
X-Message-ID-Hash: AR4GNNADTYV22DQAFZ4XM37IEUQUMZHF
X-MailFrom: usama.khurram@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AR4GNNADTYV22DQAFZ4XM37IEUQUMZHF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0349298812342519584=="

This is a multi-part message in MIME format.

--===============0349298812342519584==
Content-Type: multipart/alternative;
 boundary="b1_xsjvd6L7WlNj5YG4BqDINkcFGIgukObDoJzOXQbw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xsjvd6L7WlNj5YG4BqDINkcFGIgukObDoJzOXQbw
Content-Type: text/plain; charset=us-ascii

and after restarting everything, getting previous error:\
\
usama@modena:\~$ uhd_usrp_probe --args="addr=192.168.30.212"

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.3.0.HEAD-0-g1f8fd345

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.30.212,type=,product=,serial=,claimed=False,addr=192.168.30.212

Error: RuntimeError: Unknown error during attempt to establish RPC connection at 192.168.30.212:49601

usama@modena:\~$ uhd_usrp_probe --args="addr=192.168.30.212"

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.3.0.HEAD-0-g1f8fd345

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=False,addr=192.168.30.212

\[INFO\] \[MPM.main\] Launching USRP/MPM, version: 3.15.0.0-gaea0e2de

\[INFO\] \[MPM.main\] Spawning RPC process...

\[INFO\] \[MPM.PeriphManager\] Device serial number: 319841E

\[INFO\] \[MPM.PeriphManager\] Initialized 2 daughterboard(s).

**\[ERROR\] \[MPM.PeriphManager\] Major compat number mismatch for component \`FPGA': Expected: 5.3 Actual: 8.1**

**\[ERROR\] \[MPM.PeriphManager\] Failed to initialize motherboard: Major compat number mismatch for component \`FPGA': Expected: 5.3 Actual: 8.1**

**\[ERROR\] \[MPM.PeriphManager\] Cannot run init(), device was never fully initialized!**

\[INFO\] \[MPM.RPCServer\] RPC server ready!

\[INFO\] \[MPM.RPCServer\] Spawning watchdog task...

Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'

usama@modena:\~$

--b1_xsjvd6L7WlNj5YG4BqDINkcFGIgukObDoJzOXQbw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>and after restarting everything, getting previous error:<br><br>usama@mo=
dena:~$ uhd_usrp_probe --args=3D"addr=3D192.168.30.212"</p><p>[INFO] [UHD] =
linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.3.0.HEAD-0-g1f8fd345</p>=
<p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.30.212,type=3D,product=3D,serial=3D,claimed=3DFalse,addr=3D192.1=
68.30.212</p><p>Error: RuntimeError: Unknown error during attempt to establ=
ish RPC connection at 192.168.30.212:49601</p><p>usama@modena:~$ uhd_usrp_p=
robe --args=3D"addr=3D192.168.30.212"</p><p>[INFO] [UHD] linux; GNU C++ ver=
sion 11.4.0; Boost_107400; UHD_4.3.0.HEAD-0-g1f8fd345</p><p>[INFO] [MPMD] I=
nitializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.30.212,t=
ype=3Dn3xx,product=3Dn310,serial=3D319841E,claimed=3DFalse,addr=3D192.168.3=
0.212</p><p>[INFO] [MPM.main] Launching USRP/MPM, version: 3.15.0.0-gaea0e2=
de</p><p>[INFO] [MPM.main] Spawning RPC process...</p><p>[INFO] [MPM.Periph=
Manager] Device serial number: 319841E</p><p>[INFO] [MPM.PeriphManager] Ini=
tialized 2 daughterboard(s).</p><p><strong>[ERROR] [MPM.PeriphManager] Majo=
r compat number mismatch for component `FPGA': Expected: 5.3 Actual: 8.1</s=
trong></p><p><strong>[ERROR] [MPM.PeriphManager] Failed to initialize mothe=
rboard: Major compat number mismatch for component `FPGA': Expected: 5.3 Ac=
tual: 8.1</strong></p><p><strong>[ERROR] [MPM.PeriphManager] Cannot run ini=
t(), device was never fully initialized!</strong></p><p>[INFO] [MPM.RPCServ=
er] RPC server ready!</p><p>[INFO] [MPM.RPCServer] Spawning watchdog task..=
.</p><p>Error: rpc::timeout: Timeout of 2000ms while calling RPC function '=
set_device_id'</p><p>usama@modena:~$</p>

--b1_xsjvd6L7WlNj5YG4BqDINkcFGIgukObDoJzOXQbw--

--===============0349298812342519584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0349298812342519584==--
