Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A0C7EA31B
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 19:54:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CFF3385236
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 13:54:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699901663; bh=5h6zc2CB52yG2saf4XbPS3cYmwhCtX102vskxNHuAE8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wUogzQ1lFpMPOh9suNJsRdHTsS1Wbt3JXws+fwo+bhSzItVnkQ0mixj5T2rG73QJD
	 o3Aky2tM+9zyKAmoCq1Fd21gKhFn++Pb9y1LB7Emz2omJMT1w+tvsRJ7zOg6ky1Quw
	 iBONMuoWmBf8B1Xxf4iqDm+E7S4XCdp+5MlnylSFAx1daqetQBckon+mszrftAPwH7
	 F+Wx1WBvBv966uy25+rQ3waTOzkC0RsBJxbH7CUIyk3WDVMOrX0VBAv3c08zehFdAP
	 54rIMWeBNGpc8V7V5hs+08OfP2dRs0dIKrTRtjIhZbR9jUqbC5pqu3kaYw3O2NCWcz
	 YKOnzfW9E04gQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5A51383B91
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 13:53:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699901624; bh=LLnxPv/2VxYpRmQIjxhGWoPiUJlUfZq4rxAuXVaYIkc=;
	h=Date:To:From:Subject:From;
	b=vNDs1wv/GlXXgwXhUCQBVDs8xk8u+HHsGmH1iS0LGRcB0vARzhBHFNYLJZyBWfMJI
	 ZrxeVjBw8rt9Z2zlNNS/uikCd+T3BB5giQ2tsD/HVBIisug36nBSmq1wAZ+2Sa61Sa
	 EuLDy54+ShmLcbrPj7qxV6PLrDvqC7VdWGo3haNDFd0VMdzB4U9iSvgshskn7MkQLD
	 LbS59de/M86L4juriJI6gM8g7dvwGgfezo+eSnJ41Jk317/dgnR3PujbIumIlq4DZo
	 KYqStLXCPaHMdmdw4q8j5cB1JbNCSmq5JuqgMY1NdM/Y4h7LNBdqK0Uj+V+V5Ema1v
	 y2xDWhIXWruTw==
Date: Mon, 13 Nov 2023 18:53:44 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: VC4IDVUE7XKOKMTXRQ3RXFU65UGUJJZU
X-Message-ID-Hash: VC4IDVUE7XKOKMTXRQ3RXFU65UGUJJZU
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 recv error on socket: Connection refused
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VC4IDVUE7XKOKMTXRQ3RXFU65UGUJJZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8908952714878998618=="

This is a multi-part message in MIME format.

--===============8908952714878998618==
Content-Type: multipart/alternative;
 boundary="b1_HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw
Content-Type: text/plain; charset=us-ascii

Hello!

We have an X410 connected to a host computer through two QSFP28-to-QSFP28 connections with IPs 192.168.10.2 and 192.168.20.2 for interfaces 0 and 1 respectively. The X410 also has an ethernet connection to a router with an IP 192.168.1.19, which the host computer is also connected to.

When the X410 is loaded with the UC_200 image, everything seems to work as desired and running "uhd_find_devices" on its own produces:

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.0-0-g471af98f

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: 326E872

    addr: 192.168.20.2

    claimed: False

    fpga: UC_200

    mgmt_addr: 192.168.1.19

    mgmt_addr: 192.168.20.2

    name: ni-x4xx-326E872

    product: x410

    type: x4xx

	

When I try to change images with "uhd_image_loader --args type=x4xx,mgmt_address=192.168.1.19,fpga=CG_400 ", it seems to work but then errors out:

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.0-0-g471af98f

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgm_addr=192.168.1.19,addr0=192.168.20.2,mgmt_addr=192.168.1.19,type=x4xx,product=x410,serial=326E872,name=ni-x4xx-326E872,fpga=UC_200,claimed=False,addr=192.168.1.19,skip_init=1

\[INFO\] \[MPMD\] Claimed device without full initialization.

\[INFO\] \[MPMD IMAGE LOADER\] Starting update. This may take a while.

\[INFO\] \[MPM.PeriphManager\] Installing component \`fpga'

\[INFO\] \[MPM.PeriphManager\] Installing component \`dts'

\[INFO\] \[MPM.RPCServer\] Resetting peripheral manager.

\[INFO\] \[MPM.PeriphManager\] Device serial number: 3263584

\[INFO\] \[MPM.PeriphManager.ClkMgr\] Using Clock Configuration:

DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz

DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz

\[INFO\] \[MPM.PeriphManager\] Initialized 2 daughterboard(s).

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`boot_init=True,clock_source=internal,time_source=internal,initializing=True'.

