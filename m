Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7488C6D59
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2024 22:42:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 051B8384B54
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2024 16:42:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715805742; bh=4c6xhtIFW17mmv2FnGViT16+dBOqe/Ovdn22agk9eh4=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=S/6SVynLM5M5H7P5FiLRHCf9lMezZAHfIZtHY9udkc5u1PS83asrxyjgiENWvP1CK
	 9/QsbJM5EAkyufSUbKU0IPsgyrD0wqJoN6i0O5+tZbwpVge2Mzp1NdQ1jophkZU09l
	 La+bwPeT8V2jJSBRvTJAjm1Ry/MFs9ZPWMADoxR85YvTltVxAQFaVDgHZk9hSuZTuO
	 lojYnM1WwkGf4Ad3jwKp6ICrg3/6+pGZa0a4EiyGSW0YO9/TaEVstp5xn8fRQK//XD
	 B0P1KcyK8df3qtcT4LNauxuMQOacPv+p23FCc8YOH2tF8D5B4ygXqdp6Td8/eNx/xX
	 eCJ4/QoUfi+RA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09B07384616
	for <usrp-users@lists.ettus.com>; Wed, 15 May 2024 16:41:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715805718; bh=ccOTFQhXj7LKhfHhqnb0jeI8OAe3MtpyHJKTQNVIoXY=;
	h=Date:To:From:Subject:From;
	b=cgcAXb1xUkxB9KZDR54ZP18ve8eNh6U1cNRWOhX3RjkWnMPaeZOnfrevVnz36wGwA
	 v+SiC40f24VLggePkmpQu896BmADPb0EThqS7b+cUAlRHfv74DoBNFno6gMAKakd4n
	 wk2RUKMTgHVDBabrLlWk51Xyf7+5HRLOZ3cINAGuCN4EXaGK476QTXQwXHQ7shqMza
	 AUH9GdRX11SesNXgiU2CnYob0tkAOpJPu7tkNQ3KRdNvLSSsATQE7BcKimOv6whHGD
	 7jMqyNDzXb1/oQGAc3o9geG1mpSMOt6QGHiAEGtq47jVukFigwrpRg9mNeBOmU+m36
	 yXJyqKwIdpZLQ==
Date: Wed, 15 May 2024 20:41:58 +0000
To: usrp-users@lists.ettus.com
Message-ID: <1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2JYP4CKEHLJYZHCV6DI4KOCJ6USAVSB6
X-Message-ID-Hash: 2JYP4CKEHLJYZHCV6DI4KOCJ6USAVSB6
X-MailFrom: smm223@ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC socket error on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2JYP4CKEHLJYZHCV6DI4KOCJ6USAVSB6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: smm223--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: smm223@ucsd.edu
Content-Type: multipart/mixed; boundary="===============1339347803970344657=="

This is a multi-part message in MIME format.

--===============1339347803970344657==
Content-Type: multipart/alternative;
 boundary="b1_1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA
Content-Type: text/plain; charset=us-ascii

Hi all,

I am trying to setup an X410 with a 4x10G NIC on the PC. After configuring the IP addresses, `uhd_find_devices `identifies the USRP without any issues. The output of `uhd_find_devices `is the following: 

> \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa
>
> \--------------------------------------------------
>
> \-- UHD Device 0
>
> \--------------------------------------------------
>
> Device Address:
>
>     serial: 327B85D
>
>     addr: 192.168.11.2
>
>     claimed: False
>
>     fpga: X4_200
>
>     mgmt_addr: 192.168.10.2
>
>     mgmt_addr: 192.168.11.2
>
>     mgmt_addr: 192.168.12.2
>
>     mgmt_addr: 192.168.13.2
>
>     name: ni-x4xx-327B85D
>
>     product: x410
>
>     type: x4xx

When I run `uhd_usrp_probe`, I am facing the following error:

