Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C07780F207
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 17:12:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B082384E0F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 11:12:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702397557; bh=KZI4z0xBCb6iqtTfuUDoIa1Lybpf1axwG+K8cWBFvAA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Aa7maxwZvBwUbBWthXf+pdc4Gv7e8JvWGlWOa5fvmXse4YJkb8wmmso2JEuQ4v7G6
	 3MgcUldyaUPff8OlwjlzD9bEPlu6csy6ayszbAvBaH9GHmnC6C6L0xWiKtMIMebIhx
	 wlufzrjIaCrrfSd2fbqbAkgrhsTmLJh5nrbtJ/PpFcIoUSdUnErRXRmvBdZJV7ylVK
	 NG+tvGiaaFYUvROxRFm8MLiYHXjabCLGqqneBfELt6QzqYrAvrscyKwBA12fJWdJSH
	 r/5WS3u9W9BkizIV0mpEoZ17iRzqGid0DyPUTiY0Cgy/qZMQCLm5yieXxkrh7qmvgA
	 yTSK7X7PYPWeA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A856384DB4
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 11:12:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702397546; bh=M5U4rBLLTcpV0wm+k3/DkC1ssyjIDtMzJ+X9f2b00PI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=owardIlIdqlPIfkL7yNyADzE6KbSTcXp0DKbouI5I8DMFQ2NmakYvrXj9MwPWBSGX
	 loTSrXF9WlFZARmnq/J8As2nLvBEYlZ/tbYrLOET/bRdiG1LB87SGqq5iAr6fOkHyQ
	 ZbVmxajnZa7COkVw4TXG89TtG02S4zfwqWAVqeDQw4UvLtcmDwZenA4K4hLRWs8DtR
	 EIqNiGD3MKip4sf2vvVdIRG7L87s/HOvMlQVM6TGdGZt3CuffQECu4KO8cxwHKAwGF
	 WxGmljzUdYaoYSRR+kGKE17ILG1g80AL2oJpXXRhP1HvSQp4ud9mPtFLsaSJskt0RG
	 fQwxk67OMkXmw==
Date: Tue, 12 Dec 2023 16:12:26 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=hynB_0vLKLpfDpOkXM_u8PUKNGTskkPZoNdAPfNCgk2Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CG22NUIIOZ7DKKPHGWQDESDRNZZTZB27
X-Message-ID-Hash: CG22NUIIOZ7DKKPHGWQDESDRNZZTZB27
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CG22NUIIOZ7DKKPHGWQDESDRNZZTZB27/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7013111916662565740=="

This is a multi-part message in MIME format.

--===============7013111916662565740==
Content-Type: multipart/alternative;
 boundary="b1_toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes
Content-Type: text/plain; charset=us-ascii

Dear Wade,

Thank you very much for your response. The YAML was modified by ettus research (Jonathon). He added replay block and sent me via email. I replaced that file in following folder (uhd/fpga/usrp3/top/e31x) and then run command. I also installed vivado 2021.1 according to his instructions

--b1_toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes
Content-Type: text/html; charset=us-ascii

<p>Dear Wade,</p><p><br></p><p>Thank you very much for your response. The YAML was modified by ettus research (Jonathon). He added replay block and sent me via email. I replaced that file in following folder (uhd/fpga/usrp3/top/e31x) and then run command. I also installed vivado 2021.1 according to his instructions</p>


--b1_toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes--

--===============7013111916662565740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7013111916662565740==--
