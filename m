Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD5C77CB1F
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 12:26:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3F39384A54
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 06:26:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692095163; bh=JYpaBvzQB9nrNgpNyKXTLVtwhiKT/lHkp8zOEv/zv84=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BTPU6qYJcXcyTJ75F+8QwE9mNHG3ZrfIc5uVsOmQVE67HudlYqpJnXFscfbhvRjKR
	 bn/7LdBgRFL/ZIRME/QUKlu1VYS1aNscEawWkRW/YJ5cPoPw8FVICuLDHx5otbGxKN
	 iA5Xtqx4Cc64CDqk7mEpF3W0MpBp4r8wzcugcNLNFFjjIoMWhSkj57qE2nC0BraCqu
	 NdAKae9G61dRI4SMJfIEwb0R1c/Lr+DTucni9Z5tugKkUMZpFaDTbLaF0/zTK9QDoy
	 JtyysrcNRvNbkUzLXfMA0tK6qehJHKG1fCEOiABBNHCDc4zhFJU6M+DL6K4D2+Od5V
	 iy4/CiF6w9Hcw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7BF03812D7
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 06:25:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692095130; bh=lM+2HMSrCxILo2NyFIYe3Uq8ORvZABVC9PL9dlFCqP0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=LYX5QgpJVvvibnNNbNY7LUMTkD4IHuM9iYsyHloNkrdIkzMCta0x9fkF+vmbgImMT
	 5BDQkJz8ZLC0YwPJIzFQ88Xq/17rTOUQm6dFt1BjGyCpegqSUDXlflcxGVIWQR8WqU
	 cv/DdGMTFQvmp98m3RCeeCO6EQsTt9TkP2FlYdWzV1DxS65CgvDBR2SMCmFd0HcMDp
	 70MjPGKBNzDoL1l2JDMmLBgQ23BARYSr6MMnSN9FENrx6+WuiUrITuagBG5L2o7/Wp
	 Ydotu244Y+Uij10StpSPBTedn0fsrkVjZFjxzMMvU+KPqxNTrqqH/grRQ3w3SyVG09
	 l/9qZ3HbQR9Hg==
Date: Tue, 15 Aug 2023 10:25:30 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <kv3LPU8XCJme8eccKvffrlUM36Tp6Ku1YODtlEecU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAA=S3PuhEdtBEzao8+tHXOwEUGuydFMhbgbYFef+rL30rU9=Kw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4FC5HLUL7M2CWIGINIQX5V65FM4I2MRW
X-Message-ID-Hash: 4FC5HLUL7M2CWIGINIQX5V65FM4I2MRW
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can add some verilog dir file to rfnoc block make file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4FC5HLUL7M2CWIGINIQX5V65FM4I2MRW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0020073256686986940=="

This is a multi-part message in MIME format.

--===============0020073256686986940==
Content-Type: multipart/alternative;
 boundary="b1_kv3LPU8XCJme8eccKvffrlUM36Tp6Ku1YODtlEecU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kv3LPU8XCJme8eccKvffrlUM36Tp6Ku1YODtlEecU
Content-Type: text/plain; charset=us-ascii

Hi,

can you please provide elaborate explanation about and information on trivial steps to reproduce the problem?

Eden.

--b1_kv3LPU8XCJme8eccKvffrlUM36Tp6Ku1YODtlEecU
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p><br></p><p>can you please provide elaborate explanation about and information on trivial steps to reproduce the problem?</p><p><br></p><p>Eden.</p>


--b1_kv3LPU8XCJme8eccKvffrlUM36Tp6Ku1YODtlEecU--

--===============0020073256686986940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0020073256686986940==--
