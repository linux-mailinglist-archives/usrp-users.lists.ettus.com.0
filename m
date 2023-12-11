Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0982680CE5F
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 15:28:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6BDF38524D
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 09:28:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702304913; bh=DzGVhujGXSfiyRsiijINAYmGVITXa4pCtjui8mWim0k=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pgbH54ULsqFxrobhbWKBMF4L3aDTPu9IX+SUuDBV55A1Ep7Z+LUh9H1B78evbr25x
	 LM1NRllmS4HRI4h0174rBmJixL2FOGPP3TCpNp4qZCO6MhRAXsPv2ocPT8BGCJ3Qd2
	 bMOdQqNT35BH6zzOfR7/h4jzkAPWKhSAJet5etp4nf9JvONGrmPRvzfLKBksNL1vUq
	 eYCqqrdMPIyQXUSZTkwQ0H3WUdykx2unH5yKQ9wbJ6DVHsRtgC03HGVlgECZwomVgK
	 Mh7VOvZyEFNPJ823Kb5PxoYpBrgnjryBpzFyWdvRAstWcPkowFX4gFC0AHizsclhYt
	 58HHVwcWKG1WQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E213384D63
	for <usrp-users@lists.ettus.com>; Mon, 11 Dec 2023 09:28:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702304902; bh=LosLtwRnY+xcFD1SEqObR8XOEZrphFlfXyrSyccvw4E=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=1Bkh8XzG6eVY79KptcQW/bklPPOlHqpE/K0Ql8umSU62I0R/JzCn/FTFb/kL3Q5nR
	 jQX7fGfUJG3NPhORcffvU+weP6A15AQIGOdCyqUsw+F3ew6HKqWUTGwrguZuwHZfKZ
	 0Fv7urj1SJkYmnhUEsvmKDm3VjDRkQIb2xeQnnowGmogjihYnxPxijtfbUQoAvty0N
	 48iASlguJLUaOpyzTSsSbIs3Vcqgh+pmyUhCU0vDSN3PMGyNlvPKThgth9jGTjT8o1
	 ieCIv6bYdVc4HKFZ7Jy8PwL+WHvxABjZfkWeihcynIKXml6ork9K1P8AQ+Wg2YoQXb
	 lvZzFMTDbrnlQ==
Date: Mon, 11 Dec 2023 14:28:22 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <N2zNVM0ueX39BRyzcqtCiSOmJcUkzu1w7oj2MGGgXLM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: owcnVts86W0vHQAMbAvGg1GYyekGZHA2ozSbW3rrSEk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 5QFSBWYO3CQFCECLST4Y4TS62HRKBVAY
X-Message-ID-Hash: 5QFSBWYO3CQFCECLST4Y4TS62HRKBVAY
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QFSBWYO3CQFCECLST4Y4TS62HRKBVAY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4891932909546511680=="

This is a multi-part message in MIME format.

--===============4891932909546511680==
Content-Type: multipart/alternative;
 boundary="b1_N2zNVM0ueX39BRyzcqtCiSOmJcUkzu1w7oj2MGGgXLM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_N2zNVM0ueX39BRyzcqtCiSOmJcUkzu1w7oj2MGGgXLM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I solved the BIOS problem. But again there is a new problem with =E2=80=9C=
Failed to run enumerate_rfnoc_blocks()=E2=80=9D Kindly check the followin=
g:

>>uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD=
_3.15.0.0-2build5

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.20.2,type=3Dn3xx,product=3Dn310,serial=3D3198227,claimed=3DF=
alse,addr=3D192.168.20.2

\[INFO\] \[MPM.main\] Launching USRP/MPM, version: 3.14.1.1-g0347a6d8

\[INFO\] \[MPM.main\] Spawning RPC process...

\[INFO\] \[MPM.PeriphManager\] Device serial number: 3198227

\[INFO\] \[MPM.PeriphManager\] Initialized 2 daughterboard(s).

