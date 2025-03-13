Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E0A5F506
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 13:57:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73330385FB1
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 08:57:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741870671; bh=8ADn9yMxPx86G+Zz5mUcgDg/Len42TEaKNiQilpe8uA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dlfbKF3Kk3eOWDjZE72jIX+jIoplkVc0aA7WkmIYgm78a73tMYqttYZMioZ7mxWSt
	 1mjTNrt9SgGVenAnve3EsAdX6kYHYQNXZTBPfpjNYlCloxE9UALbhsMIMUdveDedQp
	 dj+i8nKKh0ZSjwonPjIvC1UxMHh2IPRtA6wFi4Y4hMewHmOBfYnMQ24i7z6+ydZ+E3
	 E3sxWCk42VKiOH0jymmpw45gqJWPjMetvP0YjELsNGCzJPocoVP0ns9a7rfEzayLaQ
	 tBuDSBVifgpYz2+4xTBAQfu4TmrzYaAzAKgx/FEL/Mc2p/Boejh7fmZ4xg3ZtJ2O05
	 s/Jr/svci28Hg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D1B6385EDF
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 08:57:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741870633; bh=8u7Xn/1e551yr/U0CJZLylFQmTGU2jH/w+rtJcoaQCs=;
	h=Date:To:From:Subject:From;
	b=KSNL1R/CV9UBgtAmGsUyUNjYggFaCXaZCTlUc8gLdHtv7DYIvn/GsSt0nc0Lk25Uz
	 9HzQasTbebEXLkxxgDIe5576X7zEo9iff/bSbEJNSyQAMO5m567YNVlu1+l21ADPdW
	 f88H5SFfesssJXKJObLhXOWJqHk/LNLsNLjlEf5I+eLzA9/PYeyLJDm+1a9RkFTShM
	 E68CHs4rQxKzfckPCbfbLgx6CDKIndxLb9TrCFs4lo8yy+U/UoIssiPNHN0tUYM44A
	 d3hjtLInPMkeUu6MeU0WGYBgBliWQOtnlLyib7f9uYaGQ1uVKmH95/nQLYYeVhlKbM
	 zEjMkEWuZ104A==
Date: Thu, 13 Mar 2025 12:57:13 +0000
To: usrp-users@lists.ettus.com
From: meni.dali@sabra-microsystems.com
Message-ID: <ABALclGCTm01LhSvp4oq33cEANscZTfK8jyEO7eQEQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: UWKALWSWWTNQ7H2EXUWXSW7UP4UK4GAO
X-Message-ID-Hash: UWKALWSWWTNQ7H2EXUWXSW7UP4UK4GAO
X-MailFrom: meni.dali@sabra-microsystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Multi-port Transmission with RFNoC Replay Block on USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UWKALWSWWTNQ7H2EXUWXSW7UP4UK4GAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5157955829916085448=="

This is a multi-part message in MIME format.

--===============5157955829916085448==
Content-Type: multipart/alternative;
 boundary="b1_ABALclGCTm01LhSvp4oq33cEANscZTfK8jyEO7eQEQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ABALclGCTm01LhSvp4oq33cEANscZTfK8jyEO7eQEQ
Content-Type: text/plain; charset=us-ascii

Hello,

I'm working with the USRP x410 and need to transmit from all four ports at 200MSPS using the RFNoC replay block. 

Is this possible with the existing block? 

When I tried to duplicate the block, I encountered errors with memory connections. 

What's the best way to properly replicate this block in the FPGA to achieve multi-port transmission?

Thanks

--b1_ABALclGCTm01LhSvp4oq33cEANscZTfK8jyEO7eQEQ
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I'm working with the USRP x410 and need to transmit from all four ports at 200MSPS using the RFNoC replay block. </p><p>Is this possible with the existing block? </p><p>When I tried to duplicate the block, I encountered errors with memory connections. </p><p>What's the best way to properly replicate this block in the FPGA to achieve multi-port transmission?</p><p>Thanks</p>


--b1_ABALclGCTm01LhSvp4oq33cEANscZTfK8jyEO7eQEQ--

--===============5157955829916085448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5157955829916085448==--
