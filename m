Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2632ACBB7B
	for <lists+usrp-users@lfdr.de>; Mon,  2 Jun 2025 21:25:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D59C385D7A
	for <lists+usrp-users@lfdr.de>; Mon,  2 Jun 2025 15:25:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748892314; bh=BGUW3t+0NZgA883fY8kc/Mdmh1m0bRfnQlTlm5bJZCI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EdXczuQ7YHiTvyhm1EUiG7q7vy+2KGTad/ufV5jH9fh0bhGy4QKZ0Q5RAE/UfB0wN
	 w1gZtIlbnZj44u7F+7/PwO8ATGhlQZ71Z0si0oOjrCXvW6JKoFSJS2Bg2xObSM0lgu
	 1XyYk2MJB9jQ9VhPEBdcvCJtjfBuST53tzfo7Ezv538rE34FZRFUmfxAyI6SGLjtgu
	 EAGaY6JfoO4Iwyrmn3rdnuALkDybO+j1oJL5DSm/AXcOjGfbXpG/Vv/JOp2+IVUR4Y
	 s+u8u5KJjN48vFTNfZ5Gfj68GOpruNyo3JygJS5FspCLNj5Ta06xfAf8gyfFNWNVR+
	 2LjkD3Dp/syKw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB407385C3C
	for <usrp-users@lists.ettus.com>; Mon,  2 Jun 2025 15:24:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748892259; bh=MtfZX4JaoVUnDy/Fx+E15UVowWzN0oZHdb3wU7BZQBo=;
	h=Date:To:From:Subject:From;
	b=CJRY5V1EXWY9ih07vfkeJt5fb91qTnetbeAq+2Fl5phGswKcAeCSl5wKj57grqS8Z
	 iyv1M3tSEcei9sCZly1c/tVQM7ETOFDRx+znOX8j9oYsADbGRzbRN9H/zveb8N+3TS
	 Q3bRe3/FhCzz6dyzW3Wp3fQH1TDqJV5fjATDHmfZkZnzFEGro0x1jpUjU77nQQ6//y
	 yiZnyBGJ6qYbHyaVXehVZ1/anfryoljK2hNMH9VPP7nLjdW5kLUYkRnLLafN0rSlQY
	 /LOmqI6a0WH2X7GYnjCBTpgMG+B7tnz2wtyjF9Y8RPz2h6WmDpNqZmYxcrvqyCrCbE
	 66ACwsbCSHyJw==
Date: Mon, 2 Jun 2025 19:24:19 +0000
To: usrp-users@lists.ettus.com
From: yokeshwaran.m@maxeyetech.com
Message-ID: <WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 26BO3EU3P2OGRU3G4ICUX57AGI5YORAY
X-Message-ID-Hash: 26BO3EU3P2OGRU3G4ICUX57AGI5YORAY
X-MailFrom: yokeshwaran.m@maxeyetech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Initialization Failure - "RFDC is not powered on"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/26BO3EU3P2OGRU3G4ICUX57AGI5YORAY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7417702316282595570=="

This is a multi-part message in MIME format.

--===============7417702316282595570==
Content-Type: multipart/alternative;
 boundary="b1_WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ
Content-Type: text/plain; charset=us-ascii

`I'm encountering a critical issue while attempting to initialize an X410 USRP device. The device is detected correctly using uhd_find_devices, but fails to initialize with uhd_usrp_probe. Below is a summary of the setup and the error messages:`

**`Environment:`**

* `USRP Model: X410`

* `UHD Version: 4.7.0 (HEAD-0-ga5ed1872)`

* `MPM Version: 4.8.0.0-g308126a4`

* `OS: [Ubuntu 22.04]`

* `Device IP: 192.168.1.120`

  uhd_find_devices output:

  serial: 322ED50
  addr: 192.168.1.120
  claimed: False
  fpga: n/a
  mgmt_addr: 192.168.1.120
  name: ni-x4xx-322ED50
  product: x410
  type: x4xx
  
  uhd_usrp_probe output:

  
  \[ERROR\] \[MPM.PeriphManager\] RFDC is not powered on  
  \[ERROR\] \[MPM.PeriphManager\] Failed to initialize motherboard: RFDC is not powered on  
  RuntimeError: RFDC is not powered on
  
  \[ERROR\] \[MPM.RPCServer\] Uncaught exception in method set_device_id: 'NoneType' object has no attribute 'set_device_id'  
  \[WARNING\] \[MPM.PeriphManager\] Cannot run deinit(), device was never fully initialized!  
  
  
  It seems the device is partially detected, but the RFDC does not power on and the RPC server fails with a 'NoneType' error when attempting to set the device ID.
  
  Could you please advise on possible causes or corrective actions to resolve this issue?

--b1_WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ
Content-Type: text/html; charset=us-ascii

<p><code>I'm encountering a critical issue while attempting to initialize an X410 USRP device. The device is detected correctly using uhd_find_devices, but fails to initialize with uhd_usrp_probe. Below is a summary of the setup and the error messages:</code></p><p><strong><code>Environment:</code></strong></p><ul><li><p><code>USRP Model: X410</code></p></li><li><p><code>UHD Version: 4.7.0 (HEAD-0-ga5ed1872)</code></p></li><li><p><code>MPM Version: 4.8.0.0-g308126a4</code></p></li><li><p><code>OS: [Ubuntu 22.04]</code></p></li><li><p><code>Device IP: 192.168.1.120</code></p><p>uhd_find_devices output:</p><p>serial: 322ED50
addr: 192.168.1.120
claimed: False
fpga: n/a
mgmt_addr: 192.168.1.120
name: ni-x4xx-322ED50
product: x410
type: x4xx

uhd_usrp_probe output:</p><p>
[ERROR] [MPM.PeriphManager] RFDC is not powered on  
[ERROR] [MPM.PeriphManager] Failed to initialize motherboard: RFDC is not powered on  
RuntimeError: RFDC is not powered on

[ERROR] [MPM.RPCServer] Uncaught exception in method set_device_id: 'NoneType' object has no attribute 'set_device_id'  
[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully initialized!  


It seems the device is partially detected, but the RFDC does not power on and the RPC server fails with a 'NoneType' error when attempting to set the device ID.

Could you please advise on possible causes or corrective actions to resolve this issue?</p></li></ul>


--b1_WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ--

--===============7417702316282595570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7417702316282595570==--