\[ERROR\] \[RPC\] Someone tried to claim this device again (From: 192.168.1.20)

\[INFO\] \[MPMD IMAGE LOADER\] Update component function succeeded.

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgm_addr=192.168.1.19,addr0=192.168.20.2,mgmt_addr=192.168.20.2,type=x4xx,product=x410,serial=326E872,name=ni-x4xx-326E872,fpga=CG_400,claimed=False,addr=192.168.20.2,mgmt_address=192.168.1.19,find_all=1

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`addr0=192.168.20.2,find_all=1,fpga=CG_400,mgm_addr=192.168.1.19,mgmt_addr=192.168.20.2,mgmt_address=192.168.1.19,name=ni-x4xx-326E872,product=x410,clock_source=internal,time_source=internal,initializing=True'.

\[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused

Error: RuntimeError: Failure to create rfnoc_graph.

But if I run uhd_find_devices again I get what I expect :

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: 326E872

    addr: 192.168.20.2

    claimed: False

    fpga: CG_400

    mgmt_addr: 192.168.1.19

    mgmt_addr: 192.168.10.2

    mgmt_addr: 192.168.20.2

    name: ni-x4xx-326E872

    product: x410

    type: x4xx

	

If I try and run any script though, even specifying the addresses, I get the same errors as when changing the image. An example is with 'uhd_usrp_probe --args "mgmt_addr=192.168.1.19,type=x4xx" ' even without any arguements:

INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.0-0-g471af98f

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgm_addr=192.168.1.19,addr0=192.168.20.2,mgmt_addr=192.168.1.19,type=x4xx,product=x410,serial=326E872,name=ni-x4xx-326E872,fpga=CG_400,claimed=False

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`addr0=192.168.20.2,fpga=CG_400,mgm_addr=192.168.1.19,mgmt_addr=192.168.1.19,name=ni-x4xx-326E872,product=x410,clock_source=internal,time_source=internal,initializing=True'.

