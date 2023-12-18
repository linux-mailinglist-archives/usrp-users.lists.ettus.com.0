Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E75481794F
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 18:59:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD9DA385883
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 12:59:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702922364; bh=OH6TuJPt13Fqel6UGsudmcYl9c2vww+Tj7tD4u0e35A=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kP6+orrLjJrfP/8XW0e6gKAKrsFUYhADgsnqA7IqNfUtBNb0SXD4rzQbo7BHj0Gko
	 9xH95O9INpXj3QOKgcIz6AnjvmXgR7r6HmvIN7Zv1P35NsMryYpvWi07aOa82hb9uk
	 hB+ifGkC2yCXp5ieU44s2O9rkKMtjuBqsVKgdsC5zLPM3tLgOBOBqVb1PWdxUZCerV
	 UNn9qPlubRvtH09VeSnHbQRJSkOdXf0xOWR8pvfppt/e9CsDevrrJF8/ENlOjPLUuV
	 GO+KDvbG+NUXVjsaqs8H5StqQXttrgEN0a2VSBNm3HD/d5tTug6DvJNnze/RgO1Yp6
	 LgcXrjc/oP6bQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9778A38557A
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 12:58:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702922332; bh=+94cmFEtJkGNnh7eCJWTMKa7srxRoaOeMOyGp9FZs8o=;
	h=Date:To:From:Subject:From;
	b=XJUT2S8XFujXGmpFg23kzkueBaebyJNEKxDLYO3UzdVNBueCjKfao2UYT0NTxcmw4
	 KWdZr29pxf/oZKHF5h3VE2d810e2GBtQ6yUsybHw5lELgRafFX5rYo33eZft7Bozmq
	 meI+T4EZCbP0ILowtDYWkhvYS0GI9VKEnn1sM8JI4e2JGio6i9lckdVc8Ld+7B3rRd
	 BLHZjLCUAH/JXCfjoF5+ooI4lvJFFxnxLo7tHI47R4KsdaS3uEhcJ9sHJaJuT4W8Hu
	 BCwhCxnW73wb+lRQGyTSXax2bJt9Z2PCIaU/gCMRfij82AfAweLRFk6Q9hsyC4bIr6
	 XUUs+odwKX89A==
Date: Mon, 18 Dec 2023 17:58:52 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ZHPOQ26GFG6DRMPBFCABH4QSVL52QBXR
X-Message-ID-Hash: ZHPOQ26GFG6DRMPBFCABH4QSVL52QBXR
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZHPOQ26GFG6DRMPBFCABH4QSVL52QBXR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7841232075317479106=="

This is a multi-part message in MIME format.

--===============7841232075317479106==
Content-Type: multipart/alternative;
 boundary="b1_yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,=20

I am trying to run this command =E2=80=9Cuhd_image_loader --args type=3De=
3xx,adr=3D192.168.10.2 --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-E310_SG3/e31x.bit=E2=80=9D

But I get error which is =E2=80=9CError: RuntimeError: Failure to create =
rfnoc_graph=E2=80=9D.

the whole output is =E2=80=9C\[INFO\] \[UHD\] linux; GNU C++ version 9.4.=
0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,name=3D=
ni-e31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,skip_init=3D=
1

\[INFO\] \[MPMD\] Claimed device without full initialization.

\[INFO\] \[MPMD IMAGE LOADER\] Starting update. This may take a while.

\[INFO\] \[MPM.PeriphManager\] Installing component \`fpga'

\[INFO\] \[MPM.PeriphManager\] Installing component \`dts'

\[INFO\] \[MPMD IMAGE LOADER\] Update component function succeeded.

\[INFO\] \[MPM.RPCServer\] Resetting peripheral manager.

\[WARNING\] \[MPM.PeriphManager\] Skipping HW/SW compatibility check!

\[INFO\] \[MPM.PeriphManager\] Device serial number: 31370FC

\[WARNING\] \[MPM.PeriphManager\] Found more EEPROM paths than daughterbo=
ards. Ignoring some of them.

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,name=3D=
ni-e31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,adr=3D192.=
168.10.2,find_all=3D1

\[WARNING\] \[MPM.PeriphManager\] Cannot run deinit(), device was never f=
ully initialized!

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`adr=3D192=
.168.10.2,find_all=3D1,fpga=3Dn/a,mgmt_addr=3D192.168.10.2,name=3Dni-e31x=
-31370FC,product=3De310_sg3'.

\[WARNING\] \[RFNOC::GRAPH\] One or more blocks timed out during flush!

