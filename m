Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D48ACDB7B
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 11:55:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 716A03860DD
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 05:55:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749030942; bh=LfPBdG+uz5PH4WWiGTqWZFktuOdsG9K8QjG9w3Eordc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DnKENeMVFdZ+Wh+mUsPrqM2Jg+JQ+USssT4SC0kqrsGtopss5pvG1CDk2vK8SFB68
	 JgS49rYuhOcINQ094lrlPOx93pUERS7aNCqAEDCy7q8YCsa6Y9ZgIpAeED2+fh/zva
	 OKs7+rfA68uS2WYWAGUu6wVOeIfSS+twVCleuNcItwIIadJ1PnTtq95eciHRLuIWzq
	 Ewp1k2wxgdMxtFCyaLBk4hz3w9Mkkik71bXKHR9+/t4MQV9dh4deJ/HLU5QdlkVeT1
	 qZ1kqR1ndtELzyviurv3grp47YOd7Gmk2w/2eGuFxbsRubPQ/G7cJJPwSDyCbzLGmC
	 bnY3bzdW5yM9Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 695B5385E33
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 05:54:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749030890; bh=POaP3NU27sg+937RFUP7N51SL5LNuV7jWgI7+7VNg9w=;
	h=Date:To:From:Subject:From;
	b=JQr4DsZQKpHDEYjh9q9ygG6bStT1hQaUbk66uADFrrUdn0rik34hfZn6qFQMHyP+3
	 Z5UtC7gpbwV3e8fsBNGPzzUcCMlWRWPFKB0cax3Jx9wLSCHi40T9h6Sll5Rbtlzdv5
	 gEnb4dujXMtEuaITAoXYyaDbCCTj6Gg3gUO08H3mqHtVJxnubWDv6+FQkSGHVUj/6j
	 c8rIKW9vurksKsu+RV9CbOYNb93wlqOGDNAjEOZWp4wzfet5+vcJhawkGarKCe/pL7
	 S9oa26/EYak8tTaHmy3HT7/l6hBnGhJtVqEJM+kejxVZ+44rT6GRKA5/KHWzP463aD
	 kudqQK8WUBwkA==
Date: Wed, 4 Jun 2025 09:54:50 +0000
To: usrp-users@lists.ettus.com
From: sebastian.schroeder@hhi.fraunhofer.de
Message-ID: <7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: IYJUR3TP7VHSNAM2I3JCFQMX4PMZJGEC
X-Message-ID-Hash: IYJUR3TP7VHSNAM2I3JCFQMX4PMZJGEC
X-MailFrom: sebastian.schroeder@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 RFNoC AssertionError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYJUR3TP7VHSNAM2I3JCFQMX4PMZJGEC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5976277952167635851=="

This is a multi-part message in MIME format.

--===============5976277952167635851==
Content-Type: multipart/alternative;
 boundary="b1_7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k
Content-Type: text/plain; charset=us-ascii

Hello,

I have two USRP X410 devices, one of which no longer seems to work when initialization Radio1 . I set up both devices with the latest Mender file system, v4.8.0.0_x4xx. They also both share the same FPGA image, CG_400. I have also tried using the X4_200 image. My system is up to date with the UHD_4.8.0.HEAD-0-g308126a4 version. Has anyone experienced a similar issue? Does anyone know how to resolve this error?

The log below shows me first loading a fresh FPGA image, then probing the USRP twice with different errors.

`$ uhd_image_loader --args type=x4xx,addr=172.24.12.227,fpga=CG_400`

`[INFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=172.24.12.227,type=x4xx,product=x410,serial=327B85F,name=ni-x4xx-327B85F,fpga=X4_200,claimed=False,skip_init=1`

`[INFO] [MPMD] Claimed device without full initialization.`

`[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.`

`` [INFO] [MPM.PeriphManager] Installing component `fpga' ``

`` [INFO] [MPM.PeriphManager] Installing component `dts' ``

`[INFO] [MPM.RPCServer] Resetting peripheral manager.`

`[INFO] [MPM.PeriphManager] Device serial number: 32748FC`

`[INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:`

`DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz`

`DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz`

`[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).`

`` [INFO] [MPM.PeriphManager] init() called with device args `boot_init=True,clock_source=internal,time_source=internal,initializing=True'. ``

`[INFO] [MPMD IMAGE LOADER] Update component function succeeded.`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=172.24.12.227,type=x4xx,product=x410,serial=327B85F,name=ni-x4xx-327B85F,fpga=CG_400,claimed=False,addr=172.24.12.227,find_all=1`

