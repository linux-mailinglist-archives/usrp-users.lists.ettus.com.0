Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C402A9CBF2
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 16:46:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4871386617
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 10:46:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745592410; bh=PauoaIvfpacF2Yv4KtNtFvZJ3WZUY8Wxi08OVuMup+0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gfvEqrvTZCMwwub3VX9uo+PYrBDhaRbjWQc4oToJsXE8M0dVi7AesN9dN4dsmkuQi
	 MzTgpfrV4B1HMI9xEi0MKx7EpJtmgFy/IkIthptafT1k6bJjYO+np0MnKKK1lF/UsA
	 H6FFX0irMcUi/aArb5uF+IyKVdsHhW4JTskjpoTkxDJ/4nB58RdNA6nKYcVgnIZlU0
	 At1shWWeSjy9QbzD2XLwUIyi/exZdGpw7zOhTt5hLvp9LsgYC6eR/+K0Ug6NdP42wL
	 Y2HpFh5HZZcMk2kddiws6GTjlOWX4MWA32YWDIyuIOQEzIslkyan7FCatqyzW9RsFT
	 aCx1tThqKzXow==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5AE938654E
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 10:46:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745592389; bh=3/PWGpsV3UxAnktQhdHST0ju0/UQMz82b3ddweyINDg=;
	h=Date:To:From:Subject:From;
	b=lQgV94O9dHE4lOsDtijb3t2hQIT005f9Nk0TXp/5OMoC/uAghCa1yroFmcn8/Xond
	 qJv1FmELHDx3kwFQsHbYbzRxXXsLUhx+93x2fAchuwFfu9v9/2e1emIS5QSjt8XDK+
	 E6acCOYboQrdjARi0NnqmmnWkdH4OaXKRqDwbttkjW8ryaLePRnKS+SczaJ9onjEu9
	 zVk0IPFTDiFWvF8WezCZ9xDz+hr2X/gQsBgztR/CSfvs+4U6IspNzbdU7NlekrNYoA
	 uO2Yft4tyBrED6aijP+MH+z1TEC++fU/8Y9yTM8usTfq1iurSVAZLPbUCT4fAYzX4K
	 myhWmL83p6nEg==
Date: Fri, 25 Apr 2025 14:46:29 +0000
To: usrp-users@lists.ettus.com
From: danielmay83@gmail.com
Message-ID: <O2CigEgJ8a7bLGXktQhKzOD13gEJky2kI91eo1lycTs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: W2P2X7S6OLI7NASELDMJRH3L64CQIT55
X-Message-ID-Hash: W2P2X7S6OLI7NASELDMJRH3L64CQIT55
X-MailFrom: danielmay83@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] "Connection refused" error with 100G ports on X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2P2X7S6OLI7NASELDMJRH3L64CQIT55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0296676289850327100=="

This is a multi-part message in MIME format.

--===============0296676289850327100==
Content-Type: multipart/alternative;
 boundary="b1_O2CigEgJ8a7bLGXktQhKzOD13gEJky2kI91eo1lycTs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_O2CigEgJ8a7bLGXktQhKzOD13gEJky2kI91eo1lycTs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I recently received an X440 and am having trouble with the 100G ethernet =
connections.\
\
I'm using UHD 4.8.0, and the CG_400 firmware image.\
\
I'm connected to both 100G ports and the 1G management port.=C2=A0 All po=
rts come up fine and seem to be connected.\
\
I can ping and ssh from my host machine to the X440 using the 100G ports =
just fine.\
\
I can run "uhd_find_devices" from any of the ports just fine.\
\
Using the 1G management port, I can run "uhd_usrp_probe" just fine.\
\
However, I cannot run "uhd_usrp_probe" or any other utilities from any of=
 the 100G ports.=C2=A0 I get the following error:\
\
./uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dx4xx"\
\[INFO\] \[UHD\] linux; GNU C++ version 13.3.0; Boost_106700; DPDK_24.11;=
 UHD_4.8.0.0-0-unknown\
\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: addr=3D=
192.168.10.2,mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx440,serial=3D=
3425978,name=3Dni-x4xx-3425978,fpga=3DCG_400,claimed=3DFalse\
\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=3DCG=
_400,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-3425978,product=3Dx440,clock=
_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.\
\[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket=
: Connection refused\
\[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. Environmen=
tError: IOError: recv error on socket: Connection refused\
\[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: Env=
ironmentError: IOError: recv error on socket: Connection refused\
Error: RuntimeError: Failure to create rfnoc_graph.\
\
Any idea what could be causing this?\
\
Additional info:\
\
Host UHD version:\
\[INFO\] \[UHD\] linux; GNU C++ version 13.3.0; Boost_106700; DPDK_24.11;=
 UHD_4.8.0.0-0-unknown\
\
Device UHD version:\
\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.8.0.0=
-0-g308126a4\
\
Thanks,\
Daniel

--b1_O2CigEgJ8a7bLGXktQhKzOD13gEJky2kI91eo1lycTs
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br><br></p><p>I recently received an X440 and am having tr=
ouble with the 100G ethernet connections.<br><br>I'm using UHD 4.8.0, and t=
he CG_400 firmware image.<br><br>I'm connected to both 100G ports and the 1=
G management port.&nbsp; All ports come up fine and seem to be connected.<b=
r><br>I can ping and ssh from my host machine to the X440 using the 100G po=
rts just fine.<br><br>I can run "uhd_find_devices" from any of the ports ju=
st fine.<br><br>Using the 1G management port, I can run "uhd_usrp_probe" ju=
st fine.<br><br>However, I cannot run "uhd_usrp_probe" or any other utiliti=
es from any of the 100G ports.&nbsp; I get the following error:<br><br>./uh=
d_usrp_probe --args "addr=3D192.168.10.2,type=3Dx4xx"<br>[INFO] [UHD] linux=
; GNU C++ version 13.3.0; Boost_106700; DPDK_24.11; UHD_4.8.0.0-0-unknown<b=
r>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: addr=3D192.=
168.10.2,mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx440,serial=3D34259=
78,name=3Dni-x4xx-3425978,fpga=3DCG_400,claimed=3DFalse<br>[INFO] [MPM.Peri=
phManager] init() called with device args `fpga=3DCG_400,mgmt_addr=3D192.16=
8.10.2,name=3Dni-x4xx-3425978,product=3Dx440,clock_source=3Dinternal,time_s=
ource=3Dinternal,initializing=3DTrue'.<br>[ERROR] [RFNOC::MGMT] Environment=
Error: IOError: recv error on socket: Connection refused<br>[ERROR] [RFNOC:=
:GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: recv=
 error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] Caught excep=
tion while initializing graph: EnvironmentError: IOError: recv error on soc=
ket: Connection refused<br>Error: RuntimeError: Failure to create rfnoc_gra=
ph.<br><br>Any idea what could be causing this?<br><br>Additional info:<br>=
<br>Host UHD version:<br>[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_=
106700; DPDK_24.11; UHD_4.8.0.0-0-unknown<br><br>Device UHD version:<br>[IN=
FO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.8.0.0-0-g30812=
6a4<br><br>Thanks,<br>Daniel</p>

--b1_O2CigEgJ8a7bLGXktQhKzOD13gEJky2kI91eo1lycTs--

--===============0296676289850327100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0296676289850327100==--