> \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.13.2,type=x4xx,product=x410,serial=327B85D,name=ni-x4xx-327B85D,fpga=X4_200,claimed=False,addr=192.168.11.2
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=X4_200,mgmt_addr=192.168.13.2,name=ni-x4xx-327B85D,product=x410,clock_source=internal,time_source=internal,initializing=True'.
>
> \[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.
>
> Target sock buff size: 25000000 bytes.
>
> Actual sock buff size: 1048576 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.wmem_max=25000000
>
> \[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket: Connection refused
>
> \[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused
>
> \[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused
>
> Error: RuntimeError: Failure to create rfnoc_graph.

The same error pops up when I try to flash a new image. 

> \~$ uhd_image_loader --args type=x4xx,addr=192.168.12.2,fpga=X4_200
>
> \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.12.2,type=x4xx,product=x410,serial=327B85D,name=ni-x4xx-327B85D,fpga=X4_200,claimed=False,skip_init=1
>
> \[INFO\] \[MPMD\] Claimed device without full initialization.
>
> \[INFO\] \[MPMD IMAGE LOADER\] Starting update. This may take a while.
>
> \[INFO\] \[MPM.PeriphManager\] Installing component \`fpga'
>
> \[INFO\] \[MPM.PeriphManager\] Installing component \`dts'
>
> \[INFO\] \[MPM.RPCServer\] Resetting peripheral manager.
>
> \[INFO\] \[MPM.PeriphManager\] Device serial number: 3274839
>
> \[INFO\] \[MPM.PeriphManager.ClkMgr\] Using Clock Configuration:
>
> DB0: Master Clock Rate: 245.76 MSps @Converter Rate 2.94912 GHz
>
> DB1: Master Clock Rate: 245.76 MSps @Converter Rate 2.94912 GHz
>
> \[INFO\] \[MPM.PeriphManager\] Initialized 2 daughterboard(s).
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`boot_init=True,clock_source=internal,time_source=internal,initializing=True'.
>
> \[INFO\] \[MPMD IMAGE LOADER\] Update component function succeeded.
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.12.2,type=x4xx,product=x410,serial=327B85D,name=ni-x4xx-327B85D,fpga=X4_200,claimed=False,addr=192.168.12.2,find_all=1
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`find_all=1,fpga=X4_200,mgmt_addr=192.168.12.2,name=ni-x4xx-327B85D,product=x410,clock_source=internal,time_source=internal,initializing=True'.
>
> \[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket: Connection refused
>
> \[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused
>
> \[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused
>
> Error: RuntimeError: Failure to create rfnoc_graph.

What could be the possible issues? Greatly appreciate you help!

--b1_1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p><p>I am trying to setup an X410 with a 4x10G NIC on the PC. A=
fter configuring the IP addresses, <code>uhd_find_devices </code>identifies=
 the USRP without any issues. The output of <code>uhd_find_devices </code>i=
s the following: </p><blockquote><p>[INFO] [UHD] linux; GNU C++ version 11.=
4.0; Boost_107400; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa</p><p>-----------=
---------------------------------------</p><p>-- UHD Device 0</p><p>-------=
-------------------------------------------</p><p>Device Address:</p><p>   =
 serial: 327B85D</p><p>    addr: 192.168.11.2</p><p>    claimed: False</p><=
p>    fpga: X4_200</p><p>    mgmt_addr: 192.168.10.2</p><p>    mgmt_addr: 1=
92.168.11.2</p><p>    mgmt_addr: 192.168.12.2</p><p>    mgmt_addr: 192.168.=
13.2</p><p>    name: ni-x4xx-327B85D</p><p>    product: x410</p><p>    type=
: x4xx</p></blockquote><p>When I run <code>uhd_usrp_probe</code>, I am faci=
ng the following error:</p><blockquote><p>[INFO] [UHD] linux; GNU C++ versi=
on 11.4.0; Boost_107400; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa</p><p>[INFO=
] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.16=
8.13.2,type=3Dx4xx,product=3Dx410,serial=3D327B85D,name=3Dni-x4xx-327B85D,f=
pga=3DX4_200,claimed=3DFalse,addr=3D192.168.11.2</p><p>[INFO] [MPM.PeriphMa=
nager] init() called with device args `fpga=3DX4_200,mgmt_addr=3D192.168.13=
.2,name=3Dni-x4xx-327B85D,product=3Dx410,clock_source=3Dinternal,time_sourc=
e=3Dinternal,initializing=3DTrue'.</p><p>[WARNING] [UDP] The send buffer co=
uld not be resized sufficiently.</p><p>Target sock buff size: 25000000 byte=
s.</p><p>Actual sock buff size: 1048576 bytes.</p><p>See the transport appl=
ication notes on buffer resizing.</p><p>Please run: sudo sysctl -w net.core=
.wmem_max=3D25000000</p><p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError:=
 recv error on socket: Connection refused</p><p>[ERROR] [RFNOC::GRAPH] IO E=
rror during GSM initialization. EnvironmentError: IOError: recv error on so=
cket: Connection refused</p><p>[ERROR] [RFNOC::GRAPH] Caught exception whil=
e initializing graph: EnvironmentError: IOError: recv error on socket: Conn=
ection refused</p><p>Error: RuntimeError: Failure to create rfnoc_graph.</p=
></blockquote><p>The same error pops up when I try to flash a new image. </=
p><blockquote><p>~$ uhd_image_loader --args type=3Dx4xx,addr=3D192.168.12.2=
,fpga=3DX4_200</p><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_1074=
00; DPDK_21.11; UHD_4.6.0.HEAD-0-g50fa3baa</p><p>[INFO] [MPMD] Initializing=
 1 device(s) in parallel with args: mgmt_addr=3D192.168.12.2,type=3Dx4xx,pr=
oduct=3Dx410,serial=3D327B85D,name=3Dni-x4xx-327B85D,fpga=3DX4_200,claimed=
=3DFalse,skip_init=3D1</p><p>[INFO] [MPMD] Claimed device without full init=
ialization.</p><p>[INFO] [MPMD IMAGE LOADER] Starting update. This may take=
 a while.</p><p>[INFO] [MPM.PeriphManager] Installing component `fpga'</p><=
p>[INFO] [MPM.PeriphManager] Installing component `dts'</p><p>[INFO] [MPM.R=
PCServer] Resetting peripheral manager.</p><p>[INFO] [MPM.PeriphManager] De=
vice serial number: 3274839</p><p>[INFO] [MPM.PeriphManager.ClkMgr] Using C=
lock Configuration:</p><p>DB0: Master Clock Rate: 245.76 MSps @Converter Ra=
te 2.94912 GHz</p><p>DB1: Master Clock Rate: 245.76 MSps @Converter Rate 2.=
94912 GHz</p><p>[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<=
/p><p>[INFO] [MPM.PeriphManager] init() called with device args `boot_init=
=3DTrue,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'=
.</p><p>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.</p>=
<p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.12.2,type=3Dx4xx,product=3Dx410,serial=3D327B85D,name=3Dni-x4xx-=
327B85D,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.12.2,find_all=3D1</p><=
p>[INFO] [MPM.PeriphManager] init() called with device args `find_all=3D1,f=
pga=3DX4_200,mgmt_addr=3D192.168.12.2,name=3Dni-x4xx-327B85D,product=3Dx410=
,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</p><p=
>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: Con=
nection refused</p><p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initializa=
tion. EnvironmentError: IOError: recv error on socket: Connection refused</=
p><p>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Envi=
ronmentError: IOError: recv error on socket: Connection refused</p><p>Error=
: RuntimeError: Failure to create rfnoc_graph.</p></blockquote><p>What coul=
d be the possible issues? Greatly appreciate you help! </p>

--b1_1Jv8EbBoOfNKYemyM7yM8ykQ4BwoyZvcKXYwiroegA--

--===============1339347803970344657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1339347803970344657==--