\[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused

Error: RuntimeError: Failure to create rfnoc_graph.

The errors disappear when I use addr0 instead of mgmt_addr or addr. Since this option is not listed in the wiki (https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_usage_args) I am curious if I am using it correctly. At the end of the day, I want to make sure that when using the CG_400 image that both QSFP28 interfaces are operating, and that I can switch between the two images without errors. Previously we used to only have a single connection. 

Thanks!

Zack

--b1_HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>We have an X410 connected to a host computer through two QS=
FP28-to-QSFP28 connections with IPs 192.168.10.2 and 192.168.20.2 for inter=
faces 0 and 1 respectively. The X410 also has an ethernet connection to a r=
outer with an IP 192.168.1.19, which the host computer is also connected to=
.</p><p>When the X410 is loaded with the UC_200 image, everything seems to =
work as desired and running "uhd_find_devices" on its own produces:</p><p>[=
INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5=
.0.0-0-g471af98f</p><p>--------------------------------------------------</=
p><p>-- UHD Device 0</p><p>------------------------------------------------=
--</p><p>Device Address:</p><p>    serial: 326E872</p><p>    addr: 192.168.=
20.2</p><p>    claimed: False</p><p>    fpga: UC_200</p><p>    mgmt_addr: 1=
92.168.1.19</p><p>    mgmt_addr: 192.168.20.2</p><p>    name: ni-x4xx-326E8=
72</p><p>    product: x410</p><p>    type: x4xx</p><p>=09</p><p>When I try =
to change images with "uhd_image_loader --args type=3Dx4xx,mgmt_address=3D1=
92.168.1.19,fpga=3DCG_400 ", it seems to work but then errors out:</p><p>[I=
NFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.=
0.0-0-g471af98f</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel wi=
th args: mgm_addr=3D192.168.1.19,addr0=3D192.168.20.2,mgmt_addr=3D192.168.1=
.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpga=
=3DUC_200,claimed=3DFalse,addr=3D192.168.1.19,skip_init=3D1</p><p>[INFO] [M=
PMD] Claimed device without full initialization.</p><p>[INFO] [MPMD IMAGE L=
OADER] Starting update. This may take a while.</p><p>[INFO] [MPM.PeriphMana=
ger] Installing component `fpga'</p><p>[INFO] [MPM.PeriphManager] Installin=
g component `dts'</p><p>[INFO] [MPM.RPCServer] Resetting peripheral manager=
.</p><p>[INFO] [MPM.PeriphManager] Device serial number: 3263584</p><p>[INF=
O] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:</p><p>DB0: Master =
Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz</p><p>DB1: Master Clock=
 Rate: 491.52 MSps @Converter Rate 2.94912 GHz</p><p>[INFO] [MPM.PeriphMana=
ger] Initialized 2 daughterboard(s).</p><p>[INFO] [MPM.PeriphManager] init(=
) called with device args `boot_init=3DTrue,clock_source=3Dinternal,time_so=
urce=3Dinternal,initializing=3DTrue'.</p><p>[ERROR] [RPC] Someone tried to =
claim this device again (From: 192.168.1.20)</p><p>[INFO] [MPMD IMAGE LOADE=
R] Update component function succeeded.</p><p>[INFO] [MPMD] Initializing 1 =
device(s) in parallel with args: mgm_addr=3D192.168.1.19,addr0=3D192.168.20=
.2,mgmt_addr=3D192.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D326E872,nam=
e=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,mgmt_=
address=3D192.168.1.19,find_all=3D1</p><p>[INFO] [MPM.PeriphManager] init()=
 called with device args `addr0=3D192.168.20.2,find_all=3D1,fpga=3DCG_400,m=
gm_addr=3D192.168.1.19,mgmt_addr=3D192.168.20.2,mgmt_address=3D192.168.1.19=
,name=3Dni-x4xx-326E872,product=3Dx410,clock_source=3Dinternal,time_source=
=3Dinternal,initializing=3DTrue'.</p><p>[ERROR] [RFNOC::MGMT] EnvironmentEr=
ror: IOError: recv error on socket: Connection refused</p><p>[ERROR] [RFNOC=
::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: rec=
v error on socket: Connection refused</p><p>[ERROR] [RFNOC::GRAPH] Caught e=
xception while initializing graph: EnvironmentError: IOError: recv error on=
 socket: Connection refused</p><p>Error: RuntimeError: Failure to create rf=
noc_graph.</p><p>But if I run uhd_find_devices again I get what I expect :<=
/p><p>--------------------------------------------------</p><p>-- UHD Devic=
e 0</p><p>--------------------------------------------------</p><p>Device A=
ddress:</p><p>    serial: 326E872</p><p>    addr: 192.168.20.2</p><p>    cl=
aimed: False</p><p>    fpga: CG_400</p><p>    mgmt_addr: 192.168.1.19</p><p=
>    mgmt_addr: 192.168.10.2</p><p>    mgmt_addr: 192.168.20.2</p><p>    na=
me: ni-x4xx-326E872</p><p>    product: x410</p><p>    type: x4xx</p><p>=09<=
/p><p>If I try and run any script though, even specifying the addresses, I =
get the same errors as when changing the image. An example is with 'uhd_usr=
p_probe --args "mgmt_addr=3D192.168.1.19,type=3Dx4xx" ' even without any ar=
guements:</p><p>INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPD=
K_19.11; UHD_4.5.0.0-0-g471af98f</p><p>[INFO] [MPMD] Initializing 1 device(=
s) in parallel with args: mgm_addr=3D192.168.1.19,addr0=3D192.168.20.2,mgmt=
_addr=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-=
x4xx-326E872,fpga=3DCG_400,claimed=3DFalse</p><p>[INFO] [MPM.PeriphManager]=
 init() called with device args `addr0=3D192.168.20.2,fpga=3DCG_400,mgm_add=
r=3D192.168.1.19,mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3D=
x410,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</=
p><p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:=
 Connection refused</p><p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initia=
lization. EnvironmentError: IOError: recv error on socket: Connection refus=
ed</p><p>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: =
EnvironmentError: IOError: recv error on socket: Connection refused</p><p>E=
rror: RuntimeError: Failure to create rfnoc_graph.</p><p>The errors disappe=
ar when I use addr0 instead of mgmt_addr or addr. Since this option is not =
listed in the wiki (https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx=
_usage_args) I am curious if I am using it correctly. At the end of the day=
, I want to make sure that when using the CG_400 image that both QSFP28 int=
erfaces are operating, and that I can switch between the two images without=
 errors. Previously we used to only have a single connection. </p><p>Thanks=
!</p><p>Zack</p>

--b1_HtYBJYd1ONZTzfOktCOPYLP4lRLo9HC5W86V9b65hw--

--===============8908952714878998618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8908952714878998618==--
