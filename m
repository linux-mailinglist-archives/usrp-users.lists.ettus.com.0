Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B036ECF70
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 15:43:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2CF638454A
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 09:43:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682343801; bh=6u9WNo4LfGc2ZU0RPDYsqqbIe69bSw6kkWmdsjtL5Sk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=be4gqCEOv7/tKi+v0o8m3sKG5AtPTcpg8a2veWY6P8Ak+85dsRNPN0c0sp4a3bnaA
	 e8zLz7yOcS4siGgPD9bojgpArubANI8roqq1LC1pj9RuD04KsU3IxSM1ntWB2DoPrh
	 2f3I/ATWGENyoFHF3YVH5qN4L3uH79dGjlE6Jrl/XDcGJoi+WVuIvNFV85Bk5cj1KB
	 zyoD1+FSjjmQacy2z3BGRFew+NlfvS43hbayUhhDqhLUdiNtoE87k8H1EXP95hqkgJ
	 u2w/MX9lYTJhjA5wWpzdGKZ7AfPlDW0AYVCpx+KUABvzDXeALKc1U8xmUa99+4UUNw
	 lANfPmafkLCJw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1302384663
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 09:42:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682343742; bh=os21X3WmIgUVeydDBcrVV0QqfKw/yIClW8F3t+TW1N0=;
	h=Date:To:From:Subject:From;
	b=AghnoZbLbPtr34l3EdRDpKBE28ybf8IM6ajEAbgaWVIEk2VxGzOED50QGvw2sJb0b
	 iobkdF0SXG0179R3TF7QtDHj1gRikrYHg4f8xbsmAKajNLkMtxgI2Yf01dRAA/n4v6
	 rA5/G06CqKq54WNXSB31fbmzxSrLwZykEdo/2E8y5qx8AClVt4Xsgg3kHpZT2ZNmh7
	 NowIozvAofndjgOd3oSLF5wipV/y4SPxzGfplqnxM2/oEUmg2AdO/ZrhHLXy5tU65b
	 MkzPusE1+PtOAp9vs0GsbrD6usGUErvLpvOgrqu8h1203FyKfeLiG7BtAzRNFzF3zr
	 fk8JVIo+Yz67A==
Date: Mon, 24 Apr 2023 13:42:22 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2ADP4KBOXRRZEDDKUVFOT2UKC4LZCTCI
X-Message-ID-Hash: 2ADP4KBOXRRZEDDKUVFOT2UKC4LZCTCI
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ADP4KBOXRRZEDDKUVFOT2UKC4LZCTCI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2321200421645211836=="

This is a multi-part message in MIME format.

--===============2321200421645211836==
Content-Type: multipart/alternative;
 boundary="b1_c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw
Content-Type: text/plain; charset=us-ascii

Hello,

With support of this forum, I purchased and connected through 1\*4 breakout cable, intel X710 based NIC PCIe card with 10GbE ports to USRP X410 in 4\*10GbE port mode. Links are up now. But I can not increase sampling frequency to higher than like 8 Msps. Is there any document to explain what parameters need to be optimized in system and gnuradio code to reach more sampling frequency like 100Msps. For example I modified MTU size from 1500 to 9000. But it seems I need to do more. Thank you.

--b1_c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>With support of this forum, I purchased and connected through 1*4 breakout cable, intel X710 based NIC PCIe card with 10GbE ports to USRP X410 in 4*10GbE port mode. Links are up now. But I can not increase sampling frequency to higher than like 8 Msps. Is there any document to explain what parameters need to be optimized in system and gnuradio code to reach more sampling frequency like 100Msps. For example I modified MTU size from 1500 to 9000. But it seems I need to do more. Thank you.</p>


--b1_c0V9OBB8VQb4MtvPXVAawt5HAVSoyKwjSW9BkQ4bw--

--===============2321200421645211836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2321200421645211836==--
