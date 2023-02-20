Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E49669D16C
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 17:38:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94678380F6F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 11:38:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676911099; bh=OaJvAkBNwXoEjBTRbnxFGd5vCS97Nxk7pijqBQhC9rI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DrXjGb4CAefVns5e9yWLwSEWwhW7r3edWq8qJGjKcEwCZl2ou3zmSrSj5LEgJ5Z66
	 r53X9vyGgkduonCI6L9Yf5D0xQLXiQLe6ddPOsg0jxB2iAhPw+22yBuY0Wm1QIc8X1
	 sFOrv2OZHa1vGTi4QvHgbz0lkf0EQYKeDgIb4R0QWIGzwAUxtAxo8P3A56QM8/LrAx
	 V+4Tc506cnpVHx8F5ehe+HYf41vyY0DjF7y4Yg7Y7jc9j888BpCdHBUvelRajFqqIV
	 LAZxE1ouPBAjQh/NB/lnPOQzsJEFp1uoHUkHjuO7GJ1YBNMs+JPviYjSCBlwR0BAUP
	 1Vp2BVSTsiIEA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CC62380F6F
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 11:38:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676911094; bh=PDJH0vMACZAFyOF73i3WBY8/fThlvX21TTinDS4g6/M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=SCfROlGBTfP+RoE1ZTCFaxdsoNq4niUc2vcO0xmHy18oz2iARq+SPSAyVAnZ5YlGt
	 EKwbdp2WhcFMbm6jBGJ3edwTPltnT8TYQ38bGfv2cFtn8t21plvX+WMvF0O9imdKEk
	 rya1gZPJBklrjp1OveECxU9jXthOPIIFIzoC5dNx4NVTmgDxP/p4qSLnUY3ArY4S3B
	 wKSLj+Ku4oYQOESZdw+Vh8wIMsVctn1XwN4mg60gsTqWprte/EeqoYcUcClrmrZZZI
	 cf9E+ONncfgPN4vUGtYPSd/kmymo4/AZWr3zUD45MZoI/yMrUF9VawS1oWCqq/kx6+
	 c4ogDkQRMlG9w==
Date: Mon, 20 Feb 2023 16:38:14 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7a42268e-4247-650f-90c8-24051bd3efcc@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2E6T7TADNHFGHSVNP43SAHK46VM5E5O3
X-Message-ID-Hash: 2E6T7TADNHFGHSVNP43SAHK46VM5E5O3
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2E6T7TADNHFGHSVNP43SAHK46VM5E5O3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3854382132114154199=="

This is a multi-part message in MIME format.

--===============3854382132114154199==
Content-Type: multipart/alternative;
 boundary="b1_cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w
Content-Type: text/plain; charset=us-ascii

Hello,

I still run into the same issue, even after I have changed to parameters.

`/usr/local/lib/uhd/examples/benchmark_rate     --args "type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=200e6"    --duration 60    --channels 0    --rx_rate 31.25e6    --rx_subdev "A:0"    --tx_rate 31.25e6    --tx_subdev "A:0"`

And the error is here

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345`

`[00:00:00.000229] Creating the usrp device with: type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=200e6...`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.10.2,master_clock_rate=200e6`

`` [INFO] [MPM.PeriphManager] init() called with device args `fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'. ``

`[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: Timed out getting recv buff for management transaction`

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: EnvironmentError: IOError: Timed out getting recv buff for management transaction`

`` [INFO] [MPM.Rhodium-0] init() called with args `fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal' ``

`` [INFO] [MPM.Rhodium-1] init() called with args `fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal' ``

`Error: RuntimeError: Failure to create rfnoc_graph.`

--b1_cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I still run into the same issue, even after I ha=
ve changed to parameters.</p><p><code>/usr/local/lib/uhd/examples/benchmark=
_rate     --args "type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2=
,master_clock_rate=3D200e6"    --duration 60    --channels 0    --rx_rate 3=
1.25e6    --rx_subdev "A:0"    --tx_rate 31.25e6    --tx_subdev "A:0"</code=
></p><p>And the error is here</p><p><code>[INFO] [UHD] linux; GNU C++ versi=
on 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</code></p><p><code>[00:0=
0:00.000229] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D192.168=
.1.151,addr=3D192.168.10.2,master_clock_rate=3D200e6...</code></p><p><code>=
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,name=3Dni-n3xx-325=
5102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D200e=
6</code></p><p><code>[INFO] [MPM.PeriphManager] init() called with device a=
rgs `fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dn=
i-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinterna=
l'.</code></p><p><code>[ERROR] [RFNOC::GRAPH] IO Error during GSM initializ=
ation. EnvironmentError: IOError: Timed out getting recv buff for managemen=
t transaction</code></p><p><code>[ERROR] [RFNOC::GRAPH] Caught exception wh=
ile initializing graph: EnvironmentError: IOError: Timed out getting recv b=
uff for management transaction</code></p><p><code>[INFO] [MPM.Rhodium-0] in=
it() called with args `fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.=
168.1.151,name=3Dni-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,tim=
e_source=3Dinternal'</code></p><p><code>[INFO] [MPM.Rhodium-1] init() calle=
d with args `fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,=
name=3Dni-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'</code></p><p><code>Error: RuntimeError: Failure to create rfno=
c_graph.</code></p>

--b1_cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w--

--===============3854382132114154199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3854382132114154199==--
