Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5355E6F0A2E
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:47:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4C5F38403C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:47:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682614029; bh=JFTVlsWt7IohDde/N4Xxwkv6iaPuHIGYjvLUxbFchFk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Yx5CzUfN1eqlLhn6V5AWXd8gyjrgTanGT1ZxUrElGGIvxALKOQ39termaq7hODayT
	 FWYVx/qwcXvwe576nuMb0dNNlNpCTKIYAtW2SHb80dxDq4BLke2ImTMa1ZrFxd5xwL
	 k8kLMk3gaYSNWMjaRHbNVMzn1TQbrWCL0m3W/XwcCGC1bHZPWKCY6HOVPKP6V7ARyn
	 5pkAM/Wo4nVz2t9OuLopz16kQHCs/qbjZCb1ykusDN/03PMv8OiHfs6boLlbKAn6Me
	 gbF+lnnQ4dwy1tJtxHq2DduZC1jbANa7ZICxIAJz4RrO7q1dwI3ahhf/a/GatKSuHR
	 radgPOdgVf6/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50E10383F00
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:46:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682613987; bh=QY1WhQ/AiLfrVqQbW9GBv6HhmtKxnxHlV+SfEyb5F8E=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=L98ynkQgXRslDJ0Ar9chD8LB21txJ5aRal40L0MC4LTYS7KRzFt+Mgw+aKH3rJsIO
	 Jqlaupms813JTKDnp9IZTvXQq6k6aTiYs7l9aidlB7vTr/SB4+lsbGDqblYeSxc+Hg
	 kmwEA5fyojSblbapu9GBcmU1u+KcIrPcs6qAO5Iernszdg74Rnhq21tZMsmbjIZ10t
	 QkMjeOD907BBwQ95DRe52iTl8AZdxFYCH85tjjwox+gp0WMvvJ2JqAO2uJvTWS04ET
	 z42zcJU8syeYSXqDLZ4CuCfPt0o8Nb9b7vW6CT/BvqEwnyOQHKdtqOayYUiuIA03F5
	 lIxC+aE+OKwJA==
Date: Thu, 27 Apr 2023 16:46:27 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 91ce2669-7e6a-0ad5-3480-1eb5123f33ee@gmail.com
MIME-Version: 1.0
Message-ID-Hash: RFSHIRBYWDOFEK5YGRGCPXDEL5OSPKGQ
X-Message-ID-Hash: RFSHIRBYWDOFEK5YGRGCPXDEL5OSPKGQ
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFSHIRBYWDOFEK5YGRGCPXDEL5OSPKGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5284967228977616578=="

This is a multi-part message in MIME format.

--===============5284967228977616578==
Content-Type: multipart/alternative;
 boundary="b1_vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys
Content-Type: text/plain; charset=us-ascii

I am able to succesfully use the device, I just cant use the 10Gbe, which I need.

When I run uhd_usrp_probe, I confirm that I am using version 4.4.0.0

> 
>
> \[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.1.151
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'.
>
> \[INFO\] \[MPM.Rhodium-0\] init() called with args \`fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'
>
> \[INFO\] \[MPM.Rhodium-1\] init() called with args \`fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'
>
>   _____________________________________________________
>
>  /
>
> |       Device: N300-Series Device
>
> |     _____________________________________________________
>
> |    /
>
> |   |       Mboard: ni-n3xx-3255102
>
> |   |   dboard_0_pid: 338
>
> |   |   dboard_0_serial: 3252A17
>
> |   |   dboard_1_pid: 338
>
> |   |   dboard_1_serial: 3252A18
>
> |   |   eeprom_version: 3
>
> |   |   fs_version: 20230131233809
>
> |   |   mender_artifact: v4.4.0.0_n3xx
>
> |   |   mpm_sw_version: 4.4.0.0-g5fac246b
>
> |   |   pid: 16962
>
> |   |   product: n320
>
> |   |   rev: 10
>
> |   |   rpc_connection: remote
>
> |   |   serial: 3255102
>
> |   |   type: n3xx
>
> |   |   MPM Version: 4.4
>
> |   |   FPGA Version: 8.1
>
> |   |   FPGA git hash: 92c09f7.clean
>
> |   |   RFNoC capable: Yes

--b1_vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I am able to succesfully use the device, I just cant use the 10Gbe, whic=
h I need.</p><p>When I run uhd_usrp_probe, I confirm that I am using versio=
n 4.4.0.0</p><blockquote><p><br></p><p>[INFO] [UHD] linux; GNU C++ version =
9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><p>[INFO] [MPMD] Initial=
izing 1 device(s) in parallel with args: mgmt_addr=3D192.168.1.151,type=3Dn=
3xx,product=3Dn320,serial=3D3255102,name=3Dni-n3xx-3255102,fpga=3DXG,claime=
d=3DFalse,addr=3D192.168.1.151</p><p>[INFO] [MPM.PeriphManager] init() call=
ed with device args `fpga=3DXG,mgmt_addr=3D192.168.1.151,name=3Dni-n3xx-325=
5102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.</p><p>=
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.1.151,name=3Dni-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time=
_source=3Dinternal'</p><p>[INFO] [MPM.Rhodium-1] init() called with args `f=
pga=3DXG,mgmt_addr=3D192.168.1.151,name=3Dni-n3xx-3255102,product=3Dn320,cl=
ock_source=3Dinternal,time_source=3Dinternal'</p><p>  _____________________=
________________________________</p><p> /</p><p>|       Device: N300-Series=
 Device</p><p>|     _____________________________________________________</=
p><p>|    /</p><p>|   |       Mboard: ni-n3xx-3255102</p><p>|   |   dboard_=
0_pid: 338</p><p>|   |   dboard_0_serial: 3252A17</p><p>|   |   dboard_1_pi=
d: 338</p><p>|   |   dboard_1_serial: 3252A18</p><p>|   |   eeprom_version:=
 3</p><p>|   |   fs_version: 20230131233809</p><p>|   |   mender_artifact: =
v4.4.0.0_n3xx</p><p>|   |   mpm_sw_version: 4.4.0.0-g5fac246b</p><p>|   |  =
 pid: 16962</p><p>|   |   product: n320</p><p>|   |   rev: 10</p><p>|   |  =
 rpc_connection: remote</p><p>|   |   serial: 3255102</p><p>|   |   type: n=
3xx</p><p>|   |   MPM Version: 4.4</p><p>|   |   FPGA Version: 8.1</p><p>| =
  |   FPGA git hash: 92c09f7.clean</p><p>|   |   RFNoC capable: Yes</p></bl=
ockquote>

--b1_vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys--

--===============5284967228977616578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5284967228977616578==--