\[INFO\] \[0/Radio#0\] Performing CODEC loopback test on channel 0 ...=20

\[INFO\] \[0/Radio#0\] CODEC loopback test passed

\[INFO\] \[0/Radio#0\] Performing CODEC loopback test on channel 1 ...=20

\[INFO\] \[0/Radio#0\] CODEC loopback test passed

\[ERROR\] \[RFNOC::GRAPH\] Error during initialization of block 0/Replay#=
0!

\[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: Rfn=
ocError: OpTimeout: Control operation timed out waiting for ACK

Error: RuntimeError: Failure to create rfnoc_graph.=E2=80=9D

I am trying to build an fpga image with RFNoC. I have YML file which incl=
udes replay block which I copied to the folder (uhd/fpga/usrp3/top/e31x)

I have executed this command =E2=80=9Crfnoc_image_builder -y ./e310_rfnoc=
_image_core.yml -t E310_SG3 --fpga-dir \~/uhd/fpga/=E2=80=9D.

After this command I got no errors but warnings. result is=20

Warnings:           1073

Critical Warnings:  125

Errors:             0

make\[1\]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

Exporting bitstream file...

Exporting build report...

Build DONE ... E310_SG3=E2=80=9D

--b1_yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All, </p><p><br></p><p>I am trying to run this command =E2=80=9Cuhd_i=
mage_loader --args type=3De3xx,adr=3D192.168.10.2 --fpga-path=3D/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/e31x.bit=E2=80=9D</p><p><br></p><=
p>But I get error which is =E2=80=9CError: RuntimeError: Failure to create =
rfnoc_graph=E2=80=9D.</p><p>the whole output is =E2=80=9C[INFO] [UHD] linux=
; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><p>[IN=
FO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.=
168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,name=3Dni-e31x-313=
70FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,skip_init=3D1</p><p>[IN=
FO] [MPMD] Claimed device without full initialization.</p><p>[INFO] [MPMD I=
MAGE LOADER] Starting update. This may take a while.</p><p>[INFO] [MPM.Peri=
phManager] Installing component `fpga'</p><p>[INFO] [MPM.PeriphManager] Ins=
talling component `dts'</p><p>[INFO] [MPMD IMAGE LOADER] Update component f=
unction succeeded.</p><p>[INFO] [MPM.RPCServer] Resetting peripheral manage=
r.</p><p>[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!<=
/p><p>[INFO] [MPM.PeriphManager] Device serial number: 31370FC</p><p>[WARNI=
NG] [MPM.PeriphManager] Found more EEPROM paths than daughterboards. Ignori=
ng some of them.</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D=
31370FC,name=3Dni-e31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10=
.2,adr=3D192.168.10.2,find_all=3D1</p><p>[WARNING] [MPM.PeriphManager] Cann=
ot run deinit(), device was never fully initialized!</p><p>[INFO] [MPM.Peri=
phManager] init() called with device args `adr=3D192.168.10.2,find_all=3D1,=
fpga=3Dn/a,mgmt_addr=3D192.168.10.2,name=3Dni-e31x-31370FC,product=3De310_s=
g3'.</p><p>[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flu=
sh!</p><p>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ..=
. </p><p>[INFO] [0/Radio#0] CODEC loopback test passed</p><p>[INFO] [0/Radi=
o#0] Performing CODEC loopback test on channel 1 ... </p><p>[INFO] [0/Radio=
#0] CODEC loopback test passed</p><p>[ERROR] [RFNOC::GRAPH] Error during in=
itialization of block 0/Replay#0!</p><p>[ERROR] [RFNOC::GRAPH] Caught excep=
tion while initializing graph: RfnocError: OpTimeout: Control operation tim=
ed out waiting for ACK</p><p>Error: RuntimeError: Failure to create rfnoc_g=
raph.=E2=80=9D</p><p><br></p><p>I am trying to build an fpga image with RFN=
oC. I have YML file which includes replay block which I copied to the folde=
r (uhd/fpga/usrp3/top/e31x)</p><p>I have executed this command =E2=80=9Crfn=
oc_image_builder -y ./e310_rfnoc_image_core.yml -t E310_SG3 --fpga-dir ~/uh=
d/fpga/=E2=80=9D.</p><p><br></p><p>After this command I got no errors but w=
arnings. result is </p><p>Warnings:           1073</p><p>Critical Warnings:=
  125</p><p>Errors:             0</p><p>make[1]: Leaving directory '/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x'</p><p>Exporting bitstream file...</p><p>Exp=
orting build report...</p><p>Build DONE ... E310_SG3=E2=80=9D</p>

--b1_yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4--

--===============7841232075317479106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7841232075317479106==--
