Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 052819B45E3
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 10:43:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F03E3864D7
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 05:43:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730195000; bh=8LAWZJ50/p9f+c8OI5cz6vVlu/nd4E4Y2imh9zX+SnY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k7DxPnPE23Vu0TGbEaiYvcN97yRlFzq8sLokmTJasw4/0A4baoEuAr6IHNKc+r6LM
	 fd+8+BP2KKFpTO0Msavo+Fm3tu6y3cZHEjLohYXNezHTlK2WzHQ0y/kKzxnjmVdVNB
	 VaYEbiCNduydEJH4yuExQUoH/gjDCN5qRx8yEHXyJCawh2jvflyjYQe5lt2j3kX7L3
	 qbNlhIWYI+UhTZoH6Mm6s1AZjKlXG2Ga4fE9comIAJa9mb+LwQrCO09CBoUWNl9gvR
	 Q1PuyXWEKZ2Dn5un6WAYoHIlJoCXxF0vM2auCMLyRVJf2id4kS/2VbfsGloa1oWaOL
	 JRUDuilZcS9NA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67E9638621A
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 05:43:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730194986; bh=OVg2pm1ORoBqgPhfVgCyrP7xkPMvK5KoAykC+oVvrnw=;
	h=Date:To:From:Subject:From;
	b=heAL0UJMbbzHWeP5B8tx13jALecmb3+HVLPAtEWpG9xgPe9EEZbx7woqmdOCqofvU
	 WxKPV4VSxixys8LjnkN2Q08vAs9+hqfI2voGKbFYwqESv4NgO9Xh1J0ijfBso+DVyt
	 q+o1g3nZHv54a2kcDyE0WVXMpyMj5/4V5HHqVgz/d8RyMUNIfqb2q0HLLrq/hzsJcm
	 5Pmm/obiQ32G73qDnYduQt7pW3S8rp5pxWlYnaNEiYJbadbquFEnGgcTNk3Wv50/0D
	 VZ+Kl6nQRbsRAj/AW5EXDbsY+okR8uYpJEn1S0l84v8MvI6sjhMZUWEGhFFIgc42ZW
	 H6qx20yF8a7oQ==
Date: Tue, 29 Oct 2024 09:43:06 +0000
To: usrp-users@lists.ettus.com
From: pigatoimdeafrancesco@gmail.com
Message-ID: <wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: RBYX4FYEVEL5D64B5HT7TUAQSJLJNROG
X-Message-ID-Hash: RBYX4FYEVEL5D64B5HT7TUAQSJLJNROG
X-MailFrom: pigatoimdeafrancesco@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RBYX4FYEVEL5D64B5HT7TUAQSJLJNROG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3221580800882552965=="

This is a multi-part message in MIME format.

--===============3221580800882552965==
Content-Type: multipart/alternative;
 boundary="b1_wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

I am having trouble setting up the USRPN310. Logs of $ uhd_find_devices are=
:

ERROR: [ld.so](http://ld.so/): object '/opt/uhd/lib/libuhd.so.4.4.0' from L=
D_PRELOAD cannot be preloaded (cannot open shared object file): ignored. \[=
INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0=
-g5fac246b

## - UHD Device 0

Device Address: serial: 3249D76 addr: 192.168.20.2 claimed: False fpga: XG =
mgmt_addr: 192.168.10.2 mgmt_addr: 192.168.20.2 name: ni-n3xx-3249D76 produ=
ct: n310 type: n3xx

The command $ uhd_usrp_probe highlights issues regarding the host-USRP conn=
ection:

ERROR: [ld.so](http://ld.so/): object '/opt/uhd/lib/libuhd.so.4.4.0' from L=
D_PRELOAD cannot be preloaded (cannot open shared object file): ignored. \[=
INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0=
-g5fac246b \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args=
: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3249D76,name=
=3Dni-n3xx-3249D76,fpga=3DXG,claimed=3DFalse,addr=3D192.168.20.2 \[WARNING\=
] \[MPM.RPCServer\] A timeout event occured! \[INFO\] \[MPM.PeriphManager\]=
 init() called with device args \`fpga=3DXG,mgmt_addr=3D192.168.10.2,name=
=3Dni-n3xx-3249D76,product=3Dn310,clock_source=3Dinternal,time_source=3Dint=
ernal'. \[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on =
socket: Connection refused \[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM i=
nitialization. EnvironmentError: IOError: recv error on socket: Connection =
refused \[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing grap=
h: EnvironmentError: IOError: recv error on socket: Connection refused Erro=
r: RuntimeError: Failure to create rfnoc_graph.

Can anybody help me with this? Thanks.

Regards,

Francesco
--b1_wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am having trouble setting up the USRPN310. Logs of $ uhd_=
find_devices are:</p><p>ERROR: <a href=3D"http://ld.so/">ld.so</a>: object =
'/opt/uhd/lib/libuhd.so.4.4.0' from LD_PRELOAD cannot be preloaded (cannot =
open shared object file): ignored. [INFO] [UHD] linux; GNU C++ version 9.4.=
0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><h2>- UHD Device 0</h2><p>De=
vice Address: serial: 3249D76 addr: 192.168.20.2 claimed: False fpga: XG mg=
mt_addr: 192.168.10.2 mgmt_addr: 192.168.20.2 name: ni-n3xx-3249D76 product=
: n310 type: n3xx</p><p>The command $ uhd_usrp_probe highlights issues rega=
rding the host-USRP connection:</p><p>ERROR: <a href=3D"http://ld.so/">ld.s=
o</a>: object '/opt/uhd/lib/libuhd.so.4.4.0' from LD_PRELOAD cannot be prel=
oaded (cannot open shared object file): ignored. [INFO] [UHD] linux; GNU C+=
+ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b [INFO] [MPMD] Ini=
tializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=
=3Dn3xx,product=3Dn310,serial=3D3249D76,name=3Dni-n3xx-3249D76,fpga=3DXG,cl=
aimed=3DFalse,addr=3D192.168.20.2 [WARNING] [MPM.RPCServer] A timeout event=
 occured! [INFO] [MPM.PeriphManager] init() called with device args `fpga=
=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3249D76,product=3Dn310,clock_=
source=3Dinternal,time_source=3Dinternal'. [ERROR] [RFNOC::MGMT] Environmen=
tError: IOError: recv error on socket: Connection refused [ERROR] [RFNOC::G=
RAPH] IO Error during GSM initialization. EnvironmentError: IOError: recv e=
rror on socket: Connection refused [ERROR] [RFNOC::GRAPH] Caught exception =
while initializing graph: EnvironmentError: IOError: recv error on socket: =
Connection refused Error: RuntimeError: Failure to create rfnoc_graph.</p><=
p>Can anybody help me with this? Thanks.</p><p>Regards,</p><p>Francesco</p>

--b1_wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM--

--===============3221580800882552965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3221580800882552965==--
