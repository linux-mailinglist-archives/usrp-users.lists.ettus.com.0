Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9953267FC07
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 02:01:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D7AA384027
	for <lists+usrp-users@lfdr.de>; Sat, 28 Jan 2023 20:01:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674954083; bh=0lAUkB0Btvk8JacdszDjsQ83zUoyZ2aeV+oLoHqzB40=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=B/k/C24thsY6MgjF5KFHMYrHKt740X8MIA02rcKwsOxFJzAEmsDHIkzUjUWSuSb0Q
	 HSdBSN7WNMVrlJ2U7/X2guB0pTkiX6En5ECLM2nRd1ixV2LmVnQLbIiX8qpE4iAiEy
	 PZb2WYO4eZxZkMJ7UATTuJK79YlzjkqtfSPMPqlTpEYKCYYy+xWAIAmrUYKUGCxOy8
	 OYRcX5FvXCtNQgfJxgte/QVpxFH1YmO7fL1EPskHstfXdkGVPwNO2KQ2940zZ5S+K7
	 Y9/E6WrzhFPF3xaBfB4yLpqbWwbyBpdA/at5KXBvh3TiqnvkeVPuQoPRz1cogVZ7v/
	 iKhquHUEs9CZg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36C3C383E9C
	for <usrp-users@lists.ettus.com>; Sat, 28 Jan 2023 20:00:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674954002; bh=HkVfyveP8pdrag8Lr+Cx7ezQzAQBuaLjxTKicpXya6A=;
	h=Date:To:From:Subject:From;
	b=Gih2aecZQfiS5eu/6lwywkKC7jlGNd5Nz+QelQ071/l9dC/9THzHCRI/HyF1ex1t6
	 5GRRgngcWs0QUvlgEYgeAYBwOP0ws7ISoubq52x+TkRYxuijSNwToeTmkgECLrpfWH
	 YCPIUSXQ3kWZv8sQRQ2ACvjV0RNxb5dlRBPuzfUYN1ztZsrwHnL5TUZSBnQTr+L33P
	 4C2Yhm/ARRLSQJRm1dFs4YlTTABPcy3Oh93r08hVerCqf88BkStA+IwV9UQPZOURGg
	 8MWhZfaYXYMV6S2I/+6xqZyrX67QFfgXugUnrf5BKkDcHmGM19ctUZkFV+OCZK9xRZ
	 8FeaEiUh7br6w==
Date: Sun, 29 Jan 2023 01:00:02 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BEFTMVDRV3XKYDGDFN67JSOVLVCBZCT4
X-Message-ID-Hash: BEFTMVDRV3XKYDGDFN67JSOVLVCBZCT4
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Routing n321 TrigIn/PPS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BEFTMVDRV3XKYDGDFN67JSOVLVCBZCT4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1758951130347612809=="

This is a multi-part message in MIME format.

--===============1758951130347612809==
Content-Type: multipart/alternative;
 boundary="b1_RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ
Content-Type: text/plain; charset=us-ascii

Hello,

I am trying to develop an RFNoC application that starts collecting samples when a trigger rises. However, I am unsure how to route the TrigIn/PPS under the RFNoC utility. For example, I found the radio RFNoC is used to interface with the TX/RX.

Thanks,

Joe

--b1_RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am trying to develop an RFNoC application that starts collecting samples when a trigger rises. However, I am unsure how to route the TrigIn/PPS under the RFNoC utility. For example, I found the radio RFNoC is used to interface with the TX/RX.</p><p><br></p><p>Thanks,</p><p>Joe</p>


--b1_RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ--

--===============1758951130347612809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1758951130347612809==--
