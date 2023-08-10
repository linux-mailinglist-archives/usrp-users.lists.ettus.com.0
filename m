Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 947E0776E91
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 05:34:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47E67384B5B
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 23:34:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691638448; bh=LZeNDgaOEoqMs+O+3DumcvE27jP975gKdrKQ2Ptosdw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=y5LLHlBXKtZeGPK2K+I80q+6cCIbtad0WY2b1f0qWoGXQwyzB+ss5ZwvX+o7/Tu8Z
	 uyQi603uvvae6fT8OI6XynoKAhoG1PxPE4iWHDYo6lypgyTwtAZ5ZJlaJDvqtjlVtM
	 is9Jc+JyPhgL7xUFkwjh3bCMbq3j8ZbqScAw/2y5BbRx9Y3phiXdqRqkQeWJDF24uY
	 YqOdKjTacDVdjAqkV9roG7FiyAoTkHn00ryQOEN8jncPkZ9z9h3oJwCFnICnPRCk+6
	 c3lbDqK3qAesu6eZlb+kF3wgNRYaLOxnWCTpeC11L/1PmUfZcxrEugjgCCnVWOHUDP
	 FK+ApJpBnUgWQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6D89384AA9
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 23:33:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691638432; bh=FnYLBav9+AkfqAZqbh4aKX7apOKsjy7SkbVnkNHEqfU=;
	h=Date:To:From:Subject:From;
	b=LLKNbIMf8nordSlLompNioCQ+WHVSMnPurQRu/Ov1W55vft0MXQQ07FaIryZIxgFr
	 2EJ+kkb0FQkj/7uiuZTJ7C5cT3rzGRZY8J8Gjk2d+bNQeKRt9ReFlxJRjKnvjZpziI
	 s8Zb2WG2BFeDrKFLt5Sjp3HlzfTKqFsBYbzV5VddQZ/m4hXQxREILjUH203sY0eKIk
	 1CssLIOgoJY4YJscZ7I3nJloCp6Fnv8TeaZDZLu1onFxO7uu69lANHBkRosXBH4OkN
	 5FrUsu5AMplgkuwoc9W38rBtvujEXyYMCpRr5qfa/4PVafGpY28kGSsyYnG1S4FySG
	 1ey200uqYwuhg==
Date: Thu, 10 Aug 2023 03:33:52 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Q7HELD5RY25AINJ6WSTQAPUP5NSU65PF
X-Message-ID-Hash: Q7HELD5RY25AINJ6WSTQAPUP5NSU65PF
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRPX410 transmitter issue underrun for higher sample rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q7HELD5RY25AINJ6WSTQAPUP5NSU65PF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4836043191229323678=="

This is a multi-part message in MIME format.

--===============4836043191229323678==
Content-Type: multipart/alternative;
 boundary="b1_BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU
Content-Type: text/plain; charset=us-ascii

On the powerful host with intel core i9 13900k, with 24 cores (Ubuntu 22.04 system) I installed DPDK, UHD v4.4.0.0, GNU Radio v3.10.7.0.

USRPX410 is connected by10GbE link (intel X710-DA4 card) to host. I also set all the tuning for high performance.

benchmark TX/RX can work well with almost perfect without any errors even up to 245.76MHz.

When I run GNU Radio, receiver works well for high sample rates. but for transmit side, since I am generating triangular FMCW waveform, chirp, with using triangular signal source and VCO, I see several underrun for higher sample rates more than like 50Msps. Any suggestion?

--b1_BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU
Content-Type: text/html; charset=us-ascii

<p>On the powerful host with intel core i9 13900k, with 24 cores (Ubuntu 22.04 system) I installed DPDK, UHD v4.4.0.0, GNU Radio v3.10.7.0.</p><p>USRPX410 is connected by10GbE link (intel X710-DA4 card) to host. I also set all the tuning for high performance.</p><p>benchmark TX/RX can work well with almost perfect without any errors even up to 245.76MHz.</p><p>When I run GNU Radio, receiver works well for high sample rates. but for transmit side, since I am generating triangular FMCW waveform, chirp, with using triangular signal source and VCO, I see several underrun for higher sample rates more than like 50Msps. Any suggestion? </p>


--b1_BEFoLHF2r898syrQEbsDN5oFaMIkJEa5kZRiyiyaU--

--===============4836043191229323678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4836043191229323678==--
