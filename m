Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA84D742CF3
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 21:09:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA1713846C3
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 15:09:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688065751; bh=Gcy65tQwX2Bjql2oNKRxg0V+xAwMNqj8bhJKAANFLcM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ok2a499ipAapA34mJ4mekwnRXJEDApJOHWCj/AbbeJWQ666YpdKrdt+15oJyiQpVC
	 vwHJQGjc9ULdT8snd5hNqw3SiFkKPNBHDYeJ3r+f7gy3EDgYJ/EY5O7FsxtVI/Ob2/
	 zIqPn/qChXmuow3w1q7OgUV0mo/dkLriNIsLEeiLBYdGyfVMEnIXyNz5QxnwTJGoFv
	 tvGwWQtLAOHI2LbyIiJR9zC103j96Goo1cYbOKF7OT8LTtkJMedheIaP312xY46w1D
	 8qEIwTiwbR8piuDND4g/rFKnAQlWXj8IJNVpzAc7kVPHVrsbwHekT7BblJY9u6PgTq
	 Rp0rrNZhxIxgA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5265E383F06
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 15:08:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688065698; bh=66h0MddC9YsqeYzOP7oWPNSy7t4OxISUN4hfVOuhIDU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vLAhb3Vw1I5/bQaN7e3pN0vNoxtYn35AiWmQNcO4EBt1M3SzeD9ZOB5FIGBwlcdC8
	 O1DKQJhu5YVQCAMEQEm4wNnSZ9DHjAT/Hwdz6LKbb3FcCmd1Yer6SgMe3jm5JmXE9b
	 ER38vVi6Yb/fBTRCNyK7LwbJqZLOtDv64q+Zq9b45WpSI/L+KmmL7xm5GvOJPKNz/0
	 ixZgWhPmzWYEugZwapH3qlDbPPWztOB2Y+XxCVrJBPbAnJXoGA2Dxu32R06t0XO2AN
	 7VTG4FPMsHq3+xY29p0350kKAc4CPmJp/MLuvnJYeblminDirWaB9LXmOT5emukTMn
	 okBJ1se2R9Djw==
Date: Thu, 29 Jun 2023 19:08:18 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <aSZl5NarNEbxkbDR5xrauRGqLQSjfHNZdf1CgjIZxAk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a5a4c837-7f8e-4700-a5a0-3a28fc034f8b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: MPGTZX32M3LLIS6ADEAQYTH25PGZ3TLE
X-Message-ID-Hash: MPGTZX32M3LLIS6ADEAQYTH25PGZ3TLE
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Host hardware specification for USRP X410/X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MPGTZX32M3LLIS6ADEAQYTH25PGZ3TLE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5777467148168633656=="

This is a multi-part message in MIME format.

--===============5777467148168633656==
Content-Type: multipart/alternative;
 boundary="b1_aSZl5NarNEbxkbDR5xrauRGqLQSjfHNZdf1CgjIZxAk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aSZl5NarNEbxkbDR5xrauRGqLQSjfHNZdf1CgjIZxAk
Content-Type: text/plain; charset=us-ascii

Thank you Marcus.

--b1_aSZl5NarNEbxkbDR5xrauRGqLQSjfHNZdf1CgjIZxAk
Content-Type: text/html; charset=us-ascii

<p>Thank you Marcus.</p>


--b1_aSZl5NarNEbxkbDR5xrauRGqLQSjfHNZdf1CgjIZxAk--

--===============5777467148168633656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5777467148168633656==--
