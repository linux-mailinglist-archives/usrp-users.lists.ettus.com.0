Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4463A5803F6
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 20:25:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B300E380D96
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 14:25:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658773533; bh=CtwbeHFdSHdZ+TfLOBcQDw9l4LQD+whL4k7Vt5nd4PE=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=qFk7ppyna1vn+cyLbzyLgMKxSfkcmkWJvsm5tdAtppaeJN7XJGi/O0xiByc4Gvvwt
	 LJcarmePVrWqLrM2hmp60990mj1eE6ErCfW0crh8DIAl8Q994x3EGrNk3q/MmlIWnS
	 nnbDSxQWhLqautt88BcQ7TFAM90JIQUBnfJxWvZYlJBMCk7mN8Sq7mBb2cQmNnffVJ
	 BD7bFzPfPwLmVB+W4996ghU90138kLU60MenMeIrNBAXaZ88pANh/DC6WE9Dwx7vvU
	 2p1jY+LEQNBPDDzTSBzz3GdqjOxrVThUgwcAy1GYDfTqINMflz4OG+lCCkcpsUezXN
	 ThtVcxqDMtVjg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F933380B5E
	for <usrp-users@lists.ettus.com>; Mon, 25 Jul 2022 14:23:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658773421; bh=yugYCOCzAF/BKQSlBlILWzuxG3VSDxdLU6SgYxPT7Ck=;
	h=Date:To:From:Subject:From;
	b=QVMnYh9yI60+SiT9Hs4g31/AlJCW2eHLXzaZYjawPq8yu9Z1GVJr7OYntmgdJxC7t
	 fI2e0IK5D7zxAnigdcFT+A1EbyqF+vkHSmNfyjZolEI1YTegztptOw2zbarJvX9fgR
	 YjGJ2w6EajWq8bydFhw/O1eiHc+iixXi3W6ahxOfUPsNuigTNWTfo2fWt92cDXSnGU
	 /+0MbPZlnY5drmY+ei28Qgb5E+uUQYnQmAvgAUJPZuDjTj8Cp7CNQOQK1NC/Ryugdk
	 7hP588uTOwp4umMAr/uCqR+W+utEz/lxATBPHMQgRosm6YuNGAnHV45zERE0vEy4j9
	 ShzzwWH6CmE0A==
Date: Mon, 25 Jul 2022 18:23:41 +0000
To: usrp-users@lists.ettus.com
Message-ID: <IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: K63FDIIDUZMLGWGA7K7PGM47CPFQIQEQ
X-Message-ID-Hash: K63FDIIDUZMLGWGA7K7PGM47CPFQIQEQ
X-MailFrom: skyung@nrel.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Getting low number of samples (USRP N310)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K63FDIIDUZMLGWGA7K7PGM47CPFQIQEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: skyung--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: skyung@nrel.gov
Content-Type: multipart/mixed; boundary="===============8216672313536692999=="

This is a multi-part message in MIME format.

--===============8216672313536692999==
Content-Type: multipart/alternative;
 boundary="b1_IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM
Content-Type: text/plain; charset=us-ascii

Hi, I am using USRP N310 connected via a switch with 10Gbps interface.

I am using it to set up OAI 5G RAN but I keep getting the following message:

\[HW\]   reived 16384 samples out of 23040

\[HW\]   ERROR_CODE_TIMEOUT (or ERROR_CODE_OVERFLOW)

I wonder if it is a sync problem or something else. 

Has anyone had this problem? What is the cause of this problem and how do I resolve the issue?

--b1_IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM
Content-Type: text/html; charset=us-ascii

<p>Hi, I am using USRP N310 connected via a switch with 10Gbps interface.</p><p>I am using it to set up OAI 5G RAN but I keep getting the following message:</p><p><br></p><p>[HW]   reived 16384 samples out of 23040</p><p>[HW]   ERROR_CODE_TIMEOUT (or ERROR_CODE_OVERFLOW)</p><p><br></p><p>I wonder if it is a sync problem or something else. </p><p>Has anyone had this problem? What is the cause of this problem and how do I resolve the issue?</p>


--b1_IBd5cchcf6Xr0pvxKToetQk1ZwJwrhv3dWR3IVvIM--

--===============8216672313536692999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8216672313536692999==--