`` [INFO] [MPM.PeriphManager] init() called with device args `find_all=1,fpga=CG_400,mgmt_addr=172.24.12.227,name=ni-x4xx-327B85F,product=x410,clock_source=internal,time_source=internal,initializing=True'. ``

`[INFO] [0/Radio#0] Clocking reconfigured, running ADC Self Cal on DB0...`

`[INFO] [0/Radio#0] Calibrating channel 0...`

`[INFO] [0/Radio#0] Calibrating channel 1...`

`[INFO] [0/Radio#0] Calibrated 2 channels.`

`[ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!`

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError: OpFailed: Control operation returned a failing status`

`Error: RuntimeError: Failure to create rfnoc_graph.`

`$uhd_usrp_probe --args "addr=172.24.12.227"                     `

`[INFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=172.24.12.227,type=x4xx,product=x410,serial=327B85F,name=ni-x4xx-327B85F,fpga=CG_400,claimed=False,addr=172.24.12.227`I have two USRP X410 devices, one of which no longer seems to work when initializing Radio 1.

`` [INFO] [MPM.PeriphManager] init() called with device args `fpga=CG_400,mgmt_addr=172.24.12.227,name=ni-x4xx-327B85F,product=x410,clock_source=internal,time_source=internal,initializing=True'. ``

`[ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!`

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError: OpFailed: Control operation returned a failing status`

`Error: RuntimeError: Failure to create rfnoc_graph.`

`$ uhd_usrp_probe --args "addr=172.24.12.227"`

`[INFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=172.24.12.227,type=x4xx,product=x410,serial=327B85F,name=ni-x4xx-327B85F,fpga=CG_400,claimed=False,addr=172.24.12.227`

`` [INFO] [MPM.PeriphManager] init() called with device args `fpga=CG_400,mgmt_addr=172.24.12.227,name=ni-x4xx-327B85F,product=x410,clock_source=internal,time_source=internal,initializing=True'. ``

`[ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!`

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: AssertionError: _regs.ADDRESS == addr`

`  in lo_peek16`

`  at /home/hhi/Software/uhd/host/lib/usrp/dboard/zbx/zbx_cpld_ctrl.cpp:682`

`Error: RuntimeError: Failure to create rfnoc_graph.`

Host Config: **\
`uhd_config_info --print-all`**

> * `UHD 4.8.0.HEAD-0-g308126a4`
>
> * `Build date: Tue, 27 May 2025 09:27:27`
>
> * `C compiler: GNU 12.3.0`
>
> * `C++ compiler: GNU 12.3.0`
>
> * `Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, Utils, Tests, Python Module (Utils only), USB, B100, B200, USRP1, USRP2, X300, MPMD, SIM, N300, N320, E320, E300, X400, OctoClock, DPDK`
>
> * `Install prefix: /usr/local`
>
> * `Boost version: 1.84`
>
> * `DPDK version: 21.11.6`
>
> * `Libusb version: 1.0.27`

Tank you for any help.\
\~Sebastian

--b1_7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I have two USRP X410 devices, one of which no longer seems =
to work when initialization Radio1 . I set up both devices with the latest =
Mender file system, v4.8.0.0_x4xx. They also both share the same FPGA image=
, CG_400. I have also tried using the X4_200 image. My system is up to date=
 with the UHD_4.8.0.HEAD-0-g308126a4 version. Has anyone experienced a simi=
lar issue? Does anyone know how to resolve this error?</p><p>The log below =
shows me first loading a fresh FPGA image, then probing the USRP twice with=
 different errors.<strong><br></strong><br></p><p><code>$ uhd_image_loader =
--args type=3Dx4xx,addr=3D172.24.12.227,fpga=3DCG_400</code></p><p><code>[I=
NFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8=
.0.HEAD-0-g308126a4</code></p><p><code>[INFO] [MPMD] Initializing 1 device(=
s) in parallel with args: mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx=
410,serial=3D327B85F,name=3Dni-x4xx-327B85F,fpga=3DX4_200,claimed=3DFalse,s=
kip_init=3D1</code></p><p><code>[INFO] [MPMD] Claimed device without full i=
nitialization.</code></p><p><code>[INFO] [MPMD IMAGE LOADER] Starting updat=
e. This may take a while.</code></p><p><code>[INFO] [MPM.PeriphManager] Ins=
talling component `fpga'</code></p><p><code>[INFO] [MPM.PeriphManager] Inst=
alling component `dts'</code></p><p><code>[INFO] [MPM.RPCServer] Resetting =
peripheral manager.</code></p><p><code>[INFO] [MPM.PeriphManager] Device se=
rial number: 32748FC</code></p><p><code>[INFO] [MPM.PeriphManager.ClkMgr] U=
sing Clock Configuration:</code></p><p><code>DB0: Master Clock Rate: 491.52=
 MSps @Converter Rate 2.94912 GHz</code></p><p><code>DB1: Master Clock Rate=
: 491.52 MSps @Converter Rate 2.94912 GHz</code></p><p><code>[INFO] [MPM.Pe=
riphManager] Initialized 2 daughterboard(s).</code></p><p><code>[INFO] [MPM=
.PeriphManager] init() called with device args `boot_init=3DTrue,clock_sour=
ce=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</code></p><p><co=
de>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.</code></=
p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mg=
mt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,name=3D=
ni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D172.24.12.227,find_all=
=3D1</code></p><p><code>[INFO] [MPM.PeriphManager] init() called with devic=
e args `find_all=3D1,fpga=3DCG_400,mgmt_addr=3D172.24.12.227,name=3Dni-x4xx=
-327B85F,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,init=
ializing=3DTrue'.</code></p><p><code>[INFO] [0/Radio#0] Clocking reconfigur=
ed, running ADC Self Cal on DB0...</code></p><p><code>[INFO] [0/Radio#0] Ca=
librating channel 0...</code></p><p><code>[INFO] [0/Radio#0] Calibrating ch=
annel 1...</code></p><p><code>[INFO] [0/Radio#0] Calibrated 2 channels.</co=
de></p><p><code>[ERROR] [RFNOC::GRAPH] Error during initialization of block=
 0/Radio#1!</code></p><p><code>[ERROR] [RFNOC::GRAPH] Caught exception whil=
e initializing graph: RfnocError: OpFailed: Control operation returned a fa=
iling status</code></p><p><code>Error: RuntimeError: Failure to create rfno=
c_graph.</code></p><p><code>$uhd_usrp_probe --args "addr=3D172.24.12.227"  =
                   </code></p><p><code>[INFO] [UHD] linux; GNU C++ version =
12.3.0; Boost_108400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4</code></p><p><=
code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,name=3Dni-x4x=
x-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D172.24.12.227</code>I have t=
wo USRP X410 devices, one of which no longer seems to work when initializin=
g Radio 1.</p><p><code>[INFO] [MPM.PeriphManager] init() called with device=
 args `fpga=3DCG_400,mgmt_addr=3D172.24.12.227,name=3Dni-x4xx-327B85F,produ=
ct=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTru=
e'.</code></p><p><code>[ERROR] [RFNOC::GRAPH] Error during initialization o=
f block 0/Radio#1!</code></p><p><code>[ERROR] [RFNOC::GRAPH] Caught excepti=
on while initializing graph: RfnocError: OpFailed: Control operation return=
ed a failing status</code></p><p><code>Error: RuntimeError: Failure to crea=
te rfnoc_graph.</code></p><p><code>$ uhd_usrp_probe --args "addr=3D172.24.1=
2.227"</code></p><p><code>[INFO] [UHD] linux; GNU C++ version 12.3.0; Boost=
_108400; DPDK_21.11; UHD_4.8.0.HEAD-0-g308126a4</code></p><p><code>[INFO] [=
MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D172.24.12=
.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,name=3Dni-x4xx-327B85F,fpg=
a=3DCG_400,claimed=3DFalse,addr=3D172.24.12.227</code></p><p><code>[INFO] [=
MPM.PeriphManager] init() called with device args `fpga=3DCG_400,mgmt_addr=
=3D172.24.12.227,name=3Dni-x4xx-327B85F,product=3Dx410,clock_source=3Dinter=
nal,time_source=3Dinternal,initializing=3DTrue'.</code></p><p><code>[ERROR]=
 [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!</code></p><=
p><code>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: A=
ssertionError: _regs.ADDRESS =3D=3D addr</code></p><p><code>  in lo_peek16<=
/code></p><p><code>  at /home/hhi/Software/uhd/host/lib/usrp/dboard/zbx/zbx=
_cpld_ctrl.cpp:682</code></p><p><code>Error: RuntimeError: Failure to creat=
e rfnoc_graph.</code></p><p><br></p><p>Host Config: <strong><br><code>uhd_c=
onfig_info --print-all</code></strong></p><blockquote><ul><li><p><code>UHD =
4.8.0.HEAD-0-g308126a4</code></p></li><li><p><code>Build date: Tue, 27 May =
2025 09:27:27</code></p></li><li><p><code>C compiler: GNU 12.3.0</code></p>=
</li><li><p><code>C++ compiler: GNU 12.3.0</code></p></li><li><p><code>Enab=
led components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, Util=
s, Tests, Python Module (Utils only), USB, B100, B200, USRP1, USRP2, X300, =
MPMD, SIM, N300, N320, E320, E300, X400, OctoClock, DPDK</code></p></li><li=
><p><code>Install prefix: /usr/local</code></p></li><li><p><code>Boost vers=
ion: 1.84</code></p></li><li><p><code>DPDK version: 21.11.6</code></p></li>=
<li><p><code>Libusb version: 1.0.27<br></code><br></p></li></ul></blockquot=
e><p>Tank you for any help.<br>~Sebastian</p>

--b1_7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k--

--===============5976277952167635851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5976277952167635851==--