\[INFO\] \[MPM.PeriphManager.UDP\] No CHDR interfaces found!

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`time_sour=
ce=3Dinternal,clock_source=3Dinternal'.

\[INFO\] \[MPM.PeriphManager.UDP\] No CHDR interfaces found!

\[INFO\] \[MPM.PeriphManager.UDP\] No CHDR interfaces found!

\[INFO\] \[MPM.RPCServer\] RPC server ready!

\[INFO\] \[MPM.RPCServer\] Spawning watchdog task...

\[WARNING\] \[UDP\] The recv buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 50000000 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.rmem_max=3D62500000

\[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 1048576 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.wmem_max=3D62500000

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`mgmt_addr=
=3D192.168.20.2,time_source=3Dinternal,product=3Dn310,clock_source=3Dinte=
rnal'.

\[WARNING\] \[UDP\] The recv buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 50000000 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.rmem_max=3D62500000

\[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 1048576 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.wmem_max=3D62500000

\[WARNING\] \[UDP\] The recv buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 50000000 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.rmem_max=3D62500000

\[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 1048576 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.wmem_max=3D62500000

\[WARNING\] \[UDP\] The recv buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 50000000 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.rmem_max=3D62500000

\[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.

Target sock buff size: 62500000 bytes.

Actual sock buff size: 1048576 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.wmem_max=3D62500000

\[INFO\] \[0/Replay_0\] Initializing block control (NOC ID: 0x4E91A000000=
00004)

\[ERROR\] \[0/Replay_0\] Major compat number mismatch for noc_shell: Expe=
cting 6, got 5.

\[ERROR\] \[MPMD\] Failure during block enumeration: RuntimeError: FPGA c=
omponent \`noc_shell' is revision 5 and UHD supports revision 6. Please e=
ither upgrade the FPGA image (recommended) or downgrade UHD.

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

<<uhd_find_devices

\[INFO\] \[UHD\] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD=
_3.15.0.0-2build5

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: 3198227

    addr: 192.168.20.2

    claimed: False

    mgmt_addr: 192.168.20.2

    product: n310

    type: n3xx

Help me as soon as possible. Thanks in advance.

--b1_N2zNVM0ueX39BRyzcqtCiSOmJcUkzu1w7oj2MGGgXLM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>I solved the BIOS problem. But again there is a new pro=
blem with =E2=80=9CFailed to run enumerate_rfnoc_blocks()=E2=80=9D Kindly c=
heck the following:</p><p>&gt;&gt;uhd_usrp_probe</p><p>[INFO] [UHD] linux; =
GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5</p><p>[I=
NFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192=
.168.20.2,type=3Dn3xx,product=3Dn310,serial=3D3198227,claimed=3DFalse,addr=
=3D192.168.20.2</p><p>[INFO] [MPM.main] Launching USRP/MPM, version: 3.14.1=
.1-g0347a6d8</p><p>[INFO] [MPM.main] Spawning RPC process...</p><p>[INFO] [=
MPM.PeriphManager] Device serial number: 3198227</p><p>[INFO] [MPM.PeriphMa=
nager] Initialized 2 daughterboard(s).</p><p>[INFO] [MPM.PeriphManager.UDP]=
 No CHDR interfaces found!</p><p>[INFO] [MPM.PeriphManager] init() called w=
ith device args `time_source=3Dinternal,clock_source=3Dinternal'.</p><p>[IN=
FO] [MPM.PeriphManager.UDP] No CHDR interfaces found!</p><p>[INFO] [MPM.Per=
iphManager.UDP] No CHDR interfaces found!</p><p>[INFO] [MPM.RPCServer] RPC =
server ready!</p><p>[INFO] [MPM.RPCServer] Spawning watchdog task...</p><p>=
[WARNING] [UDP] The recv buffer could not be resized sufficiently.</p><p>Ta=
rget sock buff size: 62500000 bytes.</p><p>Actual sock buff size: 50000000 =
bytes.</p><p>See the transport application notes on buffer resizing.</p><p>=
Please run: sudo sysctl -w net.core.rmem_max=3D62500000</p><p>[WARNING] [UD=
P] The send buffer could not be resized sufficiently.</p><p>Target sock buf=
f size: 62500000 bytes.</p><p>Actual sock buff size: 1048576 bytes.</p><p>S=
ee the transport application notes on buffer resizing.</p><p>Please run: su=
do sysctl -w net.core.wmem_max=3D62500000</p><p>[INFO] [MPM.PeriphManager] =
init() called with device args `mgmt_addr=3D192.168.20.2,time_source=3Dinte=
rnal,product=3Dn310,clock_source=3Dinternal'.</p><p>[WARNING] [UDP] The rec=
v buffer could not be resized sufficiently.</p><p>Target sock buff size: 62=
500000 bytes.</p><p>Actual sock buff size: 50000000 bytes.</p><p>See the tr=
ansport application notes on buffer resizing.</p><p>Please run: sudo sysctl=
 -w net.core.rmem_max=3D62500000</p><p>[WARNING] [UDP] The send buffer coul=
d not be resized sufficiently.</p><p>Target sock buff size: 62500000 bytes.=
</p><p>Actual sock buff size: 1048576 bytes.</p><p>See the transport applic=
ation notes on buffer resizing.</p><p>Please run: sudo sysctl -w net.core.w=
mem_max=3D62500000</p><p>[WARNING] [UDP] The recv buffer could not be resiz=
ed sufficiently.</p><p>Target sock buff size: 62500000 bytes.</p><p>Actual =
sock buff size: 50000000 bytes.</p><p>See the transport application notes o=
n buffer resizing.</p><p>Please run: sudo sysctl -w net.core.rmem_max=3D625=
00000</p><p>[WARNING] [UDP] The send buffer could not be resized sufficient=
ly.</p><p>Target sock buff size: 62500000 bytes.</p><p>Actual sock buff siz=
e: 1048576 bytes.</p><p>See the transport application notes on buffer resiz=
ing.</p><p>Please run: sudo sysctl -w net.core.wmem_max=3D62500000</p><p>[W=
ARNING] [UDP] The recv buffer could not be resized sufficiently.</p><p>Targ=
et sock buff size: 62500000 bytes.</p><p>Actual sock buff size: 50000000 by=
tes.</p><p>See the transport application notes on buffer resizing.</p><p>Pl=
ease run: sudo sysctl -w net.core.rmem_max=3D62500000</p><p>[WARNING] [UDP]=
 The send buffer could not be resized sufficiently.</p><p>Target sock buff =
size: 62500000 bytes.</p><p>Actual sock buff size: 1048576 bytes.</p><p>See=
 the transport application notes on buffer resizing.</p><p>Please run: sudo=
 sysctl -w net.core.wmem_max=3D62500000</p><p>[INFO] [0/Replay_0] Initializ=
ing block control (NOC ID: 0x4E91A00000000004)</p><p>[ERROR] [0/Replay_0] M=
ajor compat number mismatch for noc_shell: Expecting 6, got 5.</p><p>[ERROR=
] [MPMD] Failure during block enumeration: RuntimeError: FPGA component `no=
c_shell' is revision 5 and UHD supports revision 6. Please either upgrade t=
he FPGA image (recommended) or downgrade UHD.</p><p>Error: RuntimeError: Fa=
iled to run enumerate_rfnoc_blocks()</p><p><br></p><p><br></p><p>&lt;&lt;uh=
d_find_devices</p><p>[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Bo=
ost_107100; UHD_3.15.0.0-2build5</p><p>------------------------------------=
--------------</p><p>-- UHD Device 0</p><p>--------------------------------=
------------------</p><p>Device Address:</p><p>    serial: 3198227</p><p>  =
  addr: 192.168.20.2</p><p>    claimed: False</p><p>    mgmt_addr: 192.168.=
20.2</p><p>    product: n310</p><p>    type: n3xx</p><p>Help me as soon as =
possible. Thanks in advance.</p>

--b1_N2zNVM0ueX39BRyzcqtCiSOmJcUkzu1w7oj2MGGgXLM--

--===============4891932909546511680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4891932909546511680==--
