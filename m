Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7698069C45D
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 04:09:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00028383E43
	for <lists+usrp-users@lfdr.de>; Sun, 19 Feb 2023 22:08:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676862539; bh=4i2d+vKr4tXRMVAEeHbHXbUR+qp8r8PwPKUwNntaaXU=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Flm6pOb3Fe399jM/cKIAbucHIsdLRaU3OmETIDu+1Fxg4x+qsc/MmausuiTewiNKy
	 bZIDMpyqAAzrXeCv+Aglq9u38ETeQXQyWOwzs/irHtk9psoqRGcBafEYEXiFtxnjPt
	 E3a9i45jc1A5nosEmD1Z1LuXEkJvVtH6Hu9I77lqG2Iclddu4lUolaCJysvNP1xeI6
	 X/yS8qthvF4g2n8MFbolsVJeTcja+76bNKMQhgJKXWqZdryPJygv/pSSK3c58rOIf8
	 1BuP7RnmiPQEcbIQXzz/SWB7743ud5Stie1Q9PVx5LIh9rlfZOLuy71pzdeRwlskmP
	 kme7wYD9h52Pw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F37333839B9
	for <usrp-users@lists.ettus.com>; Sun, 19 Feb 2023 22:08:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676862496; bh=rYeTuFc2SFmOG6Esu/IGYvwUvE8cqj2oQiflbtgcRXg=;
	h=Date:To:From:Subject:From;
	b=mkVZ7yMnqW9XsXNIqKmZn+ewAyLglcQuDvbD7REiPPtU/EmnGVHhIAodxf3nUObbC
	 Fjw2udpEaJBiqu1WELlgRWFPZfkS6lyjE653ueDEOCc4gRTAzeNTKt3S/H0Yaq5ES3
	 ++vQgaAphJ0TFKp0PZD/aXLKXewjP+dM1kDdm+0rRnEyvjxxC6+R515QhGVimhycRK
	 cDDo5IoS+nTv3sIGVYcUdfDAk/R5nWMnR7zj0SkaX15vw8jcub1lvUmdPdC7oQgTqd
	 xKPGvgqGnwNmA16WUgkrVRtCEcNQ52yNWq5lkBMZV08R4yj5CZHkxbHs1oS8mN2Lbd
	 +uhKY7zkkjzPA==
Date: Mon, 20 Feb 2023 03:08:15 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: QDBSCVXOIFOJUY6O3HWNCQKYSKISAFYK
X-Message-ID-Hash: QDBSCVXOIFOJUY6O3HWNCQKYSKISAFYK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QDBSCVXOIFOJUY6O3HWNCQKYSKISAFYK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4656401830137636395=="

This is a multi-part message in MIME format.

--===============4656401830137636395==
Content-Type: multipart/alternative;
 boundary="b1_wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently trying to run benchmark_rate, however, I am getting an error when I do.

`/usr/local/lib/uhd/examples/benchmark_rate     --args "type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=245.76e6"    --duration 60    --channels "0,1,2,3"    --rx_rate 30.72e6    --rx_subdev "A:0 B:0"    --tx_rate 30.72e6    --tx_subdev "A:0 B:0"`

And the error is this

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345`

`[00:00:00.000224] Creating the usrp device with: type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=245.76e6...`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.10.2,master_clock_rate=245.76e6`

`` [INFO] [MPM.PeriphManager] init() called with device args `fpga=XG,master_clock_rate=245.76e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'. ``

`[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: Timed out getting recv buff for management transaction`

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: EnvironmentError: IOError: Timed out getting recv buff for management transaction`

`` [INFO] [MPM.Rhodium-0] init() called with args `fpga=XG,master_clock_rate=245.76e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal' ``

`` [INFO] [MPM.Rhodium-1] init() called with args `fpga=XG,master_clock_rate=245.76e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal' ``

`Error: RuntimeError: Failure to create rfnoc_graph.`

I have not got this error in the past. I am wondering if anyone has come across this issue as well. My MTU is 9000.

Thanks,

Joe

--b1_wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am currently trying to run benchmark_rate, how=
ever, I am getting an error when I do.</p><p><code>/usr/local/lib/uhd/examp=
les/benchmark_rate     --args "type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=
=3D192.168.10.2,master_clock_rate=3D245.76e6"    --duration 60    --channel=
s "0,1,2,3"    --rx_rate 30.72e6    --rx_subdev "A:0 B:0"    --tx_rate 30.7=
2e6    --tx_subdev "A:0 B:0"</code></p><p><br></p><p>And the error is this<=
/p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.=
3.0.HEAD-0-g1f8fd345</code></p><p><code>[00:00:00.000224] Creating the usrp=
 device with: type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,mas=
ter_clock_rate=3D245.76e6...</code></p><p><code>[INFO] [MPMD] Initializing =
1 device(s) in parallel with args: mgmt_addr=3D192.168.1.151,type=3Dn3xx,pr=
oduct=3Dn320,serial=3D3255102,name=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFa=
lse,addr=3D192.168.10.2,master_clock_rate=3D245.76e6</code></p><p><code>[IN=
FO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master_cl=
ock_rate=3D245.76e6,mgmt_addr=3D192.168.1.151,name=3Dni-n3xx-3255102,produc=
t=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.</code></p><p><cod=
e>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErr=
or: IOError: Timed out getting recv buff for management transaction</code><=
/p><p><code>[ERROR] [RFNOC::GRAPH] Caught exception while initializing grap=
h: EnvironmentError: IOError: Timed out getting recv buff for management tr=
ansaction</code></p><p><code>[INFO] [MPM.Rhodium-0] init() called with args=
 `fpga=3DXG,master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.1.151,name=3Dn=
i-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinterna=
l'</code></p><p><code>[INFO] [MPM.Rhodium-1] init() called with args `fpga=
=3DXG,master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.1.151,name=3Dni-n3xx=
-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'</co=
de></p><p><code>Error: RuntimeError: Failure to create rfnoc_graph.</code><=
/p><p>I have not got this error in the past. I am wondering if anyone has c=
ome across this issue as well. My MTU is 9000.</p><p>Thanks,</p><p>Joe</p>

--b1_wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw--

--===============4656401830137636395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4656401830137636395==--
