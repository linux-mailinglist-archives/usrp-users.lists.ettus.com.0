Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6617F79420A
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 19:31:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C23C3852B4
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 13:31:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694021476; bh=cvLPuoZ9IY8b37tPXh+C4Ip9JlmMch4JgG87eI7LnBo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=o6FM0lNbdDqglmERm30s7gyIYo5Z75Wevv42BGPw2E8F9qq/iYfV2b2hw2hXodjqh
	 0etRAJ/wD8l/sYiGjyLCAgZwn7o1uOYN9ifpU6oSft7N0s8/IwZzv6A229+DU1+OVp
	 vw5sIxwzBhkV1i9ZfYhxqWfaGtXnGW0rac9Qu+/jj7erec5tYhBqFAu1NNhzP0ZPQY
	 F3LlbmzXsqkWqPXE6YFGLTfHVK3pZadM6nFrgEzFMCnzEE744ye1ja5An690bWbrwK
	 XB5zc+wUZhMCuOpc6FvWWJ8pSLJUoErjJ1+i+u8nhEh7ClTgUfCWorOPqjqXk+cVpS
	 LynzuIfwauekA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DA863851A4
	for <usrp-users@lists.ettus.com>; Wed,  6 Sep 2023 13:30:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694021415; bh=VYvbF1D9hy4TrAyo++CQR8eXuzY/F+pHU7iLpX3DR6w=;
	h=Date:To:From:Subject:From;
	b=PZ8oKPcXVcK2dCGRwVs6yaezGDt+uV/XsVoTB09VomTjVGF8389torVjPaTKBAgMC
	 7KPZ79GA376WGMrbRKsOzuleq6mG0OHlRvvz+4w1d6IteKH9aFE6Q8wNoF3YqKFusP
	 AEia761X/rX9dZB5coDh/dXU+vmxdUr2n3LIJJTndDEi+530lo2jy42oGBCeMUJuVI
	 DhcVqk6olCPAs9dkdHa6D2+pxezTmU4zsFDDDGMgG6vxXlvYHBEUCARVrjFG3+5LkQ
	 y+Qvwves1W2u6B0GHDFQUXqGUTEThB9OeGbDA5Uby76ybDf3VSMchqOgprZ6xSkiky
	 dBjhS2N02EeWw==
Date: Wed, 6 Sep 2023 17:30:15 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: C26PWYHDYCDOXXYLP5IBV3AXS26C6DUX
X-Message-ID-Hash: C26PWYHDYCDOXXYLP5IBV3AXS26C6DUX
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ettus x410, Device is in bad state error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C26PWYHDYCDOXXYLP5IBV3AXS26C6DUX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8676900337530141385=="

This is a multi-part message in MIME format.

--===============8676900337530141385==
Content-Type: multipart/alternative;
 boundary="b1_56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to update the FPGA on the ettus, but I am getting t=
he following error=20

mirsl102b@mirsl102b-Legion-T7-34IMZ5:\~/workarea/august_bitstreams/sep5$ =
uhd_image_loader --args type=3Dx4xx,mgmt_addr=3D192.168.10.2,fpga=3DX4_20=
0

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-=
0-g5fac246b`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D329053B,name=3Dni-x4xx-3=
29053B,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1`

`[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never full=
y initialized!`

`[INFO] [MPMD] Claimed device without full initialization.`

`[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.`

`` [INFO] [MPM.PeriphManager] Installing component `fpga' ``

`` [INFO] [MPM.PeriphManager] Installing component `dts' ``

`[INFO] [MPMD IMAGE LOADER] Update component function succeeded.`

`[INFO] [MPM.RPCServer] Resetting peripheral manager.`

`[ERROR] [MPM.RPCServer] Error in update_component while resetting: 'None=
Type' object has no attribute 'tear_down'`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D329053B,name=3Dni-x4xx-3=
29053B,fpga=3Dn/a,claimed=3DFalse,find_all=3D1`

`[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never full=
y initialized!`

`Error: RuntimeError: Device is in bad state: Major compat number mismatc=
h for component 'FPGA': Expected: 7.9 Actual: 8.0`

How do I resolve this =E2=80=9Cbad state=E2=80=9D error.

Thanks

Joe

--b1_56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am currently trying to update the FPGA on the =
ettus, but I am getting the following error </p><p>mirsl102b@mirsl102b-Legi=
on-T7-34IMZ5:~/workarea/august_bitstreams/sep5$ uhd_image_loader --args typ=
e=3Dx4xx,mgmt_addr=3D192.168.10.2,fpga=3DX4_200</p><p><code>[INFO] [UHD] li=
nux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</code>=
</p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D329053B,name=
=3Dni-x4xx-329053B,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1</code></p><p><c=
ode>[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never ful=
ly initialized!</code></p><p><code>[INFO] [MPMD] Claimed device without ful=
l initialization.</code></p><p><code>[INFO] [MPMD IMAGE LOADER] Starting up=
date. This may take a while.</code></p><p><code>[INFO] [MPM.PeriphManager] =
Installing component `fpga'</code></p><p><code>[INFO] [MPM.PeriphManager] I=
nstalling component `dts'</code></p><p><code>[INFO] [MPMD IMAGE LOADER] Upd=
ate component function succeeded.</code></p><p><code>[INFO] [MPM.RPCServer]=
 Resetting peripheral manager.</code></p><p><code>[ERROR] [MPM.RPCServer] E=
rror in update_component while resetting: 'NoneType' object has no attribut=
e 'tear_down'</code></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in =
parallel with args: mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,ser=
ial=3D329053B,name=3Dni-x4xx-329053B,fpga=3Dn/a,claimed=3DFalse,find_all=3D=
1</code></p><p><code>[WARNING] [MPM.PeriphManager] Cannot run deinit(), dev=
ice was never fully initialized!</code></p><p><code>Error: RuntimeError: De=
vice is in bad state: Major compat number mismatch for component 'FPGA': Ex=
pected: 7.9 Actual: 8.0</code></p><p>How do I resolve this =E2=80=9Cbad sta=
te=E2=80=9D error.</p><p>Thanks</p><p>Joe</p>

--b1_56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ--

--===============8676900337530141385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8676900337530141385==--
